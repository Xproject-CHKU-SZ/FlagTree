; SHA-256 31826e01eac0e1b845343dd2e106b35d152c737c1df319e7d54ef00ff483816d
; P800 SDNN · XTDK LLVM 19 · 1011 / 1011 words decoded
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
000874  4bc31102  ble.s r3, r1, 1232
000878  b3910128  sext_int2long r[4:5], r3
00087c  6307efff  loadli.w r14,  -16(r30)
000880  e344effc  loadli.w r9,  -396(r30)
000884  6305eff7  loadli.w r10,  -1040(r30)
000888  33930028  sext_int2long r[7:8], r1
00088c  9f150000  addli r11, zero, 1
000890  9f680000  addli r17, zero, 6
000894  9f370000  addli r15, zero, 3
000898  1f480000  addli r16, zero, 4
00089c  1f290000  addli r18, zero, 2
0008a0  1f0ac000  addli r20, zero, 96
0008a4  9f7ab000  addli r21, zero, 95
0008a8  2bcb0000  lui r22, 12
0008ac  1f0c4000  addli r24, zero, 32
0008b0  9f0c8000  addli r25, zero, 64
0008b4  1f060002  addli r12, zero, 256
0008b8  9f090000  addli r19, zero, 0
0008bc  73303f8a  store.d r[4:5], -1888(r30)
0008c0  e301eff4  loadli.w r3,  -1424(r30)
0008c4  6342dff1  loadli.w r4,  -1812(r30)
0008c8  5b0d0000  j 104
0008cc  eb530f01  load.d r[8:9], 16(r30)
0008d0  6b5d8f8b  load.d r[27:28], -1864(r30)
0008d4  9f601000  addli r1, zero, 14
0008d8  7d900000  xwait r1, 0
0008dc  1d000800  lock zero, r16
0008e0  9bb02100  slli r1, r3, 2
0008e4  8ba3a311  add.ul r[8:9], r[8:9], r[27:28]
0008e8  15000000  dma_cfg zero, zero, zero, 0
0008ec  15000404  dma_cfg zero, r8, zero, 2
0008f0  15831306  dma_cfg r6, r7, r1, 3
0008f4  9f501000  addli r1, zero, 13
0008f8  1506b608  dma_cfg r12, r12, r11, 4
0008fc  35000000  dma_run zero
000900  1d100800  unlock r16
000904  7d800000  xsignal r1, 0
000908  e3499ff1  loadli.w r19,  -1844(r30)
00090c  6b530f8d  load.d r[7:8], -1840(r30)
000910  eb510f8a  load.d r[4:5], -1888(r30)
000914  1f170700  addli r14, r14, 1
000918  27130300  addli.d r[7:8], r[7:8], 1
00091c  93303304  setlt.sl r1, r[7:8], r[4:5]
000920  1f920800  addli r4, r17, 1
000924  9f910200  addli r3, r5, 1
000928  9f680000  addli r17, zero, 6
00092c  37e00002  beq r1, zero, 1048
000930  e70deff0  storeli.w r14, -1832(r30)
000934  3b300101  bneq r2, r16, 12
000938  9f401000  addli r1, zero, 12
00093c  7d900000  xwait r1, 0
000940  e3005f00  loadli.w r1,  40(r30)
000944  e3424f00  loadli.w r5,  36(r30)
000948  73386f8c  store.d r[7:8], -1840(r30)
00094c  1f071000  addli r14, zero, 8
000950  1f040000  addli r8, zero, 0
000954  1f1e0000  addli r28, zero, 1
000958  9f1b0000  addli r23, zero, 1
00095c  8b101330  div.s r1, r6, r1
000960  8b93f938  mod.s r7, r19, r15
000964  9f990900  addli r19, r19, 1
000968  e74c3ff1  storeli.w r19, -1844(r30)
00096c  9f090000  addli r19, zero, 0
000970  8b905030  div.s r1, r1, r5
000974  9f020001  addli r5, zero, 128
000978  9bb3e300  slli r7, r7, 14
00097c  e74d7ff0  storeli.w r7, -1828(r30)
000980  8b925030  div.s r5, r1, r5
000984  1bb33200  slli r6, r5, 3
000988  9bb27200  slli r5, r5, 7
00098c  8b966518  sub.s r13, r11, r6
000990  8b925018  sub.s r5, r1, r5
000994  9f650000  addli r11, zero, 6
000998  8b96e640  min.s r13, r13, r14
00099c  8b90d038  mod.s r1, r1, r13
0009a0  8b92d230  div.s r5, r5, r13
0009a4  8b101310  add.s r1, r6, r1
0009a8  1bb36200  slli r6, r5, 6
0009ac  670c6ff0  storeli.w r6, -1856(r30)
0009b0  b3820228  zext_int2long r[6:7], r5
0009b4  9bb36000  slli r7, r1, 6
0009b8  338d0028  zext_int2long r[27:28], r1
0009bc  9f601000  addli r1, zero, 14
0009c0  97b21203  sll.d r[6:7], r[6:7], r17
0009c4  7338af8b  store.d r[27:28], -1872(r30)
0009c8  e70a7ff0  storeli.w r7, -1880(r30)
0009cc  97b62203  sll.d r[14:15], r[6:7], r18
0009d0  97321d02  sll.d r[6:7], r[27:28], r1
0009d4  6b5d8f00  load.d r[27:28], 8(r30)
0009d8  733cdf8a  store.d r[14:15], -1864(r30)
0009dc  8b26dd10  add.ul r[14:15], r[27:28], r[14:15]
0009e0  6b5d0f00  load.d r[27:28], 0(r30)
0009e4  7330df8e  store.d r[14:15], -1824(r30)
0009e8  0b235d10  add.ul r[7:8], r[27:28], r[6:7]
0009ec  5b0a0000  j 80
0009f0  1f540000  addli r8, zero, 5
0009f4  7d100900  xwait r18, 0
0009f8  7d100400  xwait r8, 0
0009fc  1d000000  lock zero, zero
000a00  01090000  ds_cfg r18, zero, 0
000a04  010c0002  ds_cfg r24, zero, 1
000a08  010c001c  ds_cfg r24, zero, 14
000a0c  810c001a  ds_cfg r25, zero, 13
000a10  21978003  shuffle_batch r14, r1, r24, 1
000a14  1d100000  unlock zero
000a18  7d800700  xsignal r15, 0
000a1c  7d000800  xsignal r16, 0
000a20  1f150500  addli r10, r10, 1
000a24  9f940400  addli r9, r9, 1
000a28  9b801b00  andi r1, r23, 1
000a2c  b7960000  beq r1, zero, 420
000a30  9f990900  addli r19, r19, 1
000a34  1f140000  addli r8, zero, 1
000a38  9f0b0000  addli r23, zero, 0
000a3c  8b923111  add.s r5, r3, r19
000a40  8b183211  add.s r17, r4, r19
000a44  8b905239  mod.s r1, r5, r21
000a48  0b974839  mod.s r14, r17, r20
000a4c  9bb0d000  slli r1, r1, 13
000a50  1b37d700  slli r14, r14, 13
000a54  8b906011  add.s r1, r1, r22
000a58  376e21ff  beq r2, r18, -104
000a5c  330d0428  zext_int2long r[27:28], r8
000a60  bb70c101  bneq r2, r28, 60
000a64  1f740000  addli r8, zero, 7
000a68  7d900700  xwait r15, 0
000a6c  1d000800  lock zero, r16
000a70  15000000  dma_cfg zero, zero, zero, 0
000a74  173d8d02  sll.d r[27:28], r[27:28], r8
000a78  1f040001  addli r8, zero, 128
000a7c  0b2da311  add.ul r[27:28], r[7:8], r[27:28]
000a80  15800d04  dma_cfg zero, r27, zero, 2
000a84  95008d06  dma_cfg r1, r26, r8, 3
000a88  15049609  dma_cfg r8, r12, r25, 4
000a8c  35000000  dma_run zero
000a90  1d100800  unlock r16
000a94  7d000900  xsignal r18, 0
000a98  5bf1ffff  j -120
000a9c  9f60b000  addli r1, zero, 94
000aa0  1f044001  addli r8, zero, 160
000aa4  aba60c00  lui r13, 202
000aa8  8b901438  mod.s r1, r9, r1
000aac  0b148538  mod.s r8, r10, r8
000ab0  1f150500  addli r10, r10, 1
000ab4  9f940400  addli r9, r9, 1
000ab8  9bb0d000  slli r1, r1, 13
000abc  1b34d400  slli r8, r8, 13
000ac0  8b90d010  add.s r1, r1, r13
000ac4  9f760000  addli r13, zero, 7
000ac8  3771d100  beq r2, r13, 92
000acc  9f670000  addli r15, zero, 6
000ad0  3b42f100  bneq r2, r15, 144
000ad4  1f142000  addli r8, zero, 17
000ad8  173d8d02  sll.d r[27:28], r[27:28], r8
000adc  1f740000  addli r8, zero, 7
000ae0  7d100400  xwait r8, 0
000ae4  eb550f8e  load.d r[12:13], -1824(r30)
000ae8  1d000800  lock zero, r16
000aec  1f040002  addli r8, zero, 256
000af0  15000000  dma_cfg zero, zero, zero, 0
000af4  0bada511  add.ul r[27:28], r[12:13], r[27:28]
000af8  1f060002  addli r12, zero, 256
000afc  9f650000  addli r11, zero, 6
000b00  15800d04  dma_cfg zero, r27, zero, 2
000b04  95008d06  dma_cfg r1, r26, r8, 3
000b08  9f000020  addli r1, zero, 4096
000b0c  15848009  dma_cfg r8, r1, r24, 4
000b10  35000000  dma_run zero
000b14  1d100800  unlock r16
000b18  7d800700  xsignal r15, 0
000b1c  9f370000  addli r15, zero, 3
000b20  5be1ffff  j -248
000b24  9f161000  addli r13, zero, 9
000b28  7d900500  xwait r11, 0
000b2c  7d900600  xwait r13, 0
000b30  1d000000  lock zero, zero
000b34  01090000  ds_cfg r18, zero, 0
000b38  810c0002  ds_cfg r25, zero, 1
000b3c  010c001c  ds_cfg r24, zero, 14
000b40  810c001a  ds_cfg r25, zero, 13
000b44  41848005  shuffle_coa r8, r1, r24, 2
000b48  9f700000  addli r1, zero, 7
000b4c  1d100000  unlock zero
000b50  7d800000  xsignal r1, 0
000b54  9f001000  addli r1, zero, 8
000b58  7d800000  xsignal r1, 0
000b5c  dbd9ffff  j -308
000b60  9f650000  addli r11, zero, 6
000b64  9f370000  addli r15, zero, 3
000b68  bb500101  bneq r2, r16, 52
000b6c  9f001000  addli r1, zero, 8
000b70  7d100800  xwait r16, 0
000b74  1f1e0000  addli r28, zero, 1
000b78  7d900000  xwait r1, 0
000b7c  9f100000  addli r1, zero, 1
000b80  1d800000  lock zero, r1
000b84  890c9c01  mm_cfg r25, r24, r25, 0
000b88  09091904  mm_cfg r18, r18, r1, 2
000b8c  37f00900  beq r19, zero, 28
000b90  e340bff1  loadli.w r1,  -1828(r30)
000b94  a9108710  mm_acc r1, r14, r8, 8
000b98  5b030000  j 24
000b9c  9b801b00  andi r1, r23, 1
000ba0  3bca00fe  bneq r1, zero, -368
000ba4  5b070000  j 56
000ba8  e340bff1  loadli.w r1,  -1828(r30)
000bac  a9008710  mm r1, r14, r8, 8
000bb0  1f540000  addli r8, zero, 5
000bb4  1d100e00  unlock r28
000bb8  9b801b00  andi r1, r23, 1
000bbc  7d000400  xsignal r8, 0
000bc0  1f141000  addli r8, zero, 9
000bc4  7d000400  xsignal r8, 0
000bc8  bba900fe  bneq r1, zero, -408
000bcc  5b010000  j 8
000bd0  3b300101  bneq r2, r16, 12
000bd4  9f201000  addli r1, zero, 10
000bd8  7d800000  xsignal r1, 0
000bdc  e3008ff1  loadli.w r1,  -1856(r30)
000be0  6307bff1  loadli.w r14,  -1832(r30)
000be4  9f150000  addli r11, zero, 1
000be8  b3810028  zext_int2long r[4:5], r1
000bec  9f008007  addli r1, zero, 960
000bf0  33830028  zext_int2long r[7:8], r1
000bf4  8b10f738  mod.s r1, r14, r15
000bf8  0ba36140  min.ul r[7:8], r[4:5], r[7:8]
000bfc  27038300  addli.d r[7:8], r[7:8], 64
000c00  0b2d3348  max.ul r[27:28], r[7:8], r[4:5]
000c04  b3830c28  zext_int2long r[8:9], r25
000c08  9bb08000  slli r1, r1, 8
000c0c  2b631800  lui r6, 390
000c10  8b313d18  sub.sl r[4:5], r[27:28], r[4:5]
000c14  0b936010  add.s r6, r1, r6
000c18  8ba17140  min.ul r[4:5], r[4:5], r[8:9]
000c1c  b742b1fe  beq r2, r11, -848
000c20  e3499ff1  loadli.w r19,  -1844(r30)
000c24  9f500000  addli r1, zero, 5
000c28  bb011100  bneq r2, r1, 96
000c2c  9f211000  addli r3, zero, 10
000c30  9f000000  addli r1, zero, 0
000c34  2b420000  lui r4, 4
000c38  7d900100  xwait r3, 0
000c3c  9f511000  addli r3, zero, 13
000c40  7d900100  xwait r3, 0
000c44  1d000900  lock zero, r18
000c48  ab01803f  lui r3, 260096
000c4c  0d000002  ew_cfg zero, zero, zero, 1
000c50  8d910100  ewcoeff_cfg r3, r3, zero, 0
000c54  9f717000  addli r3, zero, 63
000c58  0d800104  ew_cfg zero, r3, zero, 2
000c5c  8d050006  ew_cfg r11, zero, zero, 3
000c60  e343bff1  loadli.w r7,  -1828(r30)
000c64  8b911310  add.s r3, r7, r1
000c68  9f800002  addli r1, r1, 256
000c6c  ad816100  dsmadd r3, r3, r6, 0
000c70  bbdf40fe  bneq r1, r4, -12
000c74  9f301000  addli r1, zero, 11
000c78  1d100900  unlock r18
000c7c  7d800000  xsignal r1, 0
000c80  9f601000  addli r1, zero, 14
000c84  5b170000  j 184
000c88  3b1201fe  bneq r2, zero, -892
000c8c  e3005ff1  loadli.w r1,  -1880(r30)
000c90  73303f8c  store.d r[4:5], -1856(r30)
000c94  339d0028  sext_int2long r[27:28], r1
000c98  9f202000  addli r1, zero, 18
000c9c  7330af8f  store.d r[27:28], -1824(r30)
000ca0  330d0028  zext_int2long r[27:28], zero
000ca4  eb510f8e  load.d r[4:5], -1824(r30)
000ca8  8bb1a141  min.sl r[4:5], r[4:5], r[27:28]
000cac  6b5d0f8b  load.d r[27:28], -1872(r30)
000cb0  173d1d02  sll.d r[27:28], r[27:28], r1
000cb4  9f301000  addli r1, zero, 11
000cb8  7338af8b  store.d r[27:28], -1872(r30)
000cbc  278d8100  addli.d r[27:28], r[4:5], 64
000cc0  7d900000  xwait r1, 0
000cc4  eb510f8e  load.d r[4:5], -1824(r30)
000cc8  8b313d48  max.sl r[4:5], r[27:28], r[4:5]
000ccc  6b5d8f01  load.d r[27:28], 24(r30)
000cd0  73343f8a  store.d r[4:5], -1880(r30)
000cd4  eb510f8b  load.d r[4:5], -1872(r30)
000cd8  8b213d10  add.ul r[4:5], r[27:28], r[4:5]
000cdc  6b5d8f8a  load.d r[27:28], -1880(r30)
000ce0  73383f8a  store.d r[4:5], -1872(r30)
000ce4  eb510f8e  load.d r[4:5], -1824(r30)
000ce8  8b313d18  sub.sl r[4:5], r[27:28], r[4:5]
000cec  6b5d8f8b  load.d r[27:28], -1864(r30)
000cf0  73303f8e  store.d r[4:5], -1824(r30)
000cf4  eb510f8b  load.d r[4:5], -1872(r30)
000cf8  0bada111  add.ul r[27:28], r[4:5], r[27:28]
000cfc  eb510f8e  load.d r[4:5], -1824(r30)
000d00  0bb37140  min.sl r[7:8], r[4:5], r[8:9]
000d04  1f540000  addli r8, zero, 5
000d08  1d000400  lock zero, r8
000d0c  15000000  dma_cfg zero, zero, zero, 0
000d10  15800502  dma_cfg zero, r11, zero, 1
000d14  eb510f8c  load.d r[4:5], -1856(r30)
000d18  950d0004  dma_cfg r27, zero, zero, 2
000d1c  9bb02100  slli r1, r3, 2
000d20  e341bff1  loadli.w r3,  -1828(r30)
000d24  158d1106  dma_cfg r26, r3, r1, 3
000d28  9f000020  addli r1, zero, 4096
000d2c  95006608  dma_cfg r1, r12, r6, 4
000d30  9f401000  addli r1, zero, 12
000d34  35000000  dma_run zero
000d38  1d100400  unlock r8
000d3c  7d800000  xsignal r1, 0
000d40  db79ffff  j -1076
000d44  7d000000  xsignal zero, 0
000d48  bb600100  bneq r2, zero, 56
000d4c  9f200000  addli r1, zero, 2
000d50  7d100000  xwait zero, 0
000d54  7d100000  xwait zero, 0
000d58  7d100000  xwait zero, 0
000d5c  7d100000  xwait zero, 0
000d60  7d100000  xwait zero, 0
000d64  7d100000  xwait zero, 0
000d68  7d100000  xwait zero, 0
000d6c  7d100000  xwait zero, 0
000d70  1d800000  lock zero, r1
000d74  0d000020  ew_cfg zero, zero, zero, 16
000d78  1d900000  unlock r1
000d7c  7d400000  xsignal_mode_cfg zero
000d80  9f8ece0e  addli sp, sp, 1888
000d84  00a00300  mfence { lm, sm, gm }
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
000fac  00100000  exit
000fb0  00100000  exit
000fb4  00100000  exit
000fb8  00100000  exit
000fbc  00100000  exit
000fc0  00100000  exit
000fc4  00100000  exit
000fc8  00100000  exit
