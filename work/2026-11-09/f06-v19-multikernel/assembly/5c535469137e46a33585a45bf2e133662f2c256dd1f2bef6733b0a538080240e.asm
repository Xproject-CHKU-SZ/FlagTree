; SHA-256 5c535469137e46a33585a45bf2e133662f2c256dd1f2bef6733b0a538080240e
; P800 Cluster · XTDK LLVM 19 · 916 / 916 words decoded
; bound names: triton_poi_fused_add_gelu_0
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
000078  9f095000  addli r19, zero, 40
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
0000dc  9f8e8efa  addli sp, sp, -704
0000e0  1f8f0e05  addli r30, sp, 640
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e7491ffa  storeli.w r1, -612(r30)
000100  4b8c4004  ble.s r1, r4, 2816
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f080ffd  addli r17, r30, -384
000110  9f040001  addli r9, zero, 128
000114  ab0b807f  lui r23, 522240
000118  2b0c4000  lui r24, 1024
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  9bb06000  slli r1, r1, 6
000124  e7092ffa  storeli.w r2, -616(r30)
000128  2bf1ff7f  lui r2, 524287
00012c  67491ffa  storeli.w r1, -620(r30)
000130  ab700000  lui r1, 7
000134  1b1bf1ff  ori r22, r2, 4095
000138  2b414c3f  lui r2, 259268
00013c  9b9af0ff  ori r21, r1, 4095
000140  ab20373d  lui r1, 250738
000144  e70b6ffb  storeli.w r22, -584(r30)
000148  9b903071  ori r1, r1, 1811
00014c  e74b5ffb  storeli.w r21, -580(r30)
000150  674b1ffa  storeli.w r1, -588(r30)
000154  9b10a122  ori r1, r2, 554
000158  670b1ffa  storeli.w r1, -592(r30)
00015c  9f200000  addli r1, zero, 2
000160  fe8100e0  vmmov mr3, r1
000164  db070000  j 60
000168  6b510f01  load.d r[3:4], 16(r30)
00016c  6b520fda  load.d r[5:6], -608(r30)
000170  ab0000f0  lui r1, 983040
000174  9f040001  addli r9, zero, 128
000178  97901400  or r1, r9, r1
00017c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000180  63425ffb  loadli.w r4,  -596(r30)
000184  ff301101  s_lm2gm r1, r17, 0(r[3:4])
000188  e3003ffb  loadli.w r1,  -616(r30)
00018c  00a00000  mfence { lm }
000190  0b121210  add.s r4, r4, r1
000194  e3403ffb  loadli.w r1,  -612(r30)
000198  3f201200  blt.s r4, r1, 8
00019c  db4c0100  j 2660
0001a0  e3404f00  loadli.w r1,  36(r30)
0001a4  63014f00  loadli.w r2,  32(r30)
0001a8  e74a4ffa  storeli.w r4, -596(r30)
0001ac  9f130000  addli r7, zero, 1
0001b0  1f090000  addli r18, zero, 0
0001b4  8b101230  div.s r1, r4, r1
0001b8  8b902030  div.s r1, r1, r2
0001bc  63412ffb  loadli.w r2,  -620(r30)
0001c0  9bb0c000  slli r1, r1, 12
0001c4  8b902010  add.s r1, r1, r2
0001c8  1f010008  addli r2, zero, 1024
0001cc  0b912038  mod.s r2, r1, r2
0001d0  b3910028  sext_int2long r[4:5], r1
0001d4  ab0000f0  lui r1, 983040
0001d8  17b57102  sll.d r[11:12], r[4:5], r7
0001dc  97901400  or r1, r9, r1
0001e0  7330afda  store.d r[11:12], -608(r30)
0001e4  b3120128  sext_int2long r[6:7], r2
0001e8  2b0100f0  lui r2, 983040
0001ec  97b17202  sll.d r[4:5], r[6:7], r7
0001f0  eb520f00  load.d r[6:7], 0(r30)
0001f4  eb538f00  load.d r[8:9], 8(r30)
0001f8  17912400  or r2, r9, r2
0001fc  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
000200  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
000204  9f030ffc  addli r7, r30, -512
000208  9f852800  addli r11, r17, 16
00020c  ffa07200  l_gm2lm r1, r7, 0(r[6:7])
000210  7fa11101  l_gm2lm r2, r17, 0(r[4:5])
000214  00a00000  mfence { lm }
000218  5b9c0000  j 1248
00021c  1b440101  srli r8, r2, 16
000220  1b041400  andi r8, r8, 1
000224  0b118110  add.s r2, r2, r8
000228  0b115111  add.s r2, r2, r21
00022c  ab0affff  lui r21, 1048560
000230  634c6ffb  loadli.w r24,  -588(r30)
000234  e70e2ffa  storeli.w r2, -536(r30)
000238  630e6ffb  loadli.w r28,  -592(r30)
00023c  9f850c00  addli r11, r25, 0
000240  97865001  and r13, r1, r21
000244  97875801  and r15, r17, r21
000248  97825901  and r5, r19, r21
00024c  97085a01  and r17, r20, r21
000250  17025d01  and r4, r26, r21
000254  17075501  and r14, r10, r21
000258  97845301  and r9, r7, r21
00025c  17035901  and r6, r18, r21
000260  17065601  and r12, r12, r21
000264  17085801  and r16, r16, r21
000268  8be0d620  mul.f.rn r1, r13, r13
00026c  0be1f720  mul.f.rn r2, r15, r15
000270  0bea5220  mul.f.rn r20, r5, r5
000274  8b63e720  mul.f.rn r7, r14, r14
000278  0b654220  mul.f.rn r10, r4, r4
00027c  8beb9420  mul.f.rn r23, r9, r9
000280  674e5ffa  storeli.w r5, -540(r30)
000284  670e4ffa  storeli.w r4, -544(r30)
000288  0b6b6320  mul.f.rn r22, r6, r6
00028c  0b64c620  mul.f.rn r8, r12, r12
000290  e70d9ffa  storeli.w r9, -552(r30)
000294  e74d6ffa  storeli.w r6, -548(r30)
000298  8bed1821  mul.f.rn r27, r17, r17
00029c  674d1ffb  storeli.w r17, -556(r30)
0002a0  0b690821  mul.f.rn r18, r16, r16
0002a4  8be0d020  mul.f.rn r1, r1, r13
0002a8  0b61f120  mul.f.rn r2, r2, r15
0002ac  0b6a5a20  mul.f.rn r20, r20, r5
0002b0  8be3e320  mul.f.rn r7, r7, r14
0002b4  0b654520  mul.f.rn r10, r10, r4
0002b8  8beb9b20  mul.f.rn r23, r23, r9
0002bc  0b6b6b20  mul.f.rn r22, r22, r6
0002c0  0b64c420  mul.f.rn r8, r8, r12
0002c4  8bed1d21  mul.f.rn r27, r27, r17
0002c8  0b690921  mul.f.rn r18, r18, r16
0002cc  8be08021  mul.f.rn r1, r1, r24
0002d0  0b618121  mul.f.rn r2, r2, r24
0002d4  0b6a8a21  mul.f.rn r20, r20, r24
0002d8  8be38321  mul.f.rn r7, r7, r24
0002dc  0b658521  mul.f.rn r10, r10, r24
0002e0  8beb8b21  mul.f.rn r23, r23, r24
0002e4  0b6b8b21  mul.f.rn r22, r22, r24
0002e8  0b648421  mul.f.rn r8, r8, r24
0002ec  8bed8d21  mul.f.rn r27, r27, r24
0002f0  0b698921  mul.f.rn r18, r18, r24
0002f4  8be0d010  add.f.rn r1, r1, r13
0002f8  0b61f110  add.f.rn r2, r2, r15
0002fc  0b6a5a10  add.f.rn r20, r20, r5
000300  ab02803f  lui r5, 260096
000304  8be3e310  add.f.rn r7, r7, r14
000308  0b654510  add.f.rn r10, r10, r4
00030c  8beb9b10  add.f.rn r23, r23, r9
000310  0b6b6b10  add.f.rn r22, r22, r6
000314  0b64c410  add.f.rn r8, r8, r12
000318  8bed1d11  add.f.rn r27, r27, r17
00031c  0b690911  add.f.rn r18, r18, r16
000320  8be0c021  mul.f.rn r1, r1, r28
000324  0b61c121  mul.f.rn r2, r2, r28
000328  8be3c321  mul.f.rn r7, r7, r28
00032c  0b65c521  mul.f.rn r10, r10, r28
000330  0b64c421  mul.f.rn r8, r8, r28
000334  0b6aca21  mul.f.rn r20, r20, r28
000338  0b6bcb21  mul.f.rn r22, r22, r28
00033c  0b69c921  mul.f.rn r18, r18, r28
000340  8f800000  exp.f.rn r1, r1
000344  0f010100  exp.f.rn r2, r2
000348  8f830300  exp.f.rn r7, r7
00034c  0f040400  exp.f.rn r8, r8
000350  0f090900  exp.f.rn r18, r18
000354  0f821218  div.f.rn r4, r5, r1
000358  0f837218  div.f.rn r6, r5, r7
00035c  8be44018  sub.f.rn r9, r1, r4
000360  8be04010  add.f.rn r1, r1, r4
000364  0f822218  div.f.rn r4, r5, r2
000368  8f801418  div.f.rn r1, r9, r1
00036c  8be46318  sub.f.rn r9, r7, r6
000370  0be36310  add.f.rn r6, r7, r6
000374  8f838218  div.f.rn r7, r5, r8
000378  670d1ffa  storeli.w r1, -560(r30)
00037c  8b604118  sub.f.rn r1, r2, r4
000380  0b614110  add.f.rn r2, r2, r4
000384  0f020500  exp.f.rn r4, r10
000388  0f050a00  exp.f.rn r10, r20
00038c  0beacb21  mul.f.rn r20, r23, r28
000390  8f802018  div.f.rn r1, r1, r2
000394  0f816418  div.f.rn r2, r9, r6
000398  8b647418  sub.f.rn r9, r8, r7
00039c  8b637410  add.f.rn r7, r8, r7
0003a0  0be4cd21  mul.f.rn r8, r27, r28
0003a4  0f0a0a00  exp.f.rn r20, r20
0003a8  0f83a218  div.f.rn r6, r5, r10
0003ac  0f040400  exp.f.rn r8, r8
0003b0  8f887418  div.f.rn r17, r9, r7
0003b4  e74c1ffa  storeli.w r1, -564(r30)
0003b8  8f804218  div.f.rn r1, r5, r4
0003bc  674c2ffa  storeli.w r2, -572(r30)
0003c0  0f010b00  exp.f.rn r2, r22
0003c4  8f834219  div.f.rn r7, r5, r20
0003c8  8b6b6518  sub.f.rn r23, r10, r6
0003cc  0b636510  add.f.rn r6, r10, r6
0003d0  0b6b1218  sub.f.rn r22, r4, r1
0003d4  8b601210  add.f.rn r1, r4, r1
0003d8  0f822218  div.f.rn r4, r5, r2
0003dc  8f001b18  div.f.rn r1, r22, r1
0003e0  e70c1ffa  storeli.w r1, -568(r30)
0003e4  8b604118  sub.f.rn r1, r2, r4
0003e8  0b614110  add.f.rn r2, r2, r4
0003ec  0f826b18  div.f.rn r4, r23, r6
0003f0  0f838218  div.f.rn r6, r5, r8
0003f4  8f802018  div.f.rn r1, r1, r2
0003f8  0b617a10  add.f.rn r2, r20, r7
0003fc  670c4ffa  storeli.w r4, -576(r30)
000400  6302fffb  loadli.w r4,  -520(r30)
000404  170b5201  and r22, r4, r21
000408  6342effb  loadli.w r4,  -524(r30)
00040c  e70f1ffa  storeli.w r1, -520(r30)
000410  8b607a18  sub.f.rn r1, r20, r7
000414  0b6a6b21  mul.f.rn r20, r22, r22
000418  8b636418  sub.f.rn r7, r8, r6
00041c  0b646410  add.f.rn r8, r8, r6
000420  97045201  and r9, r4, r21
000424  6302effb  loadli.w r4,  -528(r30)
000428  17055201  and r10, r4, r21
00042c  6342dffb  loadli.w r4,  -532(r30)
000430  8f8d2018  div.f.rn r27, r1, r2
000434  0b616a21  mul.f.rn r2, r20, r22
000438  8f8b8318  div.f.rn r23, r7, r8
00043c  8be09420  mul.f.rn r1, r9, r9
000440  8b63a520  mul.f.rn r7, r10, r10
000444  17035201  and r6, r4, r21
000448  17825101  and r4, r3, r21
00044c  e301dffb  loadli.w r3,  -536(r30)
000450  0b646320  mul.f.rn r8, r6, r6
000454  8b694220  mul.f.rn r19, r4, r4
000458  674f4ffa  storeli.w r4, -524(r30)
00045c  178a5101  and r20, r3, r21
000460  8b6a4a21  mul.f.rn r21, r20, r20
000464  0b618121  mul.f.rn r2, r2, r24
000468  8be09020  mul.f.rn r1, r1, r9
00046c  8be3a320  mul.f.rn r7, r7, r10
000470  8bed5d10  add.f.rn r27, r27, r5
000474  8beb5b10  add.f.rn r23, r23, r5
000478  0b646420  mul.f.rn r8, r8, r6
00047c  8be94920  mul.f.rn r19, r19, r4
000480  8bea4a21  mul.f.rn r21, r21, r20
000484  0b616111  add.f.rn r2, r2, r22
000488  8be08021  mul.f.rn r1, r1, r24
00048c  8be38321  mul.f.rn r7, r7, r24
000490  0b648421  mul.f.rn r8, r8, r24
000494  8be98921  mul.f.rn r19, r19, r24
000498  8bea8a21  mul.f.rn r21, r21, r24
00049c  0b61c121  mul.f.rn r2, r2, r28
0004a0  8be09010  add.f.rn r1, r1, r9
0004a4  8be3a310  add.f.rn r7, r7, r10
0004a8  0b646410  add.f.rn r8, r8, r6
0004ac  8be94910  add.f.rn r19, r19, r4
0004b0  8bea4a11  add.f.rn r21, r21, r20
0004b4  0f010100  exp.f.rn r2, r2
0004b8  8be0c021  mul.f.rn r1, r1, r28
0004bc  8be3c321  mul.f.rn r7, r7, r28
0004c0  0b64c421  mul.f.rn r8, r8, r28
0004c4  8be9c921  mul.f.rn r19, r19, r28
0004c8  8beaca21  mul.f.rn r21, r21, r28
0004cc  8f800000  exp.f.rn r1, r1
0004d0  8f830300  exp.f.rn r7, r7
0004d4  0f8c2218  div.f.rn r24, r5, r2
0004d8  0f040400  exp.f.rn r8, r8
0004dc  8f890900  exp.f.rn r19, r19
0004e0  8f8a0a00  exp.f.rn r21, r21
0004e4  8f8c1218  div.f.rn r25, r5, r1
0004e8  0b6d8119  sub.f.rn r26, r2, r24
0004ec  0b628111  add.f.rn r4, r2, r24
0004f0  0f8c7218  div.f.rn r24, r5, r7
0004f4  0f818218  div.f.rn r2, r5, r8
0004f8  0bee9019  sub.f.rn r28, r1, r25
0004fc  8be19011  add.f.rn r3, r1, r25
000500  8f8c3219  div.f.rn r25, r5, r19
000504  0f024d18  div.f.rn r4, r26, r4
000508  0f8d5219  div.f.rn r26, r5, r21
00050c  8be08319  sub.f.rn r1, r7, r24
000510  8be38311  add.f.rn r7, r7, r24
000514  0b6c2418  sub.f.rn r24, r8, r2
000518  0b642410  add.f.rn r8, r8, r2
00051c  8f013e18  div.f.rn r3, r28, r3
000520  8f807018  div.f.rn r1, r1, r7
000524  0be19919  sub.f.rn r2, r19, r25
000528  8be99911  add.f.rn r19, r19, r25
00052c  8f8c2219  div.f.rn r25, r5, r18
000530  0b625210  add.f.rn r4, r4, r5
000534  8f038c18  div.f.rn r7, r24, r8
000538  0f043119  div.f.rn r8, r2, r19
00053c  8be9aa19  sub.f.rn r19, r21, r26
000540  8beaaa11  add.f.rn r21, r21, r26
000544  8be15110  add.f.rn r3, r3, r5
000548  670f1ffa  storeli.w r1, -528(r30)
00054c  ab00003f  lui r1, 258048
000550  0b619919  sub.f.rn r2, r18, r25
000554  0b699911  add.f.rn r18, r18, r25
000558  8be35310  add.f.rn r7, r7, r5
00055c  0b6e1720  mul.f.rn r28, r14, r1
000560  6307affb  loadli.w r14,  -560(r30)
000564  0b6b1b20  mul.f.rn r22, r22, r1
000568  8be61620  mul.f.rn r13, r13, r1
00056c  0b661620  mul.f.rn r12, r12, r1
000570  8be71720  mul.f.rn r15, r15, r1
000574  0b631320  mul.f.rn r6, r6, r1
000578  8be41420  mul.f.rn r9, r9, r1
00057c  0b651520  mul.f.rn r10, r10, r1
000580  0b681820  mul.f.rn r16, r16, r1
000584  0b6a1a20  mul.f.rn r20, r20, r1
000588  0b6c5710  add.f.rn r24, r14, r5
00058c  63479ffb  loadli.w r14,  -564(r30)
000590  0f012119  div.f.rn r2, r2, r18
000594  0f895919  div.f.rn r18, r19, r21
000598  e349bffb  loadli.w r19,  -548(r30)
00059c  e30abffb  loadli.w r21,  -552(r30)
0005a0  0b645410  add.f.rn r8, r8, r5
0005a4  8b6c5710  add.f.rn r25, r14, r5
0005a8  63478ffb  loadli.w r14,  -572(r30)
0005ac  0b624b20  mul.f.rn r4, r22, r4
0005b0  634beffb  loadli.w r22,  -524(r30)
0005b4  8be13420  mul.f.rn r3, r9, r3
0005b8  0b637320  mul.f.rn r6, r6, r7
0005bc  8bea1a20  mul.f.rn r21, r21, r1
0005c0  8be91920  mul.f.rn r19, r19, r1
0005c4  0b6d5710  add.f.rn r26, r14, r5
0005c8  0be75810  add.f.rn r14, r17, r5
0005cc  8be68621  mul.f.rn r13, r13, r24
0005d0  634caffb  loadli.w r24,  -556(r30)
0005d4  0b6b1b20  mul.f.rn r22, r22, r1
0005d8  0b615110  add.f.rn r2, r2, r5
0005dc  0b695910  add.f.rn r18, r18, r5
0005e0  8be79721  mul.f.rn r15, r15, r25
0005e4  e30c9ffb  loadli.w r25,  -568(r30)
0005e8  0b6c1c20  mul.f.rn r24, r24, r1
0005ec  b3910100  float2bfloat.rn r3, r3
0005f0  33120200  float2bfloat.rn r4, r4
0005f4  8beaba21  mul.f.rn r21, r21, r27
0005f8  73923500  store.h r3, 4(r11)
0005fc  73914500  store.h r4, 2(r11)
000600  8b68ae21  mul.f.rn r17, r28, r26
000604  0b66e620  mul.f.rn r12, r12, r14
000608  6307cffb  loadli.w r14,  -544(r30)
00060c  630d8ffb  loadli.w r26,  -576(r30)
000610  630efffb  loadli.w r28,  -520(r30)
000614  8bec5c10  add.f.rn r25, r25, r5
000618  0b612820  mul.f.rn r2, r16, r2
00061c  8b632a21  mul.f.rn r7, r20, r18
000620  0b671720  mul.f.rn r14, r14, r1
000624  0b6e5e10  add.f.rn r28, r28, r5
000628  0b6d5d10  add.f.rn r26, r26, r5
00062c  8b6b7c21  mul.f.rn r23, r24, r23
000630  b3940700  float2bfloat.rn r9, r15
000634  2b0c4000  lui r24, 1024
000638  739995fe  store.h r9, -14(r11)
00063c  e74e1ffb  storeli.w r17, -532(r30)
000640  e348cffb  loadli.w r17,  -540(r30)
000644  b3140600  float2bfloat.rn r9, r12
000648  739b95fe  store.h r9, -10(r11)
00064c  8be81820  mul.f.rn r17, r17, r1
000650  e300effb  loadli.w r1,  -528(r30)
000654  0b679721  mul.f.rn r14, r14, r25
000658  8be9c921  mul.f.rn r19, r19, r28
00065c  8be05010  add.f.rn r1, r1, r5
000660  8b628b20  mul.f.rn r5, r22, r8
000664  33940600  float2bfloat.rn r8, r13
000668  739885fe  store.h r8, -16(r11)
00066c  6344dffb  loadli.w r8,  -532(r30)
000670  8be8a821  mul.f.rn r17, r17, r26
000674  33140400  float2bfloat.rn r8, r8
000678  8b601520  mul.f.rn r1, r10, r1
00067c  b3910200  float2bfloat.rn r3, r5
000680  739a85fe  store.h r8, -12(r11)
000684  33140700  float2bfloat.rn r8, r14
000688  73953500  store.h r3, 10(r11)
00068c  b3940800  float2bfloat.rn r9, r17
000690  739c85fe  store.h r8, -8(r11)
000694  33940900  float2bfloat.rn r8, r19
000698  9f080ffd  addli r17, r30, -384
00069c  739d95fe  store.h r9, -6(r11)
0006a0  b3940a00  float2bfloat.rn r9, r21
0006a4  739e85fe  store.h r8, -4(r11)
0006a8  33940b00  float2bfloat.rn r8, r23
0006ac  ab0b807f  lui r23, 522240
0006b0  b3900000  float2bfloat.rn r1, r1
0006b4  739f95fe  store.h r9, -2(r11)
0006b8  73908500  store.h r8, 0(r11)
0006bc  73931500  store.h r1, 6(r11)
0006c0  b3100300  float2bfloat.rn r1, r6
0006c4  73941500  store.h r1, 8(r11)
0006c8  b3100100  float2bfloat.rn r1, r2
0006cc  33910300  float2bfloat.rn r2, r7
0006d0  73961500  store.h r1, 12(r11)
0006d4  73972500  store.h r2, 14(r11)
0006d8  9f854500  addli r11, r11, 32
0006dc  9f000002  addli r1, zero, 256
0006e0  00a00000  mfence { lm }
0006e4  6349fffb  loadli.w r18,  -516(r30)
0006e8  e34a7ffb  loadli.w r21,  -580(r30)
0006ec  630b7ffb  loadli.w r22,  -584(r30)
0006f0  1f098900  addli r18, r18, 64
0006f4  b75919fc  beq r18, r1, -1420
0006f8  9f000ffc  addli r1, r30, -512
0006fc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000700  9f190000  addli r19, zero, 1
000704  9f8c0500  addli r25, r11, 0
000708  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00070c  8b912011  add.s r3, r1, r18
000710  7e8109e0  vmmov mr2, r19
000714  6bb20100  load.hu r4, 0(r3)
000718  ebb22100  load.hu r5, 2(r3)
00071c  6bb1a101  load.hu r2, 26(r3)
000720  ebb0c101  load.hu r1, 28(r3)
000724  6bb34100  load.hu r6, 4(r3)
000728  ebb36100  load.hu r7, 6(r3)
00072c  6bb48100  load.hu r8, 8(r3)
000730  ebb4a100  load.hu r9, 10(r3)
000734  6bb5c100  load.hu r10, 12(r3)
000738  ebb5e100  load.hu r11, 14(r3)
00073c  6bb60101  load.hu r12, 16(r3)
000740  ebb62101  load.hu r13, 18(r3)
000744  6bb74101  load.hu r14, 20(r3)
000748  ebb76101  load.hu r15, 22(r3)
00074c  6bb88101  load.hu r16, 24(r3)
000750  ebb1e101  load.hu r3, 30(r3)
000754  33120218  bfloat2float.rn r4, r4
000758  33110118  bfloat2float.rn r2, r2
00075c  b3900018  bfloat2float.rn r1, r1
000760  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000764  33920218  bfloat2float.rn r4, r5
000768  9f420000  addli r5, zero, 4
00076c  7e8002e0  vmmov mr0, r5
000770  9f021000  addli r5, zero, 8
000774  ea201236  vor.u.mh vr1{mr3}, r4, vr1
000778  33120318  bfloat2float.rn r4, r6
00077c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000780  33920318  bfloat2float.rn r4, r7
000784  7e8002e0  vmmov mr0, r5
000788  9f022000  addli r5, zero, 16
00078c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000790  33120418  bfloat2float.rn r4, r8
000794  7e8002e0  vmmov mr0, r5
000798  9f024000  addli r5, zero, 32
00079c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0007a0  33920418  bfloat2float.rn r4, r9
0007a4  7e8002e0  vmmov mr0, r5
0007a8  9f028000  addli r5, zero, 64
0007ac  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0007b0  33120518  bfloat2float.rn r4, r10
0007b4  7e8002e0  vmmov mr0, r5
0007b8  9f020001  addli r5, zero, 128
0007bc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0007c0  33920518  bfloat2float.rn r4, r11
0007c4  7e8002e0  vmmov mr0, r5
0007c8  9f020002  addli r5, zero, 256
0007cc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0007d0  33120618  bfloat2float.rn r4, r12
0007d4  7e8002e0  vmmov mr0, r5
0007d8  9f020004  addli r5, zero, 512
0007dc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0007e0  33920618  bfloat2float.rn r4, r13
0007e4  7e8002e0  vmmov mr0, r5
0007e8  9f020008  addli r5, zero, 1024
0007ec  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0007f0  33120718  bfloat2float.rn r4, r14
0007f4  7e8002e0  vmmov mr0, r5
0007f8  9f020010  addli r5, zero, 2048
0007fc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000800  33920718  bfloat2float.rn r4, r15
000804  7e8002e0  vmmov mr0, r5
000808  9f020020  addli r5, zero, 4096
00080c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000810  33120818  bfloat2float.rn r4, r16
000814  7e8002e0  vmmov mr0, r5
000818  ea201230  vor.u.mh vr1{mr0}, r4, vr1
00081c  1f020040  addli r4, zero, 8192
000820  7e0002e0  vmmov mr0, r4
000824  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000828  2b410000  lui r2, 4
00082c  7e0001e0  vmmov mr0, r2
000830  0b912811  add.s r2, r17, r18
000834  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000838  b3900118  bfloat2float.rn r1, r3
00083c  ab810000  lui r3, 8
000840  7e8001e0  vmmov mr0, r3
000844  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000848  eb300100  load.hu r1, 0(r2)
00084c  eb312100  load.hu r3, 2(r2)
000850  6b324100  load.hu r4, 4(r2)
000854  eb326100  load.hu r5, 6(r2)
000858  6b338100  load.hu r6, 8(r2)
00085c  eb33a100  load.hu r7, 10(r2)
000860  6b34c100  load.hu r8, 12(r2)
000864  eb34e100  load.hu r9, 14(r2)
000868  6b350101  load.hu r10, 16(r2)
00086c  eb352101  load.hu r11, 18(r2)
000870  6b364101  load.hu r12, 20(r2)
000874  eb366101  load.hu r13, 22(r2)
000878  6b378101  load.hu r14, 24(r2)
00087c  eb37a101  load.hu r15, 26(r2)
000880  6b38c101  load.hu r16, 28(r2)
000884  6b31e101  load.hu r2, 30(r2)
000888  b3900018  bfloat2float.rn r1, r1
00088c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000890  b3900118  bfloat2float.rn r1, r3
000894  9f410000  addli r3, zero, 4
000898  7e8101e0  vmmov mr2, r3
00089c  9f011000  addli r3, zero, 8
0008a0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0008a4  b3100218  bfloat2float.rn r1, r4
0008a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008ac  b3900218  bfloat2float.rn r1, r5
0008b0  7e8101e0  vmmov mr2, r3
0008b4  9f012000  addli r3, zero, 16
0008b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008bc  b3100318  bfloat2float.rn r1, r6
0008c0  7e8101e0  vmmov mr2, r3
0008c4  9f014000  addli r3, zero, 32
0008c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008cc  b3900318  bfloat2float.rn r1, r7
0008d0  7e8101e0  vmmov mr2, r3
0008d4  9f018000  addli r3, zero, 64
0008d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008dc  b3100418  bfloat2float.rn r1, r8
0008e0  7e8101e0  vmmov mr2, r3
0008e4  9f010001  addli r3, zero, 128
0008e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008ec  b3900418  bfloat2float.rn r1, r9
0008f0  7e8101e0  vmmov mr2, r3
0008f4  9f010002  addli r3, zero, 256
0008f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0008fc  b3100518  bfloat2float.rn r1, r10
000900  7e8101e0  vmmov mr2, r3
000904  9f010004  addli r3, zero, 512
000908  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00090c  b3900518  bfloat2float.rn r1, r11
000910  7e8101e0  vmmov mr2, r3
000914  9f010008  addli r3, zero, 1024
000918  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00091c  b3100618  bfloat2float.rn r1, r12
000920  7e8101e0  vmmov mr2, r3
000924  9f010010  addli r3, zero, 2048
000928  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00092c  b3900618  bfloat2float.rn r1, r13
000930  7e8101e0  vmmov mr2, r3
000934  9f010020  addli r3, zero, 4096
000938  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00093c  b3100718  bfloat2float.rn r1, r14
000940  7e8101e0  vmmov mr2, r3
000944  9f010040  addli r3, zero, 8192
000948  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00094c  b3900718  bfloat2float.rn r1, r15
000950  7e8101e0  vmmov mr2, r3
000954  ab410000  lui r3, 4
000958  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00095c  b3100818  bfloat2float.rn r1, r16
000960  7e8101e0  vmmov mr2, r3
000964  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000968  b3100118  bfloat2float.rn r1, r2
00096c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
000970  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000974  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
000978  00a00000  mfence { lm }
00097c  e3000ffe  loadli.w r1,  -256(r30)
000980  63450ffe  loadli.w r10,  -252(r30)
000984  63041ffe  loadli.w r8,  -248(r30)
000988  63461ffe  loadli.w r12,  -244(r30)
00098c  63072ffe  loadli.w r14,  -240(r30)
000990  e3462ffe  loadli.w r13,  -236(r30)
000994  63083ffe  loadli.w r16,  -232(r30)
000998  e3433ffe  loadli.w r7,  -228(r30)
00099c  e3074ffe  loadli.w r15,  -224(r30)
0009a0  63424ffe  loadli.w r4,  -220(r30)
0009a4  e3055ffe  loadli.w r11,  -216(r30)
0009a8  e3425ffe  loadli.w r5,  -212(r30)
0009ac  63036ffe  loadli.w r6,  -208(r30)
0009b0  e3416ffe  loadli.w r3,  -204(r30)
0009b4  e3047ffe  loadli.w r9,  -200(r30)
0009b8  17816001  and r2, r1, r22
0009bc  93882b04  setlt.u r17, r23, r2
0009c0  63417ffe  loadli.w r2,  -196(r30)
0009c4  3be00800  bneq r17, zero, 24
0009c8  9bc80001  srli r17, r1, 16
0009cc  9b881800  andi r17, r17, 1
0009d0  8b901011  add.s r1, r1, r17
0009d4  8b905011  add.s r1, r1, r21
0009d8  5b010000  j 8
0009dc  97908001  or r1, r1, r24
0009e0  97086501  and r17, r10, r22
0009e4  93881b05  setlt.u r17, r23, r17
0009e8  3be00800  bneq r17, zero, 24
0009ec  9b480501  srli r17, r10, 16
0009f0  9b881800  andi r17, r17, 1
0009f4  0b151511  add.s r10, r10, r17
0009f8  8b185511  add.s r17, r10, r21
0009fc  5b010000  j 8
000a00  97188501  or r17, r10, r24
000a04  17056401  and r10, r8, r22
000a08  1385ab04  setlt.u r10, r23, r10
000a0c  3b600500  bneq r10, zero, 24
000a10  1b450401  srli r10, r8, 16
000a14  1b051500  andi r10, r10, 1
000a18  0b14a410  add.s r8, r8, r10
000a1c  0b155411  add.s r10, r8, r21
000a20  5b010000  j 8
000a24  17158401  or r10, r8, r24
000a28  17046601  and r8, r12, r22
000a2c  13848b04  setlt.u r8, r23, r8
000a30  3b600400  bneq r8, zero, 24
000a34  1b440601  srli r8, r12, 16
000a38  1b041400  andi r8, r8, 1
000a3c  0b148610  add.s r8, r12, r8
000a40  0b165411  add.s r12, r8, r21
000a44  5b010000  j 8
000a48  17168601  or r12, r12, r24
000a4c  17046701  and r8, r14, r22
000a50  13848b04  setlt.u r8, r23, r8
000a54  3b600400  bneq r8, zero, 24
000a58  1b440701  srli r8, r14, 16
000a5c  1b041400  andi r8, r8, 1
000a60  0b148710  add.s r8, r14, r8
000a64  0b1d5411  add.s r26, r8, r21
000a68  5b010000  j 8
000a6c  171d8701  or r26, r14, r24
000a70  17846601  and r8, r13, r22
000a74  13848b04  setlt.u r8, r23, r8
000a78  3b600400  bneq r8, zero, 24
000a7c  1bc40601  srli r8, r13, 16
000a80  1b041400  andi r8, r8, 1
000a84  0b948610  add.s r8, r13, r8
000a88  8b195411  add.s r19, r8, r21
000a8c  5b010000  j 8
000a90  97998601  or r19, r13, r24
000a94  17046801  and r8, r16, r22
000a98  e74f2ffb  storeli.w r18, -516(r30)
000a9c  13848b04  setlt.u r8, r23, r8
000aa0  3b600400  bneq r8, zero, 24
000aa4  1b440801  srli r8, r16, 16
000aa8  1b041400  andi r8, r8, 1
000aac  0b148810  add.s r8, r16, r8
000ab0  0b195411  add.s r18, r8, r21
000ab4  5b010000  j 8
000ab8  17198801  or r18, r16, r24
000abc  17846301  and r8, r7, r22
000ac0  13848b04  setlt.u r8, r23, r8
000ac4  3b600400  bneq r8, zero, 24
000ac8  1bc40301  srli r8, r7, 16
000acc  1b041400  andi r8, r8, 1
000ad0  8b938310  add.s r7, r7, r8
000ad4  8b935311  add.s r7, r7, r21
000ad8  5b010000  j 8
000adc  97938301  or r7, r7, r24
000ae0  17846701  and r8, r15, r22
000ae4  13848b04  setlt.u r8, r23, r8
000ae8  3b600400  bneq r8, zero, 24
000aec  1bc40701  srli r8, r15, 16
000af0  1b041400  andi r8, r8, 1
000af4  0b948710  add.s r8, r15, r8
000af8  0b1a5411  add.s r20, r8, r21
000afc  5b010000  j 8
000b00  179a8701  or r20, r15, r24
000b04  17046201  and r8, r4, r22
000b08  13848b04  setlt.u r8, r23, r8
000b0c  3b600400  bneq r8, zero, 24
000b10  1b440201  srli r8, r4, 16
000b14  1b041400  andi r8, r8, 1
000b18  0b128210  add.s r4, r4, r8
000b1c  0b125211  add.s r4, r4, r21
000b20  5b010000  j 8
000b24  17128201  or r4, r4, r24
000b28  e70f4ffa  storeli.w r4, -520(r30)
000b2c  17826501  and r4, r11, r22
000b30  13824b04  setlt.u r4, r23, r4
000b34  3b600200  bneq r4, zero, 24
000b38  1bc20501  srli r4, r11, 16
000b3c  1b021200  andi r4, r4, 1
000b40  0b924510  add.s r4, r11, r4
000b44  0b125211  add.s r4, r4, r21
000b48  5b010000  j 8
000b4c  17928501  or r4, r11, r24
000b50  17846201  and r8, r5, r22
000b54  674f4ffa  storeli.w r4, -524(r30)
000b58  13848b04  setlt.u r8, r23, r8
000b5c  3b600400  bneq r8, zero, 24
000b60  1bc40201  srli r8, r5, 16
000b64  1b041400  andi r8, r8, 1
000b68  8b928210  add.s r5, r5, r8
000b6c  0b925211  add.s r4, r5, r21
000b70  5b010000  j 8
000b74  17928201  or r4, r5, r24
000b78  17046301  and r8, r6, r22
000b7c  670f4ffa  storeli.w r4, -528(r30)
000b80  13848b04  setlt.u r8, r23, r8
000b84  3b600400  bneq r8, zero, 24
000b88  1b440301  srli r8, r6, 16
000b8c  1b041400  andi r8, r8, 1
000b90  0b138310  add.s r6, r6, r8
000b94  0b125311  add.s r4, r6, r21
000b98  5b010000  j 8
000b9c  17128301  or r4, r6, r24
000ba0  17846101  and r8, r3, r22
000ba4  e74e4ffa  storeli.w r4, -532(r30)
000ba8  13848b04  setlt.u r8, r23, r8
000bac  3b600400  bneq r8, zero, 24
000bb0  1bc40101  srli r8, r3, 16
000bb4  1b041400  andi r8, r8, 1
000bb8  8b918110  add.s r3, r3, r8
000bbc  8b915111  add.s r3, r3, r21
000bc0  5b010000  j 8
000bc4  97918101  or r3, r3, r24
000bc8  17846401  and r8, r9, r22
000bcc  13848b04  setlt.u r8, r23, r8
000bd0  3b600400  bneq r8, zero, 24
000bd4  1bc40401  srli r8, r9, 16
000bd8  1b041400  andi r8, r8, 1
000bdc  0b948410  add.s r8, r9, r8
000be0  0b185411  add.s r16, r8, r21
000be4  5b010000  j 8
000be8  17988401  or r16, r9, r24
000bec  17046101  and r8, r2, r22
000bf0  13848b04  setlt.u r8, r23, r8
000bf4  b72804fa  beq r8, zero, -2520
000bf8  17118101  or r2, r2, r24
000bfc  5bc6feff  j -2512
000c00  9f0e0ffb  addli sp, r30, -640
000c04  9f8e0e05  addli sp, sp, 640
000c08  00a00300  mfence { lm, sm, gm }
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
000e40  00100000  exit
000e44  00100000  exit
000e48  00100000  exit
000e4c  00100000  exit
