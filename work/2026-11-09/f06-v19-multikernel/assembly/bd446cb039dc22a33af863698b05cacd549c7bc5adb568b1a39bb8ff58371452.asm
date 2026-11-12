; SHA-256 bd446cb039dc22a33af863698b05cacd549c7bc5adb568b1a39bb8ff58371452
; P800 SDNN · XTDK LLVM 19 · 1003 / 1003 words decoded
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
0000b4  9f8ecef0  addli sp, sp, -1952
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  1f8fce0e  addli r30, sp, 1888
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  dbe90000  j 1868
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
0006a0  9f601000  addli r1, zero, 14
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
00081c  7d800000  xsignal r1, 0
000820  7d800000  xsignal r1, 0
000824  7d800000  xsignal r1, 0
000828  e3004f00  loadli.w r1,  32(r30)
00082c  e3414f00  loadli.w r3,  36(r30)
000830  80d20002  load_param_i r5, 1
000834  63025f00  loadli.w r4,  40(r30)
000838  670f0ffe  storeli.w zero, -16(r30)
00083c  67470ffc  storeli.w zero, -396(r30)
000840  670f0ff6  storeli.w zero, -1040(r30)
000844  67070ff4  storeli.w zero, -1424(r30)
000848  e74e0ff0  storeli.w zero, -1812(r30)
00084c  8b901120  mul.s r1, r3, r1
000850  9f810200  addli r3, r5, 0
000854  8b914050  fmac.s r3, r1, r4
000858  0b924020  mul.s r4, r1, r4
00085c  9ff1f1ff  addli r3, r3, -1
000860  8b915130  div.s r3, r3, r5
000864  80520002  load_param_i r5, 0
000868  8b905120  mul.s r1, r3, r5
00086c  8b915150  fmac.s r3, r3, r5
000870  8b914140  min.s r3, r3, r4
000874  cbc21102  ble.s r3, r1, 1200
000878  b3930028  sext_int2long r[8:9], r1
00087c  e305efff  loadli.w r11,  -16(r30)
000880  e344effc  loadli.w r9,  -396(r30)
000884  6305eff7  loadli.w r10,  -1040(r30)
000888  e300eff4  loadli.w r1,  -1424(r30)
00088c  e342dff1  loadli.w r5,  -1812(r30)
000890  b3910128  sext_int2long r[4:5], r3
000894  1f160000  addli r12, zero, 1
000898  1f480000  addli r16, zero, 4
00089c  1f290000  addli r18, zero, 2
0008a0  9f7ab000  addli r21, zero, 95
0008a4  2bcb0000  lui r22, 12
0008a8  9f5b0000  addli r23, zero, 5
0008ac  1f0c4000  addli r24, zero, 32
0008b0  9f0c8000  addli r25, zero, 64
0008b4  1f0d4001  addli r26, zero, 160
0008b8  9f0d0000  addli r27, zero, 0
0008bc  73303f8a  store.d r[4:5], -1888(r30)
0008c0  5b0d0000  j 104
0008c4  eb530f01  load.d r[8:9], 16(r30)
0008c8  eb568f8b  load.d r[14:15], -1864(r30)
0008cc  9bb22200  slli r5, r5, 2
0008d0  8ba3d310  add.ul r[8:9], r[8:9], r[14:15]
0008d4  9f661000  addli r13, zero, 14
0008d8  7d900600  xwait r13, 0
0008dc  1d000800  lock zero, r16
0008e0  15000000  dma_cfg zero, zero, zero, 0
0008e4  15000404  dma_cfg zero, r8, zero, 2
0008e8  95805306  dma_cfg r1, r7, r5, 3
0008ec  9f000002  addli r1, zero, 256
0008f0  9580c008  dma_cfg r1, r1, r12, 4
0008f4  9f501000  addli r1, zero, 13
0008f8  35000000  dma_run zero
0008fc  1d100800  unlock r16
000900  7d800000  xsignal r1, 0
000904  e34d9ff1  loadli.w r27,  -1844(r30)
000908  eb530f8d  load.d r[8:9], -1840(r30)
00090c  eb520f8a  load.d r[6:7], -1888(r30)
000910  9f950500  addli r11, r11, 1
000914  9f900900  addli r1, r19, 1
000918  a7930300  addli.d r[8:9], r[8:9], 1
00091c  13b35304  setlt.sl r6, r[8:9], r[6:7]
000920  9f120200  addli r5, r4, 1
000924  37000302  beq r6, zero, 1024
000928  e74dbff0  storeli.w r11, -1828(r30)
00092c  3b300101  bneq r2, r16, 12
000930  1f421000  addli r4, zero, 12
000934  7d100200  xwait r4, 0
000938  63025f00  loadli.w r4,  40(r30)
00093c  63434f00  loadli.w r6,  36(r30)
000940  73387f8c  store.d r[8:9], -1840(r30)
000944  9f061000  addli r13, zero, 8
000948  9f080000  addli r17, zero, 0
00094c  0b924330  div.s r4, r7, r4
000950  1f340000  addli r8, zero, 3
000954  0b948d38  mod.s r8, r27, r8
000958  9f9d0d00  addli r27, r27, 1
00095c  e74cbff1  storeli.w r27, -1844(r30)
000960  9f1d0000  addli r27, zero, 1
000964  0b126230  div.s r4, r4, r6
000968  1f030001  addli r6, zero, 128
00096c  1b3ee400  slli r28, r8, 14
000970  1f640000  addli r8, zero, 6
000974  0b136230  div.s r6, r4, r6
000978  9b333300  slli r7, r6, 3
00097c  1b337300  slli r6, r6, 7
000980  8b157618  sub.s r11, r12, r7
000984  0b136218  sub.s r6, r4, r6
000988  8b95d540  min.s r11, r11, r13
00098c  0b12b238  mod.s r4, r4, r11
000990  0b13b330  div.s r6, r6, r11
000994  0b924310  add.s r4, r7, r4
000998  9b316300  slli r3, r6, 6
00099c  33030328  zext_int2long r[7:8], r6
0009a0  17338302  sll.d r[7:8], r[7:8], r8
0009a4  670c3ff0  storeli.w r3, -1856(r30)
0009a8  9b316200  slli r3, r4, 6
0009ac  b3060228  zext_int2long r[14:15], r4
0009b0  1f621000  addli r4, zero, 14
0009b4  1f040000  addli r8, zero, 0
0009b8  97392303  sll.d r[20:21], r[7:8], r18
0009bc  7338df8a  store.d r[14:15], -1872(r30)
0009c0  17b34602  sll.d r[7:8], r[14:15], r4
0009c4  eb568f00  load.d r[14:15], 8(r30)
0009c8  e70a3ff0  storeli.w r3, -1880(r30)
0009cc  733c3f8b  store.d r[20:21], -1864(r30)
0009d0  8ba13611  add.ul r[4:5], r[14:15], r[20:21]
0009d4  eb560f00  load.d r[14:15], 0(r30)
0009d8  1f0ac000  addli r20, zero, 96
0009dc  73303f8e  store.d r[4:5], -1824(r30)
0009e0  0ba36610  add.ul r[7:8], r[14:15], r[7:8]
0009e4  5b030000  j 24
0009e8  9b851d00  andi r11, r27, 1
0009ec  37c70500  beq r11, zero, 464
0009f0  1f140400  addli r8, r8, 1
0009f4  9f180000  addli r17, zero, 1
0009f8  9f0d0000  addli r27, zero, 0
0009fc  8b998010  add.s r19, r1, r8
000a00  0b928210  add.s r4, r5, r8
000a04  8b955939  mod.s r11, r19, r21
000a08  8b164239  mod.s r13, r4, r20
000a0c  9bb5d500  slli r11, r11, 13
000a10  9bb6d600  slli r13, r13, 13
000a14  8b956511  add.s r11, r11, r22
000a18  37412101  beq r2, r18, 80
000a1c  33870828  zext_int2long r[15:16], r17
000a20  9f680000  addli r17, zero, 6
000a24  bb321101  bneq r2, r17, 172
000a28  9f780000  addli r17, zero, 7
000a2c  9f010002  addli r3, zero, 256
000a30  17371703  sll.d r[15:16], r[15:16], r17
000a34  9f380000  addli r17, zero, 3
000a38  7d900800  xwait r17, 0
000a3c  1d000800  lock zero, r16
000a40  0b27e310  add.ul r[15:16], r[7:8], r[15:16]
000a44  9f080001  addli r17, zero, 128
000a48  15000000  dma_cfg zero, zero, zero, 0
000a4c  15800704  dma_cfg zero, r15, zero, 2
000a50  95051707  dma_cfg r11, r14, r17, 3
000a54  95889109  dma_cfg r17, r3, r25, 4
000a58  35000000  dma_run zero
000a5c  1d100800  unlock r16
000a60  7d000900  xsignal r18, 0
000a64  db060000  j 52
000a68  7d100900  xwait r18, 0
000a6c  7d900b00  xwait r23, 0
000a70  1d000000  lock zero, zero
000a74  01090000  ds_cfg r18, zero, 0
000a78  010c0002  ds_cfg r24, zero, 1
000a7c  010c001c  ds_cfg r24, zero, 14
000a80  810c001a  ds_cfg r25, zero, 13
000a84  a1968503  shuffle_batch r13, r11, r24, 1
000a88  9f350000  addli r11, zero, 3
000a8c  1d100000  unlock zero
000a90  7d800500  xsignal r11, 0
000a94  7d000800  xsignal r16, 0
000a98  8b15a539  mod.s r11, r10, r26
000a9c  1f150500  addli r10, r10, 1
000aa0  9f940400  addli r9, r9, 1
000aa4  9bb8d500  slli r17, r11, 13
000aa8  3b0d01ff  bneq r2, r16, -192
000aac  9f051000  addli r11, zero, 8
000ab0  7d100800  xwait r16, 0
000ab4  7d900500  xwait r11, 0
000ab8  1d000600  lock zero, r12
000abc  890c9c01  mm_cfg r25, r24, r25, 0
000ac0  0909c904  mm_cfg r18, r18, r12, 2
000ac4  37220400  beq r8, zero, 136
000ac8  299e1611  mm_acc r28, r13, r17, 8
000acc  db100000  j 132
000ad0  9f61b000  addli r3, zero, 94
000ad4  8b18a539  mod.s r17, r10, r26
000ad8  1f150500  addli r10, r10, 1
000adc  8b953438  mod.s r11, r9, r3
000ae0  aba10c00  lui r3, 202
000ae4  9f940400  addli r9, r9, 1
000ae8  9bb8d800  slli r17, r17, 13
000aec  9bb5d500  slli r11, r11, 13
000af0  8b953510  add.s r11, r11, r3
000af4  9f710000  addli r3, zero, 7
000af8  b7513100  beq r2, r3, 116
000afc  bb3ec1fe  bneq r2, r12, -84
000b00  9f112000  addli r3, zero, 17
000b04  97363702  sll.d r[14:15], r[15:16], r3
000b08  9f710000  addli r3, zero, 7
000b0c  9f070002  addli r15, zero, 256
000b10  7d900100  xwait r3, 0
000b14  eb5a0f8e  load.d r[22:23], -1824(r30)
000b18  1d000800  lock zero, r16
000b1c  15000000  dma_cfg zero, zero, zero, 0
000b20  8ba6da10  add.ul r[14:15], r[22:23], r[14:15]
000b24  2bcb0000  lui r22, 12
000b28  9f7ab000  addli r21, zero, 95
000b2c  15000704  dma_cfg zero, r14, zero, 2
000b30  9585f606  dma_cfg r11, r13, r15, 3
000b34  9f050020  addli r11, zero, 4096
000b38  95878509  dma_cfg r15, r11, r24, 4
000b3c  35000000  dma_run zero
000b40  1d100800  unlock r16
000b44  9f650000  addli r11, zero, 6
000b48  db0b0000  j 92
000b4c  298e1611  mm r28, r13, r17, 8
000b50  9b851d00  andi r11, r27, 1
000b54  9f161000  addli r13, zero, 9
000b58  1d100600  unlock r12
000b5c  7d800b00  xsignal r23, 0
000b60  7d800600  xsignal r13, 0
000b64  3bba05fe  bneq r11, zero, -372
000b68  db090000  j 76
000b6c  9f660000  addli r13, zero, 6
000b70  9f710000  addli r3, zero, 7
000b74  7d900600  xwait r13, 0
000b78  9f161000  addli r13, zero, 9
000b7c  7d900600  xwait r13, 0
000b80  1d000000  lock zero, zero
000b84  01090000  ds_cfg r18, zero, 0
000b88  810c0002  ds_cfg r25, zero, 1
000b8c  010c001c  ds_cfg r24, zero, 14
000b90  810c001a  ds_cfg r25, zero, 13
000b94  c1888505  shuffle_coa r17, r11, r24, 2
000b98  9f051000  addli r11, zero, 8
000b9c  1d100000  unlock zero
000ba0  7d800100  xsignal r3, 0
000ba4  7d800500  xsignal r11, 0
000ba8  9b851d00  andi r11, r27, 1
000bac  3b9905fe  bneq r11, zero, -444
000bb0  3b300101  bneq r2, r16, 12
000bb4  9f201000  addli r1, zero, 10
000bb8  7d800000  xsignal r1, 0
000bbc  e3008ff1  loadli.w r1,  -1856(r30)
000bc0  e345bff1  loadli.w r11,  -1828(r30)
000bc4  b3820028  zext_int2long r[6:7], r1
000bc8  9f008007  addli r1, zero, 960
000bcc  b3830028  zext_int2long r[8:9], r1
000bd0  9f300000  addli r1, zero, 3
000bd4  8ba37240  min.ul r[8:9], r[6:7], r[8:9]
000bd8  8b901538  mod.s r1, r11, r1
000bdc  a7838300  addli.d r[8:9], r[8:9], 64
000be0  8ba65348  max.ul r[14:15], r[8:9], r[6:7]
000be4  b3830c28  zext_int2long r[8:9], r25
000be8  8bb25618  sub.sl r[6:7], r[14:15], r[6:7]
000bec  9bb08000  slli r1, r1, 8
000bf0  ab661800  lui r13, 390
000bf4  8b90d010  add.s r1, r1, r13
000bf8  8ba27240  min.ul r[6:7], r[6:7], r[8:9]
000bfc  9f660000  addli r13, zero, 6
000c00  3713d1fe  beq r2, r13, -828
000c04  e34d9ff1  loadli.w r27,  -1844(r30)
000c08  3b717101  bneq r2, r23, 92
000c0c  1f231000  addli r6, zero, 10
000c10  9f020000  addli r5, zero, 0
000c14  ab430000  lui r7, 4
000c18  7d100300  xwait r6, 0
000c1c  1f531000  addli r6, zero, 13
000c20  7d100300  xwait r6, 0
000c24  1d000900  lock zero, r18
000c28  2b03803f  lui r6, 260096
000c2c  0d000002  ew_cfg zero, zero, zero, 1
000c30  0d130300  ewcoeff_cfg r6, r6, zero, 0
000c34  1f737000  addli r6, zero, 63
000c38  0d000304  ew_cfg zero, r6, zero, 2
000c3c  0d060006  ew_cfg r12, zero, zero, 3
000c40  0b135e10  add.s r6, r28, r5
000c44  9f820202  addli r5, r5, 256
000c48  2d031300  dsmadd r6, r6, r1, 0
000c4c  bbdf72fe  bneq r5, r7, -12
000c50  9f301000  addli r1, zero, 11
000c54  1d100900  unlock r18
000c58  7d800000  xsignal r1, 0
000c5c  9f601000  addli r1, zero, 14
000c60  db170000  j 188
000c64  bb1201fe  bneq r2, zero, -860
000c68  e3005ff1  loadli.w r1,  -1880(r30)
000c6c  73305f8c  store.d r[6:7], -1856(r30)
000c70  9f570000  addli r15, zero, 5
000c74  9f010002  addli r3, zero, 256
000c78  9f5b0000  addli r23, zero, 5
000c7c  b3960028  sext_int2long r[14:15], r1
000c80  9f202000  addli r1, zero, 18
000c84  7330df8e  store.d r[14:15], -1824(r30)
000c88  b3060028  zext_int2long r[14:15], zero
000c8c  eb520f8e  load.d r[6:7], -1824(r30)
000c90  8bb2d240  min.sl r[6:7], r[6:7], r[14:15]
000c94  eb560f8b  load.d r[14:15], -1872(r30)
000c98  97b61602  sll.d r[14:15], r[14:15], r1
000c9c  9f301000  addli r1, zero, 11
000ca0  7338df8a  store.d r[14:15], -1872(r30)
000ca4  a7868200  addli.d r[14:15], r[6:7], 64
000ca8  7d900000  xwait r1, 0
000cac  eb520f8e  load.d r[6:7], -1824(r30)
000cb0  8bb25648  max.sl r[6:7], r[14:15], r[6:7]
000cb4  eb568f01  load.d r[14:15], 24(r30)
000cb8  73345f8a  store.d r[6:7], -1880(r30)
000cbc  eb520f8b  load.d r[6:7], -1872(r30)
000cc0  8ba25610  add.ul r[6:7], r[14:15], r[6:7]
000cc4  eb568f8a  load.d r[14:15], -1880(r30)
000cc8  73385f8a  store.d r[6:7], -1872(r30)
000ccc  eb520f8e  load.d r[6:7], -1824(r30)
000cd0  8bb25618  sub.sl r[6:7], r[14:15], r[6:7]
000cd4  eb568f8b  load.d r[14:15], -1864(r30)
000cd8  73305f8e  store.d r[6:7], -1824(r30)
000cdc  eb520f8b  load.d r[6:7], -1872(r30)
000ce0  8ba6d210  add.ul r[14:15], r[6:7], r[14:15]
000ce4  eb520f8e  load.d r[6:7], -1824(r30)
000ce8  1d800700  lock zero, r15
000cec  15000000  dma_cfg zero, zero, zero, 0
000cf0  15000602  dma_cfg zero, r12, zero, 1
000cf4  8bb37240  min.sl r[8:9], r[6:7], r[8:9]
000cf8  eb520f8c  load.d r[6:7], -1856(r30)
000cfc  15070004  dma_cfg r14, zero, zero, 2
000d00  9bb02200  slli r1, r5, 2
000d04  95061e06  dma_cfg r13, r28, r1, 3
000d08  9f000020  addli r1, zero, 4096
000d0c  95807108  dma_cfg r1, r3, r7, 4
000d10  9f401000  addli r1, zero, 12
000d14  35000000  dma_run zero
000d18  1d900700  unlock r15
000d1c  7d800000  xsignal r1, 0
000d20  5b7dffff  j -1048
000d24  7d000000  xsignal zero, 0
000d28  bb600100  bneq r2, zero, 56
000d2c  9f200000  addli r1, zero, 2
000d30  7d100000  xwait zero, 0
000d34  7d100000  xwait zero, 0
000d38  7d100000  xwait zero, 0
000d3c  7d100000  xwait zero, 0
000d40  7d100000  xwait zero, 0
000d44  7d100000  xwait zero, 0
000d48  7d100000  xwait zero, 0
000d4c  7d100000  xwait zero, 0
000d50  1d800000  lock zero, r1
000d54  0d000020  ew_cfg zero, zero, zero, 16
000d58  1d900000  unlock r1
000d5c  7d400000  xsignal_mode_cfg zero
000d60  9f8ece0e  addli sp, sp, 1888
000d64  00a00300  mfence { lm, sm, gm }
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
