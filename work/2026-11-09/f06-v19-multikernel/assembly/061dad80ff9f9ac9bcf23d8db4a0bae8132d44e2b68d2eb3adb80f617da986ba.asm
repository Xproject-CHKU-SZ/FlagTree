; SHA-256 061dad80ff9f9ac9bcf23d8db4a0bae8132d44e2b68d2eb3adb80f617da986ba
; P800 SDNN · XTDK LLVM 19 · 1162 / 1162 words decoded
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
0000b4  9f8efefe  addli sp, sp, -136
0000b8  9f100000  addli r1, zero, 1
0000bc  80390002  core_id r19
0000c0  1f8f9e00  addli r30, sp, 72
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900900  beq r19, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b1a0000  j 208
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b510f02  load.d r[3:4], 32(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f211000  addli r2, zero, 10
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  1d100000  unlock zero
00015c  7d800000  xsignal r1, 0
000160  7d900000  xwait r1, 0
000164  1d000200  lock zero, r4
000168  ab100100  lui r1, 17
00016c  0d200300  ewtable_cfg r6, 0
000170  0da00002  ewtable_cfg r1, 1
000174  abf0ffff  lui r1, 1048575
000178  1d100200  unlock r4
00017c  7d000000  xsignal zero, 0
000180  7d100000  xwait zero, 0
000184  9b90f0ff  ori r1, r1, 4095
000188  80a10004  csr_set csr3, r1
00018c  9f600000  addli r1, zero, 6
000190  00d00100  sync_group
000194  7d800200  xsignal r5, 0
000198  7d800000  xsignal r1, 0
00019c  9f002000  addli r1, zero, 16
0001a0  7d800000  xsignal r1, 0
0001a4  7d000100  xsignal r2, 0
0001a8  9f401000  addli r1, zero, 12
0001ac  1f611000  addli r2, zero, 14
0001b0  7d800000  xsignal r1, 0
0001b4  7d000100  xsignal r2, 0
0001b8  e3005f00  loadli.w r1,  40(r30)
0001bc  63415f00  loadli.w r2,  44(r30)
0001c0  00d20002  load_param_i r4, 1
0001c4  e3016f00  loadli.w r3,  48(r30)
0001c8  8b101120  mul.s r1, r2, r1
0001cc  1f010200  addli r2, r4, 0
0001d0  0b913050  fmac.s r2, r1, r3
0001d4  8b913020  mul.s r3, r1, r3
0001d8  1f71f1ff  addli r2, r2, -1
0001dc  0b114130  div.s r2, r2, r4
0001e0  00520002  load_param_i r4, 0
0001e4  8b104120  mul.s r1, r2, r4
0001e8  0b114150  fmac.s r2, r2, r4
0001ec  0b113140  min.s r2, r2, r3
0001f0  cb461106  ble.s r2, r1, 3504
0001f4  b39d0028  sext_int2long r[28:29], r1
0001f8  abf0ff7f  lui r1, 524287
0001fc  33110128  sext_int2long r[3:4], r2
000200  9f530000  addli r7, zero, 5
000204  2b09807f  lui r18, 522240
000208  9f240000  addli r9, zero, 2
00020c  9f1c0000  addli r25, zero, 1
000210  9b97f0ff  ori r15, r1, 4095
000214  ab700000  lui r1, 7
000218  73302ffc  store.d r[3:4], -64(r30)
00021c  1f010010  addli r2, zero, 2048
000220  9b90f0ff  ori r1, r1, 4095
000224  b30b0128  zext_int2long r[24:25], r2
000228  670e1ffe  storeli.w r1, -32(r30)
00022c  abf07f7f  lui r1, 522239
000230  733c7ffd  store.d r[24:25], -40(r30)
000234  9b90f0ff  ori r1, r1, 4095
000238  e74f1ffe  storeli.w r1, -4(r30)
00023c  ab800200  lui r1, 40
000240  9b902084  ori r1, r1, 2114
000244  e74b1ffe  storeli.w r1, -68(r30)
000248  b3000028  zext_int2long r[2:3], zero
00024c  73341ffc  store.d r[2:3], -56(r30)
000250  5b090000  j 72
000254  9f201000  addli r1, zero, 10
000258  00200100  mfence { sm }
00025c  9f530000  addli r7, zero, 5
000260  9f240000  addli r9, zero, 2
000264  9f1c0000  addli r25, zero, 1
000268  7d800000  xsignal r1, 0
00026c  9f401000  addli r1, zero, 12
000270  7d800000  xsignal r1, 0
000274  9f601000  addli r1, zero, 14
000278  7d800000  xsignal r1, 0
00027c  9f701000  addli r1, zero, 15
000280  7d800000  xsignal r1, 0
000284  eb5b8ffd  load.d r[24:25], -40(r30)
000288  eb500ffc  load.d r[2:3], -64(r30)
00028c  a79d0d00  addli.d r[28:29], r[28:29], 1
000290  93b01d04  setlt.sl r1, r[28:29], r[2:3]
000294  37b40006  beq r1, zero, 3340
000298  e3006f00  loadli.w r1,  48(r30)
00029c  63415f00  loadli.w r2,  44(r30)
0002a0  9f211000  addli r3, zero, 10
0002a4  7338bffd  store.d r[28:29], -48(r30)
0002a8  8b901d30  div.s r1, r27, r1
0002ac  8b902030  div.s r1, r1, r2
0002b0  b3900028  sext_int2long r[2:3], r1
0002b4  17b83002  sll.d r[17:18], r[2:3], r3
0002b8  9f600000  addli r1, zero, 6
0002bc  73340fff  store.d r[17:18], -24(r30)
0002c0  b7d91900  beq r19, r1, 628
0002c4  1f040000  addli r8, zero, 0
0002c8  bbe99901  bneq r19, r25, 632
0002cc  1f4a0000  addli r20, zero, 4
0002d0  6b520f00  load.d r[5:6], 0(r30)
0002d4  9f300000  addli r1, zero, 3
0002d8  17319803  sll.d r[3:4], r[17:18], r25
0002dc  9f750000  addli r11, zero, 7
0002e0  1f061000  addli r12, zero, 8
0002e4  1f151000  addli r10, zero, 9
0002e8  1f331000  addli r6, zero, 11
0002ec  9f561000  addli r13, zero, 13
0002f0  1f681000  addli r16, zero, 14
0002f4  1f072000  addli r14, zero, 16
0002f8  9f1d2000  addli r27, zero, 17
0002fc  1f2e2000  addli r28, zero, 18
000300  9f382000  addli r17, zero, 19
000304  1f0b8000  addli r22, zero, 64
000308  9f094000  addli r19, zero, 32
00030c  1f0d0001  addli r26, zero, 128
000310  9f0a0020  addli r21, zero, 4096
000314  7d100a00  xwait r20, 0
000318  1d800300  lock zero, r7
00031c  15000014  dma_cfg zero, zero, zero, 10
000320  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000324  9f620000  addli r5, zero, 6
000328  1f221000  addli r4, zero, 10
00032c  15009015  dma_cfg zero, zero, r25, 10
000330  15009014  dma_cfg zero, zero, r9, 10
000334  15001014  dma_cfg zero, zero, r1, 10
000338  9f401000  addli r1, zero, 12
00033c  15004015  dma_cfg zero, zero, r20, 10
000340  15007014  dma_cfg zero, zero, r7, 10
000344  15005014  dma_cfg zero, zero, r5, 10
000348  1500b014  dma_cfg zero, zero, r11, 10
00034c  1500c014  dma_cfg zero, zero, r12, 10
000350  1500a014  dma_cfg zero, zero, r10, 10
000354  15004014  dma_cfg zero, zero, r4, 10
000358  15006014  dma_cfg zero, zero, r6, 10
00035c  15001014  dma_cfg zero, zero, r1, 10
000360  9f701000  addli r1, zero, 15
000364  1500d014  dma_cfg zero, zero, r13, 10
000368  15000015  dma_cfg zero, zero, r16, 10
00036c  15001014  dma_cfg zero, zero, r1, 10
000370  1500e014  dma_cfg zero, zero, r14, 10
000374  1500b015  dma_cfg zero, zero, r27, 10
000378  1500c015  dma_cfg zero, zero, r28, 10
00037c  15001015  dma_cfg zero, zero, r17, 10
000380  9f482000  addli r17, zero, 20
000384  15001015  dma_cfg zero, zero, r17, 10
000388  9f582000  addli r17, zero, 21
00038c  15001015  dma_cfg zero, zero, r17, 10
000390  9f682000  addli r17, zero, 22
000394  15001015  dma_cfg zero, zero, r17, 10
000398  9f782000  addli r17, zero, 23
00039c  15001015  dma_cfg zero, zero, r17, 10
0003a0  9f083000  addli r17, zero, 24
0003a4  15001015  dma_cfg zero, zero, r17, 10
0003a8  9f183000  addli r17, zero, 25
0003ac  15001015  dma_cfg zero, zero, r17, 10
0003b0  9f283000  addli r17, zero, 26
0003b4  15001015  dma_cfg zero, zero, r17, 10
0003b8  9f383000  addli r17, zero, 27
0003bc  15001015  dma_cfg zero, zero, r17, 10
0003c0  9f483000  addli r17, zero, 28
0003c4  15001015  dma_cfg zero, zero, r17, 10
0003c8  9f583000  addli r17, zero, 29
0003cc  15001015  dma_cfg zero, zero, r17, 10
0003d0  9f683000  addli r17, zero, 30
0003d4  15001015  dma_cfg zero, zero, r17, 10
0003d8  9f783000  addli r17, zero, 31
0003dc  15001015  dma_cfg zero, zero, r17, 10
0003e0  958c0c00  dma_cfg r25, r25, zero, 0
0003e4  950c0002  dma_cfg r25, zero, zero, 1
0003e8  15000004  dma_cfg zero, zero, zero, 2
0003ec  15006007  dma_cfg zero, zero, r22, 3
0003f0  150d3009  dma_cfg r26, zero, r19, 4
0003f4  950a900b  dma_cfg r21, zero, r25, 5
0003f8  15000010  dma_cfg zero, zero, zero, 8
0003fc  35000000  dma_run zero
000400  1500900b  dma_cfg zero, zero, r25, 5
000404  15000010  dma_cfg zero, zero, zero, 8
000408  1d900300  unlock r7
00040c  1d000a00  lock zero, r20
000410  958c0c00  dma_cfg r25, r25, zero, 0
000414  15800104  dma_cfg zero, r3, zero, 2
000418  150b6107  dma_cfg r22, r2, r22, 3
00041c  1f010010  addli r2, zero, 2048
000420  9f411000  addli r3, zero, 12
000424  150d3b09  dma_cfg r26, r22, r19, 4
000428  950a910b  dma_cfg r21, r2, r25, 5
00042c  1f310000  addli r2, zero, 3
000430  15000010  dma_cfg zero, zero, zero, 8
000434  35000000  dma_run zero
000438  1500900b  dma_cfg zero, zero, r25, 5
00043c  15000010  dma_cfg zero, zero, zero, 8
000440  1d100a00  unlock r20
000444  1d800300  lock zero, r7
000448  15000014  dma_cfg zero, zero, zero, 10
00044c  15009015  dma_cfg zero, zero, r25, 10
000450  15009014  dma_cfg zero, zero, r9, 10
000454  15002014  dma_cfg zero, zero, r2, 10
000458  1f014000  addli r2, zero, 32
00045c  15004015  dma_cfg zero, zero, r20, 10
000460  15007014  dma_cfg zero, zero, r7, 10
000464  15005014  dma_cfg zero, zero, r5, 10
000468  1500b014  dma_cfg zero, zero, r11, 10
00046c  1500c014  dma_cfg zero, zero, r12, 10
000470  1500a014  dma_cfg zero, zero, r10, 10
000474  15004014  dma_cfg zero, zero, r4, 10
000478  15006014  dma_cfg zero, zero, r6, 10
00047c  15003014  dma_cfg zero, zero, r3, 10
000480  1500d014  dma_cfg zero, zero, r13, 10
000484  15000015  dma_cfg zero, zero, r16, 10
000488  15001014  dma_cfg zero, zero, r1, 10
00048c  9f302000  addli r1, zero, 19
000490  1500e014  dma_cfg zero, zero, r14, 10
000494  1500b015  dma_cfg zero, zero, r27, 10
000498  1500c015  dma_cfg zero, zero, r28, 10
00049c  15001014  dma_cfg zero, zero, r1, 10
0004a0  9f402000  addli r1, zero, 20
0004a4  15001014  dma_cfg zero, zero, r1, 10
0004a8  9f502000  addli r1, zero, 21
0004ac  15001014  dma_cfg zero, zero, r1, 10
0004b0  9f602000  addli r1, zero, 22
0004b4  15001014  dma_cfg zero, zero, r1, 10
0004b8  9f702000  addli r1, zero, 23
0004bc  15001014  dma_cfg zero, zero, r1, 10
0004c0  9f003000  addli r1, zero, 24
0004c4  15001014  dma_cfg zero, zero, r1, 10
0004c8  9f103000  addli r1, zero, 25
0004cc  15001014  dma_cfg zero, zero, r1, 10
0004d0  9f203000  addli r1, zero, 26
0004d4  15001014  dma_cfg zero, zero, r1, 10
0004d8  9f303000  addli r1, zero, 27
0004dc  15001014  dma_cfg zero, zero, r1, 10
0004e0  9f403000  addli r1, zero, 28
0004e4  15001014  dma_cfg zero, zero, r1, 10
0004e8  9f503000  addli r1, zero, 29
0004ec  15001014  dma_cfg zero, zero, r1, 10
0004f0  9f603000  addli r1, zero, 30
0004f4  15001014  dma_cfg zero, zero, r1, 10
0004f8  15001015  dma_cfg zero, zero, r17, 10
0004fc  6b588ffe  load.d r[17:18], -24(r30)
000500  958c0c00  dma_cfg r25, r25, zero, 0
000504  950c0002  dma_cfg r25, zero, zero, 1
000508  15000004  dma_cfg zero, zero, zero, 2
00050c  15006007  dma_cfg zero, zero, r22, 3
000510  150d2008  dma_cfg r26, zero, r2, 4
000514  950a900b  dma_cfg r21, zero, r25, 5
000518  15000010  dma_cfg zero, zero, zero, 8
00051c  35000000  dma_run zero
000520  1500900b  dma_cfg zero, zero, r25, 5
000524  15000010  dma_cfg zero, zero, zero, 8
000528  1d900300  unlock r7
00052c  7d800400  xsignal r9, 0
000530  5b020000  j 16
000534  1f140000  addli r8, zero, 1
000538  1f610000  addli r2, zero, 6
00053c  7d100100  xwait r2, 0
000540  0f117871  mod.sl r[3:4], r[17:18], r[24:25]
000544  1f321000  addli r4, zero, 11
000548  2771f117  addli.d r[3:4], r[3:4], 3071
00054c  97494102  srl.d r[20:21], r[3:4], r4
000550  eb508ffc  load.d r[2:3], -56(r30)
000554  9f010008  addli r3, zero, 1024
000558  b3810128  zext_int2long r[4:5], r3
00055c  13a11900  seteq.d r2, r[20:21], r[2:3]
000560  73383ffe  store.d r[4:5], -16(r30)
000564  3b4c0100  bneq r2, zero, 784
000568  33850c28  zext_int2long r[11:12], r25
00056c  b3060028  zext_int2long r[14:15], zero
000570  db020000  j 20
000574  13213505  setlt.ul r2, r[11:12], r[20:21]
000578  8ba6da10  add.ul r[14:15], r[22:23], r[14:15]
00057c  33850428  zext_int2long r[11:12], r9
000580  b75b0100  beq r2, zero, 756
000584  0ba10611  add.ul r[3:4], r[14:15], r[17:18]
000588  6b530fff  load.d r[7:8], -16(r30)
00058c  0f117171  mod.sl r[3:4], r[3:4], r[24:25]
000590  0b33d318  sub.sl r[7:8], r[7:8], r[14:15]
000594  0bb22b18  sub.sl r[5:6], r[24:25], r[3:4]
000598  8b2a4340  min.ul r[22:23], r[7:8], r[5:6]
00059c  376f04fe  beq r8, zero, -40
0005a0  1f590000  addli r18, zero, 5
0005a4  97329103  sll.d r[6:7], r[3:4], r25
0005a8  eb508f00  load.d r[2:3], 8(r30)
0005ac  1bb22600  slli r4, r13, 2
0005b0  9f4b0000  addli r23, zero, 4
0005b4  1f680000  addli r16, zero, 6
0005b8  9f0d1000  addli r27, zero, 8
0005bc  9f381000  addli r17, zero, 11
0005c0  1f4c1000  addli r24, zero, 12
0005c4  1f5e1000  addli r28, zero, 13
0005c8  1f6d1000  addli r26, zero, 14
0005cc  1f060400  addli r12, r8, 0
0005d0  1f040001  addli r8, zero, 128
0005d4  9bb31a00  slli r7, r21, 1
0005d8  1d000900  lock zero, r18
0005dc  9f010220  addli r3, r4, 4096
0005e0  15000014  dma_cfg zero, zero, zero, 10
0005e4  0ba25010  add.ul r[5:6], r[2:3], r[6:7]
0005e8  9f300000  addli r1, zero, 3
0005ec  1f010020  addli r2, zero, 4096
0005f0  1f034000  addli r6, zero, 32
0005f4  15009015  dma_cfg zero, zero, r25, 10
0005f8  9f0c2000  addli r25, zero, 16
0005fc  15009014  dma_cfg zero, zero, r9, 10
000600  9f140000  addli r9, zero, 1
000604  15001014  dma_cfg zero, zero, r1, 10
000608  9f700000  addli r1, zero, 7
00060c  15007015  dma_cfg zero, zero, r23, 10
000610  15002015  dma_cfg zero, zero, r18, 10
000614  15000015  dma_cfg zero, zero, r16, 10
000618  15001014  dma_cfg zero, zero, r1, 10
00061c  9f101000  addli r1, zero, 9
000620  1500b015  dma_cfg zero, zero, r27, 10
000624  15001014  dma_cfg zero, zero, r1, 10
000628  9f201000  addli r1, zero, 10
00062c  15001014  dma_cfg zero, zero, r1, 10
000630  9f701000  addli r1, zero, 15
000634  15001015  dma_cfg zero, zero, r17, 10
000638  15008015  dma_cfg zero, zero, r24, 10
00063c  1500c015  dma_cfg zero, zero, r28, 10
000640  1500a015  dma_cfg zero, zero, r26, 10
000644  15001014  dma_cfg zero, zero, r1, 10
000648  9f102000  addli r1, zero, 17
00064c  15009015  dma_cfg zero, zero, r25, 10
000650  15001014  dma_cfg zero, zero, r1, 10
000654  9f202000  addli r1, zero, 18
000658  15001014  dma_cfg zero, zero, r1, 10
00065c  9f302000  addli r1, zero, 19
000660  15001014  dma_cfg zero, zero, r1, 10
000664  9f402000  addli r1, zero, 20
000668  15001014  dma_cfg zero, zero, r1, 10
00066c  9f502000  addli r1, zero, 21
000670  15001014  dma_cfg zero, zero, r1, 10
000674  9f602000  addli r1, zero, 22
000678  15001014  dma_cfg zero, zero, r1, 10
00067c  9f702000  addli r1, zero, 23
000680  15001014  dma_cfg zero, zero, r1, 10
000684  9f003000  addli r1, zero, 24
000688  15001014  dma_cfg zero, zero, r1, 10
00068c  9f103000  addli r1, zero, 25
000690  15001014  dma_cfg zero, zero, r1, 10
000694  9f203000  addli r1, zero, 26
000698  15001014  dma_cfg zero, zero, r1, 10
00069c  9f303000  addli r1, zero, 27
0006a0  15001014  dma_cfg zero, zero, r1, 10
0006a4  9f403000  addli r1, zero, 28
0006a8  15001014  dma_cfg zero, zero, r1, 10
0006ac  9f503000  addli r1, zero, 29
0006b0  15001014  dma_cfg zero, zero, r1, 10
0006b4  9f603000  addli r1, zero, 30
0006b8  15001014  dma_cfg zero, zero, r1, 10
0006bc  9f703000  addli r1, zero, 31
0006c0  15001014  dma_cfg zero, zero, r1, 10
0006c4  9f008000  addli r1, zero, 64
0006c8  95840400  dma_cfg r9, r9, zero, 0
0006cc  95040002  dma_cfg r9, zero, zero, 1
0006d0  15000004  dma_cfg zero, zero, zero, 2
0006d4  15011006  dma_cfg r2, zero, r1, 3
0006d8  15046008  dma_cfg r8, zero, r6, 4
0006dc  1501900a  dma_cfg r2, zero, r9, 5
0006e0  0b918138  mod.s r2, r3, r8
0006e4  15000010  dma_cfg zero, zero, zero, 8
0006e8  35000000  dma_run zero
0006ec  1500900a  dma_cfg zero, zero, r9, 5
0006f0  15000010  dma_cfg zero, zero, zero, 8
0006f4  1d100900  unlock r18
0006f8  1d800b00  lock zero, r23
0006fc  95840400  dma_cfg r9, r9, zero, 0
000700  1b431100  srli r6, r2, 1
000704  15800204  dma_cfg zero, r5, zero, 2
000708  0b912118  sub.s r2, r3, r2
00070c  0b936118  sub.s r6, r3, r6
000710  9f210000  addli r3, zero, 2
000714  1f038300  addli r6, r6, 64
000718  15031206  dma_cfg r6, r4, r1, 3
00071c  2bf3ff7f  lui r6, 524287
000720  1bb22a00  slli r4, r21, 2
000724  9ff23a00  addli r5, r21, 31
000728  1b1303f8  ori r6, r6, 3968
00072c  9bc25200  srli r5, r5, 5
000730  17036200  and r6, r4, r6
000734  1b82e303  andi r4, r7, 62
000738  15845008  dma_cfg r8, r1, r5, 4
00073c  17134300  or r6, r6, r4
000740  1583930a  dma_cfg r6, r7, r9, 5
000744  15004010  dma_cfg zero, zero, r4, 8
000748  35000000  dma_run zero
00074c  1500900a  dma_cfg zero, zero, r9, 5
000750  15000010  dma_cfg zero, zero, zero, 8
000754  1d900b00  unlock r23
000758  1d000900  lock zero, r18
00075c  15000014  dma_cfg zero, zero, zero, 10
000760  15009014  dma_cfg zero, zero, r9, 10
000764  9f240000  addli r9, zero, 2
000768  15003014  dma_cfg zero, zero, r3, 10
00076c  9f310000  addli r3, zero, 3
000770  15003014  dma_cfg zero, zero, r3, 10
000774  9f710000  addli r3, zero, 7
000778  15007015  dma_cfg zero, zero, r23, 10
00077c  15002015  dma_cfg zero, zero, r18, 10
000780  15000015  dma_cfg zero, zero, r16, 10
000784  15003014  dma_cfg zero, zero, r3, 10
000788  9f111000  addli r3, zero, 9
00078c  1500b015  dma_cfg zero, zero, r27, 10
000790  15003014  dma_cfg zero, zero, r3, 10
000794  9f211000  addli r3, zero, 10
000798  15003014  dma_cfg zero, zero, r3, 10
00079c  9f711000  addli r3, zero, 15
0007a0  15001015  dma_cfg zero, zero, r17, 10
0007a4  6b588ffe  load.d r[17:18], -24(r30)
0007a8  15008015  dma_cfg zero, zero, r24, 10
0007ac  1500c015  dma_cfg zero, zero, r28, 10
0007b0  1500a015  dma_cfg zero, zero, r26, 10
0007b4  15003014  dma_cfg zero, zero, r3, 10
0007b8  9f112000  addli r3, zero, 17
0007bc  15009015  dma_cfg zero, zero, r25, 10
0007c0  9f1c0000  addli r25, zero, 1
0007c4  eb5b8ffd  load.d r[24:25], -40(r30)
0007c8  15003014  dma_cfg zero, zero, r3, 10
0007cc  9f212000  addli r3, zero, 18
0007d0  15003014  dma_cfg zero, zero, r3, 10
0007d4  9f312000  addli r3, zero, 19
0007d8  15003014  dma_cfg zero, zero, r3, 10
0007dc  9f412000  addli r3, zero, 20
0007e0  15003014  dma_cfg zero, zero, r3, 10
0007e4  9f512000  addli r3, zero, 21
0007e8  15003014  dma_cfg zero, zero, r3, 10
0007ec  9f612000  addli r3, zero, 22
0007f0  15003014  dma_cfg zero, zero, r3, 10
0007f4  9f712000  addli r3, zero, 23
0007f8  15003014  dma_cfg zero, zero, r3, 10
0007fc  9f013000  addli r3, zero, 24
000800  15003014  dma_cfg zero, zero, r3, 10
000804  9f113000  addli r3, zero, 25
000808  15003014  dma_cfg zero, zero, r3, 10
00080c  9f213000  addli r3, zero, 26
000810  15003014  dma_cfg zero, zero, r3, 10
000814  9f313000  addli r3, zero, 27
000818  15003014  dma_cfg zero, zero, r3, 10
00081c  9f413000  addli r3, zero, 28
000820  15003014  dma_cfg zero, zero, r3, 10
000824  9f513000  addli r3, zero, 29
000828  15003014  dma_cfg zero, zero, r3, 10
00082c  9f613000  addli r3, zero, 30
000830  15003014  dma_cfg zero, zero, r3, 10
000834  9f713000  addli r3, zero, 31
000838  15003014  dma_cfg zero, zero, r3, 10
00083c  958c0c00  dma_cfg r25, r25, zero, 0
000840  950c0002  dma_cfg r25, zero, zero, 1
000844  15000004  dma_cfg zero, zero, zero, 2
000848  15011006  dma_cfg r2, zero, r1, 3
00084c  15045008  dma_cfg r8, zero, r5, 4
000850  1f040600  addli r8, r12, 0
000854  1503900b  dma_cfg r6, zero, r25, 5
000858  15004010  dma_cfg zero, zero, r4, 8
00085c  35000000  dma_run zero
000860  1500900b  dma_cfg zero, zero, r25, 5
000864  15000010  dma_cfg zero, zero, zero, 8
000868  1d100900  unlock r18
00086c  2b09807f  lui r18, 522240
000870  dba0ffff  j -764
000874  9f530000  addli r7, zero, 5
000878  37200400  beq r8, zero, 8
00087c  7d800300  xsignal r7, 0
000880  9f300000  addli r1, zero, 3
000884  2b0b4000  lui r22, 1024
000888  80390002  core_id r19
00088c  37a41900  beq r19, r1, 264
000890  bb8a7902  bneq r19, r7, 1696
000894  7d900400  xwait r9, 0
000898  7d900300  xwait r7, 0
00089c  1d800400  lock zero, r9
0008a0  ab01803f  lui r3, 260096
0008a4  1f723000  addli r4, zero, 31
0008a8  1f034000  addli r6, zero, 32
0008ac  9f000020  addli r1, zero, 4096
0008b0  2bc17f41  lui r2, 268284
0008b4  9f020060  addli r5, zero, 12288
0008b8  0d000002  ew_cfg zero, zero, zero, 1
0008bc  8d910100  ewcoeff_cfg r3, r3, zero, 0
0008c0  0d000204  ew_cfg zero, r4, zero, 2
0008c4  0d030006  ew_cfg r6, zero, zero, 3
0008c8  0d036326  ew_cfg r6, r6, r6, 19
0008cc  2d001000  dsmadd zero, zero, r1, 0
0008d0  9f300000  addli r1, zero, 3
0008d4  0d000026  ew_cfg zero, zero, zero, 19
0008d8  1d900400  unlock r9
0008dc  7d800000  xsignal r1, 0
0008e0  9f600000  addli r1, zero, 6
0008e4  7d800000  xsignal r1, 0
0008e8  9f700000  addli r1, zero, 7
0008ec  7d900000  xwait r1, 0
0008f0  9f401000  addli r1, zero, 12
0008f4  7d900000  xwait r1, 0
0008f8  1d800400  lock zero, r9
0008fc  0d000002  ew_cfg zero, zero, zero, 1
000900  0d000204  ew_cfg zero, r4, zero, 2
000904  0d030006  ew_cfg r6, zero, zero, 3
000908  0d030326  ew_cfg r6, r6, zero, 19
00090c  8d040014  ew_cfg r9, zero, zero, 10
000910  e3407fff  loadli.w r1,  -68(r30)
000914  8d841c16  ew_cfg r9, r25, r1, 11
000918  9f400000  addli r1, zero, 4
00091c  0d00001a  ew_cfg zero, zero, zero, 13
000920  0d80201c  ew_cfg zero, r1, r2, 14
000924  2b410000  lui r2, 4
000928  9f101000  addli r1, zero, 9
00092c  0d00001e  ew_cfg zero, zero, zero, 15
000930  4da10200  sslut r2, r5, 0
000934  0d000014  ew_cfg zero, zero, zero, 10
000938  0d000026  ew_cfg zero, zero, zero, 19
00093c  1d900400  unlock r9
000940  7d900000  xwait r1, 0
000944  9f601000  addli r1, zero, 14
000948  7d900000  xwait r1, 0
00094c  1d800400  lock zero, r9
000950  ab500000  lui r1, 5
000954  0d000002  ew_cfg zero, zero, zero, 1
000958  0d103000  ewcoeff_cfg zero, zero, r3, 0
00095c  0d000204  ew_cfg zero, r4, zero, 2
000960  0d030006  ew_cfg r6, zero, zero, 3
000964  0d036326  ew_cfg r6, r6, r6, 19
000968  ad902200  dsmul r1, r5, r2, 0
00096c  9f001000  addli r1, zero, 8
000970  0d000026  ew_cfg zero, zero, zero, 19
000974  1d900400  unlock r9
000978  7d800000  xsignal r1, 0
00097c  9f301000  addli r1, zero, 11
000980  7d800000  xsignal r1, 0
000984  9f501000  addli r1, zero, 13
000988  7d800000  xsignal r1, 0
00098c  eb5d0ffd  load.d r[28:29], -48(r30)
000990  5b1fffff  j -1800
000994  9f300000  addli r1, zero, 3
000998  7d900000  xwait r1, 0
00099c  9f201000  addli r1, zero, 10
0009a0  7d900000  xwait r1, 0
0009a4  3d000000  xfence
0009a8  00a00300  mfence { lm, sm, gm }
0009ac  eb5c8ffc  load.d r[26:27], -56(r30)
0009b0  5b0b0000  j 88
0009b4  9fc30060  addli r7, r1, 12292
0009b8  a78c1c00  addli.d r[26:27], r[26:27], 8
0009bc  1fc21060  addli r4, r1, 12300
0009c0  1f810060  addli r2, r1, 12288
0009c4  1f832060  addli r6, r1, 12304
0009c8  73e0c301  stores.w r28, 0(r7)
0009cc  eb530fff  load.d r[8:9], -16(r30)
0009d0  73607201  stores.w r23, 0(r4)
0009d4  1f821060  addli r4, r1, 12296
0009d8  7360b101  stores.w r27, 0(r2)
0009dc  1f813060  addli r2, r1, 12312
0009e0  73600301  stores.w r16, 0(r6)
0009e4  73606201  stores.w r22, 0(r4)
0009e8  1fc23060  addli r4, r1, 12316
0009ec  9fc02060  addli r1, r1, 12308
0009f0  2b0b4000  lui r22, 1024
0009f4  73603100  stores.w r3, 0(r2)
0009f8  93a27c02  setneq.d r5, r[26:27], r[8:9]
0009fc  73609200  stores.w r9, 0(r4)
000a00  73e0a000  stores.w r10, 0(r1)
000a04  b7b80200  beq r5, zero, 556
000a08  9bb02c00  slli r1, r25, 2
000a0c  efc4c000  loads.w r9, 12(r1)
000a10  efc60000  loads.w r13, 0(r1)
000a14  6fc74000  loads.w r14, 4(r1)
000a18  6fc58000  loads.w r10, 8(r1)
000a1c  efc30001  loads.w r7, 16(r1)
000a20  efca4001  loads.w r21, 20(r1)
000a24  efc58001  loads.w r11, 24(r1)
000a28  6fc4c001  loads.w r8, 28(r1)
000a2c  1786f400  and r12, r9, r15
000a30  1301c904  setlt.u r2, r18, r12
000a34  3b300100  bneq r2, zero, 12
000a38  9f8b0400  addli r23, r9, 0
000a3c  5b010000  j 8
000a40  979b6401  or r23, r9, r22
000a44  170cf500  and r24, r10, r15
000a48  13018905  setlt.u r2, r18, r24
000a4c  3b300100  bneq r2, zero, 12
000a50  1f030500  addli r6, r10, 0
000a54  5b010000  j 8
000a58  17136501  or r6, r10, r22
000a5c  1701f700  and r2, r14, r15
000a60  93012904  setlt.u r3, r18, r2
000a64  3bb00100  bneq r3, zero, 12
000a68  1f0e0700  addli r28, r14, 0
000a6c  5b010000  j 8
000a70  171e6701  or r28, r14, r22
000a74  178af600  and r20, r13, r15
000a78  93014905  setlt.u r3, r18, r20
000a7c  3bb00100  bneq r3, zero, 12
000a80  9f820600  addli r5, r13, 0
000a84  5b010000  j 8
000a88  97926601  or r5, r13, r22
000a8c  1702f400  and r4, r8, r15
000a90  ab0d4000  lui r27, 1024
000a94  93014904  setlt.u r3, r18, r4
000a98  3bb00100  bneq r3, zero, 12
000a9c  e70e8ffe  storeli.w r8, -24(r30)
000aa0  5b020000  j 16
000aa4  ab014000  lui r3, 1024
000aa8  97113400  or r3, r8, r3
000aac  e70e3ffe  storeli.w r3, -24(r30)
000ab0  1f0b0300  addli r22, r6, 0
000ab4  1783f500  and r6, r11, r15
000ab8  ab09807f  lui r19, 522240
000abc  93016904  setlt.u r3, r18, r6
000ac0  3bb00100  bneq r3, zero, 12
000ac4  9f810500  addli r3, r11, 0
000ac8  5b010000  j 8
000acc  9791b501  or r3, r11, r27
000ad0  1789fa00  and r18, r21, r15
000ad4  674e3ffe  storeli.w r3, -28(r30)
000ad8  13882905  setlt.u r16, r19, r18
000adc  3b300800  bneq r16, zero, 12
000ae0  9f810a00  addli r3, r21, 0
000ae4  5b010000  j 8
000ae8  9791ba01  or r3, r21, r27
000aec  9788f300  and r17, r7, r15
000af0  13881905  setlt.u r16, r19, r17
000af4  3b300800  bneq r16, zero, 12
000af8  1f880300  addli r16, r7, 0
000afc  5b010000  j 8
000b00  1798b301  or r16, r7, r27
000b04  e349ffff  loadli.w r19,  -4(r30)
000b08  9f8d0200  addli r27, r5, 0
000b0c  138a4905  setlt.u r20, r19, r20
000b10  bb000a00  bneq r20, zero, 32
000b14  1bca0601  srli r20, r13, 16
000b18  e309cfff  loadli.w r19,  -32(r30)
000b1c  1b0a1a00  andi r20, r20, 1
000b20  8b964611  add.s r13, r13, r20
000b24  8b963611  add.s r13, r13, r19
000b28  ab09ffff  lui r19, 1048560
000b2c  978d3601  and r27, r13, r19
000b30  e346ffff  loadli.w r13,  -4(r30)
000b34  13812604  setlt.u r2, r13, r2
000b38  e306cfff  loadli.w r13,  -32(r30)
000b3c  3b700100  bneq r2, zero, 28
000b40  1b410701  srli r2, r14, 16
000b44  ab02ffff  lui r5, 1048560
000b48  1b011100  andi r2, r2, 1
000b4c  0b112710  add.s r2, r14, r2
000b50  0b11d110  add.s r2, r2, r13
000b54  170e5100  and r28, r2, r5
000b58  6347ffff  loadli.w r14,  -4(r30)
000b5c  13018705  setlt.u r2, r14, r24
000b60  3b700100  bneq r2, zero, 28
000b64  1b410501  srli r2, r10, 16
000b68  1b011100  andi r2, r2, 1
000b6c  0b112510  add.s r2, r10, r2
000b70  2b05ffff  lui r10, 1048560
000b74  0b11d110  add.s r2, r2, r13
000b78  170ba100  and r22, r2, r10
000b7c  1301c704  setlt.u r2, r14, r12
000b80  3b700100  bneq r2, zero, 28
000b84  1bc10401  srli r2, r9, 16
000b88  1b011100  andi r2, r2, 1
000b8c  0b912410  add.s r2, r9, r2
000b90  ab04ffff  lui r9, 1048560
000b94  0b11d110  add.s r2, r2, r13
000b98  970b9100  and r23, r2, r9
000b9c  13011705  setlt.u r2, r14, r17
000ba0  1f850100  addli r10, r3, 0
000ba4  3b700100  bneq r2, zero, 28
000ba8  1bc10301  srli r2, r7, 16
000bac  1b011100  andi r2, r2, 1
000bb0  0b912310  add.s r2, r7, r2
000bb4  ab03ffff  lui r7, 1048560
000bb8  0b11d110  add.s r2, r2, r13
000bbc  17087100  and r16, r2, r7
000bc0  13012705  setlt.u r2, r14, r18
000bc4  e304dfff  loadli.w r9,  -24(r30)
000bc8  e341cfff  loadli.w r3,  -28(r30)
000bcc  3b700100  bneq r2, zero, 28
000bd0  1bc10a01  srli r2, r21, 16
000bd4  ab03ffff  lui r7, 1048560
000bd8  1b011100  andi r2, r2, 1
000bdc  0b912a10  add.s r2, r21, r2
000be0  0b11d110  add.s r2, r2, r13
000be4  17057100  and r10, r2, r7
000be8  13016704  setlt.u r2, r14, r6
000bec  2b09807f  lui r18, 522240
000bf0  3b700100  bneq r2, zero, 28
000bf4  1bc10501  srli r2, r11, 16
000bf8  ab01ffff  lui r3, 1048560
000bfc  1b011100  andi r2, r2, 1
000c00  0b912510  add.s r2, r11, r2
000c04  0b11d110  add.s r2, r2, r13
000c08  97013100  and r3, r2, r3
000c0c  13014704  setlt.u r2, r14, r4
000c10  bb1601fe  bneq r2, zero, -604
000c14  1b410401  srli r2, r8, 16
000c18  2b02ffff  lui r4, 1048560
000c1c  1b011100  andi r2, r2, 1
000c20  0b112410  add.s r2, r8, r2
000c24  0b11d110  add.s r2, r2, r13
000c28  97044100  and r9, r2, r4
000c2c  5bb1ffff  j -632
000c30  9f400000  addli r1, zero, 4
000c34  00200100  mfence { sm }
000c38  b30c0028  zext_int2long r[26:27], zero
000c3c  80390002  core_id r19
000c40  7d800000  xsignal r1, 0
000c44  9f101000  addli r1, zero, 9
000c48  7d800000  xsignal r1, 0
000c4c  9f700000  addli r1, zero, 7
000c50  7d800000  xsignal r1, 0
000c54  9f001000  addli r1, zero, 8
000c58  7d900000  xwait r1, 0
000c5c  9f301000  addli r1, zero, 11
000c60  7d900000  xwait r1, 0
000c64  9f501000  addli r1, zero, 13
000c68  7d900000  xwait r1, 0
000c6c  9f002000  addli r1, zero, 16
000c70  7d900000  xwait r1, 0
000c74  3d000000  xfence
000c78  00a00300  mfence { lm, sm, gm }
000c7c  630acfff  loadli.w r20,  -32(r30)
000c80  eb5d0ffd  load.d r[28:29], -48(r30)
000c84  db060000  j 52
000c88  6b540fff  load.d r[9:10], -16(r30)
000c8c  a7cc0c00  addli.d r[26:27], r[26:27], 4
000c90  9fc11040  addli r3, r1, 8204
000c94  1f830040  addli r6, r1, 8192
000c98  73e05100  stores.w r5, 0(r3)
000c9c  9f811040  addli r3, r1, 8200
000ca0  9fc00040  addli r1, r1, 8196
000ca4  7360a300  stores.w r10, 0(r6)
000ca8  13a28c02  setneq.d r4, r[26:27], r[9:10]
000cac  73e07100  stores.w r7, 0(r3)
000cb0  73e02000  stores.w r2, 0(r1)
000cb4  b70602fa  beq r4, zero, -2656
000cb8  9bb02c00  slli r1, r25, 2
000cbc  ab430000  lui r7, 4
000cc0  ab560000  lui r13, 5
000cc4  1f810060  addli r2, r1, 12288
000cc8  9fc10060  addli r3, r1, 12292
000ccc  1b968600  ori r12, r13, 8
000cd0  6f440100  loads.w r8, 0(r2)
000cd4  1f811060  addli r2, r1, 12296
000cd8  6fc20100  loads.w r4, 0(r3)
000cdc  9fc11060  addli r3, r1, 12300
000ce0  6f430100  loads.w r6, 0(r2)
000ce4  0b917010  add.s r2, r1, r7
000ce8  efc20100  loads.w r5, 0(r3)
000cec  9b914300  ori r3, r7, 4
000cf0  6f450100  loads.w r10, 0(r2)
000cf4  0b913010  add.s r2, r1, r3
000cf8  9b918300  ori r3, r7, 8
000cfc  ef450100  loads.w r11, 0(r2)
000d00  0b913010  add.s r2, r1, r3
000d04  9b91c300  ori r3, r7, 12
000d08  9b93c600  ori r7, r13, 12
000d0c  8b913010  add.s r3, r1, r3
000d10  6f410100  loads.w r2, 0(r2)
000d14  efc40100  loads.w r9, 0(r3)
000d18  8b917010  add.s r3, r1, r7
000d1c  1704f400  and r8, r8, r15
000d20  efc30100  loads.w r7, 0(r3)
000d24  8b91c010  add.s r3, r1, r12
000d28  1b964600  ori r12, r13, 4
000d2c  93062401  seteq r13, r8, r18
000d30  0b96c010  add.s r12, r1, r12
000d34  1705f500  and r10, r10, r15
000d38  6f460600  loads.w r12, 0(r12)
000d3c  13070500  seteq r14, r10, zero
000d40  8b08a448  max.u r17, r8, r10
000d44  13082501  seteq r16, r10, r18
000d48  13040400  seteq r8, r8, zero
000d4c  6fc50100  loads.w r10, 0(r3)
000d50  93011905  setlt.u r3, r18, r17
000d54  9786e600  and r13, r13, r14
000d58  17040401  and r8, r8, r16
000d5c  17948600  or r8, r13, r8
000d60  97968100  or r13, r3, r8
000d64  2b04c07f  lui r8, 523264
000d68  ab01c07f  lui r3, 523264
000d6c  3bc00600  bneq r13, zero, 16
000d70  ab510000  lui r3, 5
000d74  8b913010  add.s r3, r1, r3
000d78  efc10100  loads.w r3, 0(r3)
000d7c  1702f200  and r4, r4, r15
000d80  9785f500  and r11, r11, r15
000d84  93062201  seteq r13, r4, r18
000d88  93080200  seteq r17, r4, zero
000d8c  13870500  seteq r14, r11, zero
000d90  13882501  seteq r16, r11, r18
000d94  0b02b248  max.u r4, r4, r11
000d98  13024904  setlt.u r4, r18, r4
000d9c  9785e600  and r11, r13, r14
000da0  97860801  and r13, r17, r16
000da4  9795d500  or r11, r11, r13
000da8  9715b200  or r11, r4, r11
000dac  2b02c07f  lui r4, 523264
000db0  3ba00500  bneq r11, zero, 8
000db4  1f020600  addli r4, r12, 0
000db8  1703f300  and r6, r6, r15
000dbc  1701f100  and r2, r2, r15
000dc0  93052301  seteq r11, r6, r18
000dc4  13060100  seteq r12, r2, zero
000dc8  93062101  seteq r13, r2, r18
000dcc  13070300  seteq r14, r6, zero
000dd0  0b012348  max.u r2, r6, r2
000dd4  13012904  setlt.u r2, r18, r2
000dd8  1783c500  and r6, r11, r12
000ddc  9705d700  and r11, r14, r13
000de0  1713b300  or r6, r6, r11
000de4  17116100  or r2, r2, r6
000de8  2b03c07f  lui r6, 523264
000dec  3b200100  bneq r2, zero, 8
000df0  1f030500  addli r6, r10, 0
000df4  1781f200  and r2, r5, r15
000df8  9782f400  and r5, r9, r15
000dfc  6347ffff  loadli.w r14,  -4(r30)
000e00  93042101  seteq r9, r2, r18
000e04  13060100  seteq r12, r2, zero
000e08  13850200  seteq r10, r5, zero
000e0c  93852201  seteq r11, r5, r18
000e10  0b015148  max.u r2, r2, r5
000e14  13012904  setlt.u r2, r18, r2
000e18  9782a400  and r5, r9, r10
000e1c  9704b600  and r9, r12, r11
000e20  97929200  or r5, r5, r9
000e24  17115100  or r2, r2, r5
000e28  3b200100  bneq r2, zero, 8
000e2c  1f840300  addli r8, r7, 0
000e30  9704f400  and r9, r8, r15
000e34  13019904  setlt.u r2, r18, r9
000e38  3b300100  bneq r2, zero, 12
000e3c  9f020400  addli r5, r8, 0
000e40  5b010000  j 8
000e44  97126401  or r5, r8, r22
000e48  9705f300  and r11, r6, r15
000e4c  1301b904  setlt.u r2, r18, r11
000e50  3b300100  bneq r2, zero, 12
000e54  9f030300  addli r7, r6, 0
000e58  5b010000  j 8
000e5c  97136301  or r7, r6, r22
000e60  1706f200  and r12, r4, r15
000e64  1301c904  setlt.u r2, r18, r12
000e68  3b300100  bneq r2, zero, 12
000e6c  1f010200  addli r2, r4, 0
000e70  5b010000  j 8
000e74  17116201  or r2, r4, r22
000e78  9786f100  and r13, r3, r15
000e7c  1305d904  setlt.u r10, r18, r13
000e80  3b500500  bneq r10, zero, 20
000e84  1f850100  addli r10, r3, 0
000e88  9306d704  setlt.u r13, r14, r13
000e8c  37d00600  beq r13, zero, 20
000e90  5b050000  j 40
000e94  17956101  or r10, r3, r22
000e98  9306d704  setlt.u r13, r14, r13
000e9c  3bf00600  bneq r13, zero, 28
000ea0  1bc50101  srli r10, r3, 16
000ea4  1b051500  andi r10, r10, 1
000ea8  8b91a110  add.s r3, r3, r10
000eac  2b05ffff  lui r10, 1048560
000eb0  8b914111  add.s r3, r3, r20
000eb4  1785a100  and r10, r3, r10
000eb8  9301c704  setlt.u r3, r14, r12
000ebc  37e00100  beq r3, zero, 24
000ec0  9301b704  setlt.u r3, r14, r11
000ec4  b7c00100  beq r3, zero, 48
000ec8  93019704  setlt.u r3, r14, r9
000ecc  bbf601fe  bneq r3, zero, -580
000ed0  db080000  j 68
000ed4  1b410201  srli r2, r4, 16
000ed8  ab01ffff  lui r3, 1048560
000edc  1b011100  andi r2, r2, 1
000ee0  0b112210  add.s r2, r4, r2
000ee4  0b114111  add.s r2, r2, r20
000ee8  17013100  and r2, r2, r3
000eec  9301b704  setlt.u r3, r14, r11
000ef0  3bef01fe  bneq r3, zero, -40
000ef4  9b410301  srli r3, r6, 16
000ef8  2b02ffff  lui r4, 1048560
000efc  9b811100  andi r3, r3, 1
000f00  8b113310  add.s r3, r6, r3
000f04  8b914111  add.s r3, r3, r20
000f08  97834100  and r7, r3, r4
000f0c  93019704  setlt.u r3, r14, r9
000f10  bbe501fe  bneq r3, zero, -648
000f14  9b410401  srli r3, r8, 16
000f18  2b02ffff  lui r4, 1048560
000f1c  9b811100  andi r3, r3, 1
000f20  8b113410  add.s r3, r8, r3
000f24  8b914111  add.s r3, r3, r20
000f28  97824100  and r5, r3, r4
000f2c  dbabffff  j -676
000f30  eb5d0ffd  load.d r[28:29], -48(r30)
000f34  3bdd09f8  bneq r19, zero, -3244
000f38  9f711000  addli r3, zero, 15
000f3c  97309803  sll.d r[2:3], r[17:18], r25
000f40  7d900100  xwait r3, 0
000f44  eb510f01  load.d r[4:5], 16(r30)
000f48  1d800300  lock zero, r7
000f4c  958c0c00  dma_cfg r25, r25, zero, 0
000f50  15800c02  dma_cfg zero, r25, zero, 1
000f54  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000f58  9f018000  addli r3, zero, 64
000f5c  1f028040  addli r4, zero, 8256
000f60  15010004  dma_cfg r2, zero, zero, 2
000f64  95003206  dma_cfg r1, r4, r3, 3
000f68  9f000001  addli r1, zero, 128
000f6c  1f014000  addli r2, zero, 32
000f70  95812008  dma_cfg r3, r1, r2, 4
000f74  9f000010  addli r1, zero, 2048
000f78  1f010020  addli r2, zero, 4096
000f7c  9500910b  dma_cfg r1, r2, r25, 5
000f80  9f002000  addli r1, zero, 16
000f84  15000010  dma_cfg zero, zero, zero, 8
000f88  35000000  dma_run zero
000f8c  1500900b  dma_cfg zero, zero, r25, 5
000f90  15000010  dma_cfg zero, zero, zero, 8
000f94  1d900300  unlock r7
000f98  7d800000  xsignal r1, 0
000f9c  db5dfeff  j -3348
000fa0  7d000000  xsignal zero, 0
000fa4  bbe00900  bneq r19, zero, 56
000fa8  9f200000  addli r1, zero, 2
000fac  7d100000  xwait zero, 0
000fb0  7d100000  xwait zero, 0
000fb4  7d100000  xwait zero, 0
000fb8  7d100000  xwait zero, 0
000fbc  7d100000  xwait zero, 0
000fc0  7d100000  xwait zero, 0
000fc4  7d100000  xwait zero, 0
000fc8  7d100000  xwait zero, 0
000fcc  1d800000  lock zero, r1
000fd0  0d000020  ew_cfg zero, zero, zero, 16
000fd4  1d900000  unlock r1
000fd8  7d400000  xsignal_mode_cfg zero
000fdc  9f8e9e00  addli sp, sp, 72
000fe0  00a00300  mfence { lm, sm, gm }
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
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
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
