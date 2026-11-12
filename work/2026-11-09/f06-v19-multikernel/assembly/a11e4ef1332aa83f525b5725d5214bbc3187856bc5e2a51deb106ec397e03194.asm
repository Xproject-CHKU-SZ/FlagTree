; SHA-256 a11e4ef1332aa83f525b5725d5214bbc3187856bc5e2a51deb106ec397e03194
; P800 SDNN · XTDK LLVM 19 · 901 / 901 words decoded
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
0000b4  9f8e6ef4  addli sp, sp, -1488
0000b8  9f100000  addli r1, zero, 1
0000bc  80350002  core_id r11
0000c0  1f8f2e0b  addli r30, sp, 1424
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00500  beq r11, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  dbaf0000  j 1404
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1f520000  addli r4, zero, 5
0000fc  1d900100  unlock r3
000100  9f310000  addli r3, zero, 3
000104  80a10004  csr_set csr3, r1
000108  9f401000  addli r1, zero, 12
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  9f101000  addli r1, zero, 9
000124  7d000200  xsignal r4, 0
000128  7d000200  xsignal r4, 0
00012c  7d000200  xsignal r4, 0
000130  7d000200  xsignal r4, 0
000134  7d000200  xsignal r4, 0
000138  7d000200  xsignal r4, 0
00013c  7d000200  xsignal r4, 0
000140  7d000200  xsignal r4, 0
000144  7d000200  xsignal r4, 0
000148  7d000200  xsignal r4, 0
00014c  7d000200  xsignal r4, 0
000150  7d000200  xsignal r4, 0
000154  7d000200  xsignal r4, 0
000158  7d000200  xsignal r4, 0
00015c  7d000200  xsignal r4, 0
000160  7d000200  xsignal r4, 0
000164  7d000200  xsignal r4, 0
000168  7d000200  xsignal r4, 0
00016c  7d000200  xsignal r4, 0
000170  7d000200  xsignal r4, 0
000174  7d000200  xsignal r4, 0
000178  7d000200  xsignal r4, 0
00017c  7d000200  xsignal r4, 0
000180  7d000200  xsignal r4, 0
000184  7d000200  xsignal r4, 0
000188  7d000200  xsignal r4, 0
00018c  7d000200  xsignal r4, 0
000190  7d000200  xsignal r4, 0
000194  7d000200  xsignal r4, 0
000198  7d000200  xsignal r4, 0
00019c  7d000200  xsignal r4, 0
0001a0  7d000200  xsignal r4, 0
0001a4  7d000200  xsignal r4, 0
0001a8  7d000200  xsignal r4, 0
0001ac  7d000200  xsignal r4, 0
0001b0  7d000200  xsignal r4, 0
0001b4  7d000200  xsignal r4, 0
0001b8  7d000200  xsignal r4, 0
0001bc  7d000200  xsignal r4, 0
0001c0  7d000200  xsignal r4, 0
0001c4  7d000200  xsignal r4, 0
0001c8  7d000200  xsignal r4, 0
0001cc  7d000200  xsignal r4, 0
0001d0  7d000200  xsignal r4, 0
0001d4  7d000200  xsignal r4, 0
0001d8  7d000200  xsignal r4, 0
0001dc  7d000200  xsignal r4, 0
0001e0  7d000200  xsignal r4, 0
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  7d800100  xsignal r3, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  7d800100  xsignal r3, 0
000230  7d800100  xsignal r3, 0
000234  7d800100  xsignal r3, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800100  xsignal r3, 0
000254  7d800100  xsignal r3, 0
000258  7d800100  xsignal r3, 0
00025c  7d800100  xsignal r3, 0
000260  7d800100  xsignal r3, 0
000264  7d800100  xsignal r3, 0
000268  7d800100  xsignal r3, 0
00026c  7d800100  xsignal r3, 0
000270  7d800100  xsignal r3, 0
000274  7d800100  xsignal r3, 0
000278  7d800100  xsignal r3, 0
00027c  7d800100  xsignal r3, 0
000280  7d800100  xsignal r3, 0
000284  7d800100  xsignal r3, 0
000288  7d800100  xsignal r3, 0
00028c  7d800100  xsignal r3, 0
000290  7d800100  xsignal r3, 0
000294  7d800100  xsignal r3, 0
000298  7d800100  xsignal r3, 0
00029c  7d800100  xsignal r3, 0
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
0002d4  9f710000  addli r3, zero, 7
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
000558  9f601000  addli r1, zero, 14
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
000648  7d800000  xsignal r1, 0
00064c  7d800000  xsignal r1, 0
000650  7d800000  xsignal r1, 0
000654  7d800000  xsignal r1, 0
000658  e3004f00  loadli.w r1,  32(r30)
00065c  e3414f00  loadli.w r3,  36(r30)
000660  80d20002  load_param_i r5, 1
000664  63025f00  loadli.w r4,  40(r30)
000668  e74e0ffe  storeli.w zero, -20(r30)
00066c  e74f0ffc  storeli.w zero, -260(r30)
000670  e7070ff8  storeli.w zero, -904(r30)
000674  67480ff6  storeli.w zero, -1148(r30)
000678  670c0ff4  storeli.w zero, -1344(r30)
00067c  8b901120  mul.s r1, r3, r1
000680  9f810200  addli r3, r5, 0
000684  8b914050  fmac.s r3, r1, r4
000688  0b924020  mul.s r4, r1, r4
00068c  9ff1f1ff  addli r3, r3, -1
000690  8b915130  div.s r3, r3, r5
000694  80520002  load_param_i r5, 0
000698  8b905120  mul.s r1, r3, r5
00069c  8b915150  fmac.s r3, r3, r5
0006a0  8b914140  min.s r3, r3, r4
0006a4  cba31102  ble.s r3, r1, 1256
0006a8  b3910128  sext_int2long r[4:5], r3
0006ac  6344dfff  loadli.w r8,  -20(r30)
0006b0  e3068ff5  loadli.w r13,  -1344(r30)
0006b4  e344fffd  loadli.w r9,  -260(r30)
0006b8  6305fff8  loadli.w r10,  -904(r30)
0006bc  634e0ff7  loadli.w r28,  -1148(r30)
0006c0  b3920028  sext_int2long r[6:7], r1
0006c4  1f0b0001  addli r22, zero, 128
0006c8  1f460000  addli r12, zero, 4
0006cc  9f6d0000  addli r27, zero, 6
0006d0  1f280000  addli r16, zero, 2
0006d4  ab0b0200  lui r23, 32
0006d8  1f5c0000  addli r24, zero, 5
0006dc  9f0c4000  addli r25, zero, 32
0006e0  9f170000  addli r15, zero, 1
0006e4  670b0ff4  storeli.w zero, -1360(r30)
0006e8  733c3fa6  store.d r[4:5], -1416(r30)
0006ec  1f72f01f  addli r4, zero, 4095
0006f0  ab81ffff  lui r3, 1048568
0006f4  73383fa6  store.d r[4:5], -1424(r30)
0006f8  db0c0000  j 100
0006fc  6b530f00  load.d r[7:8], 0(r30)
000700  eb560fa9  load.d r[14:15], -1392(r30)
000704  9f601000  addli r1, zero, 14
000708  7d900000  xwait r1, 0
00070c  1d000600  lock zero, r12
000710  9b302200  slli r1, r4, 2
000714  0b23d310  add.ul r[7:8], r[7:8], r[14:15]
000718  15000000  dma_cfg zero, zero, zero, 0
00071c  15800304  dma_cfg zero, r7, zero, 2
000720  95011306  dma_cfg r3, r6, r1, 3
000724  9f000002  addli r1, zero, 256
000728  9580f008  dma_cfg r1, r1, r15, 4
00072c  35000000  dma_run zero
000730  1d100600  unlock r12
000734  9f501000  addli r1, zero, 13
000738  7d800000  xsignal r1, 0
00073c  eb520faa  load.d r[6:7], -1376(r30)
000740  eb518fa7  load.d r[4:5], -1416(r30)
000744  1f140400  addli r8, r8, 1
000748  9f960900  addli r13, r19, 1
00074c  1f1e0900  addli r28, r18, 1
000750  a7920200  addli.d r[6:7], r[6:7], 1
000754  93b03204  setlt.sl r1, r[6:7], r[4:5]
000758  b7d00002  beq r1, zero, 1076
00075c  e74a8ff4  storeli.w r8, -1364(r30)
000760  3bb0c500  bneq r11, r12, 12
000764  9f401000  addli r1, zero, 12
000768  7d900000  xwait r1, 0
00076c  e3005f00  loadli.w r1,  40(r30)
000770  73305faa  store.d r[6:7], -1376(r30)
000774  8b911230  div.s r3, r5, r1
000778  e3404f00  loadli.w r1,  36(r30)
00077c  0b941130  div.s r8, r3, r1
000780  9f001000  addli r1, zero, 8
000784  8b186431  div.s r17, r8, r22
000788  9bb13800  slli r3, r17, 3
00078c  0b123618  sub.s r4, r12, r3
000790  0b191240  min.s r18, r4, r1
000794  9f300000  addli r1, zero, 3
000798  0b122439  mod.s r4, r8, r18
00079c  8b914110  add.s r3, r3, r4
0007a0  13833004  setlt.u r6, r1, r3
0007a4  33820128  zext_int2long r[5:6], r3
0007a8  9f501000  addli r1, zero, 13
0007ac  73344fa8  store.d r[5:6], -1400(r30)
0007b0  17321202  sll.d r[5:6], r[5:6], r1
0007b4  3b300300  bneq r6, zero, 12
0007b8  33030028  zext_int2long r[7:8], zero
0007bc  db010000  j 12
0007c0  6b530fa7  load.d r[7:8], -1424(r30)
0007c4  17036202  and.d r[7:8], r[5:6], r[7:8]
0007c8  9bb87800  slli r17, r17, 7
0007cc  e3006ff5  loadli.w r1,  -1360(r30)
0007d0  9bb17100  slli r3, r3, 7
0007d4  1f070000  addli r14, zero, 0
0007d8  0b141419  sub.s r8, r8, r17
0007dc  67483ff4  storeli.w r3, -1404(r30)
0007e0  8b98c038  mod.s r17, r1, r12
0007e4  9f900000  addli r1, r1, 1
0007e8  0b142431  div.s r8, r8, r18
0007ec  670b1ff4  storeli.w r1, -1360(r30)
0007f0  9bb0f800  slli r1, r17, 15
0007f4  33090428  zext_int2long r[19:20], r8
0007f8  674b1ff4  storeli.w r1, -1356(r30)
0007fc  9b306400  slli r1, r8, 6
000800  1f140000  addli r8, zero, 1
000804  1739b903  sll.d r[19:20], r[19:20], r27
000808  e7491ff4  storeli.w r1, -1380(r30)
00080c  97390903  sll.d r[20:21], r[19:20], r16
000810  eb580f01  load.d r[18:19], 16(r30)
000814  73383fa9  store.d r[20:21], -1392(r30)
000818  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
00081c  733c1fab  store.d r[18:19], -1352(r30)
000820  9f080000  addli r17, zero, 0
000824  5b090000  j 72
000828  7d100800  xwait r16, 0
00082c  7d100c00  xwait r24, 0
000830  1d000000  lock zero, zero
000834  9f300000  addli r1, zero, 3
000838  01080000  ds_cfg r16, zero, 0
00083c  810c0002  ds_cfg r25, zero, 1
000840  810c001c  ds_cfg r25, zero, 14
000844  010b001a  ds_cfg r22, zero, 13
000848  219d9103  shuffle_batch r26, r3, r25, 1
00084c  1d100000  unlock zero
000850  7d800000  xsignal r1, 0
000854  7d000600  xsignal r12, 0
000858  1f150500  addli r10, r10, 1
00085c  9f940400  addli r9, r9, 1
000860  9b011400  andi r3, r8, 1
000864  bbc50100  bneq r3, zero, 368
000868  db3c0000  j 484
00086c  0b191e11  add.s r18, r28, r17
000870  9f407000  addli r1, zero, 60
000874  8b991611  add.s r19, r13, r17
000878  8b111938  mod.s r3, r18, r1
00087c  9f006000  addli r1, zero, 48
000880  0b9a1938  mod.s r20, r19, r1
000884  9bb1e100  slli r3, r3, 14
000888  1b3dea00  slli r26, r20, 14
00088c  8b917111  add.s r3, r3, r23
000890  37ee05ff  beq r11, r16, -104
000894  330a0728  zext_int2long r[21:22], r14
000898  bbf1f500  bneq r11, r15, 124
00089c  173a8a03  sll.d r[21:22], r[21:22], r24
0008a0  9f008000  addli r1, zero, 64
0008a4  6b5b8f00  load.d r[23:24], 8(r30)
0008a8  171a4a02  or.d r[21:22], r[21:22], r[5:6]
0008ac  33870028  zext_int2long r[15:16], r1
0008b0  9f000003  addli r1, zero, 384
0008b4  0b3d6a18  sub.sl r[27:28], r[21:22], r[7:8]
0008b8  173a0a03  sll.d r[21:22], r[21:22], r16
0008bc  0f17ed60  div.sl r[15:16], r[27:28], r[15:16]
0008c0  338d0028  zext_int2long r[27:28], r1
0008c4  9f300000  addli r1, zero, 3
0008c8  0b2a4b11  add.ul r[21:22], r[23:24], r[21:22]
0008cc  1f0b0001  addli r22, zero, 128
0008d0  ab0b0200  lui r23, 32
0008d4  7d900000  xwait r1, 0
0008d8  1d000600  lock zero, r12
0008dc  9f000002  addli r1, zero, 256
0008e0  15000000  dma_cfg zero, zero, zero, 0
0008e4  15800a04  dma_cfg zero, r21, zero, 2
0008e8  95016a07  dma_cfg r3, r20, r22, 3
0008ec  0b3da741  min.sl r[27:28], r[15:16], r[27:28]
0008f0  0b37ed18  sub.sl r[15:16], r[27:28], r[15:16]
0008f4  9f6d0000  addli r27, zero, 6
0008f8  1f070701  addli r14, r14, 128
0008fc  9f170000  addli r15, zero, 1
000900  158be008  dma_cfg r22, r1, r14, 4
000904  35000000  dma_run zero
000908  1d100600  unlock r12
00090c  7d000800  xsignal r16, 0
000910  5be9ffff  j -184
000914  9f307000  addli r1, zero, 59
000918  8b911438  mod.s r3, r9, r1
00091c  9f004001  addli r1, zero, 160
000920  9f940400  addli r9, r9, 1
000924  0b171538  mod.s r14, r10, r1
000928  ab001100  lui r1, 272
00092c  1f150500  addli r10, r10, 1
000930  9bb7d100  slli r15, r3, 13
000934  9b31d700  slli r3, r14, 13
000938  0b971710  add.s r14, r15, r1
00093c  9f700000  addli r1, zero, 7
000940  37b11500  beq r11, r1, 76
000944  bb82b501  bneq r11, r27, 160
000948  9f102000  addli r1, zero, 17
00094c  9f010020  addli r3, zero, 4096
000950  173a1a02  sll.d r[21:22], r[21:22], r1
000954  9f700000  addli r1, zero, 7
000958  7d900000  xwait r1, 0
00095c  eb508fab  load.d r[2:3], -1352(r30)
000960  1d000600  lock zero, r12
000964  15000000  dma_cfg zero, zero, zero, 0
000968  0baa4011  add.ul r[21:22], r[2:3], r[21:22]
00096c  9f000002  addli r1, zero, 256
000970  15800a04  dma_cfg zero, r21, zero, 2
000974  15071a06  dma_cfg r14, r20, r1, 3
000978  95809109  dma_cfg r1, r3, r25, 4
00097c  35000000  dma_run zero
000980  1d100600  unlock r12
000984  7d800d00  xsignal r27, 0
000988  5b080000  j 64
00098c  9f101000  addli r1, zero, 9
000990  7d900d00  xwait r27, 0
000994  7d900000  xwait r1, 0
000998  1d000000  lock zero, zero
00099c  9f008000  addli r1, zero, 64
0009a0  01080000  ds_cfg r16, zero, 0
0009a4  81000002  ds_cfg r1, zero, 1
0009a8  810c001c  ds_cfg r25, zero, 14
0009ac  8100001a  ds_cfg r1, zero, 13
0009b0  9f700000  addli r1, zero, 7
0009b4  c1019705  shuffle_coa r3, r14, r25, 2
0009b8  9f011000  addli r3, zero, 8
0009bc  1d100000  unlock zero
0009c0  7d800000  xsignal r1, 0
0009c4  7d800100  xsignal r3, 0
0009c8  9f170000  addli r15, zero, 1
0009cc  9b011400  andi r3, r8, 1
0009d0  b7f10100  beq r3, zero, 124
0009d4  9f980800  addli r17, r17, 1
0009d8  1f170000  addli r14, zero, 1
0009dc  1f040000  addli r8, zero, 0
0009e0  dbd1ffff  j -372
0009e4  bbd0c500  bneq r11, r12, 52
0009e8  9f170000  addli r15, zero, 1
0009ec  1f071000  addli r14, zero, 8
0009f0  9f008000  addli r1, zero, 64
0009f4  7d100600  xwait r12, 0
0009f8  7d100700  xwait r14, 0
0009fc  1d800700  lock zero, r15
000a00  89806c01  mm_cfg r1, r25, r22, 0
000a04  0908f804  mm_cfg r16, r16, r15, 2
000a08  b7800800  beq r17, zero, 32
000a0c  e3406ff5  loadli.w r1,  -1356(r30)
000a10  a9103d10  mm_acc r1, r26, r3, 8
000a14  db030000  j 28
000a18  9b011400  andi r3, r8, 1
000a1c  9f170000  addli r15, zero, 1
000a20  bbde01fe  bneq r3, zero, -76
000a24  db060000  j 52
000a28  e3406ff5  loadli.w r1,  -1356(r30)
000a2c  a9003d10  mm r1, r26, r3, 8
000a30  9b011400  andi r3, r8, 1
000a34  9f101000  addli r1, zero, 9
000a38  1d900700  unlock r15
000a3c  7d000c00  xsignal r24, 0
000a40  7d800000  xsignal r1, 0
000a44  3bce01fe  bneq r3, zero, -112
000a48  5b010000  j 8
000a4c  3bb0c500  bneq r11, r12, 12
000a50  9f201000  addli r1, zero, 10
000a54  7d800000  xsignal r1, 0
000a58  e3403ff5  loadli.w r1,  -1380(r30)
000a5c  63445ff5  loadli.w r8,  -1364(r30)
000a60  b3810028  zext_int2long r[4:5], r1
000a64  9f008007  addli r1, zero, 960
000a68  8b13c438  mod.s r7, r8, r12
000a6c  b3820028  zext_int2long r[6:7], r1
000a70  9f008000  addli r1, zero, 64
000a74  8ba25140  min.ul r[6:7], r[4:5], r[6:7]
000a78  b3860028  zext_int2long r[14:15], r1
000a7c  ab601800  lui r1, 390
000a80  a7828200  addli.d r[6:7], r[6:7], 64
000a84  8ba23248  max.ul r[6:7], r[6:7], r[4:5]
000a88  8bb13218  sub.sl r[4:5], r[6:7], r[4:5]
000a8c  1bb38300  slli r6, r7, 8
000a90  0ba2d140  min.ul r[5:6], r[4:5], r[14:15]
000a94  8b111310  add.s r3, r6, r1
000a98  b791f5fe  beq r11, r15, -924
000a9c  bb818501  bneq r11, r24, 96
000aa0  9f201000  addli r1, zero, 10
000aa4  9f521000  addli r5, zero, 13
000aa8  1f020000  addli r4, zero, 0
000aac  7d900000  xwait r1, 0
000ab0  7d900200  xwait r5, 0
000ab4  1d000800  lock zero, r16
000ab8  ab00803f  lui r1, 260096
000abc  0d000002  ew_cfg zero, zero, zero, 1
000ac0  8d900000  ewcoeff_cfg r1, r1, zero, 0
000ac4  9f707000  addli r1, zero, 63
000ac8  0d800004  ew_cfg zero, r1, zero, 2
000acc  ab800000  lui r1, 8
000ad0  8d070006  ew_cfg r15, zero, zero, 3
000ad4  63436ff5  loadli.w r6,  -1356(r30)
000ad8  8b124310  add.s r5, r6, r4
000adc  1f020202  addli r4, r4, 256
000ae0  ad823200  dsmadd r5, r5, r3, 0
000ae4  bb5f12fe  bneq r4, r1, -12
000ae8  9f301000  addli r1, zero, 11
000aec  1d100800  unlock r16
000af0  7d800000  xsignal r1, 0
000af4  9f601000  addli r1, zero, 14
000af8  5b88ffff  j -960
000afc  3b8105fe  bneq r11, zero, -960
000b00  e3400ff5  loadli.w r1,  -1404(r30)
000b04  6b5a8fa8  load.d r[21:22], -1400(r30)
000b08  9b312200  slli r3, r4, 2
000b0c  1f5c0000  addli r24, zero, 5
000b10  33930028  sext_int2long r[7:8], r1
000b14  9f000003  addli r1, zero, 384
000b18  b3860028  zext_int2long r[14:15], r1
000b1c  9f302000  addli r1, zero, 19
000b20  8b36d340  min.sl r[14:15], r[7:8], r[14:15]
000b24  173a1a02  sll.d r[21:22], r[21:22], r1
000b28  a7860601  addli.d r[14:15], r[14:15], 128
000b2c  8bb06648  max.sl r[2:3], r[14:15], r[7:8]
000b30  eb568f01  load.d r[14:15], 24(r30)
000b34  8bb06018  sub.sl r[2:3], r[2:3], r[7:8]
000b38  6b530fa9  load.d r[7:8], -1392(r30)
000b3c  0baa4611  add.ul r[21:22], r[14:15], r[21:22]
000b40  b3060b28  zext_int2long r[14:15], r22
000b44  0b2a6a10  add.ul r[21:22], r[21:22], r[7:8]
000b48  0bb3d040  min.sl r[7:8], r[2:3], r[14:15]
000b4c  9f301000  addli r1, zero, 11
000b50  7d900000  xwait r1, 0
000b54  9f500000  addli r1, zero, 5
000b58  1d800000  lock zero, r1
000b5c  15000000  dma_cfg zero, zero, zero, 0
000b60  15800702  dma_cfg zero, r15, zero, 1
000b64  950a0004  dma_cfg r21, zero, zero, 2
000b68  63426ff5  loadli.w r4,  -1356(r30)
000b6c  150a3206  dma_cfg r20, r4, r3, 3
000b70  9f010002  addli r3, zero, 256
000b74  1f020020  addli r4, zero, 4096
000b78  15826108  dma_cfg r4, r3, r6, 4
000b7c  35000000  dma_run zero
000b80  1d900000  unlock r1
000b84  9f401000  addli r1, zero, 12
000b88  5b76ffff  j -1104
000b8c  7d000000  xsignal zero, 0
000b90  bbe00500  bneq r11, zero, 56
000b94  9f200000  addli r1, zero, 2
000b98  7d100000  xwait zero, 0
000b9c  7d100000  xwait zero, 0
000ba0  7d100000  xwait zero, 0
000ba4  7d100000  xwait zero, 0
000ba8  7d100000  xwait zero, 0
000bac  7d100000  xwait zero, 0
000bb0  7d100000  xwait zero, 0
000bb4  7d100000  xwait zero, 0
000bb8  1d800000  lock zero, r1
000bbc  0d000020  ew_cfg zero, zero, zero, 16
000bc0  1d900000  unlock r1
000bc4  7d400000  xsignal_mode_cfg zero
000bc8  9f8e2e0b  addli sp, sp, 1424
000bcc  00a00300  mfence { lm, sm, gm }
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
000c0c  00100000  exit
000c10  00100000  exit
000c14  00100000  exit
000c18  00100000  exit
000c1c  00100000  exit
000c20  00100000  exit
000c24  00100000  exit
000c28  00100000  exit
000c2c  00100000  exit
000c30  00100000  exit
000c34  00100000  exit
000c38  00100000  exit
000c3c  00100000  exit
000c40  00100000  exit
000c44  00100000  exit
000c48  00100000  exit
000c4c  00100000  exit
000c50  00100000  exit
000c54  00100000  exit
000c58  00100000  exit
000c5c  00100000  exit
000c60  00100000  exit
000c64  00100000  exit
000c68  00100000  exit
000c6c  00100000  exit
000c70  00100000  exit
000c74  00100000  exit
000c78  00100000  exit
000c7c  00100000  exit
000c80  00100000  exit
000c84  00100000  exit
000c88  00100000  exit
000c8c  00100000  exit
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
