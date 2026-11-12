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
0000dc  9f8e0ef0  addli sp, sp, -2048
0000e0  ab000000  lui r1, 0
0000e4  00340002  core_id r8
0000e8  1f8f8e0f  addli r30, sp, 1984
0000ec  2bf10000  lui r2, 15
0000f0  abf17fff  lui r3, 1046527
0000f4  80530002  load_param_i r7, 0
0000f8  9b342400  slli r9, r8, 2
0000fc  9f800000  addli r1, r1, 0
000100  e3423f00  loadli.w r5,  28(r30)
000104  63024f00  loadli.w r4,  32(r30)
000108  1b11f1ff  ori r2, r2, 4095
00010c  9b91f1ff  ori r3, r3, 4095
000110  0b931410  add.s r6, r9, r1
000114  e3003f00  loadli.w r1,  24(r30)
000118  73680340  stores.w zero, 1040(r6)
00011c  8b901220  mul.s r1, r5, r1
000120  00a00300  mfence { lm, sm, gm }
000124  80210104  csr_set csr3, r2
000128  00d00100  sync_group
00012c  73603300  stores.w r3, 0(r6)
000130  00a00300  mfence { lm, sm, gm }
000134  80210104  csr_set csr3, r2
000138  00d00100  sync_group
00013c  0b924020  mul.s r4, r1, r4
000140  4b3e7206  ble.s r4, r7, 3980
000144  1b3b7400  slli r22, r8, 7
000148  9f110020  addli r3, zero, 4097
00014c  1f110000  addli r2, zero, 1
000150  1f3a0000  addli r20, zero, 3
000154  9b101b00  ori r1, r22, 1
000158  3fa03000  blt.s r1, r3, 8
00015c  1f1a0000  addli r20, zero, 1
000160  80d00002  load_param_i r1, 1
000164  3f203b00  blt.s r22, r3, 8
000168  dbeb0100  j 3932
00016c  e74a1ff2  storeli.w r1, -1620(r30)
000170  9b10fb07  ori r1, r22, 127
000174  8b926119  sub.s r5, r3, r22
000178  67046ff0  storeli.w r6, -1984(r30)
00017c  670c7ff8  storeli.w r7, -832(r30)
000180  33130b28  sext_int2long r[7:8], r22
000184  674b4ff2  storeli.w r4, -1612(r30)
000188  1b1e3b00  ori r28, r22, 3
00018c  9b1ddb00  ori r27, r22, 13
000190  e74b9ff8  storeli.w r9, -836(r30)
000194  9b141b05  ori r9, r22, 81
000198  9b1c1b06  ori r25, r22, 97
00019c  1b1c5b06  ori r24, r22, 101
0001a0  1b142b07  ori r8, r22, 114
0001a4  9b1b1b07  ori r23, r22, 113
0001a8  9b1a0b07  ori r21, r22, 112
0001ac  1b193b07  ori r18, r22, 115
0001b0  9b184b07  ori r17, r22, 116
0001b4  1b185b07  ori r16, r22, 117
0001b8  9b176b07  ori r15, r22, 118
0001bc  1b177b07  ori r14, r22, 119
0001c0  9b168b07  ori r13, r22, 120
0001c4  1b169b07  ori r12, r22, 121
0001c8  9b15ab07  ori r11, r22, 122
0001cc  1b15bb07  ori r10, r22, 123
0001d0  9b19fb06  ori r19, r22, 111
0001d4  1b1deb07  ori r26, r22, 126
0001d8  670b6ff3  storeli.w r22, -1616(r30)
0001dc  eeb49462  vxor.s.mz vr9{mr1}, vr9, vr9
0001e0  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0001e4  e74f1ff6  storeli.w r1, -1028(r30)
0001e8  9b10db07  ori r1, r22, 125
0001ec  0b920248  max.s r4, r5, zero
0001f0  97322302  sll.d r[6:7], r[7:8], r2
0001f4  1f010001  addli r2, zero, 128
0001f8  13193904  setlt.s r18, r18, r3
0001fc  93983804  setlt.s r17, r17, r3
000200  13183804  setlt.s r16, r16, r3
000204  93973704  setlt.s r15, r15, r3
000208  13173704  setlt.s r14, r14, r3
00020c  9b13db06  ori r7, r22, 109
000210  93963604  setlt.s r13, r13, r3
000214  13163604  setlt.s r12, r12, r3
000218  93953504  setlt.s r11, r11, r3
00021c  13153504  setlt.s r10, r10, r3
000220  93993904  setlt.s r19, r19, r3
000224  e70f1ff6  storeli.w r1, -1032(r30)
000228  9b102b00  ori r1, r22, 2
00022c  73305fc0  store.d r[6:7], -1024(r30)
000230  93123e04  setlt.s r5, r28, r3
000234  0b112240  min.s r2, r4, r2
000238  1b125b00  ori r4, r22, 5
00023c  13933d04  setlt.s r6, r27, r3
000240  93933304  setlt.s r7, r7, r3
000244  93903004  setlt.s r1, r1, r3
000248  67042ff8  storeli.w r2, -960(r30)
00024c  1b114b00  ori r2, r22, 4
000250  13123204  setlt.s r4, r4, r3
000254  13113104  setlt.s r2, r2, r3
000258  1b393900  slli r18, r18, 3
00025c  9bb84800  slli r17, r17, 4
000260  1b385800  slli r16, r16, 5
000264  9bb23200  slli r5, r5, 3
000268  1b33d300  slli r6, r6, 13
00026c  9bb3d300  slli r7, r7, 13
000270  9bb02000  slli r1, r1, 2
000274  1b325200  slli r4, r4, 5
000278  97101a00  or r1, r20, r1
00027c  1b314100  slli r2, r2, 4
000280  97905000  or r1, r1, r5
000284  9b126b00  ori r5, r22, 6
000288  93923204  setlt.s r5, r5, r3
00028c  97902000  or r1, r1, r2
000290  1b117b00  ori r2, r22, 7
000294  13113104  setlt.s r2, r2, r3
000298  97904000  or r1, r1, r4
00029c  1b128b00  ori r4, r22, 8
0002a0  13123204  setlt.s r4, r4, r3
0002a4  9bb26200  slli r5, r5, 6
0002a8  97905000  or r1, r1, r5
0002ac  9b129b00  ori r5, r22, 9
0002b0  1b317100  slli r2, r2, 7
0002b4  93923204  setlt.s r5, r5, r3
0002b8  97902000  or r1, r1, r2
0002bc  1b11ab00  ori r2, r22, 10
0002c0  1b328200  slli r4, r4, 8
0002c4  13113104  setlt.s r2, r2, r3
0002c8  97904000  or r1, r1, r4
0002cc  1b12bb00  ori r4, r22, 11
0002d0  13123204  setlt.s r4, r4, r3
0002d4  9bb29200  slli r5, r5, 9
0002d8  97905000  or r1, r1, r5
0002dc  9b12cb00  ori r5, r22, 12
0002e0  1b31a100  slli r2, r2, 10
0002e4  93923204  setlt.s r5, r5, r3
0002e8  97902000  or r1, r1, r2
0002ec  1b32b200  slli r4, r4, 11
0002f0  1b11eb00  ori r2, r22, 14
0002f4  97904000  or r1, r1, r4
0002f8  13113104  setlt.s r2, r2, r3
0002fc  1bb2c200  slli r4, r5, 12
000300  9b122b01  ori r5, r22, 18
000304  97904000  or r1, r1, r4
000308  1b12fb00  ori r4, r22, 15
00030c  1b31e100  slli r2, r2, 14
000310  93923204  setlt.s r5, r5, r3
000314  13123204  setlt.s r4, r4, r3
000318  97906000  or r1, r1, r6
00031c  1b131b01  ori r6, r22, 17
000320  97902000  or r1, r1, r2
000324  1b110b01  ori r2, r22, 16
000328  13133304  setlt.s r6, r6, r3
00032c  13113104  setlt.s r2, r2, r3
000330  9bb22200  slli r5, r5, 2
000334  1b32f200  slli r4, r4, 15
000338  97904000  or r1, r1, r4
00033c  1b331300  slli r6, r6, 1
000340  1b12db01  ori r4, r22, 29
000344  7e8000e0  vmmov mr0, r1
000348  9b103b01  ori r1, r22, 19
00034c  17112300  or r2, r6, r2
000350  1b134b01  ori r6, r22, 20
000354  13123204  setlt.s r4, r4, r3
000358  7e0000a0  vmmov zero, mr0
00035c  93903004  setlt.s r1, r1, r3
000360  13133304  setlt.s r6, r6, r3
000364  17115100  or r2, r2, r5
000368  9b125b01  ori r5, r22, 21
00036c  e70a0ff2  storeli.w zero, -1624(r30)
000370  17200000  xor zero, zero, zero
000374  93923204  setlt.s r5, r5, r3
000378  1b32d200  slli r4, r4, 13
00037c  9bb03000  slli r1, r1, 3
000380  1b334300  slli r6, r6, 4
000384  97101100  or r1, r2, r1
000388  1b116b01  ori r2, r22, 22
00038c  9bb25200  slli r5, r5, 5
000390  13113104  setlt.s r2, r2, r3
000394  97906000  or r1, r1, r6
000398  1b137b01  ori r6, r22, 23
00039c  13133304  setlt.s r6, r6, r3
0003a0  97905000  or r1, r1, r5
0003a4  9b128b01  ori r5, r22, 24
0003a8  93923204  setlt.s r5, r5, r3
0003ac  1b316100  slli r2, r2, 6
0003b0  97902000  or r1, r1, r2
0003b4  1b119b01  ori r2, r22, 25
0003b8  1b337300  slli r6, r6, 7
0003bc  13113104  setlt.s r2, r2, r3
0003c0  97906000  or r1, r1, r6
0003c4  1b13ab01  ori r6, r22, 26
0003c8  9bb28200  slli r5, r5, 8
0003cc  13133304  setlt.s r6, r6, r3
0003d0  97905000  or r1, r1, r5
0003d4  9b12bb01  ori r5, r22, 27
0003d8  93923204  setlt.s r5, r5, r3
0003dc  1b319100  slli r2, r2, 9
0003e0  97902000  or r1, r1, r2
0003e4  1b11cb01  ori r2, r22, 28
0003e8  1b33a300  slli r6, r6, 10
0003ec  13113104  setlt.s r2, r2, r3
0003f0  97906000  or r1, r1, r6
0003f4  9bb2b200  slli r5, r5, 11
0003f8  1b13eb01  ori r6, r22, 30
0003fc  97905000  or r1, r1, r5
000400  13133304  setlt.s r6, r6, r3
000404  9b122b02  ori r5, r22, 34
000408  93923204  setlt.s r5, r5, r3
00040c  1b31c100  slli r2, r2, 12
000410  97902000  or r1, r1, r2
000414  1b11fb01  ori r2, r22, 31
000418  13113104  setlt.s r2, r2, r3
00041c  97904000  or r1, r1, r4
000420  1b32e300  slli r4, r6, 14
000424  1b131b02  ori r6, r22, 33
000428  9bb22200  slli r5, r5, 2
00042c  97904000  or r1, r1, r4
000430  1b120b02  ori r4, r22, 32
000434  13133304  setlt.s r6, r6, r3
000438  13123204  setlt.s r4, r4, r3
00043c  1b31f100  slli r2, r2, 15
000440  97902000  or r1, r1, r2
000444  1b331300  slli r6, r6, 1
000448  1b11db02  ori r2, r22, 45
00044c  7e8000e0  vmmov mr0, r1
000450  9b103b02  ori r1, r22, 35
000454  17124300  or r4, r6, r4
000458  1b134b02  ori r6, r22, 36
00045c  13113104  setlt.s r2, r2, r3
000460  7e0000a0  vmmov zero, mr0
000464  93903004  setlt.s r1, r1, r3
000468  13133304  setlt.s r6, r6, r3
00046c  17125200  or r4, r4, r5
000470  9b125b02  ori r5, r22, 37
000474  674a0ff2  storeli.w zero, -1628(r30)
000478  17200000  xor zero, zero, zero
00047c  93923204  setlt.s r5, r5, r3
000480  1b31d100  slli r2, r2, 13
000484  9bb03000  slli r1, r1, 3
000488  1b334300  slli r6, r6, 4
00048c  97101200  or r1, r4, r1
000490  1b126b02  ori r4, r22, 38
000494  9bb25200  slli r5, r5, 5
000498  13123204  setlt.s r4, r4, r3
00049c  97906000  or r1, r1, r6
0004a0  1b137b02  ori r6, r22, 39
0004a4  13133304  setlt.s r6, r6, r3
0004a8  97905000  or r1, r1, r5
0004ac  9b128b02  ori r5, r22, 40
0004b0  93923204  setlt.s r5, r5, r3
0004b4  1b326200  slli r4, r4, 6
0004b8  97904000  or r1, r1, r4
0004bc  1b129b02  ori r4, r22, 41
0004c0  1b337300  slli r6, r6, 7
0004c4  13123204  setlt.s r4, r4, r3
0004c8  97906000  or r1, r1, r6
0004cc  1b13ab02  ori r6, r22, 42
0004d0  9bb28200  slli r5, r5, 8
0004d4  13133304  setlt.s r6, r6, r3
0004d8  97905000  or r1, r1, r5
0004dc  9b12bb02  ori r5, r22, 43
0004e0  93923204  setlt.s r5, r5, r3
0004e4  1b329200  slli r4, r4, 9
0004e8  97904000  or r1, r1, r4
0004ec  1b12cb02  ori r4, r22, 44
0004f0  1b33a300  slli r6, r6, 10
0004f4  13123204  setlt.s r4, r4, r3
0004f8  97906000  or r1, r1, r6
0004fc  9bb2b200  slli r5, r5, 11
000500  1b13eb02  ori r6, r22, 46
000504  97905000  or r1, r1, r5
000508  13133304  setlt.s r6, r6, r3
00050c  9b122b03  ori r5, r22, 50
000510  93923204  setlt.s r5, r5, r3
000514  1b32c200  slli r4, r4, 12
000518  97904000  or r1, r1, r4
00051c  1b12fb02  ori r4, r22, 47
000520  13123204  setlt.s r4, r4, r3
000524  97902000  or r1, r1, r2
000528  1b31e300  slli r2, r6, 14
00052c  1b131b03  ori r6, r22, 49
000530  9bb22200  slli r5, r5, 2
000534  97902000  or r1, r1, r2
000538  1b110b03  ori r2, r22, 48
00053c  13133304  setlt.s r6, r6, r3
000540  13113104  setlt.s r2, r2, r3
000544  1b32f200  slli r4, r4, 15
000548  17924000  or r4, r1, r4
00054c  1b331300  slli r6, r6, 1
000550  9b101b04  ori r1, r22, 65
000554  7e0002e0  vmmov mr0, r4
000558  1b123b03  ori r4, r22, 51
00055c  17112300  or r2, r6, r2
000560  1b134b03  ori r6, r22, 52
000564  93903004  setlt.s r1, r1, r3
000568  7e0000a0  vmmov zero, mr0
00056c  13123204  setlt.s r4, r4, r3
000570  13133304  setlt.s r6, r6, r3
000574  17115100  or r2, r2, r5
000578  9b125b03  ori r5, r22, 53
00057c  670a0ff2  storeli.w zero, -1632(r30)
000580  17200000  xor zero, zero, zero
000584  93923204  setlt.s r5, r5, r3
000588  9bb01000  slli r1, r1, 1
00058c  1b323200  slli r4, r4, 3
000590  1b334300  slli r6, r6, 4
000594  17114100  or r2, r2, r4
000598  1b126b03  ori r4, r22, 54
00059c  9bb25200  slli r5, r5, 5
0005a0  13123204  setlt.s r4, r4, r3
0005a4  17116100  or r2, r2, r6
0005a8  1b137b03  ori r6, r22, 55
0005ac  13133304  setlt.s r6, r6, r3
0005b0  17115100  or r2, r2, r5
0005b4  9b128b03  ori r5, r22, 56
0005b8  93923204  setlt.s r5, r5, r3
0005bc  1b326200  slli r4, r4, 6
0005c0  17114100  or r2, r2, r4
0005c4  1b129b03  ori r4, r22, 57
0005c8  1b337300  slli r6, r6, 7
0005cc  13123204  setlt.s r4, r4, r3
0005d0  17116100  or r2, r2, r6
0005d4  1b13ab03  ori r6, r22, 58
0005d8  9bb28200  slli r5, r5, 8
0005dc  13133304  setlt.s r6, r6, r3
0005e0  17115100  or r2, r2, r5
0005e4  9b12bb03  ori r5, r22, 59
0005e8  93923204  setlt.s r5, r5, r3
0005ec  1b329200  slli r4, r4, 9
0005f0  17114100  or r2, r2, r4
0005f4  1b12cb03  ori r4, r22, 60
0005f8  1b33a300  slli r6, r6, 10
0005fc  13123204  setlt.s r4, r4, r3
000600  17116100  or r2, r2, r6
000604  1b13db03  ori r6, r22, 61
000608  9bb2b200  slli r5, r5, 11
00060c  13133304  setlt.s r6, r6, r3
000610  17115100  or r2, r2, r5
000614  9b12eb03  ori r5, r22, 62
000618  93923204  setlt.s r5, r5, r3
00061c  1b32c200  slli r4, r4, 12
000620  17114100  or r2, r2, r4
000624  1b12fb03  ori r4, r22, 63
000628  1b33d300  slli r6, r6, 13
00062c  13123204  setlt.s r4, r4, r3
000630  17116100  or r2, r2, r6
000634  9bb2e200  slli r5, r5, 14
000638  1b130b04  ori r6, r22, 64
00063c  17115100  or r2, r2, r5
000640  9b122b04  ori r5, r22, 66
000644  13133304  setlt.s r6, r6, r3
000648  93923204  setlt.s r5, r5, r3
00064c  1b32f200  slli r4, r4, 15
000650  17114100  or r2, r2, r4
000654  1b124b04  ori r4, r22, 68
000658  97906000  or r1, r1, r6
00065c  13933404  setlt.s r6, r9, r3
000660  93943a04  setlt.s r9, r21, r3
000664  9b1acb06  ori r21, r22, 108
000668  674f2ff6  storeli.w r2, -1036(r30)
00066c  1b113b04  ori r2, r22, 67
000670  9bb22200  slli r5, r5, 2
000674  13123204  setlt.s r4, r4, r3
000678  939a3a04  setlt.s r21, r21, r3
00067c  13113104  setlt.s r2, r2, r3
000680  97905000  or r1, r1, r5
000684  9b125b04  ori r5, r22, 69
000688  93923204  setlt.s r5, r5, r3
00068c  1b324200  slli r4, r4, 4
000690  1b313100  slli r2, r2, 3
000694  97902000  or r1, r1, r2
000698  1b116b04  ori r2, r22, 70
00069c  9bb25200  slli r5, r5, 5
0006a0  13113104  setlt.s r2, r2, r3
0006a4  97904000  or r1, r1, r4
0006a8  1b127b04  ori r4, r22, 71
0006ac  13123204  setlt.s r4, r4, r3
0006b0  97905000  or r1, r1, r5
0006b4  9b128b04  ori r5, r22, 72
0006b8  93923204  setlt.s r5, r5, r3
0006bc  1b316100  slli r2, r2, 6
0006c0  97902000  or r1, r1, r2
0006c4  1b119b04  ori r2, r22, 73
0006c8  1b327200  slli r4, r4, 7
0006cc  13113104  setlt.s r2, r2, r3
0006d0  97904000  or r1, r1, r4
0006d4  1b12ab04  ori r4, r22, 74
0006d8  9bb28200  slli r5, r5, 8
0006dc  13123204  setlt.s r4, r4, r3
0006e0  97905000  or r1, r1, r5
0006e4  9b12bb04  ori r5, r22, 75
0006e8  93923204  setlt.s r5, r5, r3
0006ec  1b319100  slli r2, r2, 9
0006f0  97902000  or r1, r1, r2
0006f4  1b11cb04  ori r2, r22, 76
0006f8  1b32a200  slli r4, r4, 10
0006fc  13113104  setlt.s r2, r2, r3
000700  97904000  or r1, r1, r4
000704  1b12db04  ori r4, r22, 77
000708  9bb2b200  slli r5, r5, 11
00070c  13123204  setlt.s r4, r4, r3
000710  97905000  or r1, r1, r5
000714  9b12eb04  ori r5, r22, 78
000718  93923204  setlt.s r5, r5, r3
00071c  1b31c100  slli r2, r2, 12
000720  97902000  or r1, r1, r2
000724  1b11fb04  ori r2, r22, 79
000728  1b32d200  slli r4, r4, 13
00072c  13113104  setlt.s r2, r2, r3
000730  97904000  or r1, r1, r4
000734  9bb2e200  slli r5, r5, 14
000738  1b120b05  ori r4, r22, 80
00073c  97905000  or r1, r1, r5
000740  9b122b05  ori r5, r22, 82
000744  13123204  setlt.s r4, r4, r3
000748  93923204  setlt.s r5, r5, r3
00074c  1b31f100  slli r2, r2, 15
000750  97902000  or r1, r1, r2
000754  1b311300  slli r2, r6, 1
000758  13933c04  setlt.s r6, r25, r3
00075c  67081ff6  storeli.w r1, -1152(r30)
000760  9b103b05  ori r1, r22, 83
000764  17114100  or r2, r2, r4
000768  1b124b05  ori r4, r22, 84
00076c  9bb22200  slli r5, r5, 2
000770  93903004  setlt.s r1, r1, r3
000774  13123204  setlt.s r4, r4, r3
000778  17115100  or r2, r2, r5
00077c  9b125b05  ori r5, r22, 85
000780  93923204  setlt.s r5, r5, r3
000784  9bb03000  slli r1, r1, 3
000788  1b324200  slli r4, r4, 4
00078c  97101100  or r1, r2, r1
000790  1b116b05  ori r2, r22, 86
000794  9bb25200  slli r5, r5, 5
000798  13113104  setlt.s r2, r2, r3
00079c  97904000  or r1, r1, r4
0007a0  1b127b05  ori r4, r22, 87
0007a4  13123204  setlt.s r4, r4, r3
0007a8  97905000  or r1, r1, r5
0007ac  9b128b05  ori r5, r22, 88
0007b0  93923204  setlt.s r5, r5, r3
0007b4  1b316100  slli r2, r2, 6
0007b8  97902000  or r1, r1, r2
0007bc  1b119b05  ori r2, r22, 89
0007c0  1b327200  slli r4, r4, 7
0007c4  13113104  setlt.s r2, r2, r3
0007c8  97904000  or r1, r1, r4
0007cc  1b12ab05  ori r4, r22, 90
0007d0  9bb28200  slli r5, r5, 8
0007d4  13123204  setlt.s r4, r4, r3
0007d8  97905000  or r1, r1, r5
0007dc  9b12bb05  ori r5, r22, 91
0007e0  93923204  setlt.s r5, r5, r3
0007e4  1b319100  slli r2, r2, 9
0007e8  97902000  or r1, r1, r2
0007ec  1b11cb05  ori r2, r22, 92
0007f0  1b32a200  slli r4, r4, 10
0007f4  13113104  setlt.s r2, r2, r3
0007f8  97904000  or r1, r1, r4
0007fc  1b12db05  ori r4, r22, 93
000800  9bb2b200  slli r5, r5, 11
000804  13123204  setlt.s r4, r4, r3
000808  97905000  or r1, r1, r5
00080c  9b12eb05  ori r5, r22, 94
000810  93923204  setlt.s r5, r5, r3
000814  1b31c100  slli r2, r2, 12
000818  97902000  or r1, r1, r2
00081c  1b11fb05  ori r2, r22, 95
000820  1b32d200  slli r4, r4, 13
000824  13113104  setlt.s r2, r2, r3
000828  97904000  or r1, r1, r4
00082c  1b120b06  ori r4, r22, 96
000830  9bb2e200  slli r5, r5, 14
000834  13123204  setlt.s r4, r4, r3
000838  97905000  or r1, r1, r5
00083c  9b122b06  ori r5, r22, 98
000840  93923204  setlt.s r5, r5, r3
000844  1b31f100  slli r2, r2, 15
000848  97902000  or r1, r1, r2
00084c  1b311300  slli r2, r6, 1
000850  13133c04  setlt.s r6, r24, r3
000854  67041ff6  storeli.w r1, -1216(r30)
000858  9b103b06  ori r1, r22, 99
00085c  17114100  or r2, r2, r4
000860  1b124b06  ori r4, r22, 100
000864  9bb22200  slli r5, r5, 2
000868  93903004  setlt.s r1, r1, r3
00086c  13123204  setlt.s r4, r4, r3
000870  17115100  or r2, r2, r5
000874  9b126b06  ori r5, r22, 102
000878  93923204  setlt.s r5, r5, r3
00087c  1b335300  slli r6, r6, 5
000880  9bb03000  slli r1, r1, 3
000884  97101100  or r1, r2, r1
000888  1b314200  slli r2, r4, 4
00088c  9bb26200  slli r5, r5, 6
000890  1b12eb06  ori r4, r22, 110
000894  97902000  or r1, r1, r2
000898  1b117b06  ori r2, r22, 103
00089c  13123204  setlt.s r4, r4, r3
0008a0  13113104  setlt.s r2, r2, r3
0008a4  97906000  or r1, r1, r6
0008a8  1b138b06  ori r6, r22, 104
0008ac  13133304  setlt.s r6, r6, r3
0008b0  97905000  or r1, r1, r5
0008b4  9b129b06  ori r5, r22, 105
0008b8  93923204  setlt.s r5, r5, r3
0008bc  1b32e200  slli r4, r4, 14
0008c0  1b317100  slli r2, r2, 7
0008c4  97902000  or r1, r1, r2
0008c8  13113404  setlt.s r2, r8, r3
0008cc  13943b04  setlt.s r8, r23, r3
0008d0  1b338300  slli r6, r6, 8
0008d4  97906000  or r1, r1, r6
0008d8  9bb29200  slli r5, r5, 9
0008dc  1b13bb06  ori r6, r22, 107
0008e0  97925000  or r5, r1, r5
0008e4  13133304  setlt.s r6, r6, r3
0008e8  9b301400  slli r1, r8, 1
0008ec  1b14ab06  ori r8, r22, 106
0008f0  1b312100  slli r2, r2, 2
0008f4  13143404  setlt.s r8, r8, r3
0008f8  97909000  or r1, r1, r9
0008fc  9b14cb07  ori r9, r22, 124
000900  630bfff7  loadli.w r22,  -1032(r30)
000904  179a2000  or r20, r1, r2
000908  1b33b300  slli r6, r6, 11
00090c  93943404  setlt.s r9, r9, r3
000910  e340fff7  loadli.w r1,  -1028(r30)
000914  13113d04  setlt.s r2, r26, r3
000918  131b3b04  setlt.s r22, r22, r3
00091c  93903004  setlt.s r1, r1, r3
000920  1b34a400  slli r8, r8, 10
000924  97928200  or r5, r5, r8
000928  17142a01  or r8, r20, r18
00092c  1b31e100  slli r2, r2, 14
000930  17141401  or r8, r8, r17
000934  97926200  or r5, r5, r6
000938  9bb0f000  slli r1, r1, 15
00093c  17130401  or r6, r8, r16
000940  1bb46700  slli r8, r15, 6
000944  9bb7ca00  slli r15, r21, 12
000948  17138300  or r6, r6, r8
00094c  1b347700  slli r8, r14, 7
000950  9792f200  or r5, r5, r15
000954  17138300  or r6, r6, r8
000958  1bb48600  slli r8, r13, 8
00095c  97927200  or r5, r5, r7
000960  9bb3a500  slli r7, r11, 10
000964  17138300  or r6, r6, r8
000968  1b349600  slli r8, r12, 9
00096c  17924200  or r4, r5, r4
000970  17138300  or r6, r6, r8
000974  1b34db00  slli r8, r22, 13
000978  17137300  or r6, r6, r7
00097c  9b33b500  slli r7, r10, 11
000980  97127300  or r5, r6, r7
000984  1bb3c400  slli r6, r9, 12
000988  80340002  core_id r9
00098c  9bb3f900  slli r7, r19, 15
000990  97926200  or r5, r5, r6
000994  1f038000  addli r6, zero, 64
000998  17127200  or r4, r4, r7
00099c  0b936438  mod.s r6, r9, r6
0009a0  97928200  or r5, r5, r8
0009a4  e74f4ff6  storeli.w r4, -1028(r30)
0009a8  17912200  or r2, r5, r2
0009ac  97101100  or r1, r2, r1
0009b0  1b367300  slli r12, r6, 7
0009b4  e70f1ff6  storeli.w r1, -1032(r30)
0009b8  9b107604  ori r1, r12, 71
0009bc  9b13c604  ori r7, r12, 76
0009c0  9b121604  ori r5, r12, 65
0009c4  1b140604  ori r8, r12, 64
0009c8  9b142604  ori r9, r12, 66
0009cc  1b133604  ori r6, r12, 67
0009d0  9b194604  ori r19, r12, 68
0009d4  9b155604  ori r11, r12, 69
0009d8  1b156604  ori r10, r12, 70
0009dc  1b1a8605  ori r20, r12, 88
0009e0  1b1c9605  ori r24, r12, 89
0009e4  9b1ca605  ori r25, r12, 90
0009e8  1b1db605  ori r26, r12, 91
0009ec  9b1dd605  ori r27, r12, 93
0009f0  1b1ee605  ori r28, r12, 94
0009f4  1b110606  ori r2, r12, 96
0009f8  1b121606  ori r4, r12, 97
0009fc  9b168606  ori r13, r12, 104
000a00  1b179606  ori r14, r12, 105
000a04  9b17a606  ori r15, r12, 106
000a08  1b18b606  ori r16, r12, 107
000a0c  9b18d606  ori r17, r12, 109
000a10  9b1ae606  ori r21, r12, 110
000a14  1b1bf606  ori r22, r12, 111
000a18  9b1b0607  ori r23, r12, 112
000a1c  67041ff4  storeli.w r1, -1472(r30)
000a20  9b108604  ori r1, r12, 72
000a24  93943404  setlt.s r9, r9, r3
000a28  13193304  setlt.s r18, r6, r3
000a2c  13153504  setlt.s r10, r10, r3
000a30  131a3a04  setlt.s r20, r20, r3
000a34  131c3c04  setlt.s r24, r24, r3
000a38  939c3c04  setlt.s r25, r25, r3
000a3c  131d3d04  setlt.s r26, r26, r3
000a40  67001ff4  storeli.w r1, -1536(r30)
000a44  9b109604  ori r1, r12, 73
000a48  670c1ff2  storeli.w r1, -1600(r30)
000a4c  9b10a604  ori r1, r12, 74
000a50  e74b1ff2  storeli.w r1, -1604(r30)
000a54  9b10b604  ori r1, r12, 75
000a58  1bb32400  slli r6, r9, 2
000a5c  93943504  setlt.s r9, r11, r3
000a60  9b353900  slli r11, r18, 3
000a64  1b196605  ori r18, r12, 86
000a68  e70b1ff2  storeli.w r1, -1608(r30)
000a6c  93903304  setlt.s r1, r7, r3
000a70  93933204  setlt.s r7, r5, r3
000a74  93123404  setlt.s r5, r8, r3
000a78  1b145606  ori r8, r12, 101
000a7c  13193904  setlt.s r18, r18, r3
000a80  9bb45400  slli r9, r9, 5
000a84  67001ff6  storeli.w r1, -1280(r30)
000a88  9b10d604  ori r1, r12, 77
000a8c  9bb31300  slli r7, r7, 1
000a90  e7091ff2  storeli.w r1, -1640(r30)
000a94  9b10e604  ori r1, r12, 78
000a98  97925300  or r5, r7, r5
000a9c  93933904  setlt.s r7, r19, r3
000aa0  9b197605  ori r19, r12, 87
000aa4  e7481ff2  storeli.w r1, -1652(r30)
000aa8  9b10f604  ori r1, r12, 79
000aac  97926200  or r5, r5, r6
000ab0  1b133606  ori r6, r12, 99
000ab4  93993904  setlt.s r19, r19, r3
000ab8  e7081ff2  storeli.w r1, -1656(r30)
000abc  9b100605  ori r1, r12, 80
000ac0  9795b200  or r11, r5, r11
000ac4  9b122606  ori r5, r12, 98
000ac8  67041ff2  storeli.w r1, -1728(r30)
000acc  9b101605  ori r1, r12, 81
000ad0  9bb34300  slli r7, r7, 4
000ad4  e7431ff2  storeli.w r1, -1732(r30)
000ad8  9b102605  ori r1, r12, 82
000adc  97937500  or r7, r11, r7
000ae0  9b15c605  ori r11, r12, 92
000ae4  e7031ff2  storeli.w r1, -1736(r30)
000ae8  9b103605  ori r1, r12, 83
000aec  97939300  or r7, r7, r9
000af0  9b346500  slli r9, r10, 6
000af4  1b15c606  ori r10, r12, 108
000af8  67431ff2  storeli.w r1, -1740(r30)
000afc  9b104605  ori r1, r12, 84
000b00  67031ff2  storeli.w r1, -1744(r30)
000b04  93903504  setlt.s r1, r11, r3
000b08  9b157606  ori r11, r12, 103
000b0c  67091ff2  storeli.w r1, -1648(r30)
000b10  97909300  or r1, r7, r9
000b14  9b13c607  ori r7, r12, 124
000b18  9b146606  ori r9, r12, 102
000b1c  67021ff2  storeli.w r1, -1760(r30)
000b20  93103504  setlt.s r1, r10, r3
000b24  1b155605  ori r10, r12, 85
000b28  13153504  setlt.s r10, r10, r3
000b2c  67081ff4  storeli.w r1, -1408(r30)
000b30  93903304  setlt.s r1, r7, r3
000b34  9b134606  ori r7, r12, 100
000b38  1b355500  slli r10, r10, 5
000b3c  670c1ff4  storeli.w r1, -1344(r30)
000b40  9b10f605  ori r1, r12, 95
000b44  e7021ff2  storeli.w r1, -1752(r30)
000b48  9b101607  ori r1, r12, 113
000b4c  e70e1ff0  storeli.w r1, -1816(r30)
000b50  9b102607  ori r1, r12, 114
000b54  674e1ff0  storeli.w r1, -1820(r30)
000b58  9b103607  ori r1, r12, 115
000b5c  670e1ff0  storeli.w r1, -1824(r30)
000b60  9b104607  ori r1, r12, 116
000b64  e74d1ff0  storeli.w r1, -1828(r30)
000b68  9b105607  ori r1, r12, 117
000b6c  e70d1ff0  storeli.w r1, -1832(r30)
000b70  9b106607  ori r1, r12, 118
000b74  674d1ff0  storeli.w r1, -1836(r30)
000b78  9b107607  ori r1, r12, 119
000b7c  670d1ff0  storeli.w r1, -1840(r30)
000b80  9b108607  ori r1, r12, 120
000b84  e74c1ff0  storeli.w r1, -1844(r30)
000b88  9b109607  ori r1, r12, 121
000b8c  e70c1ff0  storeli.w r1, -1848(r30)
000b90  9b10a607  ori r1, r12, 122
000b94  674c1ff0  storeli.w r1, -1852(r30)
000b98  9b10b607  ori r1, r12, 123
000b9c  670c1ff0  storeli.w r1, -1856(r30)
000ba0  9b10d607  ori r1, r12, 125
000ba4  e74b1ff0  storeli.w r1, -1860(r30)
000ba8  9b10e607  ori r1, r12, 126
000bac  e70b1ff0  storeli.w r1, -1864(r30)
000bb0  9b10f607  ori r1, r12, 127
000bb4  63060ff4  loadli.w r12,  -1536(r30)
000bb8  670f1ff0  storeli.w r1, -1808(r30)
000bbc  e3008ff4  loadli.w r1,  -1472(r30)
000bc0  13163604  setlt.s r12, r12, r3
000bc4  93903004  setlt.s r1, r1, r3
000bc8  e74ecff0  storeli.w r12, -1812(r30)
000bcc  63068ff3  loadli.w r12,  -1600(r30)
000bd0  9bb07000  slli r1, r1, 7
000bd4  13163604  setlt.s r12, r12, r3
000bd8  e700cff2  storeli.w r12, -1784(r30)
000bdc  63467ff3  loadli.w r12,  -1604(r30)
000be0  13163604  setlt.s r12, r12, r3
000be4  e740cff2  storeli.w r12, -1780(r30)
000be8  63067ff3  loadli.w r12,  -1608(r30)
000bec  13163604  setlt.s r12, r12, r3
000bf0  6701cff2  storeli.w r12, -1776(r30)
000bf4  63063ff3  loadli.w r12,  -1640(r30)
000bf8  13163604  setlt.s r12, r12, r3
000bfc  6741cff2  storeli.w r12, -1772(r30)
000c00  63461ff3  loadli.w r12,  -1652(r30)
000c04  13163604  setlt.s r12, r12, r3
000c08  e701cff2  storeli.w r12, -1768(r30)
000c0c  63061ff3  loadli.w r12,  -1656(r30)
000c10  13163604  setlt.s r12, r12, r3
000c14  e741cff2  storeli.w r12, -1764(r30)
000c18  63068ff2  loadli.w r12,  -1728(r30)
000c1c  13163604  setlt.s r12, r12, r3
000c20  e74fcff0  storeli.w r12, -1796(r30)
000c24  63467ff2  loadli.w r12,  -1732(r30)
000c28  13163604  setlt.s r12, r12, r3
000c2c  674fcff0  storeli.w r12, -1804(r30)
000c30  63067ff2  loadli.w r12,  -1736(r30)
000c34  13163604  setlt.s r12, r12, r3
000c38  e70fcff0  storeli.w r12, -1800(r30)
000c3c  63466ff2  loadli.w r12,  -1740(r30)
000c40  13163604  setlt.s r12, r12, r3
000c44  6700cff2  storeli.w r12, -1792(r30)
000c48  63066ff2  loadli.w r12,  -1744(r30)
000c4c  13163604  setlt.s r12, r12, r3
000c50  6740cff2  storeli.w r12, -1788(r30)
000c54  13963d04  setlt.s r12, r27, r3
000c58  931d3104  setlt.s r27, r2, r3
000c5c  13113304  setlt.s r2, r6, r3
000c60  13933404  setlt.s r6, r9, r3
000c64  93943604  setlt.s r9, r13, r3
000c68  6742cff2  storeli.w r12, -1756(r30)
000c6c  13163e04  setlt.s r12, r28, r3
000c70  131e3204  setlt.s r28, r4, r3
000c74  13923204  setlt.s r4, r5, r3
000c78  93923304  setlt.s r5, r7, r3
000c7c  93133404  setlt.s r7, r8, r3
000c80  13943504  setlt.s r8, r11, r3
000c84  e305fff1  loadli.w r11,  -1800(r30)
000c88  1b313100  slli r2, r2, 3
000c8c  9bb52500  slli r11, r11, 2
000c90  e742cff2  storeli.w r12, -1748(r30)
000c94  63065ff2  loadli.w r12,  -1752(r30)
000c98  e7029ff2  storeli.w r9, -1752(r30)
000c9c  93143704  setlt.s r9, r14, r3
000ca0  13973a04  setlt.s r14, r21, r3
000ca4  1b322200  slli r4, r4, 2
000ca8  9bb24200  slli r5, r5, 4
000cac  13163604  setlt.s r12, r12, r3
000cb0  e7489ff2  storeli.w r9, -1652(r30)
000cb4  93943704  setlt.s r9, r15, r3
000cb8  6703cff2  storeli.w r12, -1744(r30)
000cbc  13163b04  setlt.s r12, r22, r3
000cc0  e70b9ff2  storeli.w r9, -1608(r30)
000cc4  93143804  setlt.s r9, r16, r3
000cc8  670c9ff2  storeli.w r9, -1600(r30)
000ccc  93943804  setlt.s r9, r17, r3
000cd0  67049ff4  storeli.w r9, -1472(r30)
000cd4  93943b04  setlt.s r9, r23, r3
000cd8  e7439ff2  storeli.w r9, -1732(r30)
000cdc  e304dff1  loadli.w r9,  -1816(r30)
000ce0  93943404  setlt.s r9, r9, r3
000ce4  67439ff2  storeli.w r9, -1740(r30)
000ce8  e344cff1  loadli.w r9,  -1820(r30)
000cec  93943404  setlt.s r9, r9, r3
000cf0  e7039ff2  storeli.w r9, -1736(r30)
000cf4  e304cff1  loadli.w r9,  -1824(r30)
000cf8  93943404  setlt.s r9, r9, r3
000cfc  67049ff2  storeli.w r9, -1728(r30)
000d00  e344bff1  loadli.w r9,  -1828(r30)
000d04  93943404  setlt.s r9, r9, r3
000d08  e7089ff2  storeli.w r9, -1656(r30)
000d0c  e304bff1  loadli.w r9,  -1832(r30)
000d10  93943404  setlt.s r9, r9, r3
000d14  e7099ff2  storeli.w r9, -1640(r30)
000d18  e344aff1  loadli.w r9,  -1836(r30)
000d1c  93943404  setlt.s r9, r9, r3
000d20  e74b9ff2  storeli.w r9, -1604(r30)
000d24  e304aff1  loadli.w r9,  -1840(r30)
000d28  93943404  setlt.s r9, r9, r3
000d2c  67009ff4  storeli.w r9, -1536(r30)
000d30  e3449ff1  loadli.w r9,  -1844(r30)
000d34  939b3404  setlt.s r23, r9, r3
000d38  e3049ff1  loadli.w r9,  -1848(r30)
000d3c  139b3404  setlt.s r22, r9, r3
000d40  e3448ff1  loadli.w r9,  -1852(r30)
000d44  939a3404  setlt.s r21, r9, r3
000d48  e3048ff1  loadli.w r9,  -1856(r30)
000d4c  93983404  setlt.s r17, r9, r3
000d50  e3447ff1  loadli.w r9,  -1860(r30)
000d54  13983404  setlt.s r16, r9, r3
000d58  e3047ff1  loadli.w r9,  -1864(r30)
000d5c  93973404  setlt.s r15, r9, r3
000d60  e304eff1  loadli.w r9,  -1808(r30)
000d64  93963404  setlt.s r13, r9, r3
000d68  e3014ff2  loadli.w r3,  -1760(r30)
000d6c  e344eff1  loadli.w r9,  -1804(r30)
000d70  97901100  or r1, r3, r1
000d74  e341dff1  loadli.w r3,  -1812(r30)
000d78  9bb41400  slli r9, r9, 1
000d7c  9bb18100  slli r3, r3, 8
000d80  97903000  or r1, r1, r3
000d84  e341fff1  loadli.w r3,  -1796(r30)
000d88  97913400  or r3, r9, r3
000d8c  e3041ff2  loadli.w r9,  -1784(r30)
000d90  9791b100  or r3, r3, r11
000d94  e3050ff2  loadli.w r11,  -1792(r30)
000d98  9bb49400  slli r9, r9, 9
000d9c  97909000  or r1, r1, r9
000da0  e3441ff2  loadli.w r9,  -1780(r30)
000da4  9bb53500  slli r11, r11, 3
000da8  9791b100  or r3, r3, r11
000dac  e3450ff2  loadli.w r11,  -1788(r30)
000db0  9bb4a400  slli r9, r9, 10
000db4  97909000  or r1, r1, r9
000db8  e3042ff2  loadli.w r9,  -1776(r30)
000dbc  9bb54500  slli r11, r11, 4
000dc0  9791b100  or r3, r3, r11
000dc4  9bb4b400  slli r9, r9, 11
000dc8  9791a100  or r3, r3, r10
000dcc  1b356900  slli r10, r18, 6
000dd0  97909000  or r1, r1, r9
000dd4  e3040ff6  loadli.w r9,  -1280(r30)
000dd8  9791a100  or r3, r3, r10
000ddc  1bb57900  slli r10, r19, 7
000de0  9bb4c400  slli r9, r9, 12
000de4  97909000  or r1, r1, r9
000de8  e3442ff2  loadli.w r9,  -1772(r30)
000dec  9bb4d400  slli r9, r9, 13
000df0  97909000  or r1, r1, r9
000df4  e3043ff2  loadli.w r9,  -1768(r30)
000df8  9bb4e400  slli r9, r9, 14
000dfc  97909000  or r1, r1, r9
000e00  9794a100  or r9, r3, r10
000e04  e3413ff2  loadli.w r3,  -1764(r30)
000e08  1b358a00  slli r10, r20, 8
000e0c  634a3f00  loadli.w r20,  28(r30)
000e10  9bb1f100  slli r3, r3, 15
000e14  97913000  or r3, r1, r3
000e18  9790a400  or r1, r9, r10
000e1c  9b349c00  slli r9, r24, 9
000e20  1b351e00  slli r10, r28, 1
000e24  630e8ff9  loadli.w r28,  -832(r30)
000e28  1f0c0ffa  addli r24, r30, -768
000e2c  97909000  or r1, r1, r9
000e30  9714b501  or r9, r10, r27
000e34  1bb5ac00  slli r10, r25, 10
000e38  e30d8ff0  loadli.w r27,  -1984(r30)
000e3c  9f0c0002  addli r25, zero, 256
000e40  17924400  or r4, r9, r4
000e44  9790a000  or r1, r1, r10
000e48  9b34bd00  slli r9, r26, 11
000e4c  6b550fc0  load.d r[11:12], -1024(r30)
000e50  2b0d0000  lui r26, 0
000e54  17112200  or r2, r4, r2
000e58  63022ff3  loadli.w r4,  -1648(r30)
000e5c  97909000  or r1, r1, r9
000e60  1f0d0d00  addli r26, r26, 0
000e64  17115100  or r2, r2, r5
000e68  9bb25300  slli r5, r7, 5
000e6c  e3030ff4  loadli.w r7,  -1536(r30)
000e70  1b32c200  slli r4, r4, 12
000e74  17115100  or r2, r2, r5
000e78  9b326300  slli r5, r6, 6
000e7c  63037ff2  loadli.w r6,  -1736(r30)
000e80  97904000  or r1, r1, r4
000e84  63424ff2  loadli.w r4,  -1756(r30)
000e88  9bb37300  slli r7, r7, 7
000e8c  17115100  or r2, r2, r5
000e90  9b327400  slli r5, r8, 7
000e94  6b548f00  load.d r[9:10], 8(r30)
000e98  1b332300  slli r6, r6, 2
000e9c  1b32d200  slli r4, r4, 13
000ea0  17115100  or r2, r2, r5
000ea4  e3426ff2  loadli.w r5,  -1740(r30)
000ea8  97904000  or r1, r1, r4
000eac  63425ff2  loadli.w r4,  -1748(r30)
000eb0  9bb21200  slli r5, r5, 1
000eb4  1b32e200  slli r4, r4, 14
000eb8  97904000  or r1, r1, r4
000ebc  63026ff2  loadli.w r4,  -1744(r30)
000ec0  1b32f200  slli r4, r4, 15
000ec4  97904000  or r1, r1, r4
000ec8  63025ff2  loadli.w r4,  -1752(r30)
000ecc  1b328200  slli r4, r4, 8
000ed0  17114100  or r2, r2, r4
000ed4  63427ff2  loadli.w r4,  -1732(r30)
000ed8  17924200  or r4, r5, r4
000edc  e3421ff3  loadli.w r5,  -1652(r30)
000ee0  17126200  or r4, r4, r6
000ee4  63038ff2  loadli.w r6,  -1728(r30)
000ee8  9bb29200  slli r5, r5, 9
000eec  17115100  or r2, r2, r5
000ef0  e3027ff3  loadli.w r5,  -1608(r30)
000ef4  1b333300  slli r6, r6, 3
000ef8  17126200  or r4, r4, r6
000efc  63031ff3  loadli.w r6,  -1656(r30)
000f00  9bb2a200  slli r5, r5, 10
000f04  17115100  or r2, r2, r5
000f08  e3028ff3  loadli.w r5,  -1600(r30)
000f0c  1b334300  slli r6, r6, 4
000f10  17126200  or r4, r4, r6
000f14  63033ff3  loadli.w r6,  -1640(r30)
000f18  9bb2b200  slli r5, r5, 11
000f1c  17115100  or r2, r2, r5
000f20  e3020ff5  loadli.w r5,  -1408(r30)
000f24  1b335300  slli r6, r6, 5
000f28  17126200  or r4, r4, r6
000f2c  63437ff3  loadli.w r6,  -1604(r30)
000f30  9bb2c200  slli r5, r5, 12
000f34  17115100  or r2, r2, r5
000f38  e3028ff4  loadli.w r5,  -1472(r30)
000f3c  1b336300  slli r6, r6, 6
000f40  17126200  or r4, r4, r6
000f44  9bb2d200  slli r5, r5, 13
000f48  17127200  or r4, r4, r7
000f4c  17115100  or r2, r2, r5
000f50  eb520f00  load.d r[6:7], 0(r30)
000f54  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000f58  733c5f98  store.d r[6:7], -1640(r30)
000f5c  8b22a410  add.ul r[6:7], r[9:10], r[11:12]
000f60  63447ff9  loadli.w r8,  -836(r30)
000f64  9f048ff2  addli r9, r30, -1728
000f68  73385f98  store.d r[6:7], -1648(r30)
000f6c  9bb28b00  slli r5, r23, 8
000f70  63038ff8  loadli.w r6,  -960(r30)
000f74  17125200  or r4, r4, r5
000f78  9f822d08  addli r5, r27, 1040
000f7c  9b331300  slli r7, r6, 1
000f80  1b33e700  slli r6, r14, 14
000f84  e7485ff2  storeli.w r5, -1652(r30)
000f88  9b329b00  slli r5, r22, 9
000f8c  17116100  or r2, r2, r6
000f90  1b33f600  slli r6, r12, 15
000f94  17125200  or r4, r4, r5
000f98  9bb2aa00  slli r5, r21, 10
000f9c  9f0a0ffc  addli r21, r30, -512
000fa0  17116100  or r2, r2, r6
000fa4  2bf3ffff  lui r6, 1048575
000fa8  17125200  or r4, r4, r5
000fac  9bb2b800  slli r5, r17, 11
000fb0  7e0101e0  vmmov mr2, r2
000fb4  17125200  or r4, r4, r5
000fb8  e3028ff5  loadli.w r5,  -1344(r30)
000fbc  00a00000  mfence { lm }
000fc0  46900402  vstore_mask16.mz vr0{mr1}, 0(r9)
000fc4  e7087ff2  storeli.w r7, -1656(r30)
000fc8  46149f82  vstore_mask16.mz vr9{mr1}, 1088(r30)
000fcc  9bb2c200  slli r5, r5, 12
000fd0  17125200  or r4, r4, r5
000fd4  9b32d800  slli r5, r16, 13
000fd8  17125200  or r4, r4, r5
000fdc  9bb2e700  slli r5, r15, 14
000fe0  17125200  or r4, r4, r5
000fe4  9b1203f0  ori r5, r6, 3840
000fe8  1bb3f600  slli r6, r13, 15
000fec  97025400  and r5, r8, r5
000ff0  1f140000  addli r8, zero, 1
000ff4  17126200  or r4, r4, r6
000ff8  2bf30000  lui r6, 15
000ffc  0b9ba211  add.s r22, r5, r26
001000  80320002  core_id r5
001004  1b19f3ff  ori r18, r6, 4095
001008  fe0102e0  vmmov mr3, r4
00100c  9b88f203  andi r17, r5, 63
001010  ab0280ff  lui r5, 1046528
001014  9f0b2b08  addli r23, r22, 1040
001018  e70b2ff3  storeli.w r18, -1608(r30)
00101c  6a950222  vor.f.mz vr10{mr1}, r5, vr0
001020  e342eff7  loadli.w r5,  -1036(r30)
001024  e74b1ff3  storeli.w r17, -1604(r30)
001028  7e8002e0  vmmov mr0, r5
00102c  e3020ff7  loadli.w r5,  -1152(r30)
001030  7e0000a0  vmmov zero, mr0
001034  4610af82  vstore_mask16.mz vr10{mr1}, 1024(r30)
001038  e7430ff2  storeli.w zero, -1732(r30)
00103c  17200000  xor zero, zero, zero
001040  7e8002e0  vmmov mr0, r5
001044  e3028ff6  loadli.w r5,  -1216(r30)
001048  7e0000a0  vmmov zero, mr0
00104c  e7030ff2  storeli.w zero, -1736(r30)
001050  17200000  xor zero, zero, zero
001054  7e8002e0  vmmov mr0, r5
001058  e342fff7  loadli.w r5,  -1028(r30)
00105c  7e0000a0  vmmov zero, mr0
001060  67430ff2  storeli.w zero, -1740(r30)
001064  17200000  xor zero, zero, zero
001068  7e8002e0  vmmov mr0, r5
00106c  e302fff7  loadli.w r5,  -1032(r30)
001070  7e0000a0  vmmov zero, mr0
001074  67030ff2  storeli.w zero, -1744(r30)
001078  17200000  xor zero, zero, zero
00107c  7e8002e0  vmmov mr0, r5
001080  7e0000a0  vmmov zero, mr0
001084  7e8001e0  vmmov mr0, r3
001088  e7420ff2  storeli.w zero, -1748(r30)
00108c  17200000  xor zero, zero, zero
001090  7e0000a0  vmmov zero, mr0
001094  7e8000e0  vmmov mr0, r1
001098  e74b0ff8  storeli.w zero, -836(r30)
00109c  17200000  xor zero, zero, zero
0010a0  7e0001a0  vmmov zero, mr2
0010a4  e7020ff2  storeli.w zero, -1752(r30)
0010a8  7e0000a0  vmmov zero, mr0
0010ac  e74f0ff6  storeli.w zero, -1028(r30)
0010b0  7e8001a0  vmmov zero, mr3
0010b4  e70f0ff6  storeli.w zero, -1032(r30)
0010b8  17200000  xor zero, zero, zero
0010bc  00a00000  mfence { lm }
0010c0  5b1e0000  j 240
0010c4  8b931310  add.s r7, r7, r1
0010c8  bfff43fe  blt.s r7, r4, -4
0010cc  9f0e8ff0  addli sp, r30, -1984
0010d0  9f8e8e0f  addli sp, sp, 1984
0010d4  00a00300  mfence { lm, sm, gm }
0010d8  00100000  exit
0010dc  00a00300  mfence { lm, sm, gm }
0010e0  80210904  csr_set csr3, r18
0010e4  00d00100  sync_group
0010e8  ef400d41  loads.w r1, 1040(r26)
0010ec  63016ff3  loadli.w r2,  -1616(r30)
0010f0  e341eff7  loadli.w r3,  -1036(r30)
0010f4  1f140000  addli r8, zero, 1
0010f8  42128f83  vload_mask16.mz vr4{mr1}, 1216(r30)
0010fc  0b912110  add.s r2, r3, r2
001100  ab01803f  lui r3, 260096
001104  33120128  sext_int2long r[5:6], r2
001108  17328202  sll.d r[5:6], r[5:6], r8
00110c  8f811118  div.f.rn r3, r3, r1
001110  73681d50  stores.w r1, 1296(r26)
001114  eb500f01  load.d r[2:3], 16(r30)
001118  8ba04010  add.ul r[2:3], r[2:3], r[5:6]
00111c  1f020ff7  addli r4, r30, -1152
001120  c2120202  vload_mask16.mz vr5{mr1}, 0(r4)
001124  1f028ff6  addli r4, r30, -1216
001128  42130202  vload_mask16.mz vr6{mr1}, 0(r4)
00112c  1f020ff6  addli r4, r30, -1280
001130  0a900102  vmul.f.mz.rn vr0{mr1}, r3, vr0
001134  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
001138  0a912102  vmul.f.mz.rn vr2{mr1}, r3, vr2
00113c  06140000  vfloat2fp16_l.rn vr8, vr0
001140  06d40000  vfloat2fp16_h.rn vr8, vr1
001144  8a913102  vmul.f.mz.rn vr3{mr1}, r3, vr3
001148  0a924102  vmul.f.mz.rn vr4{mr1}, r3, vr4
00114c  46108fc2  vstore_mask16.mz vr8{mr1}, 1536(r30)
001150  06100100  vfloat2fp16_l.rn vr0, vr2
001154  06d00100  vfloat2fp16_h.rn vr0, vr3
001158  c2130202  vload_mask16.mz vr7{mr1}, 0(r4)
00115c  46140fc2  vstore_mask16.mz vr0{mr1}, 1600(r30)
001160  8a925102  vmul.f.mz.rn vr5{mr1}, r3, vr5
001164  86100200  vfloat2fp16_l.rn vr1, vr4
001168  86d00200  vfloat2fp16_h.rn vr1, vr5
00116c  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
001170  0a936102  vmul.f.mz.rn vr6{mr1}, r3, vr6
001174  8a937102  vmul.f.mz.rn vr7{mr1}, r3, vr7
001178  06110300  vfloat2fp16_l.rn vr2, vr6
00117c  06d10300  vfloat2fp16_h.rn vr2, vr7
001180  461c2fc2  vstore_mask16.mz vr2{mr1}, 1728(r30)
001184  ab0100f0  lui r3, 983040
001188  e3031ff3  loadli.w r7,  -1656(r30)
00118c  00a00000  mfence { lm }
001190  97913300  or r3, r7, r3
001194  ffb15001  s_lm2gm r3, r21, 0(r[2:3])
001198  e3405ff3  loadli.w r1,  -1620(r30)
00119c  00a00000  mfence { lm }
0011a0  0b1e1e10  add.s r28, r28, r1
0011a4  e3406ff3  loadli.w r1,  -1612(r30)
0011a8  3f201e00  blt.s r28, r1, 8
0011ac  5be4ffff  j -224
0011b0  9f000000  addli r1, zero, 0
0011b4  0b111c10  add.s r2, r24, r1
0011b8  9fc00000  addli r1, r1, 4
0011bc  73100100  store.h zero, 0(r2)
0011c0  73110100  store.h zero, 2(r2)
0011c4  00a00000  mfence { lm }
0011c8  bbbf90ff  bneq r1, r25, -20
0011cc  e3004f00  loadli.w r1,  32(r30)
0011d0  1f110020  addli r2, zero, 4097
0011d4  fe0101c0  vmmov mr3, mr2
0011d8  6b528f99  load.d r[5:6], -1640(r30)
0011dc  ab0100f0  lui r3, 983040
0011e0  97913300  or r3, r7, r3
0011e4  8b101e30  div.s r1, r28, r1
0011e8  8b904031  div.s r1, r1, r20
0011ec  8b902020  mul.s r1, r1, r2
0011f0  674f1ff6  storeli.w r1, -1036(r30)
0011f4  b3900028  sext_int2long r[2:3], r1
0011f8  97b08002  sll.d r[2:3], r[2:3], r8
0011fc  8b201210  add.ul r[2:3], r[5:6], r[2:3]
001200  ffa18001  l_gm2lm r3, r24, 0(r[2:3])
001204  9f000000  addli r1, zero, 0
001208  0b911a10  add.s r2, r21, r1
00120c  9fc00000  addli r1, r1, 4
001210  73100100  store.h zero, 0(r2)
001214  73110100  store.h zero, 2(r2)
001218  00a00000  mfence { lm }
00121c  bbbf90ff  bneq r1, r25, -20
001220  ab0000f0  lui r1, 983040
001224  6b510f99  load.d r[3:4], -1648(r30)
001228  97901300  or r1, r7, r1
00122c  ff205101  l_gm2lm r1, r21, 0(r[3:4])
001230  9f008ff6  addli r1, r30, -1216
001234  00a00000  mfence { lm }
001238  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
00123c  c2108fa2  vload_mask16.mz vr1{mr1}, 1344(r30)
001240  c2110fa3  vload_mask16.mz vr3{mr1}, 1408(r30)
001244  06f10000  vfp162float_h.rn vr2, vr1
001248  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
00124c  9f000ff7  addli r1, r30, -1152
001250  06b20000  vfp162float_l.rn vr4, vr1
001254  c2120fc2  vload_mask16.mz vr5{mr1}, 1536(r30)
001258  06330000  vfp162float_l.rn vr6, vr0
00125c  06740000  vfp162float_h.rn vr8, vr0
001260  06b50200  vfp162float_l.rn vr10, vr5
001264  86f50200  vfp162float_h.rn vr11, vr5
001268  86f30100  vfp162float_h.rn vr7, vr3
00126c  86b00100  vfp162float_l.rn vr1, vr3
001270  1615a302  vadd.f.mz.rn vr10{mr1}, vr6, vr10
001274  1614b402  vadd.f.mz.rn vr8{mr1}, vr8, vr11
001278  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00127c  9f008ff6  addli r1, r30, -1216
001280  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
001284  461c0f82  vstore_mask16.mz vr0{mr1}, 1216(r30)
001288  c2148fc2  vload_mask16.mz vr9{mr1}, 1600(r30)
00128c  86b20400  vfp162float_l.rn vr5, vr9
001290  42130fc3  vload_mask16.mz vr6{mr1}, 1664(r30)
001294  16115202  vadd.f.mz.rn vr2{mr1}, vr4, vr5
001298  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00129c  86f00400  vfp162float_h.rn vr1, vr9
0012a0  9f000ff6  addli r1, r30, -1280
0012a4  06700300  vfp162float_h.rn vr0, vr6
0012a8  86340300  vfp162float_l.rn vr9, vr6
0012ac  16900302  vadd.f.mz.rn vr0{mr1}, vr7, vr0
0012b0  96101202  vadd.f.mz.rn vr1{mr1}, vr4, vr1
0012b4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0012b8  9f000ff4  addli r1, r30, -1536
0012bc  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
0012c0  c2138f82  vload_mask16.mz vr7{mr1}, 1088(r30)
0012c4  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0012c8  9f000ff7  addli r1, r30, -1152
0012cc  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0012d0  9f000ff5  addli r1, r30, -1408
0012d4  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
0012d8  86b40100  vfp162float_l.rn vr9, vr3
0012dc  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0012e0  9f008ff4  addli r1, r30, -1472
0012e4  c2108f83  vload_mask16.mz vr1{mr1}, 1216(r30)
0012e8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0012ec  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
0012f0  9f000ff4  addli r1, r30, -1536
0012f4  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0012f8  63005ff3  loadli.w zero,  -1624(r30)
0012fc  7e0100e0  vmmov mr2, zero
001300  17200000  xor zero, zero, zero
001304  6e92a334  vor.f.mh vr4{mr2}, vr7, vr10
001308  12350002  vadd.s.mz vr10{mr1}, zero, vr0
00130c  63404ff3  loadli.w zero,  -1628(r30)
001310  7e0100e0  vmmov mr2, zero
001314  17200000  xor zero, zero, zero
001318  6e958334  vor.f.mh vr10{mr2}, vr7, vr8
00131c  06f40100  vfp162float_h.rn vr8, vr3
001320  86310300  vfp162float_l.rn vr3, vr6
001324  96923402  vadd.f.mz.rn vr5{mr1}, vr9, vr3
001328  86740300  vfp162float_h.rn vr9, vr6
00132c  16139402  vadd.f.mz.rn vr6{mr1}, vr8, vr9
001330  92350002  vadd.s.mz vr11{mr1}, zero, vr0
001334  63004ff3  loadli.w zero,  -1632(r30)
001338  86b10000  vfp162float_l.rn vr3, vr1
00133c  7e0100e0  vmmov mr2, zero
001340  17200000  xor zero, zero, zero
001344  ee952334  vor.f.mh vr11{mr2}, vr7, vr2
001348  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
00134c  06340100  vfp162float_l.rn vr8, vr2
001350  96918102  vadd.f.mz.rn vr3{mr1}, vr3, vr8
001354  9f000ff7  addli r1, r30, -1152
001358  86740100  vfp162float_h.rn vr9, vr2
00135c  12340002  vadd.s.mz vr8{mr1}, zero, vr0
001360  63407ff9  loadli.w zero,  -836(r30)
001364  7e0100e0  vmmov mr2, zero
001368  17200000  xor zero, zero, zero
00136c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
001370  6e945334  vor.f.mh vr8{mr2}, vr7, vr5
001374  92310002  vadd.s.mz vr3{mr1}, zero, vr0
001378  36148202  vmax.f.mz vr8{mr1}, vr4, vr8
00137c  ee916330  vor.f.mh vr3{mr0}, vr7, vr6
001380  06f30000  vfp162float_h.rn vr6, vr1
001384  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
001388  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00138c  9f008ff6  addli r1, r30, -1216
001390  16139302  vadd.f.mz.rn vr6{mr1}, vr6, vr9
001394  92340002  vadd.s.mz vr9{mr1}, zero, vr0
001398  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
00139c  9f000ff6  addli r1, r30, -1280
0013a0  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0013a4  b6113502  vmax.f.mz vr3{mr1}, vr10, vr3
0013a8  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
0013ac  9f008ff5  addli r1, r30, -1344
0013b0  ee941336  vor.f.mh vr9{mr3}, vr7, vr1
0013b4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0013b8  63407ff2  loadli.w zero,  -1732(r30)
0013bc  b6113402  vmax.f.mz vr3{mr1}, vr8, vr3
0013c0  06340100  vfp162float_l.rn vr8, vr2
0013c4  7e0100e0  vmmov mr2, zero
0013c8  17200000  xor zero, zero, zero
0013cc  ee904334  vor.f.mh vr1{mr2}, vr7, vr4
0013d0  42128f83  vload_mask16.mz vr4{mr1}, 1216(r30)
0013d4  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0013d8  6300fff7  loadli.w zero,  -1032(r30)
0013dc  7e0000e0  vmmov mr0, zero
0013e0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0013e4  9f000ff5  addli r1, r30, -1408
0013e8  17200000  xor zero, zero, zero
0013ec  ee926330  vor.f.mh vr5{mr0}, vr7, vr6
0013f0  36939502  vmax.f.mz vr6{mr1}, vr11, vr9
0013f4  86340200  vfp162float_l.rn vr9, vr4
0013f8  16948402  vadd.f.mz.rn vr8{mr1}, vr9, vr8
0013fc  b6945002  vmax.f.mz vr9{mr1}, vr1, vr5
001400  86720100  vfp162float_h.rn vr5, vr2
001404  b6916102  vmax.f.mz vr3{mr1}, vr3, vr6
001408  06730200  vfp162float_h.rn vr6, vr4
00140c  16125302  vadd.f.mz.rn vr4{mr1}, vr6, vr5
001410  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001414  63007ff2  loadli.w zero,  -1736(r30)
001418  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
00141c  7e0100e0  vmmov mr2, zero
001420  17200000  xor zero, zero, zero
001424  36919102  vmax.f.mz vr2{mr1}, vr3, vr9
001428  ee905334  vor.f.mh vr1{mr2}, vr7, vr5
00142c  7a110140  vextracti.f r2, 0(vr2)
001430  fa111140  vextracti.f r3, 1(vr2)
001434  461c2f82  vstore_mask16.mz vr2{mr1}, 1216(r30)
001438  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00143c  9f008ff4  addli r1, r30, -1472
001440  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001444  63406ff2  loadli.w zero,  -1740(r30)
001448  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
00144c  7e0100e0  vmmov mr2, zero
001450  17200000  xor zero, zero, zero
001454  ee903334  vor.f.mh vr1{mr2}, vr7, vr3
001458  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00145c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001460  63006ff2  loadli.w zero,  -1744(r30)
001464  9f000ff4  addli r1, r30, -1536
001468  7e0100e0  vmmov mr2, zero
00146c  17200000  xor zero, zero, zero
001470  63405ff2  loadli.w zero,  -1748(r30)
001474  ee908334  vor.f.mh vr1{mr2}, vr7, vr8
001478  7e0100e0  vmmov mr2, zero
00147c  17200000  xor zero, zero, zero
001480  63407ff9  loadli.w zero,  -836(r30)
001484  6e904334  vor.f.mh vr0{mr2}, vr7, vr4
001488  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00148c  9f008ff3  addli r1, r30, -1600
001490  7e0000e0  vmmov mr0, zero
001494  6340fff7  loadli.w zero,  -1028(r30)
001498  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
00149c  7e0000e0  vmmov mr0, zero
0014a0  17200000  xor zero, zero, zero
0014a4  57dd0400  jal 9960
0014a8  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0014ac  fa112040  vextracti.f r3, 2(vr0)
0014b0  57dd0400  jal 9960
0014b4  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0014b8  fa113040  vextracti.f r3, 3(vr0)
0014bc  57dd0400  jal 9960
0014c0  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0014c4  fa114040  vextracti.f r3, 4(vr0)
0014c8  57dd0400  jal 9960
0014cc  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0014d0  fa115040  vextracti.f r3, 5(vr0)
0014d4  57dd0400  jal 9960
0014d8  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0014dc  fa116040  vextracti.f r3, 6(vr0)
0014e0  57dd0400  jal 9960
0014e4  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0014e8  fa117040  vextracti.f r3, 7(vr0)
0014ec  57dd0400  jal 9960
0014f0  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
0014f4  fa118040  vextracti.f r3, 8(vr0)
0014f8  57dd0400  jal 9960
0014fc  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
001500  fa119040  vextracti.f r3, 9(vr0)
001504  57dd0400  jal 9960
001508  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
00150c  fa11a040  vextracti.f r3, 10(vr0)
001510  57dd0400  jal 9960
001514  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
001518  fa11b040  vextracti.f r3, 11(vr0)
00151c  57dd0400  jal 9960
001520  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
001524  fa11c040  vextracti.f r3, 12(vr0)
001528  57dd0400  jal 9960
00152c  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
001530  fa11d040  vextracti.f r3, 13(vr0)
001534  57dd0400  jal 9960
001538  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
00153c  fa11e040  vextracti.f r3, 14(vr0)
001540  57dd0400  jal 9960
001544  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
001548  fa11f040  vextracti.f r3, 15(vr0)
00154c  57dd0400  jal 9960
001550  73e02d00  stores.w r2, 0(r27)
001554  00a00300  mfence { lm, sm, gm }
001558  63097ff3  loadli.w r18,  -1608(r30)
00155c  80210904  csr_set csr3, r18
001560  00d00100  sync_group
001564  e3487ff3  loadli.w r17,  -1604(r30)
001568  3ba00802  bneq r17, zero, 1032
00156c  ef408b01  loads.w r1, 24(r22)
001570  6f410b00  loads.w r2, 0(r22)
001574  ef414b00  loads.w r3, 4(r22)
001578  1f0d0e00  addli r26, r28, 0
00157c  6f4a8b00  loads.w r20, 8(r22)
001580  ef49cb00  loads.w r19, 12(r22)
001584  6f4e0b01  loads.w r28, 16(r22)
001588  ef4d4b01  loads.w r27, 20(r22)
00158c  67441ff0  storeli.w r1, -1980(r30)
001590  ef40cb01  loads.w r1, 28(r22)
001594  e7041ff0  storeli.w r1, -1976(r30)
001598  ef400b02  loads.w r1, 32(r22)
00159c  e7441ff0  storeli.w r1, -1972(r30)
0015a0  ef404b02  loads.w r1, 36(r22)
0015a4  67051ff0  storeli.w r1, -1968(r30)
0015a8  ef408b02  loads.w r1, 40(r22)
0015ac  67451ff0  storeli.w r1, -1964(r30)
0015b0  ef40cb02  loads.w r1, 44(r22)
0015b4  e7051ff0  storeli.w r1, -1960(r30)
0015b8  ef400b03  loads.w r1, 48(r22)
0015bc  e7451ff0  storeli.w r1, -1956(r30)
0015c0  ef404b03  loads.w r1, 52(r22)
0015c4  67061ff0  storeli.w r1, -1952(r30)
0015c8  ef408b03  loads.w r1, 56(r22)
0015cc  67461ff0  storeli.w r1, -1948(r30)
0015d0  ef40cb03  loads.w r1, 60(r22)
0015d4  e7061ff0  storeli.w r1, -1944(r30)
0015d8  ef400b04  loads.w r1, 64(r22)
0015dc  e7461ff0  storeli.w r1, -1940(r30)
0015e0  ef404b04  loads.w r1, 68(r22)
0015e4  67071ff0  storeli.w r1, -1936(r30)
0015e8  ef408b04  loads.w r1, 72(r22)
0015ec  67471ff0  storeli.w r1, -1932(r30)
0015f0  ef40cb04  loads.w r1, 76(r22)
0015f4  e7071ff0  storeli.w r1, -1928(r30)
0015f8  ef400b05  loads.w r1, 80(r22)
0015fc  e7471ff0  storeli.w r1, -1924(r30)
001600  ef404b05  loads.w r1, 84(r22)
001604  67081ff0  storeli.w r1, -1920(r30)
001608  ef408b05  loads.w r1, 88(r22)
00160c  67481ff0  storeli.w r1, -1916(r30)
001610  ef40cb05  loads.w r1, 92(r22)
001614  e7081ff0  storeli.w r1, -1912(r30)
001618  ef400b06  loads.w r1, 96(r22)
00161c  e7481ff0  storeli.w r1, -1908(r30)
001620  ef404b06  loads.w r1, 100(r22)
001624  67091ff0  storeli.w r1, -1904(r30)
001628  ef408b06  loads.w r1, 104(r22)
00162c  67491ff0  storeli.w r1, -1900(r30)
001630  ef40cb06  loads.w r1, 108(r22)
001634  e7091ff0  storeli.w r1, -1896(r30)
001638  ef400b07  loads.w r1, 112(r22)
00163c  e7491ff0  storeli.w r1, -1892(r30)
001640  ef404b07  loads.w r1, 116(r22)
001644  670a1ff0  storeli.w r1, -1888(r30)
001648  ef408b07  loads.w r1, 120(r22)
00164c  674a1ff0  storeli.w r1, -1884(r30)
001650  ef40cb07  loads.w r1, 124(r22)
001654  e70a1ff0  storeli.w r1, -1880(r30)
001658  ef400b08  loads.w r1, 128(r22)
00165c  e74a1ff0  storeli.w r1, -1876(r30)
001660  ef404b08  loads.w r1, 132(r22)
001664  670b1ff0  storeli.w r1, -1872(r30)
001668  ef408b08  loads.w r1, 136(r22)
00166c  674b1ff0  storeli.w r1, -1868(r30)
001670  ef40cb08  loads.w r1, 140(r22)
001674  e70b1ff0  storeli.w r1, -1864(r30)
001678  ef400b09  loads.w r1, 144(r22)
00167c  e74b1ff0  storeli.w r1, -1860(r30)
001680  ef404b09  loads.w r1, 148(r22)
001684  670c1ff0  storeli.w r1, -1856(r30)
001688  ef408b09  loads.w r1, 152(r22)
00168c  674c1ff0  storeli.w r1, -1852(r30)
001690  ef40cb09  loads.w r1, 156(r22)
001694  e70c1ff0  storeli.w r1, -1848(r30)
001698  ef400b0a  loads.w r1, 160(r22)
00169c  e74c1ff0  storeli.w r1, -1844(r30)
0016a0  ef404b0a  loads.w r1, 164(r22)
0016a4  670d1ff0  storeli.w r1, -1840(r30)
0016a8  ef408b0a  loads.w r1, 168(r22)
0016ac  674d1ff0  storeli.w r1, -1836(r30)
0016b0  ef40cb0a  loads.w r1, 172(r22)
0016b4  e70d1ff0  storeli.w r1, -1832(r30)
0016b8  ef400b0b  loads.w r1, 176(r22)
0016bc  e74d1ff0  storeli.w r1, -1828(r30)
0016c0  ef404b0b  loads.w r1, 180(r22)
0016c4  670e1ff0  storeli.w r1, -1824(r30)
0016c8  ef408b0b  loads.w r1, 184(r22)
0016cc  674e1ff0  storeli.w r1, -1820(r30)
0016d0  ef40cb0b  loads.w r1, 188(r22)
0016d4  e70e1ff0  storeli.w r1, -1816(r30)
0016d8  ef400b0c  loads.w r1, 192(r22)
0016dc  e74e1ff0  storeli.w r1, -1812(r30)
0016e0  ef404b0c  loads.w r1, 196(r22)
0016e4  670f1ff0  storeli.w r1, -1808(r30)
0016e8  ef408b0c  loads.w r1, 200(r22)
0016ec  674f1ff0  storeli.w r1, -1804(r30)
0016f0  ef40cb0c  loads.w r1, 204(r22)
0016f4  e70f1ff0  storeli.w r1, -1800(r30)
0016f8  ef400b0d  loads.w r1, 208(r22)
0016fc  e74f1ff0  storeli.w r1, -1796(r30)
001700  ef404b0d  loads.w r1, 212(r22)
001704  67001ff2  storeli.w r1, -1792(r30)
001708  ef408b0d  loads.w r1, 216(r22)
00170c  67401ff2  storeli.w r1, -1788(r30)
001710  ef40cb0d  loads.w r1, 220(r22)
001714  e7001ff2  storeli.w r1, -1784(r30)
001718  ef400b0e  loads.w r1, 224(r22)
00171c  e7401ff2  storeli.w r1, -1780(r30)
001720  ef404b0e  loads.w r1, 228(r22)
001724  67011ff2  storeli.w r1, -1776(r30)
001728  ef408b0e  loads.w r1, 232(r22)
00172c  67411ff2  storeli.w r1, -1772(r30)
001730  ef40cb0e  loads.w r1, 236(r22)
001734  e7011ff2  storeli.w r1, -1768(r30)
001738  ef400b0f  loads.w r1, 240(r22)
00173c  e7411ff2  storeli.w r1, -1764(r30)
001740  ef404b0f  loads.w r1, 244(r22)
001744  67021ff2  storeli.w r1, -1760(r30)
001748  ef408b0f  loads.w r1, 248(r22)
00174c  67421ff2  storeli.w r1, -1756(r30)
001750  ef40cb0f  loads.w r1, 252(r22)
001754  00a00000  mfence { lm }
001758  670c1ff8  storeli.w r1, -832(r30)
00175c  57dd0400  jal 9960
001760  9f010a00  addli r3, r20, 0
001764  57dd0400  jal 9960
001768  9f810900  addli r3, r19, 0
00176c  57dd0400  jal 9960
001770  9f010e00  addli r3, r28, 0
001774  1f0e0d00  addli r28, r26, 0
001778  57dd0400  jal 9960
00177c  9f810d00  addli r3, r27, 0
001780  e30d8ff0  loadli.w r27,  -1984(r30)
001784  57dd0400  jal 9960
001788  e3418ff0  loadli.w r3,  -1980(r30)
00178c  2b0d0000  lui r26, 0
001790  634a3f00  loadli.w r20,  28(r30)
001794  1f0d0d00  addli r26, r26, 0
001798  57dd0400  jal 9960
00179c  e3019ff0  loadli.w r3,  -1976(r30)
0017a0  57dd0400  jal 9960
0017a4  e3419ff0  loadli.w r3,  -1972(r30)
0017a8  57dd0400  jal 9960
0017ac  e301aff0  loadli.w r3,  -1968(r30)
0017b0  57dd0400  jal 9960
0017b4  e341aff0  loadli.w r3,  -1964(r30)
0017b8  57dd0400  jal 9960
0017bc  e301bff0  loadli.w r3,  -1960(r30)
0017c0  57dd0400  jal 9960
0017c4  e341bff0  loadli.w r3,  -1956(r30)
0017c8  57dd0400  jal 9960
0017cc  e301cff0  loadli.w r3,  -1952(r30)
0017d0  57dd0400  jal 9960
0017d4  e341cff0  loadli.w r3,  -1948(r30)
0017d8  57dd0400  jal 9960
0017dc  e301dff0  loadli.w r3,  -1944(r30)
0017e0  57dd0400  jal 9960
0017e4  e341dff0  loadli.w r3,  -1940(r30)
0017e8  57dd0400  jal 9960
0017ec  e301eff0  loadli.w r3,  -1936(r30)
0017f0  57dd0400  jal 9960
0017f4  e341eff0  loadli.w r3,  -1932(r30)
0017f8  57dd0400  jal 9960
0017fc  e301fff0  loadli.w r3,  -1928(r30)
001800  57dd0400  jal 9960
001804  e341fff0  loadli.w r3,  -1924(r30)
001808  57dd0400  jal 9960
00180c  e3010ff1  loadli.w r3,  -1920(r30)
001810  57dd0400  jal 9960
001814  e3410ff1  loadli.w r3,  -1916(r30)
001818  57dd0400  jal 9960
00181c  e3011ff1  loadli.w r3,  -1912(r30)
001820  57dd0400  jal 9960
001824  e3411ff1  loadli.w r3,  -1908(r30)
001828  57dd0400  jal 9960
00182c  e3012ff1  loadli.w r3,  -1904(r30)
001830  57dd0400  jal 9960
001834  e3412ff1  loadli.w r3,  -1900(r30)
001838  57dd0400  jal 9960
00183c  e3013ff1  loadli.w r3,  -1896(r30)
001840  57dd0400  jal 9960
001844  e3413ff1  loadli.w r3,  -1892(r30)
001848  57dd0400  jal 9960
00184c  e3014ff1  loadli.w r3,  -1888(r30)
001850  57dd0400  jal 9960
001854  e3414ff1  loadli.w r3,  -1884(r30)
001858  57dd0400  jal 9960
00185c  e3015ff1  loadli.w r3,  -1880(r30)
001860  57dd0400  jal 9960
001864  e3415ff1  loadli.w r3,  -1876(r30)
001868  57dd0400  jal 9960
00186c  e3016ff1  loadli.w r3,  -1872(r30)
001870  57dd0400  jal 9960
001874  e3416ff1  loadli.w r3,  -1868(r30)
001878  57dd0400  jal 9960
00187c  e3017ff1  loadli.w r3,  -1864(r30)
001880  57dd0400  jal 9960
001884  e3417ff1  loadli.w r3,  -1860(r30)
001888  57dd0400  jal 9960
00188c  e3018ff1  loadli.w r3,  -1856(r30)
001890  57dd0400  jal 9960
001894  e3418ff1  loadli.w r3,  -1852(r30)
001898  57dd0400  jal 9960
00189c  e3019ff1  loadli.w r3,  -1848(r30)
0018a0  57dd0400  jal 9960
0018a4  e3419ff1  loadli.w r3,  -1844(r30)
0018a8  57dd0400  jal 9960
0018ac  e301aff1  loadli.w r3,  -1840(r30)
0018b0  57dd0400  jal 9960
0018b4  e341aff1  loadli.w r3,  -1836(r30)
0018b8  57dd0400  jal 9960
0018bc  e301bff1  loadli.w r3,  -1832(r30)
0018c0  57dd0400  jal 9960
0018c4  e341bff1  loadli.w r3,  -1828(r30)
0018c8  57dd0400  jal 9960
0018cc  e301cff1  loadli.w r3,  -1824(r30)
0018d0  57dd0400  jal 9960
0018d4  e341cff1  loadli.w r3,  -1820(r30)
0018d8  57dd0400  jal 9960
0018dc  e301dff1  loadli.w r3,  -1816(r30)
0018e0  57dd0400  jal 9960
0018e4  e341dff1  loadli.w r3,  -1812(r30)
0018e8  57dd0400  jal 9960
0018ec  e301eff1  loadli.w r3,  -1808(r30)
0018f0  57dd0400  jal 9960
0018f4  e341eff1  loadli.w r3,  -1804(r30)
0018f8  57dd0400  jal 9960
0018fc  e301fff1  loadli.w r3,  -1800(r30)
001900  57dd0400  jal 9960
001904  e341fff1  loadli.w r3,  -1796(r30)
001908  57dd0400  jal 9960
00190c  e3010ff2  loadli.w r3,  -1792(r30)
001910  57dd0400  jal 9960
001914  e3410ff2  loadli.w r3,  -1788(r30)
001918  57dd0400  jal 9960
00191c  e3011ff2  loadli.w r3,  -1784(r30)
001920  57dd0400  jal 9960
001924  e3411ff2  loadli.w r3,  -1780(r30)
001928  57dd0400  jal 9960
00192c  e3012ff2  loadli.w r3,  -1776(r30)
001930  57dd0400  jal 9960
001934  e3412ff2  loadli.w r3,  -1772(r30)
001938  57dd0400  jal 9960
00193c  e3013ff2  loadli.w r3,  -1768(r30)
001940  57dd0400  jal 9960
001944  e3413ff2  loadli.w r3,  -1764(r30)
001948  57dd0400  jal 9960
00194c  e3014ff2  loadli.w r3,  -1760(r30)
001950  57dd0400  jal 9960
001954  e3414ff2  loadli.w r3,  -1756(r30)
001958  57dd0400  jal 9960
00195c  e3018ff9  loadli.w r3,  -832(r30)
001960  57dd0400  jal 9960
001964  63097ff3  loadli.w r18,  -1608(r30)
001968  e3487ff3  loadli.w r17,  -1604(r30)
00196c  73602b00  stores.w r2, 0(r22)
001970  00a00300  mfence { lm, sm, gm }
001974  80210904  csr_set csr3, r18
001978  00d00100  sync_group
00197c  ef400d00  loads.w r1, 0(r26)
001980  1f018ff2  addli r2, r30, -1728
001984  9f090ffe  addli r19, r30, -256
001988  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00198c  6a940022  vor.f.mz vr8{mr1}, r1, vr0
001990  73601d10  stores.w r1, 256(r26)
001994  9f000ff7  addli r1, r30, -1152
001998  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
00199c  9f008ff6  addli r1, r30, -1216
0019a0  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
0019a4  9f000ff6  addli r1, r30, -1280
0019a8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0019ac  9f008ff5  addli r1, r30, -1344
0019b0  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0019b4  9f000ff5  addli r1, r30, -1408
0019b8  1e108002  vsub.f.mz.rn vr0{mr1}, vr0, vr8
0019bc  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
0019c0  9f008ff4  addli r1, r30, -1472
0019c4  9e908002  vsub.f.mz.rn vr1{mr1}, vr1, vr8
0019c8  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
0019cc  9f000ff4  addli r1, r30, -1536
0019d0  1e118102  vsub.f.mz.rn vr2{mr1}, vr2, vr8
0019d4  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0019d8  9f008ff3  addli r1, r30, -1600
0019dc  9e918102  vsub.f.mz.rn vr3{mr1}, vr3, vr8
0019e0  c2930002  vload_mask16.mz vr7{mr1}, 0(r1)
0019e4  1e128202  vsub.f.mz.rn vr4{mr1}, vr4, vr8
0019e8  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
0019ec  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0019f0  46182fe2  vstore_mask16.mz vr2{mr1}, 1920(r30)
0019f4  9e928202  vsub.f.mz.rn vr5{mr1}, vr5, vr8
0019f8  461c3fe2  vstore_mask16.mz vr3{mr1}, 1984(r30)
0019fc  00a00000  mfence { lm }
001a00  e3800900  loadli.w r1,  0(r19)
001a04  63c10900  loadli.w r2,  4(r19)
001a08  e3811900  loadli.w r3,  8(r19)
001a0c  63c21900  loadli.w r4,  12(r19)
001a10  e3822900  loadli.w r5,  16(r19)
001a14  63c32900  loadli.w r6,  20(r19)
001a18  e3833900  loadli.w r7,  24(r19)
001a1c  63c43900  loadli.w r8,  28(r19)
001a20  e3844900  loadli.w r9,  32(r19)
001a24  63c54900  loadli.w r10,  36(r19)
001a28  e3855900  loadli.w r11,  40(r19)
001a2c  63c65900  loadli.w r12,  44(r19)
001a30  e3866900  loadli.w r13,  48(r19)
001a34  63c76900  loadli.w r14,  52(r19)
001a38  e3877900  loadli.w r15,  56(r19)
001a3c  63c87900  loadli.w r16,  60(r19)
001a40  8f800000  exp.f.rn r1, r1
001a44  0f010100  exp.f.rn r2, r2
001a48  8f810100  exp.f.rn r3, r3
001a4c  0f020200  exp.f.rn r4, r4
001a50  8f820200  exp.f.rn r5, r5
001a54  0f030300  exp.f.rn r6, r6
001a58  8f830300  exp.f.rn r7, r7
001a5c  0f040400  exp.f.rn r8, r8
001a60  8f840400  exp.f.rn r9, r9
001a64  0f050500  exp.f.rn r10, r10
001a68  8f850500  exp.f.rn r11, r11
001a6c  0f060600  exp.f.rn r12, r12
001a70  8f860600  exp.f.rn r13, r13
001a74  0f070700  exp.f.rn r14, r14
001a78  8f870700  exp.f.rn r15, r15
001a7c  0f080800  exp.f.rn r16, r16
001a80  67801900  storeli.w r1, 0(r19)
001a84  67c02900  storeli.w r2, 4(r19)
001a88  e7803900  storeli.w r3, 8(r19)
001a8c  e7c04900  storeli.w r4, 12(r19)
001a90  67815900  storeli.w r5, 16(r19)
001a94  67c16900  storeli.w r6, 20(r19)
001a98  e7817900  storeli.w r7, 24(r19)
001a9c  e7c18900  storeli.w r8, 28(r19)
001aa0  67829900  storeli.w r9, 32(r19)
001aa4  67c2a900  storeli.w r10, 36(r19)
001aa8  e782b900  storeli.w r11, 40(r19)
001aac  e7c2c900  storeli.w r12, 44(r19)
001ab0  6783d900  storeli.w r13, 48(r19)
001ab4  67c3e900  storeli.w r14, 52(r19)
001ab8  e783f900  storeli.w r15, 56(r19)
001abc  e7c30901  storeli.w r16, 60(r19)
001ac0  e3808900  loadli.w r1,  64(r19)
001ac4  63c18900  loadli.w r2,  68(r19)
001ac8  e3819900  loadli.w r3,  72(r19)
001acc  63c29900  loadli.w r4,  76(r19)
001ad0  e382a900  loadli.w r5,  80(r19)
001ad4  63c3a900  loadli.w r6,  84(r19)
001ad8  e383b900  loadli.w r7,  88(r19)
001adc  63c4b900  loadli.w r8,  92(r19)
001ae0  e384c900  loadli.w r9,  96(r19)
001ae4  63c5c900  loadli.w r10,  100(r19)
001ae8  e385d900  loadli.w r11,  104(r19)
001aec  63c6d900  loadli.w r12,  108(r19)
001af0  e386e900  loadli.w r13,  112(r19)
001af4  63c7e900  loadli.w r14,  116(r19)
001af8  e387f900  loadli.w r15,  120(r19)
001afc  63c8f900  loadli.w r16,  124(r19)
001b00  8f800000  exp.f.rn r1, r1
001b04  0f010100  exp.f.rn r2, r2
001b08  8f810100  exp.f.rn r3, r3
001b0c  0f020200  exp.f.rn r4, r4
001b10  8f820200  exp.f.rn r5, r5
001b14  0f030300  exp.f.rn r6, r6
001b18  8f830300  exp.f.rn r7, r7
001b1c  0f040400  exp.f.rn r8, r8
001b20  8f840400  exp.f.rn r9, r9
001b24  0f050500  exp.f.rn r10, r10
001b28  8f850500  exp.f.rn r11, r11
001b2c  0f060600  exp.f.rn r12, r12
001b30  8f860600  exp.f.rn r13, r13
001b34  0f070700  exp.f.rn r14, r14
001b38  8f870700  exp.f.rn r15, r15
001b3c  0f080800  exp.f.rn r16, r16
001b40  67841900  storeli.w r1, 64(r19)
001b44  67c42900  storeli.w r2, 68(r19)
001b48  e7843900  storeli.w r3, 72(r19)
001b4c  e7c44900  storeli.w r4, 76(r19)
001b50  67855900  storeli.w r5, 80(r19)
001b54  67c56900  storeli.w r6, 84(r19)
001b58  e7857900  storeli.w r7, 88(r19)
001b5c  e7c58900  storeli.w r8, 92(r19)
001b60  67869900  storeli.w r9, 96(r19)
001b64  67c6a900  storeli.w r10, 100(r19)
001b68  e786b900  storeli.w r11, 104(r19)
001b6c  e7c6c900  storeli.w r12, 108(r19)
001b70  6787d900  storeli.w r13, 112(r19)
001b74  67c7e900  storeli.w r14, 116(r19)
001b78  e787f900  storeli.w r15, 120(r19)
001b7c  e7c70901  storeli.w r16, 124(r19)
001b80  e3800901  loadli.w r1,  128(r19)
001b84  63c10901  loadli.w r2,  132(r19)
001b88  e3811901  loadli.w r3,  136(r19)
001b8c  63c21901  loadli.w r4,  140(r19)
001b90  e3822901  loadli.w r5,  144(r19)
001b94  63c32901  loadli.w r6,  148(r19)
001b98  e3833901  loadli.w r7,  152(r19)
001b9c  63c43901  loadli.w r8,  156(r19)
001ba0  e3844901  loadli.w r9,  160(r19)
001ba4  63c54901  loadli.w r10,  164(r19)
001ba8  e3855901  loadli.w r11,  168(r19)
001bac  63c65901  loadli.w r12,  172(r19)
001bb0  e3866901  loadli.w r13,  176(r19)
001bb4  63c76901  loadli.w r14,  180(r19)
001bb8  e3877901  loadli.w r15,  184(r19)
001bbc  63c87901  loadli.w r16,  188(r19)
001bc0  8f800000  exp.f.rn r1, r1
001bc4  0f010100  exp.f.rn r2, r2
001bc8  8f810100  exp.f.rn r3, r3
001bcc  0f020200  exp.f.rn r4, r4
001bd0  8f820200  exp.f.rn r5, r5
001bd4  0f030300  exp.f.rn r6, r6
001bd8  8f830300  exp.f.rn r7, r7
001bdc  0f040400  exp.f.rn r8, r8
001be0  8f840400  exp.f.rn r9, r9
001be4  0f050500  exp.f.rn r10, r10
001be8  8f850500  exp.f.rn r11, r11
001bec  0f060600  exp.f.rn r12, r12
001bf0  8f860600  exp.f.rn r13, r13
001bf4  0f070700  exp.f.rn r14, r14
001bf8  8f870700  exp.f.rn r15, r15
001bfc  0f080800  exp.f.rn r16, r16
001c00  67881900  storeli.w r1, 128(r19)
001c04  67c82900  storeli.w r2, 132(r19)
001c08  e7883900  storeli.w r3, 136(r19)
001c0c  e7c84900  storeli.w r4, 140(r19)
001c10  67895900  storeli.w r5, 144(r19)
001c14  67c96900  storeli.w r6, 148(r19)
001c18  e7897900  storeli.w r7, 152(r19)
001c1c  e7c98900  storeli.w r8, 156(r19)
001c20  678a9900  storeli.w r9, 160(r19)
001c24  67caa900  storeli.w r10, 164(r19)
001c28  e78ab900  storeli.w r11, 168(r19)
001c2c  e7cac900  storeli.w r12, 172(r19)
001c30  678bd900  storeli.w r13, 176(r19)
001c34  67cbe900  storeli.w r14, 180(r19)
001c38  e78bf900  storeli.w r15, 184(r19)
001c3c  e7cb0901  storeli.w r16, 188(r19)
001c40  e3808901  loadli.w r1,  192(r19)
001c44  63c18901  loadli.w r2,  196(r19)
001c48  e3819901  loadli.w r3,  200(r19)
001c4c  63c29901  loadli.w r4,  204(r19)
001c50  e382a901  loadli.w r5,  208(r19)
001c54  63c3a901  loadli.w r6,  212(r19)
001c58  e383b901  loadli.w r7,  216(r19)
001c5c  63c4b901  loadli.w r8,  220(r19)
001c60  e384c901  loadli.w r9,  224(r19)
001c64  63c5c901  loadli.w r10,  228(r19)
001c68  e385d901  loadli.w r11,  232(r19)
001c6c  63c6d901  loadli.w r12,  236(r19)
001c70  e386e901  loadli.w r13,  240(r19)
001c74  63c7e901  loadli.w r14,  244(r19)
001c78  e387f901  loadli.w r15,  248(r19)
001c7c  63c8f901  loadli.w r16,  252(r19)
001c80  8f800000  exp.f.rn r1, r1
001c84  0f010100  exp.f.rn r2, r2
001c88  8f810100  exp.f.rn r3, r3
001c8c  0f020200  exp.f.rn r4, r4
001c90  8f820200  exp.f.rn r5, r5
001c94  0f030300  exp.f.rn r6, r6
001c98  8f830300  exp.f.rn r7, r7
001c9c  0f040400  exp.f.rn r8, r8
001ca0  8f840400  exp.f.rn r9, r9
001ca4  0f050500  exp.f.rn r10, r10
001ca8  8f850500  exp.f.rn r11, r11
001cac  0f060600  exp.f.rn r12, r12
001cb0  8f860600  exp.f.rn r13, r13
001cb4  0f070700  exp.f.rn r14, r14
001cb8  8f870700  exp.f.rn r15, r15
001cbc  0f080800  exp.f.rn r16, r16
001cc0  678c1900  storeli.w r1, 192(r19)
001cc4  67cc2900  storeli.w r2, 196(r19)
001cc8  e78c3900  storeli.w r3, 200(r19)
001ccc  e7cc4900  storeli.w r4, 204(r19)
001cd0  678d5900  storeli.w r5, 208(r19)
001cd4  67cd6900  storeli.w r6, 212(r19)
001cd8  e78d7900  storeli.w r7, 216(r19)
001cdc  e7cd8900  storeli.w r8, 220(r19)
001ce0  678e9900  storeli.w r9, 224(r19)
001ce4  67cea900  storeli.w r10, 228(r19)
001ce8  e78eb900  storeli.w r11, 232(r19)
001cec  e7cec900  storeli.w r12, 236(r19)
001cf0  678fd900  storeli.w r13, 240(r19)
001cf4  67cfe900  storeli.w r14, 244(r19)
001cf8  e78ff900  storeli.w r15, 248(r19)
001cfc  e7cf0901  storeli.w r16, 252(r19)
001d00  00a00000  mfence { lm }
001d04  1e138302  vsub.f.mz.rn vr6{mr1}, vr6, vr8
001d08  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
001d0c  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
001d10  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
001d14  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
001d18  46104fe2  vstore_mask16.mz vr4{mr1}, 1792(r30)
001d1c  9e938302  vsub.f.mz.rn vr7{mr1}, vr7, vr8
001d20  46145fe2  vstore_mask16.mz vr5{mr1}, 1856(r30)
001d24  46186fe2  vstore_mask16.mz vr6{mr1}, 1920(r30)
001d28  461c7fe2  vstore_mask16.mz vr7{mr1}, 1984(r30)
001d2c  00a00000  mfence { lm }
001d30  e3800900  loadli.w r1,  0(r19)
001d34  63c10900  loadli.w r2,  4(r19)
001d38  e3811900  loadli.w r3,  8(r19)
001d3c  63c21900  loadli.w r4,  12(r19)
001d40  e3822900  loadli.w r5,  16(r19)
001d44  63c32900  loadli.w r6,  20(r19)
001d48  e3833900  loadli.w r7,  24(r19)
001d4c  63c43900  loadli.w r8,  28(r19)
001d50  e3844900  loadli.w r9,  32(r19)
001d54  63c54900  loadli.w r10,  36(r19)
001d58  e3855900  loadli.w r11,  40(r19)
001d5c  63c65900  loadli.w r12,  44(r19)
001d60  e3866900  loadli.w r13,  48(r19)
001d64  63c76900  loadli.w r14,  52(r19)
001d68  e3877900  loadli.w r15,  56(r19)
001d6c  63c87900  loadli.w r16,  60(r19)
001d70  8f800000  exp.f.rn r1, r1
001d74  0f010100  exp.f.rn r2, r2
001d78  8f810100  exp.f.rn r3, r3
001d7c  0f020200  exp.f.rn r4, r4
001d80  8f820200  exp.f.rn r5, r5
001d84  0f030300  exp.f.rn r6, r6
001d88  8f830300  exp.f.rn r7, r7
001d8c  0f040400  exp.f.rn r8, r8
001d90  8f840400  exp.f.rn r9, r9
001d94  0f050500  exp.f.rn r10, r10
001d98  8f850500  exp.f.rn r11, r11
001d9c  0f060600  exp.f.rn r12, r12
001da0  8f860600  exp.f.rn r13, r13
001da4  0f070700  exp.f.rn r14, r14
001da8  8f870700  exp.f.rn r15, r15
001dac  0f080800  exp.f.rn r16, r16
001db0  67801900  storeli.w r1, 0(r19)
001db4  67c02900  storeli.w r2, 4(r19)
001db8  e7803900  storeli.w r3, 8(r19)
001dbc  e7c04900  storeli.w r4, 12(r19)
001dc0  67815900  storeli.w r5, 16(r19)
001dc4  67c16900  storeli.w r6, 20(r19)
001dc8  e7817900  storeli.w r7, 24(r19)
001dcc  e7c18900  storeli.w r8, 28(r19)
001dd0  67829900  storeli.w r9, 32(r19)
001dd4  67c2a900  storeli.w r10, 36(r19)
001dd8  e782b900  storeli.w r11, 40(r19)
001ddc  e7c2c900  storeli.w r12, 44(r19)
001de0  6783d900  storeli.w r13, 48(r19)
001de4  67c3e900  storeli.w r14, 52(r19)
001de8  e783f900  storeli.w r15, 56(r19)
001dec  e7c30901  storeli.w r16, 60(r19)
001df0  e3808900  loadli.w r1,  64(r19)
001df4  63c18900  loadli.w r2,  68(r19)
001df8  e3819900  loadli.w r3,  72(r19)
001dfc  63c29900  loadli.w r4,  76(r19)
001e00  e382a900  loadli.w r5,  80(r19)
001e04  63c3a900  loadli.w r6,  84(r19)
001e08  e383b900  loadli.w r7,  88(r19)
001e0c  63c4b900  loadli.w r8,  92(r19)
001e10  e384c900  loadli.w r9,  96(r19)
001e14  63c5c900  loadli.w r10,  100(r19)
001e18  e385d900  loadli.w r11,  104(r19)
001e1c  63c6d900  loadli.w r12,  108(r19)
001e20  e386e900  loadli.w r13,  112(r19)
001e24  63c7e900  loadli.w r14,  116(r19)
001e28  e387f900  loadli.w r15,  120(r19)
001e2c  63c8f900  loadli.w r16,  124(r19)
001e30  8f800000  exp.f.rn r1, r1
001e34  0f010100  exp.f.rn r2, r2
001e38  8f810100  exp.f.rn r3, r3
001e3c  0f020200  exp.f.rn r4, r4
001e40  8f820200  exp.f.rn r5, r5
001e44  0f030300  exp.f.rn r6, r6
001e48  8f830300  exp.f.rn r7, r7
001e4c  0f040400  exp.f.rn r8, r8
001e50  8f840400  exp.f.rn r9, r9
001e54  0f050500  exp.f.rn r10, r10
001e58  8f850500  exp.f.rn r11, r11
001e5c  0f060600  exp.f.rn r12, r12
001e60  8f860600  exp.f.rn r13, r13
001e64  0f070700  exp.f.rn r14, r14
001e68  8f870700  exp.f.rn r15, r15
001e6c  0f080800  exp.f.rn r16, r16
001e70  67841900  storeli.w r1, 64(r19)
001e74  67c42900  storeli.w r2, 68(r19)
001e78  e7843900  storeli.w r3, 72(r19)
001e7c  e7c44900  storeli.w r4, 76(r19)
001e80  67855900  storeli.w r5, 80(r19)
001e84  67c56900  storeli.w r6, 84(r19)
001e88  e7857900  storeli.w r7, 88(r19)
001e8c  e7c58900  storeli.w r8, 92(r19)
001e90  67869900  storeli.w r9, 96(r19)
001e94  67c6a900  storeli.w r10, 100(r19)
001e98  e786b900  storeli.w r11, 104(r19)
001e9c  e7c6c900  storeli.w r12, 108(r19)
001ea0  6787d900  storeli.w r13, 112(r19)
001ea4  67c7e900  storeli.w r14, 116(r19)
001ea8  e787f900  storeli.w r15, 120(r19)
001eac  e7c70901  storeli.w r16, 124(r19)
001eb0  e3800901  loadli.w r1,  128(r19)
001eb4  63c10901  loadli.w r2,  132(r19)
001eb8  e3811901  loadli.w r3,  136(r19)
001ebc  63c21901  loadli.w r4,  140(r19)
001ec0  e3822901  loadli.w r5,  144(r19)
001ec4  63c32901  loadli.w r6,  148(r19)
001ec8  e3833901  loadli.w r7,  152(r19)
001ecc  63c43901  loadli.w r8,  156(r19)
001ed0  e3844901  loadli.w r9,  160(r19)
001ed4  63c54901  loadli.w r10,  164(r19)
001ed8  e3855901  loadli.w r11,  168(r19)
001edc  63c65901  loadli.w r12,  172(r19)
001ee0  e3866901  loadli.w r13,  176(r19)
001ee4  63c76901  loadli.w r14,  180(r19)
001ee8  e3877901  loadli.w r15,  184(r19)
001eec  63c87901  loadli.w r16,  188(r19)
001ef0  8f800000  exp.f.rn r1, r1
001ef4  0f010100  exp.f.rn r2, r2
001ef8  8f810100  exp.f.rn r3, r3
001efc  0f020200  exp.f.rn r4, r4
001f00  8f820200  exp.f.rn r5, r5
001f04  0f030300  exp.f.rn r6, r6
001f08  8f830300  exp.f.rn r7, r7
001f0c  0f040400  exp.f.rn r8, r8
001f10  8f840400  exp.f.rn r9, r9
001f14  0f050500  exp.f.rn r10, r10
001f18  8f850500  exp.f.rn r11, r11
001f1c  0f060600  exp.f.rn r12, r12
001f20  8f860600  exp.f.rn r13, r13
001f24  0f070700  exp.f.rn r14, r14
001f28  8f870700  exp.f.rn r15, r15
001f2c  0f080800  exp.f.rn r16, r16
001f30  67881900  storeli.w r1, 128(r19)
001f34  67c82900  storeli.w r2, 132(r19)
001f38  e7883900  storeli.w r3, 136(r19)
001f3c  e7c84900  storeli.w r4, 140(r19)
001f40  67895900  storeli.w r5, 144(r19)
001f44  67c96900  storeli.w r6, 148(r19)
001f48  e7897900  storeli.w r7, 152(r19)
001f4c  e7c98900  storeli.w r8, 156(r19)
001f50  678a9900  storeli.w r9, 160(r19)
001f54  67caa900  storeli.w r10, 164(r19)
001f58  e78ab900  storeli.w r11, 168(r19)
001f5c  e7cac900  storeli.w r12, 172(r19)
001f60  678bd900  storeli.w r13, 176(r19)
001f64  67cbe900  storeli.w r14, 180(r19)
001f68  e78bf900  storeli.w r15, 184(r19)
001f6c  e7cb0901  storeli.w r16, 188(r19)
001f70  e3808901  loadli.w r1,  192(r19)
001f74  63c18901  loadli.w r2,  196(r19)
001f78  e3819901  loadli.w r3,  200(r19)
001f7c  63c29901  loadli.w r4,  204(r19)
001f80  e382a901  loadli.w r5,  208(r19)
001f84  63c3a901  loadli.w r6,  212(r19)
001f88  e383b901  loadli.w r7,  216(r19)
001f8c  63c4b901  loadli.w r8,  220(r19)
001f90  e384c901  loadli.w r9,  224(r19)
001f94  63c5c901  loadli.w r10,  228(r19)
001f98  e385d901  loadli.w r11,  232(r19)
001f9c  63c6d901  loadli.w r12,  236(r19)
001fa0  e386e901  loadli.w r13,  240(r19)
001fa4  63c7e901  loadli.w r14,  244(r19)
001fa8  e387f901  loadli.w r15,  248(r19)
001fac  63c8f901  loadli.w r16,  252(r19)
001fb0  8f800000  exp.f.rn r1, r1
001fb4  0f010100  exp.f.rn r2, r2
001fb8  8f810100  exp.f.rn r3, r3
001fbc  0f020200  exp.f.rn r4, r4
001fc0  8f820200  exp.f.rn r5, r5
001fc4  0f030300  exp.f.rn r6, r6
001fc8  8f830300  exp.f.rn r7, r7
001fcc  0f040400  exp.f.rn r8, r8
001fd0  8f840400  exp.f.rn r9, r9
001fd4  0f050500  exp.f.rn r10, r10
001fd8  8f850500  exp.f.rn r11, r11
001fdc  0f060600  exp.f.rn r12, r12
001fe0  8f860600  exp.f.rn r13, r13
001fe4  0f070700  exp.f.rn r14, r14
001fe8  8f870700  exp.f.rn r15, r15
001fec  0f080800  exp.f.rn r16, r16
001ff0  678c1900  storeli.w r1, 192(r19)
001ff4  67cc2900  storeli.w r2, 196(r19)
001ff8  e78c3900  storeli.w r3, 200(r19)
001ffc  e7cc4900  storeli.w r4, 204(r19)
002000  678d5900  storeli.w r5, 208(r19)
002004  67cd6900  storeli.w r6, 212(r19)
002008  e78d7900  storeli.w r7, 216(r19)
00200c  e7cd8900  storeli.w r8, 220(r19)
002010  678e9900  storeli.w r9, 224(r19)
002014  67cea900  storeli.w r10, 228(r19)
002018  e78eb900  storeli.w r11, 232(r19)
00201c  e7cec900  storeli.w r12, 236(r19)
002020  678fd900  storeli.w r13, 240(r19)
002024  67cfe900  storeli.w r14, 244(r19)
002028  e78ff900  storeli.w r15, 248(r19)
00202c  e7cf0901  storeli.w r16, 252(r19)
002030  00a00000  mfence { lm }
002034  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
002038  00a00000  mfence { lm }
00203c  9f000ff7  addli r1, r30, -1152
002040  461c4f82  vstore_mask16.mz vr4{mr1}, 1216(r30)
002044  42128fe2  vload_mask16.mz vr4{mr1}, 1856(r30)
002048  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00204c  9f008ff6  addli r1, r30, -1216
002050  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
002054  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
002058  9f000ff6  addli r1, r30, -1280
00205c  42128fe3  vload_mask16.mz vr4{mr1}, 1984(r30)
002060  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
002064  c2140fa3  vload_mask16.mz vr9{mr1}, 1408(r30)
002068  42150fc3  vload_mask16.mz vr10{mr1}, 1664(r30)
00206c  86b50400  vfp162float_l.rn vr11, vr9
002070  06320500  vfp162float_l.rn vr4, vr10
002074  16924502  vadd.f.mz.rn vr4{mr1}, vr11, vr4
002078  86f50400  vfp162float_h.rn vr11, vr9
00207c  86740500  vfp162float_h.rn vr9, vr10
002080  42158fa3  vload_mask16.mz vr10{mr1}, 1472(r30)
002084  c2128fc3  vload_mask16.mz vr5{mr1}, 1728(r30)
002088  06b30200  vfp162float_l.rn vr6, vr5
00208c  c2138f82  vload_mask16.mz vr7{mr1}, 1088(r30)
002090  96949502  vadd.f.mz.rn vr9{mr1}, vr11, vr9
002094  86350500  vfp162float_l.rn vr11, vr10
002098  16936502  vadd.f.mz.rn vr6{mr1}, vr11, vr6
00209c  86750500  vfp162float_h.rn vr11, vr10
0020a0  06f50200  vfp162float_h.rn vr10, vr5
0020a4  9692a502  vadd.f.mz.rn vr5{mr1}, vr11, vr10
0020a8  c2150f82  vload_mask16.mz vr11{mr1}, 1024(r30)
0020ac  1235b002  vadd.s.mz vr10{mr1}, zero, vr11
0020b0  63407ff9  loadli.w zero,  -836(r30)
0020b4  7e0000e0  vmmov mr0, zero
0020b8  17200000  xor zero, zero, zero
0020bc  6e954330  vor.f.mh vr10{mr0}, vr7, vr4
0020c0  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
0020c4  6340fff7  loadli.w zero,  -1028(r30)
0020c8  7e0000e0  vmmov mr0, zero
0020cc  17200000  xor zero, zero, zero
0020d0  6e929330  vor.f.mh vr4{mr0}, vr7, vr9
0020d4  9234b002  vadd.s.mz vr9{mr1}, zero, vr11
0020d8  63005ff2  loadli.w zero,  -1752(r30)
0020dc  7e0100e0  vmmov mr2, zero
0020e0  17200000  xor zero, zero, zero
0020e4  1e128202  vsub.f.mz.rn vr4{mr1}, vr4, vr8
0020e8  ee946334  vor.f.mh vr9{mr2}, vr7, vr6
0020ec  1233b002  vadd.s.mz vr6{mr1}, zero, vr11
0020f0  6300fff7  loadli.w zero,  -1032(r30)
0020f4  fe0100e0  vmmov mr3, zero
0020f8  9e948402  vsub.f.mz.rn vr9{mr1}, vr9, vr8
0020fc  17200000  xor zero, zero, zero
002100  6e935336  vor.f.mh vr6{mr3}, vr7, vr5
002104  9e128502  vsub.f.mz.rn vr5{mr1}, vr10, vr8
002108  1e138302  vsub.f.mz.rn vr6{mr1}, vr6, vr8
00210c  46105fe2  vstore_mask16.mz vr5{mr1}, 1792(r30)
002110  46144fe2  vstore_mask16.mz vr4{mr1}, 1856(r30)
002114  46189fe2  vstore_mask16.mz vr9{mr1}, 1920(r30)
002118  461c6fe2  vstore_mask16.mz vr6{mr1}, 1984(r30)
00211c  00a00000  mfence { lm }
002120  e3800900  loadli.w r1,  0(r19)
002124  63c10900  loadli.w r2,  4(r19)
002128  e3811900  loadli.w r3,  8(r19)
00212c  63c21900  loadli.w r4,  12(r19)
002130  e3822900  loadli.w r5,  16(r19)
002134  63c32900  loadli.w r6,  20(r19)
002138  e3833900  loadli.w r7,  24(r19)
00213c  63c43900  loadli.w r8,  28(r19)
002140  e3844900  loadli.w r9,  32(r19)
002144  63c54900  loadli.w r10,  36(r19)
002148  e3855900  loadli.w r11,  40(r19)
00214c  63c65900  loadli.w r12,  44(r19)
002150  e3866900  loadli.w r13,  48(r19)
002154  63c76900  loadli.w r14,  52(r19)
002158  e3877900  loadli.w r15,  56(r19)
00215c  63c87900  loadli.w r16,  60(r19)
002160  8f800000  exp.f.rn r1, r1
002164  0f010100  exp.f.rn r2, r2
002168  8f810100  exp.f.rn r3, r3
00216c  0f020200  exp.f.rn r4, r4
002170  8f820200  exp.f.rn r5, r5
002174  0f030300  exp.f.rn r6, r6
002178  8f830300  exp.f.rn r7, r7
00217c  0f040400  exp.f.rn r8, r8
002180  8f840400  exp.f.rn r9, r9
002184  0f050500  exp.f.rn r10, r10
002188  8f850500  exp.f.rn r11, r11
00218c  0f060600  exp.f.rn r12, r12
002190  8f860600  exp.f.rn r13, r13
002194  0f070700  exp.f.rn r14, r14
002198  8f870700  exp.f.rn r15, r15
00219c  0f080800  exp.f.rn r16, r16
0021a0  67801900  storeli.w r1, 0(r19)
0021a4  67c02900  storeli.w r2, 4(r19)
0021a8  e7803900  storeli.w r3, 8(r19)
0021ac  e7c04900  storeli.w r4, 12(r19)
0021b0  67815900  storeli.w r5, 16(r19)
0021b4  67c16900  storeli.w r6, 20(r19)
0021b8  e7817900  storeli.w r7, 24(r19)
0021bc  e7c18900  storeli.w r8, 28(r19)
0021c0  67829900  storeli.w r9, 32(r19)
0021c4  67c2a900  storeli.w r10, 36(r19)
0021c8  e782b900  storeli.w r11, 40(r19)
0021cc  e7c2c900  storeli.w r12, 44(r19)
0021d0  6783d900  storeli.w r13, 48(r19)
0021d4  67c3e900  storeli.w r14, 52(r19)
0021d8  e783f900  storeli.w r15, 56(r19)
0021dc  e7c30901  storeli.w r16, 60(r19)
0021e0  e3808900  loadli.w r1,  64(r19)
0021e4  63c18900  loadli.w r2,  68(r19)
0021e8  e3819900  loadli.w r3,  72(r19)
0021ec  63c29900  loadli.w r4,  76(r19)
0021f0  e382a900  loadli.w r5,  80(r19)
0021f4  63c3a900  loadli.w r6,  84(r19)
0021f8  e383b900  loadli.w r7,  88(r19)
0021fc  63c4b900  loadli.w r8,  92(r19)
002200  e384c900  loadli.w r9,  96(r19)
002204  63c5c900  loadli.w r10,  100(r19)
002208  e385d900  loadli.w r11,  104(r19)
00220c  63c6d900  loadli.w r12,  108(r19)
002210  e386e900  loadli.w r13,  112(r19)
002214  63c7e900  loadli.w r14,  116(r19)
002218  e387f900  loadli.w r15,  120(r19)
00221c  63c8f900  loadli.w r16,  124(r19)
002220  8f800000  exp.f.rn r1, r1
002224  0f010100  exp.f.rn r2, r2
002228  8f810100  exp.f.rn r3, r3
00222c  0f020200  exp.f.rn r4, r4
002230  8f820200  exp.f.rn r5, r5
002234  0f030300  exp.f.rn r6, r6
002238  8f830300  exp.f.rn r7, r7
00223c  0f040400  exp.f.rn r8, r8
002240  8f840400  exp.f.rn r9, r9
002244  0f050500  exp.f.rn r10, r10
002248  8f850500  exp.f.rn r11, r11
00224c  0f060600  exp.f.rn r12, r12
002250  8f860600  exp.f.rn r13, r13
002254  0f070700  exp.f.rn r14, r14
002258  8f870700  exp.f.rn r15, r15
00225c  0f080800  exp.f.rn r16, r16
002260  67841900  storeli.w r1, 64(r19)
002264  67c42900  storeli.w r2, 68(r19)
002268  e7843900  storeli.w r3, 72(r19)
00226c  e7c44900  storeli.w r4, 76(r19)
002270  67855900  storeli.w r5, 80(r19)
002274  67c56900  storeli.w r6, 84(r19)
002278  e7857900  storeli.w r7, 88(r19)
00227c  e7c58900  storeli.w r8, 92(r19)
002280  67869900  storeli.w r9, 96(r19)
002284  67c6a900  storeli.w r10, 100(r19)
002288  e786b900  storeli.w r11, 104(r19)
00228c  e7c6c900  storeli.w r12, 108(r19)
002290  6787d900  storeli.w r13, 112(r19)
002294  67c7e900  storeli.w r14, 116(r19)
002298  e787f900  storeli.w r15, 120(r19)
00229c  e7c70901  storeli.w r16, 124(r19)
0022a0  e3800901  loadli.w r1,  128(r19)
0022a4  63c10901  loadli.w r2,  132(r19)
0022a8  e3811901  loadli.w r3,  136(r19)
0022ac  63c21901  loadli.w r4,  140(r19)
0022b0  e3822901  loadli.w r5,  144(r19)
0022b4  63c32901  loadli.w r6,  148(r19)
0022b8  e3833901  loadli.w r7,  152(r19)
0022bc  63c43901  loadli.w r8,  156(r19)
0022c0  e3844901  loadli.w r9,  160(r19)
0022c4  63c54901  loadli.w r10,  164(r19)
0022c8  e3855901  loadli.w r11,  168(r19)
0022cc  63c65901  loadli.w r12,  172(r19)
0022d0  e3866901  loadli.w r13,  176(r19)
0022d4  63c76901  loadli.w r14,  180(r19)
0022d8  e3877901  loadli.w r15,  184(r19)
0022dc  63c87901  loadli.w r16,  188(r19)
0022e0  8f800000  exp.f.rn r1, r1
0022e4  0f010100  exp.f.rn r2, r2
0022e8  8f810100  exp.f.rn r3, r3
0022ec  0f020200  exp.f.rn r4, r4
0022f0  8f820200  exp.f.rn r5, r5
0022f4  0f030300  exp.f.rn r6, r6
0022f8  8f830300  exp.f.rn r7, r7
0022fc  0f040400  exp.f.rn r8, r8
002300  8f840400  exp.f.rn r9, r9
002304  0f050500  exp.f.rn r10, r10
002308  8f850500  exp.f.rn r11, r11
00230c  0f060600  exp.f.rn r12, r12
002310  8f860600  exp.f.rn r13, r13
002314  0f070700  exp.f.rn r14, r14
002318  8f870700  exp.f.rn r15, r15
00231c  0f080800  exp.f.rn r16, r16
002320  67881900  storeli.w r1, 128(r19)
002324  67c82900  storeli.w r2, 132(r19)
002328  e7883900  storeli.w r3, 136(r19)
00232c  e7c84900  storeli.w r4, 140(r19)
002330  67895900  storeli.w r5, 144(r19)
002334  67c96900  storeli.w r6, 148(r19)
002338  e7897900  storeli.w r7, 152(r19)
00233c  e7c98900  storeli.w r8, 156(r19)
002340  678a9900  storeli.w r9, 160(r19)
002344  67caa900  storeli.w r10, 164(r19)
002348  e78ab900  storeli.w r11, 168(r19)
00234c  e7cac900  storeli.w r12, 172(r19)
002350  678bd900  storeli.w r13, 176(r19)
002354  67cbe900  storeli.w r14, 180(r19)
002358  e78bf900  storeli.w r15, 184(r19)
00235c  e7cb0901  storeli.w r16, 188(r19)
002360  e3808901  loadli.w r1,  192(r19)
002364  63c18901  loadli.w r2,  196(r19)
002368  e3819901  loadli.w r3,  200(r19)
00236c  63c29901  loadli.w r4,  204(r19)
002370  e382a901  loadli.w r5,  208(r19)
002374  63c3a901  loadli.w r6,  212(r19)
002378  e383b901  loadli.w r7,  216(r19)
00237c  63c4b901  loadli.w r8,  220(r19)
002380  e384c901  loadli.w r9,  224(r19)
002384  63c5c901  loadli.w r10,  228(r19)
002388  e385d901  loadli.w r11,  232(r19)
00238c  63c6d901  loadli.w r12,  236(r19)
002390  e386e901  loadli.w r13,  240(r19)
002394  63c7e901  loadli.w r14,  244(r19)
002398  e387f901  loadli.w r15,  248(r19)
00239c  63c8f901  loadli.w r16,  252(r19)
0023a0  8f800000  exp.f.rn r1, r1
0023a4  0f010100  exp.f.rn r2, r2
0023a8  8f810100  exp.f.rn r3, r3
0023ac  0f020200  exp.f.rn r4, r4
0023b0  8f820200  exp.f.rn r5, r5
0023b4  0f030300  exp.f.rn r6, r6
0023b8  8f830300  exp.f.rn r7, r7
0023bc  0f040400  exp.f.rn r8, r8
0023c0  8f840400  exp.f.rn r9, r9
0023c4  0f050500  exp.f.rn r10, r10
0023c8  8f850500  exp.f.rn r11, r11
0023cc  0f060600  exp.f.rn r12, r12
0023d0  8f860600  exp.f.rn r13, r13
0023d4  0f070700  exp.f.rn r14, r14
0023d8  8f870700  exp.f.rn r15, r15
0023dc  0f080800  exp.f.rn r16, r16
0023e0  678c1900  storeli.w r1, 192(r19)
0023e4  67cc2900  storeli.w r2, 196(r19)
0023e8  e78c3900  storeli.w r3, 200(r19)
0023ec  e7cc4900  storeli.w r4, 204(r19)
0023f0  678d5900  storeli.w r5, 208(r19)
0023f4  67cd6900  storeli.w r6, 212(r19)
0023f8  e78d7900  storeli.w r7, 216(r19)
0023fc  e7cd8900  storeli.w r8, 220(r19)
002400  678e9900  storeli.w r9, 224(r19)
002404  67cea900  storeli.w r10, 228(r19)
002408  e78eb900  storeli.w r11, 232(r19)
00240c  e7cec900  storeli.w r12, 236(r19)
002410  678fd900  storeli.w r13, 240(r19)
002414  67cfe900  storeli.w r14, 244(r19)
002418  e78ff900  storeli.w r15, 248(r19)
00241c  e7cf0901  storeli.w r16, 252(r19)
002420  00a00000  mfence { lm }
002424  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
002428  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
00242c  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
002430  16124002  vadd.f.mz.rn vr4{mr1}, vr0, vr4
002434  96925002  vadd.f.mz.rn vr5{mr1}, vr1, vr5
002438  16136102  vadd.f.mz.rn vr6{mr1}, vr2, vr6
00243c  16125202  vadd.f.mz.rn vr4{mr1}, vr4, vr5
002440  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
002444  16126202  vadd.f.mz.rn vr4{mr1}, vr4, vr6
002448  96925102  vadd.f.mz.rn vr5{mr1}, vr3, vr5
00244c  16145202  vadd.f.mz.rn vr8{mr1}, vr4, vr5
002450  fa100440  vextracti.f r1, 0(vr8)
002454  7a111440  vextracti.f r2, 1(vr8)
002458  8be02010  add.f.rn r1, r1, r2
00245c  7a112440  vextracti.f r2, 2(vr8)
002460  8b601110  add.f.rn r1, r2, r1
002464  7a113440  vextracti.f r2, 3(vr8)
002468  8b601110  add.f.rn r1, r2, r1
00246c  7a114440  vextracti.f r2, 4(vr8)
002470  8b601110  add.f.rn r1, r2, r1
002474  7a115440  vextracti.f r2, 5(vr8)
002478  8b601110  add.f.rn r1, r2, r1
00247c  7a116440  vextracti.f r2, 6(vr8)
002480  8b601110  add.f.rn r1, r2, r1
002484  7a117440  vextracti.f r2, 7(vr8)
002488  8b601110  add.f.rn r1, r2, r1
00248c  7a118440  vextracti.f r2, 8(vr8)
002490  8b601110  add.f.rn r1, r2, r1
002494  7a119440  vextracti.f r2, 9(vr8)
002498  8b601110  add.f.rn r1, r2, r1
00249c  7a11a440  vextracti.f r2, 10(vr8)
0024a0  8b601110  add.f.rn r1, r2, r1
0024a4  7a11b440  vextracti.f r2, 11(vr8)
0024a8  8b601110  add.f.rn r1, r2, r1
0024ac  7a11c440  vextracti.f r2, 12(vr8)
0024b0  8b601110  add.f.rn r1, r2, r1
0024b4  7a11d440  vextracti.f r2, 13(vr8)
0024b8  8b601110  add.f.rn r1, r2, r1
0024bc  7a11e440  vextracti.f r2, 14(vr8)
0024c0  8b601110  add.f.rn r1, r2, r1
0024c4  7a11f440  vextracti.f r2, 15(vr8)
0024c8  8b601110  add.f.rn r1, r2, r1
0024cc  63411ff3  loadli.w r2,  -1652(r30)
0024d0  73601100  stores.w r1, 0(r2)
0024d4  00a00300  mfence { lm, sm, gm }
0024d8  80210904  csr_set csr3, r18
0024dc  00d00100  sync_group
0024e0  bbff08f4  bneq r17, zero, -5124
0024e4  efc00b00  loads.w r1, 0(r23)
0024e8  efc14b00  loads.w r3, 4(r23)
0024ec  6fc18b00  loads.w r2, 8(r23)
0024f0  8be03010  add.f.rn r1, r1, r3
0024f4  efc1cb00  loads.w r3, 12(r23)
0024f8  8be02010  add.f.rn r1, r1, r2
0024fc  6fc10b01  loads.w r2, 16(r23)
002500  8be03010  add.f.rn r1, r1, r3
002504  efc14b01  loads.w r3, 20(r23)
002508  8be02010  add.f.rn r1, r1, r2
00250c  6fc18b01  loads.w r2, 24(r23)
002510  8be03010  add.f.rn r1, r1, r3
002514  efc1cb01  loads.w r3, 28(r23)
002518  8be02010  add.f.rn r1, r1, r2
00251c  6fc10b02  loads.w r2, 32(r23)
002520  8be03010  add.f.rn r1, r1, r3
002524  efc14b02  loads.w r3, 36(r23)
002528  8be02010  add.f.rn r1, r1, r2
00252c  6fc18b02  loads.w r2, 40(r23)
002530  8be03010  add.f.rn r1, r1, r3
002534  efc1cb02  loads.w r3, 44(r23)
002538  8be02010  add.f.rn r1, r1, r2
00253c  6fc10b03  loads.w r2, 48(r23)
002540  8be03010  add.f.rn r1, r1, r3
002544  efc14b03  loads.w r3, 52(r23)
002548  8be02010  add.f.rn r1, r1, r2
00254c  6fc18b03  loads.w r2, 56(r23)
002550  8be03010  add.f.rn r1, r1, r3
002554  efc1cb03  loads.w r3, 60(r23)
002558  8be02010  add.f.rn r1, r1, r2
00255c  6fc10b04  loads.w r2, 64(r23)
002560  8be03010  add.f.rn r1, r1, r3
002564  efc14b04  loads.w r3, 68(r23)
002568  8be02010  add.f.rn r1, r1, r2
00256c  6fc18b04  loads.w r2, 72(r23)
002570  8be03010  add.f.rn r1, r1, r3
002574  efc1cb04  loads.w r3, 76(r23)
002578  8be02010  add.f.rn r1, r1, r2
00257c  6fc10b05  loads.w r2, 80(r23)
002580  8be03010  add.f.rn r1, r1, r3
002584  efc14b05  loads.w r3, 84(r23)
002588  8be02010  add.f.rn r1, r1, r2
00258c  6fc18b05  loads.w r2, 88(r23)
002590  8be03010  add.f.rn r1, r1, r3
002594  efc1cb05  loads.w r3, 92(r23)
002598  8be02010  add.f.rn r1, r1, r2
00259c  6fc10b06  loads.w r2, 96(r23)
0025a0  8be03010  add.f.rn r1, r1, r3
0025a4  efc14b06  loads.w r3, 100(r23)
0025a8  8be02010  add.f.rn r1, r1, r2
0025ac  6fc18b06  loads.w r2, 104(r23)
0025b0  8be03010  add.f.rn r1, r1, r3
0025b4  efc1cb06  loads.w r3, 108(r23)
0025b8  8be02010  add.f.rn r1, r1, r2
0025bc  6fc10b07  loads.w r2, 112(r23)
0025c0  8be03010  add.f.rn r1, r1, r3
0025c4  efc14b07  loads.w r3, 116(r23)
0025c8  8be02010  add.f.rn r1, r1, r2
0025cc  6fc18b07  loads.w r2, 120(r23)
0025d0  8be03010  add.f.rn r1, r1, r3
0025d4  efc1cb07  loads.w r3, 124(r23)
0025d8  8be02010  add.f.rn r1, r1, r2
0025dc  6fc10b08  loads.w r2, 128(r23)
0025e0  8be03010  add.f.rn r1, r1, r3
0025e4  efc14b08  loads.w r3, 132(r23)
0025e8  8be02010  add.f.rn r1, r1, r2
0025ec  6fc18b08  loads.w r2, 136(r23)
0025f0  8be03010  add.f.rn r1, r1, r3
0025f4  efc1cb08  loads.w r3, 140(r23)
0025f8  8be02010  add.f.rn r1, r1, r2
0025fc  6fc10b09  loads.w r2, 144(r23)
002600  8be03010  add.f.rn r1, r1, r3
002604  efc14b09  loads.w r3, 148(r23)
002608  8be02010  add.f.rn r1, r1, r2
00260c  6fc18b09  loads.w r2, 152(r23)
002610  8be03010  add.f.rn r1, r1, r3
002614  efc1cb09  loads.w r3, 156(r23)
002618  8be02010  add.f.rn r1, r1, r2
00261c  6fc10b0a  loads.w r2, 160(r23)
002620  8be03010  add.f.rn r1, r1, r3
002624  efc14b0a  loads.w r3, 164(r23)
002628  8be02010  add.f.rn r1, r1, r2
00262c  6fc18b0a  loads.w r2, 168(r23)
002630  8be03010  add.f.rn r1, r1, r3
002634  efc1cb0a  loads.w r3, 172(r23)
002638  8be02010  add.f.rn r1, r1, r2
00263c  6fc10b0b  loads.w r2, 176(r23)
002640  8be03010  add.f.rn r1, r1, r3
002644  efc14b0b  loads.w r3, 180(r23)
002648  8be02010  add.f.rn r1, r1, r2
00264c  6fc18b0b  loads.w r2, 184(r23)
002650  8be03010  add.f.rn r1, r1, r3
002654  efc1cb0b  loads.w r3, 188(r23)
002658  8be02010  add.f.rn r1, r1, r2
00265c  6fc10b0c  loads.w r2, 192(r23)
002660  8be03010  add.f.rn r1, r1, r3
002664  efc14b0c  loads.w r3, 196(r23)
002668  8be02010  add.f.rn r1, r1, r2
00266c  6fc18b0c  loads.w r2, 200(r23)
002670  8be03010  add.f.rn r1, r1, r3
002674  efc1cb0c  loads.w r3, 204(r23)
002678  8be02010  add.f.rn r1, r1, r2
00267c  6fc10b0d  loads.w r2, 208(r23)
002680  8be03010  add.f.rn r1, r1, r3
002684  efc14b0d  loads.w r3, 212(r23)
002688  8be02010  add.f.rn r1, r1, r2
00268c  6fc18b0d  loads.w r2, 216(r23)
002690  8be03010  add.f.rn r1, r1, r3
002694  efc1cb0d  loads.w r3, 220(r23)
002698  8be02010  add.f.rn r1, r1, r2
00269c  6fc10b0e  loads.w r2, 224(r23)
0026a0  8be03010  add.f.rn r1, r1, r3
0026a4  efc14b0e  loads.w r3, 228(r23)
0026a8  8be02010  add.f.rn r1, r1, r2
0026ac  6fc18b0e  loads.w r2, 232(r23)
0026b0  8be03010  add.f.rn r1, r1, r3
0026b4  efc1cb0e  loads.w r3, 236(r23)
0026b8  8be02010  add.f.rn r1, r1, r2
0026bc  6fc10b0f  loads.w r2, 240(r23)
0026c0  8be03010  add.f.rn r1, r1, r3
0026c4  efc14b0f  loads.w r3, 244(r23)
0026c8  8be02010  add.f.rn r1, r1, r2
0026cc  6fc18b0f  loads.w r2, 248(r23)
0026d0  8be03010  add.f.rn r1, r1, r3
0026d4  efc1cb0f  loads.w r3, 252(r23)
0026d8  8be02010  add.f.rn r1, r1, r2
0026dc  8be03010  add.f.rn r1, r1, r3
0026e0  73e01b00  stores.w r1, 0(r23)
0026e4  5b3ffdff  j -5640
0026e8  9f8efeff  addli sp, sp, -8
0026ec  9f000100  addli r1, r2, 0
0026f0  2bf1ff7f  lui r2, 524287
0026f4  ab02807f  lui r5, 522240
0026f8  67c0ee01  storeli.w r30, 4(sp)
0026fc  6780fe01  storeli.w r31, 0(sp)
002700  1f8f1e00  addli r30, sp, 8
002704  1b12f1ff  ori r4, r2, 4095
002708  17814000  and r2, r1, r4
00270c  13832204  setlt.u r6, r5, r2
002710  1f810100  addli r2, r3, 0
002714  bb210300  bneq r6, zero, 104
002718  97014100  and r3, r2, r4
00271c  93813204  setlt.u r3, r5, r3
002720  3be10100  bneq r3, zero, 88
002724  abf1ffff  lui r3, 1048575
002728  17221100  xor r4, r2, r1
00272c  9b91f1ff  ori r3, r3, 4095
002730  3fa04100  blt.s r3, r4, 8
002734  5b0b0000  j 88
002738  9b319100  slli r3, r2, 9
00273c  9bb29000  slli r5, r1, 9
002740  1b427101  srli r4, r2, 23
002744  1bc37001  srli r6, r1, 23
002748  93e32004  setlt.f r7, r1, r2
00274c  93810100  seteq r3, r3, zero
002750  93820200  seteq r5, r5, zero
002754  1b02f20f  andi r4, r4, 255
002758  1b03f30f  andi r6, r6, 255
00275c  1b72f20f  setlti r4, r4, 255
002760  1b73f30f  setlti r6, r6, 255
002764  97113200  or r3, r4, r3
002768  17125300  or r4, r6, r5
00276c  97013200  and r3, r4, r3
002770  97813300  and r3, r7, r3
002774  3ba00100  bneq r3, zero, 8
002778  1f810000  addli r2, r1, 0
00277c  e38f0e00  loadli.w r31,  0(sp)
002780  63cf0e00  loadli.w r30,  4(sp)
002784  9f8e1e00  addli sp, sp, 8
002788  5f800f00  jr r31, 0
00278c  bfcf00fe  blt.s r1, zero, -16
002790  5bfdffff  j -24
002794  00100000  exit
002798  00100000  exit
00279c  00100000  exit
0027a0  00100000  exit
0027a4  00100000  exit
0027a8  00100000  exit
0027ac  00100000  exit
0027b0  00100000  exit
0027b4  00100000  exit
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
