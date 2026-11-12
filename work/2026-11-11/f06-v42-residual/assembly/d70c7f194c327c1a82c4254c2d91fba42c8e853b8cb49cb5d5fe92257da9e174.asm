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
000114  0b126220  mul.s r4, r4, r6
000118  670f9ff4  storeli.w r9, -1296(r30)
00011c  73e00400  stores.w zero, 0(r9)
000120  00a00300  mfence { lm, sm, gm }
000124  80a10204  csr_set csr3, r5
000128  00d00100  sync_group
00012c  674f8ff4  storeli.w r8, -1292(r30)
000130  73600400  stores.w zero, 0(r8)
000134  00540002  load_param_i r8, 0
000138  00a00300  mfence { lm, sm, gm }
00013c  80a10204  csr_set csr3, r5
000140  00d00100  sync_group
000144  4b09821a  ble.s r4, r8, 13888
000148  1f054000  addli r10, zero, 32
00014c  670d4ff4  storeli.w r4, -1328(r30)
000150  80d20002  load_param_i r5, 1
000154  9f470000  addli r15, zero, 4
000158  0b92a030  div.s r4, r1, r10
00015c  e74c5ff4  storeli.w r5, -1332(r30)
000160  e70c4ff4  storeli.w r4, -1336(r30)
000164  1b325200  slli r4, r4, 5
000168  0b924018  sub.s r4, r1, r4
00016c  3f20f200  blt.s r4, r15, 8
000170  dbc00600  j 13828
000174  1b338200  slli r6, r4, 8
000178  13020200  seteq r4, r4, zero
00017c  9f020008  addli r5, zero, 1024
000180  abf3ffff  lui r7, 1048575
000184  1b8af001  andi r20, r1, 31
000188  9bf00004  setlti r1, r1, 64
00018c  1f0b8ffb  addli r22, r30, -576
000190  9f683000  addli r17, zero, 30
000194  1f493000  addli r18, zero, 28
000198  9f2a3000  addli r21, zero, 26
00019c  9f0b3000  addli r23, zero, 24
0001a0  9f042000  addli r9, zero, 16
0001a4  9f651000  addli r11, zero, 14
0001a8  1f461000  addli r12, zero, 12
0001ac  9f261000  addli r13, zero, 10
0001b0  1f0c1000  addli r24, zero, 8
0001b4  9f6c0000  addli r25, zero, 6
0001b8  1f270000  addli r14, zero, 2
0001bc  1f0d0004  addli r26, zero, 512
0001c0  2b0e807f  lui r28, 522240
0001c4  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
0001c8  e74e6ff4  storeli.w r6, -1300(r30)
0001cc  8b926218  sub.s r5, r5, r6
0001d0  1f030002  addli r6, zero, 256
0001d4  674e4ff5  storeli.w r20, -1308(r30)
0001d8  8b826240  min.u r5, r5, r6
0001dc  1b9303f8  ori r6, r7, 3968
0001e0  9f432000  addli r7, zero, 20
0001e4  97816100  and r3, r3, r6
0001e8  9bb91200  slli r19, r5, 1
0001ec  9f72f003  addli r5, zero, 511
0001f0  1f232000  addli r6, zero, 18
0001f4  97804000  and r1, r1, r4
0001f8  0b912110  add.s r2, r3, r2
0001fc  abf1ff7f  lui r3, 524287
000200  e70e3ff5  storeli.w r19, -1304(r30)
000204  670e1ff4  storeli.w r1, -1312(r30)
000208  ab700000  lui r1, 7
00020c  e7432ff6  storeli.w r2, -1220(r30)
000210  1f012110  addli r2, r2, 2064
000214  1b98f0ff  ori r16, r1, 4095
000218  abf00000  lui r1, 15
00021c  e7032ff6  storeli.w r2, -1224(r30)
000220  1f612000  addli r2, zero, 22
000224  9b9df0ff  ori r27, r1, 4095
000228  9b90f1ff  ori r1, r3, 4095
00022c  e70d1ff4  storeli.w r1, -1320(r30)
000230  e74dbff5  storeli.w r27, -1316(r30)
000234  db030000  j 28
000238  6344aff5  loadli.w r8,  -1324(r30)
00023c  e3409ff5  loadli.w r1,  -1332(r30)
000240  0b141410  add.s r8, r8, r1
000244  e300aff5  loadli.w r1,  -1328(r30)
000248  3f201400  blt.s r8, r1, 8
00024c  5ba70600  j 13624
000250  9f018b00  addli r3, r22, 64
000254  e3006f00  loadli.w r1,  48(r30)
000258  674d8ff4  storeli.w r8, -1324(r30)
00025c  67433ff6  storeli.w r3, -1228(r30)
000260  9f010b01  addli r3, r22, 128
000264  8b101430  div.s r1, r8, r1
000268  67033ff6  storeli.w r3, -1232(r30)
00026c  9f018b01  addli r3, r22, 192
000270  e7423ff6  storeli.w r3, -1236(r30)
000274  9f010b02  addli r3, r22, 256
000278  e7023ff6  storeli.w r3, -1240(r30)
00027c  9f018b02  addli r3, r22, 320
000280  67423ff6  storeli.w r3, -1244(r30)
000284  e3415f00  loadli.w r3,  44(r30)
000288  8b903030  div.s r1, r1, r3
00028c  9f010b03  addli r3, r22, 384
000290  67023ff6  storeli.w r3, -1248(r30)
000294  9f018b03  addli r3, r22, 448
000298  e7413ff6  storeli.w r3, -1252(r30)
00029c  9f014b00  addli r3, r22, 32
0002a0  e7013ff6  storeli.w r3, -1256(r30)
0002a4  9f01cb00  addli r3, r22, 96
0002a8  9bb06000  slli r1, r1, 6
0002ac  67413ff6  storeli.w r3, -1260(r30)
0002b0  9f014b01  addli r3, r22, 160
0002b4  67013ff6  storeli.w r3, -1264(r30)
0002b8  9f01cb01  addli r3, r22, 224
0002bc  e7403ff6  storeli.w r3, -1268(r30)
0002c0  e3019ff5  loadli.w r3,  -1336(r30)
0002c4  8b913010  add.s r3, r1, r3
0002c8  9f004b02  addli r1, r22, 288
0002cc  67401ff6  storeli.w r1, -1276(r30)
0002d0  9f00cb02  addli r1, r22, 352
0002d4  e7003ff6  storeli.w r3, -1272(r30)
0002d8  67001ff6  storeli.w r1, -1280(r30)
0002dc  9f004b03  addli r1, r22, 416
0002e0  e74f1ff4  storeli.w r1, -1284(r30)
0002e4  9f00cb03  addli r1, r22, 480
0002e8  e70f1ff4  storeli.w r1, -1288(r30)
0002ec  9f000000  addli r1, zero, 0
0002f0  5b270000  j 312
0002f4  fab70040  vextracti.s r15, 0(vr1)
0002f8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0002fc  6aa00734  vor.u.mh vr0{mr2}, r15, vr0
000300  9f270000  addli r15, zero, 2
000304  fe8107e0  vmmov mr3, r15
000308  9f470000  addli r15, zero, 4
00030c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000310  9f400000  addli r1, zero, 4
000314  7e8000e0  vmmov mr0, r1
000318  9f001000  addli r1, zero, 8
00031c  6a200d30  vor.u.mh vr0{mr0}, r26, vr0
000320  7e8100e0  vmmov mr2, r1
000324  9f002000  addli r1, zero, 16
000328  1f0d0004  addli r26, zero, 512
00032c  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
000330  7e8100e0  vmmov mr2, r1
000334  9f004000  addli r1, zero, 32
000338  9f6c0000  addli r25, zero, 6
00033c  fe8100e0  vmmov mr3, r1
000340  9f008000  addli r1, zero, 64
000344  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
000348  7e8000e0  vmmov mr0, r1
00034c  9f000001  addli r1, zero, 128
000350  1f0c1000  addli r24, zero, 8
000354  6aa00b36  vor.u.mh vr0{mr3}, r23, vr0
000358  9f0b3000  addli r23, zero, 24
00035c  6aa00a30  vor.u.mh vr0{mr0}, r21, vr0
000360  7e8000e0  vmmov mr0, r1
000364  9f000002  addli r1, zero, 256
000368  9f2a3000  addli r21, zero, 26
00036c  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
000370  7e8000e0  vmmov mr0, r1
000374  9f000004  addli r1, zero, 512
000378  7e8100e0  vmmov mr2, r1
00037c  9f000008  addli r1, zero, 1024
000380  6a200530  vor.u.mh vr0{mr0}, r10, vr0
000384  1f054000  addli r10, zero, 32
000388  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
00038c  7e8100e0  vmmov mr2, r1
000390  9f000010  addli r1, zero, 2048
000394  aba2aaaa  lui r5, 699050
000398  9fa25215  addli r5, r5, 2730
00039c  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0003a0  7e8100e0  vmmov mr2, r1
0003a4  9f000020  addli r1, zero, 4096
0003a8  fe8100e0  vmmov mr3, r1
0003ac  9f000040  addli r1, zero, 8192
0003b0  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0003b4  6aa00836  vor.u.mh vr0{mr3}, r17, vr0
0003b8  fe8100e0  vmmov mr3, r1
0003bc  ab400000  lui r1, 4
0003c0  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
0003c4  fe8100e0  vmmov mr3, r1
0003c8  ab800000  lui r1, 8
0003cc  7e8000e0  vmmov mr0, r1
0003d0  ab0000f0  lui r1, 983040
0003d4  6a200436  vor.u.mh vr0{mr3}, r8, vr0
0003d8  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0003dc  7e8002e0  vmmov mr0, r5
0003e0  e302fff5  loadli.w r5,  -1288(r30)
0003e4  e309dff5  loadli.w r19,  -1304(r30)
0003e8  eb518f00  load.d r[4:5], 8(r30)
0003ec  eb580fdb  load.d r[18:19], -592(r30)
0003f0  8ba11111  add.ul r[4:5], r[4:5], r[18:19]
0003f4  97901900  or r1, r19, r1
0003f8  9f683000  addli r17, zero, 30
0003fc  1f493000  addli r18, zero, 28
000400  62c50210  vscatter.mh vr0{mr0}, vr10{r5}
000404  9f72f003  addli r5, zero, 511
000408  00a00000  mfence { lm }
00040c  ffb06101  s_lm2gm r1, r22, 0(r[4:5])
000410  00a00000  mfence { lm }
000414  634acff5  loadli.w r20,  -1308(r30)
000418  e3011ff6  loadli.w r3,  -1272(r30)
00041c  e3407ffb  loadli.w r1,  -580(r30)
000420  9f900000  addli r1, r1, 1
000424  37d8a0fe  beq r1, r10, -492
000428  e74b1ffa  storeli.w r1, -580(r30)
00042c  9bb01000  slli r1, r1, 1
000430  0b921110  add.s r4, r3, r1
000434  bfaf42fe  blt.s r5, r4, -24
000438  9f010000  addli r3, zero, 0
00043c  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
000440  9f100000  addli r1, zero, 1
000444  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
000448  2ba4aaaa  lui r8, 699050
00044c  7e8000e0  vmmov mr0, r1
000450  9f200000  addli r1, zero, 2
000454  1f245415  addli r8, r8, 2730
000458  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00045c  7e8000e0  vmmov mr0, r1
000460  9f400000  addli r1, zero, 4
000464  7e8100e0  vmmov mr2, r1
000468  9f001000  addli r1, zero, 8
00046c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000470  7e8000e0  vmmov mr0, r1
000474  9f002000  addli r1, zero, 16
000478  ea401034  vor.hf.mh vr1{mr2}, zero, vr1
00047c  ea401730  vor.hf.mh vr1{mr0}, r14, vr1
000480  7e8000e0  vmmov mr0, r1
000484  9f004000  addli r1, zero, 32
000488  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00048c  7e8000e0  vmmov mr0, r1
000490  9f008000  addli r1, zero, 64
000494  eac01730  vor.hf.mh vr1{mr0}, r15, vr1
000498  7e8000e0  vmmov mr0, r1
00049c  9f000001  addli r1, zero, 128
0004a0  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0004a4  7e8000e0  vmmov mr0, r1
0004a8  9f000002  addli r1, zero, 256
0004ac  eac01c30  vor.hf.mh vr1{mr0}, r25, vr1
0004b0  7e8000e0  vmmov mr0, r1
0004b4  9f000004  addli r1, zero, 512
0004b8  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0004bc  7e8000e0  vmmov mr0, r1
0004c0  9f000008  addli r1, zero, 1024
0004c4  ea401c30  vor.hf.mh vr1{mr0}, r24, vr1
0004c8  7e8000e0  vmmov mr0, r1
0004cc  9f000010  addli r1, zero, 2048
0004d0  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0004d4  7e8000e0  vmmov mr0, r1
0004d8  9f000020  addli r1, zero, 4096
0004dc  eac01630  vor.hf.mh vr1{mr0}, r13, vr1
0004e0  7e8000e0  vmmov mr0, r1
0004e4  9f000040  addli r1, zero, 8192
0004e8  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0004ec  7e8000e0  vmmov mr0, r1
0004f0  ab400000  lui r1, 4
0004f4  fe8100e0  vmmov mr3, r1
0004f8  ab800000  lui r1, 8
0004fc  ea401630  vor.hf.mh vr1{mr0}, r12, vr1
000500  7e8000e0  vmmov mr0, r1
000504  ab000100  lui r1, 16
000508  ea401036  vor.hf.mh vr1{mr3}, zero, vr1
00050c  eac01530  vor.hf.mh vr1{mr0}, r11, vr1
000510  7e8000e0  vmmov mr0, r1
000514  ab000200  lui r1, 32
000518  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00051c  7e8000e0  vmmov mr0, r1
000520  ab000400  lui r1, 64
000524  eac01430  vor.hf.mh vr1{mr0}, r9, vr1
000528  7e8000e0  vmmov mr0, r1
00052c  ab000800  lui r1, 128
000530  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000534  7e8000e0  vmmov mr0, r1
000538  ab001000  lui r1, 256
00053c  ea401330  vor.hf.mh vr1{mr0}, r6, vr1
000540  7e8000e0  vmmov mr0, r1
000544  ab002000  lui r1, 512
000548  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00054c  7e8000e0  vmmov mr0, r1
000550  ab004000  lui r1, 1024
000554  eac01330  vor.hf.mh vr1{mr0}, r7, vr1
000558  7e8000e0  vmmov mr0, r1
00055c  ab008000  lui r1, 2048
000560  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000564  7e8000e0  vmmov mr0, r1
000568  ab000001  lui r1, 4096
00056c  ea401130  vor.hf.mh vr1{mr0}, r2, vr1
000570  7e8000e0  vmmov mr0, r1
000574  ab000002  lui r1, 8192
000578  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
00057c  7e8000e0  vmmov mr0, r1
000580  ab000004  lui r1, 16384
000584  eac01b30  vor.hf.mh vr1{mr0}, r23, vr1
000588  7e8000e0  vmmov mr0, r1
00058c  ab000008  lui r1, 32768
000590  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000594  7e8000e0  vmmov mr0, r1
000598  ab000010  lui r1, 65536
00059c  eac01a30  vor.hf.mh vr1{mr0}, r21, vr1
0005a0  7e8000e0  vmmov mr0, r1
0005a4  ab000020  lui r1, 131072
0005a8  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0005ac  7e8000e0  vmmov mr0, r1
0005b0  ab000040  lui r1, 262144
0005b4  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
0005b8  7e8000e0  vmmov mr0, r1
0005bc  ab000080  lui r1, 524288
0005c0  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0005c4  7e8000e0  vmmov mr0, r1
0005c8  9f100000  addli r1, zero, 1
0005cc  eac01830  vor.hf.mh vr1{mr0}, r17, vr1
0005d0  7e8000e0  vmmov mr0, r1
0005d4  9f200000  addli r1, zero, 2
0005d8  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
0005dc  7e8000e0  vmmov mr0, r1
0005e0  9f001000  addli r1, zero, 8
0005e4  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005e8  7e8000e0  vmmov mr0, r1
0005ec  9f002000  addli r1, zero, 16
0005f0  6a400834  vor.hf.mh vr0{mr2}, r16, vr0
0005f4  7e8100e0  vmmov mr2, r1
0005f8  9f004000  addli r1, zero, 32
0005fc  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000600  6a400834  vor.hf.mh vr0{mr2}, r16, vr0
000604  7e8100e0  vmmov mr2, r1
000608  9f008000  addli r1, zero, 64
00060c  7e8000e0  vmmov mr0, r1
000610  9f000001  addli r1, zero, 128
000614  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
000618  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
00061c  7e8000e0  vmmov mr0, r1
000620  9f000002  addli r1, zero, 256
000624  7e8100e0  vmmov mr2, r1
000628  9f000004  addli r1, zero, 512
00062c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000630  7e8000e0  vmmov mr0, r1
000634  9f000008  addli r1, zero, 1024
000638  6a400834  vor.hf.mh vr0{mr2}, r16, vr0
00063c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000640  7e8000e0  vmmov mr0, r1
000644  9f000010  addli r1, zero, 2048
000648  7e8100e0  vmmov mr2, r1
00064c  9f000020  addli r1, zero, 4096
000650  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
000654  7e8000e0  vmmov mr0, r1
000658  9f000040  addli r1, zero, 8192
00065c  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
000660  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
000664  7e8000e0  vmmov mr0, r1
000668  ab800000  lui r1, 8
00066c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000670  7e8000e0  vmmov mr0, r1
000674  ab000100  lui r1, 16
000678  6a400836  vor.hf.mh vr0{mr3}, r16, vr0
00067c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000680  7e8000e0  vmmov mr0, r1
000684  ab000200  lui r1, 32
000688  7e8100e0  vmmov mr2, r1
00068c  ab000400  lui r1, 64
000690  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
000694  7e8000e0  vmmov mr0, r1
000698  ab000800  lui r1, 128
00069c  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
0006a0  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
0006a4  7e8000e0  vmmov mr0, r1
0006a8  ab001000  lui r1, 256
0006ac  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0006b0  7e8000e0  vmmov mr0, r1
0006b4  ab002000  lui r1, 512
0006b8  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
0006bc  7e8000e0  vmmov mr0, r1
0006c0  ab004000  lui r1, 1024
0006c4  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0006c8  7e8000e0  vmmov mr0, r1
0006cc  ab008000  lui r1, 2048
0006d0  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
0006d4  7e8000e0  vmmov mr0, r1
0006d8  ab000001  lui r1, 4096
0006dc  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0006e0  7e8000e0  vmmov mr0, r1
0006e4  ab000002  lui r1, 8192
0006e8  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
0006ec  7e8000e0  vmmov mr0, r1
0006f0  ab000004  lui r1, 16384
0006f4  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0006f8  7e8000e0  vmmov mr0, r1
0006fc  ab000008  lui r1, 32768
000700  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
000704  7e8000e0  vmmov mr0, r1
000708  ab000010  lui r1, 65536
00070c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000710  7e8000e0  vmmov mr0, r1
000714  ab000020  lui r1, 131072
000718  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
00071c  7e8000e0  vmmov mr0, r1
000720  ab000040  lui r1, 262144
000724  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000728  7e8000e0  vmmov mr0, r1
00072c  ab000080  lui r1, 524288
000730  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
000734  7e8000e0  vmmov mr0, r1
000738  8b103b10  add.s r1, r22, r3
00073c  9f818100  addli r3, r3, 64
000740  9f824000  addli r5, r1, 32
000744  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000748  7e0004e0  vmmov mr0, r8
00074c  e2c00010  vscatter.mh vr0{mr0}, vr1{r1}
000750  e2c00210  vscatter.mh vr0{mr0}, vr1{r5}
000754  00a00000  mfence { lm }
000758  bb93a1ff  bneq r3, r26, -796
00075c  e341dff5  loadli.w r3,  -1300(r30)
000760  9b30a200  slli r1, r4, 10
000764  1f110000  addli r2, zero, 1
000768  8b903010  add.s r1, r1, r3
00076c  b3980028  sext_int2long r[18:19], r1
000770  ab0000f0  lui r1, 983040
000774  97b22802  sll.d r[6:7], r[18:19], r2
000778  6b510f00  load.d r[3:4], 0(r30)
00077c  97901900  or r1, r19, r1
000780  73385fda  store.d r[6:7], -592(r30)
000784  8b285110  add.ul r[18:19], r[3:4], r[6:7]
000788  1f018ff7  addli r2, r30, -1088
00078c  ffa06801  l_gm2lm r1, r22, 0(r[18:19])
000790  9f008ff7  addli r1, r30, -1088
000794  00a00000  mfence { lm }
000798  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
00079c  c2110fc2  vload_mask16.mz vr3{mr1}, 1536(r30)
0007a0  e6c00580  vmerge_l.hf vr1, vr11, vr0
0007a4  66c105a0  vmerge_h.hf vr2, vr11, vr0
0007a8  66c23580  vmerge_l.hf vr4, vr11, vr3
0007ac  e6c235a0  vmerge_h.hf vr5, vr11, vr3
0007b0  46101fa2  vstore_mask16.mz vr1{mr1}, 1280(r30)
0007b4  46142fa2  vstore_mask16.mz vr2{mr1}, 1344(r30)
0007b8  461c4f82  vstore_mask16.mz vr4{mr1}, 1216(r30)
0007bc  12101002  vadd.f.mz.rn vr0{mr1}, zero, vr1
0007c0  92102002  vadd.f.mz.rn vr1{mr1}, zero, vr2
0007c4  92114002  vadd.f.mz.rn vr3{mr1}, zero, vr4
0007c8  42118fc2  vload_mask16.mz vr2{mr1}, 1600(r30)
0007cc  46185f82  vstore_mask16.mz vr5{mr1}, 1152(r30)
0007d0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0007d4  92105002  vadd.f.mz.rn vr1{mr1}, zero, vr5
0007d8  66c22580  vmerge_l.hf vr4, vr11, vr2
0007dc  e6c225a0  vmerge_h.hf vr5, vr11, vr2
0007e0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0007e4  46144f82  vstore_mask16.mz vr4{mr1}, 1088(r30)
0007e8  12114002  vadd.f.mz.rn vr2{mr1}, zero, vr4
0007ec  c2110fc3  vload_mask16.mz vr3{mr1}, 1664(r30)
0007f0  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0007f4  92105002  vadd.f.mz.rn vr1{mr1}, zero, vr5
0007f8  46105f82  vstore_mask16.mz vr5{mr1}, 1024(r30)
0007fc  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000800  66c23580  vmerge_l.hf vr4, vr11, vr3
000804  e6c135a0  vmerge_h.hf vr3, vr11, vr3
000808  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00080c  12114002  vadd.f.mz.rn vr2{mr1}, zero, vr4
000810  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
000814  9f000ff7  addli r1, r30, -1152
000818  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00081c  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000820  c2108fc3  vload_mask16.mz vr1{mr1}, 1728(r30)
000824  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000828  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00082c  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
000830  e6c41580  vmerge_l.hf vr9, vr11, vr1
000834  e6c511a0  vmerge_h.hf vr11, vr3, vr1
000838  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
00083c  12119002  vadd.f.mz.rn vr2{mr1}, zero, vr9
000840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000844  1211b002  vadd.f.mz.rn vr2{mr1}, zero, vr11
000848  66c31180  vmerge_l.hf vr6, vr3, vr1
00084c  e6c211a0  vmerge_h.hf vr5, vr3, vr1
000850  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
000854  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000858  12116002  vadd.f.mz.rn vr2{mr1}, zero, vr6
00085c  e6c31180  vmerge_l.hf vr7, vr3, vr1
000860  66c411a0  vmerge_h.hf vr8, vr3, vr1
000864  c2100fe3  vload_mask16.mz vr1{mr1}, 1920(r30)
000868  42158f83  vload_mask16.mz vr10{mr1}, 1216(r30)
00086c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000870  12115002  vadd.f.mz.rn vr2{mr1}, zero, vr5
000874  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000878  12117002  vadd.f.mz.rn vr2{mr1}, zero, vr7
00087c  66c21180  vmerge_l.hf vr4, vr3, vr1
000880  e6c011a0  vmerge_h.hf vr1, vr3, vr1
000884  16112002  vadd.f.mz.rn vr2{mr1}, vr0, vr2
000888  12108002  vadd.f.mz.rn vr0{mr1}, zero, vr8
00088c  16100102  vadd.f.mz.rn vr0{mr1}, vr2, vr0
000890  12114002  vadd.f.mz.rn vr2{mr1}, zero, vr4
000894  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000898  12111002  vadd.f.mz.rn vr2{mr1}, zero, vr1
00089c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0008a0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008a4  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008a8  461c2f82  vstore_mask16.mz vr2{mr1}, 1216(r30)
0008ac  42150f83  vload_mask16.mz vr10{mr1}, 1152(r30)
0008b0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008b4  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008b8  46182f82  vstore_mask16.mz vr2{mr1}, 1152(r30)
0008bc  42158f82  vload_mask16.mz vr10{mr1}, 1088(r30)
0008c0  fa100040  vextracti.f r1, 0(vr0)
0008c4  fa111040  vextracti.f r3, 1(vr0)
0008c8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008cc  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008d0  46142f82  vstore_mask16.mz vr2{mr1}, 1088(r30)
0008d4  42150f82  vload_mask16.mz vr10{mr1}, 1024(r30)
0008d8  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008dc  8be03010  add.f.rn r1, r1, r3
0008e0  fa112040  vextracti.f r3, 2(vr0)
0008e4  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008e8  46102f82  vstore_mask16.mz vr2{mr1}, 1024(r30)
0008ec  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
0008f0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008f4  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
0008f8  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0008fc  1f010ff7  addli r2, r30, -1152
000900  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000904  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
000908  2611a502  vmac.f.mz.rn vr2{mr1}, vr10, vr10
00090c  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
000910  1f018ff6  addli r2, r30, -1216
000914  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000918  12353002  vadd.s.mz vr10{mr1}, zero, vr3
00091c  8be01110  add.f.rn r1, r3, r1
000920  fa113040  vextracti.f r3, 3(vr0)
000924  26919402  vmac.f.mz.rn vr2{mr1}, vr9, vr9
000928  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
00092c  92343002  vadd.s.mz vr9{mr1}, zero, vr3
000930  2695b502  vmac.f.mz.rn vr10{mr1}, vr11, vr11
000934  92353002  vadd.s.mz vr11{mr1}, zero, vr3
000938  12313002  vadd.s.mz vr2{mr1}, zero, vr3
00093c  a6945202  vmac.f.mz.rn vr9{mr1}, vr5, vr5
000940  92323002  vadd.s.mz vr5{mr1}, zero, vr3
000944  a6156302  vmac.f.mz.rn vr11{mr1}, vr6, vr6
000948  12333002  vadd.s.mz vr6{mr1}, zero, vr3
00094c  26118402  vmac.f.mz.rn vr2{mr1}, vr8, vr8
000950  12343002  vadd.s.mz vr8{mr1}, zero, vr3
000954  a6921002  vmac.f.mz.rn vr5{mr1}, vr1, vr1
000958  92303002  vadd.s.mz vr1{mr1}, zero, vr3
00095c  8be01110  add.f.rn r1, r3, r1
000960  fa114040  vextracti.f r3, 4(vr0)
000964  8be01110  add.f.rn r1, r3, r1
000968  fa115040  vextracti.f r3, 5(vr0)
00096c  8be01110  add.f.rn r1, r3, r1
000970  fa116040  vextracti.f r3, 6(vr0)
000974  8be01110  add.f.rn r1, r3, r1
000978  fa117040  vextracti.f r3, 7(vr0)
00097c  8be01110  add.f.rn r1, r3, r1
000980  fa118040  vextracti.f r3, 8(vr0)
000984  8be01110  add.f.rn r1, r3, r1
000988  fa119040  vextracti.f r3, 9(vr0)
00098c  8be01110  add.f.rn r1, r3, r1
000990  fa11a040  vextracti.f r3, 10(vr0)
000994  8be01110  add.f.rn r1, r3, r1
000998  fa11b040  vextracti.f r3, 11(vr0)
00099c  8be01110  add.f.rn r1, r3, r1
0009a0  fa11c040  vextracti.f r3, 12(vr0)
0009a4  8be01110  add.f.rn r1, r3, r1
0009a8  fa11d040  vextracti.f r3, 13(vr0)
0009ac  8be01110  add.f.rn r1, r3, r1
0009b0  fa11e040  vextracti.f r3, 14(vr0)
0009b4  8be01110  add.f.rn r1, r3, r1
0009b8  fa11f040  vextracti.f r3, 15(vr0)
0009bc  12303002  vadd.s.mz vr0{mr1}, zero, vr3
0009c0  26907302  vmac.f.mz.rn vr0{mr1}, vr7, vr7
0009c4  92333002  vadd.s.mz vr7{mr1}, zero, vr3
0009c8  c2118fa2  vload_mask16.mz vr3{mr1}, 1344(r30)
0009cc  26933102  vmac.f.mz.rn vr6{mr1}, vr3, vr3
0009d0  a6134202  vmac.f.mz.rn vr7{mr1}, vr4, vr4
0009d4  42120fa2  vload_mask16.mz vr4{mr1}, 1280(r30)
0009d8  a6104202  vmac.f.mz.rn vr1{mr1}, vr4, vr4
0009dc  8be01110  add.f.rn r1, r3, r1
0009e0  e341eff5  loadli.w r3,  -1292(r30)
0009e4  73e01100  stores.w r1, 0(r3)
0009e8  00a00300  mfence { lm, sm, gm }
0009ec  80a10d04  csr_set csr3, r27
0009f0  00d00100  sync_group
0009f4  3b240a00  bneq r20, zero, 264
0009f8  63447ff6  loadli.w r8,  -1220(r30)
0009fc  ef400400  loads.w r1, 0(r8)
000a00  ef414400  loads.w r3, 4(r8)
000a04  ef428400  loads.w r5, 8(r8)
000a08  8be03010  add.f.rn r1, r1, r3
000a0c  ef41c400  loads.w r3, 12(r8)
000a10  8be05010  add.f.rn r1, r1, r5
000a14  ef420401  loads.w r5, 16(r8)
000a18  8be03010  add.f.rn r1, r1, r3
000a1c  ef414401  loads.w r3, 20(r8)
000a20  8be05010  add.f.rn r1, r1, r5
000a24  ef428401  loads.w r5, 24(r8)
000a28  8be03010  add.f.rn r1, r1, r3
000a2c  ef41c401  loads.w r3, 28(r8)
000a30  8be05010  add.f.rn r1, r1, r5
000a34  ef420402  loads.w r5, 32(r8)
000a38  8be03010  add.f.rn r1, r1, r3
000a3c  ef414402  loads.w r3, 36(r8)
000a40  8be05010  add.f.rn r1, r1, r5
000a44  ef428402  loads.w r5, 40(r8)
000a48  8be03010  add.f.rn r1, r1, r3
000a4c  ef41c402  loads.w r3, 44(r8)
000a50  8be05010  add.f.rn r1, r1, r5
000a54  ef420403  loads.w r5, 48(r8)
000a58  8be03010  add.f.rn r1, r1, r3
000a5c  ef414403  loads.w r3, 52(r8)
000a60  8be05010  add.f.rn r1, r1, r5
000a64  ef428403  loads.w r5, 56(r8)
000a68  8be03010  add.f.rn r1, r1, r3
000a6c  ef41c403  loads.w r3, 60(r8)
000a70  8be05010  add.f.rn r1, r1, r5
000a74  ef420404  loads.w r5, 64(r8)
000a78  8be03010  add.f.rn r1, r1, r3
000a7c  ef414404  loads.w r3, 68(r8)
000a80  8be05010  add.f.rn r1, r1, r5
000a84  ef428404  loads.w r5, 72(r8)
000a88  8be03010  add.f.rn r1, r1, r3
000a8c  ef41c404  loads.w r3, 76(r8)
000a90  8be05010  add.f.rn r1, r1, r5
000a94  ef420405  loads.w r5, 80(r8)
000a98  8be03010  add.f.rn r1, r1, r3
000a9c  ef414405  loads.w r3, 84(r8)
000aa0  8be05010  add.f.rn r1, r1, r5
000aa4  ef428405  loads.w r5, 88(r8)
000aa8  8be03010  add.f.rn r1, r1, r3
000aac  ef41c405  loads.w r3, 92(r8)
000ab0  8be05010  add.f.rn r1, r1, r5
000ab4  ef420406  loads.w r5, 96(r8)
000ab8  8be03010  add.f.rn r1, r1, r3
000abc  ef414406  loads.w r3, 100(r8)
000ac0  8be05010  add.f.rn r1, r1, r5
000ac4  ef428406  loads.w r5, 104(r8)
000ac8  8be03010  add.f.rn r1, r1, r3
000acc  ef41c406  loads.w r3, 108(r8)
000ad0  8be05010  add.f.rn r1, r1, r5
000ad4  ef420407  loads.w r5, 112(r8)
000ad8  8be03010  add.f.rn r1, r1, r3
000adc  ef414407  loads.w r3, 116(r8)
000ae0  8be05010  add.f.rn r1, r1, r5
000ae4  ef428407  loads.w r5, 120(r8)
000ae8  8be03010  add.f.rn r1, r1, r3
000aec  ef41c407  loads.w r3, 124(r8)
000af0  8be05010  add.f.rn r1, r1, r5
000af4  8be03010  add.f.rn r1, r1, r3
000af8  73601400  stores.w r1, 0(r8)
000afc  00a00300  mfence { lm, sm, gm }
000b00  80a10d04  csr_set csr3, r27
000b04  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
000b08  9f008ff7  addli r1, r30, -1088
000b0c  c2118f83  vload_mask16.mz vr3{mr1}, 1216(r30)
000b10  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b14  c2110f83  vload_mask16.mz vr3{mr1}, 1152(r30)
000b18  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b1c  c2118f82  vload_mask16.mz vr3{mr1}, 1088(r30)
000b20  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b24  c2110f82  vload_mask16.mz vr3{mr1}, 1024(r30)
000b28  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b2c  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000b30  9f000ff7  addli r1, r30, -1152
000b34  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b38  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000b3c  9f008ff6  addli r1, r30, -1216
000b40  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b44  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
000b48  00d00100  sync_group
000b4c  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000b50  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
000b54  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000b58  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
000b5c  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000b60  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000b64  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
000b68  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
000b6c  fa100040  vextracti.f r1, 0(vr0)
000b70  fa111040  vextracti.f r3, 1(vr0)
000b74  fa12f040  vextracti.f r5, 15(vr0)
000b78  8be03010  add.f.rn r1, r1, r3
000b7c  fa112040  vextracti.f r3, 2(vr0)
000b80  8be01110  add.f.rn r1, r3, r1
000b84  fa113040  vextracti.f r3, 3(vr0)
000b88  8be01110  add.f.rn r1, r3, r1
000b8c  fa114040  vextracti.f r3, 4(vr0)
000b90  8be01110  add.f.rn r1, r3, r1
000b94  fa115040  vextracti.f r3, 5(vr0)
000b98  8be01110  add.f.rn r1, r3, r1
000b9c  fa116040  vextracti.f r3, 6(vr0)
000ba0  8be01110  add.f.rn r1, r3, r1
000ba4  fa117040  vextracti.f r3, 7(vr0)
000ba8  8be01110  add.f.rn r1, r3, r1
000bac  fa118040  vextracti.f r3, 8(vr0)
000bb0  8be01110  add.f.rn r1, r3, r1
000bb4  fa119040  vextracti.f r3, 9(vr0)
000bb8  8be01110  add.f.rn r1, r3, r1
000bbc  fa11a040  vextracti.f r3, 10(vr0)
000bc0  8be01110  add.f.rn r1, r3, r1
000bc4  fa11b040  vextracti.f r3, 11(vr0)
000bc8  8be01110  add.f.rn r1, r3, r1
000bcc  fa11c040  vextracti.f r3, 12(vr0)
000bd0  8be01110  add.f.rn r1, r3, r1
000bd4  fa11d040  vextracti.f r3, 13(vr0)
000bd8  8be01110  add.f.rn r1, r3, r1
000bdc  fa11e040  vextracti.f r3, 14(vr0)
000be0  8be01110  add.f.rn r1, r3, r1
000be4  e3417ff6  loadli.w r3,  -1220(r30)
000be8  efc10100  loads.w r3, 0(r3)
000bec  8be01210  add.f.rn r1, r5, r1
000bf0  e302eff5  loadli.w r5,  -1296(r30)
000bf4  73e01200  stores.w r1, 0(r5)
000bf8  00a00300  mfence { lm, sm, gm }
000bfc  80a10d04  csr_set csr3, r27
000c00  00d00100  sync_group
000c04  3b240a00  bneq r20, zero, 264
000c08  63057ff6  loadli.w r10,  -1224(r30)
000c0c  ef400500  loads.w r1, 0(r10)
000c10  ef424500  loads.w r5, 4(r10)
000c14  6f448500  loads.w r8, 8(r10)
000c18  8be05010  add.f.rn r1, r1, r5
000c1c  ef42c500  loads.w r5, 12(r10)
000c20  8be08010  add.f.rn r1, r1, r8
000c24  6f440501  loads.w r8, 16(r10)
000c28  8be05010  add.f.rn r1, r1, r5
000c2c  ef424501  loads.w r5, 20(r10)
000c30  8be08010  add.f.rn r1, r1, r8
000c34  6f448501  loads.w r8, 24(r10)
000c38  8be05010  add.f.rn r1, r1, r5
000c3c  ef42c501  loads.w r5, 28(r10)
000c40  8be08010  add.f.rn r1, r1, r8
000c44  6f440502  loads.w r8, 32(r10)
000c48  8be05010  add.f.rn r1, r1, r5
000c4c  ef424502  loads.w r5, 36(r10)
000c50  8be08010  add.f.rn r1, r1, r8
000c54  6f448502  loads.w r8, 40(r10)
000c58  8be05010  add.f.rn r1, r1, r5
000c5c  ef42c502  loads.w r5, 44(r10)
000c60  8be08010  add.f.rn r1, r1, r8
000c64  6f440503  loads.w r8, 48(r10)
000c68  8be05010  add.f.rn r1, r1, r5
000c6c  ef424503  loads.w r5, 52(r10)
000c70  8be08010  add.f.rn r1, r1, r8
000c74  6f448503  loads.w r8, 56(r10)
000c78  8be05010  add.f.rn r1, r1, r5
000c7c  ef42c503  loads.w r5, 60(r10)
000c80  8be08010  add.f.rn r1, r1, r8
000c84  6f440504  loads.w r8, 64(r10)
000c88  8be05010  add.f.rn r1, r1, r5
000c8c  ef424504  loads.w r5, 68(r10)
000c90  8be08010  add.f.rn r1, r1, r8
000c94  6f448504  loads.w r8, 72(r10)
000c98  8be05010  add.f.rn r1, r1, r5
000c9c  ef42c504  loads.w r5, 76(r10)
000ca0  8be08010  add.f.rn r1, r1, r8
000ca4  6f440505  loads.w r8, 80(r10)
000ca8  8be05010  add.f.rn r1, r1, r5
000cac  ef424505  loads.w r5, 84(r10)
000cb0  8be08010  add.f.rn r1, r1, r8
000cb4  6f448505  loads.w r8, 88(r10)
000cb8  8be05010  add.f.rn r1, r1, r5
000cbc  ef42c505  loads.w r5, 92(r10)
000cc0  8be08010  add.f.rn r1, r1, r8
000cc4  6f440506  loads.w r8, 96(r10)
000cc8  8be05010  add.f.rn r1, r1, r5
000ccc  ef424506  loads.w r5, 100(r10)
000cd0  8be08010  add.f.rn r1, r1, r8
000cd4  6f448506  loads.w r8, 104(r10)
000cd8  8be05010  add.f.rn r1, r1, r5
000cdc  ef42c506  loads.w r5, 108(r10)
000ce0  8be08010  add.f.rn r1, r1, r8
000ce4  6f440507  loads.w r8, 112(r10)
000ce8  8be05010  add.f.rn r1, r1, r5
000cec  ef424507  loads.w r5, 116(r10)
000cf0  8be08010  add.f.rn r1, r1, r8
000cf4  6f448507  loads.w r8, 120(r10)
000cf8  8be05010  add.f.rn r1, r1, r5
000cfc  ef42c507  loads.w r5, 124(r10)
000d00  8be08010  add.f.rn r1, r1, r8
000d04  8be05010  add.f.rn r1, r1, r5
000d08  73601500  stores.w r1, 0(r10)
000d0c  00a00300  mfence { lm, sm, gm }
000d10  80a10d04  csr_set csr3, r27
000d14  00d00100  sync_group
000d18  e3007ff6  loadli.w r1,  -1224(r30)
000d1c  2b01803a  lui r2, 239616
000d20  92328002  vadd.s.mz vr5{mr1}, zero, vr8
000d24  8be12120  mul.f.rn r3, r3, r2
000d28  efc00000  loads.w r1, 0(r1)
000d2c  8be23120  mul.f.rn r5, r3, r3
000d30  8be02020  mul.f.rn r1, r1, r2
000d34  2b01803f  lui r2, 260096
000d38  8be05018  sub.f.rn r1, r1, r5
000d3c  e3022f00  loadli.w r5,  16(r30)
000d40  8be01210  add.f.rn r1, r5, r1
000d44  8f800008  sqrt.f.rn r1, r1
000d48  8f071118  div.f.rn r15, r2, r1
000d4c  e300cff5  loadli.w r1,  -1312(r30)
000d50  b7d20000  beq r1, zero, 180
000d54  e300bff5  loadli.w r1,  -1320(r30)
000d58  97801100  and r1, r3, r1
000d5c  93001e04  setlt.u r1, r28, r1
000d60  3be00000  bneq r1, zero, 24
000d64  9bc00101  srli r1, r3, 16
000d68  9b801000  andi r1, r1, 1
000d6c  8b901110  add.s r1, r3, r1
000d70  8b900011  add.s r1, r1, r16
000d74  db010000  j 12
000d78  ab004000  lui r1, 1024
000d7c  97901100  or r1, r3, r1
000d80  33120228  sext_int2long r[5:6], r4
000d84  1f110000  addli r2, zero, 1
000d88  eb588f01  load.d r[18:19], 24(r30)
000d8c  9bc00001  srli r1, r1, 16
000d90  2b0500f0  lui r10, 983040
000d94  17322202  sll.d r[5:6], r[5:6], r2
000d98  6301bff5  loadli.w r2,  -1320(r30)
000d9c  73101ffc  store.h r1, -64(r30)
000da0  9710a700  or r1, r14, r10
000da4  00a00000  mfence { lm }
000da8  8ba84810  add.ul r[18:19], r[18:19], r[5:6]
000dac  17842700  and r8, r15, r2
000db0  1f018fff  addli r2, r30, -64
000db4  13048e04  setlt.u r8, r28, r8
000db8  ffb02800  s_lm2gm r1, r2, 0(r[18:19])
000dbc  00a00000  mfence { lm }
000dc0  3b600400  bneq r8, zero, 24
000dc4  9bc00701  srli r1, r15, 16
000dc8  9b801000  andi r1, r1, 1
000dcc  8b901710  add.s r1, r15, r1
000dd0  8b900011  add.s r1, r1, r16
000dd4  db010000  j 12
000dd8  ab004000  lui r1, 1024
000ddc  97901700  or r1, r15, r1
000de0  eb580f02  load.d r[18:19], 32(r30)
000de4  9bc00001  srli r1, r1, 16
000de8  2b0400f0  lui r8, 983040
000dec  73101ffc  store.h r1, -64(r30)
000df0  97108700  or r1, r14, r8
000df4  0ba24810  add.ul r[5:6], r[18:19], r[5:6]
000df8  00a00000  mfence { lm }
000dfc  ff302200  s_lm2gm r1, r2, 0(r[5:6])
000e00  00a00000  mfence { lm }
000e04  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000e08  ab000080  lui r1, 524288
000e0c  42150fc2  vload_mask16.mz vr10{mr1}, 1536(r30)
000e10  c2148fc2  vload_mask16.mz vr9{mr1}, 1600(r30)
000e14  eaa05422  vor.u.mz vr1{mr1}, r9, vr5
000e18  42130fc3  vload_mask16.mz vr6{mr1}, 1664(r30)
000e1c  2b014000  lui r2, 1024
000e20  9f461000  addli r13, zero, 12
000e24  17a21100  xor r4, r3, r1
000e28  9f100000  addli r1, zero, 1
000e2c  66c10280  vmerge_l.hf vr2, vr5, vr0
000e30  12112202  vadd.f.mz.rn vr2{mr1}, r4, vr2
000e34  0a912702  vmul.f.mz.rn vr2{mr1}, r15, vr2
000e38  92112002  vadd.f.mz.rn vr3{mr1}, zero, vr2
000e3c  42118fc3  vload_mask16.mz vr2{mr1}, 1728(r30)
000e40  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
000e44  46182f82  vstore_mask16.mz vr2{mr1}, 1152(r30)
000e48  6a215e22  vor.u.mz vr2{mr1}, r28, vr5
000e4c  e69201c0  vabs.f vr5, vr3
000e50  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
000e54  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
000e58  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
000e5c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
000e60  fe0101a0  vmmov r3, mr2
000e64  9bc0f100  srli r1, r3, 15
000e68  461c7f82  vstore_mask16.mz vr7{mr1}, 1216(r30)
000e6c  c2138fe2  vload_mask16.mz vr7{mr1}, 1856(r30)
000e70  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
000e74  9b801000  andi r1, r1, 1
000e78  92354802  vadd.s.mz vr11{mr1}, r16, vr4
000e7c  6a323122  vor.s.mz vr4{mr1}, r2, vr3
000e80  46145fa2  vstore_mask16.mz vr5{mr1}, 1344(r30)
000e84  3bb00000  bneq r1, zero, 12
000e88  fab8f540  vextracti.s r17, 15(vr11)
000e8c  5b010000  j 8
000e90  fa38f240  vextracti.s r17, 15(vr4)
000e94  9bc0e100  srli r1, r3, 14
000e98  1f110000  addli r2, zero, 1
000e9c  1f661000  addli r12, zero, 14
000ea0  9f252000  addli r11, zero, 18
000ea4  9b801000  andi r1, r1, 1
000ea8  7e0101e0  vmmov mr2, r2
000eac  3bb00000  bneq r1, zero, 12
000eb0  7ab9e540  vextracti.s r18, 14(vr11)
000eb4  5b010000  j 8
000eb8  7a39e240  vextracti.s r18, 14(vr4)
000ebc  9bc0d100  srli r1, r3, 13
000ec0  1f432000  addli r6, zero, 20
000ec4  9f632000  addli r7, zero, 22
000ec8  9b801000  andi r1, r1, 1
000ecc  3bb00000  bneq r1, zero, 12
000ed0  7ab4d540  vextracti.s r8, 13(vr11)
000ed4  5b010000  j 8
000ed8  7a34d240  vextracti.s r8, 13(vr4)
000edc  9bc0c100  srli r1, r3, 12
000ee0  1f013000  addli r2, zero, 24
000ee4  9b801000  andi r1, r1, 1
000ee8  3bb00000  bneq r1, zero, 12
000eec  fabbc540  vextracti.s r23, 12(vr11)
000ef0  5b010000  j 8
000ef4  fa3bc240  vextracti.s r23, 12(vr4)
000ef8  9bc0b100  srli r1, r3, 11
000efc  9b801000  andi r1, r1, 1
000f00  3bb00000  bneq r1, zero, 12
000f04  fab9b540  vextracti.s r19, 11(vr11)
000f08  5b010000  j 8
000f0c  fa39b240  vextracti.s r19, 11(vr4)
000f10  9bc0a100  srli r1, r3, 10
000f14  9b801000  andi r1, r1, 1
000f18  3bb00000  bneq r1, zero, 12
000f1c  7abaa540  vextracti.s r20, 10(vr11)
000f20  5b010000  j 8
000f24  7a3aa240  vextracti.s r20, 10(vr4)
000f28  9bc09100  srli r1, r3, 9
000f2c  9b801000  andi r1, r1, 1
000f30  3bb00000  bneq r1, zero, 12
000f34  fab29540  vextracti.s r5, 9(vr11)
000f38  5b010000  j 8
000f3c  fa329240  vextracti.s r5, 9(vr4)
000f40  9bc08100  srli r1, r3, 8
000f44  9b801000  andi r1, r1, 1
000f48  3bb00000  bneq r1, zero, 12
000f4c  7ab58540  vextracti.s r10, 8(vr11)
000f50  5b010000  j 8
000f54  7a358240  vextracti.s r10, 8(vr4)
000f58  9bc07100  srli r1, r3, 7
000f5c  9b801000  andi r1, r1, 1
000f60  3bb00000  bneq r1, zero, 12
000f64  faba7540  vextracti.s r21, 7(vr11)
000f68  5b010000  j 8
000f6c  fa3a7240  vextracti.s r21, 7(vr4)
000f70  9bc06100  srli r1, r3, 6
000f74  9b801000  andi r1, r1, 1
000f78  3bb00000  bneq r1, zero, 12
000f7c  7abc6540  vextracti.s r24, 6(vr11)
000f80  5b010000  j 8
000f84  7a3c6240  vextracti.s r24, 6(vr4)
000f88  9bc05100  srli r1, r3, 5
000f8c  9b801000  andi r1, r1, 1
000f90  3bb00000  bneq r1, zero, 12
000f94  fabc5540  vextracti.s r25, 5(vr11)
000f98  5b010000  j 8
000f9c  fa3c5240  vextracti.s r25, 5(vr4)
000fa0  9bc04100  srli r1, r3, 4
000fa4  9b801000  andi r1, r1, 1
000fa8  3bb00000  bneq r1, zero, 12
000fac  7abd4540  vextracti.s r26, 4(vr11)
000fb0  5b010000  j 8
000fb4  7a3d4240  vextracti.s r26, 4(vr4)
000fb8  9bc03100  srli r1, r3, 3
000fbc  9b801000  andi r1, r1, 1
000fc0  3bb00000  bneq r1, zero, 12
000fc4  fabd3540  vextracti.s r27, 3(vr11)
000fc8  5b010000  j 8
000fcc  fa3d3240  vextracti.s r27, 3(vr4)
000fd0  9bc02100  srli r1, r3, 2
000fd4  9b801000  andi r1, r1, 1
000fd8  3bb00000  bneq r1, zero, 12
000fdc  7abe2540  vextracti.s r28, 2(vr11)
000fe0  5b010000  j 8
000fe4  7a3e2240  vextracti.s r28, 2(vr4)
000fe8  9bc01100  srli r1, r3, 1
000fec  9b801000  andi r1, r1, 1
000ff0  3bb00000  bneq r1, zero, 12
000ff4  fab01540  vextracti.s r1, 1(vr11)
000ff8  5b010000  j 8
000ffc  fa301240  vextracti.s r1, 1(vr4)
001000  664004a0  vmerge_h.hf vr0, vr8, vr0
001004  9b811100  andi r3, r3, 1
001008  46107fa2  vstore_mask16.mz vr7{mr1}, 1280(r30)
00100c  12100202  vadd.f.mz.rn vr0{mr1}, r4, vr0
001010  8a920702  vmul.f.mz.rn vr5{mr1}, r15, vr0
001014  92125002  vadd.f.mz.rn vr5{mr1}, zero, vr5
001018  3bb00100  bneq r3, zero, 12
00101c  fab10540  vextracti.s r3, 0(vr11)
001020  5b010000  j 8
001024  fa310240  vextracti.s r3, 0(vr4)
001028  92318002  vadd.s.mz vr3{mr1}, zero, vr8
00102c  6eb250c2  vsrl.s.mz vr4{mr1}, vr1, vr5
001030  12303002  vadd.s.mz vr0{mr1}, zero, vr3
001034  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001038  9f210000  addli r3, zero, 2
00103c  fe8101e0  vmmov mr3, r3
001040  9f010001  addli r3, zero, 128
001044  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001048  9f400000  addli r1, zero, 4
00104c  7e8000e0  vmmov mr0, r1
001050  9f001000  addli r1, zero, 8
001054  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
001058  7e8100e0  vmmov mr2, r1
00105c  9f002000  addli r1, zero, 16
001060  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
001064  7e8100e0  vmmov mr2, r1
001068  9f004000  addli r1, zero, 32
00106c  fe8100e0  vmmov mr3, r1
001070  9f008000  addli r1, zero, 64
001074  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001078  7e8100e0  vmmov mr2, r1
00107c  9f000001  addli r1, zero, 128
001080  6aa00c36  vor.u.mh vr0{mr3}, r25, vr0
001084  6a200c34  vor.u.mh vr0{mr2}, r24, vr0
001088  7e8100e0  vmmov mr2, r1
00108c  9f000002  addli r1, zero, 256
001090  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
001094  7e8100e0  vmmov mr2, r1
001098  9f000004  addli r1, zero, 512
00109c  6a200534  vor.u.mh vr0{mr2}, r10, vr0
0010a0  7e8100e0  vmmov mr2, r1
0010a4  9f000008  addli r1, zero, 1024
0010a8  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0010ac  7e8100e0  vmmov mr2, r1
0010b0  9f000010  addli r1, zero, 2048
0010b4  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
0010b8  7e8100e0  vmmov mr2, r1
0010bc  9f000020  addli r1, zero, 4096
0010c0  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0010c4  7e8100e0  vmmov mr2, r1
0010c8  9f000040  addli r1, zero, 8192
0010cc  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0010d0  7e8100e0  vmmov mr2, r1
0010d4  ab400000  lui r1, 4
0010d8  6a200434  vor.u.mh vr0{mr2}, r8, vr0
0010dc  7e8100e0  vmmov mr2, r1
0010e0  ab800000  lui r1, 8
0010e4  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0010e8  7e8100e0  vmmov mr2, r1
0010ec  9f100000  addli r1, zero, 1
0010f0  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0010f4  7e8100e0  vmmov mr2, r1
0010f8  9f200000  addli r1, zero, 2
0010fc  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001100  7e8100e0  vmmov mr2, r1
001104  9f001000  addli r1, zero, 8
001108  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
00110c  7e8100e0  vmmov mr2, r1
001110  9f002000  addli r1, zero, 16
001114  ea413030  vor.hf.mh vr3{mr0}, zero, vr3
001118  ea413734  vor.hf.mh vr3{mr2}, r14, vr3
00111c  7e8100e0  vmmov mr2, r1
001120  9f400000  addli r1, zero, 4
001124  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001128  7e8101e0  vmmov mr2, r3
00112c  9f010004  addli r3, zero, 512
001130  eac13036  vor.hf.mh vr3{mr3}, r1, vr3
001134  9f008000  addli r1, zero, 64
001138  fe8100e0  vmmov mr3, r1
00113c  9f600000  addli r1, zero, 6
001140  ea413036  vor.hf.mh vr3{mr3}, zero, vr3
001144  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
001148  9f000002  addli r1, zero, 256
00114c  7e8100e0  vmmov mr2, r1
001150  9f001000  addli r1, zero, 8
001154  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001158  7e8101e0  vmmov mr2, r3
00115c  9f010010  addli r3, zero, 2048
001160  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
001164  9f000008  addli r1, zero, 1024
001168  7e8100e0  vmmov mr2, r1
00116c  9f201000  addli r1, zero, 10
001170  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001174  7e8101e0  vmmov mr2, r3
001178  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
00117c  9f000020  addli r1, zero, 4096
001180  7e8100e0  vmmov mr2, r1
001184  9f000040  addli r1, zero, 8192
001188  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
00118c  7e8100e0  vmmov mr2, r1
001190  ab400000  lui r1, 4
001194  eac13634  vor.hf.mh vr3{mr2}, r13, vr3
001198  7e8100e0  vmmov mr2, r1
00119c  ab800000  lui r1, 8
0011a0  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
0011a4  7e8100e0  vmmov mr2, r1
0011a8  ab000100  lui r1, 16
0011ac  ea413634  vor.hf.mh vr3{mr2}, r12, vr3
0011b0  7e8100e0  vmmov mr2, r1
0011b4  ab000200  lui r1, 32
0011b8  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
0011bc  7e8100e0  vmmov mr2, r1
0011c0  ab000400  lui r1, 64
0011c4  eac13434  vor.hf.mh vr3{mr2}, r9, vr3
0011c8  7e8100e0  vmmov mr2, r1
0011cc  ab000800  lui r1, 128
0011d0  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
0011d4  7e8100e0  vmmov mr2, r1
0011d8  ab001000  lui r1, 256
0011dc  eac13534  vor.hf.mh vr3{mr2}, r11, vr3
0011e0  7e8100e0  vmmov mr2, r1
0011e4  ab002000  lui r1, 512
0011e8  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
0011ec  7e8100e0  vmmov mr2, r1
0011f0  ab004000  lui r1, 1024
0011f4  ea413334  vor.hf.mh vr3{mr2}, r6, vr3
0011f8  7e8100e0  vmmov mr2, r1
0011fc  ab008000  lui r1, 2048
001200  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001204  7e8100e0  vmmov mr2, r1
001208  ab000001  lui r1, 4096
00120c  eac13334  vor.hf.mh vr3{mr2}, r7, vr3
001210  7e8100e0  vmmov mr2, r1
001214  ab000002  lui r1, 8192
001218  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
00121c  7e8100e0  vmmov mr2, r1
001220  ab000004  lui r1, 16384
001224  ea413134  vor.hf.mh vr3{mr2}, r2, vr3
001228  7e8100e0  vmmov mr2, r1
00122c  2b010008  lui r2, 32768
001230  9f203000  addli r1, zero, 26
001234  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001238  7e0101e0  vmmov mr2, r2
00123c  2b010020  lui r2, 131072
001240  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
001244  ab000010  lui r1, 65536
001248  7e8100e0  vmmov mr2, r1
00124c  9f100000  addli r1, zero, 1
001250  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001254  eab34002  vand.s.mz vr7{mr1}, r1, vr4
001258  9f403000  addli r1, zero, 28
00125c  7e0101e0  vmmov mr2, r2
001260  669202c0  vabs.f vr4, vr5
001264  2b010080  lui r2, 524288
001268  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
00126c  ab000040  lui r1, 262144
001270  96b37202  vadd.s.mz vr7{mr1}, vr5, vr7
001274  7e8100e0  vmmov mr2, r1
001278  9f603000  addli r1, zero, 30
00127c  ea413034  vor.hf.mh vr3{mr2}, zero, vr3
001280  76214142  vlt.u.mz mr2{mr1}, vr2, vr4
001284  12327802  vadd.s.mz vr4{mr1}, r16, vr7
001288  fe0b01a0  vmmov r23, mr2
00128c  7e0101e0  vmmov mr2, r2
001290  2b014000  lui r2, 1024
001294  ea355122  vor.s.mz vr11{mr1}, r2, vr5
001298  2ba1aaaa  lui r2, 699050
00129c  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
0012a0  9bc0fb00  srli r1, r23, 15
0012a4  1f215115  addli r2, r2, 2730
0012a8  9b801000  andi r1, r1, 1
0012ac  7e0101e0  vmmov mr2, r2
0012b0  92333002  vadd.s.mz vr7{mr1}, zero, vr3
0012b4  e2410b14  vscatter.mh vr0{mr2}, vr3{r22}
0012b8  3bb00000  bneq r1, zero, 12
0012bc  fa38f240  vextracti.s r17, 15(vr4)
0012c0  5b010000  j 8
0012c4  fab8f540  vextracti.s r17, 15(vr11)
0012c8  9bc0eb00  srli r1, r23, 14
0012cc  9f110000  addli r3, zero, 1
0012d0  1f612000  addli r2, zero, 22
0012d4  9f432000  addli r7, zero, 20
0012d8  1f232000  addli r6, zero, 18
0012dc  9f651000  addli r11, zero, 14
0012e0  1f461000  addli r12, zero, 12
0012e4  9f261000  addli r13, zero, 10
0012e8  9b801000  andi r1, r1, 1
0012ec  7e8101e0  vmmov mr2, r3
0012f0  3bb00000  bneq r1, zero, 12
0012f4  7a39e240  vextracti.s r18, 14(vr4)
0012f8  5b010000  j 8
0012fc  7ab9e540  vextracti.s r18, 14(vr11)
001300  9bc0db00  srli r1, r23, 13
001304  9b801000  andi r1, r1, 1
001308  3bb00000  bneq r1, zero, 12
00130c  7a34d240  vextracti.s r8, 13(vr4)
001310  5b010000  j 8
001314  7ab4d540  vextracti.s r8, 13(vr11)
001318  9bc0cb00  srli r1, r23, 12
00131c  9b801000  andi r1, r1, 1
001320  3bb00000  bneq r1, zero, 12
001324  fa31c240  vextracti.s r3, 12(vr4)
001328  5b010000  j 8
00132c  fab1c540  vextracti.s r3, 12(vr11)
001330  9bc0bb00  srli r1, r23, 11
001334  9b801000  andi r1, r1, 1
001338  3bb00000  bneq r1, zero, 12
00133c  fa39b240  vextracti.s r19, 11(vr4)
001340  5b010000  j 8
001344  fab9b540  vextracti.s r19, 11(vr11)
001348  9bc0ab00  srli r1, r23, 10
00134c  9b801000  andi r1, r1, 1
001350  3bb00000  bneq r1, zero, 12
001354  7a3aa240  vextracti.s r20, 10(vr4)
001358  5b010000  j 8
00135c  7abaa540  vextracti.s r20, 10(vr11)
001360  9bc09b00  srli r1, r23, 9
001364  9b801000  andi r1, r1, 1
001368  3bb00000  bneq r1, zero, 12
00136c  fa329240  vextracti.s r5, 9(vr4)
001370  5b010000  j 8
001374  fab29540  vextracti.s r5, 9(vr11)
001378  9bc08b00  srli r1, r23, 8
00137c  9b801000  andi r1, r1, 1
001380  3bb00000  bneq r1, zero, 12
001384  7a358240  vextracti.s r10, 8(vr4)
001388  5b010000  j 8
00138c  7ab58540  vextracti.s r10, 8(vr11)
001390  9bc07b00  srli r1, r23, 7
001394  9b801000  andi r1, r1, 1
001398  3bb00000  bneq r1, zero, 12
00139c  fa3a7240  vextracti.s r21, 7(vr4)
0013a0  5b010000  j 8
0013a4  faba7540  vextracti.s r21, 7(vr11)
0013a8  9bc06b00  srli r1, r23, 6
0013ac  9b801000  andi r1, r1, 1
0013b0  3bb00000  bneq r1, zero, 12
0013b4  7a3c6240  vextracti.s r24, 6(vr4)
0013b8  5b010000  j 8
0013bc  7abc6540  vextracti.s r24, 6(vr11)
0013c0  9bc05b00  srli r1, r23, 5
0013c4  9b801000  andi r1, r1, 1
0013c8  3bb00000  bneq r1, zero, 12
0013cc  fa3c5240  vextracti.s r25, 5(vr4)
0013d0  5b010000  j 8
0013d4  fabc5540  vextracti.s r25, 5(vr11)
0013d8  9bc04b00  srli r1, r23, 4
0013dc  9b801000  andi r1, r1, 1
0013e0  3bb00000  bneq r1, zero, 12
0013e4  7a3d4240  vextracti.s r26, 4(vr4)
0013e8  5b010000  j 8
0013ec  7abd4540  vextracti.s r26, 4(vr11)
0013f0  9bc03b00  srli r1, r23, 3
0013f4  9b801000  andi r1, r1, 1
0013f8  3bb00000  bneq r1, zero, 12
0013fc  fa3d3240  vextracti.s r27, 3(vr4)
001400  5b010000  j 8
001404  fabd3540  vextracti.s r27, 3(vr11)
001408  9bc02b00  srli r1, r23, 2
00140c  9b801000  andi r1, r1, 1
001410  3bb00000  bneq r1, zero, 12
001414  7a3e2240  vextracti.s r28, 2(vr4)
001418  5b010000  j 8
00141c  7abe2540  vextracti.s r28, 2(vr11)
001420  9bc01b00  srli r1, r23, 1
001424  9b801000  andi r1, r1, 1
001428  3be00000  bneq r1, zero, 24
00142c  fa301240  vextracti.s r1, 1(vr4)
001430  9b8b1b00  andi r23, r23, 1
001434  37e00b00  beq r23, zero, 24
001438  fabb0540  vextracti.s r23, 0(vr11)
00143c  db020000  j 20
001440  fab01540  vextracti.s r1, 1(vr11)
001444  9b8b1b00  andi r23, r23, 1
001448  bbcf0bfe  bneq r23, zero, -16
00144c  fa3b0240  vextracti.s r23, 0(vr4)
001450  92318002  vadd.s.mz vr3{mr1}, zero, vr8
001454  12303002  vadd.s.mz vr0{mr1}, zero, vr3
001458  e6c1a180  vmerge_l.hf vr3, vr3, vr10
00145c  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
001460  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
001464  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
001468  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
00146c  9f2b0000  addli r23, zero, 2
001470  7e810be0  vmmov mr2, r23
001474  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
001478  e69201c0  vabs.f vr5, vr3
00147c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001480  9f001000  addli r1, zero, 8
001484  7e8100e0  vmmov mr2, r1
001488  9f002000  addli r1, zero, 16
00148c  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
001490  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
001494  7e8100e0  vmmov mr2, r1
001498  9f004000  addli r1, zero, 32
00149c  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
0014a0  7e8100e0  vmmov mr2, r1
0014a4  9f000001  addli r1, zero, 128
0014a8  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
0014ac  7e8100e0  vmmov mr2, r1
0014b0  9f000002  addli r1, zero, 256
0014b4  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
0014b8  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
0014bc  7e8100e0  vmmov mr2, r1
0014c0  9f000004  addli r1, zero, 512
0014c4  6a200534  vor.u.mh vr0{mr2}, r10, vr0
0014c8  7e8100e0  vmmov mr2, r1
0014cc  9f000008  addli r1, zero, 1024
0014d0  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0014d4  7e8100e0  vmmov mr2, r1
0014d8  9f000010  addli r1, zero, 2048
0014dc  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
0014e0  7e8100e0  vmmov mr2, r1
0014e4  9f000020  addli r1, zero, 4096
0014e8  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0014ec  7e8100e0  vmmov mr2, r1
0014f0  9f100000  addli r1, zero, 1
0014f4  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
0014f8  9f000040  addli r1, zero, 8192
0014fc  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001500  7e8100e0  vmmov mr2, r1
001504  ab400000  lui r1, 4
001508  ab014000  lui r3, 1024
00150c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001510  eab53122  vor.s.mz vr11{mr1}, r3, vr3
001514  aba1aaaa  lui r3, 699050
001518  6a200434  vor.u.mh vr0{mr2}, r8, vr0
00151c  7e8100e0  vmmov mr2, r1
001520  ab800000  lui r1, 8
001524  9fa15115  addli r3, r3, 2730
001528  12324802  vadd.s.mz vr4{mr1}, r16, vr4
00152c  6a200934  vor.u.mh vr0{mr2}, r18, vr0
001530  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
001534  fe0b01a0  vmmov r23, mr2
001538  7e8100e0  vmmov mr2, r1
00153c  9bc0fb00  srli r1, r23, 15
001540  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001544  7e8101e0  vmmov mr2, r3
001548  e3013ff6  loadli.w r3,  -1256(r30)
00154c  9b801000  andi r1, r1, 1
001550  e2c30114  vscatter.mh vr0{mr2}, vr7{r3}
001554  3bb00000  bneq r1, zero, 12
001558  fa38f240  vextracti.s r17, 15(vr4)
00155c  5b010000  j 8
001560  fab8f540  vextracti.s r17, 15(vr11)
001564  9bc0eb00  srli r1, r23, 14
001568  9f110000  addli r3, zero, 1
00156c  9b801000  andi r1, r1, 1
001570  7e8101e0  vmmov mr2, r3
001574  3bb00000  bneq r1, zero, 12
001578  7a39e240  vextracti.s r18, 14(vr4)
00157c  5b010000  j 8
001580  7ab9e540  vextracti.s r18, 14(vr11)
001584  9bc0db00  srli r1, r23, 13
001588  9b801000  andi r1, r1, 1
00158c  3bb00000  bneq r1, zero, 12
001590  7a34d240  vextracti.s r8, 13(vr4)
001594  5b010000  j 8
001598  7ab4d540  vextracti.s r8, 13(vr11)
00159c  9bc0cb00  srli r1, r23, 12
0015a0  9b801000  andi r1, r1, 1
0015a4  3bb00000  bneq r1, zero, 12
0015a8  fa31c240  vextracti.s r3, 12(vr4)
0015ac  5b010000  j 8
0015b0  fab1c540  vextracti.s r3, 12(vr11)
0015b4  9bc0bb00  srli r1, r23, 11
0015b8  9b801000  andi r1, r1, 1
0015bc  3bb00000  bneq r1, zero, 12
0015c0  fa39b240  vextracti.s r19, 11(vr4)
0015c4  5b010000  j 8
0015c8  fab9b540  vextracti.s r19, 11(vr11)
0015cc  9bc0ab00  srli r1, r23, 10
0015d0  9b801000  andi r1, r1, 1
0015d4  3bb00000  bneq r1, zero, 12
0015d8  7a3aa240  vextracti.s r20, 10(vr4)
0015dc  5b010000  j 8
0015e0  7abaa540  vextracti.s r20, 10(vr11)
0015e4  9bc09b00  srli r1, r23, 9
0015e8  9b801000  andi r1, r1, 1
0015ec  3bb00000  bneq r1, zero, 12
0015f0  fa329240  vextracti.s r5, 9(vr4)
0015f4  5b010000  j 8
0015f8  fab29540  vextracti.s r5, 9(vr11)
0015fc  9bc08b00  srli r1, r23, 8
001600  9b801000  andi r1, r1, 1
001604  3bb00000  bneq r1, zero, 12
001608  7a358240  vextracti.s r10, 8(vr4)
00160c  5b010000  j 8
001610  7ab58540  vextracti.s r10, 8(vr11)
001614  9bc07b00  srli r1, r23, 7
001618  9b801000  andi r1, r1, 1
00161c  3bb00000  bneq r1, zero, 12
001620  fa3a7240  vextracti.s r21, 7(vr4)
001624  5b010000  j 8
001628  faba7540  vextracti.s r21, 7(vr11)
00162c  9bc06b00  srli r1, r23, 6
001630  9b801000  andi r1, r1, 1
001634  3bb00000  bneq r1, zero, 12
001638  7a3c6240  vextracti.s r24, 6(vr4)
00163c  5b010000  j 8
001640  7abc6540  vextracti.s r24, 6(vr11)
001644  9bc05b00  srli r1, r23, 5
001648  9b801000  andi r1, r1, 1
00164c  3bb00000  bneq r1, zero, 12
001650  fa3c5240  vextracti.s r25, 5(vr4)
001654  5b010000  j 8
001658  fabc5540  vextracti.s r25, 5(vr11)
00165c  9bc04b00  srli r1, r23, 4
001660  9b801000  andi r1, r1, 1
001664  3bb00000  bneq r1, zero, 12
001668  7a3d4240  vextracti.s r26, 4(vr4)
00166c  5b010000  j 8
001670  7abd4540  vextracti.s r26, 4(vr11)
001674  9bc03b00  srli r1, r23, 3
001678  9b801000  andi r1, r1, 1
00167c  3bb00000  bneq r1, zero, 12
001680  fa3d3240  vextracti.s r27, 3(vr4)
001684  5b010000  j 8
001688  fabd3540  vextracti.s r27, 3(vr11)
00168c  9bc02b00  srli r1, r23, 2
001690  9b801000  andi r1, r1, 1
001694  3bb00000  bneq r1, zero, 12
001698  7a3e2240  vextracti.s r28, 2(vr4)
00169c  5b010000  j 8
0016a0  7abe2540  vextracti.s r28, 2(vr11)
0016a4  9bc01b00  srli r1, r23, 1
0016a8  9b801000  andi r1, r1, 1
0016ac  3be00000  bneq r1, zero, 24
0016b0  fa301240  vextracti.s r1, 1(vr4)
0016b4  9b8b1b00  andi r23, r23, 1
0016b8  37e00b00  beq r23, zero, 24
0016bc  fabb0540  vextracti.s r23, 0(vr11)
0016c0  db020000  j 20
0016c4  fab01540  vextracti.s r1, 1(vr11)
0016c8  9b8b1b00  andi r23, r23, 1
0016cc  bbcf0bfe  bneq r23, zero, -16
0016d0  fa3b0240  vextracti.s r23, 0(vr4)
0016d4  92358002  vadd.s.mz vr11{mr1}, zero, vr8
0016d8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0016dc  e6c1a5a0  vmerge_h.hf vr3, vr11, vr10
0016e0  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
0016e4  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
0016e8  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0016ec  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0016f0  9f2b0000  addli r23, zero, 2
0016f4  7e810be0  vmmov mr2, r23
0016f8  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
0016fc  e69201c0  vabs.f vr5, vr3
001700  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001704  9f001000  addli r1, zero, 8
001708  7e8100e0  vmmov mr2, r1
00170c  9f002000  addli r1, zero, 16
001710  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
001714  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
001718  7e8100e0  vmmov mr2, r1
00171c  9f004000  addli r1, zero, 32
001720  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001724  7e8100e0  vmmov mr2, r1
001728  9f000001  addli r1, zero, 128
00172c  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
001730  7e8100e0  vmmov mr2, r1
001734  9f000002  addli r1, zero, 256
001738  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
00173c  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
001740  7e8100e0  vmmov mr2, r1
001744  9f000004  addli r1, zero, 512
001748  6a200534  vor.u.mh vr0{mr2}, r10, vr0
00174c  7e8100e0  vmmov mr2, r1
001750  9f000008  addli r1, zero, 1024
001754  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
001758  7e8100e0  vmmov mr2, r1
00175c  9f000010  addli r1, zero, 2048
001760  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
001764  7e8100e0  vmmov mr2, r1
001768  9f000020  addli r1, zero, 4096
00176c  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
001770  7e8100e0  vmmov mr2, r1
001774  9f100000  addli r1, zero, 1
001778  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
00177c  9f000040  addli r1, zero, 8192
001780  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001784  7e8100e0  vmmov mr2, r1
001788  ab400000  lui r1, 4
00178c  ab014000  lui r3, 1024
001790  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001794  6ab53122  vor.s.mz vr10{mr1}, r3, vr3
001798  aba1aaaa  lui r3, 699050
00179c  6a200434  vor.u.mh vr0{mr2}, r8, vr0
0017a0  7e8100e0  vmmov mr2, r1
0017a4  ab800000  lui r1, 8
0017a8  9fa15115  addli r3, r3, 2730
0017ac  12324802  vadd.s.mz vr4{mr1}, r16, vr4
0017b0  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0017b4  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
0017b8  fe0b01a0  vmmov r23, mr2
0017bc  7e8100e0  vmmov mr2, r1
0017c0  9bc0fb00  srli r1, r23, 15
0017c4  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0017c8  7e8101e0  vmmov mr2, r3
0017cc  e3416ff6  loadli.w r3,  -1228(r30)
0017d0  9b801000  andi r1, r1, 1
0017d4  e2c30114  vscatter.mh vr0{mr2}, vr7{r3}
0017d8  3bb00000  bneq r1, zero, 12
0017dc  fa38f240  vextracti.s r17, 15(vr4)
0017e0  5b010000  j 8
0017e4  fa38f540  vextracti.s r17, 15(vr10)
0017e8  9bc0eb00  srli r1, r23, 14
0017ec  9f110000  addli r3, zero, 1
0017f0  9b801000  andi r1, r1, 1
0017f4  7e8101e0  vmmov mr2, r3
0017f8  3bb00000  bneq r1, zero, 12
0017fc  7a39e240  vextracti.s r18, 14(vr4)
001800  5b010000  j 8
001804  7a39e540  vextracti.s r18, 14(vr10)
001808  9bc0db00  srli r1, r23, 13
00180c  9b801000  andi r1, r1, 1
001810  3bb00000  bneq r1, zero, 12
001814  7a34d240  vextracti.s r8, 13(vr4)
001818  5b010000  j 8
00181c  7a34d540  vextracti.s r8, 13(vr10)
001820  9bc0cb00  srli r1, r23, 12
001824  9b801000  andi r1, r1, 1
001828  3bb00000  bneq r1, zero, 12
00182c  fa31c240  vextracti.s r3, 12(vr4)
001830  5b010000  j 8
001834  fa31c540  vextracti.s r3, 12(vr10)
001838  9bc0bb00  srli r1, r23, 11
00183c  9b801000  andi r1, r1, 1
001840  3bb00000  bneq r1, zero, 12
001844  fa39b240  vextracti.s r19, 11(vr4)
001848  5b010000  j 8
00184c  fa39b540  vextracti.s r19, 11(vr10)
001850  9bc0ab00  srli r1, r23, 10
001854  9b801000  andi r1, r1, 1
001858  3bb00000  bneq r1, zero, 12
00185c  7a3aa240  vextracti.s r20, 10(vr4)
001860  5b010000  j 8
001864  7a3aa540  vextracti.s r20, 10(vr10)
001868  9bc09b00  srli r1, r23, 9
00186c  9b801000  andi r1, r1, 1
001870  3bb00000  bneq r1, zero, 12
001874  fa329240  vextracti.s r5, 9(vr4)
001878  5b010000  j 8
00187c  fa329540  vextracti.s r5, 9(vr10)
001880  9bc08b00  srli r1, r23, 8
001884  9b801000  andi r1, r1, 1
001888  3bb00000  bneq r1, zero, 12
00188c  7a358240  vextracti.s r10, 8(vr4)
001890  5b010000  j 8
001894  7a358540  vextracti.s r10, 8(vr10)
001898  9bc07b00  srli r1, r23, 7
00189c  9b801000  andi r1, r1, 1
0018a0  3bb00000  bneq r1, zero, 12
0018a4  fa3a7240  vextracti.s r21, 7(vr4)
0018a8  5b010000  j 8
0018ac  fa3a7540  vextracti.s r21, 7(vr10)
0018b0  9bc06b00  srli r1, r23, 6
0018b4  9b801000  andi r1, r1, 1
0018b8  3bb00000  bneq r1, zero, 12
0018bc  7a3c6240  vextracti.s r24, 6(vr4)
0018c0  5b010000  j 8
0018c4  7a3c6540  vextracti.s r24, 6(vr10)
0018c8  9bc05b00  srli r1, r23, 5
0018cc  9b801000  andi r1, r1, 1
0018d0  3bb00000  bneq r1, zero, 12
0018d4  fa3c5240  vextracti.s r25, 5(vr4)
0018d8  5b010000  j 8
0018dc  fa3c5540  vextracti.s r25, 5(vr10)
0018e0  9bc04b00  srli r1, r23, 4
0018e4  9b801000  andi r1, r1, 1
0018e8  3bb00000  bneq r1, zero, 12
0018ec  7a3d4240  vextracti.s r26, 4(vr4)
0018f0  5b010000  j 8
0018f4  7a3d4540  vextracti.s r26, 4(vr10)
0018f8  9bc03b00  srli r1, r23, 3
0018fc  9b801000  andi r1, r1, 1
001900  3bb00000  bneq r1, zero, 12
001904  fa3d3240  vextracti.s r27, 3(vr4)
001908  5b010000  j 8
00190c  fa3d3540  vextracti.s r27, 3(vr10)
001910  9bc02b00  srli r1, r23, 2
001914  9b801000  andi r1, r1, 1
001918  3bb00000  bneq r1, zero, 12
00191c  7a3e2240  vextracti.s r28, 2(vr4)
001920  5b010000  j 8
001924  7a3e2540  vextracti.s r28, 2(vr10)
001928  9bc01b00  srli r1, r23, 1
00192c  9b801000  andi r1, r1, 1
001930  3be00000  bneq r1, zero, 24
001934  fa301240  vextracti.s r1, 1(vr4)
001938  9b8b1b00  andi r23, r23, 1
00193c  37e00b00  beq r23, zero, 24
001940  fa3b0540  vextracti.s r23, 0(vr10)
001944  db020000  j 20
001948  fa301540  vextracti.s r1, 1(vr10)
00194c  9b8b1b00  andi r23, r23, 1
001950  bbcf0bfe  bneq r23, zero, -16
001954  fa3b0240  vextracti.s r23, 0(vr4)
001958  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
00195c  e6c19580  vmerge_l.hf vr3, vr11, vr9
001960  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
001964  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
001968  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
00196c  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
001970  9f2b0000  addli r23, zero, 2
001974  7e810be0  vmmov mr2, r23
001978  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
00197c  e69201c0  vabs.f vr5, vr3
001980  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001984  9f001000  addli r1, zero, 8
001988  7e8100e0  vmmov mr2, r1
00198c  9f002000  addli r1, zero, 16
001990  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
001994  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
001998  7e8100e0  vmmov mr2, r1
00199c  9f004000  addli r1, zero, 32
0019a0  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
0019a4  7e8100e0  vmmov mr2, r1
0019a8  9f000001  addli r1, zero, 128
0019ac  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
0019b0  7e8100e0  vmmov mr2, r1
0019b4  9f000002  addli r1, zero, 256
0019b8  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
0019bc  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
0019c0  7e8100e0  vmmov mr2, r1
0019c4  9f000004  addli r1, zero, 512
0019c8  6a200534  vor.u.mh vr0{mr2}, r10, vr0
0019cc  7e8100e0  vmmov mr2, r1
0019d0  9f000008  addli r1, zero, 1024
0019d4  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0019d8  7e8100e0  vmmov mr2, r1
0019dc  9f000010  addli r1, zero, 2048
0019e0  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
0019e4  7e8100e0  vmmov mr2, r1
0019e8  9f000020  addli r1, zero, 4096
0019ec  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0019f0  7e8100e0  vmmov mr2, r1
0019f4  9f100000  addli r1, zero, 1
0019f8  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
0019fc  9f000040  addli r1, zero, 8192
001a00  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001a04  7e8100e0  vmmov mr2, r1
001a08  ab400000  lui r1, 4
001a0c  ab014000  lui r3, 1024
001a10  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001a14  6ab53122  vor.s.mz vr10{mr1}, r3, vr3
001a18  aba1aaaa  lui r3, 699050
001a1c  6a200434  vor.u.mh vr0{mr2}, r8, vr0
001a20  7e8100e0  vmmov mr2, r1
001a24  ab800000  lui r1, 8
001a28  9fa15115  addli r3, r3, 2730
001a2c  12324802  vadd.s.mz vr4{mr1}, r16, vr4
001a30  6a200934  vor.u.mh vr0{mr2}, r18, vr0
001a34  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
001a38  fe0b01a0  vmmov r23, mr2
001a3c  7e8100e0  vmmov mr2, r1
001a40  9bc0fb00  srli r1, r23, 15
001a44  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001a48  7e8101e0  vmmov mr2, r3
001a4c  e3412ff6  loadli.w r3,  -1260(r30)
001a50  9b801000  andi r1, r1, 1
001a54  e2c30114  vscatter.mh vr0{mr2}, vr7{r3}
001a58  3bb00000  bneq r1, zero, 12
001a5c  fa38f240  vextracti.s r17, 15(vr4)
001a60  5b010000  j 8
001a64  fa38f540  vextracti.s r17, 15(vr10)
001a68  9bc0eb00  srli r1, r23, 14
001a6c  9f110000  addli r3, zero, 1
001a70  9b801000  andi r1, r1, 1
001a74  7e8101e0  vmmov mr2, r3
001a78  3bb00000  bneq r1, zero, 12
001a7c  7a39e240  vextracti.s r18, 14(vr4)
001a80  5b010000  j 8
001a84  7a39e540  vextracti.s r18, 14(vr10)
001a88  9bc0db00  srli r1, r23, 13
001a8c  9b801000  andi r1, r1, 1
001a90  3bb00000  bneq r1, zero, 12
001a94  7a34d240  vextracti.s r8, 13(vr4)
001a98  5b010000  j 8
001a9c  7a34d540  vextracti.s r8, 13(vr10)
001aa0  9bc0cb00  srli r1, r23, 12
001aa4  9b801000  andi r1, r1, 1
001aa8  3bb00000  bneq r1, zero, 12
001aac  fa31c240  vextracti.s r3, 12(vr4)
001ab0  5b010000  j 8
001ab4  fa31c540  vextracti.s r3, 12(vr10)
001ab8  9bc0bb00  srli r1, r23, 11
001abc  9b801000  andi r1, r1, 1
001ac0  3bb00000  bneq r1, zero, 12
001ac4  fa39b240  vextracti.s r19, 11(vr4)
001ac8  5b010000  j 8
001acc  fa39b540  vextracti.s r19, 11(vr10)
001ad0  9bc0ab00  srli r1, r23, 10
001ad4  9b801000  andi r1, r1, 1
001ad8  3bb00000  bneq r1, zero, 12
001adc  7a3aa240  vextracti.s r20, 10(vr4)
001ae0  5b010000  j 8
001ae4  7a3aa540  vextracti.s r20, 10(vr10)
001ae8  9bc09b00  srli r1, r23, 9
001aec  9b801000  andi r1, r1, 1
001af0  3bb00000  bneq r1, zero, 12
001af4  fa329240  vextracti.s r5, 9(vr4)
001af8  5b010000  j 8
001afc  fa329540  vextracti.s r5, 9(vr10)
001b00  9bc08b00  srli r1, r23, 8
001b04  9b801000  andi r1, r1, 1
001b08  3bb00000  bneq r1, zero, 12
001b0c  7a358240  vextracti.s r10, 8(vr4)
001b10  5b010000  j 8
001b14  7a358540  vextracti.s r10, 8(vr10)
001b18  9bc07b00  srli r1, r23, 7
001b1c  9b801000  andi r1, r1, 1
001b20  3bb00000  bneq r1, zero, 12
001b24  fa3a7240  vextracti.s r21, 7(vr4)
001b28  5b010000  j 8
001b2c  fa3a7540  vextracti.s r21, 7(vr10)
001b30  9bc06b00  srli r1, r23, 6
001b34  9b801000  andi r1, r1, 1
001b38  3bb00000  bneq r1, zero, 12
001b3c  7a3c6240  vextracti.s r24, 6(vr4)
001b40  5b010000  j 8
001b44  7a3c6540  vextracti.s r24, 6(vr10)
001b48  9bc05b00  srli r1, r23, 5
001b4c  9b801000  andi r1, r1, 1
001b50  3bb00000  bneq r1, zero, 12
001b54  fa3c5240  vextracti.s r25, 5(vr4)
001b58  5b010000  j 8
001b5c  fa3c5540  vextracti.s r25, 5(vr10)
001b60  9bc04b00  srli r1, r23, 4
001b64  9b801000  andi r1, r1, 1
001b68  3bb00000  bneq r1, zero, 12
001b6c  7a3d4240  vextracti.s r26, 4(vr4)
001b70  5b010000  j 8
001b74  7a3d4540  vextracti.s r26, 4(vr10)
001b78  9bc03b00  srli r1, r23, 3
001b7c  9b801000  andi r1, r1, 1
001b80  3bb00000  bneq r1, zero, 12
001b84  fa3d3240  vextracti.s r27, 3(vr4)
001b88  5b010000  j 8
001b8c  fa3d3540  vextracti.s r27, 3(vr10)
001b90  9bc02b00  srli r1, r23, 2
001b94  9b801000  andi r1, r1, 1
001b98  3bb00000  bneq r1, zero, 12
001b9c  7a3e2240  vextracti.s r28, 2(vr4)
001ba0  5b010000  j 8
001ba4  7a3e2540  vextracti.s r28, 2(vr10)
001ba8  9bc01b00  srli r1, r23, 1
001bac  9b801000  andi r1, r1, 1
001bb0  3be00000  bneq r1, zero, 24
001bb4  fa301240  vextracti.s r1, 1(vr4)
001bb8  9b8b1b00  andi r23, r23, 1
001bbc  37e00b00  beq r23, zero, 24
001bc0  fa3b0540  vextracti.s r23, 0(vr10)
001bc4  db020000  j 20
001bc8  fa301540  vextracti.s r1, 1(vr10)
001bcc  9b8b1b00  andi r23, r23, 1
001bd0  bbcf0bfe  bneq r23, zero, -16
001bd4  fa3b0240  vextracti.s r23, 0(vr4)
001bd8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
001bdc  e6c195a0  vmerge_h.hf vr3, vr11, vr9
001be0  12357002  vadd.s.mz vr10{mr1}, zero, vr7
001be4  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
001be8  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
001bec  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
001bf0  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
001bf4  9f2b0000  addli r23, zero, 2
001bf8  7e810be0  vmmov mr2, r23
001bfc  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
001c00  e69201c0  vabs.f vr5, vr3
001c04  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001c08  9f001000  addli r1, zero, 8
001c0c  7e8100e0  vmmov mr2, r1
001c10  9f002000  addli r1, zero, 16
001c14  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
001c18  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
001c1c  7e8100e0  vmmov mr2, r1
001c20  9f004000  addli r1, zero, 32
001c24  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001c28  7e8100e0  vmmov mr2, r1
001c2c  9f000001  addli r1, zero, 128
001c30  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
001c34  7e8100e0  vmmov mr2, r1
001c38  9f000002  addli r1, zero, 256
001c3c  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
001c40  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
001c44  7e8100e0  vmmov mr2, r1
001c48  9f000004  addli r1, zero, 512
001c4c  6a200534  vor.u.mh vr0{mr2}, r10, vr0
001c50  7e8100e0  vmmov mr2, r1
001c54  9f000008  addli r1, zero, 1024
001c58  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
001c5c  7e8100e0  vmmov mr2, r1
001c60  9f000010  addli r1, zero, 2048
001c64  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
001c68  7e8100e0  vmmov mr2, r1
001c6c  9f000020  addli r1, zero, 4096
001c70  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
001c74  7e8100e0  vmmov mr2, r1
001c78  9f100000  addli r1, zero, 1
001c7c  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
001c80  9f000040  addli r1, zero, 8192
001c84  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001c88  7e8100e0  vmmov mr2, r1
001c8c  ab400000  lui r1, 4
001c90  ab014000  lui r3, 1024
001c94  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001c98  eab43122  vor.s.mz vr9{mr1}, r3, vr3
001c9c  aba1aaaa  lui r3, 699050
001ca0  6a200434  vor.u.mh vr0{mr2}, r8, vr0
001ca4  7e8100e0  vmmov mr2, r1
001ca8  ab800000  lui r1, 8
001cac  9fa15115  addli r3, r3, 2730
001cb0  12324802  vadd.s.mz vr4{mr1}, r16, vr4
001cb4  6a200934  vor.u.mh vr0{mr2}, r18, vr0
001cb8  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
001cbc  fe0b01a0  vmmov r23, mr2
001cc0  7e8100e0  vmmov mr2, r1
001cc4  9bc0fb00  srli r1, r23, 15
001cc8  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001ccc  7e8101e0  vmmov mr2, r3
001cd0  e3016ff6  loadli.w r3,  -1232(r30)
001cd4  9b801000  andi r1, r1, 1
001cd8  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
001cdc  3bb00000  bneq r1, zero, 12
001ce0  fa38f240  vextracti.s r17, 15(vr4)
001ce4  5b010000  j 8
001ce8  fab8f440  vextracti.s r17, 15(vr9)
001cec  c2130f83  vload_mask16.mz vr7{mr1}, 1152(r30)
001cf0  9bc0eb00  srli r1, r23, 14
001cf4  9f110000  addli r3, zero, 1
001cf8  9b801000  andi r1, r1, 1
001cfc  7e8101e0  vmmov mr2, r3
001d00  3bb00000  bneq r1, zero, 12
001d04  7a39e240  vextracti.s r18, 14(vr4)
001d08  5b010000  j 8
001d0c  7ab9e440  vextracti.s r18, 14(vr9)
001d10  9bc0db00  srli r1, r23, 13
001d14  9b801000  andi r1, r1, 1
001d18  3bb00000  bneq r1, zero, 12
001d1c  7a34d240  vextracti.s r8, 13(vr4)
001d20  5b010000  j 8
001d24  7ab4d440  vextracti.s r8, 13(vr9)
001d28  9bc0cb00  srli r1, r23, 12
001d2c  9b801000  andi r1, r1, 1
001d30  3bb00000  bneq r1, zero, 12
001d34  fa31c240  vextracti.s r3, 12(vr4)
001d38  5b010000  j 8
001d3c  fab1c440  vextracti.s r3, 12(vr9)
001d40  9bc0bb00  srli r1, r23, 11
001d44  9b801000  andi r1, r1, 1
001d48  3bb00000  bneq r1, zero, 12
001d4c  fa39b240  vextracti.s r19, 11(vr4)
001d50  5b010000  j 8
001d54  fab9b440  vextracti.s r19, 11(vr9)
001d58  9bc0ab00  srli r1, r23, 10
001d5c  9b801000  andi r1, r1, 1
001d60  3bb00000  bneq r1, zero, 12
001d64  7a3aa240  vextracti.s r20, 10(vr4)
001d68  5b010000  j 8
001d6c  7abaa440  vextracti.s r20, 10(vr9)
001d70  9bc09b00  srli r1, r23, 9
001d74  9b801000  andi r1, r1, 1
001d78  3bb00000  bneq r1, zero, 12
001d7c  fa329240  vextracti.s r5, 9(vr4)
001d80  5b010000  j 8
001d84  fab29440  vextracti.s r5, 9(vr9)
001d88  9bc08b00  srli r1, r23, 8
001d8c  9b801000  andi r1, r1, 1
001d90  3bb00000  bneq r1, zero, 12
001d94  7a358240  vextracti.s r10, 8(vr4)
001d98  5b010000  j 8
001d9c  7ab58440  vextracti.s r10, 8(vr9)
001da0  9bc07b00  srli r1, r23, 7
001da4  9b801000  andi r1, r1, 1
001da8  3bb00000  bneq r1, zero, 12
001dac  fa3a7240  vextracti.s r21, 7(vr4)
001db0  5b010000  j 8
001db4  faba7440  vextracti.s r21, 7(vr9)
001db8  9bc06b00  srli r1, r23, 6
001dbc  9b801000  andi r1, r1, 1
001dc0  3bb00000  bneq r1, zero, 12
001dc4  7a3c6240  vextracti.s r24, 6(vr4)
001dc8  5b010000  j 8
001dcc  7abc6440  vextracti.s r24, 6(vr9)
001dd0  9bc05b00  srli r1, r23, 5
001dd4  9b801000  andi r1, r1, 1
001dd8  3bb00000  bneq r1, zero, 12
001ddc  fa3c5240  vextracti.s r25, 5(vr4)
001de0  5b010000  j 8
001de4  fabc5440  vextracti.s r25, 5(vr9)
001de8  9bc04b00  srli r1, r23, 4
001dec  9b801000  andi r1, r1, 1
001df0  3bb00000  bneq r1, zero, 12
001df4  7a3d4240  vextracti.s r26, 4(vr4)
001df8  5b010000  j 8
001dfc  7abd4440  vextracti.s r26, 4(vr9)
001e00  9bc03b00  srli r1, r23, 3
001e04  9b801000  andi r1, r1, 1
001e08  3bb00000  bneq r1, zero, 12
001e0c  fa3d3240  vextracti.s r27, 3(vr4)
001e10  5b010000  j 8
001e14  fabd3440  vextracti.s r27, 3(vr9)
001e18  9bc02b00  srli r1, r23, 2
001e1c  9b801000  andi r1, r1, 1
001e20  3bb00000  bneq r1, zero, 12
001e24  7a3e2240  vextracti.s r28, 2(vr4)
001e28  5b010000  j 8
001e2c  7abe2440  vextracti.s r28, 2(vr9)
001e30  9bc01b00  srli r1, r23, 1
001e34  9b801000  andi r1, r1, 1
001e38  3be00000  bneq r1, zero, 24
001e3c  fa301240  vextracti.s r1, 1(vr4)
001e40  9b8b1b00  andi r23, r23, 1
001e44  37e00b00  beq r23, zero, 24
001e48  fabb0440  vextracti.s r23, 0(vr9)
001e4c  db020000  j 20
001e50  fab01440  vextracti.s r1, 1(vr9)
001e54  9b8b1b00  andi r23, r23, 1
001e58  bbcf0bfe  bneq r23, zero, -16
001e5c  fa3b0240  vextracti.s r23, 0(vr4)
001e60  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
001e64  e6c16580  vmerge_l.hf vr3, vr11, vr6
001e68  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
001e6c  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
001e70  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
001e74  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
001e78  9f2b0000  addli r23, zero, 2
001e7c  7e810be0  vmmov mr2, r23
001e80  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
001e84  e69201c0  vabs.f vr5, vr3
001e88  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001e8c  9f001000  addli r1, zero, 8
001e90  7e8100e0  vmmov mr2, r1
001e94  9f002000  addli r1, zero, 16
001e98  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
001e9c  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
001ea0  7e8100e0  vmmov mr2, r1
001ea4  9f004000  addli r1, zero, 32
001ea8  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
001eac  7e8100e0  vmmov mr2, r1
001eb0  9f000001  addli r1, zero, 128
001eb4  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
001eb8  7e8100e0  vmmov mr2, r1
001ebc  9f000002  addli r1, zero, 256
001ec0  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
001ec4  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
001ec8  7e8100e0  vmmov mr2, r1
001ecc  9f000004  addli r1, zero, 512
001ed0  6a200534  vor.u.mh vr0{mr2}, r10, vr0
001ed4  7e8100e0  vmmov mr2, r1
001ed8  9f000008  addli r1, zero, 1024
001edc  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
001ee0  7e8100e0  vmmov mr2, r1
001ee4  9f000010  addli r1, zero, 2048
001ee8  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
001eec  7e8100e0  vmmov mr2, r1
001ef0  9f000020  addli r1, zero, 4096
001ef4  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
001ef8  7e8100e0  vmmov mr2, r1
001efc  9f100000  addli r1, zero, 1
001f00  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
001f04  9f000040  addli r1, zero, 8192
001f08  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001f0c  7e8100e0  vmmov mr2, r1
001f10  ab400000  lui r1, 4
001f14  ab014000  lui r3, 1024
001f18  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
001f1c  eab43122  vor.s.mz vr9{mr1}, r3, vr3
001f20  aba1aaaa  lui r3, 699050
001f24  6a200434  vor.u.mh vr0{mr2}, r8, vr0
001f28  7e8100e0  vmmov mr2, r1
001f2c  ab800000  lui r1, 8
001f30  9fa15115  addli r3, r3, 2730
001f34  12324802  vadd.s.mz vr4{mr1}, r16, vr4
001f38  6a200934  vor.u.mh vr0{mr2}, r18, vr0
001f3c  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
001f40  fe0b01a0  vmmov r23, mr2
001f44  7e8100e0  vmmov mr2, r1
001f48  9bc0fb00  srli r1, r23, 15
001f4c  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
001f50  7e8101e0  vmmov mr2, r3
001f54  e3012ff6  loadli.w r3,  -1264(r30)
001f58  9b801000  andi r1, r1, 1
001f5c  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
001f60  3bb00000  bneq r1, zero, 12
001f64  fa38f240  vextracti.s r17, 15(vr4)
001f68  5b010000  j 8
001f6c  fab8f440  vextracti.s r17, 15(vr9)
001f70  9bc0eb00  srli r1, r23, 14
001f74  9f110000  addli r3, zero, 1
001f78  9b801000  andi r1, r1, 1
001f7c  7e8101e0  vmmov mr2, r3
001f80  3bb00000  bneq r1, zero, 12
001f84  7a39e240  vextracti.s r18, 14(vr4)
001f88  5b010000  j 8
001f8c  7ab9e440  vextracti.s r18, 14(vr9)
001f90  9bc0db00  srli r1, r23, 13
001f94  9b801000  andi r1, r1, 1
001f98  3bb00000  bneq r1, zero, 12
001f9c  7a34d240  vextracti.s r8, 13(vr4)
001fa0  5b010000  j 8
001fa4  7ab4d440  vextracti.s r8, 13(vr9)
001fa8  9bc0cb00  srli r1, r23, 12
001fac  9b801000  andi r1, r1, 1
001fb0  3bb00000  bneq r1, zero, 12
001fb4  fa31c240  vextracti.s r3, 12(vr4)
001fb8  5b010000  j 8
001fbc  fab1c440  vextracti.s r3, 12(vr9)
001fc0  9bc0bb00  srli r1, r23, 11
001fc4  9b801000  andi r1, r1, 1
001fc8  3bb00000  bneq r1, zero, 12
001fcc  fa39b240  vextracti.s r19, 11(vr4)
001fd0  5b010000  j 8
001fd4  fab9b440  vextracti.s r19, 11(vr9)
001fd8  9bc0ab00  srli r1, r23, 10
001fdc  9b801000  andi r1, r1, 1
001fe0  3bb00000  bneq r1, zero, 12
001fe4  7a3aa240  vextracti.s r20, 10(vr4)
001fe8  5b010000  j 8
001fec  7abaa440  vextracti.s r20, 10(vr9)
001ff0  9bc09b00  srli r1, r23, 9
001ff4  9b801000  andi r1, r1, 1
001ff8  3bb00000  bneq r1, zero, 12
001ffc  fa329240  vextracti.s r5, 9(vr4)
002000  5b010000  j 8
002004  fab29440  vextracti.s r5, 9(vr9)
002008  9bc08b00  srli r1, r23, 8
00200c  9b801000  andi r1, r1, 1
002010  3bb00000  bneq r1, zero, 12
002014  7a358240  vextracti.s r10, 8(vr4)
002018  5b010000  j 8
00201c  7ab58440  vextracti.s r10, 8(vr9)
002020  9bc07b00  srli r1, r23, 7
002024  9b801000  andi r1, r1, 1
002028  3bb00000  bneq r1, zero, 12
00202c  fa3a7240  vextracti.s r21, 7(vr4)
002030  5b010000  j 8
002034  faba7440  vextracti.s r21, 7(vr9)
002038  9bc06b00  srli r1, r23, 6
00203c  9b801000  andi r1, r1, 1
002040  3bb00000  bneq r1, zero, 12
002044  7a3c6240  vextracti.s r24, 6(vr4)
002048  5b010000  j 8
00204c  7abc6440  vextracti.s r24, 6(vr9)
002050  9bc05b00  srli r1, r23, 5
002054  9b801000  andi r1, r1, 1
002058  3bb00000  bneq r1, zero, 12
00205c  fa3c5240  vextracti.s r25, 5(vr4)
002060  5b010000  j 8
002064  fabc5440  vextracti.s r25, 5(vr9)
002068  9bc04b00  srli r1, r23, 4
00206c  9b801000  andi r1, r1, 1
002070  3bb00000  bneq r1, zero, 12
002074  7a3d4240  vextracti.s r26, 4(vr4)
002078  5b010000  j 8
00207c  7abd4440  vextracti.s r26, 4(vr9)
002080  9bc03b00  srli r1, r23, 3
002084  9b801000  andi r1, r1, 1
002088  3bb00000  bneq r1, zero, 12
00208c  fa3d3240  vextracti.s r27, 3(vr4)
002090  5b010000  j 8
002094  fabd3440  vextracti.s r27, 3(vr9)
002098  9bc02b00  srli r1, r23, 2
00209c  9b801000  andi r1, r1, 1
0020a0  3bb00000  bneq r1, zero, 12
0020a4  7a3e2240  vextracti.s r28, 2(vr4)
0020a8  5b010000  j 8
0020ac  7abe2440  vextracti.s r28, 2(vr9)
0020b0  9bc01b00  srli r1, r23, 1
0020b4  9b801000  andi r1, r1, 1
0020b8  3be00000  bneq r1, zero, 24
0020bc  fa301240  vextracti.s r1, 1(vr4)
0020c0  9b8b1b00  andi r23, r23, 1
0020c4  37e00b00  beq r23, zero, 24
0020c8  fabb0440  vextracti.s r23, 0(vr9)
0020cc  db020000  j 20
0020d0  fab01440  vextracti.s r1, 1(vr9)
0020d4  9b8b1b00  andi r23, r23, 1
0020d8  bbcf0bfe  bneq r23, zero, -16
0020dc  fa3b0240  vextracti.s r23, 0(vr4)
0020e0  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0020e4  e6c165a0  vmerge_h.hf vr3, vr11, vr6
0020e8  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
0020ec  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
0020f0  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0020f4  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0020f8  9f2b0000  addli r23, zero, 2
0020fc  7e810be0  vmmov mr2, r23
002100  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
002104  e69201c0  vabs.f vr5, vr3
002108  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
00210c  9f001000  addli r1, zero, 8
002110  7e8100e0  vmmov mr2, r1
002114  9f002000  addli r1, zero, 16
002118  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
00211c  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
002120  7e8100e0  vmmov mr2, r1
002124  9f004000  addli r1, zero, 32
002128  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
00212c  7e8100e0  vmmov mr2, r1
002130  9f000001  addli r1, zero, 128
002134  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
002138  7e8100e0  vmmov mr2, r1
00213c  9f000002  addli r1, zero, 256
002140  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
002144  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
002148  7e8100e0  vmmov mr2, r1
00214c  9f000004  addli r1, zero, 512
002150  6a200534  vor.u.mh vr0{mr2}, r10, vr0
002154  7e8100e0  vmmov mr2, r1
002158  9f000008  addli r1, zero, 1024
00215c  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
002160  7e8100e0  vmmov mr2, r1
002164  9f000010  addli r1, zero, 2048
002168  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
00216c  7e8100e0  vmmov mr2, r1
002170  9f000020  addli r1, zero, 4096
002174  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
002178  7e8100e0  vmmov mr2, r1
00217c  9f100000  addli r1, zero, 1
002180  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
002184  9f000040  addli r1, zero, 8192
002188  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
00218c  7e8100e0  vmmov mr2, r1
002190  ab400000  lui r1, 4
002194  ab014000  lui r3, 1024
002198  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
00219c  6ab43122  vor.s.mz vr8{mr1}, r3, vr3
0021a0  aba1aaaa  lui r3, 699050
0021a4  6a200434  vor.u.mh vr0{mr2}, r8, vr0
0021a8  7e8100e0  vmmov mr2, r1
0021ac  ab800000  lui r1, 8
0021b0  9fa15115  addli r3, r3, 2730
0021b4  12324802  vadd.s.mz vr4{mr1}, r16, vr4
0021b8  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0021bc  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
0021c0  fe0b01a0  vmmov r23, mr2
0021c4  7e8100e0  vmmov mr2, r1
0021c8  9bc0fb00  srli r1, r23, 15
0021cc  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0021d0  7e8101e0  vmmov mr2, r3
0021d4  e3415ff6  loadli.w r3,  -1236(r30)
0021d8  9b801000  andi r1, r1, 1
0021dc  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
0021e0  3bb00000  bneq r1, zero, 12
0021e4  fa38f240  vextracti.s r17, 15(vr4)
0021e8  5b010000  j 8
0021ec  fa38f440  vextracti.s r17, 15(vr8)
0021f0  42138f83  vload_mask16.mz vr6{mr1}, 1216(r30)
0021f4  9bc0eb00  srli r1, r23, 14
0021f8  9f110000  addli r3, zero, 1
0021fc  9b801000  andi r1, r1, 1
002200  7e8101e0  vmmov mr2, r3
002204  3bb00000  bneq r1, zero, 12
002208  7a39e240  vextracti.s r18, 14(vr4)
00220c  5b010000  j 8
002210  7a39e440  vextracti.s r18, 14(vr8)
002214  9bc0db00  srli r1, r23, 13
002218  9b801000  andi r1, r1, 1
00221c  3bb00000  bneq r1, zero, 12
002220  7a34d240  vextracti.s r8, 13(vr4)
002224  5b010000  j 8
002228  7a34d440  vextracti.s r8, 13(vr8)
00222c  9bc0cb00  srli r1, r23, 12
002230  9b801000  andi r1, r1, 1
002234  3bb00000  bneq r1, zero, 12
002238  fa31c240  vextracti.s r3, 12(vr4)
00223c  5b010000  j 8
002240  fa31c440  vextracti.s r3, 12(vr8)
002244  9bc0bb00  srli r1, r23, 11
002248  9b801000  andi r1, r1, 1
00224c  3bb00000  bneq r1, zero, 12
002250  fa39b240  vextracti.s r19, 11(vr4)
002254  5b010000  j 8
002258  fa39b440  vextracti.s r19, 11(vr8)
00225c  9bc0ab00  srli r1, r23, 10
002260  9b801000  andi r1, r1, 1
002264  3bb00000  bneq r1, zero, 12
002268  7a3aa240  vextracti.s r20, 10(vr4)
00226c  5b010000  j 8
002270  7a3aa440  vextracti.s r20, 10(vr8)
002274  9bc09b00  srli r1, r23, 9
002278  9b801000  andi r1, r1, 1
00227c  3bb00000  bneq r1, zero, 12
002280  fa329240  vextracti.s r5, 9(vr4)
002284  5b010000  j 8
002288  fa329440  vextracti.s r5, 9(vr8)
00228c  9bc08b00  srli r1, r23, 8
002290  9b801000  andi r1, r1, 1
002294  3bb00000  bneq r1, zero, 12
002298  7a358240  vextracti.s r10, 8(vr4)
00229c  5b010000  j 8
0022a0  7a358440  vextracti.s r10, 8(vr8)
0022a4  9bc07b00  srli r1, r23, 7
0022a8  9b801000  andi r1, r1, 1
0022ac  3bb00000  bneq r1, zero, 12
0022b0  fa3a7240  vextracti.s r21, 7(vr4)
0022b4  5b010000  j 8
0022b8  fa3a7440  vextracti.s r21, 7(vr8)
0022bc  9bc06b00  srli r1, r23, 6
0022c0  9b801000  andi r1, r1, 1
0022c4  3bb00000  bneq r1, zero, 12
0022c8  7a3c6240  vextracti.s r24, 6(vr4)
0022cc  5b010000  j 8
0022d0  7a3c6440  vextracti.s r24, 6(vr8)
0022d4  9bc05b00  srli r1, r23, 5
0022d8  9b801000  andi r1, r1, 1
0022dc  3bb00000  bneq r1, zero, 12
0022e0  fa3c5240  vextracti.s r25, 5(vr4)
0022e4  5b010000  j 8
0022e8  fa3c5440  vextracti.s r25, 5(vr8)
0022ec  9bc04b00  srli r1, r23, 4
0022f0  9b801000  andi r1, r1, 1
0022f4  3bb00000  bneq r1, zero, 12
0022f8  7a3d4240  vextracti.s r26, 4(vr4)
0022fc  5b010000  j 8
002300  7a3d4440  vextracti.s r26, 4(vr8)
002304  9bc03b00  srli r1, r23, 3
002308  9b801000  andi r1, r1, 1
00230c  3bb00000  bneq r1, zero, 12
002310  fa3d3240  vextracti.s r27, 3(vr4)
002314  5b010000  j 8
002318  fa3d3440  vextracti.s r27, 3(vr8)
00231c  9bc02b00  srli r1, r23, 2
002320  9b801000  andi r1, r1, 1
002324  3bb00000  bneq r1, zero, 12
002328  7a3e2240  vextracti.s r28, 2(vr4)
00232c  5b010000  j 8
002330  7a3e2440  vextracti.s r28, 2(vr8)
002334  9bc01b00  srli r1, r23, 1
002338  9b801000  andi r1, r1, 1
00233c  3be00000  bneq r1, zero, 24
002340  fa301240  vextracti.s r1, 1(vr4)
002344  9b8b1b00  andi r23, r23, 1
002348  37e00b00  beq r23, zero, 24
00234c  fa3b0440  vextracti.s r23, 0(vr8)
002350  db020000  j 20
002354  fa301440  vextracti.s r1, 1(vr8)
002358  9b8b1b00  andi r23, r23, 1
00235c  bbcf0bfe  bneq r23, zero, -16
002360  fa3b0240  vextracti.s r23, 0(vr4)
002364  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002368  e6c17580  vmerge_l.hf vr3, vr11, vr7
00236c  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
002370  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
002374  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002378  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
00237c  9f2b0000  addli r23, zero, 2
002380  7e810be0  vmmov mr2, r23
002384  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
002388  e69201c0  vabs.f vr5, vr3
00238c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
002390  9f001000  addli r1, zero, 8
002394  7e8100e0  vmmov mr2, r1
002398  9f002000  addli r1, zero, 16
00239c  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
0023a0  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
0023a4  7e8100e0  vmmov mr2, r1
0023a8  9f004000  addli r1, zero, 32
0023ac  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
0023b0  7e8100e0  vmmov mr2, r1
0023b4  9f000001  addli r1, zero, 128
0023b8  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
0023bc  7e8100e0  vmmov mr2, r1
0023c0  9f000002  addli r1, zero, 256
0023c4  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
0023c8  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
0023cc  7e8100e0  vmmov mr2, r1
0023d0  9f000004  addli r1, zero, 512
0023d4  6a200534  vor.u.mh vr0{mr2}, r10, vr0
0023d8  7e8100e0  vmmov mr2, r1
0023dc  9f000008  addli r1, zero, 1024
0023e0  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0023e4  7e8100e0  vmmov mr2, r1
0023e8  9f000010  addli r1, zero, 2048
0023ec  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
0023f0  7e8100e0  vmmov mr2, r1
0023f4  9f000020  addli r1, zero, 4096
0023f8  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0023fc  7e8100e0  vmmov mr2, r1
002400  9f100000  addli r1, zero, 1
002404  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
002408  9f000040  addli r1, zero, 8192
00240c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002410  7e8100e0  vmmov mr2, r1
002414  ab400000  lui r1, 4
002418  ab014000  lui r3, 1024
00241c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002420  6ab43122  vor.s.mz vr8{mr1}, r3, vr3
002424  aba1aaaa  lui r3, 699050
002428  6a200434  vor.u.mh vr0{mr2}, r8, vr0
00242c  7e8100e0  vmmov mr2, r1
002430  ab800000  lui r1, 8
002434  9fa15115  addli r3, r3, 2730
002438  12324802  vadd.s.mz vr4{mr1}, r16, vr4
00243c  6a200934  vor.u.mh vr0{mr2}, r18, vr0
002440  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
002444  fe0b01a0  vmmov r23, mr2
002448  7e8100e0  vmmov mr2, r1
00244c  9bc0fb00  srli r1, r23, 15
002450  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002454  7e8101e0  vmmov mr2, r3
002458  e3411ff6  loadli.w r3,  -1268(r30)
00245c  9b801000  andi r1, r1, 1
002460  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
002464  3bb00000  bneq r1, zero, 12
002468  fa38f240  vextracti.s r17, 15(vr4)
00246c  5b010000  j 8
002470  fa38f440  vextracti.s r17, 15(vr8)
002474  9bc0eb00  srli r1, r23, 14
002478  9f110000  addli r3, zero, 1
00247c  9b801000  andi r1, r1, 1
002480  7e8101e0  vmmov mr2, r3
002484  3bb00000  bneq r1, zero, 12
002488  7a39e240  vextracti.s r18, 14(vr4)
00248c  5b010000  j 8
002490  7a39e440  vextracti.s r18, 14(vr8)
002494  9bc0db00  srli r1, r23, 13
002498  9b801000  andi r1, r1, 1
00249c  3bb00000  bneq r1, zero, 12
0024a0  7a34d240  vextracti.s r8, 13(vr4)
0024a4  5b010000  j 8
0024a8  7a34d440  vextracti.s r8, 13(vr8)
0024ac  9bc0cb00  srli r1, r23, 12
0024b0  9b801000  andi r1, r1, 1
0024b4  3bb00000  bneq r1, zero, 12
0024b8  fa31c240  vextracti.s r3, 12(vr4)
0024bc  5b010000  j 8
0024c0  fa31c440  vextracti.s r3, 12(vr8)
0024c4  9bc0bb00  srli r1, r23, 11
0024c8  9b801000  andi r1, r1, 1
0024cc  3bb00000  bneq r1, zero, 12
0024d0  fa39b240  vextracti.s r19, 11(vr4)
0024d4  5b010000  j 8
0024d8  fa39b440  vextracti.s r19, 11(vr8)
0024dc  9bc0ab00  srli r1, r23, 10
0024e0  9b801000  andi r1, r1, 1
0024e4  3bb00000  bneq r1, zero, 12
0024e8  7a3aa240  vextracti.s r20, 10(vr4)
0024ec  5b010000  j 8
0024f0  7a3aa440  vextracti.s r20, 10(vr8)
0024f4  9bc09b00  srli r1, r23, 9
0024f8  9b801000  andi r1, r1, 1
0024fc  3bb00000  bneq r1, zero, 12
002500  fa329240  vextracti.s r5, 9(vr4)
002504  5b010000  j 8
002508  fa329440  vextracti.s r5, 9(vr8)
00250c  9bc08b00  srli r1, r23, 8
002510  9b801000  andi r1, r1, 1
002514  3bb00000  bneq r1, zero, 12
002518  7a358240  vextracti.s r10, 8(vr4)
00251c  5b010000  j 8
002520  7a358440  vextracti.s r10, 8(vr8)
002524  9bc07b00  srli r1, r23, 7
002528  9b801000  andi r1, r1, 1
00252c  3bb00000  bneq r1, zero, 12
002530  fa3a7240  vextracti.s r21, 7(vr4)
002534  5b010000  j 8
002538  fa3a7440  vextracti.s r21, 7(vr8)
00253c  9bc06b00  srli r1, r23, 6
002540  9b801000  andi r1, r1, 1
002544  3bb00000  bneq r1, zero, 12
002548  7a3c6240  vextracti.s r24, 6(vr4)
00254c  5b010000  j 8
002550  7a3c6440  vextracti.s r24, 6(vr8)
002554  9bc05b00  srli r1, r23, 5
002558  9b801000  andi r1, r1, 1
00255c  3bb00000  bneq r1, zero, 12
002560  fa3c5240  vextracti.s r25, 5(vr4)
002564  5b010000  j 8
002568  fa3c5440  vextracti.s r25, 5(vr8)
00256c  9bc04b00  srli r1, r23, 4
002570  9b801000  andi r1, r1, 1
002574  3bb00000  bneq r1, zero, 12
002578  7a3d4240  vextracti.s r26, 4(vr4)
00257c  5b010000  j 8
002580  7a3d4440  vextracti.s r26, 4(vr8)
002584  9bc03b00  srli r1, r23, 3
002588  9b801000  andi r1, r1, 1
00258c  3bb00000  bneq r1, zero, 12
002590  fa3d3240  vextracti.s r27, 3(vr4)
002594  5b010000  j 8
002598  fa3d3440  vextracti.s r27, 3(vr8)
00259c  9bc02b00  srli r1, r23, 2
0025a0  9b801000  andi r1, r1, 1
0025a4  3bb00000  bneq r1, zero, 12
0025a8  7a3e2240  vextracti.s r28, 2(vr4)
0025ac  5b010000  j 8
0025b0  7a3e2440  vextracti.s r28, 2(vr8)
0025b4  9bc01b00  srli r1, r23, 1
0025b8  9b801000  andi r1, r1, 1
0025bc  3be00000  bneq r1, zero, 24
0025c0  fa301240  vextracti.s r1, 1(vr4)
0025c4  9b8b1b00  andi r23, r23, 1
0025c8  37e00b00  beq r23, zero, 24
0025cc  fa3b0440  vextracti.s r23, 0(vr8)
0025d0  db020000  j 20
0025d4  fa301440  vextracti.s r1, 1(vr8)
0025d8  9b8b1b00  andi r23, r23, 1
0025dc  bbcf0bfe  bneq r23, zero, -16
0025e0  fa3b0240  vextracti.s r23, 0(vr4)
0025e4  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0025e8  e6c175a0  vmerge_h.hf vr3, vr11, vr7
0025ec  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
0025f0  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
0025f4  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
0025f8  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
0025fc  9f2b0000  addli r23, zero, 2
002600  7e810be0  vmmov mr2, r23
002604  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
002608  e69201c0  vabs.f vr5, vr3
00260c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
002610  9f001000  addli r1, zero, 8
002614  7e8100e0  vmmov mr2, r1
002618  9f002000  addli r1, zero, 16
00261c  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
002620  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
002624  7e8100e0  vmmov mr2, r1
002628  9f004000  addli r1, zero, 32
00262c  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002630  7e8100e0  vmmov mr2, r1
002634  9f000001  addli r1, zero, 128
002638  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
00263c  7e8100e0  vmmov mr2, r1
002640  9f000002  addli r1, zero, 256
002644  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
002648  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
00264c  7e8100e0  vmmov mr2, r1
002650  9f000004  addli r1, zero, 512
002654  6a200534  vor.u.mh vr0{mr2}, r10, vr0
002658  7e8100e0  vmmov mr2, r1
00265c  9f000008  addli r1, zero, 1024
002660  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
002664  7e8100e0  vmmov mr2, r1
002668  9f000010  addli r1, zero, 2048
00266c  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
002670  7e8100e0  vmmov mr2, r1
002674  9f000020  addli r1, zero, 4096
002678  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
00267c  7e8100e0  vmmov mr2, r1
002680  9f100000  addli r1, zero, 1
002684  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
002688  9f000040  addli r1, zero, 8192
00268c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002690  7e8100e0  vmmov mr2, r1
002694  ab400000  lui r1, 4
002698  ab014000  lui r3, 1024
00269c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
0026a0  eab33122  vor.s.mz vr7{mr1}, r3, vr3
0026a4  aba1aaaa  lui r3, 699050
0026a8  6a200434  vor.u.mh vr0{mr2}, r8, vr0
0026ac  7e8100e0  vmmov mr2, r1
0026b0  ab800000  lui r1, 8
0026b4  9fa15115  addli r3, r3, 2730
0026b8  12324802  vadd.s.mz vr4{mr1}, r16, vr4
0026bc  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0026c0  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
0026c4  fe0b01a0  vmmov r23, mr2
0026c8  7e8100e0  vmmov mr2, r1
0026cc  9bc0fb00  srli r1, r23, 15
0026d0  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0026d4  7e8101e0  vmmov mr2, r3
0026d8  e3015ff6  loadli.w r3,  -1240(r30)
0026dc  9b801000  andi r1, r1, 1
0026e0  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
0026e4  3bb00000  bneq r1, zero, 12
0026e8  fa38f240  vextracti.s r17, 15(vr4)
0026ec  5b010000  j 8
0026f0  fab8f340  vextracti.s r17, 15(vr7)
0026f4  9bc0eb00  srli r1, r23, 14
0026f8  9f110000  addli r3, zero, 1
0026fc  9b801000  andi r1, r1, 1
002700  7e8101e0  vmmov mr2, r3
002704  3bb00000  bneq r1, zero, 12
002708  7a39e240  vextracti.s r18, 14(vr4)
00270c  5b010000  j 8
002710  7ab9e340  vextracti.s r18, 14(vr7)
002714  9bc0db00  srli r1, r23, 13
002718  9b801000  andi r1, r1, 1
00271c  3bb00000  bneq r1, zero, 12
002720  7a34d240  vextracti.s r8, 13(vr4)
002724  5b010000  j 8
002728  7ab4d340  vextracti.s r8, 13(vr7)
00272c  9bc0cb00  srli r1, r23, 12
002730  9b801000  andi r1, r1, 1
002734  3bb00000  bneq r1, zero, 12
002738  fa31c240  vextracti.s r3, 12(vr4)
00273c  5b010000  j 8
002740  fab1c340  vextracti.s r3, 12(vr7)
002744  9bc0bb00  srli r1, r23, 11
002748  9b801000  andi r1, r1, 1
00274c  3bb00000  bneq r1, zero, 12
002750  fa39b240  vextracti.s r19, 11(vr4)
002754  5b010000  j 8
002758  fab9b340  vextracti.s r19, 11(vr7)
00275c  9bc0ab00  srli r1, r23, 10
002760  9b801000  andi r1, r1, 1
002764  3bb00000  bneq r1, zero, 12
002768  7a3aa240  vextracti.s r20, 10(vr4)
00276c  5b010000  j 8
002770  7abaa340  vextracti.s r20, 10(vr7)
002774  9bc09b00  srli r1, r23, 9
002778  9b801000  andi r1, r1, 1
00277c  3bb00000  bneq r1, zero, 12
002780  fa329240  vextracti.s r5, 9(vr4)
002784  5b010000  j 8
002788  fab29340  vextracti.s r5, 9(vr7)
00278c  9bc08b00  srli r1, r23, 8
002790  9b801000  andi r1, r1, 1
002794  3bb00000  bneq r1, zero, 12
002798  7a358240  vextracti.s r10, 8(vr4)
00279c  5b010000  j 8
0027a0  7ab58340  vextracti.s r10, 8(vr7)
0027a4  9bc07b00  srli r1, r23, 7
0027a8  9b801000  andi r1, r1, 1
0027ac  3bb00000  bneq r1, zero, 12
0027b0  fa3a7240  vextracti.s r21, 7(vr4)
0027b4  5b010000  j 8
0027b8  faba7340  vextracti.s r21, 7(vr7)
0027bc  9bc06b00  srli r1, r23, 6
0027c0  9b801000  andi r1, r1, 1
0027c4  3bb00000  bneq r1, zero, 12
0027c8  7a3c6240  vextracti.s r24, 6(vr4)
0027cc  5b010000  j 8
0027d0  7abc6340  vextracti.s r24, 6(vr7)
0027d4  9bc05b00  srli r1, r23, 5
0027d8  9b801000  andi r1, r1, 1
0027dc  3bb00000  bneq r1, zero, 12
0027e0  fa3c5240  vextracti.s r25, 5(vr4)
0027e4  5b010000  j 8
0027e8  fabc5340  vextracti.s r25, 5(vr7)
0027ec  9bc04b00  srli r1, r23, 4
0027f0  9b801000  andi r1, r1, 1
0027f4  3bb00000  bneq r1, zero, 12
0027f8  7a3d4240  vextracti.s r26, 4(vr4)
0027fc  5b010000  j 8
002800  7abd4340  vextracti.s r26, 4(vr7)
002804  9bc03b00  srli r1, r23, 3
002808  9b801000  andi r1, r1, 1
00280c  3bb00000  bneq r1, zero, 12
002810  fa3d3240  vextracti.s r27, 3(vr4)
002814  5b010000  j 8
002818  fabd3340  vextracti.s r27, 3(vr7)
00281c  9bc02b00  srli r1, r23, 2
002820  9b801000  andi r1, r1, 1
002824  3bb00000  bneq r1, zero, 12
002828  7a3e2240  vextracti.s r28, 2(vr4)
00282c  5b010000  j 8
002830  7abe2340  vextracti.s r28, 2(vr7)
002834  9bc01b00  srli r1, r23, 1
002838  9b801000  andi r1, r1, 1
00283c  3be00000  bneq r1, zero, 24
002840  fa301240  vextracti.s r1, 1(vr4)
002844  9b8b1b00  andi r23, r23, 1
002848  37e00b00  beq r23, zero, 24
00284c  fabb0340  vextracti.s r23, 0(vr7)
002850  db020000  j 20
002854  fab01340  vextracti.s r1, 1(vr7)
002858  9b8b1b00  andi r23, r23, 1
00285c  bbcf0bfe  bneq r23, zero, -16
002860  fa3b0240  vextracti.s r23, 0(vr4)
002864  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002868  e6c16580  vmerge_l.hf vr3, vr11, vr6
00286c  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
002870  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
002874  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002878  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
00287c  9f2b0000  addli r23, zero, 2
002880  7e810be0  vmmov mr2, r23
002884  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
002888  e69201c0  vabs.f vr5, vr3
00288c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
002890  9f001000  addli r1, zero, 8
002894  7e8100e0  vmmov mr2, r1
002898  9f002000  addli r1, zero, 16
00289c  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
0028a0  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
0028a4  7e8100e0  vmmov mr2, r1
0028a8  9f004000  addli r1, zero, 32
0028ac  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
0028b0  7e8100e0  vmmov mr2, r1
0028b4  9f000001  addli r1, zero, 128
0028b8  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
0028bc  7e8100e0  vmmov mr2, r1
0028c0  9f000002  addli r1, zero, 256
0028c4  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
0028c8  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
0028cc  7e8100e0  vmmov mr2, r1
0028d0  9f000004  addli r1, zero, 512
0028d4  6a200534  vor.u.mh vr0{mr2}, r10, vr0
0028d8  7e8100e0  vmmov mr2, r1
0028dc  9f000008  addli r1, zero, 1024
0028e0  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0028e4  7e8100e0  vmmov mr2, r1
0028e8  9f000010  addli r1, zero, 2048
0028ec  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
0028f0  7e8100e0  vmmov mr2, r1
0028f4  9f000020  addli r1, zero, 4096
0028f8  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
0028fc  7e8100e0  vmmov mr2, r1
002900  9f100000  addli r1, zero, 1
002904  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
002908  9f000040  addli r1, zero, 8192
00290c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002910  7e8100e0  vmmov mr2, r1
002914  ab400000  lui r1, 4
002918  ab014000  lui r3, 1024
00291c  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002920  eab33122  vor.s.mz vr7{mr1}, r3, vr3
002924  aba1aaaa  lui r3, 699050
002928  6a200434  vor.u.mh vr0{mr2}, r8, vr0
00292c  7e8100e0  vmmov mr2, r1
002930  ab800000  lui r1, 8
002934  9fa15115  addli r3, r3, 2730
002938  12324802  vadd.s.mz vr4{mr1}, r16, vr4
00293c  6a200934  vor.u.mh vr0{mr2}, r18, vr0
002940  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
002944  fe0b01a0  vmmov r23, mr2
002948  7e8100e0  vmmov mr2, r1
00294c  9bc0fb00  srli r1, r23, 15
002950  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002954  7e8101e0  vmmov mr2, r3
002958  e3410ff6  loadli.w r3,  -1276(r30)
00295c  9b801000  andi r1, r1, 1
002960  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
002964  3bb00000  bneq r1, zero, 12
002968  fa38f240  vextracti.s r17, 15(vr4)
00296c  5b010000  j 8
002970  fab8f340  vextracti.s r17, 15(vr7)
002974  9bc0eb00  srli r1, r23, 14
002978  9f110000  addli r3, zero, 1
00297c  9b801000  andi r1, r1, 1
002980  7e8101e0  vmmov mr2, r3
002984  3bb00000  bneq r1, zero, 12
002988  7a39e240  vextracti.s r18, 14(vr4)
00298c  5b010000  j 8
002990  7ab9e340  vextracti.s r18, 14(vr7)
002994  9bc0db00  srli r1, r23, 13
002998  9b801000  andi r1, r1, 1
00299c  3bb00000  bneq r1, zero, 12
0029a0  7a34d240  vextracti.s r8, 13(vr4)
0029a4  5b010000  j 8
0029a8  7ab4d340  vextracti.s r8, 13(vr7)
0029ac  9bc0cb00  srli r1, r23, 12
0029b0  9b801000  andi r1, r1, 1
0029b4  3bb00000  bneq r1, zero, 12
0029b8  fa31c240  vextracti.s r3, 12(vr4)
0029bc  5b010000  j 8
0029c0  fab1c340  vextracti.s r3, 12(vr7)
0029c4  9bc0bb00  srli r1, r23, 11
0029c8  9b801000  andi r1, r1, 1
0029cc  3bb00000  bneq r1, zero, 12
0029d0  fa39b240  vextracti.s r19, 11(vr4)
0029d4  5b010000  j 8
0029d8  fab9b340  vextracti.s r19, 11(vr7)
0029dc  9bc0ab00  srli r1, r23, 10
0029e0  9b801000  andi r1, r1, 1
0029e4  3bb00000  bneq r1, zero, 12
0029e8  7a3aa240  vextracti.s r20, 10(vr4)
0029ec  5b010000  j 8
0029f0  7abaa340  vextracti.s r20, 10(vr7)
0029f4  9bc09b00  srli r1, r23, 9
0029f8  9b801000  andi r1, r1, 1
0029fc  3bb00000  bneq r1, zero, 12
002a00  fa329240  vextracti.s r5, 9(vr4)
002a04  5b010000  j 8
002a08  fab29340  vextracti.s r5, 9(vr7)
002a0c  9bc08b00  srli r1, r23, 8
002a10  9b801000  andi r1, r1, 1
002a14  3bb00000  bneq r1, zero, 12
002a18  7a358240  vextracti.s r10, 8(vr4)
002a1c  5b010000  j 8
002a20  7ab58340  vextracti.s r10, 8(vr7)
002a24  9bc07b00  srli r1, r23, 7
002a28  9b801000  andi r1, r1, 1
002a2c  3bb00000  bneq r1, zero, 12
002a30  fa3a7240  vextracti.s r21, 7(vr4)
002a34  5b010000  j 8
002a38  faba7340  vextracti.s r21, 7(vr7)
002a3c  9bc06b00  srli r1, r23, 6
002a40  9b801000  andi r1, r1, 1
002a44  3bb00000  bneq r1, zero, 12
002a48  7a3c6240  vextracti.s r24, 6(vr4)
002a4c  5b010000  j 8
002a50  7abc6340  vextracti.s r24, 6(vr7)
002a54  9bc05b00  srli r1, r23, 5
002a58  9b801000  andi r1, r1, 1
002a5c  3bb00000  bneq r1, zero, 12
002a60  fa3c5240  vextracti.s r25, 5(vr4)
002a64  5b010000  j 8
002a68  fabc5340  vextracti.s r25, 5(vr7)
002a6c  9bc04b00  srli r1, r23, 4
002a70  9b801000  andi r1, r1, 1
002a74  3bb00000  bneq r1, zero, 12
002a78  7a3d4240  vextracti.s r26, 4(vr4)
002a7c  5b010000  j 8
002a80  7abd4340  vextracti.s r26, 4(vr7)
002a84  9bc03b00  srli r1, r23, 3
002a88  9b801000  andi r1, r1, 1
002a8c  3bb00000  bneq r1, zero, 12
002a90  fa3d3240  vextracti.s r27, 3(vr4)
002a94  5b010000  j 8
002a98  fabd3340  vextracti.s r27, 3(vr7)
002a9c  9bc02b00  srli r1, r23, 2
002aa0  9b801000  andi r1, r1, 1
002aa4  3bb00000  bneq r1, zero, 12
002aa8  7a3e2240  vextracti.s r28, 2(vr4)
002aac  5b010000  j 8
002ab0  7abe2340  vextracti.s r28, 2(vr7)
002ab4  9bc01b00  srli r1, r23, 1
002ab8  9b801000  andi r1, r1, 1
002abc  3be00000  bneq r1, zero, 24
002ac0  fa301240  vextracti.s r1, 1(vr4)
002ac4  9b8b1b00  andi r23, r23, 1
002ac8  37e00b00  beq r23, zero, 24
002acc  fabb0340  vextracti.s r23, 0(vr7)
002ad0  db020000  j 20
002ad4  fab01340  vextracti.s r1, 1(vr7)
002ad8  9b8b1b00  andi r23, r23, 1
002adc  bbcf0bfe  bneq r23, zero, -16
002ae0  fa3b0240  vextracti.s r23, 0(vr4)
002ae4  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002ae8  c2130fa2  vload_mask16.mz vr7{mr1}, 1280(r30)
002aec  e6c165a0  vmerge_h.hf vr3, vr11, vr6
002af0  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
002af4  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
002af8  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002afc  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
002b00  9f2b0000  addli r23, zero, 2
002b04  7e810be0  vmmov mr2, r23
002b08  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
002b0c  e69201c0  vabs.f vr5, vr3
002b10  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
002b14  9f001000  addli r1, zero, 8
002b18  7e8100e0  vmmov mr2, r1
002b1c  9f002000  addli r1, zero, 16
002b20  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
002b24  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
002b28  7e8100e0  vmmov mr2, r1
002b2c  9f004000  addli r1, zero, 32
002b30  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002b34  7e8100e0  vmmov mr2, r1
002b38  9f000001  addli r1, zero, 128
002b3c  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
002b40  7e8100e0  vmmov mr2, r1
002b44  9f000002  addli r1, zero, 256
002b48  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
002b4c  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
002b50  7e8100e0  vmmov mr2, r1
002b54  9f000004  addli r1, zero, 512
002b58  6a200534  vor.u.mh vr0{mr2}, r10, vr0
002b5c  7e8100e0  vmmov mr2, r1
002b60  9f000008  addli r1, zero, 1024
002b64  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
002b68  7e8100e0  vmmov mr2, r1
002b6c  9f000010  addli r1, zero, 2048
002b70  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
002b74  7e8100e0  vmmov mr2, r1
002b78  9f000020  addli r1, zero, 4096
002b7c  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
002b80  7e8100e0  vmmov mr2, r1
002b84  9f100000  addli r1, zero, 1
002b88  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
002b8c  9f000040  addli r1, zero, 8192
002b90  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002b94  7e8100e0  vmmov mr2, r1
002b98  ab400000  lui r1, 4
002b9c  ab014000  lui r3, 1024
002ba0  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002ba4  6ab33122  vor.s.mz vr6{mr1}, r3, vr3
002ba8  aba1aaaa  lui r3, 699050
002bac  6a200434  vor.u.mh vr0{mr2}, r8, vr0
002bb0  7e8100e0  vmmov mr2, r1
002bb4  ab800000  lui r1, 8
002bb8  9fa15115  addli r3, r3, 2730
002bbc  12324802  vadd.s.mz vr4{mr1}, r16, vr4
002bc0  6a200934  vor.u.mh vr0{mr2}, r18, vr0
002bc4  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
002bc8  fe0b01a0  vmmov r23, mr2
002bcc  7e8100e0  vmmov mr2, r1
002bd0  9bc0fb00  srli r1, r23, 15
002bd4  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002bd8  7e8101e0  vmmov mr2, r3
002bdc  e3414ff6  loadli.w r3,  -1244(r30)
002be0  9b801000  andi r1, r1, 1
002be4  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
002be8  3bb00000  bneq r1, zero, 12
002bec  fa38f240  vextracti.s r17, 15(vr4)
002bf0  5b010000  j 8
002bf4  fa38f340  vextracti.s r17, 15(vr6)
002bf8  9bc0eb00  srli r1, r23, 14
002bfc  9f110000  addli r3, zero, 1
002c00  9b801000  andi r1, r1, 1
002c04  7e8101e0  vmmov mr2, r3
002c08  3bb00000  bneq r1, zero, 12
002c0c  7a39e240  vextracti.s r18, 14(vr4)
002c10  5b010000  j 8
002c14  7a39e340  vextracti.s r18, 14(vr6)
002c18  9bc0db00  srli r1, r23, 13
002c1c  9b801000  andi r1, r1, 1
002c20  3bb00000  bneq r1, zero, 12
002c24  7a34d240  vextracti.s r8, 13(vr4)
002c28  5b010000  j 8
002c2c  7a34d340  vextracti.s r8, 13(vr6)
002c30  9bc0cb00  srli r1, r23, 12
002c34  9b801000  andi r1, r1, 1
002c38  3bb00000  bneq r1, zero, 12
002c3c  fa31c240  vextracti.s r3, 12(vr4)
002c40  5b010000  j 8
002c44  fa31c340  vextracti.s r3, 12(vr6)
002c48  9bc0bb00  srli r1, r23, 11
002c4c  9b801000  andi r1, r1, 1
002c50  3bb00000  bneq r1, zero, 12
002c54  fa39b240  vextracti.s r19, 11(vr4)
002c58  5b010000  j 8
002c5c  fa39b340  vextracti.s r19, 11(vr6)
002c60  9bc0ab00  srli r1, r23, 10
002c64  9b801000  andi r1, r1, 1
002c68  3bb00000  bneq r1, zero, 12
002c6c  7a3aa240  vextracti.s r20, 10(vr4)
002c70  5b010000  j 8
002c74  7a3aa340  vextracti.s r20, 10(vr6)
002c78  9bc09b00  srli r1, r23, 9
002c7c  9b801000  andi r1, r1, 1
002c80  3bb00000  bneq r1, zero, 12
002c84  fa329240  vextracti.s r5, 9(vr4)
002c88  5b010000  j 8
002c8c  fa329340  vextracti.s r5, 9(vr6)
002c90  9bc08b00  srli r1, r23, 8
002c94  9b801000  andi r1, r1, 1
002c98  3bb00000  bneq r1, zero, 12
002c9c  7a358240  vextracti.s r10, 8(vr4)
002ca0  5b010000  j 8
002ca4  7a358340  vextracti.s r10, 8(vr6)
002ca8  9bc07b00  srli r1, r23, 7
002cac  9b801000  andi r1, r1, 1
002cb0  3bb00000  bneq r1, zero, 12
002cb4  fa3a7240  vextracti.s r21, 7(vr4)
002cb8  5b010000  j 8
002cbc  fa3a7340  vextracti.s r21, 7(vr6)
002cc0  9bc06b00  srli r1, r23, 6
002cc4  9b801000  andi r1, r1, 1
002cc8  3bb00000  bneq r1, zero, 12
002ccc  7a3c6240  vextracti.s r24, 6(vr4)
002cd0  5b010000  j 8
002cd4  7a3c6340  vextracti.s r24, 6(vr6)
002cd8  9bc05b00  srli r1, r23, 5
002cdc  9b801000  andi r1, r1, 1
002ce0  3bb00000  bneq r1, zero, 12
002ce4  fa3c5240  vextracti.s r25, 5(vr4)
002ce8  5b010000  j 8
002cec  fa3c5340  vextracti.s r25, 5(vr6)
002cf0  9bc04b00  srli r1, r23, 4
002cf4  9b801000  andi r1, r1, 1
002cf8  3bb00000  bneq r1, zero, 12
002cfc  7a3d4240  vextracti.s r26, 4(vr4)
002d00  5b010000  j 8
002d04  7a3d4340  vextracti.s r26, 4(vr6)
002d08  9bc03b00  srli r1, r23, 3
002d0c  9b801000  andi r1, r1, 1
002d10  3bb00000  bneq r1, zero, 12
002d14  fa3d3240  vextracti.s r27, 3(vr4)
002d18  5b010000  j 8
002d1c  fa3d3340  vextracti.s r27, 3(vr6)
002d20  9bc02b00  srli r1, r23, 2
002d24  9b801000  andi r1, r1, 1
002d28  3bb00000  bneq r1, zero, 12
002d2c  7a3e2240  vextracti.s r28, 2(vr4)
002d30  5b010000  j 8
002d34  7a3e2340  vextracti.s r28, 2(vr6)
002d38  9bc01b00  srli r1, r23, 1
002d3c  9b801000  andi r1, r1, 1
002d40  3be00000  bneq r1, zero, 24
002d44  fa301240  vextracti.s r1, 1(vr4)
002d48  9b8b1b00  andi r23, r23, 1
002d4c  37e00b00  beq r23, zero, 24
002d50  fa3b0340  vextracti.s r23, 0(vr6)
002d54  db020000  j 20
002d58  fa301340  vextracti.s r1, 1(vr6)
002d5c  9b8b1b00  andi r23, r23, 1
002d60  bbcf0bfe  bneq r23, zero, -16
002d64  fa3b0240  vextracti.s r23, 0(vr4)
002d68  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002d6c  e6c17580  vmerge_l.hf vr3, vr11, vr7
002d70  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
002d74  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
002d78  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
002d7c  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
002d80  9f2b0000  addli r23, zero, 2
002d84  7e810be0  vmmov mr2, r23
002d88  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
002d8c  e69201c0  vabs.f vr5, vr3
002d90  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
002d94  9f001000  addli r1, zero, 8
002d98  7e8100e0  vmmov mr2, r1
002d9c  9f002000  addli r1, zero, 16
002da0  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
002da4  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
002da8  7e8100e0  vmmov mr2, r1
002dac  9f004000  addli r1, zero, 32
002db0  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
002db4  7e8100e0  vmmov mr2, r1
002db8  9f000001  addli r1, zero, 128
002dbc  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
002dc0  7e8100e0  vmmov mr2, r1
002dc4  9f000002  addli r1, zero, 256
002dc8  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
002dcc  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
002dd0  7e8100e0  vmmov mr2, r1
002dd4  9f000004  addli r1, zero, 512
002dd8  6a200534  vor.u.mh vr0{mr2}, r10, vr0
002ddc  7e8100e0  vmmov mr2, r1
002de0  9f000008  addli r1, zero, 1024
002de4  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
002de8  7e8100e0  vmmov mr2, r1
002dec  9f000010  addli r1, zero, 2048
002df0  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
002df4  7e8100e0  vmmov mr2, r1
002df8  9f000020  addli r1, zero, 4096
002dfc  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
002e00  7e8100e0  vmmov mr2, r1
002e04  9f100000  addli r1, zero, 1
002e08  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
002e0c  9f000040  addli r1, zero, 8192
002e10  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
002e14  7e8100e0  vmmov mr2, r1
002e18  ab400000  lui r1, 4
002e1c  ab014000  lui r3, 1024
002e20  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
002e24  6ab33122  vor.s.mz vr6{mr1}, r3, vr3
002e28  aba1aaaa  lui r3, 699050
002e2c  6a200434  vor.u.mh vr0{mr2}, r8, vr0
002e30  7e8100e0  vmmov mr2, r1
002e34  ab800000  lui r1, 8
002e38  9fa15115  addli r3, r3, 2730
002e3c  12324802  vadd.s.mz vr4{mr1}, r16, vr4
002e40  6a200934  vor.u.mh vr0{mr2}, r18, vr0
002e44  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
002e48  fe0b01a0  vmmov r23, mr2
002e4c  7e8100e0  vmmov mr2, r1
002e50  9bc0fb00  srli r1, r23, 15
002e54  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
002e58  7e8101e0  vmmov mr2, r3
002e5c  e3010ff6  loadli.w r3,  -1280(r30)
002e60  9b801000  andi r1, r1, 1
002e64  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
002e68  3bb00000  bneq r1, zero, 12
002e6c  fa38f240  vextracti.s r17, 15(vr4)
002e70  5b010000  j 8
002e74  fa38f340  vextracti.s r17, 15(vr6)
002e78  9bc0eb00  srli r1, r23, 14
002e7c  9f110000  addli r3, zero, 1
002e80  9b801000  andi r1, r1, 1
002e84  7e8101e0  vmmov mr2, r3
002e88  3bb00000  bneq r1, zero, 12
002e8c  7a39e240  vextracti.s r18, 14(vr4)
002e90  5b010000  j 8
002e94  7a39e340  vextracti.s r18, 14(vr6)
002e98  9bc0db00  srli r1, r23, 13
002e9c  9b801000  andi r1, r1, 1
002ea0  3bb00000  bneq r1, zero, 12
002ea4  7a34d240  vextracti.s r8, 13(vr4)
002ea8  5b010000  j 8
002eac  7a34d340  vextracti.s r8, 13(vr6)
002eb0  9bc0cb00  srli r1, r23, 12
002eb4  9b801000  andi r1, r1, 1
002eb8  3bb00000  bneq r1, zero, 12
002ebc  fa31c240  vextracti.s r3, 12(vr4)
002ec0  5b010000  j 8
002ec4  fa31c340  vextracti.s r3, 12(vr6)
002ec8  9bc0bb00  srli r1, r23, 11
002ecc  9b801000  andi r1, r1, 1
002ed0  3bb00000  bneq r1, zero, 12
002ed4  fa39b240  vextracti.s r19, 11(vr4)
002ed8  5b010000  j 8
002edc  fa39b340  vextracti.s r19, 11(vr6)
002ee0  9bc0ab00  srli r1, r23, 10
002ee4  9b801000  andi r1, r1, 1
002ee8  3bb00000  bneq r1, zero, 12
002eec  7a3aa240  vextracti.s r20, 10(vr4)
002ef0  5b010000  j 8
002ef4  7a3aa340  vextracti.s r20, 10(vr6)
002ef8  9bc09b00  srli r1, r23, 9
002efc  9b801000  andi r1, r1, 1
002f00  3bb00000  bneq r1, zero, 12
002f04  fa329240  vextracti.s r5, 9(vr4)
002f08  5b010000  j 8
002f0c  fa329340  vextracti.s r5, 9(vr6)
002f10  9bc08b00  srli r1, r23, 8
002f14  9b801000  andi r1, r1, 1
002f18  3bb00000  bneq r1, zero, 12
002f1c  7a358240  vextracti.s r10, 8(vr4)
002f20  5b010000  j 8
002f24  7a358340  vextracti.s r10, 8(vr6)
002f28  9bc07b00  srli r1, r23, 7
002f2c  9b801000  andi r1, r1, 1
002f30  3bb00000  bneq r1, zero, 12
002f34  fa3a7240  vextracti.s r21, 7(vr4)
002f38  5b010000  j 8
002f3c  fa3a7340  vextracti.s r21, 7(vr6)
002f40  9bc06b00  srli r1, r23, 6
002f44  9b801000  andi r1, r1, 1
002f48  3bb00000  bneq r1, zero, 12
002f4c  7a3c6240  vextracti.s r24, 6(vr4)
002f50  5b010000  j 8
002f54  7a3c6340  vextracti.s r24, 6(vr6)
002f58  9bc05b00  srli r1, r23, 5
002f5c  9b801000  andi r1, r1, 1
002f60  3bb00000  bneq r1, zero, 12
002f64  fa3c5240  vextracti.s r25, 5(vr4)
002f68  5b010000  j 8
002f6c  fa3c5340  vextracti.s r25, 5(vr6)
002f70  9bc04b00  srli r1, r23, 4
002f74  9b801000  andi r1, r1, 1
002f78  3bb00000  bneq r1, zero, 12
002f7c  7a3d4240  vextracti.s r26, 4(vr4)
002f80  5b010000  j 8
002f84  7a3d4340  vextracti.s r26, 4(vr6)
002f88  9bc03b00  srli r1, r23, 3
002f8c  9b801000  andi r1, r1, 1
002f90  3bb00000  bneq r1, zero, 12
002f94  fa3d3240  vextracti.s r27, 3(vr4)
002f98  5b010000  j 8
002f9c  fa3d3340  vextracti.s r27, 3(vr6)
002fa0  9bc02b00  srli r1, r23, 2
002fa4  9b801000  andi r1, r1, 1
002fa8  3bb00000  bneq r1, zero, 12
002fac  7a3e2240  vextracti.s r28, 2(vr4)
002fb0  5b010000  j 8
002fb4  7a3e2340  vextracti.s r28, 2(vr6)
002fb8  9bc01b00  srli r1, r23, 1
002fbc  9b801000  andi r1, r1, 1
002fc0  3be00000  bneq r1, zero, 24
002fc4  fa301240  vextracti.s r1, 1(vr4)
002fc8  9b8b1b00  andi r23, r23, 1
002fcc  37e00b00  beq r23, zero, 24
002fd0  fa3b0340  vextracti.s r23, 0(vr6)
002fd4  db020000  j 20
002fd8  fa301340  vextracti.s r1, 1(vr6)
002fdc  9b8b1b00  andi r23, r23, 1
002fe0  bbcf0bfe  bneq r23, zero, -16
002fe4  fa3b0240  vextracti.s r23, 0(vr4)
002fe8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
002fec  42138fa2  vload_mask16.mz vr6{mr1}, 1344(r30)
002ff0  e6c175a0  vmerge_h.hf vr3, vr11, vr7
002ff4  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
002ff8  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
002ffc  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
003000  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
003004  9f2b0000  addli r23, zero, 2
003008  7e810be0  vmmov mr2, r23
00300c  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
003010  e69201c0  vabs.f vr5, vr3
003014  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
003018  9f001000  addli r1, zero, 8
00301c  7e8100e0  vmmov mr2, r1
003020  9f002000  addli r1, zero, 16
003024  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
003028  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
00302c  7e8100e0  vmmov mr2, r1
003030  9f004000  addli r1, zero, 32
003034  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
003038  7e8100e0  vmmov mr2, r1
00303c  9f000001  addli r1, zero, 128
003040  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
003044  7e8100e0  vmmov mr2, r1
003048  9f000002  addli r1, zero, 256
00304c  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
003050  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
003054  7e8100e0  vmmov mr2, r1
003058  9f000004  addli r1, zero, 512
00305c  6a200534  vor.u.mh vr0{mr2}, r10, vr0
003060  7e8100e0  vmmov mr2, r1
003064  9f000008  addli r1, zero, 1024
003068  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
00306c  7e8100e0  vmmov mr2, r1
003070  9f000010  addli r1, zero, 2048
003074  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
003078  7e8100e0  vmmov mr2, r1
00307c  9f000020  addli r1, zero, 4096
003080  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
003084  7e8100e0  vmmov mr2, r1
003088  9f100000  addli r1, zero, 1
00308c  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003090  9f000040  addli r1, zero, 8192
003094  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
003098  7e8100e0  vmmov mr2, r1
00309c  ab400000  lui r1, 4
0030a0  ab014000  lui r3, 1024
0030a4  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
0030a8  6a200434  vor.u.mh vr0{mr2}, r8, vr0
0030ac  7e8100e0  vmmov mr2, r1
0030b0  ab800000  lui r1, 8
0030b4  12324802  vadd.s.mz vr4{mr1}, r16, vr4
0030b8  6a200934  vor.u.mh vr0{mr2}, r18, vr0
0030bc  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
0030c0  eab23122  vor.s.mz vr5{mr1}, r3, vr3
0030c4  aba1aaaa  lui r3, 699050
0030c8  fe0b01a0  vmmov r23, mr2
0030cc  7e8100e0  vmmov mr2, r1
0030d0  9fa15115  addli r3, r3, 2730
0030d4  9bc0fb00  srli r1, r23, 15
0030d8  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
0030dc  7e8101e0  vmmov mr2, r3
0030e0  e3014ff6  loadli.w r3,  -1248(r30)
0030e4  9b801000  andi r1, r1, 1
0030e8  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
0030ec  3bb00000  bneq r1, zero, 12
0030f0  fa38f240  vextracti.s r17, 15(vr4)
0030f4  5b010000  j 8
0030f8  fab8f240  vextracti.s r17, 15(vr5)
0030fc  9bc0eb00  srli r1, r23, 14
003100  9f110000  addli r3, zero, 1
003104  9b801000  andi r1, r1, 1
003108  7e8101e0  vmmov mr2, r3
00310c  3bb00000  bneq r1, zero, 12
003110  7a39e240  vextracti.s r18, 14(vr4)
003114  5b010000  j 8
003118  7ab9e240  vextracti.s r18, 14(vr5)
00311c  9bc0db00  srli r1, r23, 13
003120  9b801000  andi r1, r1, 1
003124  3bb00000  bneq r1, zero, 12
003128  7a34d240  vextracti.s r8, 13(vr4)
00312c  5b010000  j 8
003130  7ab4d240  vextracti.s r8, 13(vr5)
003134  9bc0cb00  srli r1, r23, 12
003138  9b801000  andi r1, r1, 1
00313c  3bb00000  bneq r1, zero, 12
003140  fa31c240  vextracti.s r3, 12(vr4)
003144  5b010000  j 8
003148  fab1c240  vextracti.s r3, 12(vr5)
00314c  9bc0bb00  srli r1, r23, 11
003150  9b801000  andi r1, r1, 1
003154  3bb00000  bneq r1, zero, 12
003158  fa39b240  vextracti.s r19, 11(vr4)
00315c  5b010000  j 8
003160  fab9b240  vextracti.s r19, 11(vr5)
003164  9bc0ab00  srli r1, r23, 10
003168  9b801000  andi r1, r1, 1
00316c  3bb00000  bneq r1, zero, 12
003170  7a3aa240  vextracti.s r20, 10(vr4)
003174  5b010000  j 8
003178  7abaa240  vextracti.s r20, 10(vr5)
00317c  9bc09b00  srli r1, r23, 9
003180  9b801000  andi r1, r1, 1
003184  3bb00000  bneq r1, zero, 12
003188  fa329240  vextracti.s r5, 9(vr4)
00318c  5b010000  j 8
003190  fab29240  vextracti.s r5, 9(vr5)
003194  9bc08b00  srli r1, r23, 8
003198  9b801000  andi r1, r1, 1
00319c  3bb00000  bneq r1, zero, 12
0031a0  7a358240  vextracti.s r10, 8(vr4)
0031a4  5b010000  j 8
0031a8  7ab58240  vextracti.s r10, 8(vr5)
0031ac  9bc07b00  srli r1, r23, 7
0031b0  9b801000  andi r1, r1, 1
0031b4  3bb00000  bneq r1, zero, 12
0031b8  fa3a7240  vextracti.s r21, 7(vr4)
0031bc  5b010000  j 8
0031c0  faba7240  vextracti.s r21, 7(vr5)
0031c4  9bc06b00  srli r1, r23, 6
0031c8  9b801000  andi r1, r1, 1
0031cc  3bb00000  bneq r1, zero, 12
0031d0  7a3c6240  vextracti.s r24, 6(vr4)
0031d4  5b010000  j 8
0031d8  7abc6240  vextracti.s r24, 6(vr5)
0031dc  9bc05b00  srli r1, r23, 5
0031e0  9b801000  andi r1, r1, 1
0031e4  3bb00000  bneq r1, zero, 12
0031e8  fa3c5240  vextracti.s r25, 5(vr4)
0031ec  5b010000  j 8
0031f0  fabc5240  vextracti.s r25, 5(vr5)
0031f4  9bc04b00  srli r1, r23, 4
0031f8  9b801000  andi r1, r1, 1
0031fc  3bb00000  bneq r1, zero, 12
003200  7a3d4240  vextracti.s r26, 4(vr4)
003204  5b010000  j 8
003208  7abd4240  vextracti.s r26, 4(vr5)
00320c  9bc03b00  srli r1, r23, 3
003210  9b801000  andi r1, r1, 1
003214  3bb00000  bneq r1, zero, 12
003218  fa3d3240  vextracti.s r27, 3(vr4)
00321c  5b010000  j 8
003220  fabd3240  vextracti.s r27, 3(vr5)
003224  9bc02b00  srli r1, r23, 2
003228  9b801000  andi r1, r1, 1
00322c  3bb00000  bneq r1, zero, 12
003230  7a3e2240  vextracti.s r28, 2(vr4)
003234  5b010000  j 8
003238  7abe2240  vextracti.s r28, 2(vr5)
00323c  9bc01b00  srli r1, r23, 1
003240  9b801000  andi r1, r1, 1
003244  3be00000  bneq r1, zero, 24
003248  fa301240  vextracti.s r1, 1(vr4)
00324c  9b8b1b00  andi r23, r23, 1
003250  37e00b00  beq r23, zero, 24
003254  fabb0240  vextracti.s r23, 0(vr5)
003258  db020000  j 20
00325c  fab01240  vextracti.s r1, 1(vr5)
003260  9b8b1b00  andi r23, r23, 1
003264  bbcf0bfe  bneq r23, zero, -16
003268  fa3b0240  vextracti.s r23, 0(vr4)
00326c  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
003270  e6c16580  vmerge_l.hf vr3, vr11, vr6
003274  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
003278  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
00327c  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
003280  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
003284  9f2b0000  addli r23, zero, 2
003288  7e810be0  vmmov mr2, r23
00328c  6eb230c2  vsrl.s.mz vr4{mr1}, vr1, vr3
003290  e69201c0  vabs.f vr5, vr3
003294  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
003298  9f001000  addli r1, zero, 8
00329c  7e8100e0  vmmov mr2, r1
0032a0  9f002000  addli r1, zero, 16
0032a4  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
0032a8  6aa00d34  vor.u.mh vr0{mr2}, r27, vr0
0032ac  7e8100e0  vmmov mr2, r1
0032b0  9f004000  addli r1, zero, 32
0032b4  6a200d34  vor.u.mh vr0{mr2}, r26, vr0
0032b8  7e8100e0  vmmov mr2, r1
0032bc  9f000001  addli r1, zero, 128
0032c0  6aa00c34  vor.u.mh vr0{mr2}, r25, vr0
0032c4  7e8100e0  vmmov mr2, r1
0032c8  9f000002  addli r1, zero, 256
0032cc  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
0032d0  6aa00a34  vor.u.mh vr0{mr2}, r21, vr0
0032d4  7e8100e0  vmmov mr2, r1
0032d8  9f000004  addli r1, zero, 512
0032dc  6a200534  vor.u.mh vr0{mr2}, r10, vr0
0032e0  7e8100e0  vmmov mr2, r1
0032e4  9f000008  addli r1, zero, 1024
0032e8  6aa00234  vor.u.mh vr0{mr2}, r5, vr0
0032ec  7e8100e0  vmmov mr2, r1
0032f0  9f000010  addli r1, zero, 2048
0032f4  6a200a34  vor.u.mh vr0{mr2}, r20, vr0
0032f8  7e8100e0  vmmov mr2, r1
0032fc  9f000020  addli r1, zero, 4096
003300  6aa00934  vor.u.mh vr0{mr2}, r19, vr0
003304  7e8100e0  vmmov mr2, r1
003308  9f100000  addli r1, zero, 1
00330c  6ab24002  vand.s.mz vr4{mr1}, r1, vr4
003310  9f000040  addli r1, zero, 8192
003314  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
003318  7e8100e0  vmmov mr2, r1
00331c  ab400000  lui r1, 4
003320  ab014000  lui r3, 1024
003324  16b24102  vadd.s.mz vr4{mr1}, vr3, vr4
003328  6a200434  vor.u.mh vr0{mr2}, r8, vr0
00332c  7e8100e0  vmmov mr2, r1
003330  ab800000  lui r1, 8
003334  12324802  vadd.s.mz vr4{mr1}, r16, vr4
003338  6a200934  vor.u.mh vr0{mr2}, r18, vr0
00333c  76215142  vlt.u.mz mr2{mr1}, vr2, vr5
003340  eab23122  vor.s.mz vr5{mr1}, r3, vr3
003344  aba1aaaa  lui r3, 699050
003348  fe0b01a0  vmmov r23, mr2
00334c  7e8100e0  vmmov mr2, r1
003350  9fa15115  addli r3, r3, 2730
003354  9bc0fb00  srli r1, r23, 15
003358  6aa00834  vor.u.mh vr0{mr2}, r17, vr0
00335c  7e8101e0  vmmov mr2, r3
003360  e341fff5  loadli.w r3,  -1284(r30)
003364  9b801000  andi r1, r1, 1
003368  62c50114  vscatter.mh vr0{mr2}, vr10{r3}
00336c  3bb00000  bneq r1, zero, 12
003370  fa38f240  vextracti.s r17, 15(vr4)
003374  5b010000  j 8
003378  fab8f240  vextracti.s r17, 15(vr5)
00337c  9bc0eb00  srli r1, r23, 14
003380  9f110000  addli r3, zero, 1
003384  9b801000  andi r1, r1, 1
003388  7e8101e0  vmmov mr2, r3
00338c  3bb00000  bneq r1, zero, 12
003390  7a39e240  vextracti.s r18, 14(vr4)
003394  5b010000  j 8
003398  7ab9e240  vextracti.s r18, 14(vr5)
00339c  9bc0db00  srli r1, r23, 13
0033a0  9b801000  andi r1, r1, 1
0033a4  3bb00000  bneq r1, zero, 12
0033a8  7a34d240  vextracti.s r8, 13(vr4)
0033ac  5b010000  j 8
0033b0  7ab4d240  vextracti.s r8, 13(vr5)
0033b4  9bc0cb00  srli r1, r23, 12
0033b8  9b801000  andi r1, r1, 1
0033bc  3bb00000  bneq r1, zero, 12
0033c0  fa31c240  vextracti.s r3, 12(vr4)
0033c4  5b010000  j 8
0033c8  fab1c240  vextracti.s r3, 12(vr5)
0033cc  9bc0bb00  srli r1, r23, 11
0033d0  9b801000  andi r1, r1, 1
0033d4  3bb00000  bneq r1, zero, 12
0033d8  fa39b240  vextracti.s r19, 11(vr4)
0033dc  5b010000  j 8
0033e0  fab9b240  vextracti.s r19, 11(vr5)
0033e4  9bc0ab00  srli r1, r23, 10
0033e8  9b801000  andi r1, r1, 1
0033ec  3bb00000  bneq r1, zero, 12
0033f0  7a3aa240  vextracti.s r20, 10(vr4)
0033f4  5b010000  j 8
0033f8  7abaa240  vextracti.s r20, 10(vr5)
0033fc  9bc09b00  srli r1, r23, 9
003400  9b801000  andi r1, r1, 1
003404  3bb00000  bneq r1, zero, 12
003408  fa329240  vextracti.s r5, 9(vr4)
00340c  5b010000  j 8
003410  fab29240  vextracti.s r5, 9(vr5)
003414  9bc08b00  srli r1, r23, 8
003418  9b801000  andi r1, r1, 1
00341c  3bb00000  bneq r1, zero, 12
003420  7a358240  vextracti.s r10, 8(vr4)
003424  5b010000  j 8
003428  7ab58240  vextracti.s r10, 8(vr5)
00342c  9bc07b00  srli r1, r23, 7
003430  9b801000  andi r1, r1, 1
003434  3bb00000  bneq r1, zero, 12
003438  fa3a7240  vextracti.s r21, 7(vr4)
00343c  5b010000  j 8
003440  faba7240  vextracti.s r21, 7(vr5)
003444  9bc06b00  srli r1, r23, 6
003448  9b801000  andi r1, r1, 1
00344c  3bb00000  bneq r1, zero, 12
003450  7a3c6240  vextracti.s r24, 6(vr4)
003454  5b010000  j 8
003458  7abc6240  vextracti.s r24, 6(vr5)
00345c  9bc05b00  srli r1, r23, 5
003460  9b801000  andi r1, r1, 1
003464  3bb00000  bneq r1, zero, 12
003468  fa3c5240  vextracti.s r25, 5(vr4)
00346c  5b010000  j 8
003470  fabc5240  vextracti.s r25, 5(vr5)
003474  9bc04b00  srli r1, r23, 4
003478  9b801000  andi r1, r1, 1
00347c  3bb00000  bneq r1, zero, 12
003480  7a3d4240  vextracti.s r26, 4(vr4)
003484  5b010000  j 8
003488  7abd4240  vextracti.s r26, 4(vr5)
00348c  9bc03b00  srli r1, r23, 3
003490  9b801000  andi r1, r1, 1
003494  3bb00000  bneq r1, zero, 12
003498  fa3d3240  vextracti.s r27, 3(vr4)
00349c  5b010000  j 8
0034a0  fabd3240  vextracti.s r27, 3(vr5)
0034a4  9bc02b00  srli r1, r23, 2
0034a8  9b801000  andi r1, r1, 1
0034ac  3bb00000  bneq r1, zero, 12
0034b0  7a3e2240  vextracti.s r28, 2(vr4)
0034b4  5b010000  j 8
0034b8  7abe2240  vextracti.s r28, 2(vr5)
0034bc  9bc01b00  srli r1, r23, 1
0034c0  9b801000  andi r1, r1, 1
0034c4  3be00000  bneq r1, zero, 24
0034c8  fa301240  vextracti.s r1, 1(vr4)
0034cc  9b8b1b00  andi r23, r23, 1
0034d0  37e00b00  beq r23, zero, 24
0034d4  fabb0240  vextracti.s r23, 0(vr5)
0034d8  db020000  j 20
0034dc  fab01240  vextracti.s r1, 1(vr5)
0034e0  9b8b1b00  andi r23, r23, 1
0034e4  bbcf0bfe  bneq r23, zero, -16
0034e8  fa3b0240  vextracti.s r23, 0(vr4)
0034ec  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0034f0  e6c165a0  vmerge_h.hf vr3, vr11, vr6
0034f4  92113202  vadd.f.mz.rn vr3{mr1}, r4, vr3
0034f8  8a913702  vmul.f.mz.rn vr3{mr1}, r15, vr3
0034fc  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
003500  6aa00b34  vor.u.mh vr0{mr2}, r23, vr0
003504  9f2b0000  addli r23, zero, 2
003508  7e810be0  vmmov mr2, r23
00350c  eeb030c2  vsrl.s.mz vr1{mr1}, vr1, vr3
003510  669201c0  vabs.f vr4, vr3
003514  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
003518  9f001000  addli r1, zero, 8
00351c  76214142  vlt.u.mz mr2{mr1}, vr2, vr4
003520  6a200e30  vor.u.mh vr0{mr0}, r28, vr0
003524  7e8000e0  vmmov mr0, r1
003528  9f002000  addli r1, zero, 16
00352c  fe0701a0  vmmov r15, mr2
003530  6aa00d30  vor.u.mh vr0{mr0}, r27, vr0
003534  7e8000e0  vmmov mr0, r1
003538  9f004000  addli r1, zero, 32
00353c  6a200d30  vor.u.mh vr0{mr0}, r26, vr0
003540  7e8000e0  vmmov mr0, r1
003544  9f000001  addli r1, zero, 128
003548  6aa00c30  vor.u.mh vr0{mr0}, r25, vr0
00354c  7e8000e0  vmmov mr0, r1
003550  9f000002  addli r1, zero, 256
003554  6a200c36  vor.u.mh vr0{mr3}, r24, vr0
003558  6aa00a30  vor.u.mh vr0{mr0}, r21, vr0
00355c  7e8000e0  vmmov mr0, r1
003560  9f000004  addli r1, zero, 512
003564  6a200530  vor.u.mh vr0{mr0}, r10, vr0
003568  7e8000e0  vmmov mr0, r1
00356c  9f000008  addli r1, zero, 1024
003570  6aa00230  vor.u.mh vr0{mr0}, r5, vr0
003574  7e8000e0  vmmov mr0, r1
003578  9f000010  addli r1, zero, 2048
00357c  6a200a30  vor.u.mh vr0{mr0}, r20, vr0
003580  7e8000e0  vmmov mr0, r1
003584  9f000020  addli r1, zero, 4096
003588  6aa00930  vor.u.mh vr0{mr0}, r19, vr0
00358c  7e8000e0  vmmov mr0, r1
003590  9f100000  addli r1, zero, 1
003594  eab01002  vand.s.mz vr1{mr1}, r1, vr1
003598  9f000040  addli r1, zero, 8192
00359c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0035a0  7e8000e0  vmmov mr0, r1
0035a4  ab400000  lui r1, 4
0035a8  ab014000  lui r3, 1024
0035ac  96b01102  vadd.s.mz vr1{mr1}, vr3, vr1
0035b0  6ab13122  vor.s.mz vr2{mr1}, r3, vr3
0035b4  aba1aaaa  lui r3, 699050
0035b8  6a200430  vor.u.mh vr0{mr0}, r8, vr0
0035bc  7e8000e0  vmmov mr0, r1
0035c0  ab800000  lui r1, 8
0035c4  9fa15115  addli r3, r3, 2730
0035c8  92301802  vadd.s.mz vr1{mr1}, r16, vr1
0035cc  6a200930  vor.u.mh vr0{mr0}, r18, vr0
0035d0  7e8000e0  vmmov mr0, r1
0035d4  9bc0f700  srli r1, r15, 15
0035d8  9b801000  andi r1, r1, 1
0035dc  6aa00830  vor.u.mh vr0{mr0}, r17, vr0
0035e0  7e8001e0  vmmov mr0, r3
0035e4  e3413ff6  loadli.w r3,  -1252(r30)
0035e8  62c50110  vscatter.mh vr0{mr0}, vr10{r3}
0035ec  3bb00000  bneq r1, zero, 12
0035f0  7ab2f040  vextracti.s r4, 15(vr1)
0035f4  5b010000  j 8
0035f8  7a32f140  vextracti.s r4, 15(vr2)
0035fc  9bc0e700  srli r1, r15, 14
003600  9f110000  addli r3, zero, 1
003604  e34dbff5  loadli.w r27,  -1316(r30)
003608  2b0e807f  lui r28, 522240
00360c  9b801000  andi r1, r1, 1
003610  7e8101e0  vmmov mr2, r3
003614  3bb00000  bneq r1, zero, 12
003618  7ab4e040  vextracti.s r8, 14(vr1)
00361c  5b010000  j 8
003620  7a34e140  vextracti.s r8, 14(vr2)
003624  9bc0d700  srli r1, r15, 13
003628  9b801000  andi r1, r1, 1
00362c  3bb00000  bneq r1, zero, 12
003630  fab1d040  vextracti.s r3, 13(vr1)
003634  5b010000  j 8
003638  fa31d140  vextracti.s r3, 13(vr2)
00363c  9bc0c700  srli r1, r15, 12
003640  9b801000  andi r1, r1, 1
003644  3bb00000  bneq r1, zero, 12
003648  fab8c040  vextracti.s r17, 12(vr1)
00364c  5b010000  j 8
003650  fa38c140  vextracti.s r17, 12(vr2)
003654  9bc0b700  srli r1, r15, 11
003658  9b801000  andi r1, r1, 1
00365c  3bb00000  bneq r1, zero, 12
003660  7ab9b040  vextracti.s r18, 11(vr1)
003664  5b010000  j 8
003668  7a39b140  vextracti.s r18, 11(vr2)
00366c  9bc0a700  srli r1, r15, 10
003670  9b801000  andi r1, r1, 1
003674  3bb00000  bneq r1, zero, 12
003678  fab9a040  vextracti.s r19, 10(vr1)
00367c  5b010000  j 8
003680  fa39a140  vextracti.s r19, 10(vr2)
003684  9bc09700  srli r1, r15, 9
003688  9b801000  andi r1, r1, 1
00368c  3bb00000  bneq r1, zero, 12
003690  fab29040  vextracti.s r5, 9(vr1)
003694  5b010000  j 8
003698  fa329140  vextracti.s r5, 9(vr2)
00369c  9bc08700  srli r1, r15, 8
0036a0  9b801000  andi r1, r1, 1
0036a4  3bb00000  bneq r1, zero, 12
0036a8  7ab58040  vextracti.s r10, 8(vr1)
0036ac  5b010000  j 8
0036b0  7a358140  vextracti.s r10, 8(vr2)
0036b4  9bc07700  srli r1, r15, 7
0036b8  9b801000  andi r1, r1, 1
0036bc  3bb00000  bneq r1, zero, 12
0036c0  7aba7040  vextracti.s r20, 7(vr1)
0036c4  5b010000  j 8
0036c8  7a3a7140  vextracti.s r20, 7(vr2)
0036cc  9bc06700  srli r1, r15, 6
0036d0  9b801000  andi r1, r1, 1
0036d4  3bb00000  bneq r1, zero, 12
0036d8  faba6040  vextracti.s r21, 6(vr1)
0036dc  5b010000  j 8
0036e0  fa3a6140  vextracti.s r21, 6(vr2)
0036e4  9bc05700  srli r1, r15, 5
0036e8  9b801000  andi r1, r1, 1
0036ec  3bb00000  bneq r1, zero, 12
0036f0  fabb5040  vextracti.s r23, 5(vr1)
0036f4  5b010000  j 8
0036f8  fa3b5140  vextracti.s r23, 5(vr2)
0036fc  9bc04700  srli r1, r15, 4
003700  9b801000  andi r1, r1, 1
003704  3bb00000  bneq r1, zero, 12
003708  7abc4040  vextracti.s r24, 4(vr1)
00370c  5b010000  j 8
003710  7a3c4140  vextracti.s r24, 4(vr2)
003714  9bc03700  srli r1, r15, 3
003718  9b801000  andi r1, r1, 1
00371c  3bb00000  bneq r1, zero, 12
003720  fabc3040  vextracti.s r25, 3(vr1)
003724  5b010000  j 8
003728  fa3c3140  vextracti.s r25, 3(vr2)
00372c  9bc02700  srli r1, r15, 2
003730  9b801000  andi r1, r1, 1
003734  3bb00000  bneq r1, zero, 12
003738  7abd2040  vextracti.s r26, 2(vr1)
00373c  5b010000  j 8
003740  7a3d2140  vextracti.s r26, 2(vr2)
003744  9bc01700  srli r1, r15, 1
003748  9b801000  andi r1, r1, 1
00374c  3bd00000  bneq r1, zero, 20
003750  fab01040  vextracti.s r1, 1(vr1)
003754  9b871700  andi r15, r15, 1
003758  37fe07e4  beq r15, zero, -13412
00375c  5b020000  j 16
003760  fa301140  vextracti.s r1, 1(vr2)
003764  9b871700  andi r15, r15, 1
003768  37be07e4  beq r15, zero, -13428
00376c  fa370140  vextracti.s r15, 0(vr2)
003770  5b71f9ff  j -13432
003774  e300aff5  loadli.w r1,  -1328(r30)
003778  63419ff5  loadli.w r2,  -1332(r30)
00377c  0b142410  add.s r8, r8, r2
003780  bf7f14fe  blt.s r8, r1, -4
003784  9f0e8ff5  addli sp, r30, -1344
003788  9f8e8e0a  addli sp, sp, 1344
00378c  00a00300  mfence { lm, sm, gm }
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
0039a4  00100000  exit
0039a8  00100000  exit
0039ac  00100000  exit
0039b0  00100000  exit
0039b4  00100000  exit
0039b8  00100000  exit
0039bc  00100000  exit
0039c0  00100000  exit
0039c4  00100000  exit
0039c8  00100000  exit
0039cc  00100000  exit
0039d0  00100000  exit
