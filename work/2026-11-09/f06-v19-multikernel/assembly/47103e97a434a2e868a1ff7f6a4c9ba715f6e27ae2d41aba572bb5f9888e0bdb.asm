; SHA-256 47103e97a434a2e868a1ff7f6a4c9ba715f6e27ae2d41aba572bb5f9888e0bdb
; P800 SDNN · XTDK LLVM 19 · 1575 / 1575 words decoded
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
0000bc  803a0002  core_id r21
0000c0  1f8fae20  addli r30, sp, 4176
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00a00  beq r21, zero, 24
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
0000f8  9f310000  addli r3, zero, 3
0000fc  1d100100  unlock r2
000100  1f411000  addli r2, zero, 12
000104  80a10004  csr_set csr3, r1
000108  9f500000  addli r1, zero, 5
00010c  00d00100  sync_group
000110  7d000100  xsignal r2, 0
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
000910  9f710000  addli r3, zero, 7
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
000d14  7d800100  xsignal r3, 0
000d18  7d800100  xsignal r3, 0
000d1c  7d800100  xsignal r3, 0
000d20  7d800100  xsignal r3, 0
000d24  7d800100  xsignal r3, 0
000d28  7d800100  xsignal r3, 0
000d2c  7d800100  xsignal r3, 0
000d30  7d800100  xsignal r3, 0
000d34  7d800100  xsignal r3, 0
000d38  7d800100  xsignal r3, 0
000d3c  7d800100  xsignal r3, 0
000d40  7d800100  xsignal r3, 0
000d44  7d800100  xsignal r3, 0
000d48  7d800100  xsignal r3, 0
000d4c  7d800100  xsignal r3, 0
000d50  7d800100  xsignal r3, 0
000d54  7d800100  xsignal r3, 0
000d58  7d800100  xsignal r3, 0
000d5c  7d800100  xsignal r3, 0
000d60  7d800100  xsignal r3, 0
000d64  7d800100  xsignal r3, 0
000d68  7d800100  xsignal r3, 0
000d6c  7d800100  xsignal r3, 0
000d70  7d800100  xsignal r3, 0
000d74  7d800100  xsignal r3, 0
000d78  7d800100  xsignal r3, 0
000d7c  7d800100  xsignal r3, 0
000d80  7d800100  xsignal r3, 0
000d84  7d800100  xsignal r3, 0
000d88  7d800100  xsignal r3, 0
000d8c  7d800100  xsignal r3, 0
000d90  7d800100  xsignal r3, 0
000d94  7d800100  xsignal r3, 0
000d98  7d800100  xsignal r3, 0
000d9c  7d800100  xsignal r3, 0
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
001110  7d800000  xsignal r1, 0
001114  e3004f00  loadli.w r1,  32(r30)
001118  63414f00  loadli.w r2,  36(r30)
00111c  00d20002  load_param_i r4, 1
001120  e3015f00  loadli.w r3,  40(r30)
001124  67000ff8  storeli.w zero, -1024(r30)
001128  67000ff0  storeli.w zero, -2048(r30)
00112c  67000fe8  storeli.w zero, -3072(r30)
001130  67000fe0  storeli.w zero, -4096(r30)
001134  8b101120  mul.s r1, r2, r1
001138  1f010200  addli r2, r4, 0
00113c  0b913050  fmac.s r2, r1, r3
001140  8b913020  mul.s r3, r1, r3
001144  1f71f1ff  addli r2, r2, -1
001148  0b114130  div.s r2, r2, r4
00114c  00520002  load_param_i r4, 0
001150  8b104120  mul.s r1, r2, r4
001154  0b114150  fmac.s r2, r2, r4
001158  8b113140  min.s r3, r2, r3
00115c  cbe21102  ble.s r3, r1, 1208
001160  33910128  sext_int2long r[3:4], r3
001164  1f028fdf  addli r4, r30, -4160
001168  33930028  sext_int2long r[7:8], r1
00116c  63040ff8  loadli.w r8,  -1024(r30)
001170  e3040ff0  loadli.w r9,  -2048(r30)
001174  63090fe8  loadli.w r18,  -3072(r30)
001178  e3090fe0  loadli.w r19,  -4096(r30)
00117c  9f250000  addli r11, zero, 2
001180  1f5c0000  addli r24, zero, 5
001184  1f470000  addli r14, zero, 4
001188  1f180000  addli r16, zero, 1
00118c  1f7af001  addli r20, zero, 255
001190  9f380000  addli r17, zero, 3
001194  1f0b8000  addli r22, zero, 64
001198  9f0b4000  addli r23, zero, 32
00119c  73302200  store.d r[3:4], 0(r4)
0011a0  1f71f007  addli r2, zero, 1023
0011a4  9f017fdf  addli r3, r30, -4168
0011a8  abf0ffff  lui r1, 1048575
0011ac  73b01100  store.d r[2:3], 0(r3)
0011b0  abf01700  lui r1, 383
0011b4  9b900080  ori r1, r1, 2048
0011b8  674b1fde  storeli.w r1, -4172(r30)
0011bc  5b0e0000  j 112
0011c0  1f02bfdf  addli r4, r30, -4136
0011c4  6b510f01  load.d r[3:4], 16(r30)
0011c8  6b560200  load.d r[13:14], 0(r4)
0011cc  1f621000  addli r4, zero, 14
0011d0  7d100200  xwait r4, 0
0011d4  1d000700  lock zero, r14
0011d8  1b321300  slli r4, r6, 1
0011dc  0b21c110  add.ul r[3:4], r[3:4], r[13:14]
0011e0  15000800  dma_cfg zero, r16, zero, 0
0011e4  15800104  dma_cfg zero, r3, zero, 2
0011e8  63436fdf  loadli.w r6,  -4172(r30)
0011ec  15034106  dma_cfg r6, r2, r4, 3
0011f0  1f010001  addli r2, zero, 128
0011f4  15010b09  dma_cfg r2, r22, r16, 4
0011f8  35000000  dma_run zero
0011fc  1d100700  unlock r14
001200  1f511000  addli r2, zero, 13
001204  7d000100  xsignal r2, 0
001208  1f01dfdf  addli r2, r30, -4120
00120c  1f028fdf  addli r4, r30, -4160
001210  9f990200  addli r19, r5, 1
001214  1f990000  addli r18, r1, 1
001218  6b530100  load.d r[7:8], 0(r2)
00121c  6b510200  load.d r[3:4], 0(r4)
001220  27130300  addli.d r[7:8], r[7:8], 1
001224  13312304  setlt.sl r2, r[7:8], r[3:4]
001228  b73f0100  beq r2, zero, 1004
00122c  3bb0ea00  bneq r21, r14, 12
001230  9f401000  addli r1, zero, 12
001234  7d900000  xwait r1, 0
001238  e3005f00  loadli.w r1,  40(r30)
00123c  1f01dfdf  addli r2, r30, -4120
001240  9f021000  addli r5, zero, 8
001244  1f060000  addli r12, zero, 0
001248  1f050000  addli r10, zero, 0
00124c  73306100  store.d r[7:8], 0(r2)
001250  63414f00  loadli.w r2,  36(r30)
001254  8b101330  div.s r1, r6, r1
001258  8b902030  div.s r1, r1, r2
00125c  1f010002  addli r2, zero, 256
001260  0b912030  div.s r2, r1, r2
001264  9b313100  slli r3, r2, 3
001268  1b318100  slli r2, r2, 8
00126c  0b923518  sub.s r4, r11, r3
001270  0b912018  sub.s r2, r1, r2
001274  0b125240  min.s r4, r4, r5
001278  8b904038  mod.s r1, r1, r4
00127c  0b114130  div.s r2, r2, r4
001280  8b901110  add.s r1, r3, r1
001284  9b315100  slli r3, r2, 5
001288  674e3fde  storeli.w r3, -4124(r30)
00128c  33010128  zext_int2long r[3:4], r2
001290  1bb25000  slli r4, r1, 5
001294  b3820028  zext_int2long r[6:7], r1
001298  9f301000  addli r1, zero, 11
00129c  17318103  sll.d r[3:4], r[3:4], r24
0012a0  e74c4fde  storeli.w r4, -4148(r30)
0012a4  97bc1202  sll.d r[26:27], r[6:7], r1
0012a8  97310103  sll.d r[4:5], r[3:4], r16
0012ac  1f01afdf  addli r2, r30, -4144
0012b0  73305100  store.d r[6:7], 0(r2)
0012b4  eb508f00  load.d r[2:3], 8(r30)
0012b8  9f02bfdf  addli r5, r30, -4136
0012bc  73b03200  store.d r[4:5], 0(r5)
0012c0  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
0012c4  9f01efdf  addli r3, r30, -4112
0012c8  73b01100  store.d r[2:3], 0(r3)
0012cc  9f017fdf  addli r3, r30, -4168
0012d0  ebd00100  load.d r[2:3], 0(r3)
0012d4  9f01ffdf  addli r3, r30, -4104
0012d8  97801c02  and.d r[2:3], r[26:27], r[2:3]
0012dc  73b01100  store.d r[2:3], 0(r3)
0012e0  9f610000  addli r3, zero, 6
0012e4  5b0f0000  j 120
0012e8  9f068000  addli r13, zero, 64
0012ec  0bb36d18  sub.sl r[7:8], r[28:29], r[7:8]
0012f0  6b510f00  load.d r[3:4], 0(r30)
0012f4  97bd0d03  sll.d r[28:29], r[28:29], r16
0012f8  7d900800  xwait r17, 0
0012fc  1d000700  lock zero, r14
001300  15080800  dma_cfg r16, r16, zero, 0
001304  b38a0628  zext_int2long r[22:23], r13
001308  8b2db111  add.ul r[28:29], r[3:4], r[28:29]
00130c  9f610000  addli r3, zero, 6
001310  0f135361  div.sl r[7:8], r[7:8], r[22:23]
001314  b38a0b28  zext_int2long r[22:23], r23
001318  15000e04  dma_cfg zero, r28, zero, 2
00131c  15827d07  dma_cfg r4, r27, r23, 3
001320  1f020001  addli r4, zero, 128
001324  8b3a5341  min.sl r[22:23], r[7:8], r[22:23]
001328  0bb36a18  sub.sl r[7:8], r[22:23], r[7:8]
00132c  1f0b8000  addli r22, zero, 64
001330  803a0002  core_id r21
001334  1f034300  addli r6, r6, 32
001338  15026208  dma_cfg r4, r4, r6, 4
00133c  35000000  dma_run zero
001340  1d100700  unlock r14
001344  7d800500  xsignal r11, 0
001348  9f940400  addli r9, r9, 1
00134c  1f140400  addli r8, r8, 1
001350  1f160600  addli r12, r12, 1
001354  3776e600  beq r12, r14, 412
001358  1f150500  addli r10, r10, 1
00135c  8b10a910  add.s r1, r18, r10
001360  8b92a910  add.s r5, r19, r10
001364  0b924039  mod.s r4, r1, r20
001368  0b934239  mod.s r6, r5, r20
00136c  1b32c200  slli r4, r4, 12
001370  9b36b300  slli r13, r6, 11
001374  1f020220  addli r4, r4, 4096
001378  b7d0ba00  beq r21, r11, 52
00137c  b30d0628  zext_int2long r[28:29], r12
001380  bb810a01  bneq r21, r16, 96
001384  17b3ed02  sll.d r[7:8], r[28:29], r14
001388  1f71f01f  addli r2, zero, 4095
00138c  8b2d9311  add.ul r[28:29], r[7:8], r[26:27]
001390  33030128  zext_int2long r[7:8], r2
001394  1f01ffdf  addli r2, r30, -4104
001398  9326b305  setlt.ul r13, r[7:8], r[28:29]
00139c  6b530100  load.d r[7:8], 0(r2)
0013a0  3bad06fe  bneq r13, zero, -184
0013a4  33030028  zext_int2long r[7:8], zero
0013a8  5be8ffff  j -192
0013ac  7d900500  xwait r11, 0
0013b0  7d100c00  xwait r24, 0
0013b4  1d000000  lock zero, zero
0013b8  1f032000  addli r6, zero, 16
0013bc  81080000  ds_cfg r17, zero, 0
0013c0  010b0002  ds_cfg r22, zero, 1
0013c4  810b001c  ds_cfg r23, zero, 14
0013c8  810b001a  ds_cfg r23, zero, 13
0013cc  a1166202  shuffle_batch r13, r4, r6, 1
0013d0  1d100000  unlock zero
0013d4  7d800800  xsignal r17, 0
0013d8  7d000700  xsignal r14, 0
0013dc  dbedffff  j -148
0013e0  0b124439  mod.s r4, r8, r20
0013e4  0b934439  mod.s r6, r9, r20
0013e8  2b011000  lui r2, 256
0013ec  9f940400  addli r9, r9, 1
0013f0  1f140400  addli r8, r8, 1
0013f4  9b33b200  slli r7, r4, 11
0013f8  1b32b300  slli r4, r6, 11
0013fc  8b972310  add.s r15, r7, r2
001400  1f710000  addli r2, zero, 7
001404  37d12a00  beq r21, r2, 84
001408  3bc23a00  bneq r21, r3, 144
00140c  1f711000  addli r2, zero, 15
001410  1f022000  addli r4, zero, 16
001414  17b32d02  sll.d r[7:8], r[28:29], r2
001418  1f710000  addli r2, zero, 7
00141c  7d100100  xwait r2, 0
001420  1f01efdf  addli r2, r30, -4112
001424  eb5d0100  load.d r[28:29], 0(r2)
001428  1d000700  lock zero, r14
00142c  1f010010  addli r2, zero, 2048
001430  15080800  dma_cfg r16, r16, zero, 0
001434  0ba36d10  add.ul r[7:8], r[28:29], r[7:8]
001438  15800304  dma_cfg zero, r7, zero, 2
00143c  95076307  dma_cfg r15, r6, r22, 3
001440  1f030001  addli r6, zero, 128
001444  15034108  dma_cfg r6, r2, r4, 4
001448  35000000  dma_run zero
00144c  1d100700  unlock r14
001450  7d800100  xsignal r3, 0
001454  dbdfffff  j -260
001458  1f111000  addli r2, zero, 9
00145c  7d900100  xwait r3, 0
001460  1f032000  addli r6, zero, 16
001464  7d100100  xwait r2, 0
001468  1d000000  lock zero, zero
00146c  1f710000  addli r2, zero, 7
001470  81080000  ds_cfg r17, zero, 0
001474  010b0002  ds_cfg r22, zero, 1
001478  810b001c  ds_cfg r23, zero, 14
00147c  810b001a  ds_cfg r23, zero, 13
001480  41826704  shuffle_coa r4, r15, r6, 2
001484  1f021000  addli r4, zero, 8
001488  1d100000  unlock zero
00148c  7d000100  xsignal r2, 0
001490  7d000200  xsignal r4, 0
001494  dbd7ffff  j -324
001498  bbb0ea00  bneq r21, r14, 44
00149c  1f031000  addli r6, zero, 8
0014a0  7d100700  xwait r14, 0
0014a4  7d100300  xwait r6, 0
0014a8  1f032000  addli r6, zero, 16
0014ac  1d000800  lock zero, r16
0014b0  890b7301  mm_cfg r23, r6, r23, 0
0014b4  09080805  mm_cfg r16, r16, r16, 2
0014b8  37600500  beq r10, zero, 24
0014bc  2990460a  mm_acc zero, r13, r4, 5
0014c0  db020000  j 20
0014c4  1f160600  addli r12, r12, 1
0014c8  3b4ae6fe  bneq r12, r14, -368
0014cc  5b060000  j 48
0014d0  2980460a  mm zero, r13, r4, 5
0014d4  1f160600  addli r12, r12, 1
0014d8  1f111000  addli r2, zero, 9
0014dc  1d100800  unlock r16
0014e0  7d000c00  xsignal r24, 0
0014e4  7d000100  xsignal r2, 0
0014e8  bb49e6fe  bneq r12, r14, -400
0014ec  5b010000  j 8
0014f0  3bb0ea00  bneq r21, r14, 12
0014f4  1f211000  addli r2, zero, 10
0014f8  7d000100  xsignal r2, 0
0014fc  37838a01  beq r21, r24, 192
001500  6341cfdf  loadli.w r2,  -4124(r30)
001504  1f02c007  addli r4, zero, 992
001508  33860b28  zext_int2long r[13:14], r23
00150c  33030228  zext_int2long r[7:8], r4
001510  33010128  zext_int2long r[3:4], r2
001514  0b236140  min.ul r[7:8], r[3:4], r[7:8]
001518  27034300  addli.d r[7:8], r[7:8], 32
00151c  0b232348  max.ul r[7:8], r[7:8], r[3:4]
001520  0b312318  sub.sl r[3:4], r[7:8], r[3:4]
001524  0b23c140  min.ul r[7:8], r[3:4], r[13:14]
001528  37e20aff  beq r21, r16, -872
00152c  3bf30afe  bneq r21, zero, -804
001530  1f05afdf  addli r10, r30, -4144
001534  63419fdf  loadli.w r2,  -4148(r30)
001538  1f022000  addli r4, zero, 16
00153c  6b5c8f01  load.d r[25:26], 24(r30)
001540  6b590500  load.d r[19:20], 0(r10)
001544  1f550000  addli r10, zero, 5
001548  33110128  sext_int2long r[3:4], r2
00154c  17394902  sll.d r[19:20], r[19:20], r4
001550  1f321000  addli r4, zero, 11
001554  8b3ac140  min.sl r[22:23], r[3:4], r[13:14]
001558  7d100200  xwait r4, 0
00155c  1f02bfdf  addli r4, r30, -4136
001560  1d000500  lock zero, r10
001564  a78a4a00  addli.d r[22:23], r[22:23], 32
001568  0b292c11  add.ul r[19:20], r[25:26], r[19:20]
00156c  6b5c0200  load.d r[25:26], 0(r4)
001570  8bba2a48  max.sl r[22:23], r[22:23], r[3:4]
001574  15080000  dma_cfg r16, zero, zero, 0
001578  1b322300  slli r4, r6, 2
00157c  1f030010  addli r6, zero, 2048
001580  15000802  dma_cfg zero, r16, zero, 1
001584  0bb12a18  sub.sl r[3:4], r[22:23], r[3:4]
001588  1f0b8000  addli r22, zero, 64
00158c  803a0002  core_id r21
001590  0b298911  add.ul r[19:20], r[19:20], r[25:26]
001594  1f5c0000  addli r24, zero, 5
001598  0b31c140  min.sl r[3:4], r[3:4], r[13:14]
00159c  95090004  dma_cfg r19, zero, zero, 2
0015a0  15094006  dma_cfg r18, zero, r4, 3
0015a4  1f020001  addli r4, zero, 128
0015a8  15032208  dma_cfg r6, r4, r2, 4
0015ac  1f411000  addli r2, zero, 12
0015b0  35000000  dma_run zero
0015b4  1d100500  unlock r10
0015b8  db89ffff  j -948
0015bc  1f211000  addli r2, zero, 10
0015c0  1f020000  addli r4, zero, 0
0015c4  9f010020  addli r3, zero, 4096
0015c8  7d100100  xwait r2, 0
0015cc  1f511000  addli r2, zero, 13
0015d0  7d100100  xwait r2, 0
0015d4  1d800500  lock zero, r11
0015d8  2b01803f  lui r2, 260096
0015dc  0d000002  ew_cfg zero, zero, zero, 1
0015e0  0d110100  ewcoeff_cfg r2, r2, zero, 0
0015e4  1f713000  addli r2, zero, 31
0015e8  0d000104  ew_cfg zero, r2, zero, 2
0015ec  0d080006  ew_cfg r16, zero, zero, 3
0015f0  63416fdf  loadli.w r2,  -4172(r30)
0015f4  2d022200  dsmadd r4, r4, r2, 0
0015f8  1f020201  addli r4, r4, 128
0015fc  bb6f32fe  bneq r4, r3, -8
001600  1f311000  addli r2, zero, 11
001604  1d900500  unlock r11
001608  7d000100  xsignal r2, 0
00160c  1f611000  addli r2, zero, 14
001610  db7effff  j -1036
001614  7d000000  xsignal zero, 0
001618  bbe00a00  bneq r21, zero, 56
00161c  9f200000  addli r1, zero, 2
001620  7d100000  xwait zero, 0
001624  7d100000  xwait zero, 0
001628  7d100000  xwait zero, 0
00162c  7d100000  xwait zero, 0
001630  7d100000  xwait zero, 0
001634  7d100000  xwait zero, 0
001638  7d100000  xwait zero, 0
00163c  7d100000  xwait zero, 0
001640  1d800000  lock zero, r1
001644  0d000020  ew_cfg zero, zero, zero, 16
001648  1d900000  unlock r1
00164c  7d400000  xsignal_mode_cfg zero
001650  9f8eae20  addli sp, sp, 4176
001654  00a00300  mfence { lm, sm, gm }
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
0016dc  00100000  exit
0016e0  00100000  exit
0016e4  00100000  exit
0016e8  00100000  exit
0016ec  00100000  exit
0016f0  00100000  exit
0016f4  00100000  exit
0016f8  00100000  exit
0016fc  00100000  exit
001700  00100000  exit
001704  00100000  exit
001708  00100000  exit
00170c  00100000  exit
001710  00100000  exit
001714  00100000  exit
001718  00100000  exit
00171c  00100000  exit
001720  00100000  exit
001724  00100000  exit
001728  00100000  exit
00172c  00100000  exit
001730  00100000  exit
001734  00100000  exit
001738  00100000  exit
00173c  00100000  exit
001740  00100000  exit
001744  00100000  exit
001748  00100000  exit
00174c  00100000  exit
001750  00100000  exit
001754  00100000  exit
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
