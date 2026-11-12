; SHA-256 a9753488f18d4fe618d32f7e152ef1a4e142eca618d19cbf593b3accfbd28fea
; P800 SDNN · XTDK LLVM 19 · 965 / 965 words decoded
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
0000b4  9f8e0ef3  addli sp, sp, -1664
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8f8e0c  addli r30, sp, 1600
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5bc40000  j 1568
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f411000  addli r3, zero, 12
000100  80a10004  csr_set csr3, r1
000104  9f500000  addli r1, zero, 5
000108  00d00100  sync_group
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
000384  9f710000  addli r3, zero, 7
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
000608  9f601000  addli r1, zero, 14
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
0006f0  7d800000  xsignal r1, 0
0006f4  7d800000  xsignal r1, 0
0006f8  7d800000  xsignal r1, 0
0006fc  e3004f00  loadli.w r1,  32(r30)
000700  e3414f00  loadli.w r3,  36(r30)
000704  80d20002  load_param_i r5, 1
000708  63025f00  loadli.w r4,  40(r30)
00070c  670f0ffe  storeli.w zero, -16(r30)
000710  e7000ffe  storeli.w zero, -248(r30)
000714  67480ff8  storeli.w zero, -892(r30)
000718  e7490ff6  storeli.w zero, -1124(r30)
00071c  e7010ff4  storeli.w zero, -1512(r30)
000720  8b901120  mul.s r1, r3, r1
000724  9f810200  addli r3, r5, 0
000728  8b914050  fmac.s r3, r1, r4
00072c  0b924020  mul.s r4, r1, r4
000730  9ff1f1ff  addli r3, r3, -1
000734  8b915130  div.s r3, r3, r5
000738  80520002  load_param_i r5, 0
00073c  8b905120  mul.s r1, r3, r5
000740  8b915150  fmac.s r3, r3, r5
000744  8b914140  min.s r3, r3, r4
000748  4b951102  ble.s r3, r1, 1348
00074c  b3910128  sext_int2long r[4:5], r3
000750  e3041ffe  loadli.w r9,  -248(r30)
000754  63450ff9  loadli.w r10,  -892(r30)
000758  e3453ff7  loadli.w r11,  -1124(r30)
00075c  63063ff4  loadli.w r12,  -1512(r30)
000760  33930028  sext_int2long r[7:8], r1
000764  9f060001  addli r13, zero, 128
000768  1f081000  addli r16, zero, 8
00076c  9f380000  addli r17, zero, 3
000770  1f490000  addli r18, zero, 4
000774  1f0bc000  addli r22, zero, 96
000778  1f1e7000  addli r28, zero, 57
00077c  ab0b0300  lui r23, 48
000780  9f2d0000  addli r27, zero, 2
000784  1f5c0000  addli r24, zero, 5
000788  9f008000  addli r1, zero, 64
00078c  9f0c4001  addli r25, zero, 160
000790  1f1d0000  addli r26, zero, 1
000794  e70f0ff2  storeli.w zero, -1544(r30)
000798  73343f9c  store.d r[4:5], -1592(r30)
00079c  e301efff  loadli.w r3,  -16(r30)
0007a0  e74f3ff2  storeli.w r3, -1540(r30)
0007a4  1f72f01f  addli r4, zero, 4095
0007a8  ab01feff  lui r3, 1048544
0007ac  73303f9c  store.d r[4:5], -1600(r30)
0007b0  9f014000  addli r3, zero, 32
0007b4  db0e0000  j 116
0007b8  6b570f9e  load.d r[15:16], -1568(r30)
0007bc  eb590f00  load.d r[20:21], 0(r30)
0007c0  1f621000  addli r4, zero, 14
0007c4  7d100200  xwait r4, 0
0007c8  1d000900  lock zero, r18
0007cc  1bb21200  slli r4, r5, 1
0007d0  9f020004  addli r5, zero, 512
0007d4  1737a703  sll.d r[15:16], r[15:16], r26
0007d8  15000d00  dma_cfg zero, r26, zero, 0
0007dc  0ba7e910  add.ul r[15:16], r[20:21], r[15:16]
0007e0  15800704  dma_cfg zero, r15, zero, 2
0007e4  95034706  dma_cfg r7, r14, r4, 3
0007e8  1f020002  addli r4, zero, 256
0007ec  9502a209  dma_cfg r5, r4, r26, 4
0007f0  35000000  dma_run zero
0007f4  1d100900  unlock r18
0007f8  1f521000  addli r4, zero, 13
0007fc  7d000200  xsignal r4, 0
000800  6b530f9f  load.d r[7:8], -1552(r30)
000804  6b528f9c  load.d r[5:6], -1592(r30)
000808  1f0bc000  addli r22, zero, 96
00080c  ab0b0300  lui r23, 48
000810  27130300  addli.d r[7:8], r[7:8], 1
000814  13324304  setlt.sl r4, r[7:8], r[5:6]
000818  e342fff3  loadli.w r5,  -1540(r30)
00081c  9f920200  addli r5, r5, 1
000820  e74f5ff2  storeli.w r5, -1540(r30)
000824  b7210202  beq r4, zero, 1128
000828  3b302101  bneq r2, r18, 12
00082c  1f421000  addli r4, zero, 12
000830  7d100200  xwait r4, 0
000834  63025f00  loadli.w r4,  40(r30)
000838  73386f9e  store.d r[7:8], -1552(r30)
00083c  8b124330  div.s r5, r6, r4
000840  63424f00  loadli.w r4,  36(r30)
000844  0b974230  div.s r14, r5, r4
000848  1f022000  addli r4, zero, 16
00084c  8b17d730  div.s r15, r14, r13
000850  9bb23700  slli r5, r15, 3
000854  0b135218  sub.s r6, r4, r5
000858  1f721000  addli r4, zero, 15
00085c  0b180341  min.s r16, r6, r16
000860  0b130739  mod.s r6, r14, r16
000864  8b936210  add.s r7, r5, r6
000868  93027204  setlt.u r5, r4, r7
00086c  b3890328  zext_int2long r[20:21], r7
000870  1f521000  addli r4, zero, 13
000874  733c3f9d  store.d r[20:21], -1576(r30)
000878  97b94902  sll.d r[20:21], r[20:21], r4
00087c  73383fa1  store.d r[20:21], -1520(r30)
000880  3bb00200  bneq r5, zero, 12
000884  33020028  zext_int2long r[5:6], zero
000888  db010000  j 12
00088c  6b520f9c  load.d r[5:6], -1600(r30)
000890  17824902  and.d r[5:6], r[20:21], r[5:6]
000894  9bb77700  slli r15, r15, 7
000898  73344fa0  store.d r[5:6], -1528(r30)
00089c  1bb27300  slli r4, r7, 7
0008a0  e302fff3  loadli.w r5,  -1544(r30)
0008a4  1f040000  addli r8, zero, 0
0008a8  0b17f718  sub.s r14, r14, r15
0008ac  674d4ff2  storeli.w r4, -1580(r30)
0008b0  9f170000  addli r15, zero, 1
0008b4  0b170731  div.s r14, r14, r16
0008b8  0b981239  mod.s r16, r5, r17
0008bc  9f920200  addli r5, r5, 1
0008c0  e70f5ff2  storeli.w r5, -1544(r30)
0008c4  1b327700  slli r4, r14, 7
0008c8  b3090728  zext_int2long r[20:21], r14
0008cc  9b3a0801  slli r21, r16, 16
0008d0  1f070000  addli r14, zero, 0
0008d4  e74e4ff2  storeli.w r4, -1556(r30)
0008d8  1f720000  addli r4, zero, 7
0008dc  17b34902  sll.d r[7:8], r[20:21], r4
0008e0  6b520f01  load.d r[5:6], 16(r30)
0008e4  9739f302  sll.d r[20:21], r[7:8], r15
0008e8  73306f9e  store.d r[7:8], -1568(r30)
0008ec  1f031000  addli r6, zero, 8
0008f0  0b223211  add.ul r[5:6], r[5:6], r[20:21]
0008f4  73304fa0  store.d r[5:6], -1536(r30)
0008f8  5b030000  j 24
0008fc  1b821700  andi r4, r15, 1
000900  37590200  beq r4, zero, 596
000904  1f170700  addli r14, r14, 1
000908  1f140000  addli r8, zero, 1
00090c  9f070000  addli r15, zero, 0
000910  8b93c539  mod.s r7, r11, r28
000914  0b186639  mod.s r16, r12, r22
000918  1f160600  addli r12, r12, 1
00091c  9f950500  addli r11, r11, 1
000920  9bb9e300  slli r19, r7, 14
000924  9b33d800  slli r7, r16, 13
000928  0b987911  add.s r16, r19, r23
00092c  3712b101  beq r2, r27, 132
000930  b3090428  zext_int2long r[20:21], r8
000934  1f620000  addli r4, zero, 6
000938  3b554100  bneq r2, r4, 340
00093c  6b520fa1  load.d r[5:6], -1520(r30)
000940  97b98903  sll.d r[20:21], r[20:21], r24
000944  6b5b8fa0  load.d r[23:24], -1528(r30)
000948  1f04000f  addli r8, zero, 1920
00094c  6b5c8f00  load.d r[25:26], 8(r30)
000950  7d900800  xwait r17, 0
000954  1d000900  lock zero, r18
000958  150d0d00  dma_cfg r26, r26, zero, 0
00095c  97994902  or.d r[20:21], r[20:21], r[5:6]
000960  33820028  zext_int2long r[5:6], r1
000964  0bbb6919  sub.sl r[23:24], r[20:21], r[23:24]
000968  97b9a903  sll.d r[20:21], r[20:21], r26
00096c  0f124b60  div.sl r[5:6], r[23:24], r[5:6]
000970  330b0428  zext_int2long r[23:24], r8
000974  8b293c11  add.ul r[20:21], r[25:26], r[20:21]
000978  9f0c4001  addli r25, zero, 160
00097c  1f5c0000  addli r24, zero, 5
000980  15000a04  dma_cfg zero, r20, zero, 2
000984  15881906  dma_cfg r16, r19, r1, 3
000988  0b3b6241  min.sl r[23:24], r[5:6], r[23:24]
00098c  0b324b18  sub.sl r[5:6], r[23:24], r[5:6]
000990  ab0b0300  lui r23, 48
000994  1f0bc000  addli r22, zero, 96
000998  1f020201  addli r4, r4, 128
00099c  95864608  dma_cfg r13, r13, r4, 4
0009a0  35000000  dma_run zero
0009a4  1d100900  unlock r18
0009a8  7d800d00  xsignal r27, 0
0009ac  5b060000  j 48
0009b0  7d900d00  xwait r27, 0
0009b4  7d100c00  xwait r24, 0
0009b8  1d000000  lock zero, zero
0009bc  81080000  ds_cfg r17, zero, 0
0009c0  81000002  ds_cfg r1, zero, 1
0009c4  8101001c  ds_cfg r3, zero, 14
0009c8  8106001a  ds_cfg r13, zero, 13
0009cc  a1133802  shuffle_batch r7, r16, r3, 1
0009d0  1d100000  unlock zero
0009d4  7d800800  xsignal r17, 0
0009d8  7d000900  xsignal r18, 0
0009dc  0b129539  mod.s r4, r10, r25
0009e0  1f150500  addli r10, r10, 1
0009e4  9f940400  addli r9, r9, 1
0009e8  1b34d200  slli r8, r4, 13
0009ec  3b4c21ff  bneq r2, r18, -240
0009f0  1f180000  addli r16, zero, 1
0009f4  9f190000  addli r19, zero, 1
0009f8  1f0a0000  addli r20, zero, 0
0009fc  7d100900  xwait r18, 0
000a00  7d100300  xwait r6, 0
000a04  b7700700  beq r14, zero, 60
000a08  1b32ca00  slli r4, r20, 12
000a0c  9b328a00  slli r5, r20, 8
000a10  1d000800  lock zero, r16
000a14  1f1a0000  addli r20, zero, 1
000a18  8980d100  mm_cfg r1, r3, r13, 0
000a1c  17128200  or r4, r4, r8
000a20  97925201  or r5, r5, r21
000a24  09080905  mm_cfg r16, r18, r16, 2
000a28  a992430a  mm_acc r5, r7, r4, 5
000a2c  1b821900  andi r4, r19, 1
000a30  9f090000  addli r19, zero, 0
000a34  1d100800  unlock r16
000a38  3b4f02fe  bneq r4, zero, -48
000a3c  5b070000  j 56
000a40  1b32ca00  slli r4, r20, 12
000a44  9b328a00  slli r5, r20, 8
000a48  1d000800  lock zero, r16
000a4c  1f1a0000  addli r20, zero, 1
000a50  8980d100  mm_cfg r1, r3, r13, 0
000a54  17128200  or r4, r4, r8
000a58  97925201  or r5, r5, r21
000a5c  09080905  mm_cfg r16, r18, r16, 2
000a60  a982430a  mm r5, r7, r4, 5
000a64  1b821900  andi r4, r19, 1
000a68  9f090000  addli r19, zero, 0
000a6c  1d100800  unlock r16
000a70  3b4f02fe  bneq r4, zero, -48
000a74  1b821700  andi r4, r15, 1
000a78  9f121000  addli r5, zero, 9
000a7c  7d000c00  xsignal r24, 0
000a80  7d800200  xsignal r5, 0
000a84  3b0a02fe  bneq r4, zero, -384
000a88  db180000  j 196
000a8c  0b92c439  mod.s r4, r9, r28
000a90  8b129539  mod.s r5, r10, r25
000a94  1f150500  addli r10, r10, 1
000a98  9f940400  addli r9, r9, 1
000a9c  1bb4d200  slli r8, r5, 13
000aa0  1b32d200  slli r4, r4, 13
000aa4  ab421100  lui r5, 276
000aa8  0b185210  add.s r16, r4, r5
000aac  1f720000  addli r4, zero, 7
000ab0  37614100  beq r2, r4, 88
000ab4  bb6ca1ff  bneq r2, r26, -200
000ab8  9f730000  addli r7, zero, 7
000abc  1f122000  addli r4, zero, 17
000ac0  7d900300  xwait r7, 0
000ac4  eb530fa0  load.d r[8:9], -1536(r30)
000ac8  17b24902  sll.d r[5:6], r[20:21], r4
000acc  1d000900  lock zero, r18
000ad0  150d0d00  dma_cfg r26, r26, zero, 0
000ad4  0ba24310  add.ul r[5:6], r[8:9], r[5:6]
000ad8  9f030002  addli r7, zero, 256
000adc  15800204  dma_cfg zero, r5, zero, 2
000ae0  15087206  dma_cfg r16, r4, r7, 3
000ae4  1f020020  addli r4, zero, 4096
000ae8  95033208  dma_cfg r7, r4, r3, 4
000aec  1f620000  addli r4, zero, 6
000af0  35000000  dma_run zero
000af4  1d100900  unlock r18
000af8  7d000200  xsignal r4, 0
000afc  1b821700  andi r4, r15, 1
000b00  3b1802fe  bneq r4, zero, -508
000b04  db080000  j 68
000b08  1f620000  addli r4, zero, 6
000b0c  7d100200  xwait r4, 0
000b10  1f121000  addli r4, zero, 9
000b14  7d100200  xwait r4, 0
000b18  1d000000  lock zero, zero
000b1c  1f720000  addli r4, zero, 7
000b20  81080000  ds_cfg r17, zero, 0
000b24  81060002  ds_cfg r13, zero, 1
000b28  8101001c  ds_cfg r3, zero, 14
000b2c  8106001a  ds_cfg r13, zero, 13
000b30  41043804  shuffle_coa r8, r16, r3, 2
000b34  1d100000  unlock zero
000b38  7d000200  xsignal r4, 0
000b3c  7d000300  xsignal r6, 0
000b40  1b821700  andi r4, r15, 1
000b44  3b0702fe  bneq r4, zero, -576
000b48  3b302101  bneq r2, r18, 12
000b4c  1f221000  addli r4, zero, 10
000b50  7d000200  xsignal r4, 0
000b54  1f02000f  addli r4, zero, 1920
000b58  6344fff3  loadli.w r8,  -1540(r30)
000b5c  338b0628  zext_int2long r[23:24], r13
000b60  1f081000  addli r16, zero, 8
000b64  33070228  zext_int2long r[15:16], r4
000b68  6342dff3  loadli.w r4,  -1556(r30)
000b6c  0b141439  mod.s r8, r8, r17
000b70  33020228  zext_int2long r[5:6], r4
000b74  0b23e240  min.ul r[7:8], r[5:6], r[15:16]
000b78  27030301  addli.d r[7:8], r[7:8], 128
000b7c  0b234348  max.ul r[7:8], r[7:8], r[5:6]
000b80  0b324318  sub.sl r[5:6], r[7:8], r[5:6]
000b84  9b339400  slli r7, r8, 9
000b88  8b226241  min.ul r[6:7], r[5:6], r[23:24]
000b8c  2b621800  lui r4, 390
000b90  8b934310  add.s r7, r7, r4
000b94  1f620000  addli r4, zero, 6
000b98  b70041fe  beq r2, r4, -992
000b9c  3b718101  bneq r2, r24, 92
000ba0  1f221000  addli r4, zero, 10
000ba4  9f020000  addli r5, zero, 0
000ba8  2b030100  lui r6, 16
000bac  7d100200  xwait r4, 0
000bb0  1f521000  addli r4, zero, 13
000bb4  7d100200  xwait r4, 0
000bb8  1d800d00  lock zero, r27
000bbc  2b02803f  lui r4, 260096
000bc0  0d000002  ew_cfg zero, zero, zero, 1
000bc4  0d120200  ewcoeff_cfg r4, r4, zero, 0
000bc8  1f72f000  addli r4, zero, 127
000bcc  0d000204  ew_cfg zero, r4, zero, 2
000bd0  0d0d0006  ew_cfg r26, zero, zero, 3
000bd4  0b925a10  add.s r4, r21, r5
000bd8  9f820204  addli r5, r5, 512
000bdc  2d027200  dsmadd r4, r4, r7, 0
000be0  bbdf62fe  bneq r5, r6, -12
000be4  1f321000  addli r4, zero, 11
000be8  1d900d00  unlock r27
000bec  7d000200  xsignal r4, 0
000bf0  1f621000  addli r4, zero, 14
000bf4  5b81ffff  j -1016
000bf8  3b2001fe  bneq r2, zero, -1016
000bfc  6342aff3  loadli.w r4,  -1580(r30)
000c00  eb598f9d  load.d r[20:21], -1576(r30)
000c04  b3130228  sext_int2long r[8:9], r4
000c08  1f322000  addli r4, zero, 19
000c0c  97b94902  sll.d r[20:21], r[20:21], r4
000c10  0bb7e340  min.sl r[15:16], r[8:9], r[15:16]
000c14  1f321000  addli r4, zero, 11
000c18  73383fa1  store.d r[20:21], -1520(r30)
000c1c  eb590f9e  load.d r[20:21], -1568(r30)
000c20  27070701  addli.d r[15:16], r[15:16], 128
000c24  0b377748  max.sl r[15:16], r[15:16], r[8:9]
000c28  97b9a903  sll.d r[20:21], r[20:21], r26
000c2c  73343fa1  store.d r[20:21], -1528(r30)
000c30  7d100200  xwait r4, 0
000c34  7330efa0  store.d r[15:16], -1536(r30)
000c38  eb598f01  load.d r[20:21], 24(r30)
000c3c  6b570fa1  load.d r[15:16], -1520(r30)
000c40  1bb22200  slli r4, r5, 2
000c44  9f020020  addli r5, zero, 4096
000c48  8ba9e910  add.ul r[20:21], r[20:21], r[15:16]
000c4c  6b570fa0  load.d r[15:16], -1536(r30)
000c50  8b337718  sub.sl r[8:9], r[15:16], r[8:9]
000c54  6b578fa0  load.d r[15:16], -1528(r30)
000c58  1d000c00  lock zero, r24
000c5c  150d0000  dma_cfg r26, zero, zero, 0
000c60  15000d02  dma_cfg zero, r26, zero, 1
000c64  8bb36341  min.sl r[8:9], r[8:9], r[23:24]
000c68  0ba7e910  add.ul r[15:16], r[20:21], r[15:16]
000c6c  95070004  dma_cfg r15, zero, zero, 2
000c70  15874a06  dma_cfg r14, r21, r4, 3
000c74  1f020004  addli r4, zero, 512
000c78  95027208  dma_cfg r5, r4, r7, 4
000c7c  1f421000  addli r4, zero, 12
000c80  35000000  dma_run zero
000c84  1d100c00  unlock r24
000c88  db6effff  j -1164
000c8c  7d000000  xsignal zero, 0
000c90  bb600100  bneq r2, zero, 56
000c94  9f200000  addli r1, zero, 2
000c98  7d100000  xwait zero, 0
000c9c  7d100000  xwait zero, 0
000ca0  7d100000  xwait zero, 0
000ca4  7d100000  xwait zero, 0
000ca8  7d100000  xwait zero, 0
000cac  7d100000  xwait zero, 0
000cb0  7d100000  xwait zero, 0
000cb4  7d100000  xwait zero, 0
000cb8  1d800000  lock zero, r1
000cbc  0d000020  ew_cfg zero, zero, zero, 16
000cc0  1d900000  unlock r1
000cc4  7d400000  xsignal_mode_cfg zero
000cc8  9f8e8e0c  addli sp, sp, 1600
000ccc  00a00300  mfence { lm, sm, gm }
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
