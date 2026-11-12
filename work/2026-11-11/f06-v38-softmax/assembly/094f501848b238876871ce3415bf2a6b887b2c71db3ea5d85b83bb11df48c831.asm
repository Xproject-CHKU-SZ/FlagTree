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
000028  1b85f100  andi r10, r3, 15
00002c  9b144000  ori r9, zero, 4
000030  3fb04100  blt.s r3, r4, 12
000034  1f45f5ff  addli r10, r10, -4
000038  9b146000  ori r9, zero, 6
00003c  0b059538  mod.u r10, r10, r9
000040  1f7a1100  addli r20, r2, 15
000044  9b454a00  srli r11, r20, 4
000048  1bc64100  srli r12, r3, 4
00004c  8b86b030  div.u r13, r1, r11
000050  1f160600  addli r12, r12, 1
000054  8b00d620  mul.u r1, r12, r13
000058  8b805010  add.u r1, r1, r5
00005c  9f8e0000  addli sp, r1, 0
000060  1bba6700  slli r20, r15, 6
000064  978e4e01  and sp, sp, r20
000068  bb003000  bneq zero, r3, 32
00006c  80520202  load_param_i r5, 4
000070  00d20102  load_param_i r4, 3
000074  ab0900f0  lui r19, 983040
000078  9f494000  addli r19, zero, 36
00007c  00200300  mfence { sm, gm }
000080  ff090200  l_gm2sm r19, zero, 0(r[5:6])
000084  00200300  mfence { sm, gm }
000088  abfa0000  lui r21, 15
00008c  9b9afaff  ori r21, r21, 4095
000090  80a10a04  csr_set csr3, r21
000094  00d00100  sync_group
000098  57160000  jal 176
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  fe8007e0  vmmov mr1, r15
0000a8  fe900720  vmmovh mr1, r15
0000ac  d71b0000  jal 220
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a8eff  addli r20, sp, -64
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c4  00a00100  mfence { lm, sm }
0000c8  00d00100  sync_group
0000cc  97a01000  xor r1, r1, r1
0000d0  1f8f0e00  addli r30, sp, 0
0000d4  d71b0000  jal 220
0000d8  00400000  trap
0000dc  9f8e0eec  addli sp, sp, -2560
0000e0  ab000000  lui r1, 0
0000e4  80330002  core_id r7
0000e8  1f8f8e13  addli r30, sp, 2496
0000ec  2bf10000  lui r2, 15
0000f0  abf17fff  lui r3, 1046527
0000f4  1bb42300  slli r8, r7, 2
0000f8  9f800000  addli r1, r1, 0
0000fc  e3423f00  loadli.w r5,  28(r30)
000100  63024f00  loadli.w r4,  32(r30)
000104  1b11f1ff  ori r2, r2, 4095
000108  9b91f1ff  ori r3, r3, 4095
00010c  0b131410  add.s r6, r8, r1
000110  e3003f00  loadli.w r1,  24(r30)
000114  73680340  stores.w zero, 1040(r6)
000118  8b901220  mul.s r1, r5, r1
00011c  00a00300  mfence { lm, sm, gm }
000120  80210104  csr_set csr3, r2
000124  00d00100  sync_group
000128  73603300  stores.w r3, 0(r6)
00012c  80520002  load_param_i r5, 0
000130  00a00300  mfence { lm, sm, gm }
000134  80210104  csr_set csr3, r2
000138  00d00100  sync_group
00013c  0b924020  mul.s r4, r1, r4
000140  4b0f5206  ble.s r4, r5, 4032
000144  1bbb7300  slli r22, r7, 7
000148  9f110020  addli r3, zero, 4097
00014c  1f3a0000  addli r20, zero, 3
000150  9b101b00  ori r1, r22, 1
000154  3fa03000  blt.s r1, r3, 8
000158  1f1a0000  addli r20, zero, 1
00015c  00d10002  load_param_i r2, 1
000160  3f203b00  blt.s r22, r3, 8
000164  dbf20100  j 3988
000168  9b10fb07  ori r1, r22, 127
00016c  67046fec  storeli.w r6, -2496(r30)
000170  e74a2fee  storeli.w r2, -2132(r30)
000174  33130b28  sext_int2long r[7:8], r22
000178  1f210000  addli r2, zero, 2
00017c  670c5ff4  storeli.w r5, -1344(r30)
000180  1b1e3b00  ori r28, r22, 3
000184  674b4fee  storeli.w r4, -2124(r30)
000188  0b926119  sub.s r4, r3, r22
00018c  9b1ddb00  ori r27, r22, 13
000190  1b1d1b05  ori r26, r22, 81
000194  9b1c1b06  ori r25, r22, 97
000198  1b1c5b06  ori r24, r22, 101
00019c  e74b8ff4  storeli.w r8, -1348(r30)
0001a0  1b142b07  ori r8, r22, 114
0001a4  9b1b1b07  ori r23, r22, 113
0001a8  9b1a0b07  ori r21, r22, 112
0001ac  1b193b07  ori r18, r22, 115
0001b0  9b184b07  ori r17, r22, 116
0001b4  1b185b07  ori r16, r22, 117
0001b8  9b176b07  ori r15, r22, 118
0001bc  1b177b07  ori r14, r22, 119
0001c0  9b14db07  ori r9, r22, 125
0001c4  1b15bb07  ori r10, r22, 123
0001c8  9b15ab07  ori r11, r22, 122
0001cc  1b169b07  ori r12, r22, 121
0001d0  9b168b07  ori r13, r22, 120
0001d4  9b19fb06  ori r19, r22, 111
0001d8  670b6fef  storeli.w r22, -2128(r30)
0001dc  6e348462  vxor.s.mz vr8{mr1}, vr8, vr8
0001e0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001e4  e74f1ff2  storeli.w r1, -1540(r30)
0001e8  9b10eb07  ori r1, r22, 126
0001ec  97322302  sll.d r[6:7], r[7:8], r2
0001f0  0b120248  max.s r4, r4, zero
0001f4  1f010001  addli r2, zero, 128
0001f8  13193904  setlt.s r18, r18, r3
0001fc  93983804  setlt.s r17, r17, r3
000200  13183804  setlt.s r16, r16, r3
000204  93973704  setlt.s r15, r15, r3
000208  9b13db06  ori r7, r22, 109
00020c  13173704  setlt.s r14, r14, r3
000210  93963604  setlt.s r13, r13, r3
000214  13163604  setlt.s r12, r12, r3
000218  93953504  setlt.s r11, r11, r3
00021c  13153504  setlt.s r10, r10, r3
000220  93943404  setlt.s r9, r9, r3
000224  93993904  setlt.s r19, r19, r3
000228  e70f1ff2  storeli.w r1, -1544(r30)
00022c  9b102b00  ori r1, r22, 2
000230  73305fa0  store.d r[6:7], -1536(r30)
000234  93123e04  setlt.s r5, r28, r3
000238  0b112240  min.s r2, r4, r2
00023c  1b125b00  ori r4, r22, 5
000240  13933d04  setlt.s r6, r27, r3
000244  93933304  setlt.s r7, r7, r3
000248  93903004  setlt.s r1, r1, r3
00024c  67042ff4  storeli.w r2, -1472(r30)
000250  1b114b00  ori r2, r22, 4
000254  13123204  setlt.s r4, r4, r3
000258  13113104  setlt.s r2, r2, r3
00025c  1b393900  slli r18, r18, 3
000260  9bb84800  slli r17, r17, 4
000264  1b385800  slli r16, r16, 5
000268  9bb23200  slli r5, r5, 3
00026c  1b33d300  slli r6, r6, 13
000270  9bb3d300  slli r7, r7, 13
000274  9bb02000  slli r1, r1, 2
000278  1b325200  slli r4, r4, 5
00027c  97101a00  or r1, r20, r1
000280  1b314100  slli r2, r2, 4
000284  139a3a04  setlt.s r20, r21, r3
000288  97905000  or r1, r1, r5
00028c  9b126b00  ori r5, r22, 6
000290  93923204  setlt.s r5, r5, r3
000294  97902000  or r1, r1, r2
000298  1b117b00  ori r2, r22, 7
00029c  13113104  setlt.s r2, r2, r3
0002a0  97904000  or r1, r1, r4
0002a4  1b128b00  ori r4, r22, 8
0002a8  13123204  setlt.s r4, r4, r3
0002ac  9bb26200  slli r5, r5, 6
0002b0  97905000  or r1, r1, r5
0002b4  9b129b00  ori r5, r22, 9
0002b8  1b317100  slli r2, r2, 7
0002bc  93923204  setlt.s r5, r5, r3
0002c0  97902000  or r1, r1, r2
0002c4  1b11ab00  ori r2, r22, 10
0002c8  1b328200  slli r4, r4, 8
0002cc  13113104  setlt.s r2, r2, r3
0002d0  97904000  or r1, r1, r4
0002d4  1b12bb00  ori r4, r22, 11
0002d8  13123204  setlt.s r4, r4, r3
0002dc  9bb29200  slli r5, r5, 9
0002e0  97905000  or r1, r1, r5
0002e4  9b12cb00  ori r5, r22, 12
0002e8  1b31a100  slli r2, r2, 10
0002ec  93923204  setlt.s r5, r5, r3
0002f0  97902000  or r1, r1, r2
0002f4  1b32b200  slli r4, r4, 11
0002f8  1b11eb00  ori r2, r22, 14
0002fc  97904000  or r1, r1, r4
000300  13113104  setlt.s r2, r2, r3
000304  1bb2c200  slli r4, r5, 12
000308  9b122b01  ori r5, r22, 18
00030c  97904000  or r1, r1, r4
000310  1b12fb00  ori r4, r22, 15
000314  1b31e100  slli r2, r2, 14
000318  93923204  setlt.s r5, r5, r3
00031c  13123204  setlt.s r4, r4, r3
000320  97906000  or r1, r1, r6
000324  1b131b01  ori r6, r22, 17
000328  97902000  or r1, r1, r2
00032c  1b110b01  ori r2, r22, 16
000330  13133304  setlt.s r6, r6, r3
000334  13113104  setlt.s r2, r2, r3
000338  9bb22200  slli r5, r5, 2
00033c  1b32f200  slli r4, r4, 15
000340  97904000  or r1, r1, r4
000344  1b331300  slli r6, r6, 1
000348  1b12db01  ori r4, r22, 29
00034c  7e8000e0  vmmov mr0, r1
000350  9f005fef  addli r1, r30, -2136
000354  17112300  or r2, r6, r2
000358  1b134b01  ori r6, r22, 20
00035c  13123204  setlt.s r4, r4, r3
000360  7e0000a0  vmmov zero, mr0
000364  67800000  storeli.w zero, 0(r1)
000368  9b103b01  ori r1, r22, 19
00036c  13133304  setlt.s r6, r6, r3
000370  17115100  or r2, r2, r5
000374  9b125b01  ori r5, r22, 21
000378  17200000  xor zero, zero, zero
00037c  93903004  setlt.s r1, r1, r3
000380  93923204  setlt.s r5, r5, r3
000384  1b32d200  slli r4, r4, 13
000388  1b334300  slli r6, r6, 4
00038c  9bb03000  slli r1, r1, 3
000390  9bb25200  slli r5, r5, 5
000394  97101100  or r1, r2, r1
000398  1b116b01  ori r2, r22, 22
00039c  13113104  setlt.s r2, r2, r3
0003a0  97906000  or r1, r1, r6
0003a4  1b137b01  ori r6, r22, 23
0003a8  13133304  setlt.s r6, r6, r3
0003ac  97905000  or r1, r1, r5
0003b0  9b128b01  ori r5, r22, 24
0003b4  93923204  setlt.s r5, r5, r3
0003b8  1b316100  slli r2, r2, 6
0003bc  97902000  or r1, r1, r2
0003c0  1b119b01  ori r2, r22, 25
0003c4  1b337300  slli r6, r6, 7
0003c8  13113104  setlt.s r2, r2, r3
0003cc  97906000  or r1, r1, r6
0003d0  1b13ab01  ori r6, r22, 26
0003d4  9bb28200  slli r5, r5, 8
0003d8  13133304  setlt.s r6, r6, r3
0003dc  97905000  or r1, r1, r5
0003e0  9b12bb01  ori r5, r22, 27
0003e4  93923204  setlt.s r5, r5, r3
0003e8  1b319100  slli r2, r2, 9
0003ec  97902000  or r1, r1, r2
0003f0  1b11cb01  ori r2, r22, 28
0003f4  1b33a300  slli r6, r6, 10
0003f8  13113104  setlt.s r2, r2, r3
0003fc  97906000  or r1, r1, r6
000400  9bb2b200  slli r5, r5, 11
000404  1b13eb01  ori r6, r22, 30
000408  97905000  or r1, r1, r5
00040c  13133304  setlt.s r6, r6, r3
000410  9b122b02  ori r5, r22, 34
000414  93923204  setlt.s r5, r5, r3
000418  1b31c100  slli r2, r2, 12
00041c  97902000  or r1, r1, r2
000420  1b11fb01  ori r2, r22, 31
000424  13113104  setlt.s r2, r2, r3
000428  97904000  or r1, r1, r4
00042c  1b32e300  slli r4, r6, 14
000430  1b131b02  ori r6, r22, 33
000434  9bb22200  slli r5, r5, 2
000438  97904000  or r1, r1, r4
00043c  1b120b02  ori r4, r22, 32
000440  13133304  setlt.s r6, r6, r3
000444  13123204  setlt.s r4, r4, r3
000448  1b31f100  slli r2, r2, 15
00044c  97902000  or r1, r1, r2
000450  1b331300  slli r6, r6, 1
000454  1b11db02  ori r2, r22, 45
000458  7e8000e0  vmmov mr0, r1
00045c  9f404fef  addli r1, r30, -2140
000460  17124300  or r4, r6, r4
000464  1b134b02  ori r6, r22, 36
000468  13113104  setlt.s r2, r2, r3
00046c  7e0000a0  vmmov zero, mr0
000470  67800000  storeli.w zero, 0(r1)
000474  9b103b02  ori r1, r22, 35
000478  13133304  setlt.s r6, r6, r3
00047c  17125200  or r4, r4, r5
000480  9b125b02  ori r5, r22, 37
000484  17200000  xor zero, zero, zero
000488  93903004  setlt.s r1, r1, r3
00048c  93923204  setlt.s r5, r5, r3
000490  1b31d100  slli r2, r2, 13
000494  1b334300  slli r6, r6, 4
000498  9bb03000  slli r1, r1, 3
00049c  9bb25200  slli r5, r5, 5
0004a0  97101200  or r1, r4, r1
0004a4  1b126b02  ori r4, r22, 38
0004a8  13123204  setlt.s r4, r4, r3
0004ac  97906000  or r1, r1, r6
0004b0  1b137b02  ori r6, r22, 39
0004b4  13133304  setlt.s r6, r6, r3
0004b8  97905000  or r1, r1, r5
0004bc  9b128b02  ori r5, r22, 40
0004c0  93923204  setlt.s r5, r5, r3
0004c4  1b326200  slli r4, r4, 6
0004c8  97904000  or r1, r1, r4
0004cc  1b129b02  ori r4, r22, 41
0004d0  1b337300  slli r6, r6, 7
0004d4  13123204  setlt.s r4, r4, r3
0004d8  97906000  or r1, r1, r6
0004dc  1b13ab02  ori r6, r22, 42
0004e0  9bb28200  slli r5, r5, 8
0004e4  13133304  setlt.s r6, r6, r3
0004e8  97905000  or r1, r1, r5
0004ec  9b12bb02  ori r5, r22, 43
0004f0  93923204  setlt.s r5, r5, r3
0004f4  1b329200  slli r4, r4, 9
0004f8  97904000  or r1, r1, r4
0004fc  1b12cb02  ori r4, r22, 44
000500  1b33a300  slli r6, r6, 10
000504  13123204  setlt.s r4, r4, r3
000508  97906000  or r1, r1, r6
00050c  9bb2b200  slli r5, r5, 11
000510  1b13eb02  ori r6, r22, 46
000514  97905000  or r1, r1, r5
000518  13133304  setlt.s r6, r6, r3
00051c  9b122b03  ori r5, r22, 50
000520  93923204  setlt.s r5, r5, r3
000524  1b32c200  slli r4, r4, 12
000528  97904000  or r1, r1, r4
00052c  1b12fb02  ori r4, r22, 47
000530  13123204  setlt.s r4, r4, r3
000534  97902000  or r1, r1, r2
000538  1b31e300  slli r2, r6, 14
00053c  1b131b03  ori r6, r22, 49
000540  9bb22200  slli r5, r5, 2
000544  97902000  or r1, r1, r2
000548  1b110b03  ori r2, r22, 48
00054c  13133304  setlt.s r6, r6, r3
000550  13113104  setlt.s r2, r2, r3
000554  1b32f200  slli r4, r4, 15
000558  17924000  or r4, r1, r4
00055c  1b331300  slli r6, r6, 1
000560  9b101b04  ori r1, r22, 65
000564  7e0002e0  vmmov mr0, r4
000568  1f024fef  addli r4, r30, -2144
00056c  17112300  or r2, r6, r2
000570  1b134b03  ori r6, r22, 52
000574  93903004  setlt.s r1, r1, r3
000578  7e0000a0  vmmov zero, mr0
00057c  67000200  storeli.w zero, 0(r4)
000580  1b123b03  ori r4, r22, 51
000584  13133304  setlt.s r6, r6, r3
000588  17115100  or r2, r2, r5
00058c  9b125b03  ori r5, r22, 53
000590  17200000  xor zero, zero, zero
000594  13123204  setlt.s r4, r4, r3
000598  93923204  setlt.s r5, r5, r3
00059c  9bb01000  slli r1, r1, 1
0005a0  1b334300  slli r6, r6, 4
0005a4  1b323200  slli r4, r4, 3
0005a8  9bb25200  slli r5, r5, 5
0005ac  17114100  or r2, r2, r4
0005b0  1b126b03  ori r4, r22, 54
0005b4  13123204  setlt.s r4, r4, r3
0005b8  17116100  or r2, r2, r6
0005bc  1b137b03  ori r6, r22, 55
0005c0  13133304  setlt.s r6, r6, r3
0005c4  17115100  or r2, r2, r5
0005c8  9b128b03  ori r5, r22, 56
0005cc  93923204  setlt.s r5, r5, r3
0005d0  1b326200  slli r4, r4, 6
0005d4  17114100  or r2, r2, r4
0005d8  1b129b03  ori r4, r22, 57
0005dc  1b337300  slli r6, r6, 7
0005e0  13123204  setlt.s r4, r4, r3
0005e4  17116100  or r2, r2, r6
0005e8  1b13ab03  ori r6, r22, 58
0005ec  9bb28200  slli r5, r5, 8
0005f0  13133304  setlt.s r6, r6, r3
0005f4  17115100  or r2, r2, r5
0005f8  9b12bb03  ori r5, r22, 59
0005fc  93923204  setlt.s r5, r5, r3
000600  1b329200  slli r4, r4, 9
000604  17114100  or r2, r2, r4
000608  1b12cb03  ori r4, r22, 60
00060c  1b33a300  slli r6, r6, 10
000610  13123204  setlt.s r4, r4, r3
000614  17116100  or r2, r2, r6
000618  1b13db03  ori r6, r22, 61
00061c  9bb2b200  slli r5, r5, 11
000620  13133304  setlt.s r6, r6, r3
000624  17115100  or r2, r2, r5
000628  9b12eb03  ori r5, r22, 62
00062c  93923204  setlt.s r5, r5, r3
000630  1b32c200  slli r4, r4, 12
000634  17114100  or r2, r2, r4
000638  1b12fb03  ori r4, r22, 63
00063c  1b33d300  slli r6, r6, 13
000640  13123204  setlt.s r4, r4, r3
000644  17116100  or r2, r2, r6
000648  9bb2e200  slli r5, r5, 14
00064c  1b130b04  ori r6, r22, 64
000650  17115100  or r2, r2, r5
000654  9b122b04  ori r5, r22, 66
000658  13133304  setlt.s r6, r6, r3
00065c  93923204  setlt.s r5, r5, r3
000660  1b32f200  slli r4, r4, 15
000664  17114100  or r2, r2, r4
000668  1b124b04  ori r4, r22, 68
00066c  97906000  or r1, r1, r6
000670  13133d04  setlt.s r6, r26, r3
000674  674f2ff2  storeli.w r2, -1548(r30)
000678  1b113b04  ori r2, r22, 67
00067c  9bb22200  slli r5, r5, 2
000680  13123204  setlt.s r4, r4, r3
000684  13113104  setlt.s r2, r2, r3
000688  97905000  or r1, r1, r5
00068c  9b125b04  ori r5, r22, 69
000690  93923204  setlt.s r5, r5, r3
000694  1b324200  slli r4, r4, 4
000698  1b313100  slli r2, r2, 3
00069c  97902000  or r1, r1, r2
0006a0  1b116b04  ori r2, r22, 70
0006a4  9bb25200  slli r5, r5, 5
0006a8  13113104  setlt.s r2, r2, r3
0006ac  97904000  or r1, r1, r4
0006b0  1b127b04  ori r4, r22, 71
0006b4  13123204  setlt.s r4, r4, r3
0006b8  97905000  or r1, r1, r5
0006bc  9b128b04  ori r5, r22, 72
0006c0  93923204  setlt.s r5, r5, r3
0006c4  1b316100  slli r2, r2, 6
0006c8  97902000  or r1, r1, r2
0006cc  1b119b04  ori r2, r22, 73
0006d0  1b327200  slli r4, r4, 7
0006d4  13113104  setlt.s r2, r2, r3
0006d8  97904000  or r1, r1, r4
0006dc  1b12ab04  ori r4, r22, 74
0006e0  9bb28200  slli r5, r5, 8
0006e4  13123204  setlt.s r4, r4, r3
0006e8  97905000  or r1, r1, r5
0006ec  9b12bb04  ori r5, r22, 75
0006f0  93923204  setlt.s r5, r5, r3
0006f4  1b319100  slli r2, r2, 9
0006f8  97902000  or r1, r1, r2
0006fc  1b11cb04  ori r2, r22, 76
000700  1b32a200  slli r4, r4, 10
000704  13113104  setlt.s r2, r2, r3
000708  97904000  or r1, r1, r4
00070c  1b12db04  ori r4, r22, 77
000710  9bb2b200  slli r5, r5, 11
000714  13123204  setlt.s r4, r4, r3
000718  97905000  or r1, r1, r5
00071c  9b12eb04  ori r5, r22, 78
000720  93923204  setlt.s r5, r5, r3
000724  1b31c100  slli r2, r2, 12
000728  97902000  or r1, r1, r2
00072c  1b11fb04  ori r2, r22, 79
000730  1b32d200  slli r4, r4, 13
000734  13113104  setlt.s r2, r2, r3
000738  97904000  or r1, r1, r4
00073c  9bb2e200  slli r5, r5, 14
000740  1b120b05  ori r4, r22, 80
000744  97905000  or r1, r1, r5
000748  9b122b05  ori r5, r22, 82
00074c  13123204  setlt.s r4, r4, r3
000750  93923204  setlt.s r5, r5, r3
000754  1b31f100  slli r2, r2, 15
000758  97902000  or r1, r1, r2
00075c  1b311300  slli r2, r6, 1
000760  13933c04  setlt.s r6, r25, r3
000764  67081ff2  storeli.w r1, -1664(r30)
000768  9b103b05  ori r1, r22, 83
00076c  17114100  or r2, r2, r4
000770  1b124b05  ori r4, r22, 84
000774  9bb22200  slli r5, r5, 2
000778  93903004  setlt.s r1, r1, r3
00077c  13123204  setlt.s r4, r4, r3
000780  17115100  or r2, r2, r5
000784  9b125b05  ori r5, r22, 85
000788  93923204  setlt.s r5, r5, r3
00078c  9bb03000  slli r1, r1, 3
000790  1b324200  slli r4, r4, 4
000794  97101100  or r1, r2, r1
000798  1b116b05  ori r2, r22, 86
00079c  9bb25200  slli r5, r5, 5
0007a0  13113104  setlt.s r2, r2, r3
0007a4  97904000  or r1, r1, r4
0007a8  1b127b05  ori r4, r22, 87
0007ac  13123204  setlt.s r4, r4, r3
0007b0  97905000  or r1, r1, r5
0007b4  9b128b05  ori r5, r22, 88
0007b8  93923204  setlt.s r5, r5, r3
0007bc  1b316100  slli r2, r2, 6
0007c0  97902000  or r1, r1, r2
0007c4  1b119b05  ori r2, r22, 89
0007c8  1b327200  slli r4, r4, 7
0007cc  13113104  setlt.s r2, r2, r3
0007d0  97904000  or r1, r1, r4
0007d4  1b12ab05  ori r4, r22, 90
0007d8  9bb28200  slli r5, r5, 8
0007dc  13123204  setlt.s r4, r4, r3
0007e0  97905000  or r1, r1, r5
0007e4  9b12bb05  ori r5, r22, 91
0007e8  93923204  setlt.s r5, r5, r3
0007ec  1b319100  slli r2, r2, 9
0007f0  97902000  or r1, r1, r2
0007f4  1b11cb05  ori r2, r22, 92
0007f8  1b32a200  slli r4, r4, 10
0007fc  13113104  setlt.s r2, r2, r3
000800  97904000  or r1, r1, r4
000804  1b12db05  ori r4, r22, 93
000808  9bb2b200  slli r5, r5, 11
00080c  13123204  setlt.s r4, r4, r3
000810  97905000  or r1, r1, r5
000814  9b12eb05  ori r5, r22, 94
000818  93923204  setlt.s r5, r5, r3
00081c  1b31c100  slli r2, r2, 12
000820  97902000  or r1, r1, r2
000824  1b11fb05  ori r2, r22, 95
000828  1b32d200  slli r4, r4, 13
00082c  13113104  setlt.s r2, r2, r3
000830  97904000  or r1, r1, r4
000834  1b120b06  ori r4, r22, 96
000838  9bb2e200  slli r5, r5, 14
00083c  13123204  setlt.s r4, r4, r3
000840  97905000  or r1, r1, r5
000844  9b122b06  ori r5, r22, 98
000848  93923204  setlt.s r5, r5, r3
00084c  1b31f100  slli r2, r2, 15
000850  97902000  or r1, r1, r2
000854  1b311300  slli r2, r6, 1
000858  13133c04  setlt.s r6, r24, r3
00085c  67041ff2  storeli.w r1, -1728(r30)
000860  9b103b06  ori r1, r22, 99
000864  17114100  or r2, r2, r4
000868  1b124b06  ori r4, r22, 100
00086c  9bb22200  slli r5, r5, 2
000870  93903004  setlt.s r1, r1, r3
000874  13123204  setlt.s r4, r4, r3
000878  17115100  or r2, r2, r5
00087c  9b126b06  ori r5, r22, 102
000880  93923204  setlt.s r5, r5, r3
000884  1b335300  slli r6, r6, 5
000888  9bb03000  slli r1, r1, 3
00088c  97101100  or r1, r2, r1
000890  1b314200  slli r2, r4, 4
000894  9bb26200  slli r5, r5, 6
000898  1b12eb06  ori r4, r22, 110
00089c  97902000  or r1, r1, r2
0008a0  1b117b06  ori r2, r22, 103
0008a4  13123204  setlt.s r4, r4, r3
0008a8  13113104  setlt.s r2, r2, r3
0008ac  97906000  or r1, r1, r6
0008b0  1b138b06  ori r6, r22, 104
0008b4  13133304  setlt.s r6, r6, r3
0008b8  97905000  or r1, r1, r5
0008bc  9b129b06  ori r5, r22, 105
0008c0  93923204  setlt.s r5, r5, r3
0008c4  1b32e200  slli r4, r4, 14
0008c8  1b317100  slli r2, r2, 7
0008cc  97902000  or r1, r1, r2
0008d0  13113404  setlt.s r2, r8, r3
0008d4  13943b04  setlt.s r8, r23, r3
0008d8  1b338300  slli r6, r6, 8
0008dc  97906000  or r1, r1, r6
0008e0  9bb29200  slli r5, r5, 9
0008e4  1b13bb06  ori r6, r22, 107
0008e8  97925000  or r5, r1, r5
0008ec  13133304  setlt.s r6, r6, r3
0008f0  9b301400  slli r1, r8, 1
0008f4  1b14ab06  ori r8, r22, 106
0008f8  1b312100  slli r2, r2, 2
0008fc  13143404  setlt.s r8, r8, r3
000900  97904001  or r1, r1, r20
000904  1b1acb07  ori r20, r22, 124
000908  1b1bcb06  ori r22, r22, 108
00090c  979a2000  or r21, r1, r2
000910  131b3b04  setlt.s r22, r22, r3
000914  1b33b300  slli r6, r6, 11
000918  131a3a04  setlt.s r20, r20, r3
00091c  6301fff3  loadli.w r2,  -1544(r30)
000920  e340fff3  loadli.w r1,  -1540(r30)
000924  13113104  setlt.s r2, r2, r3
000928  93903004  setlt.s r1, r1, r3
00092c  1b34a400  slli r8, r8, 10
000930  97928200  or r5, r5, r8
000934  17942a01  or r8, r21, r18
000938  17141401  or r8, r8, r17
00093c  97926200  or r5, r5, r6
000940  1b31e100  slli r2, r2, 14
000944  9bb0f000  slli r1, r1, 15
000948  17130401  or r6, r8, r16
00094c  1bb46700  slli r8, r15, 6
000950  9b37cb00  slli r15, r22, 12
000954  17138300  or r6, r6, r8
000958  1b347700  slli r8, r14, 7
00095c  9792f200  or r5, r5, r15
000960  17138300  or r6, r6, r8
000964  1bb48600  slli r8, r13, 8
000968  97927200  or r5, r5, r7
00096c  9bb3a500  slli r7, r11, 10
000970  17138300  or r6, r6, r8
000974  1b349600  slli r8, r12, 9
000978  17924200  or r4, r5, r4
00097c  17138300  or r6, r6, r8
000980  1bb4d400  slli r8, r9, 13
000984  80340002  core_id r9
000988  17137300  or r6, r6, r7
00098c  9b33b500  slli r7, r10, 11
000990  97127300  or r5, r6, r7
000994  1b33ca00  slli r6, r20, 12
000998  9bb3f900  slli r7, r19, 15
00099c  97926200  or r5, r5, r6
0009a0  1f038000  addli r6, zero, 64
0009a4  17127200  or r4, r4, r7
0009a8  0b936438  mod.s r6, r9, r6
0009ac  97928200  or r5, r5, r8
0009b0  e74f4ff2  storeli.w r4, -1540(r30)
0009b4  17912200  or r2, r5, r2
0009b8  97101100  or r1, r2, r1
0009bc  1b367300  slli r12, r6, 7
0009c0  e70f1ff2  storeli.w r1, -1544(r30)
0009c4  9b107604  ori r1, r12, 71
0009c8  1b13c604  ori r6, r12, 76
0009cc  9b141604  ori r9, r12, 65
0009d0  1b142604  ori r8, r12, 66
0009d4  9b120604  ori r5, r12, 64
0009d8  9b1a3604  ori r21, r12, 67
0009dc  9b194604  ori r19, r12, 68
0009e0  9b155604  ori r11, r12, 69
0009e4  1b156604  ori r10, r12, 70
0009e8  1b1a8605  ori r20, r12, 88
0009ec  1b1c9605  ori r24, r12, 89
0009f0  9b1ca605  ori r25, r12, 90
0009f4  1b1db605  ori r26, r12, 91
0009f8  9b1dd605  ori r27, r12, 93
0009fc  1b1ee605  ori r28, r12, 94
000a00  1b110606  ori r2, r12, 96
000a04  1b121606  ori r4, r12, 97
000a08  9b168606  ori r13, r12, 104
000a0c  9b17a606  ori r15, r12, 106
000a10  1b18b606  ori r16, r12, 107
000a14  9b18d606  ori r17, r12, 109
000a18  1b1bf606  ori r22, r12, 111
000a1c  9b1b0607  ori r23, r12, 112
000a20  67041ff0  storeli.w r1, -1984(r30)
000a24  9b108604  ori r1, r12, 72
000a28  93943404  setlt.s r9, r9, r3
000a2c  13173404  setlt.s r14, r8, r3
000a30  13993904  setlt.s r18, r19, r3
000a34  13153504  setlt.s r10, r10, r3
000a38  9b197605  ori r19, r12, 87
000a3c  1b145606  ori r8, r12, 101
000a40  131a3a04  setlt.s r20, r20, r3
000a44  131c3c04  setlt.s r24, r24, r3
000a48  939c3c04  setlt.s r25, r25, r3
000a4c  131d3d04  setlt.s r26, r26, r3
000a50  67001ff0  storeli.w r1, -2048(r30)
000a54  9b109604  ori r1, r12, 73
000a58  93993904  setlt.s r19, r19, r3
000a5c  670c1fee  storeli.w r1, -2112(r30)
000a60  9b10a604  ori r1, r12, 74
000a64  e74b1fee  storeli.w r1, -2116(r30)
000a68  9b10b604  ori r1, r12, 75
000a6c  9bb31400  slli r7, r9, 1
000a70  93943a04  setlt.s r9, r21, r3
000a74  9b1ae606  ori r21, r12, 110
000a78  e70b1fee  storeli.w r1, -2120(r30)
000a7c  93103304  setlt.s r1, r6, r3
000a80  13933204  setlt.s r6, r5, r3
000a84  9b122606  ori r5, r12, 98
000a88  9bb43400  slli r9, r9, 3
000a8c  67001ff2  storeli.w r1, -1792(r30)
000a90  9b10d604  ori r1, r12, 77
000a94  17936300  or r6, r7, r6
000a98  9b332700  slli r7, r14, 2
000a9c  1b179606  ori r14, r12, 105
000aa0  e7091fee  storeli.w r1, -2152(r30)
000aa4  9b10e604  ori r1, r12, 78
000aa8  17137300  or r6, r6, r7
000aac  93933504  setlt.s r7, r11, r3
000ab0  9b157606  ori r11, r12, 103
000ab4  e7481fee  storeli.w r1, -2164(r30)
000ab8  9b10f604  ori r1, r12, 79
000abc  17139300  or r6, r6, r9
000ac0  9b344900  slli r9, r18, 4
000ac4  1b196605  ori r18, r12, 86
000ac8  e7081fee  storeli.w r1, -2168(r30)
000acc  9b100605  ori r1, r12, 80
000ad0  17139300  or r6, r6, r9
000ad4  9b14c605  ori r9, r12, 92
000ad8  13193904  setlt.s r18, r18, r3
000adc  67041fee  storeli.w r1, -2240(r30)
000ae0  9b101605  ori r1, r12, 81
000ae4  9bb35300  slli r7, r7, 5
000ae8  e7431fee  storeli.w r1, -2244(r30)
000aec  9b102605  ori r1, r12, 82
000af0  17137300  or r6, r6, r7
000af4  9b336500  slli r7, r10, 6
000af8  1b155605  ori r10, r12, 85
000afc  e7031fee  storeli.w r1, -2248(r30)
000b00  9b103605  ori r1, r12, 83
000b04  13153504  setlt.s r10, r10, r3
000b08  67431fee  storeli.w r1, -2252(r30)
000b0c  9b104605  ori r1, r12, 84
000b10  67031fee  storeli.w r1, -2256(r30)
000b14  93903404  setlt.s r1, r9, r3
000b18  9b14c606  ori r9, r12, 108
000b1c  1b355500  slli r10, r10, 5
000b20  67091fee  storeli.w r1, -2160(r30)
000b24  97107300  or r1, r6, r7
000b28  1b13c607  ori r6, r12, 124
000b2c  9b134606  ori r7, r12, 100
000b30  67021fee  storeli.w r1, -2272(r30)
000b34  93903404  setlt.s r1, r9, r3
000b38  9b146606  ori r9, r12, 102
000b3c  67081ff0  storeli.w r1, -1920(r30)
000b40  93103304  setlt.s r1, r6, r3
000b44  1b133606  ori r6, r12, 99
000b48  670c1ff0  storeli.w r1, -1856(r30)
000b4c  9b10f605  ori r1, r12, 95
000b50  e7021fee  storeli.w r1, -2264(r30)
000b54  9b101607  ori r1, r12, 113
000b58  e70e1fec  storeli.w r1, -2328(r30)
000b5c  9b102607  ori r1, r12, 114
000b60  674e1fec  storeli.w r1, -2332(r30)
000b64  9b103607  ori r1, r12, 115
000b68  670e1fec  storeli.w r1, -2336(r30)
000b6c  9b104607  ori r1, r12, 116
000b70  e74d1fec  storeli.w r1, -2340(r30)
000b74  9b105607  ori r1, r12, 117
000b78  e70d1fec  storeli.w r1, -2344(r30)
000b7c  9b106607  ori r1, r12, 118
000b80  674d1fec  storeli.w r1, -2348(r30)
000b84  9b107607  ori r1, r12, 119
000b88  670d1fec  storeli.w r1, -2352(r30)
000b8c  9b108607  ori r1, r12, 120
000b90  e74c1fec  storeli.w r1, -2356(r30)
000b94  9b109607  ori r1, r12, 121
000b98  e70c1fec  storeli.w r1, -2360(r30)
000b9c  9b10a607  ori r1, r12, 122
000ba0  674c1fec  storeli.w r1, -2364(r30)
000ba4  9b10b607  ori r1, r12, 123
000ba8  670c1fec  storeli.w r1, -2368(r30)
000bac  9b10d607  ori r1, r12, 125
000bb0  e74b1fec  storeli.w r1, -2372(r30)
000bb4  9b10e607  ori r1, r12, 126
000bb8  e70b1fec  storeli.w r1, -2376(r30)
000bbc  9b10f607  ori r1, r12, 127
000bc0  63060ff0  loadli.w r12,  -2048(r30)
000bc4  670f1fec  storeli.w r1, -2320(r30)
000bc8  e3008ff0  loadli.w r1,  -1984(r30)
000bcc  13163604  setlt.s r12, r12, r3
000bd0  93903004  setlt.s r1, r1, r3
000bd4  e74ecfec  storeli.w r12, -2324(r30)
000bd8  63068fef  loadli.w r12,  -2112(r30)
000bdc  9bb07000  slli r1, r1, 7
000be0  13163604  setlt.s r12, r12, r3
000be4  e700cfee  storeli.w r12, -2296(r30)
000be8  63467fef  loadli.w r12,  -2116(r30)
000bec  13163604  setlt.s r12, r12, r3
000bf0  e740cfee  storeli.w r12, -2292(r30)
000bf4  63067fef  loadli.w r12,  -2120(r30)
000bf8  13163604  setlt.s r12, r12, r3
000bfc  6701cfee  storeli.w r12, -2288(r30)
000c00  63063fef  loadli.w r12,  -2152(r30)
000c04  13163604  setlt.s r12, r12, r3
000c08  6741cfee  storeli.w r12, -2284(r30)
000c0c  63461fef  loadli.w r12,  -2164(r30)
000c10  13163604  setlt.s r12, r12, r3
000c14  e701cfee  storeli.w r12, -2280(r30)
000c18  63061fef  loadli.w r12,  -2168(r30)
000c1c  13163604  setlt.s r12, r12, r3
000c20  e741cfee  storeli.w r12, -2276(r30)
000c24  63068fee  loadli.w r12,  -2240(r30)
000c28  13163604  setlt.s r12, r12, r3
000c2c  e74fcfec  storeli.w r12, -2308(r30)
000c30  63467fee  loadli.w r12,  -2244(r30)
000c34  13163604  setlt.s r12, r12, r3
000c38  674fcfec  storeli.w r12, -2316(r30)
000c3c  63067fee  loadli.w r12,  -2248(r30)
000c40  13163604  setlt.s r12, r12, r3
000c44  e70fcfec  storeli.w r12, -2312(r30)
000c48  63466fee  loadli.w r12,  -2252(r30)
000c4c  13163604  setlt.s r12, r12, r3
000c50  6700cfee  storeli.w r12, -2304(r30)
000c54  63066fee  loadli.w r12,  -2256(r30)
000c58  13163604  setlt.s r12, r12, r3
000c5c  6740cfee  storeli.w r12, -2300(r30)
000c60  13963d04  setlt.s r12, r27, r3
000c64  931d3104  setlt.s r27, r2, r3
000c68  13113304  setlt.s r2, r6, r3
000c6c  13933404  setlt.s r6, r9, r3
000c70  93943604  setlt.s r9, r13, r3
000c74  6742cfee  storeli.w r12, -2268(r30)
000c78  13163e04  setlt.s r12, r28, r3
000c7c  131e3204  setlt.s r28, r4, r3
000c80  13923204  setlt.s r4, r5, r3
000c84  93923304  setlt.s r5, r7, r3
000c88  93133404  setlt.s r7, r8, r3
000c8c  13943504  setlt.s r8, r11, r3
000c90  e305ffed  loadli.w r11,  -2312(r30)
000c94  1b313100  slli r2, r2, 3
000c98  9bb52500  slli r11, r11, 2
000c9c  e742cfee  storeli.w r12, -2260(r30)
000ca0  63065fee  loadli.w r12,  -2264(r30)
000ca4  e7029fee  storeli.w r9, -2264(r30)
000ca8  93143704  setlt.s r9, r14, r3
000cac  13973a04  setlt.s r14, r21, r3
000cb0  1b322200  slli r4, r4, 2
000cb4  9bb24200  slli r5, r5, 4
000cb8  13163604  setlt.s r12, r12, r3
000cbc  e7489fee  storeli.w r9, -2164(r30)
000cc0  93943704  setlt.s r9, r15, r3
000cc4  6703cfee  storeli.w r12, -2256(r30)
000cc8  13163b04  setlt.s r12, r22, r3
000ccc  e70b9fee  storeli.w r9, -2120(r30)
000cd0  93143804  setlt.s r9, r16, r3
000cd4  670c9fee  storeli.w r9, -2112(r30)
000cd8  93943804  setlt.s r9, r17, r3
000cdc  67049ff0  storeli.w r9, -1984(r30)
000ce0  93943b04  setlt.s r9, r23, r3
000ce4  e7439fee  storeli.w r9, -2244(r30)
000ce8  e304dfed  loadli.w r9,  -2328(r30)
000cec  93943404  setlt.s r9, r9, r3
000cf0  67439fee  storeli.w r9, -2252(r30)
000cf4  e344cfed  loadli.w r9,  -2332(r30)
000cf8  93943404  setlt.s r9, r9, r3
000cfc  e7039fee  storeli.w r9, -2248(r30)
000d00  e304cfed  loadli.w r9,  -2336(r30)
000d04  93943404  setlt.s r9, r9, r3
000d08  67049fee  storeli.w r9, -2240(r30)
000d0c  e344bfed  loadli.w r9,  -2340(r30)
000d10  93943404  setlt.s r9, r9, r3
000d14  e7089fee  storeli.w r9, -2168(r30)
000d18  e304bfed  loadli.w r9,  -2344(r30)
000d1c  93943404  setlt.s r9, r9, r3
000d20  e7099fee  storeli.w r9, -2152(r30)
000d24  e344afed  loadli.w r9,  -2348(r30)
000d28  93943404  setlt.s r9, r9, r3
000d2c  e74b9fee  storeli.w r9, -2116(r30)
000d30  e304afed  loadli.w r9,  -2352(r30)
000d34  93943404  setlt.s r9, r9, r3
000d38  67009ff0  storeli.w r9, -2048(r30)
000d3c  e3449fed  loadli.w r9,  -2356(r30)
000d40  939b3404  setlt.s r23, r9, r3
000d44  e3049fed  loadli.w r9,  -2360(r30)
000d48  139b3404  setlt.s r22, r9, r3
000d4c  e3448fed  loadli.w r9,  -2364(r30)
000d50  939a3404  setlt.s r21, r9, r3
000d54  e3048fed  loadli.w r9,  -2368(r30)
000d58  93983404  setlt.s r17, r9, r3
000d5c  e3447fed  loadli.w r9,  -2372(r30)
000d60  13983404  setlt.s r16, r9, r3
000d64  e3047fed  loadli.w r9,  -2376(r30)
000d68  93973404  setlt.s r15, r9, r3
000d6c  e304efed  loadli.w r9,  -2320(r30)
000d70  93963404  setlt.s r13, r9, r3
000d74  e3014fee  loadli.w r3,  -2272(r30)
000d78  e344efed  loadli.w r9,  -2316(r30)
000d7c  97901100  or r1, r3, r1
000d80  e341dfed  loadli.w r3,  -2324(r30)
000d84  9bb41400  slli r9, r9, 1
000d88  9bb18100  slli r3, r3, 8
000d8c  97903000  or r1, r1, r3
000d90  e341ffed  loadli.w r3,  -2308(r30)
000d94  97913400  or r3, r9, r3
000d98  e3041fee  loadli.w r9,  -2296(r30)
000d9c  9791b100  or r3, r3, r11
000da0  e3050fee  loadli.w r11,  -2304(r30)
000da4  9bb49400  slli r9, r9, 9
000da8  97909000  or r1, r1, r9
000dac  e3441fee  loadli.w r9,  -2292(r30)
000db0  9bb53500  slli r11, r11, 3
000db4  9791b100  or r3, r3, r11
000db8  e3450fee  loadli.w r11,  -2300(r30)
000dbc  9bb4a400  slli r9, r9, 10
000dc0  97909000  or r1, r1, r9
000dc4  e3042fee  loadli.w r9,  -2288(r30)
000dc8  9bb54500  slli r11, r11, 4
000dcc  9791b100  or r3, r3, r11
000dd0  9bb4b400  slli r9, r9, 11
000dd4  9791a100  or r3, r3, r10
000dd8  1b356900  slli r10, r18, 6
000ddc  97909000  or r1, r1, r9
000de0  e3040ff2  loadli.w r9,  -1792(r30)
000de4  9791a100  or r3, r3, r10
000de8  1bb57900  slli r10, r19, 7
000dec  9bb4c400  slli r9, r9, 12
000df0  97909000  or r1, r1, r9
000df4  e3442fee  loadli.w r9,  -2284(r30)
000df8  9bb4d400  slli r9, r9, 13
000dfc  97909000  or r1, r1, r9
000e00  e3043fee  loadli.w r9,  -2280(r30)
000e04  9bb4e400  slli r9, r9, 14
000e08  97909000  or r1, r1, r9
000e0c  9794a100  or r9, r3, r10
000e10  e3413fee  loadli.w r3,  -2276(r30)
000e14  1b358a00  slli r10, r20, 8
000e18  634a3f00  loadli.w r20,  28(r30)
000e1c  9bb1f100  slli r3, r3, 15
000e20  97913000  or r3, r1, r3
000e24  9790a400  or r1, r9, r10
000e28  9b349c00  slli r9, r24, 9
000e2c  1b351e00  slli r10, r28, 1
000e30  630e8ff5  loadli.w r28,  -1344(r30)
000e34  1f0c0ff6  addli r24, r30, -1280
000e38  97909000  or r1, r1, r9
000e3c  9714b501  or r9, r10, r27
000e40  1bb5ac00  slli r10, r25, 10
000e44  e30d8fec  loadli.w r27,  -2496(r30)
000e48  9f0c0004  addli r25, zero, 512
000e4c  17924400  or r4, r9, r4
000e50  9790a000  or r1, r1, r10
000e54  9b34bd00  slli r9, r26, 11
000e58  6b550fa0  load.d r[11:12], -1536(r30)
000e5c  2b0d0000  lui r26, 0
000e60  17112200  or r2, r4, r2
000e64  63022fef  loadli.w r4,  -2160(r30)
000e68  97909000  or r1, r1, r9
000e6c  1f0d0d00  addli r26, r26, 0
000e70  17115100  or r2, r2, r5
000e74  9bb25300  slli r5, r7, 5
000e78  e3030ff0  loadli.w r7,  -2048(r30)
000e7c  1b32c200  slli r4, r4, 12
000e80  17115100  or r2, r2, r5
000e84  9b326300  slli r5, r6, 6
000e88  63037fee  loadli.w r6,  -2248(r30)
000e8c  97904000  or r1, r1, r4
000e90  63424fee  loadli.w r4,  -2268(r30)
000e94  9bb37300  slli r7, r7, 7
000e98  17115100  or r2, r2, r5
000e9c  9b327400  slli r5, r8, 7
000ea0  6b548f00  load.d r[9:10], 8(r30)
000ea4  1b332300  slli r6, r6, 2
000ea8  1b32d200  slli r4, r4, 13
000eac  17115100  or r2, r2, r5
000eb0  e3426fee  loadli.w r5,  -2252(r30)
000eb4  97904000  or r1, r1, r4
000eb8  63425fee  loadli.w r4,  -2260(r30)
000ebc  9bb21200  slli r5, r5, 1
000ec0  1b32e200  slli r4, r4, 14
000ec4  97904000  or r1, r1, r4
000ec8  63026fee  loadli.w r4,  -2256(r30)
000ecc  1b32f200  slli r4, r4, 15
000ed0  97904000  or r1, r1, r4
000ed4  63025fee  loadli.w r4,  -2264(r30)
000ed8  1b328200  slli r4, r4, 8
000edc  17114100  or r2, r2, r4
000ee0  63427fee  loadli.w r4,  -2244(r30)
000ee4  17924200  or r4, r5, r4
000ee8  e3421fef  loadli.w r5,  -2164(r30)
000eec  17126200  or r4, r4, r6
000ef0  63038fee  loadli.w r6,  -2240(r30)
000ef4  9bb29200  slli r5, r5, 9
000ef8  17115100  or r2, r2, r5
000efc  e3027fef  loadli.w r5,  -2120(r30)
000f00  1b333300  slli r6, r6, 3
000f04  17126200  or r4, r4, r6
000f08  63031fef  loadli.w r6,  -2168(r30)
000f0c  9bb2a200  slli r5, r5, 10
000f10  17115100  or r2, r2, r5
000f14  e3028fef  loadli.w r5,  -2112(r30)
000f18  1b334300  slli r6, r6, 4
000f1c  17126200  or r4, r4, r6
000f20  63033fef  loadli.w r6,  -2152(r30)
000f24  9bb2b200  slli r5, r5, 11
000f28  17115100  or r2, r2, r5
000f2c  e3020ff1  loadli.w r5,  -1920(r30)
000f30  1b335300  slli r6, r6, 5
000f34  17126200  or r4, r4, r6
000f38  63437fef  loadli.w r6,  -2116(r30)
000f3c  9bb2c200  slli r5, r5, 12
000f40  17115100  or r2, r2, r5
000f44  e3028ff0  loadli.w r5,  -1984(r30)
000f48  1b336300  slli r6, r6, 6
000f4c  17126200  or r4, r4, r6
000f50  9bb2d200  slli r5, r5, 13
000f54  17127200  or r4, r4, r7
000f58  9f033fef  addli r7, r30, -2152
000f5c  17115100  or r2, r2, r5
000f60  eb520f00  load.d r[6:7], 0(r30)
000f64  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000f68  73b05300  store.d r[6:7], 0(r7)
000f6c  8b22a410  add.ul r[6:7], r[9:10], r[11:12]
000f70  9f032fef  addli r7, r30, -2160
000f74  9f048fee  addli r9, r30, -2240
000f78  73b05300  store.d r[6:7], 0(r7)
000f7c  9bb28b00  slli r5, r23, 8
000f80  63038ff4  loadli.w r6,  -1472(r30)
000f84  e3437ff5  loadli.w r7,  -1348(r30)
000f88  17125200  or r4, r4, r5
000f8c  9f822d08  addli r5, r27, 1040
000f90  1b342300  slli r8, r6, 2
000f94  1b33e700  slli r6, r14, 14
000f98  e7485fee  storeli.w r5, -2164(r30)
000f9c  9b329b00  slli r5, r22, 9
000fa0  17116100  or r2, r2, r6
000fa4  1b33f600  slli r6, r12, 15
000fa8  17125200  or r4, r4, r5
000fac  9bb2aa00  slli r5, r21, 10
000fb0  9f0a0ffa  addli r21, r30, -768
000fb4  17116100  or r2, r2, r6
000fb8  2bf3ffff  lui r6, 1048575
000fbc  17125200  or r4, r4, r5
000fc0  9bb2b800  slli r5, r17, 11
000fc4  7e0101e0  vmmov mr2, r2
000fc8  17125200  or r4, r4, r5
000fcc  e3028ff1  loadli.w r5,  -1856(r30)
000fd0  00a00000  mfence { lm }
000fd4  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000fd8  e7088fee  storeli.w r8, -2168(r30)
000fdc  9bb2c200  slli r5, r5, 12
000fe0  17125200  or r4, r4, r5
000fe4  9b32d800  slli r5, r16, 13
000fe8  17125200  or r4, r4, r5
000fec  9bb2e700  slli r5, r15, 14
000ff0  17125200  or r4, r4, r5
000ff4  9b1203f0  ori r5, r6, 3840
000ff8  1bb3f600  slli r6, r13, 15
000ffc  97825300  and r5, r7, r5
001000  9f230000  addli r7, zero, 2
001004  17126200  or r4, r4, r6
001008  2bf30000  lui r6, 15
00100c  0b9ba211  add.s r22, r5, r26
001010  80320002  core_id r5
001014  1b19f3ff  ori r18, r6, 4095
001018  fe0102e0  vmmov mr3, r4
00101c  9b88f203  andi r17, r5, 63
001020  ab0280ff  lui r5, 1046528
001024  9f0b2b08  addli r23, r22, 1040
001028  e70b2fef  storeli.w r18, -2120(r30)
00102c  ea940222  vor.f.mz vr9{mr1}, r5, vr0
001030  e342eff3  loadli.w r5,  -1548(r30)
001034  e74b1fef  storeli.w r17, -2116(r30)
001038  7e8002e0  vmmov mr0, r5
00103c  9f427fee  addli r5, r30, -2244
001040  7e0000a0  vmmov zero, mr0
001044  67800200  storeli.w zero, 0(r5)
001048  e3020ff3  loadli.w r5,  -1664(r30)
00104c  17200000  xor zero, zero, zero
001050  7e8002e0  vmmov mr0, r5
001054  9f027fee  addli r5, r30, -2248
001058  7e0000a0  vmmov zero, mr0
00105c  67800200  storeli.w zero, 0(r5)
001060  e3028ff2  loadli.w r5,  -1728(r30)
001064  17200000  xor zero, zero, zero
001068  7e8002e0  vmmov mr0, r5
00106c  9f426fee  addli r5, r30, -2252
001070  7e0000a0  vmmov zero, mr0
001074  67800200  storeli.w zero, 0(r5)
001078  e342fff3  loadli.w r5,  -1540(r30)
00107c  17200000  xor zero, zero, zero
001080  7e8002e0  vmmov mr0, r5
001084  9f026fee  addli r5, r30, -2256
001088  7e0000a0  vmmov zero, mr0
00108c  67800200  storeli.w zero, 0(r5)
001090  e302fff3  loadli.w r5,  -1544(r30)
001094  17200000  xor zero, zero, zero
001098  7e8002e0  vmmov mr0, r5
00109c  9f425fee  addli r5, r30, -2260
0010a0  7e0000a0  vmmov zero, mr0
0010a4  7e8001e0  vmmov mr0, r3
0010a8  67800200  storeli.w zero, 0(r5)
0010ac  17200000  xor zero, zero, zero
0010b0  7e0000a0  vmmov zero, mr0
0010b4  7e8000e0  vmmov mr0, r1
0010b8  9f008ff4  addli r1, r30, -1472
0010bc  e74b0ff4  storeli.w zero, -1348(r30)
0010c0  17200000  xor zero, zero, zero
0010c4  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0010c8  9f000ff4  addli r1, r30, -1536
0010cc  7e0001a0  vmmov zero, mr2
0010d0  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0010d4  9f005fee  addli r1, r30, -2264
0010d8  67800000  storeli.w zero, 0(r1)
0010dc  7e0000a0  vmmov zero, mr0
0010e0  e74f0ff2  storeli.w zero, -1540(r30)
0010e4  7e8001a0  vmmov zero, mr3
0010e8  e70f0ff2  storeli.w zero, -1544(r30)
0010ec  17200000  xor zero, zero, zero
0010f0  00a00000  mfence { lm }
0010f4  db1c0000  j 228
0010f8  8b922210  add.s r5, r5, r2
0010fc  bfff42fe  blt.s r5, r4, -4
001100  9f0e8fec  addli sp, r30, -2496
001104  9f8e8e13  addli sp, sp, 2496
001108  00a00300  mfence { lm, sm, gm }
00110c  00100000  exit
001110  00a00300  mfence { lm, sm, gm }
001114  80210904  csr_set csr3, r18
001118  00d00100  sync_group
00111c  ef400d41  loads.w r1, 1040(r26)
001120  63016fef  loadli.w r2,  -2128(r30)
001124  e341eff3  loadli.w r3,  -1548(r30)
001128  9f230000  addli r7, zero, 2
00112c  0b912110  add.s r2, r3, r2
001130  ab01803f  lui r3, 260096
001134  33120128  sext_int2long r[5:6], r2
001138  17327202  sll.d r[5:6], r[5:6], r7
00113c  8f811118  div.f.rn r3, r3, r1
001140  73681d50  stores.w r1, 1296(r26)
001144  eb500f01  load.d r[2:3], 16(r30)
001148  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
00114c  1f028ff5  addli r4, r30, -1344
001150  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
001154  1f020ff3  addli r4, r30, -1664
001158  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
00115c  1f028ff2  addli r4, r30, -1728
001160  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001164  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001168  0a912102  vmul.f.mz.rn vr2{mr1}, r3, vr2
00116c  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
001170  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
001174  1f020ff2  addli r4, r30, -1792
001178  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
00117c  0a924102  vmul.f.mz.rn vr4{mr1}, r3, vr4
001180  46100fa2  vstore_mask16.mz vr0{mr1}, 1280(r30)
001184  46141fa2  vstore_mask16.mz vr1{mr1}, 1344(r30)
001188  46182fa2  vstore_mask16.mz vr2{mr1}, 1408(r30)
00118c  461c3fa2  vstore_mask16.mz vr3{mr1}, 1472(r30)
001190  8a925102  vmul.f.mz.rn vr5{mr1}, r3, vr5
001194  0a936102  vmul.f.mz.rn vr6{mr1}, r3, vr6
001198  46104fc2  vstore_mask16.mz vr4{mr1}, 1536(r30)
00119c  8a937102  vmul.f.mz.rn vr7{mr1}, r3, vr7
0011a0  46145fc2  vstore_mask16.mz vr5{mr1}, 1600(r30)
0011a4  ab0100f0  lui r3, 983040
0011a8  46186fc2  vstore_mask16.mz vr6{mr1}, 1664(r30)
0011ac  461c7fc2  vstore_mask16.mz vr7{mr1}, 1728(r30)
0011b0  63041fef  loadli.w r8,  -2168(r30)
0011b4  00a00000  mfence { lm }
0011b8  97113400  or r3, r8, r3
0011bc  ffb15001  s_lm2gm r3, r21, 0(r[2:3])
0011c0  e3405fef  loadli.w r1,  -2132(r30)
0011c4  00a00000  mfence { lm }
0011c8  0b1e1e10  add.s r28, r28, r1
0011cc  e3406fef  loadli.w r1,  -2124(r30)
0011d0  3f201e00  blt.s r28, r1, 8
0011d4  dbe5ffff  j -212
0011d8  9f000000  addli r1, zero, 0
0011dc  0b111c10  add.s r2, r24, r1
0011e0  9f801000  addli r1, r1, 8
0011e4  67000100  storeli.w zero, 0(r2)
0011e8  67400100  storeli.w zero, 4(r2)
0011ec  00a00000  mfence { lm }
0011f0  bbbf90ff  bneq r1, r25, -20
0011f4  e3004f00  loadli.w r1,  32(r30)
0011f8  1f110020  addli r2, zero, 4097
0011fc  1f033fef  addli r6, r30, -2152
001200  fe0101c0  vmmov mr3, mr2
001204  ab0100f0  lui r3, 983040
001208  6b520300  load.d r[5:6], 0(r6)
00120c  97113400  or r3, r8, r3
001210  8b101e30  div.s r1, r28, r1
001214  8b904031  div.s r1, r1, r20
001218  8b902020  mul.s r1, r1, r2
00121c  674f1ff2  storeli.w r1, -1548(r30)
001220  b3900028  sext_int2long r[2:3], r1
001224  97b07002  sll.d r[2:3], r[2:3], r7
001228  8b201210  add.ul r[2:3], r[5:6], r[2:3]
00122c  ffa18001  l_gm2lm r3, r24, 0(r[2:3])
001230  9f000000  addli r1, zero, 0
001234  0b911a10  add.s r2, r21, r1
001238  9f801000  addli r1, r1, 8
00123c  67000100  storeli.w zero, 0(r2)
001240  67400100  storeli.w zero, 4(r2)
001244  00a00000  mfence { lm }
001248  bbbf90ff  bneq r1, r25, -20
00124c  1f022fef  addli r4, r30, -2160
001250  ab0000f0  lui r1, 983040
001254  6b510200  load.d r[3:4], 0(r4)
001258  97101400  or r1, r8, r1
00125c  ff205101  l_gm2lm r1, r21, 0(r[3:4])
001260  9f000ff6  addli r1, r30, -1280
001264  00a00000  mfence { lm }
001268  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00126c  9f008ff6  addli r1, r30, -1216
001270  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001274  9f000ff7  addli r1, r30, -1152
001278  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00127c  9f008ff7  addli r1, r30, -1088
001280  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001284  42140f82  vload_mask16.mz vr8{mr1}, 1024(r30)
001288  c2148f82  vload_mask16.mz vr9{mr1}, 1088(r30)
00128c  c2120fa2  vload_mask16.mz vr5{mr1}, 1280(r30)
001290  c2100f83  vload_mask16.mz vr1{mr1}, 1152(r30)
001294  9f008ff5  addli r1, r30, -1344
001298  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00129c  9f000ff3  addli r1, r30, -1664
0012a0  96125002  vadd.f.mz.rn vr5{mr1}, vr0, vr5
0012a4  c2108f83  vload_mask16.mz vr1{mr1}, 1216(r30)
0012a8  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0012ac  9f008ff1  addli r1, r30, -1856
0012b0  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
0012b4  42150fa3  vload_mask16.mz vr10{mr1}, 1408(r30)
0012b8  c2158fa3  vload_mask16.mz vr11{mr1}, 1472(r30)
0012bc  c2100fc2  vload_mask16.mz vr1{mr1}, 1536(r30)
0012c0  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
0012c4  16126102  vadd.f.mz.rn vr4{mr1}, vr2, vr6
0012c8  1691a102  vadd.f.mz.rn vr2{mr1}, vr3, vr10
0012cc  16950402  vadd.f.mz.rn vr10{mr1}, vr9, vr0
0012d0  16141402  vadd.f.mz.rn vr8{mr1}, vr8, vr1
0012d4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0012d8  1691b302  vadd.f.mz.rn vr2{mr1}, vr7, vr11
0012dc  9f000ff2  addli r1, r30, -1792
0012e0  42130fc3  vload_mask16.mz vr6{mr1}, 1664(r30)
0012e4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0012e8  9f000ff4  addli r1, r30, -1536
0012ec  c2138fc3  vload_mask16.mz vr7{mr1}, 1728(r30)
0012f0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0012f4  9f005fef  addli r1, r30, -2136
0012f8  92319002  vadd.s.mz vr3{mr1}, zero, vr9
0012fc  63800000  loadli.w zero,  0(r1)
001300  9f008ff4  addli r1, r30, -1472
001304  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
001308  9f404fef  addli r1, r30, -2140
00130c  7e0100e0  vmmov mr2, zero
001310  17200000  xor zero, zero, zero
001314  12319002  vadd.s.mz vr2{mr1}, zero, vr9
001318  63800000  loadli.w zero,  0(r1)
00131c  9f008ff5  addli r1, r30, -1344
001320  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001324  9f000ff3  addli r1, r30, -1664
001328  ee915534  vor.f.mh vr3{mr2}, vr11, vr5
00132c  7e0100e0  vmmov mr2, zero
001330  17200000  xor zero, zero, zero
001334  6e914534  vor.f.mh vr2{mr2}, vr11, vr4
001338  92309002  vadd.s.mz vr1{mr1}, zero, vr9
00133c  63407ff5  loadli.w zero,  -1348(r30)
001340  7e0100e0  vmmov mr2, zero
001344  17200000  xor zero, zero, zero
001348  16136002  vadd.f.mz.rn vr6{mr1}, vr0, vr6
00134c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001350  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
001354  9f008ff2  addli r1, r30, -1728
001358  ee908534  vor.f.mh vr1{mr2}, vr11, vr8
00135c  92329002  vadd.s.mz vr5{mr1}, zero, vr9
001360  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
001364  9f004fef  addli r1, r30, -2144
001368  b6901102  vmax.f.mz vr1{mr1}, vr3, vr1
00136c  ee92a530  vor.f.mh vr5{mr0}, vr11, vr10
001370  96137002  vadd.f.mz.rn vr7{mr1}, vr0, vr7
001374  12309002  vadd.s.mz vr0{mr1}, zero, vr9
001378  63800000  loadli.w zero,  0(r1)
00137c  9f008ff1  addli r1, r30, -1856
001380  7e0100e0  vmmov mr2, zero
001384  17200000  xor zero, zero, zero
001388  b6115102  vmax.f.mz vr3{mr1}, vr2, vr5
00138c  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
001390  9f407fee  addli r1, r30, -2244
001394  92329002  vadd.s.mz vr5{mr1}, zero, vr9
001398  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
00139c  ee926536  vor.f.mh vr5{mr3}, vr11, vr6
0013a0  6e902534  vor.f.mh vr0{mr2}, vr11, vr2
0013a4  12319002  vadd.s.mz vr2{mr1}, zero, vr9
0013a8  63800000  loadli.w zero,  0(r1)
0013ac  9f000ff2  addli r1, r30, -1792
0013b0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0013b4  7e0100e0  vmmov mr2, zero
0013b8  17200000  xor zero, zero, zero
0013bc  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0013c0  9f008ff1  addli r1, r30, -1856
0013c4  92319002  vadd.s.mz vr3{mr1}, zero, vr9
0013c8  6300fff3  loadli.w zero,  -1544(r30)
0013cc  6e914534  vor.f.mh vr2{mr2}, vr11, vr4
0013d0  7e0000e0  vmmov mr0, zero
0013d4  17200000  xor zero, zero, zero
0013d8  36125002  vmax.f.mz vr4{mr1}, vr0, vr5
0013dc  ee917530  vor.f.mh vr3{mr0}, vr11, vr7
0013e0  12309002  vadd.s.mz vr0{mr1}, zero, vr9
0013e4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0013e8  9f007fee  addli r1, r30, -2248
0013ec  b6904002  vmax.f.mz vr1{mr1}, vr1, vr4
0013f0  b6113102  vmax.f.mz vr3{mr1}, vr2, vr3
0013f4  63800000  loadli.w zero,  0(r1)
0013f8  9f000ff1  addli r1, r30, -1920
0013fc  7e0100e0  vmmov mr2, zero
001400  17200000  xor zero, zero, zero
001404  b6903002  vmax.f.mz vr1{mr1}, vr1, vr3
001408  6e908534  vor.f.mh vr0{mr2}, vr11, vr8
00140c  7a910040  vextracti.f r2, 0(vr1)
001410  fa911040  vextracti.f r3, 1(vr1)
001414  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001418  9f406fee  addli r1, r30, -2252
00141c  12309002  vadd.s.mz vr0{mr1}, zero, vr9
001420  63800000  loadli.w zero,  0(r1)
001424  9f008ff0  addli r1, r30, -1984
001428  7e0100e0  vmmov mr2, zero
00142c  17200000  xor zero, zero, zero
001430  6e90a534  vor.f.mh vr0{mr2}, vr11, vr10
001434  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001438  9f006fee  addli r1, r30, -2256
00143c  12309002  vadd.s.mz vr0{mr1}, zero, vr9
001440  63800000  loadli.w zero,  0(r1)
001444  9f000ff0  addli r1, r30, -2048
001448  7e0100e0  vmmov mr2, zero
00144c  17200000  xor zero, zero, zero
001450  6e906534  vor.f.mh vr0{mr2}, vr11, vr6
001454  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001458  9f405fee  addli r1, r30, -2260
00145c  63800000  loadli.w zero,  0(r1)
001460  9f008fef  addli r1, r30, -2112
001464  7e0100e0  vmmov mr2, zero
001468  17200000  xor zero, zero, zero
00146c  ee947534  vor.f.mh vr9{mr2}, vr11, vr7
001470  63407ff5  loadli.w zero,  -1348(r30)
001474  7e0000e0  vmmov mr0, zero
001478  6340fff3  loadli.w zero,  -1540(r30)
00147c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
001480  9f008ff5  addli r1, r30, -1344
001484  7e0000e0  vmmov mr0, zero
001488  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00148c  17200000  xor zero, zero, zero
001490  d7e10400  jal 9996
001494  9f008ff5  addli r1, r30, -1344
001498  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00149c  fa112040  vextracti.f r3, 2(vr0)
0014a0  d7e10400  jal 9996
0014a4  9f008ff5  addli r1, r30, -1344
0014a8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0014ac  fa113040  vextracti.f r3, 3(vr0)
0014b0  d7e10400  jal 9996
0014b4  9f008ff5  addli r1, r30, -1344
0014b8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0014bc  fa114040  vextracti.f r3, 4(vr0)
0014c0  d7e10400  jal 9996
0014c4  9f008ff5  addli r1, r30, -1344
0014c8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0014cc  fa115040  vextracti.f r3, 5(vr0)
0014d0  d7e10400  jal 9996
0014d4  9f008ff5  addli r1, r30, -1344
0014d8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0014dc  fa116040  vextracti.f r3, 6(vr0)
0014e0  d7e10400  jal 9996
0014e4  9f008ff5  addli r1, r30, -1344
0014e8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0014ec  fa117040  vextracti.f r3, 7(vr0)
0014f0  d7e10400  jal 9996
0014f4  9f008ff5  addli r1, r30, -1344
0014f8  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0014fc  fa118040  vextracti.f r3, 8(vr0)
001500  d7e10400  jal 9996
001504  9f008ff5  addli r1, r30, -1344
001508  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00150c  fa119040  vextracti.f r3, 9(vr0)
001510  d7e10400  jal 9996
001514  9f008ff5  addli r1, r30, -1344
001518  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00151c  fa11a040  vextracti.f r3, 10(vr0)
001520  d7e10400  jal 9996
001524  9f008ff5  addli r1, r30, -1344
001528  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00152c  fa11b040  vextracti.f r3, 11(vr0)
001530  d7e10400  jal 9996
001534  9f008ff5  addli r1, r30, -1344
001538  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00153c  fa11c040  vextracti.f r3, 12(vr0)
001540  d7e10400  jal 9996
001544  9f008ff5  addli r1, r30, -1344
001548  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00154c  fa11d040  vextracti.f r3, 13(vr0)
001550  d7e10400  jal 9996
001554  9f008ff5  addli r1, r30, -1344
001558  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00155c  fa11e040  vextracti.f r3, 14(vr0)
001560  d7e10400  jal 9996
001564  9f008ff5  addli r1, r30, -1344
001568  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00156c  fa11f040  vextracti.f r3, 15(vr0)
001570  d7e10400  jal 9996
001574  73e02d00  stores.w r2, 0(r27)
001578  00a00300  mfence { lm, sm, gm }
00157c  63097fef  loadli.w r18,  -2120(r30)
001580  80210904  csr_set csr3, r18
001584  00d00100  sync_group
001588  e3487fef  loadli.w r17,  -2116(r30)
00158c  3ba00802  bneq r17, zero, 1032
001590  ef408b01  loads.w r1, 24(r22)
001594  6f410b00  loads.w r2, 0(r22)
001598  ef414b00  loads.w r3, 4(r22)
00159c  1f0d0e00  addli r26, r28, 0
0015a0  6f4a8b00  loads.w r20, 8(r22)
0015a4  ef49cb00  loads.w r19, 12(r22)
0015a8  6f4e0b01  loads.w r28, 16(r22)
0015ac  ef4d4b01  loads.w r27, 20(r22)
0015b0  67441fec  storeli.w r1, -2492(r30)
0015b4  ef40cb01  loads.w r1, 28(r22)
0015b8  e7041fec  storeli.w r1, -2488(r30)
0015bc  ef400b02  loads.w r1, 32(r22)
0015c0  e7441fec  storeli.w r1, -2484(r30)
0015c4  ef404b02  loads.w r1, 36(r22)
0015c8  67051fec  storeli.w r1, -2480(r30)
0015cc  ef408b02  loads.w r1, 40(r22)
0015d0  67451fec  storeli.w r1, -2476(r30)
0015d4  ef40cb02  loads.w r1, 44(r22)
0015d8  e7051fec  storeli.w r1, -2472(r30)
0015dc  ef400b03  loads.w r1, 48(r22)
0015e0  e7451fec  storeli.w r1, -2468(r30)
0015e4  ef404b03  loads.w r1, 52(r22)
0015e8  67061fec  storeli.w r1, -2464(r30)
0015ec  ef408b03  loads.w r1, 56(r22)
0015f0  67461fec  storeli.w r1, -2460(r30)
0015f4  ef40cb03  loads.w r1, 60(r22)
0015f8  e7061fec  storeli.w r1, -2456(r30)
0015fc  ef400b04  loads.w r1, 64(r22)
001600  e7461fec  storeli.w r1, -2452(r30)
001604  ef404b04  loads.w r1, 68(r22)
001608  67071fec  storeli.w r1, -2448(r30)
00160c  ef408b04  loads.w r1, 72(r22)
001610  67471fec  storeli.w r1, -2444(r30)
001614  ef40cb04  loads.w r1, 76(r22)
001618  e7071fec  storeli.w r1, -2440(r30)
00161c  ef400b05  loads.w r1, 80(r22)
001620  e7471fec  storeli.w r1, -2436(r30)
001624  ef404b05  loads.w r1, 84(r22)
001628  67081fec  storeli.w r1, -2432(r30)
00162c  ef408b05  loads.w r1, 88(r22)
001630  67481fec  storeli.w r1, -2428(r30)
001634  ef40cb05  loads.w r1, 92(r22)
001638  e7081fec  storeli.w r1, -2424(r30)
00163c  ef400b06  loads.w r1, 96(r22)
001640  e7481fec  storeli.w r1, -2420(r30)
001644  ef404b06  loads.w r1, 100(r22)
001648  67091fec  storeli.w r1, -2416(r30)
00164c  ef408b06  loads.w r1, 104(r22)
001650  67491fec  storeli.w r1, -2412(r30)
001654  ef40cb06  loads.w r1, 108(r22)
001658  e7091fec  storeli.w r1, -2408(r30)
00165c  ef400b07  loads.w r1, 112(r22)
001660  e7491fec  storeli.w r1, -2404(r30)
001664  ef404b07  loads.w r1, 116(r22)
001668  670a1fec  storeli.w r1, -2400(r30)
00166c  ef408b07  loads.w r1, 120(r22)
001670  674a1fec  storeli.w r1, -2396(r30)
001674  ef40cb07  loads.w r1, 124(r22)
001678  e70a1fec  storeli.w r1, -2392(r30)
00167c  ef400b08  loads.w r1, 128(r22)
001680  e74a1fec  storeli.w r1, -2388(r30)
001684  ef404b08  loads.w r1, 132(r22)
001688  670b1fec  storeli.w r1, -2384(r30)
00168c  ef408b08  loads.w r1, 136(r22)
001690  674b1fec  storeli.w r1, -2380(r30)
001694  ef40cb08  loads.w r1, 140(r22)
001698  e70b1fec  storeli.w r1, -2376(r30)
00169c  ef400b09  loads.w r1, 144(r22)
0016a0  e74b1fec  storeli.w r1, -2372(r30)
0016a4  ef404b09  loads.w r1, 148(r22)
0016a8  670c1fec  storeli.w r1, -2368(r30)
0016ac  ef408b09  loads.w r1, 152(r22)
0016b0  674c1fec  storeli.w r1, -2364(r30)
0016b4  ef40cb09  loads.w r1, 156(r22)
0016b8  e70c1fec  storeli.w r1, -2360(r30)
0016bc  ef400b0a  loads.w r1, 160(r22)
0016c0  e74c1fec  storeli.w r1, -2356(r30)
0016c4  ef404b0a  loads.w r1, 164(r22)
0016c8  670d1fec  storeli.w r1, -2352(r30)
0016cc  ef408b0a  loads.w r1, 168(r22)
0016d0  674d1fec  storeli.w r1, -2348(r30)
0016d4  ef40cb0a  loads.w r1, 172(r22)
0016d8  e70d1fec  storeli.w r1, -2344(r30)
0016dc  ef400b0b  loads.w r1, 176(r22)
0016e0  e74d1fec  storeli.w r1, -2340(r30)
0016e4  ef404b0b  loads.w r1, 180(r22)
0016e8  670e1fec  storeli.w r1, -2336(r30)
0016ec  ef408b0b  loads.w r1, 184(r22)
0016f0  674e1fec  storeli.w r1, -2332(r30)
0016f4  ef40cb0b  loads.w r1, 188(r22)
0016f8  e70e1fec  storeli.w r1, -2328(r30)
0016fc  ef400b0c  loads.w r1, 192(r22)
001700  e74e1fec  storeli.w r1, -2324(r30)
001704  ef404b0c  loads.w r1, 196(r22)
001708  670f1fec  storeli.w r1, -2320(r30)
00170c  ef408b0c  loads.w r1, 200(r22)
001710  674f1fec  storeli.w r1, -2316(r30)
001714  ef40cb0c  loads.w r1, 204(r22)
001718  e70f1fec  storeli.w r1, -2312(r30)
00171c  ef400b0d  loads.w r1, 208(r22)
001720  e74f1fec  storeli.w r1, -2308(r30)
001724  ef404b0d  loads.w r1, 212(r22)
001728  67001fee  storeli.w r1, -2304(r30)
00172c  ef408b0d  loads.w r1, 216(r22)
001730  67401fee  storeli.w r1, -2300(r30)
001734  ef40cb0d  loads.w r1, 220(r22)
001738  e7001fee  storeli.w r1, -2296(r30)
00173c  ef400b0e  loads.w r1, 224(r22)
001740  e7401fee  storeli.w r1, -2292(r30)
001744  ef404b0e  loads.w r1, 228(r22)
001748  67011fee  storeli.w r1, -2288(r30)
00174c  ef408b0e  loads.w r1, 232(r22)
001750  67411fee  storeli.w r1, -2284(r30)
001754  ef40cb0e  loads.w r1, 236(r22)
001758  e7011fee  storeli.w r1, -2280(r30)
00175c  ef400b0f  loads.w r1, 240(r22)
001760  e7411fee  storeli.w r1, -2276(r30)
001764  ef404b0f  loads.w r1, 244(r22)
001768  67021fee  storeli.w r1, -2272(r30)
00176c  ef408b0f  loads.w r1, 248(r22)
001770  67421fee  storeli.w r1, -2268(r30)
001774  ef40cb0f  loads.w r1, 252(r22)
001778  00a00000  mfence { lm }
00177c  670c1ff4  storeli.w r1, -1344(r30)
001780  d7e10400  jal 9996
001784  9f010a00  addli r3, r20, 0
001788  d7e10400  jal 9996
00178c  9f810900  addli r3, r19, 0
001790  d7e10400  jal 9996
001794  9f010e00  addli r3, r28, 0
001798  1f0e0d00  addli r28, r26, 0
00179c  d7e10400  jal 9996
0017a0  9f810d00  addli r3, r27, 0
0017a4  e30d8fec  loadli.w r27,  -2496(r30)
0017a8  d7e10400  jal 9996
0017ac  e3418fec  loadli.w r3,  -2492(r30)
0017b0  2b0d0000  lui r26, 0
0017b4  634a3f00  loadli.w r20,  28(r30)
0017b8  1f0d0d00  addli r26, r26, 0
0017bc  d7e10400  jal 9996
0017c0  e3019fec  loadli.w r3,  -2488(r30)
0017c4  d7e10400  jal 9996
0017c8  e3419fec  loadli.w r3,  -2484(r30)
0017cc  d7e10400  jal 9996
0017d0  e301afec  loadli.w r3,  -2480(r30)
0017d4  d7e10400  jal 9996
0017d8  e341afec  loadli.w r3,  -2476(r30)
0017dc  d7e10400  jal 9996
0017e0  e301bfec  loadli.w r3,  -2472(r30)
0017e4  d7e10400  jal 9996
0017e8  e341bfec  loadli.w r3,  -2468(r30)
0017ec  d7e10400  jal 9996
0017f0  e301cfec  loadli.w r3,  -2464(r30)
0017f4  d7e10400  jal 9996
0017f8  e341cfec  loadli.w r3,  -2460(r30)
0017fc  d7e10400  jal 9996
001800  e301dfec  loadli.w r3,  -2456(r30)
001804  d7e10400  jal 9996
001808  e341dfec  loadli.w r3,  -2452(r30)
00180c  d7e10400  jal 9996
001810  e301efec  loadli.w r3,  -2448(r30)
001814  d7e10400  jal 9996
001818  e341efec  loadli.w r3,  -2444(r30)
00181c  d7e10400  jal 9996
001820  e301ffec  loadli.w r3,  -2440(r30)
001824  d7e10400  jal 9996
001828  e341ffec  loadli.w r3,  -2436(r30)
00182c  d7e10400  jal 9996
001830  e3010fed  loadli.w r3,  -2432(r30)
001834  d7e10400  jal 9996
001838  e3410fed  loadli.w r3,  -2428(r30)
00183c  d7e10400  jal 9996
001840  e3011fed  loadli.w r3,  -2424(r30)
001844  d7e10400  jal 9996
001848  e3411fed  loadli.w r3,  -2420(r30)
00184c  d7e10400  jal 9996
001850  e3012fed  loadli.w r3,  -2416(r30)
001854  d7e10400  jal 9996
001858  e3412fed  loadli.w r3,  -2412(r30)
00185c  d7e10400  jal 9996
001860  e3013fed  loadli.w r3,  -2408(r30)
001864  d7e10400  jal 9996
001868  e3413fed  loadli.w r3,  -2404(r30)
00186c  d7e10400  jal 9996
001870  e3014fed  loadli.w r3,  -2400(r30)
001874  d7e10400  jal 9996
001878  e3414fed  loadli.w r3,  -2396(r30)
00187c  d7e10400  jal 9996
001880  e3015fed  loadli.w r3,  -2392(r30)
001884  d7e10400  jal 9996
001888  e3415fed  loadli.w r3,  -2388(r30)
00188c  d7e10400  jal 9996
001890  e3016fed  loadli.w r3,  -2384(r30)
001894  d7e10400  jal 9996
001898  e3416fed  loadli.w r3,  -2380(r30)
00189c  d7e10400  jal 9996
0018a0  e3017fed  loadli.w r3,  -2376(r30)
0018a4  d7e10400  jal 9996
0018a8  e3417fed  loadli.w r3,  -2372(r30)
0018ac  d7e10400  jal 9996
0018b0  e3018fed  loadli.w r3,  -2368(r30)
0018b4  d7e10400  jal 9996
0018b8  e3418fed  loadli.w r3,  -2364(r30)
0018bc  d7e10400  jal 9996
0018c0  e3019fed  loadli.w r3,  -2360(r30)
0018c4  d7e10400  jal 9996
0018c8  e3419fed  loadli.w r3,  -2356(r30)
0018cc  d7e10400  jal 9996
0018d0  e301afed  loadli.w r3,  -2352(r30)
0018d4  d7e10400  jal 9996
0018d8  e341afed  loadli.w r3,  -2348(r30)
0018dc  d7e10400  jal 9996
0018e0  e301bfed  loadli.w r3,  -2344(r30)
0018e4  d7e10400  jal 9996
0018e8  e341bfed  loadli.w r3,  -2340(r30)
0018ec  d7e10400  jal 9996
0018f0  e301cfed  loadli.w r3,  -2336(r30)
0018f4  d7e10400  jal 9996
0018f8  e341cfed  loadli.w r3,  -2332(r30)
0018fc  d7e10400  jal 9996
001900  e301dfed  loadli.w r3,  -2328(r30)
001904  d7e10400  jal 9996
001908  e341dfed  loadli.w r3,  -2324(r30)
00190c  d7e10400  jal 9996
001910  e301efed  loadli.w r3,  -2320(r30)
001914  d7e10400  jal 9996
001918  e341efed  loadli.w r3,  -2316(r30)
00191c  d7e10400  jal 9996
001920  e301ffed  loadli.w r3,  -2312(r30)
001924  d7e10400  jal 9996
001928  e341ffed  loadli.w r3,  -2308(r30)
00192c  d7e10400  jal 9996
001930  e3010fee  loadli.w r3,  -2304(r30)
001934  d7e10400  jal 9996
001938  e3410fee  loadli.w r3,  -2300(r30)
00193c  d7e10400  jal 9996
001940  e3011fee  loadli.w r3,  -2296(r30)
001944  d7e10400  jal 9996
001948  e3411fee  loadli.w r3,  -2292(r30)
00194c  d7e10400  jal 9996
001950  e3012fee  loadli.w r3,  -2288(r30)
001954  d7e10400  jal 9996
001958  e3412fee  loadli.w r3,  -2284(r30)
00195c  d7e10400  jal 9996
001960  e3013fee  loadli.w r3,  -2280(r30)
001964  d7e10400  jal 9996
001968  e3413fee  loadli.w r3,  -2276(r30)
00196c  d7e10400  jal 9996
001970  e3014fee  loadli.w r3,  -2272(r30)
001974  d7e10400  jal 9996
001978  e3414fee  loadli.w r3,  -2268(r30)
00197c  d7e10400  jal 9996
001980  e3018ff5  loadli.w r3,  -1344(r30)
001984  d7e10400  jal 9996
001988  63097fef  loadli.w r18,  -2120(r30)
00198c  e3487fef  loadli.w r17,  -2116(r30)
001990  73602b00  stores.w r2, 0(r22)
001994  00a00300  mfence { lm, sm, gm }
001998  80210904  csr_set csr3, r18
00199c  00d00100  sync_group
0019a0  ef400d00  loads.w r1, 0(r26)
0019a4  1f018fee  addli r2, r30, -2240
0019a8  9f090ffe  addli r19, r30, -256
0019ac  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0019b0  6a940022  vor.f.mz vr8{mr1}, r1, vr0
0019b4  73601d10  stores.w r1, 256(r26)
0019b8  9f000ff3  addli r1, r30, -1664
0019bc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0019c0  9f008ff2  addli r1, r30, -1728
0019c4  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0019c8  9f000ff2  addli r1, r30, -1792
0019cc  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0019d0  9f008ff1  addli r1, r30, -1856
0019d4  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0019d8  9f000ff1  addli r1, r30, -1920
0019dc  1e108002  vsub.f.mz.rn vr0{mr1}, vr0, vr8
0019e0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0019e4  9f008ff0  addli r1, r30, -1984
0019e8  9e908002  vsub.f.mz.rn vr1{mr1}, vr1, vr8
0019ec  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0019f0  9f000ff0  addli r1, r30, -2048
0019f4  1e118102  vsub.f.mz.rn vr2{mr1}, vr2, vr8
0019f8  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0019fc  9f008fef  addli r1, r30, -2112
001a00  9e918102  vsub.f.mz.rn vr3{mr1}, vr3, vr8
001a04  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
001a08  1e128202  vsub.f.mz.rn vr4{mr1}, vr4, vr8
001a0c  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
001a10  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
001a14  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
001a18  9e928202  vsub.f.mz.rn vr5{mr1}, vr5, vr8
001a1c  461c3fe2  vstore_mask16.mz vr3{mr1}, 1984(r30)
001a20  00a00000  mfence { lm }
001a24  e3800900  loadli.w r1,  0(r19)
001a28  63c10900  loadli.w r2,  4(r19)
001a2c  e3811900  loadli.w r3,  8(r19)
001a30  63c21900  loadli.w r4,  12(r19)
001a34  e3822900  loadli.w r5,  16(r19)
001a38  63c32900  loadli.w r6,  20(r19)
001a3c  e3833900  loadli.w r7,  24(r19)
001a40  63c43900  loadli.w r8,  28(r19)
001a44  e3844900  loadli.w r9,  32(r19)
001a48  63c54900  loadli.w r10,  36(r19)
001a4c  e3855900  loadli.w r11,  40(r19)
001a50  63c65900  loadli.w r12,  44(r19)
001a54  e3866900  loadli.w r13,  48(r19)
001a58  63c76900  loadli.w r14,  52(r19)
001a5c  e3877900  loadli.w r15,  56(r19)
001a60  63c87900  loadli.w r16,  60(r19)
001a64  8f800000  exp.f.rn r1, r1
001a68  0f010100  exp.f.rn r2, r2
001a6c  8f810100  exp.f.rn r3, r3
001a70  0f020200  exp.f.rn r4, r4
001a74  8f820200  exp.f.rn r5, r5
001a78  0f030300  exp.f.rn r6, r6
001a7c  8f830300  exp.f.rn r7, r7
001a80  0f040400  exp.f.rn r8, r8
001a84  8f840400  exp.f.rn r9, r9
001a88  0f050500  exp.f.rn r10, r10
001a8c  8f850500  exp.f.rn r11, r11
001a90  0f060600  exp.f.rn r12, r12
001a94  8f860600  exp.f.rn r13, r13
001a98  0f070700  exp.f.rn r14, r14
001a9c  8f870700  exp.f.rn r15, r15
001aa0  0f080800  exp.f.rn r16, r16
001aa4  67801900  storeli.w r1, 0(r19)
001aa8  67c02900  storeli.w r2, 4(r19)
001aac  e7803900  storeli.w r3, 8(r19)
001ab0  e7c04900  storeli.w r4, 12(r19)
001ab4  67815900  storeli.w r5, 16(r19)
001ab8  67c16900  storeli.w r6, 20(r19)
001abc  e7817900  storeli.w r7, 24(r19)
001ac0  e7c18900  storeli.w r8, 28(r19)
001ac4  67829900  storeli.w r9, 32(r19)
001ac8  67c2a900  storeli.w r10, 36(r19)
001acc  e782b900  storeli.w r11, 40(r19)
001ad0  e7c2c900  storeli.w r12, 44(r19)
001ad4  6783d900  storeli.w r13, 48(r19)
001ad8  67c3e900  storeli.w r14, 52(r19)
001adc  e783f900  storeli.w r15, 56(r19)
001ae0  e7c30901  storeli.w r16, 60(r19)
001ae4  e3808900  loadli.w r1,  64(r19)
001ae8  63c18900  loadli.w r2,  68(r19)
001aec  e3819900  loadli.w r3,  72(r19)
001af0  63c29900  loadli.w r4,  76(r19)
001af4  e382a900  loadli.w r5,  80(r19)
001af8  63c3a900  loadli.w r6,  84(r19)
001afc  e383b900  loadli.w r7,  88(r19)
001b00  63c4b900  loadli.w r8,  92(r19)
001b04  e384c900  loadli.w r9,  96(r19)
001b08  63c5c900  loadli.w r10,  100(r19)
001b0c  e385d900  loadli.w r11,  104(r19)
001b10  63c6d900  loadli.w r12,  108(r19)
001b14  e386e900  loadli.w r13,  112(r19)
001b18  63c7e900  loadli.w r14,  116(r19)
001b1c  e387f900  loadli.w r15,  120(r19)
001b20  63c8f900  loadli.w r16,  124(r19)
001b24  8f800000  exp.f.rn r1, r1
001b28  0f010100  exp.f.rn r2, r2
001b2c  8f810100  exp.f.rn r3, r3
001b30  0f020200  exp.f.rn r4, r4
001b34  8f820200  exp.f.rn r5, r5
001b38  0f030300  exp.f.rn r6, r6
001b3c  8f830300  exp.f.rn r7, r7
001b40  0f040400  exp.f.rn r8, r8
001b44  8f840400  exp.f.rn r9, r9
001b48  0f050500  exp.f.rn r10, r10
001b4c  8f850500  exp.f.rn r11, r11
001b50  0f060600  exp.f.rn r12, r12
001b54  8f860600  exp.f.rn r13, r13
001b58  0f070700  exp.f.rn r14, r14
001b5c  8f870700  exp.f.rn r15, r15
001b60  0f080800  exp.f.rn r16, r16
001b64  67841900  storeli.w r1, 64(r19)
001b68  67c42900  storeli.w r2, 68(r19)
001b6c  e7843900  storeli.w r3, 72(r19)
001b70  e7c44900  storeli.w r4, 76(r19)
001b74  67855900  storeli.w r5, 80(r19)
001b78  67c56900  storeli.w r6, 84(r19)
001b7c  e7857900  storeli.w r7, 88(r19)
001b80  e7c58900  storeli.w r8, 92(r19)
001b84  67869900  storeli.w r9, 96(r19)
001b88  67c6a900  storeli.w r10, 100(r19)
001b8c  e786b900  storeli.w r11, 104(r19)
001b90  e7c6c900  storeli.w r12, 108(r19)
001b94  6787d900  storeli.w r13, 112(r19)
001b98  67c7e900  storeli.w r14, 116(r19)
001b9c  e787f900  storeli.w r15, 120(r19)
001ba0  e7c70901  storeli.w r16, 124(r19)
001ba4  e3800901  loadli.w r1,  128(r19)
001ba8  63c10901  loadli.w r2,  132(r19)
001bac  e3811901  loadli.w r3,  136(r19)
001bb0  63c21901  loadli.w r4,  140(r19)
001bb4  e3822901  loadli.w r5,  144(r19)
001bb8  63c32901  loadli.w r6,  148(r19)
001bbc  e3833901  loadli.w r7,  152(r19)
001bc0  63c43901  loadli.w r8,  156(r19)
001bc4  e3844901  loadli.w r9,  160(r19)
001bc8  63c54901  loadli.w r10,  164(r19)
001bcc  e3855901  loadli.w r11,  168(r19)
001bd0  63c65901  loadli.w r12,  172(r19)
001bd4  e3866901  loadli.w r13,  176(r19)
001bd8  63c76901  loadli.w r14,  180(r19)
001bdc  e3877901  loadli.w r15,  184(r19)
001be0  63c87901  loadli.w r16,  188(r19)
001be4  8f800000  exp.f.rn r1, r1
001be8  0f010100  exp.f.rn r2, r2
001bec  8f810100  exp.f.rn r3, r3
001bf0  0f020200  exp.f.rn r4, r4
001bf4  8f820200  exp.f.rn r5, r5
001bf8  0f030300  exp.f.rn r6, r6
001bfc  8f830300  exp.f.rn r7, r7
001c00  0f040400  exp.f.rn r8, r8
001c04  8f840400  exp.f.rn r9, r9
001c08  0f050500  exp.f.rn r10, r10
001c0c  8f850500  exp.f.rn r11, r11
001c10  0f060600  exp.f.rn r12, r12
001c14  8f860600  exp.f.rn r13, r13
001c18  0f070700  exp.f.rn r14, r14
001c1c  8f870700  exp.f.rn r15, r15
001c20  0f080800  exp.f.rn r16, r16
001c24  67881900  storeli.w r1, 128(r19)
001c28  67c82900  storeli.w r2, 132(r19)
001c2c  e7883900  storeli.w r3, 136(r19)
001c30  e7c84900  storeli.w r4, 140(r19)
001c34  67895900  storeli.w r5, 144(r19)
001c38  67c96900  storeli.w r6, 148(r19)
001c3c  e7897900  storeli.w r7, 152(r19)
001c40  e7c98900  storeli.w r8, 156(r19)
001c44  678a9900  storeli.w r9, 160(r19)
001c48  67caa900  storeli.w r10, 164(r19)
001c4c  e78ab900  storeli.w r11, 168(r19)
001c50  e7cac900  storeli.w r12, 172(r19)
001c54  678bd900  storeli.w r13, 176(r19)
001c58  67cbe900  storeli.w r14, 180(r19)
001c5c  e78bf900  storeli.w r15, 184(r19)
001c60  e7cb0901  storeli.w r16, 188(r19)
001c64  e3808901  loadli.w r1,  192(r19)
001c68  63c18901  loadli.w r2,  196(r19)
001c6c  e3819901  loadli.w r3,  200(r19)
001c70  63c29901  loadli.w r4,  204(r19)
001c74  e382a901  loadli.w r5,  208(r19)
001c78  63c3a901  loadli.w r6,  212(r19)
001c7c  e383b901  loadli.w r7,  216(r19)
001c80  63c4b901  loadli.w r8,  220(r19)
001c84  e384c901  loadli.w r9,  224(r19)
001c88  63c5c901  loadli.w r10,  228(r19)
001c8c  e385d901  loadli.w r11,  232(r19)
001c90  63c6d901  loadli.w r12,  236(r19)
001c94  e386e901  loadli.w r13,  240(r19)
001c98  63c7e901  loadli.w r14,  244(r19)
001c9c  e387f901  loadli.w r15,  248(r19)
001ca0  63c8f901  loadli.w r16,  252(r19)
001ca4  8f800000  exp.f.rn r1, r1
001ca8  0f010100  exp.f.rn r2, r2
001cac  8f810100  exp.f.rn r3, r3
001cb0  0f020200  exp.f.rn r4, r4
001cb4  8f820200  exp.f.rn r5, r5
001cb8  0f030300  exp.f.rn r6, r6
001cbc  8f830300  exp.f.rn r7, r7
001cc0  0f040400  exp.f.rn r8, r8
001cc4  8f840400  exp.f.rn r9, r9
001cc8  0f050500  exp.f.rn r10, r10
001ccc  8f850500  exp.f.rn r11, r11
001cd0  0f060600  exp.f.rn r12, r12
001cd4  8f860600  exp.f.rn r13, r13
001cd8  0f070700  exp.f.rn r14, r14
001cdc  8f870700  exp.f.rn r15, r15
001ce0  0f080800  exp.f.rn r16, r16
001ce4  678c1900  storeli.w r1, 192(r19)
001ce8  67cc2900  storeli.w r2, 196(r19)
001cec  e78c3900  storeli.w r3, 200(r19)
001cf0  e7cc4900  storeli.w r4, 204(r19)
001cf4  678d5900  storeli.w r5, 208(r19)
001cf8  67cd6900  storeli.w r6, 212(r19)
001cfc  e78d7900  storeli.w r7, 216(r19)
001d00  e7cd8900  storeli.w r8, 220(r19)
001d04  678e9900  storeli.w r9, 224(r19)
001d08  67cea900  storeli.w r10, 228(r19)
001d0c  e78eb900  storeli.w r11, 232(r19)
001d10  e7cec900  storeli.w r12, 236(r19)
001d14  678fd900  storeli.w r13, 240(r19)
001d18  67cfe900  storeli.w r14, 244(r19)
001d1c  e78ff900  storeli.w r15, 248(r19)
001d20  e7cf0901  storeli.w r16, 252(r19)
001d24  00a00000  mfence { lm }
001d28  1e138302  vsub.f.mz.rn vr6{mr1}, vr6, vr8
001d2c  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
001d30  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
001d34  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
001d38  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
001d3c  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
001d40  9e938302  vsub.f.mz.rn vr7{mr1}, vr7, vr8
001d44  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
001d48  46186fe2  vstore_mask16.mz vr6{mr1}, 1920(r30)
001d4c  461c7fe2  vstore_mask16.mz vr7{mr1}, 1984(r30)
001d50  00a00000  mfence { lm }
001d54  e3800900  loadli.w r1,  0(r19)
001d58  63c10900  loadli.w r2,  4(r19)
001d5c  e3811900  loadli.w r3,  8(r19)
001d60  63c21900  loadli.w r4,  12(r19)
001d64  e3822900  loadli.w r5,  16(r19)
001d68  63c32900  loadli.w r6,  20(r19)
001d6c  e3833900  loadli.w r7,  24(r19)
001d70  63c43900  loadli.w r8,  28(r19)
001d74  e3844900  loadli.w r9,  32(r19)
001d78  63c54900  loadli.w r10,  36(r19)
001d7c  e3855900  loadli.w r11,  40(r19)
001d80  63c65900  loadli.w r12,  44(r19)
001d84  e3866900  loadli.w r13,  48(r19)
001d88  63c76900  loadli.w r14,  52(r19)
001d8c  e3877900  loadli.w r15,  56(r19)
001d90  63c87900  loadli.w r16,  60(r19)
001d94  8f800000  exp.f.rn r1, r1
001d98  0f010100  exp.f.rn r2, r2
001d9c  8f810100  exp.f.rn r3, r3
001da0  0f020200  exp.f.rn r4, r4
001da4  8f820200  exp.f.rn r5, r5
001da8  0f030300  exp.f.rn r6, r6
001dac  8f830300  exp.f.rn r7, r7
001db0  0f040400  exp.f.rn r8, r8
001db4  8f840400  exp.f.rn r9, r9
001db8  0f050500  exp.f.rn r10, r10
001dbc  8f850500  exp.f.rn r11, r11
001dc0  0f060600  exp.f.rn r12, r12
001dc4  8f860600  exp.f.rn r13, r13
001dc8  0f070700  exp.f.rn r14, r14
001dcc  8f870700  exp.f.rn r15, r15
001dd0  0f080800  exp.f.rn r16, r16
001dd4  67801900  storeli.w r1, 0(r19)
001dd8  67c02900  storeli.w r2, 4(r19)
001ddc  e7803900  storeli.w r3, 8(r19)
001de0  e7c04900  storeli.w r4, 12(r19)
001de4  67815900  storeli.w r5, 16(r19)
001de8  67c16900  storeli.w r6, 20(r19)
001dec  e7817900  storeli.w r7, 24(r19)
001df0  e7c18900  storeli.w r8, 28(r19)
001df4  67829900  storeli.w r9, 32(r19)
001df8  67c2a900  storeli.w r10, 36(r19)
001dfc  e782b900  storeli.w r11, 40(r19)
001e00  e7c2c900  storeli.w r12, 44(r19)
001e04  6783d900  storeli.w r13, 48(r19)
001e08  67c3e900  storeli.w r14, 52(r19)
001e0c  e783f900  storeli.w r15, 56(r19)
001e10  e7c30901  storeli.w r16, 60(r19)
001e14  e3808900  loadli.w r1,  64(r19)
001e18  63c18900  loadli.w r2,  68(r19)
001e1c  e3819900  loadli.w r3,  72(r19)
001e20  63c29900  loadli.w r4,  76(r19)
001e24  e382a900  loadli.w r5,  80(r19)
001e28  63c3a900  loadli.w r6,  84(r19)
001e2c  e383b900  loadli.w r7,  88(r19)
001e30  63c4b900  loadli.w r8,  92(r19)
001e34  e384c900  loadli.w r9,  96(r19)
001e38  63c5c900  loadli.w r10,  100(r19)
001e3c  e385d900  loadli.w r11,  104(r19)
001e40  63c6d900  loadli.w r12,  108(r19)
001e44  e386e900  loadli.w r13,  112(r19)
001e48  63c7e900  loadli.w r14,  116(r19)
001e4c  e387f900  loadli.w r15,  120(r19)
001e50  63c8f900  loadli.w r16,  124(r19)
001e54  8f800000  exp.f.rn r1, r1
001e58  0f010100  exp.f.rn r2, r2
001e5c  8f810100  exp.f.rn r3, r3
001e60  0f020200  exp.f.rn r4, r4
001e64  8f820200  exp.f.rn r5, r5
001e68  0f030300  exp.f.rn r6, r6
001e6c  8f830300  exp.f.rn r7, r7
001e70  0f040400  exp.f.rn r8, r8
001e74  8f840400  exp.f.rn r9, r9
001e78  0f050500  exp.f.rn r10, r10
001e7c  8f850500  exp.f.rn r11, r11
001e80  0f060600  exp.f.rn r12, r12
001e84  8f860600  exp.f.rn r13, r13
001e88  0f070700  exp.f.rn r14, r14
001e8c  8f870700  exp.f.rn r15, r15
001e90  0f080800  exp.f.rn r16, r16
001e94  67841900  storeli.w r1, 64(r19)
001e98  67c42900  storeli.w r2, 68(r19)
001e9c  e7843900  storeli.w r3, 72(r19)
001ea0  e7c44900  storeli.w r4, 76(r19)
001ea4  67855900  storeli.w r5, 80(r19)
001ea8  67c56900  storeli.w r6, 84(r19)
001eac  e7857900  storeli.w r7, 88(r19)
001eb0  e7c58900  storeli.w r8, 92(r19)
001eb4  67869900  storeli.w r9, 96(r19)
001eb8  67c6a900  storeli.w r10, 100(r19)
001ebc  e786b900  storeli.w r11, 104(r19)
001ec0  e7c6c900  storeli.w r12, 108(r19)
001ec4  6787d900  storeli.w r13, 112(r19)
001ec8  67c7e900  storeli.w r14, 116(r19)
001ecc  e787f900  storeli.w r15, 120(r19)
001ed0  e7c70901  storeli.w r16, 124(r19)
001ed4  e3800901  loadli.w r1,  128(r19)
001ed8  63c10901  loadli.w r2,  132(r19)
001edc  e3811901  loadli.w r3,  136(r19)
001ee0  63c21901  loadli.w r4,  140(r19)
001ee4  e3822901  loadli.w r5,  144(r19)
001ee8  63c32901  loadli.w r6,  148(r19)
001eec  e3833901  loadli.w r7,  152(r19)
001ef0  63c43901  loadli.w r8,  156(r19)
001ef4  e3844901  loadli.w r9,  160(r19)
001ef8  63c54901  loadli.w r10,  164(r19)
001efc  e3855901  loadli.w r11,  168(r19)
001f00  63c65901  loadli.w r12,  172(r19)
001f04  e3866901  loadli.w r13,  176(r19)
001f08  63c76901  loadli.w r14,  180(r19)
001f0c  e3877901  loadli.w r15,  184(r19)
001f10  63c87901  loadli.w r16,  188(r19)
001f14  8f800000  exp.f.rn r1, r1
001f18  0f010100  exp.f.rn r2, r2
001f1c  8f810100  exp.f.rn r3, r3
001f20  0f020200  exp.f.rn r4, r4
001f24  8f820200  exp.f.rn r5, r5
001f28  0f030300  exp.f.rn r6, r6
001f2c  8f830300  exp.f.rn r7, r7
001f30  0f040400  exp.f.rn r8, r8
001f34  8f840400  exp.f.rn r9, r9
001f38  0f050500  exp.f.rn r10, r10
001f3c  8f850500  exp.f.rn r11, r11
001f40  0f060600  exp.f.rn r12, r12
001f44  8f860600  exp.f.rn r13, r13
001f48  0f070700  exp.f.rn r14, r14
001f4c  8f870700  exp.f.rn r15, r15
001f50  0f080800  exp.f.rn r16, r16
001f54  67881900  storeli.w r1, 128(r19)
001f58  67c82900  storeli.w r2, 132(r19)
001f5c  e7883900  storeli.w r3, 136(r19)
001f60  e7c84900  storeli.w r4, 140(r19)
001f64  67895900  storeli.w r5, 144(r19)
001f68  67c96900  storeli.w r6, 148(r19)
001f6c  e7897900  storeli.w r7, 152(r19)
001f70  e7c98900  storeli.w r8, 156(r19)
001f74  678a9900  storeli.w r9, 160(r19)
001f78  67caa900  storeli.w r10, 164(r19)
001f7c  e78ab900  storeli.w r11, 168(r19)
001f80  e7cac900  storeli.w r12, 172(r19)
001f84  678bd900  storeli.w r13, 176(r19)
001f88  67cbe900  storeli.w r14, 180(r19)
001f8c  e78bf900  storeli.w r15, 184(r19)
001f90  e7cb0901  storeli.w r16, 188(r19)
001f94  e3808901  loadli.w r1,  192(r19)
001f98  63c18901  loadli.w r2,  196(r19)
001f9c  e3819901  loadli.w r3,  200(r19)
001fa0  63c29901  loadli.w r4,  204(r19)
001fa4  e382a901  loadli.w r5,  208(r19)
001fa8  63c3a901  loadli.w r6,  212(r19)
001fac  e383b901  loadli.w r7,  216(r19)
001fb0  63c4b901  loadli.w r8,  220(r19)
001fb4  e384c901  loadli.w r9,  224(r19)
001fb8  63c5c901  loadli.w r10,  228(r19)
001fbc  e385d901  loadli.w r11,  232(r19)
001fc0  63c6d901  loadli.w r12,  236(r19)
001fc4  e386e901  loadli.w r13,  240(r19)
001fc8  63c7e901  loadli.w r14,  244(r19)
001fcc  e387f901  loadli.w r15,  248(r19)
001fd0  63c8f901  loadli.w r16,  252(r19)
001fd4  8f800000  exp.f.rn r1, r1
001fd8  0f010100  exp.f.rn r2, r2
001fdc  8f810100  exp.f.rn r3, r3
001fe0  0f020200  exp.f.rn r4, r4
001fe4  8f820200  exp.f.rn r5, r5
001fe8  0f030300  exp.f.rn r6, r6
001fec  8f830300  exp.f.rn r7, r7
001ff0  0f040400  exp.f.rn r8, r8
001ff4  8f840400  exp.f.rn r9, r9
001ff8  0f050500  exp.f.rn r10, r10
001ffc  8f850500  exp.f.rn r11, r11
002000  0f060600  exp.f.rn r12, r12
002004  8f860600  exp.f.rn r13, r13
002008  0f070700  exp.f.rn r14, r14
00200c  8f870700  exp.f.rn r15, r15
002010  0f080800  exp.f.rn r16, r16
002014  678c1900  storeli.w r1, 192(r19)
002018  67cc2900  storeli.w r2, 196(r19)
00201c  e78c3900  storeli.w r3, 200(r19)
002020  e7cc4900  storeli.w r4, 204(r19)
002024  678d5900  storeli.w r5, 208(r19)
002028  67cd6900  storeli.w r6, 212(r19)
00202c  e78d7900  storeli.w r7, 216(r19)
002030  e7cd8900  storeli.w r8, 220(r19)
002034  678e9900  storeli.w r9, 224(r19)
002038  67cea900  storeli.w r10, 228(r19)
00203c  e78eb900  storeli.w r11, 232(r19)
002040  e7cec900  storeli.w r12, 236(r19)
002044  678fd900  storeli.w r13, 240(r19)
002048  67cfe900  storeli.w r14, 244(r19)
00204c  e78ff900  storeli.w r15, 248(r19)
002050  e7cf0901  storeli.w r16, 252(r19)
002054  00a00000  mfence { lm }
002058  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
00205c  9f008ff5  addli r1, r30, -1344
002060  00a00000  mfence { lm }
002064  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
002068  9f000ff3  addli r1, r30, -1664
00206c  42128fe2  vload_mask16.mz vr4{mr1}, 1856(r30)
002070  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
002074  9f008ff2  addli r1, r30, -1728
002078  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
00207c  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
002080  9f000ff2  addli r1, r30, -1792
002084  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
002088  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00208c  9f000ff4  addli r1, r30, -1536
002090  c2140f82  vload_mask16.mz vr9{mr1}, 1024(r30)
002094  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
002098  c2158f82  vload_mask16.mz vr11{mr1}, 1088(r30)
00209c  9694a402  vadd.f.mz.rn vr9{mr1}, vr9, vr10
0020a0  42150f83  vload_mask16.mz vr10{mr1}, 1152(r30)
0020a4  42128f83  vload_mask16.mz vr4{mr1}, 1216(r30)
0020a8  c2128fc2  vload_mask16.mz vr5{mr1}, 1600(r30)
0020ac  42130fc3  vload_mask16.mz vr6{mr1}, 1664(r30)
0020b0  c2138fc3  vload_mask16.mz vr7{mr1}, 1728(r30)
0020b4  16136502  vadd.f.mz.rn vr6{mr1}, vr10, vr6
0020b8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0020bc  9f008ff4  addli r1, r30, -1472
0020c0  96925502  vadd.f.mz.rn vr5{mr1}, vr11, vr5
0020c4  16127202  vadd.f.mz.rn vr4{mr1}, vr4, vr7
0020c8  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
0020cc  9f005fee  addli r1, r30, -2264
0020d0  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
0020d4  63407ff5  loadli.w zero,  -1348(r30)
0020d8  7e0000e0  vmmov mr0, zero
0020dc  17200000  xor zero, zero, zero
0020e0  ee939530  vor.f.mh vr7{mr0}, vr11, vr9
0020e4  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
0020e8  6340fff3  loadli.w zero,  -1540(r30)
0020ec  7e0000e0  vmmov mr0, zero
0020f0  17200000  xor zero, zero, zero
0020f4  ee945530  vor.f.mh vr9{mr0}, vr11, vr5
0020f8  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
0020fc  63800000  loadli.w zero,  0(r1)
002100  7e0100e0  vmmov mr2, zero
002104  17200000  xor zero, zero, zero
002108  ee926534  vor.f.mh vr5{mr2}, vr11, vr6
00210c  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
002110  6300fff3  loadli.w zero,  -1544(r30)
002114  fe0100e0  vmmov mr3, zero
002118  9e928202  vsub.f.mz.rn vr5{mr1}, vr5, vr8
00211c  17200000  xor zero, zero, zero
002120  6e934536  vor.f.mh vr6{mr3}, vr11, vr4
002124  1e928302  vsub.f.mz.rn vr4{mr1}, vr7, vr8
002128  9e938402  vsub.f.mz.rn vr7{mr1}, vr9, vr8
00212c  1e138302  vsub.f.mz.rn vr6{mr1}, vr6, vr8
002130  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
002134  46147fe2  vstore_mask16.mz vr7{mr1}, 1856(r30)
002138  46185fe2  vstore_mask16.mz vr5{mr1}, 1920(r30)
00213c  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
002140  00a00000  mfence { lm }
002144  e3800900  loadli.w r1,  0(r19)
002148  63c10900  loadli.w r2,  4(r19)
00214c  e3811900  loadli.w r3,  8(r19)
002150  63c21900  loadli.w r4,  12(r19)
002154  e3822900  loadli.w r5,  16(r19)
002158  63c32900  loadli.w r6,  20(r19)
00215c  e3833900  loadli.w r7,  24(r19)
002160  63c43900  loadli.w r8,  28(r19)
002164  e3844900  loadli.w r9,  32(r19)
002168  63c54900  loadli.w r10,  36(r19)
00216c  e3855900  loadli.w r11,  40(r19)
002170  63c65900  loadli.w r12,  44(r19)
002174  e3866900  loadli.w r13,  48(r19)
002178  63c76900  loadli.w r14,  52(r19)
00217c  e3877900  loadli.w r15,  56(r19)
002180  63c87900  loadli.w r16,  60(r19)
002184  8f800000  exp.f.rn r1, r1
002188  0f010100  exp.f.rn r2, r2
00218c  8f810100  exp.f.rn r3, r3
002190  0f020200  exp.f.rn r4, r4
002194  8f820200  exp.f.rn r5, r5
002198  0f030300  exp.f.rn r6, r6
00219c  8f830300  exp.f.rn r7, r7
0021a0  0f040400  exp.f.rn r8, r8
0021a4  8f840400  exp.f.rn r9, r9
0021a8  0f050500  exp.f.rn r10, r10
0021ac  8f850500  exp.f.rn r11, r11
0021b0  0f060600  exp.f.rn r12, r12
0021b4  8f860600  exp.f.rn r13, r13
0021b8  0f070700  exp.f.rn r14, r14
0021bc  8f870700  exp.f.rn r15, r15
0021c0  0f080800  exp.f.rn r16, r16
0021c4  67801900  storeli.w r1, 0(r19)
0021c8  67c02900  storeli.w r2, 4(r19)
0021cc  e7803900  storeli.w r3, 8(r19)
0021d0  e7c04900  storeli.w r4, 12(r19)
0021d4  67815900  storeli.w r5, 16(r19)
0021d8  67c16900  storeli.w r6, 20(r19)
0021dc  e7817900  storeli.w r7, 24(r19)
0021e0  e7c18900  storeli.w r8, 28(r19)
0021e4  67829900  storeli.w r9, 32(r19)
0021e8  67c2a900  storeli.w r10, 36(r19)
0021ec  e782b900  storeli.w r11, 40(r19)
0021f0  e7c2c900  storeli.w r12, 44(r19)
0021f4  6783d900  storeli.w r13, 48(r19)
0021f8  67c3e900  storeli.w r14, 52(r19)
0021fc  e783f900  storeli.w r15, 56(r19)
002200  e7c30901  storeli.w r16, 60(r19)
002204  e3808900  loadli.w r1,  64(r19)
002208  63c18900  loadli.w r2,  68(r19)
00220c  e3819900  loadli.w r3,  72(r19)
002210  63c29900  loadli.w r4,  76(r19)
002214  e382a900  loadli.w r5,  80(r19)
002218  63c3a900  loadli.w r6,  84(r19)
00221c  e383b900  loadli.w r7,  88(r19)
002220  63c4b900  loadli.w r8,  92(r19)
002224  e384c900  loadli.w r9,  96(r19)
002228  63c5c900  loadli.w r10,  100(r19)
00222c  e385d900  loadli.w r11,  104(r19)
002230  63c6d900  loadli.w r12,  108(r19)
002234  e386e900  loadli.w r13,  112(r19)
002238  63c7e900  loadli.w r14,  116(r19)
00223c  e387f900  loadli.w r15,  120(r19)
002240  63c8f900  loadli.w r16,  124(r19)
002244  8f800000  exp.f.rn r1, r1
002248  0f010100  exp.f.rn r2, r2
00224c  8f810100  exp.f.rn r3, r3
002250  0f020200  exp.f.rn r4, r4
002254  8f820200  exp.f.rn r5, r5
002258  0f030300  exp.f.rn r6, r6
00225c  8f830300  exp.f.rn r7, r7
002260  0f040400  exp.f.rn r8, r8
002264  8f840400  exp.f.rn r9, r9
002268  0f050500  exp.f.rn r10, r10
00226c  8f850500  exp.f.rn r11, r11
002270  0f060600  exp.f.rn r12, r12
002274  8f860600  exp.f.rn r13, r13
002278  0f070700  exp.f.rn r14, r14
00227c  8f870700  exp.f.rn r15, r15
002280  0f080800  exp.f.rn r16, r16
002284  67841900  storeli.w r1, 64(r19)
002288  67c42900  storeli.w r2, 68(r19)
00228c  e7843900  storeli.w r3, 72(r19)
002290  e7c44900  storeli.w r4, 76(r19)
002294  67855900  storeli.w r5, 80(r19)
002298  67c56900  storeli.w r6, 84(r19)
00229c  e7857900  storeli.w r7, 88(r19)
0022a0  e7c58900  storeli.w r8, 92(r19)
0022a4  67869900  storeli.w r9, 96(r19)
0022a8  67c6a900  storeli.w r10, 100(r19)
0022ac  e786b900  storeli.w r11, 104(r19)
0022b0  e7c6c900  storeli.w r12, 108(r19)
0022b4  6787d900  storeli.w r13, 112(r19)
0022b8  67c7e900  storeli.w r14, 116(r19)
0022bc  e787f900  storeli.w r15, 120(r19)
0022c0  e7c70901  storeli.w r16, 124(r19)
0022c4  e3800901  loadli.w r1,  128(r19)
0022c8  63c10901  loadli.w r2,  132(r19)
0022cc  e3811901  loadli.w r3,  136(r19)
0022d0  63c21901  loadli.w r4,  140(r19)
0022d4  e3822901  loadli.w r5,  144(r19)
0022d8  63c32901  loadli.w r6,  148(r19)
0022dc  e3833901  loadli.w r7,  152(r19)
0022e0  63c43901  loadli.w r8,  156(r19)
0022e4  e3844901  loadli.w r9,  160(r19)
0022e8  63c54901  loadli.w r10,  164(r19)
0022ec  e3855901  loadli.w r11,  168(r19)
0022f0  63c65901  loadli.w r12,  172(r19)
0022f4  e3866901  loadli.w r13,  176(r19)
0022f8  63c76901  loadli.w r14,  180(r19)
0022fc  e3877901  loadli.w r15,  184(r19)
002300  63c87901  loadli.w r16,  188(r19)
002304  8f800000  exp.f.rn r1, r1
002308  0f010100  exp.f.rn r2, r2
00230c  8f810100  exp.f.rn r3, r3
002310  0f020200  exp.f.rn r4, r4
002314  8f820200  exp.f.rn r5, r5
002318  0f030300  exp.f.rn r6, r6
00231c  8f830300  exp.f.rn r7, r7
002320  0f040400  exp.f.rn r8, r8
002324  8f840400  exp.f.rn r9, r9
002328  0f050500  exp.f.rn r10, r10
00232c  8f850500  exp.f.rn r11, r11
002330  0f060600  exp.f.rn r12, r12
002334  8f860600  exp.f.rn r13, r13
002338  0f070700  exp.f.rn r14, r14
00233c  8f870700  exp.f.rn r15, r15
002340  0f080800  exp.f.rn r16, r16
002344  67881900  storeli.w r1, 128(r19)
002348  67c82900  storeli.w r2, 132(r19)
00234c  e7883900  storeli.w r3, 136(r19)
002350  e7c84900  storeli.w r4, 140(r19)
002354  67895900  storeli.w r5, 144(r19)
002358  67c96900  storeli.w r6, 148(r19)
00235c  e7897900  storeli.w r7, 152(r19)
002360  e7c98900  storeli.w r8, 156(r19)
002364  678a9900  storeli.w r9, 160(r19)
002368  67caa900  storeli.w r10, 164(r19)
00236c  e78ab900  storeli.w r11, 168(r19)
002370  e7cac900  storeli.w r12, 172(r19)
002374  678bd900  storeli.w r13, 176(r19)
002378  67cbe900  storeli.w r14, 180(r19)
00237c  e78bf900  storeli.w r15, 184(r19)
002380  e7cb0901  storeli.w r16, 188(r19)
002384  e3808901  loadli.w r1,  192(r19)
002388  63c18901  loadli.w r2,  196(r19)
00238c  e3819901  loadli.w r3,  200(r19)
002390  63c29901  loadli.w r4,  204(r19)
002394  e382a901  loadli.w r5,  208(r19)
002398  63c3a901  loadli.w r6,  212(r19)
00239c  e383b901  loadli.w r7,  216(r19)
0023a0  63c4b901  loadli.w r8,  220(r19)
0023a4  e384c901  loadli.w r9,  224(r19)
0023a8  63c5c901  loadli.w r10,  228(r19)
0023ac  e385d901  loadli.w r11,  232(r19)
0023b0  63c6d901  loadli.w r12,  236(r19)
0023b4  e386e901  loadli.w r13,  240(r19)
0023b8  63c7e901  loadli.w r14,  244(r19)
0023bc  e387f901  loadli.w r15,  248(r19)
0023c0  63c8f901  loadli.w r16,  252(r19)
0023c4  8f800000  exp.f.rn r1, r1
0023c8  0f010100  exp.f.rn r2, r2
0023cc  8f810100  exp.f.rn r3, r3
0023d0  0f020200  exp.f.rn r4, r4
0023d4  8f820200  exp.f.rn r5, r5
0023d8  0f030300  exp.f.rn r6, r6
0023dc  8f830300  exp.f.rn r7, r7
0023e0  0f040400  exp.f.rn r8, r8
0023e4  8f840400  exp.f.rn r9, r9
0023e8  0f050500  exp.f.rn r10, r10
0023ec  8f850500  exp.f.rn r11, r11
0023f0  0f060600  exp.f.rn r12, r12
0023f4  8f860600  exp.f.rn r13, r13
0023f8  0f070700  exp.f.rn r14, r14
0023fc  8f870700  exp.f.rn r15, r15
002400  0f080800  exp.f.rn r16, r16
002404  678c1900  storeli.w r1, 192(r19)
002408  67cc2900  storeli.w r2, 196(r19)
00240c  e78c3900  storeli.w r3, 200(r19)
002410  e7cc4900  storeli.w r4, 204(r19)
002414  678d5900  storeli.w r5, 208(r19)
002418  67cd6900  storeli.w r6, 212(r19)
00241c  e78d7900  storeli.w r7, 216(r19)
002420  e7cd8900  storeli.w r8, 220(r19)
002424  678e9900  storeli.w r9, 224(r19)
002428  67cea900  storeli.w r10, 228(r19)
00242c  e78eb900  storeli.w r11, 232(r19)
002430  e7cec900  storeli.w r12, 236(r19)
002434  678fd900  storeli.w r13, 240(r19)
002438  67cfe900  storeli.w r14, 244(r19)
00243c  e78ff900  storeli.w r15, 248(r19)
002440  e7cf0901  storeli.w r16, 252(r19)
002444  00a00000  mfence { lm }
002448  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
00244c  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
002450  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
002454  16124002  vadd.f.mz.rn vr4{mr1}, vr0, vr4
002458  96925002  vadd.f.mz.rn vr5{mr1}, vr1, vr5
00245c  16136102  vadd.f.mz.rn vr6{mr1}, vr2, vr6
002460  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002464  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
002468  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
00246c  96925102  vadd.f.mz.rn vr5{mr1}, vr3, vr5
002470  16145202  vadd.f.mz.rn vr8{mr1}, vr4, vr5
002474  fa100440  vextracti.f r1, 0(vr8)
002478  7a111440  vextracti.f r2, 1(vr8)
00247c  8be02010  add.f.rn r1, r1, r2
002480  7a112440  vextracti.f r2, 2(vr8)
002484  8b601110  add.f.rn r1, r2, r1
002488  7a113440  vextracti.f r2, 3(vr8)
00248c  8b601110  add.f.rn r1, r2, r1
002490  7a114440  vextracti.f r2, 4(vr8)
002494  8b601110  add.f.rn r1, r2, r1
002498  7a115440  vextracti.f r2, 5(vr8)
00249c  8b601110  add.f.rn r1, r2, r1
0024a0  7a116440  vextracti.f r2, 6(vr8)
0024a4  8b601110  add.f.rn r1, r2, r1
0024a8  7a117440  vextracti.f r2, 7(vr8)
0024ac  8b601110  add.f.rn r1, r2, r1
0024b0  7a118440  vextracti.f r2, 8(vr8)
0024b4  8b601110  add.f.rn r1, r2, r1
0024b8  7a119440  vextracti.f r2, 9(vr8)
0024bc  8b601110  add.f.rn r1, r2, r1
0024c0  7a11a440  vextracti.f r2, 10(vr8)
0024c4  8b601110  add.f.rn r1, r2, r1
0024c8  7a11b440  vextracti.f r2, 11(vr8)
0024cc  8b601110  add.f.rn r1, r2, r1
0024d0  7a11c440  vextracti.f r2, 12(vr8)
0024d4  8b601110  add.f.rn r1, r2, r1
0024d8  7a11d440  vextracti.f r2, 13(vr8)
0024dc  8b601110  add.f.rn r1, r2, r1
0024e0  7a11e440  vextracti.f r2, 14(vr8)
0024e4  8b601110  add.f.rn r1, r2, r1
0024e8  7a11f440  vextracti.f r2, 15(vr8)
0024ec  8b601110  add.f.rn r1, r2, r1
0024f0  63411fef  loadli.w r2,  -2164(r30)
0024f4  73601100  stores.w r1, 0(r2)
0024f8  00a00300  mfence { lm, sm, gm }
0024fc  80210904  csr_set csr3, r18
002500  00d00100  sync_group
002504  3bb008f6  bneq r17, zero, -5108
002508  efc00b00  loads.w r1, 0(r23)
00250c  efc14b00  loads.w r3, 4(r23)
002510  6fc18b00  loads.w r2, 8(r23)
002514  8be03010  add.f.rn r1, r1, r3
002518  efc1cb00  loads.w r3, 12(r23)
00251c  8be02010  add.f.rn r1, r1, r2
002520  6fc10b01  loads.w r2, 16(r23)
002524  8be03010  add.f.rn r1, r1, r3
002528  efc14b01  loads.w r3, 20(r23)
00252c  8be02010  add.f.rn r1, r1, r2
002530  6fc18b01  loads.w r2, 24(r23)
002534  8be03010  add.f.rn r1, r1, r3
002538  efc1cb01  loads.w r3, 28(r23)
00253c  8be02010  add.f.rn r1, r1, r2
002540  6fc10b02  loads.w r2, 32(r23)
002544  8be03010  add.f.rn r1, r1, r3
002548  efc14b02  loads.w r3, 36(r23)
00254c  8be02010  add.f.rn r1, r1, r2
002550  6fc18b02  loads.w r2, 40(r23)
002554  8be03010  add.f.rn r1, r1, r3
002558  efc1cb02  loads.w r3, 44(r23)
00255c  8be02010  add.f.rn r1, r1, r2
002560  6fc10b03  loads.w r2, 48(r23)
002564  8be03010  add.f.rn r1, r1, r3
002568  efc14b03  loads.w r3, 52(r23)
00256c  8be02010  add.f.rn r1, r1, r2
002570  6fc18b03  loads.w r2, 56(r23)
002574  8be03010  add.f.rn r1, r1, r3
002578  efc1cb03  loads.w r3, 60(r23)
00257c  8be02010  add.f.rn r1, r1, r2
002580  6fc10b04  loads.w r2, 64(r23)
002584  8be03010  add.f.rn r1, r1, r3
002588  efc14b04  loads.w r3, 68(r23)
00258c  8be02010  add.f.rn r1, r1, r2
002590  6fc18b04  loads.w r2, 72(r23)
002594  8be03010  add.f.rn r1, r1, r3
002598  efc1cb04  loads.w r3, 76(r23)
00259c  8be02010  add.f.rn r1, r1, r2
0025a0  6fc10b05  loads.w r2, 80(r23)
0025a4  8be03010  add.f.rn r1, r1, r3
0025a8  efc14b05  loads.w r3, 84(r23)
0025ac  8be02010  add.f.rn r1, r1, r2
0025b0  6fc18b05  loads.w r2, 88(r23)
0025b4  8be03010  add.f.rn r1, r1, r3
0025b8  efc1cb05  loads.w r3, 92(r23)
0025bc  8be02010  add.f.rn r1, r1, r2
0025c0  6fc10b06  loads.w r2, 96(r23)
0025c4  8be03010  add.f.rn r1, r1, r3
0025c8  efc14b06  loads.w r3, 100(r23)
0025cc  8be02010  add.f.rn r1, r1, r2
0025d0  6fc18b06  loads.w r2, 104(r23)
0025d4  8be03010  add.f.rn r1, r1, r3
0025d8  efc1cb06  loads.w r3, 108(r23)
0025dc  8be02010  add.f.rn r1, r1, r2
0025e0  6fc10b07  loads.w r2, 112(r23)
0025e4  8be03010  add.f.rn r1, r1, r3
0025e8  efc14b07  loads.w r3, 116(r23)
0025ec  8be02010  add.f.rn r1, r1, r2
0025f0  6fc18b07  loads.w r2, 120(r23)
0025f4  8be03010  add.f.rn r1, r1, r3
0025f8  efc1cb07  loads.w r3, 124(r23)
0025fc  8be02010  add.f.rn r1, r1, r2
002600  6fc10b08  loads.w r2, 128(r23)
002604  8be03010  add.f.rn r1, r1, r3
002608  efc14b08  loads.w r3, 132(r23)
00260c  8be02010  add.f.rn r1, r1, r2
002610  6fc18b08  loads.w r2, 136(r23)
002614  8be03010  add.f.rn r1, r1, r3
002618  efc1cb08  loads.w r3, 140(r23)
00261c  8be02010  add.f.rn r1, r1, r2
002620  6fc10b09  loads.w r2, 144(r23)
002624  8be03010  add.f.rn r1, r1, r3
002628  efc14b09  loads.w r3, 148(r23)
00262c  8be02010  add.f.rn r1, r1, r2
002630  6fc18b09  loads.w r2, 152(r23)
002634  8be03010  add.f.rn r1, r1, r3
002638  efc1cb09  loads.w r3, 156(r23)
00263c  8be02010  add.f.rn r1, r1, r2
002640  6fc10b0a  loads.w r2, 160(r23)
002644  8be03010  add.f.rn r1, r1, r3
002648  efc14b0a  loads.w r3, 164(r23)
00264c  8be02010  add.f.rn r1, r1, r2
002650  6fc18b0a  loads.w r2, 168(r23)
002654  8be03010  add.f.rn r1, r1, r3
002658  efc1cb0a  loads.w r3, 172(r23)
00265c  8be02010  add.f.rn r1, r1, r2
002660  6fc10b0b  loads.w r2, 176(r23)
002664  8be03010  add.f.rn r1, r1, r3
002668  efc14b0b  loads.w r3, 180(r23)
00266c  8be02010  add.f.rn r1, r1, r2
002670  6fc18b0b  loads.w r2, 184(r23)
002674  8be03010  add.f.rn r1, r1, r3
002678  efc1cb0b  loads.w r3, 188(r23)
00267c  8be02010  add.f.rn r1, r1, r2
002680  6fc10b0c  loads.w r2, 192(r23)
002684  8be03010  add.f.rn r1, r1, r3
002688  efc14b0c  loads.w r3, 196(r23)
00268c  8be02010  add.f.rn r1, r1, r2
002690  6fc18b0c  loads.w r2, 200(r23)
002694  8be03010  add.f.rn r1, r1, r3
002698  efc1cb0c  loads.w r3, 204(r23)
00269c  8be02010  add.f.rn r1, r1, r2
0026a0  6fc10b0d  loads.w r2, 208(r23)
0026a4  8be03010  add.f.rn r1, r1, r3
0026a8  efc14b0d  loads.w r3, 212(r23)
0026ac  8be02010  add.f.rn r1, r1, r2
0026b0  6fc18b0d  loads.w r2, 216(r23)
0026b4  8be03010  add.f.rn r1, r1, r3
0026b8  efc1cb0d  loads.w r3, 220(r23)
0026bc  8be02010  add.f.rn r1, r1, r2
0026c0  6fc10b0e  loads.w r2, 224(r23)
0026c4  8be03010  add.f.rn r1, r1, r3
0026c8  efc14b0e  loads.w r3, 228(r23)
0026cc  8be02010  add.f.rn r1, r1, r2
0026d0  6fc18b0e  loads.w r2, 232(r23)
0026d4  8be03010  add.f.rn r1, r1, r3
0026d8  efc1cb0e  loads.w r3, 236(r23)
0026dc  8be02010  add.f.rn r1, r1, r2
0026e0  6fc10b0f  loads.w r2, 240(r23)
0026e4  8be03010  add.f.rn r1, r1, r3
0026e8  efc14b0f  loads.w r3, 244(r23)
0026ec  8be02010  add.f.rn r1, r1, r2
0026f0  6fc18b0f  loads.w r2, 248(r23)
0026f4  8be03010  add.f.rn r1, r1, r3
0026f8  efc1cb0f  loads.w r3, 252(r23)
0026fc  8be02010  add.f.rn r1, r1, r2
002700  8be03010  add.f.rn r1, r1, r3
002704  73e01b00  stores.w r1, 0(r23)
002708  5b41fdff  j -5624
00270c  9f8efeff  addli sp, sp, -8
002710  9f000100  addli r1, r2, 0
002714  2bf1ff7f  lui r2, 524287
002718  ab02807f  lui r5, 522240
00271c  67c0ee01  storeli.w r30, 4(sp)
002720  6780fe01  storeli.w r31, 0(sp)
002724  1f8f1e00  addli r30, sp, 8
002728  1b12f1ff  ori r4, r2, 4095
00272c  17814000  and r2, r1, r4
002730  13832204  setlt.u r6, r5, r2
002734  1f810100  addli r2, r3, 0
002738  bb210300  bneq r6, zero, 104
00273c  97014100  and r3, r2, r4
002740  93813204  setlt.u r3, r5, r3
002744  3be10100  bneq r3, zero, 88
002748  abf1ffff  lui r3, 1048575
00274c  17221100  xor r4, r2, r1
002750  9b91f1ff  ori r3, r3, 4095
002754  3fa04100  blt.s r3, r4, 8
002758  5b0b0000  j 88
00275c  9b319100  slli r3, r2, 9
002760  9bb29000  slli r5, r1, 9
002764  1b427101  srli r4, r2, 23
002768  1bc37001  srli r6, r1, 23
00276c  93e32004  setlt.f r7, r1, r2
002770  93810100  seteq r3, r3, zero
002774  93820200  seteq r5, r5, zero
002778  1b02f20f  andi r4, r4, 255
00277c  1b03f30f  andi r6, r6, 255
002780  1b72f20f  setlti r4, r4, 255
002784  1b73f30f  setlti r6, r6, 255
002788  97113200  or r3, r4, r3
00278c  17125300  or r4, r6, r5
002790  97013200  and r3, r4, r3
002794  97813300  and r3, r7, r3
002798  3ba00100  bneq r3, zero, 8
00279c  1f810000  addli r2, r1, 0
0027a0  e38f0e00  loadli.w r31,  0(sp)
0027a4  63cf0e00  loadli.w r30,  4(sp)
0027a8  9f8e1e00  addli sp, sp, 8
0027ac  5f800f00  jr r31, 0
0027b0  bfcf00fe  blt.s r1, zero, -16
0027b4  5bfdffff  j -24
0027b8  00100000  exit
0027bc  00100000  exit
0027c0  00100000  exit
0027c4  00100000  exit
0027c8  00100000  exit
0027cc  00100000  exit
0027d0  00100000  exit
0027d4  00100000  exit
0027d8  00100000  exit
0027dc  00100000  exit
0027e0  00100000  exit
0027e4  00100000  exit
0027e8  00100000  exit
0027ec  00100000  exit
0027f0  00100000  exit
0027f4  00100000  exit
0027f8  00100000  exit
0027fc  00100000  exit
002800  00100000  exit
002804  00100000  exit
002808  00100000  exit
00280c  00100000  exit
002810  00100000  exit
002814  00100000  exit
002818  00100000  exit
00281c  00100000  exit
002820  00100000  exit
002824  00100000  exit
002828  00100000  exit
00282c  00100000  exit
002830  00100000  exit
002834  00100000  exit
002838  00100000  exit
00283c  00100000  exit
002840  00100000  exit
002844  00100000  exit
002848  00100000  exit
00284c  00100000  exit
002850  00100000  exit
002854  00100000  exit
002858  00100000  exit
00285c  00100000  exit
002860  00100000  exit
002864  00100000  exit
002868  00100000  exit
00286c  00100000  exit
002870  00100000  exit
002874  00100000  exit
002878  00100000  exit
00287c  00100000  exit
002880  00100000  exit
002884  00100000  exit
002888  00100000  exit
00288c  00100000  exit
002890  00100000  exit
002894  00100000  exit
002898  00100000  exit
00289c  00100000  exit
0028a0  00100000  exit
0028a4  00100000  exit
0028a8  00100000  exit
0028ac  00100000  exit
0028b0  00100000  exit
0028b4  00100000  exit
0028b8  00100000  exit
0028bc  00100000  exit
0028c0  00100000  exit
0028c4  00100000  exit
0028c8  00100000  exit
0028cc  00100000  exit
0028d0  00100000  exit
0028d4  00100000  exit
0028d8  00100000  exit
0028dc  00100000  exit
0028e0  00100000  exit
0028e4  00100000  exit
0028e8  00100000  exit
0028ec  00100000  exit
0028f0  00100000  exit
0028f4  00100000  exit
0028f8  00100000  exit
0028fc  00100000  exit
002900  00100000  exit
002904  00100000  exit
002908  00100000  exit
00290c  00100000  exit
002910  00100000  exit
002914  00100000  exit
002918  00100000  exit
00291c  00100000  exit
002920  00100000  exit
002924  00100000  exit
002928  00100000  exit
00292c  00100000  exit
002930  00100000  exit
002934  00100000  exit
002938  00100000  exit
00293c  00100000  exit
002940  00100000  exit
002944  00100000  exit
002948  00100000  exit
00294c  00100000  exit
002950  00100000  exit
002954  00100000  exit
002958  00100000  exit
00295c  00100000  exit
002960  00100000  exit
002964  00100000  exit
002968  00100000  exit
00296c  00100000  exit
002970  00100000  exit
002974  00100000  exit
002978  00100000  exit
00297c  00100000  exit
002980  00100000  exit
002984  00100000  exit
002988  00100000  exit
00298c  00100000  exit
002990  00100000  exit
002994  00100000  exit
002998  00100000  exit
00299c  00100000  exit
0029a0  00100000  exit
0029a4  00100000  exit
0029a8  00100000  exit
0029ac  00100000  exit
0029b0  00100000  exit
0029b4  00100000  exit
0029b8  00100000  exit
0029bc  00100000  exit
0029c0  00100000  exit
0029c4  00100000  exit
0029c8  00100000  exit
0029cc  00100000  exit
0029d0  00100000  exit
0029d4  00100000  exit
0029d8  00100000  exit
0029dc  00100000  exit
0029e0  00100000  exit
0029e4  00100000  exit
0029e8  00100000  exit
0029ec  00100000  exit
0029f0  00100000  exit
0029f4  00100000  exit
