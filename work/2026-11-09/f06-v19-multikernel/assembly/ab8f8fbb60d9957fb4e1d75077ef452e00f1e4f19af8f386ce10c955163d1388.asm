; SHA-256 ab8f8fbb60d9957fb4e1d75077ef452e00f1e4f19af8f386ce10c955163d1388
; P800 SDNN · XTDK LLVM 19 · 1015 / 1015 words decoded
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
0000b4  9f8edef0  addli sp, sp, -1944
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8fbe0e  addli r30, sp, 1880
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  dbe80000  j 1860
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
000410  9f710000  addli r3, zero, 7
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
000694  9f501000  addli r1, zero, 13
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
000804  9f711000  addli r3, zero, 15
000808  7d800000  xsignal r1, 0
00080c  7d800000  xsignal r1, 0
000810  7d800000  xsignal r1, 0
000814  7d800100  xsignal r3, 0
000818  7d800100  xsignal r3, 0
00081c  7d800100  xsignal r3, 0
000820  e3004f00  loadli.w r1,  32(r30)
000824  e3414f00  loadli.w r3,  36(r30)
000828  80d20002  load_param_i r5, 1
00082c  63025f00  loadli.w r4,  40(r30)
000830  670f0ffe  storeli.w zero, -16(r30)
000834  670e0ffe  storeli.w zero, -32(r30)
000838  67070ffc  storeli.w zero, -400(r30)
00083c  e74e0ff6  storeli.w zero, -1044(r30)
000840  e7070ff4  storeli.w zero, -1416(r30)
000844  674f0ff0  storeli.w zero, -1804(r30)
000848  8b901120  mul.s r1, r3, r1
00084c  9f810200  addli r3, r5, 0
000850  8b914050  fmac.s r3, r1, r4
000854  0b924020  mul.s r4, r1, r4
000858  9ff1f1ff  addli r3, r3, -1
00085c  8b915130  div.s r3, r3, r5
000860  80520002  load_param_i r5, 0
000864  8b905120  mul.s r1, r3, r5
000868  8b915150  fmac.s r3, r3, r5
00086c  8b914140  min.s r3, r3, r4
000870  cb931102  ble.s r3, r1, 1252
000874  6306efff  loadli.w r12,  -16(r30)
000878  6309cfff  loadli.w r18,  -32(r30)
00087c  6305effc  loadli.w r10,  -400(r30)
000880  e345dff7  loadli.w r11,  -1044(r30)
000884  e302fff4  loadli.w r5,  -1416(r30)
000888  6347eff1  loadli.w r14,  -1804(r30)
00088c  b3910128  sext_int2long r[4:5], r3
000890  33930028  sext_int2long r[7:8], r1
000894  1f1e0000  addli r28, zero, 1
000898  9f480000  addli r17, zero, 4
00089c  9f290000  addli r19, zero, 2
0008a0  9f0ac000  addli r21, zero, 96
0008a4  1f4bb000  addli r22, zero, 92
0008a8  abcb0000  lui r23, 12
0008ac  9f0c4000  addli r25, zero, 32
0008b0  1f0d8000  addli r26, zero, 64
0008b4  1f080002  addli r16, zero, 256
0008b8  9f760000  addli r13, zero, 7
0008bc  9f070000  addli r15, zero, 0
0008c0  73343f8a  store.d r[4:5], -1880(r30)
0008c4  db0d0000  j 108
0008c8  eb530f01  load.d r[8:9], 16(r30)
0008cc  6b570f8c  load.d r[15:16], -1856(r30)
0008d0  9f501000  addli r1, zero, 13
0008d4  7d900000  xwait r1, 0
0008d8  1d800800  lock zero, r17
0008dc  9b302200  slli r1, r4, 2
0008e0  8ba3e310  add.ul r[8:9], r[8:9], r[15:16]
0008e4  15000000  dma_cfg zero, zero, zero, 0
0008e8  15000404  dma_cfg zero, r8, zero, 2
0008ec  15831306  dma_cfg r6, r7, r1, 3
0008f0  9f401000  addli r1, zero, 12
0008f4  1508c809  dma_cfg r16, r16, r28, 4
0008f8  35000000  dma_run zero
0008fc  1d900800  unlock r17
000900  7d800000  xsignal r1, 0
000904  6346cff1  loadli.w r12,  -1820(r30)
000908  6b538f8d  load.d r[7:8], -1832(r30)
00090c  6b528f8a  load.d r[5:6], -1880(r30)
000910  e347aff1  loadli.w r15,  -1836(r30)
000914  1f190900  addli r18, r18, 1
000918  1f970100  addli r14, r3, 1
00091c  1f160600  addli r12, r12, 1
000920  27130300  addli.d r[7:8], r[7:8], 1
000924  93304304  setlt.sl r1, r[7:8], r[5:6]
000928  9f920d00  addli r5, r27, 1
00092c  b7a00002  beq r1, zero, 1064
000930  670e2ff1  storeli.w r18, -1824(r30)
000934  674ecff0  storeli.w r12, -1820(r30)
000938  3b301101  bneq r2, r17, 12
00093c  9f301000  addli r1, zero, 11
000940  7d900000  xwait r1, 0
000944  e3005f00  loadli.w r1,  40(r30)
000948  e3414f00  loadli.w r3,  36(r30)
00094c  733c6f8c  store.d r[7:8], -1832(r30)
000950  9f041000  addli r9, zero, 8
000954  1f360000  addli r12, zero, 3
000958  1f020000  addli r4, zero, 0
00095c  1f1c0000  addli r24, zero, 1
000960  8b101330  div.s r1, r6, r1
000964  8b93c738  mod.s r7, r15, r12
000968  9f970700  addli r15, r15, 1
00096c  674dfff0  storeli.w r15, -1836(r30)
000970  8b903030  div.s r1, r1, r3
000974  9f010001  addli r3, zero, 128
000978  1bbae300  slli r20, r7, 14
00097c  8b913030  div.s r3, r1, r3
000980  1bb33100  slli r6, r3, 3
000984  9bb17100  slli r3, r3, 7
000988  0b146e18  sub.s r8, r28, r6
00098c  8b913018  sub.s r3, r1, r3
000990  0b149440  min.s r8, r8, r9
000994  8b908038  mod.s r1, r1, r8
000998  8b918130  div.s r3, r3, r8
00099c  8b101310  add.s r1, r6, r1
0009a0  1bb36100  slli r6, r3, 6
0009a4  e70c6ff0  storeli.w r6, -1848(r30)
0009a8  33830128  zext_int2long r[7:8], r3
0009ac  9bb16000  slli r3, r1, 6
0009b0  33840028  zext_int2long r[9:10], r1
0009b4  9f601000  addli r1, zero, 14
0009b8  670b3ff0  storeli.w r3, -1872(r30)
0009bc  9f610000  addli r3, zero, 6
0009c0  733c8f8a  store.d r[9:10], -1864(r30)
0009c4  17333302  sll.d r[7:8], r[7:8], r3
0009c8  973d3303  sll.d r[28:29], r[7:8], r19
0009cc  17331402  sll.d r[7:8], r[9:10], r1
0009d0  6b548f00  load.d r[9:10], 8(r30)
0009d4  9f000000  addli r1, zero, 0
0009d8  7330bf8d  store.d r[28:29], -1856(r30)
0009dc  0b24b411  add.ul r[9:10], r[9:10], r[28:29]
0009e0  1f1e0000  addli r28, zero, 1
0009e4  73348f8e  store.d r[9:10], -1816(r30)
0009e8  6b540f00  load.d r[9:10], 0(r30)
0009ec  0b246410  add.ul r[9:10], r[9:10], r[7:8]
0009f0  5b090000  j 72
0009f4  1f520000  addli r4, zero, 5
0009f8  7d900900  xwait r19, 0
0009fc  7d100200  xwait r4, 0
000a00  1d000000  lock zero, zero
000a04  81090000  ds_cfg r19, zero, 0
000a08  810c0002  ds_cfg r25, zero, 1
000a0c  810c001c  ds_cfg r25, zero, 14
000a10  010d001a  ds_cfg r26, zero, 13
000a14  a1179903  shuffle_batch r15, r18, r25, 1
000a18  1d100000  unlock zero
000a1c  7d000600  xsignal r12, 0
000a20  7d800800  xsignal r17, 0
000a24  9f950500  addli r11, r11, 1
000a28  1f150500  addli r10, r10, 1
000a2c  1b021c00  andi r4, r24, 1
000a30  bb040200  bneq r4, zero, 288
000a34  5b310000  j 392
000a38  8b9d1210  add.s r27, r5, r1
000a3c  8b111710  add.s r3, r14, r1
000a40  0b936d39  mod.s r6, r27, r22
000a44  8b935139  mod.s r7, r3, r21
000a48  1b33d300  slli r6, r6, 13
000a4c  9bb7d300  slli r15, r7, 13
000a50  0b197311  add.s r18, r6, r23
000a54  b70e31ff  beq r2, r19, -96
000a58  33030228  zext_int2long r[7:8], r4
000a5c  bb60c101  bneq r2, r28, 56
000a60  1733d302  sll.d r[7:8], r[7:8], r13
000a64  7d100600  xwait r12, 0
000a68  1d800800  lock zero, r17
000a6c  1f020001  addli r4, zero, 128
000a70  15000000  dma_cfg zero, zero, zero, 0
000a74  0b236410  add.ul r[7:8], r[9:10], r[7:8]
000a78  15800304  dma_cfg zero, r7, zero, 2
000a7c  15094306  dma_cfg r18, r6, r4, 3
000a80  1502a809  dma_cfg r4, r16, r26, 4
000a84  35000000  dma_run zero
000a88  1d900800  unlock r17
000a8c  7d800900  xsignal r19, 0
000a90  dbf2ffff  j -108
000a94  1f32b000  addli r4, zero, 91
000a98  1f064001  addli r12, zero, 160
000a9c  0b124538  mod.s r4, r10, r4
000aa0  0b99c538  mod.s r18, r11, r12
000aa4  9f950500  addli r11, r11, 1
000aa8  1f150500  addli r10, r10, 1
000aac  1b36d200  slli r12, r4, 13
000ab0  1b32d900  slli r4, r18, 13
000ab4  2b490c00  lui r18, 196
000ab8  0b192611  add.s r18, r12, r18
000abc  3741d100  beq r2, r13, 80
000ac0  1f660000  addli r12, zero, 6
000ac4  3b72c100  bneq r2, r12, 156
000ac8  1f122000  addli r4, zero, 17
000acc  7d900600  xwait r13, 0
000ad0  eb578f8e  load.d r[16:17], -1816(r30)
000ad4  1d800800  lock zero, r17
000ad8  15000000  dma_cfg zero, zero, zero, 0
000adc  17334302  sll.d r[7:8], r[7:8], r4
000ae0  1f020002  addli r4, zero, 256
000ae4  0ba36710  add.ul r[7:8], r[16:17], r[7:8]
000ae8  1f080002  addli r16, zero, 256
000aec  15800304  dma_cfg zero, r7, zero, 2
000af0  15094306  dma_cfg r18, r6, r4, 3
000af4  1f030020  addli r6, zero, 4096
000af8  15029309  dma_cfg r4, r6, r25, 4
000afc  35000000  dma_run zero
000b00  1d900800  unlock r17
000b04  7d000600  xsignal r12, 0
000b08  db070000  j 60
000b0c  1f630000  addli r6, zero, 6
000b10  7d100300  xwait r6, 0
000b14  1f131000  addli r6, zero, 9
000b18  7d100300  xwait r6, 0
000b1c  1d000000  lock zero, zero
000b20  81090000  ds_cfg r19, zero, 0
000b24  010d0002  ds_cfg r26, zero, 1
000b28  810c001c  ds_cfg r25, zero, 14
000b2c  010d001a  ds_cfg r26, zero, 13
000b30  41029905  shuffle_coa r4, r18, r25, 2
000b34  1f021000  addli r4, zero, 8
000b38  1d100000  unlock zero
000b3c  7d800600  xsignal r13, 0
000b40  7d000200  xsignal r4, 0
000b44  1f360000  addli r12, zero, 3
000b48  1b021c00  andi r4, r24, 1
000b4c  b7410200  beq r4, zero, 112
000b50  9f900000  addli r1, r1, 1
000b54  1f120000  addli r4, zero, 1
000b58  1f0c0000  addli r24, zero, 0
000b5c  dbdbffff  j -292
000b60  1f360000  addli r12, zero, 3
000b64  bb201101  bneq r2, r17, 40
000b68  1f031000  addli r6, zero, 8
000b6c  7d900800  xwait r17, 0
000b70  7d100300  xwait r6, 0
000b74  1d000e00  lock zero, r28
000b78  098dac01  mm_cfg r26, r25, r26, 0
000b7c  8989c905  mm_cfg r19, r19, r28, 2
000b80  37e00000  beq r1, zero, 24
000b84  299a4710  mm_acc r20, r15, r4, 8
000b88  db020000  j 20
000b8c  1b021c00  andi r4, r24, 1
000b90  3b0f02fe  bneq r4, zero, -64
000b94  db060000  j 52
000b98  298a4710  mm r20, r15, r4, 8
000b9c  1f530000  addli r6, zero, 5
000ba0  1d100e00  unlock r28
000ba4  1b021c00  andi r4, r24, 1
000ba8  7d000300  xsignal r6, 0
000bac  1f131000  addli r6, zero, 9
000bb0  7d000300  xsignal r6, 0
000bb4  3b7e02fe  bneq r4, zero, -100
000bb8  5b010000  j 8
000bbc  3b301101  bneq r2, r17, 12
000bc0  9f201000  addli r1, zero, 10
000bc4  7d800000  xsignal r1, 0
000bc8  e3009ff1  loadli.w r1,  -1848(r30)
000bcc  6309cff1  loadli.w r18,  -1824(r30)
000bd0  aba41700  lui r9, 378
000bd4  33820028  zext_int2long r[5:6], r1
000bd8  9f008007  addli r1, zero, 960
000bdc  33830028  zext_int2long r[7:8], r1
000be0  8b10c938  mod.s r1, r18, r12
000be4  0b236240  min.ul r[7:8], r[5:6], r[7:8]
000be8  27038300  addli.d r[7:8], r[7:8], 64
000bec  0b274348  max.ul r[15:16], r[7:8], r[5:6]
000bf0  9bb08000  slli r1, r1, 8
000bf4  b3030d28  zext_int2long r[8:9], r26
000bf8  0b324718  sub.sl r[5:6], r[15:16], r[5:6]
000bfc  0b939010  add.s r6, r1, r9
000c00  9f300000  addli r1, zero, 3
000c04  0b227240  min.ul r[5:6], r[5:6], r[8:9]
000c08  3703c1ff  beq r2, r28, -832
000c0c  6346cff1  loadli.w r12,  -1820(r30)
000c10  9b940430  ori r9, r9, 768
000c14  8b101638  mod.s r1, r12, r1
000c18  9bb0e000  slli r1, r1, 14
000c1c  8b909010  add.s r1, r1, r9
000c20  9f540000  addli r9, zero, 5
000c24  bb619100  bneq r2, r9, 120
000c28  9f221000  addli r5, zero, 10
000c2c  1f020000  addli r4, zero, 0
000c30  2b440000  lui r8, 4
000c34  7d900200  xwait r5, 0
000c38  9f421000  addli r5, zero, 12
000c3c  7d900200  xwait r5, 0
000c40  9f721000  addli r5, zero, 15
000c44  7d900200  xwait r5, 0
000c48  1d800900  lock zero, r19
000c4c  ab02803f  lui r5, 260096
000c50  0d0e0014  ew_cfg r28, zero, zero, 10
000c54  0d000002  ew_cfg zero, zero, zero, 1
000c58  8d920200  ewcoeff_cfg r5, r5, zero, 0
000c5c  9f727000  addli r5, zero, 63
000c60  0d800204  ew_cfg zero, r5, zero, 2
000c64  0d0e0006  ew_cfg r28, zero, zero, 3
000c68  8b924010  add.s r5, r1, r4
000c6c  8b134a10  add.s r7, r20, r4
000c70  1f020202  addli r4, r4, 256
000c74  ad826300  dsmadd r5, r7, r6, 0
000c78  bb4f82fe  bneq r4, r8, -16
000c7c  9f301000  addli r1, zero, 11
000c80  0d000014  ew_cfg zero, zero, zero, 10
000c84  1d900900  unlock r19
000c88  7d800000  xsignal r1, 0
000c8c  9f501000  addli r1, zero, 13
000c90  7d800000  xsignal r1, 0
000c94  9f601000  addli r1, zero, 14
000c98  db160000  j 180
000c9c  bb3101fe  bneq r2, zero, -916
000ca0  63036ff1  loadli.w r6,  -1872(r30)
000ca4  73344f8c  store.d r[5:6], -1848(r30)
000ca8  33170328  sext_int2long r[15:16], r6
000cac  1f232000  addli r6, zero, 18
000cb0  7334ef8e  store.d r[15:16], -1816(r30)
000cb4  33070028  zext_int2long r[15:16], zero
000cb8  6b528f8e  load.d r[5:6], -1816(r30)
000cbc  0b32e240  min.sl r[5:6], r[5:6], r[15:16]
000cc0  6b578f8b  load.d r[15:16], -1864(r30)
000cc4  17376702  sll.d r[15:16], r[15:16], r6
000cc8  1f631000  addli r6, zero, 14
000ccc  733cef8a  store.d r[15:16], -1864(r30)
000cd0  27078200  addli.d r[15:16], r[5:6], 64
000cd4  7d100300  xwait r6, 0
000cd8  6b528f8e  load.d r[5:6], -1816(r30)
000cdc  0b324748  max.sl r[5:6], r[15:16], r[5:6]
000ce0  6b578f01  load.d r[15:16], 24(r30)
000ce4  73384f8a  store.d r[5:6], -1872(r30)
000ce8  6b528f8b  load.d r[5:6], -1864(r30)
000cec  0b224710  add.ul r[5:6], r[15:16], r[5:6]
000cf0  6b570f8b  load.d r[15:16], -1872(r30)
000cf4  733c4f8a  store.d r[5:6], -1864(r30)
000cf8  6b528f8e  load.d r[5:6], -1816(r30)
000cfc  0b324718  sub.sl r[5:6], r[15:16], r[5:6]
000d00  6b570f8c  load.d r[15:16], -1856(r30)
000d04  73344f8e  store.d r[5:6], -1816(r30)
000d08  6b528f8b  load.d r[5:6], -1864(r30)
000d0c  0b27e210  add.ul r[15:16], r[5:6], r[15:16]
000d10  6b528f8e  load.d r[5:6], -1816(r30)
000d14  0b337240  min.sl r[7:8], r[5:6], r[8:9]
000d18  1f540000  addli r8, zero, 5
000d1c  1d000400  lock zero, r8
000d20  15000000  dma_cfg zero, zero, zero, 0
000d24  15000e02  dma_cfg zero, r28, zero, 1
000d28  6b528f8c  load.d r[5:6], -1848(r30)
000d2c  95070004  dma_cfg r15, zero, zero, 2
000d30  1b322200  slli r4, r4, 2
000d34  15874006  dma_cfg r14, r1, r4, 3
000d38  9f000020  addli r1, zero, 4096
000d3c  95006808  dma_cfg r1, r16, r6, 4
000d40  9f701000  addli r1, zero, 15
000d44  35000000  dma_run zero
000d48  1d100400  unlock r8
000d4c  7d800000  xsignal r1, 0
000d50  5b77ffff  j -1096
000d54  7d000000  xsignal zero, 0
000d58  bb600100  bneq r2, zero, 56
000d5c  9f200000  addli r1, zero, 2
000d60  7d100000  xwait zero, 0
000d64  7d100000  xwait zero, 0
000d68  7d100000  xwait zero, 0
000d6c  7d100000  xwait zero, 0
000d70  7d100000  xwait zero, 0
000d74  7d100000  xwait zero, 0
000d78  7d100000  xwait zero, 0
000d7c  7d100000  xwait zero, 0
000d80  1d800000  lock zero, r1
000d84  0d000020  ew_cfg zero, zero, zero, 16
000d88  1d900000  unlock r1
000d8c  7d400000  xsignal_mode_cfg zero
000d90  9f8ebe0e  addli sp, sp, 1880
000d94  00a00300  mfence { lm, sm, gm }
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
000ed4  00100000  exit
000ed8  00100000  exit
000edc  00100000  exit
000ee0  00100000  exit
000ee4  00100000  exit
000ee8  00100000  exit
000eec  00100000  exit
000ef0  00100000  exit
000ef4  00100000  exit
000ef8  00100000  exit
000efc  00100000  exit
000f00  00100000  exit
000f04  00100000  exit
000f08  00100000  exit
000f0c  00100000  exit
000f10  00100000  exit
000f14  00100000  exit
000f18  00100000  exit
000f1c  00100000  exit
000f20  00100000  exit
000f24  00100000  exit
000f28  00100000  exit
000f2c  00100000  exit
000f30  00100000  exit
000f34  00100000  exit
000f38  00100000  exit
000f3c  00100000  exit
000f40  00100000  exit
000f44  00100000  exit
000f48  00100000  exit
000f4c  00100000  exit
000f50  00100000  exit
000f54  00100000  exit
000f58  00100000  exit
000f5c  00100000  exit
000f60  00100000  exit
000f64  00100000  exit
000f68  00100000  exit
000f6c  00100000  exit
000f70  00100000  exit
000f74  00100000  exit
000f78  00100000  exit
000f7c  00100000  exit
000f80  00100000  exit
000f84  00100000  exit
000f88  00100000  exit
000f8c  00100000  exit
000f90  00100000  exit
000f94  00100000  exit
000f98  00100000  exit
000f9c  00100000  exit
000fa0  00100000  exit
000fa4  00100000  exit
000fa8  00100000  exit
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
000fcc  00100000  exit
000fd0  00100000  exit
000fd4  00100000  exit
000fd8  00100000  exit
