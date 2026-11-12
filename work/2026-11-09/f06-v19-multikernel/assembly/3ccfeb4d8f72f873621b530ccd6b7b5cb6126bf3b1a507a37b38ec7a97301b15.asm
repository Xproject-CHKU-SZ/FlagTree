; SHA-256 3ccfeb4d8f72f873621b530ccd6b7b5cb6126bf3b1a507a37b38ec7a97301b15
; P800 SDNN · XTDK LLVM 19 · 1639 / 1639 words decoded
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
0000b4  9f8eaef0  addli sp, sp, -1968
0000b8  1f110000  addli r2, zero, 1
0000bc  80300002  core_id r1
0000c0  1f8fee0e  addli r30, sp, 1904
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7900000  beq r1, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  1b91f1ff  ori r2, r3, 4095
0000e0  80210104  csr_set csr3, r2
0000e4  00d00100  sync_group
0000e8  5bf60000  j 1968
0000ec  9f220000  addli r5, zero, 2
0000f0  7d510100  uni_sram_cfg r2, r2
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  0d010020  ew_cfg r2, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15002008  dma_cfg zero, zero, r2, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d000100  xsignal r2, 0
000134  7d100100  xwait r2, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f311000  addli r3, zero, 11
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d000100  xsignal r2, 0
000160  7d100100  xwait r2, 0
000164  1d800200  lock zero, r5
000168  2b110100  lui r2, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0d200102  ewtable_cfg r2, 1
000174  2bf1ffff  lui r2, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  1b11f1ff  ori r2, r2, 4095
000188  80210104  csr_set csr3, r2
00018c  00d00100  sync_group
000190  7d800100  xsignal r3, 0
000194  7d800100  xsignal r3, 0
000198  7d800100  xsignal r3, 0
00019c  1f510000  addli r2, zero, 5
0001a0  9f310000  addli r3, zero, 3
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
00047c  1f111000  addli r2, zero, 9
000480  9f710000  addli r3, zero, 7
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
000598  7d000100  xsignal r2, 0
00059c  7d000100  xsignal r2, 0
0005a0  7d000100  xsignal r2, 0
0005a4  7d000100  xsignal r2, 0
0005a8  7d000100  xsignal r2, 0
0005ac  7d000100  xsignal r2, 0
0005b0  7d000100  xsignal r2, 0
0005b4  7d000100  xsignal r2, 0
0005b8  7d000100  xsignal r2, 0
0005bc  7d000100  xsignal r2, 0
0005c0  7d000100  xsignal r2, 0
0005c4  7d000100  xsignal r2, 0
0005c8  7d000100  xsignal r2, 0
0005cc  7d000100  xsignal r2, 0
0005d0  7d000100  xsignal r2, 0
0005d4  7d000100  xsignal r2, 0
0005d8  7d000100  xsignal r2, 0
0005dc  7d000100  xsignal r2, 0
0005e0  7d000100  xsignal r2, 0
0005e4  7d000100  xsignal r2, 0
0005e8  7d000100  xsignal r2, 0
0005ec  7d000100  xsignal r2, 0
0005f0  7d000100  xsignal r2, 0
0005f4  7d000100  xsignal r2, 0
0005f8  7d000100  xsignal r2, 0
0005fc  7d000100  xsignal r2, 0
000600  7d000100  xsignal r2, 0
000604  7d000100  xsignal r2, 0
000608  7d000100  xsignal r2, 0
00060c  7d000100  xsignal r2, 0
000610  7d000100  xsignal r2, 0
000614  7d000100  xsignal r2, 0
000618  7d000100  xsignal r2, 0
00061c  7d000100  xsignal r2, 0
000620  7d000100  xsignal r2, 0
000624  7d000100  xsignal r2, 0
000628  7d000100  xsignal r2, 0
00062c  7d000100  xsignal r2, 0
000630  7d000100  xsignal r2, 0
000634  7d000100  xsignal r2, 0
000638  7d000100  xsignal r2, 0
00063c  7d000100  xsignal r2, 0
000640  7d000100  xsignal r2, 0
000644  7d000100  xsignal r2, 0
000648  7d000100  xsignal r2, 0
00064c  7d000100  xsignal r2, 0
000650  7d000100  xsignal r2, 0
000654  7d000100  xsignal r2, 0
000658  7d000100  xsignal r2, 0
00065c  7d000100  xsignal r2, 0
000660  7d000100  xsignal r2, 0
000664  7d000100  xsignal r2, 0
000668  7d000100  xsignal r2, 0
00066c  7d000100  xsignal r2, 0
000670  7d000100  xsignal r2, 0
000674  7d000100  xsignal r2, 0
000678  7d000100  xsignal r2, 0
00067c  7d000100  xsignal r2, 0
000680  7d000100  xsignal r2, 0
000684  7d000100  xsignal r2, 0
000688  7d000100  xsignal r2, 0
00068c  7d000100  xsignal r2, 0
000690  7d000100  xsignal r2, 0
000694  7d000100  xsignal r2, 0
000698  7d000100  xsignal r2, 0
00069c  7d000100  xsignal r2, 0
0006a0  7d000100  xsignal r2, 0
0006a4  7d000100  xsignal r2, 0
0006a8  7d000100  xsignal r2, 0
0006ac  7d000100  xsignal r2, 0
0006b0  7d000100  xsignal r2, 0
0006b4  7d000100  xsignal r2, 0
0006b8  7d000100  xsignal r2, 0
0006bc  7d000100  xsignal r2, 0
0006c0  7d000100  xsignal r2, 0
0006c4  7d000100  xsignal r2, 0
0006c8  7d000100  xsignal r2, 0
0006cc  7d000100  xsignal r2, 0
0006d0  7d000100  xsignal r2, 0
0006d4  7d000100  xsignal r2, 0
0006d8  7d000100  xsignal r2, 0
0006dc  7d000100  xsignal r2, 0
0006e0  7d000100  xsignal r2, 0
0006e4  7d000100  xsignal r2, 0
0006e8  7d000100  xsignal r2, 0
0006ec  7d000100  xsignal r2, 0
0006f0  7d000100  xsignal r2, 0
0006f4  7d000100  xsignal r2, 0
0006f8  7d000100  xsignal r2, 0
0006fc  7d000100  xsignal r2, 0
000700  7d000100  xsignal r2, 0
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
000858  1f511000  addli r2, zero, 13
00085c  9f711000  addli r3, zero, 15
000860  7d000100  xsignal r2, 0
000864  7d000100  xsignal r2, 0
000868  7d000100  xsignal r2, 0
00086c  7d800100  xsignal r3, 0
000870  7d800100  xsignal r3, 0
000874  7d800100  xsignal r3, 0
000878  1f312000  addli r2, zero, 19
00087c  9f412000  addli r3, zero, 20
000880  7d000100  xsignal r2, 0
000884  7d000100  xsignal r2, 0
000888  7d000100  xsignal r2, 0
00088c  7d800100  xsignal r3, 0
000890  7d800100  xsignal r3, 0
000894  7d800100  xsignal r3, 0
000898  63015f00  loadli.w r2,  40(r30)
00089c  e3415f00  loadli.w r3,  44(r30)
0008a0  00d20002  load_param_i r4, 1
0008a4  e3026f00  loadli.w r5,  48(r30)
0008a8  80530002  load_param_i r7, 0
0008ac  2bf3ffff  lui r6, 1048575
0008b0  670f0ffe  storeli.w zero, -16(r30)
0008b4  670e0ffe  storeli.w zero, -32(r30)
0008b8  670d0ffe  storeli.w zero, -48(r30)
0008bc  670c0ffe  storeli.w zero, -64(r30)
0008c0  e7060ffc  storeli.w zero, -408(r30)
0008c4  674e0ff6  storeli.w zero, -1052(r30)
0008c8  e7080ff4  storeli.w zero, -1400(r30)
0008cc  67400ff2  storeli.w zero, -1788(r30)
0008d0  0b912120  mul.s r2, r3, r2
0008d4  9f010200  addli r3, r4, 0
0008d8  8b115150  fmac.s r3, r2, r5
0008dc  8b125120  mul.s r5, r2, r5
0008e0  9ff1f1ff  addli r3, r3, -1
0008e4  8b914130  div.s r3, r3, r4
0008e8  1b12f3ff  ori r4, r6, 4095
0008ec  674f4ffe  storeli.w r4, -12(r30)
0008f0  e70f4ffe  storeli.w r4, -8(r30)
0008f4  e74f4ffe  storeli.w r4, -4(r30)
0008f8  674e4ffe  storeli.w r4, -28(r30)
0008fc  e70e4ffe  storeli.w r4, -24(r30)
000900  e74e4ffe  storeli.w r4, -20(r30)
000904  674d4ffe  storeli.w r4, -44(r30)
000908  e70d4ffe  storeli.w r4, -40(r30)
00090c  e74d4ffe  storeli.w r4, -36(r30)
000910  674c4ffe  storeli.w r4, -60(r30)
000914  e70c4ffe  storeli.w r4, -56(r30)
000918  e74c4ffe  storeli.w r4, -52(r30)
00091c  e7464ffc  storeli.w r4, -404(r30)
000920  67074ffc  storeli.w r4, -400(r30)
000924  67474ffc  storeli.w r4, -396(r30)
000928  e7074ffc  storeli.w r4, -392(r30)
00092c  e7474ffc  storeli.w r4, -388(r30)
000930  67084ffc  storeli.w r4, -384(r30)
000934  67484ffc  storeli.w r4, -380(r30)
000938  e7084ffc  storeli.w r4, -376(r30)
00093c  e7484ffc  storeli.w r4, -372(r30)
000940  67094ffc  storeli.w r4, -368(r30)
000944  67494ffc  storeli.w r4, -364(r30)
000948  e7094ffc  storeli.w r4, -360(r30)
00094c  e7494ffc  storeli.w r4, -356(r30)
000950  670a4ffc  storeli.w r4, -352(r30)
000954  674a4ffc  storeli.w r4, -348(r30)
000958  e70a4ffc  storeli.w r4, -344(r30)
00095c  e74a4ffc  storeli.w r4, -340(r30)
000960  670b4ffc  storeli.w r4, -336(r30)
000964  674b4ffc  storeli.w r4, -332(r30)
000968  e70b4ffc  storeli.w r4, -328(r30)
00096c  e74b4ffc  storeli.w r4, -324(r30)
000970  670c4ffc  storeli.w r4, -320(r30)
000974  674c4ffc  storeli.w r4, -316(r30)
000978  e70c4ffc  storeli.w r4, -312(r30)
00097c  e74c4ffc  storeli.w r4, -308(r30)
000980  670d4ffc  storeli.w r4, -304(r30)
000984  674d4ffc  storeli.w r4, -300(r30)
000988  e70d4ffc  storeli.w r4, -296(r30)
00098c  e74d4ffc  storeli.w r4, -292(r30)
000990  670e4ffc  storeli.w r4, -288(r30)
000994  674e4ffc  storeli.w r4, -284(r30)
000998  e70e4ffc  storeli.w r4, -280(r30)
00099c  e74e4ffc  storeli.w r4, -276(r30)
0009a0  670f4ffc  storeli.w r4, -272(r30)
0009a4  674f4ffc  storeli.w r4, -268(r30)
0009a8  e70f4ffc  storeli.w r4, -264(r30)
0009ac  e74f4ffc  storeli.w r4, -260(r30)
0009b0  67004ffe  storeli.w r4, -256(r30)
0009b4  67404ffe  storeli.w r4, -252(r30)
0009b8  e7004ffe  storeli.w r4, -248(r30)
0009bc  e7404ffe  storeli.w r4, -244(r30)
0009c0  67014ffe  storeli.w r4, -240(r30)
0009c4  67414ffe  storeli.w r4, -236(r30)
0009c8  e7014ffe  storeli.w r4, -232(r30)
0009cc  e7414ffe  storeli.w r4, -228(r30)
0009d0  67024ffe  storeli.w r4, -224(r30)
0009d4  67424ffe  storeli.w r4, -220(r30)
0009d8  e7024ffe  storeli.w r4, -216(r30)
0009dc  e7424ffe  storeli.w r4, -212(r30)
0009e0  67034ffe  storeli.w r4, -208(r30)
0009e4  67434ffe  storeli.w r4, -204(r30)
0009e8  e7034ffe  storeli.w r4, -200(r30)
0009ec  e7434ffe  storeli.w r4, -196(r30)
0009f0  67044ffe  storeli.w r4, -192(r30)
0009f4  67444ffe  storeli.w r4, -188(r30)
0009f8  e7044ffe  storeli.w r4, -184(r30)
0009fc  e7444ffe  storeli.w r4, -180(r30)
000a00  67054ffe  storeli.w r4, -176(r30)
000a04  67454ffe  storeli.w r4, -172(r30)
000a08  e7054ffe  storeli.w r4, -168(r30)
000a0c  e7454ffe  storeli.w r4, -164(r30)
000a10  67064ffe  storeli.w r4, -160(r30)
000a14  67464ffe  storeli.w r4, -156(r30)
000a18  e7064ffe  storeli.w r4, -152(r30)
000a1c  e7464ffe  storeli.w r4, -148(r30)
000a20  67074ffe  storeli.w r4, -144(r30)
000a24  67474ffe  storeli.w r4, -140(r30)
000a28  e7074ffe  storeli.w r4, -136(r30)
000a2c  e7474ffe  storeli.w r4, -132(r30)
000a30  67084ffe  storeli.w r4, -128(r30)
000a34  67484ffe  storeli.w r4, -124(r30)
000a38  e7084ffe  storeli.w r4, -120(r30)
000a3c  e7484ffe  storeli.w r4, -116(r30)
000a40  67094ffe  storeli.w r4, -112(r30)
000a44  67494ffe  storeli.w r4, -108(r30)
000a48  e7094ffe  storeli.w r4, -104(r30)
000a4c  e7494ffe  storeli.w r4, -100(r30)
000a50  670a4ffe  storeli.w r4, -96(r30)
000a54  674a4ffe  storeli.w r4, -92(r30)
000a58  e70a4ffe  storeli.w r4, -88(r30)
000a5c  e74a4ffe  storeli.w r4, -84(r30)
000a60  670b4ffe  storeli.w r4, -80(r30)
000a64  674b4ffe  storeli.w r4, -76(r30)
000a68  e70b4ffe  storeli.w r4, -72(r30)
000a6c  e74b4ffe  storeli.w r4, -68(r30)
000a70  e70e4ff6  storeli.w r4, -1048(r30)
000a74  e74e4ff6  storeli.w r4, -1044(r30)
000a78  670f4ff6  storeli.w r4, -1040(r30)
000a7c  674f4ff6  storeli.w r4, -1036(r30)
000a80  e70f4ff6  storeli.w r4, -1032(r30)
000a84  e74f4ff6  storeli.w r4, -1028(r30)
000a88  67004ff8  storeli.w r4, -1024(r30)
000a8c  67404ff8  storeli.w r4, -1020(r30)
000a90  e7004ff8  storeli.w r4, -1016(r30)
000a94  e7404ff8  storeli.w r4, -1012(r30)
000a98  67014ff8  storeli.w r4, -1008(r30)
000a9c  67414ff8  storeli.w r4, -1004(r30)
000aa0  e7014ff8  storeli.w r4, -1000(r30)
000aa4  e7414ff8  storeli.w r4, -996(r30)
000aa8  67024ff8  storeli.w r4, -992(r30)
000aac  67424ff8  storeli.w r4, -988(r30)
000ab0  e7024ff8  storeli.w r4, -984(r30)
000ab4  e7424ff8  storeli.w r4, -980(r30)
000ab8  67034ff8  storeli.w r4, -976(r30)
000abc  67434ff8  storeli.w r4, -972(r30)
000ac0  e7034ff8  storeli.w r4, -968(r30)
000ac4  e7434ff8  storeli.w r4, -964(r30)
000ac8  67044ff8  storeli.w r4, -960(r30)
000acc  67444ff8  storeli.w r4, -956(r30)
000ad0  e7044ff8  storeli.w r4, -952(r30)
000ad4  e7444ff8  storeli.w r4, -948(r30)
000ad8  67054ff8  storeli.w r4, -944(r30)
000adc  67454ff8  storeli.w r4, -940(r30)
000ae0  e7054ff8  storeli.w r4, -936(r30)
000ae4  e7454ff8  storeli.w r4, -932(r30)
000ae8  67064ff8  storeli.w r4, -928(r30)
000aec  67464ff8  storeli.w r4, -924(r30)
000af0  e7064ff8  storeli.w r4, -920(r30)
000af4  e7464ff8  storeli.w r4, -916(r30)
000af8  67074ff8  storeli.w r4, -912(r30)
000afc  67474ff8  storeli.w r4, -908(r30)
000b00  e7074ff8  storeli.w r4, -904(r30)
000b04  e7474ff8  storeli.w r4, -900(r30)
000b08  67084ff8  storeli.w r4, -896(r30)
000b0c  67484ff8  storeli.w r4, -892(r30)
000b10  e7084ff8  storeli.w r4, -888(r30)
000b14  e7484ff8  storeli.w r4, -884(r30)
000b18  67094ff8  storeli.w r4, -880(r30)
000b1c  67494ff8  storeli.w r4, -876(r30)
000b20  e7094ff8  storeli.w r4, -872(r30)
000b24  e7494ff8  storeli.w r4, -868(r30)
000b28  670a4ff8  storeli.w r4, -864(r30)
000b2c  674a4ff8  storeli.w r4, -860(r30)
000b30  e70a4ff8  storeli.w r4, -856(r30)
000b34  e74a4ff8  storeli.w r4, -852(r30)
000b38  670b4ff8  storeli.w r4, -848(r30)
000b3c  674b4ff8  storeli.w r4, -844(r30)
000b40  e70b4ff8  storeli.w r4, -840(r30)
000b44  e74b4ff8  storeli.w r4, -836(r30)
000b48  670c4ff8  storeli.w r4, -832(r30)
000b4c  674c4ff8  storeli.w r4, -828(r30)
000b50  e70c4ff8  storeli.w r4, -824(r30)
000b54  e74c4ff8  storeli.w r4, -820(r30)
000b58  670d4ff8  storeli.w r4, -816(r30)
000b5c  674d4ff8  storeli.w r4, -812(r30)
000b60  e70d4ff8  storeli.w r4, -808(r30)
000b64  e74d4ff8  storeli.w r4, -804(r30)
000b68  670e4ff8  storeli.w r4, -800(r30)
000b6c  674e4ff8  storeli.w r4, -796(r30)
000b70  e70e4ff8  storeli.w r4, -792(r30)
000b74  e74e4ff8  storeli.w r4, -788(r30)
000b78  670f4ff8  storeli.w r4, -784(r30)
000b7c  674f4ff8  storeli.w r4, -780(r30)
000b80  e70f4ff8  storeli.w r4, -776(r30)
000b84  e74f4ff8  storeli.w r4, -772(r30)
000b88  67004ffa  storeli.w r4, -768(r30)
000b8c  67404ffa  storeli.w r4, -764(r30)
000b90  e7004ffa  storeli.w r4, -760(r30)
000b94  e7404ffa  storeli.w r4, -756(r30)
000b98  67014ffa  storeli.w r4, -752(r30)
000b9c  67414ffa  storeli.w r4, -748(r30)
000ba0  e7014ffa  storeli.w r4, -744(r30)
000ba4  e7414ffa  storeli.w r4, -740(r30)
000ba8  67024ffa  storeli.w r4, -736(r30)
000bac  67424ffa  storeli.w r4, -732(r30)
000bb0  e7024ffa  storeli.w r4, -728(r30)
000bb4  e7424ffa  storeli.w r4, -724(r30)
000bb8  67034ffa  storeli.w r4, -720(r30)
000bbc  67434ffa  storeli.w r4, -716(r30)
000bc0  e7034ffa  storeli.w r4, -712(r30)
000bc4  e7434ffa  storeli.w r4, -708(r30)
000bc8  67044ffa  storeli.w r4, -704(r30)
000bcc  67444ffa  storeli.w r4, -700(r30)
000bd0  e7044ffa  storeli.w r4, -696(r30)
000bd4  e7444ffa  storeli.w r4, -692(r30)
000bd8  67054ffa  storeli.w r4, -688(r30)
000bdc  67454ffa  storeli.w r4, -684(r30)
000be0  e7054ffa  storeli.w r4, -680(r30)
000be4  e7454ffa  storeli.w r4, -676(r30)
000be8  67064ffa  storeli.w r4, -672(r30)
000bec  67464ffa  storeli.w r4, -668(r30)
000bf0  e7064ffa  storeli.w r4, -664(r30)
000bf4  e7464ffa  storeli.w r4, -660(r30)
000bf8  67074ffa  storeli.w r4, -656(r30)
000bfc  67474ffa  storeli.w r4, -652(r30)
000c00  e7074ffa  storeli.w r4, -648(r30)
000c04  e7474ffa  storeli.w r4, -644(r30)
000c08  67084ffa  storeli.w r4, -640(r30)
000c0c  67484ffa  storeli.w r4, -636(r30)
000c10  e7084ffa  storeli.w r4, -632(r30)
000c14  e7484ffa  storeli.w r4, -628(r30)
000c18  67094ffa  storeli.w r4, -624(r30)
000c1c  67494ffa  storeli.w r4, -620(r30)
000c20  e7094ffa  storeli.w r4, -616(r30)
000c24  e7494ffa  storeli.w r4, -612(r30)
000c28  670a4ffa  storeli.w r4, -608(r30)
000c2c  674a4ffa  storeli.w r4, -604(r30)
000c30  e70a4ffa  storeli.w r4, -600(r30)
000c34  e74a4ffa  storeli.w r4, -596(r30)
000c38  670b4ffa  storeli.w r4, -592(r30)
000c3c  674b4ffa  storeli.w r4, -588(r30)
000c40  e70b4ffa  storeli.w r4, -584(r30)
000c44  e74b4ffa  storeli.w r4, -580(r30)
000c48  670c4ffa  storeli.w r4, -576(r30)
000c4c  674c4ffa  storeli.w r4, -572(r30)
000c50  e70c4ffa  storeli.w r4, -568(r30)
000c54  e74c4ffa  storeli.w r4, -564(r30)
000c58  670d4ffa  storeli.w r4, -560(r30)
000c5c  674d4ffa  storeli.w r4, -556(r30)
000c60  e70d4ffa  storeli.w r4, -552(r30)
000c64  e74d4ffa  storeli.w r4, -548(r30)
000c68  670e4ffa  storeli.w r4, -544(r30)
000c6c  674e4ffa  storeli.w r4, -540(r30)
000c70  e70e4ffa  storeli.w r4, -536(r30)
000c74  e74e4ffa  storeli.w r4, -532(r30)
000c78  670f4ffa  storeli.w r4, -528(r30)
000c7c  674f4ffa  storeli.w r4, -524(r30)
000c80  e70f4ffa  storeli.w r4, -520(r30)
000c84  e74f4ffa  storeli.w r4, -516(r30)
000c88  67004ffc  storeli.w r4, -512(r30)
000c8c  67404ffc  storeli.w r4, -508(r30)
000c90  e7004ffc  storeli.w r4, -504(r30)
000c94  e7404ffc  storeli.w r4, -500(r30)
000c98  67014ffc  storeli.w r4, -496(r30)
000c9c  67414ffc  storeli.w r4, -492(r30)
000ca0  e7014ffc  storeli.w r4, -488(r30)
000ca4  e7414ffc  storeli.w r4, -484(r30)
000ca8  67024ffc  storeli.w r4, -480(r30)
000cac  67424ffc  storeli.w r4, -476(r30)
000cb0  e7024ffc  storeli.w r4, -472(r30)
000cb4  e7424ffc  storeli.w r4, -468(r30)
000cb8  67034ffc  storeli.w r4, -464(r30)
000cbc  67434ffc  storeli.w r4, -460(r30)
000cc0  e7034ffc  storeli.w r4, -456(r30)
000cc4  e7434ffc  storeli.w r4, -452(r30)
000cc8  67044ffc  storeli.w r4, -448(r30)
000ccc  67444ffc  storeli.w r4, -444(r30)
000cd0  e7044ffc  storeli.w r4, -440(r30)
000cd4  e7444ffc  storeli.w r4, -436(r30)
000cd8  67054ffc  storeli.w r4, -432(r30)
000cdc  67454ffc  storeli.w r4, -428(r30)
000ce0  e7054ffc  storeli.w r4, -424(r30)
000ce4  e7454ffc  storeli.w r4, -420(r30)
000ce8  67064ffc  storeli.w r4, -416(r30)
000cec  67464ffc  storeli.w r4, -412(r30)
000cf0  e7484ff4  storeli.w r4, -1396(r30)
000cf4  67094ff4  storeli.w r4, -1392(r30)
000cf8  67494ff4  storeli.w r4, -1388(r30)
000cfc  e7094ff4  storeli.w r4, -1384(r30)
000d00  e7494ff4  storeli.w r4, -1380(r30)
000d04  670a4ff4  storeli.w r4, -1376(r30)
000d08  674a4ff4  storeli.w r4, -1372(r30)
000d0c  e70a4ff4  storeli.w r4, -1368(r30)
000d10  e74a4ff4  storeli.w r4, -1364(r30)
000d14  670b4ff4  storeli.w r4, -1360(r30)
000d18  674b4ff4  storeli.w r4, -1356(r30)
000d1c  e70b4ff4  storeli.w r4, -1352(r30)
000d20  e74b4ff4  storeli.w r4, -1348(r30)
000d24  670c4ff4  storeli.w r4, -1344(r30)
000d28  674c4ff4  storeli.w r4, -1340(r30)
000d2c  e70c4ff4  storeli.w r4, -1336(r30)
000d30  e74c4ff4  storeli.w r4, -1332(r30)
000d34  670d4ff4  storeli.w r4, -1328(r30)
000d38  674d4ff4  storeli.w r4, -1324(r30)
000d3c  e70d4ff4  storeli.w r4, -1320(r30)
000d40  e74d4ff4  storeli.w r4, -1316(r30)
000d44  670e4ff4  storeli.w r4, -1312(r30)
000d48  674e4ff4  storeli.w r4, -1308(r30)
000d4c  e70e4ff4  storeli.w r4, -1304(r30)
000d50  e74e4ff4  storeli.w r4, -1300(r30)
000d54  670f4ff4  storeli.w r4, -1296(r30)
000d58  674f4ff4  storeli.w r4, -1292(r30)
000d5c  e70f4ff4  storeli.w r4, -1288(r30)
000d60  e74f4ff4  storeli.w r4, -1284(r30)
000d64  67004ff6  storeli.w r4, -1280(r30)
000d68  67404ff6  storeli.w r4, -1276(r30)
000d6c  e7004ff6  storeli.w r4, -1272(r30)
000d70  e7404ff6  storeli.w r4, -1268(r30)
000d74  67014ff6  storeli.w r4, -1264(r30)
000d78  67414ff6  storeli.w r4, -1260(r30)
000d7c  e7014ff6  storeli.w r4, -1256(r30)
000d80  e7414ff6  storeli.w r4, -1252(r30)
000d84  67024ff6  storeli.w r4, -1248(r30)
000d88  67424ff6  storeli.w r4, -1244(r30)
000d8c  e7024ff6  storeli.w r4, -1240(r30)
000d90  e7424ff6  storeli.w r4, -1236(r30)
000d94  67034ff6  storeli.w r4, -1232(r30)
000d98  67434ff6  storeli.w r4, -1228(r30)
000d9c  e7034ff6  storeli.w r4, -1224(r30)
000da0  e7434ff6  storeli.w r4, -1220(r30)
000da4  67044ff6  storeli.w r4, -1216(r30)
000da8  67444ff6  storeli.w r4, -1212(r30)
000dac  e7044ff6  storeli.w r4, -1208(r30)
000db0  e7444ff6  storeli.w r4, -1204(r30)
000db4  67054ff6  storeli.w r4, -1200(r30)
000db8  67454ff6  storeli.w r4, -1196(r30)
000dbc  e7054ff6  storeli.w r4, -1192(r30)
000dc0  e7454ff6  storeli.w r4, -1188(r30)
000dc4  67064ff6  storeli.w r4, -1184(r30)
000dc8  67464ff6  storeli.w r4, -1180(r30)
000dcc  e7064ff6  storeli.w r4, -1176(r30)
000dd0  e7464ff6  storeli.w r4, -1172(r30)
000dd4  67074ff6  storeli.w r4, -1168(r30)
000dd8  67474ff6  storeli.w r4, -1164(r30)
000ddc  e7074ff6  storeli.w r4, -1160(r30)
000de0  e7474ff6  storeli.w r4, -1156(r30)
000de4  67084ff6  storeli.w r4, -1152(r30)
000de8  67484ff6  storeli.w r4, -1148(r30)
000dec  e7084ff6  storeli.w r4, -1144(r30)
000df0  e7484ff6  storeli.w r4, -1140(r30)
000df4  67094ff6  storeli.w r4, -1136(r30)
000df8  67494ff6  storeli.w r4, -1132(r30)
000dfc  e7094ff6  storeli.w r4, -1128(r30)
000e00  e7494ff6  storeli.w r4, -1124(r30)
000e04  670a4ff6  storeli.w r4, -1120(r30)
000e08  674a4ff6  storeli.w r4, -1116(r30)
000e0c  e70a4ff6  storeli.w r4, -1112(r30)
000e10  e74a4ff6  storeli.w r4, -1108(r30)
000e14  670b4ff6  storeli.w r4, -1104(r30)
000e18  674b4ff6  storeli.w r4, -1100(r30)
000e1c  e70b4ff6  storeli.w r4, -1096(r30)
000e20  e74b4ff6  storeli.w r4, -1092(r30)
000e24  670c4ff6  storeli.w r4, -1088(r30)
000e28  674c4ff6  storeli.w r4, -1084(r30)
000e2c  e70c4ff6  storeli.w r4, -1080(r30)
000e30  e74c4ff6  storeli.w r4, -1076(r30)
000e34  670d4ff6  storeli.w r4, -1072(r30)
000e38  674d4ff6  storeli.w r4, -1068(r30)
000e3c  e70d4ff6  storeli.w r4, -1064(r30)
000e40  e74d4ff6  storeli.w r4, -1060(r30)
000e44  670e4ff6  storeli.w r4, -1056(r30)
000e48  e7004ff2  storeli.w r4, -1784(r30)
000e4c  e7404ff2  storeli.w r4, -1780(r30)
000e50  67014ff2  storeli.w r4, -1776(r30)
000e54  67414ff2  storeli.w r4, -1772(r30)
000e58  e7014ff2  storeli.w r4, -1768(r30)
000e5c  e7414ff2  storeli.w r4, -1764(r30)
000e60  67024ff2  storeli.w r4, -1760(r30)
000e64  67424ff2  storeli.w r4, -1756(r30)
000e68  e7024ff2  storeli.w r4, -1752(r30)
000e6c  e7424ff2  storeli.w r4, -1748(r30)
000e70  67034ff2  storeli.w r4, -1744(r30)
000e74  67434ff2  storeli.w r4, -1740(r30)
000e78  e7034ff2  storeli.w r4, -1736(r30)
000e7c  e7434ff2  storeli.w r4, -1732(r30)
000e80  67044ff2  storeli.w r4, -1728(r30)
000e84  67444ff2  storeli.w r4, -1724(r30)
000e88  e7044ff2  storeli.w r4, -1720(r30)
000e8c  e7444ff2  storeli.w r4, -1716(r30)
000e90  67054ff2  storeli.w r4, -1712(r30)
000e94  67454ff2  storeli.w r4, -1708(r30)
000e98  e7054ff2  storeli.w r4, -1704(r30)
000e9c  e7454ff2  storeli.w r4, -1700(r30)
000ea0  67064ff2  storeli.w r4, -1696(r30)
000ea4  67464ff2  storeli.w r4, -1692(r30)
000ea8  e7064ff2  storeli.w r4, -1688(r30)
000eac  e7464ff2  storeli.w r4, -1684(r30)
000eb0  67074ff2  storeli.w r4, -1680(r30)
000eb4  67474ff2  storeli.w r4, -1676(r30)
000eb8  e7074ff2  storeli.w r4, -1672(r30)
000ebc  e7474ff2  storeli.w r4, -1668(r30)
000ec0  67084ff2  storeli.w r4, -1664(r30)
000ec4  67484ff2  storeli.w r4, -1660(r30)
000ec8  e7084ff2  storeli.w r4, -1656(r30)
000ecc  e7484ff2  storeli.w r4, -1652(r30)
000ed0  67094ff2  storeli.w r4, -1648(r30)
000ed4  67494ff2  storeli.w r4, -1644(r30)
000ed8  e7094ff2  storeli.w r4, -1640(r30)
000edc  e7494ff2  storeli.w r4, -1636(r30)
000ee0  670a4ff2  storeli.w r4, -1632(r30)
000ee4  674a4ff2  storeli.w r4, -1628(r30)
000ee8  e70a4ff2  storeli.w r4, -1624(r30)
000eec  e74a4ff2  storeli.w r4, -1620(r30)
000ef0  670b4ff2  storeli.w r4, -1616(r30)
000ef4  674b4ff2  storeli.w r4, -1612(r30)
000ef8  e70b4ff2  storeli.w r4, -1608(r30)
000efc  e74b4ff2  storeli.w r4, -1604(r30)
000f00  670c4ff2  storeli.w r4, -1600(r30)
000f04  674c4ff2  storeli.w r4, -1596(r30)
000f08  e70c4ff2  storeli.w r4, -1592(r30)
000f0c  e74c4ff2  storeli.w r4, -1588(r30)
000f10  670d4ff2  storeli.w r4, -1584(r30)
000f14  674d4ff2  storeli.w r4, -1580(r30)
000f18  e70d4ff2  storeli.w r4, -1576(r30)
000f1c  e74d4ff2  storeli.w r4, -1572(r30)
000f20  670e4ff2  storeli.w r4, -1568(r30)
000f24  674e4ff2  storeli.w r4, -1564(r30)
000f28  e70e4ff2  storeli.w r4, -1560(r30)
000f2c  e74e4ff2  storeli.w r4, -1556(r30)
000f30  670f4ff2  storeli.w r4, -1552(r30)
000f34  674f4ff2  storeli.w r4, -1548(r30)
000f38  e70f4ff2  storeli.w r4, -1544(r30)
000f3c  e74f4ff2  storeli.w r4, -1540(r30)
000f40  67004ff4  storeli.w r4, -1536(r30)
000f44  67404ff4  storeli.w r4, -1532(r30)
000f48  e7004ff4  storeli.w r4, -1528(r30)
000f4c  e7404ff4  storeli.w r4, -1524(r30)
000f50  67014ff4  storeli.w r4, -1520(r30)
000f54  67414ff4  storeli.w r4, -1516(r30)
000f58  e7014ff4  storeli.w r4, -1512(r30)
000f5c  e7414ff4  storeli.w r4, -1508(r30)
000f60  67024ff4  storeli.w r4, -1504(r30)
000f64  67424ff4  storeli.w r4, -1500(r30)
000f68  e7024ff4  storeli.w r4, -1496(r30)
000f6c  e7424ff4  storeli.w r4, -1492(r30)
000f70  67034ff4  storeli.w r4, -1488(r30)
000f74  67434ff4  storeli.w r4, -1484(r30)
000f78  e7034ff4  storeli.w r4, -1480(r30)
000f7c  e7434ff4  storeli.w r4, -1476(r30)
000f80  67044ff4  storeli.w r4, -1472(r30)
000f84  67444ff4  storeli.w r4, -1468(r30)
000f88  e7044ff4  storeli.w r4, -1464(r30)
000f8c  e7444ff4  storeli.w r4, -1460(r30)
000f90  67054ff4  storeli.w r4, -1456(r30)
000f94  67454ff4  storeli.w r4, -1452(r30)
000f98  e7054ff4  storeli.w r4, -1448(r30)
000f9c  e7454ff4  storeli.w r4, -1444(r30)
000fa0  67064ff4  storeli.w r4, -1440(r30)
000fa4  67464ff4  storeli.w r4, -1436(r30)
000fa8  e7064ff4  storeli.w r4, -1432(r30)
000fac  e7464ff4  storeli.w r4, -1428(r30)
000fb0  67074ff4  storeli.w r4, -1424(r30)
000fb4  67474ff4  storeli.w r4, -1420(r30)
000fb8  e7074ff4  storeli.w r4, -1416(r30)
000fbc  e7474ff4  storeli.w r4, -1412(r30)
000fc0  67084ff4  storeli.w r4, -1408(r30)
000fc4  67484ff4  storeli.w r4, -1404(r30)
000fc8  0b917120  mul.s r2, r3, r7
000fcc  8b917150  fmac.s r3, r3, r7
000fd0  8b915140  min.s r3, r3, r5
000fd4  4b8d2102  ble.s r3, r2, 1856
000fd8  33150128  sext_int2long r[11:12], r2
000fdc  2be11600  lui r2, 366
000fe0  b3910128  sext_int2long r[4:5], r3
000fe4  e308efff  loadli.w r17,  -16(r30)
000fe8  630bcfff  loadli.w r22,  -32(r30)
000fec  630dafff  loadli.w r26,  -48(r30)
000ff0  63068fff  loadli.w r12,  -64(r30)
000ff4  e304dffc  loadli.w r9,  -408(r30)
000ff8  e346cff7  loadli.w r13,  -1052(r30)
000ffc  63031ff5  loadli.w r6,  -1400(r30)
001000  e3420ff2  loadli.w r5,  -1788(r30)
001004  00370002  core_id r14
001008  1f690000  addli r18, zero, 6
00100c  9f490000  addli r19, zero, 4
001010  9f2a0000  addli r21, zero, 2
001014  9f0bc000  addli r23, zero, 96
001018  9f0d4000  addli r27, zero, 32
00101c  9f000002  addli r1, zero, 256
001020  9f070000  addli r15, zero, 0
001024  1b110130  ori r2, r2, 768
001028  73343f8a  store.d r[4:5], -1880(r30)
00102c  aba11700  lui r3, 378
001030  1f120000  addli r4, zero, 1
001034  674a2ff0  storeli.w r2, -1884(r30)
001038  2b810d00  lui r2, 216
00103c  1b11d1b4  ori r2, r2, 2893
001040  670a2ff0  storeli.w r2, -1888(r30)
001044  1b910130  ori r2, r3, 768
001048  abf17f7f  lui r3, 522239
00104c  e7492ff0  storeli.w r2, -1892(r30)
001050  2bf17fff  lui r2, 1046527
001054  1b11f1ff  ori r2, r2, 4095
001058  e7092ff0  storeli.w r2, -1896(r30)
00105c  1b91f1ff  ori r2, r3, 4095
001060  67492ff0  storeli.w r2, -1900(r30)
001064  1f018000  addli r2, zero, 64
001068  5b110000  j 136
00106c  eb580f01  load.d r[18:19], 16(r30)
001070  eb510f8c  load.d r[4:5], -1856(r30)
001074  00370002  core_id r14
001078  8ba83810  add.ul r[18:19], r[18:19], r[4:5]
00107c  9f511000  addli r3, zero, 13
001080  1f120000  addli r4, zero, 1
001084  7d900100  xwait r3, 0
001088  1d800900  lock zero, r19
00108c  9b312500  slli r3, r10, 2
001090  15000000  dma_cfg zero, zero, zero, 0
001094  15000904  dma_cfg zero, r18, zero, 2
001098  15833806  dma_cfg r6, r17, r3, 3
00109c  9f411000  addli r3, zero, 12
0010a0  9580f008  dma_cfg r1, r1, r15, 4
0010a4  35000000  dma_run zero
0010a8  1d900900  unlock r19
0010ac  630dcff1  loadli.w r26,  -1824(r30)
0010b0  7d800100  xsignal r3, 0
0010b4  e308eff1  loadli.w r17,  -1808(r30)
0010b8  634bdff1  loadli.w r22,  -1812(r30)
0010bc  1f1d0d00  addli r26, r26, 1
0010c0  1f690000  addli r18, zero, 6
0010c4  6b558f8d  load.d r[11:12], -1832(r30)
0010c8  eb528f8a  load.d r[6:7], -1880(r30)
0010cc  e347aff1  loadli.w r15,  -1836(r30)
0010d0  1f160600  addli r12, r12, 1
0010d4  1f1b0b00  addli r22, r22, 1
0010d8  9f980800  addli r17, r17, 1
0010dc  27150500  addli.d r[11:12], r[11:12], 1
0010e0  93315504  setlt.sl r3, r[11:12], r[6:7]
0010e4  9f120400  addli r5, r8, 1
0010e8  1f130800  addli r6, r16, 1
0010ec  37f80102  beq r3, zero, 1564
0010f0  674fcff0  storeli.w r12, -1804(r30)
0010f4  670eaff1  storeli.w r26, -1824(r30)
0010f8  e74e6ff1  storeli.w r22, -1812(r30)
0010fc  670f1ff1  storeli.w r17, -1808(r30)
001100  3b303701  bneq r14, r19, 12
001104  9f311000  addli r3, zero, 11
001108  7d900100  xwait r3, 0
00110c  e3016f00  loadli.w r3,  48(r30)
001110  63445f00  loadli.w r8,  44(r30)
001114  9f030001  addli r7, zero, 128
001118  733caf8c  store.d r[11:12], -1832(r30)
00111c  1f081000  addli r16, zero, 8
001120  1f0b0000  addli r22, zero, 0
001124  1f670000  addli r14, zero, 6
001128  1f0d0000  addli r26, zero, 0
00112c  8b113530  div.s r3, r10, r3
001130  8b918130  div.s r3, r3, r8
001134  0b947130  div.s r8, r3, r7
001138  9f330000  addli r7, zero, 3
00113c  8b957738  mod.s r11, r15, r7
001140  9f970700  addli r15, r15, 1
001144  674dfff0  storeli.w r15, -1836(r30)
001148  1b353400  slli r10, r8, 3
00114c  1b347400  slli r8, r8, 7
001150  0b16a218  sub.s r12, r4, r10
001154  0b948118  sub.s r8, r3, r8
001158  1bbae500  slli r20, r11, 14
00115c  0b160641  min.s r12, r12, r16
001160  8b91c138  mod.s r3, r3, r12
001164  0b14c430  div.s r8, r8, r12
001168  1f160000  addli r12, zero, 1
00116c  8b113510  add.s r3, r10, r3
001170  1b356400  slli r10, r8, 6
001174  e70caff0  storeli.w r10, -1848(r30)
001178  33050428  zext_int2long r[11:12], r8
00117c  1bb46100  slli r8, r3, 6
001180  b3870128  zext_int2long r[16:17], r3
001184  9f611000  addli r3, zero, 14
001188  17352503  sll.d r[11:12], r[11:12], r18
00118c  733cff8a  store.d r[16:17], -1864(r30)
001190  674b8ff0  storeli.w r8, -1868(r30)
001194  173c5503  sll.d r[25:26], r[11:12], r21
001198  17b53702  sll.d r[11:12], r[16:17], r3
00119c  6b588f00  load.d r[17:18], 8(r30)
0011a0  73308f8d  store.d r[25:26], -1856(r30)
0011a4  8b278811  add.ul r[16:17], r[17:18], r[25:26]
0011a8  1f6ca000  addli r24, zero, 86
0011ac  abcc0000  lui r25, 12
0011b0  733cff8e  store.d r[16:17], -1800(r30)
0011b4  6b580f00  load.d r[17:18], 0(r30)
0011b8  8b28a810  add.ul r[18:19], r[17:18], r[11:12]
0011bc  80350002  core_id r11
0011c0  5b090000  j 72
0011c4  1f550000  addli r10, zero, 5
0011c8  7d900a00  xwait r21, 0
0011cc  7d100500  xwait r10, 0
0011d0  1d000000  lock zero, zero
0011d4  810a0000  ds_cfg r21, zero, 0
0011d8  810d0002  ds_cfg r27, zero, 1
0011dc  810d001c  ds_cfg r27, zero, 14
0011e0  0101001a  ds_cfg r2, zero, 13
0011e4  219eb103  shuffle_batch r28, r3, r27, 1
0011e8  1d100000  unlock zero
0011ec  7d800300  xsignal r7, 0
0011f0  7d800900  xsignal r19, 0
0011f4  9f960600  addli r13, r13, 1
0011f8  9f940400  addli r9, r9, 1
0011fc  9b011600  andi r3, r12, 1
001200  3b950100  bneq r3, zero, 324
001204  5b380000  j 448
001208  0b18a311  add.s r16, r6, r26
00120c  0b94a211  add.s r8, r5, r26
001210  8b118839  mod.s r3, r16, r24
001214  0b157439  mod.s r10, r8, r23
001218  9bb1d100  slli r3, r3, 13
00121c  1b3ed500  slli r28, r10, 13
001220  8b919111  add.s r3, r3, r25
001224  b78e55ff  beq r11, r21, -96
001228  80370002  core_id r15
00122c  33050b28  zext_int2long r[11:12], r22
001230  3b914700  bneq r15, r4, 68
001234  9f770000  addli r15, zero, 7
001238  7d900300  xwait r7, 0
00123c  1d800900  lock zero, r19
001240  9f030001  addli r7, zero, 128
001244  15000000  dma_cfg zero, zero, zero, 0
001248  1735f502  sll.d r[11:12], r[11:12], r15
00124c  0ba5a810  add.ul r[11:12], r[18:19], r[11:12]
001250  15800504  dma_cfg zero, r11, zero, 2
001254  95017506  dma_cfg r3, r10, r7, 3
001258  80350002  core_id r11
00125c  95832008  dma_cfg r7, r1, r2, 4
001260  35000000  dma_run zero
001264  1d900900  unlock r19
001268  9f330000  addli r7, zero, 3
00126c  7d800a00  xsignal r21, 0
001270  dbf0ffff  j -124
001274  9f51a000  addli r3, zero, 85
001278  1f0b4001  addli r22, zero, 160
00127c  ab8b0b00  lui r23, 184
001280  8b913438  mod.s r3, r9, r3
001284  0b9b6639  mod.s r22, r13, r22
001288  9f960600  addli r13, r13, 1
00128c  9f940400  addli r9, r9, 1
001290  9bb1d100  slli r3, r3, 13
001294  1b3bdb00  slli r22, r22, 13
001298  8b917111  add.s r3, r3, r23
00129c  9f7b0000  addli r23, zero, 7
0012a0  37f17701  beq r15, r23, 92
0012a4  9f630000  addli r7, zero, 6
0012a8  bbb27700  bneq r15, r7, 172
0012ac  9f102000  addli r1, zero, 17
0012b0  17351502  sll.d r[11:12], r[11:12], r1
0012b4  9f700000  addli r1, zero, 7
0012b8  7d900000  xwait r1, 0
0012bc  6b578f8f  load.d r[15:16], -1800(r30)
0012c0  1d800900  lock zero, r19
0012c4  9f000002  addli r1, zero, 256
0012c8  15000000  dma_cfg zero, zero, zero, 0
0012cc  0b25a710  add.ul r[11:12], r[15:16], r[11:12]
0012d0  1f070002  addli r14, zero, 256
0012d4  15800504  dma_cfg zero, r11, zero, 2
0012d8  9501e506  dma_cfg r3, r10, r14, 3
0012dc  9f010020  addli r3, zero, 4096
0012e0  1587b109  dma_cfg r14, r3, r27, 4
0012e4  35000000  dma_run zero
0012e8  1d900900  unlock r19
0012ec  7d800300  xsignal r7, 0
0012f0  1f670000  addli r14, zero, 6
0012f4  9f330000  addli r7, zero, 3
0012f8  db070000  j 60
0012fc  1f151000  addli r10, zero, 9
001300  7d100700  xwait r14, 0
001304  7d100500  xwait r10, 0
001308  1d000000  lock zero, zero
00130c  810a0000  ds_cfg r21, zero, 0
001310  01010002  ds_cfg r2, zero, 1
001314  810d001c  ds_cfg r27, zero, 14
001318  0101001a  ds_cfg r2, zero, 13
00131c  418bb105  shuffle_coa r22, r3, r27, 2
001320  9f710000  addli r3, zero, 7
001324  1d100000  unlock zero
001328  7d800100  xsignal r3, 0
00132c  9f011000  addli r3, zero, 8
001330  7d800100  xsignal r3, 0
001334  80350002  core_id r11
001338  9f0bc000  addli r23, zero, 96
00133c  9b011600  andi r3, r12, 1
001340  37920100  beq r3, zero, 132
001344  1f1d0d00  addli r26, r26, 1
001348  1f1b0000  addli r22, zero, 1
00134c  1f060000  addli r12, zero, 0
001350  5bd7ffff  j -328
001354  1f670000  addli r14, zero, 6
001358  9f330000  addli r7, zero, 3
00135c  80350002  core_id r11
001360  9f0bc000  addli r23, zero, 96
001364  bbb03501  bneq r11, r19, 44
001368  9f011000  addli r3, zero, 8
00136c  7d900900  xwait r19, 0
001370  7d900100  xwait r3, 0
001374  9f110000  addli r3, zero, 1
001378  1d800100  lock zero, r3
00137c  09812d00  mm_cfg r2, r27, r2, 0
001380  898a3a04  mm_cfg r21, r21, r3, 2
001384  37600d00  beq r26, zero, 24
001388  291a6e11  mm_acc r20, r28, r22, 8
00138c  db020000  j 20
001390  9b011600  andi r3, r12, 1
001394  bbce01fe  bneq r3, zero, -80
001398  5b070000  j 56
00139c  290a6e11  mm r20, r28, r22, 8
0013a0  1f550000  addli r10, zero, 5
0013a4  1d900100  unlock r3
0013a8  1f120000  addli r4, zero, 1
0013ac  9b011600  andi r3, r12, 1
0013b0  7d000500  xsignal r10, 0
0013b4  1f151000  addli r10, zero, 9
0013b8  7d000500  xsignal r10, 0
0013bc  3bae01fe  bneq r3, zero, -120
0013c0  5b010000  j 8
0013c4  3bb03501  bneq r11, r19, 12
0013c8  9f211000  addli r3, zero, 10
0013cc  7d800100  xsignal r3, 0
0013d0  e3019ff1  loadli.w r3,  -1848(r30)
0013d4  6346eff1  loadli.w r12,  -1804(r30)
0013d8  b3080128  zext_int2long r[18:19], r2
0013dc  003e0002  core_id r28
0013e0  9f170000  addli r15, zero, 1
0013e4  b3820128  zext_int2long r[6:7], r3
0013e8  9f018007  addli r3, zero, 960
0013ec  33850128  zext_int2long r[11:12], r3
0013f0  8b117638  mod.s r3, r12, r7
0013f4  0ba5a240  min.ul r[11:12], r[6:7], r[11:12]
0013f8  27058500  addli.d r[11:12], r[11:12], 64
0013fc  0b255548  max.ul r[11:12], r[11:12], r[6:7]
001400  9bb18100  slli r3, r3, 8
001404  8b325518  sub.sl r[6:7], r[11:12], r[6:7]
001408  0ba51241  min.ul r[11:12], r[6:7], r[18:19]
00140c  ab221600  lui r5, 354
001410  0b935110  add.s r6, r3, r5
001414  3761fefe  beq r28, r15, -936
001418  630dcff1  loadli.w r26,  -1824(r30)
00141c  9b920230  ori r5, r5, 768
001420  634bdff1  loadli.w r22,  -1812(r30)
001424  1f120000  addli r4, zero, 1
001428  8b117d38  mod.s r3, r26, r7
00142c  1f1d0d00  addli r26, r26, 1
001430  9bb1e100  slli r3, r3, 14
001434  8b925110  add.s r5, r3, r5
001438  3b227e00  bneq r28, r7, 136
00143c  9f231000  addli r7, zero, 10
001440  00370002  core_id r14
001444  9f010000  addli r3, zero, 0
001448  7d900300  xwait r7, 0
00144c  9f431000  addli r7, zero, 12
001450  7d900300  xwait r7, 0
001454  9f731000  addli r7, zero, 15
001458  7d900300  xwait r7, 0
00145c  1d800a00  lock zero, r21
001460  ab03803f  lui r7, 260096
001464  0d000002  ew_cfg zero, zero, zero, 1
001468  8d930300  ewcoeff_cfg r7, r7, zero, 0
00146c  9f737000  addli r7, zero, 63
001470  0d800304  ew_cfg zero, r7, zero, 2
001474  ab430000  lui r7, 4
001478  0d020006  ew_cfg r4, zero, zero, 3
00147c  0b953210  add.s r10, r5, r3
001480  8b153a10  add.s r11, r20, r3
001484  9f810102  addli r3, r3, 256
001488  2d856500  dsmadd r10, r11, r6, 0
00148c  bbcf71fe  bneq r3, r7, -16
001490  9f311000  addli r3, zero, 11
001494  1d900a00  unlock r21
001498  7d800100  xsignal r3, 0
00149c  9f511000  addli r3, zero, 13
0014a0  7d800100  xsignal r3, 0
0014a4  9f012000  addli r3, zero, 16
0014a8  7d800100  xsignal r3, 0
0014ac  9f112000  addli r3, zero, 17
0014b0  7d800100  xsignal r3, 0
0014b4  9f611000  addli r3, zero, 14
0014b8  7d800100  xsignal r3, 0
0014bc  5b340000  j 416
0014c0  8b117b38  mod.s r3, r22, r7
0014c4  63434ff1  loadli.w r6,  -1884(r30)
0014c8  00370002  core_id r14
0014cc  9bb1e100  slli r3, r3, 14
0014d0  0b9a6110  add.s r20, r3, r6
0014d4  9f510000  addli r3, zero, 5
0014d8  3b063e00  bneq r28, r3, 384
0014dc  9f611000  addli r3, zero, 14
0014e0  1f160000  addli r12, zero, 1
0014e4  2b82ff40  lui r4, 266232
0014e8  2b0300c1  lui r6, 790528
0014ec  9f050000  addli r11, zero, 0
0014f0  1f690000  addli r18, zero, 6
0014f4  7d900100  xwait r3, 0
0014f8  9f312000  addli r3, zero, 19
0014fc  7d900100  xwait r3, 0
001500  1d800a00  lock zero, r21
001504  9f71f00f  addli r3, zero, 2047
001508  0d000002  ew_cfg zero, zero, zero, 1
00150c  0d800104  ew_cfg zero, r3, zero, 2
001510  9f511000  addli r3, zero, 13
001514  8d0a0006  ew_cfg r21, zero, zero, 3
001518  8d8a0a26  ew_cfg r21, r21, zero, 19
00151c  8d010014  ew_cfg r3, zero, zero, 10
001520  e3014ff1  loadli.w r3,  -1888(r30)
001524  8d0a3616  ew_cfg r21, r12, r3, 11
001528  0d00701a  ew_cfg zero, zero, r7, 13
00152c  e308eff1  loadli.w r17,  -1808(r30)
001530  0d83491c  ew_cfg r6, r19, r4, 14
001534  2b02803f  lui r4, 260096
001538  0d00021e  ew_cfg zero, r4, zero, 15
00153c  1f120000  addli r4, zero, 1
001540  8b917838  mod.s r3, r17, r7
001544  4daa0200  sslut r20, r5, 0
001548  ab430000  lui r7, 4
00154c  0d000014  ew_cfg zero, zero, zero, 10
001550  0d000026  ew_cfg zero, zero, zero, 19
001554  1d900a00  unlock r21
001558  63433ff1  loadli.w r6,  -1892(r30)
00155c  9bb1e100  slli r3, r3, 14
001560  0b956110  add.s r10, r3, r6
001564  9f012000  addli r3, zero, 16
001568  7d900100  xwait r3, 0
00156c  9f412000  addli r3, zero, 20
001570  7d900100  xwait r3, 0
001574  1d800a00  lock zero, r21
001578  9f717000  addli r3, zero, 63
00157c  0d000002  ew_cfg zero, zero, zero, 1
001580  0d800104  ew_cfg zero, r3, zero, 2
001584  0d060006  ew_cfg r12, zero, zero, 3
001588  e3013ff1  loadli.w r3,  -1896(r30)
00158c  8d110000  ewcoeff_cfg r3, zero, zero, 0
001590  8b11b510  add.s r3, r10, r11
001594  0b96b210  add.s r12, r5, r11
001598  9f850502  addli r11, r11, 256
00159c  ad21c600  dscmpnsel r3, r12, r12, 0
0015a0  bbcf75fe  bneq r11, r7, -16
0015a4  1d900a00  unlock r21
0015a8  1f737000  addli r6, zero, 63
0015ac  9f010000  addli r3, zero, 0
0015b0  1d800a00  lock zero, r21
0015b4  0d000002  ew_cfg zero, zero, zero, 1
0015b8  0d000304  ew_cfg zero, r6, zero, 2
0015bc  0d020006  ew_cfg r4, zero, zero, 3
0015c0  63432ff1  loadli.w r6,  -1900(r30)
0015c4  0d130000  ewcoeff_cfg r6, zero, zero, 0
0015c8  8b153510  add.s r11, r10, r3
0015cc  9f810102  addli r3, r3, 256
0015d0  ada5b508  dscmpnsel r11, r11, r11, 4
0015d4  bbdf71fe  bneq r3, r7, -12
0015d8  9f112000  addli r3, zero, 17
0015dc  1d900a00  unlock r21
0015e0  2b0380bf  lui r6, 784384
0015e4  9f432000  addli r7, zero, 20
0015e8  7d900100  xwait r3, 0
0015ec  1d800a00  lock zero, r21
0015f0  ab01803f  lui r3, 260096
0015f4  0d000002  ew_cfg zero, zero, zero, 1
0015f8  8d110300  ewcoeff_cfg r3, r6, zero, 0
0015fc  1f73f00f  addli r6, zero, 2047
001600  0d000304  ew_cfg zero, r6, zero, 2
001604  8d0a0006  ew_cfg r21, zero, zero, 3
001608  8d8a5a27  ew_cfg r21, r21, r21, 19
00160c  ad82a200  dsmadd r5, r5, r10, 0
001610  0d000026  ew_cfg zero, zero, zero, 19
001614  1d900a00  unlock r21
001618  7d800300  xsignal r7, 0
00161c  1d800a00  lock zero, r21
001620  0d000002  ew_cfg zero, zero, zero, 1
001624  8d910100  ewcoeff_cfg r3, r3, zero, 0
001628  9f711000  addli r3, zero, 15
00162c  0d000304  ew_cfg zero, r6, zero, 2
001630  8d0a0006  ew_cfg r21, zero, zero, 3
001634  8d8a5a27  ew_cfg r21, r21, r21, 19
001638  2d0a5a00  dsmadd r20, r20, r5, 0
00163c  0d000026  ew_cfg zero, zero, zero, 19
001640  1d900a00  unlock r21
001644  7d800100  xsignal r3, 0
001648  9f212000  addli r3, zero, 18
00164c  7d800100  xsignal r3, 0
001650  6346eff1  loadli.w r12,  -1804(r30)
001654  5b4effff  j -1424
001658  37300e00  beq r28, zero, 12
00165c  e308eff1  loadli.w r17,  -1808(r30)
001660  5b4cffff  j -1440
001664  e3416ff1  loadli.w r3,  -1868(r30)
001668  b3020028  zext_int2long r[6:7], zero
00166c  9f530000  addli r7, zero, 5
001670  339c0128  sext_int2long r[25:26], r3
001674  9f212000  addli r3, zero, 18
001678  8b325c40  min.sl r[6:7], r[25:26], r[6:7]
00167c  73348f8d  store.d r[25:26], -1848(r30)
001680  733c5f8e  store.d r[6:7], -1800(r30)
001684  eb528f8b  load.d r[6:7], -1864(r30)
001688  97b23202  sll.d r[6:7], r[6:7], r3
00168c  73305f8e  store.d r[6:7], -1824(r30)
001690  eb528f8f  load.d r[6:7], -1800(r30)
001694  7d900100  xwait r3, 0
001698  9b312500  slli r3, r10, 2
00169c  a7828200  addli.d r[6:7], r[6:7], 64
0016a0  8bb28249  max.sl r[6:7], r[6:7], r[25:26]
0016a4  6b5c0f8e  load.d r[25:26], -1824(r30)
0016a8  733c5f8e  store.d r[6:7], -1800(r30)
0016ac  eb528f01  load.d r[6:7], 24(r30)
0016b0  8ba28211  add.ul r[6:7], r[6:7], r[25:26]
0016b4  6b5c8f8c  load.d r[25:26], -1848(r30)
0016b8  73305f8e  store.d r[6:7], -1824(r30)
0016bc  eb528f8f  load.d r[6:7], -1800(r30)
0016c0  8bb28219  sub.sl r[6:7], r[6:7], r[25:26]
0016c4  6b5c0f8e  load.d r[25:26], -1824(r30)
0016c8  733c5f8e  store.d r[6:7], -1800(r30)
0016cc  eb520f8c  load.d r[6:7], -1856(r30)
0016d0  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
0016d4  6b5c8f8f  load.d r[25:26], -1800(r30)
0016d8  1d800300  lock zero, r7
0016dc  15000000  dma_cfg zero, zero, zero, 0
0016e0  15000202  dma_cfg zero, r4, zero, 1
0016e4  15030004  dma_cfg r6, zero, zero, 2
0016e8  8b381c41  min.sl r[18:19], r[25:26], r[18:19]
0016ec  95023a06  dma_cfg r5, r20, r3, 3
0016f0  9f010020  addli r3, zero, 4096
0016f4  95811009  dma_cfg r3, r1, r17, 4
0016f8  9f312000  addli r3, zero, 19
0016fc  35000000  dma_run zero
001700  1d900300  unlock r7
001704  dbb6ffff  j -588
001708  80300002  core_id r1
00170c  674edff6  storeli.w r13, -1052(r30)
001710  e7069ffc  storeli.w r9, -408(r30)
001714  7d000000  xsignal zero, 0
001718  bbe00000  bneq r1, zero, 56
00171c  9f200000  addli r1, zero, 2
001720  7d100000  xwait zero, 0
001724  7d100000  xwait zero, 0
001728  7d100000  xwait zero, 0
00172c  7d100000  xwait zero, 0
001730  7d100000  xwait zero, 0
001734  7d100000  xwait zero, 0
001738  7d100000  xwait zero, 0
00173c  7d100000  xwait zero, 0
001740  1d800000  lock zero, r1
001744  0d000020  ew_cfg zero, zero, zero, 16
001748  1d900000  unlock r1
00174c  7d400000  xsignal_mode_cfg zero
001750  9f8eee0e  addli sp, sp, 1904
001754  00a00300  mfence { lm, sm, gm }
001758  00100000  exit
00175c  00100000  exit
001760  00100000  exit
001764  00100000  exit
001768  00100000  exit
00176c  00100000  exit
001770  00100000  exit
001774  00100000  exit
001778  00100000  exit
00177c  00100000  exit
001780  00100000  exit
001784  00100000  exit
001788  00100000  exit
00178c  00100000  exit
001790  00100000  exit
001794  00100000  exit
001798  00100000  exit
00179c  00100000  exit
0017a0  00100000  exit
0017a4  00100000  exit
0017a8  00100000  exit
0017ac  00100000  exit
0017b0  00100000  exit
0017b4  00100000  exit
0017b8  00100000  exit
0017bc  00100000  exit
0017c0  00100000  exit
0017c4  00100000  exit
0017c8  00100000  exit
0017cc  00100000  exit
0017d0  00100000  exit
0017d4  00100000  exit
0017d8  00100000  exit
0017dc  00100000  exit
0017e0  00100000  exit
0017e4  00100000  exit
0017e8  00100000  exit
0017ec  00100000  exit
0017f0  00100000  exit
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
