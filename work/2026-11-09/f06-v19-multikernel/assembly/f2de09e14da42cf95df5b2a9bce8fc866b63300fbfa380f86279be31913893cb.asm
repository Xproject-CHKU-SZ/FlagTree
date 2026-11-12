; SHA-256 f2de09e14da42cf95df5b2a9bce8fc866b63300fbfa380f86279be31913893cb
; P800 SDNN · XTDK LLVM 19 · 777 / 777 words decoded
; bound names: triton_tem_fused_mm_0
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
0000b4  9f8e5eff  addli sp, sp, -88
0000b8  9f100000  addli r1, zero, 1
0000bc  00310002  core_id r2
0000c0  003e0002  core_id r28
0000c4  1f8f3e00  addli r30, sp, 24
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37600100  beq r2, zero, 24
0000d0  abf0ffff  lui r1, 1048575
0000d4  9b90f0ff  ori r1, r1, 4095
0000d8  80a10004  csr_set csr3, r1
0000dc  00d00100  sync_group
0000e0  db110000  j 140
0000e4  9f210000  addli r3, zero, 2
0000e8  fdd00000  uni_sram_cfg r1, r1
0000ec  2bf2ffff  lui r4, 1048575
0000f0  1d800100  lock zero, r3
0000f4  8d000020  ew_cfg r1, zero, zero, 16
0000f8  9b10f2ff  ori r1, r4, 4095
0000fc  1d900100  unlock r3
000100  9f510000  addli r3, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f301000  addli r1, zero, 11
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d800000  xsignal r1, 0
000120  9f300000  addli r1, zero, 3
000124  7d800100  xsignal r3, 0
000128  7d800100  xsignal r3, 0
00012c  7d800100  xsignal r3, 0
000130  7d800100  xsignal r3, 0
000134  9f111000  addli r3, zero, 9
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  9f700000  addli r1, zero, 7
00014c  7d800100  xsignal r3, 0
000150  7d800100  xsignal r3, 0
000154  7d800100  xsignal r3, 0
000158  7d800100  xsignal r3, 0
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  e3003f00  loadli.w r1,  24(r30)
000170  e3413f00  loadli.w r3,  28(r30)
000174  80d20002  load_param_i r5, 1
000178  63024f00  loadli.w r4,  32(r30)
00017c  8b901120  mul.s r1, r3, r1
000180  9f810200  addli r3, r5, 0
000184  8b914050  fmac.s r3, r1, r4
000188  0b924020  mul.s r4, r1, r4
00018c  9ff1f1ff  addli r3, r3, -1
000190  8b915130  div.s r3, r3, r5
000194  80520002  load_param_i r5, 0
000198  8b905120  mul.s r1, r3, r5
00019c  8b915150  fmac.s r3, r3, r5
0001a0  8b914140  min.s r3, r3, r4
0001a4  cbef1102  ble.s r3, r1, 2040
0001a8  b3910128  sext_int2long r[4:5], r3
0001ac  33930028  sext_int2long r[7:8], r1
0001b0  1f440000  addli r8, zero, 4
0001b4  9f048000  addli r9, zero, 64
0001b8  1f051000  addli r10, zero, 8
0001bc  9f770000  addli r15, zero, 7
0001c0  9f6a0000  addli r21, zero, 6
0001c4  9f290000  addli r19, zero, 2
0001c8  1f5a0000  addli r20, zero, 5
0001cc  1f310000  addli r2, zero, 3
0001d0  1f1b0000  addli r22, zero, 1
0001d4  1f060001  addli r12, zero, 128
0001d8  1f0c0000  addli r24, zero, 0
0001dc  733c3ffe  store.d r[4:5], -8(r30)
0001e0  1f72f00f  addli r4, zero, 2047
0001e4  ab81ffff  lui r3, 1048568
0001e8  73383ffe  store.d r[4:5], -16(r30)
0001ec  b3010028  zext_int2long r[4:5], zero
0001f0  73343ffe  store.d r[4:5], -24(r30)
0001f4  5b2e0000  j 368
0001f8  ab010200  lui r3, 32
0001fc  1d000400  lock zero, r8
000200  9f050001  addli r11, zero, 128
000204  9f060002  addli r13, zero, 256
000208  1f310000  addli r2, zero, 3
00020c  9f6a0000  addli r21, zero, 6
000210  1f060001  addli r12, zero, 128
000214  150b0b00  dma_cfg r22, r22, zero, 0
000218  9b910104  ori r3, r3, 64
00021c  15800d04  dma_cfg zero, r27, zero, 2
000220  8b913b10  add.s r3, r23, r3
000224  95019d06  dma_cfg r3, r26, r9, 3
000228  9f111000  addli r3, zero, 9
00022c  95853409  dma_cfg r11, r9, r19, 4
000230  9586150a  dma_cfg r13, r11, r1, 5
000234  15000010  dma_cfg zero, zero, zero, 8
000238  35000000  dma_run zero
00023c  1500600b  dma_cfg zero, zero, r22, 5
000240  15000010  dma_cfg zero, zero, zero, 8
000244  1d100400  unlock r8
000248  1d000a00  lock zero, r20
00024c  15000014  dma_cfg zero, zero, zero, 10
000250  15006015  dma_cfg zero, zero, r22, 10
000254  15003015  dma_cfg zero, zero, r19, 10
000258  15004014  dma_cfg zero, zero, r4, 10
00025c  15008014  dma_cfg zero, zero, r8, 10
000260  15004015  dma_cfg zero, zero, r20, 10
000264  15005014  dma_cfg zero, zero, r5, 10
000268  1500f014  dma_cfg zero, zero, r15, 10
00026c  1500a014  dma_cfg zero, zero, r10, 10
000270  15003014  dma_cfg zero, zero, r3, 10
000274  9f211000  addli r3, zero, 10
000278  15003014  dma_cfg zero, zero, r3, 10
00027c  9f311000  addli r3, zero, 11
000280  15003014  dma_cfg zero, zero, r3, 10
000284  9f411000  addli r3, zero, 12
000288  15003014  dma_cfg zero, zero, r3, 10
00028c  9f611000  addli r3, zero, 14
000290  15001015  dma_cfg zero, zero, r17, 10
000294  15003014  dma_cfg zero, zero, r3, 10
000298  9f711000  addli r3, zero, 15
00029c  15003014  dma_cfg zero, zero, r3, 10
0002a0  9f012000  addli r3, zero, 16
0002a4  15003014  dma_cfg zero, zero, r3, 10
0002a8  9f112000  addli r3, zero, 17
0002ac  15003014  dma_cfg zero, zero, r3, 10
0002b0  9f212000  addli r3, zero, 18
0002b4  15003014  dma_cfg zero, zero, r3, 10
0002b8  9f312000  addli r3, zero, 19
0002bc  15003014  dma_cfg zero, zero, r3, 10
0002c0  9f412000  addli r3, zero, 20
0002c4  15003014  dma_cfg zero, zero, r3, 10
0002c8  9f512000  addli r3, zero, 21
0002cc  15003014  dma_cfg zero, zero, r3, 10
0002d0  9f612000  addli r3, zero, 22
0002d4  15003014  dma_cfg zero, zero, r3, 10
0002d8  9f712000  addli r3, zero, 23
0002dc  15003014  dma_cfg zero, zero, r3, 10
0002e0  9f013000  addli r3, zero, 24
0002e4  15003014  dma_cfg zero, zero, r3, 10
0002e8  9f113000  addli r3, zero, 25
0002ec  15003014  dma_cfg zero, zero, r3, 10
0002f0  9f213000  addli r3, zero, 26
0002f4  15003014  dma_cfg zero, zero, r3, 10
0002f8  9f313000  addli r3, zero, 27
0002fc  15003014  dma_cfg zero, zero, r3, 10
000300  9f413000  addli r3, zero, 28
000304  15003014  dma_cfg zero, zero, r3, 10
000308  9f513000  addli r3, zero, 29
00030c  15003014  dma_cfg zero, zero, r3, 10
000310  9f613000  addli r3, zero, 30
000314  15003014  dma_cfg zero, zero, r3, 10
000318  9f713000  addli r3, zero, 31
00031c  15003014  dma_cfg zero, zero, r3, 10
000320  150b0b00  dma_cfg r22, r22, zero, 0
000324  150b0002  dma_cfg r22, zero, zero, 1
000328  15000004  dma_cfg zero, zero, zero, 2
00032c  950c9006  dma_cfg r25, zero, r9, 3
000330  95053009  dma_cfg r11, zero, r19, 4
000334  9506100a  dma_cfg r13, zero, r1, 5
000338  15000010  dma_cfg zero, zero, zero, 8
00033c  35000000  dma_run zero
000340  1500600b  dma_cfg zero, zero, r22, 5
000344  15000010  dma_cfg zero, zero, zero, 8
000348  1d100a00  unlock r20
00034c  7d800900  xsignal r19, 0
000350  eb518fff  load.d r[4:5], -8(r30)
000354  27130300  addli.d r[7:8], r[7:8], 1
000358  1f1c0c00  addli r24, r24, 1
00035c  93303304  setlt.sl r1, r[7:8], r[4:5]
000360  b7f80002  beq r1, zero, 1596
000364  e3004f00  loadli.w r1,  32(r30)
000368  e3413f00  loadli.w r3,  28(r30)
00036c  9f421000  addli r5, zero, 12
000370  8b101330  div.s r1, r6, r1
000374  8b913030  div.s r3, r1, r3
000378  0b9e9130  div.s r28, r3, r9
00037c  9b303e00  slli r1, r28, 3
000380  0b121518  sub.s r4, r10, r1
000384  8b18a240  min.s r17, r4, r10
000388  0b921139  mod.s r4, r3, r17
00038c  8b101210  add.s r1, r4, r1
000390  13821704  setlt.u r4, r15, r1
000394  338d0028  zext_int2long r[27:28], r1
000398  97375d02  sll.d r[16:17], r[27:28], r5
00039c  3b300200  bneq r4, zero, 12
0003a0  6b528ffe  load.d r[5:6], -24(r30)
0003a4  db010000  j 12
0003a8  6b520fff  load.d r[5:6], -16(r30)
0003ac  17824702  and.d r[5:6], r[16:17], r[5:6]
0003b0  0b198c38  mod.s r18, r24, r8
0003b4  ab060200  lui r13, 32
0003b8  80350002  core_id r11
0003bc  9b3be900  slli r23, r18, 14
0003c0  8b9cdb10  add.s r25, r23, r13
0003c4  37f53501  beq r11, r19, 348
0003c8  9f068003  addli r13, zero, 448
0003cc  b3860628  zext_int2long r[14:15], r13
0003d0  3ba66501  bneq r11, r22, 392
0003d4  8bb14718  sub.sl r[4:5], r[16:17], r[5:6]
0003d8  9f620000  addli r5, zero, 6
0003dc  9f581000  addli r17, zero, 13
0003e0  eb500f00  load.d r[2:3], 0(r30)
0003e4  003e0002  core_id r28
0003e8  97d15102  sra.d r[4:5], r[4:5], r5
0003ec  97371d03  sll.d r[16:17], r[27:28], r17
0003f0  8bb6d140  min.sl r[14:15], r[4:5], r[14:15]
0003f4  0badf010  add.ul r[27:28], r[2:3], r[16:17]
0003f8  9f770000  addli r15, zero, 7
0003fc  8bb13618  sub.sl r[4:5], r[14:15], r[4:5]
000400  9f808100  addli r1, r3, 64
000404  1f320000  addli r4, zero, 3
000408  7d100200  xwait r4, 0
00040c  bf3782ff  blt.s r4, r24, -532
000410  1d000a00  lock zero, r20
000414  1f111000  addli r2, zero, 9
000418  9f411000  addli r3, zero, 12
00041c  15000014  dma_cfg zero, zero, zero, 10
000420  15006015  dma_cfg zero, zero, r22, 10
000424  15003015  dma_cfg zero, zero, r19, 10
000428  15004014  dma_cfg zero, zero, r4, 10
00042c  15008014  dma_cfg zero, zero, r8, 10
000430  15004015  dma_cfg zero, zero, r20, 10
000434  15005014  dma_cfg zero, zero, r5, 10
000438  1500f014  dma_cfg zero, zero, r15, 10
00043c  1500a014  dma_cfg zero, zero, r10, 10
000440  15002014  dma_cfg zero, zero, r2, 10
000444  1f211000  addli r2, zero, 10
000448  15002014  dma_cfg zero, zero, r2, 10
00044c  1f311000  addli r2, zero, 11
000450  15002014  dma_cfg zero, zero, r2, 10
000454  1f611000  addli r2, zero, 14
000458  15003014  dma_cfg zero, zero, r3, 10
00045c  15001015  dma_cfg zero, zero, r17, 10
000460  15002014  dma_cfg zero, zero, r2, 10
000464  1f711000  addli r2, zero, 15
000468  15002014  dma_cfg zero, zero, r2, 10
00046c  1f012000  addli r2, zero, 16
000470  15002014  dma_cfg zero, zero, r2, 10
000474  1f112000  addli r2, zero, 17
000478  15002014  dma_cfg zero, zero, r2, 10
00047c  1f212000  addli r2, zero, 18
000480  15002014  dma_cfg zero, zero, r2, 10
000484  1f312000  addli r2, zero, 19
000488  15002014  dma_cfg zero, zero, r2, 10
00048c  1f412000  addli r2, zero, 20
000490  15002014  dma_cfg zero, zero, r2, 10
000494  1f512000  addli r2, zero, 21
000498  15002014  dma_cfg zero, zero, r2, 10
00049c  1f612000  addli r2, zero, 22
0004a0  15002014  dma_cfg zero, zero, r2, 10
0004a4  1f712000  addli r2, zero, 23
0004a8  15002014  dma_cfg zero, zero, r2, 10
0004ac  1f013000  addli r2, zero, 24
0004b0  15002014  dma_cfg zero, zero, r2, 10
0004b4  1f113000  addli r2, zero, 25
0004b8  15002014  dma_cfg zero, zero, r2, 10
0004bc  1f213000  addli r2, zero, 26
0004c0  15002014  dma_cfg zero, zero, r2, 10
0004c4  1f313000  addli r2, zero, 27
0004c8  15002014  dma_cfg zero, zero, r2, 10
0004cc  1f413000  addli r2, zero, 28
0004d0  15002014  dma_cfg zero, zero, r2, 10
0004d4  1f513000  addli r2, zero, 29
0004d8  15002014  dma_cfg zero, zero, r2, 10
0004dc  1f613000  addli r2, zero, 30
0004e0  15002014  dma_cfg zero, zero, r2, 10
0004e4  1f713000  addli r2, zero, 31
0004e8  15002014  dma_cfg zero, zero, r2, 10
0004ec  1f010002  addli r2, zero, 256
0004f0  150b0b00  dma_cfg r22, r22, zero, 0
0004f4  150b0002  dma_cfg r22, zero, zero, 1
0004f8  15000004  dma_cfg zero, zero, zero, 2
0004fc  950c9006  dma_cfg r25, zero, r9, 3
000500  15063009  dma_cfg r12, zero, r19, 4
000504  1501900a  dma_cfg r2, zero, r9, 5
000508  15000010  dma_cfg zero, zero, zero, 8
00050c  35000000  dma_run zero
000510  1500600b  dma_cfg zero, zero, r22, 5
000514  15000010  dma_cfg zero, zero, zero, 8
000518  1d100a00  unlock r20
00051c  db9bffff  j -804
000520  7d900900  xwait r19, 0
000524  7d100a00  xwait r20, 0
000528  1d000000  lock zero, zero
00052c  003e0002  core_id r28
000530  9f770000  addli r15, zero, 7
000534  81090000  ds_cfg r19, zero, 0
000538  81040002  ds_cfg r9, zero, 1
00053c  8104001c  ds_cfg r9, zero, 14
000540  8104001a  ds_cfg r9, zero, 13
000544  a19b9c02  shuffle_batch r23, r25, r9, 1
000548  1d100000  unlock zero
00054c  7d000100  xsignal r2, 0
000550  7d000400  xsignal r8, 0
000554  dbbfffff  j -516
000558  9b3cf900  slli r25, r18, 15
00055c  00320002  core_id r4
000560  371c8200  beq r4, r8, 772
000564  2b020300  lui r4, 48
000568  9f770000  addli r15, zero, 7
00056c  8b9b4c10  add.s r23, r25, r4
000570  00320002  core_id r4
000574  b74af200  beq r4, r15, 688
000578  1b326e00  slli r4, r28, 6
00057c  003e0002  core_id r28
000580  8b914118  sub.s r3, r3, r4
000584  8b911131  div.s r3, r3, r17
000588  33820128  zext_int2long r[5:6], r3
00058c  1732f202  sll.d r[5:6], r[5:6], r15
000590  97386203  sll.d r[18:19], r[5:6], r22
000594  00320002  core_id r4
000598  bb6c5201  bneq r4, r21, 824
00059c  eb508f00  load.d r[2:3], 8(r30)
0005a0  9f610000  addli r3, zero, 6
0005a4  1f521000  addli r4, zero, 13
0005a8  9f320000  addli r5, zero, 3
0005ac  7d900700  xwait r15, 0
0005b0  0bad1011  add.ul r[27:28], r[2:3], r[18:19]
0005b4  3fc48201  blt.s r5, r24, 272
0005b8  1d000a00  lock zero, r20
0005bc  9f101000  addli r1, zero, 9
0005c0  15000014  dma_cfg zero, zero, zero, 10
0005c4  15006015  dma_cfg zero, zero, r22, 10
0005c8  15003015  dma_cfg zero, zero, r19, 10
0005cc  15005014  dma_cfg zero, zero, r5, 10
0005d0  15008014  dma_cfg zero, zero, r8, 10
0005d4  15004015  dma_cfg zero, zero, r20, 10
0005d8  15003014  dma_cfg zero, zero, r3, 10
0005dc  1500f014  dma_cfg zero, zero, r15, 10
0005e0  1500a014  dma_cfg zero, zero, r10, 10
0005e4  15001014  dma_cfg zero, zero, r1, 10
0005e8  9f201000  addli r1, zero, 10
0005ec  15001014  dma_cfg zero, zero, r1, 10
0005f0  9f301000  addli r1, zero, 11
0005f4  15001014  dma_cfg zero, zero, r1, 10
0005f8  9f401000  addli r1, zero, 12
0005fc  15001014  dma_cfg zero, zero, r1, 10
000600  9f601000  addli r1, zero, 14
000604  15004014  dma_cfg zero, zero, r4, 10
000608  15001014  dma_cfg zero, zero, r1, 10
00060c  9f701000  addli r1, zero, 15
000610  15001014  dma_cfg zero, zero, r1, 10
000614  9f002000  addli r1, zero, 16
000618  15001014  dma_cfg zero, zero, r1, 10
00061c  9f102000  addli r1, zero, 17
000620  15001014  dma_cfg zero, zero, r1, 10
000624  9f202000  addli r1, zero, 18
000628  15001014  dma_cfg zero, zero, r1, 10
00062c  9f302000  addli r1, zero, 19
000630  15001014  dma_cfg zero, zero, r1, 10
000634  9f402000  addli r1, zero, 20
000638  15001014  dma_cfg zero, zero, r1, 10
00063c  9f502000  addli r1, zero, 21
000640  15001014  dma_cfg zero, zero, r1, 10
000644  9f602000  addli r1, zero, 22
000648  15001014  dma_cfg zero, zero, r1, 10
00064c  9f702000  addli r1, zero, 23
000650  15001014  dma_cfg zero, zero, r1, 10
000654  9f003000  addli r1, zero, 24
000658  15001014  dma_cfg zero, zero, r1, 10
00065c  9f103000  addli r1, zero, 25
000660  15001014  dma_cfg zero, zero, r1, 10
000664  9f203000  addli r1, zero, 26
000668  15001014  dma_cfg zero, zero, r1, 10
00066c  9f303000  addli r1, zero, 27
000670  15001014  dma_cfg zero, zero, r1, 10
000674  9f403000  addli r1, zero, 28
000678  15001014  dma_cfg zero, zero, r1, 10
00067c  9f503000  addli r1, zero, 29
000680  15001014  dma_cfg zero, zero, r1, 10
000684  9f603000  addli r1, zero, 30
000688  15001014  dma_cfg zero, zero, r1, 10
00068c  9f703000  addli r1, zero, 31
000690  15001014  dma_cfg zero, zero, r1, 10
000694  9f000004  addli r1, zero, 512
000698  150b0b00  dma_cfg r22, r22, zero, 0
00069c  150b0002  dma_cfg r22, zero, zero, 1
0006a0  15000004  dma_cfg zero, zero, zero, 2
0006a4  950b9006  dma_cfg r23, zero, r9, 3
0006a8  15068008  dma_cfg r12, zero, r8, 4
0006ac  9500900a  dma_cfg r1, zero, r9, 5
0006b0  15000010  dma_cfg zero, zero, zero, 8
0006b4  35000000  dma_run zero
0006b8  1500600b  dma_cfg zero, zero, r22, 5
0006bc  15000010  dma_cfg zero, zero, zero, 8
0006c0  1d100a00  unlock r20
0006c4  ab000300  lui r1, 48
0006c8  1d000400  lock zero, r8
0006cc  9f050001  addli r11, zero, 128
0006d0  9f060004  addli r13, zero, 512
0006d4  1f310000  addli r2, zero, 3
0006d8  1f060001  addli r12, zero, 128
0006dc  9f6a0000  addli r21, zero, 6
0006e0  150b0b00  dma_cfg r22, r22, zero, 0
0006e4  9b900004  ori r1, r1, 64
0006e8  15800d04  dma_cfg zero, r27, zero, 2
0006ec  8b901c10  add.s r1, r25, r1
0006f0  95009d06  dma_cfg r1, r26, r9, 3
0006f4  9f000010  addli r1, zero, 2048
0006f8  95858408  dma_cfg r11, r9, r8, 4
0006fc  9586900a  dma_cfg r13, r1, r9, 5
000700  9f101000  addli r1, zero, 9
000704  15000010  dma_cfg zero, zero, zero, 8
000708  35000000  dma_run zero
00070c  1500600b  dma_cfg zero, zero, r22, 5
000710  15000010  dma_cfg zero, zero, zero, 8
000714  1d100400  unlock r8
000718  1d000a00  lock zero, r20
00071c  15000014  dma_cfg zero, zero, zero, 10
000720  15006015  dma_cfg zero, zero, r22, 10
000724  15003015  dma_cfg zero, zero, r19, 10
000728  15005014  dma_cfg zero, zero, r5, 10
00072c  15008014  dma_cfg zero, zero, r8, 10
000730  15004015  dma_cfg zero, zero, r20, 10
000734  15003014  dma_cfg zero, zero, r3, 10
000738  1500f014  dma_cfg zero, zero, r15, 10
00073c  1500a014  dma_cfg zero, zero, r10, 10
000740  15001014  dma_cfg zero, zero, r1, 10
000744  9f201000  addli r1, zero, 10
000748  15001014  dma_cfg zero, zero, r1, 10
00074c  9f301000  addli r1, zero, 11
000750  15001014  dma_cfg zero, zero, r1, 10
000754  9f401000  addli r1, zero, 12
000758  15001014  dma_cfg zero, zero, r1, 10
00075c  9f601000  addli r1, zero, 14
000760  15004014  dma_cfg zero, zero, r4, 10
000764  15001014  dma_cfg zero, zero, r1, 10
000768  9f701000  addli r1, zero, 15
00076c  15001014  dma_cfg zero, zero, r1, 10
000770  9f002000  addli r1, zero, 16
000774  15001014  dma_cfg zero, zero, r1, 10
000778  9f102000  addli r1, zero, 17
00077c  15001014  dma_cfg zero, zero, r1, 10
000780  9f202000  addli r1, zero, 18
000784  15001014  dma_cfg zero, zero, r1, 10
000788  9f302000  addli r1, zero, 19
00078c  15001014  dma_cfg zero, zero, r1, 10
000790  9f402000  addli r1, zero, 20
000794  15001014  dma_cfg zero, zero, r1, 10
000798  9f502000  addli r1, zero, 21
00079c  15001014  dma_cfg zero, zero, r1, 10
0007a0  9f602000  addli r1, zero, 22
0007a4  15001014  dma_cfg zero, zero, r1, 10
0007a8  9f702000  addli r1, zero, 23
0007ac  15001014  dma_cfg zero, zero, r1, 10
0007b0  9f003000  addli r1, zero, 24
0007b4  15001014  dma_cfg zero, zero, r1, 10
0007b8  9f103000  addli r1, zero, 25
0007bc  15001014  dma_cfg zero, zero, r1, 10
0007c0  9f203000  addli r1, zero, 26
0007c4  15001014  dma_cfg zero, zero, r1, 10
0007c8  9f303000  addli r1, zero, 27
0007cc  15001014  dma_cfg zero, zero, r1, 10
0007d0  9f403000  addli r1, zero, 28
0007d4  15001014  dma_cfg zero, zero, r1, 10
0007d8  9f503000  addli r1, zero, 29
0007dc  15001014  dma_cfg zero, zero, r1, 10
0007e0  9f603000  addli r1, zero, 30
0007e4  15001014  dma_cfg zero, zero, r1, 10
0007e8  9f703000  addli r1, zero, 31
0007ec  15001014  dma_cfg zero, zero, r1, 10
0007f0  150b0b00  dma_cfg r22, r22, zero, 0
0007f4  150b0002  dma_cfg r22, zero, zero, 1
0007f8  15000004  dma_cfg zero, zero, zero, 2
0007fc  950b9006  dma_cfg r23, zero, r9, 3
000800  95058008  dma_cfg r11, zero, r8, 4
000804  9506900a  dma_cfg r13, zero, r9, 5
000808  15000010  dma_cfg zero, zero, zero, 8
00080c  35000000  dma_run zero
000810  1500600b  dma_cfg zero, zero, r22, 5
000814  15000010  dma_cfg zero, zero, zero, 8
000818  1d100a00  unlock r20
00081c  7d800100  xsignal r3, 0
000820  5b66ffff  j -1232
000824  9f101000  addli r1, zero, 9
000828  7d900a00  xwait r21, 0
00082c  003e0002  core_id r28
000830  1f060001  addli r12, zero, 128
000834  7d900000  xwait r1, 0
000838  1d000000  lock zero, zero
00083c  9f000001  addli r1, zero, 128
000840  81090000  ds_cfg r19, zero, 0
000844  81000002  ds_cfg r1, zero, 1
000848  8104001c  ds_cfg r9, zero, 14
00084c  8100001a  ds_cfg r1, zero, 13
000850  c18c9b04  shuffle_coa r25, r23, r9, 2
000854  1d100000  unlock zero
000858  7d800700  xsignal r15, 0
00085c  7d000500  xsignal r10, 0
000860  5b5effff  j -1296
000864  003e0002  core_id r28
000868  9f060000  addli r13, zero, 0
00086c  9f100000  addli r1, zero, 1
000870  9f110000  addli r3, zero, 1
000874  9f770000  addli r15, zero, 7
000878  1f321000  addli r4, zero, 11
00087c  7d100400  xwait r8, 0
000880  7d100500  xwait r10, 0
000884  7d100200  xwait r4, 0
000888  1bb2e600  slli r4, r13, 14
00088c  9bb28600  slli r5, r13, 8
000890  1d800000  lock zero, r1
000894  9f160000  addli r13, zero, 1
000898  89849400  mm_cfg r9, r9, r9, 0
00089c  17129201  or r4, r4, r25
0008a0  97929201  or r5, r5, r25
0008a4  09041404  mm_cfg r8, r8, r1, 2
0008a8  a9824b10  mm r5, r23, r4, 8
0008ac  1b821100  andi r4, r3, 1
0008b0  9f010000  addli r3, zero, 0
0008b4  1d900000  unlock r1
0008b8  3b4f02fe  bneq r4, zero, -48
0008bc  9f101000  addli r1, zero, 9
0008c0  7d000a00  xsignal r20, 0
0008c4  7d800000  xsignal r1, 0
0008c8  9f201000  addli r1, zero, 10
0008cc  5b190000  j 200
0008d0  3b0a02fc  bneq r4, zero, -1408
0008d4  1f020007  addli r4, zero, 896
0008d8  9bb17100  slli r3, r3, 7
0008dc  9bb06000  slli r1, r1, 6
0008e0  33020228  zext_int2long r[5:6], r4
0008e4  b3870128  zext_int2long r[16:17], r3
0008e8  b3950028  sext_int2long r[12:13], r1
0008ec  9f102000  addli r1, zero, 17
0008f0  8ba14740  min.ul r[4:5], r[16:17], r[5:6]
0008f4  8bb6d540  min.sl r[14:15], r[12:13], r[14:15]
0008f8  9f020001  addli r5, zero, 128
0008fc  a7810101  addli.d r[4:5], r[4:5], 128
000900  a7868600  addli.d r[14:15], r[14:15], 64
000904  8ba1f148  max.ul r[4:5], r[4:5], r[16:17]
000908  8bb6b648  max.sl r[14:15], r[14:15], r[12:13]
00090c  8bb1f118  sub.sl r[4:5], r[4:5], r[16:17]
000910  b3870228  zext_int2long r[16:17], r5
000914  8bb5b618  sub.sl r[12:13], r[14:15], r[12:13]
000918  eb560f01  load.d r[14:15], 16(r30)
00091c  8ba1f140  min.ul r[4:5], r[4:5], r[16:17]
000920  97371d02  sll.d r[16:17], r[27:28], r1
000924  9f201000  addli r1, zero, 10
000928  8ba6f610  add.ul r[14:15], r[14:15], r[16:17]
00092c  7d900000  xwait r1, 0
000930  1d000a00  lock zero, r20
000934  9b900c04  ori r1, r25, 64
000938  b3870428  zext_int2long r[16:17], r9
00093c  150b0b00  dma_cfg r22, r22, zero, 0
000940  8ba61611  add.ul r[14:15], r[14:15], r[18:19]
000944  15000b02  dma_cfg zero, r22, zero, 1
000948  15070004  dma_cfg r14, zero, zero, 2
00094c  95869006  dma_cfg r13, r1, r9, 3
000950  9ff03100  addli r1, r3, 31
000954  9bb11100  slli r3, r3, 1
000958  8bb6f540  min.sl r[14:15], r[12:13], r[16:17]
00095c  1f020010  addli r4, zero, 2048
000960  9f770000  addli r15, zero, 7
000964  1f060001  addli r12, zero, 128
000968  9bc05000  srli r1, r1, 5
00096c  95841208  dma_cfg r9, r5, r1, 4
000970  9b80e103  andi r1, r3, 62
000974  9f010004  addli r3, zero, 512
000978  1582d10a  dma_cfg r4, r3, r13, 5
00097c  15001010  dma_cfg zero, zero, r1, 8
000980  35000000  dma_run zero
000984  1500600b  dma_cfg zero, zero, r22, 5
000988  9f301000  addli r1, zero, 11
00098c  15000010  dma_cfg zero, zero, zero, 8
000990  1d100a00  unlock r20
000994  7d800000  xsignal r1, 0
000998  5b37ffff  j -1608
00099c  7d000000  xsignal zero, 0
0009a0  bb600e00  bneq r28, zero, 56
0009a4  9f200000  addli r1, zero, 2
0009a8  7d100000  xwait zero, 0
0009ac  7d100000  xwait zero, 0
0009b0  7d100000  xwait zero, 0
0009b4  7d100000  xwait zero, 0
0009b8  7d100000  xwait zero, 0
0009bc  7d100000  xwait zero, 0
0009c0  7d100000  xwait zero, 0
0009c4  7d100000  xwait zero, 0
0009c8  1d800000  lock zero, r1
0009cc  0d000020  ew_cfg zero, zero, zero, 16
0009d0  1d900000  unlock r1
0009d4  7d400000  xsignal_mode_cfg zero
0009d8  9f8e3e00  addli sp, sp, 24
0009dc  00a00300  mfence { lm, sm, gm }
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
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
