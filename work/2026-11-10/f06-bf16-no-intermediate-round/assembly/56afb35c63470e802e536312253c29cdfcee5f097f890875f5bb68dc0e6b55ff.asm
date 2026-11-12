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
0000c0  803a0002  core_id r21
0000c4  63484f00  loadli.w r16,  36(r30)
0000c8  7dc00000  xsignal_mode_cfg r1
0000cc  37e00a00  beq r21, zero, 24
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
000100  1f520000  addli r4, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f401000  addli r1, zero, 12
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d000200  xsignal r4, 0
000118  9f300000  addli r1, zero, 3
00011c  1f121000  addli r4, zero, 9
000120  7d800000  xsignal r1, 0
000124  7d000200  xsignal r4, 0
000128  9f700000  addli r1, zero, 7
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
000170  cb141204  ble.s r4, r1, 2340
000174  33110228  sext_int2long r[3:4], r4
000178  33930028  sext_int2long r[7:8], r1
00017c  1f141000  addli r8, zero, 9
000180  9f440000  addli r9, zero, 4
000184  1f150000  addli r10, zero, 1
000188  9f560000  addli r13, zero, 5
00018c  9f270000  addli r15, zero, 2
000190  9f600000  addli r1, zero, 6
000194  9f0b2000  addli r23, zero, 16
000198  1f0b8000  addli r22, zero, 64
00019c  2b0c0200  lui r24, 32
0001a0  ab4c0400  lui r25, 68
0001a4  2b4e0000  lui r28, 4
0001a8  733c2ffe  store.d r[3:4], -8(r30)
0001ac  5b0a0000  j 80
0001b0  7d900000  xwait r1, 0
0001b4  7d100400  xwait r8, 0
0001b8  1d000000  lock zero, zero
0001bc  1f010004  addli r2, zero, 512
0001c0  9f710000  addli r3, zero, 7
0001c4  81070000  ds_cfg r15, zero, 0
0001c8  01010002  ds_cfg r2, zero, 1
0001cc  010b001c  ds_cfg r22, zero, 14
0001d0  0101001a  ds_cfg r2, zero, 13
0001d4  2b410200  lui r2, 36
0001d8  41006105  shuffle_coa zero, r2, r22, 2
0001dc  1d100000  unlock zero
0001e0  7d800100  xsignal r3, 0
0001e4  9f011000  addli r3, zero, 8
0001e8  7d800100  xsignal r3, 0
0001ec  6b518fff  load.d r[3:4], -8(r30)
0001f0  27130300  addli.d r[7:8], r[7:8], 1
0001f4  13362304  setlt.sl r12, r[7:8], r[3:4]
0001f8  37720604  beq r12, zero, 2204
0001fc  63065f00  loadli.w r12,  40(r30)
000200  8b19c330  div.s r19, r6, r12
000204  0b9a0939  mod.s r20, r19, r16
000208  8b990931  div.s r19, r19, r16
00020c  331d0a28  sext_int2long r[27:28], r20
000210  b3990928  sext_int2long r[20:21], r19
000214  173d8d02  sll.d r[27:28], r[27:28], r8
000218  3ff15401  blt.s r9, r21, 92
00021c  b7f2aa00  beq r21, r10, 188
000220  37d7fa02  beq r21, r15, 1492
000224  bb819a00  bneq r21, r9, 96
000228  9f011000  addli r3, zero, 8
00022c  7d900400  xwait r9, 0
000230  9f090000  addli r19, zero, 0
000234  1f0a0000  addli r20, zero, 0
000238  7d900100  xwait r3, 0
00023c  9f411000  addli r3, zero, 12
000240  7d900100  xwait r3, 0
000244  1d000500  lock zero, r10
000248  090b6b01  mm_cfg r22, r22, r22, 0
00024c  8984ab04  mm_cfg r9, r23, r10, 2
000250  a9094011  mm r19, zero, r20, 8
000254  0b1aca11  add.s r20, r20, r28
000258  9f890902  addli r19, r19, 256
00025c  1d100500  unlock r10
000260  bb1f8aff  bneq r20, r24, -28
000264  7d800600  xsignal r13, 0
000268  7d000400  xsignal r8, 0
00026c  9f211000  addli r3, zero, 10
000270  5befffff  j -136
000274  b7c4da02  beq r21, r13, 1328
000278  b7c61a02  beq r21, r1, 1456
00027c  9f710000  addli r3, zero, 7
000280  b7cc3afe  beq r21, r3, -208
000284  bbad0afe  bneq r21, zero, -152
000288  9f312000  addli r3, zero, 19
00028c  eb558f01  load.d r[12:13], 24(r30)
000290  173dfd02  sll.d r[27:28], r[27:28], r15
000294  1f010010  addli r2, zero, 2048
000298  97b93902  sll.d r[20:21], r[20:21], r3
00029c  9f311000  addli r3, zero, 11
0002a0  8ba93511  add.ul r[20:21], r[12:13], r[20:21]
0002a4  7d900100  xwait r3, 0
0002a8  1d800600  lock zero, r13
0002ac  9f010040  addli r3, zero, 8192
0002b0  15000000  dma_cfg zero, zero, zero, 0
0002b4  8ba9a911  add.ul r[20:21], r[20:21], r[27:28]
0002b8  15000502  dma_cfg zero, r10, zero, 1
0002bc  150a0004  dma_cfg r20, zero, zero, 2
0002c0  95092006  dma_cfg r19, zero, r2, 3
0002c4  95016109  dma_cfg r3, r2, r22, 4
0002c8  9f411000  addli r3, zero, 12
0002cc  35000000  dma_run zero
0002d0  1d900600  unlock r13
0002d4  dbe2ffff  j -236
0002d8  9f310000  addli r3, zero, 3
0002dc  1f511000  addli r2, zero, 13
0002e0  eb550f00  load.d r[12:13], 0(r30)
0002e4  1f390000  addli r18, zero, 3
0002e8  9f081000  addli r17, zero, 8
0002ec  1f471000  addli r14, zero, 12
0002f0  9f5a1000  addli r21, zero, 13
0002f4  1f781000  addli r16, zero, 15
0002f8  1f122000  addli r4, zero, 17
0002fc  9f722000  addli r5, zero, 23
000300  7d900100  xwait r3, 0
000304  1d800600  lock zero, r13
000308  97b92902  sll.d r[20:21], r[20:21], r2
00030c  1f511000  addli r2, zero, 13
000310  15000014  dma_cfg zero, zero, zero, 10
000314  1500a014  dma_cfg zero, zero, r10, 10
000318  8ba93511  add.ul r[20:21], r[12:13], r[20:21]
00031c  1b160c04  ori r12, r24, 64
000320  9f651000  addli r11, zero, 14
000324  1500f014  dma_cfg zero, zero, r15, 10
000328  15003014  dma_cfg zero, zero, r3, 10
00032c  9f211000  addli r3, zero, 10
000330  15009014  dma_cfg zero, zero, r9, 10
000334  1500d014  dma_cfg zero, zero, r13, 10
000338  15001014  dma_cfg zero, zero, r1, 10
00033c  9f700000  addli r1, zero, 7
000340  15001014  dma_cfg zero, zero, r1, 10
000344  9f001000  addli r1, zero, 8
000348  15001014  dma_cfg zero, zero, r1, 10
00034c  9f201000  addli r1, zero, 10
000350  15008014  dma_cfg zero, zero, r8, 10
000354  15001014  dma_cfg zero, zero, r1, 10
000358  9f301000  addli r1, zero, 11
00035c  15001014  dma_cfg zero, zero, r1, 10
000360  9f401000  addli r1, zero, 12
000364  15001014  dma_cfg zero, zero, r1, 10
000368  9f601000  addli r1, zero, 14
00036c  15002014  dma_cfg zero, zero, r2, 10
000370  1f010001  addli r2, zero, 128
000374  15001014  dma_cfg zero, zero, r1, 10
000378  9f701000  addli r1, zero, 15
00037c  15001014  dma_cfg zero, zero, r1, 10
000380  9f102000  addli r1, zero, 17
000384  15007015  dma_cfg zero, zero, r23, 10
000388  15001014  dma_cfg zero, zero, r1, 10
00038c  9f202000  addli r1, zero, 18
000390  15001014  dma_cfg zero, zero, r1, 10
000394  9f302000  addli r1, zero, 19
000398  15001014  dma_cfg zero, zero, r1, 10
00039c  9f402000  addli r1, zero, 20
0003a0  15001014  dma_cfg zero, zero, r1, 10
0003a4  9f502000  addli r1, zero, 21
0003a8  15001014  dma_cfg zero, zero, r1, 10
0003ac  9f602000  addli r1, zero, 22
0003b0  15001014  dma_cfg zero, zero, r1, 10
0003b4  9f702000  addli r1, zero, 23
0003b8  15001014  dma_cfg zero, zero, r1, 10
0003bc  9f003000  addli r1, zero, 24
0003c0  15001014  dma_cfg zero, zero, r1, 10
0003c4  9f103000  addli r1, zero, 25
0003c8  15001014  dma_cfg zero, zero, r1, 10
0003cc  9f203000  addli r1, zero, 26
0003d0  15001014  dma_cfg zero, zero, r1, 10
0003d4  9f303000  addli r1, zero, 27
0003d8  15001014  dma_cfg zero, zero, r1, 10
0003dc  9f403000  addli r1, zero, 28
0003e0  15001014  dma_cfg zero, zero, r1, 10
0003e4  9f503000  addli r1, zero, 29
0003e8  15001014  dma_cfg zero, zero, r1, 10
0003ec  9f603000  addli r1, zero, 30
0003f0  15001014  dma_cfg zero, zero, r1, 10
0003f4  9f703000  addli r1, zero, 31
0003f8  15001014  dma_cfg zero, zero, r1, 10
0003fc  9f000002  addli r1, zero, 256
000400  15050500  dma_cfg r10, r10, zero, 0
000404  15050002  dma_cfg r10, zero, zero, 1
000408  15000004  dma_cfg zero, zero, zero, 2
00040c  150c6007  dma_cfg r24, zero, r22, 3
000410  1501f008  dma_cfg r2, zero, r15, 4
000414  9500600b  dma_cfg r1, zero, r22, 5
000418  15000010  dma_cfg zero, zero, zero, 8
00041c  35000000  dma_run zero
000420  1500a00a  dma_cfg zero, zero, r10, 5
000424  15000010  dma_cfg zero, zero, zero, 8
000428  1d900600  unlock r13
00042c  1d800400  lock zero, r9
000430  15050500  dma_cfg r10, r10, zero, 0
000434  15000a04  dma_cfg zero, r20, zero, 2
000438  15866907  dma_cfg r12, r19, r22, 3
00043c  1f660000  addli r12, zero, 6
000440  9739ad02  sll.d r[20:21], r[27:28], r10
000444  6b5d0f01  load.d r[27:28], 16(r30)
000448  1501fb08  dma_cfg r2, r22, r15, 4
00044c  9500610b  dma_cfg r1, r2, r22, 5
000450  15000010  dma_cfg zero, zero, zero, 8
000454  35000000  dma_run zero
000458  1500a00a  dma_cfg zero, zero, r10, 5
00045c  8b293d11  add.ul r[20:21], r[27:28], r[20:21]
000460  9f7d0000  addli r27, zero, 7
000464  1f0d0010  addli r26, zero, 2048
000468  15000010  dma_cfg zero, zero, zero, 8
00046c  1d900400  unlock r9
000470  1d800600  lock zero, r13
000474  15000014  dma_cfg zero, zero, zero, 10
000478  1500a014  dma_cfg zero, zero, r10, 10
00047c  1500f014  dma_cfg zero, zero, r15, 10
000480  15002015  dma_cfg zero, zero, r18, 10
000484  1f492000  addli r18, zero, 20
000488  15009014  dma_cfg zero, zero, r9, 10
00048c  1500d014  dma_cfg zero, zero, r13, 10
000490  1500c014  dma_cfg zero, zero, r12, 10
000494  1f760000  addli r12, zero, 7
000498  1500c014  dma_cfg zero, zero, r12, 10
00049c  1f363000  addli r12, zero, 27
0004a0  15001015  dma_cfg zero, zero, r17, 10
0004a4  9f382000  addli r17, zero, 19
0004a8  15008014  dma_cfg zero, zero, r8, 10
0004ac  15003014  dma_cfg zero, zero, r3, 10
0004b0  9f311000  addli r3, zero, 11
0004b4  15003014  dma_cfg zero, zero, r3, 10
0004b8  1500e014  dma_cfg zero, zero, r14, 10
0004bc  1f272000  addli r14, zero, 18
0004c0  15005015  dma_cfg zero, zero, r21, 10
0004c4  9f5a2000  addli r21, zero, 21
0004c8  1500b014  dma_cfg zero, zero, r11, 10
0004cc  9f153000  addli r11, zero, 25
0004d0  15000015  dma_cfg zero, zero, r16, 10
0004d4  1f283000  addli r16, zero, 26
0004d8  15007015  dma_cfg zero, zero, r23, 10
0004dc  15004014  dma_cfg zero, zero, r4, 10
0004e0  1f622000  addli r4, zero, 22
0004e4  1500e014  dma_cfg zero, zero, r14, 10
0004e8  15001015  dma_cfg zero, zero, r17, 10
0004ec  15002015  dma_cfg zero, zero, r18, 10
0004f0  15005015  dma_cfg zero, zero, r21, 10
0004f4  15004014  dma_cfg zero, zero, r4, 10
0004f8  15005014  dma_cfg zero, zero, r5, 10
0004fc  9f023000  addli r5, zero, 24
000500  15005014  dma_cfg zero, zero, r5, 10
000504  1500b014  dma_cfg zero, zero, r11, 10
000508  15000015  dma_cfg zero, zero, r16, 10
00050c  1500c014  dma_cfg zero, zero, r12, 10
000510  1f463000  addli r12, zero, 28
000514  1500c014  dma_cfg zero, zero, r12, 10
000518  1f563000  addli r12, zero, 29
00051c  1500c014  dma_cfg zero, zero, r12, 10
000520  1f663000  addli r12, zero, 30
000524  1500c014  dma_cfg zero, zero, r12, 10
000528  1f763000  addli r12, zero, 31
00052c  1500c014  dma_cfg zero, zero, r12, 10
000530  1f360000  addli r12, zero, 3
000534  15050500  dma_cfg r10, r10, zero, 0
000538  15050002  dma_cfg r10, zero, zero, 1
00053c  15000004  dma_cfg zero, zero, zero, 2
000540  150c6007  dma_cfg r24, zero, r22, 3
000544  1501f008  dma_cfg r2, zero, r15, 4
000548  9500600b  dma_cfg r1, zero, r22, 5
00054c  9f601000  addli r1, zero, 14
000550  15000010  dma_cfg zero, zero, zero, 8
000554  35000000  dma_run zero
000558  1500a00a  dma_cfg zero, zero, r10, 5
00055c  15000010  dma_cfg zero, zero, zero, 8
000560  1d900600  unlock r13
000564  7d800700  xsignal r15, 0
000568  7d900000  xwait r1, 0
00056c  1d800600  lock zero, r13
000570  15000014  dma_cfg zero, zero, zero, 10
000574  1500a014  dma_cfg zero, zero, r10, 10
000578  1500f014  dma_cfg zero, zero, r15, 10
00057c  1500c014  dma_cfg zero, zero, r12, 10
000580  1f660000  addli r12, zero, 6
000584  15009014  dma_cfg zero, zero, r9, 10
000588  1500d014  dma_cfg zero, zero, r13, 10
00058c  1500c014  dma_cfg zero, zero, r12, 10
000590  1f061000  addli r12, zero, 8
000594  1500b015  dma_cfg zero, zero, r27, 10
000598  1500c014  dma_cfg zero, zero, r12, 10
00059c  1f261000  addli r12, zero, 10
0005a0  15008014  dma_cfg zero, zero, r8, 10
0005a4  1500c014  dma_cfg zero, zero, r12, 10
0005a8  1b960c04  ori r12, r25, 64
0005ac  15003014  dma_cfg zero, zero, r3, 10
0005b0  9f411000  addli r3, zero, 12
0005b4  15003014  dma_cfg zero, zero, r3, 10
0005b8  9f511000  addli r3, zero, 13
0005bc  15003014  dma_cfg zero, zero, r3, 10
0005c0  9f711000  addli r3, zero, 15
0005c4  15001014  dma_cfg zero, zero, r1, 10
0005c8  9f102000  addli r1, zero, 17
0005cc  15003014  dma_cfg zero, zero, r3, 10
0005d0  15007015  dma_cfg zero, zero, r23, 10
0005d4  15001014  dma_cfg zero, zero, r1, 10
0005d8  9f702000  addli r1, zero, 23
0005dc  1500e014  dma_cfg zero, zero, r14, 10
0005e0  1f372000  addli r14, zero, 19
0005e4  15001015  dma_cfg zero, zero, r17, 10
0005e8  9f482000  addli r17, zero, 20
0005ec  15002015  dma_cfg zero, zero, r18, 10
0005f0  1f592000  addli r18, zero, 21
0005f4  15005015  dma_cfg zero, zero, r21, 10
0005f8  803a0002  core_id r21
0005fc  15004014  dma_cfg zero, zero, r4, 10
000600  1f023000  addli r4, zero, 24
000604  15001014  dma_cfg zero, zero, r1, 10
000608  9f303000  addli r1, zero, 27
00060c  15005014  dma_cfg zero, zero, r5, 10
000610  9f123000  addli r5, zero, 25
000614  1500b014  dma_cfg zero, zero, r11, 10
000618  9f253000  addli r11, zero, 26
00061c  15000015  dma_cfg zero, zero, r16, 10
000620  1f383000  addli r16, zero, 27
000624  15001014  dma_cfg zero, zero, r1, 10
000628  9f403000  addli r1, zero, 28
00062c  15001014  dma_cfg zero, zero, r1, 10
000630  9f503000  addli r1, zero, 29
000634  15001014  dma_cfg zero, zero, r1, 10
000638  9f603000  addli r1, zero, 30
00063c  15001014  dma_cfg zero, zero, r1, 10
000640  9f703000  addli r1, zero, 31
000644  15001014  dma_cfg zero, zero, r1, 10
000648  9f000008  addli r1, zero, 1024
00064c  15050500  dma_cfg r10, r10, zero, 0
000650  15050002  dma_cfg r10, zero, zero, 1
000654  15000004  dma_cfg zero, zero, zero, 2
000658  950c6007  dma_cfg r25, zero, r22, 3
00065c  15017009  dma_cfg r2, zero, r23, 4
000660  150da00a  dma_cfg r26, zero, r10, 5
000664  15000010  dma_cfg zero, zero, zero, 8
000668  35000000  dma_run zero
00066c  1500a00a  dma_cfg zero, zero, r10, 5
000670  15000010  dma_cfg zero, zero, zero, 8
000674  1d900600  unlock r13
000678  1d800400  lock zero, r9
00067c  15050500  dma_cfg r10, r10, zero, 0
000680  15000a04  dma_cfg zero, r20, zero, 2
000684  15866907  dma_cfg r12, r19, r22, 3
000688  1f660000  addli r12, zero, 6
00068c  9f691000  addli r19, zero, 14
000690  15017b09  dma_cfg r2, r22, r23, 4
000694  158da00a  dma_cfg r26, r1, r10, 5
000698  9f300000  addli r1, zero, 3
00069c  15000010  dma_cfg zero, zero, zero, 8
0006a0  35000000  dma_run zero
0006a4  1500a00a  dma_cfg zero, zero, r10, 5
0006a8  15000010  dma_cfg zero, zero, zero, 8
0006ac  1d900400  unlock r9
0006b0  1d800600  lock zero, r13
0006b4  15000014  dma_cfg zero, zero, zero, 10
0006b8  1500a014  dma_cfg zero, zero, r10, 10
0006bc  1500f014  dma_cfg zero, zero, r15, 10
0006c0  15001014  dma_cfg zero, zero, r1, 10
0006c4  9f600000  addli r1, zero, 6
0006c8  15009014  dma_cfg zero, zero, r9, 10
0006cc  1500d014  dma_cfg zero, zero, r13, 10
0006d0  1500c014  dma_cfg zero, zero, r12, 10
0006d4  1f061000  addli r12, zero, 8
0006d8  1500b015  dma_cfg zero, zero, r27, 10
0006dc  1500c014  dma_cfg zero, zero, r12, 10
0006e0  1f261000  addli r12, zero, 10
0006e4  15008014  dma_cfg zero, zero, r8, 10
0006e8  1500c014  dma_cfg zero, zero, r12, 10
0006ec  1f361000  addli r12, zero, 11
0006f0  1500c014  dma_cfg zero, zero, r12, 10
0006f4  1f461000  addli r12, zero, 12
0006f8  1500c014  dma_cfg zero, zero, r12, 10
0006fc  1f561000  addli r12, zero, 13
000700  1500c014  dma_cfg zero, zero, r12, 10
000704  15003015  dma_cfg zero, zero, r19, 10
000708  15003014  dma_cfg zero, zero, r3, 10
00070c  9f112000  addli r3, zero, 17
000710  15007015  dma_cfg zero, zero, r23, 10
000714  15003014  dma_cfg zero, zero, r3, 10
000718  9f212000  addli r3, zero, 18
00071c  15003014  dma_cfg zero, zero, r3, 10
000720  9f612000  addli r3, zero, 22
000724  1500e014  dma_cfg zero, zero, r14, 10
000728  15001015  dma_cfg zero, zero, r17, 10
00072c  15002015  dma_cfg zero, zero, r18, 10
000730  15003014  dma_cfg zero, zero, r3, 10
000734  9f712000  addli r3, zero, 23
000738  15003014  dma_cfg zero, zero, r3, 10
00073c  9f413000  addli r3, zero, 28
000740  15004014  dma_cfg zero, zero, r4, 10
000744  15005014  dma_cfg zero, zero, r5, 10
000748  1500b014  dma_cfg zero, zero, r11, 10
00074c  15000015  dma_cfg zero, zero, r16, 10
000750  63484f00  loadli.w r16,  36(r30)
000754  15003014  dma_cfg zero, zero, r3, 10
000758  9f513000  addli r3, zero, 29
00075c  15003014  dma_cfg zero, zero, r3, 10
000760  9f613000  addli r3, zero, 30
000764  15003014  dma_cfg zero, zero, r3, 10
000768  9f713000  addli r3, zero, 31
00076c  15003014  dma_cfg zero, zero, r3, 10
000770  15050500  dma_cfg r10, r10, zero, 0
000774  15050002  dma_cfg r10, zero, zero, 1
000778  15000004  dma_cfg zero, zero, zero, 2
00077c  950c6007  dma_cfg r25, zero, r22, 3
000780  15017009  dma_cfg r2, zero, r23, 4
000784  150da00a  dma_cfg r26, zero, r10, 5
000788  15000010  dma_cfg zero, zero, zero, 8
00078c  35000000  dma_run zero
000790  1500a00a  dma_cfg zero, zero, r10, 5
000794  15000010  dma_cfg zero, zero, zero, 8
000798  1d900600  unlock r13
00079c  7d000600  xsignal r12, 0
0007a0  db49ffff  j -1460
0007a4  9f211000  addli r3, zero, 10
0007a8  2b01803f  lui r2, 260096
0007ac  9f090000  addli r19, zero, 0
0007b0  7d900100  xwait r3, 0
0007b4  9f511000  addli r3, zero, 13
0007b8  7d900100  xwait r3, 0
0007bc  1d800700  lock zero, r15
0007c0  0d000002  ew_cfg zero, zero, zero, 1
0007c4  0d110100  ewcoeff_cfg r2, r2, zero, 0
0007c8  1f71f003  addli r2, zero, 511
0007cc  0d000104  ew_cfg zero, r2, zero, 2
0007d0  0d050006  ew_cfg r10, zero, zero, 3
0007d4  ad899901  dsmadd r19, r19, r25, 0
0007d8  9f890910  addli r19, r19, 2048
0007dc  bbef89ff  bneq r19, r24, -8
0007e0  9f311000  addli r3, zero, 11
0007e4  1d900700  unlock r15
0007e8  7d800100  xsignal r3, 0
0007ec  9f611000  addli r3, zero, 14
0007f0  5b3fffff  j -1544
0007f4  7d900700  xwait r15, 0
0007f8  7d900600  xwait r13, 0
0007fc  1d000000  lock zero, zero
000800  9f310000  addli r3, zero, 3
000804  81070000  ds_cfg r15, zero, 0
000808  010b0002  ds_cfg r22, zero, 1
00080c  010b001c  ds_cfg r22, zero, 14
000810  010b001a  ds_cfg r22, zero, 13
000814  21106c03  shuffle_batch zero, r24, r22, 1
000818  1d100000  unlock zero
00081c  7d800100  xsignal r3, 0
000820  7d800400  xsignal r9, 0
000824  5b39ffff  j -1592
000828  9f700000  addli r1, zero, 7
00082c  1f320000  addli r4, zero, 3
000830  9f610000  addli r3, zero, 6
000834  9f021000  addli r5, zero, 8
000838  1f211000  addli r2, zero, 10
00083c  1f581000  addli r16, zero, 13
000840  1f672000  addli r14, zero, 22
000844  9f782000  addli r17, zero, 23
000848  1f093000  addli r18, zero, 24
00084c  9739ad02  sll.d r[20:21], r[27:28], r10
000850  1f1d3000  addli r26, zero, 25
000854  9f2d3000  addli r27, zero, 26
000858  eb558f00  load.d r[12:13], 8(r30)
00085c  7d900000  xwait r1, 0
000860  1d800600  lock zero, r13
000864  15000014  dma_cfg zero, zero, zero, 10
000868  8ba93511  add.ul r[20:21], r[12:13], r[20:21]
00086c  ab450200  lui r11, 36
000870  1500a014  dma_cfg zero, zero, r10, 10
000874  1500f014  dma_cfg zero, zero, r15, 10
000878  9f372000  addli r15, zero, 19
00087c  1b960504  ori r12, r11, 64
000880  15004014  dma_cfg zero, zero, r4, 10
000884  15009014  dma_cfg zero, zero, r9, 10
000888  1500d014  dma_cfg zero, zero, r13, 10
00088c  15003014  dma_cfg zero, zero, r3, 10
000890  9f010010  addli r3, zero, 2048
000894  15001014  dma_cfg zero, zero, r1, 10
000898  15005014  dma_cfg zero, zero, r5, 10
00089c  15008014  dma_cfg zero, zero, r8, 10
0008a0  1f142000  addli r8, zero, 17
0008a4  15002014  dma_cfg zero, zero, r2, 10
0008a8  1f311000  addli r2, zero, 11
0008ac  15002014  dma_cfg zero, zero, r2, 10
0008b0  1f411000  addli r2, zero, 12
0008b4  15002014  dma_cfg zero, zero, r2, 10
0008b8  1f611000  addli r2, zero, 14
0008bc  15000015  dma_cfg zero, zero, r16, 10
0008c0  15002014  dma_cfg zero, zero, r2, 10
0008c4  1f711000  addli r2, zero, 15
0008c8  15002014  dma_cfg zero, zero, r2, 10
0008cc  1f212000  addli r2, zero, 18
0008d0  15007015  dma_cfg zero, zero, r23, 10
0008d4  15008014  dma_cfg zero, zero, r8, 10
0008d8  15002014  dma_cfg zero, zero, r2, 10
0008dc  1f412000  addli r2, zero, 20
0008e0  1500f014  dma_cfg zero, zero, r15, 10
0008e4  15002014  dma_cfg zero, zero, r2, 10
0008e8  1f512000  addli r2, zero, 21
0008ec  15002014  dma_cfg zero, zero, r2, 10
0008f0  1f313000  addli r2, zero, 27
0008f4  1500e014  dma_cfg zero, zero, r14, 10
0008f8  15001015  dma_cfg zero, zero, r17, 10
0008fc  15002015  dma_cfg zero, zero, r18, 10
000900  1500a015  dma_cfg zero, zero, r26, 10
000904  1500b015  dma_cfg zero, zero, r27, 10
000908  15002014  dma_cfg zero, zero, r2, 10
00090c  1f413000  addli r2, zero, 28
000910  15002014  dma_cfg zero, zero, r2, 10
000914  1f513000  addli r2, zero, 29
000918  15002014  dma_cfg zero, zero, r2, 10
00091c  1f613000  addli r2, zero, 30
000920  15002014  dma_cfg zero, zero, r2, 10
000924  1f713000  addli r2, zero, 31
000928  15002014  dma_cfg zero, zero, r2, 10
00092c  1f010001  addli r2, zero, 128
000930  15050500  dma_cfg r10, r10, zero, 0
000934  15050002  dma_cfg r10, zero, zero, 1
000938  15000004  dma_cfg zero, zero, zero, 2
00093c  95056007  dma_cfg r11, zero, r22, 3
000940  15017009  dma_cfg r2, zero, r23, 4
000944  9501600b  dma_cfg r3, zero, r22, 5
000948  15000010  dma_cfg zero, zero, zero, 8
00094c  35000000  dma_run zero
000950  1500a00a  dma_cfg zero, zero, r10, 5
000954  15000010  dma_cfg zero, zero, zero, 8
000958  1d900600  unlock r13
00095c  1d800400  lock zero, r9
000960  15050500  dma_cfg r10, r10, zero, 0
000964  15000a04  dma_cfg zero, r20, zero, 2
000968  15866907  dma_cfg r12, r19, r22, 3
00096c  1f060020  addli r12, zero, 4096
000970  15017b09  dma_cfg r2, r22, r23, 4
000974  9501660b  dma_cfg r3, r12, r22, 5
000978  1f260000  addli r12, zero, 2
00097c  15000010  dma_cfg zero, zero, zero, 8
000980  35000000  dma_run zero
000984  1500a00a  dma_cfg zero, zero, r10, 5
000988  15000010  dma_cfg zero, zero, zero, 8
00098c  1d900400  unlock r9
000990  1d800600  lock zero, r13
000994  15000014  dma_cfg zero, zero, zero, 10
000998  1500a014  dma_cfg zero, zero, r10, 10
00099c  1500c014  dma_cfg zero, zero, r12, 10
0009a0  1f660000  addli r12, zero, 6
0009a4  15004014  dma_cfg zero, zero, r4, 10
0009a8  1f221000  addli r4, zero, 10
0009ac  15009014  dma_cfg zero, zero, r9, 10
0009b0  1500d014  dma_cfg zero, zero, r13, 10
0009b4  1500c014  dma_cfg zero, zero, r12, 10
0009b8  1f161000  addli r12, zero, 9
0009bc  15001014  dma_cfg zero, zero, r1, 10
0009c0  9f600000  addli r1, zero, 6
0009c4  15005014  dma_cfg zero, zero, r5, 10
0009c8  1500c014  dma_cfg zero, zero, r12, 10
0009cc  15004014  dma_cfg zero, zero, r4, 10
0009d0  1f321000  addli r4, zero, 11
0009d4  15004014  dma_cfg zero, zero, r4, 10
0009d8  1f421000  addli r4, zero, 12
0009dc  15004014  dma_cfg zero, zero, r4, 10
0009e0  1f621000  addli r4, zero, 14
0009e4  15000015  dma_cfg zero, zero, r16, 10
0009e8  63484f00  loadli.w r16,  36(r30)
0009ec  15004014  dma_cfg zero, zero, r4, 10
0009f0  1f721000  addli r4, zero, 15
0009f4  15004014  dma_cfg zero, zero, r4, 10
0009f8  1f222000  addli r4, zero, 18
0009fc  15007015  dma_cfg zero, zero, r23, 10
000a00  15008014  dma_cfg zero, zero, r8, 10
000a04  1f141000  addli r8, zero, 9
000a08  15004014  dma_cfg zero, zero, r4, 10
000a0c  1f422000  addli r4, zero, 20
000a10  1500f014  dma_cfg zero, zero, r15, 10
000a14  9f270000  addli r15, zero, 2
000a18  15004014  dma_cfg zero, zero, r4, 10
000a1c  1f522000  addli r4, zero, 21
000a20  15004014  dma_cfg zero, zero, r4, 10
000a24  1f323000  addli r4, zero, 27
000a28  1500e014  dma_cfg zero, zero, r14, 10
000a2c  15001015  dma_cfg zero, zero, r17, 10
000a30  15002015  dma_cfg zero, zero, r18, 10
000a34  1500a015  dma_cfg zero, zero, r26, 10
000a38  1500b015  dma_cfg zero, zero, r27, 10
000a3c  15004014  dma_cfg zero, zero, r4, 10
000a40  1f423000  addli r4, zero, 28
000a44  15004014  dma_cfg zero, zero, r4, 10
000a48  1f523000  addli r4, zero, 29
000a4c  15004014  dma_cfg zero, zero, r4, 10
000a50  1f623000  addli r4, zero, 30
000a54  15004014  dma_cfg zero, zero, r4, 10
000a58  1f723000  addli r4, zero, 31
000a5c  15004014  dma_cfg zero, zero, r4, 10
000a60  15050500  dma_cfg r10, r10, zero, 0
000a64  15050002  dma_cfg r10, zero, zero, 1
000a68  15000004  dma_cfg zero, zero, zero, 2
000a6c  95056007  dma_cfg r11, zero, r22, 3
000a70  15017009  dma_cfg r2, zero, r23, 4
000a74  9501600b  dma_cfg r3, zero, r22, 5
000a78  15000010  dma_cfg zero, zero, zero, 8
000a7c  35000000  dma_run zero
000a80  1500a00a  dma_cfg zero, zero, r10, 5
000a84  15000010  dma_cfg zero, zero, zero, 8
000a88  1d900600  unlock r13
000a8c  7d800000  xsignal r1, 0
000a90  dbebfeff  j -2212
000a94  7d000000  xsignal zero, 0
000a98  bbe00a00  bneq r21, zero, 56
000a9c  9f200000  addli r1, zero, 2
000aa0  7d100000  xwait zero, 0
000aa4  7d100000  xwait zero, 0
000aa8  7d100000  xwait zero, 0
000aac  7d100000  xwait zero, 0
000ab0  7d100000  xwait zero, 0
000ab4  7d100000  xwait zero, 0
000ab8  7d100000  xwait zero, 0
000abc  7d100000  xwait zero, 0
000ac0  1d800000  lock zero, r1
000ac4  0d000020  ew_cfg zero, zero, zero, 16
000ac8  1d900000  unlock r1
000acc  7d400000  xsignal_mode_cfg zero
000ad0  9f8e1e00  addli sp, sp, 8
000ad4  00a00300  mfence { lm, sm, gm }
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
000d18  00100000  exit
