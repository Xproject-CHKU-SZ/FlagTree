; SHA-256 0c087949988f851abfe270f8cb7e8c35f23ced7176c2d7b61822ca8c31ff7f8c
; P800 SDNN · XTDK LLVM 19 · 3073 / 3073 words decoded
; bound names: triton_tem_fused_addmm_0
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
0000b4  9f8eeede  addli sp, sp, -4240
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8fae20  addli r30, sp, 4176
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b070200  j 4152
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f411000  addli r2, zero, 12
000100  80a10004  csr_set csr3, r1
000104  9f500000  addli r1, zero, 5
000108  00d00100  sync_group
00010c  7d000100  xsignal r2, 0
000110  1f310000  addli r2, zero, 3
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  7d800000  xsignal r1, 0
000124  7d800000  xsignal r1, 0
000128  7d800000  xsignal r1, 0
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d800000  xsignal r1, 0
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
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
000510  9f101000  addli r1, zero, 9
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
000910  1f710000  addli r2, zero, 7
000914  7d800000  xsignal r1, 0
000918  7d800000  xsignal r1, 0
00091c  7d800000  xsignal r1, 0
000920  7d800000  xsignal r1, 0
000924  7d800000  xsignal r1, 0
000928  7d800000  xsignal r1, 0
00092c  7d800000  xsignal r1, 0
000930  7d800000  xsignal r1, 0
000934  7d800000  xsignal r1, 0
000938  7d800000  xsignal r1, 0
00093c  7d800000  xsignal r1, 0
000940  7d800000  xsignal r1, 0
000944  7d800000  xsignal r1, 0
000948  7d800000  xsignal r1, 0
00094c  7d800000  xsignal r1, 0
000950  7d800000  xsignal r1, 0
000954  7d800000  xsignal r1, 0
000958  7d800000  xsignal r1, 0
00095c  7d800000  xsignal r1, 0
000960  7d800000  xsignal r1, 0
000964  7d800000  xsignal r1, 0
000968  7d800000  xsignal r1, 0
00096c  7d800000  xsignal r1, 0
000970  7d800000  xsignal r1, 0
000974  7d800000  xsignal r1, 0
000978  7d800000  xsignal r1, 0
00097c  7d800000  xsignal r1, 0
000980  7d800000  xsignal r1, 0
000984  7d800000  xsignal r1, 0
000988  7d800000  xsignal r1, 0
00098c  7d800000  xsignal r1, 0
000990  7d800000  xsignal r1, 0
000994  7d800000  xsignal r1, 0
000998  7d800000  xsignal r1, 0
00099c  7d800000  xsignal r1, 0
0009a0  7d800000  xsignal r1, 0
0009a4  7d800000  xsignal r1, 0
0009a8  7d800000  xsignal r1, 0
0009ac  7d800000  xsignal r1, 0
0009b0  7d800000  xsignal r1, 0
0009b4  7d800000  xsignal r1, 0
0009b8  7d800000  xsignal r1, 0
0009bc  7d800000  xsignal r1, 0
0009c0  7d800000  xsignal r1, 0
0009c4  7d800000  xsignal r1, 0
0009c8  7d800000  xsignal r1, 0
0009cc  7d800000  xsignal r1, 0
0009d0  7d800000  xsignal r1, 0
0009d4  7d800000  xsignal r1, 0
0009d8  7d800000  xsignal r1, 0
0009dc  7d800000  xsignal r1, 0
0009e0  7d800000  xsignal r1, 0
0009e4  7d800000  xsignal r1, 0
0009e8  7d800000  xsignal r1, 0
0009ec  7d800000  xsignal r1, 0
0009f0  7d800000  xsignal r1, 0
0009f4  7d800000  xsignal r1, 0
0009f8  7d800000  xsignal r1, 0
0009fc  7d800000  xsignal r1, 0
000a00  7d800000  xsignal r1, 0
000a04  7d800000  xsignal r1, 0
000a08  7d800000  xsignal r1, 0
000a0c  7d800000  xsignal r1, 0
000a10  7d800000  xsignal r1, 0
000a14  7d800000  xsignal r1, 0
000a18  7d800000  xsignal r1, 0
000a1c  7d800000  xsignal r1, 0
000a20  7d800000  xsignal r1, 0
000a24  7d800000  xsignal r1, 0
000a28  7d800000  xsignal r1, 0
000a2c  7d800000  xsignal r1, 0
000a30  7d800000  xsignal r1, 0
000a34  7d800000  xsignal r1, 0
000a38  7d800000  xsignal r1, 0
000a3c  7d800000  xsignal r1, 0
000a40  7d800000  xsignal r1, 0
000a44  7d800000  xsignal r1, 0
000a48  7d800000  xsignal r1, 0
000a4c  7d800000  xsignal r1, 0
000a50  7d800000  xsignal r1, 0
000a54  7d800000  xsignal r1, 0
000a58  7d800000  xsignal r1, 0
000a5c  7d800000  xsignal r1, 0
000a60  7d800000  xsignal r1, 0
000a64  7d800000  xsignal r1, 0
000a68  7d800000  xsignal r1, 0
000a6c  7d800000  xsignal r1, 0
000a70  7d800000  xsignal r1, 0
000a74  7d800000  xsignal r1, 0
000a78  7d800000  xsignal r1, 0
000a7c  7d800000  xsignal r1, 0
000a80  7d800000  xsignal r1, 0
000a84  7d800000  xsignal r1, 0
000a88  7d800000  xsignal r1, 0
000a8c  7d800000  xsignal r1, 0
000a90  7d800000  xsignal r1, 0
000a94  7d800000  xsignal r1, 0
000a98  7d800000  xsignal r1, 0
000a9c  7d800000  xsignal r1, 0
000aa0  7d800000  xsignal r1, 0
000aa4  7d800000  xsignal r1, 0
000aa8  7d800000  xsignal r1, 0
000aac  7d800000  xsignal r1, 0
000ab0  7d800000  xsignal r1, 0
000ab4  7d800000  xsignal r1, 0
000ab8  7d800000  xsignal r1, 0
000abc  7d800000  xsignal r1, 0
000ac0  7d800000  xsignal r1, 0
000ac4  7d800000  xsignal r1, 0
000ac8  7d800000  xsignal r1, 0
000acc  7d800000  xsignal r1, 0
000ad0  7d800000  xsignal r1, 0
000ad4  7d800000  xsignal r1, 0
000ad8  7d800000  xsignal r1, 0
000adc  7d800000  xsignal r1, 0
000ae0  7d800000  xsignal r1, 0
000ae4  7d800000  xsignal r1, 0
000ae8  7d800000  xsignal r1, 0
000aec  7d800000  xsignal r1, 0
000af0  7d800000  xsignal r1, 0
000af4  7d800000  xsignal r1, 0
000af8  7d800000  xsignal r1, 0
000afc  7d800000  xsignal r1, 0
000b00  7d800000  xsignal r1, 0
000b04  7d800000  xsignal r1, 0
000b08  7d800000  xsignal r1, 0
000b0c  7d800000  xsignal r1, 0
000b10  7d800000  xsignal r1, 0
000b14  7d800000  xsignal r1, 0
000b18  7d800000  xsignal r1, 0
000b1c  7d800000  xsignal r1, 0
000b20  7d800000  xsignal r1, 0
000b24  7d800000  xsignal r1, 0
000b28  7d800000  xsignal r1, 0
000b2c  7d800000  xsignal r1, 0
000b30  7d800000  xsignal r1, 0
000b34  7d800000  xsignal r1, 0
000b38  7d800000  xsignal r1, 0
000b3c  7d800000  xsignal r1, 0
000b40  7d800000  xsignal r1, 0
000b44  7d800000  xsignal r1, 0
000b48  7d800000  xsignal r1, 0
000b4c  7d800000  xsignal r1, 0
000b50  7d800000  xsignal r1, 0
000b54  7d800000  xsignal r1, 0
000b58  7d800000  xsignal r1, 0
000b5c  7d800000  xsignal r1, 0
000b60  7d800000  xsignal r1, 0
000b64  7d800000  xsignal r1, 0
000b68  7d800000  xsignal r1, 0
000b6c  7d800000  xsignal r1, 0
000b70  7d800000  xsignal r1, 0
000b74  7d800000  xsignal r1, 0
000b78  7d800000  xsignal r1, 0
000b7c  7d800000  xsignal r1, 0
000b80  7d800000  xsignal r1, 0
000b84  7d800000  xsignal r1, 0
000b88  7d800000  xsignal r1, 0
000b8c  7d800000  xsignal r1, 0
000b90  7d800000  xsignal r1, 0
000b94  7d800000  xsignal r1, 0
000b98  7d800000  xsignal r1, 0
000b9c  7d800000  xsignal r1, 0
000ba0  7d800000  xsignal r1, 0
000ba4  7d800000  xsignal r1, 0
000ba8  7d800000  xsignal r1, 0
000bac  7d800000  xsignal r1, 0
000bb0  7d800000  xsignal r1, 0
000bb4  7d800000  xsignal r1, 0
000bb8  7d800000  xsignal r1, 0
000bbc  7d800000  xsignal r1, 0
000bc0  7d800000  xsignal r1, 0
000bc4  7d800000  xsignal r1, 0
000bc8  7d800000  xsignal r1, 0
000bcc  7d800000  xsignal r1, 0
000bd0  7d800000  xsignal r1, 0
000bd4  7d800000  xsignal r1, 0
000bd8  7d800000  xsignal r1, 0
000bdc  7d800000  xsignal r1, 0
000be0  7d800000  xsignal r1, 0
000be4  7d800000  xsignal r1, 0
000be8  7d800000  xsignal r1, 0
000bec  7d800000  xsignal r1, 0
000bf0  7d800000  xsignal r1, 0
000bf4  7d800000  xsignal r1, 0
000bf8  7d800000  xsignal r1, 0
000bfc  7d800000  xsignal r1, 0
000c00  7d800000  xsignal r1, 0
000c04  7d800000  xsignal r1, 0
000c08  7d800000  xsignal r1, 0
000c0c  7d800000  xsignal r1, 0
000c10  7d800000  xsignal r1, 0
000c14  7d800000  xsignal r1, 0
000c18  7d800000  xsignal r1, 0
000c1c  7d800000  xsignal r1, 0
000c20  7d800000  xsignal r1, 0
000c24  7d800000  xsignal r1, 0
000c28  7d800000  xsignal r1, 0
000c2c  7d800000  xsignal r1, 0
000c30  7d800000  xsignal r1, 0
000c34  7d800000  xsignal r1, 0
000c38  7d800000  xsignal r1, 0
000c3c  7d800000  xsignal r1, 0
000c40  7d800000  xsignal r1, 0
000c44  7d800000  xsignal r1, 0
000c48  7d800000  xsignal r1, 0
000c4c  7d800000  xsignal r1, 0
000c50  7d800000  xsignal r1, 0
000c54  7d800000  xsignal r1, 0
000c58  7d800000  xsignal r1, 0
000c5c  7d800000  xsignal r1, 0
000c60  7d800000  xsignal r1, 0
000c64  7d800000  xsignal r1, 0
000c68  7d800000  xsignal r1, 0
000c6c  7d800000  xsignal r1, 0
000c70  7d800000  xsignal r1, 0
000c74  7d800000  xsignal r1, 0
000c78  7d800000  xsignal r1, 0
000c7c  7d800000  xsignal r1, 0
000c80  7d800000  xsignal r1, 0
000c84  7d800000  xsignal r1, 0
000c88  7d800000  xsignal r1, 0
000c8c  7d800000  xsignal r1, 0
000c90  7d800000  xsignal r1, 0
000c94  7d800000  xsignal r1, 0
000c98  7d800000  xsignal r1, 0
000c9c  7d800000  xsignal r1, 0
000ca0  7d800000  xsignal r1, 0
000ca4  7d800000  xsignal r1, 0
000ca8  7d800000  xsignal r1, 0
000cac  7d800000  xsignal r1, 0
000cb0  7d800000  xsignal r1, 0
000cb4  7d800000  xsignal r1, 0
000cb8  7d800000  xsignal r1, 0
000cbc  7d800000  xsignal r1, 0
000cc0  7d800000  xsignal r1, 0
000cc4  7d800000  xsignal r1, 0
000cc8  7d800000  xsignal r1, 0
000ccc  7d800000  xsignal r1, 0
000cd0  7d800000  xsignal r1, 0
000cd4  7d800000  xsignal r1, 0
000cd8  7d800000  xsignal r1, 0
000cdc  7d800000  xsignal r1, 0
000ce0  7d800000  xsignal r1, 0
000ce4  7d800000  xsignal r1, 0
000ce8  7d800000  xsignal r1, 0
000cec  7d800000  xsignal r1, 0
000cf0  7d800000  xsignal r1, 0
000cf4  7d800000  xsignal r1, 0
000cf8  7d800000  xsignal r1, 0
000cfc  7d800000  xsignal r1, 0
000d00  7d800000  xsignal r1, 0
000d04  7d800000  xsignal r1, 0
000d08  7d800000  xsignal r1, 0
000d0c  7d800000  xsignal r1, 0
000d10  9f601000  addli r1, zero, 14
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
000d9c  7d000100  xsignal r2, 0
000da0  7d000100  xsignal r2, 0
000da4  7d000100  xsignal r2, 0
000da8  7d000100  xsignal r2, 0
000dac  7d000100  xsignal r2, 0
000db0  7d000100  xsignal r2, 0
000db4  7d000100  xsignal r2, 0
000db8  7d000100  xsignal r2, 0
000dbc  7d000100  xsignal r2, 0
000dc0  7d000100  xsignal r2, 0
000dc4  7d000100  xsignal r2, 0
000dc8  7d000100  xsignal r2, 0
000dcc  7d000100  xsignal r2, 0
000dd0  7d000100  xsignal r2, 0
000dd4  7d000100  xsignal r2, 0
000dd8  7d000100  xsignal r2, 0
000ddc  7d000100  xsignal r2, 0
000de0  7d000100  xsignal r2, 0
000de4  7d000100  xsignal r2, 0
000de8  7d000100  xsignal r2, 0
000dec  7d000100  xsignal r2, 0
000df0  7d000100  xsignal r2, 0
000df4  7d000100  xsignal r2, 0
000df8  7d000100  xsignal r2, 0
000dfc  7d000100  xsignal r2, 0
000e00  7d000100  xsignal r2, 0
000e04  7d000100  xsignal r2, 0
000e08  7d000100  xsignal r2, 0
000e0c  7d000100  xsignal r2, 0
000e10  7d000100  xsignal r2, 0
000e14  7d000100  xsignal r2, 0
000e18  7d000100  xsignal r2, 0
000e1c  7d000100  xsignal r2, 0
000e20  7d000100  xsignal r2, 0
000e24  7d000100  xsignal r2, 0
000e28  7d000100  xsignal r2, 0
000e2c  7d000100  xsignal r2, 0
000e30  7d000100  xsignal r2, 0
000e34  7d000100  xsignal r2, 0
000e38  7d000100  xsignal r2, 0
000e3c  7d000100  xsignal r2, 0
000e40  7d000100  xsignal r2, 0
000e44  7d000100  xsignal r2, 0
000e48  7d000100  xsignal r2, 0
000e4c  7d000100  xsignal r2, 0
000e50  7d000100  xsignal r2, 0
000e54  7d000100  xsignal r2, 0
000e58  7d000100  xsignal r2, 0
000e5c  7d000100  xsignal r2, 0
000e60  7d000100  xsignal r2, 0
000e64  7d000100  xsignal r2, 0
000e68  7d000100  xsignal r2, 0
000e6c  7d000100  xsignal r2, 0
000e70  7d000100  xsignal r2, 0
000e74  7d000100  xsignal r2, 0
000e78  7d000100  xsignal r2, 0
000e7c  7d000100  xsignal r2, 0
000e80  7d000100  xsignal r2, 0
000e84  7d000100  xsignal r2, 0
000e88  7d000100  xsignal r2, 0
000e8c  7d000100  xsignal r2, 0
000e90  7d000100  xsignal r2, 0
000e94  7d000100  xsignal r2, 0
000e98  7d000100  xsignal r2, 0
000e9c  7d000100  xsignal r2, 0
000ea0  7d000100  xsignal r2, 0
000ea4  7d000100  xsignal r2, 0
000ea8  7d000100  xsignal r2, 0
000eac  7d000100  xsignal r2, 0
000eb0  7d000100  xsignal r2, 0
000eb4  7d000100  xsignal r2, 0
000eb8  7d000100  xsignal r2, 0
000ebc  7d000100  xsignal r2, 0
000ec0  7d000100  xsignal r2, 0
000ec4  7d000100  xsignal r2, 0
000ec8  7d000100  xsignal r2, 0
000ecc  7d000100  xsignal r2, 0
000ed0  7d000100  xsignal r2, 0
000ed4  7d000100  xsignal r2, 0
000ed8  7d000100  xsignal r2, 0
000edc  7d000100  xsignal r2, 0
000ee0  7d000100  xsignal r2, 0
000ee4  7d000100  xsignal r2, 0
000ee8  7d000100  xsignal r2, 0
000eec  7d000100  xsignal r2, 0
000ef0  7d000100  xsignal r2, 0
000ef4  7d000100  xsignal r2, 0
000ef8  7d000100  xsignal r2, 0
000efc  7d000100  xsignal r2, 0
000f00  7d000100  xsignal r2, 0
000f04  7d000100  xsignal r2, 0
000f08  7d000100  xsignal r2, 0
000f0c  7d000100  xsignal r2, 0
000f10  7d000100  xsignal r2, 0
000f14  7d000100  xsignal r2, 0
000f18  7d000100  xsignal r2, 0
000f1c  7d000100  xsignal r2, 0
000f20  7d000100  xsignal r2, 0
000f24  7d000100  xsignal r2, 0
000f28  7d000100  xsignal r2, 0
000f2c  7d000100  xsignal r2, 0
000f30  7d000100  xsignal r2, 0
000f34  7d000100  xsignal r2, 0
000f38  7d000100  xsignal r2, 0
000f3c  7d000100  xsignal r2, 0
000f40  7d000100  xsignal r2, 0
000f44  7d000100  xsignal r2, 0
000f48  7d000100  xsignal r2, 0
000f4c  7d000100  xsignal r2, 0
000f50  7d000100  xsignal r2, 0
000f54  7d000100  xsignal r2, 0
000f58  7d000100  xsignal r2, 0
000f5c  7d000100  xsignal r2, 0
000f60  7d000100  xsignal r2, 0
000f64  7d000100  xsignal r2, 0
000f68  7d000100  xsignal r2, 0
000f6c  7d000100  xsignal r2, 0
000f70  7d000100  xsignal r2, 0
000f74  7d000100  xsignal r2, 0
000f78  7d000100  xsignal r2, 0
000f7c  7d000100  xsignal r2, 0
000f80  7d000100  xsignal r2, 0
000f84  7d000100  xsignal r2, 0
000f88  7d000100  xsignal r2, 0
000f8c  7d000100  xsignal r2, 0
000f90  7d000100  xsignal r2, 0
000f94  7d000100  xsignal r2, 0
000f98  7d000100  xsignal r2, 0
000f9c  7d000100  xsignal r2, 0
000fa0  7d000100  xsignal r2, 0
000fa4  7d000100  xsignal r2, 0
000fa8  7d000100  xsignal r2, 0
000fac  7d000100  xsignal r2, 0
000fb0  7d000100  xsignal r2, 0
000fb4  7d000100  xsignal r2, 0
000fb8  7d000100  xsignal r2, 0
000fbc  7d000100  xsignal r2, 0
000fc0  7d000100  xsignal r2, 0
000fc4  7d000100  xsignal r2, 0
000fc8  7d000100  xsignal r2, 0
000fcc  7d000100  xsignal r2, 0
000fd0  7d000100  xsignal r2, 0
000fd4  7d000100  xsignal r2, 0
000fd8  7d000100  xsignal r2, 0
000fdc  7d000100  xsignal r2, 0
000fe0  7d000100  xsignal r2, 0
000fe4  7d000100  xsignal r2, 0
000fe8  7d000100  xsignal r2, 0
000fec  7d000100  xsignal r2, 0
000ff0  7d000100  xsignal r2, 0
000ff4  7d000100  xsignal r2, 0
000ff8  7d000100  xsignal r2, 0
000ffc  7d000100  xsignal r2, 0
001000  7d000100  xsignal r2, 0
001004  7d000100  xsignal r2, 0
001008  7d000100  xsignal r2, 0
00100c  7d000100  xsignal r2, 0
001010  7d000100  xsignal r2, 0
001014  7d000100  xsignal r2, 0
001018  7d000100  xsignal r2, 0
00101c  7d000100  xsignal r2, 0
001020  7d000100  xsignal r2, 0
001024  7d000100  xsignal r2, 0
001028  7d000100  xsignal r2, 0
00102c  7d000100  xsignal r2, 0
001030  7d000100  xsignal r2, 0
001034  7d000100  xsignal r2, 0
001038  7d000100  xsignal r2, 0
00103c  7d000100  xsignal r2, 0
001040  7d000100  xsignal r2, 0
001044  7d000100  xsignal r2, 0
001048  7d000100  xsignal r2, 0
00104c  7d000100  xsignal r2, 0
001050  7d000100  xsignal r2, 0
001054  7d000100  xsignal r2, 0
001058  7d000100  xsignal r2, 0
00105c  7d000100  xsignal r2, 0
001060  7d000100  xsignal r2, 0
001064  7d000100  xsignal r2, 0
001068  7d000100  xsignal r2, 0
00106c  7d000100  xsignal r2, 0
001070  7d000100  xsignal r2, 0
001074  7d000100  xsignal r2, 0
001078  7d000100  xsignal r2, 0
00107c  7d000100  xsignal r2, 0
001080  7d000100  xsignal r2, 0
001084  7d000100  xsignal r2, 0
001088  7d000100  xsignal r2, 0
00108c  7d000100  xsignal r2, 0
001090  7d000100  xsignal r2, 0
001094  7d000100  xsignal r2, 0
001098  7d000100  xsignal r2, 0
00109c  7d000100  xsignal r2, 0
0010a0  7d000100  xsignal r2, 0
0010a4  7d000100  xsignal r2, 0
0010a8  7d000100  xsignal r2, 0
0010ac  7d000100  xsignal r2, 0
0010b0  7d000100  xsignal r2, 0
0010b4  7d000100  xsignal r2, 0
0010b8  7d000100  xsignal r2, 0
0010bc  7d000100  xsignal r2, 0
0010c0  7d000100  xsignal r2, 0
0010c4  7d000100  xsignal r2, 0
0010c8  7d000100  xsignal r2, 0
0010cc  7d000100  xsignal r2, 0
0010d0  7d000100  xsignal r2, 0
0010d4  7d000100  xsignal r2, 0
0010d8  7d000100  xsignal r2, 0
0010dc  7d000100  xsignal r2, 0
0010e0  7d000100  xsignal r2, 0
0010e4  7d000100  xsignal r2, 0
0010e8  7d000100  xsignal r2, 0
0010ec  7d000100  xsignal r2, 0
0010f0  7d000100  xsignal r2, 0
0010f4  7d000100  xsignal r2, 0
0010f8  7d000100  xsignal r2, 0
0010fc  7d000100  xsignal r2, 0
001100  7d000100  xsignal r2, 0
001104  7d000100  xsignal r2, 0
001108  7d000100  xsignal r2, 0
00110c  7d000100  xsignal r2, 0
001110  7d800000  xsignal r1, 0
001114  e3004f00  loadli.w r1,  32(r30)
001118  63414f00  loadli.w r2,  36(r30)
00111c  00d20002  load_param_i r4, 1
001120  e3015f00  loadli.w r3,  40(r30)
001124  abf3ffff  lui r7, 1048575
001128  9f02afdf  addli r5, r30, -4144
00112c  67000ff8  storeli.w zero, -1024(r30)
001130  67000ff0  storeli.w zero, -2048(r30)
001134  1b94f3ff  ori r8, r7, 4095
001138  8b101120  mul.s r1, r2, r1
00113c  1f010200  addli r2, r4, 0
001140  67408ff8  storeli.w r8, -1020(r30)
001144  e7008ff8  storeli.w r8, -1016(r30)
001148  e7408ff8  storeli.w r8, -1012(r30)
00114c  67018ff8  storeli.w r8, -1008(r30)
001150  67418ff8  storeli.w r8, -1004(r30)
001154  e7018ff8  storeli.w r8, -1000(r30)
001158  e7418ff8  storeli.w r8, -996(r30)
00115c  67028ff8  storeli.w r8, -992(r30)
001160  67428ff8  storeli.w r8, -988(r30)
001164  e7028ff8  storeli.w r8, -984(r30)
001168  e7428ff8  storeli.w r8, -980(r30)
00116c  67038ff8  storeli.w r8, -976(r30)
001170  67438ff8  storeli.w r8, -972(r30)
001174  e7038ff8  storeli.w r8, -968(r30)
001178  e7438ff8  storeli.w r8, -964(r30)
00117c  67048ff8  storeli.w r8, -960(r30)
001180  67448ff8  storeli.w r8, -956(r30)
001184  e7048ff8  storeli.w r8, -952(r30)
001188  e7448ff8  storeli.w r8, -948(r30)
00118c  67058ff8  storeli.w r8, -944(r30)
001190  67458ff8  storeli.w r8, -940(r30)
001194  e7058ff8  storeli.w r8, -936(r30)
001198  e7458ff8  storeli.w r8, -932(r30)
00119c  67068ff8  storeli.w r8, -928(r30)
0011a0  67468ff8  storeli.w r8, -924(r30)
0011a4  e7068ff8  storeli.w r8, -920(r30)
0011a8  e7468ff8  storeli.w r8, -916(r30)
0011ac  67078ff8  storeli.w r8, -912(r30)
0011b0  67478ff8  storeli.w r8, -908(r30)
0011b4  e7078ff8  storeli.w r8, -904(r30)
0011b8  e7478ff8  storeli.w r8, -900(r30)
0011bc  67088ff8  storeli.w r8, -896(r30)
0011c0  67488ff8  storeli.w r8, -892(r30)
0011c4  e7088ff8  storeli.w r8, -888(r30)
0011c8  e7488ff8  storeli.w r8, -884(r30)
0011cc  67098ff8  storeli.w r8, -880(r30)
0011d0  67498ff8  storeli.w r8, -876(r30)
0011d4  e7098ff8  storeli.w r8, -872(r30)
0011d8  e7498ff8  storeli.w r8, -868(r30)
0011dc  670a8ff8  storeli.w r8, -864(r30)
0011e0  674a8ff8  storeli.w r8, -860(r30)
0011e4  e70a8ff8  storeli.w r8, -856(r30)
0011e8  e74a8ff8  storeli.w r8, -852(r30)
0011ec  670b8ff8  storeli.w r8, -848(r30)
0011f0  674b8ff8  storeli.w r8, -844(r30)
0011f4  e70b8ff8  storeli.w r8, -840(r30)
0011f8  e74b8ff8  storeli.w r8, -836(r30)
0011fc  670c8ff8  storeli.w r8, -832(r30)
001200  674c8ff8  storeli.w r8, -828(r30)
001204  e70c8ff8  storeli.w r8, -824(r30)
001208  e74c8ff8  storeli.w r8, -820(r30)
00120c  670d8ff8  storeli.w r8, -816(r30)
001210  674d8ff8  storeli.w r8, -812(r30)
001214  e70d8ff8  storeli.w r8, -808(r30)
001218  e74d8ff8  storeli.w r8, -804(r30)
00121c  670e8ff8  storeli.w r8, -800(r30)
001220  674e8ff8  storeli.w r8, -796(r30)
001224  e70e8ff8  storeli.w r8, -792(r30)
001228  e74e8ff8  storeli.w r8, -788(r30)
00122c  670f8ff8  storeli.w r8, -784(r30)
001230  674f8ff8  storeli.w r8, -780(r30)
001234  e70f8ff8  storeli.w r8, -776(r30)
001238  e74f8ff8  storeli.w r8, -772(r30)
00123c  67008ffa  storeli.w r8, -768(r30)
001240  67408ffa  storeli.w r8, -764(r30)
001244  e7008ffa  storeli.w r8, -760(r30)
001248  e7408ffa  storeli.w r8, -756(r30)
00124c  67018ffa  storeli.w r8, -752(r30)
001250  67418ffa  storeli.w r8, -748(r30)
001254  e7018ffa  storeli.w r8, -744(r30)
001258  e7418ffa  storeli.w r8, -740(r30)
00125c  67028ffa  storeli.w r8, -736(r30)
001260  67428ffa  storeli.w r8, -732(r30)
001264  e7028ffa  storeli.w r8, -728(r30)
001268  e7428ffa  storeli.w r8, -724(r30)
00126c  67038ffa  storeli.w r8, -720(r30)
001270  67438ffa  storeli.w r8, -716(r30)
001274  e7038ffa  storeli.w r8, -712(r30)
001278  e7438ffa  storeli.w r8, -708(r30)
00127c  67048ffa  storeli.w r8, -704(r30)
001280  67448ffa  storeli.w r8, -700(r30)
001284  e7048ffa  storeli.w r8, -696(r30)
001288  e7448ffa  storeli.w r8, -692(r30)
00128c  67058ffa  storeli.w r8, -688(r30)
001290  67458ffa  storeli.w r8, -684(r30)
001294  e7058ffa  storeli.w r8, -680(r30)
001298  e7458ffa  storeli.w r8, -676(r30)
00129c  67068ffa  storeli.w r8, -672(r30)
0012a0  67468ffa  storeli.w r8, -668(r30)
0012a4  e7068ffa  storeli.w r8, -664(r30)
0012a8  e7468ffa  storeli.w r8, -660(r30)
0012ac  67078ffa  storeli.w r8, -656(r30)
0012b0  67478ffa  storeli.w r8, -652(r30)
0012b4  e7078ffa  storeli.w r8, -648(r30)
0012b8  e7478ffa  storeli.w r8, -644(r30)
0012bc  67088ffa  storeli.w r8, -640(r30)
0012c0  67488ffa  storeli.w r8, -636(r30)
0012c4  e7088ffa  storeli.w r8, -632(r30)
0012c8  e7488ffa  storeli.w r8, -628(r30)
0012cc  67098ffa  storeli.w r8, -624(r30)
0012d0  67498ffa  storeli.w r8, -620(r30)
0012d4  e7098ffa  storeli.w r8, -616(r30)
0012d8  e7498ffa  storeli.w r8, -612(r30)
0012dc  670a8ffa  storeli.w r8, -608(r30)
0012e0  674a8ffa  storeli.w r8, -604(r30)
0012e4  e70a8ffa  storeli.w r8, -600(r30)
0012e8  e74a8ffa  storeli.w r8, -596(r30)
0012ec  670b8ffa  storeli.w r8, -592(r30)
0012f0  674b8ffa  storeli.w r8, -588(r30)
0012f4  e70b8ffa  storeli.w r8, -584(r30)
0012f8  e74b8ffa  storeli.w r8, -580(r30)
0012fc  670c8ffa  storeli.w r8, -576(r30)
001300  674c8ffa  storeli.w r8, -572(r30)
001304  e70c8ffa  storeli.w r8, -568(r30)
001308  e74c8ffa  storeli.w r8, -564(r30)
00130c  670d8ffa  storeli.w r8, -560(r30)
001310  674d8ffa  storeli.w r8, -556(r30)
001314  e70d8ffa  storeli.w r8, -552(r30)
001318  e74d8ffa  storeli.w r8, -548(r30)
00131c  670e8ffa  storeli.w r8, -544(r30)
001320  674e8ffa  storeli.w r8, -540(r30)
001324  e70e8ffa  storeli.w r8, -536(r30)
001328  e74e8ffa  storeli.w r8, -532(r30)
00132c  670f8ffa  storeli.w r8, -528(r30)
001330  674f8ffa  storeli.w r8, -524(r30)
001334  e70f8ffa  storeli.w r8, -520(r30)
001338  e74f8ffa  storeli.w r8, -516(r30)
00133c  67008ffc  storeli.w r8, -512(r30)
001340  67408ffc  storeli.w r8, -508(r30)
001344  e7008ffc  storeli.w r8, -504(r30)
001348  e7408ffc  storeli.w r8, -500(r30)
00134c  67018ffc  storeli.w r8, -496(r30)
001350  67418ffc  storeli.w r8, -492(r30)
001354  e7018ffc  storeli.w r8, -488(r30)
001358  e7418ffc  storeli.w r8, -484(r30)
00135c  67028ffc  storeli.w r8, -480(r30)
001360  67428ffc  storeli.w r8, -476(r30)
001364  e7028ffc  storeli.w r8, -472(r30)
001368  e7428ffc  storeli.w r8, -468(r30)
00136c  67038ffc  storeli.w r8, -464(r30)
001370  67438ffc  storeli.w r8, -460(r30)
001374  e7038ffc  storeli.w r8, -456(r30)
001378  e7438ffc  storeli.w r8, -452(r30)
00137c  67048ffc  storeli.w r8, -448(r30)
001380  67448ffc  storeli.w r8, -444(r30)
001384  e7048ffc  storeli.w r8, -440(r30)
001388  e7448ffc  storeli.w r8, -436(r30)
00138c  67058ffc  storeli.w r8, -432(r30)
001390  67458ffc  storeli.w r8, -428(r30)
001394  e7058ffc  storeli.w r8, -424(r30)
001398  e7458ffc  storeli.w r8, -420(r30)
00139c  67068ffc  storeli.w r8, -416(r30)
0013a0  67468ffc  storeli.w r8, -412(r30)
0013a4  e7068ffc  storeli.w r8, -408(r30)
0013a8  e7468ffc  storeli.w r8, -404(r30)
0013ac  67078ffc  storeli.w r8, -400(r30)
0013b0  67478ffc  storeli.w r8, -396(r30)
0013b4  e7078ffc  storeli.w r8, -392(r30)
0013b8  e7478ffc  storeli.w r8, -388(r30)
0013bc  67088ffc  storeli.w r8, -384(r30)
0013c0  67488ffc  storeli.w r8, -380(r30)
0013c4  e7088ffc  storeli.w r8, -376(r30)
0013c8  e7488ffc  storeli.w r8, -372(r30)
0013cc  67098ffc  storeli.w r8, -368(r30)
0013d0  67498ffc  storeli.w r8, -364(r30)
0013d4  e7098ffc  storeli.w r8, -360(r30)
0013d8  e7498ffc  storeli.w r8, -356(r30)
0013dc  670a8ffc  storeli.w r8, -352(r30)
0013e0  674a8ffc  storeli.w r8, -348(r30)
0013e4  e70a8ffc  storeli.w r8, -344(r30)
0013e8  e74a8ffc  storeli.w r8, -340(r30)
0013ec  670b8ffc  storeli.w r8, -336(r30)
0013f0  674b8ffc  storeli.w r8, -332(r30)
0013f4  e70b8ffc  storeli.w r8, -328(r30)
0013f8  e74b8ffc  storeli.w r8, -324(r30)
0013fc  670c8ffc  storeli.w r8, -320(r30)
001400  674c8ffc  storeli.w r8, -316(r30)
001404  e70c8ffc  storeli.w r8, -312(r30)
001408  e74c8ffc  storeli.w r8, -308(r30)
00140c  670d8ffc  storeli.w r8, -304(r30)
001410  674d8ffc  storeli.w r8, -300(r30)
001414  e70d8ffc  storeli.w r8, -296(r30)
001418  e74d8ffc  storeli.w r8, -292(r30)
00141c  670e8ffc  storeli.w r8, -288(r30)
001420  674e8ffc  storeli.w r8, -284(r30)
001424  e70e8ffc  storeli.w r8, -280(r30)
001428  e74e8ffc  storeli.w r8, -276(r30)
00142c  670f8ffc  storeli.w r8, -272(r30)
001430  674f8ffc  storeli.w r8, -268(r30)
001434  e70f8ffc  storeli.w r8, -264(r30)
001438  e74f8ffc  storeli.w r8, -260(r30)
00143c  67008ffe  storeli.w r8, -256(r30)
001440  67408ffe  storeli.w r8, -252(r30)
001444  e7008ffe  storeli.w r8, -248(r30)
001448  e7408ffe  storeli.w r8, -244(r30)
00144c  67018ffe  storeli.w r8, -240(r30)
001450  67418ffe  storeli.w r8, -236(r30)
001454  e7018ffe  storeli.w r8, -232(r30)
001458  e7418ffe  storeli.w r8, -228(r30)
00145c  67028ffe  storeli.w r8, -224(r30)
001460  67428ffe  storeli.w r8, -220(r30)
001464  e7028ffe  storeli.w r8, -216(r30)
001468  e7428ffe  storeli.w r8, -212(r30)
00146c  67038ffe  storeli.w r8, -208(r30)
001470  67438ffe  storeli.w r8, -204(r30)
001474  e7038ffe  storeli.w r8, -200(r30)
001478  e7438ffe  storeli.w r8, -196(r30)
00147c  67048ffe  storeli.w r8, -192(r30)
001480  67448ffe  storeli.w r8, -188(r30)
001484  e7048ffe  storeli.w r8, -184(r30)
001488  e7448ffe  storeli.w r8, -180(r30)
00148c  67058ffe  storeli.w r8, -176(r30)
001490  67458ffe  storeli.w r8, -172(r30)
001494  e7058ffe  storeli.w r8, -168(r30)
001498  e7458ffe  storeli.w r8, -164(r30)
00149c  67068ffe  storeli.w r8, -160(r30)
0014a0  67468ffe  storeli.w r8, -156(r30)
0014a4  e7068ffe  storeli.w r8, -152(r30)
0014a8  e7468ffe  storeli.w r8, -148(r30)
0014ac  67078ffe  storeli.w r8, -144(r30)
0014b0  67478ffe  storeli.w r8, -140(r30)
0014b4  e7078ffe  storeli.w r8, -136(r30)
0014b8  e7478ffe  storeli.w r8, -132(r30)
0014bc  67088ffe  storeli.w r8, -128(r30)
0014c0  67488ffe  storeli.w r8, -124(r30)
0014c4  e7088ffe  storeli.w r8, -120(r30)
0014c8  e7488ffe  storeli.w r8, -116(r30)
0014cc  67098ffe  storeli.w r8, -112(r30)
0014d0  67498ffe  storeli.w r8, -108(r30)
0014d4  e7098ffe  storeli.w r8, -104(r30)
0014d8  e7498ffe  storeli.w r8, -100(r30)
0014dc  670a8ffe  storeli.w r8, -96(r30)
0014e0  674a8ffe  storeli.w r8, -92(r30)
0014e4  e70a8ffe  storeli.w r8, -88(r30)
0014e8  e74a8ffe  storeli.w r8, -84(r30)
0014ec  670b8ffe  storeli.w r8, -80(r30)
0014f0  674b8ffe  storeli.w r8, -76(r30)
0014f4  e70b8ffe  storeli.w r8, -72(r30)
0014f8  e74b8ffe  storeli.w r8, -68(r30)
0014fc  670c8ffe  storeli.w r8, -64(r30)
001500  674c8ffe  storeli.w r8, -60(r30)
001504  e70c8ffe  storeli.w r8, -56(r30)
001508  e74c8ffe  storeli.w r8, -52(r30)
00150c  670d8ffe  storeli.w r8, -48(r30)
001510  674d8ffe  storeli.w r8, -44(r30)
001514  e70d8ffe  storeli.w r8, -40(r30)
001518  e74d8ffe  storeli.w r8, -36(r30)
00151c  670e8ffe  storeli.w r8, -32(r30)
001520  674e8ffe  storeli.w r8, -28(r30)
001524  e70e8ffe  storeli.w r8, -24(r30)
001528  e74e8ffe  storeli.w r8, -20(r30)
00152c  670f8ffe  storeli.w r8, -16(r30)
001530  674f8ffe  storeli.w r8, -12(r30)
001534  e70f8ffe  storeli.w r8, -8(r30)
001538  e74f8ffe  storeli.w r8, -4(r30)
00153c  67408ff0  storeli.w r8, -2044(r30)
001540  e7008ff0  storeli.w r8, -2040(r30)
001544  e7408ff0  storeli.w r8, -2036(r30)
001548  67018ff0  storeli.w r8, -2032(r30)
00154c  67418ff0  storeli.w r8, -2028(r30)
001550  e7018ff0  storeli.w r8, -2024(r30)
001554  e7418ff0  storeli.w r8, -2020(r30)
001558  67028ff0  storeli.w r8, -2016(r30)
00155c  67428ff0  storeli.w r8, -2012(r30)
001560  e7028ff0  storeli.w r8, -2008(r30)
001564  e7428ff0  storeli.w r8, -2004(r30)
001568  67038ff0  storeli.w r8, -2000(r30)
00156c  67438ff0  storeli.w r8, -1996(r30)
001570  e7038ff0  storeli.w r8, -1992(r30)
001574  e7438ff0  storeli.w r8, -1988(r30)
001578  67048ff0  storeli.w r8, -1984(r30)
00157c  67448ff0  storeli.w r8, -1980(r30)
001580  e7048ff0  storeli.w r8, -1976(r30)
001584  e7448ff0  storeli.w r8, -1972(r30)
001588  67058ff0  storeli.w r8, -1968(r30)
00158c  67458ff0  storeli.w r8, -1964(r30)
001590  67038fe8  storeli.w r8, -3024(r30)
001594  e70f8fee  storeli.w r8, -2056(r30)
001598  674f8fee  storeli.w r8, -2060(r30)
00159c  670f8fee  storeli.w r8, -2064(r30)
0015a0  e74e8fee  storeli.w r8, -2068(r30)
0015a4  e70e8fee  storeli.w r8, -2072(r30)
0015a8  674e8fee  storeli.w r8, -2076(r30)
0015ac  670e8fee  storeli.w r8, -2080(r30)
0015b0  e74d8fee  storeli.w r8, -2084(r30)
0015b4  e70d8fee  storeli.w r8, -2088(r30)
0015b8  674d8fee  storeli.w r8, -2092(r30)
0015bc  670d8fee  storeli.w r8, -2096(r30)
0015c0  e74c8fee  storeli.w r8, -2100(r30)
0015c4  e70c8fee  storeli.w r8, -2104(r30)
0015c8  674c8fee  storeli.w r8, -2108(r30)
0015cc  670c8fee  storeli.w r8, -2112(r30)
0015d0  e74b8fee  storeli.w r8, -2116(r30)
0015d4  e70b8fee  storeli.w r8, -2120(r30)
0015d8  674b8fee  storeli.w r8, -2124(r30)
0015dc  670b8fee  storeli.w r8, -2128(r30)
0015e0  e74a8fee  storeli.w r8, -2132(r30)
0015e4  e70a8fee  storeli.w r8, -2136(r30)
0015e8  674a8fee  storeli.w r8, -2140(r30)
0015ec  670a8fee  storeli.w r8, -2144(r30)
0015f0  e7498fee  storeli.w r8, -2148(r30)
0015f4  e7098fee  storeli.w r8, -2152(r30)
0015f8  67498fee  storeli.w r8, -2156(r30)
0015fc  67098fee  storeli.w r8, -2160(r30)
001600  e7488fee  storeli.w r8, -2164(r30)
001604  e7088fee  storeli.w r8, -2168(r30)
001608  67488fee  storeli.w r8, -2172(r30)
00160c  67088fee  storeli.w r8, -2176(r30)
001610  e7478fee  storeli.w r8, -2180(r30)
001614  e7078fee  storeli.w r8, -2184(r30)
001618  67478fee  storeli.w r8, -2188(r30)
00161c  67078fee  storeli.w r8, -2192(r30)
001620  e7468fee  storeli.w r8, -2196(r30)
001624  e7068fee  storeli.w r8, -2200(r30)
001628  67468fee  storeli.w r8, -2204(r30)
00162c  67068fee  storeli.w r8, -2208(r30)
001630  e7458fee  storeli.w r8, -2212(r30)
001634  e7058fee  storeli.w r8, -2216(r30)
001638  67458fee  storeli.w r8, -2220(r30)
00163c  67058fee  storeli.w r8, -2224(r30)
001640  e7448fee  storeli.w r8, -2228(r30)
001644  e7048fee  storeli.w r8, -2232(r30)
001648  67448fee  storeli.w r8, -2236(r30)
00164c  67048fee  storeli.w r8, -2240(r30)
001650  e7438fee  storeli.w r8, -2244(r30)
001654  e7038fee  storeli.w r8, -2248(r30)
001658  67438fee  storeli.w r8, -2252(r30)
00165c  67038fee  storeli.w r8, -2256(r30)
001660  e7428fee  storeli.w r8, -2260(r30)
001664  e7028fee  storeli.w r8, -2264(r30)
001668  67428fee  storeli.w r8, -2268(r30)
00166c  67028fee  storeli.w r8, -2272(r30)
001670  e7418fee  storeli.w r8, -2276(r30)
001674  e7018fee  storeli.w r8, -2280(r30)
001678  67418fee  storeli.w r8, -2284(r30)
00167c  67018fee  storeli.w r8, -2288(r30)
001680  e7408fee  storeli.w r8, -2292(r30)
001684  e7008fee  storeli.w r8, -2296(r30)
001688  67408fee  storeli.w r8, -2300(r30)
00168c  67008fee  storeli.w r8, -2304(r30)
001690  e74f8fec  storeli.w r8, -2308(r30)
001694  e70f8fec  storeli.w r8, -2312(r30)
001698  674f8fec  storeli.w r8, -2316(r30)
00169c  670f8fec  storeli.w r8, -2320(r30)
0016a0  e74e8fec  storeli.w r8, -2324(r30)
0016a4  e70e8fec  storeli.w r8, -2328(r30)
0016a8  674e8fec  storeli.w r8, -2332(r30)
0016ac  670e8fec  storeli.w r8, -2336(r30)
0016b0  e74d8fec  storeli.w r8, -2340(r30)
0016b4  e70d8fec  storeli.w r8, -2344(r30)
0016b8  674d8fec  storeli.w r8, -2348(r30)
0016bc  670d8fec  storeli.w r8, -2352(r30)
0016c0  e74c8fec  storeli.w r8, -2356(r30)
0016c4  e70c8fec  storeli.w r8, -2360(r30)
0016c8  674c8fec  storeli.w r8, -2364(r30)
0016cc  670c8fec  storeli.w r8, -2368(r30)
0016d0  e74b8fec  storeli.w r8, -2372(r30)
0016d4  e70b8fec  storeli.w r8, -2376(r30)
0016d8  674b8fec  storeli.w r8, -2380(r30)
0016dc  670b8fec  storeli.w r8, -2384(r30)
0016e0  e74a8fec  storeli.w r8, -2388(r30)
0016e4  e70a8fec  storeli.w r8, -2392(r30)
0016e8  674a8fec  storeli.w r8, -2396(r30)
0016ec  670a8fec  storeli.w r8, -2400(r30)
0016f0  e7498fec  storeli.w r8, -2404(r30)
0016f4  e7098fec  storeli.w r8, -2408(r30)
0016f8  67498fec  storeli.w r8, -2412(r30)
0016fc  67098fec  storeli.w r8, -2416(r30)
001700  e7488fec  storeli.w r8, -2420(r30)
001704  e7088fec  storeli.w r8, -2424(r30)
001708  67488fec  storeli.w r8, -2428(r30)
00170c  67088fec  storeli.w r8, -2432(r30)
001710  e7478fec  storeli.w r8, -2436(r30)
001714  e7078fec  storeli.w r8, -2440(r30)
001718  67478fec  storeli.w r8, -2444(r30)
00171c  67078fec  storeli.w r8, -2448(r30)
001720  e7468fec  storeli.w r8, -2452(r30)
001724  e7068fec  storeli.w r8, -2456(r30)
001728  67468fec  storeli.w r8, -2460(r30)
00172c  67068fec  storeli.w r8, -2464(r30)
001730  e7458fec  storeli.w r8, -2468(r30)
001734  e7058fec  storeli.w r8, -2472(r30)
001738  67458fec  storeli.w r8, -2476(r30)
00173c  67058fec  storeli.w r8, -2480(r30)
001740  e7448fec  storeli.w r8, -2484(r30)
001744  e7048fec  storeli.w r8, -2488(r30)
001748  67448fec  storeli.w r8, -2492(r30)
00174c  67048fec  storeli.w r8, -2496(r30)
001750  e7438fec  storeli.w r8, -2500(r30)
001754  e7038fec  storeli.w r8, -2504(r30)
001758  67438fec  storeli.w r8, -2508(r30)
00175c  67038fec  storeli.w r8, -2512(r30)
001760  e7428fec  storeli.w r8, -2516(r30)
001764  e7028fec  storeli.w r8, -2520(r30)
001768  67428fec  storeli.w r8, -2524(r30)
00176c  67028fec  storeli.w r8, -2528(r30)
001770  e7418fec  storeli.w r8, -2532(r30)
001774  e7018fec  storeli.w r8, -2536(r30)
001778  67418fec  storeli.w r8, -2540(r30)
00177c  67018fec  storeli.w r8, -2544(r30)
001780  e7408fec  storeli.w r8, -2548(r30)
001784  e7008fec  storeli.w r8, -2552(r30)
001788  67408fec  storeli.w r8, -2556(r30)
00178c  67008fec  storeli.w r8, -2560(r30)
001790  e74f8fea  storeli.w r8, -2564(r30)
001794  e70f8fea  storeli.w r8, -2568(r30)
001798  674f8fea  storeli.w r8, -2572(r30)
00179c  670f8fea  storeli.w r8, -2576(r30)
0017a0  e74e8fea  storeli.w r8, -2580(r30)
0017a4  e70e8fea  storeli.w r8, -2584(r30)
0017a8  674e8fea  storeli.w r8, -2588(r30)
0017ac  670e8fea  storeli.w r8, -2592(r30)
0017b0  e74d8fea  storeli.w r8, -2596(r30)
0017b4  e70d8fea  storeli.w r8, -2600(r30)
0017b8  674d8fea  storeli.w r8, -2604(r30)
0017bc  670d8fea  storeli.w r8, -2608(r30)
0017c0  e74c8fea  storeli.w r8, -2612(r30)
0017c4  e70c8fea  storeli.w r8, -2616(r30)
0017c8  674c8fea  storeli.w r8, -2620(r30)
0017cc  670c8fea  storeli.w r8, -2624(r30)
0017d0  e74b8fea  storeli.w r8, -2628(r30)
0017d4  e70b8fea  storeli.w r8, -2632(r30)
0017d8  674b8fea  storeli.w r8, -2636(r30)
0017dc  670b8fea  storeli.w r8, -2640(r30)
0017e0  e74a8fea  storeli.w r8, -2644(r30)
0017e4  e70a8fea  storeli.w r8, -2648(r30)
0017e8  674a8fea  storeli.w r8, -2652(r30)
0017ec  670a8fea  storeli.w r8, -2656(r30)
0017f0  e7498fea  storeli.w r8, -2660(r30)
0017f4  e7098fea  storeli.w r8, -2664(r30)
0017f8  67498fea  storeli.w r8, -2668(r30)
0017fc  67098fea  storeli.w r8, -2672(r30)
001800  e7488fea  storeli.w r8, -2676(r30)
001804  e7088fea  storeli.w r8, -2680(r30)
001808  67488fea  storeli.w r8, -2684(r30)
00180c  67088fea  storeli.w r8, -2688(r30)
001810  e7478fea  storeli.w r8, -2692(r30)
001814  e7078fea  storeli.w r8, -2696(r30)
001818  67478fea  storeli.w r8, -2700(r30)
00181c  67078fea  storeli.w r8, -2704(r30)
001820  e7468fea  storeli.w r8, -2708(r30)
001824  e7068fea  storeli.w r8, -2712(r30)
001828  67468fea  storeli.w r8, -2716(r30)
00182c  67068fea  storeli.w r8, -2720(r30)
001830  e7458fea  storeli.w r8, -2724(r30)
001834  e7058fea  storeli.w r8, -2728(r30)
001838  67458fea  storeli.w r8, -2732(r30)
00183c  67058fea  storeli.w r8, -2736(r30)
001840  e7448fea  storeli.w r8, -2740(r30)
001844  e7048fea  storeli.w r8, -2744(r30)
001848  67448fea  storeli.w r8, -2748(r30)
00184c  67048fea  storeli.w r8, -2752(r30)
001850  e7438fea  storeli.w r8, -2756(r30)
001854  e7038fea  storeli.w r8, -2760(r30)
001858  67438fea  storeli.w r8, -2764(r30)
00185c  67038fea  storeli.w r8, -2768(r30)
001860  e7428fea  storeli.w r8, -2772(r30)
001864  e7028fea  storeli.w r8, -2776(r30)
001868  67428fea  storeli.w r8, -2780(r30)
00186c  67028fea  storeli.w r8, -2784(r30)
001870  e7418fea  storeli.w r8, -2788(r30)
001874  e7018fea  storeli.w r8, -2792(r30)
001878  67418fea  storeli.w r8, -2796(r30)
00187c  67018fea  storeli.w r8, -2800(r30)
001880  e7408fea  storeli.w r8, -2804(r30)
001884  e7008fea  storeli.w r8, -2808(r30)
001888  67408fea  storeli.w r8, -2812(r30)
00188c  67008fea  storeli.w r8, -2816(r30)
001890  e74f8fe8  storeli.w r8, -2820(r30)
001894  e70f8fe8  storeli.w r8, -2824(r30)
001898  674f8fe8  storeli.w r8, -2828(r30)
00189c  670f8fe8  storeli.w r8, -2832(r30)
0018a0  e74e8fe8  storeli.w r8, -2836(r30)
0018a4  e70e8fe8  storeli.w r8, -2840(r30)
0018a8  674e8fe8  storeli.w r8, -2844(r30)
0018ac  670e8fe8  storeli.w r8, -2848(r30)
0018b0  e74d8fe8  storeli.w r8, -2852(r30)
0018b4  e70d8fe8  storeli.w r8, -2856(r30)
0018b8  674d8fe8  storeli.w r8, -2860(r30)
0018bc  670d8fe8  storeli.w r8, -2864(r30)
0018c0  e74c8fe8  storeli.w r8, -2868(r30)
0018c4  e70c8fe8  storeli.w r8, -2872(r30)
0018c8  674c8fe8  storeli.w r8, -2876(r30)
0018cc  670c8fe8  storeli.w r8, -2880(r30)
0018d0  e74b8fe8  storeli.w r8, -2884(r30)
0018d4  e70b8fe8  storeli.w r8, -2888(r30)
0018d8  674b8fe8  storeli.w r8, -2892(r30)
0018dc  670b8fe8  storeli.w r8, -2896(r30)
0018e0  e74a8fe8  storeli.w r8, -2900(r30)
0018e4  e70a8fe8  storeli.w r8, -2904(r30)
0018e8  674a8fe8  storeli.w r8, -2908(r30)
0018ec  670a8fe8  storeli.w r8, -2912(r30)
0018f0  e7498fe8  storeli.w r8, -2916(r30)
0018f4  e7098fe8  storeli.w r8, -2920(r30)
0018f8  67498fe8  storeli.w r8, -2924(r30)
0018fc  67098fe8  storeli.w r8, -2928(r30)
001900  e7488fe8  storeli.w r8, -2932(r30)
001904  e7088fe8  storeli.w r8, -2936(r30)
001908  67488fe8  storeli.w r8, -2940(r30)
00190c  67088fe8  storeli.w r8, -2944(r30)
001910  e7478fe8  storeli.w r8, -2948(r30)
001914  e7078fe8  storeli.w r8, -2952(r30)
001918  67478fe8  storeli.w r8, -2956(r30)
00191c  67078fe8  storeli.w r8, -2960(r30)
001920  e7468fe8  storeli.w r8, -2964(r30)
001924  e7068fe8  storeli.w r8, -2968(r30)
001928  67468fe8  storeli.w r8, -2972(r30)
00192c  67068fe8  storeli.w r8, -2976(r30)
001930  e7458fe8  storeli.w r8, -2980(r30)
001934  e7058fe8  storeli.w r8, -2984(r30)
001938  67458fe8  storeli.w r8, -2988(r30)
00193c  67058fe8  storeli.w r8, -2992(r30)
001940  e7448fe8  storeli.w r8, -2996(r30)
001944  e7048fe8  storeli.w r8, -3000(r30)
001948  67448fe8  storeli.w r8, -3004(r30)
00194c  67048fe8  storeli.w r8, -3008(r30)
001950  e7438fe8  storeli.w r8, -3012(r30)
001954  e7038fe8  storeli.w r8, -3016(r30)
001958  67438fe8  storeli.w r8, -3020(r30)
00195c  e7428fe8  storeli.w r8, -3028(r30)
001960  e7028fe8  storeli.w r8, -3032(r30)
001964  67428fe8  storeli.w r8, -3036(r30)
001968  0b913050  fmac.s r2, r1, r3
00196c  8b903020  mul.s r1, r1, r3
001970  1f71f1ff  addli r2, r2, -1
001974  0b114130  div.s r2, r2, r4
001978  00520002  load_param_i r4, 0
00197c  0b134120  mul.s r6, r2, r4
001980  0b114150  fmac.s r2, r2, r4
001984  abf1ffff  lui r3, 1048575
001988  73b03200  store.d r[4:5], 0(r5)
00198c  8b131140  min.s r7, r2, r1
001990  00320002  core_id r4
001994  67028fe8  storeli.w r8, -3040(r30)
001998  e7418fe8  storeli.w r8, -3044(r30)
00199c  e7018fe8  storeli.w r8, -3048(r30)
0019a0  67418fe8  storeli.w r8, -3052(r30)
0019a4  67018fe8  storeli.w r8, -3056(r30)
0019a8  e7408fe8  storeli.w r8, -3060(r30)
0019ac  e7008fe8  storeli.w r8, -3064(r30)
0019b0  67408fe8  storeli.w r8, -3068(r30)
0019b4  67000fe8  storeli.w zero, -3072(r30)
0019b8  e74f8ff6  storeli.w r8, -1028(r30)
0019bc  e70f8ff6  storeli.w r8, -1032(r30)
0019c0  674f8ff6  storeli.w r8, -1036(r30)
0019c4  670f8ff6  storeli.w r8, -1040(r30)
0019c8  e74e8ff6  storeli.w r8, -1044(r30)
0019cc  e70e8ff6  storeli.w r8, -1048(r30)
0019d0  674e8ff6  storeli.w r8, -1052(r30)
0019d4  670e8ff6  storeli.w r8, -1056(r30)
0019d8  e74d8ff6  storeli.w r8, -1060(r30)
0019dc  e70d8ff6  storeli.w r8, -1064(r30)
0019e0  674d8ff6  storeli.w r8, -1068(r30)
0019e4  670d8ff6  storeli.w r8, -1072(r30)
0019e8  e74c8ff6  storeli.w r8, -1076(r30)
0019ec  e70c8ff6  storeli.w r8, -1080(r30)
0019f0  674c8ff6  storeli.w r8, -1084(r30)
0019f4  670c8ff6  storeli.w r8, -1088(r30)
0019f8  e74b8ff6  storeli.w r8, -1092(r30)
0019fc  e70b8ff6  storeli.w r8, -1096(r30)
001a00  674b8ff6  storeli.w r8, -1100(r30)
001a04  670b8ff6  storeli.w r8, -1104(r30)
001a08  e74a8ff6  storeli.w r8, -1108(r30)
001a0c  e70a8ff6  storeli.w r8, -1112(r30)
001a10  674a8ff6  storeli.w r8, -1116(r30)
001a14  670a8ff6  storeli.w r8, -1120(r30)
001a18  e7498ff6  storeli.w r8, -1124(r30)
001a1c  e7098ff6  storeli.w r8, -1128(r30)
001a20  67498ff6  storeli.w r8, -1132(r30)
001a24  67098ff6  storeli.w r8, -1136(r30)
001a28  e7488ff6  storeli.w r8, -1140(r30)
001a2c  e7088ff6  storeli.w r8, -1144(r30)
001a30  67488ff6  storeli.w r8, -1148(r30)
001a34  67088ff6  storeli.w r8, -1152(r30)
001a38  e7478ff6  storeli.w r8, -1156(r30)
001a3c  e7078ff6  storeli.w r8, -1160(r30)
001a40  67478ff6  storeli.w r8, -1164(r30)
001a44  67078ff6  storeli.w r8, -1168(r30)
001a48  e7468ff6  storeli.w r8, -1172(r30)
001a4c  e7068ff6  storeli.w r8, -1176(r30)
001a50  67468ff6  storeli.w r8, -1180(r30)
001a54  67068ff6  storeli.w r8, -1184(r30)
001a58  e7458ff6  storeli.w r8, -1188(r30)
001a5c  e7058ff6  storeli.w r8, -1192(r30)
001a60  67458ff6  storeli.w r8, -1196(r30)
001a64  67058ff6  storeli.w r8, -1200(r30)
001a68  e7448ff6  storeli.w r8, -1204(r30)
001a6c  e7048ff6  storeli.w r8, -1208(r30)
001a70  67448ff6  storeli.w r8, -1212(r30)
001a74  67048ff6  storeli.w r8, -1216(r30)
001a78  e7438ff6  storeli.w r8, -1220(r30)
001a7c  e7038ff6  storeli.w r8, -1224(r30)
001a80  67438ff6  storeli.w r8, -1228(r30)
001a84  67038ff6  storeli.w r8, -1232(r30)
001a88  e7428ff6  storeli.w r8, -1236(r30)
001a8c  e7028ff6  storeli.w r8, -1240(r30)
001a90  67428ff6  storeli.w r8, -1244(r30)
001a94  67028ff6  storeli.w r8, -1248(r30)
001a98  e7418ff6  storeli.w r8, -1252(r30)
001a9c  e7018ff6  storeli.w r8, -1256(r30)
001aa0  67418ff6  storeli.w r8, -1260(r30)
001aa4  67018ff6  storeli.w r8, -1264(r30)
001aa8  e7408ff6  storeli.w r8, -1268(r30)
001aac  e7008ff6  storeli.w r8, -1272(r30)
001ab0  67408ff6  storeli.w r8, -1276(r30)
001ab4  67008ff6  storeli.w r8, -1280(r30)
001ab8  e74f8ff4  storeli.w r8, -1284(r30)
001abc  e70f8ff4  storeli.w r8, -1288(r30)
001ac0  674f8ff4  storeli.w r8, -1292(r30)
001ac4  670f8ff4  storeli.w r8, -1296(r30)
001ac8  e74e8ff4  storeli.w r8, -1300(r30)
001acc  e70e8ff4  storeli.w r8, -1304(r30)
001ad0  674e8ff4  storeli.w r8, -1308(r30)
001ad4  670e8ff4  storeli.w r8, -1312(r30)
001ad8  e74d8ff4  storeli.w r8, -1316(r30)
001adc  e70d8ff4  storeli.w r8, -1320(r30)
001ae0  674d8ff4  storeli.w r8, -1324(r30)
001ae4  670d8ff4  storeli.w r8, -1328(r30)
001ae8  e74c8ff4  storeli.w r8, -1332(r30)
001aec  e70c8ff4  storeli.w r8, -1336(r30)
001af0  674c8ff4  storeli.w r8, -1340(r30)
001af4  670c8ff4  storeli.w r8, -1344(r30)
001af8  e74b8ff4  storeli.w r8, -1348(r30)
001afc  e70b8ff4  storeli.w r8, -1352(r30)
001b00  674b8ff4  storeli.w r8, -1356(r30)
001b04  670b8ff4  storeli.w r8, -1360(r30)
001b08  e74a8ff4  storeli.w r8, -1364(r30)
001b0c  e70a8ff4  storeli.w r8, -1368(r30)
001b10  674a8ff4  storeli.w r8, -1372(r30)
001b14  670a8ff4  storeli.w r8, -1376(r30)
001b18  e7498ff4  storeli.w r8, -1380(r30)
001b1c  e7098ff4  storeli.w r8, -1384(r30)
001b20  67498ff4  storeli.w r8, -1388(r30)
001b24  67098ff4  storeli.w r8, -1392(r30)
001b28  e7488ff4  storeli.w r8, -1396(r30)
001b2c  e7088ff4  storeli.w r8, -1400(r30)
001b30  67488ff4  storeli.w r8, -1404(r30)
001b34  67088ff4  storeli.w r8, -1408(r30)
001b38  e7478ff4  storeli.w r8, -1412(r30)
001b3c  e7078ff4  storeli.w r8, -1416(r30)
001b40  67478ff4  storeli.w r8, -1420(r30)
001b44  67078ff4  storeli.w r8, -1424(r30)
001b48  e7468ff4  storeli.w r8, -1428(r30)
001b4c  e7068ff4  storeli.w r8, -1432(r30)
001b50  67468ff4  storeli.w r8, -1436(r30)
001b54  67068ff4  storeli.w r8, -1440(r30)
001b58  e7458ff4  storeli.w r8, -1444(r30)
001b5c  e7058ff4  storeli.w r8, -1448(r30)
001b60  67458ff4  storeli.w r8, -1452(r30)
001b64  67058ff4  storeli.w r8, -1456(r30)
001b68  e7448ff4  storeli.w r8, -1460(r30)
001b6c  e7048ff4  storeli.w r8, -1464(r30)
001b70  67448ff4  storeli.w r8, -1468(r30)
001b74  67048ff4  storeli.w r8, -1472(r30)
001b78  e7438ff4  storeli.w r8, -1476(r30)
001b7c  e7038ff4  storeli.w r8, -1480(r30)
001b80  67438ff4  storeli.w r8, -1484(r30)
001b84  67038ff4  storeli.w r8, -1488(r30)
001b88  e7428ff4  storeli.w r8, -1492(r30)
001b8c  e7028ff4  storeli.w r8, -1496(r30)
001b90  67428ff4  storeli.w r8, -1500(r30)
001b94  67028ff4  storeli.w r8, -1504(r30)
001b98  e7418ff4  storeli.w r8, -1508(r30)
001b9c  e7018ff4  storeli.w r8, -1512(r30)
001ba0  67418ff4  storeli.w r8, -1516(r30)
001ba4  67018ff4  storeli.w r8, -1520(r30)
001ba8  e7408ff4  storeli.w r8, -1524(r30)
001bac  e7008ff4  storeli.w r8, -1528(r30)
001bb0  67408ff4  storeli.w r8, -1532(r30)
001bb4  67008ff4  storeli.w r8, -1536(r30)
001bb8  e74f8ff2  storeli.w r8, -1540(r30)
001bbc  e70f8ff2  storeli.w r8, -1544(r30)
001bc0  674f8ff2  storeli.w r8, -1548(r30)
001bc4  670f8ff2  storeli.w r8, -1552(r30)
001bc8  e74e8ff2  storeli.w r8, -1556(r30)
001bcc  e70e8ff2  storeli.w r8, -1560(r30)
001bd0  674e8ff2  storeli.w r8, -1564(r30)
001bd4  670e8ff2  storeli.w r8, -1568(r30)
001bd8  e74d8ff2  storeli.w r8, -1572(r30)
001bdc  e70d8ff2  storeli.w r8, -1576(r30)
001be0  674d8ff2  storeli.w r8, -1580(r30)
001be4  670d8ff2  storeli.w r8, -1584(r30)
001be8  e74c8ff2  storeli.w r8, -1588(r30)
001bec  e70c8ff2  storeli.w r8, -1592(r30)
001bf0  674c8ff2  storeli.w r8, -1596(r30)
001bf4  670c8ff2  storeli.w r8, -1600(r30)
001bf8  e74b8ff2  storeli.w r8, -1604(r30)
001bfc  e70b8ff2  storeli.w r8, -1608(r30)
001c00  674b8ff2  storeli.w r8, -1612(r30)
001c04  670b8ff2  storeli.w r8, -1616(r30)
001c08  e74a8ff2  storeli.w r8, -1620(r30)
001c0c  e70a8ff2  storeli.w r8, -1624(r30)
001c10  674a8ff2  storeli.w r8, -1628(r30)
001c14  670a8ff2  storeli.w r8, -1632(r30)
001c18  e7498ff2  storeli.w r8, -1636(r30)
001c1c  e7098ff2  storeli.w r8, -1640(r30)
001c20  67498ff2  storeli.w r8, -1644(r30)
001c24  67098ff2  storeli.w r8, -1648(r30)
001c28  e7488ff2  storeli.w r8, -1652(r30)
001c2c  e7088ff2  storeli.w r8, -1656(r30)
001c30  67488ff2  storeli.w r8, -1660(r30)
001c34  67088ff2  storeli.w r8, -1664(r30)
001c38  e7478ff2  storeli.w r8, -1668(r30)
001c3c  e7078ff2  storeli.w r8, -1672(r30)
001c40  67478ff2  storeli.w r8, -1676(r30)
001c44  67078ff2  storeli.w r8, -1680(r30)
001c48  e7468ff2  storeli.w r8, -1684(r30)
001c4c  e7068ff2  storeli.w r8, -1688(r30)
001c50  67468ff2  storeli.w r8, -1692(r30)
001c54  67068ff2  storeli.w r8, -1696(r30)
001c58  e7458ff2  storeli.w r8, -1700(r30)
001c5c  e7058ff2  storeli.w r8, -1704(r30)
001c60  67458ff2  storeli.w r8, -1708(r30)
001c64  67058ff2  storeli.w r8, -1712(r30)
001c68  e7448ff2  storeli.w r8, -1716(r30)
001c6c  e7048ff2  storeli.w r8, -1720(r30)
001c70  67448ff2  storeli.w r8, -1724(r30)
001c74  67048ff2  storeli.w r8, -1728(r30)
001c78  e7438ff2  storeli.w r8, -1732(r30)
001c7c  e7038ff2  storeli.w r8, -1736(r30)
001c80  67438ff2  storeli.w r8, -1740(r30)
001c84  67038ff2  storeli.w r8, -1744(r30)
001c88  e7428ff2  storeli.w r8, -1748(r30)
001c8c  e7028ff2  storeli.w r8, -1752(r30)
001c90  67428ff2  storeli.w r8, -1756(r30)
001c94  67028ff2  storeli.w r8, -1760(r30)
001c98  e7418ff2  storeli.w r8, -1764(r30)
001c9c  e7018ff2  storeli.w r8, -1768(r30)
001ca0  67418ff2  storeli.w r8, -1772(r30)
001ca4  67018ff2  storeli.w r8, -1776(r30)
001ca8  e7408ff2  storeli.w r8, -1780(r30)
001cac  e7008ff2  storeli.w r8, -1784(r30)
001cb0  67408ff2  storeli.w r8, -1788(r30)
001cb4  67008ff2  storeli.w r8, -1792(r30)
001cb8  e74f8ff0  storeli.w r8, -1796(r30)
001cbc  e70f8ff0  storeli.w r8, -1800(r30)
001cc0  674f8ff0  storeli.w r8, -1804(r30)
001cc4  670f8ff0  storeli.w r8, -1808(r30)
001cc8  e74e8ff0  storeli.w r8, -1812(r30)
001ccc  e70e8ff0  storeli.w r8, -1816(r30)
001cd0  674e8ff0  storeli.w r8, -1820(r30)
001cd4  670e8ff0  storeli.w r8, -1824(r30)
001cd8  e74d8ff0  storeli.w r8, -1828(r30)
001cdc  e70d8ff0  storeli.w r8, -1832(r30)
001ce0  674d8ff0  storeli.w r8, -1836(r30)
001ce4  670d8ff0  storeli.w r8, -1840(r30)
001ce8  e74c8ff0  storeli.w r8, -1844(r30)
001cec  e70c8ff0  storeli.w r8, -1848(r30)
001cf0  674c8ff0  storeli.w r8, -1852(r30)
001cf4  670c8ff0  storeli.w r8, -1856(r30)
001cf8  e74b8ff0  storeli.w r8, -1860(r30)
001cfc  e70b8ff0  storeli.w r8, -1864(r30)
001d00  674b8ff0  storeli.w r8, -1868(r30)
001d04  670b8ff0  storeli.w r8, -1872(r30)
001d08  e74a8ff0  storeli.w r8, -1876(r30)
001d0c  e70a8ff0  storeli.w r8, -1880(r30)
001d10  674a8ff0  storeli.w r8, -1884(r30)
001d14  670a8ff0  storeli.w r8, -1888(r30)
001d18  e7498ff0  storeli.w r8, -1892(r30)
001d1c  e7098ff0  storeli.w r8, -1896(r30)
001d20  67498ff0  storeli.w r8, -1900(r30)
001d24  67098ff0  storeli.w r8, -1904(r30)
001d28  e7488ff0  storeli.w r8, -1908(r30)
001d2c  e7088ff0  storeli.w r8, -1912(r30)
001d30  67488ff0  storeli.w r8, -1916(r30)
001d34  67088ff0  storeli.w r8, -1920(r30)
001d38  e7478ff0  storeli.w r8, -1924(r30)
001d3c  e7078ff0  storeli.w r8, -1928(r30)
001d40  67478ff0  storeli.w r8, -1932(r30)
001d44  67078ff0  storeli.w r8, -1936(r30)
001d48  e7468ff0  storeli.w r8, -1940(r30)
001d4c  e7068ff0  storeli.w r8, -1944(r30)
001d50  67468ff0  storeli.w r8, -1948(r30)
001d54  67068ff0  storeli.w r8, -1952(r30)
001d58  e7458ff0  storeli.w r8, -1956(r30)
001d5c  e7058ff0  storeli.w r8, -1960(r30)
001d60  e74f8fee  storeli.w r8, -2052(r30)
001d64  67000fe0  storeli.w zero, -4096(r30)
001d68  67408fe0  storeli.w r8, -4092(r30)
001d6c  e7008fe0  storeli.w r8, -4088(r30)
001d70  e7408fe0  storeli.w r8, -4084(r30)
001d74  67018fe0  storeli.w r8, -4080(r30)
001d78  67418fe0  storeli.w r8, -4076(r30)
001d7c  e7018fe0  storeli.w r8, -4072(r30)
001d80  e7418fe0  storeli.w r8, -4068(r30)
001d84  67028fe0  storeli.w r8, -4064(r30)
001d88  67428fe0  storeli.w r8, -4060(r30)
001d8c  e7028fe0  storeli.w r8, -4056(r30)
001d90  e7428fe0  storeli.w r8, -4052(r30)
001d94  67038fe0  storeli.w r8, -4048(r30)
001d98  67438fe0  storeli.w r8, -4044(r30)
001d9c  e7038fe0  storeli.w r8, -4040(r30)
001da0  e7438fe0  storeli.w r8, -4036(r30)
001da4  67048fe0  storeli.w r8, -4032(r30)
001da8  67448fe0  storeli.w r8, -4028(r30)
001dac  e7048fe0  storeli.w r8, -4024(r30)
001db0  e7448fe0  storeli.w r8, -4020(r30)
001db4  67058fe0  storeli.w r8, -4016(r30)
001db8  67458fe0  storeli.w r8, -4012(r30)
001dbc  e7058fe0  storeli.w r8, -4008(r30)
001dc0  e7458fe0  storeli.w r8, -4004(r30)
001dc4  67068fe0  storeli.w r8, -4000(r30)
001dc8  67468fe0  storeli.w r8, -3996(r30)
001dcc  e7068fe0  storeli.w r8, -3992(r30)
001dd0  e7468fe0  storeli.w r8, -3988(r30)
001dd4  67078fe0  storeli.w r8, -3984(r30)
001dd8  67478fe0  storeli.w r8, -3980(r30)
001ddc  e7078fe0  storeli.w r8, -3976(r30)
001de0  e7478fe0  storeli.w r8, -3972(r30)
001de4  67088fe0  storeli.w r8, -3968(r30)
001de8  67488fe0  storeli.w r8, -3964(r30)
001dec  e7088fe0  storeli.w r8, -3960(r30)
001df0  e7488fe0  storeli.w r8, -3956(r30)
001df4  67098fe0  storeli.w r8, -3952(r30)
001df8  67498fe0  storeli.w r8, -3948(r30)
001dfc  e7098fe0  storeli.w r8, -3944(r30)
001e00  e7498fe0  storeli.w r8, -3940(r30)
001e04  670a8fe0  storeli.w r8, -3936(r30)
001e08  674a8fe0  storeli.w r8, -3932(r30)
001e0c  e70a8fe0  storeli.w r8, -3928(r30)
001e10  e74a8fe0  storeli.w r8, -3924(r30)
001e14  670b8fe0  storeli.w r8, -3920(r30)
001e18  674b8fe0  storeli.w r8, -3916(r30)
001e1c  e70b8fe0  storeli.w r8, -3912(r30)
001e20  e74b8fe0  storeli.w r8, -3908(r30)
001e24  670c8fe0  storeli.w r8, -3904(r30)
001e28  674c8fe0  storeli.w r8, -3900(r30)
001e2c  e70c8fe0  storeli.w r8, -3896(r30)
001e30  e74c8fe0  storeli.w r8, -3892(r30)
001e34  670d8fe0  storeli.w r8, -3888(r30)
001e38  674d8fe0  storeli.w r8, -3884(r30)
001e3c  e70d8fe0  storeli.w r8, -3880(r30)
001e40  e74d8fe0  storeli.w r8, -3876(r30)
001e44  670e8fe0  storeli.w r8, -3872(r30)
001e48  674e8fe0  storeli.w r8, -3868(r30)
001e4c  e70e8fe0  storeli.w r8, -3864(r30)
001e50  e74e8fe0  storeli.w r8, -3860(r30)
001e54  670f8fe0  storeli.w r8, -3856(r30)
001e58  674f8fe0  storeli.w r8, -3852(r30)
001e5c  e70f8fe0  storeli.w r8, -3848(r30)
001e60  e74f8fe0  storeli.w r8, -3844(r30)
001e64  67008fe2  storeli.w r8, -3840(r30)
001e68  67408fe2  storeli.w r8, -3836(r30)
001e6c  e7008fe2  storeli.w r8, -3832(r30)
001e70  e7408fe2  storeli.w r8, -3828(r30)
001e74  67018fe2  storeli.w r8, -3824(r30)
001e78  67418fe2  storeli.w r8, -3820(r30)
001e7c  e7018fe2  storeli.w r8, -3816(r30)
001e80  e7418fe2  storeli.w r8, -3812(r30)
001e84  67028fe2  storeli.w r8, -3808(r30)
001e88  67428fe2  storeli.w r8, -3804(r30)
001e8c  e7028fe2  storeli.w r8, -3800(r30)
001e90  e7428fe2  storeli.w r8, -3796(r30)
001e94  67038fe2  storeli.w r8, -3792(r30)
001e98  67438fe2  storeli.w r8, -3788(r30)
001e9c  e7038fe2  storeli.w r8, -3784(r30)
001ea0  e7438fe2  storeli.w r8, -3780(r30)
001ea4  67048fe2  storeli.w r8, -3776(r30)
001ea8  67448fe2  storeli.w r8, -3772(r30)
001eac  e7048fe2  storeli.w r8, -3768(r30)
001eb0  e7448fe2  storeli.w r8, -3764(r30)
001eb4  67058fe2  storeli.w r8, -3760(r30)
001eb8  67458fe2  storeli.w r8, -3756(r30)
001ebc  e7058fe2  storeli.w r8, -3752(r30)
001ec0  e7458fe2  storeli.w r8, -3748(r30)
001ec4  67068fe2  storeli.w r8, -3744(r30)
001ec8  67468fe2  storeli.w r8, -3740(r30)
001ecc  e7068fe2  storeli.w r8, -3736(r30)
001ed0  e7468fe2  storeli.w r8, -3732(r30)
001ed4  67078fe2  storeli.w r8, -3728(r30)
001ed8  67478fe2  storeli.w r8, -3724(r30)
001edc  e7078fe2  storeli.w r8, -3720(r30)
001ee0  e7478fe2  storeli.w r8, -3716(r30)
001ee4  67088fe2  storeli.w r8, -3712(r30)
001ee8  67488fe2  storeli.w r8, -3708(r30)
001eec  e7088fe2  storeli.w r8, -3704(r30)
001ef0  e7488fe2  storeli.w r8, -3700(r30)
001ef4  67098fe2  storeli.w r8, -3696(r30)
001ef8  67498fe2  storeli.w r8, -3692(r30)
001efc  e7098fe2  storeli.w r8, -3688(r30)
001f00  e7498fe2  storeli.w r8, -3684(r30)
001f04  670a8fe2  storeli.w r8, -3680(r30)
001f08  674a8fe2  storeli.w r8, -3676(r30)
001f0c  e70a8fe2  storeli.w r8, -3672(r30)
001f10  e74a8fe2  storeli.w r8, -3668(r30)
001f14  670b8fe2  storeli.w r8, -3664(r30)
001f18  674b8fe2  storeli.w r8, -3660(r30)
001f1c  e70b8fe2  storeli.w r8, -3656(r30)
001f20  e74b8fe2  storeli.w r8, -3652(r30)
001f24  670c8fe2  storeli.w r8, -3648(r30)
001f28  674c8fe2  storeli.w r8, -3644(r30)
001f2c  e70c8fe2  storeli.w r8, -3640(r30)
001f30  e74c8fe2  storeli.w r8, -3636(r30)
001f34  670d8fe2  storeli.w r8, -3632(r30)
001f38  674d8fe2  storeli.w r8, -3628(r30)
001f3c  e70d8fe2  storeli.w r8, -3624(r30)
001f40  e74d8fe2  storeli.w r8, -3620(r30)
001f44  670e8fe2  storeli.w r8, -3616(r30)
001f48  674e8fe2  storeli.w r8, -3612(r30)
001f4c  e70e8fe2  storeli.w r8, -3608(r30)
001f50  e74e8fe2  storeli.w r8, -3604(r30)
001f54  670f8fe2  storeli.w r8, -3600(r30)
001f58  674f8fe2  storeli.w r8, -3596(r30)
001f5c  e70f8fe2  storeli.w r8, -3592(r30)
001f60  e74f8fe2  storeli.w r8, -3588(r30)
001f64  67008fe4  storeli.w r8, -3584(r30)
001f68  67408fe4  storeli.w r8, -3580(r30)
001f6c  e7008fe4  storeli.w r8, -3576(r30)
001f70  e7408fe4  storeli.w r8, -3572(r30)
001f74  67018fe4  storeli.w r8, -3568(r30)
001f78  67418fe4  storeli.w r8, -3564(r30)
001f7c  e7018fe4  storeli.w r8, -3560(r30)
001f80  e7418fe4  storeli.w r8, -3556(r30)
001f84  67028fe4  storeli.w r8, -3552(r30)
001f88  67428fe4  storeli.w r8, -3548(r30)
001f8c  e7028fe4  storeli.w r8, -3544(r30)
001f90  e7428fe4  storeli.w r8, -3540(r30)
001f94  67038fe4  storeli.w r8, -3536(r30)
001f98  67438fe4  storeli.w r8, -3532(r30)
001f9c  e7038fe4  storeli.w r8, -3528(r30)
001fa0  e7438fe4  storeli.w r8, -3524(r30)
001fa4  67048fe4  storeli.w r8, -3520(r30)
001fa8  67448fe4  storeli.w r8, -3516(r30)
001fac  e7048fe4  storeli.w r8, -3512(r30)
001fb0  e7448fe4  storeli.w r8, -3508(r30)
001fb4  67058fe4  storeli.w r8, -3504(r30)
001fb8  67458fe4  storeli.w r8, -3500(r30)
001fbc  e7058fe4  storeli.w r8, -3496(r30)
001fc0  e7458fe4  storeli.w r8, -3492(r30)
001fc4  67068fe4  storeli.w r8, -3488(r30)
001fc8  67468fe4  storeli.w r8, -3484(r30)
001fcc  e7068fe4  storeli.w r8, -3480(r30)
001fd0  e7468fe4  storeli.w r8, -3476(r30)
001fd4  67078fe4  storeli.w r8, -3472(r30)
001fd8  67478fe4  storeli.w r8, -3468(r30)
001fdc  e7078fe4  storeli.w r8, -3464(r30)
001fe0  e7478fe4  storeli.w r8, -3460(r30)
001fe4  67088fe4  storeli.w r8, -3456(r30)
001fe8  67488fe4  storeli.w r8, -3452(r30)
001fec  e7088fe4  storeli.w r8, -3448(r30)
001ff0  e7488fe4  storeli.w r8, -3444(r30)
001ff4  67098fe4  storeli.w r8, -3440(r30)
001ff8  67498fe4  storeli.w r8, -3436(r30)
001ffc  e7098fe4  storeli.w r8, -3432(r30)
002000  e7498fe4  storeli.w r8, -3428(r30)
002004  670a8fe4  storeli.w r8, -3424(r30)
002008  674a8fe4  storeli.w r8, -3420(r30)
00200c  e70a8fe4  storeli.w r8, -3416(r30)
002010  e74a8fe4  storeli.w r8, -3412(r30)
002014  670b8fe4  storeli.w r8, -3408(r30)
002018  674b8fe4  storeli.w r8, -3404(r30)
00201c  e70b8fe4  storeli.w r8, -3400(r30)
002020  e74b8fe4  storeli.w r8, -3396(r30)
002024  670c8fe4  storeli.w r8, -3392(r30)
002028  674c8fe4  storeli.w r8, -3388(r30)
00202c  e70c8fe4  storeli.w r8, -3384(r30)
002030  e74c8fe4  storeli.w r8, -3380(r30)
002034  670d8fe4  storeli.w r8, -3376(r30)
002038  674d8fe4  storeli.w r8, -3372(r30)
00203c  e70d8fe4  storeli.w r8, -3368(r30)
002040  e74d8fe4  storeli.w r8, -3364(r30)
002044  670e8fe4  storeli.w r8, -3360(r30)
002048  674e8fe4  storeli.w r8, -3356(r30)
00204c  e70e8fe4  storeli.w r8, -3352(r30)
002050  e74e8fe4  storeli.w r8, -3348(r30)
002054  670f8fe4  storeli.w r8, -3344(r30)
002058  674f8fe4  storeli.w r8, -3340(r30)
00205c  e70f8fe4  storeli.w r8, -3336(r30)
002060  e74f8fe4  storeli.w r8, -3332(r30)
002064  67008fe6  storeli.w r8, -3328(r30)
002068  67408fe6  storeli.w r8, -3324(r30)
00206c  e7008fe6  storeli.w r8, -3320(r30)
002070  e7408fe6  storeli.w r8, -3316(r30)
002074  67018fe6  storeli.w r8, -3312(r30)
002078  67418fe6  storeli.w r8, -3308(r30)
00207c  e7018fe6  storeli.w r8, -3304(r30)
002080  e7418fe6  storeli.w r8, -3300(r30)
002084  67028fe6  storeli.w r8, -3296(r30)
002088  67428fe6  storeli.w r8, -3292(r30)
00208c  e7028fe6  storeli.w r8, -3288(r30)
002090  e7428fe6  storeli.w r8, -3284(r30)
002094  67038fe6  storeli.w r8, -3280(r30)
002098  67438fe6  storeli.w r8, -3276(r30)
00209c  e7038fe6  storeli.w r8, -3272(r30)
0020a0  e7438fe6  storeli.w r8, -3268(r30)
0020a4  67048fe6  storeli.w r8, -3264(r30)
0020a8  67448fe6  storeli.w r8, -3260(r30)
0020ac  e7048fe6  storeli.w r8, -3256(r30)
0020b0  e7448fe6  storeli.w r8, -3252(r30)
0020b4  67058fe6  storeli.w r8, -3248(r30)
0020b8  67458fe6  storeli.w r8, -3244(r30)
0020bc  e7058fe6  storeli.w r8, -3240(r30)
0020c0  e7458fe6  storeli.w r8, -3236(r30)
0020c4  67068fe6  storeli.w r8, -3232(r30)
0020c8  67468fe6  storeli.w r8, -3228(r30)
0020cc  e7068fe6  storeli.w r8, -3224(r30)
0020d0  e7468fe6  storeli.w r8, -3220(r30)
0020d4  67078fe6  storeli.w r8, -3216(r30)
0020d8  67478fe6  storeli.w r8, -3212(r30)
0020dc  e7078fe6  storeli.w r8, -3208(r30)
0020e0  e7478fe6  storeli.w r8, -3204(r30)
0020e4  67088fe6  storeli.w r8, -3200(r30)
0020e8  67488fe6  storeli.w r8, -3196(r30)
0020ec  e7088fe6  storeli.w r8, -3192(r30)
0020f0  e7488fe6  storeli.w r8, -3188(r30)
0020f4  67098fe6  storeli.w r8, -3184(r30)
0020f8  67498fe6  storeli.w r8, -3180(r30)
0020fc  e7098fe6  storeli.w r8, -3176(r30)
002100  e7498fe6  storeli.w r8, -3172(r30)
002104  670a8fe6  storeli.w r8, -3168(r30)
002108  674a8fe6  storeli.w r8, -3164(r30)
00210c  e70a8fe6  storeli.w r8, -3160(r30)
002110  e74a8fe6  storeli.w r8, -3156(r30)
002114  670b8fe6  storeli.w r8, -3152(r30)
002118  674b8fe6  storeli.w r8, -3148(r30)
00211c  e70b8fe6  storeli.w r8, -3144(r30)
002120  e74b8fe6  storeli.w r8, -3140(r30)
002124  670c8fe6  storeli.w r8, -3136(r30)
002128  674c8fe6  storeli.w r8, -3132(r30)
00212c  e70c8fe6  storeli.w r8, -3128(r30)
002130  e74c8fe6  storeli.w r8, -3124(r30)
002134  670d8fe6  storeli.w r8, -3120(r30)
002138  674d8fe6  storeli.w r8, -3116(r30)
00213c  e70d8fe6  storeli.w r8, -3112(r30)
002140  e74d8fe6  storeli.w r8, -3108(r30)
002144  670e8fe6  storeli.w r8, -3104(r30)
002148  674e8fe6  storeli.w r8, -3100(r30)
00214c  e70e8fe6  storeli.w r8, -3096(r30)
002150  e74e8fe6  storeli.w r8, -3092(r30)
002154  670f8fe6  storeli.w r8, -3088(r30)
002158  674f8fe6  storeli.w r8, -3084(r30)
00215c  e70f8fe6  storeli.w r8, -3080(r30)
002160  e74f8fe6  storeli.w r8, -3076(r30)
002164  4be06306  ble.s r7, r6, 3096
002168  b3900328  sext_int2long r[2:3], r7
00216c  9f017fdf  addli r3, r30, -4168
002170  b3120328  sext_int2long r[6:7], r6
002174  9f260000  addli r13, zero, 2
002178  1f5b0000  addli r22, zero, 5
00217c  1f470000  addli r14, zero, 4
002180  9f180000  addli r17, zero, 1
002184  9f0a4000  addli r21, zero, 32
002188  9f0d2000  addli r27, zero, 16
00218c  73b01100  store.d r[2:3], 0(r3)
002190  9f01afdf  addli r3, r30, -4144
002194  ebd00100  load.d r[2:3], 0(r3)
002198  1f71f007  addli r2, zero, 1023
00219c  73b01100  store.d r[2:3], 0(r3)
0021a0  abf01700  lui r1, 383
0021a4  9b900080  ori r1, r1, 2048
0021a8  674b1fde  storeli.w r1, -4172(r30)
0021ac  5b540000  j 672
0021b0  9f03bfdf  addli r7, r30, -4136
0021b4  1f6c1000  addli r24, zero, 14
0021b8  1f5d0000  addli r26, zero, 5
0021bc  9f2c0000  addli r25, zero, 2
0021c0  9f370000  addli r15, zero, 3
0021c4  eb510f00  load.d r[4:5], 0(r30)
0021c8  1f7b0000  addli r22, zero, 7
0021cc  1f181000  addli r16, zero, 9
0021d0  1f291000  addli r18, zero, 10
0021d4  9f341000  addli r9, zero, 11
0021d8  1f441000  addli r8, zero, 12
0021dc  9f591000  addli r19, zero, 13
0021e0  9f7d1000  addli r27, zero, 15
0021e4  1f062000  addli r12, zero, 16
0021e8  1f1e2000  addli r28, zero, 17
0021ec  1f7a3000  addli r20, zero, 31
0021f0  1f058000  addli r10, zero, 64
0021f4  9f260000  addli r13, zero, 2
0021f8  ebd20300  load.d r[6:7], 0(r7)
0021fc  7d100c00  xwait r24, 0
002200  1d000d00  lock zero, r26
002204  9f030001  addli r7, zero, 128
002208  15000014  dma_cfg zero, zero, zero, 10
00220c  15001015  dma_cfg zero, zero, r17, 10
002210  15009015  dma_cfg zero, zero, r25, 10
002214  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
002218  9f021000  addli r5, zero, 8
00221c  1ff33000  addli r6, r1, 31
002220  9bb01000  slli r1, r1, 1
002224  1f011000  addli r2, zero, 8
002228  1500f014  dma_cfg zero, zero, r15, 10
00222c  1500e014  dma_cfg zero, zero, r14, 10
002230  9b80e003  andi r1, r1, 62
002234  1500a015  dma_cfg zero, zero, r26, 10
002238  1500b014  dma_cfg zero, zero, r11, 10
00223c  15006015  dma_cfg zero, zero, r22, 10
002240  15005014  dma_cfg zero, zero, r5, 10
002244  9f222000  addli r5, zero, 18
002248  15000015  dma_cfg zero, zero, r16, 10
00224c  15002015  dma_cfg zero, zero, r18, 10
002250  15009014  dma_cfg zero, zero, r9, 10
002254  15008014  dma_cfg zero, zero, r8, 10
002258  15003015  dma_cfg zero, zero, r19, 10
00225c  15008015  dma_cfg zero, zero, r24, 10
002260  1500b015  dma_cfg zero, zero, r27, 10
002264  1500c014  dma_cfg zero, zero, r12, 10
002268  1500c015  dma_cfg zero, zero, r28, 10
00226c  15005014  dma_cfg zero, zero, r5, 10
002270  9f322000  addli r5, zero, 19
002274  15005014  dma_cfg zero, zero, r5, 10
002278  9f422000  addli r5, zero, 20
00227c  15005014  dma_cfg zero, zero, r5, 10
002280  9f522000  addli r5, zero, 21
002284  15005014  dma_cfg zero, zero, r5, 10
002288  9f622000  addli r5, zero, 22
00228c  15005014  dma_cfg zero, zero, r5, 10
002290  9f722000  addli r5, zero, 23
002294  15005014  dma_cfg zero, zero, r5, 10
002298  9f023000  addli r5, zero, 24
00229c  15005014  dma_cfg zero, zero, r5, 10
0022a0  9f123000  addli r5, zero, 25
0022a4  15005014  dma_cfg zero, zero, r5, 10
0022a8  9f223000  addli r5, zero, 26
0022ac  15005014  dma_cfg zero, zero, r5, 10
0022b0  9f323000  addli r5, zero, 27
0022b4  15005014  dma_cfg zero, zero, r5, 10
0022b8  9f423000  addli r5, zero, 28
0022bc  15005014  dma_cfg zero, zero, r5, 10
0022c0  9f523000  addli r5, zero, 29
0022c4  15005014  dma_cfg zero, zero, r5, 10
0022c8  9f623000  addli r5, zero, 30
0022cc  15005014  dma_cfg zero, zero, r5, 10
0022d0  abf21700  lui r5, 383
0022d4  15004015  dma_cfg zero, zero, r20, 10
0022d8  95880800  dma_cfg r17, r17, zero, 0
0022dc  9b920284  ori r5, r5, 2112
0022e0  95080002  dma_cfg r17, zero, zero, 1
0022e4  15000004  dma_cfg zero, zero, zero, 2
0022e8  e34b6fdf  loadli.w r23,  -4172(r30)
0022ec  950ba006  dma_cfg r23, zero, r10, 3
0022f0  95031009  dma_cfg r7, zero, r17, 4
0022f4  9503100b  dma_cfg r7, zero, r17, 5
0022f8  15000010  dma_cfg zero, zero, zero, 8
0022fc  35000000  dma_run zero
002300  1500100b  dma_cfg zero, zero, r17, 5
002304  15000010  dma_cfg zero, zero, zero, 8
002308  1d100d00  unlock r26
00230c  1d000700  lock zero, r14
002310  95880800  dma_cfg r17, r17, zero, 0
002314  15000204  dma_cfg zero, r4, zero, 2
002318  9582a106  dma_cfg r5, r3, r10, 3
00231c  9b415300  srli r3, r6, 5
002320  00320002  core_id r4
002324  95033508  dma_cfg r7, r10, r3, 4
002328  9503150b  dma_cfg r7, r10, r17, 5
00232c  15001010  dma_cfg zero, zero, r1, 8
002330  35000000  dma_run zero
002334  1500100b  dma_cfg zero, zero, r17, 5
002338  15000010  dma_cfg zero, zero, zero, 8
00233c  1d100700  unlock r14
002340  1d000d00  lock zero, r26
002344  15000014  dma_cfg zero, zero, zero, 10
002348  15001015  dma_cfg zero, zero, r17, 10
00234c  15009015  dma_cfg zero, zero, r25, 10
002350  1500f014  dma_cfg zero, zero, r15, 10
002354  1500e014  dma_cfg zero, zero, r14, 10
002358  1500a015  dma_cfg zero, zero, r26, 10
00235c  1500b014  dma_cfg zero, zero, r11, 10
002360  15006015  dma_cfg zero, zero, r22, 10
002364  1f5b0000  addli r22, zero, 5
002368  15002014  dma_cfg zero, zero, r2, 10
00236c  1f212000  addli r2, zero, 18
002370  15000015  dma_cfg zero, zero, r16, 10
002374  15002015  dma_cfg zero, zero, r18, 10
002378  15009014  dma_cfg zero, zero, r9, 10
00237c  15008014  dma_cfg zero, zero, r8, 10
002380  15003015  dma_cfg zero, zero, r19, 10
002384  15008015  dma_cfg zero, zero, r24, 10
002388  1500b015  dma_cfg zero, zero, r27, 10
00238c  9f0d2000  addli r27, zero, 16
002390  1500c014  dma_cfg zero, zero, r12, 10
002394  1500c015  dma_cfg zero, zero, r28, 10
002398  15002014  dma_cfg zero, zero, r2, 10
00239c  1f312000  addli r2, zero, 19
0023a0  15002014  dma_cfg zero, zero, r2, 10
0023a4  1f412000  addli r2, zero, 20
0023a8  15002014  dma_cfg zero, zero, r2, 10
0023ac  1f512000  addli r2, zero, 21
0023b0  15002014  dma_cfg zero, zero, r2, 10
0023b4  1f612000  addli r2, zero, 22
0023b8  15002014  dma_cfg zero, zero, r2, 10
0023bc  1f712000  addli r2, zero, 23
0023c0  15002014  dma_cfg zero, zero, r2, 10
0023c4  1f013000  addli r2, zero, 24
0023c8  15002014  dma_cfg zero, zero, r2, 10
0023cc  1f113000  addli r2, zero, 25
0023d0  15002014  dma_cfg zero, zero, r2, 10
0023d4  1f213000  addli r2, zero, 26
0023d8  15002014  dma_cfg zero, zero, r2, 10
0023dc  1f313000  addli r2, zero, 27
0023e0  15002014  dma_cfg zero, zero, r2, 10
0023e4  1f413000  addli r2, zero, 28
0023e8  15002014  dma_cfg zero, zero, r2, 10
0023ec  1f513000  addli r2, zero, 29
0023f0  15002014  dma_cfg zero, zero, r2, 10
0023f4  1f613000  addli r2, zero, 30
0023f8  15002014  dma_cfg zero, zero, r2, 10
0023fc  15004015  dma_cfg zero, zero, r20, 10
002400  95880800  dma_cfg r17, r17, zero, 0
002404  95080002  dma_cfg r17, zero, zero, 1
002408  15000004  dma_cfg zero, zero, zero, 2
00240c  950ba006  dma_cfg r23, zero, r10, 3
002410  95033008  dma_cfg r7, zero, r3, 4
002414  9503100b  dma_cfg r7, zero, r17, 5
002418  15001010  dma_cfg zero, zero, r1, 8
00241c  35000000  dma_run zero
002420  1500100b  dma_cfg zero, zero, r17, 5
002424  15000010  dma_cfg zero, zero, zero, 8
002428  1d100d00  unlock r26
00242c  7d800900  xsignal r19, 0
002430  9f00dfdf  addli r1, r30, -4120
002434  9f017fdf  addli r3, r30, -4168
002438  ebd20000  load.d r[6:7], 0(r1)
00243c  ebd00100  load.d r[2:3], 0(r3)
002440  a7920200  addli.d r[6:7], r[6:7], 1
002444  93b01204  setlt.sl r1, r[6:7], r[2:3]
002448  b7d40004  beq r1, zero, 2356
00244c  9f650000  addli r11, zero, 6
002450  3b30e200  bneq r4, r14, 12
002454  9f401000  addli r1, zero, 12
002458  7d900000  xwait r1, 0
00245c  e3005f00  loadli.w r1,  40(r30)
002460  1f01dfdf  addli r2, r30, -4120
002464  1f021000  addli r4, zero, 8
002468  9f070000  addli r15, zero, 0
00246c  1f0d0000  addli r26, zero, 0
002470  73305100  store.d r[6:7], 0(r2)
002474  63414f00  loadli.w r2,  36(r30)
002478  8b901230  div.s r1, r5, r1
00247c  8b902030  div.s r1, r1, r2
002480  1f010002  addli r2, zero, 256
002484  0b912030  div.s r2, r1, r2
002488  9b323100  slli r5, r2, 3
00248c  1b318100  slli r2, r2, 8
002490  8b915618  sub.s r3, r13, r5
002494  0b912018  sub.s r2, r1, r2
002498  8b914140  min.s r3, r3, r4
00249c  8b903038  mod.s r1, r1, r3
0024a0  0b113130  div.s r2, r2, r3
0024a4  e3010fe0  loadli.w r3,  -4096(r30)
0024a8  e74f3fde  storeli.w r3, -4100(r30)
0024ac  e3010fe8  loadli.w r3,  -3072(r30)
0024b0  8b901210  add.s r1, r5, r1
0024b4  1b325100  slli r4, r2, 5
0024b8  b3020128  zext_int2long r[6:7], r2
0024bc  1bb15000  slli r2, r1, 5
0024c0  674e4fde  storeli.w r4, -4124(r30)
0024c4  b3830028  zext_int2long r[8:9], r1
0024c8  1f321000  addli r4, zero, 11
0024cc  674c2fde  storeli.w r2, -4156(r30)
0024d0  97b06203  sll.d r[2:3], r[6:7], r22
0024d4  9f029fdf  addli r5, r30, -4152
0024d8  1f03afdf  addli r6, r30, -4144
0024dc  97b44302  sll.d r[10:11], r[8:9], r4
0024e0  73b07200  store.d r[8:9], 0(r5)
0024e4  17b21003  sll.d r[5:6], r[2:3], r17
0024e8  eb500300  load.d r[2:3], 0(r6)
0024ec  1f03bfdf  addli r6, r30, -4136
0024f0  73304300  store.d r[5:6], 0(r6)
0024f4  97891402  and.d r[20:21], r[10:11], r[2:3]
0024f8  eb500f01  load.d r[2:3], 16(r30)
0024fc  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
002500  1f02efdf  addli r4, r30, -4112
002504  73301200  store.d r[2:3], 0(r4)
002508  5b020000  j 16
00250c  1f1d0d00  addli r26, r26, 1
002510  b75ced02  beq r26, r14, 1844
002514  9f970700  addli r15, r15, 1
002518  b30b0d28  zext_int2long r[24:25], r26
00251c  97b0eb02  sll.d r[2:3], r[24:25], r14
002520  8ba29010  add.ul r[6:7], r[2:3], r[10:11]
002524  9f70f01f  addli r1, zero, 4095
002528  b3800028  zext_int2long r[2:3], r1
00252c  93a35004  setlt.ul r7, r[2:3], r[6:7]
002530  a7800900  addli.d r[2:3], r[20:21], 0
002534  3ba00300  bneq r7, zero, 8
002538  b3000028  zext_int2long r[2:3], zero
00253c  6342ffdf  loadli.w r4,  -4100(r30)
002540  0b96f110  add.s r12, r3, r15
002544  9f7cf001  addli r25, zero, 255
002548  8b13f210  add.s r7, r4, r15
00254c  1f72f001  addli r4, zero, 255
002550  0b194638  mod.s r18, r12, r4
002554  0b984338  mod.s r16, r7, r4
002558  1f9e0300  addli r28, r7, 1
00255c  1f120600  addli r4, r12, 1
002560  b3830a28  zext_int2long r[8:9], r21
002564  6700cfe1  storeli.w r28, -4096(r30)
002568  67004fe8  storeli.w r4, -3072(r30)
00256c  00320002  core_id r4
002570  1b39c900  slli r18, r18, 12
002574  1b3eb800  slli r28, r16, 11
002578  1f080920  addli r16, r18, 4096
00257c  b77ad200  beq r4, r13, 700
002580  3b3db200  bneq r4, r11, 844
002584  1f028000  addli r4, zero, 64
002588  8bb01218  sub.sl r[2:3], r[6:7], r[2:3]
00258c  eb5a8f00  load.d r[22:23], 8(r30)
002590  b30b0228  zext_int2long r[24:25], r4
002594  17b21203  sll.d r[5:6], r[6:7], r17
002598  8f907061  div.sl r[2:3], r[2:3], r[24:25]
00259c  8bbb7040  min.sl r[24:25], r[2:3], r[8:9]
0025a0  8bb01b18  sub.sl r[2:3], r[24:25], r[2:3]
0025a4  8bab4a10  add.ul r[24:25], r[22:23], r[5:6]
0025a8  1f028000  addli r4, zero, 64
0025ac  9f7a0000  addli r21, zero, 7
0025b0  1f7b1000  addli r22, zero, 15
0025b4  1f834000  addli r6, r1, 32
0025b8  1f310000  addli r2, zero, 3
0025bc  9f60f001  addli r1, zero, 254
0025c0  7d100100  xwait r2, 0
0025c4  3fe4c000  blt.s r1, r12, 280
0025c8  9f520000  addli r5, zero, 5
0025cc  9f001000  addli r1, zero, 8
0025d0  1f060001  addli r12, zero, 128
0025d4  1d800200  lock zero, r5
0025d8  15000014  dma_cfg zero, zero, zero, 10
0025dc  15001015  dma_cfg zero, zero, r17, 10
0025e0  1500d014  dma_cfg zero, zero, r13, 10
0025e4  15002014  dma_cfg zero, zero, r2, 10
0025e8  1500e014  dma_cfg zero, zero, r14, 10
0025ec  15005014  dma_cfg zero, zero, r5, 10
0025f0  1500b014  dma_cfg zero, zero, r11, 10
0025f4  15005015  dma_cfg zero, zero, r21, 10
0025f8  15001014  dma_cfg zero, zero, r1, 10
0025fc  9f101000  addli r1, zero, 9
002600  15001014  dma_cfg zero, zero, r1, 10
002604  9f201000  addli r1, zero, 10
002608  15001014  dma_cfg zero, zero, r1, 10
00260c  9f301000  addli r1, zero, 11
002610  15001014  dma_cfg zero, zero, r1, 10
002614  9f401000  addli r1, zero, 12
002618  15001014  dma_cfg zero, zero, r1, 10
00261c  9f501000  addli r1, zero, 13
002620  15001014  dma_cfg zero, zero, r1, 10
002624  9f601000  addli r1, zero, 14
002628  15001014  dma_cfg zero, zero, r1, 10
00262c  9f102000  addli r1, zero, 17
002630  15006015  dma_cfg zero, zero, r22, 10
002634  1500b015  dma_cfg zero, zero, r27, 10
002638  15001014  dma_cfg zero, zero, r1, 10
00263c  9f202000  addli r1, zero, 18
002640  15001014  dma_cfg zero, zero, r1, 10
002644  9f302000  addli r1, zero, 19
002648  15001014  dma_cfg zero, zero, r1, 10
00264c  9f402000  addli r1, zero, 20
002650  15001014  dma_cfg zero, zero, r1, 10
002654  9f502000  addli r1, zero, 21
002658  15001014  dma_cfg zero, zero, r1, 10
00265c  9f602000  addli r1, zero, 22
002660  15001014  dma_cfg zero, zero, r1, 10
002664  9f702000  addli r1, zero, 23
002668  15001014  dma_cfg zero, zero, r1, 10
00266c  9f003000  addli r1, zero, 24
002670  15001014  dma_cfg zero, zero, r1, 10
002674  9f103000  addli r1, zero, 25
002678  15001014  dma_cfg zero, zero, r1, 10
00267c  9f203000  addli r1, zero, 26
002680  15001014  dma_cfg zero, zero, r1, 10
002684  9f303000  addli r1, zero, 27
002688  15001014  dma_cfg zero, zero, r1, 10
00268c  9f403000  addli r1, zero, 28
002690  15001014  dma_cfg zero, zero, r1, 10
002694  9f503000  addli r1, zero, 29
002698  15001014  dma_cfg zero, zero, r1, 10
00269c  9f603000  addli r1, zero, 30
0026a0  15001014  dma_cfg zero, zero, r1, 10
0026a4  9f703000  addli r1, zero, 31
0026a8  15001014  dma_cfg zero, zero, r1, 10
0026ac  9f004000  addli r1, zero, 32
0026b0  95880800  dma_cfg r17, r17, zero, 0
0026b4  95080002  dma_cfg r17, zero, zero, 1
0026b8  15000004  dma_cfg zero, zero, zero, 2
0026bc  15084006  dma_cfg r16, zero, r4, 3
0026c0  15061009  dma_cfg r12, zero, r17, 4
0026c4  1506100a  dma_cfg r12, zero, r1, 5
0026c8  15001010  dma_cfg zero, zero, r1, 8
0026cc  35000000  dma_run zero
0026d0  1500100b  dma_cfg zero, zero, r17, 5
0026d4  15000010  dma_cfg zero, zero, zero, 8
0026d8  1d900200  unlock r5
0026dc  1d000700  lock zero, r14
0026e0  9f008920  addli r1, r18, 4160
0026e4  1f090001  addli r18, zero, 128
0026e8  9f064000  addli r13, zero, 32
0026ec  1f560000  addli r12, zero, 5
0026f0  9f220000  addli r5, zero, 2
0026f4  95880800  dma_cfg r17, r17, zero, 0
0026f8  15000c04  dma_cfg zero, r24, zero, 2
0026fc  95804b06  dma_cfg r1, r23, r4, 3
002700  9f001000  addli r1, zero, 8
002704  15091209  dma_cfg r18, r4, r17, 4
002708  1509690a  dma_cfg r18, r18, r6, 5
00270c  1500d010  dma_cfg zero, zero, r13, 8
002710  35000000  dma_run zero
002714  1500100b  dma_cfg zero, zero, r17, 5
002718  15000010  dma_cfg zero, zero, zero, 8
00271c  1d100700  unlock r14
002720  1d000600  lock zero, r12
002724  15000014  dma_cfg zero, zero, zero, 10
002728  15001015  dma_cfg zero, zero, r17, 10
00272c  15005014  dma_cfg zero, zero, r5, 10
002730  15002014  dma_cfg zero, zero, r2, 10
002734  1500e014  dma_cfg zero, zero, r14, 10
002738  1500c014  dma_cfg zero, zero, r12, 10
00273c  1500b014  dma_cfg zero, zero, r11, 10
002740  15005015  dma_cfg zero, zero, r21, 10
002744  9f0a4000  addli r21, zero, 32
002748  15001014  dma_cfg zero, zero, r1, 10
00274c  9f101000  addli r1, zero, 9
002750  15001014  dma_cfg zero, zero, r1, 10
002754  9f201000  addli r1, zero, 10
002758  15001014  dma_cfg zero, zero, r1, 10
00275c  9f301000  addli r1, zero, 11
002760  15001014  dma_cfg zero, zero, r1, 10
002764  9f401000  addli r1, zero, 12
002768  15001014  dma_cfg zero, zero, r1, 10
00276c  9f501000  addli r1, zero, 13
002770  15001014  dma_cfg zero, zero, r1, 10
002774  9f601000  addli r1, zero, 14
002778  15001014  dma_cfg zero, zero, r1, 10
00277c  9f102000  addli r1, zero, 17
002780  15006015  dma_cfg zero, zero, r22, 10
002784  1f5b0000  addli r22, zero, 5
002788  1500b015  dma_cfg zero, zero, r27, 10
00278c  15001014  dma_cfg zero, zero, r1, 10
002790  9f202000  addli r1, zero, 18
002794  15001014  dma_cfg zero, zero, r1, 10
002798  9f302000  addli r1, zero, 19
00279c  15001014  dma_cfg zero, zero, r1, 10
0027a0  9f402000  addli r1, zero, 20
0027a4  15001014  dma_cfg zero, zero, r1, 10
0027a8  9f502000  addli r1, zero, 21
0027ac  15001014  dma_cfg zero, zero, r1, 10
0027b0  9f602000  addli r1, zero, 22
0027b4  15001014  dma_cfg zero, zero, r1, 10
0027b8  9f702000  addli r1, zero, 23
0027bc  15001014  dma_cfg zero, zero, r1, 10
0027c0  9f003000  addli r1, zero, 24
0027c4  15001014  dma_cfg zero, zero, r1, 10
0027c8  9f103000  addli r1, zero, 25
0027cc  15001014  dma_cfg zero, zero, r1, 10
0027d0  9f203000  addli r1, zero, 26
0027d4  15001014  dma_cfg zero, zero, r1, 10
0027d8  9f303000  addli r1, zero, 27
0027dc  15001014  dma_cfg zero, zero, r1, 10
0027e0  9f403000  addli r1, zero, 28
0027e4  15001014  dma_cfg zero, zero, r1, 10
0027e8  9f503000  addli r1, zero, 29
0027ec  15001014  dma_cfg zero, zero, r1, 10
0027f0  9f603000  addli r1, zero, 30
0027f4  15001014  dma_cfg zero, zero, r1, 10
0027f8  9f703000  addli r1, zero, 31
0027fc  15001014  dma_cfg zero, zero, r1, 10
002800  95880800  dma_cfg r17, r17, zero, 0
002804  95080002  dma_cfg r17, zero, zero, 1
002808  15000004  dma_cfg zero, zero, zero, 2
00280c  15084006  dma_cfg r16, zero, r4, 3
002810  15091009  dma_cfg r18, zero, r17, 4
002814  1509600a  dma_cfg r18, zero, r6, 5
002818  1500d010  dma_cfg zero, zero, r13, 8
00281c  35000000  dma_run zero
002820  1500100b  dma_cfg zero, zero, r17, 5
002824  9f260000  addli r13, zero, 2
002828  15000010  dma_cfg zero, zero, zero, 8
00282c  1d100600  unlock r12
002830  7d800200  xsignal r5, 0
002834  db090000  j 76
002838  9f200000  addli r1, zero, 2
00283c  1f014000  addli r2, zero, 32
002840  9f260000  addli r13, zero, 2
002844  9f0a4000  addli r21, zero, 32
002848  9f0d2000  addli r27, zero, 16
00284c  7d900000  xwait r1, 0
002850  7d100b00  xwait r22, 0
002854  1d000000  lock zero, zero
002858  81000000  ds_cfg r1, zero, 0
00285c  9f002000  addli r1, zero, 16
002860  01010002  ds_cfg r2, zero, 1
002864  8100001c  ds_cfg r1, zero, 14
002868  0101001a  ds_cfg r2, zero, 13
00286c  211e1802  shuffle_batch r28, r16, r1, 1
002870  9f300000  addli r1, zero, 3
002874  1d100000  unlock zero
002878  7d800000  xsignal r1, 0
00287c  7d000700  xsignal r14, 0
002880  e3000ff0  loadli.w r1,  -2048(r30)
002884  63020ff8  loadli.w r4,  -1024(r30)
002888  0b919039  mod.s r2, r1, r25
00288c  1f120200  addli r4, r4, 1
002890  9f900000  addli r1, r1, 1
002894  67004ff8  storeli.w r4, -1024(r30)
002898  00320002  core_id r4
00289c  67001ff0  storeli.w r1, -2048(r30)
0028a0  1b39b100  slli r18, r2, 11
0028a4  bb21e2fe  bneq r4, r14, -920
0028a8  9f001000  addli r1, zero, 8
0028ac  7d100700  xwait r14, 0
0028b0  7d900000  xwait r1, 0
0028b4  1d800800  lock zero, r17
0028b8  898a5d01  mm_cfg r21, r27, r21, 0
0028bc  89881805  mm_cfg r17, r17, r17, 2
0028c0  37ac0700  beq r15, zero, 776
0028c4  29102e11  mm_acc zero, r28, r18, 8
0028c8  db600000  j 772
0028cc  63010ff0  loadli.w r2,  -2048(r30)
0028d0  e3000ff8  loadli.w r1,  -1024(r30)
0028d4  9f72f001  addli r5, zero, 255
0028d8  0b125138  mod.s r4, r2, r5
0028dc  8b925038  mod.s r5, r1, r5
0028e0  1f110100  addli r2, r2, 1
0028e4  67002ff0  storeli.w r2, -2048(r30)
0028e8  1f910000  addli r2, r1, 1
0028ec  67002ff8  storeli.w r2, -1024(r30)
0028f0  1f710000  addli r2, zero, 7
0028f4  1b39b200  slli r18, r4, 11
0028f8  1bb3b200  slli r6, r5, 11
0028fc  2b021000  lui r4, 256
002900  0b184310  add.s r16, r6, r4
002904  00320002  core_id r4
002908  b70b2200  beq r4, r2, 736
00290c  3b6e12ff  bneq r4, r17, -104
002910  1f791000  addli r18, zero, 15
002914  1f01efdf  addli r2, r30, -4112
002918  1f760000  addli r12, zero, 7
00291c  17b22b03  sll.d r[5:6], r[24:25], r18
002920  6b5b0100  load.d r[23:24], 0(r2)
002924  1f018000  addli r2, zero, 64
002928  7d100600  xwait r12, 0
00292c  8b2b4b10  add.ul r[24:25], r[23:24], r[5:6]
002930  1f62f001  addli r4, zero, 254
002934  3f741200  blt.s r4, r1, 284
002938  9f520000  addli r5, zero, 5
00293c  9f300000  addli r1, zero, 3
002940  1f122000  addli r4, zero, 17
002944  1d800200  lock zero, r5
002948  15000014  dma_cfg zero, zero, zero, 10
00294c  15001015  dma_cfg zero, zero, r17, 10
002950  1500d014  dma_cfg zero, zero, r13, 10
002954  15001014  dma_cfg zero, zero, r1, 10
002958  9f001000  addli r1, zero, 8
00295c  1500e014  dma_cfg zero, zero, r14, 10
002960  15005014  dma_cfg zero, zero, r5, 10
002964  1500b014  dma_cfg zero, zero, r11, 10
002968  1500c014  dma_cfg zero, zero, r12, 10
00296c  15001014  dma_cfg zero, zero, r1, 10
002970  9f101000  addli r1, zero, 9
002974  15001014  dma_cfg zero, zero, r1, 10
002978  9f201000  addli r1, zero, 10
00297c  15001014  dma_cfg zero, zero, r1, 10
002980  9f301000  addli r1, zero, 11
002984  15001014  dma_cfg zero, zero, r1, 10
002988  9f401000  addli r1, zero, 12
00298c  15001014  dma_cfg zero, zero, r1, 10
002990  9f501000  addli r1, zero, 13
002994  15001014  dma_cfg zero, zero, r1, 10
002998  9f601000  addli r1, zero, 14
00299c  15001014  dma_cfg zero, zero, r1, 10
0029a0  9f002000  addli r1, zero, 16
0029a4  15002015  dma_cfg zero, zero, r18, 10
0029a8  15001014  dma_cfg zero, zero, r1, 10
0029ac  15004014  dma_cfg zero, zero, r4, 10
0029b0  1f222000  addli r4, zero, 18
0029b4  15004014  dma_cfg zero, zero, r4, 10
0029b8  1f322000  addli r4, zero, 19
0029bc  15004014  dma_cfg zero, zero, r4, 10
0029c0  1f422000  addli r4, zero, 20
0029c4  15004014  dma_cfg zero, zero, r4, 10
0029c8  1f522000  addli r4, zero, 21
0029cc  15004014  dma_cfg zero, zero, r4, 10
0029d0  1f622000  addli r4, zero, 22
0029d4  15004014  dma_cfg zero, zero, r4, 10
0029d8  1f722000  addli r4, zero, 23
0029dc  15004014  dma_cfg zero, zero, r4, 10
0029e0  1f023000  addli r4, zero, 24
0029e4  15004014  dma_cfg zero, zero, r4, 10
0029e8  1f123000  addli r4, zero, 25
0029ec  15004014  dma_cfg zero, zero, r4, 10
0029f0  1f223000  addli r4, zero, 26
0029f4  15004014  dma_cfg zero, zero, r4, 10
0029f8  1f323000  addli r4, zero, 27
0029fc  15004014  dma_cfg zero, zero, r4, 10
002a00  1f423000  addli r4, zero, 28
002a04  15004014  dma_cfg zero, zero, r4, 10
002a08  1f523000  addli r4, zero, 29
002a0c  15004014  dma_cfg zero, zero, r4, 10
002a10  1f623000  addli r4, zero, 30
002a14  15004014  dma_cfg zero, zero, r4, 10
002a18  1f723000  addli r4, zero, 31
002a1c  15004014  dma_cfg zero, zero, r4, 10
002a20  1f020001  addli r4, zero, 128
002a24  95880800  dma_cfg r17, r17, zero, 0
002a28  95080002  dma_cfg r17, zero, zero, 1
002a2c  15000004  dma_cfg zero, zero, zero, 2
002a30  15082006  dma_cfg r16, zero, r2, 3
002a34  15021009  dma_cfg r4, zero, r17, 4
002a38  1502100a  dma_cfg r4, zero, r1, 5
002a3c  15000010  dma_cfg zero, zero, zero, 8
002a40  35000000  dma_run zero
002a44  1500100b  dma_cfg zero, zero, r17, 5
002a48  15000010  dma_cfg zero, zero, zero, 8
002a4c  1d900200  unlock r5
002a50  ab001000  lui r1, 256
002a54  1d000700  lock zero, r14
002a58  9f050001  addli r11, zero, 128
002a5c  1f022000  addli r4, zero, 16
002a60  9f620000  addli r5, zero, 6
002a64  9f0d2000  addli r27, zero, 16
002a68  1f5b0000  addli r22, zero, 5
002a6c  95880800  dma_cfg r17, r17, zero, 0
002a70  9b900004  ori r1, r1, 64
002a74  15000c04  dma_cfg zero, r24, zero, 2
002a78  8b101310  add.s r1, r6, r1
002a7c  1f530000  addli r6, zero, 5
002a80  95802b06  dma_cfg r1, r23, r2, 3
002a84  9f000010  addli r1, zero, 2048
002a88  95051109  dma_cfg r11, r2, r17, 4
002a8c  9585400a  dma_cfg r11, r1, r4, 5
002a90  9f300000  addli r1, zero, 3
002a94  15000010  dma_cfg zero, zero, zero, 8
002a98  35000000  dma_run zero
002a9c  1500100b  dma_cfg zero, zero, r17, 5
002aa0  15000010  dma_cfg zero, zero, zero, 8
002aa4  1d100700  unlock r14
002aa8  1d000300  lock zero, r6
002aac  15000014  dma_cfg zero, zero, zero, 10
002ab0  15001015  dma_cfg zero, zero, r17, 10
002ab4  1500d014  dma_cfg zero, zero, r13, 10
002ab8  15001014  dma_cfg zero, zero, r1, 10
002abc  9f001000  addli r1, zero, 8
002ac0  1500e014  dma_cfg zero, zero, r14, 10
002ac4  15006014  dma_cfg zero, zero, r6, 10
002ac8  15005014  dma_cfg zero, zero, r5, 10
002acc  1500c014  dma_cfg zero, zero, r12, 10
002ad0  15001014  dma_cfg zero, zero, r1, 10
002ad4  9f101000  addli r1, zero, 9
002ad8  15001014  dma_cfg zero, zero, r1, 10
002adc  9f201000  addli r1, zero, 10
002ae0  15001014  dma_cfg zero, zero, r1, 10
002ae4  9f301000  addli r1, zero, 11
002ae8  15001014  dma_cfg zero, zero, r1, 10
002aec  9f401000  addli r1, zero, 12
002af0  15001014  dma_cfg zero, zero, r1, 10
002af4  9f501000  addli r1, zero, 13
002af8  15001014  dma_cfg zero, zero, r1, 10
002afc  9f601000  addli r1, zero, 14
002b00  15001014  dma_cfg zero, zero, r1, 10
002b04  9f102000  addli r1, zero, 17
002b08  15002015  dma_cfg zero, zero, r18, 10
002b0c  15004014  dma_cfg zero, zero, r4, 10
002b10  15001014  dma_cfg zero, zero, r1, 10
002b14  9f202000  addli r1, zero, 18
002b18  15001014  dma_cfg zero, zero, r1, 10
002b1c  9f302000  addli r1, zero, 19
002b20  15001014  dma_cfg zero, zero, r1, 10
002b24  9f402000  addli r1, zero, 20
002b28  15001014  dma_cfg zero, zero, r1, 10
002b2c  9f502000  addli r1, zero, 21
002b30  15001014  dma_cfg zero, zero, r1, 10
002b34  9f602000  addli r1, zero, 22
002b38  15001014  dma_cfg zero, zero, r1, 10
002b3c  9f702000  addli r1, zero, 23
002b40  15001014  dma_cfg zero, zero, r1, 10
002b44  9f003000  addli r1, zero, 24
002b48  15001014  dma_cfg zero, zero, r1, 10
002b4c  9f103000  addli r1, zero, 25
002b50  15001014  dma_cfg zero, zero, r1, 10
002b54  9f203000  addli r1, zero, 26
002b58  15001014  dma_cfg zero, zero, r1, 10
002b5c  9f303000  addli r1, zero, 27
002b60  15001014  dma_cfg zero, zero, r1, 10
002b64  9f403000  addli r1, zero, 28
002b68  15001014  dma_cfg zero, zero, r1, 10
002b6c  9f503000  addli r1, zero, 29
002b70  15001014  dma_cfg zero, zero, r1, 10
002b74  9f603000  addli r1, zero, 30
002b78  15001014  dma_cfg zero, zero, r1, 10
002b7c  9f703000  addli r1, zero, 31
002b80  15001014  dma_cfg zero, zero, r1, 10
002b84  95880800  dma_cfg r17, r17, zero, 0
002b88  95080002  dma_cfg r17, zero, zero, 1
002b8c  15000004  dma_cfg zero, zero, zero, 2
002b90  15082006  dma_cfg r16, zero, r2, 3
002b94  95051009  dma_cfg r11, zero, r17, 4
002b98  9505400a  dma_cfg r11, zero, r4, 5
002b9c  9f650000  addli r11, zero, 6
002ba0  00320002  core_id r4
002ba4  15000010  dma_cfg zero, zero, zero, 8
002ba8  35000000  dma_run zero
002bac  1500100b  dma_cfg zero, zero, r17, 5
002bb0  15000010  dma_cfg zero, zero, zero, 8
002bb4  1d100300  unlock r6
002bb8  7d800200  xsignal r5, 0
002bbc  1f1d0d00  addli r26, r26, 1
002bc0  3b55edfc  bneq r26, r14, -1708
002bc4  db0e0000  j 116
002bc8  29002e11  mm zero, r28, r18, 8
002bcc  1f1d0d00  addli r26, r26, 1
002bd0  9f101000  addli r1, zero, 9
002bd4  1d900800  unlock r17
002bd8  7d000b00  xsignal r22, 0
002bdc  7d800000  xsignal r1, 0
002be0  bb54edfc  bneq r26, r14, -1740
002be4  5b0b0000  j 88
002be8  9f101000  addli r1, zero, 9
002bec  7d900500  xwait r11, 0
002bf0  1f014000  addli r2, zero, 32
002bf4  9f0a4000  addli r21, zero, 32
002bf8  9f0d2000  addli r27, zero, 16
002bfc  7d900000  xwait r1, 0
002c00  1d000000  lock zero, zero
002c04  9f002000  addli r1, zero, 16
002c08  81060000  ds_cfg r13, zero, 0
002c0c  01010002  ds_cfg r2, zero, 1
002c10  8100001c  ds_cfg r1, zero, 14
002c14  0101001a  ds_cfg r2, zero, 13
002c18  41091804  shuffle_coa r18, r16, r1, 2
002c1c  9f700000  addli r1, zero, 7
002c20  1d100000  unlock zero
002c24  7d800000  xsignal r1, 0
002c28  9f001000  addli r1, zero, 8
002c2c  7d800000  xsignal r1, 0
002c30  1f1d0d00  addli r26, r26, 1
002c34  bb03edfc  bneq r26, r14, -1824
002c38  3b30e200  bneq r4, r14, 12
002c3c  9f201000  addli r1, zero, 10
002c40  7d800000  xsignal r1, 0
002c44  37736201  beq r4, r22, 220
002c48  e340cfdf  loadli.w r1,  -4124(r30)
002c4c  9f01c007  addli r3, zero, 992
002c50  9f650000  addli r11, zero, 6
002c54  b3810128  zext_int2long r[4:5], r3
002c58  b3800028  zext_int2long r[2:3], r1
002c5c  8ba13040  min.ul r[4:5], r[2:3], r[4:5]
002c60  a7814100  addli.d r[4:5], r[4:5], 32
002c64  8ba11148  max.ul r[4:5], r[4:5], r[2:3]
002c68  8bb01118  sub.sl r[2:3], r[4:5], r[2:3]
002c6c  00320002  core_id r4
002c70  8ba07040  min.ul r[2:3], r[2:3], r[8:9]
002c74  b774b2fa  beq r4, r11, -2756
002c78  bb6e02fa  bneq r4, zero, -2120
002c7c  e3418fdf  loadli.w r3,  -4156(r30)
002c80  9f049fdf  addli r9, r30, -4152
002c84  1f361000  addli r12, zero, 11
002c88  9f07bfdf  addli r15, r30, -4136
002c8c  1f5b0000  addli r22, zero, 5
002c90  ebd20400  load.d r[6:7], 0(r9)
002c94  7d100600  xwait r12, 0
002c98  eb558f01  load.d r[12:13], 24(r30)
002c9c  b3910128  sext_int2long r[4:5], r3
002ca0  8bb47140  min.sl r[10:11], r[4:5], r[8:9]
002ca4  97b2b203  sll.d r[6:7], r[6:7], r27
002ca8  a7844400  addli.d r[10:11], r[10:11], 32
002cac  8ba25510  add.ul r[6:7], r[12:13], r[6:7]
002cb0  ebd50700  load.d r[12:13], 0(r15)
002cb4  8bb43448  max.sl r[10:11], r[10:11], r[4:5]
002cb8  8ba2b210  add.ul r[6:7], r[6:7], r[12:13]
002cbc  8bb13418  sub.sl r[4:5], r[10:11], r[4:5]
002cc0  1f550000  addli r10, zero, 5
002cc4  9f048000  addli r9, zero, 64
002cc8  1d000500  lock zero, r10
002ccc  8bb17140  min.sl r[4:5], r[4:5], r[8:9]
002cd0  95880800  dma_cfg r17, r17, zero, 0
002cd4  15800802  dma_cfg zero, r17, zero, 1
002cd8  15030004  dma_cfg r6, zero, zero, 2
002cdc  95829406  dma_cfg r5, r9, r9, 3
002ce0  9ff23000  addli r5, r1, 31
002ce4  9bb01000  slli r1, r1, 1
002ce8  1f010001  addli r2, zero, 128
002cec  9bc25200  srli r5, r5, 5
002cf0  9b80e003  andi r1, r1, 62
002cf4  95045108  dma_cfg r9, r2, r5, 4
002cf8  9f020010  addli r5, zero, 2048
002cfc  9502310a  dma_cfg r5, r2, r3, 5
002d00  00320002  core_id r4
002d04  15001010  dma_cfg zero, zero, r1, 8
002d08  35000000  dma_run zero
002d0c  1500100b  dma_cfg zero, zero, r17, 5
002d10  9f401000  addli r1, zero, 12
002d14  15000010  dma_cfg zero, zero, zero, 8
002d18  1d100500  unlock r10
002d1c  5b0b0000  j 88
002d20  1f211000  addli r2, zero, 10
002d24  9f000000  addli r1, zero, 0
002d28  9f010020  addli r3, zero, 4096
002d2c  7d100100  xwait r2, 0
002d30  1f511000  addli r2, zero, 13
002d34  7d100100  xwait r2, 0
002d38  1d800600  lock zero, r13
002d3c  2b01803f  lui r2, 260096
002d40  0d000002  ew_cfg zero, zero, zero, 1
002d44  0d110100  ewcoeff_cfg r2, r2, zero, 0
002d48  1f713000  addli r2, zero, 31
002d4c  0d000104  ew_cfg zero, r2, zero, 2
002d50  8d080006  ew_cfg r17, zero, zero, 3
002d54  63416fdf  loadli.w r2,  -4172(r30)
002d58  ad802000  dsmadd r1, r1, r2, 0
002d5c  9f800001  addli r1, r1, 128
002d60  bbef30fe  bneq r1, r3, -8
002d64  9f301000  addli r1, zero, 11
002d68  1d900600  unlock r13
002d6c  7d800000  xsignal r1, 0
002d70  9f601000  addli r1, zero, 14
002d74  7d800000  xsignal r1, 0
002d78  5bd7feff  j -2376
002d7c  7d000000  xsignal zero, 0
002d80  bb600200  bneq r4, zero, 56
002d84  9f200000  addli r1, zero, 2
002d88  7d100000  xwait zero, 0
002d8c  7d100000  xwait zero, 0
002d90  7d100000  xwait zero, 0
002d94  7d100000  xwait zero, 0
002d98  7d100000  xwait zero, 0
002d9c  7d100000  xwait zero, 0
002da0  7d100000  xwait zero, 0
002da4  7d100000  xwait zero, 0
002da8  1d800000  lock zero, r1
002dac  0d000020  ew_cfg zero, zero, zero, 16
002db0  1d900000  unlock r1
002db4  7d400000  xsignal_mode_cfg zero
002db8  9f8eae20  addli sp, sp, 4176
002dbc  00a00300  mfence { lm, sm, gm }
002dc0  00100000  exit
002dc4  00100000  exit
002dc8  00100000  exit
002dcc  00100000  exit
002dd0  00100000  exit
002dd4  00100000  exit
002dd8  00100000  exit
002ddc  00100000  exit
002de0  00100000  exit
002de4  00100000  exit
002de8  00100000  exit
002dec  00100000  exit
002df0  00100000  exit
002df4  00100000  exit
002df8  00100000  exit
002dfc  00100000  exit
002e00  00100000  exit
002e04  00100000  exit
002e08  00100000  exit
002e0c  00100000  exit
002e10  00100000  exit
002e14  00100000  exit
002e18  00100000  exit
002e1c  00100000  exit
002e20  00100000  exit
002e24  00100000  exit
002e28  00100000  exit
002e2c  00100000  exit
002e30  00100000  exit
002e34  00100000  exit
002e38  00100000  exit
002e3c  00100000  exit
002e40  00100000  exit
002e44  00100000  exit
002e48  00100000  exit
002e4c  00100000  exit
002e50  00100000  exit
002e54  00100000  exit
002e58  00100000  exit
002e5c  00100000  exit
002e60  00100000  exit
002e64  00100000  exit
002e68  00100000  exit
002e6c  00100000  exit
002e70  00100000  exit
002e74  00100000  exit
002e78  00100000  exit
002e7c  00100000  exit
002e80  00100000  exit
002e84  00100000  exit
002e88  00100000  exit
002e8c  00100000  exit
002e90  00100000  exit
002e94  00100000  exit
002e98  00100000  exit
002e9c  00100000  exit
002ea0  00100000  exit
002ea4  00100000  exit
002ea8  00100000  exit
002eac  00100000  exit
002eb0  00100000  exit
002eb4  00100000  exit
002eb8  00100000  exit
002ebc  00100000  exit
002ec0  00100000  exit
002ec4  00100000  exit
002ec8  00100000  exit
002ecc  00100000  exit
002ed0  00100000  exit
002ed4  00100000  exit
002ed8  00100000  exit
002edc  00100000  exit
002ee0  00100000  exit
002ee4  00100000  exit
002ee8  00100000  exit
002eec  00100000  exit
002ef0  00100000  exit
002ef4  00100000  exit
002ef8  00100000  exit
002efc  00100000  exit
002f00  00100000  exit
002f04  00100000  exit
002f08  00100000  exit
002f0c  00100000  exit
002f10  00100000  exit
002f14  00100000  exit
002f18  00100000  exit
002f1c  00100000  exit
002f20  00100000  exit
002f24  00100000  exit
002f28  00100000  exit
002f2c  00100000  exit
002f30  00100000  exit
002f34  00100000  exit
002f38  00100000  exit
002f3c  00100000  exit
002f40  00100000  exit
002f44  00100000  exit
002f48  00100000  exit
002f4c  00100000  exit
002f50  00100000  exit
002f54  00100000  exit
002f58  00100000  exit
002f5c  00100000  exit
002f60  00100000  exit
002f64  00100000  exit
002f68  00100000  exit
002f6c  00100000  exit
002f70  00100000  exit
002f74  00100000  exit
002f78  00100000  exit
002f7c  00100000  exit
002f80  00100000  exit
002f84  00100000  exit
002f88  00100000  exit
002f8c  00100000  exit
002f90  00100000  exit
002f94  00100000  exit
002f98  00100000  exit
002f9c  00100000  exit
002fa0  00100000  exit
002fa4  00100000  exit
002fa8  00100000  exit
002fac  00100000  exit
002fb0  00100000  exit
002fb4  00100000  exit
002fb8  00100000  exit
002fbc  00100000  exit
002fc0  00100000  exit
002fc4  00100000  exit
002fc8  00100000  exit
002fcc  00100000  exit
002fd0  00100000  exit
002fd4  00100000  exit
002fd8  00100000  exit
002fdc  00100000  exit
002fe0  00100000  exit
002fe4  00100000  exit
002fe8  00100000  exit
002fec  00100000  exit
002ff0  00100000  exit
002ff4  00100000  exit
002ff8  00100000  exit
002ffc  00100000  exit
003000  00100000  exit
