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
0000c0  1f8f3e00  addli r30, sp, 24
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600100  beq r2, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b0f0000  j 120
0000e0  9f210000  addli r3, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  2bf2ffff  lui r4, 1048575
0000ec  1d800100  lock zero, r3
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b10f2ff  ori r1, r4, 4095
0000f8  1d900100  unlock r3
0000fc  9f510000  addli r3, zero, 5
000100  80a10004  csr_set csr3, r1
000104  9f301000  addli r1, zero, 11
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  9f300000  addli r1, zero, 3
00011c  7d800100  xsignal r3, 0
000120  7d800100  xsignal r3, 0
000124  7d800100  xsignal r3, 0
000128  9f111000  addli r3, zero, 9
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  9f700000  addli r1, zero, 7
00013c  7d800100  xsignal r3, 0
000140  7d800100  xsignal r3, 0
000144  7d800100  xsignal r3, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  e3003f00  loadli.w r1,  24(r30)
000158  e3413f00  loadli.w r3,  28(r30)
00015c  80d20002  load_param_i r5, 1
000160  63024f00  loadli.w r4,  32(r30)
000164  8b901120  mul.s r1, r3, r1
000168  9f810200  addli r3, r5, 0
00016c  8b914050  fmac.s r3, r1, r4
000170  0b924020  mul.s r4, r1, r4
000174  9ff1f1ff  addli r3, r3, -1
000178  8b915130  div.s r3, r3, r5
00017c  80520002  load_param_i r5, 0
000180  8b905120  mul.s r1, r3, r5
000184  8b915150  fmac.s r3, r3, r5
000188  8b914140  min.s r3, r3, r4
00018c  63423f00  loadli.w r4,  28(r30)
000190  cbee1102  ble.s r3, r1, 1976
000194  9f75f01f  addli r11, zero, 4095
000198  33930128  sext_int2long r[7:8], r3
00019c  1f340000  addli r8, zero, 3
0001a0  9f040001  addli r9, zero, 128
0001a4  ab020300  lui r5, 48
0001a8  9f2a0000  addli r21, zero, 2
0001ac  1f5b0000  addli r22, zero, 5
0001b0  9f0b8000  addli r23, zero, 64
0001b4  1f4c0000  addli r24, zero, 4
0001b8  9f1c0000  addli r25, zero, 1
0001bc  1f0d0000  addli r26, zero, 0
0001c0  2b05feff  lui r10, 1048544
0001c4  733c6ffe  store.d r[7:8], -8(r30)
0001c8  33930028  sext_int2long r[7:8], r1
0001cc  7338affe  store.d r[11:12], -16(r30)
0001d0  33050028  zext_int2long r[11:12], zero
0001d4  7334affe  store.d r[11:12], -24(r30)
0001d8  db2c0000  j 356
0001dc  ab020300  lui r5, 48
0001e0  1d000c00  lock zero, r24
0001e4  958c0c00  dma_cfg r25, r25, zero, 0
0001e8  1b950204  ori r10, r5, 64
0001ec  15000e04  dma_cfg zero, r28, zero, 2
0001f0  8b90a010  add.s r1, r1, r10
0001f4  1f050002  addli r10, zero, 256
0001f8  95807d07  dma_cfg r1, r27, r23, 3
0001fc  9f001000  addli r1, zero, 8
000200  95845b09  dma_cfg r9, r23, r21, 4
000204  1585240b  dma_cfg r10, r9, r18, 5
000208  15000010  dma_cfg zero, zero, zero, 8
00020c  35000000  dma_run zero
000210  1500900b  dma_cfg zero, zero, r25, 5
000214  15000010  dma_cfg zero, zero, zero, 8
000218  1d100c00  unlock r24
00021c  1d000b00  lock zero, r22
000220  15000014  dma_cfg zero, zero, zero, 10
000224  15009015  dma_cfg zero, zero, r25, 10
000228  15005015  dma_cfg zero, zero, r21, 10
00022c  15008014  dma_cfg zero, zero, r8, 10
000230  15008015  dma_cfg zero, zero, r24, 10
000234  15006015  dma_cfg zero, zero, r22, 10
000238  1500c014  dma_cfg zero, zero, r12, 10
00023c  1500b014  dma_cfg zero, zero, r11, 10
000240  15001014  dma_cfg zero, zero, r1, 10
000244  9f101000  addli r1, zero, 9
000248  15001014  dma_cfg zero, zero, r1, 10
00024c  9f201000  addli r1, zero, 10
000250  15001014  dma_cfg zero, zero, r1, 10
000254  9f301000  addli r1, zero, 11
000258  15001014  dma_cfg zero, zero, r1, 10
00025c  9f401000  addli r1, zero, 12
000260  15001014  dma_cfg zero, zero, r1, 10
000264  9f501000  addli r1, zero, 13
000268  15001014  dma_cfg zero, zero, r1, 10
00026c  9f701000  addli r1, zero, 15
000270  15000015  dma_cfg zero, zero, r16, 10
000274  15001014  dma_cfg zero, zero, r1, 10
000278  9f002000  addli r1, zero, 16
00027c  15001014  dma_cfg zero, zero, r1, 10
000280  9f102000  addli r1, zero, 17
000284  15001014  dma_cfg zero, zero, r1, 10
000288  9f202000  addli r1, zero, 18
00028c  15001014  dma_cfg zero, zero, r1, 10
000290  9f302000  addli r1, zero, 19
000294  15001014  dma_cfg zero, zero, r1, 10
000298  9f402000  addli r1, zero, 20
00029c  15001014  dma_cfg zero, zero, r1, 10
0002a0  9f502000  addli r1, zero, 21
0002a4  15001014  dma_cfg zero, zero, r1, 10
0002a8  9f602000  addli r1, zero, 22
0002ac  15001014  dma_cfg zero, zero, r1, 10
0002b0  9f702000  addli r1, zero, 23
0002b4  15001014  dma_cfg zero, zero, r1, 10
0002b8  9f003000  addli r1, zero, 24
0002bc  15001014  dma_cfg zero, zero, r1, 10
0002c0  9f103000  addli r1, zero, 25
0002c4  15001014  dma_cfg zero, zero, r1, 10
0002c8  9f203000  addli r1, zero, 26
0002cc  15001014  dma_cfg zero, zero, r1, 10
0002d0  9f303000  addli r1, zero, 27
0002d4  15001014  dma_cfg zero, zero, r1, 10
0002d8  9f403000  addli r1, zero, 28
0002dc  15001014  dma_cfg zero, zero, r1, 10
0002e0  9f503000  addli r1, zero, 29
0002e4  15001014  dma_cfg zero, zero, r1, 10
0002e8  9f603000  addli r1, zero, 30
0002ec  15001014  dma_cfg zero, zero, r1, 10
0002f0  9f703000  addli r1, zero, 31
0002f4  15001014  dma_cfg zero, zero, r1, 10
0002f8  958c0c00  dma_cfg r25, r25, zero, 0
0002fc  950c0002  dma_cfg r25, zero, zero, 1
000300  15000004  dma_cfg zero, zero, zero, 2
000304  95017007  dma_cfg r3, zero, r23, 3
000308  95045009  dma_cfg r9, zero, r21, 4
00030c  1505200b  dma_cfg r10, zero, r18, 5
000310  15000010  dma_cfg zero, zero, zero, 8
000314  35000000  dma_run zero
000318  1500900b  dma_cfg zero, zero, r25, 5
00031c  15000010  dma_cfg zero, zero, zero, 8
000320  1d100b00  unlock r22
000324  7d800a00  xsignal r21, 0
000328  6b558fff  load.d r[11:12], -8(r30)
00032c  27130300  addli.d r[7:8], r[7:8], 1
000330  1f1d0d00  addli r26, r26, 1
000334  9330a304  setlt.sl r1, r[7:8], r[11:12]
000338  37c80002  beq r1, zero, 1552
00033c  e3004f00  loadli.w r1,  32(r30)
000340  9f012000  addli r3, zero, 16
000344  1f051000  addli r10, zero, 8
000348  8b101330  div.s r1, r6, r1
00034c  0b964030  div.s r12, r1, r4
000350  8b199630  div.s r19, r12, r9
000354  9bb03900  slli r1, r19, 3
000358  8b911118  sub.s r3, r3, r1
00035c  0b95a140  min.s r10, r3, r10
000360  8b11a638  mod.s r3, r12, r10
000364  0b9a1110  add.s r20, r3, r1
000368  9f701000  addli r1, zero, 15
00036c  9f511000  addli r3, zero, 13
000370  93804005  setlt.u r1, r1, r20
000374  b30d0a28  zext_int2long r[28:29], r20
000378  97b63d02  sll.d r[14:15], r[28:29], r3
00037c  3bb00000  bneq r1, zero, 12
000380  eb588ffe  load.d r[18:19], -24(r30)
000384  db010000  j 12
000388  eb570fff  load.d r[16:17], -16(r30)
00038c  9788f602  and.d r[18:19], r[14:15], r[16:17]
000390  8b158d38  mod.s r11, r26, r8
000394  9bb0f500  slli r1, r11, 15
000398  8b915010  add.s r3, r1, r5
00039c  37755101  beq r2, r21, 348
0003a0  9f02000f  addli r5, zero, 1920
0003a4  b3870228  zext_int2long r[16:17], r5
0003a8  9f620000  addli r5, zero, 6
0003ac  bb755100  bneq r2, r5, 380
0003b0  0bb51619  sub.sl r[11:12], r[14:15], r[18:19]
0003b4  7d100400  xwait r8, 0
0003b8  17555502  sra.d r[11:12], r[11:12], r5
0003bc  0b36f540  min.sl r[13:14], r[11:12], r[16:17]
0003c0  1f681000  addli r16, zero, 14
0003c4  0b35a618  sub.sl r[11:12], r[13:14], r[11:12]
0003c8  6b560f00  load.d r[13:14], 0(r30)
0003cc  17b70d03  sll.d r[15:16], r[28:29], r16
0003d0  1f090501  addli r18, r10, 128
0003d4  9f750000  addli r11, zero, 7
0003d8  8b2de610  add.ul r[28:29], r[13:14], r[15:16]
0003dc  1f660000  addli r12, zero, 6
0003e0  bff7aaff  blt.s r21, r26, -516
0003e4  1d000b00  lock zero, r22
0003e8  1f051000  addli r10, zero, 8
0003ec  9f121000  addli r5, zero, 9
0003f0  15000014  dma_cfg zero, zero, zero, 10
0003f4  15009015  dma_cfg zero, zero, r25, 10
0003f8  15005015  dma_cfg zero, zero, r21, 10
0003fc  15008014  dma_cfg zero, zero, r8, 10
000400  15008015  dma_cfg zero, zero, r24, 10
000404  15006015  dma_cfg zero, zero, r22, 10
000408  1500c014  dma_cfg zero, zero, r12, 10
00040c  1500b014  dma_cfg zero, zero, r11, 10
000410  1500a014  dma_cfg zero, zero, r10, 10
000414  1f551000  addli r10, zero, 13
000418  15005014  dma_cfg zero, zero, r5, 10
00041c  9f221000  addli r5, zero, 10
000420  15005014  dma_cfg zero, zero, r5, 10
000424  9f321000  addli r5, zero, 11
000428  15005014  dma_cfg zero, zero, r5, 10
00042c  9f421000  addli r5, zero, 12
000430  15005014  dma_cfg zero, zero, r5, 10
000434  9f122000  addli r5, zero, 17
000438  1500a014  dma_cfg zero, zero, r10, 10
00043c  1f751000  addli r10, zero, 15
000440  15000015  dma_cfg zero, zero, r16, 10
000444  1500a014  dma_cfg zero, zero, r10, 10
000448  1f052000  addli r10, zero, 16
00044c  1500a014  dma_cfg zero, zero, r10, 10
000450  15005014  dma_cfg zero, zero, r5, 10
000454  9f222000  addli r5, zero, 18
000458  15005014  dma_cfg zero, zero, r5, 10
00045c  9f322000  addli r5, zero, 19
000460  15005014  dma_cfg zero, zero, r5, 10
000464  9f422000  addli r5, zero, 20
000468  15005014  dma_cfg zero, zero, r5, 10
00046c  9f522000  addli r5, zero, 21
000470  15005014  dma_cfg zero, zero, r5, 10
000474  9f622000  addli r5, zero, 22
000478  15005014  dma_cfg zero, zero, r5, 10
00047c  9f722000  addli r5, zero, 23
000480  15005014  dma_cfg zero, zero, r5, 10
000484  9f023000  addli r5, zero, 24
000488  15005014  dma_cfg zero, zero, r5, 10
00048c  9f123000  addli r5, zero, 25
000490  15005014  dma_cfg zero, zero, r5, 10
000494  9f223000  addli r5, zero, 26
000498  15005014  dma_cfg zero, zero, r5, 10
00049c  9f323000  addli r5, zero, 27
0004a0  15005014  dma_cfg zero, zero, r5, 10
0004a4  9f423000  addli r5, zero, 28
0004a8  15005014  dma_cfg zero, zero, r5, 10
0004ac  9f523000  addli r5, zero, 29
0004b0  15005014  dma_cfg zero, zero, r5, 10
0004b4  9f623000  addli r5, zero, 30
0004b8  15005014  dma_cfg zero, zero, r5, 10
0004bc  9f723000  addli r5, zero, 31
0004c0  15005014  dma_cfg zero, zero, r5, 10
0004c4  9f020002  addli r5, zero, 256
0004c8  958c0c00  dma_cfg r25, r25, zero, 0
0004cc  950c0002  dma_cfg r25, zero, zero, 1
0004d0  15000004  dma_cfg zero, zero, zero, 2
0004d4  95017007  dma_cfg r3, zero, r23, 3
0004d8  95045009  dma_cfg r9, zero, r21, 4
0004dc  9502900a  dma_cfg r5, zero, r9, 5
0004e0  15000010  dma_cfg zero, zero, zero, 8
0004e4  35000000  dma_run zero
0004e8  1500900b  dma_cfg zero, zero, r25, 5
0004ec  15000010  dma_cfg zero, zero, zero, 8
0004f0  1d100b00  unlock r22
0004f4  5b9dffff  j -792
0004f8  7d900a00  xwait r21, 0
0004fc  7d100b00  xwait r22, 0
000500  1d000000  lock zero, zero
000504  810a0000  ds_cfg r21, zero, 0
000508  810b0002  ds_cfg r23, zero, 1
00050c  810b001c  ds_cfg r23, zero, 14
000510  8104001a  ds_cfg r9, zero, 13
000514  a1907103  shuffle_batch r1, r3, r23, 1
000518  1d100000  unlock zero
00051c  7d000400  xsignal r8, 0
000520  7d000c00  xsignal r24, 0
000524  dbc0ffff  j -508
000528  ab810400  lui r3, 72
00052c  1f670000  addli r14, zero, 6
000530  9f760000  addli r13, zero, 7
000534  8b913010  add.s r3, r1, r3
000538  377cd100  beq r2, r13, 796
00053c  1bb90501  slli r18, r11, 16
000540  b72a8101  beq r2, r24, 680
000544  9bb57900  slli r11, r19, 7
000548  1f770000  addli r14, zero, 7
00054c  ab020300  lui r5, 48
000550  8b15b618  sub.s r11, r12, r11
000554  0b95a530  div.s r10, r11, r10
000558  b3050528  zext_int2long r[12:13], r10
00055c  97b5d502  sll.d r[12:13], r[12:13], r13
000560  17b69503  sll.d r[13:14], r[12:13], r25
000564  bb3c9101  bneq r2, r25, 812
000568  6b558f00  load.d r[11:12], 8(r30)
00056c  7d100700  xwait r14, 0
000570  8b2dc510  add.ul r[28:29], r[11:12], r[13:14]
000574  9f750000  addli r11, zero, 7
000578  1f660000  addli r12, zero, 6
00057c  9f661000  addli r13, zero, 14
000580  3fd4aa01  blt.s r21, r26, 276
000584  1d000b00  lock zero, r22
000588  1f051000  addli r10, zero, 8
00058c  15000014  dma_cfg zero, zero, zero, 10
000590  15009015  dma_cfg zero, zero, r25, 10
000594  15005015  dma_cfg zero, zero, r21, 10
000598  15008014  dma_cfg zero, zero, r8, 10
00059c  15008015  dma_cfg zero, zero, r24, 10
0005a0  15006015  dma_cfg zero, zero, r22, 10
0005a4  1500c014  dma_cfg zero, zero, r12, 10
0005a8  1500b014  dma_cfg zero, zero, r11, 10
0005ac  1500a014  dma_cfg zero, zero, r10, 10
0005b0  1f151000  addli r10, zero, 9
0005b4  1500a014  dma_cfg zero, zero, r10, 10
0005b8  1f251000  addli r10, zero, 10
0005bc  1500a014  dma_cfg zero, zero, r10, 10
0005c0  1f351000  addli r10, zero, 11
0005c4  1500a014  dma_cfg zero, zero, r10, 10
0005c8  1f451000  addli r10, zero, 12
0005cc  1500a014  dma_cfg zero, zero, r10, 10
0005d0  1f551000  addli r10, zero, 13
0005d4  1500a014  dma_cfg zero, zero, r10, 10
0005d8  1f751000  addli r10, zero, 15
0005dc  1500d014  dma_cfg zero, zero, r13, 10
0005e0  1500a014  dma_cfg zero, zero, r10, 10
0005e4  1f052000  addli r10, zero, 16
0005e8  1500a014  dma_cfg zero, zero, r10, 10
0005ec  1f152000  addli r10, zero, 17
0005f0  1500a014  dma_cfg zero, zero, r10, 10
0005f4  1f252000  addli r10, zero, 18
0005f8  1500a014  dma_cfg zero, zero, r10, 10
0005fc  1f352000  addli r10, zero, 19
000600  1500a014  dma_cfg zero, zero, r10, 10
000604  1f452000  addli r10, zero, 20
000608  1500a014  dma_cfg zero, zero, r10, 10
00060c  1f552000  addli r10, zero, 21
000610  1500a014  dma_cfg zero, zero, r10, 10
000614  1f652000  addli r10, zero, 22
000618  1500a014  dma_cfg zero, zero, r10, 10
00061c  1f752000  addli r10, zero, 23
000620  1500a014  dma_cfg zero, zero, r10, 10
000624  1f053000  addli r10, zero, 24
000628  1500a014  dma_cfg zero, zero, r10, 10
00062c  1f153000  addli r10, zero, 25
000630  1500a014  dma_cfg zero, zero, r10, 10
000634  1f253000  addli r10, zero, 26
000638  1500a014  dma_cfg zero, zero, r10, 10
00063c  1f353000  addli r10, zero, 27
000640  1500a014  dma_cfg zero, zero, r10, 10
000644  1f453000  addli r10, zero, 28
000648  1500a014  dma_cfg zero, zero, r10, 10
00064c  1f553000  addli r10, zero, 29
000650  1500a014  dma_cfg zero, zero, r10, 10
000654  1f653000  addli r10, zero, 30
000658  1500a014  dma_cfg zero, zero, r10, 10
00065c  1f753000  addli r10, zero, 31
000660  1500a014  dma_cfg zero, zero, r10, 10
000664  1f050004  addli r10, zero, 512
000668  958c0c00  dma_cfg r25, r25, zero, 0
00066c  950c0002  dma_cfg r25, zero, zero, 1
000670  15000004  dma_cfg zero, zero, zero, 2
000674  95017007  dma_cfg r3, zero, r23, 3
000678  95048009  dma_cfg r9, zero, r24, 4
00067c  1505700b  dma_cfg r10, zero, r23, 5
000680  15000010  dma_cfg zero, zero, zero, 8
000684  35000000  dma_run zero
000688  1500900b  dma_cfg zero, zero, r25, 5
00068c  15000010  dma_cfg zero, zero, zero, 8
000690  1d100b00  unlock r22
000694  2b850400  lui r10, 72
000698  1d000c00  lock zero, r24
00069c  958c0c00  dma_cfg r25, r25, zero, 0
0006a0  1b150504  ori r10, r10, 64
0006a4  15000e04  dma_cfg zero, r28, zero, 2
0006a8  8b90a010  add.s r1, r1, r10
0006ac  1f050004  addli r10, zero, 512
0006b0  95807d07  dma_cfg r1, r27, r23, 3
0006b4  9f000020  addli r1, zero, 4096
0006b8  95848b09  dma_cfg r9, r23, r24, 4
0006bc  1585700b  dma_cfg r10, r1, r23, 5
0006c0  9f001000  addli r1, zero, 8
0006c4  15000010  dma_cfg zero, zero, zero, 8
0006c8  35000000  dma_run zero
0006cc  1500900b  dma_cfg zero, zero, r25, 5
0006d0  15000010  dma_cfg zero, zero, zero, 8
0006d4  1d100c00  unlock r24
0006d8  1d000b00  lock zero, r22
0006dc  15000014  dma_cfg zero, zero, zero, 10
0006e0  15009015  dma_cfg zero, zero, r25, 10
0006e4  15005015  dma_cfg zero, zero, r21, 10
0006e8  15008014  dma_cfg zero, zero, r8, 10
0006ec  15008015  dma_cfg zero, zero, r24, 10
0006f0  15006015  dma_cfg zero, zero, r22, 10
0006f4  1500c014  dma_cfg zero, zero, r12, 10
0006f8  1500b014  dma_cfg zero, zero, r11, 10
0006fc  15001014  dma_cfg zero, zero, r1, 10
000700  9f101000  addli r1, zero, 9
000704  15001014  dma_cfg zero, zero, r1, 10
000708  9f201000  addli r1, zero, 10
00070c  15001014  dma_cfg zero, zero, r1, 10
000710  9f301000  addli r1, zero, 11
000714  15001014  dma_cfg zero, zero, r1, 10
000718  9f401000  addli r1, zero, 12
00071c  15001014  dma_cfg zero, zero, r1, 10
000720  9f501000  addli r1, zero, 13
000724  15001014  dma_cfg zero, zero, r1, 10
000728  9f701000  addli r1, zero, 15
00072c  1500d014  dma_cfg zero, zero, r13, 10
000730  15001014  dma_cfg zero, zero, r1, 10
000734  9f002000  addli r1, zero, 16
000738  15001014  dma_cfg zero, zero, r1, 10
00073c  9f102000  addli r1, zero, 17
000740  15001014  dma_cfg zero, zero, r1, 10
000744  9f202000  addli r1, zero, 18
000748  15001014  dma_cfg zero, zero, r1, 10
00074c  9f302000  addli r1, zero, 19
000750  15001014  dma_cfg zero, zero, r1, 10
000754  9f402000  addli r1, zero, 20
000758  15001014  dma_cfg zero, zero, r1, 10
00075c  9f502000  addli r1, zero, 21
000760  15001014  dma_cfg zero, zero, r1, 10
000764  9f602000  addli r1, zero, 22
000768  15001014  dma_cfg zero, zero, r1, 10
00076c  9f702000  addli r1, zero, 23
000770  15001014  dma_cfg zero, zero, r1, 10
000774  9f003000  addli r1, zero, 24
000778  15001014  dma_cfg zero, zero, r1, 10
00077c  9f103000  addli r1, zero, 25
000780  15001014  dma_cfg zero, zero, r1, 10
000784  9f203000  addli r1, zero, 26
000788  15001014  dma_cfg zero, zero, r1, 10
00078c  9f303000  addli r1, zero, 27
000790  15001014  dma_cfg zero, zero, r1, 10
000794  9f403000  addli r1, zero, 28
000798  15001014  dma_cfg zero, zero, r1, 10
00079c  9f503000  addli r1, zero, 29
0007a0  15001014  dma_cfg zero, zero, r1, 10
0007a4  9f603000  addli r1, zero, 30
0007a8  15001014  dma_cfg zero, zero, r1, 10
0007ac  9f703000  addli r1, zero, 31
0007b0  15001014  dma_cfg zero, zero, r1, 10
0007b4  958c0c00  dma_cfg r25, r25, zero, 0
0007b8  950c0002  dma_cfg r25, zero, zero, 1
0007bc  15000004  dma_cfg zero, zero, zero, 2
0007c0  95017007  dma_cfg r3, zero, r23, 3
0007c4  95048009  dma_cfg r9, zero, r24, 4
0007c8  1505700b  dma_cfg r10, zero, r23, 5
0007cc  15000010  dma_cfg zero, zero, zero, 8
0007d0  35000000  dma_run zero
0007d4  1500900b  dma_cfg zero, zero, r25, 5
0007d8  15000010  dma_cfg zero, zero, zero, 8
0007dc  1d100b00  unlock r22
0007e0  7d000600  xsignal r12, 0
0007e4  db68ffff  j -1212
0007e8  9f011000  addli r3, zero, 8
0007ec  9f321000  addli r5, zero, 11
0007f0  7d100c00  xwait r24, 0
0007f4  1f060000  addli r12, zero, 0
0007f8  1f150000  addli r10, zero, 1
0007fc  7d900100  xwait r3, 0
000800  7d900200  xwait r5, 0
000804  9f110000  addli r3, zero, 1
000808  ab020300  lui r5, 48
00080c  9b35e600  slli r11, r12, 14
000810  1b368600  slli r12, r12, 8
000814  1d800100  lock zero, r3
000818  898b9b00  mm_cfg r23, r23, r9, 0
00081c  97951500  or r11, r11, r1
000820  17162601  or r12, r12, r18
000824  090c3c04  mm_cfg r24, r24, r3, 2
000828  2986b010  mm r12, r1, r11, 8
00082c  9b051500  andi r11, r10, 1
000830  1f160000  addli r12, zero, 1
000834  1f050000  addli r10, zero, 0
000838  1d900100  unlock r3
00083c  3bcf05fe  bneq r11, zero, -48
000840  9f101000  addli r1, zero, 9
000844  7d000b00  xsignal r22, 0
000848  7d800000  xsignal r1, 0
00084c  9f201000  addli r1, zero, 10
000850  5b1e0000  j 240
000854  9f121000  addli r5, zero, 9
000858  7d100700  xwait r14, 0
00085c  7d900200  xwait r5, 0
000860  1d000000  lock zero, zero
000864  ab020300  lui r5, 48
000868  810a0000  ds_cfg r21, zero, 0
00086c  81040002  ds_cfg r9, zero, 1
000870  810b001c  ds_cfg r23, zero, 14
000874  8104001a  ds_cfg r9, zero, 13
000878  c1807105  shuffle_coa r1, r3, r23, 2
00087c  9f001000  addli r1, zero, 8
000880  1d100000  unlock zero
000884  7d800600  xsignal r13, 0
000888  7d800000  xsignal r1, 0
00088c  db53ffff  j -1380
000890  3b6a01fc  bneq r2, zero, -1384
000894  9b307500  slli r1, r10, 7
000898  33850028  zext_int2long r[11:12], r1
00089c  9b307a00  slli r1, r20, 7
0008a0  8b21f540  min.ul r[4:5], r[11:12], r[16:17]
0008a4  b3990028  sext_int2long r[20:21], r1
0008a8  9f302000  addli r1, zero, 19
0008ac  0bb7f940  min.sl r[15:16], r[20:21], r[16:17]
0008b0  a7810101  addli.d r[4:5], r[4:5], 128
0008b4  17b81d02  sll.d r[17:18], r[28:29], r1
0008b8  eb5d0f01  load.d r[28:29], 16(r30)
0008bc  9f201000  addli r1, zero, 10
0008c0  8ba1a148  max.ul r[4:5], r[4:5], r[11:12]
0008c4  7d900000  xwait r1, 0
0008c8  1d000b00  lock zero, r22
0008cc  27070701  addli.d r[15:16], r[15:16], 128
0008d0  9b100904  ori r1, r18, 64
0008d4  0ba80d11  add.ul r[17:18], r[28:29], r[17:18]
0008d8  958c0c00  dma_cfg r25, r25, zero, 0
0008dc  8bb1a118  sub.sl r[4:5], r[4:5], r[11:12]
0008e0  33850428  zext_int2long r[11:12], r9
0008e4  15800c02  dma_cfg zero, r25, zero, 1
0008e8  0b373749  max.sl r[15:16], r[15:16], r[20:21]
0008ec  0b26c810  add.ul r[13:14], r[17:18], r[13:14]
0008f0  8ba1a140  min.ul r[4:5], r[4:5], r[11:12]
0008f4  0b373719  sub.sl r[15:16], r[15:16], r[20:21]
0008f8  95060004  dma_cfg r13, zero, zero, 2
0008fc  15867007  dma_cfg r12, r1, r23, 3
000900  9ff03100  addli r1, r3, 31
000904  9bb11100  slli r3, r3, 1
000908  0b35a740  min.sl r[11:12], r[15:16], r[11:12]
00090c  1f060020  addli r12, zero, 4096
000910  63423f00  loadli.w r4,  28(r30)
000914  9bc05000  srli r1, r1, 5
000918  958b1408  dma_cfg r23, r9, r1, 4
00091c  9b80e103  andi r1, r3, 62
000920  9f010004  addli r3, zero, 512
000924  1586a10a  dma_cfg r12, r3, r10, 5
000928  15001010  dma_cfg zero, zero, r1, 8
00092c  35000000  dma_run zero
000930  1500900b  dma_cfg zero, zero, r25, 5
000934  9f301000  addli r1, zero, 11
000938  15000010  dma_cfg zero, zero, zero, 8
00093c  1d100b00  unlock r22
000940  7d800000  xsignal r1, 0
000944  db3cffff  j -1564
000948  7d000000  xsignal zero, 0
00094c  bb600100  bneq r2, zero, 56
000950  9f200000  addli r1, zero, 2
000954  7d100000  xwait zero, 0
000958  7d100000  xwait zero, 0
00095c  7d100000  xwait zero, 0
000960  7d100000  xwait zero, 0
000964  7d100000  xwait zero, 0
000968  7d100000  xwait zero, 0
00096c  7d100000  xwait zero, 0
000970  7d100000  xwait zero, 0
000974  1d800000  lock zero, r1
000978  0d000020  ew_cfg zero, zero, zero, 16
00097c  1d900000  unlock r1
000980  7d400000  xsignal_mode_cfg zero
000984  9f8e3e00  addli sp, sp, 24
000988  00a00300  mfence { lm, sm, gm }
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
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
