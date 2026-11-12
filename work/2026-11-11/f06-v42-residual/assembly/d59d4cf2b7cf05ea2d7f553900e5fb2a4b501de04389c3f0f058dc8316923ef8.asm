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
000078  9f498000  addli r19, zero, 68
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e0ed0  addli sp, sp, -6144
0000e8  2b010000  lui r2, 0
0000ec  80300002  core_id r1
0000f0  1f8f0e2f  addli r30, sp, 6016
0000f4  abf20000  lui r5, 15
0000f8  00560002  load_param_i r12, 0
0000fc  9bb12000  slli r3, r1, 2
000100  1f010100  addli r2, r2, 0
000104  e3437f00  loadli.w r7,  60(r30)
000108  63027f00  loadli.w r4,  56(r30)
00010c  63038f00  loadli.w r6,  64(r30)
000110  9b92f2ff  ori r5, r5, 4095
000114  0b942110  add.s r8, r3, r2
000118  0b924320  mul.s r4, r7, r4
00011c  9f042410  addli r9, r8, 2064
000120  8b166220  mul.s r13, r4, r6
000124  674c9fd0  storeli.w r9, -5948(r30)
000128  73e00400  stores.w zero, 0(r9)
00012c  00a00300  mfence { lm, sm, gm }
000130  80a10204  csr_set csr3, r5
000134  00d00100  sync_group
000138  e70c8fd0  storeli.w r8, -5944(r30)
00013c  73600400  stores.w zero, 0(r8)
000140  00a00300  mfence { lm, sm, gm }
000144  80a10204  csr_set csr3, r5
000148  00d00100  sync_group
00014c  4bc0c638  ble.s r13, r12, 28688
000150  1f074000  addli r14, zero, 32
000154  80d20002  load_param_i r5, 1
000158  1f490000  addli r18, zero, 4
00015c  0b92e030  div.s r4, r1, r14
000160  67495fd0  storeli.w r5, -5996(r30)
000164  67094fd0  storeli.w r4, -6000(r30)
000168  1b325200  slli r4, r4, 5
00016c  0b924018  sub.s r4, r1, r4
000170  3f202201  blt.s r4, r18, 8
000174  dbfb0d00  j 28636
000178  2bf5ffff  lui r10, 1048575
00017c  9b378200  slli r15, r4, 8
000180  9f030008  addli r7, zero, 1024
000184  9f050002  addli r11, zero, 256
000188  1f1a0000  addli r20, zero, 1
00018c  6b540f01  load.d r[9:10], 16(r30)
000190  eb528f01  load.d r[6:7], 24(r30)
000194  9f0a8ff3  addli r21, r30, -1600
000198  1f6b3000  addli r22, zero, 30
00019c  9f4b3000  addli r23, zero, 28
0001a0  1f2c3000  addli r24, zero, 26
0001a4  9f0c3000  addli r25, zero, 24
0001a8  1f6d2000  addli r26, zero, 22
0001ac  9f4d2000  addli r27, zero, 20
0001b0  1f2e2000  addli r28, zero, 18
0001b4  1f280000  addli r16, zero, 2
0001b8  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
0001bc  670cdfd0  storeli.w r13, -5952(r30)
0001c0  1b1505f8  ori r10, r10, 3968
0001c4  8b93f318  sub.s r7, r7, r15
0001c8  e74bffd0  storeli.w r15, -5956(r30)
0001cc  9781a100  and r3, r3, r10
0001d0  8b83b340  min.u r7, r7, r11
0001d4  9b85f001  andi r11, r1, 31
0001d8  9bf00004  setlti r1, r1, 64
0001dc  8b912110  add.s r3, r3, r2
0001e0  13010200  seteq r2, r4, zero
0001e4  1bb51300  slli r10, r7, 1
0001e8  9f035fd1  addli r7, r30, -5976
0001ec  674bbfd0  storeli.w r11, -5964(r30)
0001f0  67413fd2  storeli.w r3, -5868(r30)
0001f4  9f812110  addli r3, r3, 2064
0001f8  e70bafd0  storeli.w r10, -5960(r30)
0001fc  67013fd2  storeli.w r3, -5872(r30)
000200  b3910728  sext_int2long r[4:5], r15
000204  9f670000  addli r15, zero, 6
000208  97b14103  sll.d r[4:5], r[4:5], r20
00020c  97802000  and r1, r1, r2
000210  670b1fd0  storeli.w r1, -5968(r30)
000214  8b203410  add.ul r[2:3], r[9:10], r[4:5]
000218  1f241000  addli r8, zero, 10
00021c  9f041000  addli r9, zero, 8
000220  73b01300  store.d r[2:3], 0(r7)
000224  8ba03210  add.ul r[2:3], r[6:7], r[4:5]
000228  9f014fd1  addli r3, r30, -5984
00022c  9f022000  addli r5, zero, 16
000230  1f631000  addli r6, zero, 14
000234  9f431000  addli r7, zero, 12
000238  73b01100  store.d r[2:3], 0(r3)
00023c  ab700000  lui r1, 7
000240  2bf1ff7f  lui r2, 524287
000244  9f71f003  addli r3, zero, 511
000248  9b99f0ff  ori r19, r1, 4095
00024c  abf00000  lui r1, 15
000250  9b98f0ff  ori r17, r1, 4095
000254  9b10f1ff  ori r1, r2, 4095
000258  e7091fd0  storeli.w r1, -5992(r30)
00025c  9f000ff2  addli r1, r30, -1792
000260  e7491fd1  storeli.w r17, -5988(r30)
000264  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000268  db020000  j 20
00026c  e3402fd1  loadli.w r1,  -5996(r30)
000270  0b161610  add.s r12, r12, r1
000274  3f20d600  blt.s r12, r13, 8
000278  dbdc0d00  j 28388
00027c  1f818a00  addli r2, r21, 64
000280  e3008f00  loadli.w r1,  64(r30)
000284  1f020000  addli r4, zero, 0
000288  e740cfd2  storeli.w r12, -5876(r30)
00028c  e7002fd2  storeli.w r2, -5880(r30)
000290  1f810a01  addli r2, r21, 128
000294  8b101630  div.s r1, r12, r1
000298  67402fd2  storeli.w r2, -5884(r30)
00029c  1f818a01  addli r2, r21, 192
0002a0  67002fd2  storeli.w r2, -5888(r30)
0002a4  1f810a02  addli r2, r21, 256
0002a8  e74f2fd0  storeli.w r2, -5892(r30)
0002ac  1f818a02  addli r2, r21, 320
0002b0  e70f2fd0  storeli.w r2, -5896(r30)
0002b4  63417f00  loadli.w r2,  60(r30)
0002b8  8b902030  div.s r1, r1, r2
0002bc  1f810a03  addli r2, r21, 384
0002c0  674f2fd0  storeli.w r2, -5900(r30)
0002c4  1f818a03  addli r2, r21, 448
0002c8  670f2fd0  storeli.w r2, -5904(r30)
0002cc  1f814a00  addli r2, r21, 32
0002d0  e74e2fd0  storeli.w r2, -5908(r30)
0002d4  1f81ca00  addli r2, r21, 96
0002d8  9bb06000  slli r1, r1, 6
0002dc  e70e2fd0  storeli.w r2, -5912(r30)
0002e0  1f814a01  addli r2, r21, 160
0002e4  674e2fd0  storeli.w r2, -5916(r30)
0002e8  1f81ca01  addli r2, r21, 224
0002ec  670e2fd0  storeli.w r2, -5920(r30)
0002f0  63012fd1  loadli.w r2,  -6000(r30)
0002f4  0b912010  add.s r2, r1, r2
0002f8  9f804a02  addli r1, r21, 288
0002fc  e70d1fd0  storeli.w r1, -5928(r30)
000300  9f80ca02  addli r1, r21, 352
000304  e74d2fd0  storeli.w r2, -5924(r30)
000308  674d1fd0  storeli.w r1, -5932(r30)
00030c  9f804a03  addli r1, r21, 416
000310  670d1fd0  storeli.w r1, -5936(r30)
000314  9f80ca03  addli r1, r21, 480
000318  e74c1fd0  storeli.w r1, -5940(r30)
00031c  00a00000  mfence { lm }
000320  db270000  j 316
000324  7ab20040  vextracti.s r4, 0(vr1)
000328  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
00032c  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000330  1f220000  addli r4, zero, 2
000334  fe0102e0  vmmov mr3, r4
000338  1f420000  addli r4, zero, 4
00033c  ea201836  vor.u.mh vr1{mr3}, r16, vr1
000340  7e0002e0  vmmov mr0, r4
000344  1f021000  addli r4, zero, 8
000348  1f280000  addli r16, zero, 2
00034c  7e0102e0  vmmov mr2, r4
000350  1f022000  addli r4, zero, 16
000354  eaa01730  vor.u.mh vr1{mr0}, r15, vr1
000358  9f670000  addli r15, zero, 6
00035c  ea201734  vor.u.mh vr1{mr2}, r14, vr1
000360  7e0102e0  vmmov mr2, r4
000364  1f024000  addli r4, zero, 32
000368  1f074000  addli r14, zero, 32
00036c  fe0102e0  vmmov mr3, r4
000370  1f028000  addli r4, zero, 64
000374  eaa01634  vor.u.mh vr1{mr2}, r13, vr1
000378  7e0002e0  vmmov mr0, r4
00037c  1f020001  addli r4, zero, 128
000380  ea201636  vor.u.mh vr1{mr3}, r12, vr1
000384  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
000388  7e0002e0  vmmov mr0, r4
00038c  1f020002  addli r4, zero, 256
000390  7e0102e0  vmmov mr2, r4
000394  1f020004  addli r4, zero, 512
000398  ea201530  vor.u.mh vr1{mr0}, r10, vr1
00039c  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
0003a0  7e0102e0  vmmov mr2, r4
0003a4  1f020008  addli r4, zero, 1024
0003a8  9f041000  addli r9, zero, 8
0003ac  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0003b0  7e0102e0  vmmov mr2, r4
0003b4  1f020010  addli r4, zero, 2048
0003b8  1f241000  addli r8, zero, 10
0003bc  fe0102e0  vmmov mr3, r4
0003c0  1f020020  addli r4, zero, 4096
0003c4  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
0003c8  9f431000  addli r7, zero, 12
0003cc  ea201336  vor.u.mh vr1{mr3}, r6, vr1
0003d0  fe0102e0  vmmov mr3, r4
0003d4  1f020040  addli r4, zero, 8192
0003d8  1f631000  addli r6, zero, 14
0003dc  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
0003e0  fe0102e0  vmmov mr3, r4
0003e4  9f022000  addli r5, zero, 16
0003e8  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
0003ec  ab410000  lui r3, 4
0003f0  7e8001e0  vmmov mr0, r3
0003f4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0003f8  2b810000  lui r2, 8
0003fc  7e0001e0  vmmov mr0, r2
000400  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000404  eb508f00  load.d r[2:3], 8(r30)
000408  eb510f87  load.d r[4:5], -1936(r30)
00040c  63057fd1  loadli.w r10,  -5960(r30)
000410  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000414  2ba2aaaa  lui r4, 699050
000418  ab0100f0  lui r3, 983040
00041c  1f225215  addli r4, r4, 2730
000420  97113500  or r3, r10, r3
000424  7e0002e0  vmmov mr0, r4
000428  63429fd1  loadli.w r4,  -5940(r30)
00042c  62401210  vscatter.mh vr1{mr0}, vr0{r4}
000430  00a00000  mfence { lm }
000434  ffb15001  s_lm2gm r3, r21, 0(r[2:3])
000438  9f71f003  addli r3, zero, 511
00043c  00a00000  mfence { lm }
000440  63461fd2  loadli.w r12,  -5876(r30)
000444  e3068fd1  loadli.w r13,  -5952(r30)
000448  e3456fd1  loadli.w r11,  -5964(r30)
00044c  6341bfd1  loadli.w r2,  -5924(r30)
000450  6342fff0  loadli.w r4,  -1924(r30)
000454  1f120200  addli r4, r4, 1
000458  3758e2fe  beq r4, r14, -492
00045c  9b301200  slli r1, r4, 1
000460  8b101110  add.s r1, r2, r1
000464  bfcf11fe  blt.s r3, r1, -16
000468  1f010000  addli r2, zero, 0
00046c  1f070004  addli r14, zero, 512
000470  e7474ff0  storeli.w r4, -1924(r30)
000474  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
000478  9f110000  addli r3, zero, 1
00047c  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
000480  2ba6aaaa  lui r12, 699050
000484  7e8001e0  vmmov mr0, r3
000488  9f210000  addli r3, zero, 2
00048c  1f265615  addli r12, r12, 2730
000490  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000494  7e8001e0  vmmov mr0, r3
000498  9f410000  addli r3, zero, 4
00049c  fe8101e0  vmmov mr3, r3
0004a0  9f011000  addli r3, zero, 8
0004a4  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0004a8  7e8001e0  vmmov mr0, r3
0004ac  9f012000  addli r3, zero, 16
0004b0  7e8101e0  vmmov mr2, r3
0004b4  9f014000  addli r3, zero, 32
0004b8  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
0004bc  6a400830  vor.hf.mh vr0{mr0}, r16, vr0
0004c0  7e8001e0  vmmov mr0, r3
0004c4  9f018000  addli r3, zero, 64
0004c8  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
0004cc  6a400930  vor.hf.mh vr0{mr0}, r18, vr0
0004d0  7e8001e0  vmmov mr0, r3
0004d4  9f010001  addli r3, zero, 128
0004d8  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0004dc  7e8001e0  vmmov mr0, r3
0004e0  9f010002  addli r3, zero, 256
0004e4  6ac00730  vor.hf.mh vr0{mr0}, r15, vr0
0004e8  7e8001e0  vmmov mr0, r3
0004ec  9f010004  addli r3, zero, 512
0004f0  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0004f4  7e8001e0  vmmov mr0, r3
0004f8  9f010008  addli r3, zero, 1024
0004fc  6ac00430  vor.hf.mh vr0{mr0}, r9, vr0
000500  7e8001e0  vmmov mr0, r3
000504  9f010010  addli r3, zero, 2048
000508  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
00050c  7e8001e0  vmmov mr0, r3
000510  9f010020  addli r3, zero, 4096
000514  6a400430  vor.hf.mh vr0{mr0}, r8, vr0
000518  7e8001e0  vmmov mr0, r3
00051c  9f010040  addli r3, zero, 8192
000520  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000524  7e8001e0  vmmov mr0, r3
000528  ab410000  lui r3, 4
00052c  6ac00330  vor.hf.mh vr0{mr0}, r7, vr0
000530  7e8001e0  vmmov mr0, r3
000534  ab810000  lui r3, 8
000538  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
00053c  7e8001e0  vmmov mr0, r3
000540  ab010100  lui r3, 16
000544  6a400330  vor.hf.mh vr0{mr0}, r6, vr0
000548  7e8001e0  vmmov mr0, r3
00054c  ab010200  lui r3, 32
000550  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000554  7e8001e0  vmmov mr0, r3
000558  ab010400  lui r3, 64
00055c  6ac00230  vor.hf.mh vr0{mr0}, r5, vr0
000560  7e8001e0  vmmov mr0, r3
000564  ab010800  lui r3, 128
000568  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
00056c  7e8001e0  vmmov mr0, r3
000570  ab011000  lui r3, 256
000574  6a400e30  vor.hf.mh vr0{mr0}, r28, vr0
000578  7e8001e0  vmmov mr0, r3
00057c  ab012000  lui r3, 512
000580  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000584  7e8001e0  vmmov mr0, r3
000588  ab014000  lui r3, 1024
00058c  6ac00d30  vor.hf.mh vr0{mr0}, r27, vr0
000590  7e8001e0  vmmov mr0, r3
000594  ab018000  lui r3, 2048
000598  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
00059c  7e8001e0  vmmov mr0, r3
0005a0  ab010001  lui r3, 4096
0005a4  6a400d30  vor.hf.mh vr0{mr0}, r26, vr0
0005a8  7e8001e0  vmmov mr0, r3
0005ac  ab010002  lui r3, 8192
0005b0  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005b4  7e8001e0  vmmov mr0, r3
0005b8  ab010004  lui r3, 16384
0005bc  6ac00c30  vor.hf.mh vr0{mr0}, r25, vr0
0005c0  7e8001e0  vmmov mr0, r3
0005c4  ab010008  lui r3, 32768
0005c8  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005cc  7e8001e0  vmmov mr0, r3
0005d0  ab010010  lui r3, 65536
0005d4  6a400c30  vor.hf.mh vr0{mr0}, r24, vr0
0005d8  7e8001e0  vmmov mr0, r3
0005dc  ab010020  lui r3, 131072
0005e0  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005e4  7e8001e0  vmmov mr0, r3
0005e8  ab010040  lui r3, 262144
0005ec  6ac00b30  vor.hf.mh vr0{mr0}, r23, vr0
0005f0  7e8001e0  vmmov mr0, r3
0005f4  ab010080  lui r3, 524288
0005f8  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005fc  7e8001e0  vmmov mr0, r3
000600  9f110000  addli r3, zero, 1
000604  6a400b30  vor.hf.mh vr0{mr0}, r22, vr0
000608  7e8001e0  vmmov mr0, r3
00060c  9f210000  addli r3, zero, 2
000610  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
000614  7e8001e0  vmmov mr0, r3
000618  9f011000  addli r3, zero, 8
00061c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000620  7e8001e0  vmmov mr0, r3
000624  9f014000  addli r3, zero, 32
000628  eac01936  vor.hf.mh vr1{mr3}, r19, vr1
00062c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000630  7e8001e0  vmmov mr0, r3
000634  9f018000  addli r3, zero, 64
000638  eac01934  vor.hf.mh vr1{mr2}, r19, vr1
00063c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000640  7e8001e0  vmmov mr0, r3
000644  9f010001  addli r3, zero, 128
000648  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
00064c  7e8001e0  vmmov mr0, r3
000650  9f010002  addli r3, zero, 256
000654  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000658  7e8001e0  vmmov mr0, r3
00065c  9f010004  addli r3, zero, 512
000660  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
000664  7e8001e0  vmmov mr0, r3
000668  9f010008  addli r3, zero, 1024
00066c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000670  7e8001e0  vmmov mr0, r3
000674  9f010010  addli r3, zero, 2048
000678  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
00067c  7e8001e0  vmmov mr0, r3
000680  9f010020  addli r3, zero, 4096
000684  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000688  7e8001e0  vmmov mr0, r3
00068c  9f010040  addli r3, zero, 8192
000690  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
000694  7e8001e0  vmmov mr0, r3
000698  ab410000  lui r3, 4
00069c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0006a0  7e8001e0  vmmov mr0, r3
0006a4  ab810000  lui r3, 8
0006a8  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
0006ac  7e8001e0  vmmov mr0, r3
0006b0  ab010100  lui r3, 16
0006b4  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0006b8  7e8001e0  vmmov mr0, r3
0006bc  ab010200  lui r3, 32
0006c0  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
0006c4  7e8001e0  vmmov mr0, r3
0006c8  ab010400  lui r3, 64
0006cc  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0006d0  7e8001e0  vmmov mr0, r3
0006d4  ab010800  lui r3, 128
0006d8  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
0006dc  7e8001e0  vmmov mr0, r3
0006e0  ab011000  lui r3, 256
0006e4  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0006e8  7e8001e0  vmmov mr0, r3
0006ec  ab012000  lui r3, 512
0006f0  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
0006f4  7e8001e0  vmmov mr0, r3
0006f8  ab014000  lui r3, 1024
0006fc  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000700  7e8001e0  vmmov mr0, r3
000704  ab018000  lui r3, 2048
000708  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
00070c  7e8001e0  vmmov mr0, r3
000710  ab010001  lui r3, 4096
000714  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000718  7e8001e0  vmmov mr0, r3
00071c  ab010002  lui r3, 8192
000720  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
000724  7e8001e0  vmmov mr0, r3
000728  ab010004  lui r3, 16384
00072c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000730  7e8001e0  vmmov mr0, r3
000734  ab010008  lui r3, 32768
000738  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
00073c  7e8001e0  vmmov mr0, r3
000740  ab010010  lui r3, 65536
000744  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000748  7e8001e0  vmmov mr0, r3
00074c  ab010020  lui r3, 131072
000750  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
000754  7e8001e0  vmmov mr0, r3
000758  ab010040  lui r3, 262144
00075c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000760  7e8001e0  vmmov mr0, r3
000764  ab010080  lui r3, 524288
000768  eac01930  vor.hf.mh vr1{mr0}, r19, vr1
00076c  7e8001e0  vmmov mr0, r3
000770  8b912a10  add.s r3, r21, r2
000774  1f018100  addli r2, r2, 64
000778  1f824100  addli r4, r3, 32
00077c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000780  7e0006e0  vmmov mr0, r12
000784  62c01110  vscatter.mh vr1{mr0}, vr0{r3}
000788  62401210  vscatter.mh vr1{mr0}, vr0{r4}
00078c  00a00000  mfence { lm }
000790  bb13e1fe  bneq r2, r14, -796
000794  e3417fd1  loadli.w r3,  -5956(r30)
000798  1bb1a000  slli r2, r1, 10
00079c  2b0200f0  lui r4, 983040
0007a0  0b113110  add.s r2, r2, r3
0007a4  33110128  sext_int2long r[3:4], r2
0007a8  97324103  sll.d r[6:7], r[3:4], r20
0007ac  17114500  or r2, r10, r4
0007b0  eb510f00  load.d r[4:5], 0(r30)
0007b4  73385f86  store.d r[6:7], -1936(r30)
0007b8  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
0007bc  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
0007c0  1f018ff3  addli r2, r30, -1600
0007c4  1f028ff1  addli r4, r30, -1856
0007c8  00a00000  mfence { lm }
0007cc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0007d0  1f010ff4  addli r2, r30, -1536
0007d4  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0007d8  1f010ff1  addli r2, r30, -1920
0007dc  66c10580  vmerge_l.hf vr2, vr11, vr0
0007e0  e6c005a0  vmerge_h.hf vr1, vr11, vr0
0007e4  66c23580  vmerge_l.hf vr4, vr11, vr3
0007e8  e6c235a0  vmerge_h.hf vr5, vr11, vr3
0007ec  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0007f0  1f018ff2  addli r2, r30, -1728
0007f4  12102002  vadd.f.mz.rn vr0{mr1}, zero, vr2
0007f8  12111002  vadd.f.mz.rn vr2{mr1}, zero, vr1
0007fc  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000800  1f010ff3  addli r2, r30, -1664
000804  92114002  vadd.f.mz.rn vr3{mr1}, zero, vr4
000808  00a00000  mfence { lm }
00080c  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000810  1f018ff4  addli r2, r30, -1472
000814  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000818  12115002  vadd.f.mz.rn vr2{mr1}, zero, vr5
00081c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000820  1f018ff1  addli r2, r30, -1856
000824  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000828  1f010ff0  addli r2, r30, -2048
00082c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000830  66c21580  vmerge_l.hf vr4, vr11, vr1
000834  e6c215a0  vmerge_h.hf vr5, vr11, vr1
000838  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00083c  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000840  1f010ff5  addli r2, r30, -1408
000844  92104002  vadd.f.mz.rn vr1{mr1}, zero, vr4
000848  12115002  vadd.f.mz.rn vr2{mr1}, zero, vr5
00084c  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000850  1f018fef  addli r2, r30, -2112
000854  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000858  1f010fef  addli r2, r30, -2176
00085c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000860  66c23580  vmerge_l.hf vr4, vr11, vr3
000864  e6c135a0  vmerge_h.hf vr3, vr11, vr3
000868  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00086c  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000870  1f018fee  addli r2, r30, -2240
000874  92104002  vadd.f.mz.rn vr1{mr1}, zero, vr4
000878  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
00087c  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
000880  1f018ff5  addli r2, r30, -1344
000884  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000888  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
00088c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000890  1f010ff6  addli r2, r30, -1280
000894  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000898  66c52580  vmerge_l.hf vr10, vr11, vr2
00089c  e64522a0  vmerge_h.hf vr11, vr4, vr2
0008a0  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0008a4  1f018ff6  addli r2, r30, -1216
0008a8  9210a002  vadd.f.mz.rn vr1{mr1}, zero, vr10
0008ac  e6442280  vmerge_l.hf vr9, vr4, vr2
0008b0  664422a0  vmerge_h.hf vr8, vr4, vr2
0008b4  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0008b8  1f010ff7  addli r2, r30, -1152
0008bc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0008c0  9210b002  vadd.f.mz.rn vr1{mr1}, zero, vr11
0008c4  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0008c8  92109002  vadd.f.mz.rn vr1{mr1}, zero, vr9
0008cc  66432280  vmerge_l.hf vr6, vr4, vr2
0008d0  e64322a0  vmerge_h.hf vr7, vr4, vr2
0008d4  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0008d8  92108002  vadd.f.mz.rn vr1{mr1}, zero, vr8
0008dc  96111002  vadd.f.mz.rn vr3{mr1}, vr0, vr1
0008e0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0008e4  92106002  vadd.f.mz.rn vr1{mr1}, zero, vr6
0008e8  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
0008ec  92117002  vadd.f.mz.rn vr3{mr1}, zero, vr7
0008f0  e6420280  vmerge_l.hf vr5, vr4, vr0
0008f4  664102a0  vmerge_h.hf vr2, vr4, vr0
0008f8  96913002  vadd.f.mz.rn vr3{mr1}, vr1, vr3
0008fc  92105002  vadd.f.mz.rn vr1{mr1}, zero, vr5
000900  16901102  vadd.f.mz.rn vr0{mr1}, vr3, vr1
000904  92102002  vadd.f.mz.rn vr1{mr1}, zero, vr2
000908  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00090c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000910  7a110040  vextracti.f r2, 0(vr0)
000914  fa111040  vextracti.f r3, 1(vr0)
000918  0b613110  add.f.rn r2, r2, r3
00091c  fa112040  vextracti.f r3, 2(vr0)
000920  0be12110  add.f.rn r2, r3, r2
000924  fa113040  vextracti.f r3, 3(vr0)
000928  0be12110  add.f.rn r2, r3, r2
00092c  fa114040  vextracti.f r3, 4(vr0)
000930  0be12110  add.f.rn r2, r3, r2
000934  fa115040  vextracti.f r3, 5(vr0)
000938  0be12110  add.f.rn r2, r3, r2
00093c  fa116040  vextracti.f r3, 6(vr0)
000940  0be12110  add.f.rn r2, r3, r2
000944  fa117040  vextracti.f r3, 7(vr0)
000948  0be12110  add.f.rn r2, r3, r2
00094c  fa118040  vextracti.f r3, 8(vr0)
000950  0be12110  add.f.rn r2, r3, r2
000954  fa119040  vextracti.f r3, 9(vr0)
000958  0be12110  add.f.rn r2, r3, r2
00095c  fa11a040  vextracti.f r3, 10(vr0)
000960  0be12110  add.f.rn r2, r3, r2
000964  fa11b040  vextracti.f r3, 11(vr0)
000968  0be12110  add.f.rn r2, r3, r2
00096c  fa11c040  vextracti.f r3, 12(vr0)
000970  0be12110  add.f.rn r2, r3, r2
000974  9f010ff3  addli r3, r30, -1664
000978  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
00097c  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
000980  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
000984  fa11d040  vextracti.f r3, 13(vr0)
000988  92304002  vadd.s.mz vr1{mr1}, zero, vr4
00098c  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
000990  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
000994  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
000998  1f020ff0  addli r4, r30, -2048
00099c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0009a0  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0009a4  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
0009a8  0be12110  add.f.rn r2, r3, r2
0009ac  9f018fef  addli r3, r30, -2112
0009b0  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
0009b4  1f028fee  addli r4, r30, -2240
0009b8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0009bc  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0009c0  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
0009c4  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0009c8  9f010fef  addli r3, r30, -2176
0009cc  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0009d0  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0009d4  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
0009d8  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0009dc  fa11e040  vextracti.f r3, 14(vr0)
0009e0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0009e4  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0009e8  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
0009ec  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
0009f0  1f020fee  addli r4, r30, -2304
0009f4  92314002  vadd.s.mz vr3{mr1}, zero, vr4
0009f8  0be12110  add.f.rn r2, r3, r2
0009fc  fa11f040  vextracti.f r3, 15(vr0)
000a00  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000a04  12304002  vadd.s.mz vr0{mr1}, zero, vr4
000a08  a6915202  vmac.f.mz.rn vr3{mr1}, vr5, vr5
000a0c  a610a502  vmac.f.mz.rn vr1{mr1}, vr10, vr10
000a10  26102102  vmac.f.mz.rn vr0{mr1}, vr2, vr2
000a14  12354002  vadd.s.mz vr10{mr1}, zero, vr4
000a18  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
000a1c  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000a20  2695b502  vmac.f.mz.rn vr10{mr1}, vr11, vr11
000a24  92354002  vadd.s.mz vr11{mr1}, zero, vr4
000a28  a6959402  vmac.f.mz.rn vr11{mr1}, vr9, vr9
000a2c  92344002  vadd.s.mz vr9{mr1}, zero, vr4
000a30  a6148402  vmac.f.mz.rn vr9{mr1}, vr8, vr8
000a34  12344002  vadd.s.mz vr8{mr1}, zero, vr4
000a38  26146302  vmac.f.mz.rn vr8{mr1}, vr6, vr6
000a3c  12334002  vadd.s.mz vr6{mr1}, zero, vr4
000a40  0be12110  add.f.rn r2, r3, r2
000a44  9f010ff1  addli r3, r30, -1920
000a48  26937302  vmac.f.mz.rn vr6{mr1}, vr7, vr7
000a4c  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000a50  9f018ff2  addli r3, r30, -1728
000a54  a6102102  vmac.f.mz.rn vr1{mr1}, vr2, vr2
000a58  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000a5c  e3019fd1  loadli.w r3,  -5944(r30)
000a60  26122102  vmac.f.mz.rn vr4{mr1}, vr2, vr2
000a64  73e02100  stores.w r2, 0(r3)
000a68  00a00300  mfence { lm, sm, gm }
000a6c  80a10804  csr_set csr3, r17
000a70  00d00100  sync_group
000a74  3ba40500  bneq r11, zero, 264
000a78  e3422fd2  loadli.w r5,  -5868(r30)
000a7c  6fc10200  loads.w r2, 0(r5)
000a80  efc14200  loads.w r3, 4(r5)
000a84  6fc28200  loads.w r4, 8(r5)
000a88  0b613110  add.f.rn r2, r2, r3
000a8c  efc1c200  loads.w r3, 12(r5)
000a90  0b614110  add.f.rn r2, r2, r4
000a94  6fc20201  loads.w r4, 16(r5)
000a98  0b613110  add.f.rn r2, r2, r3
000a9c  efc14201  loads.w r3, 20(r5)
000aa0  0b614110  add.f.rn r2, r2, r4
000aa4  6fc28201  loads.w r4, 24(r5)
000aa8  0b613110  add.f.rn r2, r2, r3
000aac  efc1c201  loads.w r3, 28(r5)
000ab0  0b614110  add.f.rn r2, r2, r4
000ab4  6fc20202  loads.w r4, 32(r5)
000ab8  0b613110  add.f.rn r2, r2, r3
000abc  efc14202  loads.w r3, 36(r5)
000ac0  0b614110  add.f.rn r2, r2, r4
000ac4  6fc28202  loads.w r4, 40(r5)
000ac8  0b613110  add.f.rn r2, r2, r3
000acc  efc1c202  loads.w r3, 44(r5)
000ad0  0b614110  add.f.rn r2, r2, r4
000ad4  6fc20203  loads.w r4, 48(r5)
000ad8  0b613110  add.f.rn r2, r2, r3
000adc  efc14203  loads.w r3, 52(r5)
000ae0  0b614110  add.f.rn r2, r2, r4
000ae4  6fc28203  loads.w r4, 56(r5)
000ae8  0b613110  add.f.rn r2, r2, r3
000aec  efc1c203  loads.w r3, 60(r5)
000af0  0b614110  add.f.rn r2, r2, r4
000af4  6fc20204  loads.w r4, 64(r5)
000af8  0b613110  add.f.rn r2, r2, r3
000afc  efc14204  loads.w r3, 68(r5)
000b00  0b614110  add.f.rn r2, r2, r4
000b04  6fc28204  loads.w r4, 72(r5)
000b08  0b613110  add.f.rn r2, r2, r3
000b0c  efc1c204  loads.w r3, 76(r5)
000b10  0b614110  add.f.rn r2, r2, r4
000b14  6fc20205  loads.w r4, 80(r5)
000b18  0b613110  add.f.rn r2, r2, r3
000b1c  efc14205  loads.w r3, 84(r5)
000b20  0b614110  add.f.rn r2, r2, r4
000b24  6fc28205  loads.w r4, 88(r5)
000b28  0b613110  add.f.rn r2, r2, r3
000b2c  efc1c205  loads.w r3, 92(r5)
000b30  0b614110  add.f.rn r2, r2, r4
000b34  6fc20206  loads.w r4, 96(r5)
000b38  0b613110  add.f.rn r2, r2, r3
000b3c  efc14206  loads.w r3, 100(r5)
000b40  0b614110  add.f.rn r2, r2, r4
000b44  6fc28206  loads.w r4, 104(r5)
000b48  0b613110  add.f.rn r2, r2, r3
000b4c  efc1c206  loads.w r3, 108(r5)
000b50  0b614110  add.f.rn r2, r2, r4
000b54  6fc20207  loads.w r4, 112(r5)
000b58  0b613110  add.f.rn r2, r2, r3
000b5c  efc14207  loads.w r3, 116(r5)
000b60  0b614110  add.f.rn r2, r2, r4
000b64  6fc28207  loads.w r4, 120(r5)
000b68  0b613110  add.f.rn r2, r2, r3
000b6c  efc1c207  loads.w r3, 124(r5)
000b70  0b614110  add.f.rn r2, r2, r4
000b74  0b613110  add.f.rn r2, r2, r3
000b78  73e02200  stores.w r2, 0(r5)
000b7c  1f010ff3  addli r2, r30, -1664
000b80  00a00300  mfence { lm, sm, gm }
000b84  80a10804  csr_set csr3, r17
000b88  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000b8c  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000b90  1f018ff1  addli r2, r30, -1856
000b94  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000b98  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000b9c  1f010ff0  addli r2, r30, -2048
000ba0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000ba4  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000ba8  1f018fef  addli r2, r30, -2112
000bac  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bb0  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000bb4  1f010fef  addli r2, r30, -2176
000bb8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bbc  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000bc0  1f018fee  addli r2, r30, -2240
000bc4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bc8  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000bcc  1f010fee  addli r2, r30, -2304
000bd0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bd4  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000bd8  00d00100  sync_group
000bdc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000be0  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
000be4  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000be8  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
000bec  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
000bf0  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
000bf4  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000bf8  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000bfc  7a110040  vextracti.f r2, 0(vr0)
000c00  fa111040  vextracti.f r3, 1(vr0)
000c04  7a12f040  vextracti.f r4, 15(vr0)
000c08  0b613110  add.f.rn r2, r2, r3
000c0c  fa112040  vextracti.f r3, 2(vr0)
000c10  0be12110  add.f.rn r2, r3, r2
000c14  fa113040  vextracti.f r3, 3(vr0)
000c18  0be12110  add.f.rn r2, r3, r2
000c1c  fa114040  vextracti.f r3, 4(vr0)
000c20  0be12110  add.f.rn r2, r3, r2
000c24  fa115040  vextracti.f r3, 5(vr0)
000c28  0be12110  add.f.rn r2, r3, r2
000c2c  fa116040  vextracti.f r3, 6(vr0)
000c30  0be12110  add.f.rn r2, r3, r2
000c34  fa117040  vextracti.f r3, 7(vr0)
000c38  0be12110  add.f.rn r2, r3, r2
000c3c  fa118040  vextracti.f r3, 8(vr0)
000c40  0be12110  add.f.rn r2, r3, r2
000c44  fa119040  vextracti.f r3, 9(vr0)
000c48  0be12110  add.f.rn r2, r3, r2
000c4c  fa11a040  vextracti.f r3, 10(vr0)
000c50  0be12110  add.f.rn r2, r3, r2
000c54  fa11b040  vextracti.f r3, 11(vr0)
000c58  0be12110  add.f.rn r2, r3, r2
000c5c  fa11c040  vextracti.f r3, 12(vr0)
000c60  0be12110  add.f.rn r2, r3, r2
000c64  fa11d040  vextracti.f r3, 13(vr0)
000c68  0be12110  add.f.rn r2, r3, r2
000c6c  fa11e040  vextracti.f r3, 14(vr0)
000c70  8be12110  add.f.rn r3, r3, r2
000c74  63412fd2  loadli.w r2,  -5868(r30)
000c78  6f410100  loads.w r2, 0(r2)
000c7c  8b613210  add.f.rn r3, r4, r3
000c80  63428fd1  loadli.w r4,  -5948(r30)
000c84  73603200  stores.w r3, 0(r4)
000c88  00a00300  mfence { lm, sm, gm }
000c8c  80a10804  csr_set csr3, r17
000c90  00d00100  sync_group
000c94  3ba40500  bneq r11, zero, 264
000c98  63032fd2  loadli.w r6,  -5872(r30)
000c9c  ef410300  loads.w r3, 0(r6)
000ca0  6f424300  loads.w r4, 4(r6)
000ca4  ef428300  loads.w r5, 8(r6)
000ca8  8be14110  add.f.rn r3, r3, r4
000cac  6f42c300  loads.w r4, 12(r6)
000cb0  8be15110  add.f.rn r3, r3, r5
000cb4  ef420301  loads.w r5, 16(r6)
000cb8  8be14110  add.f.rn r3, r3, r4
000cbc  6f424301  loads.w r4, 20(r6)
000cc0  8be15110  add.f.rn r3, r3, r5
000cc4  ef428301  loads.w r5, 24(r6)
000cc8  8be14110  add.f.rn r3, r3, r4
000ccc  6f42c301  loads.w r4, 28(r6)
000cd0  8be15110  add.f.rn r3, r3, r5
000cd4  ef420302  loads.w r5, 32(r6)
000cd8  8be14110  add.f.rn r3, r3, r4
000cdc  6f424302  loads.w r4, 36(r6)
000ce0  8be15110  add.f.rn r3, r3, r5
000ce4  ef428302  loads.w r5, 40(r6)
000ce8  8be14110  add.f.rn r3, r3, r4
000cec  6f42c302  loads.w r4, 44(r6)
000cf0  8be15110  add.f.rn r3, r3, r5
000cf4  ef420303  loads.w r5, 48(r6)
000cf8  8be14110  add.f.rn r3, r3, r4
000cfc  6f424303  loads.w r4, 52(r6)
000d00  8be15110  add.f.rn r3, r3, r5
000d04  ef428303  loads.w r5, 56(r6)
000d08  8be14110  add.f.rn r3, r3, r4
000d0c  6f42c303  loads.w r4, 60(r6)
000d10  8be15110  add.f.rn r3, r3, r5
000d14  ef420304  loads.w r5, 64(r6)
000d18  8be14110  add.f.rn r3, r3, r4
000d1c  6f424304  loads.w r4, 68(r6)
000d20  8be15110  add.f.rn r3, r3, r5
000d24  ef428304  loads.w r5, 72(r6)
000d28  8be14110  add.f.rn r3, r3, r4
000d2c  6f42c304  loads.w r4, 76(r6)
000d30  8be15110  add.f.rn r3, r3, r5
000d34  ef420305  loads.w r5, 80(r6)
000d38  8be14110  add.f.rn r3, r3, r4
000d3c  6f424305  loads.w r4, 84(r6)
000d40  8be15110  add.f.rn r3, r3, r5
000d44  ef428305  loads.w r5, 88(r6)
000d48  8be14110  add.f.rn r3, r3, r4
000d4c  6f42c305  loads.w r4, 92(r6)
000d50  8be15110  add.f.rn r3, r3, r5
000d54  ef420306  loads.w r5, 96(r6)
000d58  8be14110  add.f.rn r3, r3, r4
000d5c  6f424306  loads.w r4, 100(r6)
000d60  8be15110  add.f.rn r3, r3, r5
000d64  ef428306  loads.w r5, 104(r6)
000d68  8be14110  add.f.rn r3, r3, r4
000d6c  6f42c306  loads.w r4, 108(r6)
000d70  8be15110  add.f.rn r3, r3, r5
000d74  ef420307  loads.w r5, 112(r6)
000d78  8be14110  add.f.rn r3, r3, r4
000d7c  6f424307  loads.w r4, 116(r6)
000d80  8be15110  add.f.rn r3, r3, r5
000d84  ef428307  loads.w r5, 120(r6)
000d88  8be14110  add.f.rn r3, r3, r4
000d8c  6f42c307  loads.w r4, 124(r6)
000d90  8be15110  add.f.rn r3, r3, r5
000d94  8be14110  add.f.rn r3, r3, r4
000d98  73603300  stores.w r3, 0(r6)
000d9c  00a00300  mfence { lm, sm, gm }
000da0  80a10804  csr_set csr3, r17
000da4  00d00100  sync_group
000da8  e3012fd2  loadli.w r3,  -5872(r30)
000dac  2b02803a  lui r4, 239616
000db0  0b674120  mul.f.rn r14, r2, r4
000db4  efc10100  loads.w r3, 0(r3)
000db8  0be14120  mul.f.rn r2, r3, r4
000dbc  8b61e720  mul.f.rn r3, r14, r14
000dc0  0b613118  sub.f.rn r2, r2, r3
000dc4  e3014f00  loadli.w r3,  32(r30)
000dc8  0be12110  add.f.rn r2, r3, r2
000dcc  ab01803f  lui r3, 260096
000dd0  0f010108  sqrt.f.rn r2, r2
000dd4  8f842118  div.f.rn r9, r3, r2
000dd8  9f010ff2  addli r3, r30, -1792
000ddc  63016fd1  loadli.w r2,  -5968(r30)
000de0  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000de4  9f110000  addli r3, zero, 1
000de8  7e8101e0  vmmov mr2, r3
000dec  37030100  beq r2, zero, 192
000df0  63013fd1  loadli.w r2,  -5992(r30)
000df4  ab01807f  lui r3, 522240
000df8  17012700  and r2, r14, r2
000dfc  13812104  setlt.u r2, r3, r2
000e00  3b600100  bneq r2, zero, 24
000e04  1b410701  srli r2, r14, 16
000e08  1b011100  andi r2, r2, 1
000e0c  0b112710  add.s r2, r14, r2
000e10  0b113111  add.s r2, r2, r19
000e14  db010000  j 12
000e18  2b014000  lui r2, 1024
000e1c  17112700  or r2, r14, r2
000e20  1f130000  addli r6, zero, 1
000e24  b3910028  sext_int2long r[4:5], r1
000e28  9b420101  srli r5, r2, 16
000e2c  2b04807f  lui r8, 522240
000e30  97b06102  sll.d r[2:3], r[4:5], r6
000e34  e3013fd1  loadli.w r3,  -5992(r30)
000e38  6b538f02  load.d r[7:8], 40(r30)
000e3c  2b0200f0  lui r4, 983040
000e40  73105fbc  store.h r5, -1088(r30)
000e44  9f028ff7  addli r5, r30, -1088
000e48  00a00000  mfence { lm }
000e4c  17124800  or r4, r16, r4
000e50  97813400  and r3, r9, r3
000e54  0b231310  add.ul r[7:8], r[7:8], r[2:3]
000e58  93013404  setlt.u r3, r8, r3
000e5c  7f325300  s_lm2gm r4, r5, 0(r[7:8])
000e60  00a00000  mfence { lm }
000e64  3be00100  bneq r3, zero, 24
000e68  9bc10401  srli r3, r9, 16
000e6c  9b811100  andi r3, r3, 1
000e70  8b913410  add.s r3, r9, r3
000e74  8b913111  add.s r3, r3, r19
000e78  db010000  j 12
000e7c  ab014000  lui r3, 1024
000e80  97913400  or r3, r9, r3
000e84  6b520f03  load.d r[5:6], 48(r30)
000e88  9bc10101  srli r3, r3, 16
000e8c  73103fbc  store.h r3, -1088(r30)
000e90  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000e94  2b0200f0  lui r4, 983040
000e98  00a00000  mfence { lm }
000e9c  97114800  or r3, r16, r4
000ea0  1f028ff7  addli r4, r30, -1088
000ea4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000ea8  00a00000  mfence { lm }
000eac  9f025fd1  addli r5, r30, -5976
000eb0  ab0000f0  lui r1, 983040
000eb4  2b0100f0  lui r2, 983040
000eb8  92332002  vadd.s.mz vr7{mr1}, zero, vr2
000ebc  12332002  vadd.s.mz vr6{mr1}, zero, vr2
000ec0  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000ec4  ebd10200  load.d r[4:5], 0(r5)
000ec8  97101500  or r1, r10, r1
000ecc  9f020ff8  addli r5, r30, -1024
000ed0  17112500  or r2, r10, r2
000ed4  ffa05100  l_gm2lm r1, r5, 0(r[4:5])
000ed8  9f004fd1  addli r1, r30, -5984
000edc  00a00000  mfence { lm }
000ee0  ebd10000  load.d r[4:5], 0(r1)
000ee4  9f000ffc  addli r1, r30, -512
000ee8  7fa11100  l_gm2lm r2, r1, 0(r[4:5])
000eec  9f008ff3  addli r1, r30, -1600
000ef0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000ef4  9f000ff4  addli r1, r30, -1536
000ef8  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000efc  9f008fe9  addli r1, r30, -2880
000f00  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f04  9f008ff4  addli r1, r30, -1472
000f08  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f0c  9f008fec  addli r1, r30, -2496
000f10  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f14  9f000ff5  addli r1, r30, -1408
000f18  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f1c  9f008ff1  addli r1, r30, -1856
000f20  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f24  9f008ff5  addli r1, r30, -1344
000f28  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f2c  9f008fee  addli r1, r30, -2240
000f30  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f34  9f000ff6  addli r1, r30, -1280
000f38  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f3c  9f000fef  addli r1, r30, -2176
000f40  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f44  9f008ff6  addli r1, r30, -1216
000f48  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f4c  9f008fef  addli r1, r30, -2112
000f50  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f54  9f000ff7  addli r1, r30, -1152
000f58  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f5c  9f000ff0  addli r1, r30, -2048
000f60  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f64  eb300fc0  load.hu r1, -1024(r30)
000f68  92302002  vadd.s.mz vr1{mr1}, zero, vr2
000f6c  00a00000  mfence { lm }
000f70  67001fee  storeli.w r1, -2304(r30)
000f74  eb302fc0  load.hu r1, -1022(r30)
000f78  67481fd8  storeli.w r1, -4988(r30)
000f7c  eb304fc0  load.hu r1, -1020(r30)
000f80  e7081fd8  storeli.w r1, -4984(r30)
000f84  eb306fc0  load.hu r1, -1018(r30)
000f88  e7481fd8  storeli.w r1, -4980(r30)
000f8c  eb308fc0  load.hu r1, -1016(r30)
000f90  67091fd8  storeli.w r1, -4976(r30)
000f94  eb30afc0  load.hu r1, -1014(r30)
000f98  67491fd8  storeli.w r1, -4972(r30)
000f9c  eb30cfc0  load.hu r1, -1012(r30)
000fa0  e7091fd8  storeli.w r1, -4968(r30)
000fa4  eb30efc0  load.hu r1, -1010(r30)
000fa8  e7491fd8  storeli.w r1, -4964(r30)
000fac  eb300fc1  load.hu r1, -1008(r30)
000fb0  670a1fd8  storeli.w r1, -4960(r30)
000fb4  eb302fc1  load.hu r1, -1006(r30)
000fb8  674a1fd8  storeli.w r1, -4956(r30)
000fbc  eb304fc1  load.hu r1, -1004(r30)
000fc0  e70a1fd8  storeli.w r1, -4952(r30)
000fc4  eb306fc1  load.hu r1, -1002(r30)
000fc8  e74a1fd8  storeli.w r1, -4948(r30)
000fcc  eb308fc1  load.hu r1, -1000(r30)
000fd0  670b1fd8  storeli.w r1, -4944(r30)
000fd4  eb30afc1  load.hu r1, -998(r30)
000fd8  674b1fd8  storeli.w r1, -4940(r30)
000fdc  eb30cfc1  load.hu r1, -996(r30)
000fe0  e74b1fd8  storeli.w r1, -4932(r30)
000fe4  eb30efc1  load.hu r1, -994(r30)
000fe8  670c1fd8  storeli.w r1, -4928(r30)
000fec  eb300fc2  load.hu r1, -992(r30)
000ff0  e70b1fd8  storeli.w r1, -4936(r30)
000ff4  eb302fc2  load.hu r1, -990(r30)
000ff8  674c1fd8  storeli.w r1, -4924(r30)
000ffc  eb304fc2  load.hu r1, -988(r30)
001000  e70c1fd8  storeli.w r1, -4920(r30)
001004  eb306fc2  load.hu r1, -986(r30)
001008  e74c1fd8  storeli.w r1, -4916(r30)
00100c  eb308fc2  load.hu r1, -984(r30)
001010  670d1fd8  storeli.w r1, -4912(r30)
001014  eb30afc2  load.hu r1, -982(r30)
001018  674d1fd8  storeli.w r1, -4908(r30)
00101c  eb30cfc2  load.hu r1, -980(r30)
001020  e70d1fd8  storeli.w r1, -4904(r30)
001024  eb30efc2  load.hu r1, -978(r30)
001028  e74d1fd8  storeli.w r1, -4900(r30)
00102c  eb300fc3  load.hu r1, -976(r30)
001030  670e1fd8  storeli.w r1, -4896(r30)
001034  eb302fc3  load.hu r1, -974(r30)
001038  674e1fd8  storeli.w r1, -4892(r30)
00103c  eb304fc3  load.hu r1, -972(r30)
001040  e70e1fd8  storeli.w r1, -4888(r30)
001044  eb306fc3  load.hu r1, -970(r30)
001048  e74e1fd8  storeli.w r1, -4884(r30)
00104c  eb308fc3  load.hu r1, -968(r30)
001050  670f1fd8  storeli.w r1, -4880(r30)
001054  eb30afc3  load.hu r1, -966(r30)
001058  674f1fd8  storeli.w r1, -4876(r30)
00105c  eb30cfc3  load.hu r1, -964(r30)
001060  e74f1fd8  storeli.w r1, -4868(r30)
001064  eb30efc3  load.hu r1, -962(r30)
001068  67001fda  storeli.w r1, -4864(r30)
00106c  eb300fc4  load.hu r1, -960(r30)
001070  e70f1fd8  storeli.w r1, -4872(r30)
001074  eb302fc4  load.hu r1, -958(r30)
001078  67401fda  storeli.w r1, -4860(r30)
00107c  eb304fc4  load.hu r1, -956(r30)
001080  e7001fda  storeli.w r1, -4856(r30)
001084  eb306fc4  load.hu r1, -954(r30)
001088  e7401fda  storeli.w r1, -4852(r30)
00108c  eb308fc4  load.hu r1, -952(r30)
001090  67011fda  storeli.w r1, -4848(r30)
001094  eb30afc4  load.hu r1, -950(r30)
001098  67411fda  storeli.w r1, -4844(r30)
00109c  eb30cfc4  load.hu r1, -948(r30)
0010a0  e7011fda  storeli.w r1, -4840(r30)
0010a4  eb30efc4  load.hu r1, -946(r30)
0010a8  e7411fda  storeli.w r1, -4836(r30)
0010ac  eb300fc5  load.hu r1, -944(r30)
0010b0  67021fda  storeli.w r1, -4832(r30)
0010b4  eb302fc5  load.hu r1, -942(r30)
0010b8  67421fda  storeli.w r1, -4828(r30)
0010bc  eb304fc5  load.hu r1, -940(r30)
0010c0  e7021fda  storeli.w r1, -4824(r30)
0010c4  eb306fc5  load.hu r1, -938(r30)
0010c8  e7421fda  storeli.w r1, -4820(r30)
0010cc  eb308fc5  load.hu r1, -936(r30)
0010d0  67031fda  storeli.w r1, -4816(r30)
0010d4  eb30afc5  load.hu r1, -934(r30)
0010d8  67431fda  storeli.w r1, -4812(r30)
0010dc  eb30cfc5  load.hu r1, -932(r30)
0010e0  e7431fda  storeli.w r1, -4804(r30)
0010e4  eb30efc5  load.hu r1, -930(r30)
0010e8  67041fda  storeli.w r1, -4800(r30)
0010ec  eb300fc6  load.hu r1, -928(r30)
0010f0  e7031fda  storeli.w r1, -4808(r30)
0010f4  eb302fc6  load.hu r1, -926(r30)
0010f8  67441fda  storeli.w r1, -4796(r30)
0010fc  eb304fc6  load.hu r1, -924(r30)
001100  e7041fda  storeli.w r1, -4792(r30)
001104  eb306fc6  load.hu r1, -922(r30)
001108  e7441fda  storeli.w r1, -4788(r30)
00110c  eb308fc6  load.hu r1, -920(r30)
001110  67051fda  storeli.w r1, -4784(r30)
001114  eb30afc6  load.hu r1, -918(r30)
001118  67451fda  storeli.w r1, -4780(r30)
00111c  eb30cfc6  load.hu r1, -916(r30)
001120  e7051fda  storeli.w r1, -4776(r30)
001124  eb30efc6  load.hu r1, -914(r30)
001128  e7451fda  storeli.w r1, -4772(r30)
00112c  eb300fc7  load.hu r1, -912(r30)
001130  67061fda  storeli.w r1, -4768(r30)
001134  eb302fc7  load.hu r1, -910(r30)
001138  67461fda  storeli.w r1, -4764(r30)
00113c  eb304fc7  load.hu r1, -908(r30)
001140  e7061fda  storeli.w r1, -4760(r30)
001144  eb306fc7  load.hu r1, -906(r30)
001148  e7461fda  storeli.w r1, -4756(r30)
00114c  eb308fc7  load.hu r1, -904(r30)
001150  67071fda  storeli.w r1, -4752(r30)
001154  eb30afc7  load.hu r1, -902(r30)
001158  67471fda  storeli.w r1, -4748(r30)
00115c  eb30cfc7  load.hu r1, -900(r30)
001160  e7471fda  storeli.w r1, -4740(r30)
001164  eb30efc7  load.hu r1, -898(r30)
001168  67081fda  storeli.w r1, -4736(r30)
00116c  eb300fc8  load.hu r1, -896(r30)
001170  e7071fda  storeli.w r1, -4744(r30)
001174  eb302fc8  load.hu r1, -894(r30)
001178  67481fda  storeli.w r1, -4732(r30)
00117c  eb304fc8  load.hu r1, -892(r30)
001180  e7081fda  storeli.w r1, -4728(r30)
001184  eb306fc8  load.hu r1, -890(r30)
001188  e7481fda  storeli.w r1, -4724(r30)
00118c  eb308fc8  load.hu r1, -888(r30)
001190  67091fda  storeli.w r1, -4720(r30)
001194  eb30afc8  load.hu r1, -886(r30)
001198  67491fda  storeli.w r1, -4716(r30)
00119c  eb30cfc8  load.hu r1, -884(r30)
0011a0  e7091fda  storeli.w r1, -4712(r30)
0011a4  eb30efc8  load.hu r1, -882(r30)
0011a8  e7491fda  storeli.w r1, -4708(r30)
0011ac  eb300fc9  load.hu r1, -880(r30)
0011b0  670a1fda  storeli.w r1, -4704(r30)
0011b4  eb302fc9  load.hu r1, -878(r30)
0011b8  674a1fda  storeli.w r1, -4700(r30)
0011bc  eb304fc9  load.hu r1, -876(r30)
0011c0  e70a1fda  storeli.w r1, -4696(r30)
0011c4  eb306fc9  load.hu r1, -874(r30)
0011c8  e74a1fda  storeli.w r1, -4692(r30)
0011cc  eb308fc9  load.hu r1, -872(r30)
0011d0  670b1fda  storeli.w r1, -4688(r30)
0011d4  eb30afc9  load.hu r1, -870(r30)
0011d8  674b1fda  storeli.w r1, -4684(r30)
0011dc  eb30cfc9  load.hu r1, -868(r30)
0011e0  e74b1fda  storeli.w r1, -4676(r30)
0011e4  eb30efc9  load.hu r1, -866(r30)
0011e8  670c1fda  storeli.w r1, -4672(r30)
0011ec  eb300fca  load.hu r1, -864(r30)
0011f0  e70b1fda  storeli.w r1, -4680(r30)
0011f4  eb302fca  load.hu r1, -862(r30)
0011f8  674c1fda  storeli.w r1, -4668(r30)
0011fc  eb304fca  load.hu r1, -860(r30)
001200  e70c1fda  storeli.w r1, -4664(r30)
001204  eb306fca  load.hu r1, -858(r30)
001208  e74c1fda  storeli.w r1, -4660(r30)
00120c  eb308fca  load.hu r1, -856(r30)
001210  670d1fda  storeli.w r1, -4656(r30)
001214  eb30afca  load.hu r1, -854(r30)
001218  674d1fda  storeli.w r1, -4652(r30)
00121c  eb30cfca  load.hu r1, -852(r30)
001220  e70d1fda  storeli.w r1, -4648(r30)
001224  eb30efca  load.hu r1, -850(r30)
001228  e74d1fda  storeli.w r1, -4644(r30)
00122c  eb300fcb  load.hu r1, -848(r30)
001230  670e1fda  storeli.w r1, -4640(r30)
001234  eb302fcb  load.hu r1, -846(r30)
001238  674e1fda  storeli.w r1, -4636(r30)
00123c  eb304fcb  load.hu r1, -844(r30)
001240  e70e1fda  storeli.w r1, -4632(r30)
001244  eb306fcb  load.hu r1, -842(r30)
001248  e74e1fda  storeli.w r1, -4628(r30)
00124c  eb308fcb  load.hu r1, -840(r30)
001250  670f1fda  storeli.w r1, -4624(r30)
001254  eb30afcb  load.hu r1, -838(r30)
001258  674f1fda  storeli.w r1, -4620(r30)
00125c  eb30cfcb  load.hu r1, -836(r30)
001260  e74f1fda  storeli.w r1, -4612(r30)
001264  eb30efcb  load.hu r1, -834(r30)
001268  67001fdc  storeli.w r1, -4608(r30)
00126c  eb300fcc  load.hu r1, -832(r30)
001270  e70f1fda  storeli.w r1, -4616(r30)
001274  eb302fcc  load.hu r1, -830(r30)
001278  67441fdc  storeli.w r1, -4540(r30)
00127c  eb304fcc  load.hu r1, -828(r30)
001280  e7041fdc  storeli.w r1, -4536(r30)
001284  eb306fcc  load.hu r1, -826(r30)
001288  e7441fdc  storeli.w r1, -4532(r30)
00128c  eb308fcc  load.hu r1, -824(r30)
001290  67051fdc  storeli.w r1, -4528(r30)
001294  eb30afcc  load.hu r1, -822(r30)
001298  67451fdc  storeli.w r1, -4524(r30)
00129c  eb30cfcc  load.hu r1, -820(r30)
0012a0  e7051fdc  storeli.w r1, -4520(r30)
0012a4  eb30efcc  load.hu r1, -818(r30)
0012a8  e7451fdc  storeli.w r1, -4516(r30)
0012ac  eb300fcd  load.hu r1, -816(r30)
0012b0  67061fdc  storeli.w r1, -4512(r30)
0012b4  eb302fcd  load.hu r1, -814(r30)
0012b8  67461fdc  storeli.w r1, -4508(r30)
0012bc  eb304fcd  load.hu r1, -812(r30)
0012c0  e7061fdc  storeli.w r1, -4504(r30)
0012c4  eb306fcd  load.hu r1, -810(r30)
0012c8  e7461fdc  storeli.w r1, -4500(r30)
0012cc  eb308fcd  load.hu r1, -808(r30)
0012d0  67071fdc  storeli.w r1, -4496(r30)
0012d4  eb30afcd  load.hu r1, -806(r30)
0012d8  67471fdc  storeli.w r1, -4492(r30)
0012dc  eb30cfcd  load.hu r1, -804(r30)
0012e0  e7471fdc  storeli.w r1, -4484(r30)
0012e4  eb30efcd  load.hu r1, -802(r30)
0012e8  67081fdc  storeli.w r1, -4480(r30)
0012ec  eb300fce  load.hu r1, -800(r30)
0012f0  e7071fdc  storeli.w r1, -4488(r30)
0012f4  eb302fce  load.hu r1, -798(r30)
0012f8  670f1fdc  storeli.w r1, -4368(r30)
0012fc  eb304fce  load.hu r1, -796(r30)
001300  674f1fdc  storeli.w r1, -4364(r30)
001304  eb306fce  load.hu r1, -794(r30)
001308  e70f1fdc  storeli.w r1, -4360(r30)
00130c  eb308fce  load.hu r1, -792(r30)
001310  e74f1fdc  storeli.w r1, -4356(r30)
001314  eb30afce  load.hu r1, -790(r30)
001318  67001fde  storeli.w r1, -4352(r30)
00131c  eb30cfce  load.hu r1, -788(r30)
001320  67401fde  storeli.w r1, -4348(r30)
001324  eb30efce  load.hu r1, -786(r30)
001328  e7001fde  storeli.w r1, -4344(r30)
00132c  eb300fcf  load.hu r1, -784(r30)
001330  e7401fde  storeli.w r1, -4340(r30)
001334  eb302fcf  load.hu r1, -782(r30)
001338  67011fde  storeli.w r1, -4336(r30)
00133c  eb304fcf  load.hu r1, -780(r30)
001340  67411fde  storeli.w r1, -4332(r30)
001344  eb306fcf  load.hu r1, -778(r30)
001348  e7011fde  storeli.w r1, -4328(r30)
00134c  eb308fcf  load.hu r1, -776(r30)
001350  e7411fde  storeli.w r1, -4324(r30)
001354  eb30afcf  load.hu r1, -774(r30)
001358  67021fde  storeli.w r1, -4320(r30)
00135c  eb30cfcf  load.hu r1, -772(r30)
001360  e7021fde  storeli.w r1, -4312(r30)
001364  eb30efcf  load.hu r1, -770(r30)
001368  67081fe0  storeli.w r1, -3968(r30)
00136c  eb300fd0  load.hu r1, -768(r30)
001370  67421fde  storeli.w r1, -4316(r30)
001374  eb302fd0  load.hu r1, -766(r30)
001378  e7421fde  storeli.w r1, -4308(r30)
00137c  eb304fd0  load.hu r1, -764(r30)
001380  67031fde  storeli.w r1, -4304(r30)
001384  eb306fd0  load.hu r1, -762(r30)
001388  67431fde  storeli.w r1, -4300(r30)
00138c  eb308fd0  load.hu r1, -760(r30)
001390  e7031fde  storeli.w r1, -4296(r30)
001394  eb30afd0  load.hu r1, -758(r30)
001398  e7431fde  storeli.w r1, -4292(r30)
00139c  eb30cfd0  load.hu r1, -756(r30)
0013a0  67041fde  storeli.w r1, -4288(r30)
0013a4  eb30efd0  load.hu r1, -754(r30)
0013a8  67441fde  storeli.w r1, -4284(r30)
0013ac  eb300fd1  load.hu r1, -752(r30)
0013b0  e7041fde  storeli.w r1, -4280(r30)
0013b4  eb302fd1  load.hu r1, -750(r30)
0013b8  e7441fde  storeli.w r1, -4276(r30)
0013bc  eb304fd1  load.hu r1, -748(r30)
0013c0  67051fde  storeli.w r1, -4272(r30)
0013c4  eb306fd1  load.hu r1, -746(r30)
0013c8  67451fde  storeli.w r1, -4268(r30)
0013cc  eb308fd1  load.hu r1, -744(r30)
0013d0  e7051fde  storeli.w r1, -4264(r30)
0013d4  eb30afd1  load.hu r1, -742(r30)
0013d8  e7451fde  storeli.w r1, -4260(r30)
0013dc  eb30cfd1  load.hu r1, -740(r30)
0013e0  67461fde  storeli.w r1, -4252(r30)
0013e4  eb30efd1  load.hu r1, -738(r30)
0013e8  67001fe4  storeli.w r1, -3584(r30)
0013ec  eb300fd2  load.hu r1, -736(r30)
0013f0  67061fde  storeli.w r1, -4256(r30)
0013f4  eb302fd2  load.hu r1, -734(r30)
0013f8  e7061fde  storeli.w r1, -4248(r30)
0013fc  eb304fd2  load.hu r1, -732(r30)
001400  e7461fde  storeli.w r1, -4244(r30)
001404  eb306fd2  load.hu r1, -730(r30)
001408  67071fde  storeli.w r1, -4240(r30)
00140c  eb308fd2  load.hu r1, -728(r30)
001410  67471fde  storeli.w r1, -4236(r30)
001414  eb30afd2  load.hu r1, -726(r30)
001418  e7071fde  storeli.w r1, -4232(r30)
00141c  eb30cfd2  load.hu r1, -724(r30)
001420  e7471fde  storeli.w r1, -4228(r30)
001424  eb30efd2  load.hu r1, -722(r30)
001428  67081fde  storeli.w r1, -4224(r30)
00142c  eb300fd3  load.hu r1, -720(r30)
001430  67481fde  storeli.w r1, -4220(r30)
001434  eb302fd3  load.hu r1, -718(r30)
001438  e7081fde  storeli.w r1, -4216(r30)
00143c  eb304fd3  load.hu r1, -716(r30)
001440  e7481fde  storeli.w r1, -4212(r30)
001444  eb306fd3  load.hu r1, -714(r30)
001448  67091fde  storeli.w r1, -4208(r30)
00144c  eb308fd3  load.hu r1, -712(r30)
001450  67491fde  storeli.w r1, -4204(r30)
001454  eb30afd3  load.hu r1, -710(r30)
001458  e7091fde  storeli.w r1, -4200(r30)
00145c  eb30cfd3  load.hu r1, -708(r30)
001460  670a1fde  storeli.w r1, -4192(r30)
001464  eb30efd3  load.hu r1, -706(r30)
001468  67081fe4  storeli.w r1, -3456(r30)
00146c  eb300fd4  load.hu r1, -704(r30)
001470  e7491fde  storeli.w r1, -4196(r30)
001474  eb302fd4  load.hu r1, -702(r30)
001478  674a1fde  storeli.w r1, -4188(r30)
00147c  eb304fd4  load.hu r1, -700(r30)
001480  e70a1fde  storeli.w r1, -4184(r30)
001484  eb306fd4  load.hu r1, -698(r30)
001488  e74a1fde  storeli.w r1, -4180(r30)
00148c  eb308fd4  load.hu r1, -696(r30)
001490  670b1fde  storeli.w r1, -4176(r30)
001494  eb30afd4  load.hu r1, -694(r30)
001498  674b1fde  storeli.w r1, -4172(r30)
00149c  eb30cfd4  load.hu r1, -692(r30)
0014a0  e70b1fde  storeli.w r1, -4168(r30)
0014a4  eb30efd4  load.hu r1, -690(r30)
0014a8  e74b1fde  storeli.w r1, -4164(r30)
0014ac  eb300fd5  load.hu r1, -688(r30)
0014b0  670c1fde  storeli.w r1, -4160(r30)
0014b4  eb302fd5  load.hu r1, -686(r30)
0014b8  674c1fde  storeli.w r1, -4156(r30)
0014bc  eb304fd5  load.hu r1, -684(r30)
0014c0  e70c1fde  storeli.w r1, -4152(r30)
0014c4  eb306fd5  load.hu r1, -682(r30)
0014c8  e74c1fde  storeli.w r1, -4148(r30)
0014cc  eb308fd5  load.hu r1, -680(r30)
0014d0  670d1fde  storeli.w r1, -4144(r30)
0014d4  eb30afd5  load.hu r1, -678(r30)
0014d8  674d1fde  storeli.w r1, -4140(r30)
0014dc  eb30cfd5  load.hu r1, -676(r30)
0014e0  e74d1fde  storeli.w r1, -4132(r30)
0014e4  eb30efd5  load.hu r1, -674(r30)
0014e8  67001fe6  storeli.w r1, -3328(r30)
0014ec  eb300fd6  load.hu r1, -672(r30)
0014f0  e70d1fde  storeli.w r1, -4136(r30)
0014f4  eb302fd6  load.hu r1, -670(r30)
0014f8  670e1fde  storeli.w r1, -4128(r30)
0014fc  eb304fd6  load.hu r1, -668(r30)
001500  674e1fde  storeli.w r1, -4124(r30)
001504  eb306fd6  load.hu r1, -666(r30)
001508  e70e1fde  storeli.w r1, -4120(r30)
00150c  eb308fd6  load.hu r1, -664(r30)
001510  e74e1fde  storeli.w r1, -4116(r30)
001514  eb30afd6  load.hu r1, -662(r30)
001518  670f1fde  storeli.w r1, -4112(r30)
00151c  eb30cfd6  load.hu r1, -660(r30)
001520  674f1fde  storeli.w r1, -4108(r30)
001524  eb30efd6  load.hu r1, -658(r30)
001528  e70f1fde  storeli.w r1, -4104(r30)
00152c  eb300fd7  load.hu r1, -656(r30)
001530  e74f1fde  storeli.w r1, -4100(r30)
001534  eb302fd7  load.hu r1, -654(r30)
001538  e7041fe0  storeli.w r1, -4024(r30)
00153c  eb304fd7  load.hu r1, -652(r30)
001540  e7441fe0  storeli.w r1, -4020(r30)
001544  eb306fd7  load.hu r1, -650(r30)
001548  67051fe0  storeli.w r1, -4016(r30)
00154c  eb308fd7  load.hu r1, -648(r30)
001550  67451fe0  storeli.w r1, -4012(r30)
001554  eb30afd7  load.hu r1, -646(r30)
001558  e7051fe0  storeli.w r1, -4008(r30)
00155c  eb30cfd7  load.hu r1, -644(r30)
001560  67061fe0  storeli.w r1, -4000(r30)
001564  eb30efd7  load.hu r1, -642(r30)
001568  67081fe6  storeli.w r1, -3200(r30)
00156c  eb300fd8  load.hu r1, -640(r30)
001570  e7451fe0  storeli.w r1, -4004(r30)
001574  eb302fd8  load.hu r1, -638(r30)
001578  67461fe0  storeli.w r1, -3996(r30)
00157c  eb304fd8  load.hu r1, -636(r30)
001580  e7061fe0  storeli.w r1, -3992(r30)
001584  eb306fd8  load.hu r1, -634(r30)
001588  e7461fe0  storeli.w r1, -3988(r30)
00158c  eb308fd8  load.hu r1, -632(r30)
001590  67071fe0  storeli.w r1, -3984(r30)
001594  eb30afd8  load.hu r1, -630(r30)
001598  67471fe0  storeli.w r1, -3980(r30)
00159c  eb30cfd8  load.hu r1, -628(r30)
0015a0  e7071fe0  storeli.w r1, -3976(r30)
0015a4  eb30efd8  load.hu r1, -626(r30)
0015a8  e7471fe0  storeli.w r1, -3972(r30)
0015ac  eb300fd9  load.hu r1, -624(r30)
0015b0  e70f1fe0  storeli.w r1, -3848(r30)
0015b4  eb302fd9  load.hu r1, -622(r30)
0015b8  e74f1fe0  storeli.w r1, -3844(r30)
0015bc  eb304fd9  load.hu r1, -620(r30)
0015c0  67001fe2  storeli.w r1, -3840(r30)
0015c4  eb306fd9  load.hu r1, -618(r30)
0015c8  67401fe2  storeli.w r1, -3836(r30)
0015cc  eb308fd9  load.hu r1, -616(r30)
0015d0  e7001fe2  storeli.w r1, -3832(r30)
0015d4  eb30afd9  load.hu r1, -614(r30)
0015d8  e7401fe2  storeli.w r1, -3828(r30)
0015dc  eb30cfd9  load.hu r1, -612(r30)
0015e0  67411fe2  storeli.w r1, -3820(r30)
0015e4  eb30efd9  load.hu r1, -610(r30)
0015e8  67001fe8  storeli.w r1, -3072(r30)
0015ec  eb300fda  load.hu r1, -608(r30)
0015f0  67011fe2  storeli.w r1, -3824(r30)
0015f4  eb302fda  load.hu r1, -606(r30)
0015f8  e7011fe2  storeli.w r1, -3816(r30)
0015fc  eb304fda  load.hu r1, -604(r30)
001600  e7411fe2  storeli.w r1, -3812(r30)
001604  eb306fda  load.hu r1, -602(r30)
001608  67021fe2  storeli.w r1, -3808(r30)
00160c  eb308fda  load.hu r1, -600(r30)
001610  67421fe2  storeli.w r1, -3804(r30)
001614  eb30afda  load.hu r1, -598(r30)
001618  e7021fe2  storeli.w r1, -3800(r30)
00161c  eb30cfda  load.hu r1, -596(r30)
001620  e7421fe2  storeli.w r1, -3796(r30)
001624  eb30efda  load.hu r1, -594(r30)
001628  67031fe2  storeli.w r1, -3792(r30)
00162c  eb300fdb  load.hu r1, -592(r30)
001630  67431fe2  storeli.w r1, -3788(r30)
001634  eb302fdb  load.hu r1, -590(r30)
001638  e7031fe2  storeli.w r1, -3784(r30)
00163c  eb304fdb  load.hu r1, -588(r30)
001640  e7431fe2  storeli.w r1, -3780(r30)
001644  eb306fdb  load.hu r1, -586(r30)
001648  67041fe2  storeli.w r1, -3776(r30)
00164c  eb308fdb  load.hu r1, -584(r30)
001650  67441fe2  storeli.w r1, -3772(r30)
001654  eb30afdb  load.hu r1, -582(r30)
001658  e7041fe2  storeli.w r1, -3768(r30)
00165c  eb30cfdb  load.hu r1, -580(r30)
001660  67051fe2  storeli.w r1, -3760(r30)
001664  eb30efdb  load.hu r1, -578(r30)
001668  67081fe8  storeli.w r1, -2944(r30)
00166c  eb300fdc  load.hu r1, -576(r30)
001670  e7441fe2  storeli.w r1, -3764(r30)
001674  eb302fdc  load.hu r1, -574(r30)
001678  67451fe2  storeli.w r1, -3756(r30)
00167c  eb304fdc  load.hu r1, -572(r30)
001680  e7451fe2  storeli.w r1, -3748(r30)
001684  eb306fdc  load.hu r1, -570(r30)
001688  67061fe2  storeli.w r1, -3744(r30)
00168c  eb308fdc  load.hu r1, -568(r30)
001690  67461fe2  storeli.w r1, -3740(r30)
001694  eb30afdc  load.hu r1, -566(r30)
001698  e7061fe2  storeli.w r1, -3736(r30)
00169c  eb30cfdc  load.hu r1, -564(r30)
0016a0  67071fe2  storeli.w r1, -3728(r30)
0016a4  eb30efdc  load.hu r1, -562(r30)
0016a8  67471fe2  storeli.w r1, -3724(r30)
0016ac  eb300fdd  load.hu r1, -560(r30)
0016b0  e7071fe2  storeli.w r1, -3720(r30)
0016b4  eb302fdd  load.hu r1, -558(r30)
0016b8  e7471fe2  storeli.w r1, -3716(r30)
0016bc  eb304fdd  load.hu r1, -556(r30)
0016c0  67081fe2  storeli.w r1, -3712(r30)
0016c4  eb306fdd  load.hu r1, -554(r30)
0016c8  67481fe2  storeli.w r1, -3708(r30)
0016cc  eb308fdd  load.hu r1, -552(r30)
0016d0  e7081fe2  storeli.w r1, -3704(r30)
0016d4  eb30afdd  load.hu r1, -550(r30)
0016d8  e7481fe2  storeli.w r1, -3700(r30)
0016dc  eb30cfdd  load.hu r1, -548(r30)
0016e0  67491fe2  storeli.w r1, -3692(r30)
0016e4  eb30efdd  load.hu r1, -546(r30)
0016e8  67041fea  storeli.w r1, -2752(r30)
0016ec  eb300fde  load.hu r1, -544(r30)
0016f0  67091fe2  storeli.w r1, -3696(r30)
0016f4  eb302fde  load.hu r1, -542(r30)
0016f8  e7091fe2  storeli.w r1, -3688(r30)
0016fc  eb304fde  load.hu r1, -540(r30)
001700  e7491fe2  storeli.w r1, -3684(r30)
001704  eb306fde  load.hu r1, -538(r30)
001708  670a1fe2  storeli.w r1, -3680(r30)
00170c  eb308fde  load.hu r1, -536(r30)
001710  674a1fe2  storeli.w r1, -3676(r30)
001714  eb30afde  load.hu r1, -534(r30)
001718  e70a1fe2  storeli.w r1, -3672(r30)
00171c  eb300fdf  load.hu r1, -528(r30)
001720  e74a1fe2  storeli.w r1, -3668(r30)
001724  eb302fdf  load.hu r1, -526(r30)
001728  670b1fe2  storeli.w r1, -3664(r30)
00172c  eb304fdf  load.hu r1, -524(r30)
001730  674b1fe2  storeli.w r1, -3660(r30)
001734  eb306fdf  load.hu r1, -522(r30)
001738  e70b1fe2  storeli.w r1, -3656(r30)
00173c  eb308fdf  load.hu r1, -520(r30)
001740  e74b1fe2  storeli.w r1, -3652(r30)
001744  eb30afdf  load.hu r1, -518(r30)
001748  67041ff2  storeli.w r1, -1728(r30)
00174c  eb30cfdf  load.hu r1, -516(r30)
001750  67081ff0  storeli.w r1, -1920(r30)
001754  eb30efdf  load.hu r1, -514(r30)
001758  670c1fea  storeli.w r1, -2624(r30)
00175c  eb30efde  load.hu r1, -530(r30)
001760  e7461fe2  storeli.w r1, -3732(r30)
001764  eb30cfde  load.hu r1, -532(r30)
001768  e7051fe2  storeli.w r1, -3752(r30)
00176c  00a00000  mfence { lm }
001770  67089ff2  storeli.w r9, -1664(r30)
001774  6708efd8  storeli.w r14, -4992(r30)
001778  6b3e6fe3  load.hu r28, -458(r30)
00177c  eb300fe0  load.hu r1, -512(r30)
001780  6b314fe0  load.hu r2, -508(r30)
001784  eb316fe0  load.hu r3, -506(r30)
001788  6b328fe0  load.hu r4, -504(r30)
00178c  eb32afe0  load.hu r5, -502(r30)
001790  6b33cfe0  load.hu r6, -500(r30)
001794  eb33efe0  load.hu r7, -498(r30)
001798  6b340fe1  load.hu r8, -496(r30)
00179c  eb342fe1  load.hu r9, -494(r30)
0017a0  6b354fe1  load.hu r10, -492(r30)
0017a4  eb356fe1  load.hu r11, -490(r30)
0017a8  6b368fe1  load.hu r12, -488(r30)
0017ac  eb36afe1  load.hu r13, -486(r30)
0017b0  6b37cfe1  load.hu r14, -484(r30)
0017b4  eb37efe1  load.hu r15, -482(r30)
0017b8  6b380fe2  load.hu r16, -480(r30)
0017bc  eb382fe2  load.hu r17, -478(r30)
0017c0  6b394fe2  load.hu r18, -476(r30)
0017c4  6b3a6fe2  load.hu r20, -474(r30)
0017c8  eb3a8fe2  load.hu r21, -472(r30)
0017cc  6b3bafe2  load.hu r22, -470(r30)
0017d0  eb3bcfe2  load.hu r23, -468(r30)
0017d4  6b3cefe2  load.hu r24, -466(r30)
0017d8  eb3c0fe3  load.hu r25, -464(r30)
0017dc  6b3d2fe3  load.hu r26, -462(r30)
0017e0  eb3d4fe3  load.hu r27, -460(r30)
0017e4  e701cfd3  storeli.w r28, -5864(r30)
0017e8  6b3e8fe3  load.hu r28, -456(r30)
0017ec  b3900018  bfloat2float.rn r1, r1
0017f0  670c1fec  storeli.w r1, -2368(r30)
0017f4  eb302fe0  load.hu r1, -510(r30)
0017f8  e741cfd3  storeli.w r28, -5860(r30)
0017fc  6b3eafe3  load.hu r28, -454(r30)
001800  b3900018  bfloat2float.rn r1, r1
001804  6702cfd3  storeli.w r28, -5856(r30)
001808  6b3ecfe3  load.hu r28, -452(r30)
00180c  6742cfd3  storeli.w r28, -5852(r30)
001810  6b3eefe3  load.hu r28, -450(r30)
001814  e742cfd3  storeli.w r28, -5844(r30)
001818  6b3e0fe4  load.hu r28, -448(r30)
00181c  e702cfd3  storeli.w r28, -5848(r30)
001820  6b3e2fe4  load.hu r28, -446(r30)
001824  6703cfd3  storeli.w r28, -5840(r30)
001828  6b3e4fe4  load.hu r28, -444(r30)
00182c  6743cfd3  storeli.w r28, -5836(r30)
001830  6b3e6fe4  load.hu r28, -442(r30)
001834  e703cfd3  storeli.w r28, -5832(r30)
001838  6b3e8fe4  load.hu r28, -440(r30)
00183c  e743cfd3  storeli.w r28, -5828(r30)
001840  6b3eafe4  load.hu r28, -438(r30)
001844  6704cfd3  storeli.w r28, -5824(r30)
001848  6b3ecfe4  load.hu r28, -436(r30)
00184c  6744cfd3  storeli.w r28, -5820(r30)
001850  6b3eefe4  load.hu r28, -434(r30)
001854  e704cfd3  storeli.w r28, -5816(r30)
001858  6b3e0fe5  load.hu r28, -432(r30)
00185c  e744cfd3  storeli.w r28, -5812(r30)
001860  6b3e2fe5  load.hu r28, -430(r30)
001864  6705cfd3  storeli.w r28, -5808(r30)
001868  6b3e4fe5  load.hu r28, -428(r30)
00186c  6745cfd3  storeli.w r28, -5804(r30)
001870  6b3e6fe5  load.hu r28, -426(r30)
001874  e705cfd3  storeli.w r28, -5800(r30)
001878  6b3e8fe5  load.hu r28, -424(r30)
00187c  e745cfd3  storeli.w r28, -5796(r30)
001880  6b3eafe5  load.hu r28, -422(r30)
001884  6706cfd3  storeli.w r28, -5792(r30)
001888  6b3ecfe5  load.hu r28, -420(r30)
00188c  6746cfd3  storeli.w r28, -5788(r30)
001890  6b3eefe5  load.hu r28, -418(r30)
001894  e746cfd3  storeli.w r28, -5780(r30)
001898  6b3e0fe6  load.hu r28, -416(r30)
00189c  e706cfd3  storeli.w r28, -5784(r30)
0018a0  6b3e2fe6  load.hu r28, -414(r30)
0018a4  6707cfd3  storeli.w r28, -5776(r30)
0018a8  6b3e4fe6  load.hu r28, -412(r30)
0018ac  6747cfd3  storeli.w r28, -5772(r30)
0018b0  6b3e6fe6  load.hu r28, -410(r30)
0018b4  e707cfd3  storeli.w r28, -5768(r30)
0018b8  6b3e8fe6  load.hu r28, -408(r30)
0018bc  e747cfd3  storeli.w r28, -5764(r30)
0018c0  6b3eafe6  load.hu r28, -406(r30)
0018c4  6708cfd3  storeli.w r28, -5760(r30)
0018c8  6b3ecfe6  load.hu r28, -404(r30)
0018cc  6748cfd3  storeli.w r28, -5756(r30)
0018d0  6b3eefe6  load.hu r28, -402(r30)
0018d4  e708cfd3  storeli.w r28, -5752(r30)
0018d8  6b3e0fe7  load.hu r28, -400(r30)
0018dc  e748cfd3  storeli.w r28, -5748(r30)
0018e0  6b3e2fe7  load.hu r28, -398(r30)
0018e4  6709cfd3  storeli.w r28, -5744(r30)
0018e8  6b3e4fe7  load.hu r28, -396(r30)
0018ec  6749cfd3  storeli.w r28, -5740(r30)
0018f0  6b3e6fe7  load.hu r28, -394(r30)
0018f4  e709cfd3  storeli.w r28, -5736(r30)
0018f8  6b3e8fe7  load.hu r28, -392(r30)
0018fc  e749cfd3  storeli.w r28, -5732(r30)
001900  6b3eafe7  load.hu r28, -390(r30)
001904  670acfd3  storeli.w r28, -5728(r30)
001908  6b3ecfe7  load.hu r28, -388(r30)
00190c  674acfd3  storeli.w r28, -5724(r30)
001910  6b3eefe7  load.hu r28, -386(r30)
001914  6700cfe1  storeli.w r28, -4096(r30)
001918  6b3e0fe8  load.hu r28, -384(r30)
00191c  e70acfd3  storeli.w r28, -5720(r30)
001920  6b3e2fe8  load.hu r28, -382(r30)
001924  e74acfd3  storeli.w r28, -5716(r30)
001928  6b3e4fe8  load.hu r28, -380(r30)
00192c  670bcfd3  storeli.w r28, -5712(r30)
001930  6b3e6fe8  load.hu r28, -378(r30)
001934  674bcfd3  storeli.w r28, -5708(r30)
001938  6b3e8fe8  load.hu r28, -376(r30)
00193c  e70bcfd3  storeli.w r28, -5704(r30)
001940  6b3eafe8  load.hu r28, -374(r30)
001944  e74bcfd3  storeli.w r28, -5700(r30)
001948  6b3ecfe8  load.hu r28, -372(r30)
00194c  670ccfd3  storeli.w r28, -5696(r30)
001950  6b3eefe8  load.hu r28, -370(r30)
001954  674ccfd3  storeli.w r28, -5692(r30)
001958  6b3e0fe9  load.hu r28, -368(r30)
00195c  e70ccfd3  storeli.w r28, -5688(r30)
001960  6b3e2fe9  load.hu r28, -366(r30)
001964  e74ccfd3  storeli.w r28, -5684(r30)
001968  6b3e4fe9  load.hu r28, -364(r30)
00196c  670dcfd3  storeli.w r28, -5680(r30)
001970  6b3e6fe9  load.hu r28, -362(r30)
001974  674dcfd3  storeli.w r28, -5676(r30)
001978  6b3e8fe9  load.hu r28, -360(r30)
00197c  e70dcfd3  storeli.w r28, -5672(r30)
001980  6b3eafe9  load.hu r28, -358(r30)
001984  e74dcfd3  storeli.w r28, -5668(r30)
001988  6b3ecfe9  load.hu r28, -356(r30)
00198c  670ecfd3  storeli.w r28, -5664(r30)
001990  6b3eefe9  load.hu r28, -354(r30)
001994  670ccfe3  storeli.w r28, -3648(r30)
001998  6b3e0fea  load.hu r28, -352(r30)
00199c  674ecfd3  storeli.w r28, -5660(r30)
0019a0  6b3e2fea  load.hu r28, -350(r30)
0019a4  e70ecfd3  storeli.w r28, -5656(r30)
0019a8  6b3e4fea  load.hu r28, -348(r30)
0019ac  e74ecfd3  storeli.w r28, -5652(r30)
0019b0  6b3e6fea  load.hu r28, -346(r30)
0019b4  670fcfd3  storeli.w r28, -5648(r30)
0019b8  6b3e8fea  load.hu r28, -344(r30)
0019bc  674fcfd3  storeli.w r28, -5644(r30)
0019c0  6b3eafea  load.hu r28, -342(r30)
0019c4  e70fcfd3  storeli.w r28, -5640(r30)
0019c8  6b3ecfea  load.hu r28, -340(r30)
0019cc  e74fcfd3  storeli.w r28, -5636(r30)
0019d0  6b3eefea  load.hu r28, -338(r30)
0019d4  6700cfd5  storeli.w r28, -5632(r30)
0019d8  6b3e0feb  load.hu r28, -336(r30)
0019dc  6740cfd5  storeli.w r28, -5628(r30)
0019e0  6b3e2feb  load.hu r28, -334(r30)
0019e4  e700cfd5  storeli.w r28, -5624(r30)
0019e8  6b3e4feb  load.hu r28, -332(r30)
0019ec  e740cfd5  storeli.w r28, -5620(r30)
0019f0  6b3e6feb  load.hu r28, -330(r30)
0019f4  6701cfd5  storeli.w r28, -5616(r30)
0019f8  6b3e8feb  load.hu r28, -328(r30)
0019fc  6741cfd5  storeli.w r28, -5612(r30)
001a00  6b3eafeb  load.hu r28, -326(r30)
001a04  e701cfd5  storeli.w r28, -5608(r30)
001a08  6b3ecfeb  load.hu r28, -324(r30)
001a0c  e741cfd5  storeli.w r28, -5604(r30)
001a10  6b3eefeb  load.hu r28, -322(r30)
001a14  6704cfe5  storeli.w r28, -3520(r30)
001a18  6b3e0fec  load.hu r28, -320(r30)
001a1c  6702cfd5  storeli.w r28, -5600(r30)
001a20  6b3e2fec  load.hu r28, -318(r30)
001a24  6742cfd5  storeli.w r28, -5596(r30)
001a28  6b3e4fec  load.hu r28, -316(r30)
001a2c  e702cfd5  storeli.w r28, -5592(r30)
001a30  6b3e6fec  load.hu r28, -314(r30)
001a34  e742cfd5  storeli.w r28, -5588(r30)
001a38  6b3e8fec  load.hu r28, -312(r30)
001a3c  6703cfd5  storeli.w r28, -5584(r30)
001a40  6b3eafec  load.hu r28, -310(r30)
001a44  6743cfd5  storeli.w r28, -5580(r30)
001a48  6b3ecfec  load.hu r28, -308(r30)
001a4c  e703cfd5  storeli.w r28, -5576(r30)
001a50  6b3eefec  load.hu r28, -306(r30)
001a54  e743cfd5  storeli.w r28, -5572(r30)
001a58  6b3e0fed  load.hu r28, -304(r30)
001a5c  6704cfd5  storeli.w r28, -5568(r30)
001a60  6b3e2fed  load.hu r28, -302(r30)
001a64  6744cfd5  storeli.w r28, -5564(r30)
001a68  6b3e4fed  load.hu r28, -300(r30)
001a6c  e704cfd5  storeli.w r28, -5560(r30)
001a70  6b3e6fed  load.hu r28, -298(r30)
001a74  e744cfd5  storeli.w r28, -5556(r30)
001a78  6b3e8fed  load.hu r28, -296(r30)
001a7c  6705cfd5  storeli.w r28, -5552(r30)
001a80  6b3eafed  load.hu r28, -294(r30)
001a84  6745cfd5  storeli.w r28, -5548(r30)
001a88  6b3ecfed  load.hu r28, -292(r30)
001a8c  e705cfd5  storeli.w r28, -5544(r30)
001a90  6b3eefed  load.hu r28, -290(r30)
001a94  670ccfe5  storeli.w r28, -3392(r30)
001a98  6b3e0fee  load.hu r28, -288(r30)
001a9c  e745cfd5  storeli.w r28, -5540(r30)
001aa0  6b3e2fee  load.hu r28, -286(r30)
001aa4  6706cfd5  storeli.w r28, -5536(r30)
001aa8  6b3e4fee  load.hu r28, -284(r30)
001aac  6746cfd5  storeli.w r28, -5532(r30)
001ab0  6b3e6fee  load.hu r28, -282(r30)
001ab4  e706cfd5  storeli.w r28, -5528(r30)
001ab8  6b3e8fee  load.hu r28, -280(r30)
001abc  e746cfd5  storeli.w r28, -5524(r30)
001ac0  6b3eafee  load.hu r28, -278(r30)
001ac4  6707cfd5  storeli.w r28, -5520(r30)
001ac8  6b3ecfee  load.hu r28, -276(r30)
001acc  6747cfd5  storeli.w r28, -5516(r30)
001ad0  6b3eefee  load.hu r28, -274(r30)
001ad4  e707cfd5  storeli.w r28, -5512(r30)
001ad8  6b3e0fef  load.hu r28, -272(r30)
001adc  e747cfd5  storeli.w r28, -5508(r30)
001ae0  6b3e2fef  load.hu r28, -270(r30)
001ae4  6708cfd5  storeli.w r28, -5504(r30)
001ae8  6b3e4fef  load.hu r28, -268(r30)
001aec  6748cfd5  storeli.w r28, -5500(r30)
001af0  6b3e6fef  load.hu r28, -266(r30)
001af4  e708cfd5  storeli.w r28, -5496(r30)
001af8  6b3e8fef  load.hu r28, -264(r30)
001afc  e748cfd5  storeli.w r28, -5492(r30)
001b00  6b3eafef  load.hu r28, -262(r30)
001b04  6709cfd5  storeli.w r28, -5488(r30)
001b08  6b3ecfef  load.hu r28, -260(r30)
001b0c  6749cfd5  storeli.w r28, -5484(r30)
001b10  6b3eefef  load.hu r28, -258(r30)
001b14  6704cfe7  storeli.w r28, -3264(r30)
001b18  6b3e0ff0  load.hu r28, -256(r30)
001b1c  e709cfd5  storeli.w r28, -5480(r30)
001b20  6b3e2ff0  load.hu r28, -254(r30)
001b24  e749cfd5  storeli.w r28, -5476(r30)
001b28  6b3e4ff0  load.hu r28, -252(r30)
001b2c  670acfd5  storeli.w r28, -5472(r30)
001b30  6b3e6ff0  load.hu r28, -250(r30)
001b34  674acfd5  storeli.w r28, -5468(r30)
001b38  6b3e8ff0  load.hu r28, -248(r30)
001b3c  e70acfd5  storeli.w r28, -5464(r30)
001b40  6b3eaff0  load.hu r28, -246(r30)
001b44  e74acfd5  storeli.w r28, -5460(r30)
001b48  6b3ecff0  load.hu r28, -244(r30)
001b4c  670bcfd5  storeli.w r28, -5456(r30)
001b50  6b3eeff0  load.hu r28, -242(r30)
001b54  674bcfd5  storeli.w r28, -5452(r30)
001b58  6b3e0ff1  load.hu r28, -240(r30)
001b5c  e70bcfd5  storeli.w r28, -5448(r30)
001b60  6b3e2ff1  load.hu r28, -238(r30)
001b64  e74bcfd5  storeli.w r28, -5444(r30)
001b68  6b3e4ff1  load.hu r28, -236(r30)
001b6c  670ccfd5  storeli.w r28, -5440(r30)
001b70  6b3e6ff1  load.hu r28, -234(r30)
001b74  674ccfd5  storeli.w r28, -5436(r30)
001b78  6b3e8ff1  load.hu r28, -232(r30)
001b7c  e70ccfd5  storeli.w r28, -5432(r30)
001b80  6b3eaff1  load.hu r28, -230(r30)
001b84  e74ccfd5  storeli.w r28, -5428(r30)
001b88  6b3ecff1  load.hu r28, -228(r30)
001b8c  670dcfd5  storeli.w r28, -5424(r30)
001b90  6b3eeff1  load.hu r28, -226(r30)
001b94  670ccfe7  storeli.w r28, -3136(r30)
001b98  6b3e0ff2  load.hu r28, -224(r30)
001b9c  674dcfd5  storeli.w r28, -5420(r30)
001ba0  6b3e2ff2  load.hu r28, -222(r30)
001ba4  e70dcfd5  storeli.w r28, -5416(r30)
001ba8  6b3e4ff2  load.hu r28, -220(r30)
001bac  e74dcfd5  storeli.w r28, -5412(r30)
001bb0  6b3e6ff2  load.hu r28, -218(r30)
001bb4  670ecfd5  storeli.w r28, -5408(r30)
001bb8  6b3e8ff2  load.hu r28, -216(r30)
001bbc  674ecfd5  storeli.w r28, -5404(r30)
001bc0  6b3eaff2  load.hu r28, -214(r30)
001bc4  e70ecfd5  storeli.w r28, -5400(r30)
001bc8  6b3ecff2  load.hu r28, -212(r30)
001bcc  e74ecfd5  storeli.w r28, -5396(r30)
001bd0  6b3eeff2  load.hu r28, -210(r30)
001bd4  670fcfd5  storeli.w r28, -5392(r30)
001bd8  6b3e0ff3  load.hu r28, -208(r30)
001bdc  674fcfd5  storeli.w r28, -5388(r30)
001be0  6b3e2ff3  load.hu r28, -206(r30)
001be4  e70fcfd5  storeli.w r28, -5384(r30)
001be8  6b3e4ff3  load.hu r28, -204(r30)
001bec  e74fcfd5  storeli.w r28, -5380(r30)
001bf0  6b3e6ff3  load.hu r28, -202(r30)
001bf4  6700cfd7  storeli.w r28, -5376(r30)
001bf8  6b3e8ff3  load.hu r28, -200(r30)
001bfc  6740cfd7  storeli.w r28, -5372(r30)
001c00  6b3eaff3  load.hu r28, -198(r30)
001c04  e700cfd7  storeli.w r28, -5368(r30)
001c08  6b3ecff3  load.hu r28, -196(r30)
001c0c  e740cfd7  storeli.w r28, -5364(r30)
001c10  6b3eeff3  load.hu r28, -194(r30)
001c14  6704cfe9  storeli.w r28, -3008(r30)
001c18  6b3e0ff4  load.hu r28, -192(r30)
001c1c  6701cfd7  storeli.w r28, -5360(r30)
001c20  6b3e2ff4  load.hu r28, -190(r30)
001c24  6741cfd7  storeli.w r28, -5356(r30)
001c28  6b3e4ff4  load.hu r28, -188(r30)
001c2c  e701cfd7  storeli.w r28, -5352(r30)
001c30  6b3e6ff4  load.hu r28, -186(r30)
001c34  e741cfd7  storeli.w r28, -5348(r30)
001c38  6b3e8ff4  load.hu r28, -184(r30)
001c3c  6702cfd7  storeli.w r28, -5344(r30)
001c40  6b3eaff4  load.hu r28, -182(r30)
001c44  6742cfd7  storeli.w r28, -5340(r30)
001c48  6b3ecff4  load.hu r28, -180(r30)
001c4c  e702cfd7  storeli.w r28, -5336(r30)
001c50  6b3eeff4  load.hu r28, -178(r30)
001c54  e742cfd7  storeli.w r28, -5332(r30)
001c58  6b3e0ff5  load.hu r28, -176(r30)
001c5c  6703cfd7  storeli.w r28, -5328(r30)
001c60  6b3e2ff5  load.hu r28, -174(r30)
001c64  6743cfd7  storeli.w r28, -5324(r30)
001c68  6b3e4ff5  load.hu r28, -172(r30)
001c6c  e703cfd7  storeli.w r28, -5320(r30)
001c70  6b3e6ff5  load.hu r28, -170(r30)
001c74  e743cfd7  storeli.w r28, -5316(r30)
001c78  6b3e8ff5  load.hu r28, -168(r30)
001c7c  6704cfd7  storeli.w r28, -5312(r30)
001c80  6b3eaff5  load.hu r28, -166(r30)
001c84  6744cfd7  storeli.w r28, -5308(r30)
001c88  6b3ecff5  load.hu r28, -164(r30)
001c8c  e704cfd7  storeli.w r28, -5304(r30)
001c90  6b3eeff5  load.hu r28, -162(r30)
001c94  6700cfeb  storeli.w r28, -2816(r30)
001c98  6b3e0ff6  load.hu r28, -160(r30)
001c9c  e744cfd7  storeli.w r28, -5300(r30)
001ca0  6b3e2ff6  load.hu r28, -158(r30)
001ca4  6705cfd7  storeli.w r28, -5296(r30)
001ca8  6b3e4ff6  load.hu r28, -156(r30)
001cac  6745cfd7  storeli.w r28, -5292(r30)
001cb0  6b3e6ff6  load.hu r28, -154(r30)
001cb4  e705cfd7  storeli.w r28, -5288(r30)
001cb8  6b3e8ff6  load.hu r28, -152(r30)
001cbc  e745cfd7  storeli.w r28, -5284(r30)
001cc0  6b3eaff6  load.hu r28, -150(r30)
001cc4  6706cfd7  storeli.w r28, -5280(r30)
001cc8  6b3ecff6  load.hu r28, -148(r30)
001ccc  6746cfd7  storeli.w r28, -5276(r30)
001cd0  6b3eeff6  load.hu r28, -146(r30)
001cd4  e706cfd7  storeli.w r28, -5272(r30)
001cd8  6b3e0ff7  load.hu r28, -144(r30)
001cdc  e746cfd7  storeli.w r28, -5268(r30)
001ce0  6b3e2ff7  load.hu r28, -142(r30)
001ce4  6707cfd7  storeli.w r28, -5264(r30)
001ce8  6b3e4ff7  load.hu r28, -140(r30)
001cec  6747cfd7  storeli.w r28, -5260(r30)
001cf0  6b3e6ff7  load.hu r28, -138(r30)
001cf4  e707cfd7  storeli.w r28, -5256(r30)
001cf8  6b3e8ff7  load.hu r28, -136(r30)
001cfc  e747cfd7  storeli.w r28, -5252(r30)
001d00  6b3eaff7  load.hu r28, -134(r30)
001d04  6708cfd7  storeli.w r28, -5248(r30)
001d08  6b3ecff7  load.hu r28, -132(r30)
001d0c  6748cfd7  storeli.w r28, -5244(r30)
001d10  6b3eeff7  load.hu r28, -130(r30)
001d14  6708cfeb  storeli.w r28, -2688(r30)
001d18  6b3e0ff8  load.hu r28, -128(r30)
001d1c  e708cfd7  storeli.w r28, -5240(r30)
001d20  6b3e2ff8  load.hu r28, -126(r30)
001d24  e748cfd7  storeli.w r28, -5236(r30)
001d28  6b3e4ff8  load.hu r28, -124(r30)
001d2c  6709cfd7  storeli.w r28, -5232(r30)
001d30  6b3e6ff8  load.hu r28, -122(r30)
001d34  6749cfd7  storeli.w r28, -5228(r30)
001d38  6b3e8ff8  load.hu r28, -120(r30)
001d3c  e709cfd7  storeli.w r28, -5224(r30)
001d40  6b3eaff8  load.hu r28, -118(r30)
001d44  e749cfd7  storeli.w r28, -5220(r30)
001d48  6b3ecff8  load.hu r28, -116(r30)
001d4c  670acfd7  storeli.w r28, -5216(r30)
001d50  6b3eeff8  load.hu r28, -114(r30)
001d54  674acfd7  storeli.w r28, -5212(r30)
001d58  6b3e0ff9  load.hu r28, -112(r30)
001d5c  e70acfd7  storeli.w r28, -5208(r30)
001d60  6b3e2ff9  load.hu r28, -110(r30)
001d64  e74acfd7  storeli.w r28, -5204(r30)
001d68  6b3e4ff9  load.hu r28, -108(r30)
001d6c  670bcfd7  storeli.w r28, -5200(r30)
001d70  6b3e6ff9  load.hu r28, -106(r30)
001d74  674bcfd7  storeli.w r28, -5196(r30)
001d78  6b3e8ff9  load.hu r28, -104(r30)
001d7c  e70bcfd7  storeli.w r28, -5192(r30)
001d80  6b3eaff9  load.hu r28, -102(r30)
001d84  e74bcfd7  storeli.w r28, -5188(r30)
001d88  6b3ecff9  load.hu r28, -100(r30)
001d8c  670ccfd7  storeli.w r28, -5184(r30)
001d90  6b3eeff9  load.hu r28, -98(r30)
001d94  6700cfed  storeli.w r28, -2560(r30)
001d98  6b3e0ffa  load.hu r28, -96(r30)
001d9c  674ccfd7  storeli.w r28, -5180(r30)
001da0  6b3e2ffa  load.hu r28, -94(r30)
001da4  e70ccfd7  storeli.w r28, -5176(r30)
001da8  6b3e4ffa  load.hu r28, -92(r30)
001dac  e74ccfd7  storeli.w r28, -5172(r30)
001db0  6b3e6ffa  load.hu r28, -90(r30)
001db4  670dcfd7  storeli.w r28, -5168(r30)
001db8  6b3e8ffa  load.hu r28, -88(r30)
001dbc  674dcfd7  storeli.w r28, -5164(r30)
001dc0  6b3eaffa  load.hu r28, -86(r30)
001dc4  e70dcfd7  storeli.w r28, -5160(r30)
001dc8  6b3ecffa  load.hu r28, -84(r30)
001dcc  e74dcfd7  storeli.w r28, -5156(r30)
001dd0  6b3eeffa  load.hu r28, -82(r30)
001dd4  670ecfd7  storeli.w r28, -5152(r30)
001dd8  6b3e0ffb  load.hu r28, -80(r30)
001ddc  674ecfd7  storeli.w r28, -5148(r30)
001de0  6b3e2ffb  load.hu r28, -78(r30)
001de4  e70ecfd7  storeli.w r28, -5144(r30)
001de8  6b3e4ffb  load.hu r28, -76(r30)
001dec  e74ecfd7  storeli.w r28, -5140(r30)
001df0  6b3e6ffb  load.hu r28, -74(r30)
001df4  670fcfd7  storeli.w r28, -5136(r30)
001df8  6b3e8ffb  load.hu r28, -72(r30)
001dfc  674fcfd7  storeli.w r28, -5132(r30)
001e00  6b3eaffb  load.hu r28, -70(r30)
001e04  e70fcfd7  storeli.w r28, -5128(r30)
001e08  6b3ecffb  load.hu r28, -68(r30)
001e0c  e74fcfd7  storeli.w r28, -5124(r30)
001e10  6b3eeffb  load.hu r28, -66(r30)
001e14  6708cfed  storeli.w r28, -2432(r30)
001e18  6b3e0ffc  load.hu r28, -64(r30)
001e1c  6700cfd9  storeli.w r28, -5120(r30)
001e20  6b3e2ffc  load.hu r28, -62(r30)
001e24  6740cfd9  storeli.w r28, -5116(r30)
001e28  6b3e4ffc  load.hu r28, -60(r30)
001e2c  e700cfd9  storeli.w r28, -5112(r30)
001e30  6b3e6ffc  load.hu r28, -58(r30)
001e34  e740cfd9  storeli.w r28, -5108(r30)
001e38  6b3e8ffc  load.hu r28, -56(r30)
001e3c  6701cfd9  storeli.w r28, -5104(r30)
001e40  6b3eaffc  load.hu r28, -54(r30)
001e44  6741cfd9  storeli.w r28, -5100(r30)
001e48  6b3ecffc  load.hu r28, -52(r30)
001e4c  e701cfd9  storeli.w r28, -5096(r30)
001e50  6b3eeffc  load.hu r28, -50(r30)
001e54  e741cfd9  storeli.w r28, -5092(r30)
001e58  6b3e0ffd  load.hu r28, -48(r30)
001e5c  6702cfd9  storeli.w r28, -5088(r30)
001e60  6b3e2ffd  load.hu r28, -46(r30)
001e64  6742cfd9  storeli.w r28, -5084(r30)
001e68  6b3e4ffd  load.hu r28, -44(r30)
001e6c  e702cfd9  storeli.w r28, -5080(r30)
001e70  6b3e6ffd  load.hu r28, -42(r30)
001e74  e742cfd9  storeli.w r28, -5076(r30)
001e78  6b3e8ffd  load.hu r28, -40(r30)
001e7c  6703cfd9  storeli.w r28, -5072(r30)
001e80  6b3eaffd  load.hu r28, -38(r30)
001e84  6743cfd9  storeli.w r28, -5068(r30)
001e88  6b3ecffd  load.hu r28, -36(r30)
001e8c  e703cfd9  storeli.w r28, -5064(r30)
001e90  6b3eeffd  load.hu r28, -34(r30)
001e94  6704cfd9  storeli.w r28, -5056(r30)
001e98  6b3e0ffe  load.hu r28, -32(r30)
001e9c  e743cfd9  storeli.w r28, -5060(r30)
001ea0  6b3e2ffe  load.hu r28, -30(r30)
001ea4  6744cfd9  storeli.w r28, -5052(r30)
001ea8  6b3e4ffe  load.hu r28, -28(r30)
001eac  e704cfd9  storeli.w r28, -5048(r30)
001eb0  6b3e6ffe  load.hu r28, -26(r30)
001eb4  e744cfd9  storeli.w r28, -5044(r30)
001eb8  6b3e8ffe  load.hu r28, -24(r30)
001ebc  6705cfd9  storeli.w r28, -5040(r30)
001ec0  6b3eaffe  load.hu r28, -22(r30)
001ec4  6745cfd9  storeli.w r28, -5036(r30)
001ec8  6b3ecffe  load.hu r28, -20(r30)
001ecc  e705cfd9  storeli.w r28, -5032(r30)
001ed0  6b3eeffe  load.hu r28, -18(r30)
001ed4  e745cfd9  storeli.w r28, -5028(r30)
001ed8  6b3e0fff  load.hu r28, -16(r30)
001edc  6706cfd9  storeli.w r28, -5024(r30)
001ee0  6b3e2fff  load.hu r28, -14(r30)
001ee4  6746cfd9  storeli.w r28, -5020(r30)
001ee8  6b3e4fff  load.hu r28, -12(r30)
001eec  e706cfd9  storeli.w r28, -5016(r30)
001ef0  6b3e6fff  load.hu r28, -10(r30)
001ef4  e746cfd9  storeli.w r28, -5012(r30)
001ef8  6b3e8fff  load.hu r28, -8(r30)
001efc  6707cfd9  storeli.w r28, -5008(r30)
001f00  6b3eafff  load.hu r28, -6(r30)
001f04  6747cfd9  storeli.w r28, -5004(r30)
001f08  6b3ecfff  load.hu r28, -4(r30)
001f0c  e707cfd9  storeli.w r28, -5000(r30)
001f10  6b3eefff  load.hu r28, -2(r30)
001f14  e747cfd9  storeli.w r28, -4996(r30)
001f18  630e8fed  loadli.w r28,  -2368(r30)
001f1c  ea237e34  vor.u.mh vr7{mr2}, r28, vr7
001f20  1f2e0000  addli r28, zero, 2
001f24  fe010ee0  vmmov mr3, r28
001f28  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f2c  b3100118  bfloat2float.rn r1, r2
001f30  1f410000  addli r2, zero, 4
001f34  7e0001e0  vmmov mr0, r2
001f38  1f011000  addli r2, zero, 8
001f3c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001f40  b3900118  bfloat2float.rn r1, r3
001f44  fe0101e0  vmmov mr3, r2
001f48  1f012000  addli r2, zero, 16
001f4c  ab810000  lui r3, 8
001f50  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f54  b3100218  bfloat2float.rn r1, r4
001f58  fe0101e0  vmmov mr3, r2
001f5c  1f014000  addli r2, zero, 32
001f60  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f64  b3900218  bfloat2float.rn r1, r5
001f68  7e0001c0  vmmov mr0, mr2
001f6c  7e0101e0  vmmov mr2, r2
001f70  1f018000  addli r2, zero, 64
001f74  fe0101e0  vmmov mr3, r2
001f78  1f010001  addli r2, zero, 128
001f7c  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
001f80  b3100318  bfloat2float.rn r1, r6
001f84  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f88  b3900318  bfloat2float.rn r1, r7
001f8c  fe0101e0  vmmov mr3, r2
001f90  1f010002  addli r2, zero, 256
001f94  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f98  b3100418  bfloat2float.rn r1, r8
001f9c  fe0101e0  vmmov mr3, r2
001fa0  1f010004  addli r2, zero, 512
001fa4  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fa8  b3900418  bfloat2float.rn r1, r9
001fac  fe0101e0  vmmov mr3, r2
001fb0  1f010008  addli r2, zero, 1024
001fb4  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fb8  b3100518  bfloat2float.rn r1, r10
001fbc  fe0101e0  vmmov mr3, r2
001fc0  1f010010  addli r2, zero, 2048
001fc4  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fc8  b3900518  bfloat2float.rn r1, r11
001fcc  fe0101e0  vmmov mr3, r2
001fd0  1f010020  addli r2, zero, 4096
001fd4  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fd8  b3100618  bfloat2float.rn r1, r12
001fdc  fe0101e0  vmmov mr3, r2
001fe0  1f010040  addli r2, zero, 8192
001fe4  7e0101e0  vmmov mr2, r2
001fe8  2b410000  lui r2, 4
001fec  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001ff0  b3900618  bfloat2float.rn r1, r13
001ff4  fe0101e0  vmmov mr3, r2
001ff8  33110818  bfloat2float.rn r2, r16
001ffc  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
002000  b3100718  bfloat2float.rn r1, r14
002004  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
002008  b3900718  bfloat2float.rn r1, r15
00200c  fe8101e0  vmmov mr3, r3
002010  ab810000  lui r3, 8
002014  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
002018  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00201c  1f210000  addli r2, zero, 2
002020  b3900818  bfloat2float.rn r1, r17
002024  fe0101e0  vmmov mr3, r2
002028  1f410000  addli r2, zero, 4
00202c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002030  b3100918  bfloat2float.rn r1, r18
002034  7e0001e0  vmmov mr0, r2
002038  1f011000  addli r2, zero, 8
00203c  7e0101e0  vmmov mr2, r2
002040  1f012000  addli r2, zero, 16
002044  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002048  b3100a18  bfloat2float.rn r1, r20
00204c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002050  b3900a18  bfloat2float.rn r1, r21
002054  7e0101e0  vmmov mr2, r2
002058  1f014000  addli r2, zero, 32
00205c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002060  b3100b18  bfloat2float.rn r1, r22
002064  7e0101e0  vmmov mr2, r2
002068  1f018000  addli r2, zero, 64
00206c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002070  b3900b18  bfloat2float.rn r1, r23
002074  7e0101e0  vmmov mr2, r2
002078  1f010001  addli r2, zero, 128
00207c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002080  b3100c18  bfloat2float.rn r1, r24
002084  7e0101e0  vmmov mr2, r2
002088  1f010002  addli r2, zero, 256
00208c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002090  b3900c18  bfloat2float.rn r1, r25
002094  7e0101e0  vmmov mr2, r2
002098  1f010004  addli r2, zero, 512
00209c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0020a0  b3100d18  bfloat2float.rn r1, r26
0020a4  7e0101e0  vmmov mr2, r2
0020a8  1f010008  addli r2, zero, 1024
0020ac  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0020b0  b3900d18  bfloat2float.rn r1, r27
0020b4  7e0101e0  vmmov mr2, r2
0020b8  1f010010  addli r2, zero, 2048
0020bc  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0020c0  e3003fd2  loadli.w r1,  -5864(r30)
0020c4  7e0101e0  vmmov mr2, r2
0020c8  1f010020  addli r2, zero, 4096
0020cc  b3900018  bfloat2float.rn r1, r1
0020d0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0020d4  e3403fd2  loadli.w r1,  -5860(r30)
0020d8  7e0101e0  vmmov mr2, r2
0020dc  1f010040  addli r2, zero, 8192
0020e0  b3900018  bfloat2float.rn r1, r1
0020e4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0020e8  e3004fd2  loadli.w r1,  -5856(r30)
0020ec  7e0101e0  vmmov mr2, r2
0020f0  2b410000  lui r2, 4
0020f4  b3900018  bfloat2float.rn r1, r1
0020f8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0020fc  e3404fd2  loadli.w r1,  -5852(r30)
002100  7e0101e0  vmmov mr2, r2
002104  b3900018  bfloat2float.rn r1, r1
002108  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00210c  e3405fd2  loadli.w r1,  -5844(r30)
002110  63015fd2  loadli.w r2,  -5848(r30)
002114  7e8101e0  vmmov mr2, r3
002118  ab810000  lui r3, 8
00211c  b3900018  bfloat2float.rn r1, r1
002120  33110118  bfloat2float.rn r2, r2
002124  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002128  9f100000  addli r1, zero, 1
00212c  7e8100e0  vmmov mr2, r1
002130  6a236134  vor.u.mh vr6{mr2}, r2, vr6
002134  e3006fd2  loadli.w r1,  -5840(r30)
002138  1f011000  addli r2, zero, 8
00213c  b3900018  bfloat2float.rn r1, r1
002140  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
002144  e3406fd2  loadli.w r1,  -5836(r30)
002148  b3900018  bfloat2float.rn r1, r1
00214c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002150  e3007fd2  loadli.w r1,  -5832(r30)
002154  7e0001e0  vmmov mr0, r2
002158  1f012000  addli r2, zero, 16
00215c  b3900018  bfloat2float.rn r1, r1
002160  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002164  e3407fd2  loadli.w r1,  -5828(r30)
002168  7e0001e0  vmmov mr0, r2
00216c  1f014000  addli r2, zero, 32
002170  b3900018  bfloat2float.rn r1, r1
002174  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002178  e3008fd2  loadli.w r1,  -5824(r30)
00217c  7e0001e0  vmmov mr0, r2
002180  1f018000  addli r2, zero, 64
002184  b3900018  bfloat2float.rn r1, r1
002188  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00218c  e3408fd2  loadli.w r1,  -5820(r30)
002190  7e0001e0  vmmov mr0, r2
002194  1f010001  addli r2, zero, 128
002198  b3900018  bfloat2float.rn r1, r1
00219c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0021a0  e3009fd2  loadli.w r1,  -5816(r30)
0021a4  7e0001e0  vmmov mr0, r2
0021a8  1f010002  addli r2, zero, 256
0021ac  b3900018  bfloat2float.rn r1, r1
0021b0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0021b4  e3409fd2  loadli.w r1,  -5812(r30)
0021b8  7e0001e0  vmmov mr0, r2
0021bc  1f010004  addli r2, zero, 512
0021c0  7e0101e0  vmmov mr2, r2
0021c4  1f010008  addli r2, zero, 1024
0021c8  b3900018  bfloat2float.rn r1, r1
0021cc  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0021d0  e300afd2  loadli.w r1,  -5808(r30)
0021d4  7e0001e0  vmmov mr0, r2
0021d8  1f010010  addli r2, zero, 2048
0021dc  b3900018  bfloat2float.rn r1, r1
0021e0  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
0021e4  e340afd2  loadli.w r1,  -5804(r30)
0021e8  b3900018  bfloat2float.rn r1, r1
0021ec  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0021f0  e300bfd2  loadli.w r1,  -5800(r30)
0021f4  7e0001e0  vmmov mr0, r2
0021f8  1f010020  addli r2, zero, 4096
0021fc  b3900018  bfloat2float.rn r1, r1
002200  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002204  e340bfd2  loadli.w r1,  -5796(r30)
002208  7e0001e0  vmmov mr0, r2
00220c  1f010040  addli r2, zero, 8192
002210  b3900018  bfloat2float.rn r1, r1
002214  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002218  e300cfd2  loadli.w r1,  -5792(r30)
00221c  7e0001e0  vmmov mr0, r2
002220  2b410000  lui r2, 4
002224  b3900018  bfloat2float.rn r1, r1
002228  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00222c  e340cfd2  loadli.w r1,  -5788(r30)
002230  7e0001e0  vmmov mr0, r2
002234  b3900018  bfloat2float.rn r1, r1
002238  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00223c  e340dfd2  loadli.w r1,  -5780(r30)
002240  6301dfd2  loadli.w r2,  -5784(r30)
002244  7e8001e0  vmmov mr0, r3
002248  ab810000  lui r3, 8
00224c  b3900018  bfloat2float.rn r1, r1
002250  33110118  bfloat2float.rn r2, r2
002254  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002258  9f100000  addli r1, zero, 1
00225c  7e8000e0  vmmov mr0, r1
002260  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002264  e300efd2  loadli.w r1,  -5776(r30)
002268  1f410000  addli r2, zero, 4
00226c  7e0001e0  vmmov mr0, r2
002270  1f011000  addli r2, zero, 8
002274  b3900018  bfloat2float.rn r1, r1
002278  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
00227c  e340efd2  loadli.w r1,  -5772(r30)
002280  b3900018  bfloat2float.rn r1, r1
002284  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002288  e300ffd2  loadli.w r1,  -5768(r30)
00228c  7e0001e0  vmmov mr0, r2
002290  1f012000  addli r2, zero, 16
002294  fe0101e0  vmmov mr3, r2
002298  1f014000  addli r2, zero, 32
00229c  b3900018  bfloat2float.rn r1, r1
0022a0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0022a4  e340ffd2  loadli.w r1,  -5764(r30)
0022a8  7e0001e0  vmmov mr0, r2
0022ac  1f018000  addli r2, zero, 64
0022b0  b3900018  bfloat2float.rn r1, r1
0022b4  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0022b8  e3000fd3  loadli.w r1,  -5760(r30)
0022bc  b3900018  bfloat2float.rn r1, r1
0022c0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0022c4  e3400fd3  loadli.w r1,  -5756(r30)
0022c8  7e0001e0  vmmov mr0, r2
0022cc  1f010001  addli r2, zero, 128
0022d0  b3900018  bfloat2float.rn r1, r1
0022d4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0022d8  e3001fd3  loadli.w r1,  -5752(r30)
0022dc  7e0001e0  vmmov mr0, r2
0022e0  1f010002  addli r2, zero, 256
0022e4  b3900018  bfloat2float.rn r1, r1
0022e8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0022ec  e3401fd3  loadli.w r1,  -5748(r30)
0022f0  7e0001e0  vmmov mr0, r2
0022f4  1f010008  addli r2, zero, 1024
0022f8  b3900018  bfloat2float.rn r1, r1
0022fc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002300  e3002fd3  loadli.w r1,  -5744(r30)
002304  b3900018  bfloat2float.rn r1, r1
002308  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00230c  e3402fd3  loadli.w r1,  -5740(r30)
002310  7e0101e0  vmmov mr2, r2
002314  1f010010  addli r2, zero, 2048
002318  7e0001e0  vmmov mr0, r2
00231c  1f010020  addli r2, zero, 4096
002320  b3900018  bfloat2float.rn r1, r1
002324  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002328  e3003fd3  loadli.w r1,  -5736(r30)
00232c  b3900018  bfloat2float.rn r1, r1
002330  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002334  e3403fd3  loadli.w r1,  -5732(r30)
002338  7e0001e0  vmmov mr0, r2
00233c  1f010040  addli r2, zero, 8192
002340  b3900018  bfloat2float.rn r1, r1
002344  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002348  e3004fd3  loadli.w r1,  -5728(r30)
00234c  7e0001e0  vmmov mr0, r2
002350  2b410000  lui r2, 4
002354  b3900018  bfloat2float.rn r1, r1
002358  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00235c  e3404fd3  loadli.w r1,  -5724(r30)
002360  7e0001e0  vmmov mr0, r2
002364  b3900018  bfloat2float.rn r1, r1
002368  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00236c  e3000fe0  loadli.w r1,  -4096(r30)
002370  7e8001e0  vmmov mr0, r3
002374  63015fd3  loadli.w r2,  -5720(r30)
002378  ab810000  lui r3, 8
00237c  b3900018  bfloat2float.rn r1, r1
002380  33110118  bfloat2float.rn r2, r2
002384  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002388  9f000fe0  addli r1, r30, -4096
00238c  00a00000  mfence { lm }
002390  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002394  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002398  9f100000  addli r1, zero, 1
00239c  7e8000e0  vmmov mr0, r1
0023a0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0023a4  e3405fd3  loadli.w r1,  -5716(r30)
0023a8  1f210000  addli r2, zero, 2
0023ac  7e0001e0  vmmov mr0, r2
0023b0  1f410000  addli r2, zero, 4
0023b4  b3900018  bfloat2float.rn r1, r1
0023b8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0023bc  e3006fd3  loadli.w r1,  -5712(r30)
0023c0  7e0001e0  vmmov mr0, r2
0023c4  1f011000  addli r2, zero, 8
0023c8  b3900018  bfloat2float.rn r1, r1
0023cc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0023d0  e3406fd3  loadli.w r1,  -5708(r30)
0023d4  7e0001e0  vmmov mr0, r2
0023d8  1f014000  addli r2, zero, 32
0023dc  b3900018  bfloat2float.rn r1, r1
0023e0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0023e4  e3007fd3  loadli.w r1,  -5704(r30)
0023e8  7e0001e0  vmmov mr0, r2
0023ec  1f018000  addli r2, zero, 64
0023f0  b3900018  bfloat2float.rn r1, r1
0023f4  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0023f8  e3407fd3  loadli.w r1,  -5700(r30)
0023fc  b3900018  bfloat2float.rn r1, r1
002400  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002404  e3008fd3  loadli.w r1,  -5696(r30)
002408  7e0001e0  vmmov mr0, r2
00240c  1f010001  addli r2, zero, 128
002410  b3900018  bfloat2float.rn r1, r1
002414  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002418  e3408fd3  loadli.w r1,  -5692(r30)
00241c  7e0001e0  vmmov mr0, r2
002420  1f010002  addli r2, zero, 256
002424  b3900018  bfloat2float.rn r1, r1
002428  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00242c  e3009fd3  loadli.w r1,  -5688(r30)
002430  7e0001e0  vmmov mr0, r2
002434  1f010004  addli r2, zero, 512
002438  b3900018  bfloat2float.rn r1, r1
00243c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002440  e3409fd3  loadli.w r1,  -5684(r30)
002444  7e0001e0  vmmov mr0, r2
002448  1f010010  addli r2, zero, 2048
00244c  b3900018  bfloat2float.rn r1, r1
002450  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002454  e300afd3  loadli.w r1,  -5680(r30)
002458  7e0001e0  vmmov mr0, r2
00245c  1f010020  addli r2, zero, 4096
002460  b3900018  bfloat2float.rn r1, r1
002464  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002468  e340afd3  loadli.w r1,  -5676(r30)
00246c  7e0101e0  vmmov mr2, r2
002470  1f010040  addli r2, zero, 8192
002474  b3900018  bfloat2float.rn r1, r1
002478  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00247c  e300bfd3  loadli.w r1,  -5672(r30)
002480  7e0001c0  vmmov mr0, mr2
002484  b3900018  bfloat2float.rn r1, r1
002488  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00248c  e340bfd3  loadli.w r1,  -5668(r30)
002490  7e0001e0  vmmov mr0, r2
002494  2b410000  lui r2, 4
002498  b3900018  bfloat2float.rn r1, r1
00249c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0024a0  e300cfd3  loadli.w r1,  -5664(r30)
0024a4  7e0001e0  vmmov mr0, r2
0024a8  b3900018  bfloat2float.rn r1, r1
0024ac  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0024b0  e3008fe3  loadli.w r1,  -3648(r30)
0024b4  7e8001e0  vmmov mr0, r3
0024b8  6341cfd3  loadli.w r2,  -5660(r30)
0024bc  ab810000  lui r3, 8
0024c0  b3900018  bfloat2float.rn r1, r1
0024c4  33110118  bfloat2float.rn r2, r2
0024c8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0024cc  9f008fe3  addli r1, r30, -3648
0024d0  00a00000  mfence { lm }
0024d4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0024d8  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0024dc  9f100000  addli r1, zero, 1
0024e0  7e8000e0  vmmov mr0, r1
0024e4  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0024e8  e300dfd3  loadli.w r1,  -5656(r30)
0024ec  1f210000  addli r2, zero, 2
0024f0  7e0001e0  vmmov mr0, r2
0024f4  1f410000  addli r2, zero, 4
0024f8  b3900018  bfloat2float.rn r1, r1
0024fc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002500  e340dfd3  loadli.w r1,  -5652(r30)
002504  7e0001e0  vmmov mr0, r2
002508  1f011000  addli r2, zero, 8
00250c  7e0101e0  vmmov mr2, r2
002510  1f014000  addli r2, zero, 32
002514  b3900018  bfloat2float.rn r1, r1
002518  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00251c  e300efd3  loadli.w r1,  -5648(r30)
002520  7e0001c0  vmmov mr0, mr2
002524  7e0101e0  vmmov mr2, r2
002528  1f018000  addli r2, zero, 64
00252c  b3900018  bfloat2float.rn r1, r1
002530  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002534  e340efd3  loadli.w r1,  -5644(r30)
002538  b3900018  bfloat2float.rn r1, r1
00253c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002540  e300ffd3  loadli.w r1,  -5640(r30)
002544  7e0001c0  vmmov mr0, mr2
002548  b3900018  bfloat2float.rn r1, r1
00254c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002550  e340ffd3  loadli.w r1,  -5636(r30)
002554  7e0001e0  vmmov mr0, r2
002558  1f010001  addli r2, zero, 128
00255c  7e0101e0  vmmov mr2, r2
002560  1f010002  addli r2, zero, 256
002564  b3900018  bfloat2float.rn r1, r1
002568  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00256c  e3000fd4  loadli.w r1,  -5632(r30)
002570  7e0001c0  vmmov mr0, mr2
002574  7e0101e0  vmmov mr2, r2
002578  1f010004  addli r2, zero, 512
00257c  b3900018  bfloat2float.rn r1, r1
002580  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002584  e3400fd4  loadli.w r1,  -5628(r30)
002588  7e0001c0  vmmov mr0, mr2
00258c  7e0101e0  vmmov mr2, r2
002590  1f010008  addli r2, zero, 1024
002594  b3900018  bfloat2float.rn r1, r1
002598  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00259c  e3001fd4  loadli.w r1,  -5624(r30)
0025a0  7e0001e0  vmmov mr0, r2
0025a4  1f010010  addli r2, zero, 2048
0025a8  b3900018  bfloat2float.rn r1, r1
0025ac  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0025b0  e3401fd4  loadli.w r1,  -5620(r30)
0025b4  b3900018  bfloat2float.rn r1, r1
0025b8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0025bc  e3002fd4  loadli.w r1,  -5616(r30)
0025c0  7e0001e0  vmmov mr0, r2
0025c4  1f010020  addli r2, zero, 4096
0025c8  fe0101e0  vmmov mr3, r2
0025cc  1f010040  addli r2, zero, 8192
0025d0  b3900018  bfloat2float.rn r1, r1
0025d4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0025d8  e3402fd4  loadli.w r1,  -5612(r30)
0025dc  7e0001e0  vmmov mr0, r2
0025e0  2b410000  lui r2, 4
0025e4  b3900018  bfloat2float.rn r1, r1
0025e8  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0025ec  e3003fd4  loadli.w r1,  -5608(r30)
0025f0  b3900018  bfloat2float.rn r1, r1
0025f4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0025f8  e3403fd4  loadli.w r1,  -5604(r30)
0025fc  7e0001e0  vmmov mr0, r2
002600  b3900018  bfloat2float.rn r1, r1
002604  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002608  e3008fe4  loadli.w r1,  -3520(r30)
00260c  7e8001e0  vmmov mr0, r3
002610  63014fd4  loadli.w r2,  -5600(r30)
002614  ab810000  lui r3, 8
002618  b3900018  bfloat2float.rn r1, r1
00261c  33110118  bfloat2float.rn r2, r2
002620  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002624  9f008fe4  addli r1, r30, -3520
002628  00a00000  mfence { lm }
00262c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002630  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002634  9f100000  addli r1, zero, 1
002638  7e8000e0  vmmov mr0, r1
00263c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002640  e3404fd4  loadli.w r1,  -5596(r30)
002644  1f210000  addli r2, zero, 2
002648  7e0001e0  vmmov mr0, r2
00264c  1f410000  addli r2, zero, 4
002650  b3900018  bfloat2float.rn r1, r1
002654  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002658  e3005fd4  loadli.w r1,  -5592(r30)
00265c  7e0001e0  vmmov mr0, r2
002660  1f011000  addli r2, zero, 8
002664  b3900018  bfloat2float.rn r1, r1
002668  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00266c  e3405fd4  loadli.w r1,  -5588(r30)
002670  7e0001e0  vmmov mr0, r2
002674  1f012000  addli r2, zero, 16
002678  b3900018  bfloat2float.rn r1, r1
00267c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002680  e3006fd4  loadli.w r1,  -5584(r30)
002684  7e0001e0  vmmov mr0, r2
002688  1f014000  addli r2, zero, 32
00268c  b3900018  bfloat2float.rn r1, r1
002690  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002694  e3406fd4  loadli.w r1,  -5580(r30)
002698  7e0001e0  vmmov mr0, r2
00269c  1f018000  addli r2, zero, 64
0026a0  b3900018  bfloat2float.rn r1, r1
0026a4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0026a8  e3007fd4  loadli.w r1,  -5576(r30)
0026ac  7e0001e0  vmmov mr0, r2
0026b0  1f010001  addli r2, zero, 128
0026b4  b3900018  bfloat2float.rn r1, r1
0026b8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0026bc  e3407fd4  loadli.w r1,  -5572(r30)
0026c0  7e0001e0  vmmov mr0, r2
0026c4  1f010002  addli r2, zero, 256
0026c8  b3900018  bfloat2float.rn r1, r1
0026cc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0026d0  e3008fd4  loadli.w r1,  -5568(r30)
0026d4  7e0001e0  vmmov mr0, r2
0026d8  1f010008  addli r2, zero, 1024
0026dc  b3900018  bfloat2float.rn r1, r1
0026e0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0026e4  e3408fd4  loadli.w r1,  -5564(r30)
0026e8  7e0001e0  vmmov mr0, r2
0026ec  1f010010  addli r2, zero, 2048
0026f0  b3900018  bfloat2float.rn r1, r1
0026f4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0026f8  e3009fd4  loadli.w r1,  -5560(r30)
0026fc  b3900018  bfloat2float.rn r1, r1
002700  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002704  e3409fd4  loadli.w r1,  -5556(r30)
002708  7e0001e0  vmmov mr0, r2
00270c  1f010040  addli r2, zero, 8192
002710  b3900018  bfloat2float.rn r1, r1
002714  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002718  e300afd4  loadli.w r1,  -5552(r30)
00271c  7e0001e0  vmmov mr0, r2
002720  2b410000  lui r2, 4
002724  b3900018  bfloat2float.rn r1, r1
002728  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
00272c  e340afd4  loadli.w r1,  -5548(r30)
002730  b3900018  bfloat2float.rn r1, r1
002734  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002738  e300bfd4  loadli.w r1,  -5544(r30)
00273c  7e0001e0  vmmov mr0, r2
002740  b3900018  bfloat2float.rn r1, r1
002744  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002748  e3008fe5  loadli.w r1,  -3392(r30)
00274c  7e8001e0  vmmov mr0, r3
002750  6341bfd4  loadli.w r2,  -5540(r30)
002754  ab810000  lui r3, 8
002758  b3900018  bfloat2float.rn r1, r1
00275c  33110118  bfloat2float.rn r2, r2
002760  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002764  9f008fe5  addli r1, r30, -3392
002768  00a00000  mfence { lm }
00276c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002770  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002774  9f100000  addli r1, zero, 1
002778  7e8000e0  vmmov mr0, r1
00277c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002780  e300cfd4  loadli.w r1,  -5536(r30)
002784  1f210000  addli r2, zero, 2
002788  7e0001e0  vmmov mr0, r2
00278c  1f410000  addli r2, zero, 4
002790  b3900018  bfloat2float.rn r1, r1
002794  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002798  e340cfd4  loadli.w r1,  -5532(r30)
00279c  7e0001e0  vmmov mr0, r2
0027a0  1f011000  addli r2, zero, 8
0027a4  b3900018  bfloat2float.rn r1, r1
0027a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027ac  e300dfd4  loadli.w r1,  -5528(r30)
0027b0  7e0001e0  vmmov mr0, r2
0027b4  1f012000  addli r2, zero, 16
0027b8  b3900018  bfloat2float.rn r1, r1
0027bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027c0  e340dfd4  loadli.w r1,  -5524(r30)
0027c4  7e0001e0  vmmov mr0, r2
0027c8  1f014000  addli r2, zero, 32
0027cc  b3900018  bfloat2float.rn r1, r1
0027d0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027d4  e300efd4  loadli.w r1,  -5520(r30)
0027d8  7e0001e0  vmmov mr0, r2
0027dc  1f018000  addli r2, zero, 64
0027e0  b3900018  bfloat2float.rn r1, r1
0027e4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027e8  e340efd4  loadli.w r1,  -5516(r30)
0027ec  7e0001e0  vmmov mr0, r2
0027f0  1f010001  addli r2, zero, 128
0027f4  b3900018  bfloat2float.rn r1, r1
0027f8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027fc  e300ffd4  loadli.w r1,  -5512(r30)
002800  7e0001e0  vmmov mr0, r2
002804  1f010002  addli r2, zero, 256
002808  b3900018  bfloat2float.rn r1, r1
00280c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002810  e340ffd4  loadli.w r1,  -5508(r30)
002814  7e0001e0  vmmov mr0, r2
002818  1f010008  addli r2, zero, 1024
00281c  b3900018  bfloat2float.rn r1, r1
002820  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002824  e3000fd5  loadli.w r1,  -5504(r30)
002828  7e0001e0  vmmov mr0, r2
00282c  1f010010  addli r2, zero, 2048
002830  b3900018  bfloat2float.rn r1, r1
002834  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002838  e3400fd5  loadli.w r1,  -5500(r30)
00283c  b3900018  bfloat2float.rn r1, r1
002840  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002844  e3001fd5  loadli.w r1,  -5496(r30)
002848  7e0001e0  vmmov mr0, r2
00284c  1f010040  addli r2, zero, 8192
002850  b3900018  bfloat2float.rn r1, r1
002854  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002858  e3401fd5  loadli.w r1,  -5492(r30)
00285c  7e0001e0  vmmov mr0, r2
002860  2b410000  lui r2, 4
002864  b3900018  bfloat2float.rn r1, r1
002868  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
00286c  e3002fd5  loadli.w r1,  -5488(r30)
002870  b3900018  bfloat2float.rn r1, r1
002874  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002878  e3402fd5  loadli.w r1,  -5484(r30)
00287c  7e0001e0  vmmov mr0, r2
002880  b3900018  bfloat2float.rn r1, r1
002884  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002888  e3008fe6  loadli.w r1,  -3264(r30)
00288c  7e8001e0  vmmov mr0, r3
002890  63013fd5  loadli.w r2,  -5480(r30)
002894  ab810000  lui r3, 8
002898  b3900018  bfloat2float.rn r1, r1
00289c  33110118  bfloat2float.rn r2, r2
0028a0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0028a4  9f008fe6  addli r1, r30, -3264
0028a8  00a00000  mfence { lm }
0028ac  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0028b0  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0028b4  9f100000  addli r1, zero, 1
0028b8  7e8000e0  vmmov mr0, r1
0028bc  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0028c0  e3403fd5  loadli.w r1,  -5476(r30)
0028c4  1f210000  addli r2, zero, 2
0028c8  7e0001e0  vmmov mr0, r2
0028cc  1f410000  addli r2, zero, 4
0028d0  b3900018  bfloat2float.rn r1, r1
0028d4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0028d8  e3004fd5  loadli.w r1,  -5472(r30)
0028dc  7e0001e0  vmmov mr0, r2
0028e0  1f011000  addli r2, zero, 8
0028e4  b3900018  bfloat2float.rn r1, r1
0028e8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0028ec  e3404fd5  loadli.w r1,  -5468(r30)
0028f0  7e0001e0  vmmov mr0, r2
0028f4  1f012000  addli r2, zero, 16
0028f8  b3900018  bfloat2float.rn r1, r1
0028fc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002900  e3005fd5  loadli.w r1,  -5464(r30)
002904  7e0001e0  vmmov mr0, r2
002908  1f014000  addli r2, zero, 32
00290c  b3900018  bfloat2float.rn r1, r1
002910  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002914  e3405fd5  loadli.w r1,  -5460(r30)
002918  7e0001e0  vmmov mr0, r2
00291c  1f018000  addli r2, zero, 64
002920  b3900018  bfloat2float.rn r1, r1
002924  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002928  e3006fd5  loadli.w r1,  -5456(r30)
00292c  7e0001e0  vmmov mr0, r2
002930  1f010001  addli r2, zero, 128
002934  b3900018  bfloat2float.rn r1, r1
002938  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00293c  e3406fd5  loadli.w r1,  -5452(r30)
002940  7e0001e0  vmmov mr0, r2
002944  1f010002  addli r2, zero, 256
002948  b3900018  bfloat2float.rn r1, r1
00294c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002950  e3007fd5  loadli.w r1,  -5448(r30)
002954  7e0001e0  vmmov mr0, r2
002958  1f010008  addli r2, zero, 1024
00295c  b3900018  bfloat2float.rn r1, r1
002960  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002964  e3407fd5  loadli.w r1,  -5444(r30)
002968  b3900018  bfloat2float.rn r1, r1
00296c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002970  e3008fd5  loadli.w r1,  -5440(r30)
002974  7e0101e0  vmmov mr2, r2
002978  1f010010  addli r2, zero, 2048
00297c  7e0001e0  vmmov mr0, r2
002980  1f010040  addli r2, zero, 8192
002984  b3900018  bfloat2float.rn r1, r1
002988  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00298c  e3408fd5  loadli.w r1,  -5436(r30)
002990  b3900018  bfloat2float.rn r1, r1
002994  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002998  e3009fd5  loadli.w r1,  -5432(r30)
00299c  7e0001e0  vmmov mr0, r2
0029a0  2b410000  lui r2, 4
0029a4  b3900018  bfloat2float.rn r1, r1
0029a8  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0029ac  e3409fd5  loadli.w r1,  -5428(r30)
0029b0  b3900018  bfloat2float.rn r1, r1
0029b4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0029b8  e300afd5  loadli.w r1,  -5424(r30)
0029bc  7e0001e0  vmmov mr0, r2
0029c0  b3900018  bfloat2float.rn r1, r1
0029c4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0029c8  e3008fe7  loadli.w r1,  -3136(r30)
0029cc  7e8001e0  vmmov mr0, r3
0029d0  6341afd5  loadli.w r2,  -5420(r30)
0029d4  ab810000  lui r3, 8
0029d8  b3900018  bfloat2float.rn r1, r1
0029dc  33110118  bfloat2float.rn r2, r2
0029e0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0029e4  9f008fe7  addli r1, r30, -3136
0029e8  00a00000  mfence { lm }
0029ec  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0029f0  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0029f4  9f100000  addli r1, zero, 1
0029f8  7e8100e0  vmmov mr2, r1
0029fc  ea213134  vor.u.mh vr3{mr2}, r2, vr3
002a00  e300bfd5  loadli.w r1,  -5416(r30)
002a04  1f210000  addli r2, zero, 2
002a08  7e0001e0  vmmov mr0, r2
002a0c  1f410000  addli r2, zero, 4
002a10  b3900018  bfloat2float.rn r1, r1
002a14  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a18  e340bfd5  loadli.w r1,  -5412(r30)
002a1c  7e0001e0  vmmov mr0, r2
002a20  1f011000  addli r2, zero, 8
002a24  b3900018  bfloat2float.rn r1, r1
002a28  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a2c  e300cfd5  loadli.w r1,  -5408(r30)
002a30  7e0001e0  vmmov mr0, r2
002a34  1f012000  addli r2, zero, 16
002a38  b3900018  bfloat2float.rn r1, r1
002a3c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a40  e340cfd5  loadli.w r1,  -5404(r30)
002a44  7e0001e0  vmmov mr0, r2
002a48  1f014000  addli r2, zero, 32
002a4c  b3900018  bfloat2float.rn r1, r1
002a50  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a54  e300dfd5  loadli.w r1,  -5400(r30)
002a58  7e0001e0  vmmov mr0, r2
002a5c  1f018000  addli r2, zero, 64
002a60  b3900018  bfloat2float.rn r1, r1
002a64  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a68  e340dfd5  loadli.w r1,  -5396(r30)
002a6c  7e0001e0  vmmov mr0, r2
002a70  1f010001  addli r2, zero, 128
002a74  b3900018  bfloat2float.rn r1, r1
002a78  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a7c  e300efd5  loadli.w r1,  -5392(r30)
002a80  7e0001e0  vmmov mr0, r2
002a84  1f010002  addli r2, zero, 256
002a88  b3900018  bfloat2float.rn r1, r1
002a8c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a90  e340efd5  loadli.w r1,  -5388(r30)
002a94  7e0001e0  vmmov mr0, r2
002a98  1f010004  addli r2, zero, 512
002a9c  b3900018  bfloat2float.rn r1, r1
002aa0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002aa4  e300ffd5  loadli.w r1,  -5384(r30)
002aa8  7e0001e0  vmmov mr0, r2
002aac  1f010008  addli r2, zero, 1024
002ab0  b3900018  bfloat2float.rn r1, r1
002ab4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ab8  e340ffd5  loadli.w r1,  -5380(r30)
002abc  7e0001e0  vmmov mr0, r2
002ac0  1f010010  addli r2, zero, 2048
002ac4  b3900018  bfloat2float.rn r1, r1
002ac8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002acc  e3000fd6  loadli.w r1,  -5376(r30)
002ad0  7e0001e0  vmmov mr0, r2
002ad4  1f010040  addli r2, zero, 8192
002ad8  b3900018  bfloat2float.rn r1, r1
002adc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ae0  e3400fd6  loadli.w r1,  -5372(r30)
002ae4  7e0001e0  vmmov mr0, r2
002ae8  2b410000  lui r2, 4
002aec  b3900018  bfloat2float.rn r1, r1
002af0  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002af4  e3001fd6  loadli.w r1,  -5368(r30)
002af8  b3900018  bfloat2float.rn r1, r1
002afc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b00  e3401fd6  loadli.w r1,  -5364(r30)
002b04  7e0001e0  vmmov mr0, r2
002b08  b3900018  bfloat2float.rn r1, r1
002b0c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b10  e3008fe8  loadli.w r1,  -3008(r30)
002b14  7e8001e0  vmmov mr0, r3
002b18  63012fd6  loadli.w r2,  -5360(r30)
002b1c  ab810000  lui r3, 8
002b20  b3900018  bfloat2float.rn r1, r1
002b24  33110118  bfloat2float.rn r2, r2
002b28  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b2c  9f008fe8  addli r1, r30, -3008
002b30  00a00000  mfence { lm }
002b34  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002b38  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002b3c  ea213134  vor.u.mh vr3{mr2}, r2, vr3
002b40  e3402fd6  loadli.w r1,  -5356(r30)
002b44  1f210000  addli r2, zero, 2
002b48  7e0101e0  vmmov mr2, r2
002b4c  1f410000  addli r2, zero, 4
002b50  b3900018  bfloat2float.rn r1, r1
002b54  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002b58  e3003fd6  loadli.w r1,  -5352(r30)
002b5c  7e0101e0  vmmov mr2, r2
002b60  1f011000  addli r2, zero, 8
002b64  b3900018  bfloat2float.rn r1, r1
002b68  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002b6c  e3403fd6  loadli.w r1,  -5348(r30)
002b70  7e0101e0  vmmov mr2, r2
002b74  1f012000  addli r2, zero, 16
002b78  b3900018  bfloat2float.rn r1, r1
002b7c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002b80  e3004fd6  loadli.w r1,  -5344(r30)
002b84  7e0101e0  vmmov mr2, r2
002b88  1f014000  addli r2, zero, 32
002b8c  b3900018  bfloat2float.rn r1, r1
002b90  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002b94  e3404fd6  loadli.w r1,  -5340(r30)
002b98  7e0101e0  vmmov mr2, r2
002b9c  1f018000  addli r2, zero, 64
002ba0  b3900018  bfloat2float.rn r1, r1
002ba4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002ba8  e3005fd6  loadli.w r1,  -5336(r30)
002bac  7e0101e0  vmmov mr2, r2
002bb0  1f010001  addli r2, zero, 128
002bb4  b3900018  bfloat2float.rn r1, r1
002bb8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002bbc  e3405fd6  loadli.w r1,  -5332(r30)
002bc0  7e0101e0  vmmov mr2, r2
002bc4  1f010002  addli r2, zero, 256
002bc8  b3900018  bfloat2float.rn r1, r1
002bcc  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002bd0  e3006fd6  loadli.w r1,  -5328(r30)
002bd4  7e0101e0  vmmov mr2, r2
002bd8  1f010004  addli r2, zero, 512
002bdc  b3900018  bfloat2float.rn r1, r1
002be0  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002be4  e3406fd6  loadli.w r1,  -5324(r30)
002be8  7e0101e0  vmmov mr2, r2
002bec  1f010008  addli r2, zero, 1024
002bf0  b3900018  bfloat2float.rn r1, r1
002bf4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002bf8  e3007fd6  loadli.w r1,  -5320(r30)
002bfc  7e0101e0  vmmov mr2, r2
002c00  1f010010  addli r2, zero, 2048
002c04  b3900018  bfloat2float.rn r1, r1
002c08  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002c0c  e3407fd6  loadli.w r1,  -5316(r30)
002c10  7e0101e0  vmmov mr2, r2
002c14  1f010040  addli r2, zero, 8192
002c18  b3900018  bfloat2float.rn r1, r1
002c1c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002c20  e3008fd6  loadli.w r1,  -5312(r30)
002c24  7e0101e0  vmmov mr2, r2
002c28  2b410000  lui r2, 4
002c2c  b3900018  bfloat2float.rn r1, r1
002c30  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002c34  e3408fd6  loadli.w r1,  -5308(r30)
002c38  b3900018  bfloat2float.rn r1, r1
002c3c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002c40  e3009fd6  loadli.w r1,  -5304(r30)
002c44  7e0101e0  vmmov mr2, r2
002c48  b3900018  bfloat2float.rn r1, r1
002c4c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002c50  e3000fea  loadli.w r1,  -2816(r30)
002c54  63419fd6  loadli.w r2,  -5300(r30)
002c58  b3900018  bfloat2float.rn r1, r1
002c5c  33110118  bfloat2float.rn r2, r2
002c60  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002c64  9f000fea  addli r1, r30, -2816
002c68  7e0100c0  vmmov mr2, mr0
002c6c  00a00000  mfence { lm }
002c70  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002c74  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002c78  9f100000  addli r1, zero, 1
002c7c  7e8000e0  vmmov mr0, r1
002c80  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002c84  e300afd6  loadli.w r1,  -5296(r30)
002c88  1f210000  addli r2, zero, 2
002c8c  7e0001e0  vmmov mr0, r2
002c90  1f410000  addli r2, zero, 4
002c94  b3900018  bfloat2float.rn r1, r1
002c98  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002c9c  e340afd6  loadli.w r1,  -5292(r30)
002ca0  7e0001e0  vmmov mr0, r2
002ca4  1f011000  addli r2, zero, 8
002ca8  b3900018  bfloat2float.rn r1, r1
002cac  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002cb0  e300bfd6  loadli.w r1,  -5288(r30)
002cb4  7e0001e0  vmmov mr0, r2
002cb8  1f012000  addli r2, zero, 16
002cbc  b3900018  bfloat2float.rn r1, r1
002cc0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002cc4  e340bfd6  loadli.w r1,  -5284(r30)
002cc8  7e0001e0  vmmov mr0, r2
002ccc  1f014000  addli r2, zero, 32
002cd0  b3900018  bfloat2float.rn r1, r1
002cd4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002cd8  e300cfd6  loadli.w r1,  -5280(r30)
002cdc  7e0001e0  vmmov mr0, r2
002ce0  1f018000  addli r2, zero, 64
002ce4  b3900018  bfloat2float.rn r1, r1
002ce8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002cec  e340cfd6  loadli.w r1,  -5276(r30)
002cf0  7e0001e0  vmmov mr0, r2
002cf4  1f010001  addli r2, zero, 128
002cf8  b3900018  bfloat2float.rn r1, r1
002cfc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d00  e300dfd6  loadli.w r1,  -5272(r30)
002d04  7e0001e0  vmmov mr0, r2
002d08  1f010002  addli r2, zero, 256
002d0c  b3900018  bfloat2float.rn r1, r1
002d10  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d14  e340dfd6  loadli.w r1,  -5268(r30)
002d18  7e0001e0  vmmov mr0, r2
002d1c  1f010004  addli r2, zero, 512
002d20  b3900018  bfloat2float.rn r1, r1
002d24  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d28  e300efd6  loadli.w r1,  -5264(r30)
002d2c  7e0001e0  vmmov mr0, r2
002d30  1f010008  addli r2, zero, 1024
002d34  b3900018  bfloat2float.rn r1, r1
002d38  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d3c  e340efd6  loadli.w r1,  -5260(r30)
002d40  7e0001e0  vmmov mr0, r2
002d44  1f010010  addli r2, zero, 2048
002d48  b3900018  bfloat2float.rn r1, r1
002d4c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d50  e300ffd6  loadli.w r1,  -5256(r30)
002d54  7e0001e0  vmmov mr0, r2
002d58  1f010040  addli r2, zero, 8192
002d5c  b3900018  bfloat2float.rn r1, r1
002d60  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d64  e340ffd6  loadli.w r1,  -5252(r30)
002d68  7e0001e0  vmmov mr0, r2
002d6c  2b410000  lui r2, 4
002d70  b3900018  bfloat2float.rn r1, r1
002d74  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002d78  e3000fd7  loadli.w r1,  -5248(r30)
002d7c  b3900018  bfloat2float.rn r1, r1
002d80  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d84  e3400fd7  loadli.w r1,  -5244(r30)
002d88  7e0001e0  vmmov mr0, r2
002d8c  b3900018  bfloat2float.rn r1, r1
002d90  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d94  e3000feb  loadli.w r1,  -2688(r30)
002d98  63011fd7  loadli.w r2,  -5240(r30)
002d9c  b3900018  bfloat2float.rn r1, r1
002da0  33110118  bfloat2float.rn r2, r2
002da4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002da8  9f000feb  addli r1, r30, -2688
002dac  00a00000  mfence { lm }
002db0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002db4  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002db8  9f100000  addli r1, zero, 1
002dbc  7e8000e0  vmmov mr0, r1
002dc0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002dc4  e3401fd7  loadli.w r1,  -5236(r30)
002dc8  1f210000  addli r2, zero, 2
002dcc  7e0001e0  vmmov mr0, r2
002dd0  1f410000  addli r2, zero, 4
002dd4  b3900018  bfloat2float.rn r1, r1
002dd8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ddc  e3002fd7  loadli.w r1,  -5232(r30)
002de0  7e0001e0  vmmov mr0, r2
002de4  1f011000  addli r2, zero, 8
002de8  b3900018  bfloat2float.rn r1, r1
002dec  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002df0  e3402fd7  loadli.w r1,  -5228(r30)
002df4  7e0001e0  vmmov mr0, r2
002df8  1f012000  addli r2, zero, 16
002dfc  b3900018  bfloat2float.rn r1, r1
002e00  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e04  e3003fd7  loadli.w r1,  -5224(r30)
002e08  7e0001e0  vmmov mr0, r2
002e0c  1f014000  addli r2, zero, 32
002e10  b3900018  bfloat2float.rn r1, r1
002e14  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e18  e3403fd7  loadli.w r1,  -5220(r30)
002e1c  7e0001e0  vmmov mr0, r2
002e20  1f018000  addli r2, zero, 64
002e24  b3900018  bfloat2float.rn r1, r1
002e28  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e2c  e3004fd7  loadli.w r1,  -5216(r30)
002e30  7e0001e0  vmmov mr0, r2
002e34  1f010001  addli r2, zero, 128
002e38  b3900018  bfloat2float.rn r1, r1
002e3c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e40  e3404fd7  loadli.w r1,  -5212(r30)
002e44  7e0001e0  vmmov mr0, r2
002e48  1f010002  addli r2, zero, 256
002e4c  b3900018  bfloat2float.rn r1, r1
002e50  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e54  e3005fd7  loadli.w r1,  -5208(r30)
002e58  7e0001e0  vmmov mr0, r2
002e5c  1f010004  addli r2, zero, 512
002e60  b3900018  bfloat2float.rn r1, r1
002e64  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e68  e3405fd7  loadli.w r1,  -5204(r30)
002e6c  7e0001e0  vmmov mr0, r2
002e70  1f010008  addli r2, zero, 1024
002e74  b3900018  bfloat2float.rn r1, r1
002e78  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e7c  e3006fd7  loadli.w r1,  -5200(r30)
002e80  7e0001e0  vmmov mr0, r2
002e84  1f010010  addli r2, zero, 2048
002e88  b3900018  bfloat2float.rn r1, r1
002e8c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e90  e3406fd7  loadli.w r1,  -5196(r30)
002e94  7e0001e0  vmmov mr0, r2
002e98  1f010040  addli r2, zero, 8192
002e9c  b3900018  bfloat2float.rn r1, r1
002ea0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ea4  e3007fd7  loadli.w r1,  -5192(r30)
002ea8  7e0001e0  vmmov mr0, r2
002eac  2b410000  lui r2, 4
002eb0  b3900018  bfloat2float.rn r1, r1
002eb4  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002eb8  e3407fd7  loadli.w r1,  -5188(r30)
002ebc  b3900018  bfloat2float.rn r1, r1
002ec0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ec4  e3008fd7  loadli.w r1,  -5184(r30)
002ec8  7e0001e0  vmmov mr0, r2
002ecc  b3900018  bfloat2float.rn r1, r1
002ed0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ed4  e3000fec  loadli.w r1,  -2560(r30)
002ed8  63418fd7  loadli.w r2,  -5180(r30)
002edc  b3900018  bfloat2float.rn r1, r1
002ee0  33110118  bfloat2float.rn r2, r2
002ee4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002ee8  9f000fec  addli r1, r30, -2560
002eec  00a00000  mfence { lm }
002ef0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002ef4  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002ef8  9f100000  addli r1, zero, 1
002efc  7e8000e0  vmmov mr0, r1
002f00  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002f04  e3009fd7  loadli.w r1,  -5176(r30)
002f08  1f210000  addli r2, zero, 2
002f0c  7e0001e0  vmmov mr0, r2
002f10  1f410000  addli r2, zero, 4
002f14  b3900018  bfloat2float.rn r1, r1
002f18  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f1c  e3409fd7  loadli.w r1,  -5172(r30)
002f20  7e0001e0  vmmov mr0, r2
002f24  1f011000  addli r2, zero, 8
002f28  b3900018  bfloat2float.rn r1, r1
002f2c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f30  e300afd7  loadli.w r1,  -5168(r30)
002f34  7e0001e0  vmmov mr0, r2
002f38  1f012000  addli r2, zero, 16
002f3c  b3900018  bfloat2float.rn r1, r1
002f40  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f44  e340afd7  loadli.w r1,  -5164(r30)
002f48  7e0001e0  vmmov mr0, r2
002f4c  1f014000  addli r2, zero, 32
002f50  b3900018  bfloat2float.rn r1, r1
002f54  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f58  e300bfd7  loadli.w r1,  -5160(r30)
002f5c  7e0001e0  vmmov mr0, r2
002f60  1f018000  addli r2, zero, 64
002f64  b3900018  bfloat2float.rn r1, r1
002f68  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f6c  e340bfd7  loadli.w r1,  -5156(r30)
002f70  7e0001e0  vmmov mr0, r2
002f74  1f010001  addli r2, zero, 128
002f78  b3900018  bfloat2float.rn r1, r1
002f7c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f80  e300cfd7  loadli.w r1,  -5152(r30)
002f84  7e0001e0  vmmov mr0, r2
002f88  1f010002  addli r2, zero, 256
002f8c  b3900018  bfloat2float.rn r1, r1
002f90  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f94  e340cfd7  loadli.w r1,  -5148(r30)
002f98  7e0001e0  vmmov mr0, r2
002f9c  1f010004  addli r2, zero, 512
002fa0  b3900018  bfloat2float.rn r1, r1
002fa4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fa8  e300dfd7  loadli.w r1,  -5144(r30)
002fac  7e0001e0  vmmov mr0, r2
002fb0  1f010008  addli r2, zero, 1024
002fb4  b3900018  bfloat2float.rn r1, r1
002fb8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fbc  e340dfd7  loadli.w r1,  -5140(r30)
002fc0  7e0001e0  vmmov mr0, r2
002fc4  1f010010  addli r2, zero, 2048
002fc8  b3900018  bfloat2float.rn r1, r1
002fcc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fd0  e300efd7  loadli.w r1,  -5136(r30)
002fd4  7e0001e0  vmmov mr0, r2
002fd8  1f010040  addli r2, zero, 8192
002fdc  b3900018  bfloat2float.rn r1, r1
002fe0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fe4  e340efd7  loadli.w r1,  -5132(r30)
002fe8  7e0001e0  vmmov mr0, r2
002fec  2b410000  lui r2, 4
002ff0  b3900018  bfloat2float.rn r1, r1
002ff4  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002ff8  e300ffd7  loadli.w r1,  -5128(r30)
002ffc  b3900018  bfloat2float.rn r1, r1
003000  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003004  e340ffd7  loadli.w r1,  -5124(r30)
003008  7e0001e0  vmmov mr0, r2
00300c  b3900018  bfloat2float.rn r1, r1
003010  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003014  e3000fed  loadli.w r1,  -2432(r30)
003018  63010fd8  loadli.w r2,  -5120(r30)
00301c  b3900018  bfloat2float.rn r1, r1
003020  33110118  bfloat2float.rn r2, r2
003024  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
003028  9f000fed  addli r1, r30, -2432
00302c  00a00000  mfence { lm }
003030  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
003034  92312002  vadd.s.mz vr3{mr1}, zero, vr2
003038  9f100000  addli r1, zero, 1
00303c  7e8000e0  vmmov mr0, r1
003040  ea213130  vor.u.mh vr3{mr0}, r2, vr3
003044  e3400fd8  loadli.w r1,  -5116(r30)
003048  1f210000  addli r2, zero, 2
00304c  7e0001e0  vmmov mr0, r2
003050  1f410000  addli r2, zero, 4
003054  b3900018  bfloat2float.rn r1, r1
003058  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00305c  e3001fd8  loadli.w r1,  -5112(r30)
003060  7e0001e0  vmmov mr0, r2
003064  1f011000  addli r2, zero, 8
003068  b3900018  bfloat2float.rn r1, r1
00306c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003070  e3401fd8  loadli.w r1,  -5108(r30)
003074  7e0001e0  vmmov mr0, r2
003078  1f012000  addli r2, zero, 16
00307c  b3900018  bfloat2float.rn r1, r1
003080  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003084  e3002fd8  loadli.w r1,  -5104(r30)
003088  7e0001e0  vmmov mr0, r2
00308c  1f014000  addli r2, zero, 32
003090  b3900018  bfloat2float.rn r1, r1
003094  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003098  e3402fd8  loadli.w r1,  -5100(r30)
00309c  7e0001e0  vmmov mr0, r2
0030a0  1f018000  addli r2, zero, 64
0030a4  b3900018  bfloat2float.rn r1, r1
0030a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030ac  e3003fd8  loadli.w r1,  -5096(r30)
0030b0  7e0001e0  vmmov mr0, r2
0030b4  1f010001  addli r2, zero, 128
0030b8  b3900018  bfloat2float.rn r1, r1
0030bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030c0  e3403fd8  loadli.w r1,  -5092(r30)
0030c4  7e0001e0  vmmov mr0, r2
0030c8  1f010002  addli r2, zero, 256
0030cc  b3900018  bfloat2float.rn r1, r1
0030d0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030d4  e3004fd8  loadli.w r1,  -5088(r30)
0030d8  7e0001e0  vmmov mr0, r2
0030dc  1f010004  addli r2, zero, 512
0030e0  b3900018  bfloat2float.rn r1, r1
0030e4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030e8  e3404fd8  loadli.w r1,  -5084(r30)
0030ec  7e0001e0  vmmov mr0, r2
0030f0  1f010008  addli r2, zero, 1024
0030f4  b3900018  bfloat2float.rn r1, r1
0030f8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030fc  e3005fd8  loadli.w r1,  -5080(r30)
003100  7e0001e0  vmmov mr0, r2
003104  1f010010  addli r2, zero, 2048
003108  b3900018  bfloat2float.rn r1, r1
00310c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003110  e3405fd8  loadli.w r1,  -5076(r30)
003114  7e0001e0  vmmov mr0, r2
003118  1f010040  addli r2, zero, 8192
00311c  b3900018  bfloat2float.rn r1, r1
003120  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003124  e3006fd8  loadli.w r1,  -5072(r30)
003128  7e0001e0  vmmov mr0, r2
00312c  2b410000  lui r2, 4
003130  b3900018  bfloat2float.rn r1, r1
003134  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
003138  e3406fd8  loadli.w r1,  -5068(r30)
00313c  b3900018  bfloat2float.rn r1, r1
003140  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003144  e3007fd8  loadli.w r1,  -5064(r30)
003148  7e0001e0  vmmov mr0, r2
00314c  b3900018  bfloat2float.rn r1, r1
003150  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003154  e3008fd8  loadli.w r1,  -5056(r30)
003158  63417fd8  loadli.w r2,  -5060(r30)
00315c  b3900018  bfloat2float.rn r1, r1
003160  33110118  bfloat2float.rn r2, r2
003164  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
003168  9f008fed  addli r1, r30, -2368
00316c  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
003170  92312002  vadd.s.mz vr3{mr1}, zero, vr2
003174  9f100000  addli r1, zero, 1
003178  7e8000e0  vmmov mr0, r1
00317c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
003180  e3408fd8  loadli.w r1,  -5052(r30)
003184  1f210000  addli r2, zero, 2
003188  7e0001e0  vmmov mr0, r2
00318c  1f410000  addli r2, zero, 4
003190  b3900018  bfloat2float.rn r1, r1
003194  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003198  e3009fd8  loadli.w r1,  -5048(r30)
00319c  7e0001e0  vmmov mr0, r2
0031a0  1f011000  addli r2, zero, 8
0031a4  b3900018  bfloat2float.rn r1, r1
0031a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031ac  e3409fd8  loadli.w r1,  -5044(r30)
0031b0  7e0001e0  vmmov mr0, r2
0031b4  1f012000  addli r2, zero, 16
0031b8  b3900018  bfloat2float.rn r1, r1
0031bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031c0  e300afd8  loadli.w r1,  -5040(r30)
0031c4  7e0001e0  vmmov mr0, r2
0031c8  1f014000  addli r2, zero, 32
0031cc  b3900018  bfloat2float.rn r1, r1
0031d0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031d4  e340afd8  loadli.w r1,  -5036(r30)
0031d8  7e0001e0  vmmov mr0, r2
0031dc  1f018000  addli r2, zero, 64
0031e0  b3900018  bfloat2float.rn r1, r1
0031e4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031e8  e300bfd8  loadli.w r1,  -5032(r30)
0031ec  7e0001e0  vmmov mr0, r2
0031f0  1f010001  addli r2, zero, 128
0031f4  b3900018  bfloat2float.rn r1, r1
0031f8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031fc  e340bfd8  loadli.w r1,  -5028(r30)
003200  7e0001e0  vmmov mr0, r2
003204  1f010002  addli r2, zero, 256
003208  b3900018  bfloat2float.rn r1, r1
00320c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003210  e300cfd8  loadli.w r1,  -5024(r30)
003214  7e0001e0  vmmov mr0, r2
003218  1f010004  addli r2, zero, 512
00321c  b3900018  bfloat2float.rn r1, r1
003220  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003224  e340cfd8  loadli.w r1,  -5020(r30)
003228  7e0001e0  vmmov mr0, r2
00322c  1f010008  addli r2, zero, 1024
003230  b3900018  bfloat2float.rn r1, r1
003234  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003238  e300dfd8  loadli.w r1,  -5016(r30)
00323c  7e0001e0  vmmov mr0, r2
003240  1f010010  addli r2, zero, 2048
003244  b3900018  bfloat2float.rn r1, r1
003248  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00324c  e340dfd8  loadli.w r1,  -5012(r30)
003250  7e0001e0  vmmov mr0, r2
003254  1f010040  addli r2, zero, 8192
003258  b3900018  bfloat2float.rn r1, r1
00325c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003260  e300efd8  loadli.w r1,  -5008(r30)
003264  7e0001e0  vmmov mr0, r2
003268  2b410000  lui r2, 4
00326c  b3900018  bfloat2float.rn r1, r1
003270  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
003274  e340efd8  loadli.w r1,  -5004(r30)
003278  b3900018  bfloat2float.rn r1, r1
00327c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003280  e300ffd8  loadli.w r1,  -5000(r30)
003284  7e0001e0  vmmov mr0, r2
003288  b3900018  bfloat2float.rn r1, r1
00328c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003290  e340ffd8  loadli.w r1,  -4996(r30)
003294  63010fee  loadli.w r2,  -2304(r30)
003298  b3900018  bfloat2float.rn r1, r1
00329c  33110118  bfloat2float.rn r2, r2
0032a0  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0032a4  9f000fee  addli r1, r30, -2304
0032a8  00a00000  mfence { lm }
0032ac  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0032b0  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0032b4  9f100000  addli r1, zero, 1
0032b8  7e8100e0  vmmov mr2, r1
0032bc  92353002  vadd.s.mz vr11{mr1}, zero, vr3
0032c0  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0032c4  12353002  vadd.s.mz vr10{mr1}, zero, vr3
0032c8  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0032cc  12343002  vadd.s.mz vr8{mr1}, zero, vr3
0032d0  e6c40180  vmerge_l.hf vr9, vr3, vr0
0032d4  ea25b134  vor.u.mh vr11{mr2}, r2, vr11
0032d8  e3400fd9  loadli.w r1,  -4988(r30)
0032dc  1f210000  addli r2, zero, 2
0032e0  7e0101e0  vmmov mr2, r2
0032e4  1f410000  addli r2, zero, 4
0032e8  b3900018  bfloat2float.rn r1, r1
0032ec  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
0032f0  e3001fd9  loadli.w r1,  -4984(r30)
0032f4  7e0101e0  vmmov mr2, r2
0032f8  1f011000  addli r2, zero, 8
0032fc  7e0001c0  vmmov mr0, mr2
003300  7e0101e0  vmmov mr2, r2
003304  1f012000  addli r2, zero, 16
003308  b3900018  bfloat2float.rn r1, r1
00330c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003310  e3401fd9  loadli.w r1,  -4980(r30)
003314  7e0001c0  vmmov mr0, mr2
003318  b3900018  bfloat2float.rn r1, r1
00331c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003320  e3002fd9  loadli.w r1,  -4976(r30)
003324  7e0001e0  vmmov mr0, r2
003328  1f014000  addli r2, zero, 32
00332c  7e0101e0  vmmov mr2, r2
003330  1f018000  addli r2, zero, 64
003334  b3900018  bfloat2float.rn r1, r1
003338  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
00333c  e3402fd9  loadli.w r1,  -4972(r30)
003340  7e0001c0  vmmov mr0, mr2
003344  7e0101e0  vmmov mr2, r2
003348  1f010001  addli r2, zero, 128
00334c  b3900018  bfloat2float.rn r1, r1
003350  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003354  e3003fd9  loadli.w r1,  -4968(r30)
003358  7e0001c0  vmmov mr0, mr2
00335c  7e0101e0  vmmov mr2, r2
003360  1f010002  addli r2, zero, 256
003364  b3900018  bfloat2float.rn r1, r1
003368  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
00336c  e3403fd9  loadli.w r1,  -4964(r30)
003370  7e0001c0  vmmov mr0, mr2
003374  7e0101e0  vmmov mr2, r2
003378  1f010004  addli r2, zero, 512
00337c  b3900018  bfloat2float.rn r1, r1
003380  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003384  e3004fd9  loadli.w r1,  -4960(r30)
003388  7e0001c0  vmmov mr0, mr2
00338c  7e0101e0  vmmov mr2, r2
003390  1f010008  addli r2, zero, 1024
003394  b3900018  bfloat2float.rn r1, r1
003398  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
00339c  e3404fd9  loadli.w r1,  -4956(r30)
0033a0  7e0001c0  vmmov mr0, mr2
0033a4  7e0101e0  vmmov mr2, r2
0033a8  1f010010  addli r2, zero, 2048
0033ac  b3900018  bfloat2float.rn r1, r1
0033b0  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0033b4  e3005fd9  loadli.w r1,  -4952(r30)
0033b8  b3900018  bfloat2float.rn r1, r1
0033bc  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
0033c0  e3405fd9  loadli.w r1,  -4948(r30)
0033c4  7e0101e0  vmmov mr2, r2
0033c8  1f010040  addli r2, zero, 8192
0033cc  7e0001c0  vmmov mr0, mr2
0033d0  7e0101e0  vmmov mr2, r2
0033d4  2b410000  lui r2, 4
0033d8  b3900018  bfloat2float.rn r1, r1
0033dc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0033e0  e3006fd9  loadli.w r1,  -4944(r30)
0033e4  b3900018  bfloat2float.rn r1, r1
0033e8  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
0033ec  e3406fd9  loadli.w r1,  -4940(r30)
0033f0  7e0001c0  vmmov mr0, mr2
0033f4  7e0101e0  vmmov mr2, r2
0033f8  b3900018  bfloat2float.rn r1, r1
0033fc  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003400  e3407fd9  loadli.w r1,  -4932(r30)
003404  7e0001c0  vmmov mr0, mr2
003408  7e8101e0  vmmov mr2, r3
00340c  b3900018  bfloat2float.rn r1, r1
003410  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003414  e3008fd9  loadli.w r1,  -4928(r30)
003418  63017fd9  loadli.w r2,  -4936(r30)
00341c  b3900018  bfloat2float.rn r1, r1
003420  33110118  bfloat2float.rn r2, r2
003424  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
003428  9f100000  addli r1, zero, 1
00342c  7e8000e0  vmmov mr0, r1
003430  6a224130  vor.u.mh vr4{mr0}, r2, vr4
003434  e3408fd9  loadli.w r1,  -4924(r30)
003438  1f210000  addli r2, zero, 2
00343c  7e0001e0  vmmov mr0, r2
003440  1f410000  addli r2, zero, 4
003444  b3900018  bfloat2float.rn r1, r1
003448  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00344c  e3009fd9  loadli.w r1,  -4920(r30)
003450  7e0001e0  vmmov mr0, r2
003454  1f011000  addli r2, zero, 8
003458  b3900018  bfloat2float.rn r1, r1
00345c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003460  e3409fd9  loadli.w r1,  -4916(r30)
003464  7e0001e0  vmmov mr0, r2
003468  1f012000  addli r2, zero, 16
00346c  b3900018  bfloat2float.rn r1, r1
003470  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003474  e300afd9  loadli.w r1,  -4912(r30)
003478  7e0001e0  vmmov mr0, r2
00347c  1f014000  addli r2, zero, 32
003480  b3900018  bfloat2float.rn r1, r1
003484  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003488  e340afd9  loadli.w r1,  -4908(r30)
00348c  7e0001e0  vmmov mr0, r2
003490  1f018000  addli r2, zero, 64
003494  b3900018  bfloat2float.rn r1, r1
003498  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00349c  e300bfd9  loadli.w r1,  -4904(r30)
0034a0  7e0001e0  vmmov mr0, r2
0034a4  1f010001  addli r2, zero, 128
0034a8  b3900018  bfloat2float.rn r1, r1
0034ac  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0034b0  e340bfd9  loadli.w r1,  -4900(r30)
0034b4  7e0001e0  vmmov mr0, r2
0034b8  1f010002  addli r2, zero, 256
0034bc  b3900018  bfloat2float.rn r1, r1
0034c0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0034c4  e300cfd9  loadli.w r1,  -4896(r30)
0034c8  7e0001e0  vmmov mr0, r2
0034cc  1f010004  addli r2, zero, 512
0034d0  b3900018  bfloat2float.rn r1, r1
0034d4  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0034d8  e340cfd9  loadli.w r1,  -4892(r30)
0034dc  7e0001e0  vmmov mr0, r2
0034e0  1f010008  addli r2, zero, 1024
0034e4  b3900018  bfloat2float.rn r1, r1
0034e8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0034ec  e300dfd9  loadli.w r1,  -4888(r30)
0034f0  7e0001e0  vmmov mr0, r2
0034f4  1f010010  addli r2, zero, 2048
0034f8  b3900018  bfloat2float.rn r1, r1
0034fc  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003500  e340dfd9  loadli.w r1,  -4884(r30)
003504  7e0001e0  vmmov mr0, r2
003508  1f010040  addli r2, zero, 8192
00350c  b3900018  bfloat2float.rn r1, r1
003510  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003514  e300efd9  loadli.w r1,  -4880(r30)
003518  7e0001e0  vmmov mr0, r2
00351c  2b410000  lui r2, 4
003520  b3900018  bfloat2float.rn r1, r1
003524  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
003528  e340efd9  loadli.w r1,  -4876(r30)
00352c  b3900018  bfloat2float.rn r1, r1
003530  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003534  e340ffd9  loadli.w r1,  -4868(r30)
003538  7e0001e0  vmmov mr0, r2
00353c  b3900018  bfloat2float.rn r1, r1
003540  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003544  e3000fda  loadli.w r1,  -4864(r30)
003548  6301ffd9  loadli.w r2,  -4872(r30)
00354c  b3900018  bfloat2float.rn r1, r1
003550  33110118  bfloat2float.rn r2, r2
003554  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
003558  9f100000  addli r1, zero, 1
00355c  7e8000e0  vmmov mr0, r1
003560  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
003564  e3400fda  loadli.w r1,  -4860(r30)
003568  1f210000  addli r2, zero, 2
00356c  7e0001e0  vmmov mr0, r2
003570  1f410000  addli r2, zero, 4
003574  b3900018  bfloat2float.rn r1, r1
003578  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
00357c  e3001fda  loadli.w r1,  -4856(r30)
003580  7e0001e0  vmmov mr0, r2
003584  1f011000  addli r2, zero, 8
003588  b3900018  bfloat2float.rn r1, r1
00358c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003590  e3401fda  loadli.w r1,  -4852(r30)
003594  7e0001e0  vmmov mr0, r2
003598  1f012000  addli r2, zero, 16
00359c  b3900018  bfloat2float.rn r1, r1
0035a0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035a4  e3002fda  loadli.w r1,  -4848(r30)
0035a8  7e0001e0  vmmov mr0, r2
0035ac  1f014000  addli r2, zero, 32
0035b0  b3900018  bfloat2float.rn r1, r1
0035b4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035b8  e3402fda  loadli.w r1,  -4844(r30)
0035bc  7e0001e0  vmmov mr0, r2
0035c0  1f018000  addli r2, zero, 64
0035c4  b3900018  bfloat2float.rn r1, r1
0035c8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035cc  e3003fda  loadli.w r1,  -4840(r30)
0035d0  7e0001e0  vmmov mr0, r2
0035d4  1f010001  addli r2, zero, 128
0035d8  b3900018  bfloat2float.rn r1, r1
0035dc  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035e0  e3403fda  loadli.w r1,  -4836(r30)
0035e4  7e0001e0  vmmov mr0, r2
0035e8  1f010002  addli r2, zero, 256
0035ec  b3900018  bfloat2float.rn r1, r1
0035f0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035f4  e3004fda  loadli.w r1,  -4832(r30)
0035f8  7e0001e0  vmmov mr0, r2
0035fc  1f010004  addli r2, zero, 512
003600  b3900018  bfloat2float.rn r1, r1
003604  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003608  e3404fda  loadli.w r1,  -4828(r30)
00360c  7e0001e0  vmmov mr0, r2
003610  1f010008  addli r2, zero, 1024
003614  b3900018  bfloat2float.rn r1, r1
003618  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
00361c  e3005fda  loadli.w r1,  -4824(r30)
003620  7e0001e0  vmmov mr0, r2
003624  1f010010  addli r2, zero, 2048
003628  b3900018  bfloat2float.rn r1, r1
00362c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003630  e3405fda  loadli.w r1,  -4820(r30)
003634  7e0001e0  vmmov mr0, r2
003638  1f010040  addli r2, zero, 8192
00363c  b3900018  bfloat2float.rn r1, r1
003640  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003644  e3006fda  loadli.w r1,  -4816(r30)
003648  7e0001e0  vmmov mr0, r2
00364c  2b410000  lui r2, 4
003650  b3900018  bfloat2float.rn r1, r1
003654  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
003658  e3406fda  loadli.w r1,  -4812(r30)
00365c  b3900018  bfloat2float.rn r1, r1
003660  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003664  e3407fda  loadli.w r1,  -4804(r30)
003668  7e0001e0  vmmov mr0, r2
00366c  b3900018  bfloat2float.rn r1, r1
003670  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003674  e3008fda  loadli.w r1,  -4800(r30)
003678  63017fda  loadli.w r2,  -4808(r30)
00367c  b3900018  bfloat2float.rn r1, r1
003680  33110118  bfloat2float.rn r2, r2
003684  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
003688  9f100000  addli r1, zero, 1
00368c  7e8000e0  vmmov mr0, r1
003690  6a212130  vor.u.mh vr2{mr0}, r2, vr2
003694  e3408fda  loadli.w r1,  -4796(r30)
003698  1f210000  addli r2, zero, 2
00369c  7e0001e0  vmmov mr0, r2
0036a0  1f410000  addli r2, zero, 4
0036a4  b3900018  bfloat2float.rn r1, r1
0036a8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036ac  e3009fda  loadli.w r1,  -4792(r30)
0036b0  7e0001e0  vmmov mr0, r2
0036b4  1f011000  addli r2, zero, 8
0036b8  b3900018  bfloat2float.rn r1, r1
0036bc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036c0  e3409fda  loadli.w r1,  -4788(r30)
0036c4  7e0001e0  vmmov mr0, r2
0036c8  1f012000  addli r2, zero, 16
0036cc  b3900018  bfloat2float.rn r1, r1
0036d0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036d4  e300afda  loadli.w r1,  -4784(r30)
0036d8  7e0001e0  vmmov mr0, r2
0036dc  1f014000  addli r2, zero, 32
0036e0  b3900018  bfloat2float.rn r1, r1
0036e4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036e8  e340afda  loadli.w r1,  -4780(r30)
0036ec  7e0001e0  vmmov mr0, r2
0036f0  1f018000  addli r2, zero, 64
0036f4  b3900018  bfloat2float.rn r1, r1
0036f8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036fc  e300bfda  loadli.w r1,  -4776(r30)
003700  7e0001e0  vmmov mr0, r2
003704  1f010001  addli r2, zero, 128
003708  b3900018  bfloat2float.rn r1, r1
00370c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003710  e340bfda  loadli.w r1,  -4772(r30)
003714  7e0001e0  vmmov mr0, r2
003718  1f010002  addli r2, zero, 256
00371c  b3900018  bfloat2float.rn r1, r1
003720  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003724  e300cfda  loadli.w r1,  -4768(r30)
003728  7e0001e0  vmmov mr0, r2
00372c  1f010004  addli r2, zero, 512
003730  b3900018  bfloat2float.rn r1, r1
003734  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003738  e340cfda  loadli.w r1,  -4764(r30)
00373c  7e0001e0  vmmov mr0, r2
003740  1f010008  addli r2, zero, 1024
003744  b3900018  bfloat2float.rn r1, r1
003748  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00374c  e300dfda  loadli.w r1,  -4760(r30)
003750  7e0001e0  vmmov mr0, r2
003754  1f010010  addli r2, zero, 2048
003758  b3900018  bfloat2float.rn r1, r1
00375c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003760  e340dfda  loadli.w r1,  -4756(r30)
003764  7e0001e0  vmmov mr0, r2
003768  1f010040  addli r2, zero, 8192
00376c  b3900018  bfloat2float.rn r1, r1
003770  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003774  e300efda  loadli.w r1,  -4752(r30)
003778  7e0001e0  vmmov mr0, r2
00377c  2b410000  lui r2, 4
003780  b3900018  bfloat2float.rn r1, r1
003784  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003788  e340efda  loadli.w r1,  -4748(r30)
00378c  b3900018  bfloat2float.rn r1, r1
003790  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003794  e340ffda  loadli.w r1,  -4740(r30)
003798  7e0001e0  vmmov mr0, r2
00379c  b3900018  bfloat2float.rn r1, r1
0037a0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0037a4  e3000fdb  loadli.w r1,  -4736(r30)
0037a8  6301ffda  loadli.w r2,  -4744(r30)
0037ac  b3900018  bfloat2float.rn r1, r1
0037b0  33110118  bfloat2float.rn r2, r2
0037b4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0037b8  9f100000  addli r1, zero, 1
0037bc  7e8000e0  vmmov mr0, r1
0037c0  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0037c4  e3400fdb  loadli.w r1,  -4732(r30)
0037c8  1f210000  addli r2, zero, 2
0037cc  7e0001e0  vmmov mr0, r2
0037d0  1f410000  addli r2, zero, 4
0037d4  b3900018  bfloat2float.rn r1, r1
0037d8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0037dc  e3001fdb  loadli.w r1,  -4728(r30)
0037e0  7e0001e0  vmmov mr0, r2
0037e4  1f011000  addli r2, zero, 8
0037e8  b3900018  bfloat2float.rn r1, r1
0037ec  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0037f0  e3401fdb  loadli.w r1,  -4724(r30)
0037f4  7e0001e0  vmmov mr0, r2
0037f8  1f012000  addli r2, zero, 16
0037fc  b3900018  bfloat2float.rn r1, r1
003800  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003804  e3002fdb  loadli.w r1,  -4720(r30)
003808  7e0001e0  vmmov mr0, r2
00380c  1f014000  addli r2, zero, 32
003810  b3900018  bfloat2float.rn r1, r1
003814  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003818  e3402fdb  loadli.w r1,  -4716(r30)
00381c  7e0001e0  vmmov mr0, r2
003820  1f018000  addli r2, zero, 64
003824  b3900018  bfloat2float.rn r1, r1
003828  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00382c  e3003fdb  loadli.w r1,  -4712(r30)
003830  7e0001e0  vmmov mr0, r2
003834  1f010001  addli r2, zero, 128
003838  b3900018  bfloat2float.rn r1, r1
00383c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003840  e3403fdb  loadli.w r1,  -4708(r30)
003844  7e0001e0  vmmov mr0, r2
003848  1f010002  addli r2, zero, 256
00384c  b3900018  bfloat2float.rn r1, r1
003850  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003854  e3004fdb  loadli.w r1,  -4704(r30)
003858  7e0001e0  vmmov mr0, r2
00385c  1f010004  addli r2, zero, 512
003860  b3900018  bfloat2float.rn r1, r1
003864  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003868  e3404fdb  loadli.w r1,  -4700(r30)
00386c  7e0001e0  vmmov mr0, r2
003870  1f010008  addli r2, zero, 1024
003874  b3900018  bfloat2float.rn r1, r1
003878  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00387c  e3005fdb  loadli.w r1,  -4696(r30)
003880  7e0001e0  vmmov mr0, r2
003884  1f010010  addli r2, zero, 2048
003888  b3900018  bfloat2float.rn r1, r1
00388c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003890  e3405fdb  loadli.w r1,  -4692(r30)
003894  7e0001e0  vmmov mr0, r2
003898  1f010040  addli r2, zero, 8192
00389c  b3900018  bfloat2float.rn r1, r1
0038a0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0038a4  e3006fdb  loadli.w r1,  -4688(r30)
0038a8  7e0001e0  vmmov mr0, r2
0038ac  2b410000  lui r2, 4
0038b0  b3900018  bfloat2float.rn r1, r1
0038b4  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0038b8  e3406fdb  loadli.w r1,  -4684(r30)
0038bc  b3900018  bfloat2float.rn r1, r1
0038c0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0038c4  e3407fdb  loadli.w r1,  -4676(r30)
0038c8  7e0001e0  vmmov mr0, r2
0038cc  b3900018  bfloat2float.rn r1, r1
0038d0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0038d4  e3008fdb  loadli.w r1,  -4672(r30)
0038d8  63017fdb  loadli.w r2,  -4680(r30)
0038dc  b3900018  bfloat2float.rn r1, r1
0038e0  33110118  bfloat2float.rn r2, r2
0038e4  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
0038e8  9f100000  addli r1, zero, 1
0038ec  7e8000e0  vmmov mr0, r1
0038f0  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0038f4  e3408fdb  loadli.w r1,  -4668(r30)
0038f8  1f210000  addli r2, zero, 2
0038fc  7e0001e0  vmmov mr0, r2
003900  1f410000  addli r2, zero, 4
003904  b3900018  bfloat2float.rn r1, r1
003908  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00390c  e3009fdb  loadli.w r1,  -4664(r30)
003910  7e0001e0  vmmov mr0, r2
003914  1f011000  addli r2, zero, 8
003918  b3900018  bfloat2float.rn r1, r1
00391c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003920  e3409fdb  loadli.w r1,  -4660(r30)
003924  7e0001e0  vmmov mr0, r2
003928  1f012000  addli r2, zero, 16
00392c  b3900018  bfloat2float.rn r1, r1
003930  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003934  e300afdb  loadli.w r1,  -4656(r30)
003938  7e0001e0  vmmov mr0, r2
00393c  1f014000  addli r2, zero, 32
003940  b3900018  bfloat2float.rn r1, r1
003944  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003948  e340afdb  loadli.w r1,  -4652(r30)
00394c  7e0001e0  vmmov mr0, r2
003950  1f018000  addli r2, zero, 64
003954  b3900018  bfloat2float.rn r1, r1
003958  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00395c  e300bfdb  loadli.w r1,  -4648(r30)
003960  7e0001e0  vmmov mr0, r2
003964  1f010001  addli r2, zero, 128
003968  b3900018  bfloat2float.rn r1, r1
00396c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003970  e340bfdb  loadli.w r1,  -4644(r30)
003974  7e0001e0  vmmov mr0, r2
003978  1f010002  addli r2, zero, 256
00397c  b3900018  bfloat2float.rn r1, r1
003980  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003984  e300cfdb  loadli.w r1,  -4640(r30)
003988  7e0001e0  vmmov mr0, r2
00398c  1f010004  addli r2, zero, 512
003990  b3900018  bfloat2float.rn r1, r1
003994  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003998  e340cfdb  loadli.w r1,  -4636(r30)
00399c  7e0001e0  vmmov mr0, r2
0039a0  1f010008  addli r2, zero, 1024
0039a4  b3900018  bfloat2float.rn r1, r1
0039a8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0039ac  e300dfdb  loadli.w r1,  -4632(r30)
0039b0  7e0001e0  vmmov mr0, r2
0039b4  1f010010  addli r2, zero, 2048
0039b8  b3900018  bfloat2float.rn r1, r1
0039bc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0039c0  e340dfdb  loadli.w r1,  -4628(r30)
0039c4  7e0001e0  vmmov mr0, r2
0039c8  1f010040  addli r2, zero, 8192
0039cc  b3900018  bfloat2float.rn r1, r1
0039d0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0039d4  e300efdb  loadli.w r1,  -4624(r30)
0039d8  7e0001e0  vmmov mr0, r2
0039dc  2b410000  lui r2, 4
0039e0  b3900018  bfloat2float.rn r1, r1
0039e4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0039e8  e340efdb  loadli.w r1,  -4620(r30)
0039ec  b3900018  bfloat2float.rn r1, r1
0039f0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0039f4  e340ffdb  loadli.w r1,  -4612(r30)
0039f8  7e0001e0  vmmov mr0, r2
0039fc  b3900018  bfloat2float.rn r1, r1
003a00  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a04  e3000fdc  loadli.w r1,  -4608(r30)
003a08  6301ffdb  loadli.w r2,  -4616(r30)
003a0c  b3900018  bfloat2float.rn r1, r1
003a10  33110118  bfloat2float.rn r2, r2
003a14  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003a18  9f000fdc  addli r1, r30, -4608
003a1c  00a00000  mfence { lm }
003a20  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003a24  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003a28  9f100000  addli r1, zero, 1
003a2c  7e8000e0  vmmov mr0, r1
003a30  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003a34  e3408fdc  loadli.w r1,  -4540(r30)
003a38  1f210000  addli r2, zero, 2
003a3c  7e0001e0  vmmov mr0, r2
003a40  1f410000  addli r2, zero, 4
003a44  b3900018  bfloat2float.rn r1, r1
003a48  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a4c  e3009fdc  loadli.w r1,  -4536(r30)
003a50  7e0001e0  vmmov mr0, r2
003a54  1f011000  addli r2, zero, 8
003a58  b3900018  bfloat2float.rn r1, r1
003a5c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a60  e3409fdc  loadli.w r1,  -4532(r30)
003a64  7e0001e0  vmmov mr0, r2
003a68  1f012000  addli r2, zero, 16
003a6c  b3900018  bfloat2float.rn r1, r1
003a70  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a74  e300afdc  loadli.w r1,  -4528(r30)
003a78  7e0001e0  vmmov mr0, r2
003a7c  1f014000  addli r2, zero, 32
003a80  b3900018  bfloat2float.rn r1, r1
003a84  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a88  e340afdc  loadli.w r1,  -4524(r30)
003a8c  7e0001e0  vmmov mr0, r2
003a90  1f018000  addli r2, zero, 64
003a94  b3900018  bfloat2float.rn r1, r1
003a98  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a9c  e300bfdc  loadli.w r1,  -4520(r30)
003aa0  7e0001e0  vmmov mr0, r2
003aa4  1f010001  addli r2, zero, 128
003aa8  b3900018  bfloat2float.rn r1, r1
003aac  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ab0  e340bfdc  loadli.w r1,  -4516(r30)
003ab4  7e0001e0  vmmov mr0, r2
003ab8  1f010002  addli r2, zero, 256
003abc  b3900018  bfloat2float.rn r1, r1
003ac0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ac4  e300cfdc  loadli.w r1,  -4512(r30)
003ac8  7e0001e0  vmmov mr0, r2
003acc  1f010004  addli r2, zero, 512
003ad0  b3900018  bfloat2float.rn r1, r1
003ad4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ad8  e340cfdc  loadli.w r1,  -4508(r30)
003adc  7e0001e0  vmmov mr0, r2
003ae0  1f010008  addli r2, zero, 1024
003ae4  b3900018  bfloat2float.rn r1, r1
003ae8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003aec  e300dfdc  loadli.w r1,  -4504(r30)
003af0  7e0001e0  vmmov mr0, r2
003af4  1f010010  addli r2, zero, 2048
003af8  b3900018  bfloat2float.rn r1, r1
003afc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b00  e340dfdc  loadli.w r1,  -4500(r30)
003b04  7e0001e0  vmmov mr0, r2
003b08  1f010040  addli r2, zero, 8192
003b0c  b3900018  bfloat2float.rn r1, r1
003b10  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b14  e300efdc  loadli.w r1,  -4496(r30)
003b18  7e0001e0  vmmov mr0, r2
003b1c  2b410000  lui r2, 4
003b20  b3900018  bfloat2float.rn r1, r1
003b24  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
003b28  e340efdc  loadli.w r1,  -4492(r30)
003b2c  b3900018  bfloat2float.rn r1, r1
003b30  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b34  e340ffdc  loadli.w r1,  -4484(r30)
003b38  7e0001e0  vmmov mr0, r2
003b3c  b3900018  bfloat2float.rn r1, r1
003b40  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b44  e3000fdd  loadli.w r1,  -4480(r30)
003b48  6301ffdc  loadli.w r2,  -4488(r30)
003b4c  b3900018  bfloat2float.rn r1, r1
003b50  33110118  bfloat2float.rn r2, r2
003b54  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003b58  9f000fdd  addli r1, r30, -4480
003b5c  00a00000  mfence { lm }
003b60  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003b64  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003b68  9f100000  addli r1, zero, 1
003b6c  7e8000e0  vmmov mr0, r1
003b70  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003b74  e300efdd  loadli.w r1,  -4368(r30)
003b78  1f210000  addli r2, zero, 2
003b7c  7e0001e0  vmmov mr0, r2
003b80  1f410000  addli r2, zero, 4
003b84  b3900018  bfloat2float.rn r1, r1
003b88  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b8c  e340efdd  loadli.w r1,  -4364(r30)
003b90  7e0001e0  vmmov mr0, r2
003b94  1f011000  addli r2, zero, 8
003b98  b3900018  bfloat2float.rn r1, r1
003b9c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ba0  e300ffdd  loadli.w r1,  -4360(r30)
003ba4  7e0001e0  vmmov mr0, r2
003ba8  1f012000  addli r2, zero, 16
003bac  b3900018  bfloat2float.rn r1, r1
003bb0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003bb4  e340ffdd  loadli.w r1,  -4356(r30)
003bb8  7e0001e0  vmmov mr0, r2
003bbc  1f014000  addli r2, zero, 32
003bc0  b3900018  bfloat2float.rn r1, r1
003bc4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003bc8  e3000fde  loadli.w r1,  -4352(r30)
003bcc  7e0001e0  vmmov mr0, r2
003bd0  1f018000  addli r2, zero, 64
003bd4  b3900018  bfloat2float.rn r1, r1
003bd8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003bdc  e3400fde  loadli.w r1,  -4348(r30)
003be0  7e0001e0  vmmov mr0, r2
003be4  1f010001  addli r2, zero, 128
003be8  b3900018  bfloat2float.rn r1, r1
003bec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003bf0  e3001fde  loadli.w r1,  -4344(r30)
003bf4  7e0001e0  vmmov mr0, r2
003bf8  1f010002  addli r2, zero, 256
003bfc  b3900018  bfloat2float.rn r1, r1
003c00  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c04  e3401fde  loadli.w r1,  -4340(r30)
003c08  7e0001e0  vmmov mr0, r2
003c0c  1f010004  addli r2, zero, 512
003c10  b3900018  bfloat2float.rn r1, r1
003c14  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c18  e3002fde  loadli.w r1,  -4336(r30)
003c1c  7e0001e0  vmmov mr0, r2
003c20  1f010008  addli r2, zero, 1024
003c24  b3900018  bfloat2float.rn r1, r1
003c28  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c2c  e3402fde  loadli.w r1,  -4332(r30)
003c30  7e0001e0  vmmov mr0, r2
003c34  1f010010  addli r2, zero, 2048
003c38  b3900018  bfloat2float.rn r1, r1
003c3c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c40  e3003fde  loadli.w r1,  -4328(r30)
003c44  7e0001e0  vmmov mr0, r2
003c48  1f010040  addli r2, zero, 8192
003c4c  b3900018  bfloat2float.rn r1, r1
003c50  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c54  e3403fde  loadli.w r1,  -4324(r30)
003c58  7e0001e0  vmmov mr0, r2
003c5c  2b410000  lui r2, 4
003c60  b3900018  bfloat2float.rn r1, r1
003c64  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
003c68  e3004fde  loadli.w r1,  -4320(r30)
003c6c  b3900018  bfloat2float.rn r1, r1
003c70  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c74  e3005fde  loadli.w r1,  -4312(r30)
003c78  7e0001e0  vmmov mr0, r2
003c7c  b3900018  bfloat2float.rn r1, r1
003c80  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c84  e3000fe1  loadli.w r1,  -3968(r30)
003c88  63414fde  loadli.w r2,  -4316(r30)
003c8c  b3900018  bfloat2float.rn r1, r1
003c90  33110118  bfloat2float.rn r2, r2
003c94  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003c98  9f000fe1  addli r1, r30, -3968
003c9c  00a00000  mfence { lm }
003ca0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003ca4  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003ca8  9f100000  addli r1, zero, 1
003cac  7e8000e0  vmmov mr0, r1
003cb0  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003cb4  e3405fde  loadli.w r1,  -4308(r30)
003cb8  1f210000  addli r2, zero, 2
003cbc  7e0001e0  vmmov mr0, r2
003cc0  1f410000  addli r2, zero, 4
003cc4  b3900018  bfloat2float.rn r1, r1
003cc8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ccc  e3006fde  loadli.w r1,  -4304(r30)
003cd0  7e0001e0  vmmov mr0, r2
003cd4  1f011000  addli r2, zero, 8
003cd8  b3900018  bfloat2float.rn r1, r1
003cdc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ce0  e3406fde  loadli.w r1,  -4300(r30)
003ce4  7e0001e0  vmmov mr0, r2
003ce8  1f012000  addli r2, zero, 16
003cec  b3900018  bfloat2float.rn r1, r1
003cf0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003cf4  e3007fde  loadli.w r1,  -4296(r30)
003cf8  7e0001e0  vmmov mr0, r2
003cfc  1f014000  addli r2, zero, 32
003d00  b3900018  bfloat2float.rn r1, r1
003d04  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d08  e3407fde  loadli.w r1,  -4292(r30)
003d0c  7e0001e0  vmmov mr0, r2
003d10  1f018000  addli r2, zero, 64
003d14  b3900018  bfloat2float.rn r1, r1
003d18  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d1c  e3008fde  loadli.w r1,  -4288(r30)
003d20  7e0001e0  vmmov mr0, r2
003d24  1f010001  addli r2, zero, 128
003d28  b3900018  bfloat2float.rn r1, r1
003d2c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d30  e3408fde  loadli.w r1,  -4284(r30)
003d34  7e0001e0  vmmov mr0, r2
003d38  1f010002  addli r2, zero, 256
003d3c  b3900018  bfloat2float.rn r1, r1
003d40  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d44  e3009fde  loadli.w r1,  -4280(r30)
003d48  7e0001e0  vmmov mr0, r2
003d4c  1f010004  addli r2, zero, 512
003d50  b3900018  bfloat2float.rn r1, r1
003d54  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d58  e3409fde  loadli.w r1,  -4276(r30)
003d5c  7e0001e0  vmmov mr0, r2
003d60  1f010008  addli r2, zero, 1024
003d64  b3900018  bfloat2float.rn r1, r1
003d68  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d6c  e300afde  loadli.w r1,  -4272(r30)
003d70  7e0001e0  vmmov mr0, r2
003d74  1f010010  addli r2, zero, 2048
003d78  b3900018  bfloat2float.rn r1, r1
003d7c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d80  e340afde  loadli.w r1,  -4268(r30)
003d84  7e0001e0  vmmov mr0, r2
003d88  1f010040  addli r2, zero, 8192
003d8c  b3900018  bfloat2float.rn r1, r1
003d90  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d94  e300bfde  loadli.w r1,  -4264(r30)
003d98  7e0001e0  vmmov mr0, r2
003d9c  2b410000  lui r2, 4
003da0  b3900018  bfloat2float.rn r1, r1
003da4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
003da8  e340bfde  loadli.w r1,  -4260(r30)
003dac  b3900018  bfloat2float.rn r1, r1
003db0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003db4  e340cfde  loadli.w r1,  -4252(r30)
003db8  7e0001e0  vmmov mr0, r2
003dbc  b3900018  bfloat2float.rn r1, r1
003dc0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003dc4  e3000fe4  loadli.w r1,  -3584(r30)
003dc8  6301cfde  loadli.w r2,  -4256(r30)
003dcc  b3900018  bfloat2float.rn r1, r1
003dd0  33110118  bfloat2float.rn r2, r2
003dd4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003dd8  9f000fe4  addli r1, r30, -3584
003ddc  00a00000  mfence { lm }
003de0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003de4  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003de8  9f100000  addli r1, zero, 1
003dec  7e8000e0  vmmov mr0, r1
003df0  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003df4  e300dfde  loadli.w r1,  -4248(r30)
003df8  1f210000  addli r2, zero, 2
003dfc  7e0001e0  vmmov mr0, r2
003e00  1f410000  addli r2, zero, 4
003e04  b3900018  bfloat2float.rn r1, r1
003e08  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e0c  e340dfde  loadli.w r1,  -4244(r30)
003e10  7e0001e0  vmmov mr0, r2
003e14  1f011000  addli r2, zero, 8
003e18  b3900018  bfloat2float.rn r1, r1
003e1c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e20  e300efde  loadli.w r1,  -4240(r30)
003e24  7e0001e0  vmmov mr0, r2
003e28  1f012000  addli r2, zero, 16
003e2c  b3900018  bfloat2float.rn r1, r1
003e30  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e34  e340efde  loadli.w r1,  -4236(r30)
003e38  7e0001e0  vmmov mr0, r2
003e3c  1f014000  addli r2, zero, 32
003e40  b3900018  bfloat2float.rn r1, r1
003e44  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e48  e300ffde  loadli.w r1,  -4232(r30)
003e4c  7e0001e0  vmmov mr0, r2
003e50  1f018000  addli r2, zero, 64
003e54  b3900018  bfloat2float.rn r1, r1
003e58  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e5c  e340ffde  loadli.w r1,  -4228(r30)
003e60  7e0001e0  vmmov mr0, r2
003e64  1f010001  addli r2, zero, 128
003e68  b3900018  bfloat2float.rn r1, r1
003e6c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e70  e3000fdf  loadli.w r1,  -4224(r30)
003e74  7e0001e0  vmmov mr0, r2
003e78  1f010002  addli r2, zero, 256
003e7c  b3900018  bfloat2float.rn r1, r1
003e80  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e84  e3400fdf  loadli.w r1,  -4220(r30)
003e88  7e0001e0  vmmov mr0, r2
003e8c  1f010004  addli r2, zero, 512
003e90  b3900018  bfloat2float.rn r1, r1
003e94  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e98  e3001fdf  loadli.w r1,  -4216(r30)
003e9c  7e0001e0  vmmov mr0, r2
003ea0  1f010008  addli r2, zero, 1024
003ea4  b3900018  bfloat2float.rn r1, r1
003ea8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003eac  e3401fdf  loadli.w r1,  -4212(r30)
003eb0  7e0001e0  vmmov mr0, r2
003eb4  1f010010  addli r2, zero, 2048
003eb8  b3900018  bfloat2float.rn r1, r1
003ebc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ec0  e3002fdf  loadli.w r1,  -4208(r30)
003ec4  7e0001e0  vmmov mr0, r2
003ec8  1f010040  addli r2, zero, 8192
003ecc  b3900018  bfloat2float.rn r1, r1
003ed0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ed4  e3402fdf  loadli.w r1,  -4204(r30)
003ed8  7e0001e0  vmmov mr0, r2
003edc  2b410000  lui r2, 4
003ee0  b3900018  bfloat2float.rn r1, r1
003ee4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
003ee8  e3003fdf  loadli.w r1,  -4200(r30)
003eec  b3900018  bfloat2float.rn r1, r1
003ef0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ef4  e3004fdf  loadli.w r1,  -4192(r30)
003ef8  7e0001e0  vmmov mr0, r2
003efc  b3900018  bfloat2float.rn r1, r1
003f00  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f04  e3000fe5  loadli.w r1,  -3456(r30)
003f08  63413fdf  loadli.w r2,  -4196(r30)
003f0c  b3900018  bfloat2float.rn r1, r1
003f10  33110118  bfloat2float.rn r2, r2
003f14  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003f18  9f000fe5  addli r1, r30, -3456
003f1c  00a00000  mfence { lm }
003f20  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003f24  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003f28  9f100000  addli r1, zero, 1
003f2c  7e8000e0  vmmov mr0, r1
003f30  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003f34  e3404fdf  loadli.w r1,  -4188(r30)
003f38  1f210000  addli r2, zero, 2
003f3c  7e0001e0  vmmov mr0, r2
003f40  1f410000  addli r2, zero, 4
003f44  b3900018  bfloat2float.rn r1, r1
003f48  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f4c  e3005fdf  loadli.w r1,  -4184(r30)
003f50  7e0001e0  vmmov mr0, r2
003f54  1f011000  addli r2, zero, 8
003f58  b3900018  bfloat2float.rn r1, r1
003f5c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f60  e3405fdf  loadli.w r1,  -4180(r30)
003f64  7e0001e0  vmmov mr0, r2
003f68  1f012000  addli r2, zero, 16
003f6c  b3900018  bfloat2float.rn r1, r1
003f70  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f74  e3006fdf  loadli.w r1,  -4176(r30)
003f78  7e0001e0  vmmov mr0, r2
003f7c  1f014000  addli r2, zero, 32
003f80  b3900018  bfloat2float.rn r1, r1
003f84  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f88  e3406fdf  loadli.w r1,  -4172(r30)
003f8c  7e0001e0  vmmov mr0, r2
003f90  1f018000  addli r2, zero, 64
003f94  b3900018  bfloat2float.rn r1, r1
003f98  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f9c  e3007fdf  loadli.w r1,  -4168(r30)
003fa0  7e0001e0  vmmov mr0, r2
003fa4  1f010001  addli r2, zero, 128
003fa8  b3900018  bfloat2float.rn r1, r1
003fac  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003fb0  e3407fdf  loadli.w r1,  -4164(r30)
003fb4  7e0001e0  vmmov mr0, r2
003fb8  1f010002  addli r2, zero, 256
003fbc  b3900018  bfloat2float.rn r1, r1
003fc0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003fc4  e3008fdf  loadli.w r1,  -4160(r30)
003fc8  7e0001e0  vmmov mr0, r2
003fcc  1f010004  addli r2, zero, 512
003fd0  b3900018  bfloat2float.rn r1, r1
003fd4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003fd8  e3408fdf  loadli.w r1,  -4156(r30)
003fdc  7e0001e0  vmmov mr0, r2
003fe0  1f010008  addli r2, zero, 1024
003fe4  b3900018  bfloat2float.rn r1, r1
003fe8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003fec  e3009fdf  loadli.w r1,  -4152(r30)
003ff0  7e0001e0  vmmov mr0, r2
003ff4  1f010010  addli r2, zero, 2048
003ff8  b3900018  bfloat2float.rn r1, r1
003ffc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004000  e3409fdf  loadli.w r1,  -4148(r30)
004004  7e0001e0  vmmov mr0, r2
004008  1f010040  addli r2, zero, 8192
00400c  b3900018  bfloat2float.rn r1, r1
004010  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004014  e300afdf  loadli.w r1,  -4144(r30)
004018  7e0001e0  vmmov mr0, r2
00401c  2b410000  lui r2, 4
004020  b3900018  bfloat2float.rn r1, r1
004024  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
004028  e340afdf  loadli.w r1,  -4140(r30)
00402c  b3900018  bfloat2float.rn r1, r1
004030  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004034  e340bfdf  loadli.w r1,  -4132(r30)
004038  7e0001e0  vmmov mr0, r2
00403c  b3900018  bfloat2float.rn r1, r1
004040  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004044  e3000fe6  loadli.w r1,  -3328(r30)
004048  6301bfdf  loadli.w r2,  -4136(r30)
00404c  b3900018  bfloat2float.rn r1, r1
004050  33110118  bfloat2float.rn r2, r2
004054  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
004058  9f000fe6  addli r1, r30, -3328
00405c  00a00000  mfence { lm }
004060  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004064  12343002  vadd.s.mz vr8{mr1}, zero, vr3
004068  9f100000  addli r1, zero, 1
00406c  7e8000e0  vmmov mr0, r1
004070  6a248130  vor.u.mh vr8{mr0}, r2, vr8
004074  e300cfdf  loadli.w r1,  -4128(r30)
004078  1f210000  addli r2, zero, 2
00407c  7e0001e0  vmmov mr0, r2
004080  1f410000  addli r2, zero, 4
004084  b3900018  bfloat2float.rn r1, r1
004088  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00408c  e340cfdf  loadli.w r1,  -4124(r30)
004090  7e0001e0  vmmov mr0, r2
004094  1f011000  addli r2, zero, 8
004098  b3900018  bfloat2float.rn r1, r1
00409c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040a0  e300dfdf  loadli.w r1,  -4120(r30)
0040a4  7e0001e0  vmmov mr0, r2
0040a8  1f012000  addli r2, zero, 16
0040ac  b3900018  bfloat2float.rn r1, r1
0040b0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040b4  e340dfdf  loadli.w r1,  -4116(r30)
0040b8  7e0001e0  vmmov mr0, r2
0040bc  1f014000  addli r2, zero, 32
0040c0  b3900018  bfloat2float.rn r1, r1
0040c4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040c8  e300efdf  loadli.w r1,  -4112(r30)
0040cc  7e0001e0  vmmov mr0, r2
0040d0  1f018000  addli r2, zero, 64
0040d4  b3900018  bfloat2float.rn r1, r1
0040d8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040dc  e340efdf  loadli.w r1,  -4108(r30)
0040e0  7e0001e0  vmmov mr0, r2
0040e4  1f010001  addli r2, zero, 128
0040e8  b3900018  bfloat2float.rn r1, r1
0040ec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040f0  e300ffdf  loadli.w r1,  -4104(r30)
0040f4  7e0001e0  vmmov mr0, r2
0040f8  1f010002  addli r2, zero, 256
0040fc  b3900018  bfloat2float.rn r1, r1
004100  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004104  e340ffdf  loadli.w r1,  -4100(r30)
004108  7e0001e0  vmmov mr0, r2
00410c  1f010004  addli r2, zero, 512
004110  b3900018  bfloat2float.rn r1, r1
004114  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004118  e3009fe0  loadli.w r1,  -4024(r30)
00411c  7e0001e0  vmmov mr0, r2
004120  1f010008  addli r2, zero, 1024
004124  b3900018  bfloat2float.rn r1, r1
004128  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00412c  e3409fe0  loadli.w r1,  -4020(r30)
004130  7e0001e0  vmmov mr0, r2
004134  1f010010  addli r2, zero, 2048
004138  b3900018  bfloat2float.rn r1, r1
00413c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004140  e300afe0  loadli.w r1,  -4016(r30)
004144  7e0001e0  vmmov mr0, r2
004148  1f010040  addli r2, zero, 8192
00414c  b3900018  bfloat2float.rn r1, r1
004150  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004154  e340afe0  loadli.w r1,  -4012(r30)
004158  7e0001e0  vmmov mr0, r2
00415c  2b410000  lui r2, 4
004160  b3900018  bfloat2float.rn r1, r1
004164  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
004168  e300bfe0  loadli.w r1,  -4008(r30)
00416c  b3900018  bfloat2float.rn r1, r1
004170  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004174  e300cfe0  loadli.w r1,  -4000(r30)
004178  7e0001e0  vmmov mr0, r2
00417c  b3900018  bfloat2float.rn r1, r1
004180  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004184  e3000fe7  loadli.w r1,  -3200(r30)
004188  6341bfe0  loadli.w r2,  -4004(r30)
00418c  b3900018  bfloat2float.rn r1, r1
004190  33110118  bfloat2float.rn r2, r2
004194  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
004198  9f000fe7  addli r1, r30, -3200
00419c  00a00000  mfence { lm }
0041a0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0041a4  12343002  vadd.s.mz vr8{mr1}, zero, vr3
0041a8  9f100000  addli r1, zero, 1
0041ac  7e8000e0  vmmov mr0, r1
0041b0  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0041b4  e340cfe0  loadli.w r1,  -3996(r30)
0041b8  1f210000  addli r2, zero, 2
0041bc  7e0001e0  vmmov mr0, r2
0041c0  1f410000  addli r2, zero, 4
0041c4  b3900018  bfloat2float.rn r1, r1
0041c8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0041cc  e300dfe0  loadli.w r1,  -3992(r30)
0041d0  7e0001e0  vmmov mr0, r2
0041d4  1f011000  addli r2, zero, 8
0041d8  b3900018  bfloat2float.rn r1, r1
0041dc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0041e0  e340dfe0  loadli.w r1,  -3988(r30)
0041e4  7e0001e0  vmmov mr0, r2
0041e8  1f012000  addli r2, zero, 16
0041ec  b3900018  bfloat2float.rn r1, r1
0041f0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0041f4  e300efe0  loadli.w r1,  -3984(r30)
0041f8  7e0001e0  vmmov mr0, r2
0041fc  1f014000  addli r2, zero, 32
004200  b3900018  bfloat2float.rn r1, r1
004204  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004208  e340efe0  loadli.w r1,  -3980(r30)
00420c  7e0001e0  vmmov mr0, r2
004210  1f018000  addli r2, zero, 64
004214  b3900018  bfloat2float.rn r1, r1
004218  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00421c  e300ffe0  loadli.w r1,  -3976(r30)
004220  7e0001e0  vmmov mr0, r2
004224  1f010001  addli r2, zero, 128
004228  b3900018  bfloat2float.rn r1, r1
00422c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004230  e340ffe0  loadli.w r1,  -3972(r30)
004234  7e0001e0  vmmov mr0, r2
004238  1f010002  addli r2, zero, 256
00423c  b3900018  bfloat2float.rn r1, r1
004240  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004244  e300ffe1  loadli.w r1,  -3848(r30)
004248  7e0001e0  vmmov mr0, r2
00424c  1f010004  addli r2, zero, 512
004250  b3900018  bfloat2float.rn r1, r1
004254  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004258  e340ffe1  loadli.w r1,  -3844(r30)
00425c  7e0001e0  vmmov mr0, r2
004260  1f010008  addli r2, zero, 1024
004264  b3900018  bfloat2float.rn r1, r1
004268  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00426c  e3000fe2  loadli.w r1,  -3840(r30)
004270  7e0001e0  vmmov mr0, r2
004274  1f010010  addli r2, zero, 2048
004278  b3900018  bfloat2float.rn r1, r1
00427c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004280  e3400fe2  loadli.w r1,  -3836(r30)
004284  7e0001e0  vmmov mr0, r2
004288  1f010040  addli r2, zero, 8192
00428c  b3900018  bfloat2float.rn r1, r1
004290  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004294  e3001fe2  loadli.w r1,  -3832(r30)
004298  7e0001e0  vmmov mr0, r2
00429c  2b410000  lui r2, 4
0042a0  b3900018  bfloat2float.rn r1, r1
0042a4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0042a8  e3401fe2  loadli.w r1,  -3828(r30)
0042ac  b3900018  bfloat2float.rn r1, r1
0042b0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0042b4  e3402fe2  loadli.w r1,  -3820(r30)
0042b8  7e0001e0  vmmov mr0, r2
0042bc  b3900018  bfloat2float.rn r1, r1
0042c0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0042c4  e3000fe8  loadli.w r1,  -3072(r30)
0042c8  63012fe2  loadli.w r2,  -3824(r30)
0042cc  b3900018  bfloat2float.rn r1, r1
0042d0  33110118  bfloat2float.rn r2, r2
0042d4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0042d8  9f000fe8  addli r1, r30, -3072
0042dc  00a00000  mfence { lm }
0042e0  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0042e4  12343002  vadd.s.mz vr8{mr1}, zero, vr3
0042e8  9f100000  addli r1, zero, 1
0042ec  7e8000e0  vmmov mr0, r1
0042f0  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0042f4  e3003fe2  loadli.w r1,  -3816(r30)
0042f8  1f210000  addli r2, zero, 2
0042fc  7e0001e0  vmmov mr0, r2
004300  1f410000  addli r2, zero, 4
004304  b3900018  bfloat2float.rn r1, r1
004308  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00430c  e3403fe2  loadli.w r1,  -3812(r30)
004310  7e0001e0  vmmov mr0, r2
004314  1f011000  addli r2, zero, 8
004318  b3900018  bfloat2float.rn r1, r1
00431c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004320  e3004fe2  loadli.w r1,  -3808(r30)
004324  7e0001e0  vmmov mr0, r2
004328  1f012000  addli r2, zero, 16
00432c  b3900018  bfloat2float.rn r1, r1
004330  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004334  e3404fe2  loadli.w r1,  -3804(r30)
004338  7e0001e0  vmmov mr0, r2
00433c  1f014000  addli r2, zero, 32
004340  b3900018  bfloat2float.rn r1, r1
004344  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004348  e3005fe2  loadli.w r1,  -3800(r30)
00434c  7e0001e0  vmmov mr0, r2
004350  1f018000  addli r2, zero, 64
004354  b3900018  bfloat2float.rn r1, r1
004358  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00435c  e3405fe2  loadli.w r1,  -3796(r30)
004360  7e0001e0  vmmov mr0, r2
004364  1f010001  addli r2, zero, 128
004368  b3900018  bfloat2float.rn r1, r1
00436c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004370  e3006fe2  loadli.w r1,  -3792(r30)
004374  7e0001e0  vmmov mr0, r2
004378  1f010002  addli r2, zero, 256
00437c  b3900018  bfloat2float.rn r1, r1
004380  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004384  e3406fe2  loadli.w r1,  -3788(r30)
004388  7e0001e0  vmmov mr0, r2
00438c  1f010004  addli r2, zero, 512
004390  b3900018  bfloat2float.rn r1, r1
004394  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004398  e3007fe2  loadli.w r1,  -3784(r30)
00439c  7e0001e0  vmmov mr0, r2
0043a0  1f010008  addli r2, zero, 1024
0043a4  b3900018  bfloat2float.rn r1, r1
0043a8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0043ac  e3407fe2  loadli.w r1,  -3780(r30)
0043b0  7e0001e0  vmmov mr0, r2
0043b4  1f010010  addli r2, zero, 2048
0043b8  b3900018  bfloat2float.rn r1, r1
0043bc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0043c0  e3008fe2  loadli.w r1,  -3776(r30)
0043c4  7e0001e0  vmmov mr0, r2
0043c8  1f010040  addli r2, zero, 8192
0043cc  b3900018  bfloat2float.rn r1, r1
0043d0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0043d4  e3408fe2  loadli.w r1,  -3772(r30)
0043d8  7e0001e0  vmmov mr0, r2
0043dc  2b410000  lui r2, 4
0043e0  b3900018  bfloat2float.rn r1, r1
0043e4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0043e8  e3009fe2  loadli.w r1,  -3768(r30)
0043ec  b3900018  bfloat2float.rn r1, r1
0043f0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0043f4  e300afe2  loadli.w r1,  -3760(r30)
0043f8  7e0001e0  vmmov mr0, r2
0043fc  b3900018  bfloat2float.rn r1, r1
004400  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004404  e3000fe9  loadli.w r1,  -2944(r30)
004408  63419fe2  loadli.w r2,  -3764(r30)
00440c  b3900018  bfloat2float.rn r1, r1
004410  33110118  bfloat2float.rn r2, r2
004414  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
004418  9f000fe9  addli r1, r30, -2944
00441c  00a00000  mfence { lm }
004420  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004424  12343002  vadd.s.mz vr8{mr1}, zero, vr3
004428  9f100000  addli r1, zero, 1
00442c  7e8000e0  vmmov mr0, r1
004430  6a248130  vor.u.mh vr8{mr0}, r2, vr8
004434  e340afe2  loadli.w r1,  -3756(r30)
004438  1f210000  addli r2, zero, 2
00443c  7e0001e0  vmmov mr0, r2
004440  1f410000  addli r2, zero, 4
004444  b3900018  bfloat2float.rn r1, r1
004448  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00444c  e340bfe2  loadli.w r1,  -3748(r30)
004450  7e0001e0  vmmov mr0, r2
004454  1f011000  addli r2, zero, 8
004458  b3900018  bfloat2float.rn r1, r1
00445c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004460  e300cfe2  loadli.w r1,  -3744(r30)
004464  7e0001e0  vmmov mr0, r2
004468  1f012000  addli r2, zero, 16
00446c  b3900018  bfloat2float.rn r1, r1
004470  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004474  e340cfe2  loadli.w r1,  -3740(r30)
004478  7e0001e0  vmmov mr0, r2
00447c  1f014000  addli r2, zero, 32
004480  b3900018  bfloat2float.rn r1, r1
004484  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004488  e300dfe2  loadli.w r1,  -3736(r30)
00448c  7e0001e0  vmmov mr0, r2
004490  1f018000  addli r2, zero, 64
004494  b3900018  bfloat2float.rn r1, r1
004498  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00449c  e300efe2  loadli.w r1,  -3728(r30)
0044a0  7e0001e0  vmmov mr0, r2
0044a4  1f010001  addli r2, zero, 128
0044a8  b3900018  bfloat2float.rn r1, r1
0044ac  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0044b0  e340efe2  loadli.w r1,  -3724(r30)
0044b4  7e0001e0  vmmov mr0, r2
0044b8  1f010002  addli r2, zero, 256
0044bc  b3900018  bfloat2float.rn r1, r1
0044c0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0044c4  e300ffe2  loadli.w r1,  -3720(r30)
0044c8  7e0001e0  vmmov mr0, r2
0044cc  1f010004  addli r2, zero, 512
0044d0  b3900018  bfloat2float.rn r1, r1
0044d4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0044d8  e340ffe2  loadli.w r1,  -3716(r30)
0044dc  7e0001e0  vmmov mr0, r2
0044e0  1f010008  addli r2, zero, 1024
0044e4  b3900018  bfloat2float.rn r1, r1
0044e8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0044ec  e3000fe3  loadli.w r1,  -3712(r30)
0044f0  7e0001e0  vmmov mr0, r2
0044f4  1f010010  addli r2, zero, 2048
0044f8  b3900018  bfloat2float.rn r1, r1
0044fc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004500  e3400fe3  loadli.w r1,  -3708(r30)
004504  7e0001e0  vmmov mr0, r2
004508  1f010040  addli r2, zero, 8192
00450c  b3900018  bfloat2float.rn r1, r1
004510  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004514  e3001fe3  loadli.w r1,  -3704(r30)
004518  7e0001e0  vmmov mr0, r2
00451c  2b410000  lui r2, 4
004520  b3900018  bfloat2float.rn r1, r1
004524  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
004528  e3401fe3  loadli.w r1,  -3700(r30)
00452c  b3900018  bfloat2float.rn r1, r1
004530  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004534  e3402fe3  loadli.w r1,  -3692(r30)
004538  7e0001e0  vmmov mr0, r2
00453c  b3900018  bfloat2float.rn r1, r1
004540  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004544  e3008fea  loadli.w r1,  -2752(r30)
004548  63012fe3  loadli.w r2,  -3696(r30)
00454c  b3900018  bfloat2float.rn r1, r1
004550  33110118  bfloat2float.rn r2, r2
004554  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
004558  9f008fea  addli r1, r30, -2752
00455c  00a00000  mfence { lm }
004560  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004564  12343002  vadd.s.mz vr8{mr1}, zero, vr3
004568  9f100000  addli r1, zero, 1
00456c  7e8000e0  vmmov mr0, r1
004570  6a248130  vor.u.mh vr8{mr0}, r2, vr8
004574  e3003fe3  loadli.w r1,  -3688(r30)
004578  1f210000  addli r2, zero, 2
00457c  7e0001e0  vmmov mr0, r2
004580  1f012000  addli r2, zero, 16
004584  b3900018  bfloat2float.rn r1, r1
004588  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00458c  9f400000  addli r1, zero, 4
004590  7e8000e0  vmmov mr0, r1
004594  e3403fe3  loadli.w r1,  -3684(r30)
004598  b3900018  bfloat2float.rn r1, r1
00459c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0045a0  9f001000  addli r1, zero, 8
0045a4  fe8100e0  vmmov mr3, r1
0045a8  e3004fe3  loadli.w r1,  -3680(r30)
0045ac  b3900018  bfloat2float.rn r1, r1
0045b0  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0045b4  9f008000  addli r1, zero, 64
0045b8  fe0101e0  vmmov mr3, r2
0045bc  1f010004  addli r2, zero, 512
0045c0  7e8000e0  vmmov mr0, r1
0045c4  9f004000  addli r1, zero, 32
0045c8  7e8100e0  vmmov mr2, r1
0045cc  e3404fe3  loadli.w r1,  -3676(r30)
0045d0  b3900018  bfloat2float.rn r1, r1
0045d4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0045d8  e3005fe3  loadli.w r1,  -3672(r30)
0045dc  b3900018  bfloat2float.rn r1, r1
0045e0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0045e4  e300bfe2  loadli.w r1,  -3752(r30)
0045e8  7e0101e0  vmmov mr2, r2
0045ec  1f010008  addli r2, zero, 1024
0045f0  b3900018  bfloat2float.rn r1, r1
0045f4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0045f8  9f000001  addli r1, zero, 128
0045fc  7e8000e0  vmmov mr0, r1
004600  e340dfe2  loadli.w r1,  -3732(r30)
004604  b3900018  bfloat2float.rn r1, r1
004608  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00460c  9f000002  addli r1, zero, 256
004610  7e8000e0  vmmov mr0, r1
004614  e3405fe3  loadli.w r1,  -3668(r30)
004618  b3900018  bfloat2float.rn r1, r1
00461c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004620  9f000010  addli r1, zero, 2048
004624  7e8000e0  vmmov mr0, r1
004628  e3006fe3  loadli.w r1,  -3664(r30)
00462c  b3900018  bfloat2float.rn r1, r1
004630  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
004634  e3406fe3  loadli.w r1,  -3660(r30)
004638  7e0101e0  vmmov mr2, r2
00463c  2b010080  lui r2, 524288
004640  b3900018  bfloat2float.rn r1, r1
004644  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
004648  e3007fe3  loadli.w r1,  -3656(r30)
00464c  e3010fd9  loadli.w r3,  -4992(r30)
004650  b3900018  bfloat2float.rn r1, r1
004654  97a12100  xor r3, r3, r2
004658  92949102  vadd.f.mz.rn vr9{mr1}, r3, vr9
00465c  1f012000  addli r2, zero, 16
004660  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004664  ab400000  lui r1, 4
004668  7e8000e0  vmmov mr0, r1
00466c  e3000ff3  loadli.w r1,  -1664(r30)
004670  8a949002  vmul.f.mz.rn vr9{mr1}, r1, vr9
004674  a693b402  vmac.f.mz.rn vr7{mr1}, vr9, vr11
004678  e69503c0  vabs.f vr11, vr7
00467c  e3407fe3  loadli.w r1,  -3652(r30)
004680  ea243122  vor.u.mz vr9{mr1}, r2, vr3
004684  1f010020  addli r2, zero, 4096
004688  7e0101e0  vmmov mr2, r2
00468c  2b01807f  lui r2, 522240
004690  b3900018  bfloat2float.rn r1, r1
004694  ea213122  vor.u.mz vr3{mr1}, r2, vr3
004698  1f018ff2  addli r2, r30, -1728
00469c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0046a0  e3008ff2  loadli.w r1,  -1728(r30)
0046a4  00a00000  mfence { lm }
0046a8  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
0046ac  1f010040  addli r2, zero, 8192
0046b0  eeb474c2  vsrl.s.mz vr9{mr1}, vr9, vr7
0046b4  b3900018  bfloat2float.rn r1, r1
0046b8  7e0101e0  vmmov mr2, r2
0046bc  1f110000  addli r2, zero, 1
0046c0  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0046c4  e3000ff1  loadli.w r1,  -1920(r30)
0046c8  ea349102  vand.s.mz vr9{mr1}, r2, vr9
0046cc  1f010ff1  addli r2, r30, -1920
0046d0  00a00000  mfence { lm }
0046d4  76a1b142  vlt.u.mz mr2{mr1}, vr3, vr11
0046d8  fe0201a0  vmmov r5, mr2
0046dc  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0046e0  2b810000  lui r2, 8
0046e4  b3900018  bfloat2float.rn r1, r1
0046e8  96b49302  vadd.s.mz vr9{mr1}, vr7, vr9
0046ec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0046f0  e3008feb  loadli.w r1,  -2624(r30)
0046f4  7e0001e0  vmmov mr0, r2
0046f8  2b014000  lui r2, 1024
0046fc  ea337122  vor.s.mz vr7{mr1}, r2, vr7
004700  b3900018  bfloat2float.rn r1, r1
004704  92b59902  vadd.s.mz vr11{mr1}, r19, vr9
004708  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00470c  9f008feb  addli r1, r30, -2624
004710  00a00000  mfence { lm }
004714  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004718  9bc0f200  srli r1, r5, 15
00471c  9b801000  andi r1, r1, 1
004720  3bb00000  bneq r1, zero, 12
004724  fab0f540  vextracti.s r1, 15(vr11)
004728  5b010000  j 8
00472c  fab0f340  vextracti.s r1, 15(vr7)
004730  1bc1e200  srli r2, r5, 14
004734  1f120000  addli r4, zero, 1
004738  1f490000  addli r18, zero, 4
00473c  9f0a8ff3  addli r21, r30, -1600
004740  1f6b3000  addli r22, zero, 30
004744  9f4b3000  addli r23, zero, 28
004748  1f2c3000  addli r24, zero, 26
00474c  9f0c3000  addli r25, zero, 24
004750  1f6d2000  addli r26, zero, 22
004754  9f4d2000  addli r27, zero, 20
004758  1f2e2000  addli r28, zero, 18
00475c  1b011100  andi r2, r2, 1
004760  7e0102e0  vmmov mr2, r4
004764  3b300100  bneq r2, zero, 12
004768  7ab1e540  vextracti.s r2, 14(vr11)
00476c  5b010000  j 8
004770  7ab1e340  vextracti.s r2, 14(vr7)
004774  1bc2d200  srli r4, r5, 13
004778  1b021200  andi r4, r4, 1
00477c  3b300200  bneq r4, zero, 12
004780  7ab2d540  vextracti.s r4, 13(vr11)
004784  5b010000  j 8
004788  7ab2d340  vextracti.s r4, 13(vr7)
00478c  1bc3c200  srli r6, r5, 12
004790  1b031300  andi r6, r6, 1
004794  3b300300  bneq r6, zero, 12
004798  7ab3c540  vextracti.s r6, 12(vr11)
00479c  5b010000  j 8
0047a0  7ab3c340  vextracti.s r6, 12(vr7)
0047a4  9bc3b200  srli r7, r5, 11
0047a8  9b831300  andi r7, r7, 1
0047ac  3bb00300  bneq r7, zero, 12
0047b0  fab3b540  vextracti.s r7, 11(vr11)
0047b4  5b010000  j 8
0047b8  fab3b340  vextracti.s r7, 11(vr7)
0047bc  1bc4a200  srli r8, r5, 10
0047c0  1b041400  andi r8, r8, 1
0047c4  3b300400  bneq r8, zero, 12
0047c8  7ab4a540  vextracti.s r8, 10(vr11)
0047cc  5b010000  j 8
0047d0  7ab4a340  vextracti.s r8, 10(vr7)
0047d4  9bc49200  srli r9, r5, 9
0047d8  9b841400  andi r9, r9, 1
0047dc  3bb00400  bneq r9, zero, 12
0047e0  fab49540  vextracti.s r9, 9(vr11)
0047e4  5b010000  j 8
0047e8  fab49340  vextracti.s r9, 9(vr7)
0047ec  1bc58200  srli r10, r5, 8
0047f0  1b051500  andi r10, r10, 1
0047f4  3b300500  bneq r10, zero, 12
0047f8  7ab58540  vextracti.s r10, 8(vr11)
0047fc  5b010000  j 8
004800  7ab58340  vextracti.s r10, 8(vr7)
004804  9bc57200  srli r11, r5, 7
004808  9b851500  andi r11, r11, 1
00480c  3bb00500  bneq r11, zero, 12
004810  fab57540  vextracti.s r11, 7(vr11)
004814  5b010000  j 8
004818  fab57340  vextracti.s r11, 7(vr7)
00481c  1bc66200  srli r12, r5, 6
004820  1b061600  andi r12, r12, 1
004824  3b300600  bneq r12, zero, 12
004828  7ab66540  vextracti.s r12, 6(vr11)
00482c  5b010000  j 8
004830  7ab66340  vextracti.s r12, 6(vr7)
004834  9bc65200  srli r13, r5, 5
004838  9b861600  andi r13, r13, 1
00483c  3bb00600  bneq r13, zero, 12
004840  fab65540  vextracti.s r13, 5(vr11)
004844  5b010000  j 8
004848  fab65340  vextracti.s r13, 5(vr7)
00484c  1bc74200  srli r14, r5, 4
004850  1b071700  andi r14, r14, 1
004854  3b300700  bneq r14, zero, 12
004858  7ab74540  vextracti.s r14, 4(vr11)
00485c  5b010000  j 8
004860  7ab74340  vextracti.s r14, 4(vr7)
004864  9bc73200  srli r15, r5, 3
004868  9b871700  andi r15, r15, 1
00486c  3bb00700  bneq r15, zero, 12
004870  fab73540  vextracti.s r15, 3(vr11)
004874  5b010000  j 8
004878  fab73340  vextracti.s r15, 3(vr7)
00487c  1bc82200  srli r16, r5, 2
004880  1b081800  andi r16, r16, 1
004884  3b300800  bneq r16, zero, 12
004888  7ab82540  vextracti.s r16, 2(vr11)
00488c  5b010000  j 8
004890  7ab82340  vextracti.s r16, 2(vr7)
004894  9bc81200  srli r17, r5, 1
004898  9b881800  andi r17, r17, 1
00489c  3bb00800  bneq r17, zero, 12
0048a0  fab81540  vextracti.s r17, 1(vr11)
0048a4  5b010000  j 8
0048a8  fab81340  vextracti.s r17, 1(vr7)
0048ac  1f0a0ff2  addli r20, r30, -1792
0048b0  9b821200  andi r5, r5, 1
0048b4  42140a02  vload_mask16.mz vr8{mr1}, 0(r20)
0048b8  630a0ff3  loadli.w r20,  -1664(r30)
0048bc  664004a0  vmerge_h.hf vr0, vr8, vr0
0048c0  12900102  vadd.f.mz.rn vr0{mr1}, r3, vr0
0048c4  8a140a02  vmul.f.mz.rn vr9{mr1}, r20, vr0
0048c8  3bb00200  bneq r5, zero, 12
0048cc  fab20540  vextracti.s r5, 0(vr11)
0048d0  5b010000  j 8
0048d4  fab20340  vextracti.s r5, 0(vr7)
0048d8  1f1a0000  addli r20, zero, 1
0048dc  1f000ff2  addli zero, r30, -1792
0048e0  a6904402  vmac.f.mz.rn vr1{mr1}, vr9, vr4
0048e4  e69400c0  vabs.f vr9, vr1
0048e8  c2150002  vload_mask16.mz vr11{mr1}, 0(zero)
0048ec  17200000  xor zero, zero, zero
0048f0  9233b002  vadd.s.mz vr7{mr1}, zero, vr11
0048f4  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0048f8  eaa37234  vor.u.mh vr7{mr2}, r5, vr7
0048fc  9f220000  addli r5, zero, 2
004900  fe8102e0  vmmov mr3, r5
004904  9f420000  addli r5, zero, 4
004908  eaa37836  vor.u.mh vr7{mr3}, r17, vr7
00490c  7e8002e0  vmmov mr0, r5
004910  9f021000  addli r5, zero, 8
004914  7e8102e0  vmmov mr2, r5
004918  9f022000  addli r5, zero, 16
00491c  ea237830  vor.u.mh vr7{mr0}, r16, vr7
004920  eaa37734  vor.u.mh vr7{mr2}, r15, vr7
004924  7e8102e0  vmmov mr2, r5
004928  9f024000  addli r5, zero, 32
00492c  fe8102e0  vmmov mr3, r5
004930  9f028000  addli r5, zero, 64
004934  ea237734  vor.u.mh vr7{mr2}, r14, vr7
004938  7e8102e0  vmmov mr2, r5
00493c  9f020001  addli r5, zero, 128
004940  eaa37636  vor.u.mh vr7{mr3}, r13, vr7
004944  ea237634  vor.u.mh vr7{mr2}, r12, vr7
004948  7e8102e0  vmmov mr2, r5
00494c  9f020002  addli r5, zero, 256
004950  eaa37534  vor.u.mh vr7{mr2}, r11, vr7
004954  7e8102e0  vmmov mr2, r5
004958  9f020004  addli r5, zero, 512
00495c  ea237534  vor.u.mh vr7{mr2}, r10, vr7
004960  7e8102e0  vmmov mr2, r5
004964  9f020008  addli r5, zero, 1024
004968  eaa37434  vor.u.mh vr7{mr2}, r9, vr7
00496c  7e8102e0  vmmov mr2, r5
004970  9f020010  addli r5, zero, 2048
004974  ea237434  vor.u.mh vr7{mr2}, r8, vr7
004978  7e8102e0  vmmov mr2, r5
00497c  9f020020  addli r5, zero, 4096
004980  eaa37334  vor.u.mh vr7{mr2}, r7, vr7
004984  7e8102e0  vmmov mr2, r5
004988  9f020040  addli r5, zero, 8192
00498c  ea237334  vor.u.mh vr7{mr2}, r6, vr7
004990  7e8102e0  vmmov mr2, r5
004994  ea237234  vor.u.mh vr7{mr2}, r4, vr7
004998  2b420000  lui r4, 4
00499c  fe0102e0  vmmov mr3, r4
0049a0  ea237136  vor.u.mh vr7{mr3}, r2, vr7
0049a4  2b810000  lui r2, 8
0049a8  fe0101e0  vmmov mr3, r2
0049ac  1f011000  addli r2, zero, 8
0049b0  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
0049b4  9f100000  addli r1, zero, 1
0049b8  7e8100e0  vmmov mr2, r1
0049bc  9f200000  addli r1, zero, 2
0049c0  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
0049c4  7e8100e0  vmmov mr2, r1
0049c8  9f200000  addli r1, zero, 2
0049cc  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
0049d0  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0049d4  7e0001e0  vmmov mr0, r2
0049d8  1f010001  addli r2, zero, 128
0049dc  7e0101e0  vmmov mr2, r2
0049e0  1f010004  addli r2, zero, 512
0049e4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0049e8  9f002000  addli r1, zero, 16
0049ec  7e8000e0  vmmov mr0, r1
0049f0  9f004000  addli r1, zero, 32
0049f4  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0049f8  7e8000e0  vmmov mr0, r1
0049fc  9f008000  addli r1, zero, 64
004a00  6a400930  vor.hf.mh vr0{mr0}, r18, vr0
004a04  7e8000e0  vmmov mr0, r1
004a08  9f600000  addli r1, zero, 6
004a0c  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
004a10  6ac00034  vor.hf.mh vr0{mr2}, r1, vr0
004a14  9f000002  addli r1, zero, 256
004a18  7e8100e0  vmmov mr2, r1
004a1c  9f001000  addli r1, zero, 8
004a20  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004a24  7e0101e0  vmmov mr2, r2
004a28  1f010010  addli r2, zero, 2048
004a2c  6ac00034  vor.hf.mh vr0{mr2}, r1, vr0
004a30  9f000008  addli r1, zero, 1024
004a34  7e8100e0  vmmov mr2, r1
004a38  9f201000  addli r1, zero, 10
004a3c  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004a40  7e0101e0  vmmov mr2, r2
004a44  1f010040  addli r2, zero, 8192
004a48  6ac00034  vor.hf.mh vr0{mr2}, r1, vr0
004a4c  9f000020  addli r1, zero, 4096
004a50  7e8100e0  vmmov mr2, r1
004a54  9f401000  addli r1, zero, 12
004a58  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004a5c  7e0101e0  vmmov mr2, r2
004a60  2b010200  lui r2, 32
004a64  6ac00034  vor.hf.mh vr0{mr2}, r1, vr0
004a68  ab400000  lui r1, 4
004a6c  7e8100e0  vmmov mr2, r1
004a70  9f601000  addli r1, zero, 14
004a74  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004a78  6ac00036  vor.hf.mh vr0{mr3}, r1, vr0
004a7c  ab000100  lui r1, 16
004a80  7e8100e0  vmmov mr2, r1
004a84  9f002000  addli r1, zero, 16
004a88  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004a8c  7e0101e0  vmmov mr2, r2
004a90  2b014000  lui r2, 1024
004a94  6ac00034  vor.hf.mh vr0{mr2}, r1, vr0
004a98  ab000400  lui r1, 64
004a9c  7e8100e0  vmmov mr2, r1
004aa0  ab000800  lui r1, 128
004aa4  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004aa8  7e8100e0  vmmov mr2, r1
004aac  ab001000  lui r1, 256
004ab0  6a400e34  vor.hf.mh vr0{mr2}, r28, vr0
004ab4  7e8100e0  vmmov mr2, r1
004ab8  ab002000  lui r1, 512
004abc  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004ac0  7e8100e0  vmmov mr2, r1
004ac4  ab004000  lui r1, 1024
004ac8  6ac00d34  vor.hf.mh vr0{mr2}, r27, vr0
004acc  7e8100e0  vmmov mr2, r1
004ad0  ab008000  lui r1, 2048
004ad4  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004ad8  7e8100e0  vmmov mr2, r1
004adc  ab000001  lui r1, 4096
004ae0  6a400d34  vor.hf.mh vr0{mr2}, r26, vr0
004ae4  7e8100e0  vmmov mr2, r1
004ae8  ab000002  lui r1, 8192
004aec  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004af0  7e8100e0  vmmov mr2, r1
004af4  ab000004  lui r1, 16384
004af8  6ac00c34  vor.hf.mh vr0{mr2}, r25, vr0
004afc  7e8100e0  vmmov mr2, r1
004b00  ab000008  lui r1, 32768
004b04  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004b08  7e8100e0  vmmov mr2, r1
004b0c  9f008ff2  addli r1, r30, -1728
004b10  6a400c34  vor.hf.mh vr0{mr2}, r24, vr0
004b14  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
004b18  ab000010  lui r1, 65536
004b1c  7e8100e0  vmmov mr2, r1
004b20  ab000020  lui r1, 131072
004b24  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004b28  7e8100e0  vmmov mr2, r1
004b2c  ab000040  lui r1, 262144
004b30  6eb211c2  vsrl.s.mz vr4{mr1}, vr3, vr1
004b34  6ac00b34  vor.hf.mh vr0{mr2}, r23, vr0
004b38  7e8100e0  vmmov mr2, r1
004b3c  9f000ff1  addli r1, r30, -1920
004b40  6a324a02  vand.s.mz vr4{mr1}, r20, vr4
004b44  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004b48  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
004b4c  ab000080  lui r1, 524288
004b50  16b24002  vadd.s.mz vr4{mr1}, vr1, vr4
004b54  ea301122  vor.s.mz vr1{mr1}, r2, vr1
004b58  2ba1aaaa  lui r2, 699050
004b5c  1f215115  addli r2, r2, 2730
004b60  76a19142  vlt.u.mz mr2{mr1}, vr3, vr9
004b64  12b24902  vadd.s.mz vr4{mr1}, r19, vr4
004b68  7e0301a0  vmmov r6, mr2
004b6c  7e8100e0  vmmov mr2, r1
004b70  9b40f300  srli r1, r6, 15
004b74  6a400b34  vor.hf.mh vr0{mr2}, r22, vr0
004b78  7e0101e0  vmmov mr2, r2
004b7c  9b801000  andi r1, r1, 1
004b80  62c07a14  vscatter.mh vr7{mr2}, vr0{r21}
004b84  3bb00000  bneq r1, zero, 12
004b88  fa30f240  vextracti.s r1, 15(vr4)
004b8c  5b010000  j 8
004b90  fab0f040  vextracti.s r1, 15(vr1)
004b94  1f018fec  addli r2, r30, -2496
004b98  1f120000  addli r4, zero, 1
004b9c  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004ba0  1f018fe9  addli r2, r30, -2880
004ba4  7e0102e0  vmmov mr2, r4
004ba8  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
004bac  1b41e300  srli r2, r6, 14
004bb0  1b011100  andi r2, r2, 1
004bb4  3b300100  bneq r2, zero, 12
004bb8  7a31e240  vextracti.s r2, 14(vr4)
004bbc  5b010000  j 8
004bc0  7ab1e040  vextracti.s r2, 14(vr1)
004bc4  1f420000  addli r4, zero, 4
004bc8  fe0102e0  vmmov mr3, r4
004bcc  1b42d300  srli r4, r6, 13
004bd0  1b021200  andi r4, r4, 1
004bd4  3b300200  bneq r4, zero, 12
004bd8  7a32d240  vextracti.s r4, 13(vr4)
004bdc  5b010000  j 8
004be0  7ab2d040  vextracti.s r4, 13(vr1)
004be4  9b42c300  srli r5, r6, 12
004be8  9b821200  andi r5, r5, 1
004bec  3bb00200  bneq r5, zero, 12
004bf0  fa32c240  vextracti.s r5, 12(vr4)
004bf4  5b010000  j 8
004bf8  fab2c040  vextracti.s r5, 12(vr1)
004bfc  9b43b300  srli r7, r6, 11
004c00  9b831300  andi r7, r7, 1
004c04  3bb00300  bneq r7, zero, 12
004c08  fa33b240  vextracti.s r7, 11(vr4)
004c0c  5b010000  j 8
004c10  fab3b040  vextracti.s r7, 11(vr1)
004c14  1b44a300  srli r8, r6, 10
004c18  1b041400  andi r8, r8, 1
004c1c  3b300400  bneq r8, zero, 12
004c20  7a34a240  vextracti.s r8, 10(vr4)
004c24  5b010000  j 8
004c28  7ab4a040  vextracti.s r8, 10(vr1)
004c2c  9b449300  srli r9, r6, 9
004c30  9b841400  andi r9, r9, 1
004c34  3bb00400  bneq r9, zero, 12
004c38  fa349240  vextracti.s r9, 9(vr4)
004c3c  5b010000  j 8
004c40  fab49040  vextracti.s r9, 9(vr1)
004c44  1b458300  srli r10, r6, 8
004c48  1b051500  andi r10, r10, 1
004c4c  3b300500  bneq r10, zero, 12
004c50  7a358240  vextracti.s r10, 8(vr4)
004c54  5b010000  j 8
004c58  7ab58040  vextracti.s r10, 8(vr1)
004c5c  9b457300  srli r11, r6, 7
004c60  9b851500  andi r11, r11, 1
004c64  3bb00500  bneq r11, zero, 12
004c68  fa357240  vextracti.s r11, 7(vr4)
004c6c  5b010000  j 8
004c70  fab57040  vextracti.s r11, 7(vr1)
004c74  1b466300  srli r12, r6, 6
004c78  1b061600  andi r12, r12, 1
004c7c  3b300600  bneq r12, zero, 12
004c80  7a366240  vextracti.s r12, 6(vr4)
004c84  5b010000  j 8
004c88  7ab66040  vextracti.s r12, 6(vr1)
004c8c  9b465300  srli r13, r6, 5
004c90  9b861600  andi r13, r13, 1
004c94  3bb00600  bneq r13, zero, 12
004c98  fa365240  vextracti.s r13, 5(vr4)
004c9c  5b010000  j 8
004ca0  fab65040  vextracti.s r13, 5(vr1)
004ca4  1b474300  srli r14, r6, 4
004ca8  1b071700  andi r14, r14, 1
004cac  3b300700  bneq r14, zero, 12
004cb0  7a374240  vextracti.s r14, 4(vr4)
004cb4  5b010000  j 8
004cb8  7ab74040  vextracti.s r14, 4(vr1)
004cbc  9b473300  srli r15, r6, 3
004cc0  9b871700  andi r15, r15, 1
004cc4  3bb00700  bneq r15, zero, 12
004cc8  fa373240  vextracti.s r15, 3(vr4)
004ccc  5b010000  j 8
004cd0  fab73040  vextracti.s r15, 3(vr1)
004cd4  1b482300  srli r16, r6, 2
004cd8  1b081800  andi r16, r16, 1
004cdc  3b300800  bneq r16, zero, 12
004ce0  7a382240  vextracti.s r16, 2(vr4)
004ce4  5b010000  j 8
004ce8  7ab82040  vextracti.s r16, 2(vr1)
004cec  9b481300  srli r17, r6, 1
004cf0  9b881800  andi r17, r17, 1
004cf4  3be00800  bneq r17, zero, 24
004cf8  fa381240  vextracti.s r17, 1(vr4)
004cfc  1b031300  andi r6, r6, 1
004d00  37600300  beq r6, zero, 24
004d04  7ab30040  vextracti.s r6, 0(vr1)
004d08  db020000  j 20
004d0c  fab81040  vextracti.s r17, 1(vr1)
004d10  1b031300  andi r6, r6, 1
004d14  bb4f03fe  bneq r6, zero, -16
004d18  7a330240  vextracti.s r6, 0(vr4)
004d1c  9233b002  vadd.s.mz vr7{mr1}, zero, vr11
004d20  e6c03580  vmerge_l.hf vr1, vr11, vr3
004d24  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004d28  ea237334  vor.u.mh vr7{mr2}, r6, vr7
004d2c  1f230000  addli r6, zero, 2
004d30  7e0103e0  vmmov mr2, r6
004d34  1f031000  addli r6, zero, 8
004d38  eaa37834  vor.u.mh vr7{mr2}, r17, vr7
004d3c  7e0103e0  vmmov mr2, r6
004d40  1f032000  addli r6, zero, 16
004d44  ea237836  vor.u.mh vr7{mr3}, r16, vr7
004d48  eaa37734  vor.u.mh vr7{mr2}, r15, vr7
004d4c  7e0103e0  vmmov mr2, r6
004d50  1f034000  addli r6, zero, 32
004d54  ea237734  vor.u.mh vr7{mr2}, r14, vr7
004d58  7e0103e0  vmmov mr2, r6
004d5c  1f030001  addli r6, zero, 128
004d60  eaa37634  vor.u.mh vr7{mr2}, r13, vr7
004d64  7e0103e0  vmmov mr2, r6
004d68  1f030002  addli r6, zero, 256
004d6c  ea237630  vor.u.mh vr7{mr0}, r12, vr7
004d70  eaa37534  vor.u.mh vr7{mr2}, r11, vr7
004d74  7e0103e0  vmmov mr2, r6
004d78  1f030004  addli r6, zero, 512
004d7c  ea237534  vor.u.mh vr7{mr2}, r10, vr7
004d80  7e0103e0  vmmov mr2, r6
004d84  1f030008  addli r6, zero, 1024
004d88  eaa37434  vor.u.mh vr7{mr2}, r9, vr7
004d8c  7e0103e0  vmmov mr2, r6
004d90  1f030010  addli r6, zero, 2048
004d94  ea237434  vor.u.mh vr7{mr2}, r8, vr7
004d98  7e0103e0  vmmov mr2, r6
004d9c  eaa37334  vor.u.mh vr7{mr2}, r7, vr7
004da0  63030ff3  loadli.w r6,  -1664(r30)
004da4  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
004da8  2693a002  vmac.f.mz.rn vr6{mr1}, vr1, vr10
004dac  661203c0  vabs.f vr4, vr6
004db0  1f038ff2  addli r6, r30, -1728
004db4  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
004db8  1f030020  addli r6, zero, 4096
004dbc  7e0103e0  vmmov mr2, r6
004dc0  eaa37234  vor.u.mh vr7{mr2}, r5, vr7
004dc4  9f020040  addli r5, zero, 8192
004dc8  7e8102e0  vmmov mr2, r5
004dcc  eeb060c2  vsrl.s.mz vr1{mr1}, vr1, vr6
004dd0  ea237234  vor.u.mh vr7{mr2}, r4, vr7
004dd4  2b420000  lui r4, 4
004dd8  7e0102e0  vmmov mr2, r4
004ddc  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
004de0  ea237134  vor.u.mh vr7{mr2}, r2, vr7
004de4  1f010ff1  addli r2, r30, -1920
004de8  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
004dec  2b810000  lui r2, 8
004df0  96301302  vadd.s.mz vr1{mr1}, vr6, vr1
004df4  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
004df8  76214542  vlt.u.mz mr2{mr1}, vr10, vr4
004dfc  7e0301a0  vmmov r6, mr2
004e00  7e0101e0  vmmov mr2, r2
004e04  2b014000  lui r2, 1024
004e08  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
004e0c  9b40f300  srli r1, r6, 15
004e10  6a326122  vor.s.mz vr4{mr1}, r2, vr6
004e14  2ba1aaaa  lui r2, 699050
004e18  9b801000  andi r1, r1, 1
004e1c  1f215115  addli r2, r2, 2730
004e20  7e0101e0  vmmov mr2, r2
004e24  6341dfd1  loadli.w r2,  -5908(r30)
004e28  62407114  vscatter.mh vr7{mr2}, vr0{r2}
004e2c  3bb00000  bneq r1, zero, 12
004e30  fab0f040  vextracti.s r1, 15(vr1)
004e34  5b010000  j 8
004e38  fa30f240  vextracti.s r1, 15(vr4)
004e3c  1f018fee  addli r2, r30, -2240
004e40  1f120000  addli r4, zero, 1
004e44  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
004e48  1b41e300  srli r2, r6, 14
004e4c  7e0102e0  vmmov mr2, r4
004e50  1b011100  andi r2, r2, 1
004e54  3b300100  bneq r2, zero, 12
004e58  7ab1e040  vextracti.s r2, 14(vr1)
004e5c  5b010000  j 8
004e60  7a31e240  vextracti.s r2, 14(vr4)
004e64  1b42d300  srli r4, r6, 13
004e68  1b021200  andi r4, r4, 1
004e6c  3b300200  bneq r4, zero, 12
004e70  7ab2d040  vextracti.s r4, 13(vr1)
004e74  5b010000  j 8
004e78  7a32d240  vextracti.s r4, 13(vr4)
004e7c  9b42c300  srli r5, r6, 12
004e80  9b821200  andi r5, r5, 1
004e84  3bb00200  bneq r5, zero, 12
004e88  fab2c040  vextracti.s r5, 12(vr1)
004e8c  5b010000  j 8
004e90  fa32c240  vextracti.s r5, 12(vr4)
004e94  9b43b300  srli r7, r6, 11
004e98  9b831300  andi r7, r7, 1
004e9c  3bb00300  bneq r7, zero, 12
004ea0  fab3b040  vextracti.s r7, 11(vr1)
004ea4  5b010000  j 8
004ea8  fa33b240  vextracti.s r7, 11(vr4)
004eac  1b44a300  srli r8, r6, 10
004eb0  1b041400  andi r8, r8, 1
004eb4  3b300400  bneq r8, zero, 12
004eb8  7ab4a040  vextracti.s r8, 10(vr1)
004ebc  5b010000  j 8
004ec0  7a34a240  vextracti.s r8, 10(vr4)
004ec4  9b449300  srli r9, r6, 9
004ec8  9b841400  andi r9, r9, 1
004ecc  3bb00400  bneq r9, zero, 12
004ed0  fab49040  vextracti.s r9, 9(vr1)
004ed4  5b010000  j 8
004ed8  fa349240  vextracti.s r9, 9(vr4)
004edc  1b458300  srli r10, r6, 8
004ee0  1b051500  andi r10, r10, 1
004ee4  3b300500  bneq r10, zero, 12
004ee8  7ab58040  vextracti.s r10, 8(vr1)
004eec  5b010000  j 8
004ef0  7a358240  vextracti.s r10, 8(vr4)
004ef4  9b457300  srli r11, r6, 7
004ef8  9b851500  andi r11, r11, 1
004efc  3bb00500  bneq r11, zero, 12
004f00  fab57040  vextracti.s r11, 7(vr1)
004f04  5b010000  j 8
004f08  fa357240  vextracti.s r11, 7(vr4)
004f0c  1b466300  srli r12, r6, 6
004f10  1b061600  andi r12, r12, 1
004f14  3b300600  bneq r12, zero, 12
004f18  7ab66040  vextracti.s r12, 6(vr1)
004f1c  5b010000  j 8
004f20  7a366240  vextracti.s r12, 6(vr4)
004f24  9b465300  srli r13, r6, 5
004f28  9b861600  andi r13, r13, 1
004f2c  3bb00600  bneq r13, zero, 12
004f30  fab65040  vextracti.s r13, 5(vr1)
004f34  5b010000  j 8
004f38  fa365240  vextracti.s r13, 5(vr4)
004f3c  1b474300  srli r14, r6, 4
004f40  1b071700  andi r14, r14, 1
004f44  3b300700  bneq r14, zero, 12
004f48  7ab74040  vextracti.s r14, 4(vr1)
004f4c  5b010000  j 8
004f50  7a374240  vextracti.s r14, 4(vr4)
004f54  9b473300  srli r15, r6, 3
004f58  9b871700  andi r15, r15, 1
004f5c  3bb00700  bneq r15, zero, 12
004f60  fab73040  vextracti.s r15, 3(vr1)
004f64  5b010000  j 8
004f68  fa373240  vextracti.s r15, 3(vr4)
004f6c  1b482300  srli r16, r6, 2
004f70  1b081800  andi r16, r16, 1
004f74  3b300800  bneq r16, zero, 12
004f78  7ab82040  vextracti.s r16, 2(vr1)
004f7c  5b010000  j 8
004f80  7a382240  vextracti.s r16, 2(vr4)
004f84  9b481300  srli r17, r6, 1
004f88  9b881800  andi r17, r17, 1
004f8c  3be00800  bneq r17, zero, 24
004f90  fab81040  vextracti.s r17, 1(vr1)
004f94  1b031300  andi r6, r6, 1
004f98  37600300  beq r6, zero, 24
004f9c  7a330240  vextracti.s r6, 0(vr4)
004fa0  db020000  j 20
004fa4  fa381240  vextracti.s r17, 1(vr4)
004fa8  1b031300  andi r6, r6, 1
004fac  bb4f03fe  bneq r6, zero, -16
004fb0  7ab30040  vextracti.s r6, 0(vr1)
004fb4  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
004fb8  e6c035a0  vmerge_h.hf vr1, vr11, vr3
004fbc  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
004fc0  6a224334  vor.u.mh vr4{mr2}, r6, vr4
004fc4  1f230000  addli r6, zero, 2
004fc8  7e0103e0  vmmov mr2, r6
004fcc  1f031000  addli r6, zero, 8
004fd0  6aa24834  vor.u.mh vr4{mr2}, r17, vr4
004fd4  7e0103e0  vmmov mr2, r6
004fd8  1f032000  addli r6, zero, 16
004fdc  6a224836  vor.u.mh vr4{mr3}, r16, vr4
004fe0  6aa24734  vor.u.mh vr4{mr2}, r15, vr4
004fe4  7e0103e0  vmmov mr2, r6
004fe8  1f034000  addli r6, zero, 32
004fec  6a224734  vor.u.mh vr4{mr2}, r14, vr4
004ff0  7e0103e0  vmmov mr2, r6
004ff4  1f030001  addli r6, zero, 128
004ff8  6aa24634  vor.u.mh vr4{mr2}, r13, vr4
004ffc  7e0103e0  vmmov mr2, r6
005000  1f030002  addli r6, zero, 256
005004  6a224630  vor.u.mh vr4{mr0}, r12, vr4
005008  6aa24534  vor.u.mh vr4{mr2}, r11, vr4
00500c  7e0103e0  vmmov mr2, r6
005010  1f030004  addli r6, zero, 512
005014  6a224534  vor.u.mh vr4{mr2}, r10, vr4
005018  7e0103e0  vmmov mr2, r6
00501c  1f030008  addli r6, zero, 1024
005020  6aa24434  vor.u.mh vr4{mr2}, r9, vr4
005024  7e0103e0  vmmov mr2, r6
005028  1f030010  addli r6, zero, 2048
00502c  6a224434  vor.u.mh vr4{mr2}, r8, vr4
005030  7e0103e0  vmmov mr2, r6
005034  6aa24334  vor.u.mh vr4{mr2}, r7, vr4
005038  63030ff3  loadli.w r6,  -1664(r30)
00503c  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
005040  1f030fe0  addli r6, r30, -4096
005044  c2110302  vload_mask16.mz vr3{mr1}, 0(r6)
005048  1f038ff2  addli r6, r30, -1728
00504c  a6912002  vmac.f.mz.rn vr3{mr1}, vr1, vr2
005050  669301c0  vabs.f vr6, vr3
005054  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
005058  1f030020  addli r6, zero, 4096
00505c  7e0103e0  vmmov mr2, r6
005060  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
005064  9f020040  addli r5, zero, 8192
005068  7e8102e0  vmmov mr2, r5
00506c  eeb030c2  vsrl.s.mz vr1{mr1}, vr1, vr3
005070  6a224234  vor.u.mh vr4{mr2}, r4, vr4
005074  2b420000  lui r4, 4
005078  7e0102e0  vmmov mr2, r4
00507c  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005080  6a224134  vor.u.mh vr4{mr2}, r2, vr4
005084  2b810000  lui r2, 8
005088  76216542  vlt.u.mz mr2{mr1}, vr10, vr6
00508c  7e0301a0  vmmov r6, mr2
005090  7e0101e0  vmmov mr2, r2
005094  2b014000  lui r2, 1024
005098  96b01102  vadd.s.mz vr1{mr1}, vr3, vr1
00509c  ea313122  vor.s.mz vr3{mr1}, r2, vr3
0050a0  2ba1aaaa  lui r2, 699050
0050a4  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0050a8  9b40f300  srli r1, r6, 15
0050ac  1f215115  addli r2, r2, 2730
0050b0  9b801000  andi r1, r1, 1
0050b4  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
0050b8  7e0101e0  vmmov mr2, r2
0050bc  63011fd2  loadli.w r2,  -5880(r30)
0050c0  62404114  vscatter.mh vr4{mr2}, vr0{r2}
0050c4  3bb00000  bneq r1, zero, 12
0050c8  fab0f040  vextracti.s r1, 15(vr1)
0050cc  5b010000  j 8
0050d0  fab0f140  vextracti.s r1, 15(vr3)
0050d4  1f010fef  addli r2, r30, -2176
0050d8  1f120000  addli r4, zero, 1
0050dc  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
0050e0  1b41e300  srli r2, r6, 14
0050e4  7e0102e0  vmmov mr2, r4
0050e8  1b011100  andi r2, r2, 1
0050ec  3b300100  bneq r2, zero, 12
0050f0  7ab1e040  vextracti.s r2, 14(vr1)
0050f4  5b010000  j 8
0050f8  7ab1e140  vextracti.s r2, 14(vr3)
0050fc  1b42d300  srli r4, r6, 13
005100  1b021200  andi r4, r4, 1
005104  3b300200  bneq r4, zero, 12
005108  7ab2d040  vextracti.s r4, 13(vr1)
00510c  5b010000  j 8
005110  7ab2d140  vextracti.s r4, 13(vr3)
005114  9b42c300  srli r5, r6, 12
005118  9b821200  andi r5, r5, 1
00511c  3bb00200  bneq r5, zero, 12
005120  fab2c040  vextracti.s r5, 12(vr1)
005124  5b010000  j 8
005128  fab2c140  vextracti.s r5, 12(vr3)
00512c  9b43b300  srli r7, r6, 11
005130  9b831300  andi r7, r7, 1
005134  3bb00300  bneq r7, zero, 12
005138  fab3b040  vextracti.s r7, 11(vr1)
00513c  5b010000  j 8
005140  fab3b140  vextracti.s r7, 11(vr3)
005144  1b44a300  srli r8, r6, 10
005148  1b041400  andi r8, r8, 1
00514c  3b300400  bneq r8, zero, 12
005150  7ab4a040  vextracti.s r8, 10(vr1)
005154  5b010000  j 8
005158  7ab4a140  vextracti.s r8, 10(vr3)
00515c  9b449300  srli r9, r6, 9
005160  9b841400  andi r9, r9, 1
005164  3bb00400  bneq r9, zero, 12
005168  fab49040  vextracti.s r9, 9(vr1)
00516c  5b010000  j 8
005170  fab49140  vextracti.s r9, 9(vr3)
005174  1b458300  srli r10, r6, 8
005178  1b051500  andi r10, r10, 1
00517c  3b300500  bneq r10, zero, 12
005180  7ab58040  vextracti.s r10, 8(vr1)
005184  5b010000  j 8
005188  7ab58140  vextracti.s r10, 8(vr3)
00518c  9b457300  srli r11, r6, 7
005190  9b851500  andi r11, r11, 1
005194  3bb00500  bneq r11, zero, 12
005198  fab57040  vextracti.s r11, 7(vr1)
00519c  5b010000  j 8
0051a0  fab57140  vextracti.s r11, 7(vr3)
0051a4  1b466300  srli r12, r6, 6
0051a8  1b061600  andi r12, r12, 1
0051ac  3b300600  bneq r12, zero, 12
0051b0  7ab66040  vextracti.s r12, 6(vr1)
0051b4  5b010000  j 8
0051b8  7ab66140  vextracti.s r12, 6(vr3)
0051bc  9b465300  srli r13, r6, 5
0051c0  9b861600  andi r13, r13, 1
0051c4  3bb00600  bneq r13, zero, 12
0051c8  fab65040  vextracti.s r13, 5(vr1)
0051cc  5b010000  j 8
0051d0  fab65140  vextracti.s r13, 5(vr3)
0051d4  1b474300  srli r14, r6, 4
0051d8  1b071700  andi r14, r14, 1
0051dc  3b300700  bneq r14, zero, 12
0051e0  7ab74040  vextracti.s r14, 4(vr1)
0051e4  5b010000  j 8
0051e8  7ab74140  vextracti.s r14, 4(vr3)
0051ec  9b473300  srli r15, r6, 3
0051f0  9b871700  andi r15, r15, 1
0051f4  3bb00700  bneq r15, zero, 12
0051f8  fab73040  vextracti.s r15, 3(vr1)
0051fc  5b010000  j 8
005200  fab73140  vextracti.s r15, 3(vr3)
005204  1b482300  srli r16, r6, 2
005208  1b081800  andi r16, r16, 1
00520c  3b300800  bneq r16, zero, 12
005210  7ab82040  vextracti.s r16, 2(vr1)
005214  5b010000  j 8
005218  7ab82140  vextracti.s r16, 2(vr3)
00521c  9b481300  srli r17, r6, 1
005220  9b881800  andi r17, r17, 1
005224  3be00800  bneq r17, zero, 24
005228  fab81040  vextracti.s r17, 1(vr1)
00522c  1b031300  andi r6, r6, 1
005230  37600300  beq r6, zero, 24
005234  7ab30140  vextracti.s r6, 0(vr3)
005238  db020000  j 20
00523c  fab81140  vextracti.s r17, 1(vr3)
005240  1b031300  andi r6, r6, 1
005244  bb4f03fe  bneq r6, zero, -16
005248  7ab30040  vextracti.s r6, 0(vr1)
00524c  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
005250  e6c09580  vmerge_l.hf vr1, vr11, vr9
005254  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
005258  6a224334  vor.u.mh vr4{mr2}, r6, vr4
00525c  1f230000  addli r6, zero, 2
005260  7e0103e0  vmmov mr2, r6
005264  1f031000  addli r6, zero, 8
005268  6aa24834  vor.u.mh vr4{mr2}, r17, vr4
00526c  7e0103e0  vmmov mr2, r6
005270  1f032000  addli r6, zero, 16
005274  6a224836  vor.u.mh vr4{mr3}, r16, vr4
005278  6aa24734  vor.u.mh vr4{mr2}, r15, vr4
00527c  7e0103e0  vmmov mr2, r6
005280  1f034000  addli r6, zero, 32
005284  6a224734  vor.u.mh vr4{mr2}, r14, vr4
005288  7e0103e0  vmmov mr2, r6
00528c  1f030001  addli r6, zero, 128
005290  6aa24634  vor.u.mh vr4{mr2}, r13, vr4
005294  7e0103e0  vmmov mr2, r6
005298  1f030002  addli r6, zero, 256
00529c  6a224630  vor.u.mh vr4{mr0}, r12, vr4
0052a0  6aa24534  vor.u.mh vr4{mr2}, r11, vr4
0052a4  7e0103e0  vmmov mr2, r6
0052a8  1f030004  addli r6, zero, 512
0052ac  6a224534  vor.u.mh vr4{mr2}, r10, vr4
0052b0  7e0103e0  vmmov mr2, r6
0052b4  1f030008  addli r6, zero, 1024
0052b8  6aa24434  vor.u.mh vr4{mr2}, r9, vr4
0052bc  7e0103e0  vmmov mr2, r6
0052c0  1f030010  addli r6, zero, 2048
0052c4  6a224434  vor.u.mh vr4{mr2}, r8, vr4
0052c8  7e0103e0  vmmov mr2, r6
0052cc  6aa24334  vor.u.mh vr4{mr2}, r7, vr4
0052d0  63030ff3  loadli.w r6,  -1664(r30)
0052d4  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
0052d8  1f038fe3  addli r6, r30, -3648
0052dc  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0052e0  1f038ff2  addli r6, r30, -1728
0052e4  26915002  vmac.f.mz.rn vr2{mr1}, vr1, vr5
0052e8  e61101c0  vabs.f vr3, vr2
0052ec  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0052f0  1f030020  addli r6, zero, 4096
0052f4  7e0103e0  vmmov mr2, r6
0052f8  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
0052fc  9f020040  addli r5, zero, 8192
005300  7e8102e0  vmmov mr2, r5
005304  eeb020c2  vsrl.s.mz vr1{mr1}, vr1, vr2
005308  6a224234  vor.u.mh vr4{mr2}, r4, vr4
00530c  2b420000  lui r4, 4
005310  7e0102e0  vmmov mr2, r4
005314  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005318  6a224134  vor.u.mh vr4{mr2}, r2, vr4
00531c  2b810000  lui r2, 8
005320  76213542  vlt.u.mz mr2{mr1}, vr10, vr3
005324  7e0301a0  vmmov r6, mr2
005328  7e0101e0  vmmov mr2, r2
00532c  2b014000  lui r2, 1024
005330  96301102  vadd.s.mz vr1{mr1}, vr2, vr1
005334  ea312122  vor.s.mz vr3{mr1}, r2, vr2
005338  2ba1aaaa  lui r2, 699050
00533c  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
005340  9b40f300  srli r1, r6, 15
005344  1f215115  addli r2, r2, 2730
005348  9b801000  andi r1, r1, 1
00534c  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
005350  7e0101e0  vmmov mr2, r2
005354  6301dfd1  loadli.w r2,  -5912(r30)
005358  62404114  vscatter.mh vr4{mr2}, vr0{r2}
00535c  3bb00000  bneq r1, zero, 12
005360  fab0f040  vextracti.s r1, 15(vr1)
005364  5b010000  j 8
005368  fab0f140  vextracti.s r1, 15(vr3)
00536c  1f010ff0  addli r2, r30, -2048
005370  1f120000  addli r4, zero, 1
005374  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
005378  1f018fef  addli r2, r30, -2112
00537c  7e0102e0  vmmov mr2, r4
005380  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
005384  1b41e300  srli r2, r6, 14
005388  1b011100  andi r2, r2, 1
00538c  3b300100  bneq r2, zero, 12
005390  7ab1e040  vextracti.s r2, 14(vr1)
005394  5b010000  j 8
005398  7ab1e140  vextracti.s r2, 14(vr3)
00539c  1b42d300  srli r4, r6, 13
0053a0  1b021200  andi r4, r4, 1
0053a4  3b300200  bneq r4, zero, 12
0053a8  7ab2d040  vextracti.s r4, 13(vr1)
0053ac  5b010000  j 8
0053b0  7ab2d140  vextracti.s r4, 13(vr3)
0053b4  9b42c300  srli r5, r6, 12
0053b8  9b821200  andi r5, r5, 1
0053bc  3bb00200  bneq r5, zero, 12
0053c0  fab2c040  vextracti.s r5, 12(vr1)
0053c4  5b010000  j 8
0053c8  fab2c140  vextracti.s r5, 12(vr3)
0053cc  9b43b300  srli r7, r6, 11
0053d0  9b831300  andi r7, r7, 1
0053d4  3bb00300  bneq r7, zero, 12
0053d8  fab3b040  vextracti.s r7, 11(vr1)
0053dc  5b010000  j 8
0053e0  fab3b140  vextracti.s r7, 11(vr3)
0053e4  1b44a300  srli r8, r6, 10
0053e8  1b041400  andi r8, r8, 1
0053ec  3b300400  bneq r8, zero, 12
0053f0  7ab4a040  vextracti.s r8, 10(vr1)
0053f4  5b010000  j 8
0053f8  7ab4a140  vextracti.s r8, 10(vr3)
0053fc  9b449300  srli r9, r6, 9
005400  9b841400  andi r9, r9, 1
005404  3bb00400  bneq r9, zero, 12
005408  fab49040  vextracti.s r9, 9(vr1)
00540c  5b010000  j 8
005410  fab49140  vextracti.s r9, 9(vr3)
005414  1b458300  srli r10, r6, 8
005418  1b051500  andi r10, r10, 1
00541c  3b300500  bneq r10, zero, 12
005420  7ab58040  vextracti.s r10, 8(vr1)
005424  5b010000  j 8
005428  7ab58140  vextracti.s r10, 8(vr3)
00542c  9b457300  srli r11, r6, 7
005430  9b851500  andi r11, r11, 1
005434  3bb00500  bneq r11, zero, 12
005438  fab57040  vextracti.s r11, 7(vr1)
00543c  5b010000  j 8
005440  fab57140  vextracti.s r11, 7(vr3)
005444  1b466300  srli r12, r6, 6
005448  1b061600  andi r12, r12, 1
00544c  3b300600  bneq r12, zero, 12
005450  7ab66040  vextracti.s r12, 6(vr1)
005454  5b010000  j 8
005458  7ab66140  vextracti.s r12, 6(vr3)
00545c  9b465300  srli r13, r6, 5
005460  9b861600  andi r13, r13, 1
005464  3bb00600  bneq r13, zero, 12
005468  fab65040  vextracti.s r13, 5(vr1)
00546c  5b010000  j 8
005470  fab65140  vextracti.s r13, 5(vr3)
005474  1b474300  srli r14, r6, 4
005478  1b071700  andi r14, r14, 1
00547c  3b300700  bneq r14, zero, 12
005480  7ab74040  vextracti.s r14, 4(vr1)
005484  5b010000  j 8
005488  7ab74140  vextracti.s r14, 4(vr3)
00548c  9b473300  srli r15, r6, 3
005490  9b871700  andi r15, r15, 1
005494  3bb00700  bneq r15, zero, 12
005498  fab73040  vextracti.s r15, 3(vr1)
00549c  5b010000  j 8
0054a0  fab73140  vextracti.s r15, 3(vr3)
0054a4  1b482300  srli r16, r6, 2
0054a8  1b081800  andi r16, r16, 1
0054ac  3b300800  bneq r16, zero, 12
0054b0  7ab82040  vextracti.s r16, 2(vr1)
0054b4  5b010000  j 8
0054b8  7ab82140  vextracti.s r16, 2(vr3)
0054bc  9b481300  srli r17, r6, 1
0054c0  9b881800  andi r17, r17, 1
0054c4  3be00800  bneq r17, zero, 24
0054c8  fab81040  vextracti.s r17, 1(vr1)
0054cc  1b031300  andi r6, r6, 1
0054d0  37600300  beq r6, zero, 24
0054d4  7ab30140  vextracti.s r6, 0(vr3)
0054d8  db020000  j 20
0054dc  fab81140  vextracti.s r17, 1(vr3)
0054e0  1b031300  andi r6, r6, 1
0054e4  bb4f03fe  bneq r6, zero, -16
0054e8  7ab30040  vextracti.s r6, 0(vr1)
0054ec  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
0054f0  e6c095a0  vmerge_h.hf vr1, vr11, vr9
0054f4  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0054f8  ea213334  vor.u.mh vr3{mr2}, r6, vr3
0054fc  1f230000  addli r6, zero, 2
005500  7e0103e0  vmmov mr2, r6
005504  1f031000  addli r6, zero, 8
005508  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
00550c  7e0103e0  vmmov mr2, r6
005510  1f032000  addli r6, zero, 16
005514  ea213836  vor.u.mh vr3{mr3}, r16, vr3
005518  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
00551c  7e0103e0  vmmov mr2, r6
005520  1f034000  addli r6, zero, 32
005524  ea213734  vor.u.mh vr3{mr2}, r14, vr3
005528  7e0103e0  vmmov mr2, r6
00552c  1f030001  addli r6, zero, 128
005530  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
005534  7e0103e0  vmmov mr2, r6
005538  1f030002  addli r6, zero, 256
00553c  ea213630  vor.u.mh vr3{mr0}, r12, vr3
005540  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
005544  7e0103e0  vmmov mr2, r6
005548  1f030004  addli r6, zero, 512
00554c  ea213534  vor.u.mh vr3{mr2}, r10, vr3
005550  7e0103e0  vmmov mr2, r6
005554  1f030008  addli r6, zero, 1024
005558  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
00555c  7e0103e0  vmmov mr2, r6
005560  1f030010  addli r6, zero, 2048
005564  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005568  7e0103e0  vmmov mr2, r6
00556c  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005570  63030ff3  loadli.w r6,  -1664(r30)
005574  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
005578  1f038fe4  addli r6, r30, -3520
00557c  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
005580  1f030fdc  addli r6, r30, -4608
005584  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
005588  1f038ff2  addli r6, r30, -1728
00558c  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
005590  669102c0  vabs.f vr2, vr5
005594  c2140302  vload_mask16.mz vr9{mr1}, 0(r6)
005598  1f030020  addli r6, zero, 4096
00559c  7e0103e0  vmmov mr2, r6
0055a0  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
0055a4  9f020040  addli r5, zero, 8192
0055a8  7e8102e0  vmmov mr2, r5
0055ac  eeb054c2  vsrl.s.mz vr1{mr1}, vr9, vr5
0055b0  ea213234  vor.u.mh vr3{mr2}, r4, vr3
0055b4  2b420000  lui r4, 4
0055b8  7e0102e0  vmmov mr2, r4
0055bc  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
0055c0  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0055c4  2b810000  lui r2, 8
0055c8  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
0055cc  7e0301a0  vmmov r6, mr2
0055d0  7e0101e0  vmmov mr2, r2
0055d4  2b014000  lui r2, 1024
0055d8  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
0055dc  6a315122  vor.s.mz vr2{mr1}, r2, vr5
0055e0  2ba1aaaa  lui r2, 699050
0055e4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0055e8  9b40f300  srli r1, r6, 15
0055ec  1f215115  addli r2, r2, 2730
0055f0  9b801000  andi r1, r1, 1
0055f4  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
0055f8  7e0101e0  vmmov mr2, r2
0055fc  63410fd2  loadli.w r2,  -5884(r30)
005600  62403114  vscatter.mh vr3{mr2}, vr0{r2}
005604  3bb00000  bneq r1, zero, 12
005608  fab0f040  vextracti.s r1, 15(vr1)
00560c  5b010000  j 8
005610  fa30f140  vextracti.s r1, 15(vr2)
005614  1b41e300  srli r2, r6, 14
005618  1f120000  addli r4, zero, 1
00561c  1b011100  andi r2, r2, 1
005620  7e0102e0  vmmov mr2, r4
005624  3b300100  bneq r2, zero, 12
005628  7ab1e040  vextracti.s r2, 14(vr1)
00562c  5b010000  j 8
005630  7a31e140  vextracti.s r2, 14(vr2)
005634  1b42d300  srli r4, r6, 13
005638  1b021200  andi r4, r4, 1
00563c  3b300200  bneq r4, zero, 12
005640  7ab2d040  vextracti.s r4, 13(vr1)
005644  5b010000  j 8
005648  7a32d140  vextracti.s r4, 13(vr2)
00564c  9b42c300  srli r5, r6, 12
005650  9b821200  andi r5, r5, 1
005654  3bb00200  bneq r5, zero, 12
005658  fab2c040  vextracti.s r5, 12(vr1)
00565c  5b010000  j 8
005660  fa32c140  vextracti.s r5, 12(vr2)
005664  9b43b300  srli r7, r6, 11
005668  9b831300  andi r7, r7, 1
00566c  3bb00300  bneq r7, zero, 12
005670  fab3b040  vextracti.s r7, 11(vr1)
005674  5b010000  j 8
005678  fa33b140  vextracti.s r7, 11(vr2)
00567c  1b44a300  srli r8, r6, 10
005680  1b041400  andi r8, r8, 1
005684  3b300400  bneq r8, zero, 12
005688  7ab4a040  vextracti.s r8, 10(vr1)
00568c  5b010000  j 8
005690  7a34a140  vextracti.s r8, 10(vr2)
005694  9b449300  srli r9, r6, 9
005698  9b841400  andi r9, r9, 1
00569c  3bb00400  bneq r9, zero, 12
0056a0  fab49040  vextracti.s r9, 9(vr1)
0056a4  5b010000  j 8
0056a8  fa349140  vextracti.s r9, 9(vr2)
0056ac  1b458300  srli r10, r6, 8
0056b0  1b051500  andi r10, r10, 1
0056b4  3b300500  bneq r10, zero, 12
0056b8  7ab58040  vextracti.s r10, 8(vr1)
0056bc  5b010000  j 8
0056c0  7a358140  vextracti.s r10, 8(vr2)
0056c4  9b457300  srli r11, r6, 7
0056c8  9b851500  andi r11, r11, 1
0056cc  3bb00500  bneq r11, zero, 12
0056d0  fab57040  vextracti.s r11, 7(vr1)
0056d4  5b010000  j 8
0056d8  fa357140  vextracti.s r11, 7(vr2)
0056dc  1b466300  srli r12, r6, 6
0056e0  1b061600  andi r12, r12, 1
0056e4  3b300600  bneq r12, zero, 12
0056e8  7ab66040  vextracti.s r12, 6(vr1)
0056ec  5b010000  j 8
0056f0  7a366140  vextracti.s r12, 6(vr2)
0056f4  9b465300  srli r13, r6, 5
0056f8  9b861600  andi r13, r13, 1
0056fc  3bb00600  bneq r13, zero, 12
005700  fab65040  vextracti.s r13, 5(vr1)
005704  5b010000  j 8
005708  fa365140  vextracti.s r13, 5(vr2)
00570c  1b474300  srli r14, r6, 4
005710  1b071700  andi r14, r14, 1
005714  3b300700  bneq r14, zero, 12
005718  7ab74040  vextracti.s r14, 4(vr1)
00571c  5b010000  j 8
005720  7a374140  vextracti.s r14, 4(vr2)
005724  9b473300  srli r15, r6, 3
005728  9b871700  andi r15, r15, 1
00572c  3bb00700  bneq r15, zero, 12
005730  fab73040  vextracti.s r15, 3(vr1)
005734  5b010000  j 8
005738  fa373140  vextracti.s r15, 3(vr2)
00573c  1b482300  srli r16, r6, 2
005740  1b081800  andi r16, r16, 1
005744  3b300800  bneq r16, zero, 12
005748  7ab82040  vextracti.s r16, 2(vr1)
00574c  5b010000  j 8
005750  7a382140  vextracti.s r16, 2(vr2)
005754  9b481300  srli r17, r6, 1
005758  9b881800  andi r17, r17, 1
00575c  3bb00800  bneq r17, zero, 12
005760  fab81040  vextracti.s r17, 1(vr1)
005764  5b010000  j 8
005768  fa381140  vextracti.s r17, 1(vr2)
00576c  92324002  vadd.s.mz vr5{mr1}, zero, vr4
005770  1b031300  andi r6, r6, 1
005774  3b300300  bneq r6, zero, 12
005778  7ab30040  vextracti.s r6, 0(vr1)
00577c  5b010000  j 8
005780  7a330140  vextracti.s r6, 0(vr2)
005784  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
005788  ea213334  vor.u.mh vr3{mr2}, r6, vr3
00578c  1f230000  addli r6, zero, 2
005790  7e0103e0  vmmov mr2, r6
005794  1f031000  addli r6, zero, 8
005798  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
00579c  7e0103e0  vmmov mr2, r6
0057a0  1f032000  addli r6, zero, 16
0057a4  ea213836  vor.u.mh vr3{mr3}, r16, vr3
0057a8  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
0057ac  7e0103e0  vmmov mr2, r6
0057b0  1f034000  addli r6, zero, 32
0057b4  ea213734  vor.u.mh vr3{mr2}, r14, vr3
0057b8  7e0103e0  vmmov mr2, r6
0057bc  1f030001  addli r6, zero, 128
0057c0  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
0057c4  7e0103e0  vmmov mr2, r6
0057c8  1f030002  addli r6, zero, 256
0057cc  ea213630  vor.u.mh vr3{mr0}, r12, vr3
0057d0  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
0057d4  7e0103e0  vmmov mr2, r6
0057d8  1f030004  addli r6, zero, 512
0057dc  ea213534  vor.u.mh vr3{mr2}, r10, vr3
0057e0  7e0103e0  vmmov mr2, r6
0057e4  1f038ff1  addli r6, r30, -1856
0057e8  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
0057ec  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
0057f0  1f030008  addli r6, zero, 1024
0057f4  7e0103e0  vmmov mr2, r6
0057f8  1f030010  addli r6, zero, 2048
0057fc  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005800  7e0103e0  vmmov mr2, r6
005804  e6c01580  vmerge_l.hf vr1, vr11, vr1
005808  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
00580c  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005810  63030ff3  loadli.w r6,  -1664(r30)
005814  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
005818  1f038fe5  addli r6, r30, -3392
00581c  42120302  vload_mask16.mz vr4{mr1}, 0(r6)
005820  1f030fdd  addli r6, r30, -4480
005824  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
005828  1f030020  addli r6, zero, 4096
00582c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
005830  eeb044c2  vsrl.s.mz vr1{mr1}, vr9, vr4
005834  661102c0  vabs.f vr2, vr4
005838  7e0103e0  vmmov mr2, r6
00583c  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
005840  9f020040  addli r5, zero, 8192
005844  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005848  7e8102e0  vmmov mr2, r5
00584c  ea213234  vor.u.mh vr3{mr2}, r4, vr3
005850  2b420000  lui r4, 4
005854  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
005858  7e0102e0  vmmov mr2, r4
00585c  ea213134  vor.u.mh vr3{mr2}, r2, vr3
005860  2b810000  lui r2, 8
005864  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
005868  7e0301a0  vmmov r6, mr2
00586c  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
005870  7e0101e0  vmmov mr2, r2
005874  2b014000  lui r2, 1024
005878  6a314122  vor.s.mz vr2{mr1}, r2, vr4
00587c  2ba1aaaa  lui r2, 699050
005880  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
005884  9b40f300  srli r1, r6, 15
005888  1f215115  addli r2, r2, 2730
00588c  9b801000  andi r1, r1, 1
005890  7e0101e0  vmmov mr2, r2
005894  6341cfd1  loadli.w r2,  -5916(r30)
005898  62403114  vscatter.mh vr3{mr2}, vr0{r2}
00589c  3bb00000  bneq r1, zero, 12
0058a0  fab0f040  vextracti.s r1, 15(vr1)
0058a4  5b010000  j 8
0058a8  fa30f140  vextracti.s r1, 15(vr2)
0058ac  1b41e300  srli r2, r6, 14
0058b0  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0058b4  1f120000  addli r4, zero, 1
0058b8  1b011100  andi r2, r2, 1
0058bc  7e0102e0  vmmov mr2, r4
0058c0  3b300100  bneq r2, zero, 12
0058c4  7ab1e040  vextracti.s r2, 14(vr1)
0058c8  5b010000  j 8
0058cc  7a31e140  vextracti.s r2, 14(vr2)
0058d0  1b42d300  srli r4, r6, 13
0058d4  92326002  vadd.s.mz vr5{mr1}, zero, vr6
0058d8  12337002  vadd.s.mz vr6{mr1}, zero, vr7
0058dc  1b021200  andi r4, r4, 1
0058e0  3b300200  bneq r4, zero, 12
0058e4  7ab2d040  vextracti.s r4, 13(vr1)
0058e8  5b010000  j 8
0058ec  7a32d140  vextracti.s r4, 13(vr2)
0058f0  9b42c300  srli r5, r6, 12
0058f4  92338002  vadd.s.mz vr7{mr1}, zero, vr8
0058f8  9b821200  andi r5, r5, 1
0058fc  3bb00200  bneq r5, zero, 12
005900  fab2c040  vextracti.s r5, 12(vr1)
005904  5b010000  j 8
005908  fa32c140  vextracti.s r5, 12(vr2)
00590c  9b43b300  srli r7, r6, 11
005910  9b831300  andi r7, r7, 1
005914  3bb00300  bneq r7, zero, 12
005918  fab3b040  vextracti.s r7, 11(vr1)
00591c  5b010000  j 8
005920  fa33b140  vextracti.s r7, 11(vr2)
005924  1b44a300  srli r8, r6, 10
005928  1b041400  andi r8, r8, 1
00592c  3b300400  bneq r8, zero, 12
005930  7ab4a040  vextracti.s r8, 10(vr1)
005934  5b010000  j 8
005938  7a34a140  vextracti.s r8, 10(vr2)
00593c  9b449300  srli r9, r6, 9
005940  9b841400  andi r9, r9, 1
005944  3bb00400  bneq r9, zero, 12
005948  fab49040  vextracti.s r9, 9(vr1)
00594c  5b010000  j 8
005950  fa349140  vextracti.s r9, 9(vr2)
005954  1b458300  srli r10, r6, 8
005958  1b051500  andi r10, r10, 1
00595c  3b300500  bneq r10, zero, 12
005960  7ab58040  vextracti.s r10, 8(vr1)
005964  5b010000  j 8
005968  7a358140  vextracti.s r10, 8(vr2)
00596c  9b457300  srli r11, r6, 7
005970  9b851500  andi r11, r11, 1
005974  3bb00500  bneq r11, zero, 12
005978  fab57040  vextracti.s r11, 7(vr1)
00597c  5b010000  j 8
005980  fa357140  vextracti.s r11, 7(vr2)
005984  1b466300  srli r12, r6, 6
005988  1b061600  andi r12, r12, 1
00598c  3b300600  bneq r12, zero, 12
005990  7ab66040  vextracti.s r12, 6(vr1)
005994  5b010000  j 8
005998  7a366140  vextracti.s r12, 6(vr2)
00599c  9b465300  srli r13, r6, 5
0059a0  9b861600  andi r13, r13, 1
0059a4  3bb00600  bneq r13, zero, 12
0059a8  fab65040  vextracti.s r13, 5(vr1)
0059ac  5b010000  j 8
0059b0  fa365140  vextracti.s r13, 5(vr2)
0059b4  1b474300  srli r14, r6, 4
0059b8  1b071700  andi r14, r14, 1
0059bc  3b300700  bneq r14, zero, 12
0059c0  7ab74040  vextracti.s r14, 4(vr1)
0059c4  5b010000  j 8
0059c8  7a374140  vextracti.s r14, 4(vr2)
0059cc  9b473300  srli r15, r6, 3
0059d0  9b871700  andi r15, r15, 1
0059d4  3bb00700  bneq r15, zero, 12
0059d8  fab73040  vextracti.s r15, 3(vr1)
0059dc  5b010000  j 8
0059e0  fa373140  vextracti.s r15, 3(vr2)
0059e4  1b482300  srli r16, r6, 2
0059e8  1b081800  andi r16, r16, 1
0059ec  3b300800  bneq r16, zero, 12
0059f0  7ab82040  vextracti.s r16, 2(vr1)
0059f4  5b010000  j 8
0059f8  7a382140  vextracti.s r16, 2(vr2)
0059fc  9b481300  srli r17, r6, 1
005a00  9b881800  andi r17, r17, 1
005a04  3be00800  bneq r17, zero, 24
005a08  fab81040  vextracti.s r17, 1(vr1)
005a0c  1b031300  andi r6, r6, 1
005a10  37600300  beq r6, zero, 24
005a14  7a330140  vextracti.s r6, 0(vr2)
005a18  db020000  j 20
005a1c  fa381140  vextracti.s r17, 1(vr2)
005a20  1b031300  andi r6, r6, 1
005a24  bb4f03fe  bneq r6, zero, -16
005a28  7ab30040  vextracti.s r6, 0(vr1)
005a2c  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
005a30  ea213334  vor.u.mh vr3{mr2}, r6, vr3
005a34  1f230000  addli r6, zero, 2
005a38  7e0103e0  vmmov mr2, r6
005a3c  1f031000  addli r6, zero, 8
005a40  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
005a44  7e0103e0  vmmov mr2, r6
005a48  1f032000  addli r6, zero, 16
005a4c  ea213836  vor.u.mh vr3{mr3}, r16, vr3
005a50  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
005a54  7e0103e0  vmmov mr2, r6
005a58  1f034000  addli r6, zero, 32
005a5c  ea213734  vor.u.mh vr3{mr2}, r14, vr3
005a60  7e0103e0  vmmov mr2, r6
005a64  1f030001  addli r6, zero, 128
005a68  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
005a6c  7e0103e0  vmmov mr2, r6
005a70  1f030002  addli r6, zero, 256
005a74  ea213630  vor.u.mh vr3{mr0}, r12, vr3
005a78  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
005a7c  7e0103e0  vmmov mr2, r6
005a80  1f030004  addli r6, zero, 512
005a84  ea213534  vor.u.mh vr3{mr2}, r10, vr3
005a88  7e0103e0  vmmov mr2, r6
005a8c  1f038ff1  addli r6, r30, -1856
005a90  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
005a94  c2100302  vload_mask16.mz vr1{mr1}, 0(r6)
005a98  1f030008  addli r6, zero, 1024
005a9c  7e0103e0  vmmov mr2, r6
005aa0  1f030010  addli r6, zero, 2048
005aa4  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005aa8  7e0103e0  vmmov mr2, r6
005aac  e6c015a0  vmerge_h.hf vr1, vr11, vr1
005ab0  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
005ab4  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005ab8  63030ff3  loadli.w r6,  -1664(r30)
005abc  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
005ac0  1f038fe6  addli r6, r30, -3264
005ac4  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
005ac8  1f030fe1  addli r6, r30, -3968
005acc  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
005ad0  1f030020  addli r6, zero, 4096
005ad4  26942002  vmac.f.mz.rn vr8{mr1}, vr1, vr2
005ad8  eeb084c2  vsrl.s.mz vr1{mr1}, vr9, vr8
005adc  661104c0  vabs.f vr2, vr8
005ae0  7e0103e0  vmmov mr2, r6
005ae4  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
005ae8  9f020040  addli r5, zero, 8192
005aec  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005af0  7e8102e0  vmmov mr2, r5
005af4  ea213234  vor.u.mh vr3{mr2}, r4, vr3
005af8  2b420000  lui r4, 4
005afc  96301402  vadd.s.mz vr1{mr1}, vr8, vr1
005b00  7e0102e0  vmmov mr2, r4
005b04  ea213134  vor.u.mh vr3{mr2}, r2, vr3
005b08  2b810000  lui r2, 8
005b0c  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
005b10  7e0301a0  vmmov r6, mr2
005b14  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
005b18  7e0101e0  vmmov mr2, r2
005b1c  2b014000  lui r2, 1024
005b20  6a318122  vor.s.mz vr2{mr1}, r2, vr8
005b24  2ba1aaaa  lui r2, 699050
005b28  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
005b2c  9b40f300  srli r1, r6, 15
005b30  1f215115  addli r2, r2, 2730
005b34  9b801000  andi r1, r1, 1
005b38  7e0101e0  vmmov mr2, r2
005b3c  63010fd2  loadli.w r2,  -5888(r30)
005b40  62403114  vscatter.mh vr3{mr2}, vr0{r2}
005b44  3bb00000  bneq r1, zero, 12
005b48  fab0f040  vextracti.s r1, 15(vr1)
005b4c  5b010000  j 8
005b50  fa30f140  vextracti.s r1, 15(vr2)
005b54  1b41e300  srli r2, r6, 14
005b58  1f120000  addli r4, zero, 1
005b5c  1b011100  andi r2, r2, 1
005b60  7e0102e0  vmmov mr2, r4
005b64  3b300100  bneq r2, zero, 12
005b68  7ab1e040  vextracti.s r2, 14(vr1)
005b6c  5b010000  j 8
005b70  7a31e140  vextracti.s r2, 14(vr2)
005b74  1b42d300  srli r4, r6, 13
005b78  1b021200  andi r4, r4, 1
005b7c  3b300200  bneq r4, zero, 12
005b80  7ab2d040  vextracti.s r4, 13(vr1)
005b84  5b010000  j 8
005b88  7a32d140  vextracti.s r4, 13(vr2)
005b8c  9b42c300  srli r5, r6, 12
005b90  9b821200  andi r5, r5, 1
005b94  3bb00200  bneq r5, zero, 12
005b98  fab2c040  vextracti.s r5, 12(vr1)
005b9c  5b010000  j 8
005ba0  fa32c140  vextracti.s r5, 12(vr2)
005ba4  9b43b300  srli r7, r6, 11
005ba8  9b831300  andi r7, r7, 1
005bac  3bb00300  bneq r7, zero, 12
005bb0  fab3b040  vextracti.s r7, 11(vr1)
005bb4  5b010000  j 8
005bb8  fa33b140  vextracti.s r7, 11(vr2)
005bbc  1b44a300  srli r8, r6, 10
005bc0  1b041400  andi r8, r8, 1
005bc4  3b300400  bneq r8, zero, 12
005bc8  7ab4a040  vextracti.s r8, 10(vr1)
005bcc  5b010000  j 8
005bd0  7a34a140  vextracti.s r8, 10(vr2)
005bd4  9b449300  srli r9, r6, 9
005bd8  9b841400  andi r9, r9, 1
005bdc  3bb00400  bneq r9, zero, 12
005be0  fab49040  vextracti.s r9, 9(vr1)
005be4  5b010000  j 8
005be8  fa349140  vextracti.s r9, 9(vr2)
005bec  1b458300  srli r10, r6, 8
005bf0  1b051500  andi r10, r10, 1
005bf4  3b300500  bneq r10, zero, 12
005bf8  7ab58040  vextracti.s r10, 8(vr1)
005bfc  5b010000  j 8
005c00  7a358140  vextracti.s r10, 8(vr2)
005c04  9b457300  srli r11, r6, 7
005c08  9b851500  andi r11, r11, 1
005c0c  3bb00500  bneq r11, zero, 12
005c10  fab57040  vextracti.s r11, 7(vr1)
005c14  5b010000  j 8
005c18  fa357140  vextracti.s r11, 7(vr2)
005c1c  1b466300  srli r12, r6, 6
005c20  1b061600  andi r12, r12, 1
005c24  3b300600  bneq r12, zero, 12
005c28  7ab66040  vextracti.s r12, 6(vr1)
005c2c  5b010000  j 8
005c30  7a366140  vextracti.s r12, 6(vr2)
005c34  9b465300  srli r13, r6, 5
005c38  9b861600  andi r13, r13, 1
005c3c  3bb00600  bneq r13, zero, 12
005c40  fab65040  vextracti.s r13, 5(vr1)
005c44  5b010000  j 8
005c48  fa365140  vextracti.s r13, 5(vr2)
005c4c  1b474300  srli r14, r6, 4
005c50  1b071700  andi r14, r14, 1
005c54  3b300700  bneq r14, zero, 12
005c58  7ab74040  vextracti.s r14, 4(vr1)
005c5c  5b010000  j 8
005c60  7a374140  vextracti.s r14, 4(vr2)
005c64  9b473300  srli r15, r6, 3
005c68  9b871700  andi r15, r15, 1
005c6c  3bb00700  bneq r15, zero, 12
005c70  fab73040  vextracti.s r15, 3(vr1)
005c74  5b010000  j 8
005c78  fa373140  vextracti.s r15, 3(vr2)
005c7c  1b482300  srli r16, r6, 2
005c80  1b081800  andi r16, r16, 1
005c84  3b300800  bneq r16, zero, 12
005c88  7ab82040  vextracti.s r16, 2(vr1)
005c8c  5b010000  j 8
005c90  7a382140  vextracti.s r16, 2(vr2)
005c94  9b481300  srli r17, r6, 1
005c98  9b881800  andi r17, r17, 1
005c9c  3be00800  bneq r17, zero, 24
005ca0  fab81040  vextracti.s r17, 1(vr1)
005ca4  1b031300  andi r6, r6, 1
005ca8  37600300  beq r6, zero, 24
005cac  7a330140  vextracti.s r6, 0(vr2)
005cb0  db020000  j 20
005cb4  fa381140  vextracti.s r17, 1(vr2)
005cb8  1b031300  andi r6, r6, 1
005cbc  bb4f03fe  bneq r6, zero, -16
005cc0  7ab30040  vextracti.s r6, 0(vr1)
005cc4  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
005cc8  e6c07580  vmerge_l.hf vr1, vr11, vr7
005ccc  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
005cd0  ea213334  vor.u.mh vr3{mr2}, r6, vr3
005cd4  1f230000  addli r6, zero, 2
005cd8  7e0103e0  vmmov mr2, r6
005cdc  1f031000  addli r6, zero, 8
005ce0  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
005ce4  7e0103e0  vmmov mr2, r6
005ce8  1f032000  addli r6, zero, 16
005cec  ea213836  vor.u.mh vr3{mr3}, r16, vr3
005cf0  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
005cf4  7e0103e0  vmmov mr2, r6
005cf8  1f034000  addli r6, zero, 32
005cfc  ea213734  vor.u.mh vr3{mr2}, r14, vr3
005d00  7e0103e0  vmmov mr2, r6
005d04  1f030001  addli r6, zero, 128
005d08  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
005d0c  7e0103e0  vmmov mr2, r6
005d10  1f030002  addli r6, zero, 256
005d14  ea213630  vor.u.mh vr3{mr0}, r12, vr3
005d18  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
005d1c  7e0103e0  vmmov mr2, r6
005d20  1f030004  addli r6, zero, 512
005d24  ea213534  vor.u.mh vr3{mr2}, r10, vr3
005d28  7e0103e0  vmmov mr2, r6
005d2c  1f030008  addli r6, zero, 1024
005d30  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
005d34  7e0103e0  vmmov mr2, r6
005d38  1f030010  addli r6, zero, 2048
005d3c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005d40  7e0103e0  vmmov mr2, r6
005d44  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005d48  63030ff3  loadli.w r6,  -1664(r30)
005d4c  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
005d50  1f038fe7  addli r6, r30, -3136
005d54  42140302  vload_mask16.mz vr8{mr1}, 0(r6)
005d58  1f030fe4  addli r6, r30, -3584
005d5c  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
005d60  1f030020  addli r6, zero, 4096
005d64  26942002  vmac.f.mz.rn vr8{mr1}, vr1, vr2
005d68  eeb084c2  vsrl.s.mz vr1{mr1}, vr9, vr8
005d6c  661104c0  vabs.f vr2, vr8
005d70  7e0103e0  vmmov mr2, r6
005d74  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
005d78  9f020040  addli r5, zero, 8192
005d7c  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005d80  7e8102e0  vmmov mr2, r5
005d84  ea213234  vor.u.mh vr3{mr2}, r4, vr3
005d88  2b420000  lui r4, 4
005d8c  96301402  vadd.s.mz vr1{mr1}, vr8, vr1
005d90  7e0102e0  vmmov mr2, r4
005d94  ea213134  vor.u.mh vr3{mr2}, r2, vr3
005d98  2b810000  lui r2, 8
005d9c  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
005da0  7e0301a0  vmmov r6, mr2
005da4  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
005da8  7e0101e0  vmmov mr2, r2
005dac  2b014000  lui r2, 1024
005db0  6a318122  vor.s.mz vr2{mr1}, r2, vr8
005db4  2ba1aaaa  lui r2, 699050
005db8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
005dbc  9b40f300  srli r1, r6, 15
005dc0  1f215115  addli r2, r2, 2730
005dc4  9b801000  andi r1, r1, 1
005dc8  7e0101e0  vmmov mr2, r2
005dcc  6301cfd1  loadli.w r2,  -5920(r30)
005dd0  62403114  vscatter.mh vr3{mr2}, vr0{r2}
005dd4  3bb00000  bneq r1, zero, 12
005dd8  fab0f040  vextracti.s r1, 15(vr1)
005ddc  5b010000  j 8
005de0  fa30f140  vextracti.s r1, 15(vr2)
005de4  1b41e300  srli r2, r6, 14
005de8  1f120000  addli r4, zero, 1
005dec  1b011100  andi r2, r2, 1
005df0  7e0102e0  vmmov mr2, r4
005df4  3b300100  bneq r2, zero, 12
005df8  7ab1e040  vextracti.s r2, 14(vr1)
005dfc  5b010000  j 8
005e00  7a31e140  vextracti.s r2, 14(vr2)
005e04  1b42d300  srli r4, r6, 13
005e08  1b021200  andi r4, r4, 1
005e0c  3b300200  bneq r4, zero, 12
005e10  7ab2d040  vextracti.s r4, 13(vr1)
005e14  5b010000  j 8
005e18  7a32d140  vextracti.s r4, 13(vr2)
005e1c  9b42c300  srli r5, r6, 12
005e20  9b821200  andi r5, r5, 1
005e24  3bb00200  bneq r5, zero, 12
005e28  fab2c040  vextracti.s r5, 12(vr1)
005e2c  5b010000  j 8
005e30  fa32c140  vextracti.s r5, 12(vr2)
005e34  9b43b300  srli r7, r6, 11
005e38  9b831300  andi r7, r7, 1
005e3c  3bb00300  bneq r7, zero, 12
005e40  fab3b040  vextracti.s r7, 11(vr1)
005e44  5b010000  j 8
005e48  fa33b140  vextracti.s r7, 11(vr2)
005e4c  1b44a300  srli r8, r6, 10
005e50  1b041400  andi r8, r8, 1
005e54  3b300400  bneq r8, zero, 12
005e58  7ab4a040  vextracti.s r8, 10(vr1)
005e5c  5b010000  j 8
005e60  7a34a140  vextracti.s r8, 10(vr2)
005e64  9b449300  srli r9, r6, 9
005e68  9b841400  andi r9, r9, 1
005e6c  3bb00400  bneq r9, zero, 12
005e70  fab49040  vextracti.s r9, 9(vr1)
005e74  5b010000  j 8
005e78  fa349140  vextracti.s r9, 9(vr2)
005e7c  1b458300  srli r10, r6, 8
005e80  1b051500  andi r10, r10, 1
005e84  3b300500  bneq r10, zero, 12
005e88  7ab58040  vextracti.s r10, 8(vr1)
005e8c  5b010000  j 8
005e90  7a358140  vextracti.s r10, 8(vr2)
005e94  9b457300  srli r11, r6, 7
005e98  9b851500  andi r11, r11, 1
005e9c  3bb00500  bneq r11, zero, 12
005ea0  fab57040  vextracti.s r11, 7(vr1)
005ea4  5b010000  j 8
005ea8  fa357140  vextracti.s r11, 7(vr2)
005eac  1b466300  srli r12, r6, 6
005eb0  1b061600  andi r12, r12, 1
005eb4  3b300600  bneq r12, zero, 12
005eb8  7ab66040  vextracti.s r12, 6(vr1)
005ebc  5b010000  j 8
005ec0  7a366140  vextracti.s r12, 6(vr2)
005ec4  9b465300  srli r13, r6, 5
005ec8  9b861600  andi r13, r13, 1
005ecc  3bb00600  bneq r13, zero, 12
005ed0  fab65040  vextracti.s r13, 5(vr1)
005ed4  5b010000  j 8
005ed8  fa365140  vextracti.s r13, 5(vr2)
005edc  1b474300  srli r14, r6, 4
005ee0  1b071700  andi r14, r14, 1
005ee4  3b300700  bneq r14, zero, 12
005ee8  7ab74040  vextracti.s r14, 4(vr1)
005eec  5b010000  j 8
005ef0  7a374140  vextracti.s r14, 4(vr2)
005ef4  9b473300  srli r15, r6, 3
005ef8  9b871700  andi r15, r15, 1
005efc  3bb00700  bneq r15, zero, 12
005f00  fab73040  vextracti.s r15, 3(vr1)
005f04  5b010000  j 8
005f08  fa373140  vextracti.s r15, 3(vr2)
005f0c  1b482300  srli r16, r6, 2
005f10  1b081800  andi r16, r16, 1
005f14  3b300800  bneq r16, zero, 12
005f18  7ab82040  vextracti.s r16, 2(vr1)
005f1c  5b010000  j 8
005f20  7a382140  vextracti.s r16, 2(vr2)
005f24  9b481300  srli r17, r6, 1
005f28  9b881800  andi r17, r17, 1
005f2c  3be00800  bneq r17, zero, 24
005f30  fab81040  vextracti.s r17, 1(vr1)
005f34  1b031300  andi r6, r6, 1
005f38  37600300  beq r6, zero, 24
005f3c  7a330140  vextracti.s r6, 0(vr2)
005f40  db020000  j 20
005f44  fa381140  vextracti.s r17, 1(vr2)
005f48  1b031300  andi r6, r6, 1
005f4c  bb4f03fe  bneq r6, zero, -16
005f50  7ab30040  vextracti.s r6, 0(vr1)
005f54  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
005f58  e6c075a0  vmerge_h.hf vr1, vr11, vr7
005f5c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
005f60  ea213334  vor.u.mh vr3{mr2}, r6, vr3
005f64  1f230000  addli r6, zero, 2
005f68  7e0103e0  vmmov mr2, r6
005f6c  1f031000  addli r6, zero, 8
005f70  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
005f74  7e0103e0  vmmov mr2, r6
005f78  1f032000  addli r6, zero, 16
005f7c  ea213836  vor.u.mh vr3{mr3}, r16, vr3
005f80  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
005f84  7e0103e0  vmmov mr2, r6
005f88  1f034000  addli r6, zero, 32
005f8c  ea213734  vor.u.mh vr3{mr2}, r14, vr3
005f90  7e0103e0  vmmov mr2, r6
005f94  1f030001  addli r6, zero, 128
005f98  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
005f9c  7e0103e0  vmmov mr2, r6
005fa0  1f030002  addli r6, zero, 256
005fa4  ea213630  vor.u.mh vr3{mr0}, r12, vr3
005fa8  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
005fac  7e0103e0  vmmov mr2, r6
005fb0  1f030004  addli r6, zero, 512
005fb4  ea213534  vor.u.mh vr3{mr2}, r10, vr3
005fb8  7e0103e0  vmmov mr2, r6
005fbc  1f030008  addli r6, zero, 1024
005fc0  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
005fc4  7e0103e0  vmmov mr2, r6
005fc8  1f030010  addli r6, zero, 2048
005fcc  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005fd0  7e0103e0  vmmov mr2, r6
005fd4  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005fd8  63030ff3  loadli.w r6,  -1664(r30)
005fdc  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
005fe0  1f038fe8  addli r6, r30, -3008
005fe4  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
005fe8  1f030fe5  addli r6, r30, -3456
005fec  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
005ff0  1f030020  addli r6, zero, 4096
005ff4  a6932002  vmac.f.mz.rn vr7{mr1}, vr1, vr2
005ff8  eeb074c2  vsrl.s.mz vr1{mr1}, vr9, vr7
005ffc  669103c0  vabs.f vr2, vr7
006000  7e0103e0  vmmov mr2, r6
006004  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006008  9f020040  addli r5, zero, 8192
00600c  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
006010  7e8102e0  vmmov mr2, r5
006014  ea213234  vor.u.mh vr3{mr2}, r4, vr3
006018  2b420000  lui r4, 4
00601c  96b01302  vadd.s.mz vr1{mr1}, vr7, vr1
006020  7e0102e0  vmmov mr2, r4
006024  ea213134  vor.u.mh vr3{mr2}, r2, vr3
006028  2b810000  lui r2, 8
00602c  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
006030  7e0301a0  vmmov r6, mr2
006034  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
006038  7e0101e0  vmmov mr2, r2
00603c  2b014000  lui r2, 1024
006040  6a317122  vor.s.mz vr2{mr1}, r2, vr7
006044  2ba1aaaa  lui r2, 699050
006048  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00604c  9b40f300  srli r1, r6, 15
006050  1f215115  addli r2, r2, 2730
006054  9b801000  andi r1, r1, 1
006058  7e0101e0  vmmov mr2, r2
00605c  6341ffd1  loadli.w r2,  -5892(r30)
006060  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006064  3bb00000  bneq r1, zero, 12
006068  fab0f040  vextracti.s r1, 15(vr1)
00606c  5b010000  j 8
006070  fa30f140  vextracti.s r1, 15(vr2)
006074  1b41e300  srli r2, r6, 14
006078  1f120000  addli r4, zero, 1
00607c  1b011100  andi r2, r2, 1
006080  7e0102e0  vmmov mr2, r4
006084  3b300100  bneq r2, zero, 12
006088  7ab1e040  vextracti.s r2, 14(vr1)
00608c  5b010000  j 8
006090  7a31e140  vextracti.s r2, 14(vr2)
006094  1b42d300  srli r4, r6, 13
006098  1b021200  andi r4, r4, 1
00609c  3b300200  bneq r4, zero, 12
0060a0  7ab2d040  vextracti.s r4, 13(vr1)
0060a4  5b010000  j 8
0060a8  7a32d140  vextracti.s r4, 13(vr2)
0060ac  9b42c300  srli r5, r6, 12
0060b0  9b821200  andi r5, r5, 1
0060b4  3bb00200  bneq r5, zero, 12
0060b8  fab2c040  vextracti.s r5, 12(vr1)
0060bc  5b010000  j 8
0060c0  fa32c140  vextracti.s r5, 12(vr2)
0060c4  9b43b300  srli r7, r6, 11
0060c8  9b831300  andi r7, r7, 1
0060cc  3bb00300  bneq r7, zero, 12
0060d0  fab3b040  vextracti.s r7, 11(vr1)
0060d4  5b010000  j 8
0060d8  fa33b140  vextracti.s r7, 11(vr2)
0060dc  1b44a300  srli r8, r6, 10
0060e0  1b041400  andi r8, r8, 1
0060e4  3b300400  bneq r8, zero, 12
0060e8  7ab4a040  vextracti.s r8, 10(vr1)
0060ec  5b010000  j 8
0060f0  7a34a140  vextracti.s r8, 10(vr2)
0060f4  9b449300  srli r9, r6, 9
0060f8  9b841400  andi r9, r9, 1
0060fc  3bb00400  bneq r9, zero, 12
006100  fab49040  vextracti.s r9, 9(vr1)
006104  5b010000  j 8
006108  fa349140  vextracti.s r9, 9(vr2)
00610c  1b458300  srli r10, r6, 8
006110  1b051500  andi r10, r10, 1
006114  3b300500  bneq r10, zero, 12
006118  7ab58040  vextracti.s r10, 8(vr1)
00611c  5b010000  j 8
006120  7a358140  vextracti.s r10, 8(vr2)
006124  9b457300  srli r11, r6, 7
006128  9b851500  andi r11, r11, 1
00612c  3bb00500  bneq r11, zero, 12
006130  fab57040  vextracti.s r11, 7(vr1)
006134  5b010000  j 8
006138  fa357140  vextracti.s r11, 7(vr2)
00613c  1b466300  srli r12, r6, 6
006140  1b061600  andi r12, r12, 1
006144  3b300600  bneq r12, zero, 12
006148  7ab66040  vextracti.s r12, 6(vr1)
00614c  5b010000  j 8
006150  7a366140  vextracti.s r12, 6(vr2)
006154  9b465300  srli r13, r6, 5
006158  9b861600  andi r13, r13, 1
00615c  3bb00600  bneq r13, zero, 12
006160  fab65040  vextracti.s r13, 5(vr1)
006164  5b010000  j 8
006168  fa365140  vextracti.s r13, 5(vr2)
00616c  1b474300  srli r14, r6, 4
006170  1b071700  andi r14, r14, 1
006174  3b300700  bneq r14, zero, 12
006178  7ab74040  vextracti.s r14, 4(vr1)
00617c  5b010000  j 8
006180  7a374140  vextracti.s r14, 4(vr2)
006184  9b473300  srli r15, r6, 3
006188  9b871700  andi r15, r15, 1
00618c  3bb00700  bneq r15, zero, 12
006190  fab73040  vextracti.s r15, 3(vr1)
006194  5b010000  j 8
006198  fa373140  vextracti.s r15, 3(vr2)
00619c  1b482300  srli r16, r6, 2
0061a0  1b081800  andi r16, r16, 1
0061a4  3b300800  bneq r16, zero, 12
0061a8  7ab82040  vextracti.s r16, 2(vr1)
0061ac  5b010000  j 8
0061b0  7a382140  vextracti.s r16, 2(vr2)
0061b4  9b481300  srli r17, r6, 1
0061b8  9b881800  andi r17, r17, 1
0061bc  3be00800  bneq r17, zero, 24
0061c0  fab81040  vextracti.s r17, 1(vr1)
0061c4  1b031300  andi r6, r6, 1
0061c8  37600300  beq r6, zero, 24
0061cc  7a330140  vextracti.s r6, 0(vr2)
0061d0  db020000  j 20
0061d4  fa381140  vextracti.s r17, 1(vr2)
0061d8  1b031300  andi r6, r6, 1
0061dc  bb4f03fe  bneq r6, zero, -16
0061e0  7ab30040  vextracti.s r6, 0(vr1)
0061e4  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
0061e8  e6c06580  vmerge_l.hf vr1, vr11, vr6
0061ec  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0061f0  ea213334  vor.u.mh vr3{mr2}, r6, vr3
0061f4  1f230000  addli r6, zero, 2
0061f8  7e0103e0  vmmov mr2, r6
0061fc  1f031000  addli r6, zero, 8
006200  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006204  7e0103e0  vmmov mr2, r6
006208  1f032000  addli r6, zero, 16
00620c  ea213836  vor.u.mh vr3{mr3}, r16, vr3
006210  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
006214  7e0103e0  vmmov mr2, r6
006218  1f034000  addli r6, zero, 32
00621c  ea213734  vor.u.mh vr3{mr2}, r14, vr3
006220  7e0103e0  vmmov mr2, r6
006224  1f030001  addli r6, zero, 128
006228  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
00622c  7e0103e0  vmmov mr2, r6
006230  1f030002  addli r6, zero, 256
006234  ea213630  vor.u.mh vr3{mr0}, r12, vr3
006238  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
00623c  7e0103e0  vmmov mr2, r6
006240  1f030004  addli r6, zero, 512
006244  ea213534  vor.u.mh vr3{mr2}, r10, vr3
006248  7e0103e0  vmmov mr2, r6
00624c  1f030008  addli r6, zero, 1024
006250  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
006254  7e0103e0  vmmov mr2, r6
006258  1f030010  addli r6, zero, 2048
00625c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
006260  7e0103e0  vmmov mr2, r6
006264  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
006268  63030ff3  loadli.w r6,  -1664(r30)
00626c  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
006270  1f030fea  addli r6, r30, -2816
006274  c2130302  vload_mask16.mz vr7{mr1}, 0(r6)
006278  1f030fe6  addli r6, r30, -3328
00627c  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
006280  1f030020  addli r6, zero, 4096
006284  a6932002  vmac.f.mz.rn vr7{mr1}, vr1, vr2
006288  eeb074c2  vsrl.s.mz vr1{mr1}, vr9, vr7
00628c  669103c0  vabs.f vr2, vr7
006290  7e0103e0  vmmov mr2, r6
006294  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006298  9f020040  addli r5, zero, 8192
00629c  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
0062a0  7e8102e0  vmmov mr2, r5
0062a4  ea213234  vor.u.mh vr3{mr2}, r4, vr3
0062a8  2b420000  lui r4, 4
0062ac  96b01302  vadd.s.mz vr1{mr1}, vr7, vr1
0062b0  7e0102e0  vmmov mr2, r4
0062b4  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0062b8  2b810000  lui r2, 8
0062bc  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
0062c0  7e0301a0  vmmov r6, mr2
0062c4  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
0062c8  7e0101e0  vmmov mr2, r2
0062cc  2b014000  lui r2, 1024
0062d0  6a317122  vor.s.mz vr2{mr1}, r2, vr7
0062d4  2ba1aaaa  lui r2, 699050
0062d8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0062dc  9b40f300  srli r1, r6, 15
0062e0  1f215115  addli r2, r2, 2730
0062e4  9b801000  andi r1, r1, 1
0062e8  7e0101e0  vmmov mr2, r2
0062ec  6301bfd1  loadli.w r2,  -5928(r30)
0062f0  62403114  vscatter.mh vr3{mr2}, vr0{r2}
0062f4  3bb00000  bneq r1, zero, 12
0062f8  fab0f040  vextracti.s r1, 15(vr1)
0062fc  5b010000  j 8
006300  fa30f140  vextracti.s r1, 15(vr2)
006304  1b41e300  srli r2, r6, 14
006308  1f120000  addli r4, zero, 1
00630c  1b011100  andi r2, r2, 1
006310  7e0102e0  vmmov mr2, r4
006314  3b300100  bneq r2, zero, 12
006318  7ab1e040  vextracti.s r2, 14(vr1)
00631c  5b010000  j 8
006320  7a31e140  vextracti.s r2, 14(vr2)
006324  1b42d300  srli r4, r6, 13
006328  1b021200  andi r4, r4, 1
00632c  3b300200  bneq r4, zero, 12
006330  7ab2d040  vextracti.s r4, 13(vr1)
006334  5b010000  j 8
006338  7a32d140  vextracti.s r4, 13(vr2)
00633c  9b42c300  srli r5, r6, 12
006340  9b821200  andi r5, r5, 1
006344  3bb00200  bneq r5, zero, 12
006348  fab2c040  vextracti.s r5, 12(vr1)
00634c  5b010000  j 8
006350  fa32c140  vextracti.s r5, 12(vr2)
006354  9b43b300  srli r7, r6, 11
006358  9b831300  andi r7, r7, 1
00635c  3bb00300  bneq r7, zero, 12
006360  fab3b040  vextracti.s r7, 11(vr1)
006364  5b010000  j 8
006368  fa33b140  vextracti.s r7, 11(vr2)
00636c  1b44a300  srli r8, r6, 10
006370  1b041400  andi r8, r8, 1
006374  3b300400  bneq r8, zero, 12
006378  7ab4a040  vextracti.s r8, 10(vr1)
00637c  5b010000  j 8
006380  7a34a140  vextracti.s r8, 10(vr2)
006384  9b449300  srli r9, r6, 9
006388  9b841400  andi r9, r9, 1
00638c  3bb00400  bneq r9, zero, 12
006390  fab49040  vextracti.s r9, 9(vr1)
006394  5b010000  j 8
006398  fa349140  vextracti.s r9, 9(vr2)
00639c  1b458300  srli r10, r6, 8
0063a0  1b051500  andi r10, r10, 1
0063a4  3b300500  bneq r10, zero, 12
0063a8  7ab58040  vextracti.s r10, 8(vr1)
0063ac  5b010000  j 8
0063b0  7a358140  vextracti.s r10, 8(vr2)
0063b4  9b457300  srli r11, r6, 7
0063b8  9b851500  andi r11, r11, 1
0063bc  3bb00500  bneq r11, zero, 12
0063c0  fab57040  vextracti.s r11, 7(vr1)
0063c4  5b010000  j 8
0063c8  fa357140  vextracti.s r11, 7(vr2)
0063cc  1b466300  srli r12, r6, 6
0063d0  1b061600  andi r12, r12, 1
0063d4  3b300600  bneq r12, zero, 12
0063d8  7ab66040  vextracti.s r12, 6(vr1)
0063dc  5b010000  j 8
0063e0  7a366140  vextracti.s r12, 6(vr2)
0063e4  9b465300  srli r13, r6, 5
0063e8  9b861600  andi r13, r13, 1
0063ec  3bb00600  bneq r13, zero, 12
0063f0  fab65040  vextracti.s r13, 5(vr1)
0063f4  5b010000  j 8
0063f8  fa365140  vextracti.s r13, 5(vr2)
0063fc  1b474300  srli r14, r6, 4
006400  1b071700  andi r14, r14, 1
006404  3b300700  bneq r14, zero, 12
006408  7ab74040  vextracti.s r14, 4(vr1)
00640c  5b010000  j 8
006410  7a374140  vextracti.s r14, 4(vr2)
006414  9b473300  srli r15, r6, 3
006418  9b871700  andi r15, r15, 1
00641c  3bb00700  bneq r15, zero, 12
006420  fab73040  vextracti.s r15, 3(vr1)
006424  5b010000  j 8
006428  fa373140  vextracti.s r15, 3(vr2)
00642c  1b482300  srli r16, r6, 2
006430  1b081800  andi r16, r16, 1
006434  3b300800  bneq r16, zero, 12
006438  7ab82040  vextracti.s r16, 2(vr1)
00643c  5b010000  j 8
006440  7a382140  vextracti.s r16, 2(vr2)
006444  9b481300  srli r17, r6, 1
006448  9b881800  andi r17, r17, 1
00644c  3be00800  bneq r17, zero, 24
006450  fab81040  vextracti.s r17, 1(vr1)
006454  1b031300  andi r6, r6, 1
006458  37600300  beq r6, zero, 24
00645c  7a330140  vextracti.s r6, 0(vr2)
006460  db020000  j 20
006464  fa381140  vextracti.s r17, 1(vr2)
006468  1b031300  andi r6, r6, 1
00646c  bb4f03fe  bneq r6, zero, -16
006470  7ab30040  vextracti.s r6, 0(vr1)
006474  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006478  e6c065a0  vmerge_h.hf vr1, vr11, vr6
00647c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
006480  ea213334  vor.u.mh vr3{mr2}, r6, vr3
006484  1f230000  addli r6, zero, 2
006488  7e0103e0  vmmov mr2, r6
00648c  1f031000  addli r6, zero, 8
006490  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006494  7e0103e0  vmmov mr2, r6
006498  1f032000  addli r6, zero, 16
00649c  ea213836  vor.u.mh vr3{mr3}, r16, vr3
0064a0  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
0064a4  7e0103e0  vmmov mr2, r6
0064a8  1f034000  addli r6, zero, 32
0064ac  ea213734  vor.u.mh vr3{mr2}, r14, vr3
0064b0  7e0103e0  vmmov mr2, r6
0064b4  1f030001  addli r6, zero, 128
0064b8  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
0064bc  7e0103e0  vmmov mr2, r6
0064c0  1f030002  addli r6, zero, 256
0064c4  ea213630  vor.u.mh vr3{mr0}, r12, vr3
0064c8  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
0064cc  7e0103e0  vmmov mr2, r6
0064d0  1f030004  addli r6, zero, 512
0064d4  ea213534  vor.u.mh vr3{mr2}, r10, vr3
0064d8  7e0103e0  vmmov mr2, r6
0064dc  1f030008  addli r6, zero, 1024
0064e0  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
0064e4  7e0103e0  vmmov mr2, r6
0064e8  1f030010  addli r6, zero, 2048
0064ec  ea213434  vor.u.mh vr3{mr2}, r8, vr3
0064f0  7e0103e0  vmmov mr2, r6
0064f4  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
0064f8  63030ff3  loadli.w r6,  -1664(r30)
0064fc  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
006500  1f030feb  addli r6, r30, -2688
006504  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
006508  1f030fe7  addli r6, r30, -3200
00650c  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
006510  1f030020  addli r6, zero, 4096
006514  26932002  vmac.f.mz.rn vr6{mr1}, vr1, vr2
006518  eeb064c2  vsrl.s.mz vr1{mr1}, vr9, vr6
00651c  661103c0  vabs.f vr2, vr6
006520  7e0103e0  vmmov mr2, r6
006524  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006528  9f020040  addli r5, zero, 8192
00652c  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
006530  7e8102e0  vmmov mr2, r5
006534  ea213234  vor.u.mh vr3{mr2}, r4, vr3
006538  2b420000  lui r4, 4
00653c  96301302  vadd.s.mz vr1{mr1}, vr6, vr1
006540  7e0102e0  vmmov mr2, r4
006544  ea213134  vor.u.mh vr3{mr2}, r2, vr3
006548  2b810000  lui r2, 8
00654c  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
006550  7e0301a0  vmmov r6, mr2
006554  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
006558  7e0101e0  vmmov mr2, r2
00655c  2b014000  lui r2, 1024
006560  6a316122  vor.s.mz vr2{mr1}, r2, vr6
006564  2ba1aaaa  lui r2, 699050
006568  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00656c  9b40f300  srli r1, r6, 15
006570  1f215115  addli r2, r2, 2730
006574  9b801000  andi r1, r1, 1
006578  7e0101e0  vmmov mr2, r2
00657c  6301ffd1  loadli.w r2,  -5896(r30)
006580  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006584  3bb00000  bneq r1, zero, 12
006588  fab0f040  vextracti.s r1, 15(vr1)
00658c  5b010000  j 8
006590  fa30f140  vextracti.s r1, 15(vr2)
006594  1b41e300  srli r2, r6, 14
006598  1f120000  addli r4, zero, 1
00659c  1b011100  andi r2, r2, 1
0065a0  7e0102e0  vmmov mr2, r4
0065a4  3b300100  bneq r2, zero, 12
0065a8  7ab1e040  vextracti.s r2, 14(vr1)
0065ac  5b010000  j 8
0065b0  7a31e140  vextracti.s r2, 14(vr2)
0065b4  1b42d300  srli r4, r6, 13
0065b8  1b021200  andi r4, r4, 1
0065bc  3b300200  bneq r4, zero, 12
0065c0  7ab2d040  vextracti.s r4, 13(vr1)
0065c4  5b010000  j 8
0065c8  7a32d140  vextracti.s r4, 13(vr2)
0065cc  9b42c300  srli r5, r6, 12
0065d0  9b821200  andi r5, r5, 1
0065d4  3bb00200  bneq r5, zero, 12
0065d8  fab2c040  vextracti.s r5, 12(vr1)
0065dc  5b010000  j 8
0065e0  fa32c140  vextracti.s r5, 12(vr2)
0065e4  9b43b300  srli r7, r6, 11
0065e8  9b831300  andi r7, r7, 1
0065ec  3bb00300  bneq r7, zero, 12
0065f0  fab3b040  vextracti.s r7, 11(vr1)
0065f4  5b010000  j 8
0065f8  fa33b140  vextracti.s r7, 11(vr2)
0065fc  1b44a300  srli r8, r6, 10
006600  1b041400  andi r8, r8, 1
006604  3b300400  bneq r8, zero, 12
006608  7ab4a040  vextracti.s r8, 10(vr1)
00660c  5b010000  j 8
006610  7a34a140  vextracti.s r8, 10(vr2)
006614  9b449300  srli r9, r6, 9
006618  9b841400  andi r9, r9, 1
00661c  3bb00400  bneq r9, zero, 12
006620  fab49040  vextracti.s r9, 9(vr1)
006624  5b010000  j 8
006628  fa349140  vextracti.s r9, 9(vr2)
00662c  1b458300  srli r10, r6, 8
006630  1b051500  andi r10, r10, 1
006634  3b300500  bneq r10, zero, 12
006638  7ab58040  vextracti.s r10, 8(vr1)
00663c  5b010000  j 8
006640  7a358140  vextracti.s r10, 8(vr2)
006644  9b457300  srli r11, r6, 7
006648  9b851500  andi r11, r11, 1
00664c  3bb00500  bneq r11, zero, 12
006650  fab57040  vextracti.s r11, 7(vr1)
006654  5b010000  j 8
006658  fa357140  vextracti.s r11, 7(vr2)
00665c  1b466300  srli r12, r6, 6
006660  1b061600  andi r12, r12, 1
006664  3b300600  bneq r12, zero, 12
006668  7ab66040  vextracti.s r12, 6(vr1)
00666c  5b010000  j 8
006670  7a366140  vextracti.s r12, 6(vr2)
006674  9b465300  srli r13, r6, 5
006678  9b861600  andi r13, r13, 1
00667c  3bb00600  bneq r13, zero, 12
006680  fab65040  vextracti.s r13, 5(vr1)
006684  5b010000  j 8
006688  fa365140  vextracti.s r13, 5(vr2)
00668c  1b474300  srli r14, r6, 4
006690  1b071700  andi r14, r14, 1
006694  3b300700  bneq r14, zero, 12
006698  7ab74040  vextracti.s r14, 4(vr1)
00669c  5b010000  j 8
0066a0  7a374140  vextracti.s r14, 4(vr2)
0066a4  9b473300  srli r15, r6, 3
0066a8  9b871700  andi r15, r15, 1
0066ac  3bb00700  bneq r15, zero, 12
0066b0  fab73040  vextracti.s r15, 3(vr1)
0066b4  5b010000  j 8
0066b8  fa373140  vextracti.s r15, 3(vr2)
0066bc  1b482300  srli r16, r6, 2
0066c0  1b081800  andi r16, r16, 1
0066c4  3b300800  bneq r16, zero, 12
0066c8  7ab82040  vextracti.s r16, 2(vr1)
0066cc  5b010000  j 8
0066d0  7a382140  vextracti.s r16, 2(vr2)
0066d4  9b481300  srli r17, r6, 1
0066d8  9b881800  andi r17, r17, 1
0066dc  3be00800  bneq r17, zero, 24
0066e0  fab81040  vextracti.s r17, 1(vr1)
0066e4  1b031300  andi r6, r6, 1
0066e8  37600300  beq r6, zero, 24
0066ec  7a330140  vextracti.s r6, 0(vr2)
0066f0  db020000  j 20
0066f4  fa381140  vextracti.s r17, 1(vr2)
0066f8  1b031300  andi r6, r6, 1
0066fc  bb4f03fe  bneq r6, zero, -16
006700  7ab30040  vextracti.s r6, 0(vr1)
006704  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006708  e6c05580  vmerge_l.hf vr1, vr11, vr5
00670c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
006710  ea213334  vor.u.mh vr3{mr2}, r6, vr3
006714  1f230000  addli r6, zero, 2
006718  7e0103e0  vmmov mr2, r6
00671c  1f031000  addli r6, zero, 8
006720  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006724  7e0103e0  vmmov mr2, r6
006728  1f032000  addli r6, zero, 16
00672c  ea213836  vor.u.mh vr3{mr3}, r16, vr3
006730  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
006734  7e0103e0  vmmov mr2, r6
006738  1f034000  addli r6, zero, 32
00673c  ea213734  vor.u.mh vr3{mr2}, r14, vr3
006740  7e0103e0  vmmov mr2, r6
006744  1f030001  addli r6, zero, 128
006748  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
00674c  7e0103e0  vmmov mr2, r6
006750  1f030002  addli r6, zero, 256
006754  ea213630  vor.u.mh vr3{mr0}, r12, vr3
006758  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
00675c  7e0103e0  vmmov mr2, r6
006760  1f030004  addli r6, zero, 512
006764  ea213534  vor.u.mh vr3{mr2}, r10, vr3
006768  7e0103e0  vmmov mr2, r6
00676c  1f030008  addli r6, zero, 1024
006770  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
006774  7e0103e0  vmmov mr2, r6
006778  1f030010  addli r6, zero, 2048
00677c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
006780  7e0103e0  vmmov mr2, r6
006784  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
006788  63030ff3  loadli.w r6,  -1664(r30)
00678c  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
006790  1f030fec  addli r6, r30, -2560
006794  42130302  vload_mask16.mz vr6{mr1}, 0(r6)
006798  1f030fe8  addli r6, r30, -3072
00679c  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
0067a0  1f030020  addli r6, zero, 4096
0067a4  26932002  vmac.f.mz.rn vr6{mr1}, vr1, vr2
0067a8  eeb064c2  vsrl.s.mz vr1{mr1}, vr9, vr6
0067ac  661103c0  vabs.f vr2, vr6
0067b0  7e0103e0  vmmov mr2, r6
0067b4  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
0067b8  9f020040  addli r5, zero, 8192
0067bc  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
0067c0  7e8102e0  vmmov mr2, r5
0067c4  ea213234  vor.u.mh vr3{mr2}, r4, vr3
0067c8  2b420000  lui r4, 4
0067cc  96301302  vadd.s.mz vr1{mr1}, vr6, vr1
0067d0  7e0102e0  vmmov mr2, r4
0067d4  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0067d8  2b810000  lui r2, 8
0067dc  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
0067e0  7e0301a0  vmmov r6, mr2
0067e4  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
0067e8  7e0101e0  vmmov mr2, r2
0067ec  2b014000  lui r2, 1024
0067f0  6a316122  vor.s.mz vr2{mr1}, r2, vr6
0067f4  2ba1aaaa  lui r2, 699050
0067f8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0067fc  9b40f300  srli r1, r6, 15
006800  1f215115  addli r2, r2, 2730
006804  9b801000  andi r1, r1, 1
006808  7e0101e0  vmmov mr2, r2
00680c  6341afd1  loadli.w r2,  -5932(r30)
006810  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006814  3bb00000  bneq r1, zero, 12
006818  fab0f040  vextracti.s r1, 15(vr1)
00681c  5b010000  j 8
006820  fa30f140  vextracti.s r1, 15(vr2)
006824  1b41e300  srli r2, r6, 14
006828  1f120000  addli r4, zero, 1
00682c  1b011100  andi r2, r2, 1
006830  7e0102e0  vmmov mr2, r4
006834  3b300100  bneq r2, zero, 12
006838  7ab1e040  vextracti.s r2, 14(vr1)
00683c  5b010000  j 8
006840  7a31e140  vextracti.s r2, 14(vr2)
006844  1b42d300  srli r4, r6, 13
006848  1b021200  andi r4, r4, 1
00684c  3b300200  bneq r4, zero, 12
006850  7ab2d040  vextracti.s r4, 13(vr1)
006854  5b010000  j 8
006858  7a32d140  vextracti.s r4, 13(vr2)
00685c  9b42c300  srli r5, r6, 12
006860  9b821200  andi r5, r5, 1
006864  3bb00200  bneq r5, zero, 12
006868  fab2c040  vextracti.s r5, 12(vr1)
00686c  5b010000  j 8
006870  fa32c140  vextracti.s r5, 12(vr2)
006874  9b43b300  srli r7, r6, 11
006878  9b831300  andi r7, r7, 1
00687c  3bb00300  bneq r7, zero, 12
006880  fab3b040  vextracti.s r7, 11(vr1)
006884  5b010000  j 8
006888  fa33b140  vextracti.s r7, 11(vr2)
00688c  1b44a300  srli r8, r6, 10
006890  1b041400  andi r8, r8, 1
006894  3b300400  bneq r8, zero, 12
006898  7ab4a040  vextracti.s r8, 10(vr1)
00689c  5b010000  j 8
0068a0  7a34a140  vextracti.s r8, 10(vr2)
0068a4  9b449300  srli r9, r6, 9
0068a8  9b841400  andi r9, r9, 1
0068ac  3bb00400  bneq r9, zero, 12
0068b0  fab49040  vextracti.s r9, 9(vr1)
0068b4  5b010000  j 8
0068b8  fa349140  vextracti.s r9, 9(vr2)
0068bc  1b458300  srli r10, r6, 8
0068c0  1b051500  andi r10, r10, 1
0068c4  3b300500  bneq r10, zero, 12
0068c8  7ab58040  vextracti.s r10, 8(vr1)
0068cc  5b010000  j 8
0068d0  7a358140  vextracti.s r10, 8(vr2)
0068d4  9b457300  srli r11, r6, 7
0068d8  9b851500  andi r11, r11, 1
0068dc  3bb00500  bneq r11, zero, 12
0068e0  fab57040  vextracti.s r11, 7(vr1)
0068e4  5b010000  j 8
0068e8  fa357140  vextracti.s r11, 7(vr2)
0068ec  1b466300  srli r12, r6, 6
0068f0  1b061600  andi r12, r12, 1
0068f4  3b300600  bneq r12, zero, 12
0068f8  7ab66040  vextracti.s r12, 6(vr1)
0068fc  5b010000  j 8
006900  7a366140  vextracti.s r12, 6(vr2)
006904  9b465300  srli r13, r6, 5
006908  9b861600  andi r13, r13, 1
00690c  3bb00600  bneq r13, zero, 12
006910  fab65040  vextracti.s r13, 5(vr1)
006914  5b010000  j 8
006918  fa365140  vextracti.s r13, 5(vr2)
00691c  1b474300  srli r14, r6, 4
006920  1b071700  andi r14, r14, 1
006924  3b300700  bneq r14, zero, 12
006928  7ab74040  vextracti.s r14, 4(vr1)
00692c  5b010000  j 8
006930  7a374140  vextracti.s r14, 4(vr2)
006934  9b473300  srli r15, r6, 3
006938  9b871700  andi r15, r15, 1
00693c  3bb00700  bneq r15, zero, 12
006940  fab73040  vextracti.s r15, 3(vr1)
006944  5b010000  j 8
006948  fa373140  vextracti.s r15, 3(vr2)
00694c  1b482300  srli r16, r6, 2
006950  1b081800  andi r16, r16, 1
006954  3b300800  bneq r16, zero, 12
006958  7ab82040  vextracti.s r16, 2(vr1)
00695c  5b010000  j 8
006960  7a382140  vextracti.s r16, 2(vr2)
006964  9b481300  srli r17, r6, 1
006968  9b881800  andi r17, r17, 1
00696c  3be00800  bneq r17, zero, 24
006970  fab81040  vextracti.s r17, 1(vr1)
006974  1b031300  andi r6, r6, 1
006978  37600300  beq r6, zero, 24
00697c  7a330140  vextracti.s r6, 0(vr2)
006980  db020000  j 20
006984  fa381140  vextracti.s r17, 1(vr2)
006988  1b031300  andi r6, r6, 1
00698c  bb4f03fe  bneq r6, zero, -16
006990  7ab30040  vextracti.s r6, 0(vr1)
006994  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006998  e6c055a0  vmerge_h.hf vr1, vr11, vr5
00699c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
0069a0  ea213334  vor.u.mh vr3{mr2}, r6, vr3
0069a4  1f230000  addli r6, zero, 2
0069a8  7e0103e0  vmmov mr2, r6
0069ac  1f031000  addli r6, zero, 8
0069b0  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
0069b4  7e0103e0  vmmov mr2, r6
0069b8  1f032000  addli r6, zero, 16
0069bc  ea213836  vor.u.mh vr3{mr3}, r16, vr3
0069c0  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
0069c4  7e0103e0  vmmov mr2, r6
0069c8  1f034000  addli r6, zero, 32
0069cc  ea213734  vor.u.mh vr3{mr2}, r14, vr3
0069d0  7e0103e0  vmmov mr2, r6
0069d4  1f030001  addli r6, zero, 128
0069d8  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
0069dc  7e0103e0  vmmov mr2, r6
0069e0  1f030002  addli r6, zero, 256
0069e4  ea213630  vor.u.mh vr3{mr0}, r12, vr3
0069e8  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
0069ec  7e0103e0  vmmov mr2, r6
0069f0  1f030004  addli r6, zero, 512
0069f4  ea213534  vor.u.mh vr3{mr2}, r10, vr3
0069f8  7e0103e0  vmmov mr2, r6
0069fc  1f030008  addli r6, zero, 1024
006a00  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
006a04  7e0103e0  vmmov mr2, r6
006a08  1f030010  addli r6, zero, 2048
006a0c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
006a10  7e0103e0  vmmov mr2, r6
006a14  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
006a18  63030ff3  loadli.w r6,  -1664(r30)
006a1c  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
006a20  1f030fed  addli r6, r30, -2432
006a24  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
006a28  1f030fe9  addli r6, r30, -2944
006a2c  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
006a30  1f030020  addli r6, zero, 4096
006a34  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
006a38  eeb054c2  vsrl.s.mz vr1{mr1}, vr9, vr5
006a3c  669102c0  vabs.f vr2, vr5
006a40  7e0103e0  vmmov mr2, r6
006a44  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006a48  9f020040  addli r5, zero, 8192
006a4c  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
006a50  7e8102e0  vmmov mr2, r5
006a54  ea213234  vor.u.mh vr3{mr2}, r4, vr3
006a58  2b420000  lui r4, 4
006a5c  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
006a60  7e0102e0  vmmov mr2, r4
006a64  ea213134  vor.u.mh vr3{mr2}, r2, vr3
006a68  2b810000  lui r2, 8
006a6c  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
006a70  7e0301a0  vmmov r6, mr2
006a74  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
006a78  7e0101e0  vmmov mr2, r2
006a7c  2b014000  lui r2, 1024
006a80  6a315122  vor.s.mz vr2{mr1}, r2, vr5
006a84  2ba1aaaa  lui r2, 699050
006a88  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
006a8c  9b40f300  srli r1, r6, 15
006a90  1f215115  addli r2, r2, 2730
006a94  9b801000  andi r1, r1, 1
006a98  7e0101e0  vmmov mr2, r2
006a9c  6341efd1  loadli.w r2,  -5900(r30)
006aa0  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006aa4  3bb00000  bneq r1, zero, 12
006aa8  fab0f040  vextracti.s r1, 15(vr1)
006aac  5b010000  j 8
006ab0  fa30f140  vextracti.s r1, 15(vr2)
006ab4  1b41e300  srli r2, r6, 14
006ab8  1f120000  addli r4, zero, 1
006abc  1b011100  andi r2, r2, 1
006ac0  7e0102e0  vmmov mr2, r4
006ac4  3b300100  bneq r2, zero, 12
006ac8  7ab1e040  vextracti.s r2, 14(vr1)
006acc  5b010000  j 8
006ad0  7a31e140  vextracti.s r2, 14(vr2)
006ad4  1b42d300  srli r4, r6, 13
006ad8  1b021200  andi r4, r4, 1
006adc  3b300200  bneq r4, zero, 12
006ae0  7ab2d040  vextracti.s r4, 13(vr1)
006ae4  5b010000  j 8
006ae8  7a32d140  vextracti.s r4, 13(vr2)
006aec  9b42c300  srli r5, r6, 12
006af0  9b821200  andi r5, r5, 1
006af4  3bb00200  bneq r5, zero, 12
006af8  fab2c040  vextracti.s r5, 12(vr1)
006afc  5b010000  j 8
006b00  fa32c140  vextracti.s r5, 12(vr2)
006b04  9b43b300  srli r7, r6, 11
006b08  9b831300  andi r7, r7, 1
006b0c  3bb00300  bneq r7, zero, 12
006b10  fab3b040  vextracti.s r7, 11(vr1)
006b14  5b010000  j 8
006b18  fa33b140  vextracti.s r7, 11(vr2)
006b1c  1b44a300  srli r8, r6, 10
006b20  1b041400  andi r8, r8, 1
006b24  3b300400  bneq r8, zero, 12
006b28  7ab4a040  vextracti.s r8, 10(vr1)
006b2c  5b010000  j 8
006b30  7a34a140  vextracti.s r8, 10(vr2)
006b34  9b449300  srli r9, r6, 9
006b38  9b841400  andi r9, r9, 1
006b3c  3bb00400  bneq r9, zero, 12
006b40  fab49040  vextracti.s r9, 9(vr1)
006b44  5b010000  j 8
006b48  fa349140  vextracti.s r9, 9(vr2)
006b4c  1b458300  srli r10, r6, 8
006b50  1b051500  andi r10, r10, 1
006b54  3b300500  bneq r10, zero, 12
006b58  7ab58040  vextracti.s r10, 8(vr1)
006b5c  5b010000  j 8
006b60  7a358140  vextracti.s r10, 8(vr2)
006b64  9b457300  srli r11, r6, 7
006b68  9b851500  andi r11, r11, 1
006b6c  3bb00500  bneq r11, zero, 12
006b70  fab57040  vextracti.s r11, 7(vr1)
006b74  5b010000  j 8
006b78  fa357140  vextracti.s r11, 7(vr2)
006b7c  1b466300  srli r12, r6, 6
006b80  1b061600  andi r12, r12, 1
006b84  3b300600  bneq r12, zero, 12
006b88  7ab66040  vextracti.s r12, 6(vr1)
006b8c  5b010000  j 8
006b90  7a366140  vextracti.s r12, 6(vr2)
006b94  9b465300  srli r13, r6, 5
006b98  9b861600  andi r13, r13, 1
006b9c  3bb00600  bneq r13, zero, 12
006ba0  fab65040  vextracti.s r13, 5(vr1)
006ba4  5b010000  j 8
006ba8  fa365140  vextracti.s r13, 5(vr2)
006bac  1b474300  srli r14, r6, 4
006bb0  1b071700  andi r14, r14, 1
006bb4  3b300700  bneq r14, zero, 12
006bb8  7ab74040  vextracti.s r14, 4(vr1)
006bbc  5b010000  j 8
006bc0  7a374140  vextracti.s r14, 4(vr2)
006bc4  9b473300  srli r15, r6, 3
006bc8  9b871700  andi r15, r15, 1
006bcc  3bb00700  bneq r15, zero, 12
006bd0  fab73040  vextracti.s r15, 3(vr1)
006bd4  5b010000  j 8
006bd8  fa373140  vextracti.s r15, 3(vr2)
006bdc  1b482300  srli r16, r6, 2
006be0  1b081800  andi r16, r16, 1
006be4  3b300800  bneq r16, zero, 12
006be8  7ab82040  vextracti.s r16, 2(vr1)
006bec  5b010000  j 8
006bf0  7a382140  vextracti.s r16, 2(vr2)
006bf4  9b481300  srli r17, r6, 1
006bf8  9b881800  andi r17, r17, 1
006bfc  3be00800  bneq r17, zero, 24
006c00  fab81040  vextracti.s r17, 1(vr1)
006c04  1b031300  andi r6, r6, 1
006c08  37600300  beq r6, zero, 24
006c0c  7a330140  vextracti.s r6, 0(vr2)
006c10  db020000  j 20
006c14  fa381140  vextracti.s r17, 1(vr2)
006c18  1b031300  andi r6, r6, 1
006c1c  bb4f03fe  bneq r6, zero, -16
006c20  7ab30040  vextracti.s r6, 0(vr1)
006c24  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006c28  e6c04580  vmerge_l.hf vr1, vr11, vr4
006c2c  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
006c30  ea213334  vor.u.mh vr3{mr2}, r6, vr3
006c34  1f230000  addli r6, zero, 2
006c38  7e0103e0  vmmov mr2, r6
006c3c  1f031000  addli r6, zero, 8
006c40  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006c44  7e0103e0  vmmov mr2, r6
006c48  1f032000  addli r6, zero, 16
006c4c  ea213836  vor.u.mh vr3{mr3}, r16, vr3
006c50  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
006c54  7e0103e0  vmmov mr2, r6
006c58  1f034000  addli r6, zero, 32
006c5c  ea213734  vor.u.mh vr3{mr2}, r14, vr3
006c60  7e0103e0  vmmov mr2, r6
006c64  1f030001  addli r6, zero, 128
006c68  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
006c6c  7e0103e0  vmmov mr2, r6
006c70  1f030002  addli r6, zero, 256
006c74  ea213630  vor.u.mh vr3{mr0}, r12, vr3
006c78  eaa13534  vor.u.mh vr3{mr2}, r11, vr3
006c7c  7e0103e0  vmmov mr2, r6
006c80  1f030004  addli r6, zero, 512
006c84  ea213534  vor.u.mh vr3{mr2}, r10, vr3
006c88  7e0103e0  vmmov mr2, r6
006c8c  1f030008  addli r6, zero, 1024
006c90  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
006c94  7e0103e0  vmmov mr2, r6
006c98  1f030010  addli r6, zero, 2048
006c9c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
006ca0  7e0103e0  vmmov mr2, r6
006ca4  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
006ca8  63030ff3  loadli.w r6,  -1664(r30)
006cac  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
006cb0  1f038fed  addli r6, r30, -2368
006cb4  c2120302  vload_mask16.mz vr5{mr1}, 0(r6)
006cb8  1f038fea  addli r6, r30, -2752
006cbc  42110302  vload_mask16.mz vr2{mr1}, 0(r6)
006cc0  1f030020  addli r6, zero, 4096
006cc4  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
006cc8  eeb054c2  vsrl.s.mz vr1{mr1}, vr9, vr5
006ccc  669102c0  vabs.f vr2, vr5
006cd0  7e0103e0  vmmov mr2, r6
006cd4  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006cd8  9f020040  addli r5, zero, 8192
006cdc  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
006ce0  7e8102e0  vmmov mr2, r5
006ce4  ea213234  vor.u.mh vr3{mr2}, r4, vr3
006ce8  2b420000  lui r4, 4
006cec  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
006cf0  7e0102e0  vmmov mr2, r4
006cf4  ea213134  vor.u.mh vr3{mr2}, r2, vr3
006cf8  2b810000  lui r2, 8
006cfc  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
006d00  7e0301a0  vmmov r6, mr2
006d04  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
006d08  7e0101e0  vmmov mr2, r2
006d0c  2b014000  lui r2, 1024
006d10  6a315122  vor.s.mz vr2{mr1}, r2, vr5
006d14  2ba1aaaa  lui r2, 699050
006d18  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
006d1c  9b40f300  srli r1, r6, 15
006d20  1f215115  addli r2, r2, 2730
006d24  9b801000  andi r1, r1, 1
006d28  7e0101e0  vmmov mr2, r2
006d2c  6301afd1  loadli.w r2,  -5936(r30)
006d30  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006d34  3bb00000  bneq r1, zero, 12
006d38  fab0f040  vextracti.s r1, 15(vr1)
006d3c  5b010000  j 8
006d40  fa30f140  vextracti.s r1, 15(vr2)
006d44  1b41e300  srli r2, r6, 14
006d48  1f120000  addli r4, zero, 1
006d4c  1b011100  andi r2, r2, 1
006d50  7e0102e0  vmmov mr2, r4
006d54  3b300100  bneq r2, zero, 12
006d58  7ab1e040  vextracti.s r2, 14(vr1)
006d5c  5b010000  j 8
006d60  7a31e140  vextracti.s r2, 14(vr2)
006d64  1b42d300  srli r4, r6, 13
006d68  1b021200  andi r4, r4, 1
006d6c  3b300200  bneq r4, zero, 12
006d70  7ab2d040  vextracti.s r4, 13(vr1)
006d74  5b010000  j 8
006d78  7a32d140  vextracti.s r4, 13(vr2)
006d7c  9b42c300  srli r5, r6, 12
006d80  9b821200  andi r5, r5, 1
006d84  3bb00200  bneq r5, zero, 12
006d88  fab2c040  vextracti.s r5, 12(vr1)
006d8c  5b010000  j 8
006d90  fa32c140  vextracti.s r5, 12(vr2)
006d94  9b43b300  srli r7, r6, 11
006d98  9b831300  andi r7, r7, 1
006d9c  3bb00300  bneq r7, zero, 12
006da0  fab3b040  vextracti.s r7, 11(vr1)
006da4  5b010000  j 8
006da8  fa33b140  vextracti.s r7, 11(vr2)
006dac  1b44a300  srli r8, r6, 10
006db0  1b041400  andi r8, r8, 1
006db4  3b300400  bneq r8, zero, 12
006db8  7ab4a040  vextracti.s r8, 10(vr1)
006dbc  5b010000  j 8
006dc0  7a34a140  vextracti.s r8, 10(vr2)
006dc4  9b449300  srli r9, r6, 9
006dc8  9b841400  andi r9, r9, 1
006dcc  3bb00400  bneq r9, zero, 12
006dd0  fab49040  vextracti.s r9, 9(vr1)
006dd4  5b010000  j 8
006dd8  fa349140  vextracti.s r9, 9(vr2)
006ddc  1b458300  srli r10, r6, 8
006de0  1b051500  andi r10, r10, 1
006de4  3b300500  bneq r10, zero, 12
006de8  7ab58040  vextracti.s r10, 8(vr1)
006dec  5b010000  j 8
006df0  7a358140  vextracti.s r10, 8(vr2)
006df4  9b457300  srli r11, r6, 7
006df8  9b851500  andi r11, r11, 1
006dfc  3bb00500  bneq r11, zero, 12
006e00  fab57040  vextracti.s r11, 7(vr1)
006e04  5b010000  j 8
006e08  fa357140  vextracti.s r11, 7(vr2)
006e0c  1b466300  srli r12, r6, 6
006e10  1b061600  andi r12, r12, 1
006e14  3b300600  bneq r12, zero, 12
006e18  7ab66040  vextracti.s r12, 6(vr1)
006e1c  5b010000  j 8
006e20  7a366140  vextracti.s r12, 6(vr2)
006e24  9b465300  srli r13, r6, 5
006e28  9b861600  andi r13, r13, 1
006e2c  3bb00600  bneq r13, zero, 12
006e30  fab65040  vextracti.s r13, 5(vr1)
006e34  5b010000  j 8
006e38  fa365140  vextracti.s r13, 5(vr2)
006e3c  1b474300  srli r14, r6, 4
006e40  1b071700  andi r14, r14, 1
006e44  3b300700  bneq r14, zero, 12
006e48  7ab74040  vextracti.s r14, 4(vr1)
006e4c  5b010000  j 8
006e50  7a374140  vextracti.s r14, 4(vr2)
006e54  9b473300  srli r15, r6, 3
006e58  9b871700  andi r15, r15, 1
006e5c  3bb00700  bneq r15, zero, 12
006e60  fab73040  vextracti.s r15, 3(vr1)
006e64  5b010000  j 8
006e68  fa373140  vextracti.s r15, 3(vr2)
006e6c  1b482300  srli r16, r6, 2
006e70  1b081800  andi r16, r16, 1
006e74  3b300800  bneq r16, zero, 12
006e78  7ab82040  vextracti.s r16, 2(vr1)
006e7c  5b010000  j 8
006e80  7a382140  vextracti.s r16, 2(vr2)
006e84  9b481300  srli r17, r6, 1
006e88  9b881800  andi r17, r17, 1
006e8c  3bb00800  bneq r17, zero, 12
006e90  fab81040  vextracti.s r17, 1(vr1)
006e94  5b010000  j 8
006e98  fa381140  vextracti.s r17, 1(vr2)
006e9c  1b031300  andi r6, r6, 1
006ea0  fe0100c0  vmmov mr3, mr0
006ea4  3b300300  bneq r6, zero, 12
006ea8  7ab30040  vextracti.s r6, 0(vr1)
006eac  5b010000  j 8
006eb0  7a330140  vextracti.s r6, 0(vr2)
006eb4  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006eb8  e6c045a0  vmerge_h.hf vr1, vr11, vr4
006ebc  92901102  vadd.f.mz.rn vr1{mr1}, r3, vr1
006ec0  9f010010  addli r3, zero, 2048
006ec4  ea213334  vor.u.mh vr3{mr2}, r6, vr3
006ec8  1f230000  addli r6, zero, 2
006ecc  7e0103e0  vmmov mr2, r6
006ed0  1f430000  addli r6, zero, 4
006ed4  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006ed8  7e0003e0  vmmov mr0, r6
006edc  1f031000  addli r6, zero, 8
006ee0  ea213830  vor.u.mh vr3{mr0}, r16, vr3
006ee4  7e0003e0  vmmov mr0, r6
006ee8  1f032000  addli r6, zero, 16
006eec  eaa13730  vor.u.mh vr3{mr0}, r15, vr3
006ef0  7e0003e0  vmmov mr0, r6
006ef4  1f034000  addli r6, zero, 32
006ef8  ea213730  vor.u.mh vr3{mr0}, r14, vr3
006efc  7e0003e0  vmmov mr0, r6
006f00  1f030001  addli r6, zero, 128
006f04  eaa13630  vor.u.mh vr3{mr0}, r13, vr3
006f08  7e0003e0  vmmov mr0, r6
006f0c  1f030002  addli r6, zero, 256
006f10  ea213636  vor.u.mh vr3{mr3}, r12, vr3
006f14  eaa13530  vor.u.mh vr3{mr0}, r11, vr3
006f18  7e0003e0  vmmov mr0, r6
006f1c  1f030004  addli r6, zero, 512
006f20  ea213530  vor.u.mh vr3{mr0}, r10, vr3
006f24  7e0003e0  vmmov mr0, r6
006f28  1f030008  addli r6, zero, 1024
006f2c  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
006f30  7e0003e0  vmmov mr0, r6
006f34  ea213430  vor.u.mh vr3{mr0}, r8, vr3
006f38  7e8001e0  vmmov mr0, r3
006f3c  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
006f40  e3010ff3  loadli.w r3,  -1664(r30)
006f44  8a901102  vmul.f.mz.rn vr1{mr1}, r3, vr1
006f48  9f010fee  addli r3, r30, -2304
006f4c  42920102  vload_mask16.mz vr4{mr1}, 0(r3)
006f50  9f018feb  addli r3, r30, -2624
006f54  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
006f58  9f010020  addli r3, zero, 4096
006f5c  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006f60  eeb044c2  vsrl.s.mz vr1{mr1}, vr9, vr4
006f64  661102c0  vabs.f vr2, vr4
006f68  7e8001e0  vmmov mr0, r3
006f6c  9f010040  addli r3, zero, 8192
006f70  eaa13230  vor.u.mh vr3{mr0}, r5, vr3
006f74  7e8001e0  vmmov mr0, r3
006f78  ab410000  lui r3, 4
006f7c  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
006f80  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
006f84  ea213230  vor.u.mh vr3{mr0}, r4, vr3
006f88  7e8001e0  vmmov mr0, r3
006f8c  7e0201a0  vmmov r4, mr2
006f90  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
006f94  ea213130  vor.u.mh vr3{mr0}, r2, vr3
006f98  2b810000  lui r2, 8
006f9c  92b01902  vadd.s.mz vr1{mr1}, r19, vr1
006fa0  7e0001e0  vmmov mr0, r2
006fa4  2b014000  lui r2, 1024
006fa8  6a314122  vor.s.mz vr2{mr1}, r2, vr4
006fac  2ba1aaaa  lui r2, 699050
006fb0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
006fb4  9b40f200  srli r1, r4, 15
006fb8  1f215115  addli r2, r2, 2730
006fbc  9b801000  andi r1, r1, 1
006fc0  7e0001e0  vmmov mr0, r2
006fc4  6301efd1  loadli.w r2,  -5904(r30)
006fc8  62403110  vscatter.mh vr3{mr0}, vr0{r2}
006fcc  3bb00000  bneq r1, zero, 12
006fd0  fab0f040  vextracti.s r1, 15(vr1)
006fd4  5b010000  j 8
006fd8  fa30f140  vextracti.s r1, 15(vr2)
006fdc  1b41e200  srli r2, r4, 14
006fe0  9f110000  addli r3, zero, 1
006fe4  e3483fd1  loadli.w r17,  -5988(r30)
006fe8  1b011100  andi r2, r2, 1
006fec  7e8101e0  vmmov mr2, r3
006ff0  3b300100  bneq r2, zero, 12
006ff4  7ab1e040  vextracti.s r2, 14(vr1)
006ff8  5b010000  j 8
006ffc  7a31e140  vextracti.s r2, 14(vr2)
007000  9b41d200  srli r3, r4, 13
007004  9b811100  andi r3, r3, 1
007008  3bb00100  bneq r3, zero, 12
00700c  fab1d040  vextracti.s r3, 13(vr1)
007010  5b010000  j 8
007014  fa31d140  vextracti.s r3, 13(vr2)
007018  9b42c200  srli r5, r4, 12
00701c  9b821200  andi r5, r5, 1
007020  3bb00200  bneq r5, zero, 12
007024  fab2c040  vextracti.s r5, 12(vr1)
007028  5b010000  j 8
00702c  fa32c140  vextracti.s r5, 12(vr2)
007030  1b43b200  srli r6, r4, 11
007034  1b031300  andi r6, r6, 1
007038  3b300300  bneq r6, zero, 12
00703c  7ab3b040  vextracti.s r6, 11(vr1)
007040  5b010000  j 8
007044  7a33b140  vextracti.s r6, 11(vr2)
007048  9b43a200  srli r7, r4, 10
00704c  9b831300  andi r7, r7, 1
007050  3bb00300  bneq r7, zero, 12
007054  fab3a040  vextracti.s r7, 10(vr1)
007058  5b010000  j 8
00705c  fa33a140  vextracti.s r7, 10(vr2)
007060  1b449200  srli r8, r4, 9
007064  1b041400  andi r8, r8, 1
007068  3b300400  bneq r8, zero, 12
00706c  7ab49040  vextracti.s r8, 9(vr1)
007070  5b010000  j 8
007074  7a349140  vextracti.s r8, 9(vr2)
007078  9b448200  srli r9, r4, 8
00707c  9b841400  andi r9, r9, 1
007080  3bb00400  bneq r9, zero, 12
007084  fab48040  vextracti.s r9, 8(vr1)
007088  5b010000  j 8
00708c  fa348140  vextracti.s r9, 8(vr2)
007090  1b457200  srli r10, r4, 7
007094  1b051500  andi r10, r10, 1
007098  3b300500  bneq r10, zero, 12
00709c  7ab57040  vextracti.s r10, 7(vr1)
0070a0  5b010000  j 8
0070a4  7a357140  vextracti.s r10, 7(vr2)
0070a8  9b456200  srli r11, r4, 6
0070ac  9b851500  andi r11, r11, 1
0070b0  3bb00500  bneq r11, zero, 12
0070b4  fab56040  vextracti.s r11, 6(vr1)
0070b8  5b010000  j 8
0070bc  fa356140  vextracti.s r11, 6(vr2)
0070c0  1b465200  srli r12, r4, 5
0070c4  1b061600  andi r12, r12, 1
0070c8  3b300600  bneq r12, zero, 12
0070cc  7ab65040  vextracti.s r12, 5(vr1)
0070d0  5b010000  j 8
0070d4  7a365140  vextracti.s r12, 5(vr2)
0070d8  9b464200  srli r13, r4, 4
0070dc  9b861600  andi r13, r13, 1
0070e0  3bb00600  bneq r13, zero, 12
0070e4  fab64040  vextracti.s r13, 4(vr1)
0070e8  5b010000  j 8
0070ec  fa364140  vextracti.s r13, 4(vr2)
0070f0  1b473200  srli r14, r4, 3
0070f4  1b071700  andi r14, r14, 1
0070f8  3b300700  bneq r14, zero, 12
0070fc  7ab73040  vextracti.s r14, 3(vr1)
007100  5b010000  j 8
007104  7a373140  vextracti.s r14, 3(vr2)
007108  9b472200  srli r15, r4, 2
00710c  9b871700  andi r15, r15, 1
007110  3bb00700  bneq r15, zero, 12
007114  fab72040  vextracti.s r15, 2(vr1)
007118  5b010000  j 8
00711c  fa372140  vextracti.s r15, 2(vr2)
007120  1b481200  srli r16, r4, 1
007124  1b081800  andi r16, r16, 1
007128  3b500800  bneq r16, zero, 20
00712c  7ab81040  vextracti.s r16, 1(vr1)
007130  1b021200  andi r4, r4, 1
007134  b74702c8  beq r4, zero, -28176
007138  5b020000  j 16
00713c  7a381140  vextracti.s r16, 1(vr2)
007140  1b021200  andi r4, r4, 1
007144  b70702c8  beq r4, zero, -28192
007148  7a320140  vextracti.s r4, 0(vr2)
00714c  db3bf2ff  j -28196
007150  e3402fd1  loadli.w r1,  -5996(r30)
007154  0b161610  add.s r12, r12, r1
007158  bf7fd6fe  blt.s r12, r13, -4
00715c  9f0e0fd1  addli sp, r30, -6016
007160  9f8e0e2f  addli sp, sp, 6016
007164  00a00300  mfence { lm, sm, gm }
007168  00100000  exit
00716c  00100000  exit
007170  00100000  exit
007174  00100000  exit
007178  00100000  exit
00717c  00100000  exit
007180  00100000  exit
007184  00100000  exit
007188  00100000  exit
00718c  00100000  exit
007190  00100000  exit
007194  00100000  exit
007198  00100000  exit
00719c  00100000  exit
0071a0  00100000  exit
0071a4  00100000  exit
0071a8  00100000  exit
0071ac  00100000  exit
0071b0  00100000  exit
0071b4  00100000  exit
0071b8  00100000  exit
0071bc  00100000  exit
0071c0  00100000  exit
0071c4  00100000  exit
0071c8  00100000  exit
0071cc  00100000  exit
0071d0  00100000  exit
0071d4  00100000  exit
0071d8  00100000  exit
0071dc  00100000  exit
0071e0  00100000  exit
0071e4  00100000  exit
0071e8  00100000  exit
0071ec  00100000  exit
0071f0  00100000  exit
0071f4  00100000  exit
0071f8  00100000  exit
0071fc  00100000  exit
007200  00100000  exit
007204  00100000  exit
007208  00100000  exit
00720c  00100000  exit
007210  00100000  exit
007214  00100000  exit
007218  00100000  exit
00721c  00100000  exit
007220  00100000  exit
007224  00100000  exit
007228  00100000  exit
00722c  00100000  exit
007230  00100000  exit
007234  00100000  exit
007238  00100000  exit
00723c  00100000  exit
007240  00100000  exit
007244  00100000  exit
007248  00100000  exit
00724c  00100000  exit
007250  00100000  exit
007254  00100000  exit
007258  00100000  exit
00725c  00100000  exit
007260  00100000  exit
007264  00100000  exit
007268  00100000  exit
00726c  00100000  exit
007270  00100000  exit
007274  00100000  exit
007278  00100000  exit
00727c  00100000  exit
007280  00100000  exit
007284  00100000  exit
007288  00100000  exit
00728c  00100000  exit
007290  00100000  exit
007294  00100000  exit
007298  00100000  exit
00729c  00100000  exit
0072a0  00100000  exit
0072a4  00100000  exit
0072a8  00100000  exit
0072ac  00100000  exit
0072b0  00100000  exit
0072b4  00100000  exit
0072b8  00100000  exit
0072bc  00100000  exit
0072c0  00100000  exit
0072c4  00100000  exit
0072c8  00100000  exit
0072cc  00100000  exit
0072d0  00100000  exit
0072d4  00100000  exit
0072d8  00100000  exit
0072dc  00100000  exit
0072e0  00100000  exit
0072e4  00100000  exit
0072e8  00100000  exit
0072ec  00100000  exit
0072f0  00100000  exit
0072f4  00100000  exit
0072f8  00100000  exit
0072fc  00100000  exit
007300  00100000  exit
007304  00100000  exit
007308  00100000  exit
00730c  00100000  exit
007310  00100000  exit
007314  00100000  exit
007318  00100000  exit
00731c  00100000  exit
007320  00100000  exit
007324  00100000  exit
007328  00100000  exit
00732c  00100000  exit
007330  00100000  exit
007334  00100000  exit
007338  00100000  exit
00733c  00100000  exit
007340  00100000  exit
007344  00100000  exit
007348  00100000  exit
00734c  00100000  exit
007350  00100000  exit
007354  00100000  exit
007358  00100000  exit
00735c  00100000  exit
007360  00100000  exit
007364  00100000  exit
007368  00100000  exit
00736c  00100000  exit
007370  00100000  exit
007374  00100000  exit
007378  00100000  exit
00737c  00100000  exit
007380  00100000  exit
007384  00100000  exit
007388  00100000  exit
00738c  00100000  exit
007390  00100000  exit
007394  00100000  exit
007398  00100000  exit
00739c  00100000  exit
0073a0  00100000  exit
0073a4  00100000  exit
0073a8  00100000  exit
