; SHA-256 630006d92af2c8db9f54523b4f3d6a6d746166612c441f4ab66720bedee87acf
; P800 SDNN · XTDK LLVM 19 · 2157 / 2157 words decoded
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
0000b4  9f8ebee8  addli sp, sp, -2984
0000b8  1f110000  addli r2, zero, 1
0000bc  003e0002  core_id r28
0000c0  1f8fde16  addli r30, sp, 2920
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7100e00  beq r28, zero, 36
0000cc  abf0ffff  lui r1, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f0ff  ori r1, r1, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b750100  j 2984
0000ec  9f200000  addli r1, zero, 2
0000f0  7d510100  uni_sram_cfg r2, r2
0000f4  9f420000  addli r5, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d800000  lock zero, r1
000104  0d010020  ew_cfg r2, zero, zero, 16
000108  1d900000  unlock r1
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15806106  dma_cfg zero, r3, r6, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15002008  dma_cfg zero, zero, r2, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d000100  xsignal r2, 0
000134  7d100100  xwait r2, 0
000138  1d000000  lock zero, zero
00013c  81000000  ds_cfg r1, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f310000  addli r3, zero, 3
000150  0102001c  ds_cfg r4, zero, 14
000154  21134008  shuffle_batch r6, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d000100  xsignal r2, 0
000160  7d100100  xwait r2, 0
000164  1d800000  lock zero, r1
000168  2b110100  lui r2, 17
00016c  0d200300  ewtable_cfg r6, 0
000170  0d200102  ewtable_cfg r2, 1
000174  1f510000  addli r2, zero, 5
000178  1d900000  unlock r1
00017c  abf0ffff  lui r1, 1048575
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  9b90f0ff  ori r1, r1, 4095
00018c  80a10004  csr_set csr3, r1
000190  9f301000  addli r1, zero, 11
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
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
0004a0  1f111000  addli r2, zero, 9
0004a4  7d800100  xsignal r3, 0
0004a8  7d800100  xsignal r3, 0
0004ac  7d800100  xsignal r3, 0
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
000684  9f710000  addli r3, zero, 7
000688  9f501000  addli r1, zero, 13
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
000704  7d000100  xsignal r2, 0
000708  7d000100  xsignal r2, 0
00070c  7d000100  xsignal r2, 0
000710  7d000100  xsignal r2, 0
000714  7d000100  xsignal r2, 0
000718  7d000100  xsignal r2, 0
00071c  7d000100  xsignal r2, 0
000720  7d000100  xsignal r2, 0
000724  7d000100  xsignal r2, 0
000728  7d000100  xsignal r2, 0
00072c  7d000100  xsignal r2, 0
000730  7d000100  xsignal r2, 0
000734  7d000100  xsignal r2, 0
000738  7d000100  xsignal r2, 0
00073c  7d000100  xsignal r2, 0
000740  7d000100  xsignal r2, 0
000744  7d000100  xsignal r2, 0
000748  7d000100  xsignal r2, 0
00074c  7d000100  xsignal r2, 0
000750  7d000100  xsignal r2, 0
000754  7d000100  xsignal r2, 0
000758  7d000100  xsignal r2, 0
00075c  7d000100  xsignal r2, 0
000760  7d000100  xsignal r2, 0
000764  7d000100  xsignal r2, 0
000768  7d000100  xsignal r2, 0
00076c  7d000100  xsignal r2, 0
000770  7d000100  xsignal r2, 0
000774  7d000100  xsignal r2, 0
000778  7d000100  xsignal r2, 0
00077c  7d000100  xsignal r2, 0
000780  7d000100  xsignal r2, 0
000784  7d000100  xsignal r2, 0
000788  7d000100  xsignal r2, 0
00078c  7d000100  xsignal r2, 0
000790  7d000100  xsignal r2, 0
000794  7d000100  xsignal r2, 0
000798  7d000100  xsignal r2, 0
00079c  7d000100  xsignal r2, 0
0007a0  7d000100  xsignal r2, 0
0007a4  7d000100  xsignal r2, 0
0007a8  7d000100  xsignal r2, 0
0007ac  7d000100  xsignal r2, 0
0007b0  7d000100  xsignal r2, 0
0007b4  7d000100  xsignal r2, 0
0007b8  7d000100  xsignal r2, 0
0007bc  7d000100  xsignal r2, 0
0007c0  7d000100  xsignal r2, 0
0007c4  7d000100  xsignal r2, 0
0007c8  7d000100  xsignal r2, 0
0007cc  7d000100  xsignal r2, 0
0007d0  7d000100  xsignal r2, 0
0007d4  7d000100  xsignal r2, 0
0007d8  7d000100  xsignal r2, 0
0007dc  7d000100  xsignal r2, 0
0007e0  7d000100  xsignal r2, 0
0007e4  7d000100  xsignal r2, 0
0007e8  7d000100  xsignal r2, 0
0007ec  7d000100  xsignal r2, 0
0007f0  7d000100  xsignal r2, 0
0007f4  7d000100  xsignal r2, 0
0007f8  7d000100  xsignal r2, 0
0007fc  7d000100  xsignal r2, 0
000800  7d000100  xsignal r2, 0
000804  7d000100  xsignal r2, 0
000808  7d000100  xsignal r2, 0
00080c  7d000100  xsignal r2, 0
000810  7d000100  xsignal r2, 0
000814  7d000100  xsignal r2, 0
000818  7d000100  xsignal r2, 0
00081c  7d000100  xsignal r2, 0
000820  7d000100  xsignal r2, 0
000824  7d000100  xsignal r2, 0
000828  7d000100  xsignal r2, 0
00082c  7d000100  xsignal r2, 0
000830  7d000100  xsignal r2, 0
000834  7d000100  xsignal r2, 0
000838  7d000100  xsignal r2, 0
00083c  7d000100  xsignal r2, 0
000840  7d000100  xsignal r2, 0
000844  7d000100  xsignal r2, 0
000848  7d000100  xsignal r2, 0
00084c  7d000100  xsignal r2, 0
000850  7d000100  xsignal r2, 0
000854  7d000100  xsignal r2, 0
000858  7d000100  xsignal r2, 0
00085c  7d000100  xsignal r2, 0
000860  7d000100  xsignal r2, 0
000864  7d000100  xsignal r2, 0
000868  7d000100  xsignal r2, 0
00086c  7d000100  xsignal r2, 0
000870  7d000100  xsignal r2, 0
000874  7d000100  xsignal r2, 0
000878  7d000100  xsignal r2, 0
00087c  7d000100  xsignal r2, 0
000880  7d000100  xsignal r2, 0
000884  7d000100  xsignal r2, 0
000888  7d000100  xsignal r2, 0
00088c  7d000100  xsignal r2, 0
000890  7d000100  xsignal r2, 0
000894  7d000100  xsignal r2, 0
000898  7d000100  xsignal r2, 0
00089c  7d000100  xsignal r2, 0
0008a0  7d000100  xsignal r2, 0
0008a4  7d000100  xsignal r2, 0
0008a8  7d000100  xsignal r2, 0
0008ac  7d000100  xsignal r2, 0
0008b0  7d000100  xsignal r2, 0
0008b4  7d000100  xsignal r2, 0
0008b8  7d000100  xsignal r2, 0
0008bc  7d000100  xsignal r2, 0
0008c0  7d000100  xsignal r2, 0
0008c4  7d000100  xsignal r2, 0
0008c8  7d000100  xsignal r2, 0
0008cc  7d000100  xsignal r2, 0
0008d0  7d000100  xsignal r2, 0
0008d4  7d000100  xsignal r2, 0
0008d8  7d000100  xsignal r2, 0
0008dc  7d000100  xsignal r2, 0
0008e0  7d000100  xsignal r2, 0
0008e4  7d000100  xsignal r2, 0
0008e8  7d000100  xsignal r2, 0
0008ec  7d000100  xsignal r2, 0
0008f0  7d000100  xsignal r2, 0
0008f4  7d000100  xsignal r2, 0
0008f8  7d000100  xsignal r2, 0
0008fc  7d000100  xsignal r2, 0
000900  7d000100  xsignal r2, 0
000904  7d000100  xsignal r2, 0
000908  7d000100  xsignal r2, 0
00090c  7d000100  xsignal r2, 0
000910  7d000100  xsignal r2, 0
000914  7d000100  xsignal r2, 0
000918  7d000100  xsignal r2, 0
00091c  7d000100  xsignal r2, 0
000920  7d000100  xsignal r2, 0
000924  7d000100  xsignal r2, 0
000928  7d000100  xsignal r2, 0
00092c  7d000100  xsignal r2, 0
000930  7d000100  xsignal r2, 0
000934  7d000100  xsignal r2, 0
000938  7d000100  xsignal r2, 0
00093c  7d000100  xsignal r2, 0
000940  7d000100  xsignal r2, 0
000944  7d000100  xsignal r2, 0
000948  7d000100  xsignal r2, 0
00094c  7d000100  xsignal r2, 0
000950  7d000100  xsignal r2, 0
000954  7d000100  xsignal r2, 0
000958  7d000100  xsignal r2, 0
00095c  7d000100  xsignal r2, 0
000960  7d000100  xsignal r2, 0
000964  7d000100  xsignal r2, 0
000968  7d000100  xsignal r2, 0
00096c  7d000100  xsignal r2, 0
000970  7d000100  xsignal r2, 0
000974  7d000100  xsignal r2, 0
000978  7d000100  xsignal r2, 0
00097c  7d000100  xsignal r2, 0
000980  7d000100  xsignal r2, 0
000984  7d000100  xsignal r2, 0
000988  7d000100  xsignal r2, 0
00098c  7d000100  xsignal r2, 0
000990  7d000100  xsignal r2, 0
000994  7d000100  xsignal r2, 0
000998  7d000100  xsignal r2, 0
00099c  7d000100  xsignal r2, 0
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
000a88  1f711000  addli r2, zero, 15
000a8c  7d800100  xsignal r3, 0
000a90  7d800100  xsignal r3, 0
000a94  7d800100  xsignal r3, 0
000a98  7d800100  xsignal r3, 0
000a9c  7d800100  xsignal r3, 0
000aa0  7d800100  xsignal r3, 0
000aa4  7d800100  xsignal r3, 0
000aa8  7d800100  xsignal r3, 0
000aac  7d800100  xsignal r3, 0
000ab0  7d800100  xsignal r3, 0
000ab4  7d800100  xsignal r3, 0
000ab8  7d800100  xsignal r3, 0
000abc  7d800100  xsignal r3, 0
000ac0  7d800100  xsignal r3, 0
000ac4  7d800100  xsignal r3, 0
000ac8  7d800100  xsignal r3, 0
000acc  7d800100  xsignal r3, 0
000ad0  7d800100  xsignal r3, 0
000ad4  7d800100  xsignal r3, 0
000ad8  7d800100  xsignal r3, 0
000adc  7d800100  xsignal r3, 0
000ae0  7d800100  xsignal r3, 0
000ae4  7d800100  xsignal r3, 0
000ae8  7d800100  xsignal r3, 0
000aec  7d800100  xsignal r3, 0
000af0  7d800100  xsignal r3, 0
000af4  7d800100  xsignal r3, 0
000af8  7d800100  xsignal r3, 0
000afc  7d800100  xsignal r3, 0
000b00  7d800100  xsignal r3, 0
000b04  7d800100  xsignal r3, 0
000b08  7d800100  xsignal r3, 0
000b0c  7d800100  xsignal r3, 0
000b10  7d800100  xsignal r3, 0
000b14  7d800100  xsignal r3, 0
000b18  7d800100  xsignal r3, 0
000b1c  7d800100  xsignal r3, 0
000b20  7d800100  xsignal r3, 0
000b24  7d800100  xsignal r3, 0
000b28  7d800100  xsignal r3, 0
000b2c  7d800100  xsignal r3, 0
000b30  7d800100  xsignal r3, 0
000b34  7d800100  xsignal r3, 0
000b38  7d800100  xsignal r3, 0
000b3c  7d800100  xsignal r3, 0
000b40  7d800100  xsignal r3, 0
000b44  7d800100  xsignal r3, 0
000b48  7d800100  xsignal r3, 0
000b4c  7d800100  xsignal r3, 0
000b50  7d800100  xsignal r3, 0
000b54  7d800100  xsignal r3, 0
000b58  7d800100  xsignal r3, 0
000b5c  7d800100  xsignal r3, 0
000b60  7d800100  xsignal r3, 0
000b64  7d800100  xsignal r3, 0
000b68  7d800100  xsignal r3, 0
000b6c  7d800100  xsignal r3, 0
000b70  7d800100  xsignal r3, 0
000b74  7d800100  xsignal r3, 0
000b78  7d800100  xsignal r3, 0
000b7c  7d800100  xsignal r3, 0
000b80  7d800100  xsignal r3, 0
000b84  7d800100  xsignal r3, 0
000b88  7d800100  xsignal r3, 0
000b8c  7d800100  xsignal r3, 0
000b90  7d800100  xsignal r3, 0
000b94  7d800100  xsignal r3, 0
000b98  7d800100  xsignal r3, 0
000b9c  7d800100  xsignal r3, 0
000ba0  7d800100  xsignal r3, 0
000ba4  7d800100  xsignal r3, 0
000ba8  7d800100  xsignal r3, 0
000bac  7d800100  xsignal r3, 0
000bb0  7d800100  xsignal r3, 0
000bb4  7d800100  xsignal r3, 0
000bb8  7d800100  xsignal r3, 0
000bbc  7d800100  xsignal r3, 0
000bc0  7d800100  xsignal r3, 0
000bc4  7d800100  xsignal r3, 0
000bc8  7d800100  xsignal r3, 0
000bcc  7d800100  xsignal r3, 0
000bd0  7d800100  xsignal r3, 0
000bd4  7d800100  xsignal r3, 0
000bd8  7d800100  xsignal r3, 0
000bdc  7d800100  xsignal r3, 0
000be0  7d800100  xsignal r3, 0
000be4  7d800100  xsignal r3, 0
000be8  7d800100  xsignal r3, 0
000bec  7d800100  xsignal r3, 0
000bf0  7d800100  xsignal r3, 0
000bf4  7d800100  xsignal r3, 0
000bf8  7d800100  xsignal r3, 0
000bfc  7d800100  xsignal r3, 0
000c00  7d800100  xsignal r3, 0
000c04  7d800100  xsignal r3, 0
000c08  7d800100  xsignal r3, 0
000c0c  7d800100  xsignal r3, 0
000c10  7d800100  xsignal r3, 0
000c14  7d800100  xsignal r3, 0
000c18  7d800100  xsignal r3, 0
000c1c  7d800100  xsignal r3, 0
000c20  7d800100  xsignal r3, 0
000c24  7d800100  xsignal r3, 0
000c28  7d800100  xsignal r3, 0
000c2c  7d800100  xsignal r3, 0
000c30  7d800100  xsignal r3, 0
000c34  7d800100  xsignal r3, 0
000c38  7d800100  xsignal r3, 0
000c3c  7d800100  xsignal r3, 0
000c40  7d800100  xsignal r3, 0
000c44  7d800100  xsignal r3, 0
000c48  7d800100  xsignal r3, 0
000c4c  7d800100  xsignal r3, 0
000c50  7d800100  xsignal r3, 0
000c54  7d800100  xsignal r3, 0
000c58  7d800100  xsignal r3, 0
000c5c  7d800100  xsignal r3, 0
000c60  7d800100  xsignal r3, 0
000c64  7d800100  xsignal r3, 0
000c68  7d800000  xsignal r1, 0
000c6c  7d800000  xsignal r1, 0
000c70  9f302000  addli r1, zero, 19
000c74  7d000100  xsignal r2, 0
000c78  7d000100  xsignal r2, 0
000c7c  1f412000  addli r2, zero, 20
000c80  7d800000  xsignal r1, 0
000c84  7d800000  xsignal r1, 0
000c88  7d000100  xsignal r2, 0
000c8c  7d000100  xsignal r2, 0
000c90  e3005f00  loadli.w r1,  40(r30)
000c94  63415f00  loadli.w r2,  44(r30)
000c98  00d20002  load_param_i r4, 1
000c9c  e3016f00  loadli.w r3,  48(r30)
000ca0  80530002  load_param_i r7, 0
000ca4  abf2ffff  lui r5, 1048575
000ca8  674f0ffe  storeli.w zero, -12(r30)
000cac  e70e0ffe  storeli.w zero, -24(r30)
000cb0  e74d0ffe  storeli.w zero, -36(r30)
000cb4  670d0ffe  storeli.w zero, -48(r30)
000cb8  670f0ffa  storeli.w zero, -528(r30)
000cbc  670f0ff2  storeli.w zero, -1552(r30)
000cc0  e7400ff0  storeli.w zero, -2036(r30)
000cc4  e7000fea  storeli.w zero, -2808(r30)
000cc8  1b93f2ff  ori r6, r5, 4095
000ccc  8b101120  mul.s r1, r2, r1
000cd0  1f010200  addli r2, r4, 0
000cd4  e70f6ffe  storeli.w r6, -8(r30)
000cd8  e74f6ffe  storeli.w r6, -4(r30)
000cdc  e74e6ffe  storeli.w r6, -20(r30)
000ce0  670f6ffe  storeli.w r6, -16(r30)
000ce4  670e6ffe  storeli.w r6, -32(r30)
000ce8  674e6ffe  storeli.w r6, -28(r30)
000cec  674d6ffe  storeli.w r6, -44(r30)
000cf0  e70d6ffe  storeli.w r6, -40(r30)
000cf4  674f6ffa  storeli.w r6, -524(r30)
000cf8  e70f6ffa  storeli.w r6, -520(r30)
000cfc  e74f6ffa  storeli.w r6, -516(r30)
000d00  67006ffc  storeli.w r6, -512(r30)
000d04  67406ffc  storeli.w r6, -508(r30)
000d08  e7006ffc  storeli.w r6, -504(r30)
000d0c  e7406ffc  storeli.w r6, -500(r30)
000d10  67016ffc  storeli.w r6, -496(r30)
000d14  67416ffc  storeli.w r6, -492(r30)
000d18  e7016ffc  storeli.w r6, -488(r30)
000d1c  e7416ffc  storeli.w r6, -484(r30)
000d20  67026ffc  storeli.w r6, -480(r30)
000d24  67426ffc  storeli.w r6, -476(r30)
000d28  e7026ffc  storeli.w r6, -472(r30)
000d2c  e7426ffc  storeli.w r6, -468(r30)
000d30  67036ffc  storeli.w r6, -464(r30)
000d34  67436ffc  storeli.w r6, -460(r30)
000d38  e7036ffc  storeli.w r6, -456(r30)
000d3c  e7436ffc  storeli.w r6, -452(r30)
000d40  67046ffc  storeli.w r6, -448(r30)
000d44  67446ffc  storeli.w r6, -444(r30)
000d48  e7046ffc  storeli.w r6, -440(r30)
000d4c  e7446ffc  storeli.w r6, -436(r30)
000d50  67056ffc  storeli.w r6, -432(r30)
000d54  67456ffc  storeli.w r6, -428(r30)
000d58  e7056ffc  storeli.w r6, -424(r30)
000d5c  e7456ffc  storeli.w r6, -420(r30)
000d60  67066ffc  storeli.w r6, -416(r30)
000d64  67466ffc  storeli.w r6, -412(r30)
000d68  e7066ffc  storeli.w r6, -408(r30)
000d6c  e7466ffc  storeli.w r6, -404(r30)
000d70  67076ffc  storeli.w r6, -400(r30)
000d74  67476ffc  storeli.w r6, -396(r30)
000d78  e7076ffc  storeli.w r6, -392(r30)
000d7c  e7476ffc  storeli.w r6, -388(r30)
000d80  67086ffc  storeli.w r6, -384(r30)
000d84  67486ffc  storeli.w r6, -380(r30)
000d88  e7086ffc  storeli.w r6, -376(r30)
000d8c  e7486ffc  storeli.w r6, -372(r30)
000d90  67096ffc  storeli.w r6, -368(r30)
000d94  67496ffc  storeli.w r6, -364(r30)
000d98  e7096ffc  storeli.w r6, -360(r30)
000d9c  e7496ffc  storeli.w r6, -356(r30)
000da0  670a6ffc  storeli.w r6, -352(r30)
000da4  674a6ffc  storeli.w r6, -348(r30)
000da8  e70a6ffc  storeli.w r6, -344(r30)
000dac  e74a6ffc  storeli.w r6, -340(r30)
000db0  670b6ffc  storeli.w r6, -336(r30)
000db4  674b6ffc  storeli.w r6, -332(r30)
000db8  e70b6ffc  storeli.w r6, -328(r30)
000dbc  e74b6ffc  storeli.w r6, -324(r30)
000dc0  670c6ffc  storeli.w r6, -320(r30)
000dc4  674c6ffc  storeli.w r6, -316(r30)
000dc8  e70c6ffc  storeli.w r6, -312(r30)
000dcc  e74c6ffc  storeli.w r6, -308(r30)
000dd0  670d6ffc  storeli.w r6, -304(r30)
000dd4  674d6ffc  storeli.w r6, -300(r30)
000dd8  e70d6ffc  storeli.w r6, -296(r30)
000ddc  e74d6ffc  storeli.w r6, -292(r30)
000de0  670e6ffc  storeli.w r6, -288(r30)
000de4  674e6ffc  storeli.w r6, -284(r30)
000de8  e70e6ffc  storeli.w r6, -280(r30)
000dec  e74e6ffc  storeli.w r6, -276(r30)
000df0  670f6ffc  storeli.w r6, -272(r30)
000df4  674f6ffc  storeli.w r6, -268(r30)
000df8  e70f6ffc  storeli.w r6, -264(r30)
000dfc  e74f6ffc  storeli.w r6, -260(r30)
000e00  67006ffe  storeli.w r6, -256(r30)
000e04  67406ffe  storeli.w r6, -252(r30)
000e08  e7006ffe  storeli.w r6, -248(r30)
000e0c  e7406ffe  storeli.w r6, -244(r30)
000e10  67016ffe  storeli.w r6, -240(r30)
000e14  67416ffe  storeli.w r6, -236(r30)
000e18  e7016ffe  storeli.w r6, -232(r30)
000e1c  e7416ffe  storeli.w r6, -228(r30)
000e20  67026ffe  storeli.w r6, -224(r30)
000e24  67426ffe  storeli.w r6, -220(r30)
000e28  e7026ffe  storeli.w r6, -216(r30)
000e2c  e7426ffe  storeli.w r6, -212(r30)
000e30  67036ffe  storeli.w r6, -208(r30)
000e34  67436ffe  storeli.w r6, -204(r30)
000e38  e7036ffe  storeli.w r6, -200(r30)
000e3c  e7436ffe  storeli.w r6, -196(r30)
000e40  67046ffe  storeli.w r6, -192(r30)
000e44  67446ffe  storeli.w r6, -188(r30)
000e48  e7046ffe  storeli.w r6, -184(r30)
000e4c  e7446ffe  storeli.w r6, -180(r30)
000e50  67056ffe  storeli.w r6, -176(r30)
000e54  67456ffe  storeli.w r6, -172(r30)
000e58  e7056ffe  storeli.w r6, -168(r30)
000e5c  e7456ffe  storeli.w r6, -164(r30)
000e60  67066ffe  storeli.w r6, -160(r30)
000e64  67466ffe  storeli.w r6, -156(r30)
000e68  e7066ffe  storeli.w r6, -152(r30)
000e6c  e7466ffe  storeli.w r6, -148(r30)
000e70  67076ffe  storeli.w r6, -144(r30)
000e74  67476ffe  storeli.w r6, -140(r30)
000e78  e7076ffe  storeli.w r6, -136(r30)
000e7c  e7476ffe  storeli.w r6, -132(r30)
000e80  67086ffe  storeli.w r6, -128(r30)
000e84  67486ffe  storeli.w r6, -124(r30)
000e88  e7086ffe  storeli.w r6, -120(r30)
000e8c  e7486ffe  storeli.w r6, -116(r30)
000e90  67096ffe  storeli.w r6, -112(r30)
000e94  67496ffe  storeli.w r6, -108(r30)
000e98  e7096ffe  storeli.w r6, -104(r30)
000e9c  e7496ffe  storeli.w r6, -100(r30)
000ea0  670a6ffe  storeli.w r6, -96(r30)
000ea4  674a6ffe  storeli.w r6, -92(r30)
000ea8  e70a6ffe  storeli.w r6, -88(r30)
000eac  e74a6ffe  storeli.w r6, -84(r30)
000eb0  670b6ffe  storeli.w r6, -80(r30)
000eb4  674b6ffe  storeli.w r6, -76(r30)
000eb8  e70b6ffe  storeli.w r6, -72(r30)
000ebc  e74b6ffe  storeli.w r6, -68(r30)
000ec0  670c6ffe  storeli.w r6, -64(r30)
000ec4  674c6ffe  storeli.w r6, -60(r30)
000ec8  e70c6ffe  storeli.w r6, -56(r30)
000ecc  e74c6ffe  storeli.w r6, -52(r30)
000ed0  674f6ff2  storeli.w r6, -1548(r30)
000ed4  e70f6ff2  storeli.w r6, -1544(r30)
000ed8  e74f6ff2  storeli.w r6, -1540(r30)
000edc  67006ff4  storeli.w r6, -1536(r30)
000ee0  67406ff4  storeli.w r6, -1532(r30)
000ee4  e7006ff4  storeli.w r6, -1528(r30)
000ee8  e7406ff4  storeli.w r6, -1524(r30)
000eec  67016ff4  storeli.w r6, -1520(r30)
000ef0  67416ff4  storeli.w r6, -1516(r30)
000ef4  e7016ff4  storeli.w r6, -1512(r30)
000ef8  e7416ff4  storeli.w r6, -1508(r30)
000efc  67026ff4  storeli.w r6, -1504(r30)
000f00  67426ff4  storeli.w r6, -1500(r30)
000f04  e7026ff4  storeli.w r6, -1496(r30)
000f08  e7426ff4  storeli.w r6, -1492(r30)
000f0c  67036ff4  storeli.w r6, -1488(r30)
000f10  67436ff4  storeli.w r6, -1484(r30)
000f14  e7036ff4  storeli.w r6, -1480(r30)
000f18  e7436ff4  storeli.w r6, -1476(r30)
000f1c  67046ff4  storeli.w r6, -1472(r30)
000f20  67446ff4  storeli.w r6, -1468(r30)
000f24  e7046ff4  storeli.w r6, -1464(r30)
000f28  e7446ff4  storeli.w r6, -1460(r30)
000f2c  67056ff4  storeli.w r6, -1456(r30)
000f30  67456ff4  storeli.w r6, -1452(r30)
000f34  e7056ff4  storeli.w r6, -1448(r30)
000f38  e7456ff4  storeli.w r6, -1444(r30)
000f3c  67066ff4  storeli.w r6, -1440(r30)
000f40  67466ff4  storeli.w r6, -1436(r30)
000f44  e7066ff4  storeli.w r6, -1432(r30)
000f48  e7466ff4  storeli.w r6, -1428(r30)
000f4c  67076ff4  storeli.w r6, -1424(r30)
000f50  67476ff4  storeli.w r6, -1420(r30)
000f54  e7076ff4  storeli.w r6, -1416(r30)
000f58  e7476ff4  storeli.w r6, -1412(r30)
000f5c  67086ff4  storeli.w r6, -1408(r30)
000f60  67486ff4  storeli.w r6, -1404(r30)
000f64  e7086ff4  storeli.w r6, -1400(r30)
000f68  e7486ff4  storeli.w r6, -1396(r30)
000f6c  67096ff4  storeli.w r6, -1392(r30)
000f70  67496ff4  storeli.w r6, -1388(r30)
000f74  e7096ff4  storeli.w r6, -1384(r30)
000f78  e7496ff4  storeli.w r6, -1380(r30)
000f7c  670a6ff4  storeli.w r6, -1376(r30)
000f80  674a6ff4  storeli.w r6, -1372(r30)
000f84  e70a6ff4  storeli.w r6, -1368(r30)
000f88  e74a6ff4  storeli.w r6, -1364(r30)
000f8c  670b6ff4  storeli.w r6, -1360(r30)
000f90  674b6ff4  storeli.w r6, -1356(r30)
000f94  e70b6ff4  storeli.w r6, -1352(r30)
000f98  e74b6ff4  storeli.w r6, -1348(r30)
000f9c  670c6ff4  storeli.w r6, -1344(r30)
000fa0  674c6ff4  storeli.w r6, -1340(r30)
000fa4  e70c6ff4  storeli.w r6, -1336(r30)
000fa8  e74c6ff4  storeli.w r6, -1332(r30)
000fac  670d6ff4  storeli.w r6, -1328(r30)
000fb0  674d6ff4  storeli.w r6, -1324(r30)
000fb4  e70d6ff4  storeli.w r6, -1320(r30)
000fb8  e74d6ff4  storeli.w r6, -1316(r30)
000fbc  670e6ff4  storeli.w r6, -1312(r30)
000fc0  674e6ff4  storeli.w r6, -1308(r30)
000fc4  e70e6ff4  storeli.w r6, -1304(r30)
000fc8  e74e6ff4  storeli.w r6, -1300(r30)
000fcc  670f6ff4  storeli.w r6, -1296(r30)
000fd0  674f6ff4  storeli.w r6, -1292(r30)
000fd4  e70f6ff4  storeli.w r6, -1288(r30)
000fd8  e74f6ff4  storeli.w r6, -1284(r30)
000fdc  67006ff6  storeli.w r6, -1280(r30)
000fe0  67406ff6  storeli.w r6, -1276(r30)
000fe4  e7006ff6  storeli.w r6, -1272(r30)
000fe8  e7406ff6  storeli.w r6, -1268(r30)
000fec  67016ff6  storeli.w r6, -1264(r30)
000ff0  67416ff6  storeli.w r6, -1260(r30)
000ff4  e7016ff6  storeli.w r6, -1256(r30)
000ff8  e7416ff6  storeli.w r6, -1252(r30)
000ffc  67026ff6  storeli.w r6, -1248(r30)
001000  67426ff6  storeli.w r6, -1244(r30)
001004  e7026ff6  storeli.w r6, -1240(r30)
001008  e7426ff6  storeli.w r6, -1236(r30)
00100c  67036ff6  storeli.w r6, -1232(r30)
001010  67436ff6  storeli.w r6, -1228(r30)
001014  e7036ff6  storeli.w r6, -1224(r30)
001018  e7436ff6  storeli.w r6, -1220(r30)
00101c  67046ff6  storeli.w r6, -1216(r30)
001020  67446ff6  storeli.w r6, -1212(r30)
001024  e7046ff6  storeli.w r6, -1208(r30)
001028  e7446ff6  storeli.w r6, -1204(r30)
00102c  67056ff6  storeli.w r6, -1200(r30)
001030  67456ff6  storeli.w r6, -1196(r30)
001034  e7056ff6  storeli.w r6, -1192(r30)
001038  e7456ff6  storeli.w r6, -1188(r30)
00103c  67066ff6  storeli.w r6, -1184(r30)
001040  67466ff6  storeli.w r6, -1180(r30)
001044  e7066ff6  storeli.w r6, -1176(r30)
001048  e7466ff6  storeli.w r6, -1172(r30)
00104c  67076ff6  storeli.w r6, -1168(r30)
001050  67476ff6  storeli.w r6, -1164(r30)
001054  e7076ff6  storeli.w r6, -1160(r30)
001058  e7476ff6  storeli.w r6, -1156(r30)
00105c  67086ff6  storeli.w r6, -1152(r30)
001060  67486ff6  storeli.w r6, -1148(r30)
001064  e7086ff6  storeli.w r6, -1144(r30)
001068  e7486ff6  storeli.w r6, -1140(r30)
00106c  67096ff6  storeli.w r6, -1136(r30)
001070  67496ff6  storeli.w r6, -1132(r30)
001074  e7096ff6  storeli.w r6, -1128(r30)
001078  e7496ff6  storeli.w r6, -1124(r30)
00107c  670a6ff6  storeli.w r6, -1120(r30)
001080  674a6ff6  storeli.w r6, -1116(r30)
001084  e70a6ff6  storeli.w r6, -1112(r30)
001088  e74a6ff6  storeli.w r6, -1108(r30)
00108c  670b6ff6  storeli.w r6, -1104(r30)
001090  674b6ff6  storeli.w r6, -1100(r30)
001094  e70b6ff6  storeli.w r6, -1096(r30)
001098  e74b6ff6  storeli.w r6, -1092(r30)
00109c  670c6ff6  storeli.w r6, -1088(r30)
0010a0  674c6ff6  storeli.w r6, -1084(r30)
0010a4  e70c6ff6  storeli.w r6, -1080(r30)
0010a8  e74c6ff6  storeli.w r6, -1076(r30)
0010ac  670d6ff6  storeli.w r6, -1072(r30)
0010b0  674d6ff6  storeli.w r6, -1068(r30)
0010b4  e74e6ff0  storeli.w r6, -1812(r30)
0010b8  e70e6ff0  storeli.w r6, -1816(r30)
0010bc  674e6ff0  storeli.w r6, -1820(r30)
0010c0  670e6ff0  storeli.w r6, -1824(r30)
0010c4  e74d6ff0  storeli.w r6, -1828(r30)
0010c8  e70d6ff0  storeli.w r6, -1832(r30)
0010cc  674d6ff0  storeli.w r6, -1836(r30)
0010d0  670d6ff0  storeli.w r6, -1840(r30)
0010d4  e74c6ff0  storeli.w r6, -1844(r30)
0010d8  e70c6ff0  storeli.w r6, -1848(r30)
0010dc  674c6ff0  storeli.w r6, -1852(r30)
0010e0  670c6ff0  storeli.w r6, -1856(r30)
0010e4  e74b6ff0  storeli.w r6, -1860(r30)
0010e8  e70b6ff0  storeli.w r6, -1864(r30)
0010ec  674b6ff0  storeli.w r6, -1868(r30)
0010f0  670b6ff0  storeli.w r6, -1872(r30)
0010f4  e74a6ff0  storeli.w r6, -1876(r30)
0010f8  e70a6ff0  storeli.w r6, -1880(r30)
0010fc  674a6ff0  storeli.w r6, -1884(r30)
001100  670a6ff0  storeli.w r6, -1888(r30)
001104  e7496ff0  storeli.w r6, -1892(r30)
001108  e7096ff0  storeli.w r6, -1896(r30)
00110c  67496ff0  storeli.w r6, -1900(r30)
001110  67096ff0  storeli.w r6, -1904(r30)
001114  e7486ff0  storeli.w r6, -1908(r30)
001118  e7086ff0  storeli.w r6, -1912(r30)
00111c  67486ff0  storeli.w r6, -1916(r30)
001120  67086ff0  storeli.w r6, -1920(r30)
001124  e7476ff0  storeli.w r6, -1924(r30)
001128  e7076ff0  storeli.w r6, -1928(r30)
00112c  67476ff0  storeli.w r6, -1932(r30)
001130  67076ff0  storeli.w r6, -1936(r30)
001134  e7466ff0  storeli.w r6, -1940(r30)
001138  e7066ff0  storeli.w r6, -1944(r30)
00113c  67466ff0  storeli.w r6, -1948(r30)
001140  67066ff0  storeli.w r6, -1952(r30)
001144  e7456ff0  storeli.w r6, -1956(r30)
001148  e7056ff0  storeli.w r6, -1960(r30)
00114c  67456ff0  storeli.w r6, -1964(r30)
001150  67056ff0  storeli.w r6, -1968(r30)
001154  e7446ff0  storeli.w r6, -1972(r30)
001158  e7046ff0  storeli.w r6, -1976(r30)
00115c  67446ff0  storeli.w r6, -1980(r30)
001160  67046ff0  storeli.w r6, -1984(r30)
001164  e7436ff0  storeli.w r6, -1988(r30)
001168  e7036ff0  storeli.w r6, -1992(r30)
00116c  67436ff0  storeli.w r6, -1996(r30)
001170  67036ff0  storeli.w r6, -2000(r30)
001174  e7426ff0  storeli.w r6, -2004(r30)
001178  e7026ff0  storeli.w r6, -2008(r30)
00117c  67426ff0  storeli.w r6, -2012(r30)
001180  67026ff0  storeli.w r6, -2016(r30)
001184  e7416ff0  storeli.w r6, -2020(r30)
001188  e7016ff0  storeli.w r6, -2024(r30)
00118c  67416ff0  storeli.w r6, -2028(r30)
001190  67016ff0  storeli.w r6, -2032(r30)
001194  e74e6ffa  storeli.w r6, -532(r30)
001198  e70e6ffa  storeli.w r6, -536(r30)
00119c  674e6ffa  storeli.w r6, -540(r30)
0011a0  670e6ffa  storeli.w r6, -544(r30)
0011a4  e74d6ffa  storeli.w r6, -548(r30)
0011a8  e70d6ffa  storeli.w r6, -552(r30)
0011ac  674d6ffa  storeli.w r6, -556(r30)
0011b0  670d6ffa  storeli.w r6, -560(r30)
0011b4  e74c6ffa  storeli.w r6, -564(r30)
0011b8  e70c6ffa  storeli.w r6, -568(r30)
0011bc  674c6ffa  storeli.w r6, -572(r30)
0011c0  670c6ffa  storeli.w r6, -576(r30)
0011c4  e74b6ffa  storeli.w r6, -580(r30)
0011c8  e70b6ffa  storeli.w r6, -584(r30)
0011cc  674b6ffa  storeli.w r6, -588(r30)
0011d0  670b6ffa  storeli.w r6, -592(r30)
0011d4  e74a6ffa  storeli.w r6, -596(r30)
0011d8  e70a6ffa  storeli.w r6, -600(r30)
0011dc  674a6ffa  storeli.w r6, -604(r30)
0011e0  670a6ffa  storeli.w r6, -608(r30)
0011e4  e7496ffa  storeli.w r6, -612(r30)
0011e8  e7096ffa  storeli.w r6, -616(r30)
0011ec  67496ffa  storeli.w r6, -620(r30)
0011f0  67096ffa  storeli.w r6, -624(r30)
0011f4  e7486ffa  storeli.w r6, -628(r30)
0011f8  e7086ffa  storeli.w r6, -632(r30)
0011fc  67486ffa  storeli.w r6, -636(r30)
001200  67086ffa  storeli.w r6, -640(r30)
001204  e7476ffa  storeli.w r6, -644(r30)
001208  e7076ffa  storeli.w r6, -648(r30)
00120c  67476ffa  storeli.w r6, -652(r30)
001210  67076ffa  storeli.w r6, -656(r30)
001214  e7466ffa  storeli.w r6, -660(r30)
001218  e7066ffa  storeli.w r6, -664(r30)
00121c  67466ffa  storeli.w r6, -668(r30)
001220  67066ffa  storeli.w r6, -672(r30)
001224  e7456ffa  storeli.w r6, -676(r30)
001228  e7056ffa  storeli.w r6, -680(r30)
00122c  67456ffa  storeli.w r6, -684(r30)
001230  67056ffa  storeli.w r6, -688(r30)
001234  e7446ffa  storeli.w r6, -692(r30)
001238  e7046ffa  storeli.w r6, -696(r30)
00123c  67446ffa  storeli.w r6, -700(r30)
001240  67046ffa  storeli.w r6, -704(r30)
001244  e7436ffa  storeli.w r6, -708(r30)
001248  e7036ffa  storeli.w r6, -712(r30)
00124c  67436ffa  storeli.w r6, -716(r30)
001250  67036ffa  storeli.w r6, -720(r30)
001254  e7426ffa  storeli.w r6, -724(r30)
001258  e7026ffa  storeli.w r6, -728(r30)
00125c  67426ffa  storeli.w r6, -732(r30)
001260  67026ffa  storeli.w r6, -736(r30)
001264  e7416ffa  storeli.w r6, -740(r30)
001268  e7016ffa  storeli.w r6, -744(r30)
00126c  67416ffa  storeli.w r6, -748(r30)
001270  67016ffa  storeli.w r6, -752(r30)
001274  e7406ffa  storeli.w r6, -756(r30)
001278  e7006ffa  storeli.w r6, -760(r30)
00127c  67406ffa  storeli.w r6, -764(r30)
001280  67006ffa  storeli.w r6, -768(r30)
001284  e74f6ff8  storeli.w r6, -772(r30)
001288  e70f6ff8  storeli.w r6, -776(r30)
00128c  674f6ff8  storeli.w r6, -780(r30)
001290  670f6ff8  storeli.w r6, -784(r30)
001294  e74e6ff8  storeli.w r6, -788(r30)
001298  e70e6ff8  storeli.w r6, -792(r30)
00129c  674e6ff8  storeli.w r6, -796(r30)
0012a0  670e6ff8  storeli.w r6, -800(r30)
0012a4  e74d6ff8  storeli.w r6, -804(r30)
0012a8  e70d6ff8  storeli.w r6, -808(r30)
0012ac  674d6ff8  storeli.w r6, -812(r30)
0012b0  670d6ff8  storeli.w r6, -816(r30)
0012b4  e74c6ff8  storeli.w r6, -820(r30)
0012b8  e70c6ff8  storeli.w r6, -824(r30)
0012bc  674c6ff8  storeli.w r6, -828(r30)
0012c0  670c6ff8  storeli.w r6, -832(r30)
0012c4  e74b6ff8  storeli.w r6, -836(r30)
0012c8  e70b6ff8  storeli.w r6, -840(r30)
0012cc  674b6ff8  storeli.w r6, -844(r30)
0012d0  670b6ff8  storeli.w r6, -848(r30)
0012d4  e74a6ff8  storeli.w r6, -852(r30)
0012d8  e70a6ff8  storeli.w r6, -856(r30)
0012dc  674a6ff8  storeli.w r6, -860(r30)
0012e0  670a6ff8  storeli.w r6, -864(r30)
0012e4  e7496ff8  storeli.w r6, -868(r30)
0012e8  e7096ff8  storeli.w r6, -872(r30)
0012ec  67496ff8  storeli.w r6, -876(r30)
0012f0  67096ff8  storeli.w r6, -880(r30)
0012f4  e7486ff8  storeli.w r6, -884(r30)
0012f8  e7086ff8  storeli.w r6, -888(r30)
0012fc  67486ff8  storeli.w r6, -892(r30)
001300  67086ff8  storeli.w r6, -896(r30)
001304  e7476ff8  storeli.w r6, -900(r30)
001308  e7076ff8  storeli.w r6, -904(r30)
00130c  67476ff8  storeli.w r6, -908(r30)
001310  67076ff8  storeli.w r6, -912(r30)
001314  e7466ff8  storeli.w r6, -916(r30)
001318  e7066ff8  storeli.w r6, -920(r30)
00131c  67466ff8  storeli.w r6, -924(r30)
001320  67066ff8  storeli.w r6, -928(r30)
001324  e7456ff8  storeli.w r6, -932(r30)
001328  e7056ff8  storeli.w r6, -936(r30)
00132c  67456ff8  storeli.w r6, -940(r30)
001330  67056ff8  storeli.w r6, -944(r30)
001334  e7446ff8  storeli.w r6, -948(r30)
001338  e7046ff8  storeli.w r6, -952(r30)
00133c  67446ff8  storeli.w r6, -956(r30)
001340  67046ff8  storeli.w r6, -960(r30)
001344  e7436ff8  storeli.w r6, -964(r30)
001348  e7036ff8  storeli.w r6, -968(r30)
00134c  67436ff8  storeli.w r6, -972(r30)
001350  67036ff8  storeli.w r6, -976(r30)
001354  e7426ff8  storeli.w r6, -980(r30)
001358  e7026ff8  storeli.w r6, -984(r30)
00135c  67426ff8  storeli.w r6, -988(r30)
001360  67026ff8  storeli.w r6, -992(r30)
001364  e7416ff8  storeli.w r6, -996(r30)
001368  e7016ff8  storeli.w r6, -1000(r30)
00136c  67416ff8  storeli.w r6, -1004(r30)
001370  67016ff8  storeli.w r6, -1008(r30)
001374  e7406ff8  storeli.w r6, -1012(r30)
001378  e7006ff8  storeli.w r6, -1016(r30)
00137c  67406ff8  storeli.w r6, -1020(r30)
001380  67006ff8  storeli.w r6, -1024(r30)
001384  e74f6ff6  storeli.w r6, -1028(r30)
001388  e70f6ff6  storeli.w r6, -1032(r30)
00138c  674f6ff6  storeli.w r6, -1036(r30)
001390  670f6ff6  storeli.w r6, -1040(r30)
001394  e74e6ff6  storeli.w r6, -1044(r30)
001398  e70e6ff6  storeli.w r6, -1048(r30)
00139c  674e6ff6  storeli.w r6, -1052(r30)
0013a0  670e6ff6  storeli.w r6, -1056(r30)
0013a4  e74d6ff6  storeli.w r6, -1060(r30)
0013a8  e70d6ff6  storeli.w r6, -1064(r30)
0013ac  670f6ff0  storeli.w r6, -1808(r30)
0013b0  674f6ff0  storeli.w r6, -1804(r30)
0013b4  e70f6ff0  storeli.w r6, -1800(r30)
0013b8  e74f6ff0  storeli.w r6, -1796(r30)
0013bc  67006ff2  storeli.w r6, -1792(r30)
0013c0  67406ff2  storeli.w r6, -1788(r30)
0013c4  e7006ff2  storeli.w r6, -1784(r30)
0013c8  e7406ff2  storeli.w r6, -1780(r30)
0013cc  67016ff2  storeli.w r6, -1776(r30)
0013d0  67416ff2  storeli.w r6, -1772(r30)
0013d4  e7016ff2  storeli.w r6, -1768(r30)
0013d8  e7416ff2  storeli.w r6, -1764(r30)
0013dc  67026ff2  storeli.w r6, -1760(r30)
0013e0  67426ff2  storeli.w r6, -1756(r30)
0013e4  e7026ff2  storeli.w r6, -1752(r30)
0013e8  e7426ff2  storeli.w r6, -1748(r30)
0013ec  67036ff2  storeli.w r6, -1744(r30)
0013f0  67436ff2  storeli.w r6, -1740(r30)
0013f4  e7036ff2  storeli.w r6, -1736(r30)
0013f8  e7436ff2  storeli.w r6, -1732(r30)
0013fc  67046ff2  storeli.w r6, -1728(r30)
001400  67446ff2  storeli.w r6, -1724(r30)
001404  e7046ff2  storeli.w r6, -1720(r30)
001408  e7446ff2  storeli.w r6, -1716(r30)
00140c  67056ff2  storeli.w r6, -1712(r30)
001410  67456ff2  storeli.w r6, -1708(r30)
001414  e7056ff2  storeli.w r6, -1704(r30)
001418  e7456ff2  storeli.w r6, -1700(r30)
00141c  67066ff2  storeli.w r6, -1696(r30)
001420  67466ff2  storeli.w r6, -1692(r30)
001424  e7066ff2  storeli.w r6, -1688(r30)
001428  e7466ff2  storeli.w r6, -1684(r30)
00142c  67076ff2  storeli.w r6, -1680(r30)
001430  67476ff2  storeli.w r6, -1676(r30)
001434  e7076ff2  storeli.w r6, -1672(r30)
001438  e7476ff2  storeli.w r6, -1668(r30)
00143c  67086ff2  storeli.w r6, -1664(r30)
001440  67486ff2  storeli.w r6, -1660(r30)
001444  e7086ff2  storeli.w r6, -1656(r30)
001448  e7486ff2  storeli.w r6, -1652(r30)
00144c  67096ff2  storeli.w r6, -1648(r30)
001450  67496ff2  storeli.w r6, -1644(r30)
001454  e7096ff2  storeli.w r6, -1640(r30)
001458  e7496ff2  storeli.w r6, -1636(r30)
00145c  670a6ff2  storeli.w r6, -1632(r30)
001460  674a6ff2  storeli.w r6, -1628(r30)
001464  e70a6ff2  storeli.w r6, -1624(r30)
001468  e74a6ff2  storeli.w r6, -1620(r30)
00146c  670b6ff2  storeli.w r6, -1616(r30)
001470  674b6ff2  storeli.w r6, -1612(r30)
001474  e70b6ff2  storeli.w r6, -1608(r30)
001478  e74b6ff2  storeli.w r6, -1604(r30)
00147c  670c6ff2  storeli.w r6, -1600(r30)
001480  674c6ff2  storeli.w r6, -1596(r30)
001484  e70c6ff2  storeli.w r6, -1592(r30)
001488  e74c6ff2  storeli.w r6, -1588(r30)
00148c  670d6ff2  storeli.w r6, -1584(r30)
001490  674d6ff2  storeli.w r6, -1580(r30)
001494  e70d6ff2  storeli.w r6, -1576(r30)
001498  e74d6ff2  storeli.w r6, -1572(r30)
00149c  670e6ff2  storeli.w r6, -1568(r30)
0014a0  674e6ff2  storeli.w r6, -1564(r30)
0014a4  e70e6ff2  storeli.w r6, -1560(r30)
0014a8  e74e6ff2  storeli.w r6, -1556(r30)
0014ac  e7406fea  storeli.w r6, -2804(r30)
0014b0  67016fea  storeli.w r6, -2800(r30)
0014b4  67416fea  storeli.w r6, -2796(r30)
0014b8  e7016fea  storeli.w r6, -2792(r30)
0014bc  e7416fea  storeli.w r6, -2788(r30)
0014c0  67026fea  storeli.w r6, -2784(r30)
0014c4  67426fea  storeli.w r6, -2780(r30)
0014c8  e7026fea  storeli.w r6, -2776(r30)
0014cc  e7426fea  storeli.w r6, -2772(r30)
0014d0  67036fea  storeli.w r6, -2768(r30)
0014d4  67436fea  storeli.w r6, -2764(r30)
0014d8  e7036fea  storeli.w r6, -2760(r30)
0014dc  e7436fea  storeli.w r6, -2756(r30)
0014e0  67046fea  storeli.w r6, -2752(r30)
0014e4  67446fea  storeli.w r6, -2748(r30)
0014e8  e7046fea  storeli.w r6, -2744(r30)
0014ec  e7446fea  storeli.w r6, -2740(r30)
0014f0  67056fea  storeli.w r6, -2736(r30)
0014f4  67456fea  storeli.w r6, -2732(r30)
0014f8  e7056fea  storeli.w r6, -2728(r30)
0014fc  e7456fea  storeli.w r6, -2724(r30)
001500  67066fea  storeli.w r6, -2720(r30)
001504  67466fea  storeli.w r6, -2716(r30)
001508  e7066fea  storeli.w r6, -2712(r30)
00150c  e7466fea  storeli.w r6, -2708(r30)
001510  67076fea  storeli.w r6, -2704(r30)
001514  67476fea  storeli.w r6, -2700(r30)
001518  e7076fea  storeli.w r6, -2696(r30)
00151c  e7476fea  storeli.w r6, -2692(r30)
001520  67086fea  storeli.w r6, -2688(r30)
001524  67486fea  storeli.w r6, -2684(r30)
001528  e7086fea  storeli.w r6, -2680(r30)
00152c  e7486fea  storeli.w r6, -2676(r30)
001530  67096fea  storeli.w r6, -2672(r30)
001534  67496fea  storeli.w r6, -2668(r30)
001538  e7096fea  storeli.w r6, -2664(r30)
00153c  e7496fea  storeli.w r6, -2660(r30)
001540  670a6fea  storeli.w r6, -2656(r30)
001544  674a6fea  storeli.w r6, -2652(r30)
001548  e70a6fea  storeli.w r6, -2648(r30)
00154c  e74a6fea  storeli.w r6, -2644(r30)
001550  670b6fea  storeli.w r6, -2640(r30)
001554  674b6fea  storeli.w r6, -2636(r30)
001558  e70b6fea  storeli.w r6, -2632(r30)
00155c  e74b6fea  storeli.w r6, -2628(r30)
001560  670c6fea  storeli.w r6, -2624(r30)
001564  674c6fea  storeli.w r6, -2620(r30)
001568  e70c6fea  storeli.w r6, -2616(r30)
00156c  e74c6fea  storeli.w r6, -2612(r30)
001570  670d6fea  storeli.w r6, -2608(r30)
001574  674d6fea  storeli.w r6, -2604(r30)
001578  e70d6fea  storeli.w r6, -2600(r30)
00157c  e74d6fea  storeli.w r6, -2596(r30)
001580  670e6fea  storeli.w r6, -2592(r30)
001584  674e6fea  storeli.w r6, -2588(r30)
001588  e70e6fea  storeli.w r6, -2584(r30)
00158c  e74e6fea  storeli.w r6, -2580(r30)
001590  670f6fea  storeli.w r6, -2576(r30)
001594  674f6fea  storeli.w r6, -2572(r30)
001598  e70f6fea  storeli.w r6, -2568(r30)
00159c  e74f6fea  storeli.w r6, -2564(r30)
0015a0  67006fec  storeli.w r6, -2560(r30)
0015a4  67406fec  storeli.w r6, -2556(r30)
0015a8  e7006fec  storeli.w r6, -2552(r30)
0015ac  e7406fec  storeli.w r6, -2548(r30)
0015b0  67016fec  storeli.w r6, -2544(r30)
0015b4  67416fec  storeli.w r6, -2540(r30)
0015b8  e7016fec  storeli.w r6, -2536(r30)
0015bc  e7416fec  storeli.w r6, -2532(r30)
0015c0  67026fec  storeli.w r6, -2528(r30)
0015c4  67426fec  storeli.w r6, -2524(r30)
0015c8  e7026fec  storeli.w r6, -2520(r30)
0015cc  e7426fec  storeli.w r6, -2516(r30)
0015d0  67036fec  storeli.w r6, -2512(r30)
0015d4  67436fec  storeli.w r6, -2508(r30)
0015d8  e7036fec  storeli.w r6, -2504(r30)
0015dc  e7436fec  storeli.w r6, -2500(r30)
0015e0  67046fec  storeli.w r6, -2496(r30)
0015e4  67446fec  storeli.w r6, -2492(r30)
0015e8  e7046fec  storeli.w r6, -2488(r30)
0015ec  e7446fec  storeli.w r6, -2484(r30)
0015f0  67056fec  storeli.w r6, -2480(r30)
0015f4  67456fec  storeli.w r6, -2476(r30)
0015f8  e7056fec  storeli.w r6, -2472(r30)
0015fc  e7456fec  storeli.w r6, -2468(r30)
001600  67066fec  storeli.w r6, -2464(r30)
001604  67466fec  storeli.w r6, -2460(r30)
001608  e7066fec  storeli.w r6, -2456(r30)
00160c  e7466fec  storeli.w r6, -2452(r30)
001610  67076fec  storeli.w r6, -2448(r30)
001614  67476fec  storeli.w r6, -2444(r30)
001618  e7076fec  storeli.w r6, -2440(r30)
00161c  e7476fec  storeli.w r6, -2436(r30)
001620  67086fec  storeli.w r6, -2432(r30)
001624  67486fec  storeli.w r6, -2428(r30)
001628  e7086fec  storeli.w r6, -2424(r30)
00162c  e7486fec  storeli.w r6, -2420(r30)
001630  67096fec  storeli.w r6, -2416(r30)
001634  67496fec  storeli.w r6, -2412(r30)
001638  e7096fec  storeli.w r6, -2408(r30)
00163c  e7496fec  storeli.w r6, -2404(r30)
001640  670a6fec  storeli.w r6, -2400(r30)
001644  674a6fec  storeli.w r6, -2396(r30)
001648  e70a6fec  storeli.w r6, -2392(r30)
00164c  e74a6fec  storeli.w r6, -2388(r30)
001650  670b6fec  storeli.w r6, -2384(r30)
001654  674b6fec  storeli.w r6, -2380(r30)
001658  e70b6fec  storeli.w r6, -2376(r30)
00165c  e74b6fec  storeli.w r6, -2372(r30)
001660  670c6fec  storeli.w r6, -2368(r30)
001664  674c6fec  storeli.w r6, -2364(r30)
001668  e70c6fec  storeli.w r6, -2360(r30)
00166c  e74c6fec  storeli.w r6, -2356(r30)
001670  670d6fec  storeli.w r6, -2352(r30)
001674  674d6fec  storeli.w r6, -2348(r30)
001678  e70d6fec  storeli.w r6, -2344(r30)
00167c  e74d6fec  storeli.w r6, -2340(r30)
001680  670e6fec  storeli.w r6, -2336(r30)
001684  674e6fec  storeli.w r6, -2332(r30)
001688  e70e6fec  storeli.w r6, -2328(r30)
00168c  e74e6fec  storeli.w r6, -2324(r30)
001690  670f6fec  storeli.w r6, -2320(r30)
001694  674f6fec  storeli.w r6, -2316(r30)
001698  e70f6fec  storeli.w r6, -2312(r30)
00169c  e74f6fec  storeli.w r6, -2308(r30)
0016a0  67006fee  storeli.w r6, -2304(r30)
0016a4  67406fee  storeli.w r6, -2300(r30)
0016a8  e7006fee  storeli.w r6, -2296(r30)
0016ac  e7406fee  storeli.w r6, -2292(r30)
0016b0  67016fee  storeli.w r6, -2288(r30)
0016b4  67416fee  storeli.w r6, -2284(r30)
0016b8  e7016fee  storeli.w r6, -2280(r30)
0016bc  e7416fee  storeli.w r6, -2276(r30)
0016c0  67026fee  storeli.w r6, -2272(r30)
0016c4  67426fee  storeli.w r6, -2268(r30)
0016c8  e7026fee  storeli.w r6, -2264(r30)
0016cc  e7426fee  storeli.w r6, -2260(r30)
0016d0  67036fee  storeli.w r6, -2256(r30)
0016d4  67436fee  storeli.w r6, -2252(r30)
0016d8  e7036fee  storeli.w r6, -2248(r30)
0016dc  e7436fee  storeli.w r6, -2244(r30)
0016e0  67046fee  storeli.w r6, -2240(r30)
0016e4  67446fee  storeli.w r6, -2236(r30)
0016e8  e7046fee  storeli.w r6, -2232(r30)
0016ec  e7446fee  storeli.w r6, -2228(r30)
0016f0  67056fee  storeli.w r6, -2224(r30)
0016f4  67456fee  storeli.w r6, -2220(r30)
0016f8  e7056fee  storeli.w r6, -2216(r30)
0016fc  e7456fee  storeli.w r6, -2212(r30)
001700  67066fee  storeli.w r6, -2208(r30)
001704  67466fee  storeli.w r6, -2204(r30)
001708  e7066fee  storeli.w r6, -2200(r30)
00170c  e7466fee  storeli.w r6, -2196(r30)
001710  67076fee  storeli.w r6, -2192(r30)
001714  67476fee  storeli.w r6, -2188(r30)
001718  e7076fee  storeli.w r6, -2184(r30)
00171c  e7476fee  storeli.w r6, -2180(r30)
001720  67086fee  storeli.w r6, -2176(r30)
001724  67486fee  storeli.w r6, -2172(r30)
001728  e7086fee  storeli.w r6, -2168(r30)
00172c  e7486fee  storeli.w r6, -2164(r30)
001730  67096fee  storeli.w r6, -2160(r30)
001734  67496fee  storeli.w r6, -2156(r30)
001738  e7096fee  storeli.w r6, -2152(r30)
00173c  e7496fee  storeli.w r6, -2148(r30)
001740  670a6fee  storeli.w r6, -2144(r30)
001744  674a6fee  storeli.w r6, -2140(r30)
001748  e70a6fee  storeli.w r6, -2136(r30)
00174c  e74a6fee  storeli.w r6, -2132(r30)
001750  670b6fee  storeli.w r6, -2128(r30)
001754  674b6fee  storeli.w r6, -2124(r30)
001758  e70b6fee  storeli.w r6, -2120(r30)
00175c  e74b6fee  storeli.w r6, -2116(r30)
001760  670c6fee  storeli.w r6, -2112(r30)
001764  674c6fee  storeli.w r6, -2108(r30)
001768  e70c6fee  storeli.w r6, -2104(r30)
00176c  e74c6fee  storeli.w r6, -2100(r30)
001770  670d6fee  storeli.w r6, -2096(r30)
001774  674d6fee  storeli.w r6, -2092(r30)
001778  e70d6fee  storeli.w r6, -2088(r30)
00177c  e74d6fee  storeli.w r6, -2084(r30)
001780  670e6fee  storeli.w r6, -2080(r30)
001784  674e6fee  storeli.w r6, -2076(r30)
001788  e70e6fee  storeli.w r6, -2072(r30)
00178c  e74e6fee  storeli.w r6, -2068(r30)
001790  670f6fee  storeli.w r6, -2064(r30)
001794  674f6fee  storeli.w r6, -2060(r30)
001798  e70f6fee  storeli.w r6, -2056(r30)
00179c  e74f6fee  storeli.w r6, -2052(r30)
0017a0  67006ff0  storeli.w r6, -2048(r30)
0017a4  67406ff0  storeli.w r6, -2044(r30)
0017a8  e7006ff0  storeli.w r6, -2040(r30)
0017ac  0b913050  fmac.s r2, r1, r3
0017b0  8b903020  mul.s r1, r1, r3
0017b4  1f71f1ff  addli r2, r2, -1
0017b8  0b114130  div.s r2, r2, r4
0017bc  0b127120  mul.s r4, r2, r7
0017c0  0b117150  fmac.s r2, r2, r7
0017c4  8b121140  min.s r5, r2, r1
0017c8  cb9d4202  ble.s r5, r4, 1892
0017cc  b3900228  sext_int2long r[2:3], r5
0017d0  9f017fe9  addli r3, r30, -2888
0017d4  33140228  sext_int2long r[9:10], r4
0017d8  6345efff  loadli.w r10,  -12(r30)
0017dc  6306dfff  loadli.w r12,  -24(r30)
0017e0  6348bfff  loadli.w r16,  -36(r30)
0017e4  6302effb  loadli.w r4,  -528(r30)
0017e8  e306eff3  loadli.w r13,  -1552(r30)
0017ec  e34a1ff0  loadli.w r21,  -2036(r30)
0017f0  e3031fea  loadli.w r7,  -2808(r30)
0017f4  1f6d0000  addli r26, zero, 6
0017f8  9f280000  addli r17, zero, 2
0017fc  1f490000  addli r18, zero, 4
001800  9f3d0000  addli r27, zero, 3
001804  1f1b0000  addli r22, zero, 1
001808  1f070000  addli r14, zero, 0
00180c  73b01100  store.d r[2:3], 0(r3)
001810  e300afff  loadli.w r1,  -48(r30)
001814  9f016fe9  addli r3, r30, -2896
001818  e74f1fe8  storeli.w r1, -2820(r30)
00181c  1f71f00f  addli r2, zero, 2047
001820  ab80ffff  lui r1, 1048568
001824  73b01100  store.d r[2:3], 0(r3)
001828  ab701700  lui r1, 375
00182c  abf11700  lui r3, 383
001830  1f510000  addli r2, zero, 5
001834  9b900020  ori r1, r1, 512
001838  e74a1fe8  storeli.w r1, -2900(r30)
00183c  ab800d00  lui r1, 216
001840  9b90d0b4  ori r1, r1, 2893
001844  e70a1fe8  storeli.w r1, -2904(r30)
001848  9b900120  ori r1, r3, 512
00184c  abf17f7f  lui r3, 522239
001850  674a1fe8  storeli.w r1, -2908(r30)
001854  abf07fff  lui r1, 1046527
001858  9b90f0ff  ori r1, r1, 4095
00185c  670a1fe8  storeli.w r1, -2912(r30)
001860  9b90f1ff  ori r1, r3, 4095
001864  9f018000  addli r3, zero, 64
001868  e7491fe8  storeli.w r1, -2916(r30)
00186c  5b130000  j 152
001870  9f00afe9  addli r1, r30, -2864
001874  6b550f01  load.d r[11:12], 16(r30)
001878  ebd20000  load.d r[6:7], 0(r1)
00187c  9f501000  addli r1, zero, 13
001880  7d900000  xwait r1, 0
001884  1d000900  lock zero, r18
001888  9bb01300  slli r1, r7, 1
00188c  97b26203  sll.d r[6:7], r[6:7], r22
001890  15000b00  dma_cfg zero, r22, zero, 0
001894  8b225510  add.ul r[6:7], r[11:12], r[6:7]
001898  15000304  dma_cfg zero, r6, zero, 2
00189c  95841206  dma_cfg r9, r5, r1, 3
0018a0  9f000001  addli r1, zero, 128
0018a4  9f020002  addli r5, zero, 256
0018a8  95826009  dma_cfg r5, r1, r22, 4
0018ac  35000000  dma_run zero
0018b0  1d100900  unlock r18
0018b4  9f401000  addli r1, zero, 12
0018b8  6308dfe9  loadli.w r16,  -2840(r30)
0018bc  7d800000  xsignal r1, 0
0018c0  6305ffe9  loadli.w r10,  -2824(r30)
0018c4  6346efe9  loadli.w r12,  -2828(r30)
0018c8  1f180800  addli r16, r16, 1
0018cc  9f00cfe9  addli r1, r30, -2848
0018d0  9f9a0a00  addli r21, r21, 1
0018d4  6347bfe9  loadli.w r14,  -2852(r30)
0018d8  9f130a00  addli r7, r20, 1
0018dc  1f160600  addli r12, r12, 1
0018e0  1f150500  addli r10, r10, 1
0018e4  6bd40000  load.d r[9:10], 0(r1)
0018e8  9f007fe9  addli r1, r30, -2888
0018ec  e74f5fe9  storeli.w r21, -2820(r30)
0018f0  9f9a0900  addli r21, r19, 1
0018f4  ebd20000  load.d r[6:7], 0(r1)
0018f8  27140400  addli.d r[9:10], r[9:10], 1
0018fc  93305404  setlt.sl r1, r[9:10], r[6:7]
001900  b7980002  beq r1, zero, 1572
001904  e70fafe8  storeli.w r10, -2824(r30)
001908  3b302e01  bneq r28, r18, 12
00190c  9f301000  addli r1, zero, 11
001910  7d900000  xwait r1, 0
001914  e3006f00  loadli.w r1,  48(r30)
001918  9f02cfe9  addli r5, r30, -2848
00191c  e70e0fe9  storeli.w r16, -2840(r30)
001920  674fcfe8  storeli.w r12, -2828(r30)
001924  73b08200  store.d r[9:10], 0(r5)
001928  e3425f00  loadli.w r5,  44(r30)
00192c  8b101430  div.s r1, r8, r1
001930  9f041000  addli r9, zero, 8
001934  8b925030  div.s r5, r1, r5
001938  9f000001  addli r1, zero, 128
00193c  0b931230  div.s r6, r5, r1
001940  9b303300  slli r1, r6, 3
001944  0b941418  sub.s r8, r9, r1
001948  0b159440  min.s r10, r8, r9
00194c  9f049fe9  addli r9, r30, -2872
001950  0b94a238  mod.s r8, r5, r10
001954  8b908010  add.s r1, r1, r8
001958  1f740000  addli r8, zero, 7
00195c  93051404  setlt.u r11, r8, r1
001960  b3870028  zext_int2long r[16:17], r1
001964  1f441000  addli r8, zero, 12
001968  73b0f400  store.d r[16:17], 0(r9)
00196c  17b48702  sll.d r[9:10], r[16:17], r8
001970  3bb00500  bneq r11, zero, 12
001974  b3070028  zext_int2long r[16:17], zero
001978  5b020000  j 16
00197c  9f076fe9  addli r15, r30, -2896
001980  ebd50700  load.d r[12:13], 0(r15)
001984  9707b402  and.d r[16:17], r[9:10], r[12:13]
001988  1b337300  slli r6, r6, 7
00198c  9bb06000  slli r1, r1, 6
001990  eb598f00  load.d r[20:21], 8(r30)
001994  9f0b0000  addli r23, zero, 0
001998  1f060000  addli r12, zero, 0
00199c  8b926218  sub.s r5, r5, r6
0019a0  0b131739  mod.s r6, r14, r17
0019a4  674c1fe8  storeli.w r1, -2876(r30)
0019a8  1f170700  addli r14, r14, 1
0019ac  8b92a230  div.s r5, r5, r10
0019b0  e74defe8  storeli.w r14, -2852(r30)
0019b4  1b33e300  slli r6, r6, 14
0019b8  33850228  zext_int2long r[11:12], r5
0019bc  9bb06200  slli r1, r5, 6
0019c0  9f120000  addli r5, zero, 1
0019c4  e70d1fe8  storeli.w r1, -2856(r30)
0019c8  1735a503  sll.d r[11:12], r[11:12], r26
0019cc  9f00afe9  addli r1, r30, -2864
0019d0  73b0a000  store.d r[11:12], 0(r1)
0019d4  17355502  sll.d r[11:12], r[11:12], r5
0019d8  9f000fea  addli r1, r30, -2816
0019dc  0ba5a910  add.ul r[11:12], r[20:21], r[11:12]
0019e0  73b0a000  store.d r[11:12], 0(r1)
0019e4  5b0a0000  j 80
0019e8  7d900800  xwait r17, 0
0019ec  7d100100  xwait r2, 0
0019f0  1d000000  lock zero, zero
0019f4  1f054000  addli r10, zero, 32
0019f8  810d0000  ds_cfg r27, zero, 0
0019fc  81010002  ds_cfg r3, zero, 1
001a00  0105001c  ds_cfg r10, zero, 14
001a04  8101001a  ds_cfg r3, zero, 13
001a08  2197a002  shuffle_batch r14, r1, r10, 1
001a0c  1d100000  unlock zero
001a10  7d800d00  xsignal r27, 0
001a14  7d000900  xsignal r18, 0
001a18  9f960600  addli r13, r13, 1
001a1c  1f120200  addli r4, r4, 1
001a20  9b801200  andi r1, r5, 1
001a24  37a70000  beq r1, zero, 456
001a28  1f160600  addli r12, r12, 1
001a2c  9f1b0000  addli r23, zero, 1
001a30  9f020000  addli r5, zero, 0
001a34  8b99ca10  add.s r19, r21, r12
001a38  9f00f000  addli r1, zero, 120
001a3c  0b9ac310  add.s r20, r7, r12
001a40  1f058001  addli r10, zero, 192
001a44  8b901938  mod.s r1, r19, r1
001a48  0b15aa38  mod.s r10, r20, r10
001a4c  1b37c500  slli r14, r10, 12
001a50  9bb0d000  slli r1, r1, 13
001a54  2b850000  lui r10, 8
001a58  8b90a010  add.s r1, r1, r10
001a5c  373e1eff  beq r28, r17, -116
001a60  33850b28  zext_int2long r[11:12], r23
001a64  bb416e01  bneq r28, r22, 112
001a68  17352502  sll.d r[11:12], r[11:12], r2
001a6c  b38b0128  zext_int2long r[24:25], r3
001a70  1f078003  addli r14, zero, 448
001a74  7d900d00  xwait r27, 0
001a78  eb5d0f00  load.d r[28:29], 0(r30)
001a7c  1d000900  lock zero, r18
001a80  150b0b00  dma_cfg r22, r22, zero, 0
001a84  17158502  or.d r[11:12], r[11:12], r[9:10]
001a88  8b3cf518  sub.sl r[26:27], r[11:12], r[16:17]
001a8c  17356503  sll.d r[11:12], r[11:12], r22
001a90  8f9b7c61  div.sl r[24:25], r[26:27], r[24:25]
001a94  b30c0728  zext_int2long r[26:27], r14
001a98  0ba5ad10  add.ul r[11:12], r[28:29], r[11:12]
001a9c  9f3d0000  addli r27, zero, 3
001aa0  003e0002  core_id r28
001aa4  15800504  dma_cfg zero, r11, zero, 2
001aa8  95003506  dma_cfg r1, r10, r3, 3
001aac  9f000001  addli r1, zero, 128
001ab0  8bbc9b41  min.sl r[26:27], r[24:25], r[26:27]
001ab4  8bbb7c19  sub.sl r[24:25], r[26:27], r[24:25]
001ab8  1f6d0000  addli r26, zero, 6
001abc  1f878b00  addli r14, r23, 64
001ac0  9580e008  dma_cfg r1, r1, r14, 4
001ac4  35000000  dma_run zero
001ac8  1d100900  unlock r18
001acc  7d800800  xsignal r17, 0
001ad0  5be9ffff  j -184
001ad4  9f70e000  addli r1, zero, 119
001ad8  9f7bf001  addli r23, zero, 255
001adc  8b101238  mod.s r1, r4, r1
001ae0  8b9b7639  mod.s r23, r13, r23
001ae4  9f960600  addli r13, r13, 1
001ae8  1f120200  addli r4, r4, 1
001aec  1bbcc000  slli r24, r1, 12
001af0  9bb0cb00  slli r1, r23, 12
001af4  ab8b0f00  lui r23, 248
001af8  8b1b7c11  add.s r23, r24, r23
001afc  1f7c0000  addli r24, zero, 7
001b00  37518e01  beq r28, r24, 84
001b04  3b42ae01  bneq r28, r26, 144
001b08  9f002000  addli r1, zero, 16
001b0c  17351502  sll.d r[11:12], r[11:12], r1
001b10  9f700000  addli r1, zero, 7
001b14  7d900000  xwait r1, 0
001b18  9f000fea  addli r1, r30, -2816
001b1c  6bdc0000  load.d r[25:26], 0(r1)
001b20  1d000900  lock zero, r18
001b24  9f000001  addli r1, zero, 128
001b28  150b0b00  dma_cfg r22, r22, zero, 0
001b2c  0b25ac10  add.ul r[11:12], r[25:26], r[11:12]
001b30  15800504  dma_cfg zero, r11, zero, 2
001b34  950b1506  dma_cfg r23, r10, r1, 3
001b38  1f054000  addli r10, zero, 32
001b3c  9f050010  addli r11, zero, 2048
001b40  9580a508  dma_cfg r1, r11, r10, 4
001b44  35000000  dma_run zero
001b48  1d100900  unlock r18
001b4c  7d000d00  xsignal r26, 0
001b50  5bdaffff  j -304
001b54  1f151000  addli r10, zero, 9
001b58  7d100d00  xwait r26, 0
001b5c  7d100500  xwait r10, 0
001b60  1d000000  lock zero, zero
001b64  1f054000  addli r10, zero, 32
001b68  810d0000  ds_cfg r27, zero, 0
001b6c  81010002  ds_cfg r3, zero, 1
001b70  0105001c  ds_cfg r10, zero, 14
001b74  8101001a  ds_cfg r3, zero, 13
001b78  c180ab04  shuffle_coa r1, r23, r10, 2
001b7c  9f700000  addli r1, zero, 7
001b80  1d100000  unlock zero
001b84  7d800000  xsignal r1, 0
001b88  9f001000  addli r1, zero, 8
001b8c  7d800000  xsignal r1, 0
001b90  5bd2ffff  j -368
001b94  bb302e01  bneq r28, r18, 44
001b98  1f051000  addli r10, zero, 8
001b9c  7d100900  xwait r18, 0
001ba0  7d100500  xwait r10, 0
001ba4  1f054000  addli r10, zero, 32
001ba8  1d000b00  lock zero, r22
001bac  89013500  mm_cfg r3, r10, r3, 0
001bb0  098b6805  mm_cfg r22, r17, r22, 2
001bb4  37600600  beq r12, zero, 24
001bb8  2913170a  mm_acc r6, r14, r1, 5
001bbc  db020000  j 20
001bc0  9b801200  andi r1, r5, 1
001bc4  bb9900fe  bneq r1, zero, -412
001bc8  5b060000  j 48
001bcc  2903170a  mm r6, r14, r1, 5
001bd0  9b801200  andi r1, r5, 1
001bd4  9f121000  addli r5, zero, 9
001bd8  1d100b00  unlock r22
001bdc  7d000100  xsignal r2, 0
001be0  7d800200  xsignal r5, 0
001be4  3b9900fe  bneq r1, zero, -444
001be8  5b010000  j 8
001bec  3b302e01  bneq r28, r18, 12
001bf0  9f201000  addli r1, zero, 10
001bf4  7d800000  xsignal r1, 0
001bf8  e300bfe9  loadli.w r1,  -2856(r30)
001bfc  e34affe9  loadli.w r21,  -2820(r30)
001c00  abf21600  lui r5, 367
001c04  b3830028  zext_int2long r[8:9], r1
001c08  9f008007  addli r1, zero, 960
001c0c  b3840028  zext_int2long r[10:11], r1
001c10  8b901a39  mod.s r1, r21, r17
001c14  8ba49340  min.ul r[10:11], r[8:9], r[10:11]
001c18  a7848400  addli.d r[10:11], r[10:11], 64
001c1c  0ba77448  max.ul r[15:16], r[10:11], r[8:9]
001c20  9bb08000  slli r1, r1, 8
001c24  33850128  zext_int2long r[11:12], r3
001c28  8b337718  sub.sl r[8:9], r[15:16], r[8:9]
001c2c  8b945010  add.s r9, r1, r5
001c30  8ba3a340  min.ul r[8:9], r[8:9], r[11:12]
001c34  b7706eff  beq r28, r22, -964
001c38  6308dfe9  loadli.w r16,  -2840(r30)
001c3c  9b920220  ori r5, r5, 512
001c40  6346efe9  loadli.w r12,  -2828(r30)
001c44  8b101839  mod.s r1, r16, r17
001c48  1f180800  addli r16, r16, 1
001c4c  9bb0e000  slli r1, r1, 14
001c50  8b925010  add.s r5, r1, r5
001c54  3b12be01  bneq r28, r27, 132
001c58  9f231000  addli r7, zero, 10
001c5c  9f000000  addli r1, zero, 0
001c60  2b450000  lui r10, 4
001c64  7d900300  xwait r7, 0
001c68  9f431000  addli r7, zero, 12
001c6c  7d900300  xwait r7, 0
001c70  9f731000  addli r7, zero, 15
001c74  7d900300  xwait r7, 0
001c78  1d800800  lock zero, r17
001c7c  ab03803f  lui r7, 260096
001c80  0d000002  ew_cfg zero, zero, zero, 1
001c84  8d930300  ewcoeff_cfg r7, r7, zero, 0
001c88  9f737000  addli r7, zero, 63
001c8c  0d800304  ew_cfg zero, r7, zero, 2
001c90  0d0b0006  ew_cfg r22, zero, zero, 3
001c94  8b931210  add.s r7, r5, r1
001c98  0b141310  add.s r8, r6, r1
001c9c  9f800002  addli r1, r1, 256
001ca0  ad039400  dsmadd r7, r8, r9, 0
001ca4  bbcfa0fe  bneq r1, r10, -16
001ca8  9f301000  addli r1, zero, 11
001cac  1d900800  unlock r17
001cb0  7d800000  xsignal r1, 0
001cb4  9f501000  addli r1, zero, 13
001cb8  7d800000  xsignal r1, 0
001cbc  9f002000  addli r1, zero, 16
001cc0  7d800000  xsignal r1, 0
001cc4  9f102000  addli r1, zero, 17
001cc8  7d800000  xsignal r1, 0
001ccc  9f601000  addli r1, zero, 14
001cd0  7d800000  xsignal r1, 0
001cd4  5b320000  j 400
001cd8  8b101639  mod.s r1, r12, r17
001cdc  63435fe9  loadli.w r6,  -2900(r30)
001ce0  9bb0e000  slli r1, r1, 14
001ce4  0b936010  add.s r6, r1, r6
001ce8  bb652e00  bneq r28, r2, 376
001cec  9f601000  addli r1, zero, 14
001cf0  ab83ff40  lui r7, 266232
001cf4  1f040000  addli r8, zero, 0
001cf8  ab450000  lui r11, 4
001cfc  7d900000  xwait r1, 0
001d00  9f302000  addli r1, zero, 19
001d04  7d900000  xwait r1, 0
001d08  1d800800  lock zero, r17
001d0c  9f006fe9  addli r1, r30, -2896
001d10  0d000002  ew_cfg zero, zero, zero, 1
001d14  ebd40000  load.d r[10:11], 0(r1)
001d18  9f501000  addli r1, zero, 13
001d1c  0d000504  ew_cfg zero, r10, zero, 2
001d20  ab0400c1  lui r9, 790528
001d24  8d080006  ew_cfg r17, zero, zero, 3
001d28  8d880826  ew_cfg r17, r17, zero, 19
001d2c  8d000014  ew_cfg r1, zero, zero, 10
001d30  e3005fe9  loadli.w r1,  -2904(r30)
001d34  8d081b16  ew_cfg r17, r22, r1, 11
001d38  0d00b01b  ew_cfg zero, zero, r27, 13
001d3c  6305ffe9  loadli.w r10,  -2824(r30)
001d40  8d04791c  ew_cfg r9, r18, r7, 14
001d44  ab03803f  lui r7, 260096
001d48  0d80031e  ew_cfg zero, r7, zero, 15
001d4c  8b101539  mod.s r1, r10, r17
001d50  4da30200  sslut r6, r5, 0
001d54  0d000014  ew_cfg zero, zero, zero, 10
001d58  0d000026  ew_cfg zero, zero, zero, 19
001d5c  1d900800  unlock r17
001d60  e3434fe9  loadli.w r7,  -2908(r30)
001d64  9bb0e000  slli r1, r1, 14
001d68  8b937010  add.s r7, r1, r7
001d6c  9f002000  addli r1, zero, 16
001d70  7d900000  xwait r1, 0
001d74  9f402000  addli r1, zero, 20
001d78  7d900000  xwait r1, 0
001d7c  1d800800  lock zero, r17
001d80  9f707000  addli r1, zero, 63
001d84  0d000002  ew_cfg zero, zero, zero, 1
001d88  0d800004  ew_cfg zero, r1, zero, 2
001d8c  0d0b0006  ew_cfg r22, zero, zero, 3
001d90  e3004fe9  loadli.w r1,  -2912(r30)
001d94  8d100000  ewcoeff_cfg r1, zero, zero, 0
001d98  8b908310  add.s r1, r7, r8
001d9c  8b948210  add.s r9, r5, r8
001da0  1f040402  addli r8, r8, 256
001da4  ada09400  dscmpnsel r1, r9, r9, 0
001da8  bb4fb4fe  bneq r8, r11, -16
001dac  1d900800  unlock r17
001db0  1f747000  addli r8, zero, 63
001db4  9f000000  addli r1, zero, 0
001db8  1d800800  lock zero, r17
001dbc  0d000002  ew_cfg zero, zero, zero, 1
001dc0  0d000404  ew_cfg zero, r8, zero, 2
001dc4  0d0b0006  ew_cfg r22, zero, zero, 3
001dc8  63443fe9  loadli.w r8,  -2916(r30)
001dcc  0d140000  ewcoeff_cfg r8, zero, zero, 0
001dd0  0b941310  add.s r8, r7, r1
001dd4  9f800002  addli r1, r1, 256
001dd8  2d248408  dscmpnsel r8, r8, r8, 4
001ddc  bbdfb0fe  bneq r1, r11, -12
001de0  9f102000  addli r1, zero, 17
001de4  1d900800  unlock r17
001de8  2b0480bf  lui r8, 784384
001dec  9f056fe9  addli r11, r30, -2896
001df0  7d900000  xwait r1, 0
001df4  1d800800  lock zero, r17
001df8  ab00803f  lui r1, 260096
001dfc  0d000002  ew_cfg zero, zero, zero, 1
001e00  8d100400  ewcoeff_cfg r1, r8, zero, 0
001e04  6bd40500  load.d r[9:10], 0(r11)
001e08  0d800404  ew_cfg zero, r9, zero, 2
001e0c  8d080006  ew_cfg r17, zero, zero, 3
001e10  8d881827  ew_cfg r17, r17, r17, 19
001e14  ad827200  dsmadd r5, r5, r7, 0
001e18  9f432000  addli r7, zero, 20
001e1c  0d000026  ew_cfg zero, zero, zero, 19
001e20  1d900800  unlock r17
001e24  7d800300  xsignal r7, 0
001e28  1d800800  lock zero, r17
001e2c  0d000002  ew_cfg zero, zero, zero, 1
001e30  8d900000  ewcoeff_cfg r1, r1, zero, 0
001e34  9f701000  addli r1, zero, 15
001e38  0d800404  ew_cfg zero, r9, zero, 2
001e3c  8d080006  ew_cfg r17, zero, zero, 3
001e40  8d881827  ew_cfg r17, r17, r17, 19
001e44  2d035300  dsmadd r6, r6, r5, 0
001e48  0d000026  ew_cfg zero, zero, zero, 19
001e4c  1d900800  unlock r17
001e50  7d800000  xsignal r1, 0
001e54  9f202000  addli r1, zero, 18
001e58  7d800000  xsignal r1, 0
001e5c  5b4effff  j -1424
001e60  37300e00  beq r28, zero, 12
001e64  6305ffe9  loadli.w r10,  -2824(r30)
001e68  db4cffff  j -1436
001e6c  e3408fe9  loadli.w r1,  -2876(r30)
001e70  1f019fe9  addli r2, r30, -2872
001e74  9f020fea  addli r5, r30, -2816
001e78  003e0002  core_id r28
001e7c  eb5c0100  load.d r[26:27], 0(r2)
001e80  33970028  sext_int2long r[15:16], r1
001e84  9f008003  addli r1, zero, 448
001e88  b38b0028  zext_int2long r[24:25], r1
001e8c  9f102000  addli r1, zero, 17
001e90  97b01c02  sll.d r[2:3], r[26:27], r1
001e94  8b3b7741  min.sl r[24:25], r[15:16], r[24:25]
001e98  eb5c8f01  load.d r[26:27], 24(r30)
001e9c  73b01200  store.d r[2:3], 0(r5)
001ea0  9f02afe9  addli r5, r30, -2864
001ea4  a78b8b00  addli.d r[24:25], r[24:25], 64
001ea8  ebd00200  load.d r[2:3], 0(r5)
001eac  9f02dfe9  addli r5, r30, -2840
001eb0  8bbbeb48  max.sl r[24:25], r[24:25], r[15:16]
001eb4  0bb7eb18  sub.sl r[15:16], r[24:25], r[15:16]
001eb8  97b06003  sll.d r[2:3], r[2:3], r22
001ebc  8b34a740  min.sl r[10:11], r[15:16], r[11:12]
001ec0  73b01200  store.d r[2:3], 0(r5)
001ec4  9f020fea  addli r5, r30, -2816
001ec8  ebd00200  load.d r[2:3], 0(r5)
001ecc  9f02dfe9  addli r5, r30, -2840
001ed0  8bac1c10  add.ul r[26:27], r[26:27], r[2:3]
001ed4  ebd00200  load.d r[2:3], 0(r5)
001ed8  9f520000  addli r5, zero, 5
001edc  8bab1c10  add.ul r[24:25], r[26:27], r[2:3]
001ee0  9f202000  addli r1, zero, 18
001ee4  1f010010  addli r2, zero, 2048
001ee8  1f6d0000  addli r26, zero, 6
001eec  7d900000  xwait r1, 0
001ef0  1d800200  lock zero, r5
001ef4  9bb02300  slli r1, r7, 2
001ef8  150b0000  dma_cfg r22, zero, zero, 0
001efc  15000b02  dma_cfg zero, r22, zero, 1
001f00  150c0004  dma_cfg r24, zero, zero, 2
001f04  950b1306  dma_cfg r23, r6, r1, 3
001f08  9f000002  addli r1, zero, 256
001f0c  15819008  dma_cfg r2, r1, r9, 4
001f10  1f510000  addli r2, zero, 5
001f14  9f302000  addli r1, zero, 19
001f18  35000000  dma_run zero
001f1c  1d900200  unlock r5
001f20  5bb6ffff  j -592
001f24  670fdff2  storeli.w r13, -1552(r30)
001f28  670f4ffa  storeli.w r4, -528(r30)
001f2c  7d000000  xsignal zero, 0
001f30  bb600e00  bneq r28, zero, 56
001f34  9f200000  addli r1, zero, 2
001f38  7d100000  xwait zero, 0
001f3c  7d100000  xwait zero, 0
001f40  7d100000  xwait zero, 0
001f44  7d100000  xwait zero, 0
001f48  7d100000  xwait zero, 0
001f4c  7d100000  xwait zero, 0
001f50  7d100000  xwait zero, 0
001f54  7d100000  xwait zero, 0
001f58  1d800000  lock zero, r1
001f5c  0d000020  ew_cfg zero, zero, zero, 16
001f60  1d900000  unlock r1
001f64  7d400000  xsignal_mode_cfg zero
001f68  9f8ede16  addli sp, sp, 2920
001f6c  00a00300  mfence { lm, sm, gm }
001f70  00100000  exit
001f74  00100000  exit
001f78  00100000  exit
001f7c  00100000  exit
001f80  00100000  exit
001f84  00100000  exit
001f88  00100000  exit
001f8c  00100000  exit
001f90  00100000  exit
001f94  00100000  exit
001f98  00100000  exit
001f9c  00100000  exit
001fa0  00100000  exit
001fa4  00100000  exit
001fa8  00100000  exit
001fac  00100000  exit
001fb0  00100000  exit
001fb4  00100000  exit
001fb8  00100000  exit
001fbc  00100000  exit
001fc0  00100000  exit
001fc4  00100000  exit
001fc8  00100000  exit
001fcc  00100000  exit
001fd0  00100000  exit
001fd4  00100000  exit
001fd8  00100000  exit
001fdc  00100000  exit
001fe0  00100000  exit
001fe4  00100000  exit
001fe8  00100000  exit
001fec  00100000  exit
001ff0  00100000  exit
001ff4  00100000  exit
001ff8  00100000  exit
001ffc  00100000  exit
002000  00100000  exit
002004  00100000  exit
002008  00100000  exit
00200c  00100000  exit
002010  00100000  exit
002014  00100000  exit
002018  00100000  exit
00201c  00100000  exit
002020  00100000  exit
002024  00100000  exit
002028  00100000  exit
00202c  00100000  exit
002030  00100000  exit
002034  00100000  exit
002038  00100000  exit
00203c  00100000  exit
002040  00100000  exit
002044  00100000  exit
002048  00100000  exit
00204c  00100000  exit
002050  00100000  exit
002054  00100000  exit
002058  00100000  exit
00205c  00100000  exit
002060  00100000  exit
002064  00100000  exit
002068  00100000  exit
00206c  00100000  exit
002070  00100000  exit
002074  00100000  exit
002078  00100000  exit
00207c  00100000  exit
002080  00100000  exit
002084  00100000  exit
002088  00100000  exit
00208c  00100000  exit
002090  00100000  exit
002094  00100000  exit
002098  00100000  exit
00209c  00100000  exit
0020a0  00100000  exit
0020a4  00100000  exit
0020a8  00100000  exit
0020ac  00100000  exit
0020b0  00100000  exit
0020b4  00100000  exit
0020b8  00100000  exit
0020bc  00100000  exit
0020c0  00100000  exit
0020c4  00100000  exit
0020c8  00100000  exit
0020cc  00100000  exit
0020d0  00100000  exit
0020d4  00100000  exit
0020d8  00100000  exit
0020dc  00100000  exit
0020e0  00100000  exit
0020e4  00100000  exit
0020e8  00100000  exit
0020ec  00100000  exit
0020f0  00100000  exit
0020f4  00100000  exit
0020f8  00100000  exit
0020fc  00100000  exit
002100  00100000  exit
002104  00100000  exit
002108  00100000  exit
00210c  00100000  exit
002110  00100000  exit
002114  00100000  exit
002118  00100000  exit
00211c  00100000  exit
002120  00100000  exit
002124  00100000  exit
002128  00100000  exit
00212c  00100000  exit
002130  00100000  exit
002134  00100000  exit
002138  00100000  exit
00213c  00100000  exit
002140  00100000  exit
002144  00100000  exit
002148  00100000  exit
00214c  00100000  exit
002150  00100000  exit
002154  00100000  exit
002158  00100000  exit
00215c  00100000  exit
002160  00100000  exit
002164  00100000  exit
002168  00100000  exit
00216c  00100000  exit
002170  00100000  exit
002174  00100000  exit
002178  00100000  exit
00217c  00100000  exit
002180  00100000  exit
002184  00100000  exit
002188  00100000  exit
00218c  00100000  exit
002190  00100000  exit
002194  00100000  exit
002198  00100000  exit
00219c  00100000  exit
0021a0  00100000  exit
0021a4  00100000  exit
0021a8  00100000  exit
0021ac  00100000  exit
0021b0  00100000  exit
