; SHA-256 4f871a627632b485e24ac06a4d00b38b85ae7e27a5a544d87a6aee0a95915189
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
0000bc  80390002  core_id r19
0000c0  1f8fae20  addli r30, sp, 4176
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00900  beq r19, zero, 24
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
001124  80530002  load_param_i r7, 0
001128  abf2ffff  lui r5, 1048575
00112c  67000ff8  storeli.w zero, -1024(r30)
001130  67000ff0  storeli.w zero, -2048(r30)
001134  1b93f2ff  ori r6, r5, 4095
001138  8b101120  mul.s r1, r2, r1
00113c  1f010200  addli r2, r4, 0
001140  67406ff8  storeli.w r6, -1020(r30)
001144  e7006ff8  storeli.w r6, -1016(r30)
001148  e7406ff8  storeli.w r6, -1012(r30)
00114c  67016ff8  storeli.w r6, -1008(r30)
001150  67416ff8  storeli.w r6, -1004(r30)
001154  e7016ff8  storeli.w r6, -1000(r30)
001158  e7416ff8  storeli.w r6, -996(r30)
00115c  67026ff8  storeli.w r6, -992(r30)
001160  67426ff8  storeli.w r6, -988(r30)
001164  e7026ff8  storeli.w r6, -984(r30)
001168  e7426ff8  storeli.w r6, -980(r30)
00116c  67036ff8  storeli.w r6, -976(r30)
001170  67436ff8  storeli.w r6, -972(r30)
001174  e7036ff8  storeli.w r6, -968(r30)
001178  e7436ff8  storeli.w r6, -964(r30)
00117c  67046ff8  storeli.w r6, -960(r30)
001180  67446ff8  storeli.w r6, -956(r30)
001184  e7046ff8  storeli.w r6, -952(r30)
001188  e7446ff8  storeli.w r6, -948(r30)
00118c  67056ff8  storeli.w r6, -944(r30)
001190  67456ff8  storeli.w r6, -940(r30)
001194  e7056ff8  storeli.w r6, -936(r30)
001198  e7456ff8  storeli.w r6, -932(r30)
00119c  67026fe8  storeli.w r6, -3040(r30)
0011a0  67066ff8  storeli.w r6, -928(r30)
0011a4  67466ff8  storeli.w r6, -924(r30)
0011a8  e7066ff8  storeli.w r6, -920(r30)
0011ac  e7466ff8  storeli.w r6, -916(r30)
0011b0  67076ff8  storeli.w r6, -912(r30)
0011b4  67476ff8  storeli.w r6, -908(r30)
0011b8  e7076ff8  storeli.w r6, -904(r30)
0011bc  e7476ff8  storeli.w r6, -900(r30)
0011c0  67086ff8  storeli.w r6, -896(r30)
0011c4  67486ff8  storeli.w r6, -892(r30)
0011c8  e7086ff8  storeli.w r6, -888(r30)
0011cc  e7486ff8  storeli.w r6, -884(r30)
0011d0  67096ff8  storeli.w r6, -880(r30)
0011d4  67496ff8  storeli.w r6, -876(r30)
0011d8  e7096ff8  storeli.w r6, -872(r30)
0011dc  e7496ff8  storeli.w r6, -868(r30)
0011e0  670a6ff8  storeli.w r6, -864(r30)
0011e4  674a6ff8  storeli.w r6, -860(r30)
0011e8  e70a6ff8  storeli.w r6, -856(r30)
0011ec  e74a6ff8  storeli.w r6, -852(r30)
0011f0  670b6ff8  storeli.w r6, -848(r30)
0011f4  674b6ff8  storeli.w r6, -844(r30)
0011f8  e70b6ff8  storeli.w r6, -840(r30)
0011fc  e74b6ff8  storeli.w r6, -836(r30)
001200  670c6ff8  storeli.w r6, -832(r30)
001204  674c6ff8  storeli.w r6, -828(r30)
001208  e70c6ff8  storeli.w r6, -824(r30)
00120c  e74c6ff8  storeli.w r6, -820(r30)
001210  670d6ff8  storeli.w r6, -816(r30)
001214  674d6ff8  storeli.w r6, -812(r30)
001218  e70d6ff8  storeli.w r6, -808(r30)
00121c  e74d6ff8  storeli.w r6, -804(r30)
001220  670e6ff8  storeli.w r6, -800(r30)
001224  674e6ff8  storeli.w r6, -796(r30)
001228  e70e6ff8  storeli.w r6, -792(r30)
00122c  e74e6ff8  storeli.w r6, -788(r30)
001230  670f6ff8  storeli.w r6, -784(r30)
001234  674f6ff8  storeli.w r6, -780(r30)
001238  e70f6ff8  storeli.w r6, -776(r30)
00123c  e74f6ff8  storeli.w r6, -772(r30)
001240  67006ffa  storeli.w r6, -768(r30)
001244  67406ffa  storeli.w r6, -764(r30)
001248  e7006ffa  storeli.w r6, -760(r30)
00124c  e7406ffa  storeli.w r6, -756(r30)
001250  67016ffa  storeli.w r6, -752(r30)
001254  67416ffa  storeli.w r6, -748(r30)
001258  e7016ffa  storeli.w r6, -744(r30)
00125c  e7416ffa  storeli.w r6, -740(r30)
001260  67026ffa  storeli.w r6, -736(r30)
001264  67426ffa  storeli.w r6, -732(r30)
001268  e7026ffa  storeli.w r6, -728(r30)
00126c  e7426ffa  storeli.w r6, -724(r30)
001270  67036ffa  storeli.w r6, -720(r30)
001274  67436ffa  storeli.w r6, -716(r30)
001278  e7036ffa  storeli.w r6, -712(r30)
00127c  e7436ffa  storeli.w r6, -708(r30)
001280  67046ffa  storeli.w r6, -704(r30)
001284  67446ffa  storeli.w r6, -700(r30)
001288  e7046ffa  storeli.w r6, -696(r30)
00128c  e7446ffa  storeli.w r6, -692(r30)
001290  67056ffa  storeli.w r6, -688(r30)
001294  67456ffa  storeli.w r6, -684(r30)
001298  e7056ffa  storeli.w r6, -680(r30)
00129c  e7456ffa  storeli.w r6, -676(r30)
0012a0  67066ffa  storeli.w r6, -672(r30)
0012a4  67466ffa  storeli.w r6, -668(r30)
0012a8  e7066ffa  storeli.w r6, -664(r30)
0012ac  e7466ffa  storeli.w r6, -660(r30)
0012b0  67076ffa  storeli.w r6, -656(r30)
0012b4  67476ffa  storeli.w r6, -652(r30)
0012b8  e7076ffa  storeli.w r6, -648(r30)
0012bc  e7476ffa  storeli.w r6, -644(r30)
0012c0  67086ffa  storeli.w r6, -640(r30)
0012c4  67486ffa  storeli.w r6, -636(r30)
0012c8  e7086ffa  storeli.w r6, -632(r30)
0012cc  e7486ffa  storeli.w r6, -628(r30)
0012d0  67096ffa  storeli.w r6, -624(r30)
0012d4  67496ffa  storeli.w r6, -620(r30)
0012d8  e7096ffa  storeli.w r6, -616(r30)
0012dc  e7496ffa  storeli.w r6, -612(r30)
0012e0  670a6ffa  storeli.w r6, -608(r30)
0012e4  674a6ffa  storeli.w r6, -604(r30)
0012e8  e70a6ffa  storeli.w r6, -600(r30)
0012ec  e74a6ffa  storeli.w r6, -596(r30)
0012f0  670b6ffa  storeli.w r6, -592(r30)
0012f4  674b6ffa  storeli.w r6, -588(r30)
0012f8  e70b6ffa  storeli.w r6, -584(r30)
0012fc  e74b6ffa  storeli.w r6, -580(r30)
001300  670c6ffa  storeli.w r6, -576(r30)
001304  674c6ffa  storeli.w r6, -572(r30)
001308  e70c6ffa  storeli.w r6, -568(r30)
00130c  e74c6ffa  storeli.w r6, -564(r30)
001310  670d6ffa  storeli.w r6, -560(r30)
001314  674d6ffa  storeli.w r6, -556(r30)
001318  e70d6ffa  storeli.w r6, -552(r30)
00131c  e74d6ffa  storeli.w r6, -548(r30)
001320  670e6ffa  storeli.w r6, -544(r30)
001324  674e6ffa  storeli.w r6, -540(r30)
001328  e70e6ffa  storeli.w r6, -536(r30)
00132c  e74e6ffa  storeli.w r6, -532(r30)
001330  670f6ffa  storeli.w r6, -528(r30)
001334  674f6ffa  storeli.w r6, -524(r30)
001338  e70f6ffa  storeli.w r6, -520(r30)
00133c  e74f6ffa  storeli.w r6, -516(r30)
001340  67006ffc  storeli.w r6, -512(r30)
001344  67406ffc  storeli.w r6, -508(r30)
001348  e7006ffc  storeli.w r6, -504(r30)
00134c  e7406ffc  storeli.w r6, -500(r30)
001350  67016ffc  storeli.w r6, -496(r30)
001354  67416ffc  storeli.w r6, -492(r30)
001358  e7016ffc  storeli.w r6, -488(r30)
00135c  e7416ffc  storeli.w r6, -484(r30)
001360  67026ffc  storeli.w r6, -480(r30)
001364  67426ffc  storeli.w r6, -476(r30)
001368  e7026ffc  storeli.w r6, -472(r30)
00136c  e7426ffc  storeli.w r6, -468(r30)
001370  67036ffc  storeli.w r6, -464(r30)
001374  67436ffc  storeli.w r6, -460(r30)
001378  e7036ffc  storeli.w r6, -456(r30)
00137c  e7436ffc  storeli.w r6, -452(r30)
001380  67046ffc  storeli.w r6, -448(r30)
001384  67446ffc  storeli.w r6, -444(r30)
001388  e7046ffc  storeli.w r6, -440(r30)
00138c  e7446ffc  storeli.w r6, -436(r30)
001390  67056ffc  storeli.w r6, -432(r30)
001394  67456ffc  storeli.w r6, -428(r30)
001398  e7056ffc  storeli.w r6, -424(r30)
00139c  e7456ffc  storeli.w r6, -420(r30)
0013a0  67066ffc  storeli.w r6, -416(r30)
0013a4  67466ffc  storeli.w r6, -412(r30)
0013a8  e7066ffc  storeli.w r6, -408(r30)
0013ac  e7466ffc  storeli.w r6, -404(r30)
0013b0  67076ffc  storeli.w r6, -400(r30)
0013b4  67476ffc  storeli.w r6, -396(r30)
0013b8  e7076ffc  storeli.w r6, -392(r30)
0013bc  e7476ffc  storeli.w r6, -388(r30)
0013c0  67086ffc  storeli.w r6, -384(r30)
0013c4  67486ffc  storeli.w r6, -380(r30)
0013c8  e7086ffc  storeli.w r6, -376(r30)
0013cc  e7486ffc  storeli.w r6, -372(r30)
0013d0  67096ffc  storeli.w r6, -368(r30)
0013d4  67496ffc  storeli.w r6, -364(r30)
0013d8  e7096ffc  storeli.w r6, -360(r30)
0013dc  e7496ffc  storeli.w r6, -356(r30)
0013e0  670a6ffc  storeli.w r6, -352(r30)
0013e4  674a6ffc  storeli.w r6, -348(r30)
0013e8  e70a6ffc  storeli.w r6, -344(r30)
0013ec  e74a6ffc  storeli.w r6, -340(r30)
0013f0  670b6ffc  storeli.w r6, -336(r30)
0013f4  674b6ffc  storeli.w r6, -332(r30)
0013f8  e70b6ffc  storeli.w r6, -328(r30)
0013fc  e74b6ffc  storeli.w r6, -324(r30)
001400  670c6ffc  storeli.w r6, -320(r30)
001404  674c6ffc  storeli.w r6, -316(r30)
001408  e70c6ffc  storeli.w r6, -312(r30)
00140c  e74c6ffc  storeli.w r6, -308(r30)
001410  670d6ffc  storeli.w r6, -304(r30)
001414  674d6ffc  storeli.w r6, -300(r30)
001418  e70d6ffc  storeli.w r6, -296(r30)
00141c  e74d6ffc  storeli.w r6, -292(r30)
001420  670e6ffc  storeli.w r6, -288(r30)
001424  674e6ffc  storeli.w r6, -284(r30)
001428  e70e6ffc  storeli.w r6, -280(r30)
00142c  e74e6ffc  storeli.w r6, -276(r30)
001430  670f6ffc  storeli.w r6, -272(r30)
001434  674f6ffc  storeli.w r6, -268(r30)
001438  e70f6ffc  storeli.w r6, -264(r30)
00143c  e74f6ffc  storeli.w r6, -260(r30)
001440  67006ffe  storeli.w r6, -256(r30)
001444  67406ffe  storeli.w r6, -252(r30)
001448  e7006ffe  storeli.w r6, -248(r30)
00144c  e7406ffe  storeli.w r6, -244(r30)
001450  67016ffe  storeli.w r6, -240(r30)
001454  67416ffe  storeli.w r6, -236(r30)
001458  e7016ffe  storeli.w r6, -232(r30)
00145c  e7416ffe  storeli.w r6, -228(r30)
001460  67026ffe  storeli.w r6, -224(r30)
001464  67426ffe  storeli.w r6, -220(r30)
001468  e7026ffe  storeli.w r6, -216(r30)
00146c  e7426ffe  storeli.w r6, -212(r30)
001470  67036ffe  storeli.w r6, -208(r30)
001474  67436ffe  storeli.w r6, -204(r30)
001478  e7036ffe  storeli.w r6, -200(r30)
00147c  e7436ffe  storeli.w r6, -196(r30)
001480  67046ffe  storeli.w r6, -192(r30)
001484  67446ffe  storeli.w r6, -188(r30)
001488  e7046ffe  storeli.w r6, -184(r30)
00148c  e7446ffe  storeli.w r6, -180(r30)
001490  67056ffe  storeli.w r6, -176(r30)
001494  67456ffe  storeli.w r6, -172(r30)
001498  e7056ffe  storeli.w r6, -168(r30)
00149c  e7456ffe  storeli.w r6, -164(r30)
0014a0  67066ffe  storeli.w r6, -160(r30)
0014a4  67466ffe  storeli.w r6, -156(r30)
0014a8  e7066ffe  storeli.w r6, -152(r30)
0014ac  e7466ffe  storeli.w r6, -148(r30)
0014b0  67076ffe  storeli.w r6, -144(r30)
0014b4  67476ffe  storeli.w r6, -140(r30)
0014b8  e7076ffe  storeli.w r6, -136(r30)
0014bc  e7476ffe  storeli.w r6, -132(r30)
0014c0  67086ffe  storeli.w r6, -128(r30)
0014c4  67486ffe  storeli.w r6, -124(r30)
0014c8  e7086ffe  storeli.w r6, -120(r30)
0014cc  e7486ffe  storeli.w r6, -116(r30)
0014d0  67096ffe  storeli.w r6, -112(r30)
0014d4  67496ffe  storeli.w r6, -108(r30)
0014d8  e7096ffe  storeli.w r6, -104(r30)
0014dc  e7496ffe  storeli.w r6, -100(r30)
0014e0  670a6ffe  storeli.w r6, -96(r30)
0014e4  674a6ffe  storeli.w r6, -92(r30)
0014e8  e70a6ffe  storeli.w r6, -88(r30)
0014ec  e74a6ffe  storeli.w r6, -84(r30)
0014f0  670b6ffe  storeli.w r6, -80(r30)
0014f4  674b6ffe  storeli.w r6, -76(r30)
0014f8  e70b6ffe  storeli.w r6, -72(r30)
0014fc  e74b6ffe  storeli.w r6, -68(r30)
001500  670c6ffe  storeli.w r6, -64(r30)
001504  674c6ffe  storeli.w r6, -60(r30)
001508  e70c6ffe  storeli.w r6, -56(r30)
00150c  e74c6ffe  storeli.w r6, -52(r30)
001510  670d6ffe  storeli.w r6, -48(r30)
001514  674d6ffe  storeli.w r6, -44(r30)
001518  e70d6ffe  storeli.w r6, -40(r30)
00151c  e74d6ffe  storeli.w r6, -36(r30)
001520  670e6ffe  storeli.w r6, -32(r30)
001524  674e6ffe  storeli.w r6, -28(r30)
001528  e70e6ffe  storeli.w r6, -24(r30)
00152c  e74e6ffe  storeli.w r6, -20(r30)
001530  670f6ffe  storeli.w r6, -16(r30)
001534  674f6ffe  storeli.w r6, -12(r30)
001538  e70f6ffe  storeli.w r6, -8(r30)
00153c  e74f6ffe  storeli.w r6, -4(r30)
001540  67406ff0  storeli.w r6, -2044(r30)
001544  e7006ff0  storeli.w r6, -2040(r30)
001548  e7406ff0  storeli.w r6, -2036(r30)
00154c  67016ff0  storeli.w r6, -2032(r30)
001550  67416ff0  storeli.w r6, -2028(r30)
001554  e7016ff0  storeli.w r6, -2024(r30)
001558  e7416ff0  storeli.w r6, -2020(r30)
00155c  67026ff0  storeli.w r6, -2016(r30)
001560  67426ff0  storeli.w r6, -2012(r30)
001564  e7026ff0  storeli.w r6, -2008(r30)
001568  e7426ff0  storeli.w r6, -2004(r30)
00156c  67036ff0  storeli.w r6, -2000(r30)
001570  67436ff0  storeli.w r6, -1996(r30)
001574  e7036ff0  storeli.w r6, -1992(r30)
001578  e7436ff0  storeli.w r6, -1988(r30)
00157c  67046ff0  storeli.w r6, -1984(r30)
001580  67446ff0  storeli.w r6, -1980(r30)
001584  e7046ff0  storeli.w r6, -1976(r30)
001588  e7446ff0  storeli.w r6, -1972(r30)
00158c  67056ff0  storeli.w r6, -1968(r30)
001590  67456ff0  storeli.w r6, -1964(r30)
001594  67036fe8  storeli.w r6, -3024(r30)
001598  e70f6fee  storeli.w r6, -2056(r30)
00159c  674f6fee  storeli.w r6, -2060(r30)
0015a0  670f6fee  storeli.w r6, -2064(r30)
0015a4  e74e6fee  storeli.w r6, -2068(r30)
0015a8  e70e6fee  storeli.w r6, -2072(r30)
0015ac  674e6fee  storeli.w r6, -2076(r30)
0015b0  670e6fee  storeli.w r6, -2080(r30)
0015b4  e74d6fee  storeli.w r6, -2084(r30)
0015b8  e70d6fee  storeli.w r6, -2088(r30)
0015bc  674d6fee  storeli.w r6, -2092(r30)
0015c0  670d6fee  storeli.w r6, -2096(r30)
0015c4  e74c6fee  storeli.w r6, -2100(r30)
0015c8  e70c6fee  storeli.w r6, -2104(r30)
0015cc  674c6fee  storeli.w r6, -2108(r30)
0015d0  670c6fee  storeli.w r6, -2112(r30)
0015d4  e74b6fee  storeli.w r6, -2116(r30)
0015d8  e70b6fee  storeli.w r6, -2120(r30)
0015dc  674b6fee  storeli.w r6, -2124(r30)
0015e0  670b6fee  storeli.w r6, -2128(r30)
0015e4  e74a6fee  storeli.w r6, -2132(r30)
0015e8  e70a6fee  storeli.w r6, -2136(r30)
0015ec  674a6fee  storeli.w r6, -2140(r30)
0015f0  670a6fee  storeli.w r6, -2144(r30)
0015f4  e7496fee  storeli.w r6, -2148(r30)
0015f8  e7096fee  storeli.w r6, -2152(r30)
0015fc  67496fee  storeli.w r6, -2156(r30)
001600  67096fee  storeli.w r6, -2160(r30)
001604  e7486fee  storeli.w r6, -2164(r30)
001608  e7086fee  storeli.w r6, -2168(r30)
00160c  67486fee  storeli.w r6, -2172(r30)
001610  67086fee  storeli.w r6, -2176(r30)
001614  e7476fee  storeli.w r6, -2180(r30)
001618  e7076fee  storeli.w r6, -2184(r30)
00161c  67476fee  storeli.w r6, -2188(r30)
001620  67076fee  storeli.w r6, -2192(r30)
001624  e7466fee  storeli.w r6, -2196(r30)
001628  e7066fee  storeli.w r6, -2200(r30)
00162c  67466fee  storeli.w r6, -2204(r30)
001630  67066fee  storeli.w r6, -2208(r30)
001634  e7456fee  storeli.w r6, -2212(r30)
001638  e7056fee  storeli.w r6, -2216(r30)
00163c  67456fee  storeli.w r6, -2220(r30)
001640  67056fee  storeli.w r6, -2224(r30)
001644  e7446fee  storeli.w r6, -2228(r30)
001648  e7046fee  storeli.w r6, -2232(r30)
00164c  67446fee  storeli.w r6, -2236(r30)
001650  67046fee  storeli.w r6, -2240(r30)
001654  e7436fee  storeli.w r6, -2244(r30)
001658  e7036fee  storeli.w r6, -2248(r30)
00165c  67436fee  storeli.w r6, -2252(r30)
001660  67036fee  storeli.w r6, -2256(r30)
001664  e7426fee  storeli.w r6, -2260(r30)
001668  e7026fee  storeli.w r6, -2264(r30)
00166c  67426fee  storeli.w r6, -2268(r30)
001670  67026fee  storeli.w r6, -2272(r30)
001674  e7416fee  storeli.w r6, -2276(r30)
001678  e7016fee  storeli.w r6, -2280(r30)
00167c  67416fee  storeli.w r6, -2284(r30)
001680  67016fee  storeli.w r6, -2288(r30)
001684  e7406fee  storeli.w r6, -2292(r30)
001688  e7006fee  storeli.w r6, -2296(r30)
00168c  67406fee  storeli.w r6, -2300(r30)
001690  67006fee  storeli.w r6, -2304(r30)
001694  e74f6fec  storeli.w r6, -2308(r30)
001698  e70f6fec  storeli.w r6, -2312(r30)
00169c  674f6fec  storeli.w r6, -2316(r30)
0016a0  670f6fec  storeli.w r6, -2320(r30)
0016a4  e74e6fec  storeli.w r6, -2324(r30)
0016a8  e70e6fec  storeli.w r6, -2328(r30)
0016ac  674e6fec  storeli.w r6, -2332(r30)
0016b0  670e6fec  storeli.w r6, -2336(r30)
0016b4  e74d6fec  storeli.w r6, -2340(r30)
0016b8  e70d6fec  storeli.w r6, -2344(r30)
0016bc  674d6fec  storeli.w r6, -2348(r30)
0016c0  670d6fec  storeli.w r6, -2352(r30)
0016c4  e74c6fec  storeli.w r6, -2356(r30)
0016c8  e70c6fec  storeli.w r6, -2360(r30)
0016cc  674c6fec  storeli.w r6, -2364(r30)
0016d0  670c6fec  storeli.w r6, -2368(r30)
0016d4  e74b6fec  storeli.w r6, -2372(r30)
0016d8  e70b6fec  storeli.w r6, -2376(r30)
0016dc  674b6fec  storeli.w r6, -2380(r30)
0016e0  670b6fec  storeli.w r6, -2384(r30)
0016e4  e74a6fec  storeli.w r6, -2388(r30)
0016e8  e70a6fec  storeli.w r6, -2392(r30)
0016ec  674a6fec  storeli.w r6, -2396(r30)
0016f0  670a6fec  storeli.w r6, -2400(r30)
0016f4  e7496fec  storeli.w r6, -2404(r30)
0016f8  e7096fec  storeli.w r6, -2408(r30)
0016fc  67496fec  storeli.w r6, -2412(r30)
001700  67096fec  storeli.w r6, -2416(r30)
001704  e7486fec  storeli.w r6, -2420(r30)
001708  e7086fec  storeli.w r6, -2424(r30)
00170c  67486fec  storeli.w r6, -2428(r30)
001710  67086fec  storeli.w r6, -2432(r30)
001714  e7476fec  storeli.w r6, -2436(r30)
001718  e7076fec  storeli.w r6, -2440(r30)
00171c  67476fec  storeli.w r6, -2444(r30)
001720  67076fec  storeli.w r6, -2448(r30)
001724  e7466fec  storeli.w r6, -2452(r30)
001728  e7066fec  storeli.w r6, -2456(r30)
00172c  67466fec  storeli.w r6, -2460(r30)
001730  67066fec  storeli.w r6, -2464(r30)
001734  e7456fec  storeli.w r6, -2468(r30)
001738  e7056fec  storeli.w r6, -2472(r30)
00173c  67456fec  storeli.w r6, -2476(r30)
001740  67056fec  storeli.w r6, -2480(r30)
001744  e7446fec  storeli.w r6, -2484(r30)
001748  e7046fec  storeli.w r6, -2488(r30)
00174c  67446fec  storeli.w r6, -2492(r30)
001750  67046fec  storeli.w r6, -2496(r30)
001754  e7436fec  storeli.w r6, -2500(r30)
001758  e7036fec  storeli.w r6, -2504(r30)
00175c  67436fec  storeli.w r6, -2508(r30)
001760  67036fec  storeli.w r6, -2512(r30)
001764  e7426fec  storeli.w r6, -2516(r30)
001768  e7026fec  storeli.w r6, -2520(r30)
00176c  67426fec  storeli.w r6, -2524(r30)
001770  67026fec  storeli.w r6, -2528(r30)
001774  e7416fec  storeli.w r6, -2532(r30)
001778  e7016fec  storeli.w r6, -2536(r30)
00177c  67416fec  storeli.w r6, -2540(r30)
001780  67016fec  storeli.w r6, -2544(r30)
001784  e7406fec  storeli.w r6, -2548(r30)
001788  e7006fec  storeli.w r6, -2552(r30)
00178c  67406fec  storeli.w r6, -2556(r30)
001790  67006fec  storeli.w r6, -2560(r30)
001794  e74f6fea  storeli.w r6, -2564(r30)
001798  e70f6fea  storeli.w r6, -2568(r30)
00179c  674f6fea  storeli.w r6, -2572(r30)
0017a0  670f6fea  storeli.w r6, -2576(r30)
0017a4  e74e6fea  storeli.w r6, -2580(r30)
0017a8  e70e6fea  storeli.w r6, -2584(r30)
0017ac  674e6fea  storeli.w r6, -2588(r30)
0017b0  670e6fea  storeli.w r6, -2592(r30)
0017b4  e74d6fea  storeli.w r6, -2596(r30)
0017b8  e70d6fea  storeli.w r6, -2600(r30)
0017bc  674d6fea  storeli.w r6, -2604(r30)
0017c0  670d6fea  storeli.w r6, -2608(r30)
0017c4  e74c6fea  storeli.w r6, -2612(r30)
0017c8  e70c6fea  storeli.w r6, -2616(r30)
0017cc  674c6fea  storeli.w r6, -2620(r30)
0017d0  670c6fea  storeli.w r6, -2624(r30)
0017d4  e74b6fea  storeli.w r6, -2628(r30)
0017d8  e70b6fea  storeli.w r6, -2632(r30)
0017dc  674b6fea  storeli.w r6, -2636(r30)
0017e0  670b6fea  storeli.w r6, -2640(r30)
0017e4  e74a6fea  storeli.w r6, -2644(r30)
0017e8  e70a6fea  storeli.w r6, -2648(r30)
0017ec  674a6fea  storeli.w r6, -2652(r30)
0017f0  670a6fea  storeli.w r6, -2656(r30)
0017f4  e7496fea  storeli.w r6, -2660(r30)
0017f8  e7096fea  storeli.w r6, -2664(r30)
0017fc  67496fea  storeli.w r6, -2668(r30)
001800  67096fea  storeli.w r6, -2672(r30)
001804  e7486fea  storeli.w r6, -2676(r30)
001808  e7086fea  storeli.w r6, -2680(r30)
00180c  67486fea  storeli.w r6, -2684(r30)
001810  67086fea  storeli.w r6, -2688(r30)
001814  e7476fea  storeli.w r6, -2692(r30)
001818  e7076fea  storeli.w r6, -2696(r30)
00181c  67476fea  storeli.w r6, -2700(r30)
001820  67076fea  storeli.w r6, -2704(r30)
001824  e7466fea  storeli.w r6, -2708(r30)
001828  e7066fea  storeli.w r6, -2712(r30)
00182c  67466fea  storeli.w r6, -2716(r30)
001830  67066fea  storeli.w r6, -2720(r30)
001834  e7456fea  storeli.w r6, -2724(r30)
001838  e7056fea  storeli.w r6, -2728(r30)
00183c  67456fea  storeli.w r6, -2732(r30)
001840  67056fea  storeli.w r6, -2736(r30)
001844  e7446fea  storeli.w r6, -2740(r30)
001848  e7046fea  storeli.w r6, -2744(r30)
00184c  67446fea  storeli.w r6, -2748(r30)
001850  67046fea  storeli.w r6, -2752(r30)
001854  e7436fea  storeli.w r6, -2756(r30)
001858  e7036fea  storeli.w r6, -2760(r30)
00185c  67436fea  storeli.w r6, -2764(r30)
001860  67036fea  storeli.w r6, -2768(r30)
001864  e7426fea  storeli.w r6, -2772(r30)
001868  e7026fea  storeli.w r6, -2776(r30)
00186c  67426fea  storeli.w r6, -2780(r30)
001870  67026fea  storeli.w r6, -2784(r30)
001874  e7416fea  storeli.w r6, -2788(r30)
001878  e7016fea  storeli.w r6, -2792(r30)
00187c  67416fea  storeli.w r6, -2796(r30)
001880  67016fea  storeli.w r6, -2800(r30)
001884  e7406fea  storeli.w r6, -2804(r30)
001888  e7006fea  storeli.w r6, -2808(r30)
00188c  67406fea  storeli.w r6, -2812(r30)
001890  67006fea  storeli.w r6, -2816(r30)
001894  e74f6fe8  storeli.w r6, -2820(r30)
001898  e70f6fe8  storeli.w r6, -2824(r30)
00189c  674f6fe8  storeli.w r6, -2828(r30)
0018a0  670f6fe8  storeli.w r6, -2832(r30)
0018a4  e74e6fe8  storeli.w r6, -2836(r30)
0018a8  e70e6fe8  storeli.w r6, -2840(r30)
0018ac  674e6fe8  storeli.w r6, -2844(r30)
0018b0  670e6fe8  storeli.w r6, -2848(r30)
0018b4  e74d6fe8  storeli.w r6, -2852(r30)
0018b8  e70d6fe8  storeli.w r6, -2856(r30)
0018bc  674d6fe8  storeli.w r6, -2860(r30)
0018c0  670d6fe8  storeli.w r6, -2864(r30)
0018c4  e74c6fe8  storeli.w r6, -2868(r30)
0018c8  e70c6fe8  storeli.w r6, -2872(r30)
0018cc  674c6fe8  storeli.w r6, -2876(r30)
0018d0  670c6fe8  storeli.w r6, -2880(r30)
0018d4  e74b6fe8  storeli.w r6, -2884(r30)
0018d8  e70b6fe8  storeli.w r6, -2888(r30)
0018dc  674b6fe8  storeli.w r6, -2892(r30)
0018e0  670b6fe8  storeli.w r6, -2896(r30)
0018e4  e74a6fe8  storeli.w r6, -2900(r30)
0018e8  e70a6fe8  storeli.w r6, -2904(r30)
0018ec  674a6fe8  storeli.w r6, -2908(r30)
0018f0  670a6fe8  storeli.w r6, -2912(r30)
0018f4  e7496fe8  storeli.w r6, -2916(r30)
0018f8  e7096fe8  storeli.w r6, -2920(r30)
0018fc  67496fe8  storeli.w r6, -2924(r30)
001900  67096fe8  storeli.w r6, -2928(r30)
001904  e7486fe8  storeli.w r6, -2932(r30)
001908  e7086fe8  storeli.w r6, -2936(r30)
00190c  67486fe8  storeli.w r6, -2940(r30)
001910  67086fe8  storeli.w r6, -2944(r30)
001914  e7476fe8  storeli.w r6, -2948(r30)
001918  e7076fe8  storeli.w r6, -2952(r30)
00191c  67476fe8  storeli.w r6, -2956(r30)
001920  67076fe8  storeli.w r6, -2960(r30)
001924  e7466fe8  storeli.w r6, -2964(r30)
001928  e7066fe8  storeli.w r6, -2968(r30)
00192c  67466fe8  storeli.w r6, -2972(r30)
001930  67066fe8  storeli.w r6, -2976(r30)
001934  e7456fe8  storeli.w r6, -2980(r30)
001938  e7056fe8  storeli.w r6, -2984(r30)
00193c  67456fe8  storeli.w r6, -2988(r30)
001940  67056fe8  storeli.w r6, -2992(r30)
001944  e7446fe8  storeli.w r6, -2996(r30)
001948  e7046fe8  storeli.w r6, -3000(r30)
00194c  67446fe8  storeli.w r6, -3004(r30)
001950  67046fe8  storeli.w r6, -3008(r30)
001954  e7436fe8  storeli.w r6, -3012(r30)
001958  e7036fe8  storeli.w r6, -3016(r30)
00195c  67436fe8  storeli.w r6, -3020(r30)
001960  e7426fe8  storeli.w r6, -3028(r30)
001964  e7026fe8  storeli.w r6, -3032(r30)
001968  67426fe8  storeli.w r6, -3036(r30)
00196c  e7416fe8  storeli.w r6, -3044(r30)
001970  e7016fe8  storeli.w r6, -3048(r30)
001974  67416fe8  storeli.w r6, -3052(r30)
001978  67016fe8  storeli.w r6, -3056(r30)
00197c  e7406fe8  storeli.w r6, -3060(r30)
001980  e7006fe8  storeli.w r6, -3064(r30)
001984  67406fe8  storeli.w r6, -3068(r30)
001988  67000fe8  storeli.w zero, -3072(r30)
00198c  e74f6ff6  storeli.w r6, -1028(r30)
001990  e70f6ff6  storeli.w r6, -1032(r30)
001994  674f6ff6  storeli.w r6, -1036(r30)
001998  670f6ff6  storeli.w r6, -1040(r30)
00199c  e74e6ff6  storeli.w r6, -1044(r30)
0019a0  e70e6ff6  storeli.w r6, -1048(r30)
0019a4  674e6ff6  storeli.w r6, -1052(r30)
0019a8  670e6ff6  storeli.w r6, -1056(r30)
0019ac  e74d6ff6  storeli.w r6, -1060(r30)
0019b0  e70d6ff6  storeli.w r6, -1064(r30)
0019b4  674d6ff6  storeli.w r6, -1068(r30)
0019b8  670d6ff6  storeli.w r6, -1072(r30)
0019bc  e74c6ff6  storeli.w r6, -1076(r30)
0019c0  e70c6ff6  storeli.w r6, -1080(r30)
0019c4  674c6ff6  storeli.w r6, -1084(r30)
0019c8  670c6ff6  storeli.w r6, -1088(r30)
0019cc  e74b6ff6  storeli.w r6, -1092(r30)
0019d0  e70b6ff6  storeli.w r6, -1096(r30)
0019d4  674b6ff6  storeli.w r6, -1100(r30)
0019d8  670b6ff6  storeli.w r6, -1104(r30)
0019dc  e74a6ff6  storeli.w r6, -1108(r30)
0019e0  e70a6ff6  storeli.w r6, -1112(r30)
0019e4  674a6ff6  storeli.w r6, -1116(r30)
0019e8  670a6ff6  storeli.w r6, -1120(r30)
0019ec  e7496ff6  storeli.w r6, -1124(r30)
0019f0  e7096ff6  storeli.w r6, -1128(r30)
0019f4  67496ff6  storeli.w r6, -1132(r30)
0019f8  67096ff6  storeli.w r6, -1136(r30)
0019fc  e7486ff6  storeli.w r6, -1140(r30)
001a00  e7086ff6  storeli.w r6, -1144(r30)
001a04  67486ff6  storeli.w r6, -1148(r30)
001a08  67086ff6  storeli.w r6, -1152(r30)
001a0c  e7476ff6  storeli.w r6, -1156(r30)
001a10  e7076ff6  storeli.w r6, -1160(r30)
001a14  67476ff6  storeli.w r6, -1164(r30)
001a18  67076ff6  storeli.w r6, -1168(r30)
001a1c  e7466ff6  storeli.w r6, -1172(r30)
001a20  e7066ff6  storeli.w r6, -1176(r30)
001a24  67466ff6  storeli.w r6, -1180(r30)
001a28  67066ff6  storeli.w r6, -1184(r30)
001a2c  e7456ff6  storeli.w r6, -1188(r30)
001a30  e7056ff6  storeli.w r6, -1192(r30)
001a34  67456ff6  storeli.w r6, -1196(r30)
001a38  67056ff6  storeli.w r6, -1200(r30)
001a3c  e7446ff6  storeli.w r6, -1204(r30)
001a40  e7046ff6  storeli.w r6, -1208(r30)
001a44  67446ff6  storeli.w r6, -1212(r30)
001a48  67046ff6  storeli.w r6, -1216(r30)
001a4c  e7436ff6  storeli.w r6, -1220(r30)
001a50  e7036ff6  storeli.w r6, -1224(r30)
001a54  67436ff6  storeli.w r6, -1228(r30)
001a58  67036ff6  storeli.w r6, -1232(r30)
001a5c  e7426ff6  storeli.w r6, -1236(r30)
001a60  e7026ff6  storeli.w r6, -1240(r30)
001a64  67426ff6  storeli.w r6, -1244(r30)
001a68  67026ff6  storeli.w r6, -1248(r30)
001a6c  e7416ff6  storeli.w r6, -1252(r30)
001a70  e7016ff6  storeli.w r6, -1256(r30)
001a74  67416ff6  storeli.w r6, -1260(r30)
001a78  67016ff6  storeli.w r6, -1264(r30)
001a7c  e7406ff6  storeli.w r6, -1268(r30)
001a80  e7006ff6  storeli.w r6, -1272(r30)
001a84  67406ff6  storeli.w r6, -1276(r30)
001a88  67006ff6  storeli.w r6, -1280(r30)
001a8c  e74f6ff4  storeli.w r6, -1284(r30)
001a90  e70f6ff4  storeli.w r6, -1288(r30)
001a94  674f6ff4  storeli.w r6, -1292(r30)
001a98  670f6ff4  storeli.w r6, -1296(r30)
001a9c  e74e6ff4  storeli.w r6, -1300(r30)
001aa0  e70e6ff4  storeli.w r6, -1304(r30)
001aa4  674e6ff4  storeli.w r6, -1308(r30)
001aa8  670e6ff4  storeli.w r6, -1312(r30)
001aac  e74d6ff4  storeli.w r6, -1316(r30)
001ab0  e70d6ff4  storeli.w r6, -1320(r30)
001ab4  674d6ff4  storeli.w r6, -1324(r30)
001ab8  670d6ff4  storeli.w r6, -1328(r30)
001abc  e74c6ff4  storeli.w r6, -1332(r30)
001ac0  e70c6ff4  storeli.w r6, -1336(r30)
001ac4  674c6ff4  storeli.w r6, -1340(r30)
001ac8  670c6ff4  storeli.w r6, -1344(r30)
001acc  e74b6ff4  storeli.w r6, -1348(r30)
001ad0  e70b6ff4  storeli.w r6, -1352(r30)
001ad4  674b6ff4  storeli.w r6, -1356(r30)
001ad8  670b6ff4  storeli.w r6, -1360(r30)
001adc  e74a6ff4  storeli.w r6, -1364(r30)
001ae0  e70a6ff4  storeli.w r6, -1368(r30)
001ae4  674a6ff4  storeli.w r6, -1372(r30)
001ae8  670a6ff4  storeli.w r6, -1376(r30)
001aec  e7496ff4  storeli.w r6, -1380(r30)
001af0  e7096ff4  storeli.w r6, -1384(r30)
001af4  67496ff4  storeli.w r6, -1388(r30)
001af8  67096ff4  storeli.w r6, -1392(r30)
001afc  e7486ff4  storeli.w r6, -1396(r30)
001b00  e7086ff4  storeli.w r6, -1400(r30)
001b04  67486ff4  storeli.w r6, -1404(r30)
001b08  67086ff4  storeli.w r6, -1408(r30)
001b0c  e7476ff4  storeli.w r6, -1412(r30)
001b10  e7076ff4  storeli.w r6, -1416(r30)
001b14  67476ff4  storeli.w r6, -1420(r30)
001b18  67076ff4  storeli.w r6, -1424(r30)
001b1c  e7466ff4  storeli.w r6, -1428(r30)
001b20  e7066ff4  storeli.w r6, -1432(r30)
001b24  67466ff4  storeli.w r6, -1436(r30)
001b28  67066ff4  storeli.w r6, -1440(r30)
001b2c  e7456ff4  storeli.w r6, -1444(r30)
001b30  e7056ff4  storeli.w r6, -1448(r30)
001b34  67456ff4  storeli.w r6, -1452(r30)
001b38  67056ff4  storeli.w r6, -1456(r30)
001b3c  e7446ff4  storeli.w r6, -1460(r30)
001b40  e7046ff4  storeli.w r6, -1464(r30)
001b44  67446ff4  storeli.w r6, -1468(r30)
001b48  67046ff4  storeli.w r6, -1472(r30)
001b4c  e7436ff4  storeli.w r6, -1476(r30)
001b50  e7036ff4  storeli.w r6, -1480(r30)
001b54  67436ff4  storeli.w r6, -1484(r30)
001b58  67036ff4  storeli.w r6, -1488(r30)
001b5c  e7426ff4  storeli.w r6, -1492(r30)
001b60  e7026ff4  storeli.w r6, -1496(r30)
001b64  67426ff4  storeli.w r6, -1500(r30)
001b68  67026ff4  storeli.w r6, -1504(r30)
001b6c  e7416ff4  storeli.w r6, -1508(r30)
001b70  e7016ff4  storeli.w r6, -1512(r30)
001b74  67416ff4  storeli.w r6, -1516(r30)
001b78  67016ff4  storeli.w r6, -1520(r30)
001b7c  e7406ff4  storeli.w r6, -1524(r30)
001b80  e7006ff4  storeli.w r6, -1528(r30)
001b84  67406ff4  storeli.w r6, -1532(r30)
001b88  67006ff4  storeli.w r6, -1536(r30)
001b8c  e74f6ff2  storeli.w r6, -1540(r30)
001b90  e70f6ff2  storeli.w r6, -1544(r30)
001b94  674f6ff2  storeli.w r6, -1548(r30)
001b98  670f6ff2  storeli.w r6, -1552(r30)
001b9c  e74e6ff2  storeli.w r6, -1556(r30)
001ba0  e70e6ff2  storeli.w r6, -1560(r30)
001ba4  674e6ff2  storeli.w r6, -1564(r30)
001ba8  670e6ff2  storeli.w r6, -1568(r30)
001bac  e74d6ff2  storeli.w r6, -1572(r30)
001bb0  e70d6ff2  storeli.w r6, -1576(r30)
001bb4  674d6ff2  storeli.w r6, -1580(r30)
001bb8  670d6ff2  storeli.w r6, -1584(r30)
001bbc  e74c6ff2  storeli.w r6, -1588(r30)
001bc0  e70c6ff2  storeli.w r6, -1592(r30)
001bc4  674c6ff2  storeli.w r6, -1596(r30)
001bc8  670c6ff2  storeli.w r6, -1600(r30)
001bcc  e74b6ff2  storeli.w r6, -1604(r30)
001bd0  e70b6ff2  storeli.w r6, -1608(r30)
001bd4  674b6ff2  storeli.w r6, -1612(r30)
001bd8  670b6ff2  storeli.w r6, -1616(r30)
001bdc  e74a6ff2  storeli.w r6, -1620(r30)
001be0  e70a6ff2  storeli.w r6, -1624(r30)
001be4  674a6ff2  storeli.w r6, -1628(r30)
001be8  670a6ff2  storeli.w r6, -1632(r30)
001bec  e7496ff2  storeli.w r6, -1636(r30)
001bf0  e7096ff2  storeli.w r6, -1640(r30)
001bf4  67496ff2  storeli.w r6, -1644(r30)
001bf8  67096ff2  storeli.w r6, -1648(r30)
001bfc  e7486ff2  storeli.w r6, -1652(r30)
001c00  e7086ff2  storeli.w r6, -1656(r30)
001c04  67486ff2  storeli.w r6, -1660(r30)
001c08  67086ff2  storeli.w r6, -1664(r30)
001c0c  e7476ff2  storeli.w r6, -1668(r30)
001c10  e7076ff2  storeli.w r6, -1672(r30)
001c14  67476ff2  storeli.w r6, -1676(r30)
001c18  67076ff2  storeli.w r6, -1680(r30)
001c1c  e7466ff2  storeli.w r6, -1684(r30)
001c20  e7066ff2  storeli.w r6, -1688(r30)
001c24  67466ff2  storeli.w r6, -1692(r30)
001c28  67066ff2  storeli.w r6, -1696(r30)
001c2c  e7456ff2  storeli.w r6, -1700(r30)
001c30  e7056ff2  storeli.w r6, -1704(r30)
001c34  67456ff2  storeli.w r6, -1708(r30)
001c38  67056ff2  storeli.w r6, -1712(r30)
001c3c  e7446ff2  storeli.w r6, -1716(r30)
001c40  e7046ff2  storeli.w r6, -1720(r30)
001c44  67446ff2  storeli.w r6, -1724(r30)
001c48  67046ff2  storeli.w r6, -1728(r30)
001c4c  e7436ff2  storeli.w r6, -1732(r30)
001c50  e7036ff2  storeli.w r6, -1736(r30)
001c54  67436ff2  storeli.w r6, -1740(r30)
001c58  67036ff2  storeli.w r6, -1744(r30)
001c5c  e7426ff2  storeli.w r6, -1748(r30)
001c60  e7026ff2  storeli.w r6, -1752(r30)
001c64  67426ff2  storeli.w r6, -1756(r30)
001c68  67026ff2  storeli.w r6, -1760(r30)
001c6c  e7416ff2  storeli.w r6, -1764(r30)
001c70  e7016ff2  storeli.w r6, -1768(r30)
001c74  67416ff2  storeli.w r6, -1772(r30)
001c78  67016ff2  storeli.w r6, -1776(r30)
001c7c  e7406ff2  storeli.w r6, -1780(r30)
001c80  e7006ff2  storeli.w r6, -1784(r30)
001c84  67406ff2  storeli.w r6, -1788(r30)
001c88  67006ff2  storeli.w r6, -1792(r30)
001c8c  e74f6ff0  storeli.w r6, -1796(r30)
001c90  e70f6ff0  storeli.w r6, -1800(r30)
001c94  674f6ff0  storeli.w r6, -1804(r30)
001c98  670f6ff0  storeli.w r6, -1808(r30)
001c9c  e74e6ff0  storeli.w r6, -1812(r30)
001ca0  e70e6ff0  storeli.w r6, -1816(r30)
001ca4  674e6ff0  storeli.w r6, -1820(r30)
001ca8  670e6ff0  storeli.w r6, -1824(r30)
001cac  e74d6ff0  storeli.w r6, -1828(r30)
001cb0  e70d6ff0  storeli.w r6, -1832(r30)
001cb4  674d6ff0  storeli.w r6, -1836(r30)
001cb8  670d6ff0  storeli.w r6, -1840(r30)
001cbc  e74c6ff0  storeli.w r6, -1844(r30)
001cc0  e70c6ff0  storeli.w r6, -1848(r30)
001cc4  674c6ff0  storeli.w r6, -1852(r30)
001cc8  670c6ff0  storeli.w r6, -1856(r30)
001ccc  e74b6ff0  storeli.w r6, -1860(r30)
001cd0  e70b6ff0  storeli.w r6, -1864(r30)
001cd4  674b6ff0  storeli.w r6, -1868(r30)
001cd8  670b6ff0  storeli.w r6, -1872(r30)
001cdc  e74a6ff0  storeli.w r6, -1876(r30)
001ce0  e70a6ff0  storeli.w r6, -1880(r30)
001ce4  674a6ff0  storeli.w r6, -1884(r30)
001ce8  670a6ff0  storeli.w r6, -1888(r30)
001cec  e7496ff0  storeli.w r6, -1892(r30)
001cf0  e7096ff0  storeli.w r6, -1896(r30)
001cf4  67496ff0  storeli.w r6, -1900(r30)
001cf8  67096ff0  storeli.w r6, -1904(r30)
001cfc  e7486ff0  storeli.w r6, -1908(r30)
001d00  e7086ff0  storeli.w r6, -1912(r30)
001d04  67486ff0  storeli.w r6, -1916(r30)
001d08  67086ff0  storeli.w r6, -1920(r30)
001d0c  e7476ff0  storeli.w r6, -1924(r30)
001d10  e7076ff0  storeli.w r6, -1928(r30)
001d14  67476ff0  storeli.w r6, -1932(r30)
001d18  67076ff0  storeli.w r6, -1936(r30)
001d1c  e7466ff0  storeli.w r6, -1940(r30)
001d20  e7066ff0  storeli.w r6, -1944(r30)
001d24  67466ff0  storeli.w r6, -1948(r30)
001d28  67066ff0  storeli.w r6, -1952(r30)
001d2c  e7456ff0  storeli.w r6, -1956(r30)
001d30  e7056ff0  storeli.w r6, -1960(r30)
001d34  e74f6fee  storeli.w r6, -2052(r30)
001d38  67000fe0  storeli.w zero, -4096(r30)
001d3c  67406fe0  storeli.w r6, -4092(r30)
001d40  e7006fe0  storeli.w r6, -4088(r30)
001d44  e7406fe0  storeli.w r6, -4084(r30)
001d48  67016fe0  storeli.w r6, -4080(r30)
001d4c  67416fe0  storeli.w r6, -4076(r30)
001d50  e7016fe0  storeli.w r6, -4072(r30)
001d54  e7416fe0  storeli.w r6, -4068(r30)
001d58  67026fe0  storeli.w r6, -4064(r30)
001d5c  67426fe0  storeli.w r6, -4060(r30)
001d60  e7026fe0  storeli.w r6, -4056(r30)
001d64  e7426fe0  storeli.w r6, -4052(r30)
001d68  67036fe0  storeli.w r6, -4048(r30)
001d6c  67436fe0  storeli.w r6, -4044(r30)
001d70  e7036fe0  storeli.w r6, -4040(r30)
001d74  e7436fe0  storeli.w r6, -4036(r30)
001d78  67046fe0  storeli.w r6, -4032(r30)
001d7c  67446fe0  storeli.w r6, -4028(r30)
001d80  e7046fe0  storeli.w r6, -4024(r30)
001d84  e7446fe0  storeli.w r6, -4020(r30)
001d88  67056fe0  storeli.w r6, -4016(r30)
001d8c  67456fe0  storeli.w r6, -4012(r30)
001d90  e7056fe0  storeli.w r6, -4008(r30)
001d94  e7456fe0  storeli.w r6, -4004(r30)
001d98  67066fe0  storeli.w r6, -4000(r30)
001d9c  67466fe0  storeli.w r6, -3996(r30)
001da0  e7066fe0  storeli.w r6, -3992(r30)
001da4  e7466fe0  storeli.w r6, -3988(r30)
001da8  67076fe0  storeli.w r6, -3984(r30)
001dac  67476fe0  storeli.w r6, -3980(r30)
001db0  e7076fe0  storeli.w r6, -3976(r30)
001db4  e7476fe0  storeli.w r6, -3972(r30)
001db8  67086fe0  storeli.w r6, -3968(r30)
001dbc  67486fe0  storeli.w r6, -3964(r30)
001dc0  e7086fe0  storeli.w r6, -3960(r30)
001dc4  e7486fe0  storeli.w r6, -3956(r30)
001dc8  67096fe0  storeli.w r6, -3952(r30)
001dcc  67496fe0  storeli.w r6, -3948(r30)
001dd0  e7096fe0  storeli.w r6, -3944(r30)
001dd4  e7496fe0  storeli.w r6, -3940(r30)
001dd8  670a6fe0  storeli.w r6, -3936(r30)
001ddc  674a6fe0  storeli.w r6, -3932(r30)
001de0  e70a6fe0  storeli.w r6, -3928(r30)
001de4  e74a6fe0  storeli.w r6, -3924(r30)
001de8  670b6fe0  storeli.w r6, -3920(r30)
001dec  674b6fe0  storeli.w r6, -3916(r30)
001df0  e70b6fe0  storeli.w r6, -3912(r30)
001df4  e74b6fe0  storeli.w r6, -3908(r30)
001df8  670c6fe0  storeli.w r6, -3904(r30)
001dfc  674c6fe0  storeli.w r6, -3900(r30)
001e00  e70c6fe0  storeli.w r6, -3896(r30)
001e04  e74c6fe0  storeli.w r6, -3892(r30)
001e08  670d6fe0  storeli.w r6, -3888(r30)
001e0c  674d6fe0  storeli.w r6, -3884(r30)
001e10  e70d6fe0  storeli.w r6, -3880(r30)
001e14  e74d6fe0  storeli.w r6, -3876(r30)
001e18  670e6fe0  storeli.w r6, -3872(r30)
001e1c  674e6fe0  storeli.w r6, -3868(r30)
001e20  e70e6fe0  storeli.w r6, -3864(r30)
001e24  e74e6fe0  storeli.w r6, -3860(r30)
001e28  670f6fe0  storeli.w r6, -3856(r30)
001e2c  674f6fe0  storeli.w r6, -3852(r30)
001e30  e70f6fe0  storeli.w r6, -3848(r30)
001e34  e74f6fe0  storeli.w r6, -3844(r30)
001e38  67006fe2  storeli.w r6, -3840(r30)
001e3c  67406fe2  storeli.w r6, -3836(r30)
001e40  e7006fe2  storeli.w r6, -3832(r30)
001e44  e7406fe2  storeli.w r6, -3828(r30)
001e48  67016fe2  storeli.w r6, -3824(r30)
001e4c  67416fe2  storeli.w r6, -3820(r30)
001e50  e7016fe2  storeli.w r6, -3816(r30)
001e54  e7416fe2  storeli.w r6, -3812(r30)
001e58  67026fe2  storeli.w r6, -3808(r30)
001e5c  67426fe2  storeli.w r6, -3804(r30)
001e60  e7026fe2  storeli.w r6, -3800(r30)
001e64  e7426fe2  storeli.w r6, -3796(r30)
001e68  67036fe2  storeli.w r6, -3792(r30)
001e6c  67436fe2  storeli.w r6, -3788(r30)
001e70  e7036fe2  storeli.w r6, -3784(r30)
001e74  e7436fe2  storeli.w r6, -3780(r30)
001e78  67046fe2  storeli.w r6, -3776(r30)
001e7c  67446fe2  storeli.w r6, -3772(r30)
001e80  e7046fe2  storeli.w r6, -3768(r30)
001e84  e7446fe2  storeli.w r6, -3764(r30)
001e88  67056fe2  storeli.w r6, -3760(r30)
001e8c  67456fe2  storeli.w r6, -3756(r30)
001e90  e7056fe2  storeli.w r6, -3752(r30)
001e94  e7456fe2  storeli.w r6, -3748(r30)
001e98  67066fe2  storeli.w r6, -3744(r30)
001e9c  67466fe2  storeli.w r6, -3740(r30)
001ea0  e7066fe2  storeli.w r6, -3736(r30)
001ea4  e7466fe2  storeli.w r6, -3732(r30)
001ea8  67076fe2  storeli.w r6, -3728(r30)
001eac  67476fe2  storeli.w r6, -3724(r30)
001eb0  e7076fe2  storeli.w r6, -3720(r30)
001eb4  e7476fe2  storeli.w r6, -3716(r30)
001eb8  67086fe2  storeli.w r6, -3712(r30)
001ebc  67486fe2  storeli.w r6, -3708(r30)
001ec0  e7086fe2  storeli.w r6, -3704(r30)
001ec4  e7486fe2  storeli.w r6, -3700(r30)
001ec8  67096fe2  storeli.w r6, -3696(r30)
001ecc  67496fe2  storeli.w r6, -3692(r30)
001ed0  e7096fe2  storeli.w r6, -3688(r30)
001ed4  e7496fe2  storeli.w r6, -3684(r30)
001ed8  670a6fe2  storeli.w r6, -3680(r30)
001edc  674a6fe2  storeli.w r6, -3676(r30)
001ee0  e70a6fe2  storeli.w r6, -3672(r30)
001ee4  e74a6fe2  storeli.w r6, -3668(r30)
001ee8  670b6fe2  storeli.w r6, -3664(r30)
001eec  674b6fe2  storeli.w r6, -3660(r30)
001ef0  e70b6fe2  storeli.w r6, -3656(r30)
001ef4  e74b6fe2  storeli.w r6, -3652(r30)
001ef8  670c6fe2  storeli.w r6, -3648(r30)
001efc  674c6fe2  storeli.w r6, -3644(r30)
001f00  e70c6fe2  storeli.w r6, -3640(r30)
001f04  e74c6fe2  storeli.w r6, -3636(r30)
001f08  670d6fe2  storeli.w r6, -3632(r30)
001f0c  674d6fe2  storeli.w r6, -3628(r30)
001f10  e70d6fe2  storeli.w r6, -3624(r30)
001f14  e74d6fe2  storeli.w r6, -3620(r30)
001f18  670e6fe2  storeli.w r6, -3616(r30)
001f1c  674e6fe2  storeli.w r6, -3612(r30)
001f20  e70e6fe2  storeli.w r6, -3608(r30)
001f24  e74e6fe2  storeli.w r6, -3604(r30)
001f28  670f6fe2  storeli.w r6, -3600(r30)
001f2c  674f6fe2  storeli.w r6, -3596(r30)
001f30  e70f6fe2  storeli.w r6, -3592(r30)
001f34  e74f6fe2  storeli.w r6, -3588(r30)
001f38  67006fe4  storeli.w r6, -3584(r30)
001f3c  67406fe4  storeli.w r6, -3580(r30)
001f40  e7006fe4  storeli.w r6, -3576(r30)
001f44  e7406fe4  storeli.w r6, -3572(r30)
001f48  67016fe4  storeli.w r6, -3568(r30)
001f4c  67416fe4  storeli.w r6, -3564(r30)
001f50  e7016fe4  storeli.w r6, -3560(r30)
001f54  e7416fe4  storeli.w r6, -3556(r30)
001f58  67026fe4  storeli.w r6, -3552(r30)
001f5c  67426fe4  storeli.w r6, -3548(r30)
001f60  e7026fe4  storeli.w r6, -3544(r30)
001f64  e7426fe4  storeli.w r6, -3540(r30)
001f68  67036fe4  storeli.w r6, -3536(r30)
001f6c  67436fe4  storeli.w r6, -3532(r30)
001f70  e7036fe4  storeli.w r6, -3528(r30)
001f74  e7436fe4  storeli.w r6, -3524(r30)
001f78  67046fe4  storeli.w r6, -3520(r30)
001f7c  67446fe4  storeli.w r6, -3516(r30)
001f80  e7046fe4  storeli.w r6, -3512(r30)
001f84  e7446fe4  storeli.w r6, -3508(r30)
001f88  67056fe4  storeli.w r6, -3504(r30)
001f8c  67456fe4  storeli.w r6, -3500(r30)
001f90  e7056fe4  storeli.w r6, -3496(r30)
001f94  e7456fe4  storeli.w r6, -3492(r30)
001f98  67066fe4  storeli.w r6, -3488(r30)
001f9c  67466fe4  storeli.w r6, -3484(r30)
001fa0  e7066fe4  storeli.w r6, -3480(r30)
001fa4  e7466fe4  storeli.w r6, -3476(r30)
001fa8  67076fe4  storeli.w r6, -3472(r30)
001fac  67476fe4  storeli.w r6, -3468(r30)
001fb0  e7076fe4  storeli.w r6, -3464(r30)
001fb4  e7476fe4  storeli.w r6, -3460(r30)
001fb8  67086fe4  storeli.w r6, -3456(r30)
001fbc  67486fe4  storeli.w r6, -3452(r30)
001fc0  e7086fe4  storeli.w r6, -3448(r30)
001fc4  e7486fe4  storeli.w r6, -3444(r30)
001fc8  67096fe4  storeli.w r6, -3440(r30)
001fcc  67496fe4  storeli.w r6, -3436(r30)
001fd0  e7096fe4  storeli.w r6, -3432(r30)
001fd4  e7496fe4  storeli.w r6, -3428(r30)
001fd8  670a6fe4  storeli.w r6, -3424(r30)
001fdc  674a6fe4  storeli.w r6, -3420(r30)
001fe0  e70a6fe4  storeli.w r6, -3416(r30)
001fe4  e74a6fe4  storeli.w r6, -3412(r30)
001fe8  670b6fe4  storeli.w r6, -3408(r30)
001fec  674b6fe4  storeli.w r6, -3404(r30)
001ff0  e70b6fe4  storeli.w r6, -3400(r30)
001ff4  e74b6fe4  storeli.w r6, -3396(r30)
001ff8  670c6fe4  storeli.w r6, -3392(r30)
001ffc  674c6fe4  storeli.w r6, -3388(r30)
002000  e70c6fe4  storeli.w r6, -3384(r30)
002004  e74c6fe4  storeli.w r6, -3380(r30)
002008  670d6fe4  storeli.w r6, -3376(r30)
00200c  674d6fe4  storeli.w r6, -3372(r30)
002010  e70d6fe4  storeli.w r6, -3368(r30)
002014  e74d6fe4  storeli.w r6, -3364(r30)
002018  670e6fe4  storeli.w r6, -3360(r30)
00201c  674e6fe4  storeli.w r6, -3356(r30)
002020  e70e6fe4  storeli.w r6, -3352(r30)
002024  e74e6fe4  storeli.w r6, -3348(r30)
002028  670f6fe4  storeli.w r6, -3344(r30)
00202c  674f6fe4  storeli.w r6, -3340(r30)
002030  e70f6fe4  storeli.w r6, -3336(r30)
002034  e74f6fe4  storeli.w r6, -3332(r30)
002038  67006fe6  storeli.w r6, -3328(r30)
00203c  67406fe6  storeli.w r6, -3324(r30)
002040  e7006fe6  storeli.w r6, -3320(r30)
002044  e7406fe6  storeli.w r6, -3316(r30)
002048  67016fe6  storeli.w r6, -3312(r30)
00204c  67416fe6  storeli.w r6, -3308(r30)
002050  e7016fe6  storeli.w r6, -3304(r30)
002054  e7416fe6  storeli.w r6, -3300(r30)
002058  67026fe6  storeli.w r6, -3296(r30)
00205c  67426fe6  storeli.w r6, -3292(r30)
002060  e7026fe6  storeli.w r6, -3288(r30)
002064  e7426fe6  storeli.w r6, -3284(r30)
002068  67036fe6  storeli.w r6, -3280(r30)
00206c  67436fe6  storeli.w r6, -3276(r30)
002070  e7036fe6  storeli.w r6, -3272(r30)
002074  e7436fe6  storeli.w r6, -3268(r30)
002078  67046fe6  storeli.w r6, -3264(r30)
00207c  67446fe6  storeli.w r6, -3260(r30)
002080  e7046fe6  storeli.w r6, -3256(r30)
002084  e7446fe6  storeli.w r6, -3252(r30)
002088  67056fe6  storeli.w r6, -3248(r30)
00208c  67456fe6  storeli.w r6, -3244(r30)
002090  e7056fe6  storeli.w r6, -3240(r30)
002094  e7456fe6  storeli.w r6, -3236(r30)
002098  67066fe6  storeli.w r6, -3232(r30)
00209c  67466fe6  storeli.w r6, -3228(r30)
0020a0  e7066fe6  storeli.w r6, -3224(r30)
0020a4  e7466fe6  storeli.w r6, -3220(r30)
0020a8  67076fe6  storeli.w r6, -3216(r30)
0020ac  67476fe6  storeli.w r6, -3212(r30)
0020b0  e7076fe6  storeli.w r6, -3208(r30)
0020b4  e7476fe6  storeli.w r6, -3204(r30)
0020b8  67086fe6  storeli.w r6, -3200(r30)
0020bc  67486fe6  storeli.w r6, -3196(r30)
0020c0  e7086fe6  storeli.w r6, -3192(r30)
0020c4  e7486fe6  storeli.w r6, -3188(r30)
0020c8  67096fe6  storeli.w r6, -3184(r30)
0020cc  67496fe6  storeli.w r6, -3180(r30)
0020d0  e7096fe6  storeli.w r6, -3176(r30)
0020d4  e7496fe6  storeli.w r6, -3172(r30)
0020d8  670a6fe6  storeli.w r6, -3168(r30)
0020dc  674a6fe6  storeli.w r6, -3164(r30)
0020e0  e70a6fe6  storeli.w r6, -3160(r30)
0020e4  e74a6fe6  storeli.w r6, -3156(r30)
0020e8  670b6fe6  storeli.w r6, -3152(r30)
0020ec  674b6fe6  storeli.w r6, -3148(r30)
0020f0  e70b6fe6  storeli.w r6, -3144(r30)
0020f4  e74b6fe6  storeli.w r6, -3140(r30)
0020f8  670c6fe6  storeli.w r6, -3136(r30)
0020fc  674c6fe6  storeli.w r6, -3132(r30)
002100  e70c6fe6  storeli.w r6, -3128(r30)
002104  e74c6fe6  storeli.w r6, -3124(r30)
002108  670d6fe6  storeli.w r6, -3120(r30)
00210c  674d6fe6  storeli.w r6, -3116(r30)
002110  e70d6fe6  storeli.w r6, -3112(r30)
002114  e74d6fe6  storeli.w r6, -3108(r30)
002118  670e6fe6  storeli.w r6, -3104(r30)
00211c  674e6fe6  storeli.w r6, -3100(r30)
002120  e70e6fe6  storeli.w r6, -3096(r30)
002124  e74e6fe6  storeli.w r6, -3092(r30)
002128  670f6fe6  storeli.w r6, -3088(r30)
00212c  674f6fe6  storeli.w r6, -3084(r30)
002130  e70f6fe6  storeli.w r6, -3080(r30)
002134  e74f6fe6  storeli.w r6, -3076(r30)
002138  0b913050  fmac.s r2, r1, r3
00213c  8b903020  mul.s r1, r1, r3
002140  1f71f1ff  addli r2, r2, -1
002144  0b114130  div.s r2, r2, r4
002148  0b127120  mul.s r4, r2, r7
00214c  0b117150  fmac.s r2, r2, r7
002150  8b121140  min.s r5, r2, r1
002154  cba04206  ble.s r5, r4, 3112
002158  b3900228  sext_int2long r[2:3], r5
00215c  9f018fdf  addli r3, r30, -4160
002160  33120228  sext_int2long r[5:6], r4
002164  9f042000  addli r9, zero, 16
002168  1f590000  addli r18, zero, 5
00216c  1f460000  addli r12, zero, 4
002170  9f180000  addli r17, zero, 1
002174  9f2a0000  addli r21, zero, 2
002178  73b01100  store.d r[2:3], 0(r3)
00217c  9f71f007  addli r3, zero, 1023
002180  9f007fdf  addli r1, r30, -4168
002184  2b81ffff  lui r2, 1048568
002188  73b02000  store.d r[3:4], 0(r1)
00218c  2b710000  lui r2, 7
002190  9f004000  addli r1, zero, 32
002194  1b11f1ff  ori r2, r2, 4095
002198  e70f2fde  storeli.w r2, -4104(r30)
00219c  2bf11700  lui r2, 383
0021a0  1b110180  ori r2, r2, 2048
0021a4  674b2fde  storeli.w r2, -4172(r30)
0021a8  5b540000  j 672
0021ac  9f04bfdf  addli r9, r30, -4136
0021b0  9f6c1000  addli r25, zero, 14
0021b4  1f5d0000  addli r26, zero, 5
0021b8  1f290000  addli r18, zero, 2
0021bc  9f370000  addli r15, zero, 3
0021c0  9f7d0000  addli r27, zero, 7
0021c4  1f181000  addli r16, zero, 9
0021c8  1f2a1000  addli r20, zero, 10
0021cc  9f361000  addli r13, zero, 11
0021d0  1f451000  addli r10, zero, 12
0021d4  6b520f00  load.d r[5:6], 0(r30)
0021d8  1f5b1000  addli r22, zero, 13
0021dc  1f7e1000  addli r28, zero, 15
0021e0  9f7b3000  addli r23, zero, 31
0021e4  1f078000  addli r14, zero, 64
0021e8  9f050001  addli r11, zero, 128
0021ec  9f2a0000  addli r21, zero, 2
0021f0  6bd30400  load.d r[7:8], 0(r9)
0021f4  7d900c00  xwait r25, 0
0021f8  1d000d00  lock zero, r26
0021fc  9f041000  addli r9, zero, 8
002200  15000014  dma_cfg zero, zero, zero, 10
002204  15001015  dma_cfg zero, zero, r17, 10
002208  15002015  dma_cfg zero, zero, r18, 10
00220c  0b226210  add.ul r[5:6], r[5:6], r[7:8]
002210  1f032000  addli r6, zero, 16
002214  9f733100  addli r7, r2, 31
002218  1b311100  slli r2, r2, 1
00221c  9f012000  addli r3, zero, 16
002220  1500f014  dma_cfg zero, zero, r15, 10
002224  1500c014  dma_cfg zero, zero, r12, 10
002228  1b01e103  andi r2, r2, 62
00222c  1500a015  dma_cfg zero, zero, r26, 10
002230  15008014  dma_cfg zero, zero, r8, 10
002234  1500b015  dma_cfg zero, zero, r27, 10
002238  15009014  dma_cfg zero, zero, r9, 10
00223c  15000015  dma_cfg zero, zero, r16, 10
002240  15004015  dma_cfg zero, zero, r20, 10
002244  1500d014  dma_cfg zero, zero, r13, 10
002248  1500a014  dma_cfg zero, zero, r10, 10
00224c  15006015  dma_cfg zero, zero, r22, 10
002250  15009015  dma_cfg zero, zero, r25, 10
002254  1500c015  dma_cfg zero, zero, r28, 10
002258  15006014  dma_cfg zero, zero, r6, 10
00225c  1f132000  addli r6, zero, 17
002260  15006014  dma_cfg zero, zero, r6, 10
002264  1f232000  addli r6, zero, 18
002268  15006014  dma_cfg zero, zero, r6, 10
00226c  1f332000  addli r6, zero, 19
002270  15006014  dma_cfg zero, zero, r6, 10
002274  1f432000  addli r6, zero, 20
002278  15006014  dma_cfg zero, zero, r6, 10
00227c  1f532000  addli r6, zero, 21
002280  15006014  dma_cfg zero, zero, r6, 10
002284  1f632000  addli r6, zero, 22
002288  15006014  dma_cfg zero, zero, r6, 10
00228c  1f732000  addli r6, zero, 23
002290  15006014  dma_cfg zero, zero, r6, 10
002294  1f033000  addli r6, zero, 24
002298  15006014  dma_cfg zero, zero, r6, 10
00229c  1f133000  addli r6, zero, 25
0022a0  15006014  dma_cfg zero, zero, r6, 10
0022a4  1f233000  addli r6, zero, 26
0022a8  15006014  dma_cfg zero, zero, r6, 10
0022ac  1f333000  addli r6, zero, 27
0022b0  15006014  dma_cfg zero, zero, r6, 10
0022b4  1f433000  addli r6, zero, 28
0022b8  15006014  dma_cfg zero, zero, r6, 10
0022bc  1f533000  addli r6, zero, 29
0022c0  15006014  dma_cfg zero, zero, r6, 10
0022c4  1f633000  addli r6, zero, 30
0022c8  15006014  dma_cfg zero, zero, r6, 10
0022cc  2bf31700  lui r6, 383
0022d0  15007015  dma_cfg zero, zero, r23, 10
0022d4  95880800  dma_cfg r17, r17, zero, 0
0022d8  1b130384  ori r6, r6, 2112
0022dc  95080002  dma_cfg r17, zero, zero, 1
0022e0  15000004  dma_cfg zero, zero, zero, 2
0022e4  634c6fdf  loadli.w r24,  -4172(r30)
0022e8  150ce006  dma_cfg r24, zero, r14, 3
0022ec  95051009  dma_cfg r11, zero, r17, 4
0022f0  9505100b  dma_cfg r11, zero, r17, 5
0022f4  15000010  dma_cfg zero, zero, zero, 8
0022f8  35000000  dma_run zero
0022fc  1500100b  dma_cfg zero, zero, r17, 5
002300  15000010  dma_cfg zero, zero, zero, 8
002304  1d100d00  unlock r26
002308  1d000600  lock zero, r12
00230c  95880800  dma_cfg r17, r17, zero, 0
002310  15800204  dma_cfg zero, r5, zero, 2
002314  1503e206  dma_cfg r6, r4, r14, 3
002318  1bc25300  srli r4, r7, 5
00231c  95054708  dma_cfg r11, r14, r4, 4
002320  9505170b  dma_cfg r11, r14, r17, 5
002324  15002010  dma_cfg zero, zero, r2, 8
002328  35000000  dma_run zero
00232c  1500100b  dma_cfg zero, zero, r17, 5
002330  15000010  dma_cfg zero, zero, zero, 8
002334  1d100600  unlock r12
002338  1d000d00  lock zero, r26
00233c  15000014  dma_cfg zero, zero, zero, 10
002340  15001015  dma_cfg zero, zero, r17, 10
002344  15002015  dma_cfg zero, zero, r18, 10
002348  1f590000  addli r18, zero, 5
00234c  1500f014  dma_cfg zero, zero, r15, 10
002350  1500c014  dma_cfg zero, zero, r12, 10
002354  1500a015  dma_cfg zero, zero, r26, 10
002358  15008014  dma_cfg zero, zero, r8, 10
00235c  1500b015  dma_cfg zero, zero, r27, 10
002360  15009014  dma_cfg zero, zero, r9, 10
002364  9f042000  addli r9, zero, 16
002368  15000015  dma_cfg zero, zero, r16, 10
00236c  15004015  dma_cfg zero, zero, r20, 10
002370  1500d014  dma_cfg zero, zero, r13, 10
002374  1500a014  dma_cfg zero, zero, r10, 10
002378  15006015  dma_cfg zero, zero, r22, 10
00237c  15009015  dma_cfg zero, zero, r25, 10
002380  1500c015  dma_cfg zero, zero, r28, 10
002384  15003014  dma_cfg zero, zero, r3, 10
002388  9f112000  addli r3, zero, 17
00238c  15003014  dma_cfg zero, zero, r3, 10
002390  9f212000  addli r3, zero, 18
002394  15003014  dma_cfg zero, zero, r3, 10
002398  9f312000  addli r3, zero, 19
00239c  15003014  dma_cfg zero, zero, r3, 10
0023a0  9f412000  addli r3, zero, 20
0023a4  15003014  dma_cfg zero, zero, r3, 10
0023a8  9f512000  addli r3, zero, 21
0023ac  15003014  dma_cfg zero, zero, r3, 10
0023b0  9f612000  addli r3, zero, 22
0023b4  15003014  dma_cfg zero, zero, r3, 10
0023b8  9f712000  addli r3, zero, 23
0023bc  15003014  dma_cfg zero, zero, r3, 10
0023c0  9f013000  addli r3, zero, 24
0023c4  15003014  dma_cfg zero, zero, r3, 10
0023c8  9f113000  addli r3, zero, 25
0023cc  15003014  dma_cfg zero, zero, r3, 10
0023d0  9f213000  addli r3, zero, 26
0023d4  15003014  dma_cfg zero, zero, r3, 10
0023d8  9f313000  addli r3, zero, 27
0023dc  15003014  dma_cfg zero, zero, r3, 10
0023e0  9f413000  addli r3, zero, 28
0023e4  15003014  dma_cfg zero, zero, r3, 10
0023e8  9f513000  addli r3, zero, 29
0023ec  15003014  dma_cfg zero, zero, r3, 10
0023f0  9f613000  addli r3, zero, 30
0023f4  15003014  dma_cfg zero, zero, r3, 10
0023f8  15007015  dma_cfg zero, zero, r23, 10
0023fc  95880800  dma_cfg r17, r17, zero, 0
002400  95080002  dma_cfg r17, zero, zero, 1
002404  15000004  dma_cfg zero, zero, zero, 2
002408  150ce006  dma_cfg r24, zero, r14, 3
00240c  95054008  dma_cfg r11, zero, r4, 4
002410  9505100b  dma_cfg r11, zero, r17, 5
002414  15002010  dma_cfg zero, zero, r2, 8
002418  35000000  dma_run zero
00241c  1500100b  dma_cfg zero, zero, r17, 5
002420  15000010  dma_cfg zero, zero, zero, 8
002424  1d100d00  unlock r26
002428  7d000b00  xsignal r22, 0
00242c  1f01dfdf  addli r2, r30, -4120
002430  1f038fdf  addli r6, r30, -4160
002434  6b520100  load.d r[5:6], 0(r2)
002438  6b510300  load.d r[3:4], 0(r6)
00243c  27120200  addli.d r[5:6], r[5:6], 1
002440  13312204  setlt.sl r2, r[5:6], r[3:4]
002444  b7640104  beq r2, zero, 2360
002448  9f650000  addli r11, zero, 6
00244c  3bb0c900  bneq r19, r12, 12
002450  1f411000  addli r2, zero, 12
002454  7d100100  xwait r2, 0
002458  63015f00  loadli.w r2,  40(r30)
00245c  9f01dfdf  addli r3, r30, -4120
002460  1f031000  addli r6, zero, 8
002464  9f03afdf  addli r7, r30, -4144
002468  630d0fe8  loadli.w r26,  -3072(r30)
00246c  9f070000  addli r15, zero, 0
002470  73b04100  store.d r[5:6], 0(r3)
002474  e3414f00  loadli.w r3,  36(r30)
002478  0b112230  div.s r2, r4, r2
00247c  0b113130  div.s r2, r2, r3
002480  9f010002  addli r3, zero, 256
002484  8b113130  div.s r3, r2, r3
002488  1bb23100  slli r4, r3, 3
00248c  9bb18100  slli r3, r3, 8
002490  8b924418  sub.s r5, r9, r4
002494  8b113118  sub.s r3, r2, r3
002498  8b926240  min.s r5, r5, r6
00249c  0b115138  mod.s r2, r2, r5
0024a0  8b915130  div.s r3, r3, r5
0024a4  e3020fe0  loadli.w r5,  -4096(r30)
0024a8  e74f5fde  storeli.w r5, -4100(r30)
0024ac  0b112210  add.s r2, r4, r2
0024b0  1bb25100  slli r4, r3, 5
0024b4  674e4fde  storeli.w r4, -4124(r30)
0024b8  9b325100  slli r5, r2, 5
0024bc  b3810128  zext_int2long r[4:5], r3
0024c0  e74c5fde  storeli.w r5, -4148(r30)
0024c4  b3020128  zext_int2long r[6:7], r2
0024c8  17b12103  sll.d r[3:4], r[4:5], r18
0024cc  1f321000  addli r4, zero, 11
0024d0  73b05300  store.d r[6:7], 0(r7)
0024d4  97b34202  sll.d r[8:9], r[6:7], r4
0024d8  1f037fdf  addli r6, r30, -4168
0024dc  17321103  sll.d r[5:6], r[3:4], r17
0024e0  6b510300  load.d r[3:4], 0(r6)
0024e4  1f03bfdf  addli r6, r30, -4136
0024e8  73304300  store.d r[5:6], 0(r6)
0024ec  178b2302  and.d r[23:24], r[8:9], r[3:4]
0024f0  6b510f01  load.d r[3:4], 16(r30)
0024f4  0b214110  add.ul r[3:4], r[3:4], r[5:6]
0024f8  1f02efdf  addli r4, r30, -4112
0024fc  73302200  store.d r[3:4], 0(r4)
002500  1f020000  addli r4, zero, 0
002504  5b020000  j 16
002508  1f120200  addli r4, r4, 1
00250c  b77cc202  beq r4, r12, 1852
002510  9f970700  addli r15, r15, 1
002514  330c0228  zext_int2long r[25:26], r4
002518  1731cc02  sll.d r[3:4], r[25:26], r12
00251c  8b227110  add.ul r[6:7], r[3:4], r[8:9]
002520  6301ffdf  loadli.w r2,  -4104(r30)
002524  33010128  zext_int2long r[3:4], r2
002528  13255104  setlt.ul r10, r[3:4], r[6:7]
00252c  27010b00  addli.d r[3:4], r[23:24], 0
002530  3b200500  bneq r10, zero, 8
002534  33010028  zext_int2long r[3:4], zero
002538  6345ffdf  loadli.w r10,  -4100(r30)
00253c  8b19fd10  add.s r19, r26, r15
002540  9f76f001  addli r13, zero, 255
002544  1f78f001  addli r16, zero, 255
002548  8b9dd938  mod.s r27, r19, r13
00254c  0b15f510  add.s r10, r10, r15
002550  0b1ad538  mod.s r20, r10, r13
002554  1f150500  addli r10, r10, 1
002558  9f06c003  addli r13, zero, 480
00255c  6700afe0  storeli.w r10, -4096(r30)
002560  b3860628  zext_int2long r[14:15], r13
002564  1bb5cd00  slli r10, r27, 12
002568  9f0d0520  addli r27, r10, 4096
00256c  1b3eba00  slli r28, r20, 11
002570  1f9a0900  addli r20, r19, 1
002574  67004fe9  storeli.w r20, -3072(r30)
002578  003a0002  core_id r20
00257c  371b5a01  beq r20, r21, 708
002580  3b5dba00  bneq r20, r11, 852
002584  1f0a8000  addli r20, zero, 64
002588  0bb12218  sub.sl r[3:4], r[6:7], r[3:4]
00258c  97b21203  sll.d r[6:7], r[6:7], r17
002590  9f300000  addli r1, zero, 3
002594  1f790000  addli r18, zero, 7
002598  330c0a28  zext_int2long r[25:26], r20
00259c  7d900000  xwait r1, 0
0025a0  0f118161  div.sl r[3:4], r[3:4], r[25:26]
0025a4  0b3cd140  min.sl r[25:26], r[3:4], r[14:15]
0025a8  0b312c18  sub.sl r[3:4], r[25:26], r[3:4]
0025ac  6b5c8f00  load.d r[25:26], 8(r30)
0025b0  1f0a4100  addli r20, r2, 32
0025b4  1f61f001  addli r2, zero, 254
0025b8  0b2c5c10  add.ul r[25:26], r[25:26], r[6:7]
0025bc  9f028000  addli r5, zero, 64
0025c0  bf043101  blt.s r2, r19, 288
0025c4  9f510000  addli r3, zero, 5
0025c8  1f311000  addli r2, zero, 11
0025cc  1d800100  lock zero, r3
0025d0  15000014  dma_cfg zero, zero, zero, 10
0025d4  15001015  dma_cfg zero, zero, r17, 10
0025d8  15005015  dma_cfg zero, zero, r21, 10
0025dc  15001014  dma_cfg zero, zero, r1, 10
0025e0  9f001000  addli r1, zero, 8
0025e4  1500c014  dma_cfg zero, zero, r12, 10
0025e8  15003014  dma_cfg zero, zero, r3, 10
0025ec  1500b014  dma_cfg zero, zero, r11, 10
0025f0  15002015  dma_cfg zero, zero, r18, 10
0025f4  15001014  dma_cfg zero, zero, r1, 10
0025f8  9f101000  addli r1, zero, 9
0025fc  15001014  dma_cfg zero, zero, r1, 10
002600  9f201000  addli r1, zero, 10
002604  15001014  dma_cfg zero, zero, r1, 10
002608  9f501000  addli r1, zero, 13
00260c  15002014  dma_cfg zero, zero, r2, 10
002610  1f411000  addli r2, zero, 12
002614  15002014  dma_cfg zero, zero, r2, 10
002618  1f010001  addli r2, zero, 128
00261c  15001014  dma_cfg zero, zero, r1, 10
002620  9f601000  addli r1, zero, 14
002624  15001014  dma_cfg zero, zero, r1, 10
002628  9f701000  addli r1, zero, 15
00262c  15001014  dma_cfg zero, zero, r1, 10
002630  9f102000  addli r1, zero, 17
002634  15009014  dma_cfg zero, zero, r9, 10
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
0026bc  950d5006  dma_cfg r27, zero, r5, 3
0026c0  15011009  dma_cfg r2, zero, r17, 4
0026c4  1501100a  dma_cfg r2, zero, r1, 5
0026c8  15001010  dma_cfg zero, zero, r1, 8
0026cc  9f300000  addli r1, zero, 3
0026d0  35000000  dma_run zero
0026d4  1500100b  dma_cfg zero, zero, r17, 5
0026d8  15000010  dma_cfg zero, zero, zero, 8
0026dc  1d900100  unlock r3
0026e0  1d000600  lock zero, r12
0026e4  1f018520  addli r2, r10, 4160
0026e8  9f090001  addli r19, zero, 128
0026ec  9f014000  addli r3, zero, 32
0026f0  1f530000  addli r6, zero, 5
0026f4  1f250000  addli r10, zero, 2
0026f8  9f2a0000  addli r21, zero, 2
0026fc  95880800  dma_cfg r17, r17, zero, 0
002700  15800c04  dma_cfg zero, r25, zero, 2
002704  15015c06  dma_cfg r2, r24, r5, 3
002708  1f311000  addli r2, zero, 11
00270c  95891209  dma_cfg r19, r5, r17, 4
002710  9589490b  dma_cfg r19, r19, r20, 5
002714  15003010  dma_cfg zero, zero, r3, 8
002718  35000000  dma_run zero
00271c  1500100b  dma_cfg zero, zero, r17, 5
002720  15000010  dma_cfg zero, zero, zero, 8
002724  1d100600  unlock r12
002728  1d000300  lock zero, r6
00272c  15000014  dma_cfg zero, zero, zero, 10
002730  15001015  dma_cfg zero, zero, r17, 10
002734  1500a014  dma_cfg zero, zero, r10, 10
002738  15001014  dma_cfg zero, zero, r1, 10
00273c  9f001000  addli r1, zero, 8
002740  1500c014  dma_cfg zero, zero, r12, 10
002744  15006014  dma_cfg zero, zero, r6, 10
002748  1500b014  dma_cfg zero, zero, r11, 10
00274c  15002015  dma_cfg zero, zero, r18, 10
002750  1f590000  addli r18, zero, 5
002754  15001014  dma_cfg zero, zero, r1, 10
002758  9f101000  addli r1, zero, 9
00275c  15001014  dma_cfg zero, zero, r1, 10
002760  9f201000  addli r1, zero, 10
002764  15001014  dma_cfg zero, zero, r1, 10
002768  9f501000  addli r1, zero, 13
00276c  15002014  dma_cfg zero, zero, r2, 10
002770  1f411000  addli r2, zero, 12
002774  15002014  dma_cfg zero, zero, r2, 10
002778  15001014  dma_cfg zero, zero, r1, 10
00277c  9f601000  addli r1, zero, 14
002780  15001014  dma_cfg zero, zero, r1, 10
002784  9f701000  addli r1, zero, 15
002788  15001014  dma_cfg zero, zero, r1, 10
00278c  9f102000  addli r1, zero, 17
002790  15009014  dma_cfg zero, zero, r9, 10
002794  15001014  dma_cfg zero, zero, r1, 10
002798  9f202000  addli r1, zero, 18
00279c  15001014  dma_cfg zero, zero, r1, 10
0027a0  9f302000  addli r1, zero, 19
0027a4  15001014  dma_cfg zero, zero, r1, 10
0027a8  9f402000  addli r1, zero, 20
0027ac  15001014  dma_cfg zero, zero, r1, 10
0027b0  9f502000  addli r1, zero, 21
0027b4  15001014  dma_cfg zero, zero, r1, 10
0027b8  9f602000  addli r1, zero, 22
0027bc  15001014  dma_cfg zero, zero, r1, 10
0027c0  9f702000  addli r1, zero, 23
0027c4  15001014  dma_cfg zero, zero, r1, 10
0027c8  9f003000  addli r1, zero, 24
0027cc  15001014  dma_cfg zero, zero, r1, 10
0027d0  9f103000  addli r1, zero, 25
0027d4  15001014  dma_cfg zero, zero, r1, 10
0027d8  9f203000  addli r1, zero, 26
0027dc  15001014  dma_cfg zero, zero, r1, 10
0027e0  9f303000  addli r1, zero, 27
0027e4  15001014  dma_cfg zero, zero, r1, 10
0027e8  9f403000  addli r1, zero, 28
0027ec  15001014  dma_cfg zero, zero, r1, 10
0027f0  9f503000  addli r1, zero, 29
0027f4  15001014  dma_cfg zero, zero, r1, 10
0027f8  9f603000  addli r1, zero, 30
0027fc  15001014  dma_cfg zero, zero, r1, 10
002800  9f703000  addli r1, zero, 31
002804  15001014  dma_cfg zero, zero, r1, 10
002808  9f004000  addli r1, zero, 32
00280c  95880800  dma_cfg r17, r17, zero, 0
002810  95080002  dma_cfg r17, zero, zero, 1
002814  15000004  dma_cfg zero, zero, zero, 2
002818  950d5006  dma_cfg r27, zero, r5, 3
00281c  95091009  dma_cfg r19, zero, r17, 4
002820  9509400b  dma_cfg r19, zero, r20, 5
002824  15003010  dma_cfg zero, zero, r3, 8
002828  35000000  dma_run zero
00282c  1500100b  dma_cfg zero, zero, r17, 5
002830  15000010  dma_cfg zero, zero, zero, 8
002834  1d100300  unlock r6
002838  7d000500  xsignal r10, 0
00283c  db090000  j 76
002840  9f200000  addli r1, zero, 2
002844  9f014000  addli r3, zero, 32
002848  1f012000  addli r2, zero, 16
00284c  9f2a0000  addli r21, zero, 2
002850  9f042000  addli r9, zero, 16
002854  7d900000  xwait r1, 0
002858  7d100900  xwait r18, 0
00285c  1d000000  lock zero, zero
002860  81000000  ds_cfg r1, zero, 0
002864  9f004000  addli r1, zero, 32
002868  81010002  ds_cfg r3, zero, 1
00286c  0101001c  ds_cfg r2, zero, 14
002870  8101001a  ds_cfg r3, zero, 13
002874  219e2d02  shuffle_batch r28, r27, r2, 1
002878  1f310000  addli r2, zero, 3
00287c  1d100000  unlock zero
002880  7d000100  xsignal r2, 0
002884  7d000600  xsignal r12, 0
002888  63010ff0  loadli.w r2,  -2048(r30)
00288c  e3020ff8  loadli.w r5,  -1024(r30)
002890  80390002  core_id r19
002894  8b110139  mod.s r3, r2, r16
002898  1f110100  addli r2, r2, 1
00289c  9f920200  addli r5, r5, 1
0028a0  67002ff0  storeli.w r2, -2048(r30)
0028a4  67005ff8  storeli.w r5, -1024(r30)
0028a8  1bbab100  slli r20, r3, 11
0028ac  3bf1c9fe  bneq r19, r12, -932
0028b0  1f011000  addli r2, zero, 8
0028b4  7d100600  xwait r12, 0
0028b8  7d100100  xwait r2, 0
0028bc  1d800800  lock zero, r17
0028c0  89801400  mm_cfg r1, r9, r1, 0
0028c4  89881805  mm_cfg r17, r17, r17, 2
0028c8  379c0700  beq r15, zero, 772
0028cc  29104e11  mm_acc zero, r28, r20, 8
0028d0  5b600000  j 768
0028d4  e3010ff0  loadli.w r3,  -2048(r30)
0028d8  63010ff8  loadli.w r2,  -1024(r30)
0028dc  1f73f001  addli r6, zero, 255
0028e0  80390002  core_id r19
0028e4  8b926138  mod.s r5, r3, r6
0028e8  0b136138  mod.s r6, r2, r6
0028ec  9f910100  addli r3, r3, 1
0028f0  67003ff0  storeli.w r3, -2048(r30)
0028f4  9f110100  addli r3, r2, 1
0028f8  67003ff8  storeli.w r3, -1024(r30)
0028fc  9f710000  addli r3, zero, 7
002900  1bbab200  slli r20, r5, 11
002904  1b35b300  slli r10, r6, 11
002908  ab021000  lui r5, 256
00290c  8b1d5510  add.s r27, r10, r5
002910  37fb3900  beq r19, r3, 732
002914  3bee19ff  bneq r19, r17, -104
002918  1f781000  addli r16, zero, 15
00291c  9f01efdf  addli r3, r30, -4112
002920  9f740000  addli r9, zero, 7
002924  97320c03  sll.d r[6:7], r[25:26], r16
002928  6bdc0100  load.d r[25:26], 0(r3)
00292c  9f61f001  addli r3, zero, 254
002930  7d900400  xwait r9, 0
002934  0b2c5c10  add.ul r[25:26], r[25:26], r[6:7]
002938  9f028000  addli r5, zero, 64
00293c  3ff42100  blt.s r3, r2, 284
002940  1f530000  addli r6, zero, 5
002944  1f310000  addli r2, zero, 3
002948  9f112000  addli r3, zero, 17
00294c  1d000300  lock zero, r6
002950  15000014  dma_cfg zero, zero, zero, 10
002954  15001015  dma_cfg zero, zero, r17, 10
002958  15005015  dma_cfg zero, zero, r21, 10
00295c  15002014  dma_cfg zero, zero, r2, 10
002960  1f011000  addli r2, zero, 8
002964  1500c014  dma_cfg zero, zero, r12, 10
002968  15006014  dma_cfg zero, zero, r6, 10
00296c  1500b014  dma_cfg zero, zero, r11, 10
002970  15009014  dma_cfg zero, zero, r9, 10
002974  15002014  dma_cfg zero, zero, r2, 10
002978  1f111000  addli r2, zero, 9
00297c  15002014  dma_cfg zero, zero, r2, 10
002980  1f211000  addli r2, zero, 10
002984  15002014  dma_cfg zero, zero, r2, 10
002988  1f311000  addli r2, zero, 11
00298c  15002014  dma_cfg zero, zero, r2, 10
002990  1f411000  addli r2, zero, 12
002994  15002014  dma_cfg zero, zero, r2, 10
002998  1f511000  addli r2, zero, 13
00299c  15002014  dma_cfg zero, zero, r2, 10
0029a0  1f611000  addli r2, zero, 14
0029a4  15002014  dma_cfg zero, zero, r2, 10
0029a8  1f012000  addli r2, zero, 16
0029ac  15000015  dma_cfg zero, zero, r16, 10
0029b0  15002014  dma_cfg zero, zero, r2, 10
0029b4  15003014  dma_cfg zero, zero, r3, 10
0029b8  9f212000  addli r3, zero, 18
0029bc  15003014  dma_cfg zero, zero, r3, 10
0029c0  9f312000  addli r3, zero, 19
0029c4  15003014  dma_cfg zero, zero, r3, 10
0029c8  9f412000  addli r3, zero, 20
0029cc  15003014  dma_cfg zero, zero, r3, 10
0029d0  9f512000  addli r3, zero, 21
0029d4  15003014  dma_cfg zero, zero, r3, 10
0029d8  9f612000  addli r3, zero, 22
0029dc  15003014  dma_cfg zero, zero, r3, 10
0029e0  9f712000  addli r3, zero, 23
0029e4  15003014  dma_cfg zero, zero, r3, 10
0029e8  9f013000  addli r3, zero, 24
0029ec  15003014  dma_cfg zero, zero, r3, 10
0029f0  9f113000  addli r3, zero, 25
0029f4  15003014  dma_cfg zero, zero, r3, 10
0029f8  9f213000  addli r3, zero, 26
0029fc  15003014  dma_cfg zero, zero, r3, 10
002a00  9f313000  addli r3, zero, 27
002a04  15003014  dma_cfg zero, zero, r3, 10
002a08  9f413000  addli r3, zero, 28
002a0c  15003014  dma_cfg zero, zero, r3, 10
002a10  9f513000  addli r3, zero, 29
002a14  15003014  dma_cfg zero, zero, r3, 10
002a18  9f613000  addli r3, zero, 30
002a1c  15003014  dma_cfg zero, zero, r3, 10
002a20  9f713000  addli r3, zero, 31
002a24  15003014  dma_cfg zero, zero, r3, 10
002a28  9f010001  addli r3, zero, 128
002a2c  95880800  dma_cfg r17, r17, zero, 0
002a30  95080002  dma_cfg r17, zero, zero, 1
002a34  15000004  dma_cfg zero, zero, zero, 2
002a38  950d5006  dma_cfg r27, zero, r5, 3
002a3c  95011009  dma_cfg r3, zero, r17, 4
002a40  9501200a  dma_cfg r3, zero, r2, 5
002a44  15000010  dma_cfg zero, zero, zero, 8
002a48  35000000  dma_run zero
002a4c  1500100b  dma_cfg zero, zero, r17, 5
002a50  15000010  dma_cfg zero, zero, zero, 8
002a54  1d100300  unlock r6
002a58  2b011000  lui r2, 256
002a5c  1d000600  lock zero, r12
002a60  9f050001  addli r11, zero, 128
002a64  9f010010  addli r3, zero, 2048
002a68  1f630000  addli r6, zero, 6
002a6c  1f590000  addli r18, zero, 5
002a70  95880800  dma_cfg r17, r17, zero, 0
002a74  1b110104  ori r2, r2, 64
002a78  15800c04  dma_cfg zero, r25, zero, 2
002a7c  0b112510  add.s r2, r10, r2
002a80  1f550000  addli r10, zero, 5
002a84  15015c06  dma_cfg r2, r24, r5, 3
002a88  1f012000  addli r2, zero, 16
002a8c  95851209  dma_cfg r11, r5, r17, 4
002a90  9585210a  dma_cfg r11, r3, r2, 5
002a94  9f310000  addli r3, zero, 3
002a98  15000010  dma_cfg zero, zero, zero, 8
002a9c  35000000  dma_run zero
002aa0  1500100b  dma_cfg zero, zero, r17, 5
002aa4  15000010  dma_cfg zero, zero, zero, 8
002aa8  1d100600  unlock r12
002aac  1d000500  lock zero, r10
002ab0  15000014  dma_cfg zero, zero, zero, 10
002ab4  15001015  dma_cfg zero, zero, r17, 10
002ab8  15005015  dma_cfg zero, zero, r21, 10
002abc  15003014  dma_cfg zero, zero, r3, 10
002ac0  9f011000  addli r3, zero, 8
002ac4  1500c014  dma_cfg zero, zero, r12, 10
002ac8  1500a014  dma_cfg zero, zero, r10, 10
002acc  15006014  dma_cfg zero, zero, r6, 10
002ad0  15009014  dma_cfg zero, zero, r9, 10
002ad4  9f042000  addli r9, zero, 16
002ad8  15003014  dma_cfg zero, zero, r3, 10
002adc  9f111000  addli r3, zero, 9
002ae0  15003014  dma_cfg zero, zero, r3, 10
002ae4  9f211000  addli r3, zero, 10
002ae8  15003014  dma_cfg zero, zero, r3, 10
002aec  9f311000  addli r3, zero, 11
002af0  15003014  dma_cfg zero, zero, r3, 10
002af4  9f411000  addli r3, zero, 12
002af8  15003014  dma_cfg zero, zero, r3, 10
002afc  9f511000  addli r3, zero, 13
002b00  15003014  dma_cfg zero, zero, r3, 10
002b04  9f611000  addli r3, zero, 14
002b08  15003014  dma_cfg zero, zero, r3, 10
002b0c  9f112000  addli r3, zero, 17
002b10  15000015  dma_cfg zero, zero, r16, 10
002b14  15002014  dma_cfg zero, zero, r2, 10
002b18  15003014  dma_cfg zero, zero, r3, 10
002b1c  9f212000  addli r3, zero, 18
002b20  15003014  dma_cfg zero, zero, r3, 10
002b24  9f312000  addli r3, zero, 19
002b28  15003014  dma_cfg zero, zero, r3, 10
002b2c  9f412000  addli r3, zero, 20
002b30  15003014  dma_cfg zero, zero, r3, 10
002b34  9f512000  addli r3, zero, 21
002b38  15003014  dma_cfg zero, zero, r3, 10
002b3c  9f612000  addli r3, zero, 22
002b40  15003014  dma_cfg zero, zero, r3, 10
002b44  9f712000  addli r3, zero, 23
002b48  15003014  dma_cfg zero, zero, r3, 10
002b4c  9f013000  addli r3, zero, 24
002b50  15003014  dma_cfg zero, zero, r3, 10
002b54  9f113000  addli r3, zero, 25
002b58  15003014  dma_cfg zero, zero, r3, 10
002b5c  9f213000  addli r3, zero, 26
002b60  15003014  dma_cfg zero, zero, r3, 10
002b64  9f313000  addli r3, zero, 27
002b68  15003014  dma_cfg zero, zero, r3, 10
002b6c  9f413000  addli r3, zero, 28
002b70  15003014  dma_cfg zero, zero, r3, 10
002b74  9f513000  addli r3, zero, 29
002b78  15003014  dma_cfg zero, zero, r3, 10
002b7c  9f613000  addli r3, zero, 30
002b80  15003014  dma_cfg zero, zero, r3, 10
002b84  9f713000  addli r3, zero, 31
002b88  15003014  dma_cfg zero, zero, r3, 10
002b8c  95880800  dma_cfg r17, r17, zero, 0
002b90  95080002  dma_cfg r17, zero, zero, 1
002b94  15000004  dma_cfg zero, zero, zero, 2
002b98  950d5006  dma_cfg r27, zero, r5, 3
002b9c  95051009  dma_cfg r11, zero, r17, 4
002ba0  9505200a  dma_cfg r11, zero, r2, 5
002ba4  9f650000  addli r11, zero, 6
002ba8  15000010  dma_cfg zero, zero, zero, 8
002bac  35000000  dma_run zero
002bb0  1500100b  dma_cfg zero, zero, r17, 5
002bb4  15000010  dma_cfg zero, zero, zero, 8
002bb8  1d100500  unlock r10
002bbc  7d000300  xsignal r6, 0
002bc0  1f120200  addli r4, r4, 1
002bc4  3b35c2fc  bneq r4, r12, -1716
002bc8  db0e0000  j 116
002bcc  29004e11  mm zero, r28, r20, 8
002bd0  1f120200  addli r4, r4, 1
002bd4  1f111000  addli r2, zero, 9
002bd8  1d900800  unlock r17
002bdc  7d000900  xsignal r18, 0
002be0  7d000100  xsignal r2, 0
002be4  bb34c2fc  bneq r4, r12, -1748
002be8  5b0b0000  j 88
002bec  9f101000  addli r1, zero, 9
002bf0  7d900500  xwait r11, 0
002bf4  9f014000  addli r3, zero, 32
002bf8  1f012000  addli r2, zero, 16
002bfc  9f042000  addli r9, zero, 16
002c00  7d900000  xwait r1, 0
002c04  1d000000  lock zero, zero
002c08  9f004000  addli r1, zero, 32
002c0c  810a0000  ds_cfg r21, zero, 0
002c10  81010002  ds_cfg r3, zero, 1
002c14  0101001c  ds_cfg r2, zero, 14
002c18  8101001a  ds_cfg r3, zero, 13
002c1c  418a2d04  shuffle_coa r20, r27, r2, 2
002c20  1f710000  addli r2, zero, 7
002c24  1d100000  unlock zero
002c28  7d000100  xsignal r2, 0
002c2c  1f011000  addli r2, zero, 8
002c30  7d000100  xsignal r2, 0
002c34  1f120200  addli r4, r4, 1
002c38  3b63c2fc  bneq r4, r12, -1832
002c3c  3bb0c900  bneq r19, r12, 12
002c40  1f211000  addli r2, zero, 10
002c44  7d000100  xsignal r2, 0
002c48  37e32901  beq r19, r18, 216
002c4c  6341cfdf  loadli.w r2,  -4124(r30)
002c50  1f02c007  addli r4, zero, 992
002c54  1f640000  addli r8, zero, 6
002c58  33020228  zext_int2long r[5:6], r4
002c5c  33010128  zext_int2long r[3:4], r2
002c60  0b224140  min.ul r[5:6], r[3:4], r[5:6]
002c64  27024200  addli.d r[5:6], r[5:6], 32
002c68  0b222248  max.ul r[5:6], r[5:6], r[3:4]
002c6c  0b312218  sub.sl r[3:4], r[5:6], r[3:4]
002c70  33820028  zext_int2long r[5:6], r1
002c74  0b214140  min.ul r[3:4], r[3:4], r[5:6]
002c78  b7d489fa  beq r19, r8, -2764
002c7c  bbce09fa  bneq r19, zero, -2128
002c80  1f04afdf  addli r8, r30, -4144
002c84  63439fdf  loadli.w r6,  -4148(r30)
002c88  1f590000  addli r18, zero, 5
002c8c  6b550400  load.d r[11:12], 0(r8)
002c90  1f341000  addli r8, zero, 11
002c94  33130328  sext_int2long r[7:8], r6
002c98  7d100400  xwait r8, 0
002c9c  1f04bfdf  addli r8, r30, -4136
002ca0  97379502  sll.d r[16:17], r[11:12], r9
002ca4  6b558f01  load.d r[11:12], 24(r30)
002ca8  8b36d340  min.sl r[14:15], r[7:8], r[14:15]
002cac  a7864600  addli.d r[14:15], r[14:15], 32
002cb0  8b27f510  add.ul r[16:17], r[11:12], r[16:17]
002cb4  6b550400  load.d r[11:12], 0(r8)
002cb8  1f743100  addli r8, r2, 31
002cbc  1b311100  slli r2, r2, 1
002cc0  9f010001  addli r3, zero, 128
002cc4  8bb66648  max.sl r[14:15], r[14:15], r[7:8]
002cc8  1b01e103  andi r2, r2, 62
002ccc  8ba7a710  add.ul r[16:17], r[16:17], r[11:12]
002cd0  9f550000  addli r11, zero, 5
002cd4  0bb36618  sub.sl r[7:8], r[14:15], r[7:8]
002cd8  1f058000  addli r10, zero, 64
002cdc  1d800500  lock zero, r11
002ce0  0b324340  min.sl r[5:6], r[7:8], r[5:6]
002ce4  1b435400  srli r6, r8, 5
002ce8  95880800  dma_cfg r17, r17, zero, 0
002cec  15800802  dma_cfg zero, r17, zero, 1
002cf0  15080004  dma_cfg r16, zero, zero, 2
002cf4  9507a506  dma_cfg r15, r10, r10, 3
002cf8  15856108  dma_cfg r10, r3, r6, 4
002cfc  1f030010  addli r6, zero, 2048
002d00  1583410a  dma_cfg r6, r3, r4, 5
002d04  15002010  dma_cfg zero, zero, r2, 8
002d08  35000000  dma_run zero
002d0c  1500100b  dma_cfg zero, zero, r17, 5
002d10  1f411000  addli r2, zero, 12
002d14  15000010  dma_cfg zero, zero, zero, 8
002d18  1d900500  unlock r11
002d1c  5b0b0000  j 88
002d20  9f211000  addli r3, zero, 10
002d24  1f010000  addli r2, zero, 0
002d28  1f020020  addli r4, zero, 4096
002d2c  7d900100  xwait r3, 0
002d30  9f511000  addli r3, zero, 13
002d34  7d900100  xwait r3, 0
002d38  1d800a00  lock zero, r21
002d3c  ab01803f  lui r3, 260096
002d40  0d000002  ew_cfg zero, zero, zero, 1
002d44  8d910100  ewcoeff_cfg r3, r3, zero, 0
002d48  9f713000  addli r3, zero, 31
002d4c  0d800104  ew_cfg zero, r3, zero, 2
002d50  8d080006  ew_cfg r17, zero, zero, 3
002d54  e3416fdf  loadli.w r3,  -4172(r30)
002d58  2d013100  dsmadd r2, r2, r3, 0
002d5c  1f010101  addli r2, r2, 128
002d60  bb6f41fe  bneq r2, r4, -8
002d64  1f311000  addli r2, zero, 11
002d68  1d900a00  unlock r21
002d6c  7d000100  xsignal r2, 0
002d70  1f611000  addli r2, zero, 14
002d74  7d000100  xsignal r2, 0
002d78  dbd6feff  j -2380
002d7c  7d000000  xsignal zero, 0
002d80  bbe00900  bneq r19, zero, 56
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
