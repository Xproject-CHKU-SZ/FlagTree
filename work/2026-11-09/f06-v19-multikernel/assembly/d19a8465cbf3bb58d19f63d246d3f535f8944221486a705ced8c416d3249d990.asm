; SHA-256 d19a8465cbf3bb58d19f63d246d3f535f8944221486a705ced8c416d3249d990
; P800 SDNN · XTDK LLVM 19 · 1288 / 1288 words decoded
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
0000b4  9f8e9ee8  addli sp, sp, -3000
0000b8  9f100000  addli r1, zero, 1
0000bc  003b0002  core_id r22
0000c0  1f8ffe16  addli r30, sp, 2936
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600b00  beq r22, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b690100  j 2888
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
000114  9f310000  addli r3, zero, 3
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
000418  9f101000  addli r1, zero, 9
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
000618  7d800100  xsignal r3, 0
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
000a1c  9f601000  addli r1, zero, 14
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
000c1c  7d800000  xsignal r1, 0
000c20  7d800000  xsignal r1, 0
000c24  e3004f00  loadli.w r1,  32(r30)
000c28  e3414f00  loadli.w r3,  36(r30)
000c2c  80d20002  load_param_i r5, 1
000c30  63025f00  loadli.w r4,  40(r30)
000c34  674f0ffe  storeli.w zero, -12(r30)
000c38  674f0ffa  storeli.w zero, -524(r30)
000c3c  674f0ff2  storeli.w zero, -1548(r30)
000c40  670f0fee  storeli.w zero, -2064(r30)
000c44  e74e0fe8  storeli.w zero, -2836(r30)
000c48  8b901120  mul.s r1, r3, r1
000c4c  9f810200  addli r3, r5, 0
000c50  8b914050  fmac.s r3, r1, r4
000c54  0b924020  mul.s r4, r1, r4
000c58  9ff1f1ff  addli r3, r3, -1
000c5c  8b915130  div.s r3, r3, r5
000c60  80520002  load_param_i r5, 0
000c64  8b905120  mul.s r1, r3, r5
000c68  8b915150  fmac.s r3, r3, r5
000c6c  8b914140  min.s r3, r3, r4
000c70  cba41102  ble.s r3, r1, 1320
000c74  33910128  sext_int2long r[3:4], r3
000c78  1f022fe9  addli r4, r30, -2928
000c7c  33980028  sext_int2long r[17:18], r1
000c80  6344efff  loadli.w r8,  -12(r30)
000c84  e344effb  loadli.w r9,  -524(r30)
000c88  6345eff3  loadli.w r10,  -1548(r30)
000c8c  e302efef  loadli.w r5,  -2064(r30)
000c90  634edfe9  loadli.w r28,  -2836(r30)
000c94  9f050001  addli r11, zero, 128
000c98  9f6a0000  addli r21, zero, 6
000c9c  1f270000  addli r14, zero, 2
000ca0  9f470000  addli r15, zero, 4
000ca4  ab8d0000  lui r27, 8
000ca8  9f3b0000  addli r23, zero, 3
000cac  1f0c8000  addli r24, zero, 64
000cb0  9f0c4000  addli r25, zero, 32
000cb4  1f090000  addli r18, zero, 0
000cb8  73302200  store.d r[3:4], 0(r4)
000cbc  1f71f00f  addli r2, zero, 2047
000cc0  9f011fe9  addli r3, r30, -2936
000cc4  ab80ffff  lui r1, 1048568
000cc8  73b01100  store.d r[2:3], 0(r3)
000ccc  1f510000  addli r2, zero, 5
000cd0  9f110000  addli r3, zero, 1
000cd4  5b0f0000  j 120
000cd8  9f065fe9  addli r13, r30, -2904
000cdc  6b580f01  load.d r[17:18], 16(r30)
000ce0  1b321200  slli r4, r4, 1
000ce4  6bd30600  load.d r[7:8], 0(r13)
000ce8  9f661000  addli r13, zero, 14
000cec  7d900600  xwait r13, 0
000cf0  1d800700  lock zero, r15
000cf4  17333302  sll.d r[7:8], r[7:8], r3
000cf8  15800100  dma_cfg zero, r3, zero, 0
000cfc  0b236810  add.ul r[7:8], r[17:18], r[7:8]
000d00  15800304  dma_cfg zero, r7, zero, 2
000d04  95004306  dma_cfg r1, r6, r4, 3
000d08  9f000002  addli r1, zero, 256
000d0c  95803508  dma_cfg r1, r11, r3, 4
000d10  9f501000  addli r1, zero, 13
000d14  35000000  dma_run zero
000d18  1d900700  unlock r15
000d1c  7d800000  xsignal r1, 0
000d20  9f008fe9  addli r1, r30, -2880
000d24  6bd80000  load.d r[17:18], 0(r1)
000d28  9f002fe9  addli r1, r30, -2928
000d2c  27180800  addli.d r[17:18], r[17:18], 1
000d30  63097fe9  loadli.w r18,  -2888(r30)
000d34  1f140400  addli r8, r8, 1
000d38  1f1e0d00  addli r28, r26, 1
000d3c  6bd20000  load.d r[5:6], 0(r1)
000d40  93304804  setlt.sl r1, r[17:18], r[5:6]
000d44  9f120600  addli r5, r12, 1
000d48  37c10002  beq r1, zero, 1104
000d4c  e74b8fe8  storeli.w r8, -2884(r30)
000d50  3b30fb00  bneq r22, r15, 12
000d54  9f401000  addli r1, zero, 12
000d58  7d900000  xwait r1, 0
000d5c  e3005f00  loadli.w r1,  40(r30)
000d60  1f028fe9  addli r4, r30, -2880
000d64  1f031000  addli r6, zero, 8
000d68  9f034fe9  addli r7, r30, -2912
000d6c  73300201  store.d r[17:18], 0(r4)
000d70  63424f00  loadli.w r4,  36(r30)
000d74  8b101830  div.s r1, r16, r1
000d78  0b944030  div.s r8, r1, r4
000d7c  0b16b430  div.s r12, r8, r11
000d80  9b303600  slli r1, r12, 3
000d84  0b121318  sub.s r4, r6, r1
000d88  8b166240  min.s r13, r4, r6
000d8c  1f431000  addli r6, zero, 12
000d90  0b12d438  mod.s r4, r8, r13
000d94  8b904010  add.s r1, r1, r4
000d98  1f720000  addli r4, zero, 7
000d9c  13021204  setlt.u r4, r4, r1
000da0  33880028  zext_int2long r[17:18], r1
000da4  73b00301  store.d r[17:18], 0(r7)
000da8  17386802  sll.d r[17:18], r[17:18], r6
000dac  1f03cfe9  addli r6, r30, -2848
000db0  73300301  store.d r[17:18], 0(r6)
000db4  3b300200  bneq r4, zero, 12
000db8  33030028  zext_int2long r[7:8], zero
000dbc  5b020000  j 16
000dc0  1f021fe9  addli r4, r30, -2936
000dc4  6b530200  load.d r[7:8], 0(r4)
000dc8  17036802  and.d r[7:8], r[17:18], r[7:8]
000dcc  1b367600  slli r12, r12, 7
000dd0  9bb06000  slli r1, r1, 6
000dd4  1f02bfe9  addli r4, r30, -2856
000dd8  1f180000  addli r16, zero, 1
000ddc  0b14c418  sub.s r8, r8, r12
000de0  0b16e938  mod.s r12, r18, r14
000de4  e7491fe8  storeli.w r1, -2916(r30)
000de8  73306200  store.d r[7:8], 0(r4)
000dec  1f190900  addli r18, r18, 1
000df0  1f020000  addli r4, zero, 0
000df4  0b14d430  div.s r8, r8, r13
000df8  e70b2fe9  storeli.w r18, -2888(r30)
000dfc  9b306400  slli r1, r8, 6
000e00  b3090428  zext_int2long r[20:21], r8
000e04  674b1fe8  storeli.w r1, -2892(r30)
000e08  9b30e600  slli r1, r12, 14
000e0c  17b35903  sll.d r[7:8], r[20:21], r21
000e10  e74c1fe8  storeli.w r1, -2868(r30)
000e14  9f005fe9  addli r1, r30, -2904
000e18  17360303  sll.d r[13:14], r[7:8], r16
000e1c  73b06000  store.d r[7:8], 0(r1)
000e20  6b538f00  load.d r[7:8], 8(r30)
000e24  9f00afe9  addli r1, r30, -2864
000e28  0b23c310  add.ul r[7:8], r[7:8], r[13:14]
000e2c  73b06000  store.d r[7:8], 0(r1)
000e30  9f000000  addli r1, zero, 0
000e34  db090000  j 76
000e38  7d100700  xwait r14, 0
000e3c  7d100100  xwait r2, 0
000e40  1d000000  lock zero, zero
000e44  810b0000  ds_cfg r23, zero, 0
000e48  010c0002  ds_cfg r24, zero, 1
000e4c  810c001c  ds_cfg r25, zero, 14
000e50  010c001a  ds_cfg r24, zero, 13
000e54  21949603  shuffle_batch r8, r13, r25, 1
000e58  1d100000  unlock zero
000e5c  7d800b00  xsignal r23, 0
000e60  7d800700  xsignal r15, 0
000e64  1f150500  addli r10, r10, 1
000e68  9f940400  addli r9, r9, 1
000e6c  1b021800  andi r4, r16, 1
000e70  37070200  beq r4, zero, 448
000e74  9f900000  addli r1, r1, 1
000e78  1f120000  addli r4, zero, 1
000e7c  1f080000  addli r16, zero, 0
000e80  0b961210  add.s r12, r5, r1
000e84  0b1d1e10  add.s r26, r28, r1
000e88  1f038001  addli r6, zero, 192
000e8c  0b14b638  mod.s r8, r12, r11
000e90  8b166d38  mod.s r13, r26, r6
000e94  9b39d400  slli r19, r8, 13
000e98  1bb4c600  slli r8, r13, 12
000e9c  8b96b911  add.s r13, r19, r27
000ea0  376eebfe  beq r22, r14, -104
000ea4  b3090228  zext_int2long r[20:21], r4
000ea8  bb613b00  bneq r22, r3, 120
000eac  1f02cfe9  addli r4, r30, -2848
000eb0  97b92902  sll.d r[20:21], r[20:21], r2
000eb4  b30a0c28  zext_int2long r[22:23], r24
000eb8  eb580f00  load.d r[18:19], 0(r30)
000ebc  6b530200  load.d r[7:8], 0(r4)
000ec0  1f02bfe9  addli r4, r30, -2856
000ec4  97996902  or.d r[20:21], r[20:21], r[7:8]
000ec8  6b530200  load.d r[7:8], 0(r4)
000ecc  1f028003  addli r4, zero, 448
000ed0  7d900b00  xwait r23, 0
000ed4  1d800700  lock zero, r15
000ed8  95810100  dma_cfg r3, r3, zero, 0
000edc  0bb36918  sub.sl r[7:8], r[20:21], r[7:8]
000ee0  97b93902  sll.d r[20:21], r[20:21], r3
000ee4  0f135361  div.sl r[7:8], r[7:8], r[22:23]
000ee8  b30a0228  zext_int2long r[22:23], r4
000eec  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
000ef0  15000a04  dma_cfg zero, r20, zero, 2
000ef4  95868907  dma_cfg r13, r19, r24, 3
000ef8  8b3a5341  min.sl r[22:23], r[7:8], r[22:23]
000efc  0bb36a18  sub.sl r[7:8], r[22:23], r[7:8]
000f00  9f6a0000  addli r21, zero, 6
000f04  003b0002  core_id r22
000f08  1f028300  addli r4, r6, 64
000f0c  95854508  dma_cfg r11, r11, r4, 4
000f10  35000000  dma_run zero
000f14  1d900700  unlock r15
000f18  7d000700  xsignal r14, 0
000f1c  5be9ffff  j -184
000f20  1f72f000  addli r4, zero, 127
000f24  1f73f001  addli r6, zero, 255
000f28  0b924438  mod.s r4, r9, r4
000f2c  0b136538  mod.s r6, r10, r6
000f30  1f150500  addli r10, r10, 1
000f34  9f940400  addli r9, r9, 1
000f38  9b33c200  slli r7, r4, 12
000f3c  1b32c300  slli r4, r6, 12
000f40  2b831000  lui r6, 264
000f44  8b966310  add.s r13, r7, r6
000f48  1f730000  addli r6, zero, 7
000f4c  37316b00  beq r22, r6, 76
000f50  3b125b01  bneq r22, r21, 132
000f54  1f022000  addli r4, zero, 16
000f58  17b34902  sll.d r[7:8], r[20:21], r4
000f5c  1f720000  addli r4, zero, 7
000f60  7d100200  xwait r4, 0
000f64  1f02afe9  addli r4, r30, -2864
000f68  eb580200  load.d r[18:19], 0(r4)
000f6c  1d800700  lock zero, r15
000f70  1f020010  addli r4, zero, 2048
000f74  95810100  dma_cfg r3, r3, zero, 0
000f78  0ba36810  add.ul r[7:8], r[18:19], r[7:8]
000f7c  15800304  dma_cfg zero, r7, zero, 2
000f80  9506b306  dma_cfg r13, r6, r11, 3
000f84  95059209  dma_cfg r11, r4, r25, 4
000f88  35000000  dma_run zero
000f8c  1d900700  unlock r15
000f90  7d800a00  xsignal r21, 0
000f94  5bdbffff  j -296
000f98  1f131000  addli r6, zero, 9
000f9c  7d900a00  xwait r21, 0
000fa0  7d100300  xwait r6, 0
000fa4  1d000000  lock zero, zero
000fa8  810b0000  ds_cfg r23, zero, 0
000fac  010c0002  ds_cfg r24, zero, 1
000fb0  810c001c  ds_cfg r25, zero, 14
000fb4  010c001a  ds_cfg r24, zero, 13
000fb8  41829605  shuffle_coa r4, r13, r25, 2
000fbc  1f720000  addli r4, zero, 7
000fc0  1d100000  unlock zero
000fc4  7d000200  xsignal r4, 0
000fc8  1f021000  addli r4, zero, 8
000fcc  7d000200  xsignal r4, 0
000fd0  dbd3ffff  j -356
000fd4  bb30fb00  bneq r22, r15, 44
000fd8  1f031000  addli r6, zero, 8
000fdc  7d900700  xwait r15, 0
000fe0  7d100300  xwait r6, 0
000fe4  1d800100  lock zero, r3
000fe8  098c8c01  mm_cfg r24, r25, r24, 0
000fec  89013704  mm_cfg r3, r14, r3, 2
000ff0  37f00000  beq r1, zero, 28
000ff4  63439fe9  loadli.w r6,  -2868(r30)
000ff8  2913440a  mm_acc r6, r8, r4, 5
000ffc  5b030000  j 24
001000  1b021800  andi r4, r16, 1
001004  bb4902fe  bneq r4, zero, -400
001008  db060000  j 52
00100c  63439fe9  loadli.w r6,  -2868(r30)
001010  2903440a  mm r6, r8, r4, 5
001014  1b021800  andi r4, r16, 1
001018  1f131000  addli r6, zero, 9
00101c  1d900100  unlock r3
001020  7d000100  xsignal r2, 0
001024  7d000300  xsignal r6, 0
001028  3b3902fe  bneq r4, zero, -436
00102c  5b010000  j 8
001030  3b30fb00  bneq r22, r15, 12
001034  9f201000  addli r1, zero, 10
001038  7d800000  xsignal r1, 0
00103c  e3406fe9  loadli.w r1,  -2892(r30)
001040  63447fe9  loadli.w r8,  -2884(r30)
001044  ab761800  lui r13, 391
001048  33820028  zext_int2long r[5:6], r1
00104c  9f008007  addli r1, zero, 960
001050  33830028  zext_int2long r[7:8], r1
001054  8b10e438  mod.s r1, r8, r14
001058  0b236240  min.ul r[7:8], r[5:6], r[7:8]
00105c  27038300  addli.d r[7:8], r[7:8], 64
001060  0b284348  max.ul r[17:18], r[7:8], r[5:6]
001064  9bb08000  slli r1, r1, 8
001068  33030c28  zext_int2long r[7:8], r24
00106c  0b324818  sub.sl r[5:6], r[17:18], r[5:6]
001070  8b90d010  add.s r1, r1, r13
001074  0b226240  min.ul r[5:6], r[5:6], r[7:8]
001078  b7013bfe  beq r22, r3, -928
00107c  9f068fe9  addli r13, r30, -2880
001080  6bd80600  load.d r[17:18], 0(r13)
001084  bb012b00  bneq r22, r2, 96
001088  9f221000  addli r5, zero, 10
00108c  1f020000  addli r4, zero, 0
001090  2b430000  lui r6, 4
001094  7d900200  xwait r5, 0
001098  9f521000  addli r5, zero, 13
00109c  7d900200  xwait r5, 0
0010a0  1d000700  lock zero, r14
0010a4  ab02803f  lui r5, 260096
0010a8  0d000002  ew_cfg zero, zero, zero, 1
0010ac  8d920200  ewcoeff_cfg r5, r5, zero, 0
0010b0  9f727000  addli r5, zero, 63
0010b4  0d800204  ew_cfg zero, r5, zero, 2
0010b8  8d010006  ew_cfg r3, zero, zero, 3
0010bc  e3439fe9  loadli.w r7,  -2868(r30)
0010c0  8b924310  add.s r5, r7, r4
0010c4  1f020202  addli r4, r4, 256
0010c8  ad821200  dsmadd r5, r5, r1, 0
0010cc  bb5f62fe  bneq r4, r6, -12
0010d0  9f301000  addli r1, zero, 11
0010d4  1d100700  unlock r14
0010d8  7d800000  xsignal r1, 0
0010dc  9f601000  addli r1, zero, 14
0010e0  5b160000  j 176
0010e4  634e9fe9  loadli.w r28,  -2868(r30)
0010e8  3b010bfe  bneq r22, zero, -960
0010ec  e3403fe9  loadli.w r1,  -2916(r30)
0010f0  1f014fe9  addli r2, r30, -2912
0010f4  9f065fe9  addli r13, r30, -2904
0010f8  6b5a0100  load.d r[21:22], 0(r2)
0010fc  33980028  sext_int2long r[17:18], r1
001100  9f008003  addli r1, zero, 448
001104  33890028  zext_int2long r[19:20], r1
001108  9f102000  addli r1, zero, 17
00110c  173a1a02  sll.d r[21:22], r[21:22], r1
001110  ebd00600  load.d r[2:3], 0(r13)
001114  9f06cfe9  addli r13, r30, -2848
001118  0b392841  min.sl r[19:20], r[17:18], r[19:20]
00111c  27098900  addli.d r[19:20], r[19:20], 64
001120  97b03002  sll.d r[2:3], r[2:3], r3
001124  0b390949  max.sl r[19:20], r[19:20], r[17:18]
001128  73b01600  store.d r[2:3], 0(r13)
00112c  eb508f01  load.d r[2:3], 24(r30)
001130  0b380919  sub.sl r[17:18], r[19:20], r[17:18]
001134  0baa4011  add.ul r[21:22], r[2:3], r[21:22]
001138  ebd00600  load.d r[2:3], 0(r13)
00113c  0b336840  min.sl r[7:8], r[17:18], r[7:8]
001140  9f560000  addli r13, zero, 5
001144  0b291a10  add.ul r[19:20], r[21:22], r[2:3]
001148  9f008fe9  addli r1, r30, -2880
00114c  1f010010  addli r2, zero, 2048
001150  9f6a0000  addli r21, zero, 6
001154  6bd80000  load.d r[17:18], 0(r1)
001158  9f301000  addli r1, zero, 11
00115c  7d900000  xwait r1, 0
001160  1d800600  lock zero, r13
001164  9b302200  slli r1, r4, 2
001168  95010000  dma_cfg r3, zero, zero, 0
00116c  15800102  dma_cfg zero, r3, zero, 1
001170  95090004  dma_cfg r19, zero, zero, 2
001174  15091e06  dma_cfg r18, r28, r1, 3
001178  9f000002  addli r1, zero, 256
00117c  15816008  dma_cfg r2, r1, r6, 4
001180  1f510000  addli r2, zero, 5
001184  9f401000  addli r1, zero, 12
001188  35000000  dma_run zero
00118c  1d900600  unlock r13
001190  7d800000  xsignal r1, 0
001194  db72ffff  j -1132
001198  7d000000  xsignal zero, 0
00119c  bb600b00  bneq r22, zero, 56
0011a0  9f200000  addli r1, zero, 2
0011a4  7d100000  xwait zero, 0
0011a8  7d100000  xwait zero, 0
0011ac  7d100000  xwait zero, 0
0011b0  7d100000  xwait zero, 0
0011b4  7d100000  xwait zero, 0
0011b8  7d100000  xwait zero, 0
0011bc  7d100000  xwait zero, 0
0011c0  7d100000  xwait zero, 0
0011c4  1d800000  lock zero, r1
0011c8  0d000020  ew_cfg zero, zero, zero, 16
0011cc  1d900000  unlock r1
0011d0  7d400000  xsignal_mode_cfg zero
0011d4  9f8efe16  addli sp, sp, 2936
0011d8  00a00300  mfence { lm, sm, gm }
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
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
0013bc  00100000  exit
0013c0  00100000  exit
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
