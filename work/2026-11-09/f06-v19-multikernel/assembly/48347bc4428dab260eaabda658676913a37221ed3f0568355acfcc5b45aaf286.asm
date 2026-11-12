; SHA-256 48347bc4428dab260eaabda658676913a37221ed3f0568355acfcc5b45aaf286
; P800 SDNN · XTDK LLVM 19 · 1108 / 1108 words decoded
; bound names: triton_tem_fused_add_gelu_mm_0
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
00005c  9f496000  addli r19, zero, 52
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
0000b4  9f8e4eff  addli sp, sp, -96
0000b8  9f100000  addli r1, zero, 1
0000bc  00360002  core_id r12
0000c0  1f8f4e00  addli r30, sp, 32
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7100600  beq r12, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b90f1ff  ori r1, r3, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  db260000  j 308
0000ec  9f220000  addli r5, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f510000  addli r3, zero, 5
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d800200  lock zero, r5
000168  ab100100  lui r1, 17
00016c  0da00300  ewtable_cfg r7, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d900200  unlock r5
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f301000  addli r1, zero, 11
000190  00d00100  sync_group
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  9f300000  addli r1, zero, 3
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  9f111000  addli r3, zero, 9
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  9f700000  addli r1, zero, 7
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  9f511000  addli r3, zero, 13
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  9f302000  addli r1, zero, 19
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  9f412000  addli r3, zero, 20
0001f4  7d800000  xsignal r1, 0
0001f8  7d800000  xsignal r1, 0
0001fc  7d800000  xsignal r1, 0
000200  9f502000  addli r1, zero, 21
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800000  xsignal r1, 0
000214  7d800000  xsignal r1, 0
000218  7d800000  xsignal r1, 0
00021c  e3005f00  loadli.w r1,  40(r30)
000220  e3415f00  loadli.w r3,  44(r30)
000224  80d20002  load_param_i r5, 1
000228  63026f00  loadli.w r4,  48(r30)
00022c  8b901120  mul.s r1, r3, r1
000230  9f810200  addli r3, r5, 0
000234  8b914050  fmac.s r3, r1, r4
000238  0b924020  mul.s r4, r1, r4
00023c  9ff1f1ff  addli r3, r3, -1
000240  8b915130  div.s r3, r3, r5
000244  80520002  load_param_i r5, 0
000248  8b905120  mul.s r1, r3, r5
00024c  8b915150  fmac.s r3, r3, r5
000250  8b914140  min.s r3, r3, r4
000254  cbd11106  ble.s r3, r1, 3188
000258  33930028  sext_int2long r[7:8], r1
00025c  ab400500  lui r1, 84
000260  33910128  sext_int2long r[3:4], r3
000264  1f3b0000  addli r22, zero, 3
000268  9f048000  addli r9, zero, 64
00026c  1f150000  addli r10, zero, 1
000270  1f770000  addli r14, zero, 7
000274  1f640000  addli r8, zero, 6
000278  1f280000  addli r16, zero, 2
00027c  9f580000  addli r17, zero, 5
000280  1f490000  addli r18, zero, 4
000284  9f090001  addli r19, zero, 128
000288  2bca0300  lui r20, 60
00028c  ab8a0000  lui r21, 8
000290  1f0c0000  addli r24, zero, 0
000294  9b900060  ori r1, r1, 1536
000298  733c2ffe  store.d r[3:4], -8(r30)
00029c  ab21373d  lui r3, 250738
0002a0  674f1ffe  storeli.w r1, -12(r30)
0002a4  abc00600  lui r1, 108
0002a8  9b900060  ori r1, r1, 1536
0002ac  670f1ffe  storeli.w r1, -16(r30)
0002b0  9b903171  ori r1, r3, 1811
0002b4  ab810300  lui r3, 56
0002b8  e74e1ffe  storeli.w r1, -20(r30)
0002bc  ab404c3f  lui r1, 259268
0002c0  9b90a022  ori r1, r1, 554
0002c4  e70e1ffe  storeli.w r1, -24(r30)
0002c8  9b903184  ori r1, r3, 2115
0002cc  674e1ffe  storeli.w r1, -28(r30)
0002d0  5b300000  j 384
0002d4  2bca0300  lui r20, 60
0002d8  1d000900  lock zero, r18
0002dc  9f060004  addli r13, zero, 512
0002e0  1f640000  addli r8, zero, 6
0002e4  15050500  dma_cfg r10, r10, zero, 0
0002e8  1b110a04  ori r2, r20, 64
0002ec  15800204  dma_cfg zero, r5, zero, 2
0002f0  0b912110  add.s r2, r3, r2
0002f4  9f713b00  addli r3, r22, 31
0002f8  15019206  dma_cfg r2, r4, r9, 3
0002fc  1bc15100  srli r2, r3, 5
000300  9b311b00  slli r3, r22, 1
000304  1f020002  addli r4, zero, 256
000308  9f621000  addli r5, zero, 14
00030c  95892408  dma_cfg r19, r9, r2, 4
000310  9b81e103  andi r3, r3, 62
000314  9506a20a  dma_cfg r13, r4, r10, 5
000318  1f021000  addli r4, zero, 8
00031c  15003010  dma_cfg zero, zero, r3, 8
000320  35000000  dma_run zero
000324  1500a00a  dma_cfg zero, zero, r10, 5
000328  15000010  dma_cfg zero, zero, zero, 8
00032c  1d100900  unlock r18
000330  1d800800  lock zero, r17
000334  15000014  dma_cfg zero, zero, zero, 10
000338  1500a014  dma_cfg zero, zero, r10, 10
00033c  15000015  dma_cfg zero, zero, r16, 10
000340  1500f014  dma_cfg zero, zero, r15, 10
000344  15002015  dma_cfg zero, zero, r18, 10
000348  15001015  dma_cfg zero, zero, r17, 10
00034c  1500b015  dma_cfg zero, zero, r27, 10
000350  1500e014  dma_cfg zero, zero, r14, 10
000354  15004014  dma_cfg zero, zero, r4, 10
000358  1f121000  addli r4, zero, 9
00035c  15004014  dma_cfg zero, zero, r4, 10
000360  1f221000  addli r4, zero, 10
000364  15004014  dma_cfg zero, zero, r4, 10
000368  1f321000  addli r4, zero, 11
00036c  15004014  dma_cfg zero, zero, r4, 10
000370  1f421000  addli r4, zero, 12
000374  15004014  dma_cfg zero, zero, r4, 10
000378  1500b014  dma_cfg zero, zero, r11, 10
00037c  15005014  dma_cfg zero, zero, r5, 10
000380  9f721000  addli r5, zero, 15
000384  15005014  dma_cfg zero, zero, r5, 10
000388  9f022000  addli r5, zero, 16
00038c  15005014  dma_cfg zero, zero, r5, 10
000390  9f122000  addli r5, zero, 17
000394  15005014  dma_cfg zero, zero, r5, 10
000398  9f222000  addli r5, zero, 18
00039c  15005014  dma_cfg zero, zero, r5, 10
0003a0  9f322000  addli r5, zero, 19
0003a4  15005014  dma_cfg zero, zero, r5, 10
0003a8  9f422000  addli r5, zero, 20
0003ac  15005014  dma_cfg zero, zero, r5, 10
0003b0  9f522000  addli r5, zero, 21
0003b4  15005014  dma_cfg zero, zero, r5, 10
0003b8  9f622000  addli r5, zero, 22
0003bc  15005014  dma_cfg zero, zero, r5, 10
0003c0  9f722000  addli r5, zero, 23
0003c4  15005014  dma_cfg zero, zero, r5, 10
0003c8  9f023000  addli r5, zero, 24
0003cc  15005014  dma_cfg zero, zero, r5, 10
0003d0  9f123000  addli r5, zero, 25
0003d4  15005014  dma_cfg zero, zero, r5, 10
0003d8  9f223000  addli r5, zero, 26
0003dc  15005014  dma_cfg zero, zero, r5, 10
0003e0  9f323000  addli r5, zero, 27
0003e4  15005014  dma_cfg zero, zero, r5, 10
0003e8  9f423000  addli r5, zero, 28
0003ec  15005014  dma_cfg zero, zero, r5, 10
0003f0  9f523000  addli r5, zero, 29
0003f4  15005014  dma_cfg zero, zero, r5, 10
0003f8  9f623000  addli r5, zero, 30
0003fc  15005014  dma_cfg zero, zero, r5, 10
000400  9f723000  addli r5, zero, 31
000404  15005014  dma_cfg zero, zero, r5, 10
000408  15050500  dma_cfg r10, r10, zero, 0
00040c  15050002  dma_cfg r10, zero, zero, 1
000410  15000004  dma_cfg zero, zero, zero, 2
000414  95009006  dma_cfg r1, zero, r9, 3
000418  95092008  dma_cfg r19, zero, r2, 4
00041c  9506a00a  dma_cfg r13, zero, r10, 5
000420  15003010  dma_cfg zero, zero, r3, 8
000424  35000000  dma_run zero
000428  1500a00a  dma_cfg zero, zero, r10, 5
00042c  15000010  dma_cfg zero, zero, zero, 8
000430  1d900800  unlock r17
000434  7d000200  xsignal r4, 0
000438  eb508fff  load.d r[2:3], -8(r30)
00043c  27130300  addli.d r[7:8], r[7:8], 1
000440  1f1c0c00  addli r24, r24, 1
000444  1f3b0000  addli r22, zero, 3
000448  93301304  setlt.sl r1, r[7:8], r[2:3]
00044c  b7f90004  beq r1, zero, 2684
000450  e3006f00  loadli.w r1,  48(r30)
000454  63415f00  loadli.w r2,  44(r30)
000458  8b1d6c39  mod.s r27, r24, r22
00045c  8b101330  div.s r1, r6, r1
000460  1bbefd00  slli r28, r27, 15
000464  8b902030  div.s r1, r1, r2
000468  1f011000  addli r2, zero, 8
00046c  8b919030  div.s r3, r1, r9
000470  1bb23100  slli r4, r3, 3
000474  9bb16100  slli r3, r3, 6
000478  8b124518  sub.s r5, r10, r4
00047c  8b913018  sub.s r3, r1, r3
000480  8b922240  min.s r5, r5, r2
000484  2b810100  lui r2, 24
000488  8b955038  mod.s r11, r1, r5
00048c  8b905130  div.s r1, r3, r5
000490  9bb1ed00  slli r3, r27, 14
000494  8b9b2110  add.s r23, r3, r2
000498  8b964510  add.s r13, r11, r4
00049c  33820028  zext_int2long r[5:6], r1
0004a0  1732e202  sll.d r[5:6], r[5:6], r14
0004a4  b38c0628  zext_int2long r[26:27], r13
0004a8  1732a202  sll.d r[5:6], r[5:6], r10
0004ac  3b7a8600  bneq r12, r8, 668
0004b0  1f571000  addli r14, zero, 13
0004b4  eb590f00  load.d r[20:21], 0(r30)
0004b8  1f710000  addli r2, zero, 7
0004bc  7d100b00  xwait r22, 0
0004c0  97b5ec02  sll.d r[12:13], r[26:27], r14
0004c4  8ba5b910  add.ul r[12:13], r[20:21], r[12:13]
0004c8  9f090001  addli r19, zero, 128
0004cc  3f548801  blt.s r16, r24, 276
0004d0  1d800800  lock zero, r17
0004d4  15000014  dma_cfg zero, zero, zero, 10
0004d8  1500a014  dma_cfg zero, zero, r10, 10
0004dc  15000015  dma_cfg zero, zero, r16, 10
0004e0  15006015  dma_cfg zero, zero, r22, 10
0004e4  15002015  dma_cfg zero, zero, r18, 10
0004e8  15001015  dma_cfg zero, zero, r17, 10
0004ec  15008014  dma_cfg zero, zero, r8, 10
0004f0  15002014  dma_cfg zero, zero, r2, 10
0004f4  1f011000  addli r2, zero, 8
0004f8  15002014  dma_cfg zero, zero, r2, 10
0004fc  1f111000  addli r2, zero, 9
000500  15002014  dma_cfg zero, zero, r2, 10
000504  1f211000  addli r2, zero, 10
000508  15002014  dma_cfg zero, zero, r2, 10
00050c  1f311000  addli r2, zero, 11
000510  15002014  dma_cfg zero, zero, r2, 10
000514  1f411000  addli r2, zero, 12
000518  15002014  dma_cfg zero, zero, r2, 10
00051c  1f611000  addli r2, zero, 14
000520  1500e014  dma_cfg zero, zero, r14, 10
000524  15002014  dma_cfg zero, zero, r2, 10
000528  1f711000  addli r2, zero, 15
00052c  15002014  dma_cfg zero, zero, r2, 10
000530  1f012000  addli r2, zero, 16
000534  15002014  dma_cfg zero, zero, r2, 10
000538  1f112000  addli r2, zero, 17
00053c  15002014  dma_cfg zero, zero, r2, 10
000540  1f212000  addli r2, zero, 18
000544  15002014  dma_cfg zero, zero, r2, 10
000548  1f312000  addli r2, zero, 19
00054c  15002014  dma_cfg zero, zero, r2, 10
000550  1f412000  addli r2, zero, 20
000554  15002014  dma_cfg zero, zero, r2, 10
000558  1f512000  addli r2, zero, 21
00055c  15002014  dma_cfg zero, zero, r2, 10
000560  1f612000  addli r2, zero, 22
000564  15002014  dma_cfg zero, zero, r2, 10
000568  1f712000  addli r2, zero, 23
00056c  15002014  dma_cfg zero, zero, r2, 10
000570  1f013000  addli r2, zero, 24
000574  15002014  dma_cfg zero, zero, r2, 10
000578  1f113000  addli r2, zero, 25
00057c  15002014  dma_cfg zero, zero, r2, 10
000580  1f213000  addli r2, zero, 26
000584  15002014  dma_cfg zero, zero, r2, 10
000588  1f313000  addli r2, zero, 27
00058c  15002014  dma_cfg zero, zero, r2, 10
000590  1f413000  addli r2, zero, 28
000594  15002014  dma_cfg zero, zero, r2, 10
000598  1f513000  addli r2, zero, 29
00059c  15002014  dma_cfg zero, zero, r2, 10
0005a0  1f613000  addli r2, zero, 30
0005a4  15002014  dma_cfg zero, zero, r2, 10
0005a8  1f713000  addli r2, zero, 31
0005ac  15002014  dma_cfg zero, zero, r2, 10
0005b0  1f010002  addli r2, zero, 256
0005b4  15050500  dma_cfg r10, r10, zero, 0
0005b8  15050002  dma_cfg r10, zero, zero, 1
0005bc  15000004  dma_cfg zero, zero, zero, 2
0005c0  950b9006  dma_cfg r23, zero, r9, 3
0005c4  95090009  dma_cfg r19, zero, r16, 4
0005c8  1501900a  dma_cfg r2, zero, r9, 5
0005cc  15000010  dma_cfg zero, zero, zero, 8
0005d0  35000000  dma_run zero
0005d4  1500a00a  dma_cfg zero, zero, r10, 5
0005d8  15000010  dma_cfg zero, zero, zero, 8
0005dc  1d900800  unlock r17
0005e0  2b810100  lui r2, 24
0005e4  1d000900  lock zero, r18
0005e8  1f340000  addli r8, zero, 3
0005ec  9f370000  addli r15, zero, 3
0005f0  2bca0300  lui r20, 60
0005f4  15050500  dma_cfg r10, r10, zero, 0
0005f8  1b1b0104  ori r22, r2, 64
0005fc  15000604  dma_cfg zero, r12, zero, 2
000600  1f610000  addli r2, zero, 6
000604  8b916111  add.s r3, r3, r22
000608  95819506  dma_cfg r3, r11, r9, 3
00060c  9f010002  addli r3, zero, 256
000610  95890409  dma_cfg r19, r9, r16, 4
000614  9581990a  dma_cfg r3, r19, r9, 5
000618  15000010  dma_cfg zero, zero, zero, 8
00061c  35000000  dma_run zero
000620  1500a00a  dma_cfg zero, zero, r10, 5
000624  15000010  dma_cfg zero, zero, zero, 8
000628  1d100900  unlock r18
00062c  1d800800  lock zero, r17
000630  15000014  dma_cfg zero, zero, zero, 10
000634  1500a014  dma_cfg zero, zero, r10, 10
000638  15000015  dma_cfg zero, zero, r16, 10
00063c  15008014  dma_cfg zero, zero, r8, 10
000640  15002015  dma_cfg zero, zero, r18, 10
000644  15001015  dma_cfg zero, zero, r17, 10
000648  15002014  dma_cfg zero, zero, r2, 10
00064c  1f710000  addli r2, zero, 7
000650  15002014  dma_cfg zero, zero, r2, 10
000654  1f011000  addli r2, zero, 8
000658  15002014  dma_cfg zero, zero, r2, 10
00065c  1f111000  addli r2, zero, 9
000660  15002014  dma_cfg zero, zero, r2, 10
000664  1f211000  addli r2, zero, 10
000668  15002014  dma_cfg zero, zero, r2, 10
00066c  1f311000  addli r2, zero, 11
000670  15002014  dma_cfg zero, zero, r2, 10
000674  1f411000  addli r2, zero, 12
000678  15002014  dma_cfg zero, zero, r2, 10
00067c  1f611000  addli r2, zero, 14
000680  1500e014  dma_cfg zero, zero, r14, 10
000684  1f770000  addli r14, zero, 7
000688  15002014  dma_cfg zero, zero, r2, 10
00068c  1f711000  addli r2, zero, 15
000690  15002014  dma_cfg zero, zero, r2, 10
000694  1f012000  addli r2, zero, 16
000698  15002014  dma_cfg zero, zero, r2, 10
00069c  1f112000  addli r2, zero, 17
0006a0  15002014  dma_cfg zero, zero, r2, 10
0006a4  1f212000  addli r2, zero, 18
0006a8  15002014  dma_cfg zero, zero, r2, 10
0006ac  1f312000  addli r2, zero, 19
0006b0  15002014  dma_cfg zero, zero, r2, 10
0006b4  1f412000  addli r2, zero, 20
0006b8  15002014  dma_cfg zero, zero, r2, 10
0006bc  1f512000  addli r2, zero, 21
0006c0  15002014  dma_cfg zero, zero, r2, 10
0006c4  1f612000  addli r2, zero, 22
0006c8  15002014  dma_cfg zero, zero, r2, 10
0006cc  1f712000  addli r2, zero, 23
0006d0  15002014  dma_cfg zero, zero, r2, 10
0006d4  1f013000  addli r2, zero, 24
0006d8  15002014  dma_cfg zero, zero, r2, 10
0006dc  1f113000  addli r2, zero, 25
0006e0  15002014  dma_cfg zero, zero, r2, 10
0006e4  1f213000  addli r2, zero, 26
0006e8  15002014  dma_cfg zero, zero, r2, 10
0006ec  1f313000  addli r2, zero, 27
0006f0  15002014  dma_cfg zero, zero, r2, 10
0006f4  1f413000  addli r2, zero, 28
0006f8  15002014  dma_cfg zero, zero, r2, 10
0006fc  1f513000  addli r2, zero, 29
000700  15002014  dma_cfg zero, zero, r2, 10
000704  1f613000  addli r2, zero, 30
000708  15002014  dma_cfg zero, zero, r2, 10
00070c  1f713000  addli r2, zero, 31
000710  15002014  dma_cfg zero, zero, r2, 10
000714  15050500  dma_cfg r10, r10, zero, 0
000718  15050002  dma_cfg r10, zero, zero, 1
00071c  15000004  dma_cfg zero, zero, zero, 2
000720  950b9006  dma_cfg r23, zero, r9, 3
000724  95090009  dma_cfg r19, zero, r16, 4
000728  9501900a  dma_cfg r3, zero, r9, 5
00072c  15000010  dma_cfg zero, zero, zero, 8
000730  35000000  dma_run zero
000734  1500a00a  dma_cfg zero, zero, r10, 5
000738  15000010  dma_cfg zero, zero, zero, 8
00073c  1d900800  unlock r17
000740  7d000800  xsignal r16, 0
000744  db6e0000  j 884
000748  bb600601  bneq r12, r16, 56
00074c  7d100800  xwait r16, 0
000750  7d900800  xwait r17, 0
000754  1d000000  lock zero, zero
000758  9f370000  addli r15, zero, 3
00075c  01080000  ds_cfg r16, zero, 0
000760  81040002  ds_cfg r9, zero, 1
000764  8104001c  ds_cfg r9, zero, 14
000768  8104001a  ds_cfg r9, zero, 13
00076c  a1919b02  shuffle_batch r3, r23, r9, 1
000770  1d100000  unlock zero
000774  7d000b00  xsignal r22, 0
000778  7d000900  xsignal r18, 0
00077c  db670000  j 828
000780  2b410200  lui r2, 36
000784  9f370000  addli r15, zero, 3
000788  8b1b2e10  add.s r23, r28, r2
00078c  b75be600  beq r12, r14, 756
000790  1f5b1000  addli r22, zero, 13
000794  371a2601  beq r12, r18, 644
000798  bb0ca600  bneq r12, r10, 800
00079c  eb558f00  load.d r[12:13], 8(r30)
0007a0  1f610000  addli r2, zero, 6
0007a4  7d100700  xwait r14, 0
0007a8  8ba54510  add.ul r[12:13], r[12:13], r[5:6]
0007ac  3f548801  blt.s r16, r24, 276
0007b0  1d800800  lock zero, r17
0007b4  15000014  dma_cfg zero, zero, zero, 10
0007b8  1500a014  dma_cfg zero, zero, r10, 10
0007bc  15000015  dma_cfg zero, zero, r16, 10
0007c0  1500f014  dma_cfg zero, zero, r15, 10
0007c4  15002015  dma_cfg zero, zero, r18, 10
0007c8  15001015  dma_cfg zero, zero, r17, 10
0007cc  15002014  dma_cfg zero, zero, r2, 10
0007d0  1f011000  addli r2, zero, 8
0007d4  1500e014  dma_cfg zero, zero, r14, 10
0007d8  15002014  dma_cfg zero, zero, r2, 10
0007dc  1f111000  addli r2, zero, 9
0007e0  15002014  dma_cfg zero, zero, r2, 10
0007e4  1f211000  addli r2, zero, 10
0007e8  15002014  dma_cfg zero, zero, r2, 10
0007ec  1f311000  addli r2, zero, 11
0007f0  15002014  dma_cfg zero, zero, r2, 10
0007f4  1f411000  addli r2, zero, 12
0007f8  15002014  dma_cfg zero, zero, r2, 10
0007fc  1f611000  addli r2, zero, 14
000800  15006015  dma_cfg zero, zero, r22, 10
000804  15002014  dma_cfg zero, zero, r2, 10
000808  1f711000  addli r2, zero, 15
00080c  15002014  dma_cfg zero, zero, r2, 10
000810  1f012000  addli r2, zero, 16
000814  15002014  dma_cfg zero, zero, r2, 10
000818  1f112000  addli r2, zero, 17
00081c  15002014  dma_cfg zero, zero, r2, 10
000820  1f212000  addli r2, zero, 18
000824  15002014  dma_cfg zero, zero, r2, 10
000828  1f312000  addli r2, zero, 19
00082c  15002014  dma_cfg zero, zero, r2, 10
000830  1f412000  addli r2, zero, 20
000834  15002014  dma_cfg zero, zero, r2, 10
000838  1f512000  addli r2, zero, 21
00083c  15002014  dma_cfg zero, zero, r2, 10
000840  1f612000  addli r2, zero, 22
000844  15002014  dma_cfg zero, zero, r2, 10
000848  1f712000  addli r2, zero, 23
00084c  15002014  dma_cfg zero, zero, r2, 10
000850  1f013000  addli r2, zero, 24
000854  15002014  dma_cfg zero, zero, r2, 10
000858  1f113000  addli r2, zero, 25
00085c  15002014  dma_cfg zero, zero, r2, 10
000860  1f213000  addli r2, zero, 26
000864  15002014  dma_cfg zero, zero, r2, 10
000868  1f313000  addli r2, zero, 27
00086c  15002014  dma_cfg zero, zero, r2, 10
000870  1f413000  addli r2, zero, 28
000874  15002014  dma_cfg zero, zero, r2, 10
000878  1f513000  addli r2, zero, 29
00087c  15002014  dma_cfg zero, zero, r2, 10
000880  1f613000  addli r2, zero, 30
000884  15002014  dma_cfg zero, zero, r2, 10
000888  1f713000  addli r2, zero, 31
00088c  15002014  dma_cfg zero, zero, r2, 10
000890  1f010004  addli r2, zero, 512
000894  15050500  dma_cfg r10, r10, zero, 0
000898  15050002  dma_cfg r10, zero, zero, 1
00089c  15000004  dma_cfg zero, zero, zero, 2
0008a0  950b9006  dma_cfg r23, zero, r9, 3
0008a4  95092009  dma_cfg r19, zero, r18, 4
0008a8  1501900a  dma_cfg r2, zero, r9, 5
0008ac  15000010  dma_cfg zero, zero, zero, 8
0008b0  35000000  dma_run zero
0008b4  1500a00a  dma_cfg zero, zero, r10, 5
0008b8  15000010  dma_cfg zero, zero, zero, 8
0008bc  1d900800  unlock r17
0008c0  2b410200  lui r2, 36
0008c4  1d000900  lock zero, r18
0008c8  1f040004  addli r8, zero, 512
0008cc  15050500  dma_cfg r10, r10, zero, 0
0008d0  9b110104  ori r3, r2, 64
0008d4  15000604  dma_cfg zero, r12, zero, 2
0008d8  1f010010  addli r2, zero, 2048
0008dc  8b113e10  add.s r3, r28, r3
0008e0  95819506  dma_cfg r3, r11, r9, 3
0008e4  9f610000  addli r3, zero, 6
0008e8  95892409  dma_cfg r19, r9, r18, 4
0008ec  1504910a  dma_cfg r8, r2, r9, 5
0008f0  1f011000  addli r2, zero, 8
0008f4  15000010  dma_cfg zero, zero, zero, 8
0008f8  35000000  dma_run zero
0008fc  1500a00a  dma_cfg zero, zero, r10, 5
000900  15000010  dma_cfg zero, zero, zero, 8
000904  1d100900  unlock r18
000908  1d800800  lock zero, r17
00090c  15000014  dma_cfg zero, zero, zero, 10
000910  1500a014  dma_cfg zero, zero, r10, 10
000914  15000015  dma_cfg zero, zero, r16, 10
000918  1500f014  dma_cfg zero, zero, r15, 10
00091c  15002015  dma_cfg zero, zero, r18, 10
000920  15001015  dma_cfg zero, zero, r17, 10
000924  15003014  dma_cfg zero, zero, r3, 10
000928  1500e014  dma_cfg zero, zero, r14, 10
00092c  15002014  dma_cfg zero, zero, r2, 10
000930  1f111000  addli r2, zero, 9
000934  15002014  dma_cfg zero, zero, r2, 10
000938  1f211000  addli r2, zero, 10
00093c  15002014  dma_cfg zero, zero, r2, 10
000940  1f311000  addli r2, zero, 11
000944  15002014  dma_cfg zero, zero, r2, 10
000948  1f411000  addli r2, zero, 12
00094c  15002014  dma_cfg zero, zero, r2, 10
000950  1f611000  addli r2, zero, 14
000954  15006015  dma_cfg zero, zero, r22, 10
000958  15002014  dma_cfg zero, zero, r2, 10
00095c  1f711000  addli r2, zero, 15
000960  15002014  dma_cfg zero, zero, r2, 10
000964  1f012000  addli r2, zero, 16
000968  15002014  dma_cfg zero, zero, r2, 10
00096c  1f112000  addli r2, zero, 17
000970  15002014  dma_cfg zero, zero, r2, 10
000974  1f212000  addli r2, zero, 18
000978  15002014  dma_cfg zero, zero, r2, 10
00097c  1f312000  addli r2, zero, 19
000980  15002014  dma_cfg zero, zero, r2, 10
000984  1f412000  addli r2, zero, 20
000988  15002014  dma_cfg zero, zero, r2, 10
00098c  1f512000  addli r2, zero, 21
000990  15002014  dma_cfg zero, zero, r2, 10
000994  1f612000  addli r2, zero, 22
000998  15002014  dma_cfg zero, zero, r2, 10
00099c  1f712000  addli r2, zero, 23
0009a0  15002014  dma_cfg zero, zero, r2, 10
0009a4  1f013000  addli r2, zero, 24
0009a8  15002014  dma_cfg zero, zero, r2, 10
0009ac  1f113000  addli r2, zero, 25
0009b0  15002014  dma_cfg zero, zero, r2, 10
0009b4  1f213000  addli r2, zero, 26
0009b8  15002014  dma_cfg zero, zero, r2, 10
0009bc  1f313000  addli r2, zero, 27
0009c0  15002014  dma_cfg zero, zero, r2, 10
0009c4  1f413000  addli r2, zero, 28
0009c8  15002014  dma_cfg zero, zero, r2, 10
0009cc  1f513000  addli r2, zero, 29
0009d0  15002014  dma_cfg zero, zero, r2, 10
0009d4  1f613000  addli r2, zero, 30
0009d8  15002014  dma_cfg zero, zero, r2, 10
0009dc  1f713000  addli r2, zero, 31
0009e0  15002014  dma_cfg zero, zero, r2, 10
0009e4  15050500  dma_cfg r10, r10, zero, 0
0009e8  15050002  dma_cfg r10, zero, zero, 1
0009ec  15000004  dma_cfg zero, zero, zero, 2
0009f0  950b9006  dma_cfg r23, zero, r9, 3
0009f4  95092009  dma_cfg r19, zero, r18, 4
0009f8  1504900a  dma_cfg r8, zero, r9, 5
0009fc  15000010  dma_cfg zero, zero, zero, 8
000a00  35000000  dma_run zero
000a04  1500a00a  dma_cfg zero, zero, r10, 5
000a08  15000010  dma_cfg zero, zero, zero, 8
000a0c  1d900800  unlock r17
000a10  7d800100  xsignal r3, 0
000a14  db140000  j 164
000a18  1f011000  addli r2, zero, 8
000a1c  7d100900  xwait r18, 0
000a20  1f0b0000  addli r22, zero, 0
000a24  9f150000  addli r11, zero, 1
000a28  1f160000  addli r12, zero, 1
000a2c  7d100100  xwait r2, 0
000a30  1f311000  addli r2, zero, 11
000a34  7d100100  xwait r2, 0
000a38  9b3beb00  slli r23, r22, 14
000a3c  1b3b8b00  slli r22, r22, 8
000a40  1d800500  lock zero, r11
000a44  89849400  mm_cfg r9, r9, r9, 0
000a48  979bcb01  or r23, r23, r28
000a4c  171bcb01  or r22, r22, r28
000a50  0909b904  mm_cfg r18, r18, r11, 2
000a54  298b7111  mm r22, r3, r23, 8
000a58  9b0b1600  andi r23, r12, 1
000a5c  1f1b0000  addli r22, zero, 1
000a60  1f060000  addli r12, zero, 0
000a64  1d900500  unlock r11
000a68  3bcf0bfe  bneq r23, zero, -48
000a6c  1f111000  addli r2, zero, 9
000a70  7d800800  xsignal r17, 0
000a74  7d000100  xsignal r2, 0
000a78  1f211000  addli r2, zero, 10
000a7c  5b070000  j 56
000a80  1f610000  addli r2, zero, 6
000a84  7d100100  xwait r2, 0
000a88  1f111000  addli r2, zero, 9
000a8c  7d100100  xwait r2, 0
000a90  1d000000  lock zero, zero
000a94  1f011000  addli r2, zero, 8
000a98  01080000  ds_cfg r16, zero, 0
000a9c  81090002  ds_cfg r19, zero, 1
000aa0  8104001c  ds_cfg r9, zero, 14
000aa4  8109001a  ds_cfg r19, zero, 13
000aa8  418e9b04  shuffle_coa r28, r23, r9, 2
000aac  1d100000  unlock zero
000ab0  7d000700  xsignal r14, 0
000ab4  7d000100  xsignal r2, 0
000ab8  9bb07000  slli r1, r1, 7
000abc  1f010007  addli r2, zero, 896
000ac0  9bb19d00  slli r3, r27, 9
000ac4  9f6d0000  addli r27, zero, 6
000ac8  b3050128  zext_int2long r[12:13], r2
000acc  338b0028  zext_int2long r[23:24], r1
000ad0  b3800928  zext_int2long r[2:3], r19
000ad4  8b25bb40  min.ul r[12:13], r[23:24], r[12:13]
000ad8  a7850501  addli.d r[12:13], r[12:13], 128
000adc  8ba56549  max.ul r[12:13], r[12:13], r[23:24]
000ae0  8bb56519  sub.sl r[12:13], r[12:13], r[23:24]
000ae4  0bab1540  min.ul r[23:24], r[12:13], r[2:3]
000ae8  8b904111  add.s r1, r3, r20
000aec  00360002  core_id r12
000af0  bb44b601  bneq r12, r27, 304
000af4  eb590f01  load.d r[20:21], 16(r30)
000af8  9f551000  addli r11, zero, 13
000afc  7d900500  xwait r11, 0
000b00  0ba24910  add.ul r[5:6], r[20:21], r[5:6]
000b04  9f090001  addli r19, zero, 128
000b08  3f3f88fb  blt.s r16, r24, -2100
000b0c  1d800800  lock zero, r17
000b10  1f011000  addli r2, zero, 8
000b14  15000014  dma_cfg zero, zero, zero, 10
000b18  1500a014  dma_cfg zero, zero, r10, 10
000b1c  15000015  dma_cfg zero, zero, r16, 10
000b20  1500f014  dma_cfg zero, zero, r15, 10
000b24  15002015  dma_cfg zero, zero, r18, 10
000b28  15001015  dma_cfg zero, zero, r17, 10
000b2c  1500b015  dma_cfg zero, zero, r27, 10
000b30  1500e014  dma_cfg zero, zero, r14, 10
000b34  15002014  dma_cfg zero, zero, r2, 10
000b38  1f111000  addli r2, zero, 9
000b3c  15002014  dma_cfg zero, zero, r2, 10
000b40  1f211000  addli r2, zero, 10
000b44  15002014  dma_cfg zero, zero, r2, 10
000b48  1f311000  addli r2, zero, 11
000b4c  15002014  dma_cfg zero, zero, r2, 10
000b50  1f411000  addli r2, zero, 12
000b54  15002014  dma_cfg zero, zero, r2, 10
000b58  1f611000  addli r2, zero, 14
000b5c  1500b014  dma_cfg zero, zero, r11, 10
000b60  15002014  dma_cfg zero, zero, r2, 10
000b64  1f711000  addli r2, zero, 15
000b68  15002014  dma_cfg zero, zero, r2, 10
000b6c  1f012000  addli r2, zero, 16
000b70  15002014  dma_cfg zero, zero, r2, 10
000b74  1f112000  addli r2, zero, 17
000b78  15002014  dma_cfg zero, zero, r2, 10
000b7c  1f212000  addli r2, zero, 18
000b80  15002014  dma_cfg zero, zero, r2, 10
000b84  1f312000  addli r2, zero, 19
000b88  15002014  dma_cfg zero, zero, r2, 10
000b8c  1f412000  addli r2, zero, 20
000b90  15002014  dma_cfg zero, zero, r2, 10
000b94  1f512000  addli r2, zero, 21
000b98  15002014  dma_cfg zero, zero, r2, 10
000b9c  1f612000  addli r2, zero, 22
000ba0  15002014  dma_cfg zero, zero, r2, 10
000ba4  1f712000  addli r2, zero, 23
000ba8  15002014  dma_cfg zero, zero, r2, 10
000bac  1f013000  addli r2, zero, 24
000bb0  15002014  dma_cfg zero, zero, r2, 10
000bb4  1f113000  addli r2, zero, 25
000bb8  15002014  dma_cfg zero, zero, r2, 10
000bbc  1f213000  addli r2, zero, 26
000bc0  15002014  dma_cfg zero, zero, r2, 10
000bc4  1f313000  addli r2, zero, 27
000bc8  15002014  dma_cfg zero, zero, r2, 10
000bcc  1f413000  addli r2, zero, 28
000bd0  15002014  dma_cfg zero, zero, r2, 10
000bd4  1f513000  addli r2, zero, 29
000bd8  15002014  dma_cfg zero, zero, r2, 10
000bdc  1f613000  addli r2, zero, 30
000be0  15002014  dma_cfg zero, zero, r2, 10
000be4  1f713000  addli r2, zero, 31
000be8  15002014  dma_cfg zero, zero, r2, 10
000bec  1f010004  addli r2, zero, 512
000bf0  15050500  dma_cfg r10, r10, zero, 0
000bf4  15050002  dma_cfg r10, zero, zero, 1
000bf8  15000004  dma_cfg zero, zero, zero, 2
000bfc  95009006  dma_cfg r1, zero, r9, 3
000c00  95092009  dma_cfg r19, zero, r18, 4
000c04  1501a00a  dma_cfg r2, zero, r10, 5
000c08  15000010  dma_cfg zero, zero, zero, 8
000c0c  35000000  dma_run zero
000c10  1500a00a  dma_cfg zero, zero, r10, 5
000c14  15000010  dma_cfg zero, zero, zero, 8
000c18  1d900800  unlock r17
000c1c  5bd7feff  j -2376
000c20  1b110a60  ori r2, r20, 1536
000c24  9f551000  addli r11, zero, 13
000c28  8b112e10  add.s r3, r28, r2
000c2c  37221601  beq r12, r17, 136
000c30  bb27f600  bneq r12, r15, 488
000c34  1f211000  addli r2, zero, 10
000c38  1f020000  addli r4, zero, 0
000c3c  7d100100  xwait r2, 0
000c40  1f411000  addli r2, zero, 12
000c44  7d100100  xwait r2, 0
000c48  1f312000  addli r2, zero, 19
000c4c  7d100100  xwait r2, 0
000c50  1d000800  lock zero, r16
000c54  2b01803f  lui r2, 260096
000c58  0d000002  ew_cfg zero, zero, zero, 1
000c5c  0d110100  ewcoeff_cfg r2, r2, zero, 0
000c60  1f71f000  addli r2, zero, 127
000c64  0d000104  ew_cfg zero, r2, zero, 2
000c68  0d050006  ew_cfg r10, zero, zero, 3
000c6c  0b914110  add.s r2, r3, r4
000c70  8b124e10  add.s r5, r28, r4
000c74  1f020204  addli r4, r4, 512
000c78  2d811200  dsmadd r2, r5, r1, 0
000c7c  bb4f52ff  bneq r4, r21, -16
000c80  9f301000  addli r1, zero, 11
000c84  1d100800  unlock r16
000c88  1f640000  addli r8, zero, 6
000c8c  7d800000  xsignal r1, 0
000c90  9f002000  addli r1, zero, 16
000c94  7d800500  xsignal r11, 0
000c98  7d800000  xsignal r1, 0
000c9c  9f102000  addli r1, zero, 17
000ca0  7d800000  xsignal r1, 0
000ca4  9f202000  addli r1, zero, 18
000ca8  7d800000  xsignal r1, 0
000cac  9f601000  addli r1, zero, 14
000cb0  5b420000  j 528
000cb4  1f611000  addli r2, zero, 14
000cb8  9f422000  addli r5, zero, 20
000cbc  e340efff  loadli.w r1,  -12(r30)
000cc0  ab06803f  lui r13, 260096
000cc4  1f7bf00f  addli r22, zero, 2047
000cc8  1f122000  addli r4, zero, 17
000ccc  9f552000  addli r11, zero, 21
000cd0  1f640000  addli r8, zero, 6
000cd4  7d100100  xwait r2, 0
000cd8  7d900200  xwait r5, 0
000cdc  1d000800  lock zero, r16
000ce0  1f012000  addli r2, zero, 16
000ce4  0d000002  ew_cfg zero, zero, zero, 1
000ce8  8b101e10  add.s r1, r28, r1
000cec  0d10d000  ewcoeff_cfg zero, zero, r13, 0
000cf0  0d000b04  ew_cfg zero, r22, zero, 2
000cf4  0d090006  ew_cfg r18, zero, zero, 3
000cf8  0d092927  ew_cfg r18, r18, r18, 19
000cfc  ad903100  dsmul r1, r3, r3, 0
000d00  0d000026  ew_cfg zero, zero, zero, 19
000d04  1d100800  unlock r16
000d08  7d100100  xwait r2, 0
000d0c  1d000800  lock zero, r16
000d10  0d000002  ew_cfg zero, zero, zero, 1
000d14  0d10d000  ewcoeff_cfg zero, zero, r13, 0
000d18  0d000b04  ew_cfg zero, r22, zero, 2
000d1c  0d090006  ew_cfg r18, zero, zero, 3
000d20  0d092927  ew_cfg r18, r18, r18, 19
000d24  ad903000  dsmul r1, r1, r3, 0
000d28  0d000026  ew_cfg zero, zero, zero, 19
000d2c  1d100800  unlock r16
000d30  6301efff  loadli.w r2,  -16(r30)
000d34  7d100200  xwait r4, 0
000d38  7d900500  xwait r11, 0
000d3c  1d000800  lock zero, r16
000d40  0d000002  ew_cfg zero, zero, zero, 1
000d44  6342dfff  loadli.w r4,  -20(r30)
000d48  0b112e10  add.s r2, r28, r2
000d4c  8d160200  ewcoeff_cfg r13, r4, zero, 0
000d50  0d000b04  ew_cfg zero, r22, zero, 2
000d54  0d090006  ew_cfg r18, zero, zero, 3
000d58  0d092927  ew_cfg r18, r18, r18, 19
000d5c  2d811100  dsmadd r2, r3, r1, 0
000d60  0d000026  ew_cfg zero, zero, zero, 19
000d64  1d100800  unlock r16
000d68  7d800200  xsignal r5, 0
000d6c  1d000800  lock zero, r16
000d70  0d000002  ew_cfg zero, zero, zero, 1
000d74  e300dfff  loadli.w r1,  -24(r30)
000d78  8d100000  ewcoeff_cfg r1, zero, zero, 0
000d7c  8d070014  ew_cfg r15, zero, zero, 10
000d80  e340cfff  loadli.w r1,  -28(r30)
000d84  0d081516  ew_cfg r16, r10, r1, 11
000d88  abc07f41  lui r1, 268284
000d8c  0d00001a  ew_cfg zero, zero, zero, 13
000d90  0d00191c  ew_cfg zero, r18, r1, 14
000d94  9f202000  addli r1, zero, 18
000d98  0d00001e  ew_cfg zero, zero, zero, 15
000d9c  0d000b04  ew_cfg zero, r22, zero, 2
000da0  0d090006  ew_cfg r18, zero, zero, 3
000da4  0d090926  ew_cfg r18, r18, zero, 19
000da8  2d012100  dsmadd r2, r2, r2, 0
000dac  0d000026  ew_cfg zero, zero, zero, 19
000db0  0d000014  ew_cfg zero, zero, zero, 10
000db4  1d100800  unlock r16
000db8  1d000800  lock zero, r16
000dbc  0d000002  ew_cfg zero, zero, zero, 1
000dc0  8d16d000  ewcoeff_cfg r13, zero, r13, 0
000dc4  0d000b04  ew_cfg zero, r22, zero, 2
000dc8  0d090006  ew_cfg r18, zero, zero, 3
000dcc  0d090926  ew_cfg r18, r18, zero, 19
000dd0  2d012100  dsmadd r2, r2, r2, 0
000dd4  0d000026  ew_cfg zero, zero, zero, 19
000dd8  1d100800  unlock r16
000ddc  7d900000  xwait r1, 0
000de0  1d000800  lock zero, r16
000de4  ab00003f  lui r1, 258048
000de8  0d000002  ew_cfg zero, zero, zero, 1
000dec  0d101000  ewcoeff_cfg zero, zero, r1, 0
000df0  9f701000  addli r1, zero, 15
000df4  0d000b04  ew_cfg zero, r22, zero, 2
000df8  0d090006  ew_cfg r18, zero, zero, 3
000dfc  0d092927  ew_cfg r18, r18, r18, 19
000e00  ad912100  dsmul r3, r3, r2, 0
000e04  0d000026  ew_cfg zero, zero, zero, 19
000e08  1d100800  unlock r16
000e0c  7d800000  xsignal r1, 0
000e10  7d800500  xsignal r11, 0
000e14  dbc4feff  j -2524
000e18  1f640000  addli r8, zero, 6
000e1c  3b7806fa  bneq r12, zero, -2532
000e20  9bb06600  slli r1, r13, 6
000e24  33010028  zext_int2long r[3:4], zero
000e28  eb598f01  load.d r[20:21], 24(r30)
000e2c  b3950028  sext_int2long r[12:13], r1
000e30  8bb02540  min.sl r[2:3], r[12:13], r[3:4]
000e34  9f112000  addli r3, zero, 17
000e38  97bc3c02  sll.d r[26:27], r[26:27], r3
000e3c  a7808000  addli.d r[2:3], r[2:3], 64
000e40  9f711000  addli r3, zero, 15
000e44  8bb0b048  max.sl r[2:3], r[2:3], r[12:13]
000e48  8bac9911  add.ul r[26:27], r[20:21], r[26:27]
000e4c  2bca0300  lui r20, 60
000e50  7d900100  xwait r3, 0
000e54  1d800800  lock zero, r17
000e58  9f090001  addli r19, zero, 128
000e5c  15050500  dma_cfg r10, r10, zero, 0
000e60  8bb0b018  sub.sl r[2:3], r[2:3], r[12:13]
000e64  b3850428  zext_int2long r[12:13], r9
000e68  8ba14c10  add.ul r[4:5], r[26:27], r[5:6]
000e6c  9b120a64  ori r5, r20, 1600
000e70  15000502  dma_cfg zero, r10, zero, 1
000e74  8bb0b040  min.sl r[2:3], r[2:3], r[12:13]
000e78  8b125e10  add.s r5, r28, r5
000e7c  9f753b00  addli r11, r22, 31
000e80  15020004  dma_cfg r4, zero, zero, 2
000e84  00360002  core_id r12
000e88  95819206  dma_cfg r3, r5, r9, 3
000e8c  9bc15500  srli r3, r11, 5
000e90  1b321b00  slli r4, r22, 1
000e94  9f020010  addli r5, zero, 2048
000e98  95843908  dma_cfg r9, r19, r3, 4
000e9c  9b01e203  andi r3, r4, 62
000ea0  1f020004  addli r4, zero, 512
000ea4  9502120a  dma_cfg r5, r4, r1, 5
000ea8  9f302000  addli r1, zero, 19
000eac  15003010  dma_cfg zero, zero, r3, 8
000eb0  35000000  dma_run zero
000eb4  1500a00a  dma_cfg zero, zero, r10, 5
000eb8  15000010  dma_cfg zero, zero, zero, 8
000ebc  1d900800  unlock r17
000ec0  7d800000  xsignal r1, 0
000ec4  dbaefeff  j -2700
000ec8  7d000000  xsignal zero, 0
000ecc  bb600600  bneq r12, zero, 56
000ed0  9f200000  addli r1, zero, 2
000ed4  7d100000  xwait zero, 0
000ed8  7d100000  xwait zero, 0
000edc  7d100000  xwait zero, 0
000ee0  7d100000  xwait zero, 0
000ee4  7d100000  xwait zero, 0
000ee8  7d100000  xwait zero, 0
000eec  7d100000  xwait zero, 0
000ef0  7d100000  xwait zero, 0
000ef4  1d800000  lock zero, r1
000ef8  0d000020  ew_cfg zero, zero, zero, 16
000efc  1d900000  unlock r1
000f00  7d400000  xsignal_mode_cfg zero
000f04  9f8e4e00  addli sp, sp, 32
000f08  00a00300  mfence { lm, sm, gm }
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
000fdc  00100000  exit
000fe0  00100000  exit
000fe4  00100000  exit
000fe8  00100000  exit
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
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
