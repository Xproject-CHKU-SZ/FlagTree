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
000078  9f496000  addli r19, zero, 52
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
0000dc  9f8e0ef5  addli sp, sp, -1408
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f8e0a  addli r30, sp, 1344
0000ec  abf20000  lui r5, 15
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3435f00  loadli.w r7,  44(r30)
0000fc  63025f00  loadli.w r4,  40(r30)
000100  63036f00  loadli.w r6,  48(r30)
000104  9b92f2ff  ori r5, r5, 4095
000108  0b942110  add.s r8, r3, r2
00010c  0b924320  mul.s r4, r7, r4
000110  9f042410  addli r9, r8, 2064
000114  0b176220  mul.s r14, r4, r6
000118  670f9ff4  storeli.w r9, -1296(r30)
00011c  73e00400  stores.w zero, 0(r9)
000120  80540002  load_param_i r9, 0
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  674f8ff4  storeli.w r8, -1292(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  80a10204  csr_set csr3, r5
000140  00d00100  sync_group
000144  cb639700  ble.s r14, r9, 248
000148  1f024000  addli r4, zero, 32
00014c  1f081000  addli r16, zero, 8
000150  80d70002  load_param_i r15, 1
000154  0b924030  div.s r4, r1, r4
000158  670d4ff4  storeli.w r4, -1328(r30)
00015c  1b325200  slli r4, r4, 5
000160  0b924018  sub.s r4, r1, r4
000164  3f200201  blt.s r4, r16, 8
000168  db190000  j 204
00016c  1b338200  slli r6, r4, 8
000170  9f020010  addli r5, zero, 2048
000174  abf3ffff  lui r7, 1048575
000178  13020200  seteq r4, r4, zero
00017c  1b8bf001  andi r22, r1, 31
000180  9bf00004  setlti r1, r1, 64
000184  9f0a8ffb  addli r21, r30, -576
000188  9f683000  addli r17, zero, 30
00018c  1f493000  addli r18, zero, 28
000190  9f2b3000  addli r23, zero, 26
000194  1f0c3000  addli r24, zero, 24
000198  9f6c2000  addli r25, zero, 22
00019c  1f4d2000  addli r26, zero, 20
0001a0  1f641000  addli r8, zero, 14
0001a4  1f650000  addli r10, zero, 6
0001a8  9f450000  addli r11, zero, 4
0001ac  1f260000  addli r12, zero, 2
0001b0  9f0d0004  addli r27, zero, 512
0001b4  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
0001b8  e74ceff4  storeli.w r14, -1332(r30)
0001bc  e70cfff4  storeli.w r15, -1336(r30)
0001c0  e74e6ff4  storeli.w r6, -1300(r30)
0001c4  8b926218  sub.s r5, r5, r6
0001c8  1f030002  addli r6, zero, 256
0001cc  674e6ff5  storeli.w r22, -1308(r30)
0001d0  8b826240  min.u r5, r5, r6
0001d4  1b9303f8  ori r6, r7, 3968
0001d8  9f431000  addli r7, zero, 12
0001dc  97816100  and r3, r3, r6
0001e0  9bb91200  slli r19, r5, 1
0001e4  9f72f00f  addli r5, zero, 2047
0001e8  1f231000  addli r6, zero, 10
0001ec  97804000  and r1, r1, r4
0001f0  2bf2ff7f  lui r4, 524287
0001f4  0b912110  add.s r2, r3, r2
0001f8  ab710000  lui r3, 7
0001fc  e70e3ff5  storeli.w r19, -1304(r30)
000200  670e1ff4  storeli.w r1, -1312(r30)
000204  9f202000  addli r1, zero, 18
000208  e7432ff6  storeli.w r2, -1220(r30)
00020c  1f012110  addli r2, r2, 2064
000210  9b96f1ff  ori r13, r3, 4095
000214  abf10000  lui r3, 15
000218  1b9ef1ff  ori r28, r3, 4095
00021c  e7032ff6  storeli.w r2, -1224(r30)
000220  1f012000  addli r2, zero, 16
000224  9b11f2ff  ori r3, r4, 4095
000228  e70d3ff4  storeli.w r3, -1320(r30)
00022c  e74dcff5  storeli.w r28, -1316(r30)
000230  db060000  j 52
000234  8b94f410  add.s r9, r9, r15
000238  bfffe4fe  blt.s r9, r14, -4
00023c  9f0e8ff5  addli sp, r30, -1344
000240  9f8e8e0a  addli sp, sp, 1344
000244  00a00300  mfence { lm, sm, gm }
000248  00100000  exit
00024c  e344aff5  loadli.w r9,  -1324(r30)
000250  e3079ff5  loadli.w r15,  -1336(r30)
000254  63479ff5  loadli.w r14,  -1332(r30)
000258  8b94f410  add.s r9, r9, r15
00025c  3fa0e400  blt.s r9, r14, 8
000260  dbfbffff  j -36
000264  1f828a00  addli r4, r21, 64
000268  e3016f00  loadli.w r3,  48(r30)
00026c  674d9ff4  storeli.w r9, -1324(r30)
000270  67434ff6  storeli.w r4, -1228(r30)
000274  1f820a01  addli r4, r21, 128
000278  8b913430  div.s r3, r9, r3
00027c  9f040000  addli r9, zero, 0
000280  67034ff6  storeli.w r4, -1232(r30)
000284  1f828a01  addli r4, r21, 192
000288  e7424ff6  storeli.w r4, -1236(r30)
00028c  1f820a02  addli r4, r21, 256
000290  e7024ff6  storeli.w r4, -1240(r30)
000294  1f828a02  addli r4, r21, 320
000298  67424ff6  storeli.w r4, -1244(r30)
00029c  63425f00  loadli.w r4,  44(r30)
0002a0  8b914130  div.s r3, r3, r4
0002a4  1f820a03  addli r4, r21, 384
0002a8  67024ff6  storeli.w r4, -1248(r30)
0002ac  1f828a03  addli r4, r21, 448
0002b0  e7414ff6  storeli.w r4, -1252(r30)
0002b4  1f824a00  addli r4, r21, 32
0002b8  e7014ff6  storeli.w r4, -1256(r30)
0002bc  1f82ca00  addli r4, r21, 96
0002c0  9bb18100  slli r3, r3, 8
0002c4  67414ff6  storeli.w r4, -1260(r30)
0002c8  1f824a01  addli r4, r21, 160
0002cc  67014ff6  storeli.w r4, -1264(r30)
0002d0  1f82ca01  addli r4, r21, 224
0002d4  e7404ff6  storeli.w r4, -1268(r30)
0002d8  6302aff5  loadli.w r4,  -1328(r30)
0002dc  0b924110  add.s r4, r3, r4
0002e0  9f814a02  addli r3, r21, 288
0002e4  67403ff6  storeli.w r3, -1276(r30)
0002e8  9f81ca02  addli r3, r21, 352
0002ec  e7004ff6  storeli.w r4, -1272(r30)
0002f0  67003ff6  storeli.w r3, -1280(r30)
0002f4  9f814a03  addli r3, r21, 416
0002f8  e74f3ff4  storeli.w r3, -1284(r30)
0002fc  9f81ca03  addli r3, r21, 480
000300  e70f3ff4  storeli.w r3, -1288(r30)
000304  db260000  j 308
000308  fab80040  vextracti.s r17, 0(vr1)
00030c  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
000310  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
000314  9f280000  addli r17, zero, 2
000318  fe8108e0  vmmov mr3, r17
00031c  9f480000  addli r17, zero, 4
000320  6a200d36  vor.u.mh vr0{mr3}, r26, vr0
000324  7e8008e0  vmmov mr0, r17
000328  9f081000  addli r17, zero, 8
00032c  1f4d2000  addli r26, zero, 20
000330  7e8108e0  vmmov mr2, r17
000334  9f082000  addli r17, zero, 16
000338  6aa00c30  vor.u.mh vr0{mr0}, r25, vr0
00033c  9f6c2000  addli r25, zero, 22
000340  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
000344  7e8108e0  vmmov mr2, r17
000348  9f084000  addli r17, zero, 32
00034c  1f0c3000  addli r24, zero, 24
000350  fe8108e0  vmmov mr3, r17
000354  9f088000  addli r17, zero, 64
000358  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
00035c  7e8008e0  vmmov mr0, r17
000360  9f683000  addli r17, zero, 30
000364  9f2b3000  addli r23, zero, 26
000368  6a200b36  vor.u.mh vr0{mr3}, r22, vr0
00036c  6a200730  vor.u.mh vr0{mr0}, r14, vr0
000370  1f070001  addli r14, zero, 128
000374  7e0007e0  vmmov mr0, r14
000378  1f070002  addli r14, zero, 256
00037c  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
000380  7e0007e0  vmmov mr0, r14
000384  6aa00430  vor.u.mh vr0{mr0}, r9, vr0
000388  9f040004  addli r9, zero, 512
00038c  7e8104e0  vmmov mr2, r9
000390  9f040008  addli r9, zero, 1024
000394  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
000398  7e8104e0  vmmov mr2, r9
00039c  9f040010  addli r9, zero, 2048
0003a0  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0003a4  7e8104e0  vmmov mr2, r9
0003a8  9f040020  addli r9, zero, 4096
0003ac  fe8104e0  vmmov mr3, r9
0003b0  9f040040  addli r9, zero, 8192
0003b4  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0003b8  1f493000  addli r18, zero, 28
0003bc  6a200836  vor.u.mh vr0{mr3}, r16, vr0
0003c0  fe8104e0  vmmov mr3, r9
0003c4  aba4aaaa  lui r9, 699050
0003c8  1f081000  addli r16, zero, 8
0003cc  9fa45415  addli r9, r9, 2730
0003d0  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
0003d4  ab410000  lui r3, 4
0003d8  fe8101e0  vmmov mr3, r3
0003dc  ab810000  lui r3, 8
0003e0  6aa00236  vor.u.mh vr0{mr3}, r5, vr0
0003e4  7e8001e0  vmmov mr0, r3
0003e8  ab0200f0  lui r5, 983040
0003ec  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0003f0  7e8004e0  vmmov mr0, r9
0003f4  e304fff5  loadli.w r9,  -1288(r30)
0003f8  e309dff5  loadli.w r19,  -1304(r30)
0003fc  eb518f00  load.d r[4:5], 8(r30)
000400  6b570fdb  load.d r[15:16], -592(r30)
000404  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
000408  97925900  or r5, r19, r5
00040c  62c50410  vscatter.mh vr0{mr0}, vr10{r9}
000410  00a00000  mfence { lm }
000414  ffb25101  s_lm2gm r5, r21, 0(r[4:5])
000418  9f72f00f  addli r5, zero, 2047
00041c  00a00000  mfence { lm }
000420  634bcff5  loadli.w r22,  -1308(r30)
000424  63021ff6  loadli.w r4,  -1272(r30)
000428  e3447ffb  loadli.w r9,  -580(r30)
00042c  9f940400  addli r9, r9, 1
000430  9f010001  addli r3, zero, 128
000434  37e834fe  beq r9, r3, -488
000438  9bb11400  slli r3, r9, 1
00043c  0b1a3210  add.s r20, r4, r3
000440  bfbf42ff  blt.s r5, r20, -20
000444  9f010000  addli r3, zero, 0
000448  e74b9ffa  storeli.w r9, -580(r30)
00044c  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
000450  1f120000  addli r4, zero, 1
000454  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
000458  aba4aaaa  lui r9, 699050
00045c  7e0002e0  vmmov mr0, r4
000460  1f220000  addli r4, zero, 2
000464  9fa45415  addli r9, r9, 2730
000468  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00046c  7e0002e0  vmmov mr0, r4
000470  1f420000  addli r4, zero, 4
000474  fe0102e0  vmmov mr3, r4
000478  1f021000  addli r4, zero, 8
00047c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000480  7e0002e0  vmmov mr0, r4
000484  1f022000  addli r4, zero, 16
000488  7e0102e0  vmmov mr2, r4
00048c  1f024000  addli r4, zero, 32
000490  ea401036  vor.hf.mh vr1{mr3}, zero, vr1
000494  ea401630  vor.hf.mh vr1{mr0}, r12, vr1
000498  7e0002e0  vmmov mr0, r4
00049c  1f028000  addli r4, zero, 64
0004a0  ea401034  vor.hf.mh vr1{mr2}, zero, vr1
0004a4  eac01530  vor.hf.mh vr1{mr0}, r11, vr1
0004a8  7e0002e0  vmmov mr0, r4
0004ac  1f020001  addli r4, zero, 128
0004b0  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0004b4  7e0002e0  vmmov mr0, r4
0004b8  1f020002  addli r4, zero, 256
0004bc  ea401530  vor.hf.mh vr1{mr0}, r10, vr1
0004c0  7e0002e0  vmmov mr0, r4
0004c4  1f020004  addli r4, zero, 512
0004c8  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0004cc  7e0002e0  vmmov mr0, r4
0004d0  1f020008  addli r4, zero, 1024
0004d4  ea401830  vor.hf.mh vr1{mr0}, r16, vr1
0004d8  7e0002e0  vmmov mr0, r4
0004dc  1f020010  addli r4, zero, 2048
0004e0  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0004e4  7e0002e0  vmmov mr0, r4
0004e8  1f020020  addli r4, zero, 4096
0004ec  ea401330  vor.hf.mh vr1{mr0}, r6, vr1
0004f0  7e0002e0  vmmov mr0, r4
0004f4  1f020040  addli r4, zero, 8192
0004f8  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0004fc  7e0002e0  vmmov mr0, r4
000500  2b420000  lui r4, 4
000504  eac01330  vor.hf.mh vr1{mr0}, r7, vr1
000508  7e0002e0  vmmov mr0, r4
00050c  2b820000  lui r4, 8
000510  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000514  7e0002e0  vmmov mr0, r4
000518  2b020100  lui r4, 16
00051c  ea401430  vor.hf.mh vr1{mr0}, r8, vr1
000520  7e0002e0  vmmov mr0, r4
000524  2b020200  lui r4, 32
000528  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00052c  7e0002e0  vmmov mr0, r4
000530  2b020400  lui r4, 64
000534  ea401130  vor.hf.mh vr1{mr0}, r2, vr1
000538  7e0002e0  vmmov mr0, r4
00053c  2b020800  lui r4, 128
000540  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000544  7e0002e0  vmmov mr0, r4
000548  2b021000  lui r4, 256
00054c  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
000550  7e0002e0  vmmov mr0, r4
000554  2b022000  lui r4, 512
000558  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00055c  7e0002e0  vmmov mr0, r4
000560  2b024000  lui r4, 1024
000564  ea401d30  vor.hf.mh vr1{mr0}, r26, vr1
000568  7e0002e0  vmmov mr0, r4
00056c  2b028000  lui r4, 2048
000570  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000574  7e0002e0  vmmov mr0, r4
000578  2b020001  lui r4, 4096
00057c  eac01c30  vor.hf.mh vr1{mr0}, r25, vr1
000580  7e0002e0  vmmov mr0, r4
000584  2b020002  lui r4, 8192
000588  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00058c  7e0002e0  vmmov mr0, r4
000590  2b020004  lui r4, 16384
000594  ea401c30  vor.hf.mh vr1{mr0}, r24, vr1
000598  7e0002e0  vmmov mr0, r4
00059c  2b020008  lui r4, 32768
0005a0  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0005a4  7e0002e0  vmmov mr0, r4
0005a8  2b020010  lui r4, 65536
0005ac  eac01b30  vor.hf.mh vr1{mr0}, r23, vr1
0005b0  7e0002e0  vmmov mr0, r4
0005b4  2b020020  lui r4, 131072
0005b8  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0005bc  7e0002e0  vmmov mr0, r4
0005c0  2b020040  lui r4, 262144
0005c4  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
0005c8  7e0002e0  vmmov mr0, r4
0005cc  2b020080  lui r4, 524288
0005d0  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0005d4  7e0002e0  vmmov mr0, r4
0005d8  1f120000  addli r4, zero, 1
0005dc  eac01830  vor.hf.mh vr1{mr0}, r17, vr1
0005e0  7e0002e0  vmmov mr0, r4
0005e4  1f220000  addli r4, zero, 2
0005e8  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
0005ec  7e0002e0  vmmov mr0, r4
0005f0  1f021000  addli r4, zero, 8
0005f4  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005f8  7e0002e0  vmmov mr0, r4
0005fc  1f024000  addli r4, zero, 32
000600  6ac00636  vor.hf.mh vr0{mr3}, r13, vr0
000604  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000608  6ac00634  vor.hf.mh vr0{mr2}, r13, vr0
00060c  7e0102e0  vmmov mr2, r4
000610  1f028000  addli r4, zero, 64
000614  7e0002e0  vmmov mr0, r4
000618  1f020001  addli r4, zero, 128
00061c  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
000620  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
000624  7e0002e0  vmmov mr0, r4
000628  1f020002  addli r4, zero, 256
00062c  7e0102e0  vmmov mr2, r4
000630  1f020004  addli r4, zero, 512
000634  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000638  7e0002e0  vmmov mr0, r4
00063c  1f020008  addli r4, zero, 1024
000640  6ac00634  vor.hf.mh vr0{mr2}, r13, vr0
000644  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000648  7e0002e0  vmmov mr0, r4
00064c  1f020010  addli r4, zero, 2048
000650  7e0102e0  vmmov mr2, r4
000654  1f020020  addli r4, zero, 4096
000658  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
00065c  7e0002e0  vmmov mr0, r4
000660  1f020040  addli r4, zero, 8192
000664  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
000668  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
00066c  7e0002e0  vmmov mr0, r4
000670  2b420000  lui r4, 4
000674  7e0102e0  vmmov mr2, r4
000678  2b820000  lui r4, 8
00067c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000680  7e0002e0  vmmov mr0, r4
000684  2b020100  lui r4, 16
000688  6ac00634  vor.hf.mh vr0{mr2}, r13, vr0
00068c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000690  7e0002e0  vmmov mr0, r4
000694  2b020200  lui r4, 32
000698  7e0102e0  vmmov mr2, r4
00069c  2b020400  lui r4, 64
0006a0  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
0006a4  7e0002e0  vmmov mr0, r4
0006a8  2b020800  lui r4, 128
0006ac  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
0006b0  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
0006b4  7e0002e0  vmmov mr0, r4
0006b8  2b021000  lui r4, 256
0006bc  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0006c0  7e0002e0  vmmov mr0, r4
0006c4  2b022000  lui r4, 512
0006c8  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
0006cc  7e0002e0  vmmov mr0, r4
0006d0  2b024000  lui r4, 1024
0006d4  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0006d8  7e0002e0  vmmov mr0, r4
0006dc  2b028000  lui r4, 2048
0006e0  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
0006e4  7e0002e0  vmmov mr0, r4
0006e8  2b020001  lui r4, 4096
0006ec  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0006f0  7e0002e0  vmmov mr0, r4
0006f4  2b020002  lui r4, 8192
0006f8  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
0006fc  7e0002e0  vmmov mr0, r4
000700  2b020004  lui r4, 16384
000704  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000708  7e0002e0  vmmov mr0, r4
00070c  2b020008  lui r4, 32768
000710  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
000714  7e0002e0  vmmov mr0, r4
000718  2b020010  lui r4, 65536
00071c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000720  7e0002e0  vmmov mr0, r4
000724  2b020020  lui r4, 131072
000728  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
00072c  7e0002e0  vmmov mr0, r4
000730  2b020040  lui r4, 262144
000734  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000738  7e0002e0  vmmov mr0, r4
00073c  2b020080  lui r4, 524288
000740  6ac00630  vor.hf.mh vr0{mr0}, r13, vr0
000744  7e0002e0  vmmov mr0, r4
000748  0b923a10  add.s r4, r21, r3
00074c  9f818100  addli r3, r3, 64
000750  9f024200  addli r5, r4, 32
000754  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000758  7e8004e0  vmmov mr0, r9
00075c  e2400210  vscatter.mh vr0{mr0}, vr1{r4}
000760  e2c00210  vscatter.mh vr0{mr0}, vr1{r5}
000764  00a00000  mfence { lm }
000768  bb93b1ff  bneq r3, r27, -796
00076c  6342dff5  loadli.w r4,  -1300(r30)
000770  9b31ba00  slli r3, r20, 11
000774  ab0200f0  lui r5, 983040
000778  9f140000  addli r9, zero, 1
00077c  8b914110  add.s r3, r3, r4
000780  b3910128  sext_int2long r[4:5], r3
000784  17b79102  sll.d r[15:16], r[4:5], r9
000788  97915900  or r3, r19, r5
00078c  6b520f00  load.d r[5:6], 0(r30)
000790  7338efda  store.d r[15:16], -592(r30)
000794  0b22e210  add.ul r[5:6], r[5:6], r[15:16]
000798  ff215201  l_gm2lm r3, r21, 0(r[5:6])
00079c  9f018ff7  addli r3, r30, -1088
0007a0  9f020ff7  addli r5, r30, -1152
0007a4  00a00000  mfence { lm }
0007a8  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
0007ac  c2110fc2  vload_mask16.mz vr3{mr1}, 1536(r30)
0007b0  e6c00580  vmerge_l.hf vr1, vr11, vr0
0007b4  66c105a0  vmerge_h.hf vr2, vr11, vr0
0007b8  66c23580  vmerge_l.hf vr4, vr11, vr3
0007bc  e6c235a0  vmerge_h.hf vr5, vr11, vr3
0007c0  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
0007c4  46142fa2  vstore_mask16.mz vr2{mr1}, 1344(r30)
0007c8  461c4f82  vstore_mask16.mz vr4{mr1}, 1216(r30)
0007cc  12101002  vadd.f.mz.rn vr0{mr1}, zero, vr1
0007d0  92102002  vadd.f.mz.rn vr1{mr1}, zero, vr2
0007d4  92114002  vadd.f.mz.rn vr3{mr1}, zero, vr4
0007d8  42118fc2  vload_mask16.mz vr2{mr1}, 1600(r30)
0007dc  46185f82  vstore_mask16.mz vr5{mr1}, 1152(r30)
0007e0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0007e4  92105002  vadd.f.mz.rn vr1{mr1}, zero, vr5
0007e8  66c22580  vmerge_l.hf vr4, vr11, vr2
0007ec  e6c225a0  vmerge_h.hf vr5, vr11, vr2
0007f0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0007f4  46144f82  vstore_mask16.mz vr4{mr1}, 1088(r30)
0007f8  12114002  vadd.f.mz.rn vr2{mr1}, zero, vr4
0007fc  c2110fc3  vload_mask16.mz vr3{mr1}, 1664(r30)
000800  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000804  92105002  vadd.f.mz.rn vr1{mr1}, zero, vr5
000808  46105f82  vstore_mask16.mz vr5{mr1}, 1024(r30)
00080c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000810  66c23580  vmerge_l.hf vr4, vr11, vr3
000814  e6c135a0  vmerge_h.hf vr3, vr11, vr3
000818  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00081c  12114002  vadd.f.mz.rn vr2{mr1}, zero, vr4
000820  46904102  vstore_mask16.mz vr4{mr1}, 0(r3)
000824  9f010ff7  addli r3, r30, -1152
000828  46903102  vstore_mask16.mz vr3{mr1}, 0(r3)
00082c  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000830  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
000834  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000838  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00083c  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
000840  e6c41580  vmerge_l.hf vr9, vr11, vr1
000844  e6c511a0  vmerge_h.hf vr11, vr3, vr1
000848  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
00084c  12119002  vadd.f.mz.rn vr2{mr1}, zero, vr9
000850  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000854  1211b002  vadd.f.mz.rn vr2{mr1}, zero, vr11
000858  66c31180  vmerge_l.hf vr6, vr3, vr1
00085c  e6c211a0  vmerge_h.hf vr5, vr3, vr1
000860  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
000864  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000868  12116002  vadd.f.mz.rn vr2{mr1}, zero, vr6
00086c  e6c31180  vmerge_l.hf vr7, vr3, vr1
000870  66c411a0  vmerge_h.hf vr8, vr3, vr1
000874  c2100fe3  vload_mask16.mz vr1{mr1}, 1920(r30)
000878  42158f83  vload_mask16.mz vr10{mr1}, 1216(r30)
00087c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000880  12115002  vadd.f.mz.rn vr2{mr1}, zero, vr5
000884  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000888  12117002  vadd.f.mz.rn vr2{mr1}, zero, vr7
00088c  66c21180  vmerge_l.hf vr4, vr3, vr1
000890  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000894  16112002  vadd.f.mz.rn vr2{mr1}, vr0, vr2
000898  12108002  vadd.f.mz.rn vr0{mr1}, zero, vr8
00089c  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
0008a0  12114002  vadd.f.mz.rn vr2{mr1}, zero, vr4
0008a4  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0008a8  12111002  vadd.f.mz.rn vr2{mr1}, zero, vr1
0008ac  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0008b0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008b4  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008b8  461c2f82  vstore_mask16.mz vr2{mr1}, 1216(r30)
0008bc  42150f83  vload_mask16.mz vr10{mr1}, 1152(r30)
0008c0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008c4  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008c8  46182f82  vstore_mask16.mz vr2{mr1}, 1152(r30)
0008cc  42158f82  vload_mask16.mz vr10{mr1}, 1088(r30)
0008d0  fa110040  vextracti.f r3, 0(vr0)
0008d4  7a121040  vextracti.f r4, 1(vr0)
0008d8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008dc  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008e0  46142f82  vstore_mask16.mz vr2{mr1}, 1088(r30)
0008e4  42150f82  vload_mask16.mz vr10{mr1}, 1024(r30)
0008e8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008ec  8be14110  add.f.rn r3, r3, r4
0008f0  7a122040  vextracti.f r4, 2(vr0)
0008f4  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008f8  46102f82  vstore_mask16.mz vr2{mr1}, 1024(r30)
0008fc  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000900  8b613210  add.f.rn r3, r4, r3
000904  7a123040  vextracti.f r4, 3(vr0)
000908  8b613210  add.f.rn r3, r4, r3
00090c  7a124040  vextracti.f r4, 4(vr0)
000910  8b613210  add.f.rn r3, r4, r3
000914  7a125040  vextracti.f r4, 5(vr0)
000918  8b613210  add.f.rn r3, r4, r3
00091c  7a126040  vextracti.f r4, 6(vr0)
000920  8b613210  add.f.rn r3, r4, r3
000924  7a127040  vextracti.f r4, 7(vr0)
000928  8b613210  add.f.rn r3, r4, r3
00092c  7a128040  vextracti.f r4, 8(vr0)
000930  8b613210  add.f.rn r3, r4, r3
000934  7a129040  vextracti.f r4, 9(vr0)
000938  8b613210  add.f.rn r3, r4, r3
00093c  7a12a040  vextracti.f r4, 10(vr0)
000940  8b613210  add.f.rn r3, r4, r3
000944  7a12b040  vextracti.f r4, 11(vr0)
000948  8b613210  add.f.rn r3, r4, r3
00094c  7a12c040  vextracti.f r4, 12(vr0)
000950  8b613210  add.f.rn r3, r4, r3
000954  7a12d040  vextracti.f r4, 13(vr0)
000958  8b613210  add.f.rn r3, r4, r3
00095c  1f028ff7  addli r4, r30, -1088
000960  42150202  vload_mask16.mz vr10{mr1}, 0(r4)
000964  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
000968  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
00096c  7a12e040  vextracti.f r4, 14(vr0)
000970  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000974  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
000978  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
00097c  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
000980  9f028ff6  addli r5, r30, -1216
000984  12353002  vadd.s.mz vr10{mr1}, zero, vr3
000988  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00098c  2695b502  vmac.f.mz.rn vr10{mr1}, vr11, vr11
000990  92353002  vadd.s.mz vr11{mr1}, zero, vr3
000994  8b613210  add.f.rn r3, r4, r3
000998  7a12f040  vextracti.f r4, 15(vr0)
00099c  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
0009a0  46902202  vstore_mask16.mz vr2{mr1}, 0(r5)
0009a4  92343002  vadd.s.mz vr9{mr1}, zero, vr3
0009a8  12303002  vadd.s.mz vr0{mr1}, zero, vr3
0009ac  a6156302  vmac.f.mz.rn vr11{mr1}, vr6, vr6
0009b0  12333002  vadd.s.mz vr6{mr1}, zero, vr3
0009b4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0009b8  a6945202  vmac.f.mz.rn vr9{mr1}, vr5, vr5
0009bc  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0009c0  26907302  vmac.f.mz.rn vr0{mr1}, vr7, vr7
0009c4  92333002  vadd.s.mz vr7{mr1}, zero, vr3
0009c8  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
0009cc  12343002  vadd.s.mz vr8{mr1}, zero, vr3
0009d0  a6921002  vmac.f.mz.rn vr5{mr1}, vr1, vr1
0009d4  92303002  vadd.s.mz vr1{mr1}, zero, vr3
0009d8  a6134202  vmac.f.mz.rn vr7{mr1}, vr4, vr4
0009dc  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
0009e0  c2118fa2  vload_mask16.mz vr3{mr1}, 1344(r30)
0009e4  26933102  vmac.f.mz.rn vr6{mr1}, vr3, vr3
0009e8  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
0009ec  8b613210  add.f.rn r3, r4, r3
0009f0  6342eff5  loadli.w r4,  -1292(r30)
0009f4  73603200  stores.w r3, 0(r4)
0009f8  00a00300  mfence { lm, sm, gm }
0009fc  80210e04  csr_set csr3, r28
000a00  00d00100  sync_group
000a04  3b240b00  bneq r22, zero, 264
000a08  e3447ff6  loadli.w r9,  -1220(r30)
000a0c  efc10400  loads.w r3, 0(r9)
000a10  6fc24400  loads.w r4, 4(r9)
000a14  efc28400  loads.w r5, 8(r9)
000a18  8be14110  add.f.rn r3, r3, r4
000a1c  6fc2c400  loads.w r4, 12(r9)
000a20  8be15110  add.f.rn r3, r3, r5
000a24  efc20401  loads.w r5, 16(r9)
000a28  8be14110  add.f.rn r3, r3, r4
000a2c  6fc24401  loads.w r4, 20(r9)
000a30  8be15110  add.f.rn r3, r3, r5
000a34  efc28401  loads.w r5, 24(r9)
000a38  8be14110  add.f.rn r3, r3, r4
000a3c  6fc2c401  loads.w r4, 28(r9)
000a40  8be15110  add.f.rn r3, r3, r5
000a44  efc20402  loads.w r5, 32(r9)
000a48  8be14110  add.f.rn r3, r3, r4
000a4c  6fc24402  loads.w r4, 36(r9)
000a50  8be15110  add.f.rn r3, r3, r5
000a54  efc28402  loads.w r5, 40(r9)
000a58  8be14110  add.f.rn r3, r3, r4
000a5c  6fc2c402  loads.w r4, 44(r9)
000a60  8be15110  add.f.rn r3, r3, r5
000a64  efc20403  loads.w r5, 48(r9)
000a68  8be14110  add.f.rn r3, r3, r4
000a6c  6fc24403  loads.w r4, 52(r9)
000a70  8be15110  add.f.rn r3, r3, r5
000a74  efc28403  loads.w r5, 56(r9)
000a78  8be14110  add.f.rn r3, r3, r4
000a7c  6fc2c403  loads.w r4, 60(r9)
000a80  8be15110  add.f.rn r3, r3, r5
000a84  efc20404  loads.w r5, 64(r9)
000a88  8be14110  add.f.rn r3, r3, r4
000a8c  6fc24404  loads.w r4, 68(r9)
000a90  8be15110  add.f.rn r3, r3, r5
000a94  efc28404  loads.w r5, 72(r9)
000a98  8be14110  add.f.rn r3, r3, r4
000a9c  6fc2c404  loads.w r4, 76(r9)
000aa0  8be15110  add.f.rn r3, r3, r5
000aa4  efc20405  loads.w r5, 80(r9)
000aa8  8be14110  add.f.rn r3, r3, r4
000aac  6fc24405  loads.w r4, 84(r9)
000ab0  8be15110  add.f.rn r3, r3, r5
000ab4  efc28405  loads.w r5, 88(r9)
000ab8  8be14110  add.f.rn r3, r3, r4
000abc  6fc2c405  loads.w r4, 92(r9)
000ac0  8be15110  add.f.rn r3, r3, r5
000ac4  efc20406  loads.w r5, 96(r9)
000ac8  8be14110  add.f.rn r3, r3, r4
000acc  6fc24406  loads.w r4, 100(r9)
000ad0  8be15110  add.f.rn r3, r3, r5
000ad4  efc28406  loads.w r5, 104(r9)
000ad8  8be14110  add.f.rn r3, r3, r4
000adc  6fc2c406  loads.w r4, 108(r9)
000ae0  8be15110  add.f.rn r3, r3, r5
000ae4  efc20407  loads.w r5, 112(r9)
000ae8  8be14110  add.f.rn r3, r3, r4
000aec  6fc24407  loads.w r4, 116(r9)
000af0  8be15110  add.f.rn r3, r3, r5
000af4  efc28407  loads.w r5, 120(r9)
000af8  8be14110  add.f.rn r3, r3, r4
000afc  6fc2c407  loads.w r4, 124(r9)
000b00  8be15110  add.f.rn r3, r3, r5
000b04  8be14110  add.f.rn r3, r3, r4
000b08  73e03400  stores.w r3, 0(r9)
000b0c  00a00300  mfence { lm, sm, gm }
000b10  80210e04  csr_set csr3, r28
000b14  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
000b18  9f018ff7  addli r3, r30, -1088
000b1c  c2118f83  vload_mask16.mz vr3{mr1}, 1216(r30)
000b20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b24  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
000b28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b2c  c2118f82  vload_mask16.mz vr3{mr1}, 1088(r30)
000b30  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b34  c2110f82  vload_mask16.mz vr3{mr1}, 1024(r30)
000b38  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b3c  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000b40  9f010ff7  addli r3, r30, -1152
000b44  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b48  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000b4c  9f018ff6  addli r3, r30, -1216
000b50  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b54  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000b58  00d00100  sync_group
000b5c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b60  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
000b64  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000b68  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
000b6c  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000b70  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b74  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000b78  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000b7c  fa110040  vextracti.f r3, 0(vr0)
000b80  7a121040  vextracti.f r4, 1(vr0)
000b84  fa12f040  vextracti.f r5, 15(vr0)
000b88  8be14110  add.f.rn r3, r3, r4
000b8c  7a122040  vextracti.f r4, 2(vr0)
000b90  8b613210  add.f.rn r3, r4, r3
000b94  7a123040  vextracti.f r4, 3(vr0)
000b98  8b613210  add.f.rn r3, r4, r3
000b9c  7a124040  vextracti.f r4, 4(vr0)
000ba0  8b613210  add.f.rn r3, r4, r3
000ba4  7a125040  vextracti.f r4, 5(vr0)
000ba8  8b613210  add.f.rn r3, r4, r3
000bac  7a126040  vextracti.f r4, 6(vr0)
000bb0  8b613210  add.f.rn r3, r4, r3
000bb4  7a127040  vextracti.f r4, 7(vr0)
000bb8  8b613210  add.f.rn r3, r4, r3
000bbc  7a128040  vextracti.f r4, 8(vr0)
000bc0  8b613210  add.f.rn r3, r4, r3
000bc4  7a129040  vextracti.f r4, 9(vr0)
000bc8  8b613210  add.f.rn r3, r4, r3
000bcc  7a12a040  vextracti.f r4, 10(vr0)
000bd0  8b613210  add.f.rn r3, r4, r3
000bd4  7a12b040  vextracti.f r4, 11(vr0)
000bd8  8b613210  add.f.rn r3, r4, r3
000bdc  7a12c040  vextracti.f r4, 12(vr0)
000be0  8b613210  add.f.rn r3, r4, r3
000be4  7a12d040  vextracti.f r4, 13(vr0)
000be8  8b613210  add.f.rn r3, r4, r3
000bec  7a12e040  vextracti.f r4, 14(vr0)
000bf0  0b623210  add.f.rn r4, r4, r3
000bf4  e3417ff6  loadli.w r3,  -1220(r30)
000bf8  efc10100  loads.w r3, 0(r3)
000bfc  0be24210  add.f.rn r4, r5, r4
000c00  e302eff5  loadli.w r5,  -1296(r30)
000c04  73e04200  stores.w r4, 0(r5)
000c08  00a00300  mfence { lm, sm, gm }
000c0c  80210e04  csr_set csr3, r28
000c10  00d00100  sync_group
000c14  3b240b00  bneq r22, zero, 264
000c18  63077ff6  loadli.w r14,  -1224(r30)
000c1c  6f420700  loads.w r4, 0(r14)
000c20  ef424700  loads.w r5, 4(r14)
000c24  ef448700  loads.w r9, 8(r14)
000c28  0b625210  add.f.rn r4, r4, r5
000c2c  ef42c700  loads.w r5, 12(r14)
000c30  0b629210  add.f.rn r4, r4, r9
000c34  ef440701  loads.w r9, 16(r14)
000c38  0b625210  add.f.rn r4, r4, r5
000c3c  ef424701  loads.w r5, 20(r14)
000c40  0b629210  add.f.rn r4, r4, r9
000c44  ef448701  loads.w r9, 24(r14)
000c48  0b625210  add.f.rn r4, r4, r5
000c4c  ef42c701  loads.w r5, 28(r14)
000c50  0b629210  add.f.rn r4, r4, r9
000c54  ef440702  loads.w r9, 32(r14)
000c58  0b625210  add.f.rn r4, r4, r5
000c5c  ef424702  loads.w r5, 36(r14)
000c60  0b629210  add.f.rn r4, r4, r9
000c64  ef448702  loads.w r9, 40(r14)
000c68  0b625210  add.f.rn r4, r4, r5
000c6c  ef42c702  loads.w r5, 44(r14)
000c70  0b629210  add.f.rn r4, r4, r9
000c74  ef440703  loads.w r9, 48(r14)
000c78  0b625210  add.f.rn r4, r4, r5
000c7c  ef424703  loads.w r5, 52(r14)
000c80  0b629210  add.f.rn r4, r4, r9
000c84  ef448703  loads.w r9, 56(r14)
000c88  0b625210  add.f.rn r4, r4, r5
000c8c  ef42c703  loads.w r5, 60(r14)
000c90  0b629210  add.f.rn r4, r4, r9
000c94  ef440704  loads.w r9, 64(r14)
000c98  0b625210  add.f.rn r4, r4, r5
000c9c  ef424704  loads.w r5, 68(r14)
000ca0  0b629210  add.f.rn r4, r4, r9
000ca4  ef448704  loads.w r9, 72(r14)
000ca8  0b625210  add.f.rn r4, r4, r5
000cac  ef42c704  loads.w r5, 76(r14)
000cb0  0b629210  add.f.rn r4, r4, r9
000cb4  ef440705  loads.w r9, 80(r14)
000cb8  0b625210  add.f.rn r4, r4, r5
000cbc  ef424705  loads.w r5, 84(r14)
000cc0  0b629210  add.f.rn r4, r4, r9
000cc4  ef448705  loads.w r9, 88(r14)
000cc8  0b625210  add.f.rn r4, r4, r5
000ccc  ef42c705  loads.w r5, 92(r14)
000cd0  0b629210  add.f.rn r4, r4, r9
000cd4  ef440706  loads.w r9, 96(r14)
000cd8  0b625210  add.f.rn r4, r4, r5
000cdc  ef424706  loads.w r5, 100(r14)
000ce0  0b629210  add.f.rn r4, r4, r9
000ce4  ef448706  loads.w r9, 104(r14)
000ce8  0b625210  add.f.rn r4, r4, r5
000cec  ef42c706  loads.w r5, 108(r14)
000cf0  0b629210  add.f.rn r4, r4, r9
000cf4  ef440707  loads.w r9, 112(r14)
000cf8  0b625210  add.f.rn r4, r4, r5
000cfc  ef424707  loads.w r5, 116(r14)
000d00  0b629210  add.f.rn r4, r4, r9
000d04  ef448707  loads.w r9, 120(r14)
000d08  0b625210  add.f.rn r4, r4, r5
000d0c  ef42c707  loads.w r5, 124(r14)
000d10  0b629210  add.f.rn r4, r4, r9
000d14  0b625210  add.f.rn r4, r4, r5
000d18  73604700  stores.w r4, 0(r14)
000d1c  00a00300  mfence { lm, sm, gm }
000d20  80210e04  csr_set csr3, r28
000d24  00d00100  sync_group
000d28  63027ff6  loadli.w r4,  -1224(r30)
000d2c  ab02003a  lui r5, 237568
000d30  92328002  vadd.s.mz vr5{mr1}, zero, vr8
000d34  8be15120  mul.f.rn r3, r3, r5
000d38  6f420200  loads.w r4, 0(r4)
000d3c  0b625220  mul.f.rn r4, r4, r5
000d40  8be23120  mul.f.rn r5, r3, r3
000d44  0b625218  sub.f.rn r4, r4, r5
000d48  e3022f00  loadli.w r5,  16(r30)
000d4c  0be24210  add.f.rn r4, r5, r4
000d50  ab02803f  lui r5, 260096
000d54  0f020208  sqrt.f.rn r4, r4
000d58  0f824218  div.f.rn r4, r5, r4
000d5c  e302cff5  loadli.w r5,  -1312(r30)
000d60  37830200  beq r5, zero, 192
000d64  e302bff5  loadli.w r5,  -1320(r30)
000d68  ab04807f  lui r9, 522240
000d6c  97825100  and r5, r3, r5
000d70  93825404  setlt.u r5, r9, r5
000d74  3be00200  bneq r5, zero, 24
000d78  9bc20101  srli r5, r3, 16
000d7c  9b821200  andi r5, r5, 1
000d80  8b925110  add.s r5, r3, r5
000d84  8b92d210  add.s r5, r5, r13
000d88  db010000  j 12
000d8c  ab024000  lui r5, 1024
000d90  97925100  or r5, r3, r5
000d94  33170a28  sext_int2long r[15:16], r20
000d98  9f140000  addli r9, zero, 1
000d9c  2b0a807f  lui r20, 522240
000da0  6b588f01  load.d r[17:18], 24(r30)
000da4  9bc20201  srli r5, r5, 16
000da8  2b0900f0  lui r18, 983040
000dac  17379702  sll.d r[15:16], r[15:16], r9
000db0  e304bff5  loadli.w r9,  -1320(r30)
000db4  73105ffc  store.h r5, -64(r30)
000db8  97122601  or r5, r12, r18
000dbc  1f098fff  addli r18, r30, -64
000dc0  00a00000  mfence { lm }
000dc4  0b28e810  add.ul r[17:18], r[17:18], r[15:16]
000dc8  97049200  and r9, r4, r9
000dcc  ff322801  s_lm2gm r5, r18, 0(r[17:18])
000dd0  93049a04  setlt.u r9, r20, r9
000dd4  00a00000  mfence { lm }
000dd8  3be00400  bneq r9, zero, 24
000ddc  9b420201  srli r5, r4, 16
000de0  9b821200  andi r5, r5, 1
000de4  8b125210  add.s r5, r4, r5
000de8  8b92d210  add.s r5, r5, r13
000dec  db010000  j 12
000df0  ab024000  lui r5, 1024
000df4  97125200  or r5, r4, r5
000df8  6b580f02  load.d r[17:18], 32(r30)
000dfc  9bc20201  srli r5, r5, 16
000e00  ab0400f0  lui r9, 983040
000e04  73105ffc  store.h r5, -64(r30)
000e08  97129600  or r5, r12, r9
000e0c  9f048fff  addli r9, r30, -64
000e10  0b27e810  add.ul r[15:16], r[17:18], r[15:16]
000e14  00a00000  mfence { lm }
000e18  ff329700  s_lm2gm r5, r9, 0(r[15:16])
000e1c  00a00000  mfence { lm }
000e20  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000e24  ab020080  lui r5, 524288
000e28  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
000e2c  c2148fc2  vload_mask16.mz vr9{mr1}, 1600(r30)
000e30  ea205122  vor.u.mz vr1{mr1}, r2, vr5
000e34  42130fc3  vload_mask16.mz vr6{mr1}, 1664(r30)
000e38  ab044000  lui r9, 1024
000e3c  17aa5100  xor r20, r3, r5
000e40  ab01807f  lui r3, 522240
000e44  66c10280  vmerge_l.hf vr2, vr5, vr0
000e48  12112a02  vadd.f.mz.rn vr2{mr1}, r20, vr2
000e4c  0a112202  vmul.f.mz.rn vr2{mr1}, r4, vr2
000e50  92112002  vadd.f.mz.rn vr3{mr1}, zero, vr2
000e54  42118fc3  vload_mask16.mz vr2{mr1}, 1728(r30)
000e58  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
000e5c  46182f82  vstore_mask16.mz vr2{mr1}, 1152(r30)
000e60  6aa15122  vor.u.mz vr2{mr1}, r3, vr5
000e64  9f110000  addli r3, zero, 1
000e68  e69201c0  vabs.f vr5, vr3
000e6c  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
000e70  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
000e74  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
000e78  fe0101a0  vmmov r3, mr2
000e7c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000e80  9bc2f100  srli r5, r3, 15
000e84  461c7f82  vstore_mask16.mz vr7{mr1}, 1216(r30)
000e88  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000e8c  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
000e90  9b821200  andi r5, r5, 1
000e94  92b54602  vadd.s.mz vr11{mr1}, r13, vr4
000e98  6ab23422  vor.s.mz vr4{mr1}, r9, vr3
000e9c  46145fa2  vstore_mask16.mz vr5{mr1}, 1344(r30)
000ea0  3bb00200  bneq r5, zero, 12
000ea4  7ab8f540  vextracti.s r16, 15(vr11)
000ea8  5b010000  j 8
000eac  7a38f240  vextracti.s r16, 15(vr4)
000eb0  9bc2e100  srli r5, r3, 14
000eb4  9f140000  addli r9, zero, 1
000eb8  9b821200  andi r5, r5, 1
000ebc  7e8104e0  vmmov mr2, r9
000ec0  3bb00200  bneq r5, zero, 12
000ec4  fab8e540  vextracti.s r17, 14(vr11)
000ec8  5b010000  j 8
000ecc  fa38e240  vextracti.s r17, 14(vr4)
000ed0  9bc2d100  srli r5, r3, 13
000ed4  9b821200  andi r5, r5, 1
000ed8  3bb00200  bneq r5, zero, 12
000edc  fab2d540  vextracti.s r5, 13(vr11)
000ee0  5b010000  j 8
000ee4  fa32d240  vextracti.s r5, 13(vr4)
000ee8  9bc4c100  srli r9, r3, 12
000eec  9b841400  andi r9, r9, 1
000ef0  3bb00400  bneq r9, zero, 12
000ef4  7abbc540  vextracti.s r22, 12(vr11)
000ef8  5b010000  j 8
000efc  7a3bc240  vextracti.s r22, 12(vr4)
000f00  9bc4b100  srli r9, r3, 11
000f04  9b841400  andi r9, r9, 1
000f08  3bb00400  bneq r9, zero, 12
000f0c  7ab9b540  vextracti.s r18, 11(vr11)
000f10  5b010000  j 8
000f14  7a39b240  vextracti.s r18, 11(vr4)
000f18  9bc4a100  srli r9, r3, 10
000f1c  9b841400  andi r9, r9, 1
000f20  3bb00400  bneq r9, zero, 12
000f24  fab9a540  vextracti.s r19, 10(vr11)
000f28  5b010000  j 8
000f2c  fa39a240  vextracti.s r19, 10(vr4)
000f30  9bc49100  srli r9, r3, 9
000f34  9b841400  andi r9, r9, 1
000f38  3bb00400  bneq r9, zero, 12
000f3c  fab79540  vextracti.s r15, 9(vr11)
000f40  5b010000  j 8
000f44  fa379240  vextracti.s r15, 9(vr4)
000f48  9bc48100  srli r9, r3, 8
000f4c  9b841400  andi r9, r9, 1
000f50  3bb00400  bneq r9, zero, 12
000f54  fab48540  vextracti.s r9, 8(vr11)
000f58  5b010000  j 8
000f5c  fa348240  vextracti.s r9, 8(vr4)
000f60  1bc77100  srli r14, r3, 7
000f64  1b071700  andi r14, r14, 1
000f68  3b300700  bneq r14, zero, 12
000f6c  fabb7540  vextracti.s r23, 7(vr11)
000f70  5b010000  j 8
000f74  fa3b7240  vextracti.s r23, 7(vr4)
000f78  1bc76100  srli r14, r3, 6
000f7c  1b071700  andi r14, r14, 1
000f80  3b300700  bneq r14, zero, 12
000f84  7ab76540  vextracti.s r14, 6(vr11)
000f88  5b010000  j 8
000f8c  7a376240  vextracti.s r14, 6(vr4)
000f90  1bcc5100  srli r24, r3, 5
000f94  1b0c1c00  andi r24, r24, 1
000f98  3b300c00  bneq r24, zero, 12
000f9c  7abc5540  vextracti.s r24, 5(vr11)
000fa0  5b010000  j 8
000fa4  7a3c5240  vextracti.s r24, 5(vr4)
000fa8  9bcc4100  srli r25, r3, 4
000fac  9b8c1c00  andi r25, r25, 1
000fb0  3bb00c00  bneq r25, zero, 12
000fb4  fabc4540  vextracti.s r25, 4(vr11)
000fb8  5b010000  j 8
000fbc  fa3c4240  vextracti.s r25, 4(vr4)
000fc0  1bcd3100  srli r26, r3, 3
000fc4  1b0d1d00  andi r26, r26, 1
000fc8  3b300d00  bneq r26, zero, 12
000fcc  7abd3540  vextracti.s r26, 3(vr11)
000fd0  5b010000  j 8
000fd4  7a3d3240  vextracti.s r26, 3(vr4)
000fd8  9bcd2100  srli r27, r3, 2
000fdc  9b8d1d00  andi r27, r27, 1
000fe0  3bb00d00  bneq r27, zero, 12
000fe4  fabd2540  vextracti.s r27, 2(vr11)
000fe8  5b010000  j 8
000fec  fa3d2240  vextracti.s r27, 2(vr4)
000ff0  1bce1100  srli r28, r3, 1
000ff4  1b0e1e00  andi r28, r28, 1
000ff8  3b300e00  bneq r28, zero, 12
000ffc  7abe1540  vextracti.s r28, 1(vr11)
001000  5b010000  j 8
001004  7a3e1240  vextracti.s r28, 1(vr4)
001008  664004a0  vmerge_h.hf vr0, vr8, vr0
00100c  9b811100  andi r3, r3, 1
001010  46107fa2  vstore_mask16.mz vr7{mr1}, 1280(r30)
001014  12100a02  vadd.f.mz.rn vr0{mr1}, r20, vr0
001018  8a120202  vmul.f.mz.rn vr5{mr1}, r4, vr0
00101c  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
001020  3bb00100  bneq r3, zero, 12
001024  fab10540  vextracti.s r3, 0(vr11)
001028  5b010000  j 8
00102c  fa310240  vextracti.s r3, 0(vr4)
001030  92318002  vadd.s.mz vr3{mr1}, zero, vr8
001034  6eb250c2  vsrl.s.mz vr4{mr1}, vr1, vr5
001038  12303002  vadd.s.mz vr0{mr1}, zero, vr3
00103c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001040  9f210000  addli r3, zero, 2
001044  fe8101e0  vmmov mr3, r3
001048  9f410000  addli r3, zero, 4
00104c  6a200e36  vor.u.mh vr0{mr3}, r28, vr0
001050  7e8001e0  vmmov mr0, r3
001054  9f011000  addli r3, zero, 8
001058  7e8101e0  vmmov mr2, r3
00105c  9f012000  addli r3, zero, 16
001060  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001064  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001068  7e8101e0  vmmov mr2, r3
00106c  9f014000  addli r3, zero, 32
001070  fe8101e0  vmmov mr3, r3
001074  9f018000  addli r3, zero, 64
001078  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
00107c  7e8101e0  vmmov mr2, r3
001080  9f010001  addli r3, zero, 128
001084  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
001088  6a200734  vor.u.mh vr0{mr2}, r14, vr0
00108c  7e8101e0  vmmov mr2, r3
001090  9f010002  addli r3, zero, 256
001094  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
001098  7e8101e0  vmmov mr2, r3
00109c  9f010004  addli r3, zero, 512
0010a0  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
0010a4  7e8101e0  vmmov mr2, r3
0010a8  9f010008  addli r3, zero, 1024
0010ac  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
0010b0  7e8101e0  vmmov mr2, r3
0010b4  9f010010  addli r3, zero, 2048
0010b8  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0010bc  7e8101e0  vmmov mr2, r3
0010c0  9f010020  addli r3, zero, 4096
0010c4  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0010c8  7e8101e0  vmmov mr2, r3
0010cc  9f010040  addli r3, zero, 8192
0010d0  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
0010d4  7e8101e0  vmmov mr2, r3
0010d8  ab410000  lui r3, 4
0010dc  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0010e0  7e8101e0  vmmov mr2, r3
0010e4  ab810000  lui r3, 8
0010e8  9f020004  addli r5, zero, 512
0010ec  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0010f0  7e8101e0  vmmov mr2, r3
0010f4  9f110000  addli r3, zero, 1
0010f8  6a200834  vor.u.mh vr0{mr2}, r16, vr0
0010fc  7e8101e0  vmmov mr2, r3
001100  9f210000  addli r3, zero, 2
001104  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001108  7e8101e0  vmmov mr2, r3
00110c  9f011000  addli r3, zero, 8
001110  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001114  7e8101e0  vmmov mr2, r3
001118  9f012000  addli r3, zero, 16
00111c  ea413030  vor.hf.mh vr3{mr0}, zero, vr3
001120  ea413634  vor.hf.mh vr3{mr2}, r12, vr3
001124  7e8101e0  vmmov mr2, r3
001128  9f018000  addli r3, zero, 64
00112c  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001130  eac13536  vor.hf.mh vr3{mr3}, r11, vr3
001134  fe8101e0  vmmov mr3, r3
001138  9f010001  addli r3, zero, 128
00113c  7e8101e0  vmmov mr2, r3
001140  9f010002  addli r3, zero, 256
001144  ea413036  vor.hf.mh vr3{mr3}, zero, vr3
001148  ea413534  vor.hf.mh vr3{mr2}, r10, vr3
00114c  7e8101e0  vmmov mr2, r3
001150  9f011000  addli r3, zero, 8
001154  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001158  7e8102e0  vmmov mr2, r5
00115c  ab022000  lui r5, 512
001160  eac13134  vor.hf.mh vr3{mr2}, r3, vr3
001164  9f010008  addli r3, zero, 1024
001168  7e8101e0  vmmov mr2, r3
00116c  9f010010  addli r3, zero, 2048
001170  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001174  7e8101e0  vmmov mr2, r3
001178  9f010020  addli r3, zero, 4096
00117c  ea413334  vor.hf.mh vr3{mr2}, r6, vr3
001180  7e8101e0  vmmov mr2, r3
001184  9f010040  addli r3, zero, 8192
001188  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
00118c  7e8101e0  vmmov mr2, r3
001190  ab410000  lui r3, 4
001194  eac13334  vor.hf.mh vr3{mr2}, r7, vr3
001198  7e8101e0  vmmov mr2, r3
00119c  ab810000  lui r3, 8
0011a0  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
0011a4  7e8101e0  vmmov mr2, r3
0011a8  ab010100  lui r3, 16
0011ac  ea413434  vor.hf.mh vr3{mr2}, r8, vr3
0011b0  7e8101e0  vmmov mr2, r3
0011b4  ab010200  lui r3, 32
0011b8  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
0011bc  7e8101e0  vmmov mr2, r3
0011c0  ab010400  lui r3, 64
0011c4  ea413134  vor.hf.mh vr3{mr2}, r2, vr3
0011c8  7e8101e0  vmmov mr2, r3
0011cc  ab010800  lui r3, 128
0011d0  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
0011d4  7e8101e0  vmmov mr2, r3
0011d8  ab011000  lui r3, 256
0011dc  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
0011e0  7e8101e0  vmmov mr2, r3
0011e4  9f412000  addli r3, zero, 20
0011e8  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
0011ec  7e8102e0  vmmov mr2, r5
0011f0  ab028000  lui r5, 2048
0011f4  eac13134  vor.hf.mh vr3{mr2}, r3, vr3
0011f8  ab014000  lui r3, 1024
0011fc  7e8101e0  vmmov mr2, r3
001200  9f612000  addli r3, zero, 22
001204  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001208  7e8102e0  vmmov mr2, r5
00120c  ab020002  lui r5, 8192
001210  eac13134  vor.hf.mh vr3{mr2}, r3, vr3
001214  ab010001  lui r3, 4096
001218  7e8101e0  vmmov mr2, r3
00121c  9f013000  addli r3, zero, 24
001220  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001224  7e8102e0  vmmov mr2, r5
001228  ab020008  lui r5, 32768
00122c  eac13134  vor.hf.mh vr3{mr2}, r3, vr3
001230  ab010004  lui r3, 16384
001234  7e8101e0  vmmov mr2, r3
001238  9f213000  addli r3, zero, 26
00123c  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001240  7e8102e0  vmmov mr2, r5
001244  ab020020  lui r5, 131072
001248  eac13134  vor.hf.mh vr3{mr2}, r3, vr3
00124c  ab010010  lui r3, 65536
001250  7e8101e0  vmmov mr2, r3
001254  9f110000  addli r3, zero, 1
001258  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
00125c  eab34102  vand.s.mz vr7{mr1}, r3, vr4
001260  9f413000  addli r3, zero, 28
001264  7e8102e0  vmmov mr2, r5
001268  669202c0  vabs.f vr4, vr5
00126c  ab020080  lui r5, 524288
001270  eac13134  vor.hf.mh vr3{mr2}, r3, vr3
001274  ab010040  lui r3, 262144
001278  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
00127c  7e8101e0  vmmov mr2, r3
001280  9f613000  addli r3, zero, 30
001284  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001288  76214142  vlt.u.mz mr2{mr1}, vr2, vr4
00128c  12b27602  vadd.s.mz vr4{mr1}, r13, vr7
001290  7e0b01a0  vmmov r22, mr2
001294  7e8102e0  vmmov mr2, r5
001298  ab024000  lui r5, 1024
00129c  eab55222  vor.s.mz vr11{mr1}, r5, vr5
0012a0  aba2aaaa  lui r5, 699050
0012a4  eac13134  vor.hf.mh vr3{mr2}, r3, vr3
0012a8  9b41fb00  srli r3, r22, 15
0012ac  9fa25215  addli r5, r5, 2730
0012b0  9b811100  andi r3, r3, 1
0012b4  7e8102e0  vmmov mr2, r5
0012b8  92333002  vadd.s.mz vr7{mr1}, zero, vr3
0012bc  e2c10a14  vscatter.mh vr0{mr2}, vr3{r21}
0012c0  3bb00100  bneq r3, zero, 12
0012c4  7a38f240  vextracti.s r16, 15(vr4)
0012c8  5b010000  j 8
0012cc  7ab8f540  vextracti.s r16, 15(vr11)
0012d0  9b41eb00  srli r3, r22, 14
0012d4  9f120000  addli r5, zero, 1
0012d8  9b811100  andi r3, r3, 1
0012dc  7e8102e0  vmmov mr2, r5
0012e0  3bb00100  bneq r3, zero, 12
0012e4  fa38e240  vextracti.s r17, 14(vr4)
0012e8  5b010000  j 8
0012ec  fab8e540  vextracti.s r17, 14(vr11)
0012f0  9b41db00  srli r3, r22, 13
0012f4  9b811100  andi r3, r3, 1
0012f8  3bb00100  bneq r3, zero, 12
0012fc  fa32d240  vextracti.s r5, 13(vr4)
001300  5b010000  j 8
001304  fab2d540  vextracti.s r5, 13(vr11)
001308  9b41cb00  srli r3, r22, 12
00130c  9b811100  andi r3, r3, 1
001310  3bb00100  bneq r3, zero, 12
001314  fa31c240  vextracti.s r3, 12(vr4)
001318  5b010000  j 8
00131c  fab1c540  vextracti.s r3, 12(vr11)
001320  9b44bb00  srli r9, r22, 11
001324  9b841400  andi r9, r9, 1
001328  3bb00400  bneq r9, zero, 12
00132c  7a39b240  vextracti.s r18, 11(vr4)
001330  5b010000  j 8
001334  7ab9b540  vextracti.s r18, 11(vr11)
001338  9b44ab00  srli r9, r22, 10
00133c  9b841400  andi r9, r9, 1
001340  3bb00400  bneq r9, zero, 12
001344  fa39a240  vextracti.s r19, 10(vr4)
001348  5b010000  j 8
00134c  fab9a540  vextracti.s r19, 10(vr11)
001350  9b449b00  srli r9, r22, 9
001354  9b841400  andi r9, r9, 1
001358  3bb00400  bneq r9, zero, 12
00135c  fa379240  vextracti.s r15, 9(vr4)
001360  5b010000  j 8
001364  fab79540  vextracti.s r15, 9(vr11)
001368  9b448b00  srli r9, r22, 8
00136c  9b841400  andi r9, r9, 1
001370  3bb00400  bneq r9, zero, 12
001374  fa348240  vextracti.s r9, 8(vr4)
001378  5b010000  j 8
00137c  fab48540  vextracti.s r9, 8(vr11)
001380  1b477b00  srli r14, r22, 7
001384  1b071700  andi r14, r14, 1
001388  3b300700  bneq r14, zero, 12
00138c  fa3b7240  vextracti.s r23, 7(vr4)
001390  5b010000  j 8
001394  fabb7540  vextracti.s r23, 7(vr11)
001398  1b476b00  srli r14, r22, 6
00139c  1b071700  andi r14, r14, 1
0013a0  3b300700  bneq r14, zero, 12
0013a4  7a376240  vextracti.s r14, 6(vr4)
0013a8  5b010000  j 8
0013ac  7ab76540  vextracti.s r14, 6(vr11)
0013b0  1b4c5b00  srli r24, r22, 5
0013b4  1b0c1c00  andi r24, r24, 1
0013b8  3b300c00  bneq r24, zero, 12
0013bc  7a3c5240  vextracti.s r24, 5(vr4)
0013c0  5b010000  j 8
0013c4  7abc5540  vextracti.s r24, 5(vr11)
0013c8  9b4c4b00  srli r25, r22, 4
0013cc  9b8c1c00  andi r25, r25, 1
0013d0  3bb00c00  bneq r25, zero, 12
0013d4  fa3c4240  vextracti.s r25, 4(vr4)
0013d8  5b010000  j 8
0013dc  fabc4540  vextracti.s r25, 4(vr11)
0013e0  1b4d3b00  srli r26, r22, 3
0013e4  1b0d1d00  andi r26, r26, 1
0013e8  3b300d00  bneq r26, zero, 12
0013ec  7a3d3240  vextracti.s r26, 3(vr4)
0013f0  5b010000  j 8
0013f4  7abd3540  vextracti.s r26, 3(vr11)
0013f8  9b4d2b00  srli r27, r22, 2
0013fc  9b8d1d00  andi r27, r27, 1
001400  3bb00d00  bneq r27, zero, 12
001404  fa3d2240  vextracti.s r27, 2(vr4)
001408  5b010000  j 8
00140c  fabd2540  vextracti.s r27, 2(vr11)
001410  1b4e1b00  srli r28, r22, 1
001414  1b0e1e00  andi r28, r28, 1
001418  3b600e00  bneq r28, zero, 24
00141c  7a3e1240  vextracti.s r28, 1(vr4)
001420  1b0b1b00  andi r22, r22, 1
001424  37600b00  beq r22, zero, 24
001428  7abb0540  vextracti.s r22, 0(vr11)
00142c  db020000  j 20
001430  7abe1540  vextracti.s r28, 1(vr11)
001434  1b0b1b00  andi r22, r22, 1
001438  bb4f0bfe  bneq r22, zero, -16
00143c  7a3b0240  vextracti.s r22, 0(vr4)
001440  92318002  vadd.s.mz vr3{mr1}, zero, vr8
001444  12303002  vadd.s.mz vr0{mr1}, zero, vr3
001448  e6c1a180  vmerge_l.hf vr3, vr3, vr10
00144c  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
001450  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001454  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
001458  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
00145c  1f2b0000  addli r22, zero, 2
001460  7e010be0  vmmov mr2, r22
001464  1f0b1000  addli r22, zero, 8
001468  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
00146c  e69201c0  vabs.f vr5, vr3
001470  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
001474  7e010be0  vmmov mr2, r22
001478  1f0b2000  addli r22, zero, 16
00147c  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001480  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001484  7e010be0  vmmov mr2, r22
001488  1f0b4000  addli r22, zero, 32
00148c  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
001490  7e010be0  vmmov mr2, r22
001494  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
001498  6a200736  vor.u.mh vr0{mr3}, r14, vr0
00149c  1f070001  addli r14, zero, 128
0014a0  7e0107e0  vmmov mr2, r14
0014a4  1f070002  addli r14, zero, 256
0014a8  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0014ac  7e0107e0  vmmov mr2, r14
0014b0  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
0014b4  9f040004  addli r9, zero, 512
0014b8  7e8104e0  vmmov mr2, r9
0014bc  9f040008  addli r9, zero, 1024
0014c0  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
0014c4  7e8104e0  vmmov mr2, r9
0014c8  9f040010  addli r9, zero, 2048
0014cc  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0014d0  7e8104e0  vmmov mr2, r9
0014d4  9f040020  addli r9, zero, 4096
0014d8  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0014dc  7e8104e0  vmmov mr2, r9
0014e0  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0014e4  9f110000  addli r3, zero, 1
0014e8  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
0014ec  9f010040  addli r3, zero, 8192
0014f0  7e8101e0  vmmov mr2, r3
0014f4  ab410000  lui r3, 4
0014f8  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0014fc  ab024000  lui r5, 1024
001500  7e8101e0  vmmov mr2, r3
001504  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001508  ab810000  lui r3, 8
00150c  eab53222  vor.s.mz vr11{mr1}, r5, vr3
001510  aba2aaaa  lui r5, 699050
001514  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001518  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
00151c  9fa25215  addli r5, r5, 2730
001520  7e0b01a0  vmmov r22, mr2
001524  7e8101e0  vmmov mr2, r3
001528  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
00152c  9b41fb00  srli r3, r22, 15
001530  6a200834  vor.u.mh vr0{mr2}, r16, vr0
001534  7e8102e0  vmmov mr2, r5
001538  e3023ff6  loadli.w r5,  -1256(r30)
00153c  9b811100  andi r3, r3, 1
001540  e2c30214  vscatter.mh vr0{mr2}, vr7{r5}
001544  3bb00100  bneq r3, zero, 12
001548  7a38f240  vextracti.s r16, 15(vr4)
00154c  5b010000  j 8
001550  7ab8f540  vextracti.s r16, 15(vr11)
001554  9b41eb00  srli r3, r22, 14
001558  9f120000  addli r5, zero, 1
00155c  9b811100  andi r3, r3, 1
001560  7e8102e0  vmmov mr2, r5
001564  3bb00100  bneq r3, zero, 12
001568  fa38e240  vextracti.s r17, 14(vr4)
00156c  5b010000  j 8
001570  fab8e540  vextracti.s r17, 14(vr11)
001574  9b41db00  srli r3, r22, 13
001578  9b811100  andi r3, r3, 1
00157c  3bb00100  bneq r3, zero, 12
001580  fa32d240  vextracti.s r5, 13(vr4)
001584  5b010000  j 8
001588  fab2d540  vextracti.s r5, 13(vr11)
00158c  9b41cb00  srli r3, r22, 12
001590  9b811100  andi r3, r3, 1
001594  3bb00100  bneq r3, zero, 12
001598  fa31c240  vextracti.s r3, 12(vr4)
00159c  5b010000  j 8
0015a0  fab1c540  vextracti.s r3, 12(vr11)
0015a4  9b44bb00  srli r9, r22, 11
0015a8  9b841400  andi r9, r9, 1
0015ac  3bb00400  bneq r9, zero, 12
0015b0  7a39b240  vextracti.s r18, 11(vr4)
0015b4  5b010000  j 8
0015b8  7ab9b540  vextracti.s r18, 11(vr11)
0015bc  9b44ab00  srli r9, r22, 10
0015c0  9b841400  andi r9, r9, 1
0015c4  3bb00400  bneq r9, zero, 12
0015c8  fa39a240  vextracti.s r19, 10(vr4)
0015cc  5b010000  j 8
0015d0  fab9a540  vextracti.s r19, 10(vr11)
0015d4  9b449b00  srli r9, r22, 9
0015d8  9b841400  andi r9, r9, 1
0015dc  3bb00400  bneq r9, zero, 12
0015e0  fa379240  vextracti.s r15, 9(vr4)
0015e4  5b010000  j 8
0015e8  fab79540  vextracti.s r15, 9(vr11)
0015ec  9b448b00  srli r9, r22, 8
0015f0  9b841400  andi r9, r9, 1
0015f4  3bb00400  bneq r9, zero, 12
0015f8  fa348240  vextracti.s r9, 8(vr4)
0015fc  5b010000  j 8
001600  fab48540  vextracti.s r9, 8(vr11)
001604  1b477b00  srli r14, r22, 7
001608  1b071700  andi r14, r14, 1
00160c  3b300700  bneq r14, zero, 12
001610  fa3b7240  vextracti.s r23, 7(vr4)
001614  5b010000  j 8
001618  fabb7540  vextracti.s r23, 7(vr11)
00161c  1b476b00  srli r14, r22, 6
001620  1b071700  andi r14, r14, 1
001624  3b300700  bneq r14, zero, 12
001628  7a376240  vextracti.s r14, 6(vr4)
00162c  5b010000  j 8
001630  7ab76540  vextracti.s r14, 6(vr11)
001634  1b4c5b00  srli r24, r22, 5
001638  1b0c1c00  andi r24, r24, 1
00163c  3b300c00  bneq r24, zero, 12
001640  7a3c5240  vextracti.s r24, 5(vr4)
001644  5b010000  j 8
001648  7abc5540  vextracti.s r24, 5(vr11)
00164c  9b4c4b00  srli r25, r22, 4
001650  9b8c1c00  andi r25, r25, 1
001654  3bb00c00  bneq r25, zero, 12
001658  fa3c4240  vextracti.s r25, 4(vr4)
00165c  5b010000  j 8
001660  fabc4540  vextracti.s r25, 4(vr11)
001664  1b4d3b00  srli r26, r22, 3
001668  1b0d1d00  andi r26, r26, 1
00166c  3b300d00  bneq r26, zero, 12
001670  7a3d3240  vextracti.s r26, 3(vr4)
001674  5b010000  j 8
001678  7abd3540  vextracti.s r26, 3(vr11)
00167c  9b4d2b00  srli r27, r22, 2
001680  9b8d1d00  andi r27, r27, 1
001684  3bb00d00  bneq r27, zero, 12
001688  fa3d2240  vextracti.s r27, 2(vr4)
00168c  5b010000  j 8
001690  fabd2540  vextracti.s r27, 2(vr11)
001694  1b4e1b00  srli r28, r22, 1
001698  1b0e1e00  andi r28, r28, 1
00169c  3b600e00  bneq r28, zero, 24
0016a0  7a3e1240  vextracti.s r28, 1(vr4)
0016a4  1b0b1b00  andi r22, r22, 1
0016a8  37600b00  beq r22, zero, 24
0016ac  7abb0540  vextracti.s r22, 0(vr11)
0016b0  db020000  j 20
0016b4  7abe1540  vextracti.s r28, 1(vr11)
0016b8  1b0b1b00  andi r22, r22, 1
0016bc  bb4f0bfe  bneq r22, zero, -16
0016c0  7a3b0240  vextracti.s r22, 0(vr4)
0016c4  92358002  vadd.s.mz vr11{mr1}, zero, vr8
0016c8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0016cc  e6c1a5a0  vmerge_h.hf vr3, vr11, vr10
0016d0  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0016d4  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
0016d8  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0016dc  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
0016e0  1f2b0000  addli r22, zero, 2
0016e4  7e010be0  vmmov mr2, r22
0016e8  1f0b1000  addli r22, zero, 8
0016ec  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
0016f0  e69201c0  vabs.f vr5, vr3
0016f4  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
0016f8  7e010be0  vmmov mr2, r22
0016fc  1f0b2000  addli r22, zero, 16
001700  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001704  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001708  7e010be0  vmmov mr2, r22
00170c  1f0b4000  addli r22, zero, 32
001710  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
001714  7e010be0  vmmov mr2, r22
001718  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
00171c  6a200736  vor.u.mh vr0{mr3}, r14, vr0
001720  1f070001  addli r14, zero, 128
001724  7e0107e0  vmmov mr2, r14
001728  1f070002  addli r14, zero, 256
00172c  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
001730  7e0107e0  vmmov mr2, r14
001734  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
001738  9f040004  addli r9, zero, 512
00173c  7e8104e0  vmmov mr2, r9
001740  9f040008  addli r9, zero, 1024
001744  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
001748  7e8104e0  vmmov mr2, r9
00174c  9f040010  addli r9, zero, 2048
001750  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
001754  7e8104e0  vmmov mr2, r9
001758  9f040020  addli r9, zero, 4096
00175c  6a200934  vor.u.mh vr0{mr2}, r18, vr0
001760  7e8104e0  vmmov mr2, r9
001764  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001768  9f110000  addli r3, zero, 1
00176c  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
001770  9f010040  addli r3, zero, 8192
001774  7e8101e0  vmmov mr2, r3
001778  ab410000  lui r3, 4
00177c  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
001780  ab024000  lui r5, 1024
001784  7e8101e0  vmmov mr2, r3
001788  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
00178c  ab810000  lui r3, 8
001790  6ab53222  vor.s.mz vr10{mr1}, r5, vr3
001794  aba2aaaa  lui r5, 699050
001798  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
00179c  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
0017a0  9fa25215  addli r5, r5, 2730
0017a4  7e0b01a0  vmmov r22, mr2
0017a8  7e8101e0  vmmov mr2, r3
0017ac  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
0017b0  9b41fb00  srli r3, r22, 15
0017b4  6a200834  vor.u.mh vr0{mr2}, r16, vr0
0017b8  7e8102e0  vmmov mr2, r5
0017bc  e3426ff6  loadli.w r5,  -1228(r30)
0017c0  9b811100  andi r3, r3, 1
0017c4  e2c30214  vscatter.mh vr0{mr2}, vr7{r5}
0017c8  3bb00100  bneq r3, zero, 12
0017cc  7a38f240  vextracti.s r16, 15(vr4)
0017d0  5b010000  j 8
0017d4  7a38f540  vextracti.s r16, 15(vr10)
0017d8  9b41eb00  srli r3, r22, 14
0017dc  9f120000  addli r5, zero, 1
0017e0  9b811100  andi r3, r3, 1
0017e4  7e8102e0  vmmov mr2, r5
0017e8  3bb00100  bneq r3, zero, 12
0017ec  fa38e240  vextracti.s r17, 14(vr4)
0017f0  5b010000  j 8
0017f4  fa38e540  vextracti.s r17, 14(vr10)
0017f8  9b41db00  srli r3, r22, 13
0017fc  9b811100  andi r3, r3, 1
001800  3bb00100  bneq r3, zero, 12
001804  fa32d240  vextracti.s r5, 13(vr4)
001808  5b010000  j 8
00180c  fa32d540  vextracti.s r5, 13(vr10)
001810  9b41cb00  srli r3, r22, 12
001814  9b811100  andi r3, r3, 1
001818  3bb00100  bneq r3, zero, 12
00181c  fa31c240  vextracti.s r3, 12(vr4)
001820  5b010000  j 8
001824  fa31c540  vextracti.s r3, 12(vr10)
001828  9b44bb00  srli r9, r22, 11
00182c  9b841400  andi r9, r9, 1
001830  3bb00400  bneq r9, zero, 12
001834  7a39b240  vextracti.s r18, 11(vr4)
001838  5b010000  j 8
00183c  7a39b540  vextracti.s r18, 11(vr10)
001840  9b44ab00  srli r9, r22, 10
001844  9b841400  andi r9, r9, 1
001848  3bb00400  bneq r9, zero, 12
00184c  fa39a240  vextracti.s r19, 10(vr4)
001850  5b010000  j 8
001854  fa39a540  vextracti.s r19, 10(vr10)
001858  9b449b00  srli r9, r22, 9
00185c  9b841400  andi r9, r9, 1
001860  3bb00400  bneq r9, zero, 12
001864  fa379240  vextracti.s r15, 9(vr4)
001868  5b010000  j 8
00186c  fa379540  vextracti.s r15, 9(vr10)
001870  9b448b00  srli r9, r22, 8
001874  9b841400  andi r9, r9, 1
001878  3bb00400  bneq r9, zero, 12
00187c  fa348240  vextracti.s r9, 8(vr4)
001880  5b010000  j 8
001884  fa348540  vextracti.s r9, 8(vr10)
001888  1b477b00  srli r14, r22, 7
00188c  1b071700  andi r14, r14, 1
001890  3b300700  bneq r14, zero, 12
001894  fa3b7240  vextracti.s r23, 7(vr4)
001898  5b010000  j 8
00189c  fa3b7540  vextracti.s r23, 7(vr10)
0018a0  1b476b00  srli r14, r22, 6
0018a4  1b071700  andi r14, r14, 1
0018a8  3b300700  bneq r14, zero, 12
0018ac  7a376240  vextracti.s r14, 6(vr4)
0018b0  5b010000  j 8
0018b4  7a376540  vextracti.s r14, 6(vr10)
0018b8  1b4c5b00  srli r24, r22, 5
0018bc  1b0c1c00  andi r24, r24, 1
0018c0  3b300c00  bneq r24, zero, 12
0018c4  7a3c5240  vextracti.s r24, 5(vr4)
0018c8  5b010000  j 8
0018cc  7a3c5540  vextracti.s r24, 5(vr10)
0018d0  9b4c4b00  srli r25, r22, 4
0018d4  9b8c1c00  andi r25, r25, 1
0018d8  3bb00c00  bneq r25, zero, 12
0018dc  fa3c4240  vextracti.s r25, 4(vr4)
0018e0  5b010000  j 8
0018e4  fa3c4540  vextracti.s r25, 4(vr10)
0018e8  1b4d3b00  srli r26, r22, 3
0018ec  1b0d1d00  andi r26, r26, 1
0018f0  3b300d00  bneq r26, zero, 12
0018f4  7a3d3240  vextracti.s r26, 3(vr4)
0018f8  5b010000  j 8
0018fc  7a3d3540  vextracti.s r26, 3(vr10)
001900  9b4d2b00  srli r27, r22, 2
001904  9b8d1d00  andi r27, r27, 1
001908  3bb00d00  bneq r27, zero, 12
00190c  fa3d2240  vextracti.s r27, 2(vr4)
001910  5b010000  j 8
001914  fa3d2540  vextracti.s r27, 2(vr10)
001918  1b4e1b00  srli r28, r22, 1
00191c  1b0e1e00  andi r28, r28, 1
001920  3b600e00  bneq r28, zero, 24
001924  7a3e1240  vextracti.s r28, 1(vr4)
001928  1b0b1b00  andi r22, r22, 1
00192c  37600b00  beq r22, zero, 24
001930  7a3b0540  vextracti.s r22, 0(vr10)
001934  db020000  j 20
001938  7a3e1540  vextracti.s r28, 1(vr10)
00193c  1b0b1b00  andi r22, r22, 1
001940  bb4f0bfe  bneq r22, zero, -16
001944  7a3b0240  vextracti.s r22, 0(vr4)
001948  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
00194c  e6c19580  vmerge_l.hf vr3, vr11, vr9
001950  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
001954  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001958  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
00195c  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
001960  1f2b0000  addli r22, zero, 2
001964  7e010be0  vmmov mr2, r22
001968  1f0b1000  addli r22, zero, 8
00196c  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
001970  e69201c0  vabs.f vr5, vr3
001974  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
001978  7e010be0  vmmov mr2, r22
00197c  1f0b2000  addli r22, zero, 16
001980  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001984  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001988  7e010be0  vmmov mr2, r22
00198c  1f0b4000  addli r22, zero, 32
001990  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
001994  7e010be0  vmmov mr2, r22
001998  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
00199c  6a200736  vor.u.mh vr0{mr3}, r14, vr0
0019a0  1f070001  addli r14, zero, 128
0019a4  7e0107e0  vmmov mr2, r14
0019a8  1f070002  addli r14, zero, 256
0019ac  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0019b0  7e0107e0  vmmov mr2, r14
0019b4  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
0019b8  9f040004  addli r9, zero, 512
0019bc  7e8104e0  vmmov mr2, r9
0019c0  9f040008  addli r9, zero, 1024
0019c4  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
0019c8  7e8104e0  vmmov mr2, r9
0019cc  9f040010  addli r9, zero, 2048
0019d0  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0019d4  7e8104e0  vmmov mr2, r9
0019d8  9f040020  addli r9, zero, 4096
0019dc  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0019e0  7e8104e0  vmmov mr2, r9
0019e4  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0019e8  9f110000  addli r3, zero, 1
0019ec  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
0019f0  9f010040  addli r3, zero, 8192
0019f4  7e8101e0  vmmov mr2, r3
0019f8  ab410000  lui r3, 4
0019fc  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
001a00  ab024000  lui r5, 1024
001a04  7e8101e0  vmmov mr2, r3
001a08  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001a0c  ab810000  lui r3, 8
001a10  6ab53222  vor.s.mz vr10{mr1}, r5, vr3
001a14  aba2aaaa  lui r5, 699050
001a18  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001a1c  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
001a20  9fa25215  addli r5, r5, 2730
001a24  7e0b01a0  vmmov r22, mr2
001a28  7e8101e0  vmmov mr2, r3
001a2c  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
001a30  9b41fb00  srli r3, r22, 15
001a34  6a200834  vor.u.mh vr0{mr2}, r16, vr0
001a38  7e8102e0  vmmov mr2, r5
001a3c  e3422ff6  loadli.w r5,  -1260(r30)
001a40  9b811100  andi r3, r3, 1
001a44  e2c30214  vscatter.mh vr0{mr2}, vr7{r5}
001a48  3bb00100  bneq r3, zero, 12
001a4c  7a38f240  vextracti.s r16, 15(vr4)
001a50  5b010000  j 8
001a54  7a38f540  vextracti.s r16, 15(vr10)
001a58  9b41eb00  srli r3, r22, 14
001a5c  9f120000  addli r5, zero, 1
001a60  9b811100  andi r3, r3, 1
001a64  7e8102e0  vmmov mr2, r5
001a68  3bb00100  bneq r3, zero, 12
001a6c  fa38e240  vextracti.s r17, 14(vr4)
001a70  5b010000  j 8
001a74  fa38e540  vextracti.s r17, 14(vr10)
001a78  9b41db00  srli r3, r22, 13
001a7c  9b811100  andi r3, r3, 1
001a80  3bb00100  bneq r3, zero, 12
001a84  fa32d240  vextracti.s r5, 13(vr4)
001a88  5b010000  j 8
001a8c  fa32d540  vextracti.s r5, 13(vr10)
001a90  9b41cb00  srli r3, r22, 12
001a94  9b811100  andi r3, r3, 1
001a98  3bb00100  bneq r3, zero, 12
001a9c  fa31c240  vextracti.s r3, 12(vr4)
001aa0  5b010000  j 8
001aa4  fa31c540  vextracti.s r3, 12(vr10)
001aa8  9b44bb00  srli r9, r22, 11
001aac  9b841400  andi r9, r9, 1
001ab0  3bb00400  bneq r9, zero, 12
001ab4  7a39b240  vextracti.s r18, 11(vr4)
001ab8  5b010000  j 8
001abc  7a39b540  vextracti.s r18, 11(vr10)
001ac0  9b44ab00  srli r9, r22, 10
001ac4  9b841400  andi r9, r9, 1
001ac8  3bb00400  bneq r9, zero, 12
001acc  fa39a240  vextracti.s r19, 10(vr4)
001ad0  5b010000  j 8
001ad4  fa39a540  vextracti.s r19, 10(vr10)
001ad8  9b449b00  srli r9, r22, 9
001adc  9b841400  andi r9, r9, 1
001ae0  3bb00400  bneq r9, zero, 12
001ae4  fa379240  vextracti.s r15, 9(vr4)
001ae8  5b010000  j 8
001aec  fa379540  vextracti.s r15, 9(vr10)
001af0  9b448b00  srli r9, r22, 8
001af4  9b841400  andi r9, r9, 1
001af8  3bb00400  bneq r9, zero, 12
001afc  fa348240  vextracti.s r9, 8(vr4)
001b00  5b010000  j 8
001b04  fa348540  vextracti.s r9, 8(vr10)
001b08  1b477b00  srli r14, r22, 7
001b0c  1b071700  andi r14, r14, 1
001b10  3b300700  bneq r14, zero, 12
001b14  fa3b7240  vextracti.s r23, 7(vr4)
001b18  5b010000  j 8
001b1c  fa3b7540  vextracti.s r23, 7(vr10)
001b20  1b476b00  srli r14, r22, 6
001b24  1b071700  andi r14, r14, 1
001b28  3b300700  bneq r14, zero, 12
001b2c  7a376240  vextracti.s r14, 6(vr4)
001b30  5b010000  j 8
001b34  7a376540  vextracti.s r14, 6(vr10)
001b38  1b4c5b00  srli r24, r22, 5
001b3c  1b0c1c00  andi r24, r24, 1
001b40  3b300c00  bneq r24, zero, 12
001b44  7a3c5240  vextracti.s r24, 5(vr4)
001b48  5b010000  j 8
001b4c  7a3c5540  vextracti.s r24, 5(vr10)
001b50  9b4c4b00  srli r25, r22, 4
001b54  9b8c1c00  andi r25, r25, 1
001b58  3bb00c00  bneq r25, zero, 12
001b5c  fa3c4240  vextracti.s r25, 4(vr4)
001b60  5b010000  j 8
001b64  fa3c4540  vextracti.s r25, 4(vr10)
001b68  1b4d3b00  srli r26, r22, 3
001b6c  1b0d1d00  andi r26, r26, 1
001b70  3b300d00  bneq r26, zero, 12
001b74  7a3d3240  vextracti.s r26, 3(vr4)
001b78  5b010000  j 8
001b7c  7a3d3540  vextracti.s r26, 3(vr10)
001b80  9b4d2b00  srli r27, r22, 2
001b84  9b8d1d00  andi r27, r27, 1
001b88  3bb00d00  bneq r27, zero, 12
001b8c  fa3d2240  vextracti.s r27, 2(vr4)
001b90  5b010000  j 8
001b94  fa3d2540  vextracti.s r27, 2(vr10)
001b98  1b4e1b00  srli r28, r22, 1
001b9c  1b0e1e00  andi r28, r28, 1
001ba0  3b600e00  bneq r28, zero, 24
001ba4  7a3e1240  vextracti.s r28, 1(vr4)
001ba8  1b0b1b00  andi r22, r22, 1
001bac  37600b00  beq r22, zero, 24
001bb0  7a3b0540  vextracti.s r22, 0(vr10)
001bb4  db020000  j 20
001bb8  7a3e1540  vextracti.s r28, 1(vr10)
001bbc  1b0b1b00  andi r22, r22, 1
001bc0  bb4f0bfe  bneq r22, zero, -16
001bc4  7a3b0240  vextracti.s r22, 0(vr4)
001bc8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
001bcc  e6c195a0  vmerge_h.hf vr3, vr11, vr9
001bd0  12357002  vadd.s.mz vr10{mr1}, zero, vr7
001bd4  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
001bd8  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001bdc  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
001be0  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
001be4  1f2b0000  addli r22, zero, 2
001be8  7e010be0  vmmov mr2, r22
001bec  1f0b1000  addli r22, zero, 8
001bf0  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
001bf4  e69201c0  vabs.f vr5, vr3
001bf8  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
001bfc  7e010be0  vmmov mr2, r22
001c00  1f0b2000  addli r22, zero, 16
001c04  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001c08  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001c0c  7e010be0  vmmov mr2, r22
001c10  1f0b4000  addli r22, zero, 32
001c14  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
001c18  7e010be0  vmmov mr2, r22
001c1c  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
001c20  6a200736  vor.u.mh vr0{mr3}, r14, vr0
001c24  1f070001  addli r14, zero, 128
001c28  7e0107e0  vmmov mr2, r14
001c2c  1f070002  addli r14, zero, 256
001c30  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
001c34  7e0107e0  vmmov mr2, r14
001c38  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
001c3c  9f040004  addli r9, zero, 512
001c40  7e8104e0  vmmov mr2, r9
001c44  9f040008  addli r9, zero, 1024
001c48  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
001c4c  7e8104e0  vmmov mr2, r9
001c50  9f040010  addli r9, zero, 2048
001c54  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
001c58  7e8104e0  vmmov mr2, r9
001c5c  9f040020  addli r9, zero, 4096
001c60  6a200934  vor.u.mh vr0{mr2}, r18, vr0
001c64  7e8104e0  vmmov mr2, r9
001c68  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001c6c  9f110000  addli r3, zero, 1
001c70  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
001c74  9f010040  addli r3, zero, 8192
001c78  7e8101e0  vmmov mr2, r3
001c7c  ab410000  lui r3, 4
001c80  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
001c84  ab024000  lui r5, 1024
001c88  7e8101e0  vmmov mr2, r3
001c8c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001c90  ab810000  lui r3, 8
001c94  eab43222  vor.s.mz vr9{mr1}, r5, vr3
001c98  aba2aaaa  lui r5, 699050
001c9c  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001ca0  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
001ca4  9fa25215  addli r5, r5, 2730
001ca8  7e0b01a0  vmmov r22, mr2
001cac  7e8101e0  vmmov mr2, r3
001cb0  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
001cb4  9b41fb00  srli r3, r22, 15
001cb8  6a200834  vor.u.mh vr0{mr2}, r16, vr0
001cbc  7e8102e0  vmmov mr2, r5
001cc0  e3026ff6  loadli.w r5,  -1232(r30)
001cc4  9b811100  andi r3, r3, 1
001cc8  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
001ccc  3bb00100  bneq r3, zero, 12
001cd0  7a38f240  vextracti.s r16, 15(vr4)
001cd4  5b010000  j 8
001cd8  7ab8f440  vextracti.s r16, 15(vr9)
001cdc  c2130f83  vload_mask16.mz vr7{mr1}, 1152(r30)
001ce0  9b41eb00  srli r3, r22, 14
001ce4  9f120000  addli r5, zero, 1
001ce8  9b811100  andi r3, r3, 1
001cec  7e8102e0  vmmov mr2, r5
001cf0  3bb00100  bneq r3, zero, 12
001cf4  fa38e240  vextracti.s r17, 14(vr4)
001cf8  5b010000  j 8
001cfc  fab8e440  vextracti.s r17, 14(vr9)
001d00  9b41db00  srli r3, r22, 13
001d04  9b811100  andi r3, r3, 1
001d08  3bb00100  bneq r3, zero, 12
001d0c  fa32d240  vextracti.s r5, 13(vr4)
001d10  5b010000  j 8
001d14  fab2d440  vextracti.s r5, 13(vr9)
001d18  9b41cb00  srli r3, r22, 12
001d1c  9b811100  andi r3, r3, 1
001d20  3bb00100  bneq r3, zero, 12
001d24  fa31c240  vextracti.s r3, 12(vr4)
001d28  5b010000  j 8
001d2c  fab1c440  vextracti.s r3, 12(vr9)
001d30  9b44bb00  srli r9, r22, 11
001d34  9b841400  andi r9, r9, 1
001d38  3bb00400  bneq r9, zero, 12
001d3c  7a39b240  vextracti.s r18, 11(vr4)
001d40  5b010000  j 8
001d44  7ab9b440  vextracti.s r18, 11(vr9)
001d48  9b44ab00  srli r9, r22, 10
001d4c  9b841400  andi r9, r9, 1
001d50  3bb00400  bneq r9, zero, 12
001d54  fa39a240  vextracti.s r19, 10(vr4)
001d58  5b010000  j 8
001d5c  fab9a440  vextracti.s r19, 10(vr9)
001d60  9b449b00  srli r9, r22, 9
001d64  9b841400  andi r9, r9, 1
001d68  3bb00400  bneq r9, zero, 12
001d6c  fa379240  vextracti.s r15, 9(vr4)
001d70  5b010000  j 8
001d74  fab79440  vextracti.s r15, 9(vr9)
001d78  9b448b00  srli r9, r22, 8
001d7c  9b841400  andi r9, r9, 1
001d80  3bb00400  bneq r9, zero, 12
001d84  fa348240  vextracti.s r9, 8(vr4)
001d88  5b010000  j 8
001d8c  fab48440  vextracti.s r9, 8(vr9)
001d90  1b477b00  srli r14, r22, 7
001d94  1b071700  andi r14, r14, 1
001d98  3b300700  bneq r14, zero, 12
001d9c  fa3b7240  vextracti.s r23, 7(vr4)
001da0  5b010000  j 8
001da4  fabb7440  vextracti.s r23, 7(vr9)
001da8  1b476b00  srli r14, r22, 6
001dac  1b071700  andi r14, r14, 1
001db0  3b300700  bneq r14, zero, 12
001db4  7a376240  vextracti.s r14, 6(vr4)
001db8  5b010000  j 8
001dbc  7ab76440  vextracti.s r14, 6(vr9)
001dc0  1b4c5b00  srli r24, r22, 5
001dc4  1b0c1c00  andi r24, r24, 1
001dc8  3b300c00  bneq r24, zero, 12
001dcc  7a3c5240  vextracti.s r24, 5(vr4)
001dd0  5b010000  j 8
001dd4  7abc5440  vextracti.s r24, 5(vr9)
001dd8  9b4c4b00  srli r25, r22, 4
001ddc  9b8c1c00  andi r25, r25, 1
001de0  3bb00c00  bneq r25, zero, 12
001de4  fa3c4240  vextracti.s r25, 4(vr4)
001de8  5b010000  j 8
001dec  fabc4440  vextracti.s r25, 4(vr9)
001df0  1b4d3b00  srli r26, r22, 3
001df4  1b0d1d00  andi r26, r26, 1
001df8  3b300d00  bneq r26, zero, 12
001dfc  7a3d3240  vextracti.s r26, 3(vr4)
001e00  5b010000  j 8
001e04  7abd3440  vextracti.s r26, 3(vr9)
001e08  9b4d2b00  srli r27, r22, 2
001e0c  9b8d1d00  andi r27, r27, 1
001e10  3bb00d00  bneq r27, zero, 12
001e14  fa3d2240  vextracti.s r27, 2(vr4)
001e18  5b010000  j 8
001e1c  fabd2440  vextracti.s r27, 2(vr9)
001e20  1b4e1b00  srli r28, r22, 1
001e24  1b0e1e00  andi r28, r28, 1
001e28  3b600e00  bneq r28, zero, 24
001e2c  7a3e1240  vextracti.s r28, 1(vr4)
001e30  1b0b1b00  andi r22, r22, 1
001e34  37600b00  beq r22, zero, 24
001e38  7abb0440  vextracti.s r22, 0(vr9)
001e3c  db020000  j 20
001e40  7abe1440  vextracti.s r28, 1(vr9)
001e44  1b0b1b00  andi r22, r22, 1
001e48  bb4f0bfe  bneq r22, zero, -16
001e4c  7a3b0240  vextracti.s r22, 0(vr4)
001e50  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
001e54  e6c16580  vmerge_l.hf vr3, vr11, vr6
001e58  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
001e5c  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
001e60  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
001e64  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
001e68  1f2b0000  addli r22, zero, 2
001e6c  7e010be0  vmmov mr2, r22
001e70  1f0b1000  addli r22, zero, 8
001e74  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
001e78  e69201c0  vabs.f vr5, vr3
001e7c  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
001e80  7e010be0  vmmov mr2, r22
001e84  1f0b2000  addli r22, zero, 16
001e88  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
001e8c  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001e90  7e010be0  vmmov mr2, r22
001e94  1f0b4000  addli r22, zero, 32
001e98  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
001e9c  7e010be0  vmmov mr2, r22
001ea0  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
001ea4  6a200736  vor.u.mh vr0{mr3}, r14, vr0
001ea8  1f070001  addli r14, zero, 128
001eac  7e0107e0  vmmov mr2, r14
001eb0  1f070002  addli r14, zero, 256
001eb4  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
001eb8  7e0107e0  vmmov mr2, r14
001ebc  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
001ec0  9f040004  addli r9, zero, 512
001ec4  7e8104e0  vmmov mr2, r9
001ec8  9f040008  addli r9, zero, 1024
001ecc  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
001ed0  7e8104e0  vmmov mr2, r9
001ed4  9f040010  addli r9, zero, 2048
001ed8  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
001edc  7e8104e0  vmmov mr2, r9
001ee0  9f040020  addli r9, zero, 4096
001ee4  6a200934  vor.u.mh vr0{mr2}, r18, vr0
001ee8  7e8104e0  vmmov mr2, r9
001eec  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001ef0  9f110000  addli r3, zero, 1
001ef4  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
001ef8  9f010040  addli r3, zero, 8192
001efc  7e8101e0  vmmov mr2, r3
001f00  ab410000  lui r3, 4
001f04  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
001f08  ab024000  lui r5, 1024
001f0c  7e8101e0  vmmov mr2, r3
001f10  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001f14  ab810000  lui r3, 8
001f18  eab43222  vor.s.mz vr9{mr1}, r5, vr3
001f1c  aba2aaaa  lui r5, 699050
001f20  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001f24  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
001f28  9fa25215  addli r5, r5, 2730
001f2c  7e0b01a0  vmmov r22, mr2
001f30  7e8101e0  vmmov mr2, r3
001f34  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
001f38  9b41fb00  srli r3, r22, 15
001f3c  6a200834  vor.u.mh vr0{mr2}, r16, vr0
001f40  7e8102e0  vmmov mr2, r5
001f44  e3022ff6  loadli.w r5,  -1264(r30)
001f48  9b811100  andi r3, r3, 1
001f4c  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
001f50  3bb00100  bneq r3, zero, 12
001f54  7a38f240  vextracti.s r16, 15(vr4)
001f58  5b010000  j 8
001f5c  7ab8f440  vextracti.s r16, 15(vr9)
001f60  9b41eb00  srli r3, r22, 14
001f64  9f120000  addli r5, zero, 1
001f68  9b811100  andi r3, r3, 1
001f6c  7e8102e0  vmmov mr2, r5
001f70  3bb00100  bneq r3, zero, 12
001f74  fa38e240  vextracti.s r17, 14(vr4)
001f78  5b010000  j 8
001f7c  fab8e440  vextracti.s r17, 14(vr9)
001f80  9b41db00  srli r3, r22, 13
001f84  9b811100  andi r3, r3, 1
001f88  3bb00100  bneq r3, zero, 12
001f8c  fa32d240  vextracti.s r5, 13(vr4)
001f90  5b010000  j 8
001f94  fab2d440  vextracti.s r5, 13(vr9)
001f98  9b41cb00  srli r3, r22, 12
001f9c  9b811100  andi r3, r3, 1
001fa0  3bb00100  bneq r3, zero, 12
001fa4  fa31c240  vextracti.s r3, 12(vr4)
001fa8  5b010000  j 8
001fac  fab1c440  vextracti.s r3, 12(vr9)
001fb0  9b44bb00  srli r9, r22, 11
001fb4  9b841400  andi r9, r9, 1
001fb8  3bb00400  bneq r9, zero, 12
001fbc  7a39b240  vextracti.s r18, 11(vr4)
001fc0  5b010000  j 8
001fc4  7ab9b440  vextracti.s r18, 11(vr9)
001fc8  9b44ab00  srli r9, r22, 10
001fcc  9b841400  andi r9, r9, 1
001fd0  3bb00400  bneq r9, zero, 12
001fd4  fa39a240  vextracti.s r19, 10(vr4)
001fd8  5b010000  j 8
001fdc  fab9a440  vextracti.s r19, 10(vr9)
001fe0  9b449b00  srli r9, r22, 9
001fe4  9b841400  andi r9, r9, 1
001fe8  3bb00400  bneq r9, zero, 12
001fec  fa379240  vextracti.s r15, 9(vr4)
001ff0  5b010000  j 8
001ff4  fab79440  vextracti.s r15, 9(vr9)
001ff8  9b448b00  srli r9, r22, 8
001ffc  9b841400  andi r9, r9, 1
002000  3bb00400  bneq r9, zero, 12
002004  fa348240  vextracti.s r9, 8(vr4)
002008  5b010000  j 8
00200c  fab48440  vextracti.s r9, 8(vr9)
002010  1b477b00  srli r14, r22, 7
002014  1b071700  andi r14, r14, 1
002018  3b300700  bneq r14, zero, 12
00201c  fa3b7240  vextracti.s r23, 7(vr4)
002020  5b010000  j 8
002024  fabb7440  vextracti.s r23, 7(vr9)
002028  1b476b00  srli r14, r22, 6
00202c  1b071700  andi r14, r14, 1
002030  3b300700  bneq r14, zero, 12
002034  7a376240  vextracti.s r14, 6(vr4)
002038  5b010000  j 8
00203c  7ab76440  vextracti.s r14, 6(vr9)
002040  1b4c5b00  srli r24, r22, 5
002044  1b0c1c00  andi r24, r24, 1
002048  3b300c00  bneq r24, zero, 12
00204c  7a3c5240  vextracti.s r24, 5(vr4)
002050  5b010000  j 8
002054  7abc5440  vextracti.s r24, 5(vr9)
002058  9b4c4b00  srli r25, r22, 4
00205c  9b8c1c00  andi r25, r25, 1
002060  3bb00c00  bneq r25, zero, 12
002064  fa3c4240  vextracti.s r25, 4(vr4)
002068  5b010000  j 8
00206c  fabc4440  vextracti.s r25, 4(vr9)
002070  1b4d3b00  srli r26, r22, 3
002074  1b0d1d00  andi r26, r26, 1
002078  3b300d00  bneq r26, zero, 12
00207c  7a3d3240  vextracti.s r26, 3(vr4)
002080  5b010000  j 8
002084  7abd3440  vextracti.s r26, 3(vr9)
002088  9b4d2b00  srli r27, r22, 2
00208c  9b8d1d00  andi r27, r27, 1
002090  3bb00d00  bneq r27, zero, 12
002094  fa3d2240  vextracti.s r27, 2(vr4)
002098  5b010000  j 8
00209c  fabd2440  vextracti.s r27, 2(vr9)
0020a0  1b4e1b00  srli r28, r22, 1
0020a4  1b0e1e00  andi r28, r28, 1
0020a8  3b600e00  bneq r28, zero, 24
0020ac  7a3e1240  vextracti.s r28, 1(vr4)
0020b0  1b0b1b00  andi r22, r22, 1
0020b4  37600b00  beq r22, zero, 24
0020b8  7abb0440  vextracti.s r22, 0(vr9)
0020bc  db020000  j 20
0020c0  7abe1440  vextracti.s r28, 1(vr9)
0020c4  1b0b1b00  andi r22, r22, 1
0020c8  bb4f0bfe  bneq r22, zero, -16
0020cc  7a3b0240  vextracti.s r22, 0(vr4)
0020d0  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0020d4  e6c165a0  vmerge_h.hf vr3, vr11, vr6
0020d8  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0020dc  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
0020e0  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0020e4  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
0020e8  1f2b0000  addli r22, zero, 2
0020ec  7e010be0  vmmov mr2, r22
0020f0  1f0b1000  addli r22, zero, 8
0020f4  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
0020f8  e69201c0  vabs.f vr5, vr3
0020fc  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
002100  7e010be0  vmmov mr2, r22
002104  1f0b2000  addli r22, zero, 16
002108  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
00210c  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002110  7e010be0  vmmov mr2, r22
002114  1f0b4000  addli r22, zero, 32
002118  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
00211c  7e010be0  vmmov mr2, r22
002120  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
002124  6a200736  vor.u.mh vr0{mr3}, r14, vr0
002128  1f070001  addli r14, zero, 128
00212c  7e0107e0  vmmov mr2, r14
002130  1f070002  addli r14, zero, 256
002134  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
002138  7e0107e0  vmmov mr2, r14
00213c  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
002140  9f040004  addli r9, zero, 512
002144  7e8104e0  vmmov mr2, r9
002148  9f040008  addli r9, zero, 1024
00214c  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
002150  7e8104e0  vmmov mr2, r9
002154  9f040010  addli r9, zero, 2048
002158  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
00215c  7e8104e0  vmmov mr2, r9
002160  9f040020  addli r9, zero, 4096
002164  6a200934  vor.u.mh vr0{mr2}, r18, vr0
002168  7e8104e0  vmmov mr2, r9
00216c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002170  9f110000  addli r3, zero, 1
002174  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
002178  9f010040  addli r3, zero, 8192
00217c  7e8101e0  vmmov mr2, r3
002180  ab410000  lui r3, 4
002184  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
002188  ab024000  lui r5, 1024
00218c  7e8101e0  vmmov mr2, r3
002190  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002194  ab810000  lui r3, 8
002198  6ab43222  vor.s.mz vr8{mr1}, r5, vr3
00219c  aba2aaaa  lui r5, 699050
0021a0  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0021a4  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
0021a8  9fa25215  addli r5, r5, 2730
0021ac  7e0b01a0  vmmov r22, mr2
0021b0  7e8101e0  vmmov mr2, r3
0021b4  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
0021b8  9b41fb00  srli r3, r22, 15
0021bc  6a200834  vor.u.mh vr0{mr2}, r16, vr0
0021c0  7e8102e0  vmmov mr2, r5
0021c4  e3425ff6  loadli.w r5,  -1236(r30)
0021c8  9b811100  andi r3, r3, 1
0021cc  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
0021d0  3bb00100  bneq r3, zero, 12
0021d4  7a38f240  vextracti.s r16, 15(vr4)
0021d8  5b010000  j 8
0021dc  7a38f440  vextracti.s r16, 15(vr8)
0021e0  42138f83  vload_mask16.mz vr6{mr1}, 1216(r30)
0021e4  9b41eb00  srli r3, r22, 14
0021e8  9f120000  addli r5, zero, 1
0021ec  9b811100  andi r3, r3, 1
0021f0  7e8102e0  vmmov mr2, r5
0021f4  3bb00100  bneq r3, zero, 12
0021f8  fa38e240  vextracti.s r17, 14(vr4)
0021fc  5b010000  j 8
002200  fa38e440  vextracti.s r17, 14(vr8)
002204  9b41db00  srli r3, r22, 13
002208  9b811100  andi r3, r3, 1
00220c  3bb00100  bneq r3, zero, 12
002210  fa32d240  vextracti.s r5, 13(vr4)
002214  5b010000  j 8
002218  fa32d440  vextracti.s r5, 13(vr8)
00221c  9b41cb00  srli r3, r22, 12
002220  9b811100  andi r3, r3, 1
002224  3bb00100  bneq r3, zero, 12
002228  fa31c240  vextracti.s r3, 12(vr4)
00222c  5b010000  j 8
002230  fa31c440  vextracti.s r3, 12(vr8)
002234  9b44bb00  srli r9, r22, 11
002238  9b841400  andi r9, r9, 1
00223c  3bb00400  bneq r9, zero, 12
002240  7a39b240  vextracti.s r18, 11(vr4)
002244  5b010000  j 8
002248  7a39b440  vextracti.s r18, 11(vr8)
00224c  9b44ab00  srli r9, r22, 10
002250  9b841400  andi r9, r9, 1
002254  3bb00400  bneq r9, zero, 12
002258  fa39a240  vextracti.s r19, 10(vr4)
00225c  5b010000  j 8
002260  fa39a440  vextracti.s r19, 10(vr8)
002264  9b449b00  srli r9, r22, 9
002268  9b841400  andi r9, r9, 1
00226c  3bb00400  bneq r9, zero, 12
002270  fa379240  vextracti.s r15, 9(vr4)
002274  5b010000  j 8
002278  fa379440  vextracti.s r15, 9(vr8)
00227c  9b448b00  srli r9, r22, 8
002280  9b841400  andi r9, r9, 1
002284  3bb00400  bneq r9, zero, 12
002288  fa348240  vextracti.s r9, 8(vr4)
00228c  5b010000  j 8
002290  fa348440  vextracti.s r9, 8(vr8)
002294  1b477b00  srli r14, r22, 7
002298  1b071700  andi r14, r14, 1
00229c  3b300700  bneq r14, zero, 12
0022a0  fa3b7240  vextracti.s r23, 7(vr4)
0022a4  5b010000  j 8
0022a8  fa3b7440  vextracti.s r23, 7(vr8)
0022ac  1b476b00  srli r14, r22, 6
0022b0  1b071700  andi r14, r14, 1
0022b4  3b300700  bneq r14, zero, 12
0022b8  7a376240  vextracti.s r14, 6(vr4)
0022bc  5b010000  j 8
0022c0  7a376440  vextracti.s r14, 6(vr8)
0022c4  1b4c5b00  srli r24, r22, 5
0022c8  1b0c1c00  andi r24, r24, 1
0022cc  3b300c00  bneq r24, zero, 12
0022d0  7a3c5240  vextracti.s r24, 5(vr4)
0022d4  5b010000  j 8
0022d8  7a3c5440  vextracti.s r24, 5(vr8)
0022dc  9b4c4b00  srli r25, r22, 4
0022e0  9b8c1c00  andi r25, r25, 1
0022e4  3bb00c00  bneq r25, zero, 12
0022e8  fa3c4240  vextracti.s r25, 4(vr4)
0022ec  5b010000  j 8
0022f0  fa3c4440  vextracti.s r25, 4(vr8)
0022f4  1b4d3b00  srli r26, r22, 3
0022f8  1b0d1d00  andi r26, r26, 1
0022fc  3b300d00  bneq r26, zero, 12
002300  7a3d3240  vextracti.s r26, 3(vr4)
002304  5b010000  j 8
002308  7a3d3440  vextracti.s r26, 3(vr8)
00230c  9b4d2b00  srli r27, r22, 2
002310  9b8d1d00  andi r27, r27, 1
002314  3bb00d00  bneq r27, zero, 12
002318  fa3d2240  vextracti.s r27, 2(vr4)
00231c  5b010000  j 8
002320  fa3d2440  vextracti.s r27, 2(vr8)
002324  1b4e1b00  srli r28, r22, 1
002328  1b0e1e00  andi r28, r28, 1
00232c  3b600e00  bneq r28, zero, 24
002330  7a3e1240  vextracti.s r28, 1(vr4)
002334  1b0b1b00  andi r22, r22, 1
002338  37600b00  beq r22, zero, 24
00233c  7a3b0440  vextracti.s r22, 0(vr8)
002340  db020000  j 20
002344  7a3e1440  vextracti.s r28, 1(vr8)
002348  1b0b1b00  andi r22, r22, 1
00234c  bb4f0bfe  bneq r22, zero, -16
002350  7a3b0240  vextracti.s r22, 0(vr4)
002354  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002358  e6c17580  vmerge_l.hf vr3, vr11, vr7
00235c  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
002360  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
002364  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002368  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
00236c  1f2b0000  addli r22, zero, 2
002370  7e010be0  vmmov mr2, r22
002374  1f0b1000  addli r22, zero, 8
002378  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
00237c  e69201c0  vabs.f vr5, vr3
002380  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
002384  7e010be0  vmmov mr2, r22
002388  1f0b2000  addli r22, zero, 16
00238c  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
002390  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002394  7e010be0  vmmov mr2, r22
002398  1f0b4000  addli r22, zero, 32
00239c  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
0023a0  7e010be0  vmmov mr2, r22
0023a4  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
0023a8  6a200736  vor.u.mh vr0{mr3}, r14, vr0
0023ac  1f070001  addli r14, zero, 128
0023b0  7e0107e0  vmmov mr2, r14
0023b4  1f070002  addli r14, zero, 256
0023b8  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0023bc  7e0107e0  vmmov mr2, r14
0023c0  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
0023c4  9f040004  addli r9, zero, 512
0023c8  7e8104e0  vmmov mr2, r9
0023cc  9f040008  addli r9, zero, 1024
0023d0  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
0023d4  7e8104e0  vmmov mr2, r9
0023d8  9f040010  addli r9, zero, 2048
0023dc  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0023e0  7e8104e0  vmmov mr2, r9
0023e4  9f040020  addli r9, zero, 4096
0023e8  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0023ec  7e8104e0  vmmov mr2, r9
0023f0  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0023f4  9f110000  addli r3, zero, 1
0023f8  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
0023fc  9f010040  addli r3, zero, 8192
002400  7e8101e0  vmmov mr2, r3
002404  ab410000  lui r3, 4
002408  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
00240c  ab024000  lui r5, 1024
002410  7e8101e0  vmmov mr2, r3
002414  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002418  ab810000  lui r3, 8
00241c  6ab43222  vor.s.mz vr8{mr1}, r5, vr3
002420  aba2aaaa  lui r5, 699050
002424  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002428  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
00242c  9fa25215  addli r5, r5, 2730
002430  7e0b01a0  vmmov r22, mr2
002434  7e8101e0  vmmov mr2, r3
002438  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
00243c  9b41fb00  srli r3, r22, 15
002440  6a200834  vor.u.mh vr0{mr2}, r16, vr0
002444  7e8102e0  vmmov mr2, r5
002448  e3421ff6  loadli.w r5,  -1268(r30)
00244c  9b811100  andi r3, r3, 1
002450  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
002454  3bb00100  bneq r3, zero, 12
002458  7a38f240  vextracti.s r16, 15(vr4)
00245c  5b010000  j 8
002460  7a38f440  vextracti.s r16, 15(vr8)
002464  9b41eb00  srli r3, r22, 14
002468  9f120000  addli r5, zero, 1
00246c  9b811100  andi r3, r3, 1
002470  7e8102e0  vmmov mr2, r5
002474  3bb00100  bneq r3, zero, 12
002478  fa38e240  vextracti.s r17, 14(vr4)
00247c  5b010000  j 8
002480  fa38e440  vextracti.s r17, 14(vr8)
002484  9b41db00  srli r3, r22, 13
002488  9b811100  andi r3, r3, 1
00248c  3bb00100  bneq r3, zero, 12
002490  fa32d240  vextracti.s r5, 13(vr4)
002494  5b010000  j 8
002498  fa32d440  vextracti.s r5, 13(vr8)
00249c  9b41cb00  srli r3, r22, 12
0024a0  9b811100  andi r3, r3, 1
0024a4  3bb00100  bneq r3, zero, 12
0024a8  fa31c240  vextracti.s r3, 12(vr4)
0024ac  5b010000  j 8
0024b0  fa31c440  vextracti.s r3, 12(vr8)
0024b4  9b44bb00  srli r9, r22, 11
0024b8  9b841400  andi r9, r9, 1
0024bc  3bb00400  bneq r9, zero, 12
0024c0  7a39b240  vextracti.s r18, 11(vr4)
0024c4  5b010000  j 8
0024c8  7a39b440  vextracti.s r18, 11(vr8)
0024cc  9b44ab00  srli r9, r22, 10
0024d0  9b841400  andi r9, r9, 1
0024d4  3bb00400  bneq r9, zero, 12
0024d8  fa39a240  vextracti.s r19, 10(vr4)
0024dc  5b010000  j 8
0024e0  fa39a440  vextracti.s r19, 10(vr8)
0024e4  9b449b00  srli r9, r22, 9
0024e8  9b841400  andi r9, r9, 1
0024ec  3bb00400  bneq r9, zero, 12
0024f0  fa379240  vextracti.s r15, 9(vr4)
0024f4  5b010000  j 8
0024f8  fa379440  vextracti.s r15, 9(vr8)
0024fc  9b448b00  srli r9, r22, 8
002500  9b841400  andi r9, r9, 1
002504  3bb00400  bneq r9, zero, 12
002508  fa348240  vextracti.s r9, 8(vr4)
00250c  5b010000  j 8
002510  fa348440  vextracti.s r9, 8(vr8)
002514  1b477b00  srli r14, r22, 7
002518  1b071700  andi r14, r14, 1
00251c  3b300700  bneq r14, zero, 12
002520  fa3b7240  vextracti.s r23, 7(vr4)
002524  5b010000  j 8
002528  fa3b7440  vextracti.s r23, 7(vr8)
00252c  1b476b00  srli r14, r22, 6
002530  1b071700  andi r14, r14, 1
002534  3b300700  bneq r14, zero, 12
002538  7a376240  vextracti.s r14, 6(vr4)
00253c  5b010000  j 8
002540  7a376440  vextracti.s r14, 6(vr8)
002544  1b4c5b00  srli r24, r22, 5
002548  1b0c1c00  andi r24, r24, 1
00254c  3b300c00  bneq r24, zero, 12
002550  7a3c5240  vextracti.s r24, 5(vr4)
002554  5b010000  j 8
002558  7a3c5440  vextracti.s r24, 5(vr8)
00255c  9b4c4b00  srli r25, r22, 4
002560  9b8c1c00  andi r25, r25, 1
002564  3bb00c00  bneq r25, zero, 12
002568  fa3c4240  vextracti.s r25, 4(vr4)
00256c  5b010000  j 8
002570  fa3c4440  vextracti.s r25, 4(vr8)
002574  1b4d3b00  srli r26, r22, 3
002578  1b0d1d00  andi r26, r26, 1
00257c  3b300d00  bneq r26, zero, 12
002580  7a3d3240  vextracti.s r26, 3(vr4)
002584  5b010000  j 8
002588  7a3d3440  vextracti.s r26, 3(vr8)
00258c  9b4d2b00  srli r27, r22, 2
002590  9b8d1d00  andi r27, r27, 1
002594  3bb00d00  bneq r27, zero, 12
002598  fa3d2240  vextracti.s r27, 2(vr4)
00259c  5b010000  j 8
0025a0  fa3d2440  vextracti.s r27, 2(vr8)
0025a4  1b4e1b00  srli r28, r22, 1
0025a8  1b0e1e00  andi r28, r28, 1
0025ac  3b600e00  bneq r28, zero, 24
0025b0  7a3e1240  vextracti.s r28, 1(vr4)
0025b4  1b0b1b00  andi r22, r22, 1
0025b8  37600b00  beq r22, zero, 24
0025bc  7a3b0440  vextracti.s r22, 0(vr8)
0025c0  db020000  j 20
0025c4  7a3e1440  vextracti.s r28, 1(vr8)
0025c8  1b0b1b00  andi r22, r22, 1
0025cc  bb4f0bfe  bneq r22, zero, -16
0025d0  7a3b0240  vextracti.s r22, 0(vr4)
0025d4  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0025d8  e6c175a0  vmerge_h.hf vr3, vr11, vr7
0025dc  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0025e0  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
0025e4  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0025e8  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
0025ec  1f2b0000  addli r22, zero, 2
0025f0  7e010be0  vmmov mr2, r22
0025f4  1f0b1000  addli r22, zero, 8
0025f8  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
0025fc  e69201c0  vabs.f vr5, vr3
002600  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
002604  7e010be0  vmmov mr2, r22
002608  1f0b2000  addli r22, zero, 16
00260c  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
002610  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002614  7e010be0  vmmov mr2, r22
002618  1f0b4000  addli r22, zero, 32
00261c  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
002620  7e010be0  vmmov mr2, r22
002624  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
002628  6a200736  vor.u.mh vr0{mr3}, r14, vr0
00262c  1f070001  addli r14, zero, 128
002630  7e0107e0  vmmov mr2, r14
002634  1f070002  addli r14, zero, 256
002638  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
00263c  7e0107e0  vmmov mr2, r14
002640  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
002644  9f040004  addli r9, zero, 512
002648  7e8104e0  vmmov mr2, r9
00264c  9f040008  addli r9, zero, 1024
002650  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
002654  7e8104e0  vmmov mr2, r9
002658  9f040010  addli r9, zero, 2048
00265c  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
002660  7e8104e0  vmmov mr2, r9
002664  9f040020  addli r9, zero, 4096
002668  6a200934  vor.u.mh vr0{mr2}, r18, vr0
00266c  7e8104e0  vmmov mr2, r9
002670  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002674  9f110000  addli r3, zero, 1
002678  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
00267c  9f010040  addli r3, zero, 8192
002680  7e8101e0  vmmov mr2, r3
002684  ab410000  lui r3, 4
002688  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
00268c  ab024000  lui r5, 1024
002690  7e8101e0  vmmov mr2, r3
002694  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002698  ab810000  lui r3, 8
00269c  eab33222  vor.s.mz vr7{mr1}, r5, vr3
0026a0  aba2aaaa  lui r5, 699050
0026a4  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0026a8  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
0026ac  9fa25215  addli r5, r5, 2730
0026b0  7e0b01a0  vmmov r22, mr2
0026b4  7e8101e0  vmmov mr2, r3
0026b8  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
0026bc  9b41fb00  srli r3, r22, 15
0026c0  6a200834  vor.u.mh vr0{mr2}, r16, vr0
0026c4  7e8102e0  vmmov mr2, r5
0026c8  e3025ff6  loadli.w r5,  -1240(r30)
0026cc  9b811100  andi r3, r3, 1
0026d0  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
0026d4  3bb00100  bneq r3, zero, 12
0026d8  7a38f240  vextracti.s r16, 15(vr4)
0026dc  5b010000  j 8
0026e0  7ab8f340  vextracti.s r16, 15(vr7)
0026e4  9b41eb00  srli r3, r22, 14
0026e8  9f120000  addli r5, zero, 1
0026ec  9b811100  andi r3, r3, 1
0026f0  7e8102e0  vmmov mr2, r5
0026f4  3bb00100  bneq r3, zero, 12
0026f8  fa38e240  vextracti.s r17, 14(vr4)
0026fc  5b010000  j 8
002700  fab8e340  vextracti.s r17, 14(vr7)
002704  9b41db00  srli r3, r22, 13
002708  9b811100  andi r3, r3, 1
00270c  3bb00100  bneq r3, zero, 12
002710  fa32d240  vextracti.s r5, 13(vr4)
002714  5b010000  j 8
002718  fab2d340  vextracti.s r5, 13(vr7)
00271c  9b41cb00  srli r3, r22, 12
002720  9b811100  andi r3, r3, 1
002724  3bb00100  bneq r3, zero, 12
002728  fa31c240  vextracti.s r3, 12(vr4)
00272c  5b010000  j 8
002730  fab1c340  vextracti.s r3, 12(vr7)
002734  9b44bb00  srli r9, r22, 11
002738  9b841400  andi r9, r9, 1
00273c  3bb00400  bneq r9, zero, 12
002740  7a39b240  vextracti.s r18, 11(vr4)
002744  5b010000  j 8
002748  7ab9b340  vextracti.s r18, 11(vr7)
00274c  9b44ab00  srli r9, r22, 10
002750  9b841400  andi r9, r9, 1
002754  3bb00400  bneq r9, zero, 12
002758  fa39a240  vextracti.s r19, 10(vr4)
00275c  5b010000  j 8
002760  fab9a340  vextracti.s r19, 10(vr7)
002764  9b449b00  srli r9, r22, 9
002768  9b841400  andi r9, r9, 1
00276c  3bb00400  bneq r9, zero, 12
002770  fa379240  vextracti.s r15, 9(vr4)
002774  5b010000  j 8
002778  fab79340  vextracti.s r15, 9(vr7)
00277c  9b448b00  srli r9, r22, 8
002780  9b841400  andi r9, r9, 1
002784  3bb00400  bneq r9, zero, 12
002788  fa348240  vextracti.s r9, 8(vr4)
00278c  5b010000  j 8
002790  fab48340  vextracti.s r9, 8(vr7)
002794  1b477b00  srli r14, r22, 7
002798  1b071700  andi r14, r14, 1
00279c  3b300700  bneq r14, zero, 12
0027a0  fa3b7240  vextracti.s r23, 7(vr4)
0027a4  5b010000  j 8
0027a8  fabb7340  vextracti.s r23, 7(vr7)
0027ac  1b476b00  srli r14, r22, 6
0027b0  1b071700  andi r14, r14, 1
0027b4  3b300700  bneq r14, zero, 12
0027b8  7a376240  vextracti.s r14, 6(vr4)
0027bc  5b010000  j 8
0027c0  7ab76340  vextracti.s r14, 6(vr7)
0027c4  1b4c5b00  srli r24, r22, 5
0027c8  1b0c1c00  andi r24, r24, 1
0027cc  3b300c00  bneq r24, zero, 12
0027d0  7a3c5240  vextracti.s r24, 5(vr4)
0027d4  5b010000  j 8
0027d8  7abc5340  vextracti.s r24, 5(vr7)
0027dc  9b4c4b00  srli r25, r22, 4
0027e0  9b8c1c00  andi r25, r25, 1
0027e4  3bb00c00  bneq r25, zero, 12
0027e8  fa3c4240  vextracti.s r25, 4(vr4)
0027ec  5b010000  j 8
0027f0  fabc4340  vextracti.s r25, 4(vr7)
0027f4  1b4d3b00  srli r26, r22, 3
0027f8  1b0d1d00  andi r26, r26, 1
0027fc  3b300d00  bneq r26, zero, 12
002800  7a3d3240  vextracti.s r26, 3(vr4)
002804  5b010000  j 8
002808  7abd3340  vextracti.s r26, 3(vr7)
00280c  9b4d2b00  srli r27, r22, 2
002810  9b8d1d00  andi r27, r27, 1
002814  3bb00d00  bneq r27, zero, 12
002818  fa3d2240  vextracti.s r27, 2(vr4)
00281c  5b010000  j 8
002820  fabd2340  vextracti.s r27, 2(vr7)
002824  1b4e1b00  srli r28, r22, 1
002828  1b0e1e00  andi r28, r28, 1
00282c  3b600e00  bneq r28, zero, 24
002830  7a3e1240  vextracti.s r28, 1(vr4)
002834  1b0b1b00  andi r22, r22, 1
002838  37600b00  beq r22, zero, 24
00283c  7abb0340  vextracti.s r22, 0(vr7)
002840  db020000  j 20
002844  7abe1340  vextracti.s r28, 1(vr7)
002848  1b0b1b00  andi r22, r22, 1
00284c  bb4f0bfe  bneq r22, zero, -16
002850  7a3b0240  vextracti.s r22, 0(vr4)
002854  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002858  e6c16580  vmerge_l.hf vr3, vr11, vr6
00285c  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
002860  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
002864  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002868  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
00286c  1f2b0000  addli r22, zero, 2
002870  7e010be0  vmmov mr2, r22
002874  1f0b1000  addli r22, zero, 8
002878  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
00287c  e69201c0  vabs.f vr5, vr3
002880  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
002884  7e010be0  vmmov mr2, r22
002888  1f0b2000  addli r22, zero, 16
00288c  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
002890  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002894  7e010be0  vmmov mr2, r22
002898  1f0b4000  addli r22, zero, 32
00289c  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
0028a0  7e010be0  vmmov mr2, r22
0028a4  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
0028a8  6a200736  vor.u.mh vr0{mr3}, r14, vr0
0028ac  1f070001  addli r14, zero, 128
0028b0  7e0107e0  vmmov mr2, r14
0028b4  1f070002  addli r14, zero, 256
0028b8  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0028bc  7e0107e0  vmmov mr2, r14
0028c0  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
0028c4  9f040004  addli r9, zero, 512
0028c8  7e8104e0  vmmov mr2, r9
0028cc  9f040008  addli r9, zero, 1024
0028d0  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
0028d4  7e8104e0  vmmov mr2, r9
0028d8  9f040010  addli r9, zero, 2048
0028dc  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0028e0  7e8104e0  vmmov mr2, r9
0028e4  9f040020  addli r9, zero, 4096
0028e8  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0028ec  7e8104e0  vmmov mr2, r9
0028f0  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0028f4  9f110000  addli r3, zero, 1
0028f8  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
0028fc  9f010040  addli r3, zero, 8192
002900  7e8101e0  vmmov mr2, r3
002904  ab410000  lui r3, 4
002908  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
00290c  ab024000  lui r5, 1024
002910  7e8101e0  vmmov mr2, r3
002914  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002918  ab810000  lui r3, 8
00291c  eab33222  vor.s.mz vr7{mr1}, r5, vr3
002920  aba2aaaa  lui r5, 699050
002924  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002928  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
00292c  9fa25215  addli r5, r5, 2730
002930  7e0b01a0  vmmov r22, mr2
002934  7e8101e0  vmmov mr2, r3
002938  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
00293c  9b41fb00  srli r3, r22, 15
002940  6a200834  vor.u.mh vr0{mr2}, r16, vr0
002944  7e8102e0  vmmov mr2, r5
002948  e3420ff6  loadli.w r5,  -1276(r30)
00294c  9b811100  andi r3, r3, 1
002950  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
002954  3bb00100  bneq r3, zero, 12
002958  7a38f240  vextracti.s r16, 15(vr4)
00295c  5b010000  j 8
002960  7ab8f340  vextracti.s r16, 15(vr7)
002964  9b41eb00  srli r3, r22, 14
002968  9f120000  addli r5, zero, 1
00296c  9b811100  andi r3, r3, 1
002970  7e8102e0  vmmov mr2, r5
002974  3bb00100  bneq r3, zero, 12
002978  fa38e240  vextracti.s r17, 14(vr4)
00297c  5b010000  j 8
002980  fab8e340  vextracti.s r17, 14(vr7)
002984  9b41db00  srli r3, r22, 13
002988  9b811100  andi r3, r3, 1
00298c  3bb00100  bneq r3, zero, 12
002990  fa32d240  vextracti.s r5, 13(vr4)
002994  5b010000  j 8
002998  fab2d340  vextracti.s r5, 13(vr7)
00299c  9b41cb00  srli r3, r22, 12
0029a0  9b811100  andi r3, r3, 1
0029a4  3bb00100  bneq r3, zero, 12
0029a8  fa31c240  vextracti.s r3, 12(vr4)
0029ac  5b010000  j 8
0029b0  fab1c340  vextracti.s r3, 12(vr7)
0029b4  9b44bb00  srli r9, r22, 11
0029b8  9b841400  andi r9, r9, 1
0029bc  3bb00400  bneq r9, zero, 12
0029c0  7a39b240  vextracti.s r18, 11(vr4)
0029c4  5b010000  j 8
0029c8  7ab9b340  vextracti.s r18, 11(vr7)
0029cc  9b44ab00  srli r9, r22, 10
0029d0  9b841400  andi r9, r9, 1
0029d4  3bb00400  bneq r9, zero, 12
0029d8  fa39a240  vextracti.s r19, 10(vr4)
0029dc  5b010000  j 8
0029e0  fab9a340  vextracti.s r19, 10(vr7)
0029e4  9b449b00  srli r9, r22, 9
0029e8  9b841400  andi r9, r9, 1
0029ec  3bb00400  bneq r9, zero, 12
0029f0  fa379240  vextracti.s r15, 9(vr4)
0029f4  5b010000  j 8
0029f8  fab79340  vextracti.s r15, 9(vr7)
0029fc  9b448b00  srli r9, r22, 8
002a00  9b841400  andi r9, r9, 1
002a04  3bb00400  bneq r9, zero, 12
002a08  fa348240  vextracti.s r9, 8(vr4)
002a0c  5b010000  j 8
002a10  fab48340  vextracti.s r9, 8(vr7)
002a14  1b477b00  srli r14, r22, 7
002a18  1b071700  andi r14, r14, 1
002a1c  3b300700  bneq r14, zero, 12
002a20  fa3b7240  vextracti.s r23, 7(vr4)
002a24  5b010000  j 8
002a28  fabb7340  vextracti.s r23, 7(vr7)
002a2c  1b476b00  srli r14, r22, 6
002a30  1b071700  andi r14, r14, 1
002a34  3b300700  bneq r14, zero, 12
002a38  7a376240  vextracti.s r14, 6(vr4)
002a3c  5b010000  j 8
002a40  7ab76340  vextracti.s r14, 6(vr7)
002a44  1b4c5b00  srli r24, r22, 5
002a48  1b0c1c00  andi r24, r24, 1
002a4c  3b300c00  bneq r24, zero, 12
002a50  7a3c5240  vextracti.s r24, 5(vr4)
002a54  5b010000  j 8
002a58  7abc5340  vextracti.s r24, 5(vr7)
002a5c  9b4c4b00  srli r25, r22, 4
002a60  9b8c1c00  andi r25, r25, 1
002a64  3bb00c00  bneq r25, zero, 12
002a68  fa3c4240  vextracti.s r25, 4(vr4)
002a6c  5b010000  j 8
002a70  fabc4340  vextracti.s r25, 4(vr7)
002a74  1b4d3b00  srli r26, r22, 3
002a78  1b0d1d00  andi r26, r26, 1
002a7c  3b300d00  bneq r26, zero, 12
002a80  7a3d3240  vextracti.s r26, 3(vr4)
002a84  5b010000  j 8
002a88  7abd3340  vextracti.s r26, 3(vr7)
002a8c  9b4d2b00  srli r27, r22, 2
002a90  9b8d1d00  andi r27, r27, 1
002a94  3bb00d00  bneq r27, zero, 12
002a98  fa3d2240  vextracti.s r27, 2(vr4)
002a9c  5b010000  j 8
002aa0  fabd2340  vextracti.s r27, 2(vr7)
002aa4  1b4e1b00  srli r28, r22, 1
002aa8  1b0e1e00  andi r28, r28, 1
002aac  3b600e00  bneq r28, zero, 24
002ab0  7a3e1240  vextracti.s r28, 1(vr4)
002ab4  1b0b1b00  andi r22, r22, 1
002ab8  37600b00  beq r22, zero, 24
002abc  7abb0340  vextracti.s r22, 0(vr7)
002ac0  db020000  j 20
002ac4  7abe1340  vextracti.s r28, 1(vr7)
002ac8  1b0b1b00  andi r22, r22, 1
002acc  bb4f0bfe  bneq r22, zero, -16
002ad0  7a3b0240  vextracti.s r22, 0(vr4)
002ad4  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002ad8  c2130fa2  vload_mask16.mz vr7{mr1}, 1280(r30)
002adc  e6c165a0  vmerge_h.hf vr3, vr11, vr6
002ae0  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
002ae4  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
002ae8  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002aec  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
002af0  1f2b0000  addli r22, zero, 2
002af4  7e010be0  vmmov mr2, r22
002af8  1f0b1000  addli r22, zero, 8
002afc  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
002b00  e69201c0  vabs.f vr5, vr3
002b04  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
002b08  7e010be0  vmmov mr2, r22
002b0c  1f0b2000  addli r22, zero, 16
002b10  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
002b14  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002b18  7e010be0  vmmov mr2, r22
002b1c  1f0b4000  addli r22, zero, 32
002b20  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
002b24  7e010be0  vmmov mr2, r22
002b28  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
002b2c  6a200736  vor.u.mh vr0{mr3}, r14, vr0
002b30  1f070001  addli r14, zero, 128
002b34  7e0107e0  vmmov mr2, r14
002b38  1f070002  addli r14, zero, 256
002b3c  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
002b40  7e0107e0  vmmov mr2, r14
002b44  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
002b48  9f040004  addli r9, zero, 512
002b4c  7e8104e0  vmmov mr2, r9
002b50  9f040008  addli r9, zero, 1024
002b54  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
002b58  7e8104e0  vmmov mr2, r9
002b5c  9f040010  addli r9, zero, 2048
002b60  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
002b64  7e8104e0  vmmov mr2, r9
002b68  9f040020  addli r9, zero, 4096
002b6c  6a200934  vor.u.mh vr0{mr2}, r18, vr0
002b70  7e8104e0  vmmov mr2, r9
002b74  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002b78  9f110000  addli r3, zero, 1
002b7c  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
002b80  9f010040  addli r3, zero, 8192
002b84  7e8101e0  vmmov mr2, r3
002b88  ab410000  lui r3, 4
002b8c  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
002b90  ab024000  lui r5, 1024
002b94  7e8101e0  vmmov mr2, r3
002b98  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002b9c  ab810000  lui r3, 8
002ba0  6ab33222  vor.s.mz vr6{mr1}, r5, vr3
002ba4  aba2aaaa  lui r5, 699050
002ba8  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002bac  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
002bb0  9fa25215  addli r5, r5, 2730
002bb4  7e0b01a0  vmmov r22, mr2
002bb8  7e8101e0  vmmov mr2, r3
002bbc  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
002bc0  9b41fb00  srli r3, r22, 15
002bc4  6a200834  vor.u.mh vr0{mr2}, r16, vr0
002bc8  7e8102e0  vmmov mr2, r5
002bcc  e3424ff6  loadli.w r5,  -1244(r30)
002bd0  9b811100  andi r3, r3, 1
002bd4  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
002bd8  3bb00100  bneq r3, zero, 12
002bdc  7a38f240  vextracti.s r16, 15(vr4)
002be0  5b010000  j 8
002be4  7a38f340  vextracti.s r16, 15(vr6)
002be8  9b41eb00  srli r3, r22, 14
002bec  9f120000  addli r5, zero, 1
002bf0  9b811100  andi r3, r3, 1
002bf4  7e8102e0  vmmov mr2, r5
002bf8  3bb00100  bneq r3, zero, 12
002bfc  fa38e240  vextracti.s r17, 14(vr4)
002c00  5b010000  j 8
002c04  fa38e340  vextracti.s r17, 14(vr6)
002c08  9b41db00  srli r3, r22, 13
002c0c  9b811100  andi r3, r3, 1
002c10  3bb00100  bneq r3, zero, 12
002c14  fa32d240  vextracti.s r5, 13(vr4)
002c18  5b010000  j 8
002c1c  fa32d340  vextracti.s r5, 13(vr6)
002c20  9b41cb00  srli r3, r22, 12
002c24  9b811100  andi r3, r3, 1
002c28  3bb00100  bneq r3, zero, 12
002c2c  fa31c240  vextracti.s r3, 12(vr4)
002c30  5b010000  j 8
002c34  fa31c340  vextracti.s r3, 12(vr6)
002c38  9b44bb00  srli r9, r22, 11
002c3c  9b841400  andi r9, r9, 1
002c40  3bb00400  bneq r9, zero, 12
002c44  7a39b240  vextracti.s r18, 11(vr4)
002c48  5b010000  j 8
002c4c  7a39b340  vextracti.s r18, 11(vr6)
002c50  9b44ab00  srli r9, r22, 10
002c54  9b841400  andi r9, r9, 1
002c58  3bb00400  bneq r9, zero, 12
002c5c  fa39a240  vextracti.s r19, 10(vr4)
002c60  5b010000  j 8
002c64  fa39a340  vextracti.s r19, 10(vr6)
002c68  9b449b00  srli r9, r22, 9
002c6c  9b841400  andi r9, r9, 1
002c70  3bb00400  bneq r9, zero, 12
002c74  fa379240  vextracti.s r15, 9(vr4)
002c78  5b010000  j 8
002c7c  fa379340  vextracti.s r15, 9(vr6)
002c80  9b448b00  srli r9, r22, 8
002c84  9b841400  andi r9, r9, 1
002c88  3bb00400  bneq r9, zero, 12
002c8c  fa348240  vextracti.s r9, 8(vr4)
002c90  5b010000  j 8
002c94  fa348340  vextracti.s r9, 8(vr6)
002c98  1b477b00  srli r14, r22, 7
002c9c  1b071700  andi r14, r14, 1
002ca0  3b300700  bneq r14, zero, 12
002ca4  fa3b7240  vextracti.s r23, 7(vr4)
002ca8  5b010000  j 8
002cac  fa3b7340  vextracti.s r23, 7(vr6)
002cb0  1b476b00  srli r14, r22, 6
002cb4  1b071700  andi r14, r14, 1
002cb8  3b300700  bneq r14, zero, 12
002cbc  7a376240  vextracti.s r14, 6(vr4)
002cc0  5b010000  j 8
002cc4  7a376340  vextracti.s r14, 6(vr6)
002cc8  1b4c5b00  srli r24, r22, 5
002ccc  1b0c1c00  andi r24, r24, 1
002cd0  3b300c00  bneq r24, zero, 12
002cd4  7a3c5240  vextracti.s r24, 5(vr4)
002cd8  5b010000  j 8
002cdc  7a3c5340  vextracti.s r24, 5(vr6)
002ce0  9b4c4b00  srli r25, r22, 4
002ce4  9b8c1c00  andi r25, r25, 1
002ce8  3bb00c00  bneq r25, zero, 12
002cec  fa3c4240  vextracti.s r25, 4(vr4)
002cf0  5b010000  j 8
002cf4  fa3c4340  vextracti.s r25, 4(vr6)
002cf8  1b4d3b00  srli r26, r22, 3
002cfc  1b0d1d00  andi r26, r26, 1
002d00  3b300d00  bneq r26, zero, 12
002d04  7a3d3240  vextracti.s r26, 3(vr4)
002d08  5b010000  j 8
002d0c  7a3d3340  vextracti.s r26, 3(vr6)
002d10  9b4d2b00  srli r27, r22, 2
002d14  9b8d1d00  andi r27, r27, 1
002d18  3bb00d00  bneq r27, zero, 12
002d1c  fa3d2240  vextracti.s r27, 2(vr4)
002d20  5b010000  j 8
002d24  fa3d2340  vextracti.s r27, 2(vr6)
002d28  1b4e1b00  srli r28, r22, 1
002d2c  1b0e1e00  andi r28, r28, 1
002d30  3b600e00  bneq r28, zero, 24
002d34  7a3e1240  vextracti.s r28, 1(vr4)
002d38  1b0b1b00  andi r22, r22, 1
002d3c  37600b00  beq r22, zero, 24
002d40  7a3b0340  vextracti.s r22, 0(vr6)
002d44  db020000  j 20
002d48  7a3e1340  vextracti.s r28, 1(vr6)
002d4c  1b0b1b00  andi r22, r22, 1
002d50  bb4f0bfe  bneq r22, zero, -16
002d54  7a3b0240  vextracti.s r22, 0(vr4)
002d58  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002d5c  e6c17580  vmerge_l.hf vr3, vr11, vr7
002d60  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
002d64  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
002d68  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002d6c  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
002d70  1f2b0000  addli r22, zero, 2
002d74  7e010be0  vmmov mr2, r22
002d78  1f0b1000  addli r22, zero, 8
002d7c  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
002d80  e69201c0  vabs.f vr5, vr3
002d84  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
002d88  7e010be0  vmmov mr2, r22
002d8c  1f0b2000  addli r22, zero, 16
002d90  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
002d94  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002d98  7e010be0  vmmov mr2, r22
002d9c  1f0b4000  addli r22, zero, 32
002da0  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
002da4  7e010be0  vmmov mr2, r22
002da8  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
002dac  6a200736  vor.u.mh vr0{mr3}, r14, vr0
002db0  1f070001  addli r14, zero, 128
002db4  7e0107e0  vmmov mr2, r14
002db8  1f070002  addli r14, zero, 256
002dbc  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
002dc0  7e0107e0  vmmov mr2, r14
002dc4  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
002dc8  9f040004  addli r9, zero, 512
002dcc  7e8104e0  vmmov mr2, r9
002dd0  9f040008  addli r9, zero, 1024
002dd4  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
002dd8  7e8104e0  vmmov mr2, r9
002ddc  9f040010  addli r9, zero, 2048
002de0  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
002de4  7e8104e0  vmmov mr2, r9
002de8  9f040020  addli r9, zero, 4096
002dec  6a200934  vor.u.mh vr0{mr2}, r18, vr0
002df0  7e8104e0  vmmov mr2, r9
002df4  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002df8  9f110000  addli r3, zero, 1
002dfc  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
002e00  9f010040  addli r3, zero, 8192
002e04  7e8101e0  vmmov mr2, r3
002e08  ab410000  lui r3, 4
002e0c  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
002e10  ab024000  lui r5, 1024
002e14  7e8101e0  vmmov mr2, r3
002e18  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002e1c  ab810000  lui r3, 8
002e20  6ab33222  vor.s.mz vr6{mr1}, r5, vr3
002e24  aba2aaaa  lui r5, 699050
002e28  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002e2c  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
002e30  9fa25215  addli r5, r5, 2730
002e34  7e0b01a0  vmmov r22, mr2
002e38  7e8101e0  vmmov mr2, r3
002e3c  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
002e40  9b41fb00  srli r3, r22, 15
002e44  6a200834  vor.u.mh vr0{mr2}, r16, vr0
002e48  7e8102e0  vmmov mr2, r5
002e4c  e3020ff6  loadli.w r5,  -1280(r30)
002e50  9b811100  andi r3, r3, 1
002e54  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
002e58  3bb00100  bneq r3, zero, 12
002e5c  7a38f240  vextracti.s r16, 15(vr4)
002e60  5b010000  j 8
002e64  7a38f340  vextracti.s r16, 15(vr6)
002e68  9b41eb00  srli r3, r22, 14
002e6c  9f120000  addli r5, zero, 1
002e70  9b811100  andi r3, r3, 1
002e74  7e8102e0  vmmov mr2, r5
002e78  3bb00100  bneq r3, zero, 12
002e7c  fa38e240  vextracti.s r17, 14(vr4)
002e80  5b010000  j 8
002e84  fa38e340  vextracti.s r17, 14(vr6)
002e88  9b41db00  srli r3, r22, 13
002e8c  9b811100  andi r3, r3, 1
002e90  3bb00100  bneq r3, zero, 12
002e94  fa32d240  vextracti.s r5, 13(vr4)
002e98  5b010000  j 8
002e9c  fa32d340  vextracti.s r5, 13(vr6)
002ea0  9b41cb00  srli r3, r22, 12
002ea4  9b811100  andi r3, r3, 1
002ea8  3bb00100  bneq r3, zero, 12
002eac  fa31c240  vextracti.s r3, 12(vr4)
002eb0  5b010000  j 8
002eb4  fa31c340  vextracti.s r3, 12(vr6)
002eb8  9b44bb00  srli r9, r22, 11
002ebc  9b841400  andi r9, r9, 1
002ec0  3bb00400  bneq r9, zero, 12
002ec4  7a39b240  vextracti.s r18, 11(vr4)
002ec8  5b010000  j 8
002ecc  7a39b340  vextracti.s r18, 11(vr6)
002ed0  9b44ab00  srli r9, r22, 10
002ed4  9b841400  andi r9, r9, 1
002ed8  3bb00400  bneq r9, zero, 12
002edc  fa39a240  vextracti.s r19, 10(vr4)
002ee0  5b010000  j 8
002ee4  fa39a340  vextracti.s r19, 10(vr6)
002ee8  9b449b00  srli r9, r22, 9
002eec  9b841400  andi r9, r9, 1
002ef0  3bb00400  bneq r9, zero, 12
002ef4  fa379240  vextracti.s r15, 9(vr4)
002ef8  5b010000  j 8
002efc  fa379340  vextracti.s r15, 9(vr6)
002f00  9b448b00  srli r9, r22, 8
002f04  9b841400  andi r9, r9, 1
002f08  3bb00400  bneq r9, zero, 12
002f0c  fa348240  vextracti.s r9, 8(vr4)
002f10  5b010000  j 8
002f14  fa348340  vextracti.s r9, 8(vr6)
002f18  1b477b00  srli r14, r22, 7
002f1c  1b071700  andi r14, r14, 1
002f20  3b300700  bneq r14, zero, 12
002f24  fa3b7240  vextracti.s r23, 7(vr4)
002f28  5b010000  j 8
002f2c  fa3b7340  vextracti.s r23, 7(vr6)
002f30  1b476b00  srli r14, r22, 6
002f34  1b071700  andi r14, r14, 1
002f38  3b300700  bneq r14, zero, 12
002f3c  7a376240  vextracti.s r14, 6(vr4)
002f40  5b010000  j 8
002f44  7a376340  vextracti.s r14, 6(vr6)
002f48  1b4c5b00  srli r24, r22, 5
002f4c  1b0c1c00  andi r24, r24, 1
002f50  3b300c00  bneq r24, zero, 12
002f54  7a3c5240  vextracti.s r24, 5(vr4)
002f58  5b010000  j 8
002f5c  7a3c5340  vextracti.s r24, 5(vr6)
002f60  9b4c4b00  srli r25, r22, 4
002f64  9b8c1c00  andi r25, r25, 1
002f68  3bb00c00  bneq r25, zero, 12
002f6c  fa3c4240  vextracti.s r25, 4(vr4)
002f70  5b010000  j 8
002f74  fa3c4340  vextracti.s r25, 4(vr6)
002f78  1b4d3b00  srli r26, r22, 3
002f7c  1b0d1d00  andi r26, r26, 1
002f80  3b300d00  bneq r26, zero, 12
002f84  7a3d3240  vextracti.s r26, 3(vr4)
002f88  5b010000  j 8
002f8c  7a3d3340  vextracti.s r26, 3(vr6)
002f90  9b4d2b00  srli r27, r22, 2
002f94  9b8d1d00  andi r27, r27, 1
002f98  3bb00d00  bneq r27, zero, 12
002f9c  fa3d2240  vextracti.s r27, 2(vr4)
002fa0  5b010000  j 8
002fa4  fa3d2340  vextracti.s r27, 2(vr6)
002fa8  1b4e1b00  srli r28, r22, 1
002fac  1b0e1e00  andi r28, r28, 1
002fb0  3b600e00  bneq r28, zero, 24
002fb4  7a3e1240  vextracti.s r28, 1(vr4)
002fb8  1b0b1b00  andi r22, r22, 1
002fbc  37600b00  beq r22, zero, 24
002fc0  7a3b0340  vextracti.s r22, 0(vr6)
002fc4  db020000  j 20
002fc8  7a3e1340  vextracti.s r28, 1(vr6)
002fcc  1b0b1b00  andi r22, r22, 1
002fd0  bb4f0bfe  bneq r22, zero, -16
002fd4  7a3b0240  vextracti.s r22, 0(vr4)
002fd8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002fdc  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
002fe0  e6c175a0  vmerge_h.hf vr3, vr11, vr7
002fe4  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
002fe8  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
002fec  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002ff0  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
002ff4  1f2b0000  addli r22, zero, 2
002ff8  7e010be0  vmmov mr2, r22
002ffc  1f0b1000  addli r22, zero, 8
003000  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
003004  e69201c0  vabs.f vr5, vr3
003008  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
00300c  7e010be0  vmmov mr2, r22
003010  1f0b2000  addli r22, zero, 16
003014  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
003018  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
00301c  7e010be0  vmmov mr2, r22
003020  1f0b4000  addli r22, zero, 32
003024  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
003028  7e010be0  vmmov mr2, r22
00302c  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
003030  6a200736  vor.u.mh vr0{mr3}, r14, vr0
003034  1f070001  addli r14, zero, 128
003038  7e0107e0  vmmov mr2, r14
00303c  1f070002  addli r14, zero, 256
003040  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
003044  7e0107e0  vmmov mr2, r14
003048  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
00304c  9f040004  addli r9, zero, 512
003050  7e8104e0  vmmov mr2, r9
003054  9f040008  addli r9, zero, 1024
003058  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
00305c  7e8104e0  vmmov mr2, r9
003060  9f040010  addli r9, zero, 2048
003064  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
003068  7e8104e0  vmmov mr2, r9
00306c  9f040020  addli r9, zero, 4096
003070  6a200934  vor.u.mh vr0{mr2}, r18, vr0
003074  7e8104e0  vmmov mr2, r9
003078  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
00307c  9f110000  addli r3, zero, 1
003080  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
003084  9f010040  addli r3, zero, 8192
003088  7e8101e0  vmmov mr2, r3
00308c  ab410000  lui r3, 4
003090  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
003094  ab024000  lui r5, 1024
003098  7e8101e0  vmmov mr2, r3
00309c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
0030a0  ab810000  lui r3, 8
0030a4  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0030a8  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
0030ac  eab23222  vor.s.mz vr5{mr1}, r5, vr3
0030b0  aba2aaaa  lui r5, 699050
0030b4  7e0b01a0  vmmov r22, mr2
0030b8  7e8101e0  vmmov mr2, r3
0030bc  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
0030c0  9fa25215  addli r5, r5, 2730
0030c4  9b41fb00  srli r3, r22, 15
0030c8  6a200834  vor.u.mh vr0{mr2}, r16, vr0
0030cc  7e8102e0  vmmov mr2, r5
0030d0  e3024ff6  loadli.w r5,  -1248(r30)
0030d4  9b811100  andi r3, r3, 1
0030d8  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
0030dc  3bb00100  bneq r3, zero, 12
0030e0  7a38f240  vextracti.s r16, 15(vr4)
0030e4  5b010000  j 8
0030e8  7ab8f240  vextracti.s r16, 15(vr5)
0030ec  9b41eb00  srli r3, r22, 14
0030f0  9f120000  addli r5, zero, 1
0030f4  9b811100  andi r3, r3, 1
0030f8  7e8102e0  vmmov mr2, r5
0030fc  3bb00100  bneq r3, zero, 12
003100  fa38e240  vextracti.s r17, 14(vr4)
003104  5b010000  j 8
003108  fab8e240  vextracti.s r17, 14(vr5)
00310c  9b41db00  srli r3, r22, 13
003110  9b811100  andi r3, r3, 1
003114  3bb00100  bneq r3, zero, 12
003118  fa32d240  vextracti.s r5, 13(vr4)
00311c  5b010000  j 8
003120  fab2d240  vextracti.s r5, 13(vr5)
003124  9b41cb00  srli r3, r22, 12
003128  9b811100  andi r3, r3, 1
00312c  3bb00100  bneq r3, zero, 12
003130  fa31c240  vextracti.s r3, 12(vr4)
003134  5b010000  j 8
003138  fab1c240  vextracti.s r3, 12(vr5)
00313c  9b44bb00  srli r9, r22, 11
003140  9b841400  andi r9, r9, 1
003144  3bb00400  bneq r9, zero, 12
003148  7a39b240  vextracti.s r18, 11(vr4)
00314c  5b010000  j 8
003150  7ab9b240  vextracti.s r18, 11(vr5)
003154  9b44ab00  srli r9, r22, 10
003158  9b841400  andi r9, r9, 1
00315c  3bb00400  bneq r9, zero, 12
003160  fa39a240  vextracti.s r19, 10(vr4)
003164  5b010000  j 8
003168  fab9a240  vextracti.s r19, 10(vr5)
00316c  9b449b00  srli r9, r22, 9
003170  9b841400  andi r9, r9, 1
003174  3bb00400  bneq r9, zero, 12
003178  fa379240  vextracti.s r15, 9(vr4)
00317c  5b010000  j 8
003180  fab79240  vextracti.s r15, 9(vr5)
003184  9b448b00  srli r9, r22, 8
003188  9b841400  andi r9, r9, 1
00318c  3bb00400  bneq r9, zero, 12
003190  fa348240  vextracti.s r9, 8(vr4)
003194  5b010000  j 8
003198  fab48240  vextracti.s r9, 8(vr5)
00319c  1b477b00  srli r14, r22, 7
0031a0  1b071700  andi r14, r14, 1
0031a4  3b300700  bneq r14, zero, 12
0031a8  fa3b7240  vextracti.s r23, 7(vr4)
0031ac  5b010000  j 8
0031b0  fabb7240  vextracti.s r23, 7(vr5)
0031b4  1b476b00  srli r14, r22, 6
0031b8  1b071700  andi r14, r14, 1
0031bc  3b300700  bneq r14, zero, 12
0031c0  7a376240  vextracti.s r14, 6(vr4)
0031c4  5b010000  j 8
0031c8  7ab76240  vextracti.s r14, 6(vr5)
0031cc  1b4c5b00  srli r24, r22, 5
0031d0  1b0c1c00  andi r24, r24, 1
0031d4  3b300c00  bneq r24, zero, 12
0031d8  7a3c5240  vextracti.s r24, 5(vr4)
0031dc  5b010000  j 8
0031e0  7abc5240  vextracti.s r24, 5(vr5)
0031e4  9b4c4b00  srli r25, r22, 4
0031e8  9b8c1c00  andi r25, r25, 1
0031ec  3bb00c00  bneq r25, zero, 12
0031f0  fa3c4240  vextracti.s r25, 4(vr4)
0031f4  5b010000  j 8
0031f8  fabc4240  vextracti.s r25, 4(vr5)
0031fc  1b4d3b00  srli r26, r22, 3
003200  1b0d1d00  andi r26, r26, 1
003204  3b300d00  bneq r26, zero, 12
003208  7a3d3240  vextracti.s r26, 3(vr4)
00320c  5b010000  j 8
003210  7abd3240  vextracti.s r26, 3(vr5)
003214  9b4d2b00  srli r27, r22, 2
003218  9b8d1d00  andi r27, r27, 1
00321c  3bb00d00  bneq r27, zero, 12
003220  fa3d2240  vextracti.s r27, 2(vr4)
003224  5b010000  j 8
003228  fabd2240  vextracti.s r27, 2(vr5)
00322c  1b4e1b00  srli r28, r22, 1
003230  1b0e1e00  andi r28, r28, 1
003234  3b600e00  bneq r28, zero, 24
003238  7a3e1240  vextracti.s r28, 1(vr4)
00323c  1b0b1b00  andi r22, r22, 1
003240  37600b00  beq r22, zero, 24
003244  7abb0240  vextracti.s r22, 0(vr5)
003248  db020000  j 20
00324c  7abe1240  vextracti.s r28, 1(vr5)
003250  1b0b1b00  andi r22, r22, 1
003254  bb4f0bfe  bneq r22, zero, -16
003258  7a3b0240  vextracti.s r22, 0(vr4)
00325c  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
003260  e6c16580  vmerge_l.hf vr3, vr11, vr6
003264  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
003268  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
00326c  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
003270  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
003274  1f2b0000  addli r22, zero, 2
003278  7e010be0  vmmov mr2, r22
00327c  1f0b1000  addli r22, zero, 8
003280  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
003284  e69201c0  vabs.f vr5, vr3
003288  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
00328c  7e010be0  vmmov mr2, r22
003290  1f0b2000  addli r22, zero, 16
003294  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
003298  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
00329c  7e010be0  vmmov mr2, r22
0032a0  1f0b4000  addli r22, zero, 32
0032a4  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
0032a8  7e010be0  vmmov mr2, r22
0032ac  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
0032b0  6a200736  vor.u.mh vr0{mr3}, r14, vr0
0032b4  1f070001  addli r14, zero, 128
0032b8  7e0107e0  vmmov mr2, r14
0032bc  1f070002  addli r14, zero, 256
0032c0  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0032c4  7e0107e0  vmmov mr2, r14
0032c8  6aa00434  vor.u.mh vr0{mr2}, r9, vr0
0032cc  9f040004  addli r9, zero, 512
0032d0  7e8104e0  vmmov mr2, r9
0032d4  9f040008  addli r9, zero, 1024
0032d8  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
0032dc  7e8104e0  vmmov mr2, r9
0032e0  9f040010  addli r9, zero, 2048
0032e4  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0032e8  7e8104e0  vmmov mr2, r9
0032ec  9f040020  addli r9, zero, 4096
0032f0  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0032f4  7e8104e0  vmmov mr2, r9
0032f8  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0032fc  9f110000  addli r3, zero, 1
003300  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
003304  9f010040  addli r3, zero, 8192
003308  7e8101e0  vmmov mr2, r3
00330c  ab410000  lui r3, 4
003310  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
003314  ab024000  lui r5, 1024
003318  7e8101e0  vmmov mr2, r3
00331c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
003320  ab810000  lui r3, 8
003324  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
003328  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
00332c  eab23222  vor.s.mz vr5{mr1}, r5, vr3
003330  aba2aaaa  lui r5, 699050
003334  7e0b01a0  vmmov r22, mr2
003338  7e8101e0  vmmov mr2, r3
00333c  12b24602  vadd.s.mz vr4{mr1}, r13, vr4
003340  9fa25215  addli r5, r5, 2730
003344  9b41fb00  srli r3, r22, 15
003348  6a200834  vor.u.mh vr0{mr2}, r16, vr0
00334c  7e8102e0  vmmov mr2, r5
003350  e342fff5  loadli.w r5,  -1284(r30)
003354  9b811100  andi r3, r3, 1
003358  62c50214  vscatter.mh vr0{mr2}, vr10{r5}
00335c  3bb00100  bneq r3, zero, 12
003360  7a38f240  vextracti.s r16, 15(vr4)
003364  5b010000  j 8
003368  7ab8f240  vextracti.s r16, 15(vr5)
00336c  9b41eb00  srli r3, r22, 14
003370  9f120000  addli r5, zero, 1
003374  9b811100  andi r3, r3, 1
003378  7e8102e0  vmmov mr2, r5
00337c  3bb00100  bneq r3, zero, 12
003380  fa38e240  vextracti.s r17, 14(vr4)
003384  5b010000  j 8
003388  fab8e240  vextracti.s r17, 14(vr5)
00338c  9b41db00  srli r3, r22, 13
003390  9b811100  andi r3, r3, 1
003394  3bb00100  bneq r3, zero, 12
003398  fa32d240  vextracti.s r5, 13(vr4)
00339c  5b010000  j 8
0033a0  fab2d240  vextracti.s r5, 13(vr5)
0033a4  9b41cb00  srli r3, r22, 12
0033a8  9b811100  andi r3, r3, 1
0033ac  3bb00100  bneq r3, zero, 12
0033b0  fa31c240  vextracti.s r3, 12(vr4)
0033b4  5b010000  j 8
0033b8  fab1c240  vextracti.s r3, 12(vr5)
0033bc  9b44bb00  srli r9, r22, 11
0033c0  9b841400  andi r9, r9, 1
0033c4  3bb00400  bneq r9, zero, 12
0033c8  7a39b240  vextracti.s r18, 11(vr4)
0033cc  5b010000  j 8
0033d0  7ab9b240  vextracti.s r18, 11(vr5)
0033d4  9b44ab00  srli r9, r22, 10
0033d8  9b841400  andi r9, r9, 1
0033dc  3bb00400  bneq r9, zero, 12
0033e0  fa39a240  vextracti.s r19, 10(vr4)
0033e4  5b010000  j 8
0033e8  fab9a240  vextracti.s r19, 10(vr5)
0033ec  9b449b00  srli r9, r22, 9
0033f0  9b841400  andi r9, r9, 1
0033f4  3bb00400  bneq r9, zero, 12
0033f8  fa379240  vextracti.s r15, 9(vr4)
0033fc  5b010000  j 8
003400  fab79240  vextracti.s r15, 9(vr5)
003404  9b448b00  srli r9, r22, 8
003408  9b841400  andi r9, r9, 1
00340c  3bb00400  bneq r9, zero, 12
003410  fa348240  vextracti.s r9, 8(vr4)
003414  5b010000  j 8
003418  fab48240  vextracti.s r9, 8(vr5)
00341c  1b477b00  srli r14, r22, 7
003420  1b071700  andi r14, r14, 1
003424  3b300700  bneq r14, zero, 12
003428  fa3b7240  vextracti.s r23, 7(vr4)
00342c  5b010000  j 8
003430  fabb7240  vextracti.s r23, 7(vr5)
003434  1b476b00  srli r14, r22, 6
003438  1b071700  andi r14, r14, 1
00343c  3b300700  bneq r14, zero, 12
003440  7a376240  vextracti.s r14, 6(vr4)
003444  5b010000  j 8
003448  7ab76240  vextracti.s r14, 6(vr5)
00344c  1b4c5b00  srli r24, r22, 5
003450  1b0c1c00  andi r24, r24, 1
003454  3b300c00  bneq r24, zero, 12
003458  7a3c5240  vextracti.s r24, 5(vr4)
00345c  5b010000  j 8
003460  7abc5240  vextracti.s r24, 5(vr5)
003464  9b4c4b00  srli r25, r22, 4
003468  9b8c1c00  andi r25, r25, 1
00346c  3bb00c00  bneq r25, zero, 12
003470  fa3c4240  vextracti.s r25, 4(vr4)
003474  5b010000  j 8
003478  fabc4240  vextracti.s r25, 4(vr5)
00347c  1b4d3b00  srli r26, r22, 3
003480  1b0d1d00  andi r26, r26, 1
003484  3b300d00  bneq r26, zero, 12
003488  7a3d3240  vextracti.s r26, 3(vr4)
00348c  5b010000  j 8
003490  7abd3240  vextracti.s r26, 3(vr5)
003494  9b4d2b00  srli r27, r22, 2
003498  9b8d1d00  andi r27, r27, 1
00349c  3bb00d00  bneq r27, zero, 12
0034a0  fa3d2240  vextracti.s r27, 2(vr4)
0034a4  5b010000  j 8
0034a8  fabd2240  vextracti.s r27, 2(vr5)
0034ac  1b4e1b00  srli r28, r22, 1
0034b0  1b0e1e00  andi r28, r28, 1
0034b4  3b600e00  bneq r28, zero, 24
0034b8  7a3e1240  vextracti.s r28, 1(vr4)
0034bc  1b0b1b00  andi r22, r22, 1
0034c0  37600b00  beq r22, zero, 24
0034c4  7abb0240  vextracti.s r22, 0(vr5)
0034c8  db020000  j 20
0034cc  7abe1240  vextracti.s r28, 1(vr5)
0034d0  1b0b1b00  andi r22, r22, 1
0034d4  bb4f0bfe  bneq r22, zero, -16
0034d8  7a3b0240  vextracti.s r22, 0(vr4)
0034dc  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0034e0  e6c165a0  vmerge_h.hf vr3, vr11, vr6
0034e4  92113a02  vadd.f.mz.rn vr3{mr1}, r20, vr3
0034e8  8a113202  vmul.f.mz.rn vr3{mr1}, r4, vr3
0034ec  1f020010  addli r4, zero, 2048
0034f0  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0034f4  6a200b34  vor.u.mh vr0{mr2}, r22, vr0
0034f8  1f2b0000  addli r22, zero, 2
0034fc  7e010be0  vmmov mr2, r22
003500  1f0b1000  addli r22, zero, 8
003504  eeb030c2  vsrl.s.mz vr1{mr1}, vr1, vr3
003508  669201c0  vabs.f vr4, vr3
00350c  6a200e34  vor.u.mh vr0{mr2}, r28, vr0
003510  76214142  vlt.u.mz mr2{mr1}, vr2, vr4
003514  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
003518  7e000be0  vmmov mr0, r22
00351c  1f0b2000  addli r22, zero, 16
003520  6a200d30  vor.u.mh vr0{mr0}, r26, vr0
003524  7e000be0  vmmov mr0, r22
003528  1f0b4000  addli r22, zero, 32
00352c  6aa00c30  vor.u.mh vr0{mr0}, r25, vr0
003530  7e000be0  vmmov mr0, r22
003534  6a200c30  vor.u.mh vr0{mr0}, r24, vr0
003538  6a200736  vor.u.mh vr0{mr3}, r14, vr0
00353c  1f070001  addli r14, zero, 128
003540  7e0007e0  vmmov mr0, r14
003544  1f070002  addli r14, zero, 256
003548  6aa00b30  vor.u.mh vr0{mr0}, r23, vr0
00354c  7e0007e0  vmmov mr0, r14
003550  6aa00430  vor.u.mh vr0{mr0}, r9, vr0
003554  9f040004  addli r9, zero, 512
003558  7e8004e0  vmmov mr0, r9
00355c  9f040008  addli r9, zero, 1024
003560  6aa00730  vor.u.mh vr0{mr0}, r15, vr0
003564  7e8004e0  vmmov mr0, r9
003568  6aa00930  vor.u.mh vr0{mr0}, r19, vr0
00356c  7e0002e0  vmmov mr0, r4
003570  1f020020  addli r4, zero, 4096
003574  6a200930  vor.u.mh vr0{mr0}, r18, vr0
003578  7e0002e0  vmmov mr0, r4
00357c  2b024000  lui r4, 1024
003580  6a313222  vor.s.mz vr2{mr1}, r4, vr3
003584  2ba2aaaa  lui r4, 699050
003588  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00358c  9f110000  addli r3, zero, 1
003590  1f225215  addli r4, r4, 2730
003594  eab01102  vand.s.mz vr1{mr1}, r3, vr1
003598  9f010040  addli r3, zero, 8192
00359c  7e8001e0  vmmov mr0, r3
0035a0  ab410000  lui r3, 4
0035a4  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
0035a8  7e8001e0  vmmov mr0, r3
0035ac  96b01102  vadd.s.mz vr1{mr1}, vr3, vr1
0035b0  ab810000  lui r3, 8
0035b4  6aa00830  vor.u.mh vr0{mr0}, r17, vr0
0035b8  7e8001e0  vmmov mr0, r3
0035bc  fe0801a0  vmmov r17, mr2
0035c0  9bc1f800  srli r3, r17, 15
0035c4  92b01602  vadd.s.mz vr1{mr1}, r13, vr1
0035c8  9b811100  andi r3, r3, 1
0035cc  6a200830  vor.u.mh vr0{mr0}, r16, vr0
0035d0  7e0002e0  vmmov mr0, r4
0035d4  63423ff6  loadli.w r4,  -1252(r30)
0035d8  62450210  vscatter.mh vr0{mr0}, vr10{r4}
0035dc  3bb00100  bneq r3, zero, 12
0035e0  7ab2f040  vextracti.s r4, 15(vr1)
0035e4  5b010000  j 8
0035e8  7a32f140  vextracti.s r4, 15(vr2)
0035ec  9bc1e800  srli r3, r17, 14
0035f0  9f120000  addli r5, zero, 1
0035f4  634ebff5  loadli.w r28,  -1316(r30)
0035f8  9f0d0004  addli r27, zero, 512
0035fc  9b811100  andi r3, r3, 1
003600  7e8102e0  vmmov mr2, r5
003604  3bb00100  bneq r3, zero, 12
003608  fab2e040  vextracti.s r5, 14(vr1)
00360c  5b010000  j 8
003610  fa32e140  vextracti.s r5, 14(vr2)
003614  9bc1d800  srli r3, r17, 13
003618  9b811100  andi r3, r3, 1
00361c  3bb00100  bneq r3, zero, 12
003620  fab1d040  vextracti.s r3, 13(vr1)
003624  5b010000  j 8
003628  fa31d140  vextracti.s r3, 13(vr2)
00362c  9bc4c800  srli r9, r17, 12
003630  9b841400  andi r9, r9, 1
003634  3bb00400  bneq r9, zero, 12
003638  7ab8c040  vextracti.s r16, 12(vr1)
00363c  5b010000  j 8
003640  7a38c140  vextracti.s r16, 12(vr2)
003644  9bc4b800  srli r9, r17, 11
003648  9b841400  andi r9, r9, 1
00364c  3bb00400  bneq r9, zero, 12
003650  7ab9b040  vextracti.s r18, 11(vr1)
003654  5b010000  j 8
003658  7a39b140  vextracti.s r18, 11(vr2)
00365c  9bc4a800  srli r9, r17, 10
003660  9b841400  andi r9, r9, 1
003664  3bb00400  bneq r9, zero, 12
003668  fab9a040  vextracti.s r19, 10(vr1)
00366c  5b010000  j 8
003670  fa39a140  vextracti.s r19, 10(vr2)
003674  9bc49800  srli r9, r17, 9
003678  9b841400  andi r9, r9, 1
00367c  3bb00400  bneq r9, zero, 12
003680  fab79040  vextracti.s r15, 9(vr1)
003684  5b010000  j 8
003688  fa379140  vextracti.s r15, 9(vr2)
00368c  9bc48800  srli r9, r17, 8
003690  9b841400  andi r9, r9, 1
003694  3bb00400  bneq r9, zero, 12
003698  fab48040  vextracti.s r9, 8(vr1)
00369c  5b010000  j 8
0036a0  fa348140  vextracti.s r9, 8(vr2)
0036a4  1bc77800  srli r14, r17, 7
0036a8  1b071700  andi r14, r14, 1
0036ac  3b300700  bneq r14, zero, 12
0036b0  7aba7040  vextracti.s r20, 7(vr1)
0036b4  5b010000  j 8
0036b8  7a3a7140  vextracti.s r20, 7(vr2)
0036bc  1bc76800  srli r14, r17, 6
0036c0  1b071700  andi r14, r14, 1
0036c4  3b300700  bneq r14, zero, 12
0036c8  7ab76040  vextracti.s r14, 6(vr1)
0036cc  5b010000  j 8
0036d0  7a376140  vextracti.s r14, 6(vr2)
0036d4  1bcb5800  srli r22, r17, 5
0036d8  1b0b1b00  andi r22, r22, 1
0036dc  3b300b00  bneq r22, zero, 12
0036e0  7abb5040  vextracti.s r22, 5(vr1)
0036e4  5b010000  j 8
0036e8  7a3b5140  vextracti.s r22, 5(vr2)
0036ec  9bcb4800  srli r23, r17, 4
0036f0  9b8b1b00  andi r23, r23, 1
0036f4  3bb00b00  bneq r23, zero, 12
0036f8  fabb4040  vextracti.s r23, 4(vr1)
0036fc  5b010000  j 8
003700  fa3b4140  vextracti.s r23, 4(vr2)
003704  1bcc3800  srli r24, r17, 3
003708  1b0c1c00  andi r24, r24, 1
00370c  3b300c00  bneq r24, zero, 12
003710  7abc3040  vextracti.s r24, 3(vr1)
003714  5b010000  j 8
003718  7a3c3140  vextracti.s r24, 3(vr2)
00371c  9bcc2800  srli r25, r17, 2
003720  9b8c1c00  andi r25, r25, 1
003724  3bb00c00  bneq r25, zero, 12
003728  fabc2040  vextracti.s r25, 2(vr1)
00372c  5b010000  j 8
003730  fa3c2140  vextracti.s r25, 2(vr2)
003734  1bcd1800  srli r26, r17, 1
003738  1b0d1d00  andi r26, r26, 1
00373c  3b500d00  bneq r26, zero, 20
003740  7abd1040  vextracti.s r26, 1(vr1)
003744  9b881800  andi r17, r17, 1
003748  378f08e4  beq r17, zero, -13376
00374c  5b020000  j 16
003750  7a3d1140  vextracti.s r26, 1(vr2)
003754  9b881800  andi r17, r17, 1
003758  b7ce08e4  beq r17, zero, -13392
00375c  fa380140  vextracti.s r17, 0(vr2)
003760  db75f9ff  j -13396
003764  00100000  exit
003768  00100000  exit
00376c  00100000  exit
003770  00100000  exit
003774  00100000  exit
003778  00100000  exit
00377c  00100000  exit
003780  00100000  exit
003784  00100000  exit
003788  00100000  exit
00378c  00100000  exit
003790  00100000  exit
003794  00100000  exit
003798  00100000  exit
00379c  00100000  exit
0037a0  00100000  exit
0037a4  00100000  exit
0037a8  00100000  exit
0037ac  00100000  exit
0037b0  00100000  exit
0037b4  00100000  exit
0037b8  00100000  exit
0037bc  00100000  exit
0037c0  00100000  exit
0037c4  00100000  exit
0037c8  00100000  exit
0037cc  00100000  exit
0037d0  00100000  exit
0037d4  00100000  exit
0037d8  00100000  exit
0037dc  00100000  exit
0037e0  00100000  exit
0037e4  00100000  exit
0037e8  00100000  exit
0037ec  00100000  exit
0037f0  00100000  exit
0037f4  00100000  exit
0037f8  00100000  exit
0037fc  00100000  exit
003800  00100000  exit
003804  00100000  exit
003808  00100000  exit
00380c  00100000  exit
003810  00100000  exit
003814  00100000  exit
003818  00100000  exit
00381c  00100000  exit
003820  00100000  exit
003824  00100000  exit
003828  00100000  exit
00382c  00100000  exit
003830  00100000  exit
003834  00100000  exit
003838  00100000  exit
00383c  00100000  exit
003840  00100000  exit
003844  00100000  exit
003848  00100000  exit
00384c  00100000  exit
003850  00100000  exit
003854  00100000  exit
003858  00100000  exit
00385c  00100000  exit
003860  00100000  exit
003864  00100000  exit
003868  00100000  exit
00386c  00100000  exit
003870  00100000  exit
003874  00100000  exit
003878  00100000  exit
00387c  00100000  exit
003880  00100000  exit
003884  00100000  exit
003888  00100000  exit
00388c  00100000  exit
003890  00100000  exit
003894  00100000  exit
003898  00100000  exit
00389c  00100000  exit
0038a0  00100000  exit
0038a4  00100000  exit
0038a8  00100000  exit
0038ac  00100000  exit
0038b0  00100000  exit
0038b4  00100000  exit
0038b8  00100000  exit
0038bc  00100000  exit
0038c0  00100000  exit
0038c4  00100000  exit
0038c8  00100000  exit
0038cc  00100000  exit
0038d0  00100000  exit
0038d4  00100000  exit
0038d8  00100000  exit
0038dc  00100000  exit
0038e0  00100000  exit
0038e4  00100000  exit
0038e8  00100000  exit
0038ec  00100000  exit
0038f0  00100000  exit
0038f4  00100000  exit
0038f8  00100000  exit
0038fc  00100000  exit
003900  00100000  exit
003904  00100000  exit
003908  00100000  exit
00390c  00100000  exit
003910  00100000  exit
003914  00100000  exit
003918  00100000  exit
00391c  00100000  exit
003920  00100000  exit
003924  00100000  exit
003928  00100000  exit
00392c  00100000  exit
003930  00100000  exit
003934  00100000  exit
003938  00100000  exit
00393c  00100000  exit
003940  00100000  exit
003944  00100000  exit
003948  00100000  exit
00394c  00100000  exit
003950  00100000  exit
003954  00100000  exit
003958  00100000  exit
00395c  00100000  exit
003960  00100000  exit
003964  00100000  exit
003968  00100000  exit
00396c  00100000  exit
003970  00100000  exit
003974  00100000  exit
003978  00100000  exit
00397c  00100000  exit
003980  00100000  exit
003984  00100000  exit
003988  00100000  exit
00398c  00100000  exit
003990  00100000  exit
003994  00100000  exit
003998  00100000  exit
00399c  00100000  exit
0039a0  00100000  exit
