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
00005c  9f094000  addli r19, zero, 32
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
0000b4  9f8eeefe  addli sp, sp, -144
0000b8  1f8fae00  addli r30, sp, 80
0000bc  9f100000  addli r1, zero, 1
0000c0  00340002  core_id r8
0000c4  e34c3f00  loadli.w r25,  28(r30)
0000c8  e3043f00  loadli.w r9,  24(r30)
0000cc  7dc00000  xsignal_mode_cfg r1
0000d0  37600400  beq r8, zero, 24
0000d4  abf0ffff  lui r1, 1048575
0000d8  9b90f0ff  ori r1, r1, 4095
0000dc  80a10004  csr_set csr3, r1
0000e0  00d00100  sync_group
0000e4  5b080000  j 64
0000e8  1f210000  addli r2, zero, 2
0000ec  fdd00000  uni_sram_cfg r1, r1
0000f0  abf1ffff  lui r3, 1048575
0000f4  1d000100  lock zero, r2
0000f8  8d000020  ew_cfg r1, zero, zero, 16
0000fc  9b90f1ff  ori r1, r3, 4095
000100  1d100100  unlock r2
000104  1f111000  addli r2, zero, 9
000108  80a10004  csr_set csr3, r1
00010c  9f400000  addli r1, zero, 4
000110  00d00100  sync_group
000114  7d800000  xsignal r1, 0
000118  9f600000  addli r1, zero, 6
00011c  7d800000  xsignal r1, 0
000120  7d000100  xsignal r2, 0
000124  e3402f00  loadli.w r1,  20(r30)
000128  63013f00  loadli.w r2,  24(r30)
00012c  00d20002  load_param_i r4, 1
000130  e3413f00  loadli.w r3,  28(r30)
000134  8b101120  mul.s r1, r2, r1
000138  1f010200  addli r2, r4, 0
00013c  0b913050  fmac.s r2, r1, r3
000140  8b913020  mul.s r3, r1, r3
000144  1f71f1ff  addli r2, r2, -1
000148  0b114130  div.s r2, r2, r4
00014c  00520002  load_param_i r4, 0
000150  8b104120  mul.s r1, r2, r4
000154  0b114150  fmac.s r2, r2, r4
000158  0b113140  min.s r2, r2, r3
00015c  4b791104  ble.s r2, r1, 2652
000160  33970028  sext_int2long r[15:16], r1
000164  ab700000  lui r1, 7
000168  33150128  sext_int2long r[11:12], r2
00016c  2bf17f7f  lui r2, 522239
000170  2bf6ff7f  lui r12, 524287
000174  1f1c1000  addli r24, zero, 9
000178  1f281000  addli r16, zero, 10
00017c  9f480000  addli r17, zero, 4
000180  1f190000  addli r18, zero, 1
000184  9f590000  addli r19, zero, 5
000188  1f2a0000  addli r20, zero, 2
00018c  9f3a0000  addli r21, zero, 3
000190  9f061000  addli r13, zero, 8
000194  9b90f0ff  ori r1, r1, 4095
000198  1b1df6ff  ori r26, r12, 4095
00019c  7338affa  store.d r[11:12], -80(r30)
0001a0  674e1ffe  storeli.w r1, -28(r30)
0001a4  9b10f1ff  ori r1, r2, 4095
0001a8  674dafff  storeli.w r26, -44(r30)
0001ac  e74f1ffe  storeli.w r1, -4(r30)
0001b0  ab004000  lui r1, 1024
0001b4  5b0b0000  j 88
0001b8  9f480000  addli r17, zero, 4
0001bc  1f710000  addli r2, zero, 7
0001c0  e3463f00  loadli.w r13,  28(r30)
0001c4  00200100  mfence { sm }
0001c8  e3043f00  loadli.w r9,  24(r30)
0001cc  00340002  core_id r8
0001d0  1f1c1000  addli r24, zero, 9
0001d4  1f281000  addli r16, zero, 10
0001d8  1f190000  addli r18, zero, 1
0001dc  9f590000  addli r19, zero, 5
0001e0  1f2a0000  addli r20, zero, 2
0001e4  9f3a0000  addli r21, zero, 3
0001e8  7d800800  xsignal r17, 0
0001ec  7d000100  xsignal r2, 0
0001f0  6b550ffb  load.d r[11:12], -80(r30)
0001f4  6b578ffb  load.d r[15:16], -72(r30)
0001f8  9f8c0600  addli r25, r13, 0
0001fc  9f061000  addli r13, zero, 8
000200  27170700  addli.d r[15:16], r[15:16], 1
000204  1331a704  setlt.sl r2, r[15:16], r[11:12]
000208  b7460104  beq r2, zero, 2480
00020c  0b119731  div.s r2, r14, r25
000210  6b530f00  load.d r[7:8], 0(r30)
000214  0b119130  div.s r2, r2, r9
000218  33110128  sext_int2long r[3:4], r2
00021c  17320103  sll.d r[5:6], r[3:4], r16
000220  0b234310  add.ul r[7:8], r[7:8], r[5:6]
000224  1f020004  addli r4, zero, 512
000228  b30d0228  zext_int2long r[28:29], r4
00022c  3ffa8800  blt.s r17, r8, 668
000230  37392403  beq r8, r18, 1612
000234  3b725405  bneq r8, r21, 2204
000238  7334bfff  store.d r[28:29], -24(r30)
00023c  733ceffa  store.d r[15:16], -72(r30)
000240  7d900a00  xwait r21, 0
000244  7d100c00  xwait r24, 0
000248  3d000000  xfence
00024c  b3090028  zext_int2long r[20:21], zero
000250  00a00300  mfence { lm, sm, gm }
000254  db0b0000  j 92
000258  1f421420  addli r4, r8, 4108
00025c  eb548ffe  load.d r[10:11], -24(r30)
000260  a7891900  addli.d r[20:21], r[20:21], 8
000264  1f430420  addli r6, r8, 4100
000268  9f022420  addli r5, r8, 4112
00026c  1f010420  addli r2, r8, 4096
000270  7360c200  stores.w r12, 0(r4)
000274  1f021420  addli r4, r8, 4104
000278  73603300  stores.w r3, 0(r6)
00027c  9f413420  addli r3, r8, 4124
000280  73e0a201  stores.w r26, 0(r5)
000284  634dafff  loadli.w r26,  -44(r30)
000288  73600101  stores.w r16, 0(r2)
00028c  1f013420  addli r2, r8, 4120
000290  2bf6ff7f  lui r12, 524287
000294  73607200  stores.w r7, 0(r4)
000298  13a29902  setneq.d r4, r[20:21], r[10:11]
00029c  73e0c101  stores.w r28, 0(r3)
0002a0  9f412420  addli r3, r8, 4116
0002a4  73607101  stores.w r23, 0(r2)
0002a8  73e0b100  stores.w r11, 0(r3)
0002ac  373c02fe  beq r4, zero, -244
0002b0  1bb42900  slli r8, r19, 2
0002b4  ab05807f  lui r11, 522240
0002b8  6f47c400  loads.w r14, 12(r8)
0002bc  6f4b0400  loads.w r22, 0(r8)
0002c0  6f4c4400  loads.w r24, 4(r8)
0002c4  ef478400  loads.w r15, 8(r8)
0002c8  ef4c0401  loads.w r25, 16(r8)
0002cc  6f434401  loads.w r6, 20(r8)
0002d0  ef4a8401  loads.w r21, 24(r8)
0002d4  ef44c401  loads.w r9, 28(r8)
0002d8  1705a701  and r10, r14, r26
0002dc  1381a504  setlt.u r2, r11, r10
0002e0  3b300100  bneq r2, zero, 12
0002e4  1f060700  addli r12, r14, 0
0002e8  5b010000  j 8
0002ec  17161700  or r12, r14, r1
0002f0  9788a701  and r17, r15, r26
0002f4  13811505  setlt.u r2, r11, r17
0002f8  3b300100  bneq r2, zero, 12
0002fc  9f830700  addli r7, r15, 0
000300  5b010000  j 8
000304  97931700  or r7, r15, r1
000308  1702ac01  and r4, r24, r26
00030c  13814504  setlt.u r2, r11, r4
000310  3b300100  bneq r2, zero, 12
000314  9f010c00  addli r3, r24, 0
000318  5b010000  j 8
00031c  97111c00  or r3, r24, r1
000320  1709ab01  and r18, r22, r26
000324  13812505  setlt.u r2, r11, r18
000328  3b300100  bneq r2, zero, 12
00032c  1f080b00  addli r16, r22, 0
000330  5b010000  j 8
000334  17181b00  or r16, r22, r1
000338  978da401  and r27, r9, r26
00033c  1381b505  setlt.u r2, r11, r27
000340  3b300100  bneq r2, zero, 12
000344  1f8e0400  addli r28, r9, 0
000348  5b010000  j 8
00034c  179e1400  or r28, r9, r1
000350  9782aa01  and r5, r21, r26
000354  13815504  setlt.u r2, r11, r5
000358  3b300100  bneq r2, zero, 12
00035c  9f8b0a00  addli r23, r21, 0
000360  5b010000  j 8
000364  979b1a00  or r23, r21, r1
000368  1701a301  and r2, r6, r26
00036c  ab06807f  lui r13, 522240
000370  93852504  setlt.u r11, r11, r2
000374  3bb00500  bneq r11, zero, 12
000378  670f6ffe  storeli.w r6, -16(r30)
00037c  db010000  j 12
000380  97151300  or r11, r6, r1
000384  670fbffe  storeli.w r11, -16(r30)
000388  9785ac01  and r11, r25, r26
00038c  138db604  setlt.u r26, r13, r11
000390  3b300d00  bneq r26, zero, 12
000394  1f8d0c00  addli r26, r25, 0
000398  5b010000  j 8
00039c  179d1c00  or r26, r25, r1
0003a0  e340ffff  loadli.w r1,  -4(r30)
0003a4  ab06ffff  lui r13, 1048560
0003a8  13892005  setlt.u r18, r1, r18
0003ac  3b700900  bneq r18, zero, 28
0003b0  1b480b01  srli r16, r22, 16
0003b4  6349cfff  loadli.w r18,  -28(r30)
0003b8  1b081800  andi r16, r16, 1
0003bc  0b180b11  add.s r16, r22, r16
0003c0  0b182811  add.s r16, r16, r18
0003c4  1708d800  and r16, r16, r13
0003c8  634bffff  loadli.w r22,  -4(r30)
0003cc  6349cfff  loadli.w r18,  -28(r30)
0003d0  13024b04  setlt.u r4, r22, r4
0003d4  3b600200  bneq r4, zero, 24
0003d8  9b410c01  srli r3, r24, 16
0003dc  9b811100  andi r3, r3, 1
0003e0  8b113c10  add.s r3, r24, r3
0003e4  8b912111  add.s r3, r3, r18
0003e8  9781d100  and r3, r3, r13
0003ec  13021b05  setlt.u r4, r22, r17
0003f0  ab004000  lui r1, 1024
0003f4  37210200  beq r4, zero, 72
0003f8  1302ab04  setlt.u r4, r22, r10
0003fc  37710200  beq r4, zero, 92
000400  1302bb04  setlt.u r4, r22, r11
000404  3b600200  bneq r4, zero, 24
000408  1bc20c01  srli r4, r25, 16
00040c  1b021200  andi r4, r4, 1
000410  0b924c10  add.s r4, r25, r4
000414  0b122211  add.s r4, r4, r18
000418  170dd200  and r26, r4, r13
00041c  13012b04  setlt.u r2, r22, r2
000420  e305efff  loadli.w r11,  -16(r30)
000424  37510100  beq r2, zero, 84
000428  13015b04  setlt.u r2, r22, r5
00042c  b7210100  beq r2, zero, 104
000430  1301bb05  setlt.u r2, r22, r27
000434  bb1801fe  bneq r2, zero, -476
000438  5b0f0000  j 120
00043c  1bc20701  srli r4, r15, 16
000440  1b021200  andi r4, r4, 1
000444  0b924710  add.s r4, r15, r4
000448  0b122211  add.s r4, r4, r18
00044c  9703d200  and r7, r4, r13
000450  1302ab04  setlt.u r4, r22, r10
000454  bb3e02fe  bneq r4, zero, -84
000458  1b420701  srli r4, r14, 16
00045c  1b021200  andi r4, r4, 1
000460  0b124710  add.s r4, r14, r4
000464  0b122211  add.s r4, r4, r18
000468  1706d200  and r12, r4, r13
00046c  1302bb04  setlt.u r4, r22, r11
000470  376e02fe  beq r4, zero, -104
000474  5bf5ffff  j -88
000478  1b410301  srli r2, r6, 16
00047c  1b011100  andi r2, r2, 1
000480  0b112310  add.s r2, r6, r2
000484  0b112111  add.s r2, r2, r18
000488  9705d100  and r11, r2, r13
00048c  13015b04  setlt.u r2, r22, r5
000490  bb0e01fe  bneq r2, zero, -96
000494  1bc10a01  srli r2, r21, 16
000498  1b011100  andi r2, r2, 1
00049c  0b912a10  add.s r2, r21, r2
0004a0  0b112111  add.s r2, r2, r18
0004a4  970bd100  and r23, r2, r13
0004a8  1301bb05  setlt.u r2, r22, r27
0004ac  bb3601fe  bneq r2, zero, -596
0004b0  1bc10401  srli r2, r9, 16
0004b4  1b011100  andi r2, r2, 1
0004b8  0b912410  add.s r2, r9, r2
0004bc  0b112111  add.s r2, r2, r18
0004c0  170ed100  and r28, r2, r13
0004c4  dbb2ffff  j -620
0004c8  b7193403  beq r8, r19, 1636
0004cc  1f620000  addli r4, zero, 6
0004d0  3b084402  bneq r8, r4, 1536
0004d4  9f101000  addli r1, zero, 9
0004d8  733ceffa  store.d r[15:16], -72(r30)
0004dc  1f221000  addli r4, zero, 10
0004e0  a7830d00  addli.d r[8:9], r[28:29], 0
0004e4  9f650000  addli r11, zero, 6
0004e8  9f1d0000  addli r27, zero, 1
0004ec  1f550000  addli r10, zero, 5
0004f0  97321102  sll.d r[6:7], r[3:4], r1
0004f4  9f000008  addli r1, zero, 1024
0004f8  7d900500  xwait r11, 0
0004fc  b3870028  zext_int2long r[16:17], r1
000500  0f91f270  mod.sl r[3:4], r[6:7], r[16:17]
000504  2771f10b  addli.d r[3:4], r[3:4], 1535
000508  97464102  srl.d r[14:15], r[3:4], r4
00050c  33010028  zext_int2long r[3:4], zero
000510  13a12600  seteq.d r2, r[14:15], r[3:4]
000514  bb1c0100  bneq r2, zero, 804
000518  b3810d28  zext_int2long r[4:5], r27
00051c  330c0028  zext_int2long r[25:26], zero
000520  73347ffe  store.d r[8:9], -24(r30)
000524  7334dffc  store.d r[14:15], -56(r30)
000528  73305ffc  store.d r[6:7], -64(r30)
00052c  7338fffe  store.d r[16:17], -16(r30)
000530  733c3ffc  store.d r[4:5], -40(r30)
000534  0b215c10  add.ul r[3:4], r[25:26], r[6:7]
000538  1b332c00  slli r6, r24, 2
00053c  6b528ffe  load.d r[5:6], -24(r30)
000540  1f370000  addli r14, zero, 3
000544  9f780000  addli r17, zero, 7
000548  9f131000  addli r7, zero, 9
00054c  9f261000  addli r13, zero, 10
000550  1f4d1000  addli r26, zero, 12
000554  9f601000  addli r1, zero, 14
000558  1f7e1000  addli r28, zero, 15
00055c  1f042000  addli r8, zero, 16
000560  1f2a2000  addli r20, zero, 18
000564  1f792000  addli r18, zero, 23
000568  1f0b3000  addli r22, zero, 24
00056c  9f493000  addli r19, zero, 28
000570  9f5a3000  addli r21, zero, 29
000574  9f040001  addli r9, zero, 128
000578  9f0b8000  addli r23, zero, 64
00057c  1d000500  lock zero, r10
000580  15000014  dma_cfg zero, zero, zero, 10
000584  1f050310  addli r10, r6, 2048
000588  1f230000  addli r6, zero, 2
00058c  0f11f170  mod.sl r[3:4], r[3:4], r[16:17]
000590  9f372000  addli r15, zero, 19
000594  1f582000  addli r16, zero, 21
000598  1500b015  dma_cfg zero, zero, r27, 10
00059c  0b328219  sub.sl r[5:6], r[5:6], r[25:26]
0005a0  15006014  dma_cfg zero, zero, r6, 10
0005a4  1f430000  addli r6, zero, 4
0005a8  1500e014  dma_cfg zero, zero, r14, 10
0005ac  1f071000  addli r14, zero, 8
0005b0  15006014  dma_cfg zero, zero, r6, 10
0005b4  1f530000  addli r6, zero, 5
0005b8  15006014  dma_cfg zero, zero, r6, 10
0005bc  1500b014  dma_cfg zero, zero, r11, 10
0005c0  9f253000  addli r11, zero, 26
0005c4  15001015  dma_cfg zero, zero, r17, 10
0005c8  9f381000  addli r17, zero, 11
0005cc  1500e014  dma_cfg zero, zero, r14, 10
0005d0  15007014  dma_cfg zero, zero, r7, 10
0005d4  1500d014  dma_cfg zero, zero, r13, 10
0005d8  9f163000  addli r13, zero, 25
0005dc  15001015  dma_cfg zero, zero, r17, 10
0005e0  1500a015  dma_cfg zero, zero, r26, 10
0005e4  1f5d1000  addli r26, zero, 13
0005e8  1500a015  dma_cfg zero, zero, r26, 10
0005ec  6b530fff  load.d r[7:8], -16(r30)
0005f0  15001014  dma_cfg zero, zero, r1, 10
0005f4  9f000010  addli r1, zero, 2048
0005f8  1500c015  dma_cfg zero, zero, r28, 10
0005fc  1f1e2000  addli r28, zero, 17
000600  15008014  dma_cfg zero, zero, r8, 10
000604  1500c015  dma_cfg zero, zero, r28, 10
000608  0b332318  sub.sl r[7:8], r[7:8], r[3:4]
00060c  1731b103  sll.d r[3:4], r[3:4], r27
000610  15004015  dma_cfg zero, zero, r20, 10
000614  1f4a2000  addli r20, zero, 20
000618  1500f014  dma_cfg zero, zero, r15, 10
00061c  9f373000  addli r15, zero, 27
000620  0b236240  min.ul r[7:8], r[5:6], r[7:8]
000624  6b528f00  load.d r[5:6], 8(r30)
000628  15004015  dma_cfg zero, zero, r20, 10
00062c  15000015  dma_cfg zero, zero, r16, 10
000630  1f682000  addli r16, zero, 22
000634  0b2c8311  add.ul r[25:26], r[7:8], r[25:26]
000638  8b212210  add.ul r[4:5], r[5:6], r[3:4]
00063c  0b119538  mod.s r2, r10, r9
000640  15000015  dma_cfg zero, zero, r16, 10
000644  15002015  dma_cfg zero, zero, r18, 10
000648  1f693000  addli r18, zero, 30
00064c  15006015  dma_cfg zero, zero, r22, 10
000650  1f2b3000  addli r22, zero, 26
000654  1500d014  dma_cfg zero, zero, r13, 10
000658  1500b014  dma_cfg zero, zero, r11, 10
00065c  9b351300  slli r11, r6, 1
000660  1500f014  dma_cfg zero, zero, r15, 10
000664  9b421100  srli r5, r2, 1
000668  0b112518  sub.s r2, r10, r2
00066c  15003015  dma_cfg zero, zero, r19, 10
000670  9f793000  addli r19, zero, 31
000674  15005015  dma_cfg zero, zero, r21, 10
000678  8b125518  sub.s r5, r10, r5
00067c  1f350000  addli r10, zero, 3
000680  9f4a0000  addli r21, zero, 4
000684  15002015  dma_cfg zero, zero, r18, 10
000688  15003015  dma_cfg zero, zero, r19, 10
00068c  9f828200  addli r5, r5, 64
000690  958d0d00  dma_cfg r27, r27, zero, 0
000694  950d0002  dma_cfg r27, zero, zero, 1
000698  15000004  dma_cfg zero, zero, zero, 2
00069c  95007007  dma_cfg r1, zero, r23, 3
0006a0  95048008  dma_cfg r9, zero, r8, 4
0006a4  1f042000  addli r8, zero, 16
0006a8  9500b00b  dma_cfg r1, zero, r27, 5
0006ac  9f500000  addli r1, zero, 5
0006b0  15000010  dma_cfg zero, zero, zero, 8
0006b4  35000000  dma_run zero
0006b8  1500b00b  dma_cfg zero, zero, r27, 5
0006bc  15000010  dma_cfg zero, zero, zero, 8
0006c0  1d900000  unlock r1
0006c4  9f400000  addli r1, zero, 4
0006c8  1d800000  lock zero, r1
0006cc  9f400000  addli r1, zero, 4
0006d0  958d0d00  dma_cfg r27, r27, zero, 0
0006d4  15000204  dma_cfg zero, r4, zero, 2
0006d8  95827107  dma_cfg r5, r3, r23, 3
0006dc  9b312300  slli r3, r6, 2
0006e0  9b1206f8  ori r5, r12, 3968
0006e4  1f723300  addli r4, r6, 31
0006e8  17865100  and r12, r3, r5
0006ec  9b81e503  andi r3, r11, 62
0006f0  9b425200  srli r5, r4, 5
0006f4  1f121000  addli r4, zero, 9
0006f8  17163600  or r12, r12, r3
0006fc  95845b08  dma_cfg r9, r23, r5, 4
000700  1586b50b  dma_cfg r12, r11, r27, 5
000704  9f650000  addli r11, zero, 6
000708  15003010  dma_cfg zero, zero, r3, 8
00070c  35000000  dma_run zero
000710  1500b00b  dma_cfg zero, zero, r27, 5
000714  15000010  dma_cfg zero, zero, zero, 8
000718  1d900000  unlock r1
00071c  9f500000  addli r1, zero, 5
000720  1d800000  lock zero, r1
000724  9f200000  addli r1, zero, 2
000728  15000014  dma_cfg zero, zero, zero, 10
00072c  1500b015  dma_cfg zero, zero, r27, 10
000730  15001014  dma_cfg zero, zero, r1, 10
000734  9f500000  addli r1, zero, 5
000738  1500a014  dma_cfg zero, zero, r10, 10
00073c  1f750000  addli r10, zero, 7
000740  15005015  dma_cfg zero, zero, r21, 10
000744  15001014  dma_cfg zero, zero, r1, 10
000748  9f601000  addli r1, zero, 14
00074c  1500b014  dma_cfg zero, zero, r11, 10
000750  1500a014  dma_cfg zero, zero, r10, 10
000754  1f451000  addli r10, zero, 12
000758  1500e014  dma_cfg zero, zero, r14, 10
00075c  15004014  dma_cfg zero, zero, r4, 10
000760  1f221000  addli r4, zero, 10
000764  15004014  dma_cfg zero, zero, r4, 10
000768  1f322000  addli r4, zero, 19
00076c  15001015  dma_cfg zero, zero, r17, 10
000770  1500a014  dma_cfg zero, zero, r10, 10
000774  1f550000  addli r10, zero, 5
000778  1500a015  dma_cfg zero, zero, r26, 10
00077c  15001014  dma_cfg zero, zero, r1, 10
000780  9f701000  addli r1, zero, 15
000784  15001014  dma_cfg zero, zero, r1, 10
000788  9f202000  addli r1, zero, 18
00078c  15008014  dma_cfg zero, zero, r8, 10
000790  1500c015  dma_cfg zero, zero, r28, 10
000794  15001014  dma_cfg zero, zero, r1, 10
000798  9f502000  addli r1, zero, 21
00079c  15004014  dma_cfg zero, zero, r4, 10
0007a0  1f023000  addli r4, zero, 24
0007a4  15004015  dma_cfg zero, zero, r20, 10
0007a8  15001014  dma_cfg zero, zero, r1, 10
0007ac  9f702000  addli r1, zero, 23
0007b0  15000015  dma_cfg zero, zero, r16, 10
0007b4  15001014  dma_cfg zero, zero, r1, 10
0007b8  9f403000  addli r1, zero, 28
0007bc  15004014  dma_cfg zero, zero, r4, 10
0007c0  1f523000  addli r4, zero, 29
0007c4  1500d014  dma_cfg zero, zero, r13, 10
0007c8  15006015  dma_cfg zero, zero, r22, 10
0007cc  eb568ffc  load.d r[14:15], -56(r30)
0007d0  1500f014  dma_cfg zero, zero, r15, 10
0007d4  15001014  dma_cfg zero, zero, r1, 10
0007d8  9f008000  addli r1, zero, 64
0007dc  15004014  dma_cfg zero, zero, r4, 10
0007e0  1f220000  addli r4, zero, 2
0007e4  15002015  dma_cfg zero, zero, r18, 10
0007e8  15003015  dma_cfg zero, zero, r19, 10
0007ec  958d0d00  dma_cfg r27, r27, zero, 0
0007f0  950d0002  dma_cfg r27, zero, zero, 1
0007f4  15000004  dma_cfg zero, zero, zero, 2
0007f8  15011006  dma_cfg r2, zero, r1, 3
0007fc  9f000001  addli r1, zero, 128
000800  95005008  dma_cfg r1, zero, r5, 4
000804  1506b00b  dma_cfg r12, zero, r27, 5
000808  2bf6ff7f  lui r12, 524287
00080c  eb508ffd  load.d r[2:3], -40(r30)
000810  15003010  dma_cfg zero, zero, r3, 8
000814  35000000  dma_run zero
000818  1500b00b  dma_cfg zero, zero, r27, 5
00081c  b3010228  zext_int2long r[4:5], r4
000820  15000010  dma_cfg zero, zero, zero, 8
000824  eb570fff  load.d r[16:17], -16(r30)
000828  eb520ffc  load.d r[6:7], -64(r30)
00082c  1d100500  unlock r10
000830  13a1d004  setlt.ul r2, r[2:3], r[14:15]
000834  bb7301fe  bneq r2, zero, -772
000838  7d000500  xsignal r10, 0
00083c  e3043f00  loadli.w r9,  24(r30)
000840  6b550ffb  load.d r[11:12], -80(r30)
000844  6b578ffb  load.d r[15:16], -72(r30)
000848  634dafff  loadli.w r26,  -44(r30)
00084c  e34c3f00  loadli.w r25,  28(r30)
000850  00340002  core_id r8
000854  1f1c1000  addli r24, zero, 9
000858  1f281000  addli r16, zero, 10
00085c  9f480000  addli r17, zero, 4
000860  1f190000  addli r18, zero, 1
000864  9f590000  addli r19, zero, 5
000868  1f2a0000  addli r20, zero, 2
00086c  9f3a0000  addli r21, zero, 3
000870  9f061000  addli r13, zero, 8
000874  ab004000  lui r1, 1024
000878  5b31ffff  j -1656
00087c  7d900800  xwait r17, 0
000880  1d800900  lock zero, r19
000884  9f600000  addli r1, zero, 6
000888  1f5b1000  addli r22, zero, 13
00088c  9f6b1000  addli r23, zero, 14
000890  1f711000  addli r2, zero, 15
000894  1f820c00  addli r4, r25, 0
000898  9f0c2000  addli r25, zero, 16
00089c  1f1d2000  addli r26, zero, 17
0008a0  9f2d2000  addli r27, zero, 18
0008a4  1f3e2000  addli r28, zero, 19
0008a8  9f323000  addli r5, zero, 27
0008ac  1f068000  addli r12, zero, 64
0008b0  9f010010  addli r3, zero, 2048
0008b4  15000014  dma_cfg zero, zero, zero, 10
0008b8  15002015  dma_cfg zero, zero, r18, 10
0008bc  15004015  dma_cfg zero, zero, r20, 10
0008c0  15005015  dma_cfg zero, zero, r21, 10
0008c4  15001015  dma_cfg zero, zero, r17, 10
0008c8  15003015  dma_cfg zero, zero, r19, 10
0008cc  15001014  dma_cfg zero, zero, r1, 10
0008d0  9f700000  addli r1, zero, 7
0008d4  15001014  dma_cfg zero, zero, r1, 10
0008d8  9f301000  addli r1, zero, 11
0008dc  1500d014  dma_cfg zero, zero, r13, 10
0008e0  15008015  dma_cfg zero, zero, r24, 10
0008e4  15000015  dma_cfg zero, zero, r16, 10
0008e8  15001014  dma_cfg zero, zero, r1, 10
0008ec  9f401000  addli r1, zero, 12
0008f0  15001014  dma_cfg zero, zero, r1, 10
0008f4  9f203000  addli r1, zero, 26
0008f8  15006015  dma_cfg zero, zero, r22, 10
0008fc  15007015  dma_cfg zero, zero, r23, 10
000900  15002014  dma_cfg zero, zero, r2, 10
000904  1f412000  addli r2, zero, 20
000908  15009015  dma_cfg zero, zero, r25, 10
00090c  1500a015  dma_cfg zero, zero, r26, 10
000910  1500b015  dma_cfg zero, zero, r27, 10
000914  1500c015  dma_cfg zero, zero, r28, 10
000918  15002014  dma_cfg zero, zero, r2, 10
00091c  1f512000  addli r2, zero, 21
000920  15002014  dma_cfg zero, zero, r2, 10
000924  1f612000  addli r2, zero, 22
000928  15002014  dma_cfg zero, zero, r2, 10
00092c  1f712000  addli r2, zero, 23
000930  15002014  dma_cfg zero, zero, r2, 10
000934  1f013000  addli r2, zero, 24
000938  15002014  dma_cfg zero, zero, r2, 10
00093c  1f113000  addli r2, zero, 25
000940  15002014  dma_cfg zero, zero, r2, 10
000944  1f010001  addli r2, zero, 128
000948  15001014  dma_cfg zero, zero, r1, 10
00094c  9f403000  addli r1, zero, 28
000950  15005014  dma_cfg zero, zero, r5, 10
000954  15001014  dma_cfg zero, zero, r1, 10
000958  9f503000  addli r1, zero, 29
00095c  15001014  dma_cfg zero, zero, r1, 10
000960  9f603000  addli r1, zero, 30
000964  15001014  dma_cfg zero, zero, r1, 10
000968  9f703000  addli r1, zero, 31
00096c  15001014  dma_cfg zero, zero, r1, 10
000970  9f000008  addli r1, zero, 1024
000974  15090900  dma_cfg r18, r18, zero, 0
000978  15090002  dma_cfg r18, zero, zero, 1
00097c  15000004  dma_cfg zero, zero, zero, 2
000980  1500c006  dma_cfg zero, zero, r12, 3
000984  15019009  dma_cfg r2, zero, r25, 4
000988  9501200b  dma_cfg r3, zero, r18, 5
00098c  15000010  dma_cfg zero, zero, zero, 8
000990  35000000  dma_run zero
000994  1500200b  dma_cfg zero, zero, r18, 5
000998  15000010  dma_cfg zero, zero, zero, 8
00099c  1d900900  unlock r19
0009a0  1d800800  lock zero, r17
0009a4  15090900  dma_cfg r18, r18, zero, 0
0009a8  15800304  dma_cfg zero, r7, zero, 2
0009ac  1506c306  dma_cfg r12, r6, r12, 3
0009b0  15019609  dma_cfg r2, r12, r25, 4
0009b4  9581200b  dma_cfg r3, r1, r18, 5
0009b8  9f600000  addli r1, zero, 6
0009bc  15000010  dma_cfg zero, zero, zero, 8
0009c0  35000000  dma_run zero
0009c4  1500200b  dma_cfg zero, zero, r18, 5
0009c8  15000010  dma_cfg zero, zero, zero, 8
0009cc  1d900800  unlock r17
0009d0  1d800900  lock zero, r19
0009d4  15000014  dma_cfg zero, zero, zero, 10
0009d8  15002015  dma_cfg zero, zero, r18, 10
0009dc  15004015  dma_cfg zero, zero, r20, 10
0009e0  15005015  dma_cfg zero, zero, r21, 10
0009e4  15001015  dma_cfg zero, zero, r17, 10
0009e8  15003015  dma_cfg zero, zero, r19, 10
0009ec  15001014  dma_cfg zero, zero, r1, 10
0009f0  9f700000  addli r1, zero, 7
0009f4  15001014  dma_cfg zero, zero, r1, 10
0009f8  9f301000  addli r1, zero, 11
0009fc  1500d014  dma_cfg zero, zero, r13, 10
000a00  15008015  dma_cfg zero, zero, r24, 10
000a04  15000015  dma_cfg zero, zero, r16, 10
000a08  15001014  dma_cfg zero, zero, r1, 10
000a0c  9f401000  addli r1, zero, 12
000a10  15001014  dma_cfg zero, zero, r1, 10
000a14  9f203000  addli r1, zero, 26
000a18  15006015  dma_cfg zero, zero, r22, 10
000a1c  1f7b1000  addli r22, zero, 15
000a20  15007015  dma_cfg zero, zero, r23, 10
000a24  15006015  dma_cfg zero, zero, r22, 10
000a28  1f4b2000  addli r22, zero, 20
000a2c  15009015  dma_cfg zero, zero, r25, 10
000a30  1500a015  dma_cfg zero, zero, r26, 10
000a34  634dafff  loadli.w r26,  -44(r30)
000a38  1500b015  dma_cfg zero, zero, r27, 10
000a3c  1500c015  dma_cfg zero, zero, r28, 10
000a40  15006015  dma_cfg zero, zero, r22, 10
000a44  1f5b2000  addli r22, zero, 21
000a48  15006015  dma_cfg zero, zero, r22, 10
000a4c  1f6b2000  addli r22, zero, 22
000a50  15006015  dma_cfg zero, zero, r22, 10
000a54  1f7b2000  addli r22, zero, 23
000a58  15006015  dma_cfg zero, zero, r22, 10
000a5c  1f0b3000  addli r22, zero, 24
000a60  15006015  dma_cfg zero, zero, r22, 10
000a64  1f1b3000  addli r22, zero, 25
000a68  15006015  dma_cfg zero, zero, r22, 10
000a6c  15001014  dma_cfg zero, zero, r1, 10
000a70  ab004000  lui r1, 1024
000a74  15005014  dma_cfg zero, zero, r5, 10
000a78  9f423000  addli r5, zero, 28
000a7c  15005014  dma_cfg zero, zero, r5, 10
000a80  9f523000  addli r5, zero, 29
000a84  15005014  dma_cfg zero, zero, r5, 10
000a88  9f623000  addli r5, zero, 30
000a8c  15005014  dma_cfg zero, zero, r5, 10
000a90  9f723000  addli r5, zero, 31
000a94  15005014  dma_cfg zero, zero, r5, 10
000a98  15090900  dma_cfg r18, r18, zero, 0
000a9c  15090002  dma_cfg r18, zero, zero, 1
000aa0  15000004  dma_cfg zero, zero, zero, 2
000aa4  1500c006  dma_cfg zero, zero, r12, 3
000aa8  2bf6ff7f  lui r12, 524287
000aac  15019009  dma_cfg r2, zero, r25, 4
000ab0  9f0c0200  addli r25, r4, 0
000ab4  9501200b  dma_cfg r3, zero, r18, 5
000ab8  15000010  dma_cfg zero, zero, zero, 8
000abc  35000000  dma_run zero
000ac0  1500200b  dma_cfg zero, zero, r18, 5
000ac4  15000010  dma_cfg zero, zero, zero, 8
000ac8  1d900900  unlock r19
000acc  7d000a00  xsignal r20, 0
000ad0  1f012000  addli r2, zero, 16
000ad4  9f010001  addli r3, zero, 128
000ad8  1f020010  addli r4, zero, 2048
000adc  bb1c04fa  bneq r8, zero, -2268
000ae0  7d900600  xwait r13, 0
000ae4  1d800900  lock zero, r19
000ae8  9f008000  addli r1, zero, 64
000aec  9f028020  addli r5, zero, 4160
000af0  15090900  dma_cfg r18, r18, zero, 0
000af4  15000902  dma_cfg zero, r18, zero, 1
000af8  95030004  dma_cfg r7, zero, zero, 2
000afc  15831206  dma_cfg r6, r5, r1, 3
000b00  95802108  dma_cfg r1, r3, r2, 4
000b04  9f000008  addli r1, zero, 1024
000b08  9500220b  dma_cfg r1, r4, r18, 5
000b0c  ab004000  lui r1, 1024
000b10  15000010  dma_cfg zero, zero, zero, 8
000b14  35000000  dma_run zero
000b18  1500200b  dma_cfg zero, zero, r18, 5
000b1c  15000010  dma_cfg zero, zero, zero, 8
000b20  1d900900  unlock r19
000b24  7d000c00  xsignal r24, 0
000b28  5bdbfeff  j -2344
000b2c  7d100a00  xwait r20, 0
000b30  7d900900  xwait r19, 0
000b34  1d000a00  lock zero, r20
000b38  2b02803f  lui r4, 260096
000b3c  9f703000  addli r1, zero, 31
000b40  9f012000  addli r3, zero, 16
000b44  1f010010  addli r2, zero, 2048
000b48  0d000002  ew_cfg zero, zero, zero, 1
000b4c  0d120200  ewcoeff_cfg r4, r4, zero, 0
000b50  0d800004  ew_cfg zero, r1, zero, 2
000b54  8d010006  ew_cfg r3, zero, zero, 3
000b58  8d813126  ew_cfg r3, r3, r3, 19
000b5c  2d002000  dsmadd zero, zero, r2, 0
000b60  1f610000  addli r2, zero, 6
000b64  0d000026  ew_cfg zero, zero, zero, 19
000b68  1d100a00  unlock r20
000b6c  7d800a00  xsignal r21, 0
000b70  7d000100  xsignal r2, 0
000b74  1f710000  addli r2, zero, 7
000b78  7d100100  xwait r2, 0
000b7c  1d000a00  lock zero, r20
000b80  1f010020  addli r2, zero, 4096
000b84  0d090014  ew_cfg r18, zero, zero, 10
000b88  0d000002  ew_cfg zero, zero, zero, 1
000b8c  0d120000  ewcoeff_cfg r4, zero, zero, 0
000b90  0d800004  ew_cfg zero, r1, zero, 2
000b94  ab004000  lui r1, 1024
000b98  8d010006  ew_cfg r3, zero, zero, 3
000b9c  8d810126  ew_cfg r3, r3, zero, 19
000ba0  2d012100  dsmadd r2, r2, r2, 0
000ba4  0d000014  ew_cfg zero, zero, zero, 10
000ba8  0d000026  ew_cfg zero, zero, zero, 19
000bac  1d100a00  unlock r20
000bb0  7d800600  xsignal r13, 0
000bb4  dbc9feff  j -2484
000bb8  7d000000  xsignal zero, 0
000bbc  bb600400  bneq r8, zero, 56
000bc0  9f200000  addli r1, zero, 2
000bc4  7d100000  xwait zero, 0
000bc8  7d100000  xwait zero, 0
000bcc  7d100000  xwait zero, 0
000bd0  7d100000  xwait zero, 0
000bd4  7d100000  xwait zero, 0
000bd8  7d100000  xwait zero, 0
000bdc  7d100000  xwait zero, 0
000be0  7d100000  xwait zero, 0
000be4  1d800000  lock zero, r1
000be8  0d000020  ew_cfg zero, zero, zero, 16
000bec  1d900000  unlock r1
000bf0  7d400000  xsignal_mode_cfg zero
000bf4  9f8eae00  addli sp, sp, 80
000bf8  00a00300  mfence { lm, sm, gm }
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
