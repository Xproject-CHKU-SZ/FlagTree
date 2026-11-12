; SHA-256 b3a883f01fc0715dec13bad9f58fe045895f8cd3f0aeef18c466a3df132ef318
; P800 SDNN · XTDK LLVM 19 · 1907 / 1907 words decoded
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
0000b4  9f8ebefe  addli sp, sp, -168
0000b8  9f100000  addli r1, zero, 1
0000bc  00370002  core_id r14
0000c0  1f8fde00  addli r30, sp, 104
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600700  beq r14, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b140000  j 160
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f510000  addli r2, zero, 5
000100  80a10004  csr_set csr3, r1
000104  9f301000  addli r1, zero, 11
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  9f300000  addli r1, zero, 3
000130  1f111000  addli r2, zero, 9
000134  7d800000  xsignal r1, 0
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d000100  xsignal r2, 0
000148  7d000100  xsignal r2, 0
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  9f700000  addli r1, zero, 7
000158  1f511000  addli r2, zero, 13
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  e3003f00  loadli.w r1,  24(r30)
000180  63413f00  loadli.w r2,  28(r30)
000184  00d20002  load_param_i r4, 1
000188  e3014f00  loadli.w r3,  32(r30)
00018c  8b101120  mul.s r1, r2, r1
000190  1f010200  addli r2, r4, 0
000194  0b913050  fmac.s r2, r1, r3
000198  8b913020  mul.s r3, r1, r3
00019c  1f71f1ff  addli r2, r2, -1
0001a0  0b114130  div.s r2, r2, r4
0001a4  00520002  load_param_i r4, 0
0001a8  8b104120  mul.s r1, r2, r4
0001ac  0b114150  fmac.s r2, r2, r4
0001b0  0b113140  min.s r2, r2, r3
0001b4  4b46110c  ble.s r2, r1, 6544
0001b8  33110128  sext_int2long r[3:4], r2
0001bc  339a0028  sext_int2long r[21:22], r1
0001c0  1f4b0000  addli r22, zero, 4
0001c4  9f0b0001  addli r23, zero, 128
0001c8  1f0c1000  addli r24, zero, 8
0001cc  9f790000  addli r19, zero, 7
0001d0  2b02ffff  lui r4, 1048560
0001d4  9f080000  addli r17, zero, 0
0001d8  73342ffa  store.d r[3:4], -88(r30)
0001dc  1f71f00f  addli r2, zero, 2047
0001e0  ab01807f  lui r3, 522240
0001e4  ab00feff  lui r1, 1048544
0001e8  73301ffa  store.d r[2:3], -96(r30)
0001ec  abf0ff7f  lui r1, 524287
0001f0  2bf17f7f  lui r2, 522239
0001f4  9b97f0ff  ori r15, r1, 4095
0001f8  ab700000  lui r1, 7
0001fc  1b15f1ff  ori r10, r2, 4095
000200  1b98f0ff  ori r16, r1, 4095
000204  b3000028  zext_int2long r[2:3], zero
000208  733c1ff8  store.d r[2:3], -104(r30)
00020c  db070000  j 60
000210  9f301000  addli r1, zero, 11
000214  9f0b0001  addli r23, zero, 128
000218  1f0c1000  addli r24, zero, 8
00021c  7d800000  xsignal r1, 0
000220  9f401000  addli r1, zero, 12
000224  7d800000  xsignal r1, 0
000228  e348dfff  loadli.w r17,  -20(r30)
00022c  6b5a0ffe  load.d r[21:22], -32(r30)
000230  eb508ffa  load.d r[2:3], -88(r30)
000234  9f980800  addli r17, r17, 1
000238  1f4b0000  addli r22, zero, 4
00023c  271a0a00  addli.d r[21:22], r[21:22], 1
000240  93301a04  setlt.sl r1, r[21:22], r[2:3]
000244  3784000c  beq r1, zero, 6400
000248  e3004f00  loadli.w r1,  32(r30)
00024c  63413f00  loadli.w r2,  28(r30)
000250  8b101a30  div.s r1, r20, r1
000254  8b952030  div.s r11, r1, r2
000258  1f014000  addli r2, zero, 32
00025c  0b947531  div.s r8, r11, r23
000260  9b303400  slli r1, r8, 3
000264  0b111118  sub.s r2, r2, r1
000268  8b148141  min.s r9, r2, r24
00026c  0b919538  mod.s r2, r11, r9
000270  0b111110  add.s r2, r2, r1
000274  9f703000  addli r1, zero, 31
000278  93822004  setlt.u r5, r1, r2
00027c  33030128  zext_int2long r[7:8], r2
000280  9f401000  addli r1, zero, 12
000284  674c2ffe  storeli.w r2, -60(r30)
000288  97301302  sll.d r[2:3], r[7:8], r1
00028c  73346ffc  store.d r[7:8], -56(r30)
000290  3bb00200  bneq r5, zero, 12
000294  6b568ff9  load.d r[13:14], -104(r30)
000298  db010000  j 12
00029c  eb520ffa  load.d r[6:7], -96(r30)
0002a0  17865002  and.d r[13:14], r[2:3], r[6:7]
0002a4  0b936839  mod.s r6, r17, r22
0002a8  9f02800f  addli r5, zero, 1984
0002ac  9f8c0800  addli r25, r17, 0
0002b0  338d0228  zext_int2long r[27:28], r5
0002b4  ab020200  lui r5, 32
0002b8  e74e9fff  storeli.w r25, -20(r30)
0002bc  7338afff  store.d r[27:28], -16(r30)
0002c0  9b38e300  slli r17, r6, 14
0002c4  8b935810  add.s r7, r17, r5
0002c8  9f620000  addli r5, zero, 6
0002cc  3b1b5700  bneq r14, r5, 708
0002d0  8bb0c018  sub.sl r[2:3], r[2:3], r[13:14]
0002d4  6b598ffc  load.d r[19:20], -56(r30)
0002d8  1f571000  addli r14, zero, 13
0002dc  97d05002  sra.d r[2:3], r[2:3], r5
0002e0  1739e902  sll.d r[19:20], r[19:20], r14
0002e4  0bb6a041  min.sl r[13:14], r[2:3], r[27:28]
0002e8  0b361618  sub.sl r[13:14], r[13:14], r[2:3]
0002ec  eb500f00  load.d r[2:3], 0(r30)
0002f0  8ba02011  add.ul r[2:3], r[2:3], r[19:20]
0002f4  1f098600  addli r18, r12, 64
0002f8  9f360000  addli r13, zero, 3
0002fc  9f790000  addli r19, zero, 7
000300  1f660000  addli r12, zero, 6
000304  7d900600  xwait r13, 0
000308  bf849601  blt.s r13, r25, 288
00030c  9f5c0000  addli r25, zero, 5
000310  1f1d0000  addli r26, zero, 1
000314  9f2d0000  addli r27, zero, 2
000318  9f121000  addli r5, zero, 9
00031c  1d800c00  lock zero, r25
000320  15000014  dma_cfg zero, zero, zero, 10
000324  1500a015  dma_cfg zero, zero, r26, 10
000328  1500b015  dma_cfg zero, zero, r27, 10
00032c  1500d014  dma_cfg zero, zero, r13, 10
000330  15006015  dma_cfg zero, zero, r22, 10
000334  15009015  dma_cfg zero, zero, r25, 10
000338  1500c014  dma_cfg zero, zero, r12, 10
00033c  15003015  dma_cfg zero, zero, r19, 10
000340  15008015  dma_cfg zero, zero, r24, 10
000344  15005014  dma_cfg zero, zero, r5, 10
000348  9f221000  addli r5, zero, 10
00034c  15005014  dma_cfg zero, zero, r5, 10
000350  9f321000  addli r5, zero, 11
000354  15005014  dma_cfg zero, zero, r5, 10
000358  9f421000  addli r5, zero, 12
00035c  15005014  dma_cfg zero, zero, r5, 10
000360  9f621000  addli r5, zero, 14
000364  1500e014  dma_cfg zero, zero, r14, 10
000368  15005014  dma_cfg zero, zero, r5, 10
00036c  9f721000  addli r5, zero, 15
000370  15005014  dma_cfg zero, zero, r5, 10
000374  9f022000  addli r5, zero, 16
000378  15005014  dma_cfg zero, zero, r5, 10
00037c  9f122000  addli r5, zero, 17
000380  15005014  dma_cfg zero, zero, r5, 10
000384  9f222000  addli r5, zero, 18
000388  15005014  dma_cfg zero, zero, r5, 10
00038c  9f322000  addli r5, zero, 19
000390  15005014  dma_cfg zero, zero, r5, 10
000394  9f422000  addli r5, zero, 20
000398  15005014  dma_cfg zero, zero, r5, 10
00039c  9f522000  addli r5, zero, 21
0003a0  15005014  dma_cfg zero, zero, r5, 10
0003a4  9f622000  addli r5, zero, 22
0003a8  15005014  dma_cfg zero, zero, r5, 10
0003ac  9f722000  addli r5, zero, 23
0003b0  15005014  dma_cfg zero, zero, r5, 10
0003b4  9f023000  addli r5, zero, 24
0003b8  15005014  dma_cfg zero, zero, r5, 10
0003bc  9f123000  addli r5, zero, 25
0003c0  15005014  dma_cfg zero, zero, r5, 10
0003c4  9f223000  addli r5, zero, 26
0003c8  15005014  dma_cfg zero, zero, r5, 10
0003cc  9f323000  addli r5, zero, 27
0003d0  15005014  dma_cfg zero, zero, r5, 10
0003d4  9f423000  addli r5, zero, 28
0003d8  15005014  dma_cfg zero, zero, r5, 10
0003dc  9f523000  addli r5, zero, 29
0003e0  15005014  dma_cfg zero, zero, r5, 10
0003e4  9f623000  addli r5, zero, 30
0003e8  15005014  dma_cfg zero, zero, r5, 10
0003ec  9f723000  addli r5, zero, 31
0003f0  15005014  dma_cfg zero, zero, r5, 10
0003f4  9f028000  addli r5, zero, 64
0003f8  150d0d00  dma_cfg r26, r26, zero, 0
0003fc  150d0002  dma_cfg r26, zero, zero, 1
000400  15000004  dma_cfg zero, zero, zero, 2
000404  95035006  dma_cfg r7, zero, r5, 3
000408  950bb009  dma_cfg r23, zero, r27, 4
00040c  9f0d0002  addli r27, zero, 256
000410  950d500a  dma_cfg r27, zero, r5, 5
000414  15000010  dma_cfg zero, zero, zero, 8
000418  35000000  dma_run zero
00041c  1500a00b  dma_cfg zero, zero, r26, 5
000420  15000010  dma_cfg zero, zero, zero, 8
000424  1d900c00  unlock r25
000428  ab020200  lui r5, 32
00042c  674d0ffe  storeli.w zero, -44(r30)
000430  9f1c0000  addli r25, zero, 1
000434  1f0d8000  addli r26, zero, 64
000438  9f0d0002  addli r27, zero, 256
00043c  1d000b00  lock zero, r22
000440  9b920204  ori r5, r5, 64
000444  958c0c00  dma_cfg r25, r25, zero, 0
000448  15000104  dma_cfg zero, r2, zero, 2
00044c  8b925810  add.s r5, r17, r5
000450  9582a007  dma_cfg r5, r1, r26, 3
000454  9f220000  addli r5, zero, 2
000458  1f510000  addli r2, zero, 5
00045c  9f101000  addli r1, zero, 9
000460  950b5d08  dma_cfg r23, r26, r5, 4
000464  958d2b0b  dma_cfg r27, r23, r18, 5
000468  15000010  dma_cfg zero, zero, zero, 8
00046c  35000000  dma_run zero
000470  1500900b  dma_cfg zero, zero, r25, 5
000474  15000010  dma_cfg zero, zero, zero, 8
000478  1d100b00  unlock r22
00047c  1d000100  lock zero, r2
000480  15000014  dma_cfg zero, zero, zero, 10
000484  15009015  dma_cfg zero, zero, r25, 10
000488  15005014  dma_cfg zero, zero, r5, 10
00048c  1500d014  dma_cfg zero, zero, r13, 10
000490  15006015  dma_cfg zero, zero, r22, 10
000494  15002014  dma_cfg zero, zero, r2, 10
000498  1500c014  dma_cfg zero, zero, r12, 10
00049c  1f260000  addli r12, zero, 2
0004a0  15003015  dma_cfg zero, zero, r19, 10
0004a4  15008015  dma_cfg zero, zero, r24, 10
0004a8  15001014  dma_cfg zero, zero, r1, 10
0004ac  9f201000  addli r1, zero, 10
0004b0  15001014  dma_cfg zero, zero, r1, 10
0004b4  9f301000  addli r1, zero, 11
0004b8  15001014  dma_cfg zero, zero, r1, 10
0004bc  9f401000  addli r1, zero, 12
0004c0  15001014  dma_cfg zero, zero, r1, 10
0004c4  9f601000  addli r1, zero, 14
0004c8  1500e014  dma_cfg zero, zero, r14, 10
0004cc  00370002  core_id r14
0004d0  15001014  dma_cfg zero, zero, r1, 10
0004d4  9f701000  addli r1, zero, 15
0004d8  15001014  dma_cfg zero, zero, r1, 10
0004dc  9f002000  addli r1, zero, 16
0004e0  15001014  dma_cfg zero, zero, r1, 10
0004e4  9f102000  addli r1, zero, 17
0004e8  15001014  dma_cfg zero, zero, r1, 10
0004ec  9f202000  addli r1, zero, 18
0004f0  15001014  dma_cfg zero, zero, r1, 10
0004f4  9f302000  addli r1, zero, 19
0004f8  15001014  dma_cfg zero, zero, r1, 10
0004fc  9f402000  addli r1, zero, 20
000500  15001014  dma_cfg zero, zero, r1, 10
000504  9f502000  addli r1, zero, 21
000508  15001014  dma_cfg zero, zero, r1, 10
00050c  9f602000  addli r1, zero, 22
000510  15001014  dma_cfg zero, zero, r1, 10
000514  9f702000  addli r1, zero, 23
000518  15001014  dma_cfg zero, zero, r1, 10
00051c  9f003000  addli r1, zero, 24
000520  15001014  dma_cfg zero, zero, r1, 10
000524  9f103000  addli r1, zero, 25
000528  15001014  dma_cfg zero, zero, r1, 10
00052c  9f203000  addli r1, zero, 26
000530  15001014  dma_cfg zero, zero, r1, 10
000534  9f303000  addli r1, zero, 27
000538  15001014  dma_cfg zero, zero, r1, 10
00053c  9f403000  addli r1, zero, 28
000540  15001014  dma_cfg zero, zero, r1, 10
000544  9f503000  addli r1, zero, 29
000548  15001014  dma_cfg zero, zero, r1, 10
00054c  9f603000  addli r1, zero, 30
000550  15001014  dma_cfg zero, zero, r1, 10
000554  9f703000  addli r1, zero, 31
000558  15001014  dma_cfg zero, zero, r1, 10
00055c  958c0c00  dma_cfg r25, r25, zero, 0
000560  950c0002  dma_cfg r25, zero, zero, 1
000564  15000004  dma_cfg zero, zero, zero, 2
000568  9503a007  dma_cfg r7, zero, r26, 3
00056c  950b5008  dma_cfg r23, zero, r5, 4
000570  950d200b  dma_cfg r27, zero, r18, 5
000574  15000010  dma_cfg zero, zero, zero, 8
000578  35000000  dma_run zero
00057c  1500900b  dma_cfg zero, zero, r25, 5
000580  15000010  dma_cfg zero, zero, zero, 8
000584  1d100100  unlock r2
000588  7d800200  xsignal r5, 0
00058c  5b0c0000  j 96
000590  1f210000  addli r2, zero, 2
000594  3b312700  bneq r14, r2, 76
000598  9f500000  addli r1, zero, 5
00059c  7d100100  xwait r2, 0
0005a0  1f260000  addli r12, zero, 2
0005a4  7d900000  xwait r1, 0
0005a8  1d000000  lock zero, zero
0005ac  9f008000  addli r1, zero, 64
0005b0  01010000  ds_cfg r2, zero, 0
0005b4  81000002  ds_cfg r1, zero, 1
0005b8  8100001c  ds_cfg r1, zero, 14
0005bc  8100001a  ds_cfg r1, zero, 13
0005c0  a1981302  shuffle_batch r17, r7, r1, 1
0005c4  9f300000  addli r1, zero, 3
0005c8  1d100000  unlock zero
0005cc  7d800000  xsignal r1, 0
0005d0  9f100000  addli r1, zero, 1
0005d4  674d1ffe  storeli.w r1, -44(r30)
0005d8  7d000b00  xsignal r22, 0
0005dc  db010000  j 12
0005e0  1f260000  addli r12, zero, 2
0005e4  674d0ffe  storeli.w zero, -44(r30)
0005e8  9f1c0000  addli r25, zero, 1
0005ec  9b307400  slli r1, r8, 7
0005f0  ab020300  lui r5, 48
0005f4  73304fff  store.d r[21:22], -32(r30)
0005f8  8b901518  sub.s r1, r11, r1
0005fc  9b35f300  slli r11, r6, 15
000600  8b949030  div.s r9, r1, r9
000604  0b935510  add.s r6, r11, r5
000608  b3800428  zext_int2long r[2:3], r9
00060c  674b9ffe  storeli.w r9, -76(r30)
000610  97b03003  sll.d r[2:3], r[2:3], r19
000614  97b39003  sll.d r[8:9], r[2:3], r25
000618  9f100000  addli r1, zero, 1
00061c  733c7ffa  store.d r[8:9], -72(r30)
000620  bb3a1700  bneq r14, r1, 684
000624  eb508f00  load.d r[2:3], 8(r30)
000628  7d900900  xwait r19, 0
00062c  e342dfff  loadli.w r5,  -20(r30)
000630  8ba07010  add.ul r[2:3], r[2:3], r[8:9]
000634  9f330000  addli r7, zero, 3
000638  bf945300  blt.s r7, r5, 292
00063c  1f540000  addli r8, zero, 5
000640  9f140000  addli r9, zero, 1
000644  9f620000  addli r5, zero, 6
000648  9f060004  addli r13, zero, 512
00064c  1d000400  lock zero, r8
000650  15000014  dma_cfg zero, zero, zero, 10
000654  15009014  dma_cfg zero, zero, r9, 10
000658  1500c014  dma_cfg zero, zero, r12, 10
00065c  15007014  dma_cfg zero, zero, r7, 10
000660  15006015  dma_cfg zero, zero, r22, 10
000664  15008014  dma_cfg zero, zero, r8, 10
000668  15005014  dma_cfg zero, zero, r5, 10
00066c  9f121000  addli r5, zero, 9
000670  15003015  dma_cfg zero, zero, r19, 10
000674  15008015  dma_cfg zero, zero, r24, 10
000678  15005014  dma_cfg zero, zero, r5, 10
00067c  9f221000  addli r5, zero, 10
000680  15005014  dma_cfg zero, zero, r5, 10
000684  9f321000  addli r5, zero, 11
000688  15005014  dma_cfg zero, zero, r5, 10
00068c  9f421000  addli r5, zero, 12
000690  15005014  dma_cfg zero, zero, r5, 10
000694  9f521000  addli r5, zero, 13
000698  15005014  dma_cfg zero, zero, r5, 10
00069c  9f621000  addli r5, zero, 14
0006a0  15005014  dma_cfg zero, zero, r5, 10
0006a4  9f721000  addli r5, zero, 15
0006a8  15005014  dma_cfg zero, zero, r5, 10
0006ac  9f022000  addli r5, zero, 16
0006b0  15005014  dma_cfg zero, zero, r5, 10
0006b4  9f122000  addli r5, zero, 17
0006b8  15005014  dma_cfg zero, zero, r5, 10
0006bc  9f222000  addli r5, zero, 18
0006c0  15005014  dma_cfg zero, zero, r5, 10
0006c4  9f322000  addli r5, zero, 19
0006c8  15005014  dma_cfg zero, zero, r5, 10
0006cc  9f422000  addli r5, zero, 20
0006d0  15005014  dma_cfg zero, zero, r5, 10
0006d4  9f522000  addli r5, zero, 21
0006d8  15005014  dma_cfg zero, zero, r5, 10
0006dc  9f622000  addli r5, zero, 22
0006e0  15005014  dma_cfg zero, zero, r5, 10
0006e4  9f722000  addli r5, zero, 23
0006e8  15005014  dma_cfg zero, zero, r5, 10
0006ec  9f023000  addli r5, zero, 24
0006f0  15005014  dma_cfg zero, zero, r5, 10
0006f4  9f123000  addli r5, zero, 25
0006f8  15005014  dma_cfg zero, zero, r5, 10
0006fc  9f223000  addli r5, zero, 26
000700  15005014  dma_cfg zero, zero, r5, 10
000704  9f323000  addli r5, zero, 27
000708  15005014  dma_cfg zero, zero, r5, 10
00070c  9f423000  addli r5, zero, 28
000710  15005014  dma_cfg zero, zero, r5, 10
000714  9f523000  addli r5, zero, 29
000718  15005014  dma_cfg zero, zero, r5, 10
00071c  9f623000  addli r5, zero, 30
000720  15005014  dma_cfg zero, zero, r5, 10
000724  9f723000  addli r5, zero, 31
000728  15005014  dma_cfg zero, zero, r5, 10
00072c  9f028000  addli r5, zero, 64
000730  95840400  dma_cfg r9, r9, zero, 0
000734  95040002  dma_cfg r9, zero, zero, 1
000738  15000004  dma_cfg zero, zero, zero, 2
00073c  15035006  dma_cfg r6, zero, r5, 3
000740  950b6009  dma_cfg r23, zero, r22, 4
000744  9506500a  dma_cfg r13, zero, r5, 5
000748  15000010  dma_cfg zero, zero, zero, 8
00074c  35000000  dma_run zero
000750  1500900a  dma_cfg zero, zero, r9, 5
000754  15000010  dma_cfg zero, zero, zero, 8
000758  1d100400  unlock r8
00075c  ab020300  lui r5, 48
000760  e74d0ffe  storeli.w zero, -36(r30)
000764  e70d0ffe  storeli.w zero, -40(r30)
000768  1f140000  addli r8, zero, 1
00076c  9f048000  addli r9, zero, 64
000770  9f060004  addli r13, zero, 512
000774  1d000b00  lock zero, r22
000778  9b920204  ori r5, r5, 64
00077c  15040400  dma_cfg r8, r8, zero, 0
000780  15000104  dma_cfg zero, r2, zero, 2
000784  8b925510  add.s r5, r11, r5
000788  95829006  dma_cfg r5, r1, r9, 3
00078c  9f000020  addli r1, zero, 4096
000790  9f520000  addli r5, zero, 5
000794  1f610000  addli r2, zero, 6
000798  958b6409  dma_cfg r23, r9, r22, 4
00079c  9586900a  dma_cfg r13, r1, r9, 5
0007a0  9f101000  addli r1, zero, 9
0007a4  15000010  dma_cfg zero, zero, zero, 8
0007a8  35000000  dma_run zero
0007ac  1500800a  dma_cfg zero, zero, r8, 5
0007b0  15000010  dma_cfg zero, zero, zero, 8
0007b4  1d100b00  unlock r22
0007b8  1d800200  lock zero, r5
0007bc  15000014  dma_cfg zero, zero, zero, 10
0007c0  15008014  dma_cfg zero, zero, r8, 10
0007c4  1500c014  dma_cfg zero, zero, r12, 10
0007c8  15007014  dma_cfg zero, zero, r7, 10
0007cc  15006015  dma_cfg zero, zero, r22, 10
0007d0  15005014  dma_cfg zero, zero, r5, 10
0007d4  15002014  dma_cfg zero, zero, r2, 10
0007d8  15003015  dma_cfg zero, zero, r19, 10
0007dc  15008015  dma_cfg zero, zero, r24, 10
0007e0  15001014  dma_cfg zero, zero, r1, 10
0007e4  9f201000  addli r1, zero, 10
0007e8  15001014  dma_cfg zero, zero, r1, 10
0007ec  9f301000  addli r1, zero, 11
0007f0  15001014  dma_cfg zero, zero, r1, 10
0007f4  9f401000  addli r1, zero, 12
0007f8  15001014  dma_cfg zero, zero, r1, 10
0007fc  9f501000  addli r1, zero, 13
000800  15001014  dma_cfg zero, zero, r1, 10
000804  9f601000  addli r1, zero, 14
000808  15001014  dma_cfg zero, zero, r1, 10
00080c  9f701000  addli r1, zero, 15
000810  15001014  dma_cfg zero, zero, r1, 10
000814  9f002000  addli r1, zero, 16
000818  15001014  dma_cfg zero, zero, r1, 10
00081c  9f102000  addli r1, zero, 17
000820  15001014  dma_cfg zero, zero, r1, 10
000824  9f202000  addli r1, zero, 18
000828  15001014  dma_cfg zero, zero, r1, 10
00082c  9f302000  addli r1, zero, 19
000830  15001014  dma_cfg zero, zero, r1, 10
000834  9f402000  addli r1, zero, 20
000838  15001014  dma_cfg zero, zero, r1, 10
00083c  9f502000  addli r1, zero, 21
000840  15001014  dma_cfg zero, zero, r1, 10
000844  9f602000  addli r1, zero, 22
000848  15001014  dma_cfg zero, zero, r1, 10
00084c  9f702000  addli r1, zero, 23
000850  15001014  dma_cfg zero, zero, r1, 10
000854  9f003000  addli r1, zero, 24
000858  15001014  dma_cfg zero, zero, r1, 10
00085c  9f103000  addli r1, zero, 25
000860  15001014  dma_cfg zero, zero, r1, 10
000864  9f203000  addli r1, zero, 26
000868  15001014  dma_cfg zero, zero, r1, 10
00086c  9f303000  addli r1, zero, 27
000870  15001014  dma_cfg zero, zero, r1, 10
000874  9f403000  addli r1, zero, 28
000878  15001014  dma_cfg zero, zero, r1, 10
00087c  9f503000  addli r1, zero, 29
000880  15001014  dma_cfg zero, zero, r1, 10
000884  9f603000  addli r1, zero, 30
000888  15001014  dma_cfg zero, zero, r1, 10
00088c  9f703000  addli r1, zero, 31
000890  15001014  dma_cfg zero, zero, r1, 10
000894  9f100000  addli r1, zero, 1
000898  95800000  dma_cfg r1, r1, zero, 0
00089c  95000002  dma_cfg r1, zero, zero, 1
0008a0  15000004  dma_cfg zero, zero, zero, 2
0008a4  15039006  dma_cfg r6, zero, r9, 3
0008a8  950b6009  dma_cfg r23, zero, r22, 4
0008ac  9506900a  dma_cfg r13, zero, r9, 5
0008b0  15000010  dma_cfg zero, zero, zero, 8
0008b4  35000000  dma_run zero
0008b8  1500100a  dma_cfg zero, zero, r1, 5
0008bc  15000010  dma_cfg zero, zero, zero, 8
0008c0  1d900200  unlock r5
0008c4  7d000100  xsignal r2, 0
0008c8  5b200000  j 256
0008cc  37416701  beq r14, r22, 80
0008d0  3b233701  bneq r14, r19, 200
0008d4  9f600000  addli r1, zero, 6
0008d8  e70d0ffe  storeli.w zero, -40(r30)
0008dc  7d900000  xwait r1, 0
0008e0  9f101000  addli r1, zero, 9
0008e4  7d900000  xwait r1, 0
0008e8  1d000000  lock zero, zero
0008ec  9f008000  addli r1, zero, 64
0008f0  01060000  ds_cfg r12, zero, 0
0008f4  810b0002  ds_cfg r23, zero, 1
0008f8  8100001c  ds_cfg r1, zero, 14
0008fc  810b001a  ds_cfg r23, zero, 13
000900  c1051304  shuffle_coa r11, r6, r1, 2
000904  9f100000  addli r1, zero, 1
000908  1d100000  unlock zero
00090c  7d800900  xsignal r19, 0
000910  e74d1ffe  storeli.w r1, -36(r30)
000914  7d000c00  xsignal r24, 0
000918  db150000  j 172
00091c  9f020000  addli r5, zero, 0
000920  9f100000  addli r1, zero, 1
000924  1f110000  addli r2, zero, 1
000928  9f038000  addli r7, zero, 64
00092c  1f331000  addli r6, zero, 11
000930  7d100b00  xwait r22, 0
000934  7d100c00  xwait r24, 0
000938  7d100300  xwait r6, 0
00093c  1bb3e200  slli r6, r5, 14
000940  9bb28200  slli r5, r5, 8
000944  1d800000  lock zero, r1
000948  89837300  mm_cfg r7, r7, r7, 0
00094c  1713b300  or r6, r6, r11
000950  9792b200  or r5, r5, r11
000954  090b1b04  mm_cfg r22, r22, r1, 2
000958  a9826810  mm r5, r17, r6, 8
00095c  1b031100  andi r6, r2, 1
000960  9f120000  addli r5, zero, 1
000964  1f010000  addli r2, zero, 0
000968  1d900000  unlock r1
00096c  3b4f03fe  bneq r6, zero, -48
000970  9f500000  addli r1, zero, 5
000974  e74d0ffe  storeli.w zero, -36(r30)
000978  7d800000  xsignal r1, 0
00097c  9f101000  addli r1, zero, 9
000980  7d800000  xsignal r1, 0
000984  9f100000  addli r1, zero, 1
000988  e70d1ffe  storeli.w r1, -40(r30)
00098c  9f201000  addli r1, zero, 10
000990  7d800000  xsignal r1, 0
000994  5b060000  j 48
000998  9f300000  addli r1, zero, 3
00099c  bb001700  bneq r14, r1, 32
0009a0  9f201000  addli r1, zero, 10
0009a4  e74d0ffe  storeli.w zero, -36(r30)
0009a8  e70d0ffe  storeli.w zero, -40(r30)
0009ac  7d900000  xwait r1, 0
0009b0  9f501000  addli r1, zero, 13
0009b4  7d900000  xwait r1, 0
0009b8  db010000  j 12
0009bc  e74d0ffe  storeli.w zero, -36(r30)
0009c0  e70d0ffe  storeli.w zero, -40(r30)
0009c4  9f100000  addli r1, zero, 1
0009c8  2b010500  lui r2, 80
0009cc  6b560fff  load.d r[13:14], -16(r30)
0009d0  3d000000  xfence
0009d4  b38a0b28  zext_int2long r[22:23], r23
0009d8  00a00300  mfence { lm, sm, gm }
0009dc  8b982510  add.s r17, r11, r2
0009e0  1f71f001  addli r2, zero, 255
0009e4  80220104  csr_set csr5, r2
0009e8  1f71f000  addli r2, zero, 127
0009ec  00e00200  sync_core
0009f0  b30b0128  zext_int2long r[24:25], r2
0009f4  b7700700  beq r14, zero, 60
0009f8  b7581700  beq r14, r1, 564
0009fc  e340afff  loadli.w r1,  -44(r30)
000a00  bbc00002  bneq r1, zero, 1072
000a04  9f300000  addli r1, zero, 3
000a08  b7381702  beq r14, r1, 1580
000a0c  e300bfff  loadli.w r1,  -40(r30)
000a10  bba00004  bneq r1, zero, 2088
000a14  9f500000  addli r1, zero, 5
000a18  b7181704  beq r14, r1, 2596
000a1c  9f600000  addli r1, zero, 6
000a20  b7001706  beq r14, r1, 3104
000a24  e340bfff  loadli.w r1,  -36(r30)
000a28  3bf80006  bneq r1, zero, 3612
000a2c  db020200  j 4116
000a30  3d000000  xfence
000a34  b3020028  zext_int2long r[6:7], zero
000a38  00a00300  mfence { lm, sm, gm }
000a3c  db030000  j 28
000a40  9f790000  addli r19, zero, 7
000a44  eb528fff  load.d r[6:7], -8(r30)
000a48  b3800928  zext_int2long r[2:3], r19
000a4c  93a01204  setlt.ul r1, r[6:7], r[2:3]
000a50  a7920200  addli.d r[6:7], r[6:7], 1
000a54  37970000  beq r1, zero, 452
000a58  733c5ffe  store.d r[6:7], -8(r30)
000a5c  17b33203  sll.d r[7:8], r[6:7], r19
000a60  bbd1b800  bneq r17, r11, 116
000a64  b3000028  zext_int2long r[2:3], zero
000a68  5b030000  j 24
000a6c  93a47005  setlt.ul r9, r[2:3], r[24:25]
000a70  8b925810  add.s r5, r17, r5
000a74  a7900000  addli.d r[2:3], r[2:3], 1
000a78  73e08200  stores.w r8, 0(r5)
000a7c  379f04fe  beq r9, zero, -60
000a80  0ba46010  add.ul r[9:10], r[2:3], r[7:8]
000a84  9b322400  slli r5, r8, 2
000a88  0b945510  add.s r8, r11, r5
000a8c  ef440400  loads.w r9, 0(r8)
000a90  1786f400  and r12, r9, r15
000a94  1384c104  setlt.u r8, r3, r12
000a98  3b500400  bneq r8, zero, 20
000a9c  1f840400  addli r8, r9, 0
000aa0  1306c504  setlt.u r12, r10, r12
000aa4  3b2f06fe  bneq r12, zero, -56
000aa8  db020000  j 20
000aac  2b044000  lui r8, 1024
000ab0  17948400  or r8, r9, r8
000ab4  1306c504  setlt.u r12, r10, r12
000ab8  bb5e06fe  bneq r12, zero, -76
000abc  1bc40401  srli r8, r9, 16
000ac0  1b041400  andi r8, r8, 1
000ac4  0b948410  add.s r8, r9, r8
000ac8  0b140411  add.s r8, r8, r16
000acc  17044400  and r8, r8, r4
000ad0  dbf3ffff  j -100
000ad4  33090028  zext_int2long r[19:20], zero
000ad8  db040000  j 36
000adc  27490900  addli.d r[19:20], r[19:20], 4
000ae0  0b94d810  add.s r8, r17, r13
000ae4  93225901  seteq.d r5, r[19:20], r[22:23]
000ae8  73662400  stores.w r2, 12(r8)
000aec  73641400  stores.w r1, 8(r8)
000af0  7362c400  stores.w r12, 4(r8)
000af4  7360c401  stores.w r28, 0(r8)
000af8  3bad02fe  bneq r5, zero, -184
000afc  8b206910  add.ul r[2:3], r[19:20], r[7:8]
000b00  9bb62000  slli r13, r1, 2
000b04  0b9ed510  add.s r28, r11, r13
000b08  ef42ce00  loads.w r5, 12(r28)
000b0c  178df200  and r26, r5, r15
000b10  9380a105  setlt.u r1, r3, r26
000b14  3bb00000  bneq r1, zero, 12
000b18  1f810200  addli r2, r5, 0
000b1c  db010000  j 12
000b20  ab004000  lui r1, 1024
000b24  17911200  or r2, r5, r1
000b28  ef4d8e00  loads.w r27, 8(r28)
000b2c  1787fd00  and r14, r27, r15
000b30  9380e104  setlt.u r1, r3, r14
000b34  3bb00000  bneq r1, zero, 12
000b38  9f800d00  addli r1, r27, 0
000b3c  db010000  j 12
000b40  ab004000  lui r1, 1024
000b44  97901d00  or r1, r27, r1
000b48  6f4a4e00  loads.w r20, 4(r28)
000b4c  1704fa00  and r8, r20, r15
000b50  93848104  setlt.u r9, r3, r8
000b54  3bb00400  bneq r9, zero, 12
000b58  1f060a00  addli r12, r20, 0
000b5c  db010000  j 12
000b60  ab044000  lui r9, 1024
000b64  17169a00  or r12, r20, r9
000b68  ef440e00  loads.w r9, 0(r28)
000b6c  978cf400  and r25, r9, r15
000b70  138e9105  setlt.u r28, r3, r25
000b74  3b500e00  bneq r28, zero, 20
000b78  1f8e0400  addli r28, r9, 0
000b7c  930c9505  setlt.u r25, r10, r25
000b80  37e00c00  beq r25, zero, 24
000b84  5b050000  j 40
000b88  2b0e4000  lui r28, 1024
000b8c  179ec401  or r28, r9, r28
000b90  930c9505  setlt.u r25, r10, r25
000b94  3be00c00  bneq r25, zero, 24
000b98  9bcc0401  srli r25, r9, 16
000b9c  9b8c1c00  andi r25, r25, 1
000ba0  8b949411  add.s r9, r9, r25
000ba4  8b940411  add.s r9, r9, r16
000ba8  178e4400  and r28, r9, r4
000bac  13048504  setlt.u r8, r10, r8
000bb0  37600400  beq r8, zero, 24
000bb4  1304e504  setlt.u r8, r10, r14
000bb8  b7300400  beq r8, zero, 44
000bbc  1304a505  setlt.u r8, r10, r26
000bc0  3b7c04fe  bneq r8, zero, -228
000bc4  db070000  j 60
000bc8  1b440a01  srli r8, r20, 16
000bcc  1b041400  andi r8, r8, 1
000bd0  0b148a10  add.s r8, r20, r8
000bd4  0b140411  add.s r8, r8, r16
000bd8  17064400  and r12, r8, r4
000bdc  1304e504  setlt.u r8, r10, r14
000be0  3b7f04fe  bneq r8, zero, -36
000be4  9bc00d01  srli r1, r27, 16
000be8  9b801000  andi r1, r1, 1
000bec  8b901d10  add.s r1, r27, r1
000bf0  8b900011  add.s r1, r1, r16
000bf4  97804000  and r1, r1, r4
000bf8  1304a505  setlt.u r8, r10, r26
000bfc  bb0b04fe  bneq r8, zero, -288
000c00  1bc10201  srli r2, r5, 16
000c04  1b011100  andi r2, r2, 1
000c08  0b912210  add.s r2, r5, r2
000c0c  0b110111  add.s r2, r2, r16
000c10  17014100  and r2, r2, r4
000c14  5bd9ffff  j -312
000c18  00200100  mfence { sm }
000c1c  00370002  core_id r14
000c20  9f100000  addli r1, zero, 1
000c24  6b560fff  load.d r[13:14], -16(r30)
000c28  3b5717fe  bneq r14, r1, -556
000c2c  9f001000  addli r1, zero, 8
000c30  3d000000  xfence
000c34  00a00300  mfence { lm, sm, gm }
000c38  b3820028  zext_int2long r[6:7], r1
000c3c  5b040000  j 32
000c40  9f701000  addli r1, zero, 15
000c44  eb528fff  load.d r[6:7], -8(r30)
000c48  9f790000  addli r19, zero, 7
000c4c  b3800028  zext_int2long r[2:3], r1
000c50  93a01204  setlt.ul r1, r[6:7], r[2:3]
000c54  a7920200  addli.d r[6:7], r[6:7], 1
000c58  37970000  beq r1, zero, 452
000c5c  733c5ffe  store.d r[6:7], -8(r30)
000c60  17b33203  sll.d r[7:8], r[6:7], r19
000c64  bbd1b800  bneq r17, r11, 116
000c68  b3000028  zext_int2long r[2:3], zero
000c6c  5b030000  j 24
000c70  93a47005  setlt.ul r9, r[2:3], r[24:25]
000c74  8b925810  add.s r5, r17, r5
000c78  a7900000  addli.d r[2:3], r[2:3], 1
000c7c  73e08200  stores.w r8, 0(r5)
000c80  378f04fe  beq r9, zero, -64
000c84  0ba46010  add.ul r[9:10], r[2:3], r[7:8]
000c88  9b322400  slli r5, r8, 2
000c8c  0b945510  add.s r8, r11, r5
000c90  ef440400  loads.w r9, 0(r8)
000c94  1786f400  and r12, r9, r15
000c98  1384c104  setlt.u r8, r3, r12
000c9c  3b500400  bneq r8, zero, 20
000ca0  1f840400  addli r8, r9, 0
000ca4  1306c504  setlt.u r12, r10, r12
000ca8  3b2f06fe  bneq r12, zero, -56
000cac  db020000  j 20
000cb0  2b044000  lui r8, 1024
000cb4  17948400  or r8, r9, r8
000cb8  1306c504  setlt.u r12, r10, r12
000cbc  bb5e06fe  bneq r12, zero, -76
000cc0  1bc40401  srli r8, r9, 16
000cc4  1b041400  andi r8, r8, 1
000cc8  0b948410  add.s r8, r9, r8
000ccc  0b140411  add.s r8, r8, r16
000cd0  17044400  and r8, r8, r4
000cd4  dbf3ffff  j -100
000cd8  33090028  zext_int2long r[19:20], zero
000cdc  db040000  j 36
000ce0  27490900  addli.d r[19:20], r[19:20], 4
000ce4  0b91d810  add.s r2, r17, r13
000ce8  93205901  seteq.d r1, r[19:20], r[22:23]
000cec  73665100  stores.w r5, 12(r2)
000cf0  7364b101  stores.w r27, 8(r2)
000cf4  73624101  stores.w r20, 4(r2)
000cf8  7360c101  stores.w r28, 0(r2)
000cfc  3b9d00fe  bneq r1, zero, -188
000d00  8b206910  add.ul r[2:3], r[19:20], r[7:8]
000d04  9bb62000  slli r13, r1, 2
000d08  0b9ed510  add.s r28, r11, r13
000d0c  6f41ce00  loads.w r2, 12(r28)
000d10  170df100  and r26, r2, r15
000d14  9380a105  setlt.u r1, r3, r26
000d18  3bb00000  bneq r1, zero, 12
000d1c  9f020100  addli r5, r2, 0
000d20  db010000  j 12
000d24  ab004000  lui r1, 1024
000d28  97121100  or r5, r2, r1
000d2c  ef408e00  loads.w r1, 8(r28)
000d30  1787f000  and r14, r1, r15
000d34  1384e104  setlt.u r8, r3, r14
000d38  3b300400  bneq r8, zero, 12
000d3c  9f8d0000  addli r27, r1, 0
000d40  db010000  j 12
000d44  2b044000  lui r8, 1024
000d48  979d8000  or r27, r1, r8
000d4c  6f464e00  loads.w r12, 4(r28)
000d50  1704f600  and r8, r12, r15
000d54  93848104  setlt.u r9, r3, r8
000d58  3bb00400  bneq r9, zero, 12
000d5c  1f0a0600  addli r20, r12, 0
000d60  db010000  j 12
000d64  ab044000  lui r9, 1024
000d68  171a9600  or r20, r12, r9
000d6c  ef440e00  loads.w r9, 0(r28)
000d70  978cf400  and r25, r9, r15
000d74  138e9105  setlt.u r28, r3, r25
000d78  3b010e00  bneq r28, zero, 64
000d7c  1f8e0400  addli r28, r9, 0
000d80  930c9505  setlt.u r25, r10, r25
000d84  3be00c00  bneq r25, zero, 24
000d88  9bcc0401  srli r25, r9, 16
000d8c  9b8c1c00  andi r25, r25, 1
000d90  8b949411  add.s r9, r9, r25
000d94  8b940411  add.s r9, r9, r16
000d98  178e4400  and r28, r9, r4
000d9c  13048504  setlt.u r8, r10, r8
000da0  b7300400  beq r8, zero, 44
000da4  1304e504  setlt.u r8, r10, r14
000da8  37010400  beq r8, zero, 64
000dac  9300a505  setlt.u r1, r10, r26
000db0  bbcc00fe  bneq r1, zero, -208
000db4  5b0a0000  j 80
000db8  2b0e4000  lui r28, 1024
000dbc  179ec401  or r28, r9, r28
000dc0  930c9505  setlt.u r25, r10, r25
000dc4  379f0cfe  beq r25, zero, -60
000dc8  dbfaffff  j -44
000dcc  1b440601  srli r8, r12, 16
000dd0  1b041400  andi r8, r8, 1
000dd4  0b148610  add.s r8, r12, r8
000dd8  0b140411  add.s r8, r8, r16
000ddc  170a4400  and r20, r8, r4
000de0  1304e504  setlt.u r8, r10, r14
000de4  3b2f04fe  bneq r8, zero, -56
000de8  1bc40001  srli r8, r1, 16
000dec  1b041400  andi r8, r8, 1
000df0  8b908010  add.s r1, r1, r8
000df4  8b900011  add.s r1, r1, r16
000df8  978d4000  and r27, r1, r4
000dfc  9300a505  setlt.u r1, r10, r26
000e00  bb8b00fe  bneq r1, zero, -288
000e04  9b400101  srli r1, r2, 16
000e08  9b801000  andi r1, r1, 1
000e0c  8b101110  add.s r1, r2, r1
000e10  8b900011  add.s r1, r1, r16
000e14  97824000  and r5, r1, r4
000e18  5bd9ffff  j -312
000e1c  00200100  mfence { sm }
000e20  00370002  core_id r14
000e24  6b560fff  load.d r[13:14], -16(r30)
000e28  e340afff  loadli.w r1,  -44(r30)
000e2c  37ef00fc  beq r1, zero, -1064
000e30  9f002000  addli r1, zero, 16
000e34  3d000000  xfence
000e38  00a00300  mfence { lm, sm, gm }
000e3c  b3820028  zext_int2long r[6:7], r1
000e40  5b040000  j 32
000e44  9f702000  addli r1, zero, 23
000e48  eb528fff  load.d r[6:7], -8(r30)
000e4c  9f790000  addli r19, zero, 7
000e50  b3800028  zext_int2long r[2:3], r1
000e54  93a01204  setlt.ul r1, r[6:7], r[2:3]
000e58  a7920200  addli.d r[6:7], r[6:7], 1
000e5c  37970000  beq r1, zero, 452
000e60  733c5ffe  store.d r[6:7], -8(r30)
000e64  17b33203  sll.d r[7:8], r[6:7], r19
000e68  bbd1b800  bneq r17, r11, 116
000e6c  b3000028  zext_int2long r[2:3], zero
000e70  5b030000  j 24
000e74  93a47005  setlt.ul r9, r[2:3], r[24:25]
000e78  8b925810  add.s r5, r17, r5
000e7c  a7900000  addli.d r[2:3], r[2:3], 1
000e80  73e08200  stores.w r8, 0(r5)
000e84  378f04fe  beq r9, zero, -64
000e88  0ba46010  add.ul r[9:10], r[2:3], r[7:8]
000e8c  9b322400  slli r5, r8, 2
000e90  0b945510  add.s r8, r11, r5
000e94  ef440400  loads.w r9, 0(r8)
000e98  1786f400  and r12, r9, r15
000e9c  1384c104  setlt.u r8, r3, r12
000ea0  3b500400  bneq r8, zero, 20
000ea4  1f840400  addli r8, r9, 0
000ea8  1306c504  setlt.u r12, r10, r12
000eac  3b2f06fe  bneq r12, zero, -56
000eb0  db020000  j 20
000eb4  2b044000  lui r8, 1024
000eb8  17948400  or r8, r9, r8
000ebc  1306c504  setlt.u r12, r10, r12
000ec0  bb5e06fe  bneq r12, zero, -76
000ec4  1bc40401  srli r8, r9, 16
000ec8  1b041400  andi r8, r8, 1
000ecc  0b948410  add.s r8, r9, r8
000ed0  0b140411  add.s r8, r8, r16
000ed4  17044400  and r8, r8, r4
000ed8  dbf3ffff  j -100
000edc  33090028  zext_int2long r[19:20], zero
000ee0  db040000  j 36
000ee4  27490900  addli.d r[19:20], r[19:20], 4
000ee8  0b91d810  add.s r2, r17, r13
000eec  93205901  seteq.d r1, r[19:20], r[22:23]
000ef0  73665100  stores.w r5, 12(r2)
000ef4  7364b101  stores.w r27, 8(r2)
000ef8  73624101  stores.w r20, 4(r2)
000efc  7360c101  stores.w r28, 0(r2)
000f00  3b9d00fe  bneq r1, zero, -188
000f04  8b206910  add.ul r[2:3], r[19:20], r[7:8]
000f08  9bb62000  slli r13, r1, 2
000f0c  0b9ed510  add.s r28, r11, r13
000f10  6f41ce00  loads.w r2, 12(r28)
000f14  170df100  and r26, r2, r15
000f18  9380a105  setlt.u r1, r3, r26
000f1c  3bb00000  bneq r1, zero, 12
000f20  9f020100  addli r5, r2, 0
000f24  db010000  j 12
000f28  ab004000  lui r1, 1024
000f2c  97121100  or r5, r2, r1
000f30  ef408e00  loads.w r1, 8(r28)
000f34  1787f000  and r14, r1, r15
000f38  1384e104  setlt.u r8, r3, r14
000f3c  3b300400  bneq r8, zero, 12
000f40  9f8d0000  addli r27, r1, 0
000f44  db010000  j 12
000f48  2b044000  lui r8, 1024
000f4c  979d8000  or r27, r1, r8
000f50  6f464e00  loads.w r12, 4(r28)
000f54  1704f600  and r8, r12, r15
000f58  93848104  setlt.u r9, r3, r8
000f5c  3bb00400  bneq r9, zero, 12
000f60  1f0a0600  addli r20, r12, 0
000f64  db010000  j 12
000f68  ab044000  lui r9, 1024
000f6c  171a9600  or r20, r12, r9
000f70  ef440e00  loads.w r9, 0(r28)
000f74  978cf400  and r25, r9, r15
000f78  138e9105  setlt.u r28, r3, r25
000f7c  3b010e00  bneq r28, zero, 64
000f80  1f8e0400  addli r28, r9, 0
000f84  930c9505  setlt.u r25, r10, r25
000f88  3be00c00  bneq r25, zero, 24
000f8c  9bcc0401  srli r25, r9, 16
000f90  9b8c1c00  andi r25, r25, 1
000f94  8b949411  add.s r9, r9, r25
000f98  8b940411  add.s r9, r9, r16
000f9c  178e4400  and r28, r9, r4
000fa0  13048504  setlt.u r8, r10, r8
000fa4  b7300400  beq r8, zero, 44
000fa8  1304e504  setlt.u r8, r10, r14
000fac  37010400  beq r8, zero, 64
000fb0  9300a505  setlt.u r1, r10, r26
000fb4  bbcc00fe  bneq r1, zero, -208
000fb8  5b0a0000  j 80
000fbc  2b0e4000  lui r28, 1024
000fc0  179ec401  or r28, r9, r28
000fc4  930c9505  setlt.u r25, r10, r25
000fc8  379f0cfe  beq r25, zero, -60
000fcc  dbfaffff  j -44
000fd0  1b440601  srli r8, r12, 16
000fd4  1b041400  andi r8, r8, 1
000fd8  0b148610  add.s r8, r12, r8
000fdc  0b140411  add.s r8, r8, r16
000fe0  170a4400  and r20, r8, r4
000fe4  1304e504  setlt.u r8, r10, r14
000fe8  3b2f04fe  bneq r8, zero, -56
000fec  1bc40001  srli r8, r1, 16
000ff0  1b041400  andi r8, r8, 1
000ff4  8b908010  add.s r1, r1, r8
000ff8  8b900011  add.s r1, r1, r16
000ffc  978d4000  and r27, r1, r4
001000  9300a505  setlt.u r1, r10, r26
001004  bb8b00fe  bneq r1, zero, -288
001008  9b400101  srli r1, r2, 16
00100c  9b801000  andi r1, r1, 1
001010  8b101110  add.s r1, r2, r1
001014  8b900011  add.s r1, r1, r16
001018  97824000  and r5, r1, r4
00101c  5bd9ffff  j -312
001020  00200100  mfence { sm }
001024  00370002  core_id r14
001028  6b560fff  load.d r[13:14], -16(r30)
00102c  9f300000  addli r1, zero, 3
001030  3b7717fc  bneq r14, r1, -1572
001034  9f003000  addli r1, zero, 24
001038  3d000000  xfence
00103c  00a00300  mfence { lm, sm, gm }
001040  b3820028  zext_int2long r[6:7], r1
001044  5b040000  j 32
001048  9f703000  addli r1, zero, 31
00104c  eb528fff  load.d r[6:7], -8(r30)
001050  9f790000  addli r19, zero, 7
001054  b3800028  zext_int2long r[2:3], r1
001058  93a01204  setlt.ul r1, r[6:7], r[2:3]
00105c  a7920200  addli.d r[6:7], r[6:7], 1
001060  37970000  beq r1, zero, 452
001064  733c5ffe  store.d r[6:7], -8(r30)
001068  17b33203  sll.d r[7:8], r[6:7], r19
00106c  bbd1b800  bneq r17, r11, 116
001070  b3000028  zext_int2long r[2:3], zero
001074  5b030000  j 24
001078  93a47005  setlt.ul r9, r[2:3], r[24:25]
00107c  8b925810  add.s r5, r17, r5
001080  a7900000  addli.d r[2:3], r[2:3], 1
001084  73e08200  stores.w r8, 0(r5)
001088  378f04fe  beq r9, zero, -64
00108c  0ba46010  add.ul r[9:10], r[2:3], r[7:8]
001090  9b322400  slli r5, r8, 2
001094  0b945510  add.s r8, r11, r5
001098  ef440400  loads.w r9, 0(r8)
00109c  1786f400  and r12, r9, r15
0010a0  1384c104  setlt.u r8, r3, r12
0010a4  3b500400  bneq r8, zero, 20
0010a8  1f840400  addli r8, r9, 0
0010ac  1306c504  setlt.u r12, r10, r12
0010b0  3b2f06fe  bneq r12, zero, -56
0010b4  db020000  j 20
0010b8  2b044000  lui r8, 1024
0010bc  17948400  or r8, r9, r8
0010c0  1306c504  setlt.u r12, r10, r12
0010c4  bb5e06fe  bneq r12, zero, -76
0010c8  1bc40401  srli r8, r9, 16
0010cc  1b041400  andi r8, r8, 1
0010d0  0b948410  add.s r8, r9, r8
0010d4  0b140411  add.s r8, r8, r16
0010d8  17044400  and r8, r8, r4
0010dc  dbf3ffff  j -100
0010e0  33090028  zext_int2long r[19:20], zero
0010e4  db040000  j 36
0010e8  27490900  addli.d r[19:20], r[19:20], 4
0010ec  0b91d810  add.s r2, r17, r13
0010f0  93205901  seteq.d r1, r[19:20], r[22:23]
0010f4  73665100  stores.w r5, 12(r2)
0010f8  7364b101  stores.w r27, 8(r2)
0010fc  73624101  stores.w r20, 4(r2)
001100  7360c101  stores.w r28, 0(r2)
001104  3b9d00fe  bneq r1, zero, -188
001108  8b206910  add.ul r[2:3], r[19:20], r[7:8]
00110c  9bb62000  slli r13, r1, 2
001110  0b9ed510  add.s r28, r11, r13
001114  6f41ce00  loads.w r2, 12(r28)
001118  170df100  and r26, r2, r15
00111c  9380a105  setlt.u r1, r3, r26
001120  3bb00000  bneq r1, zero, 12
001124  9f020100  addli r5, r2, 0
001128  db010000  j 12
00112c  ab004000  lui r1, 1024
001130  97121100  or r5, r2, r1
001134  ef408e00  loads.w r1, 8(r28)
001138  1787f000  and r14, r1, r15
00113c  1384e104  setlt.u r8, r3, r14
001140  3b300400  bneq r8, zero, 12
001144  9f8d0000  addli r27, r1, 0
001148  db010000  j 12
00114c  2b044000  lui r8, 1024
001150  979d8000  or r27, r1, r8
001154  6f464e00  loads.w r12, 4(r28)
001158  1704f600  and r8, r12, r15
00115c  93848104  setlt.u r9, r3, r8
001160  3bb00400  bneq r9, zero, 12
001164  1f0a0600  addli r20, r12, 0
001168  db010000  j 12
00116c  ab044000  lui r9, 1024
001170  171a9600  or r20, r12, r9
001174  ef440e00  loads.w r9, 0(r28)
001178  978cf400  and r25, r9, r15
00117c  138e9105  setlt.u r28, r3, r25
001180  3b010e00  bneq r28, zero, 64
001184  1f8e0400  addli r28, r9, 0
001188  930c9505  setlt.u r25, r10, r25
00118c  3be00c00  bneq r25, zero, 24
001190  9bcc0401  srli r25, r9, 16
001194  9b8c1c00  andi r25, r25, 1
001198  8b949411  add.s r9, r9, r25
00119c  8b940411  add.s r9, r9, r16
0011a0  178e4400  and r28, r9, r4
0011a4  13048504  setlt.u r8, r10, r8
0011a8  b7300400  beq r8, zero, 44
0011ac  1304e504  setlt.u r8, r10, r14
0011b0  37010400  beq r8, zero, 64
0011b4  9300a505  setlt.u r1, r10, r26
0011b8  bbcc00fe  bneq r1, zero, -208
0011bc  5b0a0000  j 80
0011c0  2b0e4000  lui r28, 1024
0011c4  179ec401  or r28, r9, r28
0011c8  930c9505  setlt.u r25, r10, r25
0011cc  379f0cfe  beq r25, zero, -60
0011d0  dbfaffff  j -44
0011d4  1b440601  srli r8, r12, 16
0011d8  1b041400  andi r8, r8, 1
0011dc  0b148610  add.s r8, r12, r8
0011e0  0b140411  add.s r8, r8, r16
0011e4  170a4400  and r20, r8, r4
0011e8  1304e504  setlt.u r8, r10, r14
0011ec  3b2f04fe  bneq r8, zero, -56
0011f0  1bc40001  srli r8, r1, 16
0011f4  1b041400  andi r8, r8, 1
0011f8  8b908010  add.s r1, r1, r8
0011fc  8b900011  add.s r1, r1, r16
001200  978d4000  and r27, r1, r4
001204  9300a505  setlt.u r1, r10, r26
001208  bb8b00fe  bneq r1, zero, -288
00120c  9b400101  srli r1, r2, 16
001210  9b801000  andi r1, r1, 1
001214  8b101110  add.s r1, r2, r1
001218  8b900011  add.s r1, r1, r16
00121c  97824000  and r5, r1, r4
001220  5bd9ffff  j -312
001224  00200100  mfence { sm }
001228  00370002  core_id r14
00122c  6b560fff  load.d r[13:14], -16(r30)
001230  e300bfff  loadli.w r1,  -40(r30)
001234  b78f00fa  beq r1, zero, -2080
001238  9f004000  addli r1, zero, 32
00123c  3d000000  xfence
001240  00a00300  mfence { lm, sm, gm }
001244  b3820028  zext_int2long r[6:7], r1
001248  5b040000  j 32
00124c  9f704000  addli r1, zero, 39
001250  eb528fff  load.d r[6:7], -8(r30)
001254  9f790000  addli r19, zero, 7
001258  b3800028  zext_int2long r[2:3], r1
00125c  93a01204  setlt.ul r1, r[6:7], r[2:3]
001260  a7920200  addli.d r[6:7], r[6:7], 1
001264  37970000  beq r1, zero, 452
001268  733c5ffe  store.d r[6:7], -8(r30)
00126c  17b33203  sll.d r[7:8], r[6:7], r19
001270  bbd1b800  bneq r17, r11, 116
001274  b3000028  zext_int2long r[2:3], zero
001278  5b030000  j 24
00127c  93a47005  setlt.ul r9, r[2:3], r[24:25]
001280  8b925810  add.s r5, r17, r5
001284  a7900000  addli.d r[2:3], r[2:3], 1
001288  73e08200  stores.w r8, 0(r5)
00128c  378f04fe  beq r9, zero, -64
001290  0ba46010  add.ul r[9:10], r[2:3], r[7:8]
001294  9b322400  slli r5, r8, 2
001298  0b945510  add.s r8, r11, r5
00129c  ef440400  loads.w r9, 0(r8)
0012a0  1786f400  and r12, r9, r15
0012a4  1384c104  setlt.u r8, r3, r12
0012a8  3b500400  bneq r8, zero, 20
0012ac  1f840400  addli r8, r9, 0
0012b0  1306c504  setlt.u r12, r10, r12
0012b4  3b2f06fe  bneq r12, zero, -56
0012b8  db020000  j 20
0012bc  2b044000  lui r8, 1024
0012c0  17948400  or r8, r9, r8
0012c4  1306c504  setlt.u r12, r10, r12
0012c8  bb5e06fe  bneq r12, zero, -76
0012cc  1bc40401  srli r8, r9, 16
0012d0  1b041400  andi r8, r8, 1
0012d4  0b948410  add.s r8, r9, r8
0012d8  0b140411  add.s r8, r8, r16
0012dc  17044400  and r8, r8, r4
0012e0  dbf3ffff  j -100
0012e4  33090028  zext_int2long r[19:20], zero
0012e8  db040000  j 36
0012ec  27490900  addli.d r[19:20], r[19:20], 4
0012f0  0b91d810  add.s r2, r17, r13
0012f4  93205901  seteq.d r1, r[19:20], r[22:23]
0012f8  73665100  stores.w r5, 12(r2)
0012fc  7364b101  stores.w r27, 8(r2)
001300  73624101  stores.w r20, 4(r2)
001304  7360c101  stores.w r28, 0(r2)
001308  3b9d00fe  bneq r1, zero, -188
00130c  8b206910  add.ul r[2:3], r[19:20], r[7:8]
001310  9bb62000  slli r13, r1, 2
001314  0b9ed510  add.s r28, r11, r13
001318  6f41ce00  loads.w r2, 12(r28)
00131c  170df100  and r26, r2, r15
001320  9380a105  setlt.u r1, r3, r26
001324  3bb00000  bneq r1, zero, 12
001328  9f020100  addli r5, r2, 0
00132c  db010000  j 12
001330  ab004000  lui r1, 1024
001334  97121100  or r5, r2, r1
001338  ef408e00  loads.w r1, 8(r28)
00133c  1787f000  and r14, r1, r15
001340  1384e104  setlt.u r8, r3, r14
001344  3b300400  bneq r8, zero, 12
001348  9f8d0000  addli r27, r1, 0
00134c  db010000  j 12
001350  2b044000  lui r8, 1024
001354  979d8000  or r27, r1, r8
001358  6f464e00  loads.w r12, 4(r28)
00135c  1704f600  and r8, r12, r15
001360  93848104  setlt.u r9, r3, r8
001364  3bb00400  bneq r9, zero, 12
001368  1f0a0600  addli r20, r12, 0
00136c  db010000  j 12
001370  ab044000  lui r9, 1024
001374  171a9600  or r20, r12, r9
001378  ef440e00  loads.w r9, 0(r28)
00137c  978cf400  and r25, r9, r15
001380  138e9105  setlt.u r28, r3, r25
001384  3b010e00  bneq r28, zero, 64
001388  1f8e0400  addli r28, r9, 0
00138c  930c9505  setlt.u r25, r10, r25
001390  3be00c00  bneq r25, zero, 24
001394  9bcc0401  srli r25, r9, 16
001398  9b8c1c00  andi r25, r25, 1
00139c  8b949411  add.s r9, r9, r25
0013a0  8b940411  add.s r9, r9, r16
0013a4  178e4400  and r28, r9, r4
0013a8  13048504  setlt.u r8, r10, r8
0013ac  b7300400  beq r8, zero, 44
0013b0  1304e504  setlt.u r8, r10, r14
0013b4  37010400  beq r8, zero, 64
0013b8  9300a505  setlt.u r1, r10, r26
0013bc  bbcc00fe  bneq r1, zero, -208
0013c0  5b0a0000  j 80
0013c4  2b0e4000  lui r28, 1024
0013c8  179ec401  or r28, r9, r28
0013cc  930c9505  setlt.u r25, r10, r25
0013d0  379f0cfe  beq r25, zero, -60
0013d4  dbfaffff  j -44
0013d8  1b440601  srli r8, r12, 16
0013dc  1b041400  andi r8, r8, 1
0013e0  0b148610  add.s r8, r12, r8
0013e4  0b140411  add.s r8, r8, r16
0013e8  170a4400  and r20, r8, r4
0013ec  1304e504  setlt.u r8, r10, r14
0013f0  3b2f04fe  bneq r8, zero, -56
0013f4  1bc40001  srli r8, r1, 16
0013f8  1b041400  andi r8, r8, 1
0013fc  8b908010  add.s r1, r1, r8
001400  8b900011  add.s r1, r1, r16
001404  978d4000  and r27, r1, r4
001408  9300a505  setlt.u r1, r10, r26
00140c  bb8b00fe  bneq r1, zero, -288
001410  9b400101  srli r1, r2, 16
001414  9b801000  andi r1, r1, 1
001418  8b101110  add.s r1, r2, r1
00141c  8b900011  add.s r1, r1, r16
001420  97824000  and r5, r1, r4
001424  5bd9ffff  j -312
001428  00200100  mfence { sm }
00142c  00370002  core_id r14
001430  6b560fff  load.d r[13:14], -16(r30)
001434  9f500000  addli r1, zero, 5
001438  bb1717fa  bneq r14, r1, -2588
00143c  9f005000  addli r1, zero, 40
001440  3d000000  xfence
001444  00a00300  mfence { lm, sm, gm }
001448  b3820028  zext_int2long r[6:7], r1
00144c  5b040000  j 32
001450  9f705000  addli r1, zero, 47
001454  eb528fff  load.d r[6:7], -8(r30)
001458  9f790000  addli r19, zero, 7
00145c  b3800028  zext_int2long r[2:3], r1
001460  93a01204  setlt.ul r1, r[6:7], r[2:3]
001464  a7920200  addli.d r[6:7], r[6:7], 1
001468  37970000  beq r1, zero, 452
00146c  733c5ffe  store.d r[6:7], -8(r30)
001470  17b33203  sll.d r[7:8], r[6:7], r19
001474  bbd1b800  bneq r17, r11, 116
001478  b3000028  zext_int2long r[2:3], zero
00147c  5b030000  j 24
001480  93a47005  setlt.ul r9, r[2:3], r[24:25]
001484  8b925810  add.s r5, r17, r5
001488  a7900000  addli.d r[2:3], r[2:3], 1
00148c  73e08200  stores.w r8, 0(r5)
001490  378f04fe  beq r9, zero, -64
001494  0ba46010  add.ul r[9:10], r[2:3], r[7:8]
001498  9b322400  slli r5, r8, 2
00149c  0b945510  add.s r8, r11, r5
0014a0  ef440400  loads.w r9, 0(r8)
0014a4  1786f400  and r12, r9, r15
0014a8  1384c104  setlt.u r8, r3, r12
0014ac  3b500400  bneq r8, zero, 20
0014b0  1f840400  addli r8, r9, 0
0014b4  1306c504  setlt.u r12, r10, r12
0014b8  3b2f06fe  bneq r12, zero, -56
0014bc  db020000  j 20
0014c0  2b044000  lui r8, 1024
0014c4  17948400  or r8, r9, r8
0014c8  1306c504  setlt.u r12, r10, r12
0014cc  bb5e06fe  bneq r12, zero, -76
0014d0  1bc40401  srli r8, r9, 16
0014d4  1b041400  andi r8, r8, 1
0014d8  0b948410  add.s r8, r9, r8
0014dc  0b140411  add.s r8, r8, r16
0014e0  17044400  and r8, r8, r4
0014e4  dbf3ffff  j -100
0014e8  33090028  zext_int2long r[19:20], zero
0014ec  db040000  j 36
0014f0  27490900  addli.d r[19:20], r[19:20], 4
0014f4  0b91d810  add.s r2, r17, r13
0014f8  93205901  seteq.d r1, r[19:20], r[22:23]
0014fc  73665100  stores.w r5, 12(r2)
001500  7364b101  stores.w r27, 8(r2)
001504  73624101  stores.w r20, 4(r2)
001508  7360c101  stores.w r28, 0(r2)
00150c  3b9d00fe  bneq r1, zero, -188
001510  8b206910  add.ul r[2:3], r[19:20], r[7:8]
001514  9bb62000  slli r13, r1, 2
001518  0b9ed510  add.s r28, r11, r13
00151c  6f41ce00  loads.w r2, 12(r28)
001520  170df100  and r26, r2, r15
001524  9380a105  setlt.u r1, r3, r26
001528  3bb00000  bneq r1, zero, 12
00152c  9f020100  addli r5, r2, 0
001530  db010000  j 12
001534  ab004000  lui r1, 1024
001538  97121100  or r5, r2, r1
00153c  ef408e00  loads.w r1, 8(r28)
001540  1787f000  and r14, r1, r15
001544  1384e104  setlt.u r8, r3, r14
001548  3b300400  bneq r8, zero, 12
00154c  9f8d0000  addli r27, r1, 0
001550  db010000  j 12
001554  2b044000  lui r8, 1024
001558  979d8000  or r27, r1, r8
00155c  6f464e00  loads.w r12, 4(r28)
001560  1704f600  and r8, r12, r15
001564  93848104  setlt.u r9, r3, r8
001568  3bb00400  bneq r9, zero, 12
00156c  1f0a0600  addli r20, r12, 0
001570  db010000  j 12
001574  ab044000  lui r9, 1024
001578  171a9600  or r20, r12, r9
00157c  ef440e00  loads.w r9, 0(r28)
001580  978cf400  and r25, r9, r15
001584  138e9105  setlt.u r28, r3, r25
001588  3b010e00  bneq r28, zero, 64
00158c  1f8e0400  addli r28, r9, 0
001590  930c9505  setlt.u r25, r10, r25
001594  3be00c00  bneq r25, zero, 24
001598  9bcc0401  srli r25, r9, 16
00159c  9b8c1c00  andi r25, r25, 1
0015a0  8b949411  add.s r9, r9, r25
0015a4  8b940411  add.s r9, r9, r16
0015a8  178e4400  and r28, r9, r4
0015ac  13048504  setlt.u r8, r10, r8
0015b0  b7300400  beq r8, zero, 44
0015b4  1304e504  setlt.u r8, r10, r14
0015b8  37010400  beq r8, zero, 64
0015bc  9300a505  setlt.u r1, r10, r26
0015c0  bbcc00fe  bneq r1, zero, -208
0015c4  5b0a0000  j 80
0015c8  2b0e4000  lui r28, 1024
0015cc  179ec401  or r28, r9, r28
0015d0  930c9505  setlt.u r25, r10, r25
0015d4  379f0cfe  beq r25, zero, -60
0015d8  dbfaffff  j -44
0015dc  1b440601  srli r8, r12, 16
0015e0  1b041400  andi r8, r8, 1
0015e4  0b148610  add.s r8, r12, r8
0015e8  0b140411  add.s r8, r8, r16
0015ec  170a4400  and r20, r8, r4
0015f0  1304e504  setlt.u r8, r10, r14
0015f4  3b2f04fe  bneq r8, zero, -56
0015f8  1bc40001  srli r8, r1, 16
0015fc  1b041400  andi r8, r8, 1
001600  8b908010  add.s r1, r1, r8
001604  8b900011  add.s r1, r1, r16
001608  978d4000  and r27, r1, r4
00160c  9300a505  setlt.u r1, r10, r26
001610  bb8b00fe  bneq r1, zero, -288
001614  9b400101  srli r1, r2, 16
001618  9b801000  andi r1, r1, 1
00161c  8b101110  add.s r1, r2, r1
001620  8b900011  add.s r1, r1, r16
001624  97824000  and r5, r1, r4
001628  5bd9ffff  j -312
00162c  00200100  mfence { sm }
001630  00370002  core_id r14
001634  6b560fff  load.d r[13:14], -16(r30)
001638  9f600000  addli r1, zero, 6
00163c  bb2f17f8  bneq r14, r1, -3096
001640  9f006000  addli r1, zero, 48
001644  3d000000  xfence
001648  00a00300  mfence { lm, sm, gm }
00164c  b3820028  zext_int2long r[6:7], r1
001650  5b040000  j 32
001654  9f706000  addli r1, zero, 55
001658  eb528fff  load.d r[6:7], -8(r30)
00165c  9f790000  addli r19, zero, 7
001660  b3800028  zext_int2long r[2:3], r1
001664  93a01204  setlt.ul r1, r[6:7], r[2:3]
001668  a7920200  addli.d r[6:7], r[6:7], 1
00166c  37970000  beq r1, zero, 452
001670  733c5ffe  store.d r[6:7], -8(r30)
001674  17b33203  sll.d r[7:8], r[6:7], r19
001678  bbd1b800  bneq r17, r11, 116
00167c  b3000028  zext_int2long r[2:3], zero
001680  5b030000  j 24
001684  93a47005  setlt.ul r9, r[2:3], r[24:25]
001688  8b925810  add.s r5, r17, r5
00168c  a7900000  addli.d r[2:3], r[2:3], 1
001690  73e08200  stores.w r8, 0(r5)
001694  378f04fe  beq r9, zero, -64
001698  0ba46010  add.ul r[9:10], r[2:3], r[7:8]
00169c  9b322400  slli r5, r8, 2
0016a0  0b945510  add.s r8, r11, r5
0016a4  ef440400  loads.w r9, 0(r8)
0016a8  1786f400  and r12, r9, r15
0016ac  1384c104  setlt.u r8, r3, r12
0016b0  3b500400  bneq r8, zero, 20
0016b4  1f840400  addli r8, r9, 0
0016b8  1306c504  setlt.u r12, r10, r12
0016bc  3b2f06fe  bneq r12, zero, -56
0016c0  db020000  j 20
0016c4  2b044000  lui r8, 1024
0016c8  17948400  or r8, r9, r8
0016cc  1306c504  setlt.u r12, r10, r12
0016d0  bb5e06fe  bneq r12, zero, -76
0016d4  1bc40401  srli r8, r9, 16
0016d8  1b041400  andi r8, r8, 1
0016dc  0b948410  add.s r8, r9, r8
0016e0  0b140411  add.s r8, r8, r16
0016e4  17044400  and r8, r8, r4
0016e8  dbf3ffff  j -100
0016ec  33090028  zext_int2long r[19:20], zero
0016f0  db040000  j 36
0016f4  27490900  addli.d r[19:20], r[19:20], 4
0016f8  0b91d810  add.s r2, r17, r13
0016fc  93205901  seteq.d r1, r[19:20], r[22:23]
001700  73665100  stores.w r5, 12(r2)
001704  7364b101  stores.w r27, 8(r2)
001708  73624101  stores.w r20, 4(r2)
00170c  7360c101  stores.w r28, 0(r2)
001710  3b9d00fe  bneq r1, zero, -188
001714  8b206910  add.ul r[2:3], r[19:20], r[7:8]
001718  9bb62000  slli r13, r1, 2
00171c  0b9ed510  add.s r28, r11, r13
001720  6f41ce00  loads.w r2, 12(r28)
001724  170df100  and r26, r2, r15
001728  9380a105  setlt.u r1, r3, r26
00172c  3bb00000  bneq r1, zero, 12
001730  9f020100  addli r5, r2, 0
001734  db010000  j 12
001738  ab004000  lui r1, 1024
00173c  97121100  or r5, r2, r1
001740  ef408e00  loads.w r1, 8(r28)
001744  1787f000  and r14, r1, r15
001748  1384e104  setlt.u r8, r3, r14
00174c  3b300400  bneq r8, zero, 12
001750  9f8d0000  addli r27, r1, 0
001754  db010000  j 12
001758  2b044000  lui r8, 1024
00175c  979d8000  or r27, r1, r8
001760  6f464e00  loads.w r12, 4(r28)
001764  1704f600  and r8, r12, r15
001768  93848104  setlt.u r9, r3, r8
00176c  3bb00400  bneq r9, zero, 12
001770  1f0a0600  addli r20, r12, 0
001774  db010000  j 12
001778  ab044000  lui r9, 1024
00177c  171a9600  or r20, r12, r9
001780  ef440e00  loads.w r9, 0(r28)
001784  978cf400  and r25, r9, r15
001788  138e9105  setlt.u r28, r3, r25
00178c  3b010e00  bneq r28, zero, 64
001790  1f8e0400  addli r28, r9, 0
001794  930c9505  setlt.u r25, r10, r25
001798  3be00c00  bneq r25, zero, 24
00179c  9bcc0401  srli r25, r9, 16
0017a0  9b8c1c00  andi r25, r25, 1
0017a4  8b949411  add.s r9, r9, r25
0017a8  8b940411  add.s r9, r9, r16
0017ac  178e4400  and r28, r9, r4
0017b0  13048504  setlt.u r8, r10, r8
0017b4  b7300400  beq r8, zero, 44
0017b8  1304e504  setlt.u r8, r10, r14
0017bc  37010400  beq r8, zero, 64
0017c0  9300a505  setlt.u r1, r10, r26
0017c4  bbcc00fe  bneq r1, zero, -208
0017c8  5b0a0000  j 80
0017cc  2b0e4000  lui r28, 1024
0017d0  179ec401  or r28, r9, r28
0017d4  930c9505  setlt.u r25, r10, r25
0017d8  379f0cfe  beq r25, zero, -60
0017dc  dbfaffff  j -44
0017e0  1b440601  srli r8, r12, 16
0017e4  1b041400  andi r8, r8, 1
0017e8  0b148610  add.s r8, r12, r8
0017ec  0b140411  add.s r8, r8, r16
0017f0  170a4400  and r20, r8, r4
0017f4  1304e504  setlt.u r8, r10, r14
0017f8  3b2f04fe  bneq r8, zero, -56
0017fc  1bc40001  srli r8, r1, 16
001800  1b041400  andi r8, r8, 1
001804  8b908010  add.s r1, r1, r8
001808  8b900011  add.s r1, r1, r16
00180c  978d4000  and r27, r1, r4
001810  9300a505  setlt.u r1, r10, r26
001814  bb8b00fe  bneq r1, zero, -288
001818  9b400101  srli r1, r2, 16
00181c  9b801000  andi r1, r1, 1
001820  8b101110  add.s r1, r2, r1
001824  8b900011  add.s r1, r1, r16
001828  97824000  and r5, r1, r4
00182c  5bd9ffff  j -312
001830  00200100  mfence { sm }
001834  00370002  core_id r14
001838  6b560fff  load.d r[13:14], -16(r30)
00183c  e340bfff  loadli.w r1,  -36(r30)
001840  37880000  beq r1, zero, 512
001844  9f007000  addli r1, zero, 56
001848  3d000000  xfence
00184c  00a00300  mfence { lm, sm, gm }
001850  b3820028  zext_int2long r[6:7], r1
001854  5b040000  j 32
001858  9f707000  addli r1, zero, 63
00185c  eb528fff  load.d r[6:7], -8(r30)
001860  9f790000  addli r19, zero, 7
001864  b3800028  zext_int2long r[2:3], r1
001868  93a01204  setlt.ul r1, r[6:7], r[2:3]
00186c  a7920200  addli.d r[6:7], r[6:7], 1
001870  37970000  beq r1, zero, 452
001874  733c5ffe  store.d r[6:7], -8(r30)
001878  17b33203  sll.d r[7:8], r[6:7], r19
00187c  bbd1b800  bneq r17, r11, 116
001880  b3000028  zext_int2long r[2:3], zero
001884  5b030000  j 24
001888  93a47005  setlt.ul r9, r[2:3], r[24:25]
00188c  8b925810  add.s r5, r17, r5
001890  a7900000  addli.d r[2:3], r[2:3], 1
001894  73e08200  stores.w r8, 0(r5)
001898  378f04fe  beq r9, zero, -64
00189c  0ba46010  add.ul r[9:10], r[2:3], r[7:8]
0018a0  9b322400  slli r5, r8, 2
0018a4  0b945510  add.s r8, r11, r5
0018a8  ef440400  loads.w r9, 0(r8)
0018ac  1786f400  and r12, r9, r15
0018b0  1384c104  setlt.u r8, r3, r12
0018b4  3b500400  bneq r8, zero, 20
0018b8  1f840400  addli r8, r9, 0
0018bc  1306c504  setlt.u r12, r10, r12
0018c0  3b2f06fe  bneq r12, zero, -56
0018c4  db020000  j 20
0018c8  2b044000  lui r8, 1024
0018cc  17948400  or r8, r9, r8
0018d0  1306c504  setlt.u r12, r10, r12
0018d4  bb5e06fe  bneq r12, zero, -76
0018d8  1bc40401  srli r8, r9, 16
0018dc  1b041400  andi r8, r8, 1
0018e0  0b948410  add.s r8, r9, r8
0018e4  0b140411  add.s r8, r8, r16
0018e8  17044400  and r8, r8, r4
0018ec  dbf3ffff  j -100
0018f0  33090028  zext_int2long r[19:20], zero
0018f4  db040000  j 36
0018f8  27490900  addli.d r[19:20], r[19:20], 4
0018fc  0b91d810  add.s r2, r17, r13
001900  93205901  seteq.d r1, r[19:20], r[22:23]
001904  73665100  stores.w r5, 12(r2)
001908  7364b101  stores.w r27, 8(r2)
00190c  73624101  stores.w r20, 4(r2)
001910  7360c101  stores.w r28, 0(r2)
001914  3b9d00fe  bneq r1, zero, -188
001918  8b206910  add.ul r[2:3], r[19:20], r[7:8]
00191c  9bb62000  slli r13, r1, 2
001920  0b9ed510  add.s r28, r11, r13
001924  6f41ce00  loads.w r2, 12(r28)
001928  170df100  and r26, r2, r15
00192c  9380a105  setlt.u r1, r3, r26
001930  3bb00000  bneq r1, zero, 12
001934  9f020100  addli r5, r2, 0
001938  db010000  j 12
00193c  ab004000  lui r1, 1024
001940  97121100  or r5, r2, r1
001944  ef408e00  loads.w r1, 8(r28)
001948  1787f000  and r14, r1, r15
00194c  1384e104  setlt.u r8, r3, r14
001950  3b300400  bneq r8, zero, 12
001954  9f8d0000  addli r27, r1, 0
001958  db010000  j 12
00195c  2b044000  lui r8, 1024
001960  979d8000  or r27, r1, r8
001964  6f464e00  loads.w r12, 4(r28)
001968  1704f600  and r8, r12, r15
00196c  93848104  setlt.u r9, r3, r8
001970  3bb00400  bneq r9, zero, 12
001974  1f0a0600  addli r20, r12, 0
001978  db010000  j 12
00197c  ab044000  lui r9, 1024
001980  171a9600  or r20, r12, r9
001984  ef440e00  loads.w r9, 0(r28)
001988  978cf400  and r25, r9, r15
00198c  138e9105  setlt.u r28, r3, r25
001990  3b010e00  bneq r28, zero, 64
001994  1f8e0400  addli r28, r9, 0
001998  930c9505  setlt.u r25, r10, r25
00199c  3be00c00  bneq r25, zero, 24
0019a0  9bcc0401  srli r25, r9, 16
0019a4  9b8c1c00  andi r25, r25, 1
0019a8  8b949411  add.s r9, r9, r25
0019ac  8b940411  add.s r9, r9, r16
0019b0  178e4400  and r28, r9, r4
0019b4  13048504  setlt.u r8, r10, r8
0019b8  b7300400  beq r8, zero, 44
0019bc  1304e504  setlt.u r8, r10, r14
0019c0  37010400  beq r8, zero, 64
0019c4  9300a505  setlt.u r1, r10, r26
0019c8  bbcc00fe  bneq r1, zero, -208
0019cc  5b0a0000  j 80
0019d0  2b0e4000  lui r28, 1024
0019d4  179ec401  or r28, r9, r28
0019d8  930c9505  setlt.u r25, r10, r25
0019dc  379f0cfe  beq r25, zero, -60
0019e0  dbfaffff  j -44
0019e4  1b440601  srli r8, r12, 16
0019e8  1b041400  andi r8, r8, 1
0019ec  0b148610  add.s r8, r12, r8
0019f0  0b140411  add.s r8, r8, r16
0019f4  170a4400  and r20, r8, r4
0019f8  1304e504  setlt.u r8, r10, r14
0019fc  3b2f04fe  bneq r8, zero, -56
001a00  1bc40001  srli r8, r1, 16
001a04  1b041400  andi r8, r8, 1
001a08  8b908010  add.s r1, r1, r8
001a0c  8b900011  add.s r1, r1, r16
001a10  978d4000  and r27, r1, r4
001a14  9300a505  setlt.u r1, r10, r26
001a18  bb8b00fe  bneq r1, zero, -288
001a1c  9b400101  srli r1, r2, 16
001a20  9b801000  andi r1, r1, 1
001a24  8b101110  add.s r1, r2, r1
001a28  8b900011  add.s r1, r1, r16
001a2c  97824000  and r5, r1, r4
001a30  5bd9ffff  j -312
001a34  00200100  mfence { sm }
001a38  00370002  core_id r14
001a3c  6b560fff  load.d r[13:14], -16(r30)
001a40  9f70f001  addli r1, zero, 255
001a44  80a20004  csr_set csr5, r1
001a48  9f300000  addli r1, zero, 3
001a4c  00e00200  sync_core
001a50  370f17f2  beq r14, r1, -6208
001a54  e348dfff  loadli.w r17,  -20(r30)
001a58  9f0b0001  addli r23, zero, 128
001a5c  1f0c1000  addli r24, zero, 8
001a60  3b3f07f2  bneq r14, zero, -6196
001a64  e3406fff  loadli.w r1,  -76(r30)
001a68  e3438fff  loadli.w r7,  -60(r30)
001a6c  1f01000f  addli r2, zero, 1920
001a70  1f0a8000  addli r20, zero, 64
001a74  eb580f01  load.d r[18:19], 16(r30)
001a78  b3020128  zext_int2long r[6:7], r2
001a7c  9bb07000  slli r1, r1, 7
001a80  9bb36300  slli r7, r7, 6
001a84  b3800028  zext_int2long r[2:3], r1
001a88  b3930328  sext_int2long r[8:9], r7
001a8c  8ba25040  min.ul r[6:7], r[2:3], r[6:7]
001a90  0bb6c340  min.sl r[13:14], r[8:9], r[13:14]
001a94  a7820201  addli.d r[6:7], r[6:7], 128
001a98  27068600  addli.d r[13:14], r[13:14], 64
001a9c  8ba21248  max.ul r[6:7], r[6:7], r[2:3]
001aa0  8bb01218  sub.sl r[2:3], r[6:7], r[2:3]
001aa4  8b327648  max.sl r[6:7], r[13:14], r[8:9]
001aa8  33060a28  zext_int2long r[13:14], r20
001aac  8bb27218  sub.sl r[6:7], r[6:7], r[8:9]
001ab0  6b548ffc  load.d r[9:10], -56(r30)
001ab4  9f232000  addli r7, zero, 18
001ab8  8ba05041  min.ul r[2:3], r[2:3], r[22:23]
001abc  8bb2c240  min.sl r[6:7], r[6:7], r[13:14]
001ac0  6b568ffb  load.d r[13:14], -72(r30)
001ac4  97337402  sll.d r[8:9], r[9:10], r7
001ac8  9f441000  addli r9, zero, 12
001acc  8ba37810  add.ul r[8:9], r[18:19], r[8:9]
001ad0  e348dfff  loadli.w r17,  -20(r30)
001ad4  7d900400  xwait r9, 0
001ad8  ab040500  lui r9, 80
001adc  8ba3c310  add.ul r[8:9], r[8:9], r[13:14]
001ae0  1f560000  addli r12, zero, 5
001ae4  9f160000  addli r13, zero, 1
001ae8  9b940404  ori r9, r9, 64
001aec  1d000600  lock zero, r12
001af0  8b949510  add.s r9, r11, r9
001af4  9ff53000  addli r11, r1, 31
001af8  9bb01000  slli r1, r1, 1
001afc  1f010004  addli r2, zero, 512
001b00  95860600  dma_cfg r13, r13, zero, 0
001b04  15800602  dma_cfg zero, r13, zero, 1
001b08  9b80e003  andi r1, r1, 62
001b0c  15040004  dma_cfg r8, zero, zero, 2
001b10  95834407  dma_cfg r7, r9, r20, 3
001b14  9bc35500  srli r7, r11, 5
001b18  158a7b08  dma_cfg r20, r23, r7, 4
001b1c  9f030020  addli r7, zero, 4096
001b20  9503510a  dma_cfg r7, r2, r5, 5
001b24  15001010  dma_cfg zero, zero, r1, 8
001b28  35000000  dma_run zero
001b2c  1500d00a  dma_cfg zero, zero, r13, 5
001b30  9f501000  addli r1, zero, 13
001b34  15000010  dma_cfg zero, zero, zero, 8
001b38  1d100600  unlock r12
001b3c  7d800000  xsignal r1, 0
001b40  dbddfcff  j -6420
001b44  7d000000  xsignal zero, 0
001b48  bb600700  bneq r14, zero, 56
001b4c  9f200000  addli r1, zero, 2
001b50  7d100000  xwait zero, 0
001b54  7d100000  xwait zero, 0
001b58  7d100000  xwait zero, 0
001b5c  7d100000  xwait zero, 0
001b60  7d100000  xwait zero, 0
001b64  7d100000  xwait zero, 0
001b68  7d100000  xwait zero, 0
001b6c  7d100000  xwait zero, 0
001b70  1d800000  lock zero, r1
001b74  0d000020  ew_cfg zero, zero, zero, 16
001b78  1d900000  unlock r1
001b7c  7d400000  xsignal_mode_cfg zero
001b80  9f8ede00  addli sp, sp, 104
001b84  00a00300  mfence { lm, sm, gm }
001b88  00100000  exit
001b8c  00100000  exit
001b90  00100000  exit
001b94  00100000  exit
001b98  00100000  exit
001b9c  00100000  exit
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
001c94  00100000  exit
001c98  00100000  exit
001c9c  00100000  exit
001ca0  00100000  exit
001ca4  00100000  exit
001ca8  00100000  exit
001cac  00100000  exit
001cb0  00100000  exit
001cb4  00100000  exit
001cb8  00100000  exit
001cbc  00100000  exit
001cc0  00100000  exit
001cc4  00100000  exit
001cc8  00100000  exit
001ccc  00100000  exit
001cd0  00100000  exit
001cd4  00100000  exit
001cd8  00100000  exit
001cdc  00100000  exit
001ce0  00100000  exit
001ce4  00100000  exit
001ce8  00100000  exit
001cec  00100000  exit
001cf0  00100000  exit
001cf4  00100000  exit
001cf8  00100000  exit
001cfc  00100000  exit
001d00  00100000  exit
001d04  00100000  exit
001d08  00100000  exit
001d0c  00100000  exit
001d10  00100000  exit
001d14  00100000  exit
001d18  00100000  exit
001d1c  00100000  exit
001d20  00100000  exit
001d24  00100000  exit
001d28  00100000  exit
001d2c  00100000  exit
001d30  00100000  exit
001d34  00100000  exit
001d38  00100000  exit
001d3c  00100000  exit
001d40  00100000  exit
001d44  00100000  exit
001d48  00100000  exit
001d4c  00100000  exit
001d50  00100000  exit
001d54  00100000  exit
001d58  00100000  exit
001d5c  00100000  exit
001d60  00100000  exit
001d64  00100000  exit
001d68  00100000  exit
001d6c  00100000  exit
001d70  00100000  exit
001d74  00100000  exit
001d78  00100000  exit
001d7c  00100000  exit
001d80  00100000  exit
001d84  00100000  exit
001d88  00100000  exit
001d8c  00100000  exit
001d90  00100000  exit
001d94  00100000  exit
001d98  00100000  exit
001d9c  00100000  exit
001da0  00100000  exit
001da4  00100000  exit
001da8  00100000  exit
001dac  00100000  exit
001db0  00100000  exit
001db4  00100000  exit
001db8  00100000  exit
001dbc  00100000  exit
001dc0  00100000  exit
001dc4  00100000  exit
001dc8  00100000  exit
