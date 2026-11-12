; SHA-256 2ec794b628f52cd91c199a8989cc43da325525d5bb118c558a5825035e59ac5c
; P800 SDNN · XTDK LLVM 19 · 949 / 949 words decoded
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
0000b4  9f8eeef0  addli sp, sp, -1936
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8fae0e  addli r30, sp, 1872
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5be80000  j 1856
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f311000  addli r3, zero, 11
000100  80a10004  csr_set csr3, r1
000104  00d00100  sync_group
000108  9f500000  addli r1, zero, 5
00010c  7d800100  xsignal r3, 0
000110  7d800100  xsignal r3, 0
000114  7d800100  xsignal r3, 0
000118  9f310000  addli r3, zero, 3
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
00029c  9f101000  addli r1, zero, 9
0002a0  7d800100  xsignal r3, 0
0002a4  7d800100  xsignal r3, 0
0002a8  7d800100  xsignal r3, 0
0002ac  7d800100  xsignal r3, 0
0002b0  7d800100  xsignal r3, 0
0002b4  7d800100  xsignal r3, 0
0002b8  7d800100  xsignal r3, 0
0002bc  7d800100  xsignal r3, 0
0002c0  7d800100  xsignal r3, 0
0002c4  7d800100  xsignal r3, 0
0002c8  7d800100  xsignal r3, 0
0002cc  7d800100  xsignal r3, 0
0002d0  7d800100  xsignal r3, 0
0002d4  7d800100  xsignal r3, 0
0002d8  7d800100  xsignal r3, 0
0002dc  7d800100  xsignal r3, 0
0002e0  7d800100  xsignal r3, 0
0002e4  7d800100  xsignal r3, 0
0002e8  7d800100  xsignal r3, 0
0002ec  7d800100  xsignal r3, 0
0002f0  7d800100  xsignal r3, 0
0002f4  7d800100  xsignal r3, 0
0002f8  7d800100  xsignal r3, 0
0002fc  7d800100  xsignal r3, 0
000300  7d800100  xsignal r3, 0
000304  7d800100  xsignal r3, 0
000308  7d800100  xsignal r3, 0
00030c  7d800100  xsignal r3, 0
000310  7d800100  xsignal r3, 0
000314  7d800100  xsignal r3, 0
000318  7d800100  xsignal r3, 0
00031c  7d800100  xsignal r3, 0
000320  7d800100  xsignal r3, 0
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
00041c  9f710000  addli r3, zero, 7
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
000550  7d800000  xsignal r1, 0
000554  7d800000  xsignal r1, 0
000558  7d800000  xsignal r1, 0
00055c  7d800000  xsignal r1, 0
000560  7d800000  xsignal r1, 0
000564  7d800000  xsignal r1, 0
000568  7d800000  xsignal r1, 0
00056c  7d800000  xsignal r1, 0
000570  7d800000  xsignal r1, 0
000574  7d800000  xsignal r1, 0
000578  7d800000  xsignal r1, 0
00057c  7d800000  xsignal r1, 0
000580  7d800000  xsignal r1, 0
000584  7d800000  xsignal r1, 0
000588  7d800000  xsignal r1, 0
00058c  7d800000  xsignal r1, 0
000590  7d800000  xsignal r1, 0
000594  7d800000  xsignal r1, 0
000598  7d800000  xsignal r1, 0
00059c  7d800000  xsignal r1, 0
0005a0  7d800000  xsignal r1, 0
0005a4  7d800000  xsignal r1, 0
0005a8  7d800000  xsignal r1, 0
0005ac  7d800000  xsignal r1, 0
0005b0  7d800000  xsignal r1, 0
0005b4  7d800000  xsignal r1, 0
0005b8  7d800000  xsignal r1, 0
0005bc  7d800000  xsignal r1, 0
0005c0  7d800000  xsignal r1, 0
0005c4  7d800000  xsignal r1, 0
0005c8  7d800000  xsignal r1, 0
0005cc  7d800000  xsignal r1, 0
0005d0  7d800000  xsignal r1, 0
0005d4  7d800000  xsignal r1, 0
0005d8  7d800000  xsignal r1, 0
0005dc  7d800000  xsignal r1, 0
0005e0  7d800000  xsignal r1, 0
0005e4  7d800000  xsignal r1, 0
0005e8  7d800000  xsignal r1, 0
0005ec  7d800000  xsignal r1, 0
0005f0  7d800000  xsignal r1, 0
0005f4  7d800000  xsignal r1, 0
0005f8  7d800000  xsignal r1, 0
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
00081c  e3003f00  loadli.w r1,  24(r30)
000820  e3413f00  loadli.w r3,  28(r30)
000824  80d20002  load_param_i r5, 1
000828  63024f00  loadli.w r4,  32(r30)
00082c  67080ffc  storeli.w zero, -384(r30)
000830  e74f0ff6  storeli.w zero, -1028(r30)
000834  e7470ff4  storeli.w zero, -1412(r30)
000838  e70f0ff0  storeli.w zero, -1800(r30)
00083c  8b901120  mul.s r1, r3, r1
000840  9f810200  addli r3, r5, 0
000844  8b914050  fmac.s r3, r1, r4
000848  0b924020  mul.s r4, r1, r4
00084c  9ff1f1ff  addli r3, r3, -1
000850  8b915130  div.s r3, r3, r5
000854  80520002  load_param_i r5, 0
000858  8b905120  mul.s r1, r3, r5
00085c  8b915150  fmac.s r3, r3, r5
000860  8b914140  min.s r3, r3, r4
000864  cbaf1100  ble.s r3, r1, 1000
000868  b3910128  sext_int2long r[4:5], r3
00086c  63040ffd  loadli.w r8,  -384(r30)
000870  e344fff7  loadli.w r9,  -1028(r30)
000874  e302fff1  loadli.w r5,  -1800(r30)
000878  33960028  sext_int2long r[13:14], r1
00087c  9f150000  addli r11, zero, 1
000880  9f470000  addli r15, zero, 4
000884  9f280000  addli r17, zero, 2
000888  1f7ab000  addli r20, zero, 95
00088c  abcd0000  lui r27, 12
000890  1f5b0000  addli r22, zero, 5
000894  9f0b4000  addli r23, zero, 32
000898  1f0c8000  addli r24, zero, 64
00089c  9f0c4001  addli r25, zero, 160
0008a0  733c3f8a  store.d r[4:5], -1864(r30)
0008a4  6342fff4  loadli.w r4,  -1412(r30)
0008a8  9f010000  addli r3, zero, 0
0008ac  db050000  j 44
0008b0  1f221000  addli r4, zero, 10
0008b4  7d000200  xsignal r4, 0
0008b8  6b568f8e  load.d r[13:14], -1816(r30)
0008bc  6b528f8b  load.d r[5:6], -1864(r30)
0008c0  e341cff1  loadli.w r3,  -1820(r30)
0008c4  27160600  addli.d r[13:14], r[13:14], 1
0008c8  13334604  setlt.sl r6, r[13:14], r[5:6]
0008cc  9f120900  addli r5, r18, 1
0008d0  1f920000  addli r4, r1, 1
0008d4  b76d0300  beq r6, zero, 888
0008d8  3b30f100  bneq r2, r15, 12
0008dc  9f301000  addli r1, zero, 11
0008e0  7d900000  xwait r1, 0
0008e4  e3004f00  loadli.w r1,  32(r30)
0008e8  63433f00  loadli.w r6,  28(r30)
0008ec  7334cf8e  store.d r[13:14], -1816(r30)
0008f0  1f350000  addli r10, zero, 3
0008f4  1f0e0000  addli r28, zero, 0
0008f8  1f1d0000  addli r26, zero, 1
0008fc  1f080000  addli r16, zero, 0
000900  0b95a138  mod.s r10, r3, r10
000904  9f910100  addli r3, r3, 1
000908  8b101630  div.s r1, r12, r1
00090c  9f061000  addli r13, zero, 8
000910  674e3ff0  storeli.w r3, -1820(r30)
000914  9b3ae500  slli r21, r10, 14
000918  1f650000  addli r10, zero, 6
00091c  8b906030  div.s r1, r1, r6
000920  1f030001  addli r6, zero, 128
000924  0b936030  div.s r6, r1, r6
000928  9b333300  slli r7, r6, 3
00092c  1b337300  slli r6, r6, 7
000930  0b967518  sub.s r12, r11, r7
000934  0b936018  sub.s r6, r1, r6
000938  0b16d640  min.s r12, r12, r13
00093c  8b90c038  mod.s r1, r1, r12
000940  0b13c330  div.s r6, r6, r12
000944  8b901310  add.s r1, r7, r1
000948  9b316300  slli r3, r6, 6
00094c  33030328  zext_int2long r[7:8], r6
000950  670c3ff0  storeli.w r3, -1856(r30)
000954  9bb16000  slli r3, r1, 6
000958  33860028  zext_int2long r[13:14], r1
00095c  1733a302  sll.d r[7:8], r[7:8], r10
000960  9f601000  addli r1, zero, 14
000964  17391303  sll.d r[19:20], r[7:8], r17
000968  7338cf8c  store.d r[13:14], -1840(r30)
00096c  17331602  sll.d r[7:8], r[13:14], r1
000970  6b568f00  load.d r[13:14], 8(r30)
000974  e70c3ff0  storeli.w r3, -1848(r30)
000978  733c2f8d  store.d r[19:20], -1832(r30)
00097c  0b262611  add.ul r[13:14], r[13:14], r[19:20]
000980  9f09c000  addli r19, zero, 96
000984  7338cf8e  store.d r[13:14], -1808(r30)
000988  6b560f00  load.d r[13:14], 0(r30)
00098c  0b236610  add.ul r[7:8], r[13:14], r[7:8]
000990  5b030000  j 24
000994  1b051d00  andi r10, r26, 1
000998  37070500  beq r10, zero, 448
00099c  1f180800  addli r16, r16, 1
0009a0  1f1e0000  addli r28, zero, 1
0009a4  1f0d0000  addli r26, zero, 0
0009a8  8b100211  add.s r1, r4, r16
0009ac  0b990211  add.s r18, r5, r16
0009b0  0b954039  mod.s r10, r1, r20
0009b4  0b163939  mod.s r12, r18, r19
0009b8  1b35d500  slli r10, r10, 13
0009bc  1b36d600  slli r12, r12, 13
0009c0  0b15b511  add.s r10, r10, r27
0009c4  37411101  beq r2, r17, 80
0009c8  b3060e28  zext_int2long r[14:15], r28
0009cc  1f6e0000  addli r28, zero, 6
0009d0  bb32c101  bneq r2, r28, 172
0009d4  1f7e0000  addli r28, zero, 7
0009d8  9f010002  addli r3, zero, 256
0009dc  97b6c603  sll.d r[14:15], r[14:15], r28
0009e0  1f3e0000  addli r28, zero, 3
0009e4  7d100e00  xwait r28, 0
0009e8  1d800700  lock zero, r15
0009ec  8b26d310  add.ul r[14:15], r[7:8], r[14:15]
0009f0  1f0e0001  addli r28, zero, 128
0009f4  15000000  dma_cfg zero, zero, zero, 0
0009f8  15000704  dma_cfg zero, r14, zero, 2
0009fc  1585c607  dma_cfg r10, r13, r28, 3
000a00  158e8109  dma_cfg r28, r3, r24, 4
000a04  35000000  dma_run zero
000a08  1d900700  unlock r15
000a0c  7d800800  xsignal r17, 0
000a10  db060000  j 52
000a14  7d900800  xwait r17, 0
000a18  7d100b00  xwait r22, 0
000a1c  1d000000  lock zero, zero
000a20  81080000  ds_cfg r17, zero, 0
000a24  810b0002  ds_cfg r23, zero, 1
000a28  810b001c  ds_cfg r23, zero, 14
000a2c  010c001a  ds_cfg r24, zero, 13
000a30  21167503  shuffle_batch r12, r10, r23, 1
000a34  1f350000  addli r10, zero, 3
000a38  1d100000  unlock zero
000a3c  7d000500  xsignal r10, 0
000a40  7d800700  xsignal r15, 0
000a44  0b959439  mod.s r10, r9, r25
000a48  9f940400  addli r9, r9, 1
000a4c  1f140400  addli r8, r8, 1
000a50  1b3ed500  slli r28, r10, 13
000a54  3b0df1fe  bneq r2, r15, -192
000a58  1f051000  addli r10, zero, 8
000a5c  7d900700  xwait r15, 0
000a60  7d100500  xwait r10, 0
000a64  1d800500  lock zero, r11
000a68  098c8b01  mm_cfg r24, r23, r24, 0
000a6c  8988b804  mm_cfg r17, r17, r11, 2
000a70  37020800  beq r16, zero, 128
000a74  a91ac611  mm_acc r21, r12, r28, 8
000a78  db0f0000  j 124
000a7c  0b154439  mod.s r10, r8, r20
000a80  0b9e9439  mod.s r28, r9, r25
000a84  aba10c00  lui r3, 202
000a88  9f940400  addli r9, r9, 1
000a8c  1f140400  addli r8, r8, 1
000a90  1b35d500  slli r10, r10, 13
000a94  1b3ede00  slli r28, r28, 13
000a98  0b153510  add.s r10, r10, r3
000a9c  9f710000  addli r3, zero, 7
000aa0  b7413100  beq r2, r3, 112
000aa4  bb4eb1fe  bneq r2, r11, -80
000aa8  9f112000  addli r3, zero, 17
000aac  17b63602  sll.d r[13:14], r[14:15], r3
000ab0  9f710000  addli r3, zero, 7
000ab4  1f070002  addli r14, zero, 256
000ab8  7d900100  xwait r3, 0
000abc  eb5d0f8f  load.d r[28:29], -1808(r30)
000ac0  1d800700  lock zero, r15
000ac4  15000000  dma_cfg zero, zero, zero, 0
000ac8  0ba6cd10  add.ul r[13:14], r[28:29], r[13:14]
000acc  abcd0000  lui r27, 12
000ad0  15800604  dma_cfg zero, r13, zero, 2
000ad4  1505e606  dma_cfg r10, r12, r14, 3
000ad8  1f050020  addli r10, zero, 4096
000adc  15077509  dma_cfg r14, r10, r23, 4
000ae0  35000000  dma_run zero
000ae4  1d900700  unlock r15
000ae8  1f650000  addli r10, zero, 6
000aec  db0b0000  j 92
000af0  a90ac611  mm r21, r12, r28, 8
000af4  1b051d00  andi r10, r26, 1
000af8  1f161000  addli r12, zero, 9
000afc  1d900500  unlock r11
000b00  7d000b00  xsignal r22, 0
000b04  7d000600  xsignal r12, 0
000b08  3b5a05fe  bneq r10, zero, -364
000b0c  dbb4ffff  j -604
000b10  1f660000  addli r12, zero, 6
000b14  9f710000  addli r3, zero, 7
000b18  7d100600  xwait r12, 0
000b1c  1f161000  addli r12, zero, 9
000b20  7d100600  xwait r12, 0
000b24  1d000000  lock zero, zero
000b28  81080000  ds_cfg r17, zero, 0
000b2c  010c0002  ds_cfg r24, zero, 1
000b30  810b001c  ds_cfg r23, zero, 14
000b34  010c001a  ds_cfg r24, zero, 13
000b38  410e7505  shuffle_coa r28, r10, r23, 2
000b3c  1f051000  addli r10, zero, 8
000b40  1d100000  unlock zero
000b44  7d800100  xsignal r3, 0
000b48  7d000500  xsignal r10, 0
000b4c  1b051d00  andi r10, r26, 1
000b50  3b3905fe  bneq r10, zero, -436
000b54  3775f1fe  beq r2, r15, -676
000b58  bb0501fe  bneq r2, zero, -672
000b5c  e3018ff1  loadli.w r3,  -1856(r30)
000b60  1f038007  addli r6, zero, 960
000b64  1f251000  addli r10, zero, 10
000b68  1f5b0000  addli r22, zero, 5
000b6c  33030328  zext_int2long r[7:8], r6
000b70  33820128  zext_int2long r[5:6], r3
000b74  e3019ff1  loadli.w r3,  -1848(r30)
000b78  0b236240  min.ul r[7:8], r[5:6], r[7:8]
000b7c  33960128  sext_int2long r[13:14], r3
000b80  27038300  addli.d r[7:8], r[7:8], 64
000b84  73346f8c  store.d r[7:8], -1848(r30)
000b88  33030028  zext_int2long r[7:8], zero
000b8c  73386f8e  store.d r[7:8], -1808(r30)
000b90  6b538f8c  load.d r[7:8], -1848(r30)
000b94  0b234348  max.ul r[7:8], r[7:8], r[5:6]
000b98  73346f8c  store.d r[7:8], -1848(r30)
000b9c  6b530f8f  load.d r[7:8], -1808(r30)
000ba0  0b336640  min.sl r[7:8], r[13:14], r[7:8]
000ba4  73386f8e  store.d r[7:8], -1808(r30)
000ba8  6b538f8c  load.d r[7:8], -1848(r30)
000bac  8b314318  sub.sl r[4:5], r[7:8], r[5:6]
000bb0  eb520f8f  load.d r[6:7], -1808(r30)
000bb4  73303f8c  store.d r[4:5], -1856(r30)
000bb8  b3010c28  zext_int2long r[4:5], r24
000bbc  a7828200  addli.d r[6:7], r[6:7], 64
000bc0  73343f8c  store.d r[4:5], -1848(r30)
000bc4  73385f8a  store.d r[6:7], -1872(r30)
000bc8  eb520f8c  load.d r[6:7], -1856(r30)
000bcc  0ba33240  min.ul r[7:8], r[6:7], r[4:5]
000bd0  eb510f8b  load.d r[4:5], -1872(r30)
000bd4  73386f8e  store.d r[7:8], -1808(r30)
000bd8  eb520f8d  load.d r[6:7], -1840(r30)
000bdc  8bb1c148  max.sl r[4:5], r[4:5], r[13:14]
000be0  73303f8c  store.d r[4:5], -1856(r30)
000be4  1f222000  addli r4, zero, 18
000be8  97b24202  sll.d r[6:7], r[6:7], r4
000bec  eb510f8c  load.d r[4:5], -1856(r30)
000bf0  0bb6c118  sub.sl r[13:14], r[4:5], r[13:14]
000bf4  eb510f01  load.d r[4:5], 16(r30)
000bf8  0ba25110  add.ul r[5:6], r[4:5], r[6:7]
000bfc  6b538f8c  load.d r[7:8], -1848(r30)
000c00  9f010002  addli r3, zero, 256
000c04  0b336640  min.sl r[7:8], r[13:14], r[7:8]
000c08  6b568f8d  load.d r[13:14], -1832(r30)
000c0c  7d100500  xwait r10, 0
000c10  0b22c210  add.ul r[5:6], r[5:6], r[13:14]
000c14  1f560000  addli r12, zero, 5
000c18  1d000600  lock zero, r12
000c1c  15000000  dma_cfg zero, zero, zero, 0
000c20  15800502  dma_cfg zero, r11, zero, 1
000c24  eb560f8f  load.d r[14:15], -1808(r30)
000c28  95020004  dma_cfg r5, zero, zero, 2
000c2c  1bb52600  slli r10, r13, 2
000c30  1582aa06  dma_cfg r4, r21, r10, 3
000c34  1f020020  addli r4, zero, 4096
000c38  15826108  dma_cfg r4, r3, r6, 4
000c3c  1f321000  addli r4, zero, 11
000c40  35000000  dma_run zero
000c44  1d100600  unlock r12
000c48  db8dffff  j -916
000c4c  7d000000  xsignal zero, 0
000c50  bb600100  bneq r2, zero, 56
000c54  9f200000  addli r1, zero, 2
000c58  7d100000  xwait zero, 0
000c5c  7d100000  xwait zero, 0
000c60  7d100000  xwait zero, 0
000c64  7d100000  xwait zero, 0
000c68  7d100000  xwait zero, 0
000c6c  7d100000  xwait zero, 0
000c70  7d100000  xwait zero, 0
000c74  7d100000  xwait zero, 0
000c78  1d800000  lock zero, r1
000c7c  0d000020  ew_cfg zero, zero, zero, 16
000c80  1d900000  unlock r1
000c84  7d400000  xsignal_mode_cfg zero
000c88  9f8eae0e  addli sp, sp, 1872
000c8c  00a00300  mfence { lm, sm, gm }
000c90  00100000  exit
000c94  00100000  exit
000c98  00100000  exit
000c9c  00100000  exit
000ca0  00100000  exit
000ca4  00100000  exit
000ca8  00100000  exit
000cac  00100000  exit
000cb0  00100000  exit
000cb4  00100000  exit
000cb8  00100000  exit
000cbc  00100000  exit
000cc0  00100000  exit
000cc4  00100000  exit
000cc8  00100000  exit
000ccc  00100000  exit
000cd0  00100000  exit
000cd4  00100000  exit
000cd8  00100000  exit
000cdc  00100000  exit
000ce0  00100000  exit
000ce4  00100000  exit
000ce8  00100000  exit
000cec  00100000  exit
000cf0  00100000  exit
000cf4  00100000  exit
000cf8  00100000  exit
000cfc  00100000  exit
000d00  00100000  exit
000d04  00100000  exit
000d08  00100000  exit
000d0c  00100000  exit
000d10  00100000  exit
000d14  00100000  exit
000d18  00100000  exit
000d1c  00100000  exit
000d20  00100000  exit
000d24  00100000  exit
000d28  00100000  exit
000d2c  00100000  exit
000d30  00100000  exit
000d34  00100000  exit
000d38  00100000  exit
000d3c  00100000  exit
000d40  00100000  exit
000d44  00100000  exit
000d48  00100000  exit
000d4c  00100000  exit
000d50  00100000  exit
000d54  00100000  exit
000d58  00100000  exit
000d5c  00100000  exit
000d60  00100000  exit
000d64  00100000  exit
000d68  00100000  exit
000d6c  00100000  exit
000d70  00100000  exit
000d74  00100000  exit
000d78  00100000  exit
000d7c  00100000  exit
000d80  00100000  exit
000d84  00100000  exit
000d88  00100000  exit
000d8c  00100000  exit
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
000dac  00100000  exit
000db0  00100000  exit
000db4  00100000  exit
000db8  00100000  exit
000dbc  00100000  exit
000dc0  00100000  exit
000dc4  00100000  exit
000dc8  00100000  exit
000dcc  00100000  exit
000dd0  00100000  exit
000dd4  00100000  exit
000dd8  00100000  exit
000ddc  00100000  exit
000de0  00100000  exit
000de4  00100000  exit
000de8  00100000  exit
000dec  00100000  exit
000df0  00100000  exit
000df4  00100000  exit
000df8  00100000  exit
000dfc  00100000  exit
000e00  00100000  exit
000e04  00100000  exit
000e08  00100000  exit
000e0c  00100000  exit
000e10  00100000  exit
000e14  00100000  exit
000e18  00100000  exit
000e1c  00100000  exit
000e20  00100000  exit
000e24  00100000  exit
000e28  00100000  exit
000e2c  00100000  exit
000e30  00100000  exit
000e34  00100000  exit
000e38  00100000  exit
000e3c  00100000  exit
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
000e50  00100000  exit
000e54  00100000  exit
000e58  00100000  exit
000e5c  00100000  exit
000e60  00100000  exit
000e64  00100000  exit
000e68  00100000  exit
000e6c  00100000  exit
000e70  00100000  exit
000e74  00100000  exit
000e78  00100000  exit
000e7c  00100000  exit
000e80  00100000  exit
000e84  00100000  exit
000e88  00100000  exit
000e8c  00100000  exit
000e90  00100000  exit
000e94  00100000  exit
000e98  00100000  exit
000e9c  00100000  exit
000ea0  00100000  exit
000ea4  00100000  exit
000ea8  00100000  exit
000eac  00100000  exit
000eb0  00100000  exit
000eb4  00100000  exit
000eb8  00100000  exit
000ebc  00100000  exit
000ec0  00100000  exit
000ec4  00100000  exit
000ec8  00100000  exit
000ecc  00100000  exit
000ed0  00100000  exit
