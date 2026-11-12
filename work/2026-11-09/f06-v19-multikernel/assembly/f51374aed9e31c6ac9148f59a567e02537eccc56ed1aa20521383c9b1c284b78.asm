; SHA-256 f51374aed9e31c6ac9148f59a567e02537eccc56ed1aa20521383c9b1c284b78
; P800 SDNN · XTDK LLVM 19 · 838 / 838 words decoded
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
0000b4  9f8e7ef5  addli sp, sp, -1352
0000b8  9f100000  addli r1, zero, 1
0000bc  80380002  core_id r17
0000c0  1f8f1e0a  addli r30, sp, 1288
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00800  beq r17, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db9e0000  j 1268
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
000398  9f710000  addli r3, zero, 7
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
0005d0  e3003f00  loadli.w r1,  24(r30)
0005d4  e3413f00  loadli.w r3,  28(r30)
0005d8  80d20002  load_param_i r5, 1
0005dc  63024f00  loadli.w r4,  32(r30)
0005e0  e7000ffe  storeli.w zero, -248(r30)
0005e4  674c0ffa  storeli.w zero, -572(r30)
0005e8  e70c0ff8  storeli.w zero, -824(r30)
0005ec  67440ff6  storeli.w zero, -1212(r30)
0005f0  8b901120  mul.s r1, r3, r1
0005f4  9f810200  addli r3, r5, 0
0005f8  8b914050  fmac.s r3, r1, r4
0005fc  0b924020  mul.s r4, r1, r4
000600  9ff1f1ff  addli r3, r3, -1
000604  8b915130  div.s r3, r3, r5
000608  80520002  load_param_i r5, 0
00060c  8b905120  mul.s r1, r3, r5
000610  8b915150  fmac.s r3, r3, r5
000614  8b914140  min.s r3, r3, r4
000618  cbe11102  ble.s r3, r1, 1144
00061c  b3910128  sext_int2long r[4:5], r3
000620  63041ffe  loadli.w r8,  -248(r30)
000624  e3448ffb  loadli.w r9,  -572(r30)
000628  63059ff9  loadli.w r10,  -824(r30)
00062c  e3458ff6  loadli.w r11,  -1212(r30)
000630  b39a0028  sext_int2long r[22:23], r1
000634  1f068000  addli r12, zero, 64
000638  1f480000  addli r16, zero, 4
00063c  1f290000  addli r18, zero, 2
000640  9f0cc000  addli r25, zero, 96
000644  9f6d7000  addli r27, zero, 62
000648  1f510000  addli r2, zero, 5
00064c  1f0d4000  addli r26, zero, 32
000650  1f670000  addli r14, zero, 6
000654  e7420ff6  storeli.w zero, -1236(r30)
000658  73303fb0  store.d r[4:5], -1280(r30)
00065c  1f72f00f  addli r4, zero, 2047
000660  ab81ffff  lui r3, 1048568
000664  733c3fae  store.d r[4:5], -1288(r30)
000668  9f01a000  addli r3, zero, 80
00066c  5b040000  j 32
000670  9f201000  addli r1, zero, 10
000674  7d800000  xsignal r1, 0
000678  eb5a0fb2  load.d r[22:23], -1248(r30)
00067c  6b530fb0  load.d r[7:8], -1280(r30)
000680  a79a0a00  addli.d r[22:23], r[22:23], 1
000684  93b06a04  setlt.sl r1, r[22:23], r[7:8]
000688  37a00002  beq r1, zero, 1032
00068c  3bb00801  bneq r17, r16, 12
000690  9f301000  addli r1, zero, 11
000694  7d900000  xwait r1, 0
000698  e3004f00  loadli.w r1,  32(r30)
00069c  63423f00  loadli.w r4,  28(r30)
0006a0  9f031000  addli r7, zero, 8
0006a4  73305fb3  store.d r[22:23], -1248(r30)
0006a8  8b901a30  div.s r1, r21, r1
0006ac  0b924030  div.s r4, r1, r4
0006b0  8b19c230  div.s r19, r4, r12
0006b4  9bb03900  slli r1, r19, 3
0006b8  0b931318  sub.s r6, r7, r1
0006bc  0b1a7340  min.s r20, r6, r7
0006c0  0b134239  mod.s r6, r4, r20
0006c4  8b906010  add.s r1, r1, r6
0006c8  1f730000  addli r6, zero, 7
0006cc  93061304  setlt.u r13, r6, r1
0006d0  b38b0028  zext_int2long r[24:25], r1
0006d4  1f431000  addli r6, zero, 12
0006d8  97b26b02  sll.d r[6:7], r[24:25], r6
0006dc  733c7fb1  store.d r[24:25], -1256(r30)
0006e0  3bc00600  bneq r13, zero, 16
0006e4  b30a0028  zext_int2long r[22:23], zero
0006e8  733c5fb3  store.d r[22:23], -1224(r30)
0006ec  db020000  j 20
0006f0  eb568faf  load.d r[14:15], -1288(r30)
0006f4  9786d202  and.d r[14:15], r[6:7], r[14:15]
0006f8  733cdfb2  store.d r[14:15], -1224(r30)
0006fc  1f670000  addli r14, zero, 6
000700  9bb96900  slli r19, r19, 6
000704  9bb06000  slli r1, r1, 6
000708  e3465ff6  loadli.w r13,  -1236(r30)
00070c  9f370000  addli r15, zero, 3
000710  ab830100  lui r7, 24
000714  1f0e0000  addli r28, zero, 0
000718  0b123219  sub.s r4, r4, r19
00071c  e7401ff6  storeli.w r1, -1268(r30)
000720  9f700000  addli r1, zero, 7
000724  8b99f638  mod.s r19, r13, r15
000728  9f960600  addli r13, r13, 1
00072c  0b124231  div.s r4, r4, r20
000730  e742dff6  storeli.w r13, -1236(r30)
000734  330a0228  zext_int2long r[21:22], r4
000738  973a1a02  sll.d r[22:23], r[21:22], r1
00073c  9b307200  slli r1, r4, 7
000740  1bbaf900  slli r20, r19, 15
000744  1f020000  addli r4, zero, 0
000748  97bb2a03  sll.d r[24:25], r[22:23], r18
00074c  eb5a8f00  load.d r[22:23], 8(r30)
000750  e7001ff6  storeli.w r1, -1272(r30)
000754  9f100000  addli r1, zero, 1
000758  73387fb1  store.d r[24:25], -1264(r30)
00075c  8baa7a11  add.ul r[22:23], r[22:23], r[24:25]
000760  73385fb3  store.d r[22:23], -1232(r30)
000764  5b030000  j 24
000768  9b801000  andi r1, r1, 1
00076c  b7b90000  beq r1, zero, 620
000770  1f120200  addli r4, r4, 1
000774  1f1e0000  addli r28, zero, 1
000778  9f000000  addli r1, zero, 0
00077c  8b19b539  mod.s r19, r10, r27
000780  8b9a9539  mod.s r21, r11, r25
000784  9f950500  addli r11, r11, 1
000788  1f150500  addli r10, r10, 1
00078c  1bbbd900  slli r22, r19, 13
000790  9bb9da00  slli r19, r21, 13
000794  8b1a7b10  add.s r21, r22, r7
000798  37922801  beq r17, r18, 132
00079c  330b0e28  zext_int2long r[23:24], r28
0007a0  bb85e800  bneq r17, r14, 352
0007a4  173b2b02  sll.d r[23:24], r[23:24], r2
0007a8  eb568fb3  load.d r[14:15], -1224(r30)
0007ac  b30d0628  zext_int2long r[28:29], r12
0007b0  9f078003  addli r15, zero, 448
0007b4  171b5b02  or.d r[23:24], r[23:24], r[6:7]
0007b8  0b3cdb18  sub.sl r[25:26], r[23:24], r[14:15]
0007bc  eb560f00  load.d r[14:15], 0(r30)
0007c0  173b2b03  sll.d r[23:24], r[23:24], r18
0007c4  0f1cbc61  div.sl r[25:26], r[25:26], r[28:29]
0007c8  b38d0728  zext_int2long r[28:29], r15
0007cc  9f370000  addli r15, zero, 3
0007d0  0bab6611  add.ul r[23:24], r[14:15], r[23:24]
0007d4  9f060002  addli r13, zero, 256
0007d8  1f670000  addli r14, zero, 6
0007dc  7d900700  xwait r15, 0
0007e0  1d000800  lock zero, r16
0007e4  9f070001  addli r15, zero, 128
0007e8  15000000  dma_cfg zero, zero, zero, 0
0007ec  15800b04  dma_cfg zero, r23, zero, 2
0007f0  950afb06  dma_cfg r21, r22, r15, 3
0007f4  8b3dbc41  min.sl r[28:29], r[25:26], r[28:29]
0007f8  0bbc8d19  sub.sl r[25:26], r[28:29], r[25:26]
0007fc  9f6d7000  addli r27, zero, 62
000800  1f0c8c00  addli r24, r24, 64
000804  9f0cc000  addli r25, zero, 96
000808  95878609  dma_cfg r15, r13, r24, 4
00080c  35000000  dma_run zero
000810  1d100800  unlock r16
000814  7d000900  xsignal r18, 0
000818  db060000  j 52
00081c  7d100900  xwait r18, 0
000820  7d100100  xwait r2, 0
000824  1d000000  lock zero, zero
000828  9f370000  addli r15, zero, 3
00082c  01090000  ds_cfg r18, zero, 0
000830  010d0002  ds_cfg r26, zero, 1
000834  010d001c  ds_cfg r26, zero, 14
000838  0106001a  ds_cfg r12, zero, 13
00083c  a199aa03  shuffle_batch r19, r21, r26, 1
000840  1d100000  unlock zero
000844  7d800700  xsignal r15, 0
000848  7d000800  xsignal r16, 0
00084c  8b9a3438  mod.s r21, r9, r3
000850  9f940400  addli r9, r9, 1
000854  1f140400  addli r8, r8, 1
000858  1bbeea00  slli r28, r21, 14
00085c  3bbc08ff  bneq r17, r16, -244
000860  9f0a1000  addli r21, zero, 8
000864  7d100800  xwait r16, 0
000868  1f1b0000  addli r22, zero, 1
00086c  9f0b0000  addli r23, zero, 0
000870  7d900a00  xwait r21, 0
000874  9f1a0000  addli r21, zero, 1
000878  b7700200  beq r4, zero, 60
00087c  1bbcdb00  slli r24, r23, 13
000880  9bbb8b00  slli r23, r23, 8
000884  1d800a00  lock zero, r21
000888  0906cd00  mm_cfg r12, r26, r12, 0
00088c  171ccc01  or r24, r24, r28
000890  979b4b01  or r23, r23, r20
000894  09095805  mm_cfg r18, r16, r21, 2
000898  a99b8911  mm_acc r23, r19, r24, 8
00089c  1b0c1b00  andi r24, r22, 1
0008a0  9f1b0000  addli r23, zero, 1
0008a4  1f0b0000  addli r22, zero, 0
0008a8  1d900a00  unlock r21
0008ac  3b4f0cfe  bneq r24, zero, -48
0008b0  5b070000  j 56
0008b4  1bbcdb00  slli r24, r23, 13
0008b8  9bbb8b00  slli r23, r23, 8
0008bc  1d800a00  lock zero, r21
0008c0  0906cd00  mm_cfg r12, r26, r12, 0
0008c4  171ccc01  or r24, r24, r28
0008c8  979b4b01  or r23, r23, r20
0008cc  09095805  mm_cfg r18, r16, r21, 2
0008d0  a98b8911  mm r23, r19, r24, 8
0008d4  1b0c1b00  andi r24, r22, 1
0008d8  9f1b0000  addli r23, zero, 1
0008dc  1f0b0000  addli r22, zero, 0
0008e0  1d900a00  unlock r21
0008e4  3b4f0cfe  bneq r24, zero, -48
0008e8  9b801000  andi r1, r1, 1
0008ec  9f171000  addli r15, zero, 9
0008f0  7d000100  xsignal r2, 0
0008f4  7d800700  xsignal r15, 0
0008f8  bbe900fe  bneq r1, zero, -392
0008fc  dbaeffff  j -652
000900  9f567000  addli r13, zero, 61
000904  0b9c3438  mod.s r24, r9, r3
000908  9f940400  addli r9, r9, 1
00090c  8b1ad438  mod.s r21, r8, r13
000910  ab460900  lui r13, 148
000914  1f140400  addli r8, r8, 1
000918  1b3eec00  slli r28, r24, 14
00091c  1f7c0000  addli r24, zero, 7
000920  9bbaea00  slli r21, r21, 14
000924  8b9ada10  add.s r21, r21, r13
000928  b7a18801  beq r17, r24, 104
00092c  9f170000  addli r15, zero, 1
000930  bbbcf8fe  bneq r17, r15, -212
000934  9f790000  addli r19, zero, 7
000938  9f162000  addli r13, zero, 17
00093c  27810200  addli.d r[3:4], r[6:7], 0
000940  9f070004  addli r15, zero, 512
000944  7d900900  xwait r19, 0
000948  eb520fb3  load.d r[6:7], -1232(r30)
00094c  173bdb02  sll.d r[23:24], r[23:24], r13
000950  1d000800  lock zero, r16
000954  9f060020  addli r13, zero, 4096
000958  15000000  dma_cfg zero, zero, zero, 0
00095c  0bab6211  add.ul r[23:24], r[6:7], r[23:24]
000960  a7020100  addli.d r[6:7], r[3:4], 0
000964  9f01a000  addli r3, zero, 80
000968  1f510000  addli r2, zero, 5
00096c  15800b04  dma_cfg zero, r23, zero, 2
000970  950afb06  dma_cfg r21, r22, r15, 3
000974  9587a609  dma_cfg r15, r13, r26, 4
000978  35000000  dma_run zero
00097c  1d100800  unlock r16
000980  7d000700  xsignal r14, 0
000984  9b801000  andi r1, r1, 1
000988  bba700fe  bneq r1, zero, -536
00098c  5b090000  j 72
000990  9f171000  addli r15, zero, 9
000994  7d100700  xwait r14, 0
000998  9f790000  addli r19, zero, 7
00099c  7d900700  xwait r15, 0
0009a0  1d000000  lock zero, zero
0009a4  9f070001  addli r15, zero, 128
0009a8  01090000  ds_cfg r18, zero, 0
0009ac  81070002  ds_cfg r15, zero, 1
0009b0  010d001c  ds_cfg r26, zero, 14
0009b4  8107001a  ds_cfg r15, zero, 13
0009b8  418eaa05  shuffle_coa r28, r21, r26, 2
0009bc  1d100000  unlock zero
0009c0  7d800900  xsignal r19, 0
0009c4  9f091000  addli r19, zero, 8
0009c8  7d800900  xsignal r19, 0
0009cc  9b801000  andi r1, r1, 1
0009d0  bb8600fe  bneq r1, zero, -608
0009d4  37f208ff  beq r17, r16, -868
0009d8  bb8208fe  bneq r17, zero, -864
0009dc  e3001ff6  loadli.w r1,  -1272(r30)
0009e0  33830028  zext_int2long r[7:8], r1
0009e4  9f000007  addli r1, zero, 896
0009e8  b3860028  zext_int2long r[14:15], r1
0009ec  e3401ff6  loadli.w r1,  -1268(r30)
0009f0  8b26d340  min.ul r[14:15], r[7:8], r[14:15]
0009f4  b39a0028  sext_int2long r[22:23], r1
0009f8  9f008003  addli r1, zero, 448
0009fc  a7860601  addli.d r[14:15], r[14:15], 128
000a00  b38b0028  zext_int2long r[24:25], r1
000a04  9f000001  addli r1, zero, 128
000a08  8ba66648  max.ul r[14:15], r[14:15], r[7:8]
000a0c  8bbb7a41  min.sl r[24:25], r[22:23], r[24:25]
000a10  0bb36618  sub.sl r[7:8], r[14:15], r[7:8]
000a14  a7868b00  addli.d r[14:15], r[24:25], 64
000a18  b38b0028  zext_int2long r[24:25], r1
000a1c  9f202000  addli r1, zero, 18
000a20  0b227341  min.ul r[5:6], r[7:8], r[24:25]
000a24  6b538fb1  load.d r[7:8], -1256(r30)
000a28  8bb65649  max.sl r[14:15], r[14:15], r[22:23]
000a2c  b30b0628  zext_int2long r[24:25], r12
000a30  8bb65619  sub.sl r[14:15], r[14:15], r[22:23]
000a34  973a1302  sll.d r[22:23], r[7:8], r1
000a38  6b530f01  load.d r[7:8], 16(r30)
000a3c  9f201000  addli r1, zero, 10
000a40  8bb67641  min.sl r[14:15], r[14:15], r[24:25]
000a44  8b2a5311  add.ul r[22:23], r[7:8], r[22:23]
000a48  6b530fb1  load.d r[7:8], -1264(r30)
000a4c  7d900000  xwait r1, 0
000a50  1d000100  lock zero, r2
000a54  9f100000  addli r1, zero, 1
000a58  15000000  dma_cfg zero, zero, zero, 0
000a5c  15800002  dma_cfg zero, r1, zero, 1
000a60  9b302200  slli r1, r4, 2
000a64  1f020020  addli r4, zero, 4096
000a68  8baa6a10  add.ul r[22:23], r[22:23], r[7:8]
000a6c  150b0004  dma_cfg r22, zero, zero, 2
000a70  950a1a06  dma_cfg r21, r20, r1, 3
000a74  9f000004  addli r1, zero, 512
000a78  1582d008  dma_cfg r4, r1, r13, 4
000a7c  1f670000  addli r14, zero, 6
000a80  9f301000  addli r1, zero, 11
000a84  35000000  dma_run zero
000a88  1d100100  unlock r2
000a8c  5b7dffff  j -1048
000a90  7d000000  xsignal zero, 0
000a94  bbe00800  bneq r17, zero, 56
000a98  9f200000  addli r1, zero, 2
000a9c  7d100000  xwait zero, 0
000aa0  7d100000  xwait zero, 0
000aa4  7d100000  xwait zero, 0
000aa8  7d100000  xwait zero, 0
000aac  7d100000  xwait zero, 0
000ab0  7d100000  xwait zero, 0
000ab4  7d100000  xwait zero, 0
000ab8  7d100000  xwait zero, 0
000abc  1d800000  lock zero, r1
000ac0  0d000020  ew_cfg zero, zero, zero, 16
000ac4  1d900000  unlock r1
000ac8  7d400000  xsignal_mode_cfg zero
000acc  9f8e1e0a  addli sp, sp, 1288
000ad0  00a00300  mfence { lm, sm, gm }
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
000b50  00100000  exit
000b54  00100000  exit
000b58  00100000  exit
000b5c  00100000  exit
000b60  00100000  exit
000b64  00100000  exit
000b68  00100000  exit
000b6c  00100000  exit
000b70  00100000  exit
000b74  00100000  exit
000b78  00100000  exit
000b7c  00100000  exit
000b80  00100000  exit
000b84  00100000  exit
000b88  00100000  exit
000b8c  00100000  exit
000b90  00100000  exit
000b94  00100000  exit
000b98  00100000  exit
000b9c  00100000  exit
000ba0  00100000  exit
000ba4  00100000  exit
000ba8  00100000  exit
000bac  00100000  exit
000bb0  00100000  exit
000bb4  00100000  exit
000bb8  00100000  exit
000bbc  00100000  exit
000bc0  00100000  exit
000bc4  00100000  exit
000bc8  00100000  exit
000bcc  00100000  exit
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
