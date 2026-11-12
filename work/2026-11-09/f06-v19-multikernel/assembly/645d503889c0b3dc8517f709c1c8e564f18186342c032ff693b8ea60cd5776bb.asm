; SHA-256 645d503889c0b3dc8517f709c1c8e564f18186342c032ff693b8ea60cd5776bb
; P800 SDNN · XTDK LLVM 19 · 2755 / 2755 words decoded
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
0000b4  9f8edede  addli sp, sp, -4248
0000b8  9f100000  addli r1, zero, 1
0000bc  803b0002  core_id r23
0000c0  1f8fbe20  addli r30, sp, 4184
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900b00  beq r23, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db190200  j 4300
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
00014c  1f510000  addli r2, zero, 5
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
000190  9f301000  addli r1, zero, 11
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
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
000328  7d000100  xsignal r2, 0
00032c  7d000100  xsignal r2, 0
000330  7d000100  xsignal r2, 0
000334  7d000100  xsignal r2, 0
000338  7d000100  xsignal r2, 0
00033c  7d000100  xsignal r2, 0
000340  7d000100  xsignal r2, 0
000344  7d000100  xsignal r2, 0
000348  7d000100  xsignal r2, 0
00034c  7d000100  xsignal r2, 0
000350  7d000100  xsignal r2, 0
000354  7d000100  xsignal r2, 0
000358  7d000100  xsignal r2, 0
00035c  7d000100  xsignal r2, 0
000360  7d000100  xsignal r2, 0
000364  7d000100  xsignal r2, 0
000368  7d000100  xsignal r2, 0
00036c  7d000100  xsignal r2, 0
000370  7d000100  xsignal r2, 0
000374  7d000100  xsignal r2, 0
000378  7d000100  xsignal r2, 0
00037c  7d000100  xsignal r2, 0
000380  7d000100  xsignal r2, 0
000384  7d000100  xsignal r2, 0
000388  7d000100  xsignal r2, 0
00038c  7d000100  xsignal r2, 0
000390  7d000100  xsignal r2, 0
000394  7d000100  xsignal r2, 0
000398  7d000100  xsignal r2, 0
00039c  7d000100  xsignal r2, 0
0003a0  7d000100  xsignal r2, 0
0003a4  7d000100  xsignal r2, 0
0003a8  7d000100  xsignal r2, 0
0003ac  7d000100  xsignal r2, 0
0003b0  7d000100  xsignal r2, 0
0003b4  7d000100  xsignal r2, 0
0003b8  7d000100  xsignal r2, 0
0003bc  7d000100  xsignal r2, 0
0003c0  7d000100  xsignal r2, 0
0003c4  7d000100  xsignal r2, 0
0003c8  7d000100  xsignal r2, 0
0003cc  7d000100  xsignal r2, 0
0003d0  7d000100  xsignal r2, 0
0003d4  7d000100  xsignal r2, 0
0003d8  7d000100  xsignal r2, 0
0003dc  7d000100  xsignal r2, 0
0003e0  7d000100  xsignal r2, 0
0003e4  7d000100  xsignal r2, 0
0003e8  7d000100  xsignal r2, 0
0003ec  7d000100  xsignal r2, 0
0003f0  7d000100  xsignal r2, 0
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
000534  7d000100  xsignal r2, 0
000538  7d000100  xsignal r2, 0
00053c  7d000100  xsignal r2, 0
000540  7d000100  xsignal r2, 0
000544  7d000100  xsignal r2, 0
000548  7d000100  xsignal r2, 0
00054c  7d000100  xsignal r2, 0
000550  7d000100  xsignal r2, 0
000554  7d000100  xsignal r2, 0
000558  7d000100  xsignal r2, 0
00055c  7d000100  xsignal r2, 0
000560  7d000100  xsignal r2, 0
000564  7d000100  xsignal r2, 0
000568  7d000100  xsignal r2, 0
00056c  7d000100  xsignal r2, 0
000570  7d000100  xsignal r2, 0
000574  7d000100  xsignal r2, 0
000578  7d000100  xsignal r2, 0
00057c  7d000100  xsignal r2, 0
000580  7d000100  xsignal r2, 0
000584  7d000100  xsignal r2, 0
000588  7d000100  xsignal r2, 0
00058c  7d000100  xsignal r2, 0
000590  7d000100  xsignal r2, 0
000594  7d000100  xsignal r2, 0
000598  1f111000  addli r2, zero, 9
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
000634  7d800100  xsignal r3, 0
000638  7d800100  xsignal r3, 0
00063c  7d800100  xsignal r3, 0
000640  7d800100  xsignal r3, 0
000644  7d800100  xsignal r3, 0
000648  7d800100  xsignal r3, 0
00064c  7d800100  xsignal r3, 0
000650  7d800100  xsignal r3, 0
000654  7d800100  xsignal r3, 0
000658  7d800100  xsignal r3, 0
00065c  7d800100  xsignal r3, 0
000660  7d800100  xsignal r3, 0
000664  7d800100  xsignal r3, 0
000668  7d800100  xsignal r3, 0
00066c  7d800100  xsignal r3, 0
000670  7d800100  xsignal r3, 0
000674  7d800100  xsignal r3, 0
000678  7d800100  xsignal r3, 0
00067c  7d800100  xsignal r3, 0
000680  7d800100  xsignal r3, 0
000684  7d800100  xsignal r3, 0
000688  7d800100  xsignal r3, 0
00068c  7d800100  xsignal r3, 0
000690  7d800100  xsignal r3, 0
000694  7d800100  xsignal r3, 0
000698  7d800100  xsignal r3, 0
00069c  7d800100  xsignal r3, 0
0006a0  7d800100  xsignal r3, 0
0006a4  7d800100  xsignal r3, 0
0006a8  7d800100  xsignal r3, 0
0006ac  7d800100  xsignal r3, 0
0006b0  7d800100  xsignal r3, 0
0006b4  7d800100  xsignal r3, 0
0006b8  7d800100  xsignal r3, 0
0006bc  7d800100  xsignal r3, 0
0006c0  7d800100  xsignal r3, 0
0006c4  7d800100  xsignal r3, 0
0006c8  7d800100  xsignal r3, 0
0006cc  7d800100  xsignal r3, 0
0006d0  7d800100  xsignal r3, 0
0006d4  7d800100  xsignal r3, 0
0006d8  7d800100  xsignal r3, 0
0006dc  7d800100  xsignal r3, 0
0006e0  7d800100  xsignal r3, 0
0006e4  7d800100  xsignal r3, 0
0006e8  7d800100  xsignal r3, 0
0006ec  7d800100  xsignal r3, 0
0006f0  7d800100  xsignal r3, 0
0006f4  7d800100  xsignal r3, 0
0006f8  7d800100  xsignal r3, 0
0006fc  7d800100  xsignal r3, 0
000700  7d800100  xsignal r3, 0
000704  7d800100  xsignal r3, 0
000708  7d800100  xsignal r3, 0
00070c  7d800100  xsignal r3, 0
000710  7d800100  xsignal r3, 0
000714  7d800100  xsignal r3, 0
000718  7d800100  xsignal r3, 0
00071c  7d800100  xsignal r3, 0
000720  7d800100  xsignal r3, 0
000724  7d800100  xsignal r3, 0
000728  7d800100  xsignal r3, 0
00072c  7d800100  xsignal r3, 0
000730  7d800100  xsignal r3, 0
000734  7d800100  xsignal r3, 0
000738  7d800100  xsignal r3, 0
00073c  7d800100  xsignal r3, 0
000740  7d800100  xsignal r3, 0
000744  7d800100  xsignal r3, 0
000748  7d800100  xsignal r3, 0
00074c  7d800100  xsignal r3, 0
000750  7d800100  xsignal r3, 0
000754  7d800100  xsignal r3, 0
000758  7d800100  xsignal r3, 0
00075c  7d800100  xsignal r3, 0
000760  7d800100  xsignal r3, 0
000764  7d800100  xsignal r3, 0
000768  7d800100  xsignal r3, 0
00076c  7d800100  xsignal r3, 0
000770  7d800100  xsignal r3, 0
000774  7d800100  xsignal r3, 0
000778  7d800100  xsignal r3, 0
00077c  7d800100  xsignal r3, 0
000780  7d800100  xsignal r3, 0
000784  7d800100  xsignal r3, 0
000788  7d800100  xsignal r3, 0
00078c  7d800100  xsignal r3, 0
000790  7d800100  xsignal r3, 0
000794  7d800100  xsignal r3, 0
000798  7d800100  xsignal r3, 0
00079c  7d800100  xsignal r3, 0
0007a0  7d800100  xsignal r3, 0
0007a4  7d800100  xsignal r3, 0
0007a8  7d800100  xsignal r3, 0
0007ac  7d800100  xsignal r3, 0
0007b0  7d800100  xsignal r3, 0
0007b4  7d800100  xsignal r3, 0
0007b8  7d800100  xsignal r3, 0
0007bc  7d800100  xsignal r3, 0
0007c0  7d800100  xsignal r3, 0
0007c4  7d800100  xsignal r3, 0
0007c8  7d800100  xsignal r3, 0
0007cc  7d800100  xsignal r3, 0
0007d0  7d800100  xsignal r3, 0
0007d4  7d800100  xsignal r3, 0
0007d8  7d800100  xsignal r3, 0
0007dc  7d800100  xsignal r3, 0
0007e0  7d800100  xsignal r3, 0
0007e4  7d800100  xsignal r3, 0
0007e8  7d800100  xsignal r3, 0
0007ec  7d800100  xsignal r3, 0
0007f0  7d800100  xsignal r3, 0
0007f4  7d800100  xsignal r3, 0
0007f8  7d800100  xsignal r3, 0
0007fc  7d800100  xsignal r3, 0
000800  7d800100  xsignal r3, 0
000804  7d800100  xsignal r3, 0
000808  7d800100  xsignal r3, 0
00080c  7d800100  xsignal r3, 0
000810  7d800100  xsignal r3, 0
000814  7d800100  xsignal r3, 0
000818  7d800100  xsignal r3, 0
00081c  7d800100  xsignal r3, 0
000820  7d800100  xsignal r3, 0
000824  7d800100  xsignal r3, 0
000828  7d800100  xsignal r3, 0
00082c  7d800100  xsignal r3, 0
000830  7d800100  xsignal r3, 0
000834  7d800100  xsignal r3, 0
000838  7d800100  xsignal r3, 0
00083c  7d800100  xsignal r3, 0
000840  7d800100  xsignal r3, 0
000844  7d800100  xsignal r3, 0
000848  7d800100  xsignal r3, 0
00084c  7d800100  xsignal r3, 0
000850  7d800100  xsignal r3, 0
000854  7d800100  xsignal r3, 0
000858  7d800100  xsignal r3, 0
00085c  7d800100  xsignal r3, 0
000860  7d800100  xsignal r3, 0
000864  7d800100  xsignal r3, 0
000868  7d800100  xsignal r3, 0
00086c  7d800100  xsignal r3, 0
000870  7d800100  xsignal r3, 0
000874  7d800100  xsignal r3, 0
000878  7d800100  xsignal r3, 0
00087c  7d800100  xsignal r3, 0
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
000998  9f710000  addli r3, zero, 7
00099c  9f501000  addli r1, zero, 13
0009a0  7d000100  xsignal r2, 0
0009a4  7d000100  xsignal r2, 0
0009a8  7d000100  xsignal r2, 0
0009ac  7d000100  xsignal r2, 0
0009b0  7d000100  xsignal r2, 0
0009b4  7d000100  xsignal r2, 0
0009b8  7d000100  xsignal r2, 0
0009bc  7d000100  xsignal r2, 0
0009c0  7d000100  xsignal r2, 0
0009c4  7d000100  xsignal r2, 0
0009c8  7d000100  xsignal r2, 0
0009cc  7d000100  xsignal r2, 0
0009d0  7d000100  xsignal r2, 0
0009d4  7d000100  xsignal r2, 0
0009d8  7d000100  xsignal r2, 0
0009dc  7d000100  xsignal r2, 0
0009e0  7d000100  xsignal r2, 0
0009e4  7d000100  xsignal r2, 0
0009e8  7d000100  xsignal r2, 0
0009ec  7d000100  xsignal r2, 0
0009f0  7d000100  xsignal r2, 0
0009f4  7d000100  xsignal r2, 0
0009f8  7d000100  xsignal r2, 0
0009fc  7d000100  xsignal r2, 0
000a00  7d000100  xsignal r2, 0
000a04  7d000100  xsignal r2, 0
000a08  7d000100  xsignal r2, 0
000a0c  7d000100  xsignal r2, 0
000a10  7d000100  xsignal r2, 0
000a14  7d000100  xsignal r2, 0
000a18  7d000100  xsignal r2, 0
000a1c  7d000100  xsignal r2, 0
000a20  7d000100  xsignal r2, 0
000a24  7d000100  xsignal r2, 0
000a28  7d000100  xsignal r2, 0
000a2c  7d000100  xsignal r2, 0
000a30  7d000100  xsignal r2, 0
000a34  7d000100  xsignal r2, 0
000a38  7d000100  xsignal r2, 0
000a3c  7d000100  xsignal r2, 0
000a40  7d000100  xsignal r2, 0
000a44  7d000100  xsignal r2, 0
000a48  7d000100  xsignal r2, 0
000a4c  7d000100  xsignal r2, 0
000a50  7d000100  xsignal r2, 0
000a54  7d000100  xsignal r2, 0
000a58  7d000100  xsignal r2, 0
000a5c  7d000100  xsignal r2, 0
000a60  7d000100  xsignal r2, 0
000a64  7d000100  xsignal r2, 0
000a68  7d000100  xsignal r2, 0
000a6c  7d000100  xsignal r2, 0
000a70  7d000100  xsignal r2, 0
000a74  7d000100  xsignal r2, 0
000a78  7d000100  xsignal r2, 0
000a7c  7d000100  xsignal r2, 0
000a80  7d000100  xsignal r2, 0
000a84  7d000100  xsignal r2, 0
000a88  7d000100  xsignal r2, 0
000a8c  7d000100  xsignal r2, 0
000a90  7d000100  xsignal r2, 0
000a94  7d000100  xsignal r2, 0
000a98  7d000100  xsignal r2, 0
000a9c  7d000100  xsignal r2, 0
000aa0  7d000100  xsignal r2, 0
000aa4  7d000100  xsignal r2, 0
000aa8  7d000100  xsignal r2, 0
000aac  7d000100  xsignal r2, 0
000ab0  7d000100  xsignal r2, 0
000ab4  7d000100  xsignal r2, 0
000ab8  7d000100  xsignal r2, 0
000abc  7d000100  xsignal r2, 0
000ac0  7d000100  xsignal r2, 0
000ac4  7d000100  xsignal r2, 0
000ac8  7d000100  xsignal r2, 0
000acc  7d000100  xsignal r2, 0
000ad0  7d000100  xsignal r2, 0
000ad4  7d000100  xsignal r2, 0
000ad8  7d000100  xsignal r2, 0
000adc  7d000100  xsignal r2, 0
000ae0  7d000100  xsignal r2, 0
000ae4  7d000100  xsignal r2, 0
000ae8  7d000100  xsignal r2, 0
000aec  7d000100  xsignal r2, 0
000af0  7d000100  xsignal r2, 0
000af4  7d000100  xsignal r2, 0
000af8  7d000100  xsignal r2, 0
000afc  7d000100  xsignal r2, 0
000b00  7d000100  xsignal r2, 0
000b04  7d000100  xsignal r2, 0
000b08  7d000100  xsignal r2, 0
000b0c  7d000100  xsignal r2, 0
000b10  7d000100  xsignal r2, 0
000b14  7d000100  xsignal r2, 0
000b18  7d000100  xsignal r2, 0
000b1c  7d000100  xsignal r2, 0
000b20  7d000100  xsignal r2, 0
000b24  7d000100  xsignal r2, 0
000b28  7d000100  xsignal r2, 0
000b2c  7d000100  xsignal r2, 0
000b30  7d000100  xsignal r2, 0
000b34  7d000100  xsignal r2, 0
000b38  7d000100  xsignal r2, 0
000b3c  7d000100  xsignal r2, 0
000b40  7d000100  xsignal r2, 0
000b44  7d000100  xsignal r2, 0
000b48  7d000100  xsignal r2, 0
000b4c  7d000100  xsignal r2, 0
000b50  7d000100  xsignal r2, 0
000b54  7d000100  xsignal r2, 0
000b58  7d000100  xsignal r2, 0
000b5c  7d000100  xsignal r2, 0
000b60  7d000100  xsignal r2, 0
000b64  7d000100  xsignal r2, 0
000b68  7d000100  xsignal r2, 0
000b6c  7d000100  xsignal r2, 0
000b70  7d000100  xsignal r2, 0
000b74  7d000100  xsignal r2, 0
000b78  7d000100  xsignal r2, 0
000b7c  7d000100  xsignal r2, 0
000b80  7d000100  xsignal r2, 0
000b84  7d000100  xsignal r2, 0
000b88  7d000100  xsignal r2, 0
000b8c  7d000100  xsignal r2, 0
000b90  7d000100  xsignal r2, 0
000b94  7d000100  xsignal r2, 0
000b98  7d000100  xsignal r2, 0
000b9c  7d000100  xsignal r2, 0
000ba0  7d000100  xsignal r2, 0
000ba4  7d000100  xsignal r2, 0
000ba8  7d000100  xsignal r2, 0
000bac  7d000100  xsignal r2, 0
000bb0  7d000100  xsignal r2, 0
000bb4  7d000100  xsignal r2, 0
000bb8  7d000100  xsignal r2, 0
000bbc  7d000100  xsignal r2, 0
000bc0  7d000100  xsignal r2, 0
000bc4  7d000100  xsignal r2, 0
000bc8  7d000100  xsignal r2, 0
000bcc  7d000100  xsignal r2, 0
000bd0  7d000100  xsignal r2, 0
000bd4  7d000100  xsignal r2, 0
000bd8  7d000100  xsignal r2, 0
000bdc  7d000100  xsignal r2, 0
000be0  7d000100  xsignal r2, 0
000be4  7d000100  xsignal r2, 0
000be8  7d000100  xsignal r2, 0
000bec  7d000100  xsignal r2, 0
000bf0  7d000100  xsignal r2, 0
000bf4  7d000100  xsignal r2, 0
000bf8  7d000100  xsignal r2, 0
000bfc  7d000100  xsignal r2, 0
000c00  7d000100  xsignal r2, 0
000c04  7d000100  xsignal r2, 0
000c08  7d000100  xsignal r2, 0
000c0c  7d000100  xsignal r2, 0
000c10  7d000100  xsignal r2, 0
000c14  7d000100  xsignal r2, 0
000c18  7d000100  xsignal r2, 0
000c1c  7d000100  xsignal r2, 0
000c20  7d000100  xsignal r2, 0
000c24  7d000100  xsignal r2, 0
000c28  7d000100  xsignal r2, 0
000c2c  7d000100  xsignal r2, 0
000c30  7d000100  xsignal r2, 0
000c34  7d000100  xsignal r2, 0
000c38  7d000100  xsignal r2, 0
000c3c  7d000100  xsignal r2, 0
000c40  7d000100  xsignal r2, 0
000c44  7d000100  xsignal r2, 0
000c48  7d000100  xsignal r2, 0
000c4c  7d000100  xsignal r2, 0
000c50  7d000100  xsignal r2, 0
000c54  7d000100  xsignal r2, 0
000c58  7d000100  xsignal r2, 0
000c5c  7d000100  xsignal r2, 0
000c60  7d000100  xsignal r2, 0
000c64  7d000100  xsignal r2, 0
000c68  7d000100  xsignal r2, 0
000c6c  7d000100  xsignal r2, 0
000c70  7d000100  xsignal r2, 0
000c74  7d000100  xsignal r2, 0
000c78  7d000100  xsignal r2, 0
000c7c  7d000100  xsignal r2, 0
000c80  7d000100  xsignal r2, 0
000c84  7d000100  xsignal r2, 0
000c88  7d000100  xsignal r2, 0
000c8c  7d000100  xsignal r2, 0
000c90  7d000100  xsignal r2, 0
000c94  7d000100  xsignal r2, 0
000c98  7d000100  xsignal r2, 0
000c9c  7d000100  xsignal r2, 0
000ca0  7d000100  xsignal r2, 0
000ca4  7d000100  xsignal r2, 0
000ca8  7d000100  xsignal r2, 0
000cac  7d000100  xsignal r2, 0
000cb0  7d000100  xsignal r2, 0
000cb4  7d000100  xsignal r2, 0
000cb8  7d000100  xsignal r2, 0
000cbc  7d000100  xsignal r2, 0
000cc0  7d000100  xsignal r2, 0
000cc4  7d000100  xsignal r2, 0
000cc8  7d000100  xsignal r2, 0
000ccc  7d000100  xsignal r2, 0
000cd0  7d000100  xsignal r2, 0
000cd4  7d000100  xsignal r2, 0
000cd8  7d000100  xsignal r2, 0
000cdc  7d000100  xsignal r2, 0
000ce0  7d000100  xsignal r2, 0
000ce4  7d000100  xsignal r2, 0
000ce8  7d000100  xsignal r2, 0
000cec  7d000100  xsignal r2, 0
000cf0  7d000100  xsignal r2, 0
000cf4  7d000100  xsignal r2, 0
000cf8  7d000100  xsignal r2, 0
000cfc  7d000100  xsignal r2, 0
000d00  7d000100  xsignal r2, 0
000d04  7d000100  xsignal r2, 0
000d08  7d000100  xsignal r2, 0
000d0c  7d000100  xsignal r2, 0
000d10  7d000100  xsignal r2, 0
000d14  7d000100  xsignal r2, 0
000d18  7d000100  xsignal r2, 0
000d1c  7d000100  xsignal r2, 0
000d20  7d000100  xsignal r2, 0
000d24  7d000100  xsignal r2, 0
000d28  7d000100  xsignal r2, 0
000d2c  7d000100  xsignal r2, 0
000d30  7d000100  xsignal r2, 0
000d34  7d000100  xsignal r2, 0
000d38  7d000100  xsignal r2, 0
000d3c  7d000100  xsignal r2, 0
000d40  7d000100  xsignal r2, 0
000d44  7d000100  xsignal r2, 0
000d48  7d000100  xsignal r2, 0
000d4c  7d000100  xsignal r2, 0
000d50  7d000100  xsignal r2, 0
000d54  7d000100  xsignal r2, 0
000d58  7d000100  xsignal r2, 0
000d5c  7d000100  xsignal r2, 0
000d60  7d000100  xsignal r2, 0
000d64  7d000100  xsignal r2, 0
000d68  7d000100  xsignal r2, 0
000d6c  7d000100  xsignal r2, 0
000d70  7d000100  xsignal r2, 0
000d74  7d000100  xsignal r2, 0
000d78  7d000100  xsignal r2, 0
000d7c  7d000100  xsignal r2, 0
000d80  7d000100  xsignal r2, 0
000d84  7d000100  xsignal r2, 0
000d88  7d000100  xsignal r2, 0
000d8c  7d000100  xsignal r2, 0
000d90  7d000100  xsignal r2, 0
000d94  7d000100  xsignal r2, 0
000d98  7d000100  xsignal r2, 0
000d9c  1f711000  addli r2, zero, 15
000da0  7d800100  xsignal r3, 0
000da4  7d800100  xsignal r3, 0
000da8  7d800100  xsignal r3, 0
000dac  7d800100  xsignal r3, 0
000db0  7d800100  xsignal r3, 0
000db4  7d800100  xsignal r3, 0
000db8  7d800100  xsignal r3, 0
000dbc  7d800100  xsignal r3, 0
000dc0  7d800100  xsignal r3, 0
000dc4  7d800100  xsignal r3, 0
000dc8  7d800100  xsignal r3, 0
000dcc  7d800100  xsignal r3, 0
000dd0  7d800100  xsignal r3, 0
000dd4  7d800100  xsignal r3, 0
000dd8  7d800100  xsignal r3, 0
000ddc  7d800100  xsignal r3, 0
000de0  7d800100  xsignal r3, 0
000de4  7d800100  xsignal r3, 0
000de8  7d800100  xsignal r3, 0
000dec  7d800100  xsignal r3, 0
000df0  7d800100  xsignal r3, 0
000df4  7d800100  xsignal r3, 0
000df8  7d800100  xsignal r3, 0
000dfc  7d800100  xsignal r3, 0
000e00  7d800100  xsignal r3, 0
000e04  7d800100  xsignal r3, 0
000e08  7d800100  xsignal r3, 0
000e0c  7d800100  xsignal r3, 0
000e10  7d800100  xsignal r3, 0
000e14  7d800100  xsignal r3, 0
000e18  7d800100  xsignal r3, 0
000e1c  7d800100  xsignal r3, 0
000e20  7d800100  xsignal r3, 0
000e24  7d800100  xsignal r3, 0
000e28  7d800100  xsignal r3, 0
000e2c  7d800100  xsignal r3, 0
000e30  7d800100  xsignal r3, 0
000e34  7d800100  xsignal r3, 0
000e38  7d800100  xsignal r3, 0
000e3c  7d800100  xsignal r3, 0
000e40  7d800100  xsignal r3, 0
000e44  7d800100  xsignal r3, 0
000e48  7d800100  xsignal r3, 0
000e4c  7d800100  xsignal r3, 0
000e50  7d800100  xsignal r3, 0
000e54  7d800100  xsignal r3, 0
000e58  7d800100  xsignal r3, 0
000e5c  7d800100  xsignal r3, 0
000e60  7d800100  xsignal r3, 0
000e64  7d800100  xsignal r3, 0
000e68  7d800100  xsignal r3, 0
000e6c  7d800100  xsignal r3, 0
000e70  7d800100  xsignal r3, 0
000e74  7d800100  xsignal r3, 0
000e78  7d800100  xsignal r3, 0
000e7c  7d800100  xsignal r3, 0
000e80  7d800100  xsignal r3, 0
000e84  7d800100  xsignal r3, 0
000e88  7d800100  xsignal r3, 0
000e8c  7d800100  xsignal r3, 0
000e90  7d800100  xsignal r3, 0
000e94  7d800100  xsignal r3, 0
000e98  7d800100  xsignal r3, 0
000e9c  7d800100  xsignal r3, 0
000ea0  7d800100  xsignal r3, 0
000ea4  7d800100  xsignal r3, 0
000ea8  7d800100  xsignal r3, 0
000eac  7d800100  xsignal r3, 0
000eb0  7d800100  xsignal r3, 0
000eb4  7d800100  xsignal r3, 0
000eb8  7d800100  xsignal r3, 0
000ebc  7d800100  xsignal r3, 0
000ec0  7d800100  xsignal r3, 0
000ec4  7d800100  xsignal r3, 0
000ec8  7d800100  xsignal r3, 0
000ecc  7d800100  xsignal r3, 0
000ed0  7d800100  xsignal r3, 0
000ed4  7d800100  xsignal r3, 0
000ed8  7d800100  xsignal r3, 0
000edc  7d800100  xsignal r3, 0
000ee0  7d800100  xsignal r3, 0
000ee4  7d800100  xsignal r3, 0
000ee8  7d800100  xsignal r3, 0
000eec  7d800100  xsignal r3, 0
000ef0  7d800100  xsignal r3, 0
000ef4  7d800100  xsignal r3, 0
000ef8  7d800100  xsignal r3, 0
000efc  7d800100  xsignal r3, 0
000f00  7d800100  xsignal r3, 0
000f04  7d800100  xsignal r3, 0
000f08  7d800100  xsignal r3, 0
000f0c  7d800100  xsignal r3, 0
000f10  7d800100  xsignal r3, 0
000f14  7d800100  xsignal r3, 0
000f18  7d800100  xsignal r3, 0
000f1c  7d800100  xsignal r3, 0
000f20  7d800100  xsignal r3, 0
000f24  7d800100  xsignal r3, 0
000f28  7d800100  xsignal r3, 0
000f2c  7d800100  xsignal r3, 0
000f30  7d800100  xsignal r3, 0
000f34  7d800100  xsignal r3, 0
000f38  7d800100  xsignal r3, 0
000f3c  7d800100  xsignal r3, 0
000f40  7d800100  xsignal r3, 0
000f44  7d800100  xsignal r3, 0
000f48  7d800100  xsignal r3, 0
000f4c  7d800100  xsignal r3, 0
000f50  7d800100  xsignal r3, 0
000f54  7d800100  xsignal r3, 0
000f58  7d800100  xsignal r3, 0
000f5c  7d800100  xsignal r3, 0
000f60  7d800100  xsignal r3, 0
000f64  7d800100  xsignal r3, 0
000f68  7d800100  xsignal r3, 0
000f6c  7d800100  xsignal r3, 0
000f70  7d800100  xsignal r3, 0
000f74  7d800100  xsignal r3, 0
000f78  7d800100  xsignal r3, 0
000f7c  7d800100  xsignal r3, 0
000f80  7d800100  xsignal r3, 0
000f84  7d800100  xsignal r3, 0
000f88  7d800100  xsignal r3, 0
000f8c  7d800100  xsignal r3, 0
000f90  7d800100  xsignal r3, 0
000f94  7d800100  xsignal r3, 0
000f98  7d800100  xsignal r3, 0
000f9c  7d800100  xsignal r3, 0
000fa0  7d800100  xsignal r3, 0
000fa4  7d800100  xsignal r3, 0
000fa8  7d800100  xsignal r3, 0
000fac  7d800100  xsignal r3, 0
000fb0  7d800100  xsignal r3, 0
000fb4  7d800100  xsignal r3, 0
000fb8  7d800100  xsignal r3, 0
000fbc  7d800100  xsignal r3, 0
000fc0  7d800100  xsignal r3, 0
000fc4  7d800100  xsignal r3, 0
000fc8  7d800100  xsignal r3, 0
000fcc  7d800100  xsignal r3, 0
000fd0  7d800100  xsignal r3, 0
000fd4  7d800100  xsignal r3, 0
000fd8  7d800100  xsignal r3, 0
000fdc  7d800100  xsignal r3, 0
000fe0  7d800100  xsignal r3, 0
000fe4  7d800100  xsignal r3, 0
000fe8  7d800100  xsignal r3, 0
000fec  7d800100  xsignal r3, 0
000ff0  7d800100  xsignal r3, 0
000ff4  7d800100  xsignal r3, 0
000ff8  7d800100  xsignal r3, 0
000ffc  7d800100  xsignal r3, 0
001000  7d800100  xsignal r3, 0
001004  7d800100  xsignal r3, 0
001008  7d800100  xsignal r3, 0
00100c  7d800100  xsignal r3, 0
001010  7d800100  xsignal r3, 0
001014  7d800100  xsignal r3, 0
001018  7d800100  xsignal r3, 0
00101c  7d800100  xsignal r3, 0
001020  7d800100  xsignal r3, 0
001024  7d800100  xsignal r3, 0
001028  7d800100  xsignal r3, 0
00102c  7d800100  xsignal r3, 0
001030  7d800100  xsignal r3, 0
001034  7d800100  xsignal r3, 0
001038  7d800100  xsignal r3, 0
00103c  7d800100  xsignal r3, 0
001040  7d800100  xsignal r3, 0
001044  7d800100  xsignal r3, 0
001048  7d800100  xsignal r3, 0
00104c  7d800100  xsignal r3, 0
001050  7d800100  xsignal r3, 0
001054  7d800100  xsignal r3, 0
001058  7d800100  xsignal r3, 0
00105c  7d800100  xsignal r3, 0
001060  7d800100  xsignal r3, 0
001064  7d800100  xsignal r3, 0
001068  7d800100  xsignal r3, 0
00106c  7d800100  xsignal r3, 0
001070  7d800100  xsignal r3, 0
001074  7d800100  xsignal r3, 0
001078  7d800100  xsignal r3, 0
00107c  7d800100  xsignal r3, 0
001080  7d800100  xsignal r3, 0
001084  7d800100  xsignal r3, 0
001088  7d800100  xsignal r3, 0
00108c  7d800100  xsignal r3, 0
001090  7d800100  xsignal r3, 0
001094  7d800100  xsignal r3, 0
001098  7d800100  xsignal r3, 0
00109c  7d800100  xsignal r3, 0
0010a0  7d800100  xsignal r3, 0
0010a4  7d800100  xsignal r3, 0
0010a8  7d800100  xsignal r3, 0
0010ac  7d800100  xsignal r3, 0
0010b0  7d800100  xsignal r3, 0
0010b4  7d800100  xsignal r3, 0
0010b8  7d800100  xsignal r3, 0
0010bc  7d800100  xsignal r3, 0
0010c0  7d800100  xsignal r3, 0
0010c4  7d800100  xsignal r3, 0
0010c8  7d800100  xsignal r3, 0
0010cc  7d800100  xsignal r3, 0
0010d0  7d800100  xsignal r3, 0
0010d4  7d800100  xsignal r3, 0
0010d8  7d800100  xsignal r3, 0
0010dc  7d800100  xsignal r3, 0
0010e0  7d800100  xsignal r3, 0
0010e4  7d800100  xsignal r3, 0
0010e8  7d800100  xsignal r3, 0
0010ec  7d800100  xsignal r3, 0
0010f0  7d800100  xsignal r3, 0
0010f4  7d800100  xsignal r3, 0
0010f8  7d800100  xsignal r3, 0
0010fc  7d800100  xsignal r3, 0
001100  7d800100  xsignal r3, 0
001104  7d800100  xsignal r3, 0
001108  7d800100  xsignal r3, 0
00110c  7d800100  xsignal r3, 0
001110  7d800100  xsignal r3, 0
001114  7d800100  xsignal r3, 0
001118  7d800100  xsignal r3, 0
00111c  7d800100  xsignal r3, 0
001120  7d800100  xsignal r3, 0
001124  7d800100  xsignal r3, 0
001128  7d800100  xsignal r3, 0
00112c  7d800100  xsignal r3, 0
001130  7d800100  xsignal r3, 0
001134  7d800100  xsignal r3, 0
001138  7d800100  xsignal r3, 0
00113c  7d800100  xsignal r3, 0
001140  7d800100  xsignal r3, 0
001144  7d800100  xsignal r3, 0
001148  7d800100  xsignal r3, 0
00114c  7d800100  xsignal r3, 0
001150  7d800100  xsignal r3, 0
001154  7d800100  xsignal r3, 0
001158  7d800100  xsignal r3, 0
00115c  7d800100  xsignal r3, 0
001160  7d800100  xsignal r3, 0
001164  7d800100  xsignal r3, 0
001168  7d800100  xsignal r3, 0
00116c  7d800100  xsignal r3, 0
001170  7d800100  xsignal r3, 0
001174  7d800100  xsignal r3, 0
001178  7d800100  xsignal r3, 0
00117c  7d800100  xsignal r3, 0
001180  7d800100  xsignal r3, 0
001184  7d800100  xsignal r3, 0
001188  7d800100  xsignal r3, 0
00118c  7d800100  xsignal r3, 0
001190  7d800100  xsignal r3, 0
001194  7d800100  xsignal r3, 0
001198  7d800100  xsignal r3, 0
00119c  7d800000  xsignal r1, 0
0011a0  9f302000  addli r1, zero, 19
0011a4  7d000100  xsignal r2, 0
0011a8  1f412000  addli r2, zero, 20
0011ac  7d800000  xsignal r1, 0
0011b0  7d000100  xsignal r2, 0
0011b4  e3005f00  loadli.w r1,  40(r30)
0011b8  63415f00  loadli.w r2,  44(r30)
0011bc  00d20002  load_param_i r4, 1
0011c0  e3016f00  loadli.w r3,  48(r30)
0011c4  2bfaffff  lui r20, 1048575
0011c8  67000ff8  storeli.w zero, -1024(r30)
0011cc  67000ff0  storeli.w zero, -2048(r30)
0011d0  1b14faff  ori r8, r20, 4095
0011d4  8b101120  mul.s r1, r2, r1
0011d8  1f010200  addli r2, r4, 0
0011dc  67408ff8  storeli.w r8, -1020(r30)
0011e0  e7008ff8  storeli.w r8, -1016(r30)
0011e4  e7408ff8  storeli.w r8, -1012(r30)
0011e8  67018ff8  storeli.w r8, -1008(r30)
0011ec  67418ff8  storeli.w r8, -1004(r30)
0011f0  e7018ff8  storeli.w r8, -1000(r30)
0011f4  e7418ff8  storeli.w r8, -996(r30)
0011f8  67028ff8  storeli.w r8, -992(r30)
0011fc  67428ff8  storeli.w r8, -988(r30)
001200  e7028ff8  storeli.w r8, -984(r30)
001204  e7428ff8  storeli.w r8, -980(r30)
001208  67038ff8  storeli.w r8, -976(r30)
00120c  67438ff8  storeli.w r8, -972(r30)
001210  e7038ff8  storeli.w r8, -968(r30)
001214  e7438ff8  storeli.w r8, -964(r30)
001218  67048ff8  storeli.w r8, -960(r30)
00121c  67448ff8  storeli.w r8, -956(r30)
001220  e7048ff8  storeli.w r8, -952(r30)
001224  e7448ff8  storeli.w r8, -948(r30)
001228  67058ff8  storeli.w r8, -944(r30)
00122c  67458ff8  storeli.w r8, -940(r30)
001230  e7058ff8  storeli.w r8, -936(r30)
001234  e7458ff8  storeli.w r8, -932(r30)
001238  67028fe8  storeli.w r8, -3040(r30)
00123c  67068ff8  storeli.w r8, -928(r30)
001240  67468ff8  storeli.w r8, -924(r30)
001244  e7068ff8  storeli.w r8, -920(r30)
001248  e7468ff8  storeli.w r8, -916(r30)
00124c  67078ff8  storeli.w r8, -912(r30)
001250  67478ff8  storeli.w r8, -908(r30)
001254  e7078ff8  storeli.w r8, -904(r30)
001258  e7478ff8  storeli.w r8, -900(r30)
00125c  67088ff8  storeli.w r8, -896(r30)
001260  67488ff8  storeli.w r8, -892(r30)
001264  e7088ff8  storeli.w r8, -888(r30)
001268  e7488ff8  storeli.w r8, -884(r30)
00126c  67098ff8  storeli.w r8, -880(r30)
001270  67498ff8  storeli.w r8, -876(r30)
001274  e7098ff8  storeli.w r8, -872(r30)
001278  e7498ff8  storeli.w r8, -868(r30)
00127c  670a8ff8  storeli.w r8, -864(r30)
001280  674a8ff8  storeli.w r8, -860(r30)
001284  e70a8ff8  storeli.w r8, -856(r30)
001288  e74a8ff8  storeli.w r8, -852(r30)
00128c  670b8ff8  storeli.w r8, -848(r30)
001290  674b8ff8  storeli.w r8, -844(r30)
001294  e70b8ff8  storeli.w r8, -840(r30)
001298  e74b8ff8  storeli.w r8, -836(r30)
00129c  670c8ff8  storeli.w r8, -832(r30)
0012a0  674c8ff8  storeli.w r8, -828(r30)
0012a4  e70c8ff8  storeli.w r8, -824(r30)
0012a8  e74c8ff8  storeli.w r8, -820(r30)
0012ac  670d8ff8  storeli.w r8, -816(r30)
0012b0  674d8ff8  storeli.w r8, -812(r30)
0012b4  e70d8ff8  storeli.w r8, -808(r30)
0012b8  e74d8ff8  storeli.w r8, -804(r30)
0012bc  670e8ff8  storeli.w r8, -800(r30)
0012c0  674e8ff8  storeli.w r8, -796(r30)
0012c4  e70e8ff8  storeli.w r8, -792(r30)
0012c8  e74e8ff8  storeli.w r8, -788(r30)
0012cc  670f8ff8  storeli.w r8, -784(r30)
0012d0  674f8ff8  storeli.w r8, -780(r30)
0012d4  e70f8ff8  storeli.w r8, -776(r30)
0012d8  e74f8ff8  storeli.w r8, -772(r30)
0012dc  67008ffa  storeli.w r8, -768(r30)
0012e0  67408ffa  storeli.w r8, -764(r30)
0012e4  e7008ffa  storeli.w r8, -760(r30)
0012e8  e7408ffa  storeli.w r8, -756(r30)
0012ec  67018ffa  storeli.w r8, -752(r30)
0012f0  67418ffa  storeli.w r8, -748(r30)
0012f4  e7018ffa  storeli.w r8, -744(r30)
0012f8  e7418ffa  storeli.w r8, -740(r30)
0012fc  67028ffa  storeli.w r8, -736(r30)
001300  67428ffa  storeli.w r8, -732(r30)
001304  e7028ffa  storeli.w r8, -728(r30)
001308  e7428ffa  storeli.w r8, -724(r30)
00130c  67038ffa  storeli.w r8, -720(r30)
001310  67438ffa  storeli.w r8, -716(r30)
001314  e7038ffa  storeli.w r8, -712(r30)
001318  e7438ffa  storeli.w r8, -708(r30)
00131c  67048ffa  storeli.w r8, -704(r30)
001320  67448ffa  storeli.w r8, -700(r30)
001324  e7048ffa  storeli.w r8, -696(r30)
001328  e7448ffa  storeli.w r8, -692(r30)
00132c  67058ffa  storeli.w r8, -688(r30)
001330  67458ffa  storeli.w r8, -684(r30)
001334  e7058ffa  storeli.w r8, -680(r30)
001338  e7458ffa  storeli.w r8, -676(r30)
00133c  67068ffa  storeli.w r8, -672(r30)
001340  67468ffa  storeli.w r8, -668(r30)
001344  e7068ffa  storeli.w r8, -664(r30)
001348  e7468ffa  storeli.w r8, -660(r30)
00134c  67078ffa  storeli.w r8, -656(r30)
001350  67478ffa  storeli.w r8, -652(r30)
001354  e7078ffa  storeli.w r8, -648(r30)
001358  e7478ffa  storeli.w r8, -644(r30)
00135c  67088ffa  storeli.w r8, -640(r30)
001360  67488ffa  storeli.w r8, -636(r30)
001364  e7088ffa  storeli.w r8, -632(r30)
001368  e7488ffa  storeli.w r8, -628(r30)
00136c  67098ffa  storeli.w r8, -624(r30)
001370  67498ffa  storeli.w r8, -620(r30)
001374  e7098ffa  storeli.w r8, -616(r30)
001378  e7498ffa  storeli.w r8, -612(r30)
00137c  670a8ffa  storeli.w r8, -608(r30)
001380  674a8ffa  storeli.w r8, -604(r30)
001384  e70a8ffa  storeli.w r8, -600(r30)
001388  e74a8ffa  storeli.w r8, -596(r30)
00138c  670b8ffa  storeli.w r8, -592(r30)
001390  674b8ffa  storeli.w r8, -588(r30)
001394  e70b8ffa  storeli.w r8, -584(r30)
001398  e74b8ffa  storeli.w r8, -580(r30)
00139c  670c8ffa  storeli.w r8, -576(r30)
0013a0  674c8ffa  storeli.w r8, -572(r30)
0013a4  e70c8ffa  storeli.w r8, -568(r30)
0013a8  e74c8ffa  storeli.w r8, -564(r30)
0013ac  670d8ffa  storeli.w r8, -560(r30)
0013b0  674d8ffa  storeli.w r8, -556(r30)
0013b4  e70d8ffa  storeli.w r8, -552(r30)
0013b8  e74d8ffa  storeli.w r8, -548(r30)
0013bc  670e8ffa  storeli.w r8, -544(r30)
0013c0  674e8ffa  storeli.w r8, -540(r30)
0013c4  e70e8ffa  storeli.w r8, -536(r30)
0013c8  e74e8ffa  storeli.w r8, -532(r30)
0013cc  670f8ffa  storeli.w r8, -528(r30)
0013d0  674f8ffa  storeli.w r8, -524(r30)
0013d4  e70f8ffa  storeli.w r8, -520(r30)
0013d8  e74f8ffa  storeli.w r8, -516(r30)
0013dc  67008ffc  storeli.w r8, -512(r30)
0013e0  67408ffc  storeli.w r8, -508(r30)
0013e4  e7008ffc  storeli.w r8, -504(r30)
0013e8  e7408ffc  storeli.w r8, -500(r30)
0013ec  67018ffc  storeli.w r8, -496(r30)
0013f0  67418ffc  storeli.w r8, -492(r30)
0013f4  e7018ffc  storeli.w r8, -488(r30)
0013f8  e7418ffc  storeli.w r8, -484(r30)
0013fc  67028ffc  storeli.w r8, -480(r30)
001400  67428ffc  storeli.w r8, -476(r30)
001404  e7028ffc  storeli.w r8, -472(r30)
001408  e7428ffc  storeli.w r8, -468(r30)
00140c  67038ffc  storeli.w r8, -464(r30)
001410  67438ffc  storeli.w r8, -460(r30)
001414  e7038ffc  storeli.w r8, -456(r30)
001418  e7438ffc  storeli.w r8, -452(r30)
00141c  67048ffc  storeli.w r8, -448(r30)
001420  67448ffc  storeli.w r8, -444(r30)
001424  e7048ffc  storeli.w r8, -440(r30)
001428  e7448ffc  storeli.w r8, -436(r30)
00142c  67058ffc  storeli.w r8, -432(r30)
001430  67458ffc  storeli.w r8, -428(r30)
001434  e7058ffc  storeli.w r8, -424(r30)
001438  e7458ffc  storeli.w r8, -420(r30)
00143c  67068ffc  storeli.w r8, -416(r30)
001440  67468ffc  storeli.w r8, -412(r30)
001444  e7068ffc  storeli.w r8, -408(r30)
001448  e7468ffc  storeli.w r8, -404(r30)
00144c  67078ffc  storeli.w r8, -400(r30)
001450  67478ffc  storeli.w r8, -396(r30)
001454  e7078ffc  storeli.w r8, -392(r30)
001458  e7478ffc  storeli.w r8, -388(r30)
00145c  67088ffc  storeli.w r8, -384(r30)
001460  67488ffc  storeli.w r8, -380(r30)
001464  e7088ffc  storeli.w r8, -376(r30)
001468  e7488ffc  storeli.w r8, -372(r30)
00146c  67098ffc  storeli.w r8, -368(r30)
001470  67498ffc  storeli.w r8, -364(r30)
001474  e7098ffc  storeli.w r8, -360(r30)
001478  e7498ffc  storeli.w r8, -356(r30)
00147c  670a8ffc  storeli.w r8, -352(r30)
001480  674a8ffc  storeli.w r8, -348(r30)
001484  e70a8ffc  storeli.w r8, -344(r30)
001488  e74a8ffc  storeli.w r8, -340(r30)
00148c  670b8ffc  storeli.w r8, -336(r30)
001490  674b8ffc  storeli.w r8, -332(r30)
001494  e70b8ffc  storeli.w r8, -328(r30)
001498  e74b8ffc  storeli.w r8, -324(r30)
00149c  670c8ffc  storeli.w r8, -320(r30)
0014a0  674c8ffc  storeli.w r8, -316(r30)
0014a4  e70c8ffc  storeli.w r8, -312(r30)
0014a8  e74c8ffc  storeli.w r8, -308(r30)
0014ac  670d8ffc  storeli.w r8, -304(r30)
0014b0  674d8ffc  storeli.w r8, -300(r30)
0014b4  e70d8ffc  storeli.w r8, -296(r30)
0014b8  e74d8ffc  storeli.w r8, -292(r30)
0014bc  670e8ffc  storeli.w r8, -288(r30)
0014c0  674e8ffc  storeli.w r8, -284(r30)
0014c4  e70e8ffc  storeli.w r8, -280(r30)
0014c8  e74e8ffc  storeli.w r8, -276(r30)
0014cc  670f8ffc  storeli.w r8, -272(r30)
0014d0  674f8ffc  storeli.w r8, -268(r30)
0014d4  e70f8ffc  storeli.w r8, -264(r30)
0014d8  e74f8ffc  storeli.w r8, -260(r30)
0014dc  67008ffe  storeli.w r8, -256(r30)
0014e0  67408ffe  storeli.w r8, -252(r30)
0014e4  e7008ffe  storeli.w r8, -248(r30)
0014e8  e7408ffe  storeli.w r8, -244(r30)
0014ec  67018ffe  storeli.w r8, -240(r30)
0014f0  67418ffe  storeli.w r8, -236(r30)
0014f4  e7018ffe  storeli.w r8, -232(r30)
0014f8  e7418ffe  storeli.w r8, -228(r30)
0014fc  67028ffe  storeli.w r8, -224(r30)
001500  67428ffe  storeli.w r8, -220(r30)
001504  e7028ffe  storeli.w r8, -216(r30)
001508  e7428ffe  storeli.w r8, -212(r30)
00150c  67038ffe  storeli.w r8, -208(r30)
001510  67438ffe  storeli.w r8, -204(r30)
001514  e7038ffe  storeli.w r8, -200(r30)
001518  e7438ffe  storeli.w r8, -196(r30)
00151c  67048ffe  storeli.w r8, -192(r30)
001520  67448ffe  storeli.w r8, -188(r30)
001524  e7048ffe  storeli.w r8, -184(r30)
001528  e7448ffe  storeli.w r8, -180(r30)
00152c  67058ffe  storeli.w r8, -176(r30)
001530  67458ffe  storeli.w r8, -172(r30)
001534  e7058ffe  storeli.w r8, -168(r30)
001538  e7458ffe  storeli.w r8, -164(r30)
00153c  67068ffe  storeli.w r8, -160(r30)
001540  67468ffe  storeli.w r8, -156(r30)
001544  e7068ffe  storeli.w r8, -152(r30)
001548  e7468ffe  storeli.w r8, -148(r30)
00154c  67078ffe  storeli.w r8, -144(r30)
001550  67478ffe  storeli.w r8, -140(r30)
001554  e7078ffe  storeli.w r8, -136(r30)
001558  e7478ffe  storeli.w r8, -132(r30)
00155c  67088ffe  storeli.w r8, -128(r30)
001560  67488ffe  storeli.w r8, -124(r30)
001564  e7088ffe  storeli.w r8, -120(r30)
001568  e7488ffe  storeli.w r8, -116(r30)
00156c  67098ffe  storeli.w r8, -112(r30)
001570  67498ffe  storeli.w r8, -108(r30)
001574  e7098ffe  storeli.w r8, -104(r30)
001578  e7498ffe  storeli.w r8, -100(r30)
00157c  670a8ffe  storeli.w r8, -96(r30)
001580  674a8ffe  storeli.w r8, -92(r30)
001584  e70a8ffe  storeli.w r8, -88(r30)
001588  e74a8ffe  storeli.w r8, -84(r30)
00158c  670b8ffe  storeli.w r8, -80(r30)
001590  674b8ffe  storeli.w r8, -76(r30)
001594  e70b8ffe  storeli.w r8, -72(r30)
001598  e74b8ffe  storeli.w r8, -68(r30)
00159c  670c8ffe  storeli.w r8, -64(r30)
0015a0  674c8ffe  storeli.w r8, -60(r30)
0015a4  e70c8ffe  storeli.w r8, -56(r30)
0015a8  e74c8ffe  storeli.w r8, -52(r30)
0015ac  670d8ffe  storeli.w r8, -48(r30)
0015b0  674d8ffe  storeli.w r8, -44(r30)
0015b4  e70d8ffe  storeli.w r8, -40(r30)
0015b8  e74d8ffe  storeli.w r8, -36(r30)
0015bc  670e8ffe  storeli.w r8, -32(r30)
0015c0  674e8ffe  storeli.w r8, -28(r30)
0015c4  e70e8ffe  storeli.w r8, -24(r30)
0015c8  e74e8ffe  storeli.w r8, -20(r30)
0015cc  670f8ffe  storeli.w r8, -16(r30)
0015d0  674f8ffe  storeli.w r8, -12(r30)
0015d4  e70f8ffe  storeli.w r8, -8(r30)
0015d8  e74f8ffe  storeli.w r8, -4(r30)
0015dc  67408ff0  storeli.w r8, -2044(r30)
0015e0  e7008ff0  storeli.w r8, -2040(r30)
0015e4  e7408ff0  storeli.w r8, -2036(r30)
0015e8  67018ff0  storeli.w r8, -2032(r30)
0015ec  67418ff0  storeli.w r8, -2028(r30)
0015f0  e7018ff0  storeli.w r8, -2024(r30)
0015f4  e7418ff0  storeli.w r8, -2020(r30)
0015f8  67028ff0  storeli.w r8, -2016(r30)
0015fc  67428ff0  storeli.w r8, -2012(r30)
001600  e7028ff0  storeli.w r8, -2008(r30)
001604  e7428ff0  storeli.w r8, -2004(r30)
001608  67038ff0  storeli.w r8, -2000(r30)
00160c  67438ff0  storeli.w r8, -1996(r30)
001610  e7038ff0  storeli.w r8, -1992(r30)
001614  e7438ff0  storeli.w r8, -1988(r30)
001618  67048ff0  storeli.w r8, -1984(r30)
00161c  67448ff0  storeli.w r8, -1980(r30)
001620  e7048ff0  storeli.w r8, -1976(r30)
001624  e7448ff0  storeli.w r8, -1972(r30)
001628  67058ff0  storeli.w r8, -1968(r30)
00162c  67458ff0  storeli.w r8, -1964(r30)
001630  67038fe8  storeli.w r8, -3024(r30)
001634  e70f8fee  storeli.w r8, -2056(r30)
001638  674f8fee  storeli.w r8, -2060(r30)
00163c  670f8fee  storeli.w r8, -2064(r30)
001640  e74e8fee  storeli.w r8, -2068(r30)
001644  e70e8fee  storeli.w r8, -2072(r30)
001648  674e8fee  storeli.w r8, -2076(r30)
00164c  670e8fee  storeli.w r8, -2080(r30)
001650  e74d8fee  storeli.w r8, -2084(r30)
001654  e70d8fee  storeli.w r8, -2088(r30)
001658  674d8fee  storeli.w r8, -2092(r30)
00165c  670d8fee  storeli.w r8, -2096(r30)
001660  e74c8fee  storeli.w r8, -2100(r30)
001664  e70c8fee  storeli.w r8, -2104(r30)
001668  674c8fee  storeli.w r8, -2108(r30)
00166c  670c8fee  storeli.w r8, -2112(r30)
001670  e74b8fee  storeli.w r8, -2116(r30)
001674  e70b8fee  storeli.w r8, -2120(r30)
001678  674b8fee  storeli.w r8, -2124(r30)
00167c  670b8fee  storeli.w r8, -2128(r30)
001680  e74a8fee  storeli.w r8, -2132(r30)
001684  e70a8fee  storeli.w r8, -2136(r30)
001688  674a8fee  storeli.w r8, -2140(r30)
00168c  670a8fee  storeli.w r8, -2144(r30)
001690  e7498fee  storeli.w r8, -2148(r30)
001694  e7098fee  storeli.w r8, -2152(r30)
001698  67498fee  storeli.w r8, -2156(r30)
00169c  67098fee  storeli.w r8, -2160(r30)
0016a0  e7488fee  storeli.w r8, -2164(r30)
0016a4  e7088fee  storeli.w r8, -2168(r30)
0016a8  67488fee  storeli.w r8, -2172(r30)
0016ac  67088fee  storeli.w r8, -2176(r30)
0016b0  e7478fee  storeli.w r8, -2180(r30)
0016b4  e7078fee  storeli.w r8, -2184(r30)
0016b8  67478fee  storeli.w r8, -2188(r30)
0016bc  67078fee  storeli.w r8, -2192(r30)
0016c0  e7468fee  storeli.w r8, -2196(r30)
0016c4  e7068fee  storeli.w r8, -2200(r30)
0016c8  67468fee  storeli.w r8, -2204(r30)
0016cc  67068fee  storeli.w r8, -2208(r30)
0016d0  e7458fee  storeli.w r8, -2212(r30)
0016d4  e7058fee  storeli.w r8, -2216(r30)
0016d8  67458fee  storeli.w r8, -2220(r30)
0016dc  67058fee  storeli.w r8, -2224(r30)
0016e0  e7448fee  storeli.w r8, -2228(r30)
0016e4  e7048fee  storeli.w r8, -2232(r30)
0016e8  67448fee  storeli.w r8, -2236(r30)
0016ec  67048fee  storeli.w r8, -2240(r30)
0016f0  e7438fee  storeli.w r8, -2244(r30)
0016f4  e7038fee  storeli.w r8, -2248(r30)
0016f8  67438fee  storeli.w r8, -2252(r30)
0016fc  67038fee  storeli.w r8, -2256(r30)
001700  e7428fee  storeli.w r8, -2260(r30)
001704  e7028fee  storeli.w r8, -2264(r30)
001708  67428fee  storeli.w r8, -2268(r30)
00170c  67028fee  storeli.w r8, -2272(r30)
001710  e7418fee  storeli.w r8, -2276(r30)
001714  e7018fee  storeli.w r8, -2280(r30)
001718  67418fee  storeli.w r8, -2284(r30)
00171c  67018fee  storeli.w r8, -2288(r30)
001720  e7408fee  storeli.w r8, -2292(r30)
001724  e7008fee  storeli.w r8, -2296(r30)
001728  67408fee  storeli.w r8, -2300(r30)
00172c  67008fee  storeli.w r8, -2304(r30)
001730  e74f8fec  storeli.w r8, -2308(r30)
001734  e70f8fec  storeli.w r8, -2312(r30)
001738  674f8fec  storeli.w r8, -2316(r30)
00173c  670f8fec  storeli.w r8, -2320(r30)
001740  e74e8fec  storeli.w r8, -2324(r30)
001744  e70e8fec  storeli.w r8, -2328(r30)
001748  674e8fec  storeli.w r8, -2332(r30)
00174c  670e8fec  storeli.w r8, -2336(r30)
001750  e74d8fec  storeli.w r8, -2340(r30)
001754  e70d8fec  storeli.w r8, -2344(r30)
001758  674d8fec  storeli.w r8, -2348(r30)
00175c  670d8fec  storeli.w r8, -2352(r30)
001760  e74c8fec  storeli.w r8, -2356(r30)
001764  e70c8fec  storeli.w r8, -2360(r30)
001768  674c8fec  storeli.w r8, -2364(r30)
00176c  670c8fec  storeli.w r8, -2368(r30)
001770  e74b8fec  storeli.w r8, -2372(r30)
001774  e70b8fec  storeli.w r8, -2376(r30)
001778  674b8fec  storeli.w r8, -2380(r30)
00177c  670b8fec  storeli.w r8, -2384(r30)
001780  e74a8fec  storeli.w r8, -2388(r30)
001784  e70a8fec  storeli.w r8, -2392(r30)
001788  674a8fec  storeli.w r8, -2396(r30)
00178c  670a8fec  storeli.w r8, -2400(r30)
001790  e7498fec  storeli.w r8, -2404(r30)
001794  e7098fec  storeli.w r8, -2408(r30)
001798  67498fec  storeli.w r8, -2412(r30)
00179c  67098fec  storeli.w r8, -2416(r30)
0017a0  e7488fec  storeli.w r8, -2420(r30)
0017a4  e7088fec  storeli.w r8, -2424(r30)
0017a8  67488fec  storeli.w r8, -2428(r30)
0017ac  67088fec  storeli.w r8, -2432(r30)
0017b0  e7478fec  storeli.w r8, -2436(r30)
0017b4  e7078fec  storeli.w r8, -2440(r30)
0017b8  67478fec  storeli.w r8, -2444(r30)
0017bc  67078fec  storeli.w r8, -2448(r30)
0017c0  e7468fec  storeli.w r8, -2452(r30)
0017c4  e7068fec  storeli.w r8, -2456(r30)
0017c8  67468fec  storeli.w r8, -2460(r30)
0017cc  67068fec  storeli.w r8, -2464(r30)
0017d0  e7458fec  storeli.w r8, -2468(r30)
0017d4  e7058fec  storeli.w r8, -2472(r30)
0017d8  67458fec  storeli.w r8, -2476(r30)
0017dc  67058fec  storeli.w r8, -2480(r30)
0017e0  e7448fec  storeli.w r8, -2484(r30)
0017e4  e7048fec  storeli.w r8, -2488(r30)
0017e8  67448fec  storeli.w r8, -2492(r30)
0017ec  67048fec  storeli.w r8, -2496(r30)
0017f0  e7438fec  storeli.w r8, -2500(r30)
0017f4  e7038fec  storeli.w r8, -2504(r30)
0017f8  67438fec  storeli.w r8, -2508(r30)
0017fc  67038fec  storeli.w r8, -2512(r30)
001800  e7428fec  storeli.w r8, -2516(r30)
001804  e7028fec  storeli.w r8, -2520(r30)
001808  67428fec  storeli.w r8, -2524(r30)
00180c  67028fec  storeli.w r8, -2528(r30)
001810  e7418fec  storeli.w r8, -2532(r30)
001814  e7018fec  storeli.w r8, -2536(r30)
001818  67418fec  storeli.w r8, -2540(r30)
00181c  67018fec  storeli.w r8, -2544(r30)
001820  e7408fec  storeli.w r8, -2548(r30)
001824  e7008fec  storeli.w r8, -2552(r30)
001828  67408fec  storeli.w r8, -2556(r30)
00182c  67008fec  storeli.w r8, -2560(r30)
001830  e74f8fea  storeli.w r8, -2564(r30)
001834  e70f8fea  storeli.w r8, -2568(r30)
001838  674f8fea  storeli.w r8, -2572(r30)
00183c  670f8fea  storeli.w r8, -2576(r30)
001840  e74e8fea  storeli.w r8, -2580(r30)
001844  e70e8fea  storeli.w r8, -2584(r30)
001848  674e8fea  storeli.w r8, -2588(r30)
00184c  670e8fea  storeli.w r8, -2592(r30)
001850  e74d8fea  storeli.w r8, -2596(r30)
001854  e70d8fea  storeli.w r8, -2600(r30)
001858  674d8fea  storeli.w r8, -2604(r30)
00185c  670d8fea  storeli.w r8, -2608(r30)
001860  e74c8fea  storeli.w r8, -2612(r30)
001864  e70c8fea  storeli.w r8, -2616(r30)
001868  674c8fea  storeli.w r8, -2620(r30)
00186c  670c8fea  storeli.w r8, -2624(r30)
001870  e74b8fea  storeli.w r8, -2628(r30)
001874  e70b8fea  storeli.w r8, -2632(r30)
001878  674b8fea  storeli.w r8, -2636(r30)
00187c  670b8fea  storeli.w r8, -2640(r30)
001880  e74a8fea  storeli.w r8, -2644(r30)
001884  e70a8fea  storeli.w r8, -2648(r30)
001888  674a8fea  storeli.w r8, -2652(r30)
00188c  670a8fea  storeli.w r8, -2656(r30)
001890  e7498fea  storeli.w r8, -2660(r30)
001894  e7098fea  storeli.w r8, -2664(r30)
001898  67498fea  storeli.w r8, -2668(r30)
00189c  67098fea  storeli.w r8, -2672(r30)
0018a0  e7488fea  storeli.w r8, -2676(r30)
0018a4  e7088fea  storeli.w r8, -2680(r30)
0018a8  67488fea  storeli.w r8, -2684(r30)
0018ac  67088fea  storeli.w r8, -2688(r30)
0018b0  e7478fea  storeli.w r8, -2692(r30)
0018b4  e7078fea  storeli.w r8, -2696(r30)
0018b8  67478fea  storeli.w r8, -2700(r30)
0018bc  67078fea  storeli.w r8, -2704(r30)
0018c0  e7468fea  storeli.w r8, -2708(r30)
0018c4  e7068fea  storeli.w r8, -2712(r30)
0018c8  67468fea  storeli.w r8, -2716(r30)
0018cc  67068fea  storeli.w r8, -2720(r30)
0018d0  e7458fea  storeli.w r8, -2724(r30)
0018d4  e7058fea  storeli.w r8, -2728(r30)
0018d8  67458fea  storeli.w r8, -2732(r30)
0018dc  67058fea  storeli.w r8, -2736(r30)
0018e0  e7448fea  storeli.w r8, -2740(r30)
0018e4  e7048fea  storeli.w r8, -2744(r30)
0018e8  67448fea  storeli.w r8, -2748(r30)
0018ec  67048fea  storeli.w r8, -2752(r30)
0018f0  e7438fea  storeli.w r8, -2756(r30)
0018f4  e7038fea  storeli.w r8, -2760(r30)
0018f8  67438fea  storeli.w r8, -2764(r30)
0018fc  67038fea  storeli.w r8, -2768(r30)
001900  e7428fea  storeli.w r8, -2772(r30)
001904  e7028fea  storeli.w r8, -2776(r30)
001908  67428fea  storeli.w r8, -2780(r30)
00190c  67028fea  storeli.w r8, -2784(r30)
001910  e7418fea  storeli.w r8, -2788(r30)
001914  e7018fea  storeli.w r8, -2792(r30)
001918  67418fea  storeli.w r8, -2796(r30)
00191c  67018fea  storeli.w r8, -2800(r30)
001920  e7408fea  storeli.w r8, -2804(r30)
001924  e7008fea  storeli.w r8, -2808(r30)
001928  67408fea  storeli.w r8, -2812(r30)
00192c  67008fea  storeli.w r8, -2816(r30)
001930  e74f8fe8  storeli.w r8, -2820(r30)
001934  e70f8fe8  storeli.w r8, -2824(r30)
001938  674f8fe8  storeli.w r8, -2828(r30)
00193c  670f8fe8  storeli.w r8, -2832(r30)
001940  e74e8fe8  storeli.w r8, -2836(r30)
001944  e70e8fe8  storeli.w r8, -2840(r30)
001948  674e8fe8  storeli.w r8, -2844(r30)
00194c  670e8fe8  storeli.w r8, -2848(r30)
001950  e74d8fe8  storeli.w r8, -2852(r30)
001954  e70d8fe8  storeli.w r8, -2856(r30)
001958  674d8fe8  storeli.w r8, -2860(r30)
00195c  670d8fe8  storeli.w r8, -2864(r30)
001960  e74c8fe8  storeli.w r8, -2868(r30)
001964  e70c8fe8  storeli.w r8, -2872(r30)
001968  674c8fe8  storeli.w r8, -2876(r30)
00196c  670c8fe8  storeli.w r8, -2880(r30)
001970  e74b8fe8  storeli.w r8, -2884(r30)
001974  e70b8fe8  storeli.w r8, -2888(r30)
001978  674b8fe8  storeli.w r8, -2892(r30)
00197c  670b8fe8  storeli.w r8, -2896(r30)
001980  e74a8fe8  storeli.w r8, -2900(r30)
001984  e70a8fe8  storeli.w r8, -2904(r30)
001988  674a8fe8  storeli.w r8, -2908(r30)
00198c  670a8fe8  storeli.w r8, -2912(r30)
001990  e7498fe8  storeli.w r8, -2916(r30)
001994  e7098fe8  storeli.w r8, -2920(r30)
001998  67498fe8  storeli.w r8, -2924(r30)
00199c  67098fe8  storeli.w r8, -2928(r30)
0019a0  e7488fe8  storeli.w r8, -2932(r30)
0019a4  e7088fe8  storeli.w r8, -2936(r30)
0019a8  67488fe8  storeli.w r8, -2940(r30)
0019ac  67088fe8  storeli.w r8, -2944(r30)
0019b0  e7478fe8  storeli.w r8, -2948(r30)
0019b4  e7078fe8  storeli.w r8, -2952(r30)
0019b8  67478fe8  storeli.w r8, -2956(r30)
0019bc  67078fe8  storeli.w r8, -2960(r30)
0019c0  e7468fe8  storeli.w r8, -2964(r30)
0019c4  e7068fe8  storeli.w r8, -2968(r30)
0019c8  67468fe8  storeli.w r8, -2972(r30)
0019cc  67068fe8  storeli.w r8, -2976(r30)
0019d0  e7458fe8  storeli.w r8, -2980(r30)
0019d4  e7058fe8  storeli.w r8, -2984(r30)
0019d8  67458fe8  storeli.w r8, -2988(r30)
0019dc  67058fe8  storeli.w r8, -2992(r30)
0019e0  e7448fe8  storeli.w r8, -2996(r30)
0019e4  e7048fe8  storeli.w r8, -3000(r30)
0019e8  67448fe8  storeli.w r8, -3004(r30)
0019ec  67048fe8  storeli.w r8, -3008(r30)
0019f0  e7438fe8  storeli.w r8, -3012(r30)
0019f4  e7038fe8  storeli.w r8, -3016(r30)
0019f8  67438fe8  storeli.w r8, -3020(r30)
0019fc  e7428fe8  storeli.w r8, -3028(r30)
001a00  e7028fe8  storeli.w r8, -3032(r30)
001a04  67428fe8  storeli.w r8, -3036(r30)
001a08  e7418fe8  storeli.w r8, -3044(r30)
001a0c  e7018fe8  storeli.w r8, -3048(r30)
001a10  67418fe8  storeli.w r8, -3052(r30)
001a14  67018fe8  storeli.w r8, -3056(r30)
001a18  e7408fe8  storeli.w r8, -3060(r30)
001a1c  e7008fe8  storeli.w r8, -3064(r30)
001a20  67408fe8  storeli.w r8, -3068(r30)
001a24  67000fe8  storeli.w zero, -3072(r30)
001a28  e74f8ff6  storeli.w r8, -1028(r30)
001a2c  e70f8ff6  storeli.w r8, -1032(r30)
001a30  674f8ff6  storeli.w r8, -1036(r30)
001a34  670f8ff6  storeli.w r8, -1040(r30)
001a38  e74e8ff6  storeli.w r8, -1044(r30)
001a3c  e70e8ff6  storeli.w r8, -1048(r30)
001a40  674e8ff6  storeli.w r8, -1052(r30)
001a44  670e8ff6  storeli.w r8, -1056(r30)
001a48  e74d8ff6  storeli.w r8, -1060(r30)
001a4c  e70d8ff6  storeli.w r8, -1064(r30)
001a50  674d8ff6  storeli.w r8, -1068(r30)
001a54  670d8ff6  storeli.w r8, -1072(r30)
001a58  e74c8ff6  storeli.w r8, -1076(r30)
001a5c  e70c8ff6  storeli.w r8, -1080(r30)
001a60  674c8ff6  storeli.w r8, -1084(r30)
001a64  670c8ff6  storeli.w r8, -1088(r30)
001a68  e74b8ff6  storeli.w r8, -1092(r30)
001a6c  e70b8ff6  storeli.w r8, -1096(r30)
001a70  674b8ff6  storeli.w r8, -1100(r30)
001a74  670b8ff6  storeli.w r8, -1104(r30)
001a78  e74a8ff6  storeli.w r8, -1108(r30)
001a7c  e70a8ff6  storeli.w r8, -1112(r30)
001a80  674a8ff6  storeli.w r8, -1116(r30)
001a84  670a8ff6  storeli.w r8, -1120(r30)
001a88  e7498ff6  storeli.w r8, -1124(r30)
001a8c  e7098ff6  storeli.w r8, -1128(r30)
001a90  67498ff6  storeli.w r8, -1132(r30)
001a94  67098ff6  storeli.w r8, -1136(r30)
001a98  e7488ff6  storeli.w r8, -1140(r30)
001a9c  e7088ff6  storeli.w r8, -1144(r30)
001aa0  67488ff6  storeli.w r8, -1148(r30)
001aa4  67088ff6  storeli.w r8, -1152(r30)
001aa8  e7478ff6  storeli.w r8, -1156(r30)
001aac  e7078ff6  storeli.w r8, -1160(r30)
001ab0  67478ff6  storeli.w r8, -1164(r30)
001ab4  67078ff6  storeli.w r8, -1168(r30)
001ab8  e7468ff6  storeli.w r8, -1172(r30)
001abc  e7068ff6  storeli.w r8, -1176(r30)
001ac0  67468ff6  storeli.w r8, -1180(r30)
001ac4  67068ff6  storeli.w r8, -1184(r30)
001ac8  e7458ff6  storeli.w r8, -1188(r30)
001acc  e7058ff6  storeli.w r8, -1192(r30)
001ad0  67458ff6  storeli.w r8, -1196(r30)
001ad4  67058ff6  storeli.w r8, -1200(r30)
001ad8  e7448ff6  storeli.w r8, -1204(r30)
001adc  e7048ff6  storeli.w r8, -1208(r30)
001ae0  67448ff6  storeli.w r8, -1212(r30)
001ae4  67048ff6  storeli.w r8, -1216(r30)
001ae8  e7438ff6  storeli.w r8, -1220(r30)
001aec  e7038ff6  storeli.w r8, -1224(r30)
001af0  67438ff6  storeli.w r8, -1228(r30)
001af4  67038ff6  storeli.w r8, -1232(r30)
001af8  e7428ff6  storeli.w r8, -1236(r30)
001afc  e7028ff6  storeli.w r8, -1240(r30)
001b00  67428ff6  storeli.w r8, -1244(r30)
001b04  67028ff6  storeli.w r8, -1248(r30)
001b08  e7418ff6  storeli.w r8, -1252(r30)
001b0c  e7018ff6  storeli.w r8, -1256(r30)
001b10  67418ff6  storeli.w r8, -1260(r30)
001b14  67018ff6  storeli.w r8, -1264(r30)
001b18  e7408ff6  storeli.w r8, -1268(r30)
001b1c  e7008ff6  storeli.w r8, -1272(r30)
001b20  67408ff6  storeli.w r8, -1276(r30)
001b24  67008ff6  storeli.w r8, -1280(r30)
001b28  e74f8ff4  storeli.w r8, -1284(r30)
001b2c  e70f8ff4  storeli.w r8, -1288(r30)
001b30  674f8ff4  storeli.w r8, -1292(r30)
001b34  670f8ff4  storeli.w r8, -1296(r30)
001b38  e74e8ff4  storeli.w r8, -1300(r30)
001b3c  e70e8ff4  storeli.w r8, -1304(r30)
001b40  674e8ff4  storeli.w r8, -1308(r30)
001b44  670e8ff4  storeli.w r8, -1312(r30)
001b48  e74d8ff4  storeli.w r8, -1316(r30)
001b4c  e70d8ff4  storeli.w r8, -1320(r30)
001b50  674d8ff4  storeli.w r8, -1324(r30)
001b54  670d8ff4  storeli.w r8, -1328(r30)
001b58  e74c8ff4  storeli.w r8, -1332(r30)
001b5c  e70c8ff4  storeli.w r8, -1336(r30)
001b60  674c8ff4  storeli.w r8, -1340(r30)
001b64  670c8ff4  storeli.w r8, -1344(r30)
001b68  e74b8ff4  storeli.w r8, -1348(r30)
001b6c  e70b8ff4  storeli.w r8, -1352(r30)
001b70  674b8ff4  storeli.w r8, -1356(r30)
001b74  670b8ff4  storeli.w r8, -1360(r30)
001b78  e74a8ff4  storeli.w r8, -1364(r30)
001b7c  e70a8ff4  storeli.w r8, -1368(r30)
001b80  674a8ff4  storeli.w r8, -1372(r30)
001b84  670a8ff4  storeli.w r8, -1376(r30)
001b88  e7498ff4  storeli.w r8, -1380(r30)
001b8c  e7098ff4  storeli.w r8, -1384(r30)
001b90  67498ff4  storeli.w r8, -1388(r30)
001b94  67098ff4  storeli.w r8, -1392(r30)
001b98  e7488ff4  storeli.w r8, -1396(r30)
001b9c  e7088ff4  storeli.w r8, -1400(r30)
001ba0  67488ff4  storeli.w r8, -1404(r30)
001ba4  67088ff4  storeli.w r8, -1408(r30)
001ba8  e7478ff4  storeli.w r8, -1412(r30)
001bac  e7078ff4  storeli.w r8, -1416(r30)
001bb0  67478ff4  storeli.w r8, -1420(r30)
001bb4  67078ff4  storeli.w r8, -1424(r30)
001bb8  e7468ff4  storeli.w r8, -1428(r30)
001bbc  e7068ff4  storeli.w r8, -1432(r30)
001bc0  67468ff4  storeli.w r8, -1436(r30)
001bc4  67068ff4  storeli.w r8, -1440(r30)
001bc8  e7458ff4  storeli.w r8, -1444(r30)
001bcc  e7058ff4  storeli.w r8, -1448(r30)
001bd0  67458ff4  storeli.w r8, -1452(r30)
001bd4  67058ff4  storeli.w r8, -1456(r30)
001bd8  e7448ff4  storeli.w r8, -1460(r30)
001bdc  e7048ff4  storeli.w r8, -1464(r30)
001be0  67448ff4  storeli.w r8, -1468(r30)
001be4  67048ff4  storeli.w r8, -1472(r30)
001be8  e7438ff4  storeli.w r8, -1476(r30)
001bec  e7038ff4  storeli.w r8, -1480(r30)
001bf0  67438ff4  storeli.w r8, -1484(r30)
001bf4  67038ff4  storeli.w r8, -1488(r30)
001bf8  e7428ff4  storeli.w r8, -1492(r30)
001bfc  e7028ff4  storeli.w r8, -1496(r30)
001c00  67428ff4  storeli.w r8, -1500(r30)
001c04  67028ff4  storeli.w r8, -1504(r30)
001c08  e7418ff4  storeli.w r8, -1508(r30)
001c0c  e7018ff4  storeli.w r8, -1512(r30)
001c10  67418ff4  storeli.w r8, -1516(r30)
001c14  67018ff4  storeli.w r8, -1520(r30)
001c18  e7408ff4  storeli.w r8, -1524(r30)
001c1c  e7008ff4  storeli.w r8, -1528(r30)
001c20  67408ff4  storeli.w r8, -1532(r30)
001c24  67008ff4  storeli.w r8, -1536(r30)
001c28  e74f8ff2  storeli.w r8, -1540(r30)
001c2c  e70f8ff2  storeli.w r8, -1544(r30)
001c30  674f8ff2  storeli.w r8, -1548(r30)
001c34  670f8ff2  storeli.w r8, -1552(r30)
001c38  e74e8ff2  storeli.w r8, -1556(r30)
001c3c  e70e8ff2  storeli.w r8, -1560(r30)
001c40  674e8ff2  storeli.w r8, -1564(r30)
001c44  670e8ff2  storeli.w r8, -1568(r30)
001c48  e74d8ff2  storeli.w r8, -1572(r30)
001c4c  e70d8ff2  storeli.w r8, -1576(r30)
001c50  674d8ff2  storeli.w r8, -1580(r30)
001c54  670d8ff2  storeli.w r8, -1584(r30)
001c58  e74c8ff2  storeli.w r8, -1588(r30)
001c5c  e70c8ff2  storeli.w r8, -1592(r30)
001c60  674c8ff2  storeli.w r8, -1596(r30)
001c64  670c8ff2  storeli.w r8, -1600(r30)
001c68  e74b8ff2  storeli.w r8, -1604(r30)
001c6c  e70b8ff2  storeli.w r8, -1608(r30)
001c70  674b8ff2  storeli.w r8, -1612(r30)
001c74  670b8ff2  storeli.w r8, -1616(r30)
001c78  e74a8ff2  storeli.w r8, -1620(r30)
001c7c  e70a8ff2  storeli.w r8, -1624(r30)
001c80  674a8ff2  storeli.w r8, -1628(r30)
001c84  670a8ff2  storeli.w r8, -1632(r30)
001c88  e7498ff2  storeli.w r8, -1636(r30)
001c8c  e7098ff2  storeli.w r8, -1640(r30)
001c90  67498ff2  storeli.w r8, -1644(r30)
001c94  67098ff2  storeli.w r8, -1648(r30)
001c98  e7488ff2  storeli.w r8, -1652(r30)
001c9c  e7088ff2  storeli.w r8, -1656(r30)
001ca0  67488ff2  storeli.w r8, -1660(r30)
001ca4  67088ff2  storeli.w r8, -1664(r30)
001ca8  e7478ff2  storeli.w r8, -1668(r30)
001cac  e7078ff2  storeli.w r8, -1672(r30)
001cb0  67478ff2  storeli.w r8, -1676(r30)
001cb4  67078ff2  storeli.w r8, -1680(r30)
001cb8  e7468ff2  storeli.w r8, -1684(r30)
001cbc  e7068ff2  storeli.w r8, -1688(r30)
001cc0  67468ff2  storeli.w r8, -1692(r30)
001cc4  67068ff2  storeli.w r8, -1696(r30)
001cc8  e7458ff2  storeli.w r8, -1700(r30)
001ccc  e7058ff2  storeli.w r8, -1704(r30)
001cd0  67458ff2  storeli.w r8, -1708(r30)
001cd4  67058ff2  storeli.w r8, -1712(r30)
001cd8  e7448ff2  storeli.w r8, -1716(r30)
001cdc  e7048ff2  storeli.w r8, -1720(r30)
001ce0  67448ff2  storeli.w r8, -1724(r30)
001ce4  67048ff2  storeli.w r8, -1728(r30)
001ce8  e7438ff2  storeli.w r8, -1732(r30)
001cec  e7038ff2  storeli.w r8, -1736(r30)
001cf0  67438ff2  storeli.w r8, -1740(r30)
001cf4  67038ff2  storeli.w r8, -1744(r30)
001cf8  e7428ff2  storeli.w r8, -1748(r30)
001cfc  e7028ff2  storeli.w r8, -1752(r30)
001d00  67428ff2  storeli.w r8, -1756(r30)
001d04  67028ff2  storeli.w r8, -1760(r30)
001d08  e7418ff2  storeli.w r8, -1764(r30)
001d0c  e7018ff2  storeli.w r8, -1768(r30)
001d10  67418ff2  storeli.w r8, -1772(r30)
001d14  67018ff2  storeli.w r8, -1776(r30)
001d18  e7408ff2  storeli.w r8, -1780(r30)
001d1c  e7008ff2  storeli.w r8, -1784(r30)
001d20  67408ff2  storeli.w r8, -1788(r30)
001d24  67008ff2  storeli.w r8, -1792(r30)
001d28  e74f8ff0  storeli.w r8, -1796(r30)
001d2c  e70f8ff0  storeli.w r8, -1800(r30)
001d30  674f8ff0  storeli.w r8, -1804(r30)
001d34  670f8ff0  storeli.w r8, -1808(r30)
001d38  e74e8ff0  storeli.w r8, -1812(r30)
001d3c  e70e8ff0  storeli.w r8, -1816(r30)
001d40  674e8ff0  storeli.w r8, -1820(r30)
001d44  670e8ff0  storeli.w r8, -1824(r30)
001d48  e74d8ff0  storeli.w r8, -1828(r30)
001d4c  e70d8ff0  storeli.w r8, -1832(r30)
001d50  674d8ff0  storeli.w r8, -1836(r30)
001d54  670d8ff0  storeli.w r8, -1840(r30)
001d58  e74c8ff0  storeli.w r8, -1844(r30)
001d5c  e70c8ff0  storeli.w r8, -1848(r30)
001d60  674c8ff0  storeli.w r8, -1852(r30)
001d64  670c8ff0  storeli.w r8, -1856(r30)
001d68  e74b8ff0  storeli.w r8, -1860(r30)
001d6c  e70b8ff0  storeli.w r8, -1864(r30)
001d70  674b8ff0  storeli.w r8, -1868(r30)
001d74  670b8ff0  storeli.w r8, -1872(r30)
001d78  e74a8ff0  storeli.w r8, -1876(r30)
001d7c  e70a8ff0  storeli.w r8, -1880(r30)
001d80  674a8ff0  storeli.w r8, -1884(r30)
001d84  670a8ff0  storeli.w r8, -1888(r30)
001d88  e7498ff0  storeli.w r8, -1892(r30)
001d8c  e7098ff0  storeli.w r8, -1896(r30)
001d90  67498ff0  storeli.w r8, -1900(r30)
001d94  67098ff0  storeli.w r8, -1904(r30)
001d98  e7488ff0  storeli.w r8, -1908(r30)
001d9c  e7088ff0  storeli.w r8, -1912(r30)
001da0  67488ff0  storeli.w r8, -1916(r30)
001da4  67088ff0  storeli.w r8, -1920(r30)
001da8  e7478ff0  storeli.w r8, -1924(r30)
001dac  e7078ff0  storeli.w r8, -1928(r30)
001db0  67478ff0  storeli.w r8, -1932(r30)
001db4  67078ff0  storeli.w r8, -1936(r30)
001db8  e7468ff0  storeli.w r8, -1940(r30)
001dbc  e7068ff0  storeli.w r8, -1944(r30)
001dc0  67468ff0  storeli.w r8, -1948(r30)
001dc4  67068ff0  storeli.w r8, -1952(r30)
001dc8  e7458ff0  storeli.w r8, -1956(r30)
001dcc  e7058ff0  storeli.w r8, -1960(r30)
001dd0  e74f8fee  storeli.w r8, -2052(r30)
001dd4  67000fe0  storeli.w zero, -4096(r30)
001dd8  67408fe0  storeli.w r8, -4092(r30)
001ddc  e7008fe0  storeli.w r8, -4088(r30)
001de0  e7408fe0  storeli.w r8, -4084(r30)
001de4  67018fe0  storeli.w r8, -4080(r30)
001de8  67418fe0  storeli.w r8, -4076(r30)
001dec  e7018fe0  storeli.w r8, -4072(r30)
001df0  e7418fe0  storeli.w r8, -4068(r30)
001df4  67028fe0  storeli.w r8, -4064(r30)
001df8  67428fe0  storeli.w r8, -4060(r30)
001dfc  e7028fe0  storeli.w r8, -4056(r30)
001e00  e7428fe0  storeli.w r8, -4052(r30)
001e04  67038fe0  storeli.w r8, -4048(r30)
001e08  67438fe0  storeli.w r8, -4044(r30)
001e0c  e7038fe0  storeli.w r8, -4040(r30)
001e10  e7438fe0  storeli.w r8, -4036(r30)
001e14  67048fe0  storeli.w r8, -4032(r30)
001e18  67448fe0  storeli.w r8, -4028(r30)
001e1c  e7048fe0  storeli.w r8, -4024(r30)
001e20  e7448fe0  storeli.w r8, -4020(r30)
001e24  67058fe0  storeli.w r8, -4016(r30)
001e28  67458fe0  storeli.w r8, -4012(r30)
001e2c  e7058fe0  storeli.w r8, -4008(r30)
001e30  e7458fe0  storeli.w r8, -4004(r30)
001e34  67068fe0  storeli.w r8, -4000(r30)
001e38  67468fe0  storeli.w r8, -3996(r30)
001e3c  e7068fe0  storeli.w r8, -3992(r30)
001e40  e7468fe0  storeli.w r8, -3988(r30)
001e44  67078fe0  storeli.w r8, -3984(r30)
001e48  67478fe0  storeli.w r8, -3980(r30)
001e4c  e7078fe0  storeli.w r8, -3976(r30)
001e50  e7478fe0  storeli.w r8, -3972(r30)
001e54  67088fe0  storeli.w r8, -3968(r30)
001e58  67488fe0  storeli.w r8, -3964(r30)
001e5c  e7088fe0  storeli.w r8, -3960(r30)
001e60  e7488fe0  storeli.w r8, -3956(r30)
001e64  67098fe0  storeli.w r8, -3952(r30)
001e68  67498fe0  storeli.w r8, -3948(r30)
001e6c  e7098fe0  storeli.w r8, -3944(r30)
001e70  e7498fe0  storeli.w r8, -3940(r30)
001e74  670a8fe0  storeli.w r8, -3936(r30)
001e78  674a8fe0  storeli.w r8, -3932(r30)
001e7c  e70a8fe0  storeli.w r8, -3928(r30)
001e80  e74a8fe0  storeli.w r8, -3924(r30)
001e84  670b8fe0  storeli.w r8, -3920(r30)
001e88  674b8fe0  storeli.w r8, -3916(r30)
001e8c  e70b8fe0  storeli.w r8, -3912(r30)
001e90  e74b8fe0  storeli.w r8, -3908(r30)
001e94  670c8fe0  storeli.w r8, -3904(r30)
001e98  674c8fe0  storeli.w r8, -3900(r30)
001e9c  e70c8fe0  storeli.w r8, -3896(r30)
001ea0  e74c8fe0  storeli.w r8, -3892(r30)
001ea4  670d8fe0  storeli.w r8, -3888(r30)
001ea8  674d8fe0  storeli.w r8, -3884(r30)
001eac  e70d8fe0  storeli.w r8, -3880(r30)
001eb0  e74d8fe0  storeli.w r8, -3876(r30)
001eb4  670e8fe0  storeli.w r8, -3872(r30)
001eb8  674e8fe0  storeli.w r8, -3868(r30)
001ebc  e70e8fe0  storeli.w r8, -3864(r30)
001ec0  e74e8fe0  storeli.w r8, -3860(r30)
001ec4  670f8fe0  storeli.w r8, -3856(r30)
001ec8  674f8fe0  storeli.w r8, -3852(r30)
001ecc  e70f8fe0  storeli.w r8, -3848(r30)
001ed0  e74f8fe0  storeli.w r8, -3844(r30)
001ed4  67008fe2  storeli.w r8, -3840(r30)
001ed8  67408fe2  storeli.w r8, -3836(r30)
001edc  e7008fe2  storeli.w r8, -3832(r30)
001ee0  e7408fe2  storeli.w r8, -3828(r30)
001ee4  67018fe2  storeli.w r8, -3824(r30)
001ee8  67418fe2  storeli.w r8, -3820(r30)
001eec  e7018fe2  storeli.w r8, -3816(r30)
001ef0  e7418fe2  storeli.w r8, -3812(r30)
001ef4  67028fe2  storeli.w r8, -3808(r30)
001ef8  67428fe2  storeli.w r8, -3804(r30)
001efc  e7028fe2  storeli.w r8, -3800(r30)
001f00  e7428fe2  storeli.w r8, -3796(r30)
001f04  67038fe2  storeli.w r8, -3792(r30)
001f08  67438fe2  storeli.w r8, -3788(r30)
001f0c  e7038fe2  storeli.w r8, -3784(r30)
001f10  e7438fe2  storeli.w r8, -3780(r30)
001f14  67048fe2  storeli.w r8, -3776(r30)
001f18  67448fe2  storeli.w r8, -3772(r30)
001f1c  e7048fe2  storeli.w r8, -3768(r30)
001f20  e7448fe2  storeli.w r8, -3764(r30)
001f24  67058fe2  storeli.w r8, -3760(r30)
001f28  67458fe2  storeli.w r8, -3756(r30)
001f2c  e7058fe2  storeli.w r8, -3752(r30)
001f30  e7458fe2  storeli.w r8, -3748(r30)
001f34  67068fe2  storeli.w r8, -3744(r30)
001f38  67468fe2  storeli.w r8, -3740(r30)
001f3c  e7068fe2  storeli.w r8, -3736(r30)
001f40  e7468fe2  storeli.w r8, -3732(r30)
001f44  67078fe2  storeli.w r8, -3728(r30)
001f48  67478fe2  storeli.w r8, -3724(r30)
001f4c  e7078fe2  storeli.w r8, -3720(r30)
001f50  e7478fe2  storeli.w r8, -3716(r30)
001f54  67088fe2  storeli.w r8, -3712(r30)
001f58  67488fe2  storeli.w r8, -3708(r30)
001f5c  e7088fe2  storeli.w r8, -3704(r30)
001f60  e7488fe2  storeli.w r8, -3700(r30)
001f64  67098fe2  storeli.w r8, -3696(r30)
001f68  67498fe2  storeli.w r8, -3692(r30)
001f6c  e7098fe2  storeli.w r8, -3688(r30)
001f70  e7498fe2  storeli.w r8, -3684(r30)
001f74  670a8fe2  storeli.w r8, -3680(r30)
001f78  674a8fe2  storeli.w r8, -3676(r30)
001f7c  e70a8fe2  storeli.w r8, -3672(r30)
001f80  e74a8fe2  storeli.w r8, -3668(r30)
001f84  670b8fe2  storeli.w r8, -3664(r30)
001f88  674b8fe2  storeli.w r8, -3660(r30)
001f8c  e70b8fe2  storeli.w r8, -3656(r30)
001f90  e74b8fe2  storeli.w r8, -3652(r30)
001f94  670c8fe2  storeli.w r8, -3648(r30)
001f98  674c8fe2  storeli.w r8, -3644(r30)
001f9c  e70c8fe2  storeli.w r8, -3640(r30)
001fa0  e74c8fe2  storeli.w r8, -3636(r30)
001fa4  670d8fe2  storeli.w r8, -3632(r30)
001fa8  674d8fe2  storeli.w r8, -3628(r30)
001fac  e70d8fe2  storeli.w r8, -3624(r30)
001fb0  e74d8fe2  storeli.w r8, -3620(r30)
001fb4  670e8fe2  storeli.w r8, -3616(r30)
001fb8  674e8fe2  storeli.w r8, -3612(r30)
001fbc  e70e8fe2  storeli.w r8, -3608(r30)
001fc0  e74e8fe2  storeli.w r8, -3604(r30)
001fc4  670f8fe2  storeli.w r8, -3600(r30)
001fc8  674f8fe2  storeli.w r8, -3596(r30)
001fcc  e70f8fe2  storeli.w r8, -3592(r30)
001fd0  e74f8fe2  storeli.w r8, -3588(r30)
001fd4  67008fe4  storeli.w r8, -3584(r30)
001fd8  67408fe4  storeli.w r8, -3580(r30)
001fdc  e7008fe4  storeli.w r8, -3576(r30)
001fe0  e7408fe4  storeli.w r8, -3572(r30)
001fe4  67018fe4  storeli.w r8, -3568(r30)
001fe8  67418fe4  storeli.w r8, -3564(r30)
001fec  e7018fe4  storeli.w r8, -3560(r30)
001ff0  e7418fe4  storeli.w r8, -3556(r30)
001ff4  67028fe4  storeli.w r8, -3552(r30)
001ff8  67428fe4  storeli.w r8, -3548(r30)
001ffc  e7028fe4  storeli.w r8, -3544(r30)
002000  e7428fe4  storeli.w r8, -3540(r30)
002004  67038fe4  storeli.w r8, -3536(r30)
002008  67438fe4  storeli.w r8, -3532(r30)
00200c  e7038fe4  storeli.w r8, -3528(r30)
002010  e7438fe4  storeli.w r8, -3524(r30)
002014  67048fe4  storeli.w r8, -3520(r30)
002018  67448fe4  storeli.w r8, -3516(r30)
00201c  e7048fe4  storeli.w r8, -3512(r30)
002020  e7448fe4  storeli.w r8, -3508(r30)
002024  67058fe4  storeli.w r8, -3504(r30)
002028  67458fe4  storeli.w r8, -3500(r30)
00202c  e7058fe4  storeli.w r8, -3496(r30)
002030  e7458fe4  storeli.w r8, -3492(r30)
002034  67068fe4  storeli.w r8, -3488(r30)
002038  67468fe4  storeli.w r8, -3484(r30)
00203c  e7068fe4  storeli.w r8, -3480(r30)
002040  e7468fe4  storeli.w r8, -3476(r30)
002044  67078fe4  storeli.w r8, -3472(r30)
002048  67478fe4  storeli.w r8, -3468(r30)
00204c  e7078fe4  storeli.w r8, -3464(r30)
002050  e7478fe4  storeli.w r8, -3460(r30)
002054  67088fe4  storeli.w r8, -3456(r30)
002058  67488fe4  storeli.w r8, -3452(r30)
00205c  e7088fe4  storeli.w r8, -3448(r30)
002060  e7488fe4  storeli.w r8, -3444(r30)
002064  67098fe4  storeli.w r8, -3440(r30)
002068  67498fe4  storeli.w r8, -3436(r30)
00206c  e7098fe4  storeli.w r8, -3432(r30)
002070  e7498fe4  storeli.w r8, -3428(r30)
002074  670a8fe4  storeli.w r8, -3424(r30)
002078  674a8fe4  storeli.w r8, -3420(r30)
00207c  e70a8fe4  storeli.w r8, -3416(r30)
002080  e74a8fe4  storeli.w r8, -3412(r30)
002084  670b8fe4  storeli.w r8, -3408(r30)
002088  674b8fe4  storeli.w r8, -3404(r30)
00208c  e70b8fe4  storeli.w r8, -3400(r30)
002090  e74b8fe4  storeli.w r8, -3396(r30)
002094  670c8fe4  storeli.w r8, -3392(r30)
002098  674c8fe4  storeli.w r8, -3388(r30)
00209c  e70c8fe4  storeli.w r8, -3384(r30)
0020a0  e74c8fe4  storeli.w r8, -3380(r30)
0020a4  670d8fe4  storeli.w r8, -3376(r30)
0020a8  674d8fe4  storeli.w r8, -3372(r30)
0020ac  e70d8fe4  storeli.w r8, -3368(r30)
0020b0  e74d8fe4  storeli.w r8, -3364(r30)
0020b4  670e8fe4  storeli.w r8, -3360(r30)
0020b8  674e8fe4  storeli.w r8, -3356(r30)
0020bc  e70e8fe4  storeli.w r8, -3352(r30)
0020c0  e74e8fe4  storeli.w r8, -3348(r30)
0020c4  670f8fe4  storeli.w r8, -3344(r30)
0020c8  674f8fe4  storeli.w r8, -3340(r30)
0020cc  e70f8fe4  storeli.w r8, -3336(r30)
0020d0  e74f8fe4  storeli.w r8, -3332(r30)
0020d4  67008fe6  storeli.w r8, -3328(r30)
0020d8  67408fe6  storeli.w r8, -3324(r30)
0020dc  e7008fe6  storeli.w r8, -3320(r30)
0020e0  e7408fe6  storeli.w r8, -3316(r30)
0020e4  67018fe6  storeli.w r8, -3312(r30)
0020e8  67418fe6  storeli.w r8, -3308(r30)
0020ec  e7018fe6  storeli.w r8, -3304(r30)
0020f0  e7418fe6  storeli.w r8, -3300(r30)
0020f4  67028fe6  storeli.w r8, -3296(r30)
0020f8  67428fe6  storeli.w r8, -3292(r30)
0020fc  e7028fe6  storeli.w r8, -3288(r30)
002100  e7428fe6  storeli.w r8, -3284(r30)
002104  67038fe6  storeli.w r8, -3280(r30)
002108  67438fe6  storeli.w r8, -3276(r30)
00210c  e7038fe6  storeli.w r8, -3272(r30)
002110  e7438fe6  storeli.w r8, -3268(r30)
002114  67048fe6  storeli.w r8, -3264(r30)
002118  67448fe6  storeli.w r8, -3260(r30)
00211c  e7048fe6  storeli.w r8, -3256(r30)
002120  e7448fe6  storeli.w r8, -3252(r30)
002124  67058fe6  storeli.w r8, -3248(r30)
002128  67458fe6  storeli.w r8, -3244(r30)
00212c  e7058fe6  storeli.w r8, -3240(r30)
002130  e7458fe6  storeli.w r8, -3236(r30)
002134  67068fe6  storeli.w r8, -3232(r30)
002138  67468fe6  storeli.w r8, -3228(r30)
00213c  e7068fe6  storeli.w r8, -3224(r30)
002140  e7468fe6  storeli.w r8, -3220(r30)
002144  67078fe6  storeli.w r8, -3216(r30)
002148  67478fe6  storeli.w r8, -3212(r30)
00214c  e7078fe6  storeli.w r8, -3208(r30)
002150  e7478fe6  storeli.w r8, -3204(r30)
002154  67088fe6  storeli.w r8, -3200(r30)
002158  67488fe6  storeli.w r8, -3196(r30)
00215c  e7088fe6  storeli.w r8, -3192(r30)
002160  e7488fe6  storeli.w r8, -3188(r30)
002164  67098fe6  storeli.w r8, -3184(r30)
002168  67498fe6  storeli.w r8, -3180(r30)
00216c  e7098fe6  storeli.w r8, -3176(r30)
002170  e7498fe6  storeli.w r8, -3172(r30)
002174  670a8fe6  storeli.w r8, -3168(r30)
002178  674a8fe6  storeli.w r8, -3164(r30)
00217c  e70a8fe6  storeli.w r8, -3160(r30)
002180  e74a8fe6  storeli.w r8, -3156(r30)
002184  670b8fe6  storeli.w r8, -3152(r30)
002188  674b8fe6  storeli.w r8, -3148(r30)
00218c  e70b8fe6  storeli.w r8, -3144(r30)
002190  e74b8fe6  storeli.w r8, -3140(r30)
002194  670c8fe6  storeli.w r8, -3136(r30)
002198  674c8fe6  storeli.w r8, -3132(r30)
00219c  e70c8fe6  storeli.w r8, -3128(r30)
0021a0  e74c8fe6  storeli.w r8, -3124(r30)
0021a4  670d8fe6  storeli.w r8, -3120(r30)
0021a8  674d8fe6  storeli.w r8, -3116(r30)
0021ac  e70d8fe6  storeli.w r8, -3112(r30)
0021b0  e74d8fe6  storeli.w r8, -3108(r30)
0021b4  670e8fe6  storeli.w r8, -3104(r30)
0021b8  674e8fe6  storeli.w r8, -3100(r30)
0021bc  e70e8fe6  storeli.w r8, -3096(r30)
0021c0  e74e8fe6  storeli.w r8, -3092(r30)
0021c4  670f8fe6  storeli.w r8, -3088(r30)
0021c8  674f8fe6  storeli.w r8, -3084(r30)
0021cc  e70f8fe6  storeli.w r8, -3080(r30)
0021d0  e74f8fe6  storeli.w r8, -3076(r30)
0021d4  0b913050  fmac.s r2, r1, r3
0021d8  8b903020  mul.s r1, r1, r3
0021dc  1f71f1ff  addli r2, r2, -1
0021e0  0b114130  div.s r2, r2, r4
0021e4  00520002  load_param_i r4, 0
0021e8  0b134120  mul.s r6, r2, r4
0021ec  0b114150  fmac.s r2, r2, r4
0021f0  8b131140  min.s r7, r2, r1
0021f4  4bca6302  ble.s r7, r6, 1680
0021f8  b3900328  sext_int2long r[2:3], r7
0021fc  9f018fdf  addli r3, r30, -4160
002200  b3140328  sext_int2long r[10:11], r6
002204  63030ff8  loadli.w r6,  -1024(r30)
002208  e3050ff0  loadli.w r11,  -2048(r30)
00220c  63070fe8  loadli.w r14,  -3072(r30)
002210  63040fe0  loadli.w r8,  -4096(r30)
002214  9f260000  addli r13, zero, 2
002218  1f480000  addli r16, zero, 4
00221c  1f1e0000  addli r28, zero, 1
002220  9f7af007  addli r21, zero, 1023
002224  9f79f001  addli r19, zero, 255
002228  9f320000  addli r5, zero, 3
00222c  1f0b4000  addli r22, zero, 32
002230  9f680000  addli r17, zero, 6
002234  73b01100  store.d r[2:3], 0(r3)
002238  ab800d00  lui r1, 216
00223c  abf17fff  lui r3, 1046527
002240  9b90d0b4  ori r1, r1, 2893
002244  674b1fde  storeli.w r1, -4172(r30)
002248  ab001800  lui r1, 384
00224c  9b900088  ori r1, r1, 2176
002250  e74b1fde  storeli.w r1, -4164(r30)
002254  9b90f1ff  ori r1, r3, 4095
002258  abf17f7f  lui r3, 522239
00225c  670b1fde  storeli.w r1, -4176(r30)
002260  ab101800  lui r1, 385
002264  9b900088  ori r1, r1, 2176
002268  e70a1fde  storeli.w r1, -4184(r30)
00226c  9b90f1ff  ori r1, r3, 4095
002270  e74a1fde  storeli.w r1, -4180(r30)
002274  abf01700  lui r1, 383
002278  9b900088  ori r1, r1, 2176
00227c  e70b1fde  storeli.w r1, -4168(r30)
002280  5b0e0000  j 112
002284  1f01bfdf  addli r2, r30, -4136
002288  eb530f01  load.d r[8:9], 16(r30)
00228c  eb540100  load.d r[10:11], 0(r2)
002290  1f511000  addli r2, zero, 13
002294  7d100100  xwait r2, 0
002298  1d000800  lock zero, r16
00229c  1bb11100  slli r2, r3, 1
0022a0  8ba39310  add.ul r[8:9], r[8:9], r[10:11]
0022a4  15000e00  dma_cfg zero, r28, zero, 0
0022a8  15000404  dma_cfg zero, r8, zero, 2
0022ac  95802306  dma_cfg r1, r7, r2, 3
0022b0  9f008000  addli r1, zero, 64
0022b4  1f010001  addli r2, zero, 128
0022b8  1581c009  dma_cfg r2, r1, r28, 4
0022bc  35000000  dma_run zero
0022c0  1d100800  unlock r16
0022c4  9f401000  addli r1, zero, 12
0022c8  7d800000  xsignal r1, 0
0022cc  9f00dfdf  addli r1, r30, -4120
0022d0  9f018fdf  addli r3, r30, -4160
0022d4  1f140600  addli r8, r12, 1
0022d8  1f970d00  addli r14, r27, 1
0022dc  ebd40000  load.d r[10:11], 0(r1)
0022e0  ebd00100  load.d r[2:3], 0(r3)
0022e4  a7940400  addli.d r[10:11], r[10:11], 1
0022e8  93b01404  setlt.sl r1, r[10:11], r[2:3]
0022ec  37c60002  beq r1, zero, 1424
0022f0  3bb00b01  bneq r23, r16, 12
0022f4  9f301000  addli r1, zero, 11
0022f8  7d900000  xwait r1, 0
0022fc  e3006f00  loadli.w r1,  48(r30)
002300  1f01dfdf  addli r2, r30, -4120
002304  1f020000  addli r4, zero, 0
002308  73309100  store.d r[10:11], 0(r2)
00230c  63415f00  loadli.w r2,  44(r30)
002310  8b901430  div.s r1, r9, r1
002314  8b902030  div.s r1, r1, r2
002318  1f010002  addli r2, zero, 256
00231c  8b912030  div.s r3, r1, r2
002320  1f011000  addli r2, zero, 8
002324  9bb33100  slli r7, r3, 3
002328  9bb18100  slli r3, r3, 8
00232c  8b947618  sub.s r9, r13, r7
002330  8b913018  sub.s r3, r1, r3
002334  8b942440  min.s r9, r9, r2
002338  8b909038  mod.s r1, r1, r9
00233c  8b919130  div.s r3, r3, r9
002340  8b901310  add.s r1, r7, r1
002344  1bb15100  slli r2, r3, 5
002348  b3840128  zext_int2long r[10:11], r3
00234c  9f03afdf  addli r7, r30, -4144
002350  674e2fde  storeli.w r2, -4124(r30)
002354  1bb15000  slli r2, r1, 5
002358  e74c2fde  storeli.w r2, -4148(r30)
00235c  1f510000  addli r2, zero, 5
002360  97b42402  sll.d r[10:11], r[10:11], r2
002364  33810028  zext_int2long r[3:4], r1
002368  9f301000  addli r1, zero, 11
00236c  17bcc403  sll.d r[25:26], r[10:11], r28
002370  73b02300  store.d r[3:4], 0(r7)
002374  97341102  sll.d r[10:11], r[3:4], r1
002378  eb508f00  load.d r[2:3], 8(r30)
00237c  9f01bfdf  addli r3, r30, -4136
002380  73b08101  store.d r[25:26], 0(r3)
002384  9f01ffdf  addli r3, r30, -4104
002388  8ba08011  add.ul r[2:3], r[2:3], r[25:26]
00238c  73b01100  store.d r[2:3], 0(r3)
002390  9f00efdf  addli r1, r30, -4112
002394  9f010000  addli r3, zero, 0
002398  73b04001  store.d r[21:22], 0(r1)
00239c  178a4403  and.d r[21:22], r[10:11], r[21:22]
0023a0  db0e0000  j 116
0023a4  9f008000  addli r1, zero, 64
0023a8  8bbb7c19  sub.sl r[24:25], r[26:27], r[24:25]
0023ac  eb580f00  load.d r[18:19], 0(r30)
0023b0  97bccc03  sll.d r[26:27], r[26:27], r28
0023b4  7d900200  xwait r5, 0
0023b8  1d000800  lock zero, r16
0023bc  150e0e00  dma_cfg r28, r28, zero, 0
0023c0  b3800028  zext_int2long r[2:3], r1
0023c4  8bac9811  add.ul r[26:27], r[18:19], r[26:27]
0023c8  9f680000  addli r17, zero, 6
0023cc  8f901b60  div.sl r[2:3], r[24:25], r[2:3]
0023d0  b30b0b28  zext_int2long r[24:25], r22
0023d4  15000d04  dma_cfg zero, r26, zero, 2
0023d8  95876c07  dma_cfg r15, r25, r22, 3
0023dc  8bbb7041  min.sl r[24:25], r[2:3], r[24:25]
0023e0  8bb01b18  sub.sl r[2:3], r[24:25], r[2:3]
0023e4  803b0002  core_id r23
0023e8  9f804000  addli r1, r1, 32
0023ec  1f010001  addli r2, zero, 128
0023f0  15011108  dma_cfg r2, r2, r1, 4
0023f4  35000000  dma_run zero
0023f8  1d100800  unlock r16
0023fc  7d800600  xsignal r13, 0
002400  9f950500  addli r11, r11, 1
002404  1f130300  addli r6, r6, 1
002408  1f120200  addli r4, r4, 1
00240c  b7360201  beq r4, r16, 428
002410  9f910100  addli r3, r3, 1
002414  8b1d3710  add.s r27, r14, r3
002418  0b163410  add.s r12, r8, r3
00241c  8b903d39  mod.s r1, r27, r19
002420  8b133639  mod.s r7, r12, r19
002424  9bb7c000  slli r15, r1, 12
002428  9bb0b300  slli r1, r7, 11
00242c  9f870720  addli r15, r15, 4096
002430  b7c0db00  beq r23, r13, 48
002434  b30c0228  zext_int2long r[26:27], r4
002438  bb91cb01  bneq r23, r28, 100
00243c  97bb0c03  sll.d r[24:25], r[26:27], r16
002440  9f70f01f  addli r1, zero, 4095
002444  8bac9b10  add.ul r[26:27], r[24:25], r[10:11]
002448  b38b0028  zext_int2long r[24:25], r1
00244c  93a09b05  setlt.ul r1, r[24:25], r[26:27]
002450  a70b0a00  addli.d r[24:25], r[21:22], 0
002454  3bcd00fe  bneq r1, zero, -176
002458  b30b0028  zext_int2long r[24:25], zero
00245c  5be9ffff  j -184
002460  1f510000  addli r2, zero, 5
002464  7d900600  xwait r13, 0
002468  7d100100  xwait r2, 0
00246c  1d000000  lock zero, zero
002470  1f018000  addli r2, zero, 64
002474  81020000  ds_cfg r5, zero, 0
002478  01010002  ds_cfg r2, zero, 1
00247c  1f012000  addli r2, zero, 16
002480  010b001c  ds_cfg r22, zero, 14
002484  010b001a  ds_cfg r22, zero, 13
002488  a1902702  shuffle_batch r1, r15, r2, 1
00248c  1d100000  unlock zero
002490  7d800200  xsignal r5, 0
002494  7d000800  xsignal r16, 0
002498  5bedffff  j -152
00249c  0b113339  mod.s r2, r6, r19
0024a0  8b933539  mod.s r7, r11, r19
0024a4  9f950500  addli r11, r11, 1
0024a8  1f130300  addli r6, r6, 1
0024ac  9bb7b300  slli r15, r7, 11
0024b0  1b31b100  slli r2, r2, 11
0024b4  ab031000  lui r7, 256
0024b8  8b137110  add.s r7, r2, r7
0024bc  1f710000  addli r2, zero, 7
0024c0  37e12b00  beq r23, r2, 88
0024c4  3be21b01  bneq r23, r17, 152
0024c8  9f770000  addli r15, zero, 7
0024cc  9f701000  addli r1, zero, 15
0024d0  7d900700  xwait r15, 0
0024d4  9f07ffdf  addli r15, r30, -4104
0024d8  97b01c02  sll.d r[2:3], r[26:27], r1
0024dc  6bdc0700  load.d r[25:26], 0(r15)
0024e0  1d000800  lock zero, r16
0024e4  9f078000  addli r15, zero, 64
0024e8  150e0e00  dma_cfg r28, r28, zero, 0
0024ec  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
0024f0  15000104  dma_cfg zero, r2, zero, 2
0024f4  9583f006  dma_cfg r7, r1, r15, 3
0024f8  9f002000  addli r1, zero, 16
0024fc  1f010001  addli r2, zero, 128
002500  9f030010  addli r7, zero, 2048
002504  15811308  dma_cfg r2, r7, r1, 4
002508  35000000  dma_run zero
00250c  1d100800  unlock r16
002510  7d800800  xsignal r17, 0
002514  dbdeffff  j -268
002518  9f101000  addli r1, zero, 9
00251c  7d900800  xwait r17, 0
002520  7d900000  xwait r1, 0
002524  1d000000  lock zero, zero
002528  9f008000  addli r1, zero, 64
00252c  81020000  ds_cfg r5, zero, 0
002530  81000002  ds_cfg r1, zero, 1
002534  9f002000  addli r1, zero, 16
002538  010b001c  ds_cfg r22, zero, 14
00253c  010b001a  ds_cfg r22, zero, 13
002540  c1871304  shuffle_coa r15, r7, r1, 2
002544  9f700000  addli r1, zero, 7
002548  1d100000  unlock zero
00254c  7d800000  xsignal r1, 0
002550  9f001000  addli r1, zero, 8
002554  7d800000  xsignal r1, 0
002558  5bd6ffff  j -336
00255c  bbb00b01  bneq r23, r16, 44
002560  1f011000  addli r2, zero, 8
002564  7d100800  xwait r16, 0
002568  7d100100  xwait r2, 0
00256c  1f012000  addli r2, zero, 16
002570  1d000e00  lock zero, r28
002574  090b6101  mm_cfg r22, r2, r22, 0
002578  090ece05  mm_cfg r28, r28, r28, 2
00257c  37e00100  beq r3, zero, 24
002580  2990f00a  mm_acc zero, r1, r15, 5
002584  db020000  j 20
002588  1f120200  addli r4, r4, 1
00258c  3b1a02ff  bneq r4, r16, -380
002590  db060000  j 52
002594  2980f00a  mm zero, r1, r15, 5
002598  9f500000  addli r1, zero, 5
00259c  1d100e00  unlock r28
0025a0  1f120200  addli r4, r4, 1
0025a4  7d800000  xsignal r1, 0
0025a8  9f101000  addli r1, zero, 9
0025ac  7d800000  xsignal r1, 0
0025b0  bb0902ff  bneq r4, r16, -416
0025b4  5b010000  j 8
0025b8  3bb00b01  bneq r23, r16, 12
0025bc  9f201000  addli r1, zero, 10
0025c0  7d800000  xsignal r1, 0
0025c4  9f500000  addli r1, zero, 5
0025c8  37c51b00  beq r23, r1, 336
0025cc  1f01efdf  addli r2, r30, -4112
0025d0  abf01700  lui r1, 383
0025d4  6b5a0100  load.d r[21:22], 0(r2)
0025d8  9b900080  ori r1, r1, 2048
0025dc  37835b00  beq r23, r5, 192
0025e0  6341cfdf  loadli.w r2,  -4124(r30)
0025e4  1f02c007  addli r4, zero, 992
0025e8  b3030228  zext_int2long r[8:9], r4
0025ec  33010128  zext_int2long r[3:4], r2
0025f0  8b237140  min.ul r[8:9], r[3:4], r[8:9]
0025f4  a7834300  addli.d r[8:9], r[8:9], 32
0025f8  0ba72348  max.ul r[15:16], r[8:9], r[3:4]
0025fc  33040b28  zext_int2long r[9:10], r22
002600  0b312718  sub.sl r[3:4], r[15:16], r[3:4]
002604  8b218140  min.ul r[4:5], r[3:4], r[9:10]
002608  b7f1cbff  beq r23, r28, -900
00260c  3b830bfe  bneq r23, zero, -832
002610  e3409fdf  loadli.w r1,  -4148(r30)
002614  1f05afdf  addli r10, r30, -4144
002618  9f032000  addli r7, zero, 16
00261c  6b5c8f01  load.d r[25:26], 24(r30)
002620  9bb12100  slli r3, r3, 2
002624  6b570500  load.d r[15:16], 0(r10)
002628  1f05efdf  addli r10, r30, -4112
00262c  b3900028  sext_int2long r[2:3], r1
002630  0bba8040  min.sl r[21:22], r[2:3], r[9:10]
002634  17377702  sll.d r[15:16], r[15:16], r7
002638  9f232000  addli r7, zero, 18
00263c  270a4a00  addli.d r[21:22], r[21:22], 32
002640  7d900300  xwait r7, 0
002644  9f530000  addli r7, zero, 5
002648  0b27ec10  add.ul r[15:16], r[25:26], r[15:16]
00264c  0b3a1a48  max.sl r[21:22], r[21:22], r[2:3]
002650  1d800300  lock zero, r7
002654  8b301a18  sub.sl r[2:3], r[21:22], r[2:3]
002658  6b5a0500  load.d r[21:22], 0(r10)
00265c  1f05bfdf  addli r10, r30, -4136
002660  6b5c0500  load.d r[25:26], 0(r10)
002664  150e0000  dma_cfg r28, zero, zero, 0
002668  8bb08040  min.sl r[2:3], r[2:3], r[9:10]
00266c  15000e02  dma_cfg zero, r28, zero, 1
002670  0b278711  add.ul r[15:16], r[15:16], r[25:26]
002674  95070004  dma_cfg r15, zero, zero, 2
002678  63427fdf  loadli.w r4,  -4164(r30)
00267c  15073206  dma_cfg r14, r4, r3, 3
002680  9f010001  addli r3, zero, 128
002684  1f020010  addli r4, zero, 2048
002688  15821108  dma_cfg r4, r3, r1, 4
00268c  9f302000  addli r1, zero, 19
002690  35000000  dma_run zero
002694  1d900300  unlock r7
002698  5b86ffff  j -976
00269c  1f211000  addli r2, zero, 10
0026a0  9f010000  addli r3, zero, 0
0026a4  9f030020  addli r7, zero, 4096
0026a8  7d100100  xwait r2, 0
0026ac  1f411000  addli r2, zero, 12
0026b0  7d100100  xwait r2, 0
0026b4  1f711000  addli r2, zero, 15
0026b8  7d100100  xwait r2, 0
0026bc  1d800600  lock zero, r13
0026c0  2b01803f  lui r2, 260096
0026c4  0d000002  ew_cfg zero, zero, zero, 1
0026c8  0d110100  ewcoeff_cfg r2, r2, zero, 0
0026cc  1f713000  addli r2, zero, 31
0026d0  0d000104  ew_cfg zero, r2, zero, 2
0026d4  0d0e0006  ew_cfg r28, zero, zero, 3
0026d8  63027fdf  loadli.w r4,  -4168(r30)
0026dc  0b914110  add.s r2, r3, r4
0026e0  2d811100  dsmadd r2, r3, r1, 0
0026e4  9f810101  addli r3, r3, 128
0026e8  bbdf71fe  bneq r3, r7, -12
0026ec  9f301000  addli r1, zero, 11
0026f0  1d900600  unlock r13
0026f4  7d800000  xsignal r1, 0
0026f8  9f501000  addli r1, zero, 13
0026fc  7d800000  xsignal r1, 0
002700  9f002000  addli r1, zero, 16
002704  7d800000  xsignal r1, 0
002708  9f102000  addli r1, zero, 17
00270c  7d800000  xsignal r1, 0
002710  9f601000  addli r1, zero, 14
002714  db76ffff  j -1100
002718  1f611000  addli r2, zero, 14
00271c  ab0100c1  lui r3, 790528
002720  9f000000  addli r1, zero, 0
002724  1f040020  addli r8, zero, 4096
002728  7d100100  xwait r2, 0
00272c  1f312000  addli r2, zero, 19
002730  7d100100  xwait r2, 0
002734  1d800600  lock zero, r13
002738  1f01efdf  addli r2, r30, -4112
00273c  0d000002  ew_cfg zero, zero, zero, 1
002740  6b5a0100  load.d r[21:22], 0(r2)
002744  1f511000  addli r2, zero, 13
002748  0d800a04  ew_cfg zero, r21, zero, 2
00274c  0d0e0006  ew_cfg r28, zero, zero, 3
002750  0d0e0e26  ew_cfg r28, r28, zero, 19
002754  0d010014  ew_cfg r2, zero, zero, 10
002758  63416fdf  loadli.w r2,  -4172(r30)
00275c  8d062e16  ew_cfg r13, r28, r2, 11
002760  2b81ff40  lui r2, 266232
002764  0d00501a  ew_cfg zero, zero, r5, 13
002768  8d01281c  ew_cfg r3, r16, r2, 14
00276c  2b01803f  lui r2, 260096
002770  0d00011e  ew_cfg zero, r2, zero, 15
002774  63417fdf  loadli.w r2,  -4164(r30)
002778  e3037fdf  loadli.w r7,  -4168(r30)
00277c  4da10300  sslut r2, r7, 0
002780  1f012000  addli r2, zero, 16
002784  0d000014  ew_cfg zero, zero, zero, 10
002788  0d000026  ew_cfg zero, zero, zero, 19
00278c  1d900600  unlock r13
002790  7d100100  xwait r2, 0
002794  1f412000  addli r2, zero, 20
002798  7d100100  xwait r2, 0
00279c  1d800600  lock zero, r13
0027a0  1f713000  addli r2, zero, 31
0027a4  0d000002  ew_cfg zero, zero, zero, 1
0027a8  0d000104  ew_cfg zero, r2, zero, 2
0027ac  0d0e0006  ew_cfg r28, zero, zero, 3
0027b0  63016fdf  loadli.w r2,  -4176(r30)
0027b4  0d110000  ewcoeff_cfg r2, zero, zero, 0
0027b8  63025fdf  loadli.w r4,  -4184(r30)
0027bc  0b914010  add.s r2, r1, r4
0027c0  8b917010  add.s r3, r1, r7
0027c4  9f800001  addli r1, r1, 128
0027c8  2da13100  dscmpnsel r2, r3, r3, 0
0027cc  bbcf80fe  bneq r1, r8, -16
0027d0  1d900600  unlock r13
0027d4  1f713000  addli r2, zero, 31
0027d8  9f000000  addli r1, zero, 0
0027dc  1d800600  lock zero, r13
0027e0  0d000002  ew_cfg zero, zero, zero, 1
0027e4  0d000104  ew_cfg zero, r2, zero, 2
0027e8  0d0e0006  ew_cfg r28, zero, zero, 3
0027ec  63415fdf  loadli.w r2,  -4180(r30)
0027f0  0d110000  ewcoeff_cfg r2, zero, zero, 0
0027f4  0b914010  add.s r2, r1, r4
0027f8  9f800001  addli r1, r1, 128
0027fc  2d212108  dscmpnsel r2, r2, r2, 4
002800  bbdf80fe  bneq r1, r8, -12
002804  9f102000  addli r1, zero, 17
002808  1d900600  unlock r13
00280c  2b0180bf  lui r2, 784384
002810  7d900000  xwait r1, 0
002814  1d800600  lock zero, r13
002818  ab00803f  lui r1, 260096
00281c  0d000002  ew_cfg zero, zero, zero, 1
002820  8d100100  ewcoeff_cfg r1, r2, zero, 0
002824  1f412000  addli r2, zero, 20
002828  0d800a04  ew_cfg zero, r21, zero, 2
00282c  0d0e0006  ew_cfg r28, zero, zero, 3
002830  0d0ece27  ew_cfg r28, r28, r28, 19
002834  ad834300  dsmadd r7, r7, r4, 0
002838  0d000026  ew_cfg zero, zero, zero, 19
00283c  1d900600  unlock r13
002840  7d000100  xsignal r2, 0
002844  1d800600  lock zero, r13
002848  0d000002  ew_cfg zero, zero, zero, 1
00284c  8d900000  ewcoeff_cfg r1, r1, zero, 0
002850  0d800a04  ew_cfg zero, r21, zero, 2
002854  0d0e0006  ew_cfg r28, zero, zero, 3
002858  0d0ece27  ew_cfg r28, r28, r28, 19
00285c  e3407fdf  loadli.w r1,  -4164(r30)
002860  ad807000  dsmadd r1, r1, r7, 0
002864  9f701000  addli r1, zero, 15
002868  0d000026  ew_cfg zero, zero, zero, 19
00286c  1d900600  unlock r13
002870  7d800000  xsignal r1, 0
002874  9f202000  addli r1, zero, 18
002878  5b4affff  j -1456
00287c  6700bff0  storeli.w r11, -2048(r30)
002880  67006ff8  storeli.w r6, -1024(r30)
002884  7d000000  xsignal zero, 0
002888  bbe00b00  bneq r23, zero, 56
00288c  9f200000  addli r1, zero, 2
002890  7d100000  xwait zero, 0
002894  7d100000  xwait zero, 0
002898  7d100000  xwait zero, 0
00289c  7d100000  xwait zero, 0
0028a0  7d100000  xwait zero, 0
0028a4  7d100000  xwait zero, 0
0028a8  7d100000  xwait zero, 0
0028ac  7d100000  xwait zero, 0
0028b0  1d800000  lock zero, r1
0028b4  0d000020  ew_cfg zero, zero, zero, 16
0028b8  1d900000  unlock r1
0028bc  7d400000  xsignal_mode_cfg zero
0028c0  9f8ebe20  addli sp, sp, 4184
0028c4  00a00300  mfence { lm, sm, gm }
0028c8  00100000  exit
0028cc  00100000  exit
0028d0  00100000  exit
0028d4  00100000  exit
0028d8  00100000  exit
0028dc  00100000  exit
0028e0  00100000  exit
0028e4  00100000  exit
0028e8  00100000  exit
0028ec  00100000  exit
0028f0  00100000  exit
0028f4  00100000  exit
0028f8  00100000  exit
0028fc  00100000  exit
002900  00100000  exit
002904  00100000  exit
002908  00100000  exit
00290c  00100000  exit
002910  00100000  exit
002914  00100000  exit
002918  00100000  exit
00291c  00100000  exit
002920  00100000  exit
002924  00100000  exit
002928  00100000  exit
00292c  00100000  exit
002930  00100000  exit
002934  00100000  exit
002938  00100000  exit
00293c  00100000  exit
002940  00100000  exit
002944  00100000  exit
002948  00100000  exit
00294c  00100000  exit
002950  00100000  exit
002954  00100000  exit
002958  00100000  exit
00295c  00100000  exit
002960  00100000  exit
002964  00100000  exit
002968  00100000  exit
00296c  00100000  exit
002970  00100000  exit
002974  00100000  exit
002978  00100000  exit
00297c  00100000  exit
002980  00100000  exit
002984  00100000  exit
002988  00100000  exit
00298c  00100000  exit
002990  00100000  exit
002994  00100000  exit
002998  00100000  exit
00299c  00100000  exit
0029a0  00100000  exit
0029a4  00100000  exit
0029a8  00100000  exit
0029ac  00100000  exit
0029b0  00100000  exit
0029b4  00100000  exit
0029b8  00100000  exit
0029bc  00100000  exit
0029c0  00100000  exit
0029c4  00100000  exit
0029c8  00100000  exit
0029cc  00100000  exit
0029d0  00100000  exit
0029d4  00100000  exit
0029d8  00100000  exit
0029dc  00100000  exit
0029e0  00100000  exit
0029e4  00100000  exit
0029e8  00100000  exit
0029ec  00100000  exit
0029f0  00100000  exit
0029f4  00100000  exit
0029f8  00100000  exit
0029fc  00100000  exit
002a00  00100000  exit
002a04  00100000  exit
002a08  00100000  exit
002a0c  00100000  exit
002a10  00100000  exit
002a14  00100000  exit
002a18  00100000  exit
002a1c  00100000  exit
002a20  00100000  exit
002a24  00100000  exit
002a28  00100000  exit
002a2c  00100000  exit
002a30  00100000  exit
002a34  00100000  exit
002a38  00100000  exit
002a3c  00100000  exit
002a40  00100000  exit
002a44  00100000  exit
002a48  00100000  exit
002a4c  00100000  exit
002a50  00100000  exit
002a54  00100000  exit
002a58  00100000  exit
002a5c  00100000  exit
002a60  00100000  exit
002a64  00100000  exit
002a68  00100000  exit
002a6c  00100000  exit
002a70  00100000  exit
002a74  00100000  exit
002a78  00100000  exit
002a7c  00100000  exit
002a80  00100000  exit
002a84  00100000  exit
002a88  00100000  exit
002a8c  00100000  exit
002a90  00100000  exit
002a94  00100000  exit
002a98  00100000  exit
002a9c  00100000  exit
002aa0  00100000  exit
002aa4  00100000  exit
002aa8  00100000  exit
002aac  00100000  exit
002ab0  00100000  exit
002ab4  00100000  exit
002ab8  00100000  exit
002abc  00100000  exit
002ac0  00100000  exit
002ac4  00100000  exit
002ac8  00100000  exit
002acc  00100000  exit
002ad0  00100000  exit
002ad4  00100000  exit
002ad8  00100000  exit
002adc  00100000  exit
002ae0  00100000  exit
002ae4  00100000  exit
002ae8  00100000  exit
002aec  00100000  exit
002af0  00100000  exit
002af4  00100000  exit
002af8  00100000  exit
002afc  00100000  exit
002b00  00100000  exit
002b04  00100000  exit
002b08  00100000  exit
