; SHA-256 cf3a0ad1a380ba9ca50f6125ec1c0f03d49d3aef5e35fc2082a3b6b744f7ee4b
; P800 SDNN · XTDK LLVM 19 · 1219 / 1219 words decoded
; bound names: triton_tem_fused_mm_0, triton_unk_fused_0
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
0000b4  9f8edee8  addli sp, sp, -2968
0000b8  9f100000  addli r1, zero, 1
0000bc  003b0002  core_id r22
0000c0  1f8fbe16  addli r30, sp, 2904
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600b00  beq r22, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b680100  j 2880
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
000114  7d000100  xsignal r2, 0
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
00047c  7d800100  xsignal r3, 0
000480  7d800100  xsignal r3, 0
000484  7d800100  xsignal r3, 0
000488  7d800100  xsignal r3, 0
00048c  7d800100  xsignal r3, 0
000490  7d800100  xsignal r3, 0
000494  7d800100  xsignal r3, 0
000498  7d800100  xsignal r3, 0
00049c  7d800100  xsignal r3, 0
0004a0  7d800100  xsignal r3, 0
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
000618  9f101000  addli r1, zero, 9
00061c  9f710000  addli r3, zero, 7
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
00087c  7d800000  xsignal r1, 0
000880  7d800000  xsignal r1, 0
000884  7d800000  xsignal r1, 0
000888  7d800000  xsignal r1, 0
00088c  7d800000  xsignal r1, 0
000890  7d800000  xsignal r1, 0
000894  7d800000  xsignal r1, 0
000898  7d800000  xsignal r1, 0
00089c  7d800000  xsignal r1, 0
0008a0  7d800000  xsignal r1, 0
0008a4  7d800000  xsignal r1, 0
0008a8  7d800000  xsignal r1, 0
0008ac  7d800000  xsignal r1, 0
0008b0  7d800000  xsignal r1, 0
0008b4  7d800000  xsignal r1, 0
0008b8  7d800000  xsignal r1, 0
0008bc  7d800000  xsignal r1, 0
0008c0  7d800000  xsignal r1, 0
0008c4  7d800000  xsignal r1, 0
0008c8  7d800000  xsignal r1, 0
0008cc  7d800000  xsignal r1, 0
0008d0  7d800000  xsignal r1, 0
0008d4  7d800000  xsignal r1, 0
0008d8  7d800000  xsignal r1, 0
0008dc  7d800000  xsignal r1, 0
0008e0  7d800000  xsignal r1, 0
0008e4  7d800000  xsignal r1, 0
0008e8  7d800000  xsignal r1, 0
0008ec  7d800000  xsignal r1, 0
0008f0  7d800000  xsignal r1, 0
0008f4  7d800000  xsignal r1, 0
0008f8  7d800000  xsignal r1, 0
0008fc  7d800000  xsignal r1, 0
000900  7d800000  xsignal r1, 0
000904  7d800000  xsignal r1, 0
000908  7d800000  xsignal r1, 0
00090c  7d800000  xsignal r1, 0
000910  7d800000  xsignal r1, 0
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
000a1c  7d800100  xsignal r3, 0
000a20  7d800100  xsignal r3, 0
000a24  7d800100  xsignal r3, 0
000a28  7d800100  xsignal r3, 0
000a2c  7d800100  xsignal r3, 0
000a30  7d800100  xsignal r3, 0
000a34  7d800100  xsignal r3, 0
000a38  7d800100  xsignal r3, 0
000a3c  7d800100  xsignal r3, 0
000a40  7d800100  xsignal r3, 0
000a44  7d800100  xsignal r3, 0
000a48  7d800100  xsignal r3, 0
000a4c  7d800100  xsignal r3, 0
000a50  7d800100  xsignal r3, 0
000a54  7d800100  xsignal r3, 0
000a58  7d800100  xsignal r3, 0
000a5c  7d800100  xsignal r3, 0
000a60  7d800100  xsignal r3, 0
000a64  7d800100  xsignal r3, 0
000a68  7d800100  xsignal r3, 0
000a6c  7d800100  xsignal r3, 0
000a70  7d800100  xsignal r3, 0
000a74  7d800100  xsignal r3, 0
000a78  7d800100  xsignal r3, 0
000a7c  7d800100  xsignal r3, 0
000a80  7d800100  xsignal r3, 0
000a84  7d800100  xsignal r3, 0
000a88  7d800100  xsignal r3, 0
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
000c1c  e3003f00  loadli.w r1,  24(r30)
000c20  63413f00  loadli.w r2,  28(r30)
000c24  00d20002  load_param_i r4, 1
000c28  e3014f00  loadli.w r3,  32(r30)
000c2c  e74f0ffa  storeli.w zero, -516(r30)
000c30  e74f0ff2  storeli.w zero, -1540(r30)
000c34  e70f0fee  storeli.w zero, -2056(r30)
000c38  674f0fe8  storeli.w zero, -2828(r30)
000c3c  8b101120  mul.s r1, r2, r1
000c40  1f010200  addli r2, r4, 0
000c44  0b913050  fmac.s r2, r1, r3
000c48  8b913020  mul.s r3, r1, r3
000c4c  1f71f1ff  addli r2, r2, -1
000c50  0b114130  div.s r2, r2, r4
000c54  00520002  load_param_i r4, 0
000c58  8b104120  mul.s r1, r2, r4
000c5c  0b114150  fmac.s r2, r2, r4
000c60  0b113140  min.s r2, r2, r3
000c64  cb001102  ble.s r2, r1, 1056
000c68  33110128  sext_int2long r[3:4], r2
000c6c  1f026fe9  addli r4, r30, -2896
000c70  b3990028  sext_int2long r[20:21], r1
000c74  6344fffb  loadli.w r8,  -516(r30)
000c78  e344fff3  loadli.w r9,  -1540(r30)
000c7c  e302ffef  loadli.w r5,  -2056(r30)
000c80  6349efe9  loadli.w r18,  -2828(r30)
000c84  1f050001  addli r10, zero, 128
000c88  9f260000  addli r13, zero, 2
000c8c  1f470000  addli r14, zero, 4
000c90  1f5d0000  addli r26, zero, 5
000c94  1f0c8000  addli r24, zero, 64
000c98  9f0c4000  addli r25, zero, 32
000c9c  9f1d0000  addli r27, zero, 1
000ca0  9f070000  addli r15, zero, 0
000ca4  73302200  store.d r[3:4], 0(r4)
000ca8  1f71f00f  addli r2, zero, 2047
000cac  9f015fe9  addli r3, r30, -2904
000cb0  ab80ffff  lui r1, 1048568
000cb4  73b01100  store.d r[2:3], 0(r3)
000cb8  1f310000  addli r2, zero, 3
000cbc  db060000  j 52
000cc0  9f201000  addli r1, zero, 10
000cc4  7d800000  xsignal r1, 0
000cc8  9f00bfe9  addli r1, r30, -2856
000ccc  1f990700  addli r18, r15, 1
000cd0  e347afe9  loadli.w r15,  -2860(r30)
000cd4  ebd90000  load.d r[20:21], 0(r1)
000cd8  9f006fe9  addli r1, r30, -2896
000cdc  ebd20000  load.d r[6:7], 0(r1)
000ce0  a7990900  addli.d r[20:21], r[20:21], 1
000ce4  93b05904  setlt.sl r1, r[20:21], r[6:7]
000ce8  9f120200  addli r5, r4, 1
000cec  37ee0000  beq r1, zero, 920
000cf0  3b30eb00  bneq r22, r14, 12
000cf4  9f301000  addli r1, zero, 11
000cf8  7d900000  xwait r1, 0
000cfc  e3004f00  loadli.w r1,  32(r30)
000d00  e3413f00  loadli.w r3,  28(r30)
000d04  9f031000  addli r7, zero, 8
000d08  1f069fe9  addli r12, r30, -2872
000d0c  8b901930  div.s r1, r19, r1
000d10  8b913030  div.s r3, r1, r3
000d14  0b92a130  div.s r4, r3, r10
000d18  9b303200  slli r1, r4, 3
000d1c  0b931318  sub.s r6, r7, r1
000d20  8b157340  min.s r11, r6, r7
000d24  9f431000  addli r7, zero, 12
000d28  0b93b138  mod.s r6, r3, r11
000d2c  8b906010  add.s r1, r1, r6
000d30  1f730000  addli r6, zero, 7
000d34  13031304  setlt.u r6, r6, r1
000d38  33880028  zext_int2long r[17:18], r1
000d3c  73300601  store.d r[17:18], 0(r12)
000d40  17387802  sll.d r[17:18], r[17:18], r7
000d44  9f03bfe9  addli r7, r30, -2856
000d48  73b03301  store.d r[20:21], 0(r7)
000d4c  3b300300  bneq r6, zero, 12
000d50  33030028  zext_int2long r[7:8], zero
000d54  5b020000  j 16
000d58  1f065fe9  addli r12, r30, -2904
000d5c  6b530600  load.d r[7:8], 0(r12)
000d60  17036802  and.d r[7:8], r[17:18], r[7:8]
000d64  1b327200  slli r4, r4, 7
000d68  9bb06000  slli r1, r1, 6
000d6c  1f06dfe9  addli r12, r30, -2840
000d70  1f1e0000  addli r28, zero, 1
000d74  9f090000  addli r19, zero, 0
000d78  8b914118  sub.s r3, r3, r4
000d7c  0b92d738  mod.s r4, r15, r13
000d80  e74b1fe8  storeli.w r1, -2884(r30)
000d84  73306600  store.d r[7:8], 0(r12)
000d88  9f970700  addli r15, r15, 1
000d8c  8b91b130  div.s r3, r3, r11
000d90  674dffe8  storeli.w r15, -2860(r30)
000d94  9b3be200  slli r23, r4, 14
000d98  9bb06100  slli r1, r3, 6
000d9c  b3850128  zext_int2long r[12:13], r3
000da0  e70b1fe8  storeli.w r1, -2888(r30)
000da4  9f600000  addli r1, zero, 6
000da8  17b31502  sll.d r[7:8], r[12:13], r1
000dac  9f008fe9  addli r1, r30, -2880
000db0  73b06000  store.d r[7:8], 0(r1)
000db4  9731c303  sll.d r[4:5], r[7:8], r28
000db8  6b538f00  load.d r[7:8], 8(r30)
000dbc  9f00cfe9  addli r1, r30, -2848
000dc0  8b213310  add.ul r[4:5], r[7:8], r[4:5]
000dc4  73b03000  store.d r[4:5], 0(r1)
000dc8  9f010000  addli r3, zero, 0
000dcc  9f70f001  addli r1, zero, 255
000dd0  5b030000  j 24
000dd4  1b031e00  andi r6, r28, 1
000dd8  b7670300  beq r6, zero, 504
000ddc  9f910100  addli r3, r3, 1
000de0  9f190000  addli r19, zero, 1
000de4  1f0e0000  addli r28, zero, 0
000de8  0b923210  add.s r4, r5, r3
000dec  8b173910  add.s r15, r18, r3
000df0  1f038001  addli r6, zero, 192
000df4  8b15a238  mod.s r11, r4, r10
000df8  0b966738  mod.s r12, r15, r6
000dfc  2b830000  lui r6, 8
000e00  1bbad500  slli r20, r11, 13
000e04  9b35c600  slli r11, r12, 12
000e08  0b166a10  add.s r12, r20, r6
000e0c  3722db00  beq r22, r13, 136
000e10  338a0928  zext_int2long r[21:22], r19
000e14  1f630000  addli r6, zero, 6
000e18  bb036b00  bneq r22, r6, 224
000e1c  9f00dfe9  addli r1, r30, -2840
000e20  9739aa03  sll.d r[20:21], r[21:22], r26
000e24  b30a0c28  zext_int2long r[22:23], r24
000e28  6bd30000  load.d r[7:8], 0(r1)
000e2c  97990903  or.d r[20:21], r[20:21], r[17:18]
000e30  7d100100  xwait r2, 0
000e34  a7000800  addli.d r[2:3], r[17:18], 0
000e38  6b580f00  load.d r[17:18], 0(r30)
000e3c  1d000700  lock zero, r14
000e40  958d0d00  dma_cfg r27, r27, zero, 0
000e44  0bb36918  sub.sl r[7:8], r[20:21], r[7:8]
000e48  97b9b903  sll.d r[20:21], r[20:21], r27
000e4c  0f135361  div.sl r[7:8], r[7:8], r[22:23]
000e50  9f0a8003  addli r21, zero, 448
000e54  8b293811  add.ul r[20:21], r[17:18], r[20:21]
000e58  27880000  addli.d r[17:18], r[2:3], 0
000e5c  9f70f001  addli r1, zero, 255
000e60  1f310000  addli r2, zero, 3
000e64  b38a0a28  zext_int2long r[22:23], r21
000e68  15000a04  dma_cfg zero, r20, zero, 2
000e6c  15868907  dma_cfg r12, r19, r24, 3
000e70  8b3a5341  min.sl r[22:23], r[7:8], r[22:23]
000e74  0bb36a18  sub.sl r[7:8], r[22:23], r[7:8]
000e78  003b0002  core_id r22
000e7c  1f038300  addli r6, r6, 64
000e80  15056508  dma_cfg r10, r10, r6, 4
000e84  35000000  dma_run zero
000e88  1d100700  unlock r14
000e8c  7d800600  xsignal r13, 0
000e90  5b060000  j 48
000e94  7d900600  xwait r13, 0
000e98  7d100d00  xwait r26, 0
000e9c  1d000000  lock zero, zero
000ea0  01010000  ds_cfg r2, zero, 0
000ea4  010c0002  ds_cfg r24, zero, 1
000ea8  810c001c  ds_cfg r25, zero, 14
000eac  010c001a  ds_cfg r24, zero, 13
000eb0  a1159603  shuffle_batch r11, r12, r25, 1
000eb4  1d100000  unlock zero
000eb8  7d000100  xsignal r2, 0
000ebc  7d000700  xsignal r14, 0
000ec0  0b931438  mod.s r6, r9, r1
000ec4  9f940400  addli r9, r9, 1
000ec8  1f140400  addli r8, r8, 1
000ecc  9b39c300  slli r19, r6, 12
000ed0  3b1cebfe  bneq r22, r14, -252
000ed4  1f031000  addli r6, zero, 8
000ed8  7d100700  xwait r14, 0
000edc  7d100300  xwait r6, 0
000ee0  1d800d00  lock zero, r27
000ee4  098c8c01  mm_cfg r24, r25, r24, 0
000ee8  898db605  mm_cfg r27, r13, r27, 2
000eec  b7f10100  beq r3, zero, 124
000ef0  a99b350b  mm_acc r23, r11, r19, 5
000ef4  5b0f0000  j 120
000ef8  0b13a438  mod.s r6, r8, r10
000efc  8b931438  mod.s r7, r9, r1
000f00  9f940400  addli r9, r9, 1
000f04  1f140400  addli r8, r8, 1
000f08  9bb9c300  slli r19, r7, 12
000f0c  1b33c300  slli r6, r6, 12
000f10  ab831000  lui r7, 264
000f14  0b167310  add.s r12, r6, r7
000f18  1f730000  addli r6, zero, 7
000f1c  b7316b00  beq r22, r6, 108
000f20  bb4ebbff  bneq r22, r27, -80
000f24  9f750000  addli r11, zero, 7
000f28  1f032000  addli r6, zero, 16
000f2c  7d900500  xwait r11, 0
000f30  9f05cfe9  addli r11, r30, -2848
000f34  17336a02  sll.d r[7:8], r[21:22], r6
000f38  ebd90500  load.d r[20:21], 0(r11)
000f3c  1d000700  lock zero, r14
000f40  958d0d00  dma_cfg r27, r27, zero, 0
000f44  0ba36910  add.ul r[7:8], r[20:21], r[7:8]
000f48  15800304  dma_cfg zero, r7, zero, 2
000f4c  1506a306  dma_cfg r12, r6, r10, 3
000f50  1f030010  addli r6, zero, 2048
000f54  15059309  dma_cfg r10, r6, r25, 4
000f58  35000000  dma_run zero
000f5c  1d100700  unlock r14
000f60  1f630000  addli r6, zero, 6
000f64  db0b0000  j 92
000f68  a98b350b  mm r23, r11, r19, 5
000f6c  1b031e00  andi r6, r28, 1
000f70  9f131000  addli r7, zero, 9
000f74  1d900d00  unlock r27
000f78  7d000d00  xsignal r26, 0
000f7c  7d800300  xsignal r7, 0
000f80  3b7903fe  bneq r6, zero, -420
000f84  dba7ffff  j -708
000f88  1f630000  addli r6, zero, 6
000f8c  7d100300  xwait r6, 0
000f90  1f131000  addli r6, zero, 9
000f94  7d100300  xwait r6, 0
000f98  1d000000  lock zero, zero
000f9c  1f730000  addli r6, zero, 7
000fa0  01010000  ds_cfg r2, zero, 0
000fa4  010c0002  ds_cfg r24, zero, 1
000fa8  810c001c  ds_cfg r25, zero, 14
000fac  010c001a  ds_cfg r24, zero, 13
000fb0  c1099605  shuffle_coa r19, r12, r25, 2
000fb4  1d100000  unlock zero
000fb8  7d000300  xsignal r6, 0
000fbc  1f031000  addli r6, zero, 8
000fc0  7d000300  xsignal r6, 0
000fc4  1b031e00  andi r6, r28, 1
000fc8  3b5803fe  bneq r6, zero, -492
000fcc  b753ebfe  beq r22, r14, -780
000fd0  bb630bfe  bneq r22, zero, -776
000fd4  e3007fe9  loadli.w r1,  -2888(r30)
000fd8  9f018007  addli r3, zero, 960
000fdc  b3850128  zext_int2long r[12:13], r3
000fe0  9f018003  addli r3, zero, 448
000fe4  b3820028  zext_int2long r[6:7], r1
000fe8  e3407fe9  loadli.w r1,  -2884(r30)
000fec  33890128  zext_int2long r[19:20], r3
000ff0  9f112000  addli r3, zero, 17
000ff4  8ba5b240  min.ul r[12:13], r[6:7], r[12:13]
000ff8  33980028  sext_int2long r[17:18], r1
000ffc  9f009fe9  addli r1, r30, -2872
001000  a7858500  addli.d r[12:13], r[12:13], 64
001004  0b392841  min.sl r[19:20], r[17:18], r[19:20]
001008  6bda0000  load.d r[21:22], 0(r1)
00100c  9f008fe9  addli r1, r30, -2880
001010  8ba55548  max.ul r[12:13], r[12:13], r[6:7]
001014  27098900  addli.d r[19:20], r[19:20], 64
001018  173a3a02  sll.d r[21:22], r[21:22], r3
00101c  8bb25518  sub.sl r[6:7], r[12:13], r[6:7]
001020  b3050c28  zext_int2long r[12:13], r24
001024  9f211000  addli r3, zero, 10
001028  0b390949  max.sl r[19:20], r[19:20], r[17:18]
00102c  8ba2b240  min.ul r[6:7], r[6:7], r[12:13]
001030  0b380919  sub.sl r[17:18], r[19:20], r[17:18]
001034  6b590f01  load.d r[19:20], 16(r30)
001038  8b35b840  min.sl r[12:13], r[17:18], r[12:13]
00103c  0b294911  add.ul r[19:20], r[19:20], r[21:22]
001040  6bda0000  load.d r[21:22], 0(r1)
001044  7d900100  xwait r3, 0
001048  1d000d00  lock zero, r26
00104c  9bb12200  slli r3, r5, 2
001050  9f000002  addli r1, zero, 256
001054  950d0000  dma_cfg r27, zero, zero, 0
001058  15800d02  dma_cfg zero, r27, zero, 1
00105c  173aba03  sll.d r[21:22], r[21:22], r27
001060  0b284911  add.ul r[17:18], r[19:20], r[21:22]
001064  95080004  dma_cfg r17, zero, zero, 2
001068  15883b06  dma_cfg r16, r23, r3, 3
00106c  9f010010  addli r3, zero, 2048
001070  9581b008  dma_cfg r3, r1, r11, 4
001074  9f301000  addli r1, zero, 11
001078  35000000  dma_run zero
00107c  1d100d00  unlock r26
001080  db88ffff  j -956
001084  7d000000  xsignal zero, 0
001088  bb600b00  bneq r22, zero, 56
00108c  9f200000  addli r1, zero, 2
001090  7d100000  xwait zero, 0
001094  7d100000  xwait zero, 0
001098  7d100000  xwait zero, 0
00109c  7d100000  xwait zero, 0
0010a0  7d100000  xwait zero, 0
0010a4  7d100000  xwait zero, 0
0010a8  7d100000  xwait zero, 0
0010ac  7d100000  xwait zero, 0
0010b0  1d800000  lock zero, r1
0010b4  0d000020  ew_cfg zero, zero, zero, 16
0010b8  1d900000  unlock r1
0010bc  7d400000  xsignal_mode_cfg zero
0010c0  9f8ebe16  addli sp, sp, 2904
0010c4  00a00300  mfence { lm, sm, gm }
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
001230  00100000  exit
001234  00100000  exit
001238  00100000  exit
00123c  00100000  exit
001240  00100000  exit
001244  00100000  exit
001248  00100000  exit
00124c  00100000  exit
001250  00100000  exit
001254  00100000  exit
001258  00100000  exit
00125c  00100000  exit
001260  00100000  exit
001264  00100000  exit
001268  00100000  exit
00126c  00100000  exit
001270  00100000  exit
001274  00100000  exit
001278  00100000  exit
00127c  00100000  exit
001280  00100000  exit
001284  00100000  exit
001288  00100000  exit
00128c  00100000  exit
001290  00100000  exit
001294  00100000  exit
001298  00100000  exit
00129c  00100000  exit
0012a0  00100000  exit
0012a4  00100000  exit
0012a8  00100000  exit
0012ac  00100000  exit
0012b0  00100000  exit
0012b4  00100000  exit
0012b8  00100000  exit
0012bc  00100000  exit
0012c0  00100000  exit
0012c4  00100000  exit
0012c8  00100000  exit
0012cc  00100000  exit
0012d0  00100000  exit
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
