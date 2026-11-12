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
0000b4  9f8e7eff  addli sp, sp, -72
0000b8  1f8f1e00  addli r30, sp, 8
0000bc  9f100000  addli r1, zero, 1
0000c0  00310002  core_id r2
0000c4  e3414f00  loadli.w r3,  36(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  5b0b0000  j 88
0000e4  1f220000  addli r4, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  abf2ffff  lui r5, 1048575
0000f0  1d000200  lock zero, r4
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b90f2ff  ori r1, r5, 4095
0000fc  1d100200  unlock r4
000100  1f320000  addli r4, zero, 3
000104  80a10004  csr_set csr3, r1
000108  9f500000  addli r1, zero, 5
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d000200  xsignal r4, 0
000118  9f101000  addli r1, zero, 9
00011c  1f720000  addli r4, zero, 7
000120  7d800000  xsignal r1, 0
000124  7d000200  xsignal r4, 0
000128  9f301000  addli r1, zero, 11
00012c  1f621000  addli r4, zero, 14
000130  7d800000  xsignal r1, 0
000134  7d000200  xsignal r4, 0
000138  e3004f00  loadli.w r1,  32(r30)
00013c  63424f00  loadli.w r4,  36(r30)
000140  00d30002  load_param_i r6, 1
000144  e3025f00  loadli.w r5,  40(r30)
000148  8b101220  mul.s r1, r4, r1
00014c  1f020300  addli r4, r6, 0
000150  0b925050  fmac.s r4, r1, r5
000154  8b925020  mul.s r5, r1, r5
000158  1f72f2ff  addli r4, r4, -1
00015c  0b126230  div.s r4, r4, r6
000160  00530002  load_param_i r6, 0
000164  8b106220  mul.s r1, r4, r6
000168  0b126250  fmac.s r4, r4, r6
00016c  0b125240  min.s r4, r4, r5
000170  4b551204  ble.s r4, r1, 2388
000174  33120228  sext_int2long r[5:6], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  9f780000  addli r17, zero, 7
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f550000  addli r11, zero, 5
00018c  1f260000  addli r12, zero, 2
000190  1f6a0000  addli r20, zero, 6
000194  9f061000  addli r13, zero, 8
000198  1f191000  addli r18, zero, 9
00019c  9f491000  addli r19, zero, 12
0001a0  9f0d8000  addli r27, zero, 64
0001a4  1f0b0001  addli r22, zero, 128
0001a8  1f0e0004  addli r28, zero, 512
0001ac  ab000100  lui r1, 16
0001b0  733c4ffe  store.d r[5:6], -8(r30)
0001b4  5b500000  j 640
0001b8  eb568f00  load.d r[14:15], 8(r30)
0001bc  97b7ab02  sll.d r[16:17], r[24:25], r10
0001c0  7d900800  xwait r17, 0
0001c4  1d800500  lock zero, r11
0001c8  1f091000  addli r18, zero, 8
0001cc  9f191000  addli r19, zero, 9
0001d0  1f241000  addli r8, zero, 10
0001d4  9f411000  addli r3, zero, 12
0001d8  9f5c1000  addli r25, zero, 13
0001dc  1f6d1000  addli r26, zero, 14
0001e0  1f7c1000  addli r24, zero, 15
0001e4  1f222000  addli r4, zero, 18
0001e8  9f422000  addli r5, zero, 20
0001ec  9f5a2000  addli r21, zero, 21
0001f0  2b8e0000  lui r28, 8
0001f4  15000014  dma_cfg zero, zero, zero, 10
0001f8  1500a014  dma_cfg zero, zero, r10, 10
0001fc  9b1b0e04  ori r23, r28, 64
000200  8ba7f610  add.ul r[16:17], r[14:15], r[16:17]
000204  9f360000  addli r13, zero, 3
000208  1500c014  dma_cfg zero, zero, r12, 10
00020c  1f361000  addli r12, zero, 11
000210  1f172000  addli r14, zero, 17
000214  1500d014  dma_cfg zero, zero, r13, 10
000218  15009014  dma_cfg zero, zero, r9, 10
00021c  1500b014  dma_cfg zero, zero, r11, 10
000220  15004015  dma_cfg zero, zero, r20, 10
000224  1f0a2000  addli r20, zero, 16
000228  15001015  dma_cfg zero, zero, r17, 10
00022c  9f382000  addli r17, zero, 19
000230  15002015  dma_cfg zero, zero, r18, 10
000234  15003015  dma_cfg zero, zero, r19, 10
000238  15008014  dma_cfg zero, zero, r8, 10
00023c  1500c014  dma_cfg zero, zero, r12, 10
000240  15003014  dma_cfg zero, zero, r3, 10
000244  15009015  dma_cfg zero, zero, r25, 10
000248  1500a015  dma_cfg zero, zero, r26, 10
00024c  15008015  dma_cfg zero, zero, r24, 10
000250  15004015  dma_cfg zero, zero, r20, 10
000254  1500e014  dma_cfg zero, zero, r14, 10
000258  15004014  dma_cfg zero, zero, r4, 10
00025c  15001015  dma_cfg zero, zero, r17, 10
000260  15005014  dma_cfg zero, zero, r5, 10
000264  15005015  dma_cfg zero, zero, r21, 10
000268  9f6a2000  addli r21, zero, 22
00026c  15005015  dma_cfg zero, zero, r21, 10
000270  9f7a2000  addli r21, zero, 23
000274  15005015  dma_cfg zero, zero, r21, 10
000278  9f0a3000  addli r21, zero, 24
00027c  15005015  dma_cfg zero, zero, r21, 10
000280  9f1a3000  addli r21, zero, 25
000284  15005015  dma_cfg zero, zero, r21, 10
000288  9f2a3000  addli r21, zero, 26
00028c  15005015  dma_cfg zero, zero, r21, 10
000290  9f3a3000  addli r21, zero, 27
000294  15005015  dma_cfg zero, zero, r21, 10
000298  9f4a3000  addli r21, zero, 28
00029c  15005015  dma_cfg zero, zero, r21, 10
0002a0  9f5a3000  addli r21, zero, 29
0002a4  15005015  dma_cfg zero, zero, r21, 10
0002a8  9f6a3000  addli r21, zero, 30
0002ac  15005015  dma_cfg zero, zero, r21, 10
0002b0  9f7a3000  addli r21, zero, 31
0002b4  15005015  dma_cfg zero, zero, r21, 10
0002b8  9f0a0004  addli r21, zero, 512
0002bc  15050500  dma_cfg r10, r10, zero, 0
0002c0  15050002  dma_cfg r10, zero, zero, 1
0002c4  15000004  dma_cfg zero, zero, zero, 2
0002c8  150eb007  dma_cfg r28, zero, r27, 3
0002cc  150b9008  dma_cfg r22, zero, r9, 4
0002d0  950ab00b  dma_cfg r21, zero, r27, 5
0002d4  15000010  dma_cfg zero, zero, zero, 8
0002d8  35000000  dma_run zero
0002dc  1500a00a  dma_cfg zero, zero, r10, 5
0002e0  15000010  dma_cfg zero, zero, zero, 8
0002e4  1d900500  unlock r11
0002e8  1d800400  lock zero, r9
0002ec  15050500  dma_cfg r10, r10, zero, 0
0002f0  15000804  dma_cfg zero, r16, zero, 2
0002f4  958bb707  dma_cfg r23, r15, r27, 3
0002f8  9f070010  addli r15, zero, 2048
0002fc  158b9d08  dma_cfg r22, r27, r9, 4
000300  958ab70b  dma_cfg r21, r15, r27, 5
000304  9f270000  addli r15, zero, 2
000308  15000010  dma_cfg zero, zero, zero, 8
00030c  35000000  dma_run zero
000310  1500a00a  dma_cfg zero, zero, r10, 5
000314  15000010  dma_cfg zero, zero, zero, 8
000318  1d900400  unlock r9
00031c  1d800500  lock zero, r11
000320  15000014  dma_cfg zero, zero, zero, 10
000324  1500a014  dma_cfg zero, zero, r10, 10
000328  1500f014  dma_cfg zero, zero, r15, 10
00032c  1500d014  dma_cfg zero, zero, r13, 10
000330  9f660000  addli r13, zero, 6
000334  15009014  dma_cfg zero, zero, r9, 10
000338  1500b014  dma_cfg zero, zero, r11, 10
00033c  1500d014  dma_cfg zero, zero, r13, 10
000340  9f760000  addli r13, zero, 7
000344  1500d014  dma_cfg zero, zero, r13, 10
000348  9f061000  addli r13, zero, 8
00034c  15002015  dma_cfg zero, zero, r18, 10
000350  1f191000  addli r18, zero, 9
000354  15003015  dma_cfg zero, zero, r19, 10
000358  9f491000  addli r19, zero, 12
00035c  15008014  dma_cfg zero, zero, r8, 10
000360  1500c014  dma_cfg zero, zero, r12, 10
000364  1f260000  addli r12, zero, 2
000368  15003014  dma_cfg zero, zero, r3, 10
00036c  e3414f00  loadli.w r3,  36(r30)
000370  15009015  dma_cfg zero, zero, r25, 10
000374  1500a015  dma_cfg zero, zero, r26, 10
000378  15008015  dma_cfg zero, zero, r24, 10
00037c  15004015  dma_cfg zero, zero, r20, 10
000380  1f6a0000  addli r20, zero, 6
000384  1500e014  dma_cfg zero, zero, r14, 10
000388  15004014  dma_cfg zero, zero, r4, 10
00038c  1f522000  addli r4, zero, 21
000390  15001015  dma_cfg zero, zero, r17, 10
000394  9f780000  addli r17, zero, 7
000398  15005014  dma_cfg zero, zero, r5, 10
00039c  15004014  dma_cfg zero, zero, r4, 10
0003a0  1f622000  addli r4, zero, 22
0003a4  15004014  dma_cfg zero, zero, r4, 10
0003a8  1f722000  addli r4, zero, 23
0003ac  15004014  dma_cfg zero, zero, r4, 10
0003b0  1f023000  addli r4, zero, 24
0003b4  15004014  dma_cfg zero, zero, r4, 10
0003b8  1f123000  addli r4, zero, 25
0003bc  15004014  dma_cfg zero, zero, r4, 10
0003c0  1f223000  addli r4, zero, 26
0003c4  15004014  dma_cfg zero, zero, r4, 10
0003c8  1f323000  addli r4, zero, 27
0003cc  15004014  dma_cfg zero, zero, r4, 10
0003d0  1f423000  addli r4, zero, 28
0003d4  15004014  dma_cfg zero, zero, r4, 10
0003d8  1f523000  addli r4, zero, 29
0003dc  15004014  dma_cfg zero, zero, r4, 10
0003e0  1f623000  addli r4, zero, 30
0003e4  15004014  dma_cfg zero, zero, r4, 10
0003e8  1f723000  addli r4, zero, 31
0003ec  15004014  dma_cfg zero, zero, r4, 10
0003f0  15050500  dma_cfg r10, r10, zero, 0
0003f4  15050002  dma_cfg r10, zero, zero, 1
0003f8  15000004  dma_cfg zero, zero, zero, 2
0003fc  150eb007  dma_cfg r28, zero, r27, 3
000400  1f0e0004  addli r28, zero, 512
000404  150b9008  dma_cfg r22, zero, r9, 4
000408  950ab00b  dma_cfg r21, zero, r27, 5
00040c  15000010  dma_cfg zero, zero, zero, 8
000410  35000000  dma_run zero
000414  1500a00a  dma_cfg zero, zero, r10, 5
000418  15000010  dma_cfg zero, zero, zero, 8
00041c  1d900500  unlock r11
000420  7d000a00  xsignal r20, 0
000424  6b528fff  load.d r[5:6], -8(r30)
000428  27130300  addli.d r[7:8], r[7:8], 1
00042c  93374304  setlt.sl r15, r[7:8], r[5:6]
000430  37da0702  beq r15, zero, 1684
000434  e3075f00  loadli.w r15,  40(r30)
000438  1b9d0020  ori r26, r1, 512
00043c  8b17f330  div.s r15, r6, r15
000440  0b983738  mod.s r16, r15, r3
000444  8b973730  div.s r15, r15, r3
000448  b31b0828  sext_int2long r[24:25], r16
00044c  b3970728  sext_int2long r[16:17], r15
000450  97bb1b03  sll.d r[24:25], r[24:25], r17
000454  bf812400  blt.s r9, r2, 96
000458  b705a1fe  beq r2, r10, -672
00045c  3745c100  beq r2, r12, 336
000460  bb139100  bneq r2, r9, 228
000464  1f641000  addli r8, zero, 14
000468  7d900400  xwait r9, 0
00046c  7d900600  xwait r13, 0
000470  9b970030  ori r15, r1, 768
000474  7d100400  xwait r8, 0
000478  1d000500  lock zero, r10
00047c  2b440000  lui r8, 4
000480  898d6d01  mm_cfg r27, r27, r22, 0
000484  8984a404  mm_cfg r9, r9, r10, 2
000488  290d0010  mm r26, zero, zero, 8
00048c  1d100500  unlock r10
000490  1d000500  lock zero, r10
000494  898d6d01  mm_cfg r27, r27, r22, 0
000498  8984a404  mm_cfg r9, r9, r10, 2
00049c  a9078010  mm r15, zero, r8, 8
0004a0  1d100500  unlock r10
0004a4  7d800500  xsignal r11, 0
0004a8  7d000900  xsignal r18, 0
0004ac  7d800900  xsignal r19, 0
0004b0  dbeeffff  j -140
0004b4  3701b100  beq r2, r11, 64
0004b8  b7244101  beq r2, r20, 296
0004bc  3b221101  bneq r2, r17, 136
0004c0  7d100a00  xwait r20, 0
0004c4  7d100900  xwait r18, 0
0004c8  1d000000  lock zero, zero
0004cc  2b840000  lui r8, 8
0004d0  01060000  ds_cfg r12, zero, 0
0004d4  010b0002  ds_cfg r22, zero, 1
0004d8  810d001c  ds_cfg r27, zero, 14
0004dc  010b001a  ds_cfg r22, zero, 13
0004e0  4100b405  shuffle_coa zero, r8, r27, 2
0004e4  1d100000  unlock zero
0004e8  7d800800  xsignal r17, 0
0004ec  7d800600  xsignal r13, 0
0004f0  dbe6ffff  j -204
0004f4  1f241000  addli r8, zero, 10
0004f8  9f070000  addli r15, zero, 0
0004fc  7d100400  xwait r8, 0
000500  7d900900  xwait r19, 0
000504  1d000600  lock zero, r12
000508  2b04803f  lui r8, 260096
00050c  0d000002  ew_cfg zero, zero, zero, 1
000510  0d140400  ewcoeff_cfg r8, r8, zero, 0
000514  1f74f000  addli r8, zero, 127
000518  0d000404  ew_cfg zero, r8, zero, 2
00051c  0d050006  ew_cfg r10, zero, zero, 3
000520  0b98a711  add.s r16, r15, r26
000524  9f870704  addli r15, r15, 512
000528  2d081800  dsmadd r16, r16, r1, 0
00052c  bbdf17fe  bneq r15, r1, -12
000530  1f371000  addli r14, zero, 11
000534  1d100600  unlock r12
000538  1f541000  addli r8, zero, 13
00053c  7d000700  xsignal r14, 0
000540  db0c0000  j 100
000544  bb0b01fe  bneq r2, zero, -288
000548  1f242000  addli r8, zero, 18
00054c  eb5c8f01  load.d r[26:27], 24(r30)
000550  97bbab02  sll.d r[24:25], r[24:25], r10
000554  97b78702  sll.d r[16:17], r[16:17], r8
000558  1f541000  addli r8, zero, 13
00055c  8ba7fc10  add.ul r[16:17], r[26:27], r[16:17]
000560  7d100400  xwait r8, 0
000564  1d800500  lock zero, r11
000568  1f040010  addli r8, zero, 2048
00056c  15050500  dma_cfg r10, r10, zero, 0
000570  8ba77711  add.ul r[16:17], r[16:17], r[24:25]
000574  15000502  dma_cfg zero, r10, zero, 1
000578  9b9b0024  ori r23, r1, 576
00057c  15080004  dma_cfg r16, zero, zero, 2
000580  9587bb07  dma_cfg r15, r23, r27, 3
000584  950d9b08  dma_cfg r27, r22, r9, 4
000588  15046e0b  dma_cfg r8, r28, r22, 5
00058c  1f641000  addli r8, zero, 14
000590  15000010  dma_cfg zero, zero, zero, 8
000594  35000000  dma_run zero
000598  1500a00a  dma_cfg zero, zero, r10, 5
00059c  15000010  dma_cfg zero, zero, zero, 8
0005a0  1d900500  unlock r11
0005a4  7d000400  xsignal r8, 0
0005a8  dbcfffff  j -388
0005ac  7d100600  xwait r12, 0
0005b0  7d900500  xwait r11, 0
0005b4  1d000000  lock zero, zero
0005b8  9f370000  addli r15, zero, 3
0005bc  01060000  ds_cfg r12, zero, 0
0005c0  810d0002  ds_cfg r27, zero, 1
0005c4  810d001c  ds_cfg r27, zero, 14
0005c8  010b001a  ds_cfg r22, zero, 13
0005cc  2110b003  shuffle_batch zero, zero, r27, 1
0005d0  1d100000  unlock zero
0005d4  7d800700  xsignal r15, 0
0005d8  7d800400  xsignal r9, 0
0005dc  5bc9ffff  j -440
0005e0  1f611000  addli r2, zero, 14
0005e4  9f611000  addli r3, zero, 14
0005e8  1f022000  addli r4, zero, 16
0005ec  1f1e2000  addli r28, zero, 17
0005f0  6b590f00  load.d r[19:20], 0(r30)
0005f4  1f370000  addli r14, zero, 3
0005f8  1f041000  addli r8, zero, 8
0005fc  9f161000  addli r13, zero, 9
000600  9f421000  addli r5, zero, 12
000604  9f2c2000  addli r25, zero, 18
000608  9f4a3000  addli r21, zero, 28
00060c  1f5d3000  addli r26, zero, 29
000610  97b72702  sll.d r[16:17], r[16:17], r2
000614  1f310000  addli r2, zero, 3
000618  7d100100  xwait r2, 0
00061c  1d800500  lock zero, r11
000620  8b27f910  add.ul r[16:17], r[19:20], r[16:17]
000624  9f090002  addli r19, zero, 256
000628  1f391000  addli r18, zero, 11
00062c  15000014  dma_cfg zero, zero, zero, 10
000630  1500a014  dma_cfg zero, zero, r10, 10
000634  1500c014  dma_cfg zero, zero, r12, 10
000638  15002014  dma_cfg zero, zero, r2, 10
00063c  1f011000  addli r2, zero, 8
000640  15009014  dma_cfg zero, zero, r9, 10
000644  1500b014  dma_cfg zero, zero, r11, 10
000648  15004015  dma_cfg zero, zero, r20, 10
00064c  1f2a1000  addli r20, zero, 10
000650  15001015  dma_cfg zero, zero, r17, 10
000654  15002014  dma_cfg zero, zero, r2, 10
000658  1f111000  addli r2, zero, 9
00065c  15002014  dma_cfg zero, zero, r2, 10
000660  1f211000  addli r2, zero, 10
000664  15002014  dma_cfg zero, zero, r2, 10
000668  1f311000  addli r2, zero, 11
00066c  15002014  dma_cfg zero, zero, r2, 10
000670  1f411000  addli r2, zero, 12
000674  15002014  dma_cfg zero, zero, r2, 10
000678  1f511000  addli r2, zero, 13
00067c  15002014  dma_cfg zero, zero, r2, 10
000680  1f511000  addli r2, zero, 13
000684  15003014  dma_cfg zero, zero, r3, 10
000688  9f711000  addli r3, zero, 15
00068c  15003014  dma_cfg zero, zero, r3, 10
000690  9f711000  addli r3, zero, 15
000694  15004014  dma_cfg zero, zero, r4, 10
000698  1f022000  addli r4, zero, 16
00069c  1500c015  dma_cfg zero, zero, r28, 10
0006a0  1f2e2000  addli r28, zero, 18
0006a4  1500c015  dma_cfg zero, zero, r28, 10
0006a8  1f3e2000  addli r28, zero, 19
0006ac  1500c015  dma_cfg zero, zero, r28, 10
0006b0  1f4e2000  addli r28, zero, 20
0006b4  1500c015  dma_cfg zero, zero, r28, 10
0006b8  1f5e2000  addli r28, zero, 21
0006bc  1500c015  dma_cfg zero, zero, r28, 10
0006c0  1f6e2000  addli r28, zero, 22
0006c4  1500c015  dma_cfg zero, zero, r28, 10
0006c8  1f7e2000  addli r28, zero, 23
0006cc  1500c015  dma_cfg zero, zero, r28, 10
0006d0  1f0e3000  addli r28, zero, 24
0006d4  1500c015  dma_cfg zero, zero, r28, 10
0006d8  1f1e3000  addli r28, zero, 25
0006dc  1500c015  dma_cfg zero, zero, r28, 10
0006e0  1f2e3000  addli r28, zero, 26
0006e4  1500c015  dma_cfg zero, zero, r28, 10
0006e8  1f3e3000  addli r28, zero, 27
0006ec  1500c015  dma_cfg zero, zero, r28, 10
0006f0  1f4e3000  addli r28, zero, 28
0006f4  1500c015  dma_cfg zero, zero, r28, 10
0006f8  1f5e3000  addli r28, zero, 29
0006fc  1500c015  dma_cfg zero, zero, r28, 10
000700  1f6e3000  addli r28, zero, 30
000704  1500c015  dma_cfg zero, zero, r28, 10
000708  1f7e3000  addli r28, zero, 31
00070c  1500c015  dma_cfg zero, zero, r28, 10
000710  1f6e3000  addli r28, zero, 30
000714  15050500  dma_cfg r10, r10, zero, 0
000718  15050002  dma_cfg r10, zero, zero, 1
00071c  15000004  dma_cfg zero, zero, zero, 2
000720  1500b007  dma_cfg zero, zero, r27, 3
000724  150bc008  dma_cfg r22, zero, r12, 4
000728  9509600b  dma_cfg r19, zero, r22, 5
00072c  15000010  dma_cfg zero, zero, zero, 8
000730  35000000  dma_run zero
000734  1500a00a  dma_cfg zero, zero, r10, 5
000738  15000010  dma_cfg zero, zero, zero, 8
00073c  1d900500  unlock r11
000740  1d800400  lock zero, r9
000744  15050500  dma_cfg r10, r10, zero, 0
000748  15000804  dma_cfg zero, r16, zero, 2
00074c  958db707  dma_cfg r27, r15, r27, 3
000750  9f670000  addli r15, zero, 6
000754  1f080002  addli r16, zero, 256
000758  158bcd08  dma_cfg r22, r27, r12, 4
00075c  95096b0b  dma_cfg r19, r22, r22, 5
000760  1f1b2000  addli r22, zero, 17
000764  9f293000  addli r19, zero, 26
000768  15000010  dma_cfg zero, zero, zero, 8
00076c  35000000  dma_run zero
000770  1500a00a  dma_cfg zero, zero, r10, 5
000774  15000010  dma_cfg zero, zero, zero, 8
000778  1d900400  unlock r9
00077c  1d800500  lock zero, r11
000780  15000014  dma_cfg zero, zero, zero, 10
000784  1500a014  dma_cfg zero, zero, r10, 10
000788  1500c014  dma_cfg zero, zero, r12, 10
00078c  1500e014  dma_cfg zero, zero, r14, 10
000790  1f073000  addli r14, zero, 24
000794  15009014  dma_cfg zero, zero, r9, 10
000798  1500b014  dma_cfg zero, zero, r11, 10
00079c  1500f014  dma_cfg zero, zero, r15, 10
0007a0  9f070001  addli r15, zero, 128
0007a4  15001015  dma_cfg zero, zero, r17, 10
0007a8  9f783000  addli r17, zero, 31
0007ac  15008014  dma_cfg zero, zero, r8, 10
0007b0  1f542000  addli r8, zero, 21
0007b4  1500d014  dma_cfg zero, zero, r13, 10
0007b8  9f762000  addli r13, zero, 23
0007bc  15004015  dma_cfg zero, zero, r20, 10
0007c0  1f3a3000  addli r20, zero, 27
0007c4  15002015  dma_cfg zero, zero, r18, 10
0007c8  1f193000  addli r18, zero, 25
0007cc  15005014  dma_cfg zero, zero, r5, 10
0007d0  9f622000  addli r5, zero, 22
0007d4  15002014  dma_cfg zero, zero, r2, 10
0007d8  1f611000  addli r2, zero, 14
0007dc  15002014  dma_cfg zero, zero, r2, 10
0007e0  15003014  dma_cfg zero, zero, r3, 10
0007e4  9f312000  addli r3, zero, 19
0007e8  15004014  dma_cfg zero, zero, r4, 10
0007ec  1f422000  addli r4, zero, 20
0007f0  15006015  dma_cfg zero, zero, r22, 10
0007f4  15009015  dma_cfg zero, zero, r25, 10
0007f8  15003014  dma_cfg zero, zero, r3, 10
0007fc  15004014  dma_cfg zero, zero, r4, 10
000800  15008014  dma_cfg zero, zero, r8, 10
000804  15005014  dma_cfg zero, zero, r5, 10
000808  1500d014  dma_cfg zero, zero, r13, 10
00080c  1500e014  dma_cfg zero, zero, r14, 10
000810  15002015  dma_cfg zero, zero, r18, 10
000814  15003015  dma_cfg zero, zero, r19, 10
000818  15004015  dma_cfg zero, zero, r20, 10
00081c  15005015  dma_cfg zero, zero, r21, 10
000820  1500a015  dma_cfg zero, zero, r26, 10
000824  1500c015  dma_cfg zero, zero, r28, 10
000828  15001015  dma_cfg zero, zero, r17, 10
00082c  9f380000  addli r17, zero, 3
000830  15050500  dma_cfg r10, r10, zero, 0
000834  15050002  dma_cfg r10, zero, zero, 1
000838  15000004  dma_cfg zero, zero, zero, 2
00083c  1500b007  dma_cfg zero, zero, r27, 3
000840  9507c008  dma_cfg r15, zero, r12, 4
000844  1508f00a  dma_cfg r16, zero, r15, 5
000848  97b7ab02  sll.d r[16:17], r[24:25], r10
00084c  eb5b0f01  load.d r[24:25], 16(r30)
000850  15000010  dma_cfg zero, zero, zero, 8
000854  35000000  dma_run zero
000858  1500a00a  dma_cfg zero, zero, r10, 5
00085c  15000010  dma_cfg zero, zero, zero, 8
000860  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
000864  9f3b1000  addli r23, zero, 11
000868  1d900500  unlock r11
00086c  7d000600  xsignal r12, 0
000870  1f0c1000  addli r24, zero, 8
000874  7d900b00  xwait r23, 0
000878  1d800500  lock zero, r11
00087c  15000014  dma_cfg zero, zero, zero, 10
000880  1500a014  dma_cfg zero, zero, r10, 10
000884  1500c014  dma_cfg zero, zero, r12, 10
000888  15001015  dma_cfg zero, zero, r17, 10
00088c  9f680000  addli r17, zero, 6
000890  15009014  dma_cfg zero, zero, r9, 10
000894  1500b014  dma_cfg zero, zero, r11, 10
000898  15001015  dma_cfg zero, zero, r17, 10
00089c  9f780000  addli r17, zero, 7
0008a0  15001015  dma_cfg zero, zero, r17, 10
0008a4  15008015  dma_cfg zero, zero, r24, 10
0008a8  1f1c1000  addli r24, zero, 9
0008ac  15008015  dma_cfg zero, zero, r24, 10
0008b0  1f2c1000  addli r24, zero, 10
0008b4  15008015  dma_cfg zero, zero, r24, 10
0008b8  1f0c0004  addli r24, zero, 512
0008bc  15007015  dma_cfg zero, zero, r23, 10
0008c0  9f4b1000  addli r23, zero, 12
0008c4  15007015  dma_cfg zero, zero, r23, 10
0008c8  9f5b1000  addli r23, zero, 13
0008cc  15007015  dma_cfg zero, zero, r23, 10
0008d0  9b9b0004  ori r23, r1, 64
0008d4  15002014  dma_cfg zero, zero, r2, 10
0008d8  1f711000  addli r2, zero, 15
0008dc  15002014  dma_cfg zero, zero, r2, 10
0008e0  1f012000  addli r2, zero, 16
0008e4  15002014  dma_cfg zero, zero, r2, 10
0008e8  00310002  core_id r2
0008ec  15006015  dma_cfg zero, zero, r22, 10
0008f0  1f0b0001  addli r22, zero, 128
0008f4  15009015  dma_cfg zero, zero, r25, 10
0008f8  9f6c3000  addli r25, zero, 30
0008fc  15003014  dma_cfg zero, zero, r3, 10
000900  9f713000  addli r3, zero, 31
000904  15004014  dma_cfg zero, zero, r4, 10
000908  1f622000  addli r4, zero, 22
00090c  15008014  dma_cfg zero, zero, r8, 10
000910  1f043000  addli r8, zero, 24
000914  15005014  dma_cfg zero, zero, r5, 10
000918  9f722000  addli r5, zero, 23
00091c  1500d014  dma_cfg zero, zero, r13, 10
000920  9f660000  addli r13, zero, 6
000924  1500e014  dma_cfg zero, zero, r14, 10
000928  1f271000  addli r14, zero, 10
00092c  15002015  dma_cfg zero, zero, r18, 10
000930  1f191000  addli r18, zero, 9
000934  15003015  dma_cfg zero, zero, r19, 10
000938  9f491000  addli r19, zero, 12
00093c  15004015  dma_cfg zero, zero, r20, 10
000940  1f6a0000  addli r20, zero, 6
000944  15005015  dma_cfg zero, zero, r21, 10
000948  9f5a3000  addli r21, zero, 29
00094c  1500a015  dma_cfg zero, zero, r26, 10
000950  1f7d3000  addli r26, zero, 31
000954  1500c015  dma_cfg zero, zero, r28, 10
000958  1f0e0004  addli r28, zero, 512
00095c  15003014  dma_cfg zero, zero, r3, 10
000960  9f010002  addli r3, zero, 256
000964  15050500  dma_cfg r10, r10, zero, 0
000968  15050002  dma_cfg r10, zero, zero, 1
00096c  15000004  dma_cfg zero, zero, zero, 2
000970  9500b007  dma_cfg r1, zero, r27, 3
000974  150b9008  dma_cfg r22, zero, r9, 4
000978  150ca00a  dma_cfg r24, zero, r10, 5
00097c  15000010  dma_cfg zero, zero, zero, 8
000980  35000000  dma_run zero
000984  1500a00a  dma_cfg zero, zero, r10, 5
000988  15000010  dma_cfg zero, zero, zero, 8
00098c  1d900500  unlock r11
000990  1d800400  lock zero, r9
000994  15050500  dma_cfg r10, r10, zero, 0
000998  15000804  dma_cfg zero, r16, zero, 2
00099c  958bb707  dma_cfg r23, r15, r27, 3
0009a0  9f571000  addli r15, zero, 13
0009a4  158b9d08  dma_cfg r22, r27, r9, 4
0009a8  158ca10a  dma_cfg r24, r3, r10, 5
0009ac  9f310000  addli r3, zero, 3
0009b0  15000010  dma_cfg zero, zero, zero, 8
0009b4  35000000  dma_run zero
0009b8  1500a00a  dma_cfg zero, zero, r10, 5
0009bc  15000010  dma_cfg zero, zero, zero, 8
0009c0  1d900400  unlock r9
0009c4  1d800500  lock zero, r11
0009c8  15000014  dma_cfg zero, zero, zero, 10
0009cc  1500a014  dma_cfg zero, zero, r10, 10
0009d0  1500c014  dma_cfg zero, zero, r12, 10
0009d4  15003014  dma_cfg zero, zero, r3, 10
0009d8  9f011000  addli r3, zero, 8
0009dc  15009014  dma_cfg zero, zero, r9, 10
0009e0  1500b014  dma_cfg zero, zero, r11, 10
0009e4  1500d014  dma_cfg zero, zero, r13, 10
0009e8  9f061000  addli r13, zero, 8
0009ec  15001015  dma_cfg zero, zero, r17, 10
0009f0  15003014  dma_cfg zero, zero, r3, 10
0009f4  9f111000  addli r3, zero, 9
0009f8  15003014  dma_cfg zero, zero, r3, 10
0009fc  9f311000  addli r3, zero, 11
000a00  1500e014  dma_cfg zero, zero, r14, 10
000a04  15003014  dma_cfg zero, zero, r3, 10
000a08  9f411000  addli r3, zero, 12
000a0c  15003014  dma_cfg zero, zero, r3, 10
000a10  e3414f00  loadli.w r3,  36(r30)
000a14  1500f014  dma_cfg zero, zero, r15, 10
000a18  9f671000  addli r15, zero, 14
000a1c  1500f014  dma_cfg zero, zero, r15, 10
000a20  9f771000  addli r15, zero, 15
000a24  1500f014  dma_cfg zero, zero, r15, 10
000a28  9f072000  addli r15, zero, 16
000a2c  1500f014  dma_cfg zero, zero, r15, 10
000a30  9f172000  addli r15, zero, 17
000a34  1500f014  dma_cfg zero, zero, r15, 10
000a38  9f272000  addli r15, zero, 18
000a3c  1500f014  dma_cfg zero, zero, r15, 10
000a40  9f372000  addli r15, zero, 19
000a44  1500f014  dma_cfg zero, zero, r15, 10
000a48  9f472000  addli r15, zero, 20
000a4c  1500f014  dma_cfg zero, zero, r15, 10
000a50  9f572000  addli r15, zero, 21
000a54  1500f014  dma_cfg zero, zero, r15, 10
000a58  15004014  dma_cfg zero, zero, r4, 10
000a5c  1f123000  addli r4, zero, 25
000a60  15005014  dma_cfg zero, zero, r5, 10
000a64  15008014  dma_cfg zero, zero, r8, 10
000a68  15004014  dma_cfg zero, zero, r4, 10
000a6c  1f223000  addli r4, zero, 26
000a70  15004014  dma_cfg zero, zero, r4, 10
000a74  1f323000  addli r4, zero, 27
000a78  15004014  dma_cfg zero, zero, r4, 10
000a7c  1f423000  addli r4, zero, 28
000a80  15004014  dma_cfg zero, zero, r4, 10
000a84  15005015  dma_cfg zero, zero, r21, 10
000a88  15009015  dma_cfg zero, zero, r25, 10
000a8c  1500a015  dma_cfg zero, zero, r26, 10
000a90  15050500  dma_cfg r10, r10, zero, 0
000a94  15050002  dma_cfg r10, zero, zero, 1
000a98  15000004  dma_cfg zero, zero, zero, 2
000a9c  9500b007  dma_cfg r1, zero, r27, 3
000aa0  150b9008  dma_cfg r22, zero, r9, 4
000aa4  150ca00a  dma_cfg r24, zero, r10, 5
000aa8  15000010  dma_cfg zero, zero, zero, 8
000aac  35000000  dma_run zero
000ab0  1500a00a  dma_cfg zero, zero, r10, 5
000ab4  15000010  dma_cfg zero, zero, zero, 8
000ab8  1d900500  unlock r11
000abc  7d000700  xsignal r14, 0
000ac0  db2cffff  j -1692
000ac4  7d000000  xsignal zero, 0
000ac8  bb600100  bneq r2, zero, 56
000acc  9f200000  addli r1, zero, 2
000ad0  7d100000  xwait zero, 0
000ad4  7d100000  xwait zero, 0
000ad8  7d100000  xwait zero, 0
000adc  7d100000  xwait zero, 0
000ae0  7d100000  xwait zero, 0
000ae4  7d100000  xwait zero, 0
000ae8  7d100000  xwait zero, 0
000aec  7d100000  xwait zero, 0
000af0  1d800000  lock zero, r1
000af4  0d000020  ew_cfg zero, zero, zero, 16
000af8  1d900000  unlock r1
000afc  7d400000  xsignal_mode_cfg zero
000b00  9f8e1e00  addli sp, sp, 8
000b04  00a00300  mfence { lm, sm, gm }
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
