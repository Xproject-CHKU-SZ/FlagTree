; SHA-256 43015ea88606e8c1579e07fd80ede90f7cd90830b7b3d05c22200f01c155ab82
; P800 SDNN · XTDK LLVM 19 · 1521 / 1521 words decoded
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
00005c  9f494000  addli r19, zero, 36
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
0000b4  9f8e0edf  addli sp, sp, -4224
0000b8  9f100000  addli r1, zero, 1
0000bc  803d0002  core_id r27
0000c0  1f8f8e20  addli r30, sp, 4160
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00d00  beq r27, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b060200  j 4144
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  9f310000  addli r3, zero, 3
0000fc  1d100100  unlock r2
000100  1f311000  addli r2, zero, 11
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
00090c  9f101000  addli r1, zero, 9
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
000d10  7d800100  xsignal r3, 0
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
00110c  e3003f00  loadli.w r1,  24(r30)
001110  63413f00  loadli.w r2,  28(r30)
001114  00d20002  load_param_i r4, 1
001118  e3014f00  loadli.w r3,  32(r30)
00111c  67000ff8  storeli.w zero, -1024(r30)
001120  67000ff0  storeli.w zero, -2048(r30)
001124  67000fe8  storeli.w zero, -3072(r30)
001128  67000fe0  storeli.w zero, -4096(r30)
00112c  8b101120  mul.s r1, r2, r1
001130  1f010200  addli r2, r4, 0
001134  0b913050  fmac.s r2, r1, r3
001138  8b913020  mul.s r3, r1, r3
00113c  1f71f1ff  addli r2, r2, -1
001140  0b114130  div.s r2, r2, r4
001144  00520002  load_param_i r4, 0
001148  8b104120  mul.s r1, r2, r4
00114c  0b114150  fmac.s r2, r2, r4
001150  0b113140  min.s r2, r2, r3
001154  cb2f1100  ble.s r2, r1, 1000
001158  33110128  sext_int2long r[3:4], r2
00115c  1f029fdf  addli r4, r30, -4152
001160  63040ff8  loadli.w r8,  -1024(r30)
001164  e3040ff0  loadli.w r9,  -2048(r30)
001168  63080fe8  loadli.w r16,  -3072(r30)
00116c  e3070fe0  loadli.w r15,  -4096(r30)
001170  9f250000  addli r11, zero, 2
001174  9f560000  addli r13, zero, 5
001178  1f470000  addli r14, zero, 4
00117c  9f028fdf  addli r5, r30, -4160
001180  1f79f001  addli r18, zero, 255
001184  9f094000  addli r19, zero, 32
001188  1f0a2000  addli r20, zero, 16
00118c  1f1b0000  addli r22, zero, 1
001190  9f0a8000  addli r21, zero, 64
001194  73302200  store.d r[3:4], 0(r4)
001198  b3910028  sext_int2long r[4:5], r1
00119c  1f71f007  addli r2, zero, 1023
0011a0  abf0ffff  lui r1, 1048575
0011a4  73b01200  store.d r[2:3], 0(r5)
0011a8  5b060000  j 48
0011ac  9f201000  addli r1, zero, 10
0011b0  7d800000  xsignal r1, 0
0011b4  9f00dfdf  addli r1, r30, -4120
0011b8  9f029fdf  addli r5, r30, -4152
0011bc  9f170e00  addli r15, r28, 1
0011c0  1f980800  addli r16, r17, 1
0011c4  ebd10000  load.d r[4:5], 0(r1)
0011c8  ebd00200  load.d r[2:3], 0(r5)
0011cc  a7910100  addli.d r[4:5], r[4:5], 1
0011d0  93b01104  setlt.sl r1, r[4:5], r[2:3]
0011d4  b7ad0000  beq r1, zero, 872
0011d8  3bb0ed00  bneq r27, r14, 12
0011dc  9f301000  addli r1, zero, 11
0011e0  7d900000  xwait r1, 0
0011e4  e3004f00  loadli.w r1,  32(r30)
0011e8  1f01dfdf  addli r2, r30, -4120
0011ec  9f021000  addli r5, zero, 8
0011f0  9f03cfdf  addli r7, r30, -4128
0011f4  1f0d0000  addli r26, zero, 0
0011f8  73303100  store.d r[4:5], 0(r2)
0011fc  63413f00  loadli.w r2,  28(r30)
001200  8b901130  div.s r1, r3, r1
001204  8b902030  div.s r1, r1, r2
001208  1f010002  addli r2, zero, 256
00120c  0b912030  div.s r2, r1, r2
001210  9b313100  slli r3, r2, 3
001214  1b318100  slli r2, r2, 8
001218  0b923518  sub.s r4, r11, r3
00121c  0b912018  sub.s r2, r1, r2
001220  0b125240  min.s r4, r4, r5
001224  8b904038  mod.s r1, r1, r4
001228  0b114130  div.s r2, r2, r4
00122c  8b901110  add.s r1, r3, r1
001230  9b315100  slli r3, r2, 5
001234  670d3fde  storeli.w r3, -4144(r30)
001238  33010128  zext_int2long r[3:4], r2
00123c  1bb25000  slli r4, r1, 5
001240  b38b0028  zext_int2long r[24:25], r1
001244  9f301000  addli r1, zero, 11
001248  1731d102  sll.d r[3:4], r[3:4], r13
00124c  674d4fde  storeli.w r4, -4140(r30)
001250  9732b102  sll.d r[6:7], r[3:4], r11
001254  1f01bfdf  addli r2, r30, -4136
001258  97b11b02  sll.d r[4:5], r[24:25], r1
00125c  73307101  store.d r[24:25], 0(r2)
001260  eb508f00  load.d r[2:3], 8(r30)
001264  73b05300  store.d r[6:7], 0(r7)
001268  9f030000  addli r7, zero, 0
00126c  8ba05010  add.ul r[2:3], r[2:3], r[6:7]
001270  9f02efdf  addli r5, r30, -4112
001274  73b01200  store.d r[2:3], 0(r5)
001278  9f028fdf  addli r5, r30, -4160
00127c  ebd00200  load.d r[2:3], 0(r5)
001280  9f02ffdf  addli r5, r30, -4104
001284  97801102  and.d r[2:3], r[4:5], r[2:3]
001288  73b01200  store.d r[2:3], 0(r5)
00128c  5b020000  j 16
001290  1f1d0d00  addli r26, r26, 1
001294  b777ed00  beq r26, r14, 508
001298  9f930300  addli r7, r7, 1
00129c  8b187810  add.s r17, r16, r7
0012a0  0b9e7710  add.s r28, r15, r7
0012a4  8b902839  mod.s r1, r17, r18
0012a8  0b112e39  mod.s r2, r28, r18
0012ac  9bb0c000  slli r1, r1, 12
0012b0  1b35b100  slli r10, r2, 11
0012b4  9f8b0020  addli r23, r1, 4096
0012b8  37e2bd00  beq r27, r11, 152
0012bc  b3000d28  zext_int2long r[2:3], r26
0012c0  9f620000  addli r5, zero, 6
0012c4  bbd35d00  bneq r27, r5, 244
0012c8  97b0e002  sll.d r[2:3], r[2:3], r14
0012cc  9f72f01f  addli r5, zero, 4095
0012d0  9f06ffdf  addli r13, r30, -4104
0012d4  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
0012d8  b3820228  zext_int2long r[6:7], r5
0012dc  13a61204  setlt.ul r12, r[6:7], r[2:3]
0012e0  ebd20600  load.d r[6:7], 0(r13)
0012e4  3b200600  bneq r12, zero, 8
0012e8  b3020028  zext_int2long r[6:7], zero
0012ec  8bb25018  sub.sl r[6:7], r[2:3], r[6:7]
0012f0  33860a28  zext_int2long r[13:14], r21
0012f4  6b5c0f00  load.d r[25:26], 0(r30)
0012f8  97b0b002  sll.d r[2:3], r[2:3], r11
0012fc  9f3d0000  addli r27, zero, 3
001300  8f92c260  div.sl r[6:7], r[6:7], r[13:14]
001304  33860928  zext_int2long r[13:14], r19
001308  7d900d00  xwait r27, 0
00130c  1d000700  lock zero, r14
001310  803d0002  core_id r27
001314  8b201c10  add.ul r[2:3], r[25:26], r[2:3]
001318  15000000  dma_cfg zero, zero, zero, 0
00131c  15000104  dma_cfg zero, r2, zero, 2
001320  958b5007  dma_cfg r23, r1, r21, 3
001324  9f000002  addli r1, zero, 256
001328  1f010001  addli r2, zero, 128
00132c  0bb6c240  min.sl r[13:14], r[6:7], r[13:14]
001330  8b325618  sub.sl r[6:7], r[13:14], r[6:7]
001334  9f560000  addli r13, zero, 5
001338  9f824200  addli r5, r5, 32
00133c  15815008  dma_cfg r2, r1, r5, 4
001340  35000000  dma_run zero
001344  1d100700  unlock r14
001348  7d800500  xsignal r11, 0
00134c  db060000  j 52
001350  7d900500  xwait r11, 0
001354  7d900600  xwait r13, 0
001358  1d000000  lock zero, zero
00135c  9f300000  addli r1, zero, 3
001360  81050000  ds_cfg r11, zero, 0
001364  81090002  ds_cfg r19, zero, 1
001368  010a001c  ds_cfg r20, zero, 14
00136c  8109001a  ds_cfg r19, zero, 13
001370  21954b03  shuffle_batch r10, r23, r20, 1
001374  1d100000  unlock zero
001378  7d800000  xsignal r1, 0
00137c  7d000700  xsignal r14, 0
001380  8b902439  mod.s r1, r9, r18
001384  9f940400  addli r9, r9, 1
001388  1f140400  addli r8, r8, 1
00138c  9bbbb000  slli r23, r1, 11
001390  3b8cedfe  bneq r27, r14, -256
001394  9f001000  addli r1, zero, 8
001398  7d100700  xwait r14, 0
00139c  7d900000  xwait r1, 0
0013a0  1d000b00  lock zero, r22
0013a4  89093a01  mm_cfg r19, r20, r19, 0
0013a8  090b6b05  mm_cfg r22, r22, r22, 2
0013ac  b7f10300  beq r7, zero, 124
0013b0  29107511  mm_acc zero, r10, r23, 8
0013b4  5b0f0000  j 120
0013b8  8b122439  mod.s r5, r8, r18
0013bc  0b932439  mod.s r6, r9, r18
0013c0  9f940400  addli r9, r9, 1
0013c4  1f140400  addli r8, r8, 1
0013c8  9b3bb300  slli r23, r6, 11
0013cc  9bb2b200  slli r5, r5, 11
0013d0  2b031000  lui r6, 256
0013d4  0b966210  add.s r12, r5, r6
0013d8  9f720000  addli r5, zero, 7
0013dc  b7b15d00  beq r27, r5, 108
0013e0  bbce6dff  bneq r27, r22, -80
0013e4  9f720000  addli r5, zero, 7
0013e8  1f05efdf  addli r10, r30, -4112
0013ec  97b04003  sll.d r[2:3], r[2:3], r20
0013f0  7d900200  xwait r5, 0
0013f4  eb520500  load.d r[6:7], 0(r10)
0013f8  1d000700  lock zero, r14
0013fc  15000000  dma_cfg zero, zero, zero, 0
001400  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
001404  9f020001  addli r5, zero, 128
001408  15000104  dma_cfg zero, r2, zero, 2
00140c  15865006  dma_cfg r12, r1, r5, 3
001410  9f000020  addli r1, zero, 4096
001414  95824009  dma_cfg r5, r1, r20, 4
001418  35000000  dma_run zero
00141c  1d100700  unlock r14
001420  9f600000  addli r1, zero, 6
001424  db0b0000  j 92
001428  29007511  mm zero, r10, r23, 8
00142c  1f1d0d00  addli r26, r26, 1
001430  9f101000  addli r1, zero, 9
001434  1d100b00  unlock r22
001438  7d800600  xsignal r13, 0
00143c  7d800000  xsignal r1, 0
001440  3b69edfe  bneq r26, r14, -424
001444  5badffff  j -664
001448  9f600000  addli r1, zero, 6
00144c  7d900000  xwait r1, 0
001450  9f101000  addli r1, zero, 9
001454  7d900000  xwait r1, 0
001458  1d000000  lock zero, zero
00145c  9f700000  addli r1, zero, 7
001460  81050000  ds_cfg r11, zero, 0
001464  81090002  ds_cfg r19, zero, 1
001468  010a001c  ds_cfg r20, zero, 14
00146c  8109001a  ds_cfg r19, zero, 13
001470  c10b4605  shuffle_coa r23, r12, r20, 2
001474  1d100000  unlock zero
001478  7d800000  xsignal r1, 0
00147c  9f001000  addli r1, zero, 8
001480  1f1d0d00  addli r26, r26, 1
001484  7d800000  xsignal r1, 0
001488  3b48edfe  bneq r26, r14, -496
00148c  b784edfe  beq r27, r14, -736
001490  bb940dfe  bneq r27, zero, -732
001494  e300afdf  loadli.w r1,  -4144(r30)
001498  9f01c007  addli r3, zero, 992
00149c  e343afdf  loadli.w r7,  -4140(r30)
0014a0  b3820928  zext_int2long r[6:7], r19
0014a4  1f05bfdf  addli r10, r30, -4136
0014a8  b3810128  zext_int2long r[4:5], r3
0014ac  b3800028  zext_int2long r[2:3], r1
0014b0  33960328  sext_int2long r[13:14], r7
0014b4  9f132000  addli r7, zero, 17
0014b8  8ba13040  min.ul r[4:5], r[2:3], r[4:5]
0014bc  8b375640  min.sl r[16:17], r[13:14], r[6:7]
0014c0  a7814100  addli.d r[4:5], r[4:5], 32
0014c4  8ba11148  max.ul r[4:5], r[4:5], r[2:3]
0014c8  8bb01118  sub.sl r[2:3], r[4:5], r[2:3]
0014cc  a7814700  addli.d r[4:5], r[16:17], 32
0014d0  eb570500  load.d r[16:17], 0(r10)
0014d4  8bb1c148  max.sl r[4:5], r[4:5], r[13:14]
0014d8  8ba05040  min.ul r[2:3], r[2:3], r[6:7]
0014dc  97b77702  sll.d r[16:17], r[16:17], r7
0014e0  9f03cfdf  addli r7, r30, -4128
0014e4  8bb1c118  sub.sl r[4:5], r[4:5], r[13:14]
0014e8  6b560f01  load.d r[13:14], 16(r30)
0014ec  9bb02000  slli r1, r1, 2
0014f0  1f010001  addli r2, zero, 128
0014f4  8bb15140  min.sl r[4:5], r[4:5], r[6:7]
0014f8  ebd20300  load.d r[6:7], 0(r7)
0014fc  9f231000  addli r7, zero, 10
001500  0b26f610  add.ul r[13:14], r[13:14], r[16:17]
001504  7d900300  xwait r7, 0
001508  8b225610  add.ul r[6:7], r[13:14], r[6:7]
00150c  9f560000  addli r13, zero, 5
001510  1d800600  lock zero, r13
001514  15000000  dma_cfg zero, zero, zero, 0
001518  15000b02  dma_cfg zero, r22, zero, 1
00151c  15030004  dma_cfg r6, zero, zero, 2
001520  95021006  dma_cfg r5, zero, r1, 3
001524  9f000020  addli r1, zero, 4096
001528  95003108  dma_cfg r1, r2, r3, 4
00152c  9f301000  addli r1, zero, 11
001530  35000000  dma_run zero
001534  1d900600  unlock r13
001538  5b8fffff  j -904
00153c  7d000000  xsignal zero, 0
001540  bbe00d00  bneq r27, zero, 56
001544  9f200000  addli r1, zero, 2
001548  7d100000  xwait zero, 0
00154c  7d100000  xwait zero, 0
001550  7d100000  xwait zero, 0
001554  7d100000  xwait zero, 0
001558  7d100000  xwait zero, 0
00155c  7d100000  xwait zero, 0
001560  7d100000  xwait zero, 0
001564  7d100000  xwait zero, 0
001568  1d800000  lock zero, r1
00156c  0d000020  ew_cfg zero, zero, zero, 16
001570  1d900000  unlock r1
001574  7d400000  xsignal_mode_cfg zero
001578  9f8e8e20  addli sp, sp, 4160
00157c  00a00300  mfence { lm, sm, gm }
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
