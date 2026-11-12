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
0000e4  9f8e8ecf  addli sp, sp, -6208
0000e8  2b010000  lui r2, 0
0000ec  80300002  core_id r1
0000f0  1f8f8e2f  addli r30, sp, 6080
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
000124  67489fd0  storeli.w r9, -6012(r30)
000128  73e00400  stores.w zero, 0(r9)
00012c  00a00300  mfence { lm, sm, gm }
000130  80a10204  csr_set csr3, r5
000134  00d00100  sync_group
000138  e7088fd0  storeli.w r8, -6008(r30)
00013c  73600400  stores.w zero, 0(r8)
000140  00a00300  mfence { lm, sm, gm }
000144  80a10204  csr_set csr3, r5
000148  00d00100  sync_group
00014c  cbdfc636  ble.s r13, r12, 28660
000150  1f024000  addli r4, zero, 32
000154  80d20002  load_param_i r5, 1
000158  9f091000  addli r19, zero, 8
00015c  0b924030  div.s r4, r1, r4
000160  67455fd0  storeli.w r5, -6060(r30)
000164  67054fd0  storeli.w r4, -6064(r30)
000168  1b325200  slli r4, r4, 5
00016c  0b924018  sub.s r4, r1, r4
000170  3f203201  blt.s r4, r19, 8
000174  5bf80d00  j 28608
000178  2bf5ffff  lui r10, 1048575
00017c  1b378200  slli r14, r4, 8
000180  9f030010  addli r7, zero, 2048
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
0001b4  9f270000  addli r15, zero, 2
0001b8  9f080004  addli r17, zero, 512
0001bc  eea5b562  vxor.u.mz vr11{mr1}, vr11, vr11
0001c0  6708dfd0  storeli.w r13, -6016(r30)
0001c4  1b1505f8  ori r10, r10, 3968
0001c8  8b93e318  sub.s r7, r7, r14
0001cc  e747efd0  storeli.w r14, -6020(r30)
0001d0  9781a100  and r3, r3, r10
0001d4  8b83b340  min.u r7, r7, r11
0001d8  9b85f001  andi r11, r1, 31
0001dc  9bf00004  setlti r1, r1, 64
0001e0  8b912110  add.s r3, r3, r2
0001e4  13010200  seteq r2, r4, zero
0001e8  1bb51300  slli r10, r7, 1
0001ec  9f03dfd0  addli r7, r30, -6040
0001f0  6747bfd0  storeli.w r11, -6028(r30)
0001f4  674d3fd0  storeli.w r3, -5932(r30)
0001f8  9f812110  addli r3, r3, 2064
0001fc  e707afd0  storeli.w r10, -6024(r30)
000200  670d3fd0  storeli.w r3, -5936(r30)
000204  b3110728  sext_int2long r[4:5], r14
000208  1f470000  addli r14, zero, 4
00020c  97b14103  sll.d r[4:5], r[4:5], r20
000210  97802000  and r1, r1, r2
000214  67071fd0  storeli.w r1, -6032(r30)
000218  8b203410  add.ul r[2:3], r[9:10], r[4:5]
00021c  1f241000  addli r8, zero, 10
000220  9f640000  addli r9, zero, 6
000224  73b01300  store.d r[2:3], 0(r7)
000228  8ba03210  add.ul r[2:3], r[6:7], r[4:5]
00022c  9f01cfd0  addli r3, r30, -6048
000230  9f022000  addli r5, zero, 16
000234  1f631000  addli r6, zero, 14
000238  9f431000  addli r7, zero, 12
00023c  1f020001  addli r4, zero, 128
000240  73b01100  store.d r[2:3], 0(r3)
000244  ab700000  lui r1, 7
000248  2bf1ff7f  lui r2, 524287
00024c  9f71f00f  addli r3, zero, 2047
000250  1b99f0ff  ori r18, r1, 4095
000254  abf00000  lui r1, 15
000258  1b98f0ff  ori r16, r1, 4095
00025c  9b10f1ff  ori r1, r2, 4095
000260  e7051fd0  storeli.w r1, -6056(r30)
000264  9f008ff1  addli r1, r30, -1856
000268  e7450fd1  storeli.w r16, -6052(r30)
00026c  4690b002  vstore_mask16.mz vr11{mr1}, 0(r1)
000270  db020000  j 20
000274  e340afd0  loadli.w r1,  -6060(r30)
000278  0b161610  add.s r12, r12, r1
00027c  3f20d600  blt.s r12, r13, 8
000280  5bd80d00  j 28352
000284  1f818a00  addli r2, r21, 64
000288  e3008f00  loadli.w r1,  64(r30)
00028c  e74ccfd0  storeli.w r12, -5940(r30)
000290  e70c2fd0  storeli.w r2, -5944(r30)
000294  1f810a01  addli r2, r21, 128
000298  8b101630  div.s r1, r12, r1
00029c  674c2fd0  storeli.w r2, -5948(r30)
0002a0  1f818a01  addli r2, r21, 192
0002a4  670c2fd0  storeli.w r2, -5952(r30)
0002a8  1f810a02  addli r2, r21, 256
0002ac  e74b2fd0  storeli.w r2, -5956(r30)
0002b0  1f818a02  addli r2, r21, 320
0002b4  e70b2fd0  storeli.w r2, -5960(r30)
0002b8  63417f00  loadli.w r2,  60(r30)
0002bc  8b902030  div.s r1, r1, r2
0002c0  1f810a03  addli r2, r21, 384
0002c4  674b2fd0  storeli.w r2, -5964(r30)
0002c8  1f818a03  addli r2, r21, 448
0002cc  670b2fd0  storeli.w r2, -5968(r30)
0002d0  1f814a00  addli r2, r21, 32
0002d4  e74a2fd0  storeli.w r2, -5972(r30)
0002d8  1f81ca00  addli r2, r21, 96
0002dc  9bb08000  slli r1, r1, 8
0002e0  e70a2fd0  storeli.w r2, -5976(r30)
0002e4  1f814a01  addli r2, r21, 160
0002e8  674a2fd0  storeli.w r2, -5980(r30)
0002ec  1f81ca01  addli r2, r21, 224
0002f0  670a2fd0  storeli.w r2, -5984(r30)
0002f4  6301afd0  loadli.w r2,  -6064(r30)
0002f8  0b912010  add.s r2, r1, r2
0002fc  9f804a02  addli r1, r21, 288
000300  e7091fd0  storeli.w r1, -5992(r30)
000304  9f80ca02  addli r1, r21, 352
000308  e7492fd0  storeli.w r2, -5988(r30)
00030c  67491fd0  storeli.w r1, -5996(r30)
000310  9f804a03  addli r1, r21, 416
000314  67091fd0  storeli.w r1, -6000(r30)
000318  9f80ca03  addli r1, r21, 480
00031c  e7481fd0  storeli.w r1, -6004(r30)
000320  9f000000  addli r1, zero, 0
000324  00a00000  mfence { lm }
000328  5b280000  j 320
00032c  7ab20040  vextracti.s r4, 0(vr1)
000330  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
000334  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000338  1f220000  addli r4, zero, 2
00033c  fe0102e0  vmmov mr3, r4
000340  1f420000  addli r4, zero, 4
000344  ea201836  vor.u.mh vr1{mr3}, r16, vr1
000348  7e0002e0  vmmov mr0, r4
00034c  1f021000  addli r4, zero, 8
000350  7e0102e0  vmmov mr2, r4
000354  1f022000  addli r4, zero, 16
000358  eaa01730  vor.u.mh vr1{mr0}, r15, vr1
00035c  9f270000  addli r15, zero, 2
000360  ea201734  vor.u.mh vr1{mr2}, r14, vr1
000364  7e0102e0  vmmov mr2, r4
000368  1f024000  addli r4, zero, 32
00036c  1f470000  addli r14, zero, 4
000370  fe0102e0  vmmov mr3, r4
000374  1f028000  addli r4, zero, 64
000378  eaa01634  vor.u.mh vr1{mr2}, r13, vr1
00037c  7e0002e0  vmmov mr0, r4
000380  1f020001  addli r4, zero, 128
000384  ea201636  vor.u.mh vr1{mr3}, r12, vr1
000388  eaa01530  vor.u.mh vr1{mr0}, r11, vr1
00038c  7e0002e0  vmmov mr0, r4
000390  1f020002  addli r4, zero, 256
000394  ea201530  vor.u.mh vr1{mr0}, r10, vr1
000398  7e0002e0  vmmov mr0, r4
00039c  1f020004  addli r4, zero, 512
0003a0  7e0102e0  vmmov mr2, r4
0003a4  1f020008  addli r4, zero, 1024
0003a8  eaa01430  vor.u.mh vr1{mr0}, r9, vr1
0003ac  9f640000  addli r9, zero, 6
0003b0  ea201434  vor.u.mh vr1{mr2}, r8, vr1
0003b4  7e0102e0  vmmov mr2, r4
0003b8  1f020010  addli r4, zero, 2048
0003bc  1f241000  addli r8, zero, 10
0003c0  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
0003c4  7e0102e0  vmmov mr2, r4
0003c8  1f020020  addli r4, zero, 4096
0003cc  9f431000  addli r7, zero, 12
0003d0  fe0102e0  vmmov mr3, r4
0003d4  1f020040  addli r4, zero, 8192
0003d8  ea201334  vor.u.mh vr1{mr2}, r6, vr1
0003dc  1f631000  addli r6, zero, 14
0003e0  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
0003e4  fe0102e0  vmmov mr3, r4
0003e8  9f022000  addli r5, zero, 16
0003ec  eaa01136  vor.u.mh vr1{mr3}, r3, vr1
0003f0  ab410000  lui r3, 4
0003f4  fe8101e0  vmmov mr3, r3
0003f8  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0003fc  2b810000  lui r2, 8
000400  7e0001e0  vmmov mr0, r2
000404  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000408  eb508f00  load.d r[2:3], 8(r30)
00040c  eb518f83  load.d r[4:5], -1992(r30)
000410  6305ffd0  loadli.w r10,  -6024(r30)
000414  8ba03010  add.ul r[2:3], r[2:3], r[4:5]
000418  2ba2aaaa  lui r4, 699050
00041c  ab0100f0  lui r3, 983040
000420  1f225215  addli r4, r4, 2730
000424  97113500  or r3, r10, r3
000428  7e0002e0  vmmov mr0, r4
00042c  63421fd1  loadli.w r4,  -6004(r30)
000430  62401210  vscatter.mh vr1{mr0}, vr0{r4}
000434  1f020001  addli r4, zero, 128
000438  00a00000  mfence { lm }
00043c  ffb15001  s_lm2gm r3, r21, 0(r[2:3])
000440  9f71f00f  addli r3, zero, 2047
000444  00a00000  mfence { lm }
000448  63469fd1  loadli.w r12,  -5940(r30)
00044c  e3060fd1  loadli.w r13,  -6016(r30)
000450  e345efd0  loadli.w r11,  -6028(r30)
000454  6348bfd0  loadli.w r16,  -6052(r30)
000458  63413fd1  loadli.w r2,  -5988(r30)
00045c  e3407ff2  loadli.w r1,  -1732(r30)
000460  9f900000  addli r1, r1, 1
000464  37c840fe  beq r1, r4, -496
000468  e7431ff2  storeli.w r1, -1732(r30)
00046c  9bb01000  slli r1, r1, 1
000470  8b101110  add.s r1, r2, r1
000474  bfaf11fe  blt.s r3, r1, -24
000478  1f010000  addli r2, zero, 0
00047c  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
000480  9f110000  addli r3, zero, 1
000484  9230b002  vadd.s.mz vr1{mr1}, zero, vr11
000488  2ba6aaaa  lui r12, 699050
00048c  7e8001e0  vmmov mr0, r3
000490  9f210000  addli r3, zero, 2
000494  1f265615  addli r12, r12, 2730
000498  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
00049c  7e8001e0  vmmov mr0, r3
0004a0  9f410000  addli r3, zero, 4
0004a4  7e8101e0  vmmov mr2, r3
0004a8  9f011000  addli r3, zero, 8
0004ac  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0004b0  7e8001e0  vmmov mr0, r3
0004b4  9f012000  addli r3, zero, 16
0004b8  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
0004bc  6ac00730  vor.hf.mh vr0{mr0}, r15, vr0
0004c0  7e8001e0  vmmov mr0, r3
0004c4  9f014000  addli r3, zero, 32
0004c8  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0004cc  7e8001e0  vmmov mr0, r3
0004d0  9f018000  addli r3, zero, 64
0004d4  6a400730  vor.hf.mh vr0{mr0}, r14, vr0
0004d8  7e8001e0  vmmov mr0, r3
0004dc  9f010001  addli r3, zero, 128
0004e0  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0004e4  7e8001e0  vmmov mr0, r3
0004e8  9f010002  addli r3, zero, 256
0004ec  6ac00430  vor.hf.mh vr0{mr0}, r9, vr0
0004f0  7e8001e0  vmmov mr0, r3
0004f4  9f010004  addli r3, zero, 512
0004f8  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0004fc  7e8001e0  vmmov mr0, r3
000500  9f010008  addli r3, zero, 1024
000504  6ac00930  vor.hf.mh vr0{mr0}, r19, vr0
000508  7e8001e0  vmmov mr0, r3
00050c  9f010010  addli r3, zero, 2048
000510  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000514  7e8001e0  vmmov mr0, r3
000518  9f010020  addli r3, zero, 4096
00051c  6a400430  vor.hf.mh vr0{mr0}, r8, vr0
000520  7e8001e0  vmmov mr0, r3
000524  9f010040  addli r3, zero, 8192
000528  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
00052c  7e8001e0  vmmov mr0, r3
000530  ab410000  lui r3, 4
000534  fe8101e0  vmmov mr3, r3
000538  ab810000  lui r3, 8
00053c  6ac00330  vor.hf.mh vr0{mr0}, r7, vr0
000540  7e8001e0  vmmov mr0, r3
000544  ab010100  lui r3, 16
000548  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
00054c  6a400330  vor.hf.mh vr0{mr0}, r6, vr0
000550  7e8001e0  vmmov mr0, r3
000554  ab010200  lui r3, 32
000558  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
00055c  7e8001e0  vmmov mr0, r3
000560  ab010400  lui r3, 64
000564  6ac00230  vor.hf.mh vr0{mr0}, r5, vr0
000568  7e8001e0  vmmov mr0, r3
00056c  ab010800  lui r3, 128
000570  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000574  7e8001e0  vmmov mr0, r3
000578  ab011000  lui r3, 256
00057c  6a400e30  vor.hf.mh vr0{mr0}, r28, vr0
000580  7e8001e0  vmmov mr0, r3
000584  ab012000  lui r3, 512
000588  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
00058c  7e8001e0  vmmov mr0, r3
000590  ab014000  lui r3, 1024
000594  6ac00d30  vor.hf.mh vr0{mr0}, r27, vr0
000598  7e8001e0  vmmov mr0, r3
00059c  ab018000  lui r3, 2048
0005a0  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005a4  7e8001e0  vmmov mr0, r3
0005a8  ab010001  lui r3, 4096
0005ac  6a400d30  vor.hf.mh vr0{mr0}, r26, vr0
0005b0  7e8001e0  vmmov mr0, r3
0005b4  ab010002  lui r3, 8192
0005b8  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005bc  7e8001e0  vmmov mr0, r3
0005c0  ab010004  lui r3, 16384
0005c4  6ac00c30  vor.hf.mh vr0{mr0}, r25, vr0
0005c8  7e8001e0  vmmov mr0, r3
0005cc  ab010008  lui r3, 32768
0005d0  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005d4  7e8001e0  vmmov mr0, r3
0005d8  ab010010  lui r3, 65536
0005dc  6a400c30  vor.hf.mh vr0{mr0}, r24, vr0
0005e0  7e8001e0  vmmov mr0, r3
0005e4  ab010020  lui r3, 131072
0005e8  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0005ec  7e8001e0  vmmov mr0, r3
0005f0  ab010040  lui r3, 262144
0005f4  6ac00b30  vor.hf.mh vr0{mr0}, r23, vr0
0005f8  7e8001e0  vmmov mr0, r3
0005fc  ab010080  lui r3, 524288
000600  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
000604  7e8001e0  vmmov mr0, r3
000608  9f110000  addli r3, zero, 1
00060c  6a400b30  vor.hf.mh vr0{mr0}, r22, vr0
000610  7e8001e0  vmmov mr0, r3
000614  9f210000  addli r3, zero, 2
000618  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
00061c  7e8001e0  vmmov mr0, r3
000620  9f011000  addli r3, zero, 8
000624  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000628  7e8001e0  vmmov mr0, r3
00062c  9f012000  addli r3, zero, 16
000630  ea401934  vor.hf.mh vr1{mr2}, r18, vr1
000634  7e8101e0  vmmov mr2, r3
000638  9f014000  addli r3, zero, 32
00063c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000640  ea401934  vor.hf.mh vr1{mr2}, r18, vr1
000644  7e8101e0  vmmov mr2, r3
000648  9f018000  addli r3, zero, 64
00064c  7e8001e0  vmmov mr0, r3
000650  9f010001  addli r3, zero, 128
000654  ea401034  vor.hf.mh vr1{mr2}, zero, vr1
000658  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
00065c  7e8001e0  vmmov mr0, r3
000660  9f010002  addli r3, zero, 256
000664  7e8101e0  vmmov mr2, r3
000668  9f010004  addli r3, zero, 512
00066c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000670  7e8001e0  vmmov mr0, r3
000674  9f010008  addli r3, zero, 1024
000678  ea401934  vor.hf.mh vr1{mr2}, r18, vr1
00067c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000680  7e8001e0  vmmov mr0, r3
000684  9f010010  addli r3, zero, 2048
000688  7e8101e0  vmmov mr2, r3
00068c  9f010020  addli r3, zero, 4096
000690  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
000694  7e8001e0  vmmov mr0, r3
000698  9f010040  addli r3, zero, 8192
00069c  ea401034  vor.hf.mh vr1{mr2}, zero, vr1
0006a0  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
0006a4  7e8001e0  vmmov mr0, r3
0006a8  ab810000  lui r3, 8
0006ac  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0006b0  7e8001e0  vmmov mr0, r3
0006b4  ab010100  lui r3, 16
0006b8  ea401936  vor.hf.mh vr1{mr3}, r18, vr1
0006bc  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0006c0  7e8001e0  vmmov mr0, r3
0006c4  ab010200  lui r3, 32
0006c8  7e8101e0  vmmov mr2, r3
0006cc  ab010400  lui r3, 64
0006d0  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
0006d4  7e8001e0  vmmov mr0, r3
0006d8  ab010800  lui r3, 128
0006dc  ea401034  vor.hf.mh vr1{mr2}, zero, vr1
0006e0  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
0006e4  7e8001e0  vmmov mr0, r3
0006e8  ab011000  lui r3, 256
0006ec  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
0006f0  7e8001e0  vmmov mr0, r3
0006f4  ab012000  lui r3, 512
0006f8  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
0006fc  7e8001e0  vmmov mr0, r3
000700  ab014000  lui r3, 1024
000704  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000708  7e8001e0  vmmov mr0, r3
00070c  ab018000  lui r3, 2048
000710  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
000714  7e8001e0  vmmov mr0, r3
000718  ab010001  lui r3, 4096
00071c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000720  7e8001e0  vmmov mr0, r3
000724  ab010002  lui r3, 8192
000728  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
00072c  7e8001e0  vmmov mr0, r3
000730  ab010004  lui r3, 16384
000734  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000738  7e8001e0  vmmov mr0, r3
00073c  ab010008  lui r3, 32768
000740  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
000744  7e8001e0  vmmov mr0, r3
000748  ab010010  lui r3, 65536
00074c  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000750  7e8001e0  vmmov mr0, r3
000754  ab010020  lui r3, 131072
000758  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
00075c  7e8001e0  vmmov mr0, r3
000760  ab010040  lui r3, 262144
000764  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000768  7e8001e0  vmmov mr0, r3
00076c  ab010080  lui r3, 524288
000770  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
000774  7e8001e0  vmmov mr0, r3
000778  8b912a10  add.s r3, r21, r2
00077c  1f018100  addli r2, r2, 64
000780  1f824100  addli r4, r3, 32
000784  ea401030  vor.hf.mh vr1{mr0}, zero, vr1
000788  7e0006e0  vmmov mr0, r12
00078c  62c01110  vscatter.mh vr1{mr0}, vr0{r3}
000790  62401210  vscatter.mh vr1{mr0}, vr0{r4}
000794  00a00000  mfence { lm }
000798  bb1311ff  bneq r2, r17, -796
00079c  e341ffd0  loadli.w r3,  -6020(r30)
0007a0  1bb1b000  slli r2, r1, 11
0007a4  2b0200f0  lui r4, 983040
0007a8  0b113110  add.s r2, r2, r3
0007ac  33110128  sext_int2long r[3:4], r2
0007b0  97324103  sll.d r[6:7], r[3:4], r20
0007b4  17114500  or r2, r10, r4
0007b8  eb510f00  load.d r[4:5], 0(r30)
0007bc  733c5f82  store.d r[6:7], -1992(r30)
0007c0  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
0007c4  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
0007c8  1f018ff3  addli r2, r30, -1600
0007cc  1f028ff0  addli r4, r30, -1984
0007d0  00a00000  mfence { lm }
0007d4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0007d8  1f010ff4  addli r2, r30, -1536
0007dc  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
0007e0  1f010ff1  addli r2, r30, -1920
0007e4  66c10580  vmerge_l.hf vr2, vr11, vr0
0007e8  e6c005a0  vmerge_h.hf vr1, vr11, vr0
0007ec  66c23580  vmerge_l.hf vr4, vr11, vr3
0007f0  e6c235a0  vmerge_h.hf vr5, vr11, vr3
0007f4  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0007f8  1f018ff2  addli r2, r30, -1728
0007fc  12102002  vadd.f.mz.rn vr0{mr1}, zero, vr2
000800  12111002  vadd.f.mz.rn vr2{mr1}, zero, vr1
000804  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
000808  1f010ff3  addli r2, r30, -1664
00080c  92114002  vadd.f.mz.rn vr3{mr1}, zero, vr4
000810  00a00000  mfence { lm }
000814  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000818  1f018ff4  addli r2, r30, -1472
00081c  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000820  12115002  vadd.f.mz.rn vr2{mr1}, zero, vr5
000824  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
000828  1f018ff0  addli r2, r30, -1984
00082c  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000830  1f018fef  addli r2, r30, -2112
000834  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
000838  66c21580  vmerge_l.hf vr4, vr11, vr1
00083c  e6c215a0  vmerge_h.hf vr5, vr11, vr1
000840  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000844  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000848  1f010ff5  addli r2, r30, -1408
00084c  92104002  vadd.f.mz.rn vr1{mr1}, zero, vr4
000850  12115002  vadd.f.mz.rn vr2{mr1}, zero, vr5
000854  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
000858  1f010fef  addli r2, r30, -2176
00085c  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
000860  1f018fee  addli r2, r30, -2240
000864  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000868  66c23580  vmerge_l.hf vr4, vr11, vr3
00086c  e6c135a0  vmerge_h.hf vr3, vr11, vr3
000870  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
000874  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
000878  1f010fee  addli r2, r30, -2304
00087c  92104002  vadd.f.mz.rn vr1{mr1}, zero, vr4
000880  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
000884  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
000888  1f018ff5  addli r2, r30, -1344
00088c  92113002  vadd.f.mz.rn vr3{mr1}, zero, vr3
000890  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000894  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000898  1f010ff6  addli r2, r30, -1280
00089c  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0008a0  66c52580  vmerge_l.hf vr10, vr11, vr2
0008a4  e64522a0  vmerge_h.hf vr11, vr4, vr2
0008a8  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0008ac  1f018ff6  addli r2, r30, -1216
0008b0  9210a002  vadd.f.mz.rn vr1{mr1}, zero, vr10
0008b4  e6442280  vmerge_l.hf vr9, vr4, vr2
0008b8  664422a0  vmerge_h.hf vr8, vr4, vr2
0008bc  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
0008c0  1f010ff7  addli r2, r30, -1152
0008c4  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0008c8  9210b002  vadd.f.mz.rn vr1{mr1}, zero, vr11
0008cc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0008d0  92109002  vadd.f.mz.rn vr1{mr1}, zero, vr9
0008d4  66432280  vmerge_l.hf vr6, vr4, vr2
0008d8  e64322a0  vmerge_h.hf vr7, vr4, vr2
0008dc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0008e0  92108002  vadd.f.mz.rn vr1{mr1}, zero, vr8
0008e4  96111002  vadd.f.mz.rn vr3{mr1}, vr0, vr1
0008e8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0008ec  92106002  vadd.f.mz.rn vr1{mr1}, zero, vr6
0008f0  96901102  vadd.f.mz.rn vr1{mr1}, vr3, vr1
0008f4  92117002  vadd.f.mz.rn vr3{mr1}, zero, vr7
0008f8  e6420280  vmerge_l.hf vr5, vr4, vr0
0008fc  664102a0  vmerge_h.hf vr2, vr4, vr0
000900  96913002  vadd.f.mz.rn vr3{mr1}, vr1, vr3
000904  92105002  vadd.f.mz.rn vr1{mr1}, zero, vr5
000908  16901102  vadd.f.mz.rn vr0{mr1}, vr3, vr1
00090c  92102002  vadd.f.mz.rn vr1{mr1}, zero, vr2
000910  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000914  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000918  7a110040  vextracti.f r2, 0(vr0)
00091c  fa111040  vextracti.f r3, 1(vr0)
000920  0b613110  add.f.rn r2, r2, r3
000924  fa112040  vextracti.f r3, 2(vr0)
000928  0be12110  add.f.rn r2, r3, r2
00092c  fa113040  vextracti.f r3, 3(vr0)
000930  0be12110  add.f.rn r2, r3, r2
000934  fa114040  vextracti.f r3, 4(vr0)
000938  0be12110  add.f.rn r2, r3, r2
00093c  fa115040  vextracti.f r3, 5(vr0)
000940  0be12110  add.f.rn r2, r3, r2
000944  fa116040  vextracti.f r3, 6(vr0)
000948  0be12110  add.f.rn r2, r3, r2
00094c  fa117040  vextracti.f r3, 7(vr0)
000950  0be12110  add.f.rn r2, r3, r2
000954  fa118040  vextracti.f r3, 8(vr0)
000958  0be12110  add.f.rn r2, r3, r2
00095c  fa119040  vextracti.f r3, 9(vr0)
000960  0be12110  add.f.rn r2, r3, r2
000964  fa11a040  vextracti.f r3, 10(vr0)
000968  0be12110  add.f.rn r2, r3, r2
00096c  fa11b040  vextracti.f r3, 11(vr0)
000970  0be12110  add.f.rn r2, r3, r2
000974  fa11c040  vextracti.f r3, 12(vr0)
000978  0be12110  add.f.rn r2, r3, r2
00097c  9f010ff3  addli r3, r30, -1664
000980  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
000984  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
000988  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
00098c  fa11d040  vextracti.f r3, 13(vr0)
000990  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000994  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
000998  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
00099c  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
0009a0  1f028fef  addli r4, r30, -2112
0009a4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0009a8  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0009ac  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
0009b0  0be12110  add.f.rn r2, r3, r2
0009b4  9f010fef  addli r3, r30, -2176
0009b8  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
0009bc  1f020fee  addli r4, r30, -2304
0009c0  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0009c4  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0009c8  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
0009cc  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0009d0  9f018fee  addli r3, r30, -2240
0009d4  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0009d8  c2910102  vload_mask16.mz vr3{mr1}, 0(r3)
0009dc  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
0009e0  46901102  vstore_mask16.mz vr1{mr1}, 0(r3)
0009e4  fa11e040  vextracti.f r3, 14(vr0)
0009e8  92304002  vadd.s.mz vr1{mr1}, zero, vr4
0009ec  c2110202  vload_mask16.mz vr3{mr1}, 0(r4)
0009f0  a6903102  vmac.f.mz.rn vr1{mr1}, vr3, vr3
0009f4  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
0009f8  1f028fed  addli r4, r30, -2368
0009fc  92314002  vadd.s.mz vr3{mr1}, zero, vr4
000a00  0be12110  add.f.rn r2, r3, r2
000a04  fa11f040  vextracti.f r3, 15(vr0)
000a08  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000a0c  12304002  vadd.s.mz vr0{mr1}, zero, vr4
000a10  a6915202  vmac.f.mz.rn vr3{mr1}, vr5, vr5
000a14  a610a502  vmac.f.mz.rn vr1{mr1}, vr10, vr10
000a18  26102102  vmac.f.mz.rn vr0{mr1}, vr2, vr2
000a1c  12354002  vadd.s.mz vr10{mr1}, zero, vr4
000a20  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
000a24  92304002  vadd.s.mz vr1{mr1}, zero, vr4
000a28  2695b502  vmac.f.mz.rn vr10{mr1}, vr11, vr11
000a2c  92354002  vadd.s.mz vr11{mr1}, zero, vr4
000a30  a6959402  vmac.f.mz.rn vr11{mr1}, vr9, vr9
000a34  92344002  vadd.s.mz vr9{mr1}, zero, vr4
000a38  a6148402  vmac.f.mz.rn vr9{mr1}, vr8, vr8
000a3c  12344002  vadd.s.mz vr8{mr1}, zero, vr4
000a40  26146302  vmac.f.mz.rn vr8{mr1}, vr6, vr6
000a44  12334002  vadd.s.mz vr6{mr1}, zero, vr4
000a48  0be12110  add.f.rn r2, r3, r2
000a4c  9f010ff1  addli r3, r30, -1920
000a50  26937302  vmac.f.mz.rn vr6{mr1}, vr7, vr7
000a54  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000a58  9f018ff2  addli r3, r30, -1728
000a5c  a6102102  vmac.f.mz.rn vr1{mr1}, vr2, vr2
000a60  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000a64  e3011fd1  loadli.w r3,  -6008(r30)
000a68  26122102  vmac.f.mz.rn vr4{mr1}, vr2, vr2
000a6c  73e02100  stores.w r2, 0(r3)
000a70  00a00300  mfence { lm, sm, gm }
000a74  80210804  csr_set csr3, r16
000a78  00d00100  sync_group
000a7c  3ba40500  bneq r11, zero, 264
000a80  e342afd1  loadli.w r5,  -5932(r30)
000a84  6fc10200  loads.w r2, 0(r5)
000a88  efc14200  loads.w r3, 4(r5)
000a8c  6fc28200  loads.w r4, 8(r5)
000a90  0b613110  add.f.rn r2, r2, r3
000a94  efc1c200  loads.w r3, 12(r5)
000a98  0b614110  add.f.rn r2, r2, r4
000a9c  6fc20201  loads.w r4, 16(r5)
000aa0  0b613110  add.f.rn r2, r2, r3
000aa4  efc14201  loads.w r3, 20(r5)
000aa8  0b614110  add.f.rn r2, r2, r4
000aac  6fc28201  loads.w r4, 24(r5)
000ab0  0b613110  add.f.rn r2, r2, r3
000ab4  efc1c201  loads.w r3, 28(r5)
000ab8  0b614110  add.f.rn r2, r2, r4
000abc  6fc20202  loads.w r4, 32(r5)
000ac0  0b613110  add.f.rn r2, r2, r3
000ac4  efc14202  loads.w r3, 36(r5)
000ac8  0b614110  add.f.rn r2, r2, r4
000acc  6fc28202  loads.w r4, 40(r5)
000ad0  0b613110  add.f.rn r2, r2, r3
000ad4  efc1c202  loads.w r3, 44(r5)
000ad8  0b614110  add.f.rn r2, r2, r4
000adc  6fc20203  loads.w r4, 48(r5)
000ae0  0b613110  add.f.rn r2, r2, r3
000ae4  efc14203  loads.w r3, 52(r5)
000ae8  0b614110  add.f.rn r2, r2, r4
000aec  6fc28203  loads.w r4, 56(r5)
000af0  0b613110  add.f.rn r2, r2, r3
000af4  efc1c203  loads.w r3, 60(r5)
000af8  0b614110  add.f.rn r2, r2, r4
000afc  6fc20204  loads.w r4, 64(r5)
000b00  0b613110  add.f.rn r2, r2, r3
000b04  efc14204  loads.w r3, 68(r5)
000b08  0b614110  add.f.rn r2, r2, r4
000b0c  6fc28204  loads.w r4, 72(r5)
000b10  0b613110  add.f.rn r2, r2, r3
000b14  efc1c204  loads.w r3, 76(r5)
000b18  0b614110  add.f.rn r2, r2, r4
000b1c  6fc20205  loads.w r4, 80(r5)
000b20  0b613110  add.f.rn r2, r2, r3
000b24  efc14205  loads.w r3, 84(r5)
000b28  0b614110  add.f.rn r2, r2, r4
000b2c  6fc28205  loads.w r4, 88(r5)
000b30  0b613110  add.f.rn r2, r2, r3
000b34  efc1c205  loads.w r3, 92(r5)
000b38  0b614110  add.f.rn r2, r2, r4
000b3c  6fc20206  loads.w r4, 96(r5)
000b40  0b613110  add.f.rn r2, r2, r3
000b44  efc14206  loads.w r3, 100(r5)
000b48  0b614110  add.f.rn r2, r2, r4
000b4c  6fc28206  loads.w r4, 104(r5)
000b50  0b613110  add.f.rn r2, r2, r3
000b54  efc1c206  loads.w r3, 108(r5)
000b58  0b614110  add.f.rn r2, r2, r4
000b5c  6fc20207  loads.w r4, 112(r5)
000b60  0b613110  add.f.rn r2, r2, r3
000b64  efc14207  loads.w r3, 116(r5)
000b68  0b614110  add.f.rn r2, r2, r4
000b6c  6fc28207  loads.w r4, 120(r5)
000b70  0b613110  add.f.rn r2, r2, r3
000b74  efc1c207  loads.w r3, 124(r5)
000b78  0b614110  add.f.rn r2, r2, r4
000b7c  0b613110  add.f.rn r2, r2, r3
000b80  73e02200  stores.w r2, 0(r5)
000b84  1f010ff3  addli r2, r30, -1664
000b88  00a00300  mfence { lm, sm, gm }
000b8c  80210804  csr_set csr3, r16
000b90  96904002  vadd.f.mz.rn vr1{mr1}, vr1, vr4
000b94  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000b98  1f018ff0  addli r2, r30, -1984
000b9c  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000ba0  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000ba4  1f018fef  addli r2, r30, -2112
000ba8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bac  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000bb0  1f010fef  addli r2, r30, -2176
000bb4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bb8  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000bbc  1f018fee  addli r2, r30, -2240
000bc0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bc4  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000bc8  1f010fee  addli r2, r30, -2304
000bcc  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bd0  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000bd4  1f018fed  addli r2, r30, -2368
000bd8  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000bdc  42110102  vload_mask16.mz vr2{mr1}, 0(r2)
000be0  00d00100  sync_group
000be4  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
000be8  9690a002  vadd.f.mz.rn vr1{mr1}, vr1, vr10
000bec  9690b002  vadd.f.mz.rn vr1{mr1}, vr1, vr11
000bf0  96909002  vadd.f.mz.rn vr1{mr1}, vr1, vr9
000bf4  96908002  vadd.f.mz.rn vr1{mr1}, vr1, vr8
000bf8  96906002  vadd.f.mz.rn vr1{mr1}, vr1, vr6
000bfc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
000c00  16900002  vadd.f.mz.rn vr0{mr1}, vr1, vr0
000c04  7a110040  vextracti.f r2, 0(vr0)
000c08  fa111040  vextracti.f r3, 1(vr0)
000c0c  7a12f040  vextracti.f r4, 15(vr0)
000c10  0b613110  add.f.rn r2, r2, r3
000c14  fa112040  vextracti.f r3, 2(vr0)
000c18  0be12110  add.f.rn r2, r3, r2
000c1c  fa113040  vextracti.f r3, 3(vr0)
000c20  0be12110  add.f.rn r2, r3, r2
000c24  fa114040  vextracti.f r3, 4(vr0)
000c28  0be12110  add.f.rn r2, r3, r2
000c2c  fa115040  vextracti.f r3, 5(vr0)
000c30  0be12110  add.f.rn r2, r3, r2
000c34  fa116040  vextracti.f r3, 6(vr0)
000c38  0be12110  add.f.rn r2, r3, r2
000c3c  fa117040  vextracti.f r3, 7(vr0)
000c40  0be12110  add.f.rn r2, r3, r2
000c44  fa118040  vextracti.f r3, 8(vr0)
000c48  0be12110  add.f.rn r2, r3, r2
000c4c  fa119040  vextracti.f r3, 9(vr0)
000c50  0be12110  add.f.rn r2, r3, r2
000c54  fa11a040  vextracti.f r3, 10(vr0)
000c58  0be12110  add.f.rn r2, r3, r2
000c5c  fa11b040  vextracti.f r3, 11(vr0)
000c60  0be12110  add.f.rn r2, r3, r2
000c64  fa11c040  vextracti.f r3, 12(vr0)
000c68  0be12110  add.f.rn r2, r3, r2
000c6c  fa11d040  vextracti.f r3, 13(vr0)
000c70  0be12110  add.f.rn r2, r3, r2
000c74  fa11e040  vextracti.f r3, 14(vr0)
000c78  8be12110  add.f.rn r3, r3, r2
000c7c  6341afd1  loadli.w r2,  -5932(r30)
000c80  6f410100  loads.w r2, 0(r2)
000c84  8b613210  add.f.rn r3, r4, r3
000c88  63420fd1  loadli.w r4,  -6012(r30)
000c8c  73603200  stores.w r3, 0(r4)
000c90  9f012000  addli r3, zero, 16
000c94  00a00300  mfence { lm, sm, gm }
000c98  80210804  csr_set csr3, r16
000c9c  00d00100  sync_group
000ca0  7e8101e0  vmmov mr2, r3
000ca4  9f110000  addli r3, zero, 1
000ca8  7e8001e0  vmmov mr0, r3
000cac  3ba40500  bneq r11, zero, 264
000cb0  6303afd1  loadli.w r6,  -5936(r30)
000cb4  ef410300  loads.w r3, 0(r6)
000cb8  6f424300  loads.w r4, 4(r6)
000cbc  ef428300  loads.w r5, 8(r6)
000cc0  8be14110  add.f.rn r3, r3, r4
000cc4  6f42c300  loads.w r4, 12(r6)
000cc8  8be15110  add.f.rn r3, r3, r5
000ccc  ef420301  loads.w r5, 16(r6)
000cd0  8be14110  add.f.rn r3, r3, r4
000cd4  6f424301  loads.w r4, 20(r6)
000cd8  8be15110  add.f.rn r3, r3, r5
000cdc  ef428301  loads.w r5, 24(r6)
000ce0  8be14110  add.f.rn r3, r3, r4
000ce4  6f42c301  loads.w r4, 28(r6)
000ce8  8be15110  add.f.rn r3, r3, r5
000cec  ef420302  loads.w r5, 32(r6)
000cf0  8be14110  add.f.rn r3, r3, r4
000cf4  6f424302  loads.w r4, 36(r6)
000cf8  8be15110  add.f.rn r3, r3, r5
000cfc  ef428302  loads.w r5, 40(r6)
000d00  8be14110  add.f.rn r3, r3, r4
000d04  6f42c302  loads.w r4, 44(r6)
000d08  8be15110  add.f.rn r3, r3, r5
000d0c  ef420303  loads.w r5, 48(r6)
000d10  8be14110  add.f.rn r3, r3, r4
000d14  6f424303  loads.w r4, 52(r6)
000d18  8be15110  add.f.rn r3, r3, r5
000d1c  ef428303  loads.w r5, 56(r6)
000d20  8be14110  add.f.rn r3, r3, r4
000d24  6f42c303  loads.w r4, 60(r6)
000d28  8be15110  add.f.rn r3, r3, r5
000d2c  ef420304  loads.w r5, 64(r6)
000d30  8be14110  add.f.rn r3, r3, r4
000d34  6f424304  loads.w r4, 68(r6)
000d38  8be15110  add.f.rn r3, r3, r5
000d3c  ef428304  loads.w r5, 72(r6)
000d40  8be14110  add.f.rn r3, r3, r4
000d44  6f42c304  loads.w r4, 76(r6)
000d48  8be15110  add.f.rn r3, r3, r5
000d4c  ef420305  loads.w r5, 80(r6)
000d50  8be14110  add.f.rn r3, r3, r4
000d54  6f424305  loads.w r4, 84(r6)
000d58  8be15110  add.f.rn r3, r3, r5
000d5c  ef428305  loads.w r5, 88(r6)
000d60  8be14110  add.f.rn r3, r3, r4
000d64  6f42c305  loads.w r4, 92(r6)
000d68  8be15110  add.f.rn r3, r3, r5
000d6c  ef420306  loads.w r5, 96(r6)
000d70  8be14110  add.f.rn r3, r3, r4
000d74  6f424306  loads.w r4, 100(r6)
000d78  8be15110  add.f.rn r3, r3, r5
000d7c  ef428306  loads.w r5, 104(r6)
000d80  8be14110  add.f.rn r3, r3, r4
000d84  6f42c306  loads.w r4, 108(r6)
000d88  8be15110  add.f.rn r3, r3, r5
000d8c  ef420307  loads.w r5, 112(r6)
000d90  8be14110  add.f.rn r3, r3, r4
000d94  6f424307  loads.w r4, 116(r6)
000d98  8be15110  add.f.rn r3, r3, r5
000d9c  ef428307  loads.w r5, 120(r6)
000da0  8be14110  add.f.rn r3, r3, r4
000da4  6f42c307  loads.w r4, 124(r6)
000da8  8be15110  add.f.rn r3, r3, r5
000dac  8be14110  add.f.rn r3, r3, r4
000db0  73603300  stores.w r3, 0(r6)
000db4  00a00300  mfence { lm, sm, gm }
000db8  80210804  csr_set csr3, r16
000dbc  00d00100  sync_group
000dc0  e301afd1  loadli.w r3,  -5936(r30)
000dc4  2b02003a  lui r4, 237568
000dc8  0b674120  mul.f.rn r14, r2, r4
000dcc  efc10100  loads.w r3, 0(r3)
000dd0  0be14120  mul.f.rn r2, r3, r4
000dd4  8b61e720  mul.f.rn r3, r14, r14
000dd8  0b613118  sub.f.rn r2, r2, r3
000ddc  e3014f00  loadli.w r3,  32(r30)
000de0  0be12110  add.f.rn r2, r3, r2
000de4  ab01803f  lui r3, 260096
000de8  0f010108  sqrt.f.rn r2, r2
000dec  8f842118  div.f.rn r9, r3, r2
000df0  9f018ff1  addli r3, r30, -1856
000df4  6301efd0  loadli.w r2,  -6032(r30)
000df8  42910102  vload_mask16.mz vr2{mr1}, 0(r3)
000dfc  37030100  beq r2, zero, 192
000e00  6301bfd0  loadli.w r2,  -6056(r30)
000e04  ab01807f  lui r3, 522240
000e08  17012700  and r2, r14, r2
000e0c  13812104  setlt.u r2, r3, r2
000e10  3b600100  bneq r2, zero, 24
000e14  1b410701  srli r2, r14, 16
000e18  1b011100  andi r2, r2, 1
000e1c  0b112710  add.s r2, r14, r2
000e20  0b112111  add.s r2, r2, r18
000e24  db010000  j 12
000e28  2b014000  lui r2, 1024
000e2c  17112700  or r2, r14, r2
000e30  1f130000  addli r6, zero, 1
000e34  b3910028  sext_int2long r[4:5], r1
000e38  9b420101  srli r5, r2, 16
000e3c  2b04807f  lui r8, 522240
000e40  97b06102  sll.d r[2:3], r[4:5], r6
000e44  e301bfd0  loadli.w r3,  -6056(r30)
000e48  6b538f02  load.d r[7:8], 40(r30)
000e4c  2b0200f0  lui r4, 983040
000e50  73105fbc  store.h r5, -1088(r30)
000e54  9f028ff7  addli r5, r30, -1088
000e58  00a00000  mfence { lm }
000e5c  17924700  or r4, r15, r4
000e60  97813400  and r3, r9, r3
000e64  0b231310  add.ul r[7:8], r[7:8], r[2:3]
000e68  93013404  setlt.u r3, r8, r3
000e6c  7f325300  s_lm2gm r4, r5, 0(r[7:8])
000e70  00a00000  mfence { lm }
000e74  3be00100  bneq r3, zero, 24
000e78  9bc10401  srli r3, r9, 16
000e7c  9b811100  andi r3, r3, 1
000e80  8b913410  add.s r3, r9, r3
000e84  8b912111  add.s r3, r3, r18
000e88  db010000  j 12
000e8c  ab014000  lui r3, 1024
000e90  97913400  or r3, r9, r3
000e94  6b520f03  load.d r[5:6], 48(r30)
000e98  9bc10101  srli r3, r3, 16
000e9c  73103fbc  store.h r3, -1088(r30)
000ea0  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000ea4  2b0200f0  lui r4, 983040
000ea8  00a00000  mfence { lm }
000eac  97914700  or r3, r15, r4
000eb0  1f028ff7  addli r4, r30, -1088
000eb4  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
000eb8  00a00000  mfence { lm }
000ebc  9f02dfd0  addli r5, r30, -6040
000ec0  ab0000f0  lui r1, 983040
000ec4  2b0100f0  lui r2, 983040
000ec8  92332002  vadd.s.mz vr7{mr1}, zero, vr2
000ecc  12332002  vadd.s.mz vr6{mr1}, zero, vr2
000ed0  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000ed4  ebd10200  load.d r[4:5], 0(r5)
000ed8  97101500  or r1, r10, r1
000edc  9f020ff8  addli r5, r30, -1024
000ee0  17112500  or r2, r10, r2
000ee4  ffa05100  l_gm2lm r1, r5, 0(r[4:5])
000ee8  9f00cfd0  addli r1, r30, -6048
000eec  00a00000  mfence { lm }
000ef0  ebd10000  load.d r[4:5], 0(r1)
000ef4  9f000ffc  addli r1, r30, -512
000ef8  7fa11100  l_gm2lm r2, r1, 0(r[4:5])
000efc  9f008ff3  addli r1, r30, -1600
000f00  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
000f04  9f000ff4  addli r1, r30, -1536
000f08  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f0c  9f000fe9  addli r1, r30, -2944
000f10  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f14  9f008ff4  addli r1, r30, -1472
000f18  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f1c  9f000fec  addli r1, r30, -2560
000f20  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f24  9f000ff5  addli r1, r30, -1408
000f28  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f2c  9f000ff1  addli r1, r30, -1920
000f30  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f34  9f008ff5  addli r1, r30, -1344
000f38  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f3c  9f000fee  addli r1, r30, -2304
000f40  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f44  9f000ff6  addli r1, r30, -1280
000f48  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f4c  9f008fee  addli r1, r30, -2240
000f50  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f54  9f008ff6  addli r1, r30, -1216
000f58  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f5c  9f000fef  addli r1, r30, -2176
000f60  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f64  9f000ff7  addli r1, r30, -1152
000f68  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
000f6c  9f008fef  addli r1, r30, -2112
000f70  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
000f74  eb300fc0  load.hu r1, -1024(r30)
000f78  92302002  vadd.s.mz vr1{mr1}, zero, vr2
000f7c  00a00000  mfence { lm }
000f80  670c1fec  storeli.w r1, -2368(r30)
000f84  eb302fc0  load.hu r1, -1022(r30)
000f88  67441fd8  storeli.w r1, -5052(r30)
000f8c  eb304fc0  load.hu r1, -1020(r30)
000f90  e7041fd8  storeli.w r1, -5048(r30)
000f94  eb306fc0  load.hu r1, -1018(r30)
000f98  e7441fd8  storeli.w r1, -5044(r30)
000f9c  eb308fc0  load.hu r1, -1016(r30)
000fa0  67051fd8  storeli.w r1, -5040(r30)
000fa4  eb30afc0  load.hu r1, -1014(r30)
000fa8  67451fd8  storeli.w r1, -5036(r30)
000fac  eb30cfc0  load.hu r1, -1012(r30)
000fb0  e7051fd8  storeli.w r1, -5032(r30)
000fb4  eb30efc0  load.hu r1, -1010(r30)
000fb8  e7451fd8  storeli.w r1, -5028(r30)
000fbc  eb300fc1  load.hu r1, -1008(r30)
000fc0  67061fd8  storeli.w r1, -5024(r30)
000fc4  eb302fc1  load.hu r1, -1006(r30)
000fc8  67461fd8  storeli.w r1, -5020(r30)
000fcc  eb304fc1  load.hu r1, -1004(r30)
000fd0  e7061fd8  storeli.w r1, -5016(r30)
000fd4  eb306fc1  load.hu r1, -1002(r30)
000fd8  e7461fd8  storeli.w r1, -5012(r30)
000fdc  eb308fc1  load.hu r1, -1000(r30)
000fe0  67071fd8  storeli.w r1, -5008(r30)
000fe4  eb30afc1  load.hu r1, -998(r30)
000fe8  67471fd8  storeli.w r1, -5004(r30)
000fec  eb30cfc1  load.hu r1, -996(r30)
000ff0  e7471fd8  storeli.w r1, -4996(r30)
000ff4  eb30efc1  load.hu r1, -994(r30)
000ff8  67081fd8  storeli.w r1, -4992(r30)
000ffc  eb300fc2  load.hu r1, -992(r30)
001000  e7071fd8  storeli.w r1, -5000(r30)
001004  eb302fc2  load.hu r1, -990(r30)
001008  67481fd8  storeli.w r1, -4988(r30)
00100c  eb304fc2  load.hu r1, -988(r30)
001010  e7081fd8  storeli.w r1, -4984(r30)
001014  eb306fc2  load.hu r1, -986(r30)
001018  e7481fd8  storeli.w r1, -4980(r30)
00101c  eb308fc2  load.hu r1, -984(r30)
001020  67091fd8  storeli.w r1, -4976(r30)
001024  eb30afc2  load.hu r1, -982(r30)
001028  67491fd8  storeli.w r1, -4972(r30)
00102c  eb30cfc2  load.hu r1, -980(r30)
001030  e7091fd8  storeli.w r1, -4968(r30)
001034  eb30efc2  load.hu r1, -978(r30)
001038  e7491fd8  storeli.w r1, -4964(r30)
00103c  eb300fc3  load.hu r1, -976(r30)
001040  670a1fd8  storeli.w r1, -4960(r30)
001044  eb302fc3  load.hu r1, -974(r30)
001048  674a1fd8  storeli.w r1, -4956(r30)
00104c  eb304fc3  load.hu r1, -972(r30)
001050  e70a1fd8  storeli.w r1, -4952(r30)
001054  eb306fc3  load.hu r1, -970(r30)
001058  e74a1fd8  storeli.w r1, -4948(r30)
00105c  eb308fc3  load.hu r1, -968(r30)
001060  670b1fd8  storeli.w r1, -4944(r30)
001064  eb30afc3  load.hu r1, -966(r30)
001068  674b1fd8  storeli.w r1, -4940(r30)
00106c  eb30cfc3  load.hu r1, -964(r30)
001070  e74b1fd8  storeli.w r1, -4932(r30)
001074  eb30efc3  load.hu r1, -962(r30)
001078  670c1fd8  storeli.w r1, -4928(r30)
00107c  eb300fc4  load.hu r1, -960(r30)
001080  e70b1fd8  storeli.w r1, -4936(r30)
001084  eb302fc4  load.hu r1, -958(r30)
001088  674c1fd8  storeli.w r1, -4924(r30)
00108c  eb304fc4  load.hu r1, -956(r30)
001090  e70c1fd8  storeli.w r1, -4920(r30)
001094  eb306fc4  load.hu r1, -954(r30)
001098  e74c1fd8  storeli.w r1, -4916(r30)
00109c  eb308fc4  load.hu r1, -952(r30)
0010a0  670d1fd8  storeli.w r1, -4912(r30)
0010a4  eb30afc4  load.hu r1, -950(r30)
0010a8  674d1fd8  storeli.w r1, -4908(r30)
0010ac  eb30cfc4  load.hu r1, -948(r30)
0010b0  e70d1fd8  storeli.w r1, -4904(r30)
0010b4  eb30efc4  load.hu r1, -946(r30)
0010b8  e74d1fd8  storeli.w r1, -4900(r30)
0010bc  eb300fc5  load.hu r1, -944(r30)
0010c0  670e1fd8  storeli.w r1, -4896(r30)
0010c4  eb302fc5  load.hu r1, -942(r30)
0010c8  674e1fd8  storeli.w r1, -4892(r30)
0010cc  eb304fc5  load.hu r1, -940(r30)
0010d0  e70e1fd8  storeli.w r1, -4888(r30)
0010d4  eb306fc5  load.hu r1, -938(r30)
0010d8  e74e1fd8  storeli.w r1, -4884(r30)
0010dc  eb308fc5  load.hu r1, -936(r30)
0010e0  670f1fd8  storeli.w r1, -4880(r30)
0010e4  eb30afc5  load.hu r1, -934(r30)
0010e8  674f1fd8  storeli.w r1, -4876(r30)
0010ec  eb30cfc5  load.hu r1, -932(r30)
0010f0  e74f1fd8  storeli.w r1, -4868(r30)
0010f4  eb30efc5  load.hu r1, -930(r30)
0010f8  67001fda  storeli.w r1, -4864(r30)
0010fc  eb300fc6  load.hu r1, -928(r30)
001100  e70f1fd8  storeli.w r1, -4872(r30)
001104  eb302fc6  load.hu r1, -926(r30)
001108  67401fda  storeli.w r1, -4860(r30)
00110c  eb304fc6  load.hu r1, -924(r30)
001110  e7001fda  storeli.w r1, -4856(r30)
001114  eb306fc6  load.hu r1, -922(r30)
001118  e7401fda  storeli.w r1, -4852(r30)
00111c  eb308fc6  load.hu r1, -920(r30)
001120  67011fda  storeli.w r1, -4848(r30)
001124  eb30afc6  load.hu r1, -918(r30)
001128  67411fda  storeli.w r1, -4844(r30)
00112c  eb30cfc6  load.hu r1, -916(r30)
001130  e7011fda  storeli.w r1, -4840(r30)
001134  eb30efc6  load.hu r1, -914(r30)
001138  e7411fda  storeli.w r1, -4836(r30)
00113c  eb300fc7  load.hu r1, -912(r30)
001140  67021fda  storeli.w r1, -4832(r30)
001144  eb302fc7  load.hu r1, -910(r30)
001148  67421fda  storeli.w r1, -4828(r30)
00114c  eb304fc7  load.hu r1, -908(r30)
001150  e7021fda  storeli.w r1, -4824(r30)
001154  eb306fc7  load.hu r1, -906(r30)
001158  e7421fda  storeli.w r1, -4820(r30)
00115c  eb308fc7  load.hu r1, -904(r30)
001160  67031fda  storeli.w r1, -4816(r30)
001164  eb30afc7  load.hu r1, -902(r30)
001168  67431fda  storeli.w r1, -4812(r30)
00116c  eb30cfc7  load.hu r1, -900(r30)
001170  e7431fda  storeli.w r1, -4804(r30)
001174  eb30efc7  load.hu r1, -898(r30)
001178  67041fda  storeli.w r1, -4800(r30)
00117c  eb300fc8  load.hu r1, -896(r30)
001180  e7031fda  storeli.w r1, -4808(r30)
001184  eb302fc8  load.hu r1, -894(r30)
001188  67441fda  storeli.w r1, -4796(r30)
00118c  eb304fc8  load.hu r1, -892(r30)
001190  e7041fda  storeli.w r1, -4792(r30)
001194  eb306fc8  load.hu r1, -890(r30)
001198  e7441fda  storeli.w r1, -4788(r30)
00119c  eb308fc8  load.hu r1, -888(r30)
0011a0  67051fda  storeli.w r1, -4784(r30)
0011a4  eb30afc8  load.hu r1, -886(r30)
0011a8  67451fda  storeli.w r1, -4780(r30)
0011ac  eb30cfc8  load.hu r1, -884(r30)
0011b0  e7051fda  storeli.w r1, -4776(r30)
0011b4  eb30efc8  load.hu r1, -882(r30)
0011b8  e7451fda  storeli.w r1, -4772(r30)
0011bc  eb300fc9  load.hu r1, -880(r30)
0011c0  67061fda  storeli.w r1, -4768(r30)
0011c4  eb302fc9  load.hu r1, -878(r30)
0011c8  67461fda  storeli.w r1, -4764(r30)
0011cc  eb304fc9  load.hu r1, -876(r30)
0011d0  e7061fda  storeli.w r1, -4760(r30)
0011d4  eb306fc9  load.hu r1, -874(r30)
0011d8  e7461fda  storeli.w r1, -4756(r30)
0011dc  eb308fc9  load.hu r1, -872(r30)
0011e0  67071fda  storeli.w r1, -4752(r30)
0011e4  eb30afc9  load.hu r1, -870(r30)
0011e8  67471fda  storeli.w r1, -4748(r30)
0011ec  eb30cfc9  load.hu r1, -868(r30)
0011f0  e7471fda  storeli.w r1, -4740(r30)
0011f4  eb30efc9  load.hu r1, -866(r30)
0011f8  67081fda  storeli.w r1, -4736(r30)
0011fc  eb300fca  load.hu r1, -864(r30)
001200  e7071fda  storeli.w r1, -4744(r30)
001204  eb302fca  load.hu r1, -862(r30)
001208  67481fda  storeli.w r1, -4732(r30)
00120c  eb304fca  load.hu r1, -860(r30)
001210  e7081fda  storeli.w r1, -4728(r30)
001214  eb306fca  load.hu r1, -858(r30)
001218  e7481fda  storeli.w r1, -4724(r30)
00121c  eb308fca  load.hu r1, -856(r30)
001220  67091fda  storeli.w r1, -4720(r30)
001224  eb30afca  load.hu r1, -854(r30)
001228  67491fda  storeli.w r1, -4716(r30)
00122c  eb30cfca  load.hu r1, -852(r30)
001230  e7091fda  storeli.w r1, -4712(r30)
001234  eb30efca  load.hu r1, -850(r30)
001238  e7491fda  storeli.w r1, -4708(r30)
00123c  eb300fcb  load.hu r1, -848(r30)
001240  670a1fda  storeli.w r1, -4704(r30)
001244  eb302fcb  load.hu r1, -846(r30)
001248  674a1fda  storeli.w r1, -4700(r30)
00124c  eb304fcb  load.hu r1, -844(r30)
001250  e70a1fda  storeli.w r1, -4696(r30)
001254  eb306fcb  load.hu r1, -842(r30)
001258  e74a1fda  storeli.w r1, -4692(r30)
00125c  eb308fcb  load.hu r1, -840(r30)
001260  670b1fda  storeli.w r1, -4688(r30)
001264  eb30afcb  load.hu r1, -838(r30)
001268  674b1fda  storeli.w r1, -4684(r30)
00126c  eb30cfcb  load.hu r1, -836(r30)
001270  e74b1fda  storeli.w r1, -4676(r30)
001274  eb30efcb  load.hu r1, -834(r30)
001278  670c1fda  storeli.w r1, -4672(r30)
00127c  eb300fcc  load.hu r1, -832(r30)
001280  e70b1fda  storeli.w r1, -4680(r30)
001284  eb302fcc  load.hu r1, -830(r30)
001288  67401fdc  storeli.w r1, -4604(r30)
00128c  eb304fcc  load.hu r1, -828(r30)
001290  e7001fdc  storeli.w r1, -4600(r30)
001294  eb306fcc  load.hu r1, -826(r30)
001298  e7401fdc  storeli.w r1, -4596(r30)
00129c  eb308fcc  load.hu r1, -824(r30)
0012a0  67011fdc  storeli.w r1, -4592(r30)
0012a4  eb30afcc  load.hu r1, -822(r30)
0012a8  67411fdc  storeli.w r1, -4588(r30)
0012ac  eb30cfcc  load.hu r1, -820(r30)
0012b0  e7011fdc  storeli.w r1, -4584(r30)
0012b4  eb30efcc  load.hu r1, -818(r30)
0012b8  e7411fdc  storeli.w r1, -4580(r30)
0012bc  eb300fcd  load.hu r1, -816(r30)
0012c0  67021fdc  storeli.w r1, -4576(r30)
0012c4  eb302fcd  load.hu r1, -814(r30)
0012c8  67421fdc  storeli.w r1, -4572(r30)
0012cc  eb304fcd  load.hu r1, -812(r30)
0012d0  e7021fdc  storeli.w r1, -4568(r30)
0012d4  eb306fcd  load.hu r1, -810(r30)
0012d8  e7421fdc  storeli.w r1, -4564(r30)
0012dc  eb308fcd  load.hu r1, -808(r30)
0012e0  67031fdc  storeli.w r1, -4560(r30)
0012e4  eb30afcd  load.hu r1, -806(r30)
0012e8  67431fdc  storeli.w r1, -4556(r30)
0012ec  eb30cfcd  load.hu r1, -804(r30)
0012f0  e7431fdc  storeli.w r1, -4548(r30)
0012f4  eb30efcd  load.hu r1, -802(r30)
0012f8  67041fdc  storeli.w r1, -4544(r30)
0012fc  eb300fce  load.hu r1, -800(r30)
001300  e7031fdc  storeli.w r1, -4552(r30)
001304  eb302fce  load.hu r1, -798(r30)
001308  670b1fdc  storeli.w r1, -4432(r30)
00130c  eb304fce  load.hu r1, -796(r30)
001310  674b1fdc  storeli.w r1, -4428(r30)
001314  eb306fce  load.hu r1, -794(r30)
001318  e70b1fdc  storeli.w r1, -4424(r30)
00131c  eb308fce  load.hu r1, -792(r30)
001320  e74b1fdc  storeli.w r1, -4420(r30)
001324  eb30afce  load.hu r1, -790(r30)
001328  670c1fdc  storeli.w r1, -4416(r30)
00132c  eb30cfce  load.hu r1, -788(r30)
001330  674c1fdc  storeli.w r1, -4412(r30)
001334  eb30efce  load.hu r1, -786(r30)
001338  e70c1fdc  storeli.w r1, -4408(r30)
00133c  eb300fcf  load.hu r1, -784(r30)
001340  e74c1fdc  storeli.w r1, -4404(r30)
001344  eb302fcf  load.hu r1, -782(r30)
001348  670d1fdc  storeli.w r1, -4400(r30)
00134c  eb304fcf  load.hu r1, -780(r30)
001350  674d1fdc  storeli.w r1, -4396(r30)
001354  eb306fcf  load.hu r1, -778(r30)
001358  e70d1fdc  storeli.w r1, -4392(r30)
00135c  eb308fcf  load.hu r1, -776(r30)
001360  e74d1fdc  storeli.w r1, -4388(r30)
001364  eb30afcf  load.hu r1, -774(r30)
001368  670e1fdc  storeli.w r1, -4384(r30)
00136c  eb30cfcf  load.hu r1, -772(r30)
001370  e70e1fdc  storeli.w r1, -4376(r30)
001374  eb30efcf  load.hu r1, -770(r30)
001378  67041fe0  storeli.w r1, -4032(r30)
00137c  eb300fd0  load.hu r1, -768(r30)
001380  674e1fdc  storeli.w r1, -4380(r30)
001384  eb302fd0  load.hu r1, -766(r30)
001388  e74e1fdc  storeli.w r1, -4372(r30)
00138c  eb304fd0  load.hu r1, -764(r30)
001390  670f1fdc  storeli.w r1, -4368(r30)
001394  eb306fd0  load.hu r1, -762(r30)
001398  674f1fdc  storeli.w r1, -4364(r30)
00139c  eb308fd0  load.hu r1, -760(r30)
0013a0  e70f1fdc  storeli.w r1, -4360(r30)
0013a4  eb30afd0  load.hu r1, -758(r30)
0013a8  e74f1fdc  storeli.w r1, -4356(r30)
0013ac  eb30cfd0  load.hu r1, -756(r30)
0013b0  67001fde  storeli.w r1, -4352(r30)
0013b4  eb30efd0  load.hu r1, -754(r30)
0013b8  67401fde  storeli.w r1, -4348(r30)
0013bc  eb300fd1  load.hu r1, -752(r30)
0013c0  e7001fde  storeli.w r1, -4344(r30)
0013c4  eb302fd1  load.hu r1, -750(r30)
0013c8  e7401fde  storeli.w r1, -4340(r30)
0013cc  eb304fd1  load.hu r1, -748(r30)
0013d0  67011fde  storeli.w r1, -4336(r30)
0013d4  eb306fd1  load.hu r1, -746(r30)
0013d8  67411fde  storeli.w r1, -4332(r30)
0013dc  eb308fd1  load.hu r1, -744(r30)
0013e0  e7011fde  storeli.w r1, -4328(r30)
0013e4  eb30afd1  load.hu r1, -742(r30)
0013e8  e7411fde  storeli.w r1, -4324(r30)
0013ec  eb30cfd1  load.hu r1, -740(r30)
0013f0  67421fde  storeli.w r1, -4316(r30)
0013f4  eb30efd1  load.hu r1, -738(r30)
0013f8  670c1fe2  storeli.w r1, -3648(r30)
0013fc  eb300fd2  load.hu r1, -736(r30)
001400  67021fde  storeli.w r1, -4320(r30)
001404  eb302fd2  load.hu r1, -734(r30)
001408  e7021fde  storeli.w r1, -4312(r30)
00140c  eb304fd2  load.hu r1, -732(r30)
001410  e7421fde  storeli.w r1, -4308(r30)
001414  eb306fd2  load.hu r1, -730(r30)
001418  67031fde  storeli.w r1, -4304(r30)
00141c  eb308fd2  load.hu r1, -728(r30)
001420  67431fde  storeli.w r1, -4300(r30)
001424  eb30afd2  load.hu r1, -726(r30)
001428  e7031fde  storeli.w r1, -4296(r30)
00142c  eb30cfd2  load.hu r1, -724(r30)
001430  e7431fde  storeli.w r1, -4292(r30)
001434  eb30efd2  load.hu r1, -722(r30)
001438  67041fde  storeli.w r1, -4288(r30)
00143c  eb300fd3  load.hu r1, -720(r30)
001440  67441fde  storeli.w r1, -4284(r30)
001444  eb302fd3  load.hu r1, -718(r30)
001448  e7041fde  storeli.w r1, -4280(r30)
00144c  eb304fd3  load.hu r1, -716(r30)
001450  e7441fde  storeli.w r1, -4276(r30)
001454  eb306fd3  load.hu r1, -714(r30)
001458  67051fde  storeli.w r1, -4272(r30)
00145c  eb308fd3  load.hu r1, -712(r30)
001460  67451fde  storeli.w r1, -4268(r30)
001464  eb30afd3  load.hu r1, -710(r30)
001468  e7051fde  storeli.w r1, -4264(r30)
00146c  eb30cfd3  load.hu r1, -708(r30)
001470  67061fde  storeli.w r1, -4256(r30)
001474  eb30efd3  load.hu r1, -706(r30)
001478  67041fe4  storeli.w r1, -3520(r30)
00147c  eb300fd4  load.hu r1, -704(r30)
001480  e7451fde  storeli.w r1, -4260(r30)
001484  eb302fd4  load.hu r1, -702(r30)
001488  67461fde  storeli.w r1, -4252(r30)
00148c  eb304fd4  load.hu r1, -700(r30)
001490  e7061fde  storeli.w r1, -4248(r30)
001494  eb306fd4  load.hu r1, -698(r30)
001498  e7461fde  storeli.w r1, -4244(r30)
00149c  eb308fd4  load.hu r1, -696(r30)
0014a0  67071fde  storeli.w r1, -4240(r30)
0014a4  eb30afd4  load.hu r1, -694(r30)
0014a8  67471fde  storeli.w r1, -4236(r30)
0014ac  eb30cfd4  load.hu r1, -692(r30)
0014b0  e7071fde  storeli.w r1, -4232(r30)
0014b4  eb30efd4  load.hu r1, -690(r30)
0014b8  e7471fde  storeli.w r1, -4228(r30)
0014bc  eb300fd5  load.hu r1, -688(r30)
0014c0  67081fde  storeli.w r1, -4224(r30)
0014c4  eb302fd5  load.hu r1, -686(r30)
0014c8  67481fde  storeli.w r1, -4220(r30)
0014cc  eb304fd5  load.hu r1, -684(r30)
0014d0  e7081fde  storeli.w r1, -4216(r30)
0014d4  eb306fd5  load.hu r1, -682(r30)
0014d8  e7481fde  storeli.w r1, -4212(r30)
0014dc  eb308fd5  load.hu r1, -680(r30)
0014e0  67091fde  storeli.w r1, -4208(r30)
0014e4  eb30afd5  load.hu r1, -678(r30)
0014e8  67491fde  storeli.w r1, -4204(r30)
0014ec  eb30cfd5  load.hu r1, -676(r30)
0014f0  e7491fde  storeli.w r1, -4196(r30)
0014f4  eb30efd5  load.hu r1, -674(r30)
0014f8  670c1fe4  storeli.w r1, -3392(r30)
0014fc  eb300fd6  load.hu r1, -672(r30)
001500  e7091fde  storeli.w r1, -4200(r30)
001504  eb302fd6  load.hu r1, -670(r30)
001508  670a1fde  storeli.w r1, -4192(r30)
00150c  eb304fd6  load.hu r1, -668(r30)
001510  674a1fde  storeli.w r1, -4188(r30)
001514  eb306fd6  load.hu r1, -666(r30)
001518  e70a1fde  storeli.w r1, -4184(r30)
00151c  eb308fd6  load.hu r1, -664(r30)
001520  e74a1fde  storeli.w r1, -4180(r30)
001524  eb30afd6  load.hu r1, -662(r30)
001528  670b1fde  storeli.w r1, -4176(r30)
00152c  eb30cfd6  load.hu r1, -660(r30)
001530  674b1fde  storeli.w r1, -4172(r30)
001534  eb30efd6  load.hu r1, -658(r30)
001538  e70b1fde  storeli.w r1, -4168(r30)
00153c  eb300fd7  load.hu r1, -656(r30)
001540  e74b1fde  storeli.w r1, -4164(r30)
001544  eb302fd7  load.hu r1, -654(r30)
001548  e7001fe0  storeli.w r1, -4088(r30)
00154c  eb304fd7  load.hu r1, -652(r30)
001550  e7401fe0  storeli.w r1, -4084(r30)
001554  eb306fd7  load.hu r1, -650(r30)
001558  67011fe0  storeli.w r1, -4080(r30)
00155c  eb308fd7  load.hu r1, -648(r30)
001560  67411fe0  storeli.w r1, -4076(r30)
001564  eb30afd7  load.hu r1, -646(r30)
001568  e7011fe0  storeli.w r1, -4072(r30)
00156c  eb30cfd7  load.hu r1, -644(r30)
001570  67021fe0  storeli.w r1, -4064(r30)
001574  eb30efd7  load.hu r1, -642(r30)
001578  67041fe6  storeli.w r1, -3264(r30)
00157c  eb300fd8  load.hu r1, -640(r30)
001580  e7411fe0  storeli.w r1, -4068(r30)
001584  eb302fd8  load.hu r1, -638(r30)
001588  67421fe0  storeli.w r1, -4060(r30)
00158c  eb304fd8  load.hu r1, -636(r30)
001590  e7021fe0  storeli.w r1, -4056(r30)
001594  eb306fd8  load.hu r1, -634(r30)
001598  e7421fe0  storeli.w r1, -4052(r30)
00159c  eb308fd8  load.hu r1, -632(r30)
0015a0  67031fe0  storeli.w r1, -4048(r30)
0015a4  eb30afd8  load.hu r1, -630(r30)
0015a8  67431fe0  storeli.w r1, -4044(r30)
0015ac  eb30cfd8  load.hu r1, -628(r30)
0015b0  e7031fe0  storeli.w r1, -4040(r30)
0015b4  eb30efd8  load.hu r1, -626(r30)
0015b8  e7431fe0  storeli.w r1, -4036(r30)
0015bc  eb300fd9  load.hu r1, -624(r30)
0015c0  e70b1fe0  storeli.w r1, -3912(r30)
0015c4  eb302fd9  load.hu r1, -622(r30)
0015c8  e74b1fe0  storeli.w r1, -3908(r30)
0015cc  eb304fd9  load.hu r1, -620(r30)
0015d0  670c1fe0  storeli.w r1, -3904(r30)
0015d4  eb306fd9  load.hu r1, -618(r30)
0015d8  674c1fe0  storeli.w r1, -3900(r30)
0015dc  eb308fd9  load.hu r1, -616(r30)
0015e0  e70c1fe0  storeli.w r1, -3896(r30)
0015e4  eb30afd9  load.hu r1, -614(r30)
0015e8  e74c1fe0  storeli.w r1, -3892(r30)
0015ec  eb30cfd9  load.hu r1, -612(r30)
0015f0  674d1fe0  storeli.w r1, -3884(r30)
0015f4  eb30efd9  load.hu r1, -610(r30)
0015f8  670c1fe6  storeli.w r1, -3136(r30)
0015fc  eb300fda  load.hu r1, -608(r30)
001600  670d1fe0  storeli.w r1, -3888(r30)
001604  eb302fda  load.hu r1, -606(r30)
001608  e70d1fe0  storeli.w r1, -3880(r30)
00160c  eb304fda  load.hu r1, -604(r30)
001610  e74d1fe0  storeli.w r1, -3876(r30)
001614  eb306fda  load.hu r1, -602(r30)
001618  670e1fe0  storeli.w r1, -3872(r30)
00161c  eb308fda  load.hu r1, -600(r30)
001620  674e1fe0  storeli.w r1, -3868(r30)
001624  eb30afda  load.hu r1, -598(r30)
001628  e70e1fe0  storeli.w r1, -3864(r30)
00162c  eb30cfda  load.hu r1, -596(r30)
001630  e74e1fe0  storeli.w r1, -3860(r30)
001634  eb30efda  load.hu r1, -594(r30)
001638  670f1fe0  storeli.w r1, -3856(r30)
00163c  eb300fdb  load.hu r1, -592(r30)
001640  674f1fe0  storeli.w r1, -3852(r30)
001644  eb302fdb  load.hu r1, -590(r30)
001648  e70f1fe0  storeli.w r1, -3848(r30)
00164c  eb304fdb  load.hu r1, -588(r30)
001650  e74f1fe0  storeli.w r1, -3844(r30)
001654  eb306fdb  load.hu r1, -586(r30)
001658  67001fe2  storeli.w r1, -3840(r30)
00165c  eb308fdb  load.hu r1, -584(r30)
001660  67401fe2  storeli.w r1, -3836(r30)
001664  eb30afdb  load.hu r1, -582(r30)
001668  e7001fe2  storeli.w r1, -3832(r30)
00166c  eb30cfdb  load.hu r1, -580(r30)
001670  67011fe2  storeli.w r1, -3824(r30)
001674  eb30efdb  load.hu r1, -578(r30)
001678  67041fe8  storeli.w r1, -3008(r30)
00167c  eb300fdc  load.hu r1, -576(r30)
001680  e7401fe2  storeli.w r1, -3828(r30)
001684  eb302fdc  load.hu r1, -574(r30)
001688  67411fe2  storeli.w r1, -3820(r30)
00168c  eb304fdc  load.hu r1, -572(r30)
001690  e7411fe2  storeli.w r1, -3812(r30)
001694  eb306fdc  load.hu r1, -570(r30)
001698  67021fe2  storeli.w r1, -3808(r30)
00169c  eb308fdc  load.hu r1, -568(r30)
0016a0  67421fe2  storeli.w r1, -3804(r30)
0016a4  eb30afdc  load.hu r1, -566(r30)
0016a8  e7021fe2  storeli.w r1, -3800(r30)
0016ac  eb30cfdc  load.hu r1, -564(r30)
0016b0  67031fe2  storeli.w r1, -3792(r30)
0016b4  eb30efdc  load.hu r1, -562(r30)
0016b8  67431fe2  storeli.w r1, -3788(r30)
0016bc  eb300fdd  load.hu r1, -560(r30)
0016c0  e7031fe2  storeli.w r1, -3784(r30)
0016c4  eb302fdd  load.hu r1, -558(r30)
0016c8  e7431fe2  storeli.w r1, -3780(r30)
0016cc  eb304fdd  load.hu r1, -556(r30)
0016d0  67041fe2  storeli.w r1, -3776(r30)
0016d4  eb306fdd  load.hu r1, -554(r30)
0016d8  67441fe2  storeli.w r1, -3772(r30)
0016dc  eb308fdd  load.hu r1, -552(r30)
0016e0  e7041fe2  storeli.w r1, -3768(r30)
0016e4  eb30afdd  load.hu r1, -550(r30)
0016e8  e7441fe2  storeli.w r1, -3764(r30)
0016ec  eb30cfdd  load.hu r1, -548(r30)
0016f0  67451fe2  storeli.w r1, -3756(r30)
0016f4  eb30efdd  load.hu r1, -546(r30)
0016f8  67001fea  storeli.w r1, -2816(r30)
0016fc  eb300fde  load.hu r1, -544(r30)
001700  67051fe2  storeli.w r1, -3760(r30)
001704  eb302fde  load.hu r1, -542(r30)
001708  e7051fe2  storeli.w r1, -3752(r30)
00170c  eb304fde  load.hu r1, -540(r30)
001710  e7451fe2  storeli.w r1, -3748(r30)
001714  eb306fde  load.hu r1, -538(r30)
001718  67061fe2  storeli.w r1, -3744(r30)
00171c  eb308fde  load.hu r1, -536(r30)
001720  67461fe2  storeli.w r1, -3740(r30)
001724  eb30afde  load.hu r1, -534(r30)
001728  e7061fe2  storeli.w r1, -3736(r30)
00172c  eb300fdf  load.hu r1, -528(r30)
001730  e7461fe2  storeli.w r1, -3732(r30)
001734  eb302fdf  load.hu r1, -526(r30)
001738  67071fe2  storeli.w r1, -3728(r30)
00173c  eb304fdf  load.hu r1, -524(r30)
001740  67471fe2  storeli.w r1, -3724(r30)
001744  eb306fdf  load.hu r1, -522(r30)
001748  e7071fe2  storeli.w r1, -3720(r30)
00174c  eb308fdf  load.hu r1, -520(r30)
001750  e7471fe2  storeli.w r1, -3716(r30)
001754  eb30afdf  load.hu r1, -518(r30)
001758  67041ff2  storeli.w r1, -1728(r30)
00175c  eb30cfdf  load.hu r1, -516(r30)
001760  67041ff0  storeli.w r1, -1984(r30)
001764  eb30efdf  load.hu r1, -514(r30)
001768  67081fea  storeli.w r1, -2688(r30)
00176c  eb30efde  load.hu r1, -530(r30)
001770  e7421fe2  storeli.w r1, -3796(r30)
001774  eb30cfde  load.hu r1, -532(r30)
001778  e7011fe2  storeli.w r1, -3816(r30)
00177c  00a00000  mfence { lm }
001780  67089ff2  storeli.w r9, -1664(r30)
001784  6704efd8  storeli.w r14, -5056(r30)
001788  6b3e6fe3  load.hu r28, -458(r30)
00178c  eb300fe0  load.hu r1, -512(r30)
001790  6b314fe0  load.hu r2, -508(r30)
001794  eb316fe0  load.hu r3, -506(r30)
001798  6b328fe0  load.hu r4, -504(r30)
00179c  eb32afe0  load.hu r5, -502(r30)
0017a0  6b33cfe0  load.hu r6, -500(r30)
0017a4  eb33efe0  load.hu r7, -498(r30)
0017a8  6b340fe1  load.hu r8, -496(r30)
0017ac  eb342fe1  load.hu r9, -494(r30)
0017b0  6b354fe1  load.hu r10, -492(r30)
0017b4  eb356fe1  load.hu r11, -490(r30)
0017b8  6b368fe1  load.hu r12, -488(r30)
0017bc  eb36afe1  load.hu r13, -486(r30)
0017c0  6b37cfe1  load.hu r14, -484(r30)
0017c4  eb37efe1  load.hu r15, -482(r30)
0017c8  6b380fe2  load.hu r16, -480(r30)
0017cc  eb382fe2  load.hu r17, -478(r30)
0017d0  eb394fe2  load.hu r19, -476(r30)
0017d4  6b3a6fe2  load.hu r20, -474(r30)
0017d8  eb3a8fe2  load.hu r21, -472(r30)
0017dc  6b3bafe2  load.hu r22, -470(r30)
0017e0  eb3bcfe2  load.hu r23, -468(r30)
0017e4  6b3cefe2  load.hu r24, -466(r30)
0017e8  eb3c0fe3  load.hu r25, -464(r30)
0017ec  6b3d2fe3  load.hu r26, -462(r30)
0017f0  eb3d4fe3  load.hu r27, -460(r30)
0017f4  e70dcfd1  storeli.w r28, -5928(r30)
0017f8  6b3e8fe3  load.hu r28, -456(r30)
0017fc  b3900018  bfloat2float.rn r1, r1
001800  67081fec  storeli.w r1, -2432(r30)
001804  eb302fe0  load.hu r1, -510(r30)
001808  e74dcfd1  storeli.w r28, -5924(r30)
00180c  6b3eafe3  load.hu r28, -454(r30)
001810  b3900018  bfloat2float.rn r1, r1
001814  670ecfd1  storeli.w r28, -5920(r30)
001818  6b3ecfe3  load.hu r28, -452(r30)
00181c  674ecfd1  storeli.w r28, -5916(r30)
001820  6b3eefe3  load.hu r28, -450(r30)
001824  e74ecfd1  storeli.w r28, -5908(r30)
001828  6b3e0fe4  load.hu r28, -448(r30)
00182c  e70ecfd1  storeli.w r28, -5912(r30)
001830  6b3e2fe4  load.hu r28, -446(r30)
001834  670fcfd1  storeli.w r28, -5904(r30)
001838  6b3e4fe4  load.hu r28, -444(r30)
00183c  674fcfd1  storeli.w r28, -5900(r30)
001840  6b3e6fe4  load.hu r28, -442(r30)
001844  e70fcfd1  storeli.w r28, -5896(r30)
001848  6b3e8fe4  load.hu r28, -440(r30)
00184c  e74fcfd1  storeli.w r28, -5892(r30)
001850  6b3eafe4  load.hu r28, -438(r30)
001854  6700cfd3  storeli.w r28, -5888(r30)
001858  6b3ecfe4  load.hu r28, -436(r30)
00185c  6740cfd3  storeli.w r28, -5884(r30)
001860  6b3eefe4  load.hu r28, -434(r30)
001864  e700cfd3  storeli.w r28, -5880(r30)
001868  6b3e0fe5  load.hu r28, -432(r30)
00186c  e740cfd3  storeli.w r28, -5876(r30)
001870  6b3e2fe5  load.hu r28, -430(r30)
001874  6701cfd3  storeli.w r28, -5872(r30)
001878  6b3e4fe5  load.hu r28, -428(r30)
00187c  6741cfd3  storeli.w r28, -5868(r30)
001880  6b3e6fe5  load.hu r28, -426(r30)
001884  e701cfd3  storeli.w r28, -5864(r30)
001888  6b3e8fe5  load.hu r28, -424(r30)
00188c  e741cfd3  storeli.w r28, -5860(r30)
001890  6b3eafe5  load.hu r28, -422(r30)
001894  6702cfd3  storeli.w r28, -5856(r30)
001898  6b3ecfe5  load.hu r28, -420(r30)
00189c  6742cfd3  storeli.w r28, -5852(r30)
0018a0  6b3eefe5  load.hu r28, -418(r30)
0018a4  e742cfd3  storeli.w r28, -5844(r30)
0018a8  6b3e0fe6  load.hu r28, -416(r30)
0018ac  e702cfd3  storeli.w r28, -5848(r30)
0018b0  6b3e2fe6  load.hu r28, -414(r30)
0018b4  6703cfd3  storeli.w r28, -5840(r30)
0018b8  6b3e4fe6  load.hu r28, -412(r30)
0018bc  6743cfd3  storeli.w r28, -5836(r30)
0018c0  6b3e6fe6  load.hu r28, -410(r30)
0018c4  e703cfd3  storeli.w r28, -5832(r30)
0018c8  6b3e8fe6  load.hu r28, -408(r30)
0018cc  e743cfd3  storeli.w r28, -5828(r30)
0018d0  6b3eafe6  load.hu r28, -406(r30)
0018d4  6704cfd3  storeli.w r28, -5824(r30)
0018d8  6b3ecfe6  load.hu r28, -404(r30)
0018dc  6744cfd3  storeli.w r28, -5820(r30)
0018e0  6b3eefe6  load.hu r28, -402(r30)
0018e4  e704cfd3  storeli.w r28, -5816(r30)
0018e8  6b3e0fe7  load.hu r28, -400(r30)
0018ec  e744cfd3  storeli.w r28, -5812(r30)
0018f0  6b3e2fe7  load.hu r28, -398(r30)
0018f4  6705cfd3  storeli.w r28, -5808(r30)
0018f8  6b3e4fe7  load.hu r28, -396(r30)
0018fc  6745cfd3  storeli.w r28, -5804(r30)
001900  6b3e6fe7  load.hu r28, -394(r30)
001904  e705cfd3  storeli.w r28, -5800(r30)
001908  6b3e8fe7  load.hu r28, -392(r30)
00190c  e745cfd3  storeli.w r28, -5796(r30)
001910  6b3eafe7  load.hu r28, -390(r30)
001914  6706cfd3  storeli.w r28, -5792(r30)
001918  6b3ecfe7  load.hu r28, -388(r30)
00191c  6746cfd3  storeli.w r28, -5788(r30)
001920  6b3eefe7  load.hu r28, -386(r30)
001924  670ccfdf  storeli.w r28, -4160(r30)
001928  6b3e0fe8  load.hu r28, -384(r30)
00192c  e706cfd3  storeli.w r28, -5784(r30)
001930  6b3e2fe8  load.hu r28, -382(r30)
001934  e746cfd3  storeli.w r28, -5780(r30)
001938  6b3e4fe8  load.hu r28, -380(r30)
00193c  6707cfd3  storeli.w r28, -5776(r30)
001940  6b3e6fe8  load.hu r28, -378(r30)
001944  6747cfd3  storeli.w r28, -5772(r30)
001948  6b3e8fe8  load.hu r28, -376(r30)
00194c  e707cfd3  storeli.w r28, -5768(r30)
001950  6b3eafe8  load.hu r28, -374(r30)
001954  e747cfd3  storeli.w r28, -5764(r30)
001958  6b3ecfe8  load.hu r28, -372(r30)
00195c  6708cfd3  storeli.w r28, -5760(r30)
001960  6b3eefe8  load.hu r28, -370(r30)
001964  6748cfd3  storeli.w r28, -5756(r30)
001968  6b3e0fe9  load.hu r28, -368(r30)
00196c  e708cfd3  storeli.w r28, -5752(r30)
001970  6b3e2fe9  load.hu r28, -366(r30)
001974  e748cfd3  storeli.w r28, -5748(r30)
001978  6b3e4fe9  load.hu r28, -364(r30)
00197c  6709cfd3  storeli.w r28, -5744(r30)
001980  6b3e6fe9  load.hu r28, -362(r30)
001984  6749cfd3  storeli.w r28, -5740(r30)
001988  6b3e8fe9  load.hu r28, -360(r30)
00198c  e709cfd3  storeli.w r28, -5736(r30)
001990  6b3eafe9  load.hu r28, -358(r30)
001994  e749cfd3  storeli.w r28, -5732(r30)
001998  6b3ecfe9  load.hu r28, -356(r30)
00199c  670acfd3  storeli.w r28, -5728(r30)
0019a0  6b3eefe9  load.hu r28, -354(r30)
0019a4  6708cfe3  storeli.w r28, -3712(r30)
0019a8  6b3e0fea  load.hu r28, -352(r30)
0019ac  674acfd3  storeli.w r28, -5724(r30)
0019b0  6b3e2fea  load.hu r28, -350(r30)
0019b4  e70acfd3  storeli.w r28, -5720(r30)
0019b8  6b3e4fea  load.hu r28, -348(r30)
0019bc  e74acfd3  storeli.w r28, -5716(r30)
0019c0  6b3e6fea  load.hu r28, -346(r30)
0019c4  670bcfd3  storeli.w r28, -5712(r30)
0019c8  6b3e8fea  load.hu r28, -344(r30)
0019cc  674bcfd3  storeli.w r28, -5708(r30)
0019d0  6b3eafea  load.hu r28, -342(r30)
0019d4  e70bcfd3  storeli.w r28, -5704(r30)
0019d8  6b3ecfea  load.hu r28, -340(r30)
0019dc  e74bcfd3  storeli.w r28, -5700(r30)
0019e0  6b3eefea  load.hu r28, -338(r30)
0019e4  670ccfd3  storeli.w r28, -5696(r30)
0019e8  6b3e0feb  load.hu r28, -336(r30)
0019ec  674ccfd3  storeli.w r28, -5692(r30)
0019f0  6b3e2feb  load.hu r28, -334(r30)
0019f4  e70ccfd3  storeli.w r28, -5688(r30)
0019f8  6b3e4feb  load.hu r28, -332(r30)
0019fc  e74ccfd3  storeli.w r28, -5684(r30)
001a00  6b3e6feb  load.hu r28, -330(r30)
001a04  670dcfd3  storeli.w r28, -5680(r30)
001a08  6b3e8feb  load.hu r28, -328(r30)
001a0c  674dcfd3  storeli.w r28, -5676(r30)
001a10  6b3eafeb  load.hu r28, -326(r30)
001a14  e70dcfd3  storeli.w r28, -5672(r30)
001a18  6b3ecfeb  load.hu r28, -324(r30)
001a1c  e74dcfd3  storeli.w r28, -5668(r30)
001a20  6b3eefeb  load.hu r28, -322(r30)
001a24  6700cfe5  storeli.w r28, -3584(r30)
001a28  6b3e0fec  load.hu r28, -320(r30)
001a2c  670ecfd3  storeli.w r28, -5664(r30)
001a30  6b3e2fec  load.hu r28, -318(r30)
001a34  674ecfd3  storeli.w r28, -5660(r30)
001a38  6b3e4fec  load.hu r28, -316(r30)
001a3c  e70ecfd3  storeli.w r28, -5656(r30)
001a40  6b3e6fec  load.hu r28, -314(r30)
001a44  e74ecfd3  storeli.w r28, -5652(r30)
001a48  6b3e8fec  load.hu r28, -312(r30)
001a4c  670fcfd3  storeli.w r28, -5648(r30)
001a50  6b3eafec  load.hu r28, -310(r30)
001a54  674fcfd3  storeli.w r28, -5644(r30)
001a58  6b3ecfec  load.hu r28, -308(r30)
001a5c  e70fcfd3  storeli.w r28, -5640(r30)
001a60  6b3eefec  load.hu r28, -306(r30)
001a64  e74fcfd3  storeli.w r28, -5636(r30)
001a68  6b3e0fed  load.hu r28, -304(r30)
001a6c  6700cfd5  storeli.w r28, -5632(r30)
001a70  6b3e2fed  load.hu r28, -302(r30)
001a74  6740cfd5  storeli.w r28, -5628(r30)
001a78  6b3e4fed  load.hu r28, -300(r30)
001a7c  e700cfd5  storeli.w r28, -5624(r30)
001a80  6b3e6fed  load.hu r28, -298(r30)
001a84  e740cfd5  storeli.w r28, -5620(r30)
001a88  6b3e8fed  load.hu r28, -296(r30)
001a8c  6701cfd5  storeli.w r28, -5616(r30)
001a90  6b3eafed  load.hu r28, -294(r30)
001a94  6741cfd5  storeli.w r28, -5612(r30)
001a98  6b3ecfed  load.hu r28, -292(r30)
001a9c  e701cfd5  storeli.w r28, -5608(r30)
001aa0  6b3eefed  load.hu r28, -290(r30)
001aa4  6708cfe5  storeli.w r28, -3456(r30)
001aa8  6b3e0fee  load.hu r28, -288(r30)
001aac  e741cfd5  storeli.w r28, -5604(r30)
001ab0  6b3e2fee  load.hu r28, -286(r30)
001ab4  6702cfd5  storeli.w r28, -5600(r30)
001ab8  6b3e4fee  load.hu r28, -284(r30)
001abc  6742cfd5  storeli.w r28, -5596(r30)
001ac0  6b3e6fee  load.hu r28, -282(r30)
001ac4  e702cfd5  storeli.w r28, -5592(r30)
001ac8  6b3e8fee  load.hu r28, -280(r30)
001acc  e742cfd5  storeli.w r28, -5588(r30)
001ad0  6b3eafee  load.hu r28, -278(r30)
001ad4  6703cfd5  storeli.w r28, -5584(r30)
001ad8  6b3ecfee  load.hu r28, -276(r30)
001adc  6743cfd5  storeli.w r28, -5580(r30)
001ae0  6b3eefee  load.hu r28, -274(r30)
001ae4  e703cfd5  storeli.w r28, -5576(r30)
001ae8  6b3e0fef  load.hu r28, -272(r30)
001aec  e743cfd5  storeli.w r28, -5572(r30)
001af0  6b3e2fef  load.hu r28, -270(r30)
001af4  6704cfd5  storeli.w r28, -5568(r30)
001af8  6b3e4fef  load.hu r28, -268(r30)
001afc  6744cfd5  storeli.w r28, -5564(r30)
001b00  6b3e6fef  load.hu r28, -266(r30)
001b04  e704cfd5  storeli.w r28, -5560(r30)
001b08  6b3e8fef  load.hu r28, -264(r30)
001b0c  e744cfd5  storeli.w r28, -5556(r30)
001b10  6b3eafef  load.hu r28, -262(r30)
001b14  6705cfd5  storeli.w r28, -5552(r30)
001b18  6b3ecfef  load.hu r28, -260(r30)
001b1c  6745cfd5  storeli.w r28, -5548(r30)
001b20  6b3eefef  load.hu r28, -258(r30)
001b24  6700cfe7  storeli.w r28, -3328(r30)
001b28  6b3e0ff0  load.hu r28, -256(r30)
001b2c  e705cfd5  storeli.w r28, -5544(r30)
001b30  6b3e2ff0  load.hu r28, -254(r30)
001b34  e745cfd5  storeli.w r28, -5540(r30)
001b38  6b3e4ff0  load.hu r28, -252(r30)
001b3c  6706cfd5  storeli.w r28, -5536(r30)
001b40  6b3e6ff0  load.hu r28, -250(r30)
001b44  6746cfd5  storeli.w r28, -5532(r30)
001b48  6b3e8ff0  load.hu r28, -248(r30)
001b4c  e706cfd5  storeli.w r28, -5528(r30)
001b50  6b3eaff0  load.hu r28, -246(r30)
001b54  e746cfd5  storeli.w r28, -5524(r30)
001b58  6b3ecff0  load.hu r28, -244(r30)
001b5c  6707cfd5  storeli.w r28, -5520(r30)
001b60  6b3eeff0  load.hu r28, -242(r30)
001b64  6747cfd5  storeli.w r28, -5516(r30)
001b68  6b3e0ff1  load.hu r28, -240(r30)
001b6c  e707cfd5  storeli.w r28, -5512(r30)
001b70  6b3e2ff1  load.hu r28, -238(r30)
001b74  e747cfd5  storeli.w r28, -5508(r30)
001b78  6b3e4ff1  load.hu r28, -236(r30)
001b7c  6708cfd5  storeli.w r28, -5504(r30)
001b80  6b3e6ff1  load.hu r28, -234(r30)
001b84  6748cfd5  storeli.w r28, -5500(r30)
001b88  6b3e8ff1  load.hu r28, -232(r30)
001b8c  e708cfd5  storeli.w r28, -5496(r30)
001b90  6b3eaff1  load.hu r28, -230(r30)
001b94  e748cfd5  storeli.w r28, -5492(r30)
001b98  6b3ecff1  load.hu r28, -228(r30)
001b9c  6709cfd5  storeli.w r28, -5488(r30)
001ba0  6b3eeff1  load.hu r28, -226(r30)
001ba4  6708cfe7  storeli.w r28, -3200(r30)
001ba8  6b3e0ff2  load.hu r28, -224(r30)
001bac  6749cfd5  storeli.w r28, -5484(r30)
001bb0  6b3e2ff2  load.hu r28, -222(r30)
001bb4  e709cfd5  storeli.w r28, -5480(r30)
001bb8  6b3e4ff2  load.hu r28, -220(r30)
001bbc  e749cfd5  storeli.w r28, -5476(r30)
001bc0  6b3e6ff2  load.hu r28, -218(r30)
001bc4  670acfd5  storeli.w r28, -5472(r30)
001bc8  6b3e8ff2  load.hu r28, -216(r30)
001bcc  674acfd5  storeli.w r28, -5468(r30)
001bd0  6b3eaff2  load.hu r28, -214(r30)
001bd4  e70acfd5  storeli.w r28, -5464(r30)
001bd8  6b3ecff2  load.hu r28, -212(r30)
001bdc  e74acfd5  storeli.w r28, -5460(r30)
001be0  6b3eeff2  load.hu r28, -210(r30)
001be4  670bcfd5  storeli.w r28, -5456(r30)
001be8  6b3e0ff3  load.hu r28, -208(r30)
001bec  674bcfd5  storeli.w r28, -5452(r30)
001bf0  6b3e2ff3  load.hu r28, -206(r30)
001bf4  e70bcfd5  storeli.w r28, -5448(r30)
001bf8  6b3e4ff3  load.hu r28, -204(r30)
001bfc  e74bcfd5  storeli.w r28, -5444(r30)
001c00  6b3e6ff3  load.hu r28, -202(r30)
001c04  670ccfd5  storeli.w r28, -5440(r30)
001c08  6b3e8ff3  load.hu r28, -200(r30)
001c0c  674ccfd5  storeli.w r28, -5436(r30)
001c10  6b3eaff3  load.hu r28, -198(r30)
001c14  e70ccfd5  storeli.w r28, -5432(r30)
001c18  6b3ecff3  load.hu r28, -196(r30)
001c1c  e74ccfd5  storeli.w r28, -5428(r30)
001c20  6b3eeff3  load.hu r28, -194(r30)
001c24  6700cfe9  storeli.w r28, -3072(r30)
001c28  6b3e0ff4  load.hu r28, -192(r30)
001c2c  670dcfd5  storeli.w r28, -5424(r30)
001c30  6b3e2ff4  load.hu r28, -190(r30)
001c34  674dcfd5  storeli.w r28, -5420(r30)
001c38  6b3e4ff4  load.hu r28, -188(r30)
001c3c  e70dcfd5  storeli.w r28, -5416(r30)
001c40  6b3e6ff4  load.hu r28, -186(r30)
001c44  e74dcfd5  storeli.w r28, -5412(r30)
001c48  6b3e8ff4  load.hu r28, -184(r30)
001c4c  670ecfd5  storeli.w r28, -5408(r30)
001c50  6b3eaff4  load.hu r28, -182(r30)
001c54  674ecfd5  storeli.w r28, -5404(r30)
001c58  6b3ecff4  load.hu r28, -180(r30)
001c5c  e70ecfd5  storeli.w r28, -5400(r30)
001c60  6b3eeff4  load.hu r28, -178(r30)
001c64  e74ecfd5  storeli.w r28, -5396(r30)
001c68  6b3e0ff5  load.hu r28, -176(r30)
001c6c  670fcfd5  storeli.w r28, -5392(r30)
001c70  6b3e2ff5  load.hu r28, -174(r30)
001c74  674fcfd5  storeli.w r28, -5388(r30)
001c78  6b3e4ff5  load.hu r28, -172(r30)
001c7c  e70fcfd5  storeli.w r28, -5384(r30)
001c80  6b3e6ff5  load.hu r28, -170(r30)
001c84  e74fcfd5  storeli.w r28, -5380(r30)
001c88  6b3e8ff5  load.hu r28, -168(r30)
001c8c  6700cfd7  storeli.w r28, -5376(r30)
001c90  6b3eaff5  load.hu r28, -166(r30)
001c94  6740cfd7  storeli.w r28, -5372(r30)
001c98  6b3ecff5  load.hu r28, -164(r30)
001c9c  e700cfd7  storeli.w r28, -5368(r30)
001ca0  6b3eeff5  load.hu r28, -162(r30)
001ca4  670ccfe9  storeli.w r28, -2880(r30)
001ca8  6b3e0ff6  load.hu r28, -160(r30)
001cac  e740cfd7  storeli.w r28, -5364(r30)
001cb0  6b3e2ff6  load.hu r28, -158(r30)
001cb4  6701cfd7  storeli.w r28, -5360(r30)
001cb8  6b3e4ff6  load.hu r28, -156(r30)
001cbc  6741cfd7  storeli.w r28, -5356(r30)
001cc0  6b3e6ff6  load.hu r28, -154(r30)
001cc4  e701cfd7  storeli.w r28, -5352(r30)
001cc8  6b3e8ff6  load.hu r28, -152(r30)
001ccc  e741cfd7  storeli.w r28, -5348(r30)
001cd0  6b3eaff6  load.hu r28, -150(r30)
001cd4  6702cfd7  storeli.w r28, -5344(r30)
001cd8  6b3ecff6  load.hu r28, -148(r30)
001cdc  6742cfd7  storeli.w r28, -5340(r30)
001ce0  6b3eeff6  load.hu r28, -146(r30)
001ce4  e702cfd7  storeli.w r28, -5336(r30)
001ce8  6b3e0ff7  load.hu r28, -144(r30)
001cec  e742cfd7  storeli.w r28, -5332(r30)
001cf0  6b3e2ff7  load.hu r28, -142(r30)
001cf4  6703cfd7  storeli.w r28, -5328(r30)
001cf8  6b3e4ff7  load.hu r28, -140(r30)
001cfc  6743cfd7  storeli.w r28, -5324(r30)
001d00  6b3e6ff7  load.hu r28, -138(r30)
001d04  e703cfd7  storeli.w r28, -5320(r30)
001d08  6b3e8ff7  load.hu r28, -136(r30)
001d0c  e743cfd7  storeli.w r28, -5316(r30)
001d10  6b3eaff7  load.hu r28, -134(r30)
001d14  6704cfd7  storeli.w r28, -5312(r30)
001d18  6b3ecff7  load.hu r28, -132(r30)
001d1c  6744cfd7  storeli.w r28, -5308(r30)
001d20  6b3eeff7  load.hu r28, -130(r30)
001d24  6704cfeb  storeli.w r28, -2752(r30)
001d28  6b3e0ff8  load.hu r28, -128(r30)
001d2c  e704cfd7  storeli.w r28, -5304(r30)
001d30  6b3e2ff8  load.hu r28, -126(r30)
001d34  e744cfd7  storeli.w r28, -5300(r30)
001d38  6b3e4ff8  load.hu r28, -124(r30)
001d3c  6705cfd7  storeli.w r28, -5296(r30)
001d40  6b3e6ff8  load.hu r28, -122(r30)
001d44  6745cfd7  storeli.w r28, -5292(r30)
001d48  6b3e8ff8  load.hu r28, -120(r30)
001d4c  e705cfd7  storeli.w r28, -5288(r30)
001d50  6b3eaff8  load.hu r28, -118(r30)
001d54  e745cfd7  storeli.w r28, -5284(r30)
001d58  6b3ecff8  load.hu r28, -116(r30)
001d5c  6706cfd7  storeli.w r28, -5280(r30)
001d60  6b3eeff8  load.hu r28, -114(r30)
001d64  6746cfd7  storeli.w r28, -5276(r30)
001d68  6b3e0ff9  load.hu r28, -112(r30)
001d6c  e706cfd7  storeli.w r28, -5272(r30)
001d70  6b3e2ff9  load.hu r28, -110(r30)
001d74  e746cfd7  storeli.w r28, -5268(r30)
001d78  6b3e4ff9  load.hu r28, -108(r30)
001d7c  6707cfd7  storeli.w r28, -5264(r30)
001d80  6b3e6ff9  load.hu r28, -106(r30)
001d84  6747cfd7  storeli.w r28, -5260(r30)
001d88  6b3e8ff9  load.hu r28, -104(r30)
001d8c  e707cfd7  storeli.w r28, -5256(r30)
001d90  6b3eaff9  load.hu r28, -102(r30)
001d94  e747cfd7  storeli.w r28, -5252(r30)
001d98  6b3ecff9  load.hu r28, -100(r30)
001d9c  6708cfd7  storeli.w r28, -5248(r30)
001da0  6b3eeff9  load.hu r28, -98(r30)
001da4  670ccfeb  storeli.w r28, -2624(r30)
001da8  6b3e0ffa  load.hu r28, -96(r30)
001dac  6748cfd7  storeli.w r28, -5244(r30)
001db0  6b3e2ffa  load.hu r28, -94(r30)
001db4  e708cfd7  storeli.w r28, -5240(r30)
001db8  6b3e4ffa  load.hu r28, -92(r30)
001dbc  e748cfd7  storeli.w r28, -5236(r30)
001dc0  6b3e6ffa  load.hu r28, -90(r30)
001dc4  6709cfd7  storeli.w r28, -5232(r30)
001dc8  6b3e8ffa  load.hu r28, -88(r30)
001dcc  6749cfd7  storeli.w r28, -5228(r30)
001dd0  6b3eaffa  load.hu r28, -86(r30)
001dd4  e709cfd7  storeli.w r28, -5224(r30)
001dd8  6b3ecffa  load.hu r28, -84(r30)
001ddc  e749cfd7  storeli.w r28, -5220(r30)
001de0  6b3eeffa  load.hu r28, -82(r30)
001de4  670acfd7  storeli.w r28, -5216(r30)
001de8  6b3e0ffb  load.hu r28, -80(r30)
001dec  674acfd7  storeli.w r28, -5212(r30)
001df0  6b3e2ffb  load.hu r28, -78(r30)
001df4  e70acfd7  storeli.w r28, -5208(r30)
001df8  6b3e4ffb  load.hu r28, -76(r30)
001dfc  e74acfd7  storeli.w r28, -5204(r30)
001e00  6b3e6ffb  load.hu r28, -74(r30)
001e04  670bcfd7  storeli.w r28, -5200(r30)
001e08  6b3e8ffb  load.hu r28, -72(r30)
001e0c  674bcfd7  storeli.w r28, -5196(r30)
001e10  6b3eaffb  load.hu r28, -70(r30)
001e14  e70bcfd7  storeli.w r28, -5192(r30)
001e18  6b3ecffb  load.hu r28, -68(r30)
001e1c  e74bcfd7  storeli.w r28, -5188(r30)
001e20  6b3eeffb  load.hu r28, -66(r30)
001e24  6704cfed  storeli.w r28, -2496(r30)
001e28  6b3e0ffc  load.hu r28, -64(r30)
001e2c  670ccfd7  storeli.w r28, -5184(r30)
001e30  6b3e2ffc  load.hu r28, -62(r30)
001e34  674ccfd7  storeli.w r28, -5180(r30)
001e38  6b3e4ffc  load.hu r28, -60(r30)
001e3c  e70ccfd7  storeli.w r28, -5176(r30)
001e40  6b3e6ffc  load.hu r28, -58(r30)
001e44  e74ccfd7  storeli.w r28, -5172(r30)
001e48  6b3e8ffc  load.hu r28, -56(r30)
001e4c  670dcfd7  storeli.w r28, -5168(r30)
001e50  6b3eaffc  load.hu r28, -54(r30)
001e54  674dcfd7  storeli.w r28, -5164(r30)
001e58  6b3ecffc  load.hu r28, -52(r30)
001e5c  e70dcfd7  storeli.w r28, -5160(r30)
001e60  6b3eeffc  load.hu r28, -50(r30)
001e64  e74dcfd7  storeli.w r28, -5156(r30)
001e68  6b3e0ffd  load.hu r28, -48(r30)
001e6c  670ecfd7  storeli.w r28, -5152(r30)
001e70  6b3e2ffd  load.hu r28, -46(r30)
001e74  674ecfd7  storeli.w r28, -5148(r30)
001e78  6b3e4ffd  load.hu r28, -44(r30)
001e7c  e70ecfd7  storeli.w r28, -5144(r30)
001e80  6b3e6ffd  load.hu r28, -42(r30)
001e84  e74ecfd7  storeli.w r28, -5140(r30)
001e88  6b3e8ffd  load.hu r28, -40(r30)
001e8c  670fcfd7  storeli.w r28, -5136(r30)
001e90  6b3eaffd  load.hu r28, -38(r30)
001e94  674fcfd7  storeli.w r28, -5132(r30)
001e98  6b3ecffd  load.hu r28, -36(r30)
001e9c  e70fcfd7  storeli.w r28, -5128(r30)
001ea0  6b3eeffd  load.hu r28, -34(r30)
001ea4  6700cfd9  storeli.w r28, -5120(r30)
001ea8  6b3e0ffe  load.hu r28, -32(r30)
001eac  e74fcfd7  storeli.w r28, -5124(r30)
001eb0  6b3e2ffe  load.hu r28, -30(r30)
001eb4  6740cfd9  storeli.w r28, -5116(r30)
001eb8  6b3e4ffe  load.hu r28, -28(r30)
001ebc  e700cfd9  storeli.w r28, -5112(r30)
001ec0  6b3e6ffe  load.hu r28, -26(r30)
001ec4  e740cfd9  storeli.w r28, -5108(r30)
001ec8  6b3e8ffe  load.hu r28, -24(r30)
001ecc  6701cfd9  storeli.w r28, -5104(r30)
001ed0  6b3eaffe  load.hu r28, -22(r30)
001ed4  6741cfd9  storeli.w r28, -5100(r30)
001ed8  6b3ecffe  load.hu r28, -20(r30)
001edc  e701cfd9  storeli.w r28, -5096(r30)
001ee0  6b3eeffe  load.hu r28, -18(r30)
001ee4  e741cfd9  storeli.w r28, -5092(r30)
001ee8  6b3e0fff  load.hu r28, -16(r30)
001eec  6702cfd9  storeli.w r28, -5088(r30)
001ef0  6b3e2fff  load.hu r28, -14(r30)
001ef4  6742cfd9  storeli.w r28, -5084(r30)
001ef8  6b3e4fff  load.hu r28, -12(r30)
001efc  e702cfd9  storeli.w r28, -5080(r30)
001f00  6b3e6fff  load.hu r28, -10(r30)
001f04  e742cfd9  storeli.w r28, -5076(r30)
001f08  6b3e8fff  load.hu r28, -8(r30)
001f0c  6703cfd9  storeli.w r28, -5072(r30)
001f10  6b3eafff  load.hu r28, -6(r30)
001f14  6743cfd9  storeli.w r28, -5068(r30)
001f18  6b3ecfff  load.hu r28, -4(r30)
001f1c  e703cfd9  storeli.w r28, -5064(r30)
001f20  6b3eefff  load.hu r28, -2(r30)
001f24  e743cfd9  storeli.w r28, -5060(r30)
001f28  630e0fed  loadli.w r28,  -2432(r30)
001f2c  ea237e30  vor.u.mh vr7{mr0}, r28, vr7
001f30  1f2e0000  addli r28, zero, 2
001f34  fe010ee0  vmmov mr3, r28
001f38  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f3c  b3100118  bfloat2float.rn r1, r2
001f40  1f410000  addli r2, zero, 4
001f44  7e0001e0  vmmov mr0, r2
001f48  1f011000  addli r2, zero, 8
001f4c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
001f50  b3900118  bfloat2float.rn r1, r3
001f54  fe0101e0  vmmov mr3, r2
001f58  1f014000  addli r2, zero, 32
001f5c  ab810000  lui r3, 8
001f60  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f64  b3100218  bfloat2float.rn r1, r4
001f68  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
001f6c  b3900218  bfloat2float.rn r1, r5
001f70  7e0101e0  vmmov mr2, r2
001f74  1f018000  addli r2, zero, 64
001f78  fe0101e0  vmmov mr3, r2
001f7c  1f010001  addli r2, zero, 128
001f80  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
001f84  b3100318  bfloat2float.rn r1, r6
001f88  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f8c  b3900318  bfloat2float.rn r1, r7
001f90  fe0101e0  vmmov mr3, r2
001f94  1f010002  addli r2, zero, 256
001f98  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001f9c  b3100418  bfloat2float.rn r1, r8
001fa0  fe0101e0  vmmov mr3, r2
001fa4  1f010004  addli r2, zero, 512
001fa8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fac  b3900418  bfloat2float.rn r1, r9
001fb0  fe0101e0  vmmov mr3, r2
001fb4  1f010008  addli r2, zero, 1024
001fb8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fbc  b3100518  bfloat2float.rn r1, r10
001fc0  fe0101e0  vmmov mr3, r2
001fc4  1f010010  addli r2, zero, 2048
001fc8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fcc  b3900518  bfloat2float.rn r1, r11
001fd0  fe0101e0  vmmov mr3, r2
001fd4  1f010020  addli r2, zero, 4096
001fd8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fdc  b3100618  bfloat2float.rn r1, r12
001fe0  fe0101e0  vmmov mr3, r2
001fe4  1f010040  addli r2, zero, 8192
001fe8  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
001fec  b3900618  bfloat2float.rn r1, r13
001ff0  fe0101e0  vmmov mr3, r2
001ff4  2b410000  lui r2, 4
001ff8  7e0101e0  vmmov mr2, r2
001ffc  33110818  bfloat2float.rn r2, r16
002000  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
002004  b3100718  bfloat2float.rn r1, r14
002008  fe8101e0  vmmov mr3, r3
00200c  ab810000  lui r3, 8
002010  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
002014  b3900718  bfloat2float.rn r1, r15
002018  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00201c  9f100000  addli r1, zero, 1
002020  7e8000e0  vmmov mr0, r1
002024  b3900818  bfloat2float.rn r1, r17
002028  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00202c  1f210000  addli r2, zero, 2
002030  7e0001e0  vmmov mr0, r2
002034  1f410000  addli r2, zero, 4
002038  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00203c  b3900918  bfloat2float.rn r1, r19
002040  7e0001e0  vmmov mr0, r2
002044  1f011000  addli r2, zero, 8
002048  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00204c  b3100a18  bfloat2float.rn r1, r20
002050  7e0001e0  vmmov mr0, r2
002054  1f012000  addli r2, zero, 16
002058  fe0101e0  vmmov mr3, r2
00205c  1f014000  addli r2, zero, 32
002060  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002064  b3900a18  bfloat2float.rn r1, r21
002068  7e0101e0  vmmov mr2, r2
00206c  1f018000  addli r2, zero, 64
002070  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
002074  b3100b18  bfloat2float.rn r1, r22
002078  7e0001c0  vmmov mr0, mr2
00207c  7e0101e0  vmmov mr2, r2
002080  1f010001  addli r2, zero, 128
002084  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002088  b3900b18  bfloat2float.rn r1, r23
00208c  7e0001c0  vmmov mr0, mr2
002090  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002094  b3100c18  bfloat2float.rn r1, r24
002098  7e0001e0  vmmov mr0, r2
00209c  1f010002  addli r2, zero, 256
0020a0  7e0101e0  vmmov mr2, r2
0020a4  1f010004  addli r2, zero, 512
0020a8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020ac  b3900c18  bfloat2float.rn r1, r25
0020b0  7e0001c0  vmmov mr0, mr2
0020b4  7e0101e0  vmmov mr2, r2
0020b8  1f010008  addli r2, zero, 1024
0020bc  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020c0  b3100d18  bfloat2float.rn r1, r26
0020c4  7e0001c0  vmmov mr0, mr2
0020c8  7e0101e0  vmmov mr2, r2
0020cc  1f010010  addli r2, zero, 2048
0020d0  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020d4  b3900d18  bfloat2float.rn r1, r27
0020d8  7e0001e0  vmmov mr0, r2
0020dc  1f010020  addli r2, zero, 4096
0020e0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0020e4  e300bfd1  loadli.w r1,  -5928(r30)
0020e8  7e8101e0  vmmov mr2, r3
0020ec  ab810000  lui r3, 8
0020f0  b3900018  bfloat2float.rn r1, r1
0020f4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0020f8  e340bfd1  loadli.w r1,  -5924(r30)
0020fc  7e0001e0  vmmov mr0, r2
002100  1f010040  addli r2, zero, 8192
002104  b3900018  bfloat2float.rn r1, r1
002108  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
00210c  e300cfd1  loadli.w r1,  -5920(r30)
002110  7e0001e0  vmmov mr0, r2
002114  2b410000  lui r2, 4
002118  b3900018  bfloat2float.rn r1, r1
00211c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002120  e340cfd1  loadli.w r1,  -5916(r30)
002124  7e0001e0  vmmov mr0, r2
002128  b3900018  bfloat2float.rn r1, r1
00212c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
002130  e340dfd1  loadli.w r1,  -5908(r30)
002134  6301dfd1  loadli.w r2,  -5912(r30)
002138  b3900018  bfloat2float.rn r1, r1
00213c  33110118  bfloat2float.rn r2, r2
002140  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
002144  9f100000  addli r1, zero, 1
002148  7e8000e0  vmmov mr0, r1
00214c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
002150  e300efd1  loadli.w r1,  -5904(r30)
002154  1f210000  addli r2, zero, 2
002158  7e0101e0  vmmov mr2, r2
00215c  1f410000  addli r2, zero, 4
002160  b3900018  bfloat2float.rn r1, r1
002164  7e0001e0  vmmov mr0, r2
002168  1f011000  addli r2, zero, 8
00216c  6aa36034  vor.u.mh vr6{mr2}, r1, vr6
002170  e340efd1  loadli.w r1,  -5900(r30)
002174  b3900018  bfloat2float.rn r1, r1
002178  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00217c  e300ffd1  loadli.w r1,  -5896(r30)
002180  7e0001e0  vmmov mr0, r2
002184  1f014000  addli r2, zero, 32
002188  b3900018  bfloat2float.rn r1, r1
00218c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002190  e340ffd1  loadli.w r1,  -5892(r30)
002194  7e0001e0  vmmov mr0, r2
002198  1f018000  addli r2, zero, 64
00219c  b3900018  bfloat2float.rn r1, r1
0021a0  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
0021a4  e3000fd2  loadli.w r1,  -5888(r30)
0021a8  b3900018  bfloat2float.rn r1, r1
0021ac  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0021b0  e3400fd2  loadli.w r1,  -5884(r30)
0021b4  7e0001e0  vmmov mr0, r2
0021b8  1f010001  addli r2, zero, 128
0021bc  b3900018  bfloat2float.rn r1, r1
0021c0  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0021c4  e3001fd2  loadli.w r1,  -5880(r30)
0021c8  7e0001e0  vmmov mr0, r2
0021cc  1f010002  addli r2, zero, 256
0021d0  b3900018  bfloat2float.rn r1, r1
0021d4  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0021d8  e3401fd2  loadli.w r1,  -5876(r30)
0021dc  7e0001e0  vmmov mr0, r2
0021e0  1f010004  addli r2, zero, 512
0021e4  b3900018  bfloat2float.rn r1, r1
0021e8  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
0021ec  e3002fd2  loadli.w r1,  -5872(r30)
0021f0  7e0001e0  vmmov mr0, r2
0021f4  1f010008  addli r2, zero, 1024
0021f8  fe0101e0  vmmov mr3, r2
0021fc  1f010010  addli r2, zero, 2048
002200  b3900018  bfloat2float.rn r1, r1
002204  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002208  e3402fd2  loadli.w r1,  -5868(r30)
00220c  7e0001e0  vmmov mr0, r2
002210  1f010020  addli r2, zero, 4096
002214  b3900018  bfloat2float.rn r1, r1
002218  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
00221c  e3003fd2  loadli.w r1,  -5864(r30)
002220  b3900018  bfloat2float.rn r1, r1
002224  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002228  e3403fd2  loadli.w r1,  -5860(r30)
00222c  7e0001e0  vmmov mr0, r2
002230  1f010040  addli r2, zero, 8192
002234  b3900018  bfloat2float.rn r1, r1
002238  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00223c  e3004fd2  loadli.w r1,  -5856(r30)
002240  7e0001e0  vmmov mr0, r2
002244  2b410000  lui r2, 4
002248  b3900018  bfloat2float.rn r1, r1
00224c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002250  e3404fd2  loadli.w r1,  -5852(r30)
002254  7e0001e0  vmmov mr0, r2
002258  b3900018  bfloat2float.rn r1, r1
00225c  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
002260  e3405fd2  loadli.w r1,  -5844(r30)
002264  63015fd2  loadli.w r2,  -5848(r30)
002268  7e8001e0  vmmov mr0, r3
00226c  ab810000  lui r3, 8
002270  b3900018  bfloat2float.rn r1, r1
002274  33110118  bfloat2float.rn r2, r2
002278  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
00227c  9f100000  addli r1, zero, 1
002280  7e8000e0  vmmov mr0, r1
002284  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002288  e3006fd2  loadli.w r1,  -5840(r30)
00228c  1f410000  addli r2, zero, 4
002290  7e0001e0  vmmov mr0, r2
002294  1f011000  addli r2, zero, 8
002298  b3900018  bfloat2float.rn r1, r1
00229c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0022a0  e3406fd2  loadli.w r1,  -5836(r30)
0022a4  b3900018  bfloat2float.rn r1, r1
0022a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0022ac  e3007fd2  loadli.w r1,  -5832(r30)
0022b0  7e0001e0  vmmov mr0, r2
0022b4  1f012000  addli r2, zero, 16
0022b8  b3900018  bfloat2float.rn r1, r1
0022bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0022c0  e3407fd2  loadli.w r1,  -5828(r30)
0022c4  7e0001e0  vmmov mr0, r2
0022c8  1f014000  addli r2, zero, 32
0022cc  b3900018  bfloat2float.rn r1, r1
0022d0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0022d4  e3008fd2  loadli.w r1,  -5824(r30)
0022d8  7e0001e0  vmmov mr0, r2
0022dc  1f018000  addli r2, zero, 64
0022e0  b3900018  bfloat2float.rn r1, r1
0022e4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0022e8  e3408fd2  loadli.w r1,  -5820(r30)
0022ec  7e0001e0  vmmov mr0, r2
0022f0  1f010001  addli r2, zero, 128
0022f4  7e0101e0  vmmov mr2, r2
0022f8  1f010002  addli r2, zero, 256
0022fc  b3900018  bfloat2float.rn r1, r1
002300  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002304  e3009fd2  loadli.w r1,  -5816(r30)
002308  7e0001e0  vmmov mr0, r2
00230c  1f010004  addli r2, zero, 512
002310  b3900018  bfloat2float.rn r1, r1
002314  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002318  e3409fd2  loadli.w r1,  -5812(r30)
00231c  b3900018  bfloat2float.rn r1, r1
002320  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002324  e300afd2  loadli.w r1,  -5808(r30)
002328  7e0001e0  vmmov mr0, r2
00232c  1f010010  addli r2, zero, 2048
002330  b3900018  bfloat2float.rn r1, r1
002334  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002338  e340afd2  loadli.w r1,  -5804(r30)
00233c  7e0001e0  vmmov mr0, r2
002340  1f010020  addli r2, zero, 4096
002344  b3900018  bfloat2float.rn r1, r1
002348  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
00234c  e300bfd2  loadli.w r1,  -5800(r30)
002350  b3900018  bfloat2float.rn r1, r1
002354  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002358  e340bfd2  loadli.w r1,  -5796(r30)
00235c  7e0001e0  vmmov mr0, r2
002360  1f010040  addli r2, zero, 8192
002364  b3900018  bfloat2float.rn r1, r1
002368  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00236c  e300cfd2  loadli.w r1,  -5792(r30)
002370  7e0001e0  vmmov mr0, r2
002374  2b410000  lui r2, 4
002378  b3900018  bfloat2float.rn r1, r1
00237c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002380  e340cfd2  loadli.w r1,  -5788(r30)
002384  7e0001e0  vmmov mr0, r2
002388  b3900018  bfloat2float.rn r1, r1
00238c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002390  e3008fdf  loadli.w r1,  -4160(r30)
002394  7e8001e0  vmmov mr0, r3
002398  6301dfd2  loadli.w r2,  -5784(r30)
00239c  ab810000  lui r3, 8
0023a0  b3900018  bfloat2float.rn r1, r1
0023a4  33110118  bfloat2float.rn r2, r2
0023a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0023ac  9f008fdf  addli r1, r30, -4160
0023b0  00a00000  mfence { lm }
0023b4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0023b8  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0023bc  9f100000  addli r1, zero, 1
0023c0  7e8000e0  vmmov mr0, r1
0023c4  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0023c8  e340dfd2  loadli.w r1,  -5780(r30)
0023cc  1f210000  addli r2, zero, 2
0023d0  7e0001e0  vmmov mr0, r2
0023d4  1f410000  addli r2, zero, 4
0023d8  b3900018  bfloat2float.rn r1, r1
0023dc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0023e0  e300efd2  loadli.w r1,  -5776(r30)
0023e4  7e0001e0  vmmov mr0, r2
0023e8  1f011000  addli r2, zero, 8
0023ec  b3900018  bfloat2float.rn r1, r1
0023f0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0023f4  e340efd2  loadli.w r1,  -5772(r30)
0023f8  7e0001e0  vmmov mr0, r2
0023fc  1f012000  addli r2, zero, 16
002400  b3900018  bfloat2float.rn r1, r1
002404  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002408  e300ffd2  loadli.w r1,  -5768(r30)
00240c  7e0001e0  vmmov mr0, r2
002410  1f014000  addli r2, zero, 32
002414  b3900018  bfloat2float.rn r1, r1
002418  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00241c  e340ffd2  loadli.w r1,  -5764(r30)
002420  7e0001e0  vmmov mr0, r2
002424  1f018000  addli r2, zero, 64
002428  b3900018  bfloat2float.rn r1, r1
00242c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002430  e3000fd3  loadli.w r1,  -5760(r30)
002434  7e0001e0  vmmov mr0, r2
002438  1f010002  addli r2, zero, 256
00243c  b3900018  bfloat2float.rn r1, r1
002440  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002444  e3400fd3  loadli.w r1,  -5756(r30)
002448  7e0001e0  vmmov mr0, r2
00244c  1f010004  addli r2, zero, 512
002450  b3900018  bfloat2float.rn r1, r1
002454  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002458  e3001fd3  loadli.w r1,  -5752(r30)
00245c  b3900018  bfloat2float.rn r1, r1
002460  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002464  e3401fd3  loadli.w r1,  -5748(r30)
002468  7e0001e0  vmmov mr0, r2
00246c  1f010010  addli r2, zero, 2048
002470  b3900018  bfloat2float.rn r1, r1
002474  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002478  e3002fd3  loadli.w r1,  -5744(r30)
00247c  b3900018  bfloat2float.rn r1, r1
002480  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002484  e3402fd3  loadli.w r1,  -5740(r30)
002488  fe0101e0  vmmov mr3, r2
00248c  1f010020  addli r2, zero, 4096
002490  7e0001e0  vmmov mr0, r2
002494  1f010040  addli r2, zero, 8192
002498  b3900018  bfloat2float.rn r1, r1
00249c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0024a0  e3003fd3  loadli.w r1,  -5736(r30)
0024a4  b3900018  bfloat2float.rn r1, r1
0024a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0024ac  e3403fd3  loadli.w r1,  -5732(r30)
0024b0  7e0001e0  vmmov mr0, r2
0024b4  2b410000  lui r2, 4
0024b8  b3900018  bfloat2float.rn r1, r1
0024bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0024c0  e3004fd3  loadli.w r1,  -5728(r30)
0024c4  7e0001e0  vmmov mr0, r2
0024c8  b3900018  bfloat2float.rn r1, r1
0024cc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0024d0  e3000fe3  loadli.w r1,  -3712(r30)
0024d4  7e8001e0  vmmov mr0, r3
0024d8  63414fd3  loadli.w r2,  -5724(r30)
0024dc  ab810000  lui r3, 8
0024e0  b3900018  bfloat2float.rn r1, r1
0024e4  33110118  bfloat2float.rn r2, r2
0024e8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0024ec  9f000fe3  addli r1, r30, -3712
0024f0  00a00000  mfence { lm }
0024f4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0024f8  9f100000  addli r1, zero, 1
0024fc  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002500  7e8000e0  vmmov mr0, r1
002504  9f100000  addli r1, zero, 1
002508  ea213130  vor.u.mh vr3{mr0}, r2, vr3
00250c  7e8100e0  vmmov mr2, r1
002510  e3005fd3  loadli.w r1,  -5720(r30)
002514  1f210000  addli r2, zero, 2
002518  7e0001e0  vmmov mr0, r2
00251c  1f410000  addli r2, zero, 4
002520  b3900018  bfloat2float.rn r1, r1
002524  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002528  e3405fd3  loadli.w r1,  -5716(r30)
00252c  7e0001e0  vmmov mr0, r2
002530  1f011000  addli r2, zero, 8
002534  b3900018  bfloat2float.rn r1, r1
002538  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00253c  e3006fd3  loadli.w r1,  -5712(r30)
002540  7e0001e0  vmmov mr0, r2
002544  1f012000  addli r2, zero, 16
002548  b3900018  bfloat2float.rn r1, r1
00254c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002550  e3406fd3  loadli.w r1,  -5708(r30)
002554  7e0001e0  vmmov mr0, r2
002558  1f014000  addli r2, zero, 32
00255c  b3900018  bfloat2float.rn r1, r1
002560  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002564  e3007fd3  loadli.w r1,  -5704(r30)
002568  7e0001e0  vmmov mr0, r2
00256c  1f018000  addli r2, zero, 64
002570  b3900018  bfloat2float.rn r1, r1
002574  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002578  e3407fd3  loadli.w r1,  -5700(r30)
00257c  7e0001e0  vmmov mr0, r2
002580  1f010001  addli r2, zero, 128
002584  b3900018  bfloat2float.rn r1, r1
002588  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00258c  e3008fd3  loadli.w r1,  -5696(r30)
002590  7e0001e0  vmmov mr0, r2
002594  1f010002  addli r2, zero, 256
002598  b3900018  bfloat2float.rn r1, r1
00259c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0025a0  e3408fd3  loadli.w r1,  -5692(r30)
0025a4  7e0001e0  vmmov mr0, r2
0025a8  1f010004  addli r2, zero, 512
0025ac  b3900018  bfloat2float.rn r1, r1
0025b0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0025b4  e3009fd3  loadli.w r1,  -5688(r30)
0025b8  7e0001e0  vmmov mr0, r2
0025bc  1f010008  addli r2, zero, 1024
0025c0  b3900018  bfloat2float.rn r1, r1
0025c4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0025c8  e3409fd3  loadli.w r1,  -5684(r30)
0025cc  7e0001e0  vmmov mr0, r2
0025d0  1f010020  addli r2, zero, 4096
0025d4  b3900018  bfloat2float.rn r1, r1
0025d8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0025dc  e300afd3  loadli.w r1,  -5680(r30)
0025e0  7e0001e0  vmmov mr0, r2
0025e4  1f010040  addli r2, zero, 8192
0025e8  b3900018  bfloat2float.rn r1, r1
0025ec  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0025f0  e340afd3  loadli.w r1,  -5676(r30)
0025f4  fe0101e0  vmmov mr3, r2
0025f8  2b410000  lui r2, 4
0025fc  b3900018  bfloat2float.rn r1, r1
002600  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002604  e300bfd3  loadli.w r1,  -5672(r30)
002608  7e0001e0  vmmov mr0, r2
00260c  b3900018  bfloat2float.rn r1, r1
002610  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002614  e340bfd3  loadli.w r1,  -5668(r30)
002618  b3900018  bfloat2float.rn r1, r1
00261c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002620  e3000fe4  loadli.w r1,  -3584(r30)
002624  7e8001e0  vmmov mr0, r3
002628  6301cfd3  loadli.w r2,  -5664(r30)
00262c  ab810000  lui r3, 8
002630  b3900018  bfloat2float.rn r1, r1
002634  33110118  bfloat2float.rn r2, r2
002638  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00263c  9f000fe4  addli r1, r30, -3584
002640  00a00000  mfence { lm }
002644  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002648  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00264c  ea213134  vor.u.mh vr3{mr2}, r2, vr3
002650  e340cfd3  loadli.w r1,  -5660(r30)
002654  1f210000  addli r2, zero, 2
002658  7e0001e0  vmmov mr0, r2
00265c  1f410000  addli r2, zero, 4
002660  b3900018  bfloat2float.rn r1, r1
002664  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002668  e300dfd3  loadli.w r1,  -5656(r30)
00266c  7e0001e0  vmmov mr0, r2
002670  1f011000  addli r2, zero, 8
002674  b3900018  bfloat2float.rn r1, r1
002678  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00267c  e340dfd3  loadli.w r1,  -5652(r30)
002680  7e0001e0  vmmov mr0, r2
002684  1f012000  addli r2, zero, 16
002688  b3900018  bfloat2float.rn r1, r1
00268c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002690  e300efd3  loadli.w r1,  -5648(r30)
002694  7e0001e0  vmmov mr0, r2
002698  1f014000  addli r2, zero, 32
00269c  b3900018  bfloat2float.rn r1, r1
0026a0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0026a4  e340efd3  loadli.w r1,  -5644(r30)
0026a8  7e0001e0  vmmov mr0, r2
0026ac  1f018000  addli r2, zero, 64
0026b0  b3900018  bfloat2float.rn r1, r1
0026b4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0026b8  e300ffd3  loadli.w r1,  -5640(r30)
0026bc  7e0001e0  vmmov mr0, r2
0026c0  1f010001  addli r2, zero, 128
0026c4  7e0101e0  vmmov mr2, r2
0026c8  1f010002  addli r2, zero, 256
0026cc  b3900018  bfloat2float.rn r1, r1
0026d0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0026d4  e340ffd3  loadli.w r1,  -5636(r30)
0026d8  7e0001e0  vmmov mr0, r2
0026dc  1f010004  addli r2, zero, 512
0026e0  b3900018  bfloat2float.rn r1, r1
0026e4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0026e8  e3000fd4  loadli.w r1,  -5632(r30)
0026ec  b3900018  bfloat2float.rn r1, r1
0026f0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0026f4  e3400fd4  loadli.w r1,  -5628(r30)
0026f8  7e0001e0  vmmov mr0, r2
0026fc  1f010008  addli r2, zero, 1024
002700  b3900018  bfloat2float.rn r1, r1
002704  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002708  e3001fd4  loadli.w r1,  -5624(r30)
00270c  7e0001e0  vmmov mr0, r2
002710  1f010010  addli r2, zero, 2048
002714  b3900018  bfloat2float.rn r1, r1
002718  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00271c  e3401fd4  loadli.w r1,  -5620(r30)
002720  7e0001e0  vmmov mr0, r2
002724  1f010020  addli r2, zero, 4096
002728  b3900018  bfloat2float.rn r1, r1
00272c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002730  e3002fd4  loadli.w r1,  -5616(r30)
002734  7e0001e0  vmmov mr0, r2
002738  2b410000  lui r2, 4
00273c  b3900018  bfloat2float.rn r1, r1
002740  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002744  e3402fd4  loadli.w r1,  -5612(r30)
002748  7e0001e0  vmmov mr0, r2
00274c  b3900018  bfloat2float.rn r1, r1
002750  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002754  e3003fd4  loadli.w r1,  -5608(r30)
002758  b3900018  bfloat2float.rn r1, r1
00275c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002760  e3000fe5  loadli.w r1,  -3456(r30)
002764  7e8001e0  vmmov mr0, r3
002768  63413fd4  loadli.w r2,  -5604(r30)
00276c  ab810000  lui r3, 8
002770  b3900018  bfloat2float.rn r1, r1
002774  33110118  bfloat2float.rn r2, r2
002778  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00277c  9f000fe5  addli r1, r30, -3456
002780  00a00000  mfence { lm }
002784  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002788  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00278c  9f100000  addli r1, zero, 1
002790  7e8000e0  vmmov mr0, r1
002794  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002798  e3004fd4  loadli.w r1,  -5600(r30)
00279c  1f210000  addli r2, zero, 2
0027a0  7e0001e0  vmmov mr0, r2
0027a4  1f410000  addli r2, zero, 4
0027a8  b3900018  bfloat2float.rn r1, r1
0027ac  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027b0  e3404fd4  loadli.w r1,  -5596(r30)
0027b4  7e0001e0  vmmov mr0, r2
0027b8  1f011000  addli r2, zero, 8
0027bc  b3900018  bfloat2float.rn r1, r1
0027c0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027c4  e3005fd4  loadli.w r1,  -5592(r30)
0027c8  7e0001e0  vmmov mr0, r2
0027cc  1f012000  addli r2, zero, 16
0027d0  b3900018  bfloat2float.rn r1, r1
0027d4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027d8  e3405fd4  loadli.w r1,  -5588(r30)
0027dc  7e0001e0  vmmov mr0, r2
0027e0  1f014000  addli r2, zero, 32
0027e4  b3900018  bfloat2float.rn r1, r1
0027e8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0027ec  e3006fd4  loadli.w r1,  -5584(r30)
0027f0  7e0001e0  vmmov mr0, r2
0027f4  1f018000  addli r2, zero, 64
0027f8  b3900018  bfloat2float.rn r1, r1
0027fc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002800  e3406fd4  loadli.w r1,  -5580(r30)
002804  7e0001e0  vmmov mr0, r2
002808  1f010002  addli r2, zero, 256
00280c  b3900018  bfloat2float.rn r1, r1
002810  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002814  e3007fd4  loadli.w r1,  -5576(r30)
002818  7e0001e0  vmmov mr0, r2
00281c  1f010004  addli r2, zero, 512
002820  b3900018  bfloat2float.rn r1, r1
002824  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002828  e3407fd4  loadli.w r1,  -5572(r30)
00282c  b3900018  bfloat2float.rn r1, r1
002830  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002834  e3008fd4  loadli.w r1,  -5568(r30)
002838  7e0001e0  vmmov mr0, r2
00283c  1f010008  addli r2, zero, 1024
002840  b3900018  bfloat2float.rn r1, r1
002844  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002848  e3408fd4  loadli.w r1,  -5564(r30)
00284c  7e0001e0  vmmov mr0, r2
002850  1f010010  addli r2, zero, 2048
002854  b3900018  bfloat2float.rn r1, r1
002858  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00285c  e3009fd4  loadli.w r1,  -5560(r30)
002860  7e0001e0  vmmov mr0, r2
002864  1f010020  addli r2, zero, 4096
002868  b3900018  bfloat2float.rn r1, r1
00286c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002870  e3409fd4  loadli.w r1,  -5556(r30)
002874  7e0001e0  vmmov mr0, r2
002878  2b410000  lui r2, 4
00287c  b3900018  bfloat2float.rn r1, r1
002880  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002884  e300afd4  loadli.w r1,  -5552(r30)
002888  7e0001e0  vmmov mr0, r2
00288c  b3900018  bfloat2float.rn r1, r1
002890  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002894  e340afd4  loadli.w r1,  -5548(r30)
002898  b3900018  bfloat2float.rn r1, r1
00289c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0028a0  e3000fe6  loadli.w r1,  -3328(r30)
0028a4  7e8001e0  vmmov mr0, r3
0028a8  6301bfd4  loadli.w r2,  -5544(r30)
0028ac  ab810000  lui r3, 8
0028b0  b3900018  bfloat2float.rn r1, r1
0028b4  33110118  bfloat2float.rn r2, r2
0028b8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0028bc  9f000fe6  addli r1, r30, -3328
0028c0  00a00000  mfence { lm }
0028c4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0028c8  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0028cc  9f100000  addli r1, zero, 1
0028d0  7e8000e0  vmmov mr0, r1
0028d4  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0028d8  e340bfd4  loadli.w r1,  -5540(r30)
0028dc  1f210000  addli r2, zero, 2
0028e0  7e0001e0  vmmov mr0, r2
0028e4  1f410000  addli r2, zero, 4
0028e8  b3900018  bfloat2float.rn r1, r1
0028ec  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0028f0  e300cfd4  loadli.w r1,  -5536(r30)
0028f4  7e0001e0  vmmov mr0, r2
0028f8  1f011000  addli r2, zero, 8
0028fc  b3900018  bfloat2float.rn r1, r1
002900  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002904  e340cfd4  loadli.w r1,  -5532(r30)
002908  7e0001e0  vmmov mr0, r2
00290c  1f012000  addli r2, zero, 16
002910  b3900018  bfloat2float.rn r1, r1
002914  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002918  e300dfd4  loadli.w r1,  -5528(r30)
00291c  7e0001e0  vmmov mr0, r2
002920  1f014000  addli r2, zero, 32
002924  b3900018  bfloat2float.rn r1, r1
002928  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00292c  e340dfd4  loadli.w r1,  -5524(r30)
002930  7e0001e0  vmmov mr0, r2
002934  1f018000  addli r2, zero, 64
002938  b3900018  bfloat2float.rn r1, r1
00293c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002940  e300efd4  loadli.w r1,  -5520(r30)
002944  7e0001e0  vmmov mr0, r2
002948  1f010002  addli r2, zero, 256
00294c  b3900018  bfloat2float.rn r1, r1
002950  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002954  e340efd4  loadli.w r1,  -5516(r30)
002958  7e0001e0  vmmov mr0, r2
00295c  1f010004  addli r2, zero, 512
002960  b3900018  bfloat2float.rn r1, r1
002964  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002968  e300ffd4  loadli.w r1,  -5512(r30)
00296c  b3900018  bfloat2float.rn r1, r1
002970  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002974  e340ffd4  loadli.w r1,  -5508(r30)
002978  7e0001e0  vmmov mr0, r2
00297c  1f010008  addli r2, zero, 1024
002980  7e0101e0  vmmov mr2, r2
002984  1f010010  addli r2, zero, 2048
002988  b3900018  bfloat2float.rn r1, r1
00298c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002990  e3000fd5  loadli.w r1,  -5504(r30)
002994  b3900018  bfloat2float.rn r1, r1
002998  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00299c  e3400fd5  loadli.w r1,  -5500(r30)
0029a0  7e0101e0  vmmov mr2, r2
0029a4  1f010020  addli r2, zero, 4096
0029a8  7e0001e0  vmmov mr0, r2
0029ac  2b410000  lui r2, 4
0029b0  b3900018  bfloat2float.rn r1, r1
0029b4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0029b8  e3001fd5  loadli.w r1,  -5496(r30)
0029bc  b3900018  bfloat2float.rn r1, r1
0029c0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0029c4  e3401fd5  loadli.w r1,  -5492(r30)
0029c8  7e0001e0  vmmov mr0, r2
0029cc  b3900018  bfloat2float.rn r1, r1
0029d0  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
0029d4  e3002fd5  loadli.w r1,  -5488(r30)
0029d8  b3900018  bfloat2float.rn r1, r1
0029dc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0029e0  e3000fe7  loadli.w r1,  -3200(r30)
0029e4  7e8001e0  vmmov mr0, r3
0029e8  63412fd5  loadli.w r2,  -5484(r30)
0029ec  ab810000  lui r3, 8
0029f0  b3900018  bfloat2float.rn r1, r1
0029f4  33110118  bfloat2float.rn r2, r2
0029f8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0029fc  9f000fe7  addli r1, r30, -3200
002a00  00a00000  mfence { lm }
002a04  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002a08  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002a0c  9f100000  addli r1, zero, 1
002a10  7e8000e0  vmmov mr0, r1
002a14  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002a18  e3003fd5  loadli.w r1,  -5480(r30)
002a1c  1f210000  addli r2, zero, 2
002a20  7e0001e0  vmmov mr0, r2
002a24  1f410000  addli r2, zero, 4
002a28  b3900018  bfloat2float.rn r1, r1
002a2c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a30  e3403fd5  loadli.w r1,  -5476(r30)
002a34  7e0001e0  vmmov mr0, r2
002a38  1f011000  addli r2, zero, 8
002a3c  b3900018  bfloat2float.rn r1, r1
002a40  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a44  e3004fd5  loadli.w r1,  -5472(r30)
002a48  7e0001e0  vmmov mr0, r2
002a4c  1f012000  addli r2, zero, 16
002a50  b3900018  bfloat2float.rn r1, r1
002a54  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a58  e3404fd5  loadli.w r1,  -5468(r30)
002a5c  7e0001e0  vmmov mr0, r2
002a60  1f014000  addli r2, zero, 32
002a64  b3900018  bfloat2float.rn r1, r1
002a68  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a6c  e3005fd5  loadli.w r1,  -5464(r30)
002a70  7e0001e0  vmmov mr0, r2
002a74  1f018000  addli r2, zero, 64
002a78  b3900018  bfloat2float.rn r1, r1
002a7c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a80  e3405fd5  loadli.w r1,  -5460(r30)
002a84  7e0001e0  vmmov mr0, r2
002a88  1f010001  addli r2, zero, 128
002a8c  b3900018  bfloat2float.rn r1, r1
002a90  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002a94  e3006fd5  loadli.w r1,  -5456(r30)
002a98  7e0001e0  vmmov mr0, r2
002a9c  1f010002  addli r2, zero, 256
002aa0  b3900018  bfloat2float.rn r1, r1
002aa4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002aa8  e3406fd5  loadli.w r1,  -5452(r30)
002aac  7e0001e0  vmmov mr0, r2
002ab0  1f010004  addli r2, zero, 512
002ab4  b3900018  bfloat2float.rn r1, r1
002ab8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002abc  e3007fd5  loadli.w r1,  -5448(r30)
002ac0  7e0001e0  vmmov mr0, r2
002ac4  1f010008  addli r2, zero, 1024
002ac8  b3900018  bfloat2float.rn r1, r1
002acc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ad0  e3407fd5  loadli.w r1,  -5444(r30)
002ad4  7e0001e0  vmmov mr0, r2
002ad8  1f010020  addli r2, zero, 4096
002adc  b3900018  bfloat2float.rn r1, r1
002ae0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ae4  e3008fd5  loadli.w r1,  -5440(r30)
002ae8  7e0001e0  vmmov mr0, r2
002aec  2b410000  lui r2, 4
002af0  b3900018  bfloat2float.rn r1, r1
002af4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002af8  e3408fd5  loadli.w r1,  -5436(r30)
002afc  b3900018  bfloat2float.rn r1, r1
002b00  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b04  e3009fd5  loadli.w r1,  -5432(r30)
002b08  7e0001e0  vmmov mr0, r2
002b0c  b3900018  bfloat2float.rn r1, r1
002b10  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002b14  e3409fd5  loadli.w r1,  -5428(r30)
002b18  b3900018  bfloat2float.rn r1, r1
002b1c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b20  e3000fe8  loadli.w r1,  -3072(r30)
002b24  7e8001e0  vmmov mr0, r3
002b28  6301afd5  loadli.w r2,  -5424(r30)
002b2c  ab810000  lui r3, 8
002b30  b3900018  bfloat2float.rn r1, r1
002b34  33110118  bfloat2float.rn r2, r2
002b38  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b3c  9f000fe8  addli r1, r30, -3072
002b40  00a00000  mfence { lm }
002b44  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002b48  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002b4c  9f100000  addli r1, zero, 1
002b50  7e8000e0  vmmov mr0, r1
002b54  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002b58  e340afd5  loadli.w r1,  -5420(r30)
002b5c  1f210000  addli r2, zero, 2
002b60  7e0001e0  vmmov mr0, r2
002b64  1f410000  addli r2, zero, 4
002b68  b3900018  bfloat2float.rn r1, r1
002b6c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b70  e300bfd5  loadli.w r1,  -5416(r30)
002b74  7e0001e0  vmmov mr0, r2
002b78  1f011000  addli r2, zero, 8
002b7c  b3900018  bfloat2float.rn r1, r1
002b80  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b84  e340bfd5  loadli.w r1,  -5412(r30)
002b88  7e0001e0  vmmov mr0, r2
002b8c  1f012000  addli r2, zero, 16
002b90  b3900018  bfloat2float.rn r1, r1
002b94  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002b98  e300cfd5  loadli.w r1,  -5408(r30)
002b9c  7e0001e0  vmmov mr0, r2
002ba0  1f014000  addli r2, zero, 32
002ba4  b3900018  bfloat2float.rn r1, r1
002ba8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002bac  e340cfd5  loadli.w r1,  -5404(r30)
002bb0  7e0001e0  vmmov mr0, r2
002bb4  1f018000  addli r2, zero, 64
002bb8  b3900018  bfloat2float.rn r1, r1
002bbc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002bc0  e300dfd5  loadli.w r1,  -5400(r30)
002bc4  7e0001e0  vmmov mr0, r2
002bc8  1f010001  addli r2, zero, 128
002bcc  b3900018  bfloat2float.rn r1, r1
002bd0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002bd4  e340dfd5  loadli.w r1,  -5396(r30)
002bd8  7e0001e0  vmmov mr0, r2
002bdc  1f010002  addli r2, zero, 256
002be0  b3900018  bfloat2float.rn r1, r1
002be4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002be8  e300efd5  loadli.w r1,  -5392(r30)
002bec  7e0001e0  vmmov mr0, r2
002bf0  1f010004  addli r2, zero, 512
002bf4  b3900018  bfloat2float.rn r1, r1
002bf8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002bfc  e340efd5  loadli.w r1,  -5388(r30)
002c00  7e0001e0  vmmov mr0, r2
002c04  1f010008  addli r2, zero, 1024
002c08  b3900018  bfloat2float.rn r1, r1
002c0c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002c10  e300ffd5  loadli.w r1,  -5384(r30)
002c14  7e0001e0  vmmov mr0, r2
002c18  1f010020  addli r2, zero, 4096
002c1c  b3900018  bfloat2float.rn r1, r1
002c20  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002c24  e340ffd5  loadli.w r1,  -5380(r30)
002c28  7e0001e0  vmmov mr0, r2
002c2c  2b410000  lui r2, 4
002c30  b3900018  bfloat2float.rn r1, r1
002c34  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002c38  e3000fd6  loadli.w r1,  -5376(r30)
002c3c  b3900018  bfloat2float.rn r1, r1
002c40  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002c44  e3400fd6  loadli.w r1,  -5372(r30)
002c48  7e0001e0  vmmov mr0, r2
002c4c  b3900018  bfloat2float.rn r1, r1
002c50  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002c54  e3001fd6  loadli.w r1,  -5368(r30)
002c58  b3900018  bfloat2float.rn r1, r1
002c5c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002c60  e3008fe9  loadli.w r1,  -2880(r30)
002c64  7e8001e0  vmmov mr0, r3
002c68  63411fd6  loadli.w r2,  -5364(r30)
002c6c  ab810000  lui r3, 8
002c70  b3900018  bfloat2float.rn r1, r1
002c74  33110118  bfloat2float.rn r2, r2
002c78  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002c7c  9f008fe9  addli r1, r30, -2880
002c80  00a00000  mfence { lm }
002c84  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002c88  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002c8c  9f100000  addli r1, zero, 1
002c90  7e8000e0  vmmov mr0, r1
002c94  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002c98  e3002fd6  loadli.w r1,  -5360(r30)
002c9c  1f210000  addli r2, zero, 2
002ca0  7e0001e0  vmmov mr0, r2
002ca4  1f410000  addli r2, zero, 4
002ca8  b3900018  bfloat2float.rn r1, r1
002cac  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002cb0  e3402fd6  loadli.w r1,  -5356(r30)
002cb4  7e0001e0  vmmov mr0, r2
002cb8  1f011000  addli r2, zero, 8
002cbc  b3900018  bfloat2float.rn r1, r1
002cc0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002cc4  e3003fd6  loadli.w r1,  -5352(r30)
002cc8  7e0001e0  vmmov mr0, r2
002ccc  1f012000  addli r2, zero, 16
002cd0  b3900018  bfloat2float.rn r1, r1
002cd4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002cd8  e3403fd6  loadli.w r1,  -5348(r30)
002cdc  7e0001e0  vmmov mr0, r2
002ce0  1f014000  addli r2, zero, 32
002ce4  b3900018  bfloat2float.rn r1, r1
002ce8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002cec  e3004fd6  loadli.w r1,  -5344(r30)
002cf0  7e0001e0  vmmov mr0, r2
002cf4  1f018000  addli r2, zero, 64
002cf8  b3900018  bfloat2float.rn r1, r1
002cfc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d00  e3404fd6  loadli.w r1,  -5340(r30)
002d04  7e0001e0  vmmov mr0, r2
002d08  1f010001  addli r2, zero, 128
002d0c  b3900018  bfloat2float.rn r1, r1
002d10  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d14  e3005fd6  loadli.w r1,  -5336(r30)
002d18  7e0001e0  vmmov mr0, r2
002d1c  1f010002  addli r2, zero, 256
002d20  b3900018  bfloat2float.rn r1, r1
002d24  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d28  e3405fd6  loadli.w r1,  -5332(r30)
002d2c  7e0001e0  vmmov mr0, r2
002d30  1f010004  addli r2, zero, 512
002d34  b3900018  bfloat2float.rn r1, r1
002d38  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d3c  e3006fd6  loadli.w r1,  -5328(r30)
002d40  7e0001e0  vmmov mr0, r2
002d44  1f010008  addli r2, zero, 1024
002d48  b3900018  bfloat2float.rn r1, r1
002d4c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d50  e3406fd6  loadli.w r1,  -5324(r30)
002d54  7e0001e0  vmmov mr0, r2
002d58  1f010020  addli r2, zero, 4096
002d5c  b3900018  bfloat2float.rn r1, r1
002d60  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d64  e3007fd6  loadli.w r1,  -5320(r30)
002d68  7e0001e0  vmmov mr0, r2
002d6c  2b410000  lui r2, 4
002d70  b3900018  bfloat2float.rn r1, r1
002d74  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002d78  e3407fd6  loadli.w r1,  -5316(r30)
002d7c  b3900018  bfloat2float.rn r1, r1
002d80  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002d84  e3008fd6  loadli.w r1,  -5312(r30)
002d88  7e0001e0  vmmov mr0, r2
002d8c  b3900018  bfloat2float.rn r1, r1
002d90  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002d94  e3408fd6  loadli.w r1,  -5308(r30)
002d98  b3900018  bfloat2float.rn r1, r1
002d9c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002da0  e3008fea  loadli.w r1,  -2752(r30)
002da4  7e8001e0  vmmov mr0, r3
002da8  63019fd6  loadli.w r2,  -5304(r30)
002dac  ab810000  lui r3, 8
002db0  b3900018  bfloat2float.rn r1, r1
002db4  33110118  bfloat2float.rn r2, r2
002db8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002dbc  9f008fea  addli r1, r30, -2752
002dc0  00a00000  mfence { lm }
002dc4  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002dc8  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002dcc  9f100000  addli r1, zero, 1
002dd0  7e8000e0  vmmov mr0, r1
002dd4  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002dd8  e3409fd6  loadli.w r1,  -5300(r30)
002ddc  1f210000  addli r2, zero, 2
002de0  7e0001e0  vmmov mr0, r2
002de4  1f410000  addli r2, zero, 4
002de8  b3900018  bfloat2float.rn r1, r1
002dec  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002df0  e300afd6  loadli.w r1,  -5296(r30)
002df4  7e0001e0  vmmov mr0, r2
002df8  1f011000  addli r2, zero, 8
002dfc  b3900018  bfloat2float.rn r1, r1
002e00  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e04  e340afd6  loadli.w r1,  -5292(r30)
002e08  7e0001e0  vmmov mr0, r2
002e0c  1f012000  addli r2, zero, 16
002e10  b3900018  bfloat2float.rn r1, r1
002e14  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e18  e300bfd6  loadli.w r1,  -5288(r30)
002e1c  7e0001e0  vmmov mr0, r2
002e20  1f014000  addli r2, zero, 32
002e24  b3900018  bfloat2float.rn r1, r1
002e28  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e2c  e340bfd6  loadli.w r1,  -5284(r30)
002e30  7e0001e0  vmmov mr0, r2
002e34  1f018000  addli r2, zero, 64
002e38  b3900018  bfloat2float.rn r1, r1
002e3c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e40  e300cfd6  loadli.w r1,  -5280(r30)
002e44  7e0001e0  vmmov mr0, r2
002e48  1f010001  addli r2, zero, 128
002e4c  b3900018  bfloat2float.rn r1, r1
002e50  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e54  e340cfd6  loadli.w r1,  -5276(r30)
002e58  7e0001e0  vmmov mr0, r2
002e5c  1f010002  addli r2, zero, 256
002e60  b3900018  bfloat2float.rn r1, r1
002e64  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e68  e300dfd6  loadli.w r1,  -5272(r30)
002e6c  7e0001e0  vmmov mr0, r2
002e70  1f010004  addli r2, zero, 512
002e74  b3900018  bfloat2float.rn r1, r1
002e78  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e7c  e340dfd6  loadli.w r1,  -5268(r30)
002e80  7e0001e0  vmmov mr0, r2
002e84  1f010008  addli r2, zero, 1024
002e88  b3900018  bfloat2float.rn r1, r1
002e8c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002e90  e300efd6  loadli.w r1,  -5264(r30)
002e94  7e0001e0  vmmov mr0, r2
002e98  1f010020  addli r2, zero, 4096
002e9c  b3900018  bfloat2float.rn r1, r1
002ea0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ea4  e340efd6  loadli.w r1,  -5260(r30)
002ea8  7e0001e0  vmmov mr0, r2
002eac  2b410000  lui r2, 4
002eb0  b3900018  bfloat2float.rn r1, r1
002eb4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002eb8  e300ffd6  loadli.w r1,  -5256(r30)
002ebc  b3900018  bfloat2float.rn r1, r1
002ec0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ec4  e340ffd6  loadli.w r1,  -5252(r30)
002ec8  7e0001e0  vmmov mr0, r2
002ecc  b3900018  bfloat2float.rn r1, r1
002ed0  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
002ed4  e3000fd7  loadli.w r1,  -5248(r30)
002ed8  b3900018  bfloat2float.rn r1, r1
002edc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002ee0  e3008feb  loadli.w r1,  -2624(r30)
002ee4  7e8001e0  vmmov mr0, r3
002ee8  63410fd7  loadli.w r2,  -5244(r30)
002eec  ab810000  lui r3, 8
002ef0  b3900018  bfloat2float.rn r1, r1
002ef4  33110118  bfloat2float.rn r2, r2
002ef8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002efc  9f008feb  addli r1, r30, -2624
002f00  00a00000  mfence { lm }
002f04  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
002f08  92312002  vadd.s.mz vr3{mr1}, zero, vr2
002f0c  9f100000  addli r1, zero, 1
002f10  7e8000e0  vmmov mr0, r1
002f14  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002f18  e3001fd7  loadli.w r1,  -5240(r30)
002f1c  1f210000  addli r2, zero, 2
002f20  7e0001e0  vmmov mr0, r2
002f24  1f410000  addli r2, zero, 4
002f28  b3900018  bfloat2float.rn r1, r1
002f2c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f30  e3401fd7  loadli.w r1,  -5236(r30)
002f34  7e0001e0  vmmov mr0, r2
002f38  1f011000  addli r2, zero, 8
002f3c  b3900018  bfloat2float.rn r1, r1
002f40  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f44  e3002fd7  loadli.w r1,  -5232(r30)
002f48  7e0001e0  vmmov mr0, r2
002f4c  1f012000  addli r2, zero, 16
002f50  b3900018  bfloat2float.rn r1, r1
002f54  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f58  e3402fd7  loadli.w r1,  -5228(r30)
002f5c  7e0001e0  vmmov mr0, r2
002f60  1f014000  addli r2, zero, 32
002f64  b3900018  bfloat2float.rn r1, r1
002f68  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f6c  e3003fd7  loadli.w r1,  -5224(r30)
002f70  7e0001e0  vmmov mr0, r2
002f74  1f018000  addli r2, zero, 64
002f78  b3900018  bfloat2float.rn r1, r1
002f7c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f80  e3403fd7  loadli.w r1,  -5220(r30)
002f84  7e0001e0  vmmov mr0, r2
002f88  1f010001  addli r2, zero, 128
002f8c  b3900018  bfloat2float.rn r1, r1
002f90  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002f94  e3004fd7  loadli.w r1,  -5216(r30)
002f98  7e0001e0  vmmov mr0, r2
002f9c  1f010002  addli r2, zero, 256
002fa0  b3900018  bfloat2float.rn r1, r1
002fa4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fa8  e3404fd7  loadli.w r1,  -5212(r30)
002fac  7e0001e0  vmmov mr0, r2
002fb0  1f010004  addli r2, zero, 512
002fb4  b3900018  bfloat2float.rn r1, r1
002fb8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fbc  e3005fd7  loadli.w r1,  -5208(r30)
002fc0  7e0001e0  vmmov mr0, r2
002fc4  1f010008  addli r2, zero, 1024
002fc8  b3900018  bfloat2float.rn r1, r1
002fcc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fd0  e3405fd7  loadli.w r1,  -5204(r30)
002fd4  7e0001e0  vmmov mr0, r2
002fd8  1f010020  addli r2, zero, 4096
002fdc  b3900018  bfloat2float.rn r1, r1
002fe0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
002fe4  e3006fd7  loadli.w r1,  -5200(r30)
002fe8  7e0001e0  vmmov mr0, r2
002fec  2b410000  lui r2, 4
002ff0  b3900018  bfloat2float.rn r1, r1
002ff4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
002ff8  e3406fd7  loadli.w r1,  -5196(r30)
002ffc  b3900018  bfloat2float.rn r1, r1
003000  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003004  e3007fd7  loadli.w r1,  -5192(r30)
003008  7e0001e0  vmmov mr0, r2
00300c  b3900018  bfloat2float.rn r1, r1
003010  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
003014  e3407fd7  loadli.w r1,  -5188(r30)
003018  b3900018  bfloat2float.rn r1, r1
00301c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003020  e3008fec  loadli.w r1,  -2496(r30)
003024  7e8001e0  vmmov mr0, r3
003028  63018fd7  loadli.w r2,  -5184(r30)
00302c  ab810000  lui r3, 8
003030  b3900018  bfloat2float.rn r1, r1
003034  33110118  bfloat2float.rn r2, r2
003038  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00303c  9f008fec  addli r1, r30, -2496
003040  00a00000  mfence { lm }
003044  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
003048  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00304c  9f100000  addli r1, zero, 1
003050  7e8000e0  vmmov mr0, r1
003054  ea213130  vor.u.mh vr3{mr0}, r2, vr3
003058  e3408fd7  loadli.w r1,  -5180(r30)
00305c  1f210000  addli r2, zero, 2
003060  7e0001e0  vmmov mr0, r2
003064  1f410000  addli r2, zero, 4
003068  b3900018  bfloat2float.rn r1, r1
00306c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003070  e3009fd7  loadli.w r1,  -5176(r30)
003074  7e0001e0  vmmov mr0, r2
003078  1f011000  addli r2, zero, 8
00307c  b3900018  bfloat2float.rn r1, r1
003080  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003084  e3409fd7  loadli.w r1,  -5172(r30)
003088  7e0001e0  vmmov mr0, r2
00308c  1f012000  addli r2, zero, 16
003090  b3900018  bfloat2float.rn r1, r1
003094  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003098  e300afd7  loadli.w r1,  -5168(r30)
00309c  7e0001e0  vmmov mr0, r2
0030a0  1f014000  addli r2, zero, 32
0030a4  b3900018  bfloat2float.rn r1, r1
0030a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030ac  e340afd7  loadli.w r1,  -5164(r30)
0030b0  7e0001e0  vmmov mr0, r2
0030b4  1f018000  addli r2, zero, 64
0030b8  b3900018  bfloat2float.rn r1, r1
0030bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030c0  e300bfd7  loadli.w r1,  -5160(r30)
0030c4  7e0001e0  vmmov mr0, r2
0030c8  1f010001  addli r2, zero, 128
0030cc  b3900018  bfloat2float.rn r1, r1
0030d0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030d4  e340bfd7  loadli.w r1,  -5156(r30)
0030d8  7e0001e0  vmmov mr0, r2
0030dc  1f010002  addli r2, zero, 256
0030e0  b3900018  bfloat2float.rn r1, r1
0030e4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030e8  e300cfd7  loadli.w r1,  -5152(r30)
0030ec  7e0001e0  vmmov mr0, r2
0030f0  1f010004  addli r2, zero, 512
0030f4  b3900018  bfloat2float.rn r1, r1
0030f8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0030fc  e340cfd7  loadli.w r1,  -5148(r30)
003100  7e0001e0  vmmov mr0, r2
003104  1f010008  addli r2, zero, 1024
003108  b3900018  bfloat2float.rn r1, r1
00310c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003110  e300dfd7  loadli.w r1,  -5144(r30)
003114  7e0001e0  vmmov mr0, r2
003118  1f010020  addli r2, zero, 4096
00311c  b3900018  bfloat2float.rn r1, r1
003120  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003124  e340dfd7  loadli.w r1,  -5140(r30)
003128  7e0001e0  vmmov mr0, r2
00312c  2b410000  lui r2, 4
003130  b3900018  bfloat2float.rn r1, r1
003134  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
003138  e300efd7  loadli.w r1,  -5136(r30)
00313c  b3900018  bfloat2float.rn r1, r1
003140  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003144  e340efd7  loadli.w r1,  -5132(r30)
003148  7e0001e0  vmmov mr0, r2
00314c  b3900018  bfloat2float.rn r1, r1
003150  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
003154  e300ffd7  loadli.w r1,  -5128(r30)
003158  b3900018  bfloat2float.rn r1, r1
00315c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003160  e3000fd8  loadli.w r1,  -5120(r30)
003164  7e8001e0  vmmov mr0, r3
003168  6341ffd7  loadli.w r2,  -5124(r30)
00316c  ab810000  lui r3, 8
003170  b3900018  bfloat2float.rn r1, r1
003174  33110118  bfloat2float.rn r2, r2
003178  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00317c  9f000fed  addli r1, r30, -2432
003180  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
003184  92312002  vadd.s.mz vr3{mr1}, zero, vr2
003188  9f100000  addli r1, zero, 1
00318c  7e8000e0  vmmov mr0, r1
003190  ea213130  vor.u.mh vr3{mr0}, r2, vr3
003194  e3400fd8  loadli.w r1,  -5116(r30)
003198  1f210000  addli r2, zero, 2
00319c  7e0001e0  vmmov mr0, r2
0031a0  1f410000  addli r2, zero, 4
0031a4  b3900018  bfloat2float.rn r1, r1
0031a8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031ac  e3001fd8  loadli.w r1,  -5112(r30)
0031b0  7e0001e0  vmmov mr0, r2
0031b4  1f011000  addli r2, zero, 8
0031b8  b3900018  bfloat2float.rn r1, r1
0031bc  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031c0  e3401fd8  loadli.w r1,  -5108(r30)
0031c4  7e0001e0  vmmov mr0, r2
0031c8  1f012000  addli r2, zero, 16
0031cc  b3900018  bfloat2float.rn r1, r1
0031d0  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031d4  e3002fd8  loadli.w r1,  -5104(r30)
0031d8  7e0001e0  vmmov mr0, r2
0031dc  1f014000  addli r2, zero, 32
0031e0  b3900018  bfloat2float.rn r1, r1
0031e4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031e8  e3402fd8  loadli.w r1,  -5100(r30)
0031ec  7e0001e0  vmmov mr0, r2
0031f0  1f018000  addli r2, zero, 64
0031f4  b3900018  bfloat2float.rn r1, r1
0031f8  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0031fc  e3003fd8  loadli.w r1,  -5096(r30)
003200  7e0001e0  vmmov mr0, r2
003204  1f010001  addli r2, zero, 128
003208  b3900018  bfloat2float.rn r1, r1
00320c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003210  e3403fd8  loadli.w r1,  -5092(r30)
003214  7e0001e0  vmmov mr0, r2
003218  1f010002  addli r2, zero, 256
00321c  b3900018  bfloat2float.rn r1, r1
003220  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003224  e3004fd8  loadli.w r1,  -5088(r30)
003228  7e0001e0  vmmov mr0, r2
00322c  1f010004  addli r2, zero, 512
003230  b3900018  bfloat2float.rn r1, r1
003234  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003238  e3404fd8  loadli.w r1,  -5084(r30)
00323c  7e0001e0  vmmov mr0, r2
003240  1f010008  addli r2, zero, 1024
003244  b3900018  bfloat2float.rn r1, r1
003248  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00324c  e3005fd8  loadli.w r1,  -5080(r30)
003250  7e0001e0  vmmov mr0, r2
003254  1f010020  addli r2, zero, 4096
003258  b3900018  bfloat2float.rn r1, r1
00325c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003260  e3405fd8  loadli.w r1,  -5076(r30)
003264  7e0001e0  vmmov mr0, r2
003268  2b410000  lui r2, 4
00326c  b3900018  bfloat2float.rn r1, r1
003270  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
003274  e3006fd8  loadli.w r1,  -5072(r30)
003278  b3900018  bfloat2float.rn r1, r1
00327c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
003280  e3406fd8  loadli.w r1,  -5068(r30)
003284  7e0001e0  vmmov mr0, r2
003288  b3900018  bfloat2float.rn r1, r1
00328c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
003290  e3007fd8  loadli.w r1,  -5064(r30)
003294  b3900018  bfloat2float.rn r1, r1
003298  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00329c  e3407fd8  loadli.w r1,  -5060(r30)
0032a0  7e8001e0  vmmov mr0, r3
0032a4  63018fed  loadli.w r2,  -2368(r30)
0032a8  ab810000  lui r3, 8
0032ac  b3900018  bfloat2float.rn r1, r1
0032b0  33110118  bfloat2float.rn r2, r2
0032b4  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
0032b8  9f008fed  addli r1, r30, -2368
0032bc  00a00000  mfence { lm }
0032c0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0032c4  92312002  vadd.s.mz vr3{mr1}, zero, vr2
0032c8  9f100000  addli r1, zero, 1
0032cc  7e8000e0  vmmov mr0, r1
0032d0  92353002  vadd.s.mz vr11{mr1}, zero, vr3
0032d4  12323002  vadd.s.mz vr4{mr1}, zero, vr3
0032d8  12353002  vadd.s.mz vr10{mr1}, zero, vr3
0032dc  92323002  vadd.s.mz vr5{mr1}, zero, vr3
0032e0  12343002  vadd.s.mz vr8{mr1}, zero, vr3
0032e4  e6c40180  vmerge_l.hf vr9, vr3, vr0
0032e8  ea25b130  vor.u.mh vr11{mr0}, r2, vr11
0032ec  e3408fd8  loadli.w r1,  -5052(r30)
0032f0  1f210000  addli r2, zero, 2
0032f4  7e0001e0  vmmov mr0, r2
0032f8  1f410000  addli r2, zero, 4
0032fc  b3900018  bfloat2float.rn r1, r1
003300  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003304  e3009fd8  loadli.w r1,  -5048(r30)
003308  7e0001e0  vmmov mr0, r2
00330c  1f011000  addli r2, zero, 8
003310  b3900018  bfloat2float.rn r1, r1
003314  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003318  e3409fd8  loadli.w r1,  -5044(r30)
00331c  7e0001e0  vmmov mr0, r2
003320  1f012000  addli r2, zero, 16
003324  b3900018  bfloat2float.rn r1, r1
003328  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
00332c  e300afd8  loadli.w r1,  -5040(r30)
003330  7e0001e0  vmmov mr0, r2
003334  1f014000  addli r2, zero, 32
003338  b3900018  bfloat2float.rn r1, r1
00333c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003340  e340afd8  loadli.w r1,  -5036(r30)
003344  7e0001e0  vmmov mr0, r2
003348  1f018000  addli r2, zero, 64
00334c  b3900018  bfloat2float.rn r1, r1
003350  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003354  e300bfd8  loadli.w r1,  -5032(r30)
003358  7e0001e0  vmmov mr0, r2
00335c  1f010001  addli r2, zero, 128
003360  b3900018  bfloat2float.rn r1, r1
003364  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003368  e340bfd8  loadli.w r1,  -5028(r30)
00336c  7e0001e0  vmmov mr0, r2
003370  1f010002  addli r2, zero, 256
003374  b3900018  bfloat2float.rn r1, r1
003378  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
00337c  e300cfd8  loadli.w r1,  -5024(r30)
003380  7e0001e0  vmmov mr0, r2
003384  1f010004  addli r2, zero, 512
003388  b3900018  bfloat2float.rn r1, r1
00338c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003390  e340cfd8  loadli.w r1,  -5020(r30)
003394  7e0001e0  vmmov mr0, r2
003398  1f010008  addli r2, zero, 1024
00339c  b3900018  bfloat2float.rn r1, r1
0033a0  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0033a4  e300dfd8  loadli.w r1,  -5016(r30)
0033a8  7e0001e0  vmmov mr0, r2
0033ac  1f010020  addli r2, zero, 4096
0033b0  b3900018  bfloat2float.rn r1, r1
0033b4  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0033b8  e340dfd8  loadli.w r1,  -5012(r30)
0033bc  7e0001e0  vmmov mr0, r2
0033c0  2b410000  lui r2, 4
0033c4  b3900018  bfloat2float.rn r1, r1
0033c8  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
0033cc  e300efd8  loadli.w r1,  -5008(r30)
0033d0  b3900018  bfloat2float.rn r1, r1
0033d4  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0033d8  e340efd8  loadli.w r1,  -5004(r30)
0033dc  7e0001e0  vmmov mr0, r2
0033e0  b3900018  bfloat2float.rn r1, r1
0033e4  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
0033e8  e340ffd8  loadli.w r1,  -4996(r30)
0033ec  b3900018  bfloat2float.rn r1, r1
0033f0  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
0033f4  e3000fd9  loadli.w r1,  -4992(r30)
0033f8  6301ffd8  loadli.w r2,  -5000(r30)
0033fc  7e8001e0  vmmov mr0, r3
003400  ab810000  lui r3, 8
003404  b3900018  bfloat2float.rn r1, r1
003408  33110118  bfloat2float.rn r2, r2
00340c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
003410  9f100000  addli r1, zero, 1
003414  7e8000e0  vmmov mr0, r1
003418  6a224130  vor.u.mh vr4{mr0}, r2, vr4
00341c  e3400fd9  loadli.w r1,  -4988(r30)
003420  1f210000  addli r2, zero, 2
003424  7e0001e0  vmmov mr0, r2
003428  1f410000  addli r2, zero, 4
00342c  b3900018  bfloat2float.rn r1, r1
003430  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003434  e3001fd9  loadli.w r1,  -4984(r30)
003438  7e0001e0  vmmov mr0, r2
00343c  1f011000  addli r2, zero, 8
003440  b3900018  bfloat2float.rn r1, r1
003444  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003448  e3401fd9  loadli.w r1,  -4980(r30)
00344c  7e0001e0  vmmov mr0, r2
003450  1f012000  addli r2, zero, 16
003454  b3900018  bfloat2float.rn r1, r1
003458  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
00345c  e3002fd9  loadli.w r1,  -4976(r30)
003460  7e0001e0  vmmov mr0, r2
003464  1f014000  addli r2, zero, 32
003468  b3900018  bfloat2float.rn r1, r1
00346c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003470  e3402fd9  loadli.w r1,  -4972(r30)
003474  7e0001e0  vmmov mr0, r2
003478  1f018000  addli r2, zero, 64
00347c  b3900018  bfloat2float.rn r1, r1
003480  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003484  e3003fd9  loadli.w r1,  -4968(r30)
003488  7e0001e0  vmmov mr0, r2
00348c  1f010001  addli r2, zero, 128
003490  b3900018  bfloat2float.rn r1, r1
003494  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003498  e3403fd9  loadli.w r1,  -4964(r30)
00349c  7e0001e0  vmmov mr0, r2
0034a0  1f010002  addli r2, zero, 256
0034a4  b3900018  bfloat2float.rn r1, r1
0034a8  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0034ac  e3004fd9  loadli.w r1,  -4960(r30)
0034b0  7e0001e0  vmmov mr0, r2
0034b4  1f010004  addli r2, zero, 512
0034b8  b3900018  bfloat2float.rn r1, r1
0034bc  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0034c0  e3404fd9  loadli.w r1,  -4956(r30)
0034c4  7e0001e0  vmmov mr0, r2
0034c8  1f010008  addli r2, zero, 1024
0034cc  b3900018  bfloat2float.rn r1, r1
0034d0  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0034d4  e3005fd9  loadli.w r1,  -4952(r30)
0034d8  7e0001e0  vmmov mr0, r2
0034dc  1f010020  addli r2, zero, 4096
0034e0  b3900018  bfloat2float.rn r1, r1
0034e4  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
0034e8  e3405fd9  loadli.w r1,  -4948(r30)
0034ec  7e0001e0  vmmov mr0, r2
0034f0  2b410000  lui r2, 4
0034f4  b3900018  bfloat2float.rn r1, r1
0034f8  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
0034fc  e3006fd9  loadli.w r1,  -4944(r30)
003500  b3900018  bfloat2float.rn r1, r1
003504  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003508  e3406fd9  loadli.w r1,  -4940(r30)
00350c  7e0001e0  vmmov mr0, r2
003510  b3900018  bfloat2float.rn r1, r1
003514  6aa24036  vor.u.mh vr4{mr3}, r1, vr4
003518  e3407fd9  loadli.w r1,  -4932(r30)
00351c  b3900018  bfloat2float.rn r1, r1
003520  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003524  e3008fd9  loadli.w r1,  -4928(r30)
003528  63017fd9  loadli.w r2,  -4936(r30)
00352c  7e8001e0  vmmov mr0, r3
003530  ab810000  lui r3, 8
003534  b3900018  bfloat2float.rn r1, r1
003538  33110118  bfloat2float.rn r2, r2
00353c  6aa24030  vor.u.mh vr4{mr0}, r1, vr4
003540  9f100000  addli r1, zero, 1
003544  7e8000e0  vmmov mr0, r1
003548  6a25a130  vor.u.mh vr10{mr0}, r2, vr10
00354c  e3408fd9  loadli.w r1,  -4924(r30)
003550  1f210000  addli r2, zero, 2
003554  7e0001e0  vmmov mr0, r2
003558  1f410000  addli r2, zero, 4
00355c  b3900018  bfloat2float.rn r1, r1
003560  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003564  e3009fd9  loadli.w r1,  -4920(r30)
003568  7e0001e0  vmmov mr0, r2
00356c  1f011000  addli r2, zero, 8
003570  b3900018  bfloat2float.rn r1, r1
003574  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003578  e3409fd9  loadli.w r1,  -4916(r30)
00357c  7e0001e0  vmmov mr0, r2
003580  1f012000  addli r2, zero, 16
003584  b3900018  bfloat2float.rn r1, r1
003588  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
00358c  e300afd9  loadli.w r1,  -4912(r30)
003590  7e0001e0  vmmov mr0, r2
003594  1f014000  addli r2, zero, 32
003598  b3900018  bfloat2float.rn r1, r1
00359c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035a0  e340afd9  loadli.w r1,  -4908(r30)
0035a4  7e0001e0  vmmov mr0, r2
0035a8  1f018000  addli r2, zero, 64
0035ac  b3900018  bfloat2float.rn r1, r1
0035b0  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035b4  e300bfd9  loadli.w r1,  -4904(r30)
0035b8  7e0001e0  vmmov mr0, r2
0035bc  1f010001  addli r2, zero, 128
0035c0  b3900018  bfloat2float.rn r1, r1
0035c4  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035c8  e340bfd9  loadli.w r1,  -4900(r30)
0035cc  7e0001e0  vmmov mr0, r2
0035d0  1f010002  addli r2, zero, 256
0035d4  b3900018  bfloat2float.rn r1, r1
0035d8  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035dc  e300cfd9  loadli.w r1,  -4896(r30)
0035e0  7e0001e0  vmmov mr0, r2
0035e4  1f010004  addli r2, zero, 512
0035e8  b3900018  bfloat2float.rn r1, r1
0035ec  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
0035f0  e340cfd9  loadli.w r1,  -4892(r30)
0035f4  7e0001e0  vmmov mr0, r2
0035f8  1f010008  addli r2, zero, 1024
0035fc  b3900018  bfloat2float.rn r1, r1
003600  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003604  e300dfd9  loadli.w r1,  -4888(r30)
003608  7e0001e0  vmmov mr0, r2
00360c  1f010020  addli r2, zero, 4096
003610  b3900018  bfloat2float.rn r1, r1
003614  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003618  e340dfd9  loadli.w r1,  -4884(r30)
00361c  7e0001e0  vmmov mr0, r2
003620  2b410000  lui r2, 4
003624  b3900018  bfloat2float.rn r1, r1
003628  6aa5a034  vor.u.mh vr10{mr2}, r1, vr10
00362c  e300efd9  loadli.w r1,  -4880(r30)
003630  b3900018  bfloat2float.rn r1, r1
003634  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003638  e340efd9  loadli.w r1,  -4876(r30)
00363c  7e0001e0  vmmov mr0, r2
003640  b3900018  bfloat2float.rn r1, r1
003644  6aa5a036  vor.u.mh vr10{mr3}, r1, vr10
003648  e340ffd9  loadli.w r1,  -4868(r30)
00364c  b3900018  bfloat2float.rn r1, r1
003650  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003654  e3000fda  loadli.w r1,  -4864(r30)
003658  6301ffd9  loadli.w r2,  -4872(r30)
00365c  7e8001e0  vmmov mr0, r3
003660  ab810000  lui r3, 8
003664  b3900018  bfloat2float.rn r1, r1
003668  33110118  bfloat2float.rn r2, r2
00366c  6aa5a030  vor.u.mh vr10{mr0}, r1, vr10
003670  9f100000  addli r1, zero, 1
003674  7e8000e0  vmmov mr0, r1
003678  6a212130  vor.u.mh vr2{mr0}, r2, vr2
00367c  e3400fda  loadli.w r1,  -4860(r30)
003680  1f210000  addli r2, zero, 2
003684  7e0001e0  vmmov mr0, r2
003688  1f410000  addli r2, zero, 4
00368c  b3900018  bfloat2float.rn r1, r1
003690  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003694  e3001fda  loadli.w r1,  -4856(r30)
003698  7e0001e0  vmmov mr0, r2
00369c  1f011000  addli r2, zero, 8
0036a0  b3900018  bfloat2float.rn r1, r1
0036a4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036a8  e3401fda  loadli.w r1,  -4852(r30)
0036ac  7e0001e0  vmmov mr0, r2
0036b0  1f012000  addli r2, zero, 16
0036b4  b3900018  bfloat2float.rn r1, r1
0036b8  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036bc  e3002fda  loadli.w r1,  -4848(r30)
0036c0  7e0001e0  vmmov mr0, r2
0036c4  1f014000  addli r2, zero, 32
0036c8  b3900018  bfloat2float.rn r1, r1
0036cc  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036d0  e3402fda  loadli.w r1,  -4844(r30)
0036d4  7e0001e0  vmmov mr0, r2
0036d8  1f018000  addli r2, zero, 64
0036dc  b3900018  bfloat2float.rn r1, r1
0036e0  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036e4  e3003fda  loadli.w r1,  -4840(r30)
0036e8  7e0001e0  vmmov mr0, r2
0036ec  1f010001  addli r2, zero, 128
0036f0  b3900018  bfloat2float.rn r1, r1
0036f4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0036f8  e3403fda  loadli.w r1,  -4836(r30)
0036fc  7e0001e0  vmmov mr0, r2
003700  1f010002  addli r2, zero, 256
003704  b3900018  bfloat2float.rn r1, r1
003708  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00370c  e3004fda  loadli.w r1,  -4832(r30)
003710  7e0001e0  vmmov mr0, r2
003714  1f010004  addli r2, zero, 512
003718  b3900018  bfloat2float.rn r1, r1
00371c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003720  e3404fda  loadli.w r1,  -4828(r30)
003724  7e0001e0  vmmov mr0, r2
003728  1f010008  addli r2, zero, 1024
00372c  b3900018  bfloat2float.rn r1, r1
003730  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003734  e3005fda  loadli.w r1,  -4824(r30)
003738  7e0001e0  vmmov mr0, r2
00373c  1f010020  addli r2, zero, 4096
003740  b3900018  bfloat2float.rn r1, r1
003744  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003748  e3405fda  loadli.w r1,  -4820(r30)
00374c  7e0001e0  vmmov mr0, r2
003750  2b410000  lui r2, 4
003754  b3900018  bfloat2float.rn r1, r1
003758  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00375c  e3006fda  loadli.w r1,  -4816(r30)
003760  b3900018  bfloat2float.rn r1, r1
003764  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003768  e3406fda  loadli.w r1,  -4812(r30)
00376c  7e0001e0  vmmov mr0, r2
003770  b3900018  bfloat2float.rn r1, r1
003774  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
003778  e3407fda  loadli.w r1,  -4804(r30)
00377c  b3900018  bfloat2float.rn r1, r1
003780  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
003784  e3008fda  loadli.w r1,  -4800(r30)
003788  63017fda  loadli.w r2,  -4808(r30)
00378c  7e8001e0  vmmov mr0, r3
003790  ab810000  lui r3, 8
003794  b3900018  bfloat2float.rn r1, r1
003798  33110118  bfloat2float.rn r2, r2
00379c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0037a0  9f100000  addli r1, zero, 1
0037a4  7e8000e0  vmmov mr0, r1
0037a8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0037ac  e3408fda  loadli.w r1,  -4796(r30)
0037b0  1f210000  addli r2, zero, 2
0037b4  7e0001e0  vmmov mr0, r2
0037b8  1f410000  addli r2, zero, 4
0037bc  b3900018  bfloat2float.rn r1, r1
0037c0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0037c4  e3009fda  loadli.w r1,  -4792(r30)
0037c8  7e0001e0  vmmov mr0, r2
0037cc  1f011000  addli r2, zero, 8
0037d0  b3900018  bfloat2float.rn r1, r1
0037d4  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0037d8  e3409fda  loadli.w r1,  -4788(r30)
0037dc  7e0001e0  vmmov mr0, r2
0037e0  1f012000  addli r2, zero, 16
0037e4  b3900018  bfloat2float.rn r1, r1
0037e8  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0037ec  e300afda  loadli.w r1,  -4784(r30)
0037f0  7e0001e0  vmmov mr0, r2
0037f4  1f014000  addli r2, zero, 32
0037f8  b3900018  bfloat2float.rn r1, r1
0037fc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003800  e340afda  loadli.w r1,  -4780(r30)
003804  7e0001e0  vmmov mr0, r2
003808  1f018000  addli r2, zero, 64
00380c  b3900018  bfloat2float.rn r1, r1
003810  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003814  e300bfda  loadli.w r1,  -4776(r30)
003818  7e0001e0  vmmov mr0, r2
00381c  1f010001  addli r2, zero, 128
003820  b3900018  bfloat2float.rn r1, r1
003824  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003828  e340bfda  loadli.w r1,  -4772(r30)
00382c  7e0001e0  vmmov mr0, r2
003830  1f010002  addli r2, zero, 256
003834  b3900018  bfloat2float.rn r1, r1
003838  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
00383c  e300cfda  loadli.w r1,  -4768(r30)
003840  7e0001e0  vmmov mr0, r2
003844  1f010004  addli r2, zero, 512
003848  b3900018  bfloat2float.rn r1, r1
00384c  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003850  e340cfda  loadli.w r1,  -4764(r30)
003854  7e0001e0  vmmov mr0, r2
003858  1f010008  addli r2, zero, 1024
00385c  b3900018  bfloat2float.rn r1, r1
003860  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003864  e300dfda  loadli.w r1,  -4760(r30)
003868  7e0001e0  vmmov mr0, r2
00386c  1f010020  addli r2, zero, 4096
003870  b3900018  bfloat2float.rn r1, r1
003874  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003878  e340dfda  loadli.w r1,  -4756(r30)
00387c  7e0001e0  vmmov mr0, r2
003880  2b410000  lui r2, 4
003884  b3900018  bfloat2float.rn r1, r1
003888  eaa25034  vor.u.mh vr5{mr2}, r1, vr5
00388c  e300efda  loadli.w r1,  -4752(r30)
003890  b3900018  bfloat2float.rn r1, r1
003894  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
003898  e340efda  loadli.w r1,  -4748(r30)
00389c  7e0001e0  vmmov mr0, r2
0038a0  b3900018  bfloat2float.rn r1, r1
0038a4  eaa25036  vor.u.mh vr5{mr3}, r1, vr5
0038a8  e340ffda  loadli.w r1,  -4740(r30)
0038ac  b3900018  bfloat2float.rn r1, r1
0038b0  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0038b4  e3000fdb  loadli.w r1,  -4736(r30)
0038b8  6301ffda  loadli.w r2,  -4744(r30)
0038bc  7e8001e0  vmmov mr0, r3
0038c0  ab810000  lui r3, 8
0038c4  b3900018  bfloat2float.rn r1, r1
0038c8  33110118  bfloat2float.rn r2, r2
0038cc  eaa25030  vor.u.mh vr5{mr0}, r1, vr5
0038d0  9f100000  addli r1, zero, 1
0038d4  7e8000e0  vmmov mr0, r1
0038d8  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0038dc  e3400fdb  loadli.w r1,  -4732(r30)
0038e0  1f210000  addli r2, zero, 2
0038e4  7e0001e0  vmmov mr0, r2
0038e8  1f410000  addli r2, zero, 4
0038ec  b3900018  bfloat2float.rn r1, r1
0038f0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0038f4  e3001fdb  loadli.w r1,  -4728(r30)
0038f8  7e0001e0  vmmov mr0, r2
0038fc  1f011000  addli r2, zero, 8
003900  b3900018  bfloat2float.rn r1, r1
003904  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003908  e3401fdb  loadli.w r1,  -4724(r30)
00390c  7e0001e0  vmmov mr0, r2
003910  1f012000  addli r2, zero, 16
003914  b3900018  bfloat2float.rn r1, r1
003918  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00391c  e3002fdb  loadli.w r1,  -4720(r30)
003920  7e0001e0  vmmov mr0, r2
003924  1f014000  addli r2, zero, 32
003928  b3900018  bfloat2float.rn r1, r1
00392c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003930  e3402fdb  loadli.w r1,  -4716(r30)
003934  7e0001e0  vmmov mr0, r2
003938  1f018000  addli r2, zero, 64
00393c  b3900018  bfloat2float.rn r1, r1
003940  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003944  e3003fdb  loadli.w r1,  -4712(r30)
003948  7e0001e0  vmmov mr0, r2
00394c  1f010001  addli r2, zero, 128
003950  b3900018  bfloat2float.rn r1, r1
003954  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003958  e3403fdb  loadli.w r1,  -4708(r30)
00395c  7e0001e0  vmmov mr0, r2
003960  1f010002  addli r2, zero, 256
003964  b3900018  bfloat2float.rn r1, r1
003968  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00396c  e3004fdb  loadli.w r1,  -4704(r30)
003970  7e0001e0  vmmov mr0, r2
003974  1f010004  addli r2, zero, 512
003978  b3900018  bfloat2float.rn r1, r1
00397c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003980  e3404fdb  loadli.w r1,  -4700(r30)
003984  7e0001e0  vmmov mr0, r2
003988  1f010008  addli r2, zero, 1024
00398c  b3900018  bfloat2float.rn r1, r1
003990  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003994  e3005fdb  loadli.w r1,  -4696(r30)
003998  7e0001e0  vmmov mr0, r2
00399c  1f010020  addli r2, zero, 4096
0039a0  b3900018  bfloat2float.rn r1, r1
0039a4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0039a8  e3405fdb  loadli.w r1,  -4692(r30)
0039ac  7e0001e0  vmmov mr0, r2
0039b0  2b410000  lui r2, 4
0039b4  b3900018  bfloat2float.rn r1, r1
0039b8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0039bc  e3006fdb  loadli.w r1,  -4688(r30)
0039c0  b3900018  bfloat2float.rn r1, r1
0039c4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0039c8  e3406fdb  loadli.w r1,  -4684(r30)
0039cc  7e0001e0  vmmov mr0, r2
0039d0  b3900018  bfloat2float.rn r1, r1
0039d4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0039d8  e3407fdb  loadli.w r1,  -4676(r30)
0039dc  b3900018  bfloat2float.rn r1, r1
0039e0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0039e4  e3008fdb  loadli.w r1,  -4672(r30)
0039e8  7e8001e0  vmmov mr0, r3
0039ec  63017fdb  loadli.w r2,  -4680(r30)
0039f0  ab810000  lui r3, 8
0039f4  b3900018  bfloat2float.rn r1, r1
0039f8  33110118  bfloat2float.rn r2, r2
0039fc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a00  9f008fdb  addli r1, r30, -4672
003a04  00a00000  mfence { lm }
003a08  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003a0c  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003a10  9f100000  addli r1, zero, 1
003a14  7e8000e0  vmmov mr0, r1
003a18  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003a1c  e3400fdc  loadli.w r1,  -4604(r30)
003a20  1f210000  addli r2, zero, 2
003a24  7e0001e0  vmmov mr0, r2
003a28  1f410000  addli r2, zero, 4
003a2c  b3900018  bfloat2float.rn r1, r1
003a30  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a34  e3001fdc  loadli.w r1,  -4600(r30)
003a38  7e0001e0  vmmov mr0, r2
003a3c  1f011000  addli r2, zero, 8
003a40  b3900018  bfloat2float.rn r1, r1
003a44  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a48  e3401fdc  loadli.w r1,  -4596(r30)
003a4c  7e0001e0  vmmov mr0, r2
003a50  1f012000  addli r2, zero, 16
003a54  b3900018  bfloat2float.rn r1, r1
003a58  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a5c  e3002fdc  loadli.w r1,  -4592(r30)
003a60  7e0001e0  vmmov mr0, r2
003a64  1f014000  addli r2, zero, 32
003a68  b3900018  bfloat2float.rn r1, r1
003a6c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a70  e3402fdc  loadli.w r1,  -4588(r30)
003a74  7e0001e0  vmmov mr0, r2
003a78  1f018000  addli r2, zero, 64
003a7c  b3900018  bfloat2float.rn r1, r1
003a80  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a84  e3003fdc  loadli.w r1,  -4584(r30)
003a88  7e0001e0  vmmov mr0, r2
003a8c  1f010001  addli r2, zero, 128
003a90  b3900018  bfloat2float.rn r1, r1
003a94  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003a98  e3403fdc  loadli.w r1,  -4580(r30)
003a9c  7e0001e0  vmmov mr0, r2
003aa0  1f010002  addli r2, zero, 256
003aa4  b3900018  bfloat2float.rn r1, r1
003aa8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003aac  e3004fdc  loadli.w r1,  -4576(r30)
003ab0  7e0001e0  vmmov mr0, r2
003ab4  1f010004  addli r2, zero, 512
003ab8  b3900018  bfloat2float.rn r1, r1
003abc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ac0  e3404fdc  loadli.w r1,  -4572(r30)
003ac4  7e0001e0  vmmov mr0, r2
003ac8  1f010008  addli r2, zero, 1024
003acc  b3900018  bfloat2float.rn r1, r1
003ad0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ad4  e3005fdc  loadli.w r1,  -4568(r30)
003ad8  7e0001e0  vmmov mr0, r2
003adc  1f010020  addli r2, zero, 4096
003ae0  b3900018  bfloat2float.rn r1, r1
003ae4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ae8  e3405fdc  loadli.w r1,  -4564(r30)
003aec  7e0001e0  vmmov mr0, r2
003af0  2b410000  lui r2, 4
003af4  b3900018  bfloat2float.rn r1, r1
003af8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003afc  e3006fdc  loadli.w r1,  -4560(r30)
003b00  b3900018  bfloat2float.rn r1, r1
003b04  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b08  e3406fdc  loadli.w r1,  -4556(r30)
003b0c  7e0001e0  vmmov mr0, r2
003b10  b3900018  bfloat2float.rn r1, r1
003b14  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
003b18  e3407fdc  loadli.w r1,  -4548(r30)
003b1c  b3900018  bfloat2float.rn r1, r1
003b20  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b24  e3008fdc  loadli.w r1,  -4544(r30)
003b28  7e8001e0  vmmov mr0, r3
003b2c  63017fdc  loadli.w r2,  -4552(r30)
003b30  ab810000  lui r3, 8
003b34  b3900018  bfloat2float.rn r1, r1
003b38  33110118  bfloat2float.rn r2, r2
003b3c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b40  9f008fdc  addli r1, r30, -4544
003b44  00a00000  mfence { lm }
003b48  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003b4c  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003b50  9f100000  addli r1, zero, 1
003b54  7e8000e0  vmmov mr0, r1
003b58  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003b5c  e3006fdd  loadli.w r1,  -4432(r30)
003b60  1f210000  addli r2, zero, 2
003b64  7e0001e0  vmmov mr0, r2
003b68  1f410000  addli r2, zero, 4
003b6c  b3900018  bfloat2float.rn r1, r1
003b70  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b74  e3406fdd  loadli.w r1,  -4428(r30)
003b78  7e0001e0  vmmov mr0, r2
003b7c  1f011000  addli r2, zero, 8
003b80  b3900018  bfloat2float.rn r1, r1
003b84  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b88  e3007fdd  loadli.w r1,  -4424(r30)
003b8c  7e0001e0  vmmov mr0, r2
003b90  1f012000  addli r2, zero, 16
003b94  b3900018  bfloat2float.rn r1, r1
003b98  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003b9c  e3407fdd  loadli.w r1,  -4420(r30)
003ba0  7e0001e0  vmmov mr0, r2
003ba4  1f014000  addli r2, zero, 32
003ba8  b3900018  bfloat2float.rn r1, r1
003bac  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003bb0  e3008fdd  loadli.w r1,  -4416(r30)
003bb4  7e0001e0  vmmov mr0, r2
003bb8  1f018000  addli r2, zero, 64
003bbc  b3900018  bfloat2float.rn r1, r1
003bc0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003bc4  e3408fdd  loadli.w r1,  -4412(r30)
003bc8  7e0001e0  vmmov mr0, r2
003bcc  1f010001  addli r2, zero, 128
003bd0  b3900018  bfloat2float.rn r1, r1
003bd4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003bd8  e3009fdd  loadli.w r1,  -4408(r30)
003bdc  7e0001e0  vmmov mr0, r2
003be0  1f010002  addli r2, zero, 256
003be4  b3900018  bfloat2float.rn r1, r1
003be8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003bec  e3409fdd  loadli.w r1,  -4404(r30)
003bf0  7e0001e0  vmmov mr0, r2
003bf4  1f010004  addli r2, zero, 512
003bf8  b3900018  bfloat2float.rn r1, r1
003bfc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c00  e300afdd  loadli.w r1,  -4400(r30)
003c04  7e0001e0  vmmov mr0, r2
003c08  1f010008  addli r2, zero, 1024
003c0c  b3900018  bfloat2float.rn r1, r1
003c10  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c14  e340afdd  loadli.w r1,  -4396(r30)
003c18  7e0001e0  vmmov mr0, r2
003c1c  1f010020  addli r2, zero, 4096
003c20  b3900018  bfloat2float.rn r1, r1
003c24  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c28  e300bfdd  loadli.w r1,  -4392(r30)
003c2c  7e0001e0  vmmov mr0, r2
003c30  2b410000  lui r2, 4
003c34  b3900018  bfloat2float.rn r1, r1
003c38  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003c3c  e340bfdd  loadli.w r1,  -4388(r30)
003c40  b3900018  bfloat2float.rn r1, r1
003c44  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c48  e300cfdd  loadli.w r1,  -4384(r30)
003c4c  7e0001e0  vmmov mr0, r2
003c50  b3900018  bfloat2float.rn r1, r1
003c54  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
003c58  e300dfdd  loadli.w r1,  -4376(r30)
003c5c  b3900018  bfloat2float.rn r1, r1
003c60  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c64  e3008fe0  loadli.w r1,  -4032(r30)
003c68  7e8001e0  vmmov mr0, r3
003c6c  6341cfdd  loadli.w r2,  -4380(r30)
003c70  ab810000  lui r3, 8
003c74  b3900018  bfloat2float.rn r1, r1
003c78  33110118  bfloat2float.rn r2, r2
003c7c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003c80  9f008fe0  addli r1, r30, -4032
003c84  00a00000  mfence { lm }
003c88  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003c8c  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003c90  9f100000  addli r1, zero, 1
003c94  7e8000e0  vmmov mr0, r1
003c98  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003c9c  e340dfdd  loadli.w r1,  -4372(r30)
003ca0  1f210000  addli r2, zero, 2
003ca4  7e0001e0  vmmov mr0, r2
003ca8  1f410000  addli r2, zero, 4
003cac  b3900018  bfloat2float.rn r1, r1
003cb0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003cb4  e300efdd  loadli.w r1,  -4368(r30)
003cb8  7e0001e0  vmmov mr0, r2
003cbc  1f011000  addli r2, zero, 8
003cc0  b3900018  bfloat2float.rn r1, r1
003cc4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003cc8  e340efdd  loadli.w r1,  -4364(r30)
003ccc  7e0001e0  vmmov mr0, r2
003cd0  1f012000  addli r2, zero, 16
003cd4  b3900018  bfloat2float.rn r1, r1
003cd8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003cdc  e300ffdd  loadli.w r1,  -4360(r30)
003ce0  7e0001e0  vmmov mr0, r2
003ce4  1f014000  addli r2, zero, 32
003ce8  b3900018  bfloat2float.rn r1, r1
003cec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003cf0  e340ffdd  loadli.w r1,  -4356(r30)
003cf4  7e0001e0  vmmov mr0, r2
003cf8  1f018000  addli r2, zero, 64
003cfc  b3900018  bfloat2float.rn r1, r1
003d00  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d04  e3000fde  loadli.w r1,  -4352(r30)
003d08  7e0001e0  vmmov mr0, r2
003d0c  1f010001  addli r2, zero, 128
003d10  b3900018  bfloat2float.rn r1, r1
003d14  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d18  e3400fde  loadli.w r1,  -4348(r30)
003d1c  7e0001e0  vmmov mr0, r2
003d20  1f010002  addli r2, zero, 256
003d24  b3900018  bfloat2float.rn r1, r1
003d28  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d2c  e3001fde  loadli.w r1,  -4344(r30)
003d30  7e0001e0  vmmov mr0, r2
003d34  1f010004  addli r2, zero, 512
003d38  b3900018  bfloat2float.rn r1, r1
003d3c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d40  e3401fde  loadli.w r1,  -4340(r30)
003d44  7e0001e0  vmmov mr0, r2
003d48  1f010008  addli r2, zero, 1024
003d4c  b3900018  bfloat2float.rn r1, r1
003d50  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d54  e3002fde  loadli.w r1,  -4336(r30)
003d58  7e0001e0  vmmov mr0, r2
003d5c  1f010020  addli r2, zero, 4096
003d60  b3900018  bfloat2float.rn r1, r1
003d64  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d68  e3402fde  loadli.w r1,  -4332(r30)
003d6c  7e0001e0  vmmov mr0, r2
003d70  2b410000  lui r2, 4
003d74  b3900018  bfloat2float.rn r1, r1
003d78  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003d7c  e3003fde  loadli.w r1,  -4328(r30)
003d80  b3900018  bfloat2float.rn r1, r1
003d84  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003d88  e3403fde  loadli.w r1,  -4324(r30)
003d8c  7e0001e0  vmmov mr0, r2
003d90  b3900018  bfloat2float.rn r1, r1
003d94  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
003d98  e3404fde  loadli.w r1,  -4316(r30)
003d9c  b3900018  bfloat2float.rn r1, r1
003da0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003da4  e3008fe3  loadli.w r1,  -3648(r30)
003da8  7e8001e0  vmmov mr0, r3
003dac  63014fde  loadli.w r2,  -4320(r30)
003db0  ab810000  lui r3, 8
003db4  b3900018  bfloat2float.rn r1, r1
003db8  33110118  bfloat2float.rn r2, r2
003dbc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003dc0  9f008fe3  addli r1, r30, -3648
003dc4  00a00000  mfence { lm }
003dc8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003dcc  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003dd0  9f100000  addli r1, zero, 1
003dd4  7e8000e0  vmmov mr0, r1
003dd8  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003ddc  e3005fde  loadli.w r1,  -4312(r30)
003de0  1f210000  addli r2, zero, 2
003de4  7e0001e0  vmmov mr0, r2
003de8  1f410000  addli r2, zero, 4
003dec  b3900018  bfloat2float.rn r1, r1
003df0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003df4  e3405fde  loadli.w r1,  -4308(r30)
003df8  7e0001e0  vmmov mr0, r2
003dfc  1f011000  addli r2, zero, 8
003e00  b3900018  bfloat2float.rn r1, r1
003e04  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e08  e3006fde  loadli.w r1,  -4304(r30)
003e0c  7e0001e0  vmmov mr0, r2
003e10  1f012000  addli r2, zero, 16
003e14  b3900018  bfloat2float.rn r1, r1
003e18  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e1c  e3406fde  loadli.w r1,  -4300(r30)
003e20  7e0001e0  vmmov mr0, r2
003e24  1f014000  addli r2, zero, 32
003e28  b3900018  bfloat2float.rn r1, r1
003e2c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e30  e3007fde  loadli.w r1,  -4296(r30)
003e34  7e0001e0  vmmov mr0, r2
003e38  1f018000  addli r2, zero, 64
003e3c  b3900018  bfloat2float.rn r1, r1
003e40  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e44  e3407fde  loadli.w r1,  -4292(r30)
003e48  7e0001e0  vmmov mr0, r2
003e4c  1f010001  addli r2, zero, 128
003e50  b3900018  bfloat2float.rn r1, r1
003e54  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e58  e3008fde  loadli.w r1,  -4288(r30)
003e5c  7e0001e0  vmmov mr0, r2
003e60  1f010002  addli r2, zero, 256
003e64  b3900018  bfloat2float.rn r1, r1
003e68  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e6c  e3408fde  loadli.w r1,  -4284(r30)
003e70  7e0001e0  vmmov mr0, r2
003e74  1f010004  addli r2, zero, 512
003e78  b3900018  bfloat2float.rn r1, r1
003e7c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e80  e3009fde  loadli.w r1,  -4280(r30)
003e84  7e0001e0  vmmov mr0, r2
003e88  1f010008  addli r2, zero, 1024
003e8c  b3900018  bfloat2float.rn r1, r1
003e90  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003e94  e3409fde  loadli.w r1,  -4276(r30)
003e98  7e0001e0  vmmov mr0, r2
003e9c  1f010020  addli r2, zero, 4096
003ea0  b3900018  bfloat2float.rn r1, r1
003ea4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ea8  e300afde  loadli.w r1,  -4272(r30)
003eac  7e0001e0  vmmov mr0, r2
003eb0  2b410000  lui r2, 4
003eb4  b3900018  bfloat2float.rn r1, r1
003eb8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003ebc  e340afde  loadli.w r1,  -4268(r30)
003ec0  b3900018  bfloat2float.rn r1, r1
003ec4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ec8  e300bfde  loadli.w r1,  -4264(r30)
003ecc  7e0001e0  vmmov mr0, r2
003ed0  b3900018  bfloat2float.rn r1, r1
003ed4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
003ed8  e300cfde  loadli.w r1,  -4256(r30)
003edc  b3900018  bfloat2float.rn r1, r1
003ee0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003ee4  e3008fe4  loadli.w r1,  -3520(r30)
003ee8  7e8001e0  vmmov mr0, r3
003eec  6341bfde  loadli.w r2,  -4260(r30)
003ef0  ab810000  lui r3, 8
003ef4  b3900018  bfloat2float.rn r1, r1
003ef8  33110118  bfloat2float.rn r2, r2
003efc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f00  9f008fe4  addli r1, r30, -3520
003f04  00a00000  mfence { lm }
003f08  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003f0c  12343002  vadd.s.mz vr8{mr1}, zero, vr3
003f10  9f100000  addli r1, zero, 1
003f14  7e8000e0  vmmov mr0, r1
003f18  6a248130  vor.u.mh vr8{mr0}, r2, vr8
003f1c  e340cfde  loadli.w r1,  -4252(r30)
003f20  1f210000  addli r2, zero, 2
003f24  7e0001e0  vmmov mr0, r2
003f28  1f410000  addli r2, zero, 4
003f2c  b3900018  bfloat2float.rn r1, r1
003f30  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f34  e300dfde  loadli.w r1,  -4248(r30)
003f38  7e0001e0  vmmov mr0, r2
003f3c  1f011000  addli r2, zero, 8
003f40  b3900018  bfloat2float.rn r1, r1
003f44  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f48  e340dfde  loadli.w r1,  -4244(r30)
003f4c  7e0001e0  vmmov mr0, r2
003f50  1f012000  addli r2, zero, 16
003f54  b3900018  bfloat2float.rn r1, r1
003f58  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f5c  e300efde  loadli.w r1,  -4240(r30)
003f60  7e0001e0  vmmov mr0, r2
003f64  1f014000  addli r2, zero, 32
003f68  b3900018  bfloat2float.rn r1, r1
003f6c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f70  e340efde  loadli.w r1,  -4236(r30)
003f74  7e0001e0  vmmov mr0, r2
003f78  1f018000  addli r2, zero, 64
003f7c  b3900018  bfloat2float.rn r1, r1
003f80  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f84  e300ffde  loadli.w r1,  -4232(r30)
003f88  7e0001e0  vmmov mr0, r2
003f8c  1f010001  addli r2, zero, 128
003f90  b3900018  bfloat2float.rn r1, r1
003f94  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003f98  e340ffde  loadli.w r1,  -4228(r30)
003f9c  7e0001e0  vmmov mr0, r2
003fa0  1f010002  addli r2, zero, 256
003fa4  b3900018  bfloat2float.rn r1, r1
003fa8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003fac  e3000fdf  loadli.w r1,  -4224(r30)
003fb0  7e0001e0  vmmov mr0, r2
003fb4  1f010004  addli r2, zero, 512
003fb8  b3900018  bfloat2float.rn r1, r1
003fbc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003fc0  e3400fdf  loadli.w r1,  -4220(r30)
003fc4  7e0001e0  vmmov mr0, r2
003fc8  1f010008  addli r2, zero, 1024
003fcc  b3900018  bfloat2float.rn r1, r1
003fd0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003fd4  e3001fdf  loadli.w r1,  -4216(r30)
003fd8  7e0001e0  vmmov mr0, r2
003fdc  1f010020  addli r2, zero, 4096
003fe0  b3900018  bfloat2float.rn r1, r1
003fe4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
003fe8  e3401fdf  loadli.w r1,  -4212(r30)
003fec  7e0001e0  vmmov mr0, r2
003ff0  2b410000  lui r2, 4
003ff4  b3900018  bfloat2float.rn r1, r1
003ff8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
003ffc  e3002fdf  loadli.w r1,  -4208(r30)
004000  b3900018  bfloat2float.rn r1, r1
004004  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004008  e3402fdf  loadli.w r1,  -4204(r30)
00400c  7e0001e0  vmmov mr0, r2
004010  b3900018  bfloat2float.rn r1, r1
004014  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
004018  e3403fdf  loadli.w r1,  -4196(r30)
00401c  b3900018  bfloat2float.rn r1, r1
004020  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004024  e3008fe5  loadli.w r1,  -3392(r30)
004028  7e8001e0  vmmov mr0, r3
00402c  63013fdf  loadli.w r2,  -4200(r30)
004030  ab810000  lui r3, 8
004034  b3900018  bfloat2float.rn r1, r1
004038  33110118  bfloat2float.rn r2, r2
00403c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004040  9f008fe5  addli r1, r30, -3392
004044  00a00000  mfence { lm }
004048  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00404c  12343002  vadd.s.mz vr8{mr1}, zero, vr3
004050  9f100000  addli r1, zero, 1
004054  7e8000e0  vmmov mr0, r1
004058  6a248130  vor.u.mh vr8{mr0}, r2, vr8
00405c  e3004fdf  loadli.w r1,  -4192(r30)
004060  1f210000  addli r2, zero, 2
004064  7e0001e0  vmmov mr0, r2
004068  1f410000  addli r2, zero, 4
00406c  b3900018  bfloat2float.rn r1, r1
004070  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004074  e3404fdf  loadli.w r1,  -4188(r30)
004078  7e0001e0  vmmov mr0, r2
00407c  1f011000  addli r2, zero, 8
004080  b3900018  bfloat2float.rn r1, r1
004084  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004088  e3005fdf  loadli.w r1,  -4184(r30)
00408c  7e0001e0  vmmov mr0, r2
004090  1f012000  addli r2, zero, 16
004094  b3900018  bfloat2float.rn r1, r1
004098  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00409c  e3405fdf  loadli.w r1,  -4180(r30)
0040a0  7e0001e0  vmmov mr0, r2
0040a4  1f014000  addli r2, zero, 32
0040a8  b3900018  bfloat2float.rn r1, r1
0040ac  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040b0  e3006fdf  loadli.w r1,  -4176(r30)
0040b4  7e0001e0  vmmov mr0, r2
0040b8  1f018000  addli r2, zero, 64
0040bc  b3900018  bfloat2float.rn r1, r1
0040c0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040c4  e3406fdf  loadli.w r1,  -4172(r30)
0040c8  7e0001e0  vmmov mr0, r2
0040cc  1f010001  addli r2, zero, 128
0040d0  b3900018  bfloat2float.rn r1, r1
0040d4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040d8  e3007fdf  loadli.w r1,  -4168(r30)
0040dc  7e0001e0  vmmov mr0, r2
0040e0  1f010002  addli r2, zero, 256
0040e4  b3900018  bfloat2float.rn r1, r1
0040e8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0040ec  e3407fdf  loadli.w r1,  -4164(r30)
0040f0  7e0001e0  vmmov mr0, r2
0040f4  1f010004  addli r2, zero, 512
0040f8  b3900018  bfloat2float.rn r1, r1
0040fc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004100  e3001fe0  loadli.w r1,  -4088(r30)
004104  7e0001e0  vmmov mr0, r2
004108  1f010008  addli r2, zero, 1024
00410c  b3900018  bfloat2float.rn r1, r1
004110  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004114  e3401fe0  loadli.w r1,  -4084(r30)
004118  7e0001e0  vmmov mr0, r2
00411c  1f010020  addli r2, zero, 4096
004120  b3900018  bfloat2float.rn r1, r1
004124  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004128  e3002fe0  loadli.w r1,  -4080(r30)
00412c  7e0001e0  vmmov mr0, r2
004130  2b410000  lui r2, 4
004134  b3900018  bfloat2float.rn r1, r1
004138  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00413c  e3402fe0  loadli.w r1,  -4076(r30)
004140  b3900018  bfloat2float.rn r1, r1
004144  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004148  e3003fe0  loadli.w r1,  -4072(r30)
00414c  7e0001e0  vmmov mr0, r2
004150  b3900018  bfloat2float.rn r1, r1
004154  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
004158  e3004fe0  loadli.w r1,  -4064(r30)
00415c  b3900018  bfloat2float.rn r1, r1
004160  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004164  e3008fe6  loadli.w r1,  -3264(r30)
004168  7e8001e0  vmmov mr0, r3
00416c  63413fe0  loadli.w r2,  -4068(r30)
004170  ab810000  lui r3, 8
004174  b3900018  bfloat2float.rn r1, r1
004178  33110118  bfloat2float.rn r2, r2
00417c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004180  9f008fe6  addli r1, r30, -3264
004184  00a00000  mfence { lm }
004188  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00418c  12343002  vadd.s.mz vr8{mr1}, zero, vr3
004190  9f100000  addli r1, zero, 1
004194  7e8000e0  vmmov mr0, r1
004198  6a248130  vor.u.mh vr8{mr0}, r2, vr8
00419c  e3404fe0  loadli.w r1,  -4060(r30)
0041a0  1f210000  addli r2, zero, 2
0041a4  7e0001e0  vmmov mr0, r2
0041a8  1f410000  addli r2, zero, 4
0041ac  b3900018  bfloat2float.rn r1, r1
0041b0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0041b4  e3005fe0  loadli.w r1,  -4056(r30)
0041b8  7e0001e0  vmmov mr0, r2
0041bc  1f011000  addli r2, zero, 8
0041c0  b3900018  bfloat2float.rn r1, r1
0041c4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0041c8  e3405fe0  loadli.w r1,  -4052(r30)
0041cc  7e0001e0  vmmov mr0, r2
0041d0  1f012000  addli r2, zero, 16
0041d4  b3900018  bfloat2float.rn r1, r1
0041d8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0041dc  e3006fe0  loadli.w r1,  -4048(r30)
0041e0  7e0001e0  vmmov mr0, r2
0041e4  1f014000  addli r2, zero, 32
0041e8  b3900018  bfloat2float.rn r1, r1
0041ec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0041f0  e3406fe0  loadli.w r1,  -4044(r30)
0041f4  7e0001e0  vmmov mr0, r2
0041f8  1f018000  addli r2, zero, 64
0041fc  b3900018  bfloat2float.rn r1, r1
004200  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004204  e3007fe0  loadli.w r1,  -4040(r30)
004208  7e0001e0  vmmov mr0, r2
00420c  1f010001  addli r2, zero, 128
004210  b3900018  bfloat2float.rn r1, r1
004214  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004218  e3407fe0  loadli.w r1,  -4036(r30)
00421c  7e0001e0  vmmov mr0, r2
004220  1f010002  addli r2, zero, 256
004224  b3900018  bfloat2float.rn r1, r1
004228  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00422c  e3007fe1  loadli.w r1,  -3912(r30)
004230  7e0001e0  vmmov mr0, r2
004234  1f010004  addli r2, zero, 512
004238  b3900018  bfloat2float.rn r1, r1
00423c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004240  e3407fe1  loadli.w r1,  -3908(r30)
004244  7e0001e0  vmmov mr0, r2
004248  1f010008  addli r2, zero, 1024
00424c  b3900018  bfloat2float.rn r1, r1
004250  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004254  e3008fe1  loadli.w r1,  -3904(r30)
004258  7e0001e0  vmmov mr0, r2
00425c  1f010020  addli r2, zero, 4096
004260  b3900018  bfloat2float.rn r1, r1
004264  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004268  e3408fe1  loadli.w r1,  -3900(r30)
00426c  7e0001e0  vmmov mr0, r2
004270  2b410000  lui r2, 4
004274  b3900018  bfloat2float.rn r1, r1
004278  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00427c  e3009fe1  loadli.w r1,  -3896(r30)
004280  b3900018  bfloat2float.rn r1, r1
004284  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004288  e3409fe1  loadli.w r1,  -3892(r30)
00428c  7e0001e0  vmmov mr0, r2
004290  b3900018  bfloat2float.rn r1, r1
004294  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
004298  e340afe1  loadli.w r1,  -3884(r30)
00429c  b3900018  bfloat2float.rn r1, r1
0042a0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0042a4  e3008fe7  loadli.w r1,  -3136(r30)
0042a8  7e8001e0  vmmov mr0, r3
0042ac  6301afe1  loadli.w r2,  -3888(r30)
0042b0  ab810000  lui r3, 8
0042b4  b3900018  bfloat2float.rn r1, r1
0042b8  33110118  bfloat2float.rn r2, r2
0042bc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0042c0  9f008fe7  addli r1, r30, -3136
0042c4  00a00000  mfence { lm }
0042c8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0042cc  12343002  vadd.s.mz vr8{mr1}, zero, vr3
0042d0  9f100000  addli r1, zero, 1
0042d4  7e8000e0  vmmov mr0, r1
0042d8  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0042dc  e300bfe1  loadli.w r1,  -3880(r30)
0042e0  1f210000  addli r2, zero, 2
0042e4  7e0001e0  vmmov mr0, r2
0042e8  1f410000  addli r2, zero, 4
0042ec  b3900018  bfloat2float.rn r1, r1
0042f0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0042f4  e340bfe1  loadli.w r1,  -3876(r30)
0042f8  7e0001e0  vmmov mr0, r2
0042fc  1f011000  addli r2, zero, 8
004300  b3900018  bfloat2float.rn r1, r1
004304  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004308  e300cfe1  loadli.w r1,  -3872(r30)
00430c  7e0001e0  vmmov mr0, r2
004310  1f012000  addli r2, zero, 16
004314  b3900018  bfloat2float.rn r1, r1
004318  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00431c  e340cfe1  loadli.w r1,  -3868(r30)
004320  7e0001e0  vmmov mr0, r2
004324  1f014000  addli r2, zero, 32
004328  b3900018  bfloat2float.rn r1, r1
00432c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004330  e300dfe1  loadli.w r1,  -3864(r30)
004334  7e0001e0  vmmov mr0, r2
004338  1f018000  addli r2, zero, 64
00433c  b3900018  bfloat2float.rn r1, r1
004340  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004344  e340dfe1  loadli.w r1,  -3860(r30)
004348  7e0001e0  vmmov mr0, r2
00434c  1f010001  addli r2, zero, 128
004350  b3900018  bfloat2float.rn r1, r1
004354  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004358  e300efe1  loadli.w r1,  -3856(r30)
00435c  7e0001e0  vmmov mr0, r2
004360  1f010002  addli r2, zero, 256
004364  b3900018  bfloat2float.rn r1, r1
004368  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00436c  e340efe1  loadli.w r1,  -3852(r30)
004370  7e0001e0  vmmov mr0, r2
004374  1f010004  addli r2, zero, 512
004378  b3900018  bfloat2float.rn r1, r1
00437c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004380  e300ffe1  loadli.w r1,  -3848(r30)
004384  7e0001e0  vmmov mr0, r2
004388  1f010008  addli r2, zero, 1024
00438c  b3900018  bfloat2float.rn r1, r1
004390  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004394  e340ffe1  loadli.w r1,  -3844(r30)
004398  7e0001e0  vmmov mr0, r2
00439c  1f010020  addli r2, zero, 4096
0043a0  b3900018  bfloat2float.rn r1, r1
0043a4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0043a8  e3000fe2  loadli.w r1,  -3840(r30)
0043ac  7e0001e0  vmmov mr0, r2
0043b0  2b410000  lui r2, 4
0043b4  b3900018  bfloat2float.rn r1, r1
0043b8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0043bc  e3400fe2  loadli.w r1,  -3836(r30)
0043c0  b3900018  bfloat2float.rn r1, r1
0043c4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0043c8  e3001fe2  loadli.w r1,  -3832(r30)
0043cc  7e0001e0  vmmov mr0, r2
0043d0  b3900018  bfloat2float.rn r1, r1
0043d4  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0043d8  e3002fe2  loadli.w r1,  -3824(r30)
0043dc  b3900018  bfloat2float.rn r1, r1
0043e0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0043e4  e3008fe8  loadli.w r1,  -3008(r30)
0043e8  7e8001e0  vmmov mr0, r3
0043ec  63411fe2  loadli.w r2,  -3828(r30)
0043f0  ab810000  lui r3, 8
0043f4  b3900018  bfloat2float.rn r1, r1
0043f8  33110118  bfloat2float.rn r2, r2
0043fc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004400  9f008fe8  addli r1, r30, -3008
004404  00a00000  mfence { lm }
004408  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00440c  12343002  vadd.s.mz vr8{mr1}, zero, vr3
004410  9f100000  addli r1, zero, 1
004414  7e8000e0  vmmov mr0, r1
004418  6a248130  vor.u.mh vr8{mr0}, r2, vr8
00441c  e3402fe2  loadli.w r1,  -3820(r30)
004420  1f210000  addli r2, zero, 2
004424  7e0001e0  vmmov mr0, r2
004428  1f410000  addli r2, zero, 4
00442c  b3900018  bfloat2float.rn r1, r1
004430  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004434  e3403fe2  loadli.w r1,  -3812(r30)
004438  7e0001e0  vmmov mr0, r2
00443c  1f011000  addli r2, zero, 8
004440  b3900018  bfloat2float.rn r1, r1
004444  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004448  e3004fe2  loadli.w r1,  -3808(r30)
00444c  7e0001e0  vmmov mr0, r2
004450  1f012000  addli r2, zero, 16
004454  b3900018  bfloat2float.rn r1, r1
004458  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00445c  e3404fe2  loadli.w r1,  -3804(r30)
004460  7e0001e0  vmmov mr0, r2
004464  1f014000  addli r2, zero, 32
004468  b3900018  bfloat2float.rn r1, r1
00446c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004470  e3005fe2  loadli.w r1,  -3800(r30)
004474  7e0001e0  vmmov mr0, r2
004478  1f018000  addli r2, zero, 64
00447c  b3900018  bfloat2float.rn r1, r1
004480  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004484  e3006fe2  loadli.w r1,  -3792(r30)
004488  7e0001e0  vmmov mr0, r2
00448c  1f010001  addli r2, zero, 128
004490  b3900018  bfloat2float.rn r1, r1
004494  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004498  e3406fe2  loadli.w r1,  -3788(r30)
00449c  7e0001e0  vmmov mr0, r2
0044a0  1f010002  addli r2, zero, 256
0044a4  b3900018  bfloat2float.rn r1, r1
0044a8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0044ac  e3007fe2  loadli.w r1,  -3784(r30)
0044b0  7e0001e0  vmmov mr0, r2
0044b4  1f010004  addli r2, zero, 512
0044b8  b3900018  bfloat2float.rn r1, r1
0044bc  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0044c0  e3407fe2  loadli.w r1,  -3780(r30)
0044c4  7e0001e0  vmmov mr0, r2
0044c8  1f010008  addli r2, zero, 1024
0044cc  b3900018  bfloat2float.rn r1, r1
0044d0  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0044d4  e3008fe2  loadli.w r1,  -3776(r30)
0044d8  7e0001e0  vmmov mr0, r2
0044dc  1f010020  addli r2, zero, 4096
0044e0  b3900018  bfloat2float.rn r1, r1
0044e4  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0044e8  e3408fe2  loadli.w r1,  -3772(r30)
0044ec  7e0001e0  vmmov mr0, r2
0044f0  2b410000  lui r2, 4
0044f4  b3900018  bfloat2float.rn r1, r1
0044f8  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0044fc  e3009fe2  loadli.w r1,  -3768(r30)
004500  b3900018  bfloat2float.rn r1, r1
004504  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004508  e3409fe2  loadli.w r1,  -3764(r30)
00450c  7e0001e0  vmmov mr0, r2
004510  b3900018  bfloat2float.rn r1, r1
004514  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
004518  e340afe2  loadli.w r1,  -3756(r30)
00451c  b3900018  bfloat2float.rn r1, r1
004520  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004524  e3000fea  loadli.w r1,  -2816(r30)
004528  7e8001e0  vmmov mr0, r3
00452c  6301afe2  loadli.w r2,  -3760(r30)
004530  b3900018  bfloat2float.rn r1, r1
004534  33110118  bfloat2float.rn r2, r2
004538  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00453c  9f000fea  addli r1, r30, -2816
004540  00a00000  mfence { lm }
004544  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
004548  12343002  vadd.s.mz vr8{mr1}, zero, vr3
00454c  9f100000  addli r1, zero, 1
004550  7e8000e0  vmmov mr0, r1
004554  6a248130  vor.u.mh vr8{mr0}, r2, vr8
004558  e300bfe2  loadli.w r1,  -3752(r30)
00455c  1f210000  addli r2, zero, 2
004560  7e0001e0  vmmov mr0, r2
004564  1f012000  addli r2, zero, 16
004568  b3900018  bfloat2float.rn r1, r1
00456c  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004570  9f400000  addli r1, zero, 4
004574  7e8000e0  vmmov mr0, r1
004578  e340bfe2  loadli.w r1,  -3748(r30)
00457c  b3900018  bfloat2float.rn r1, r1
004580  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004584  9f001000  addli r1, zero, 8
004588  fe8100e0  vmmov mr3, r1
00458c  e300cfe2  loadli.w r1,  -3744(r30)
004590  b3900018  bfloat2float.rn r1, r1
004594  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
004598  9f008000  addli r1, zero, 64
00459c  fe0101e0  vmmov mr3, r2
0045a0  1f010001  addli r2, zero, 128
0045a4  7e8000e0  vmmov mr0, r1
0045a8  9f004000  addli r1, zero, 32
0045ac  7e8100e0  vmmov mr2, r1
0045b0  e340cfe2  loadli.w r1,  -3740(r30)
0045b4  b3900018  bfloat2float.rn r1, r1
0045b8  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0045bc  e300dfe2  loadli.w r1,  -3736(r30)
0045c0  b3900018  bfloat2float.rn r1, r1
0045c4  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0045c8  e3003fe2  loadli.w r1,  -3816(r30)
0045cc  7e0101e0  vmmov mr2, r2
0045d0  1f010008  addli r2, zero, 1024
0045d4  b3900018  bfloat2float.rn r1, r1
0045d8  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0045dc  9f000002  addli r1, zero, 256
0045e0  7e8000e0  vmmov mr0, r1
0045e4  e3405fe2  loadli.w r1,  -3796(r30)
0045e8  b3900018  bfloat2float.rn r1, r1
0045ec  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0045f0  e340dfe2  loadli.w r1,  -3732(r30)
0045f4  7e0101e0  vmmov mr2, r2
0045f8  2b010080  lui r2, 524288
0045fc  b3900018  bfloat2float.rn r1, r1
004600  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004604  9f000004  addli r1, zero, 512
004608  7e8000e0  vmmov mr0, r1
00460c  e300efe2  loadli.w r1,  -3728(r30)
004610  b3900018  bfloat2float.rn r1, r1
004614  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
004618  9f000020  addli r1, zero, 4096
00461c  7e8000e0  vmmov mr0, r1
004620  e340efe2  loadli.w r1,  -3724(r30)
004624  b3900018  bfloat2float.rn r1, r1
004628  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
00462c  e3018fd8  loadli.w r3,  -5056(r30)
004630  e300ffe2  loadli.w r1,  -3720(r30)
004634  17a72100  xor r14, r3, r2
004638  1f010010  addli r2, zero, 2048
00463c  b3900018  bfloat2float.rn r1, r1
004640  92149702  vadd.f.mz.rn vr9{mr1}, r14, vr9
004644  7e0101e0  vmmov mr2, r2
004648  1f012000  addli r2, zero, 16
00464c  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
004650  e3000ff3  loadli.w r1,  -1664(r30)
004654  8a949002  vmul.f.mz.rn vr9{mr1}, r1, vr9
004658  a693b402  vmac.f.mz.rn vr7{mr1}, vr9, vr11
00465c  e69503c0  vabs.f vr11, vr7
004660  e340ffe2  loadli.w r1,  -3716(r30)
004664  ea243122  vor.u.mz vr9{mr1}, r2, vr3
004668  2b01807f  lui r2, 522240
00466c  ea213122  vor.u.mz vr3{mr1}, r2, vr3
004670  1f018ff2  addli r2, r30, -1728
004674  b3900018  bfloat2float.rn r1, r1
004678  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00467c  ab800000  lui r1, 8
004680  7e8000e0  vmmov mr0, r1
004684  e3008ff2  loadli.w r1,  -1728(r30)
004688  00a00000  mfence { lm }
00468c  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
004690  1f010040  addli r2, zero, 8192
004694  eeb474c2  vsrl.s.mz vr9{mr1}, vr9, vr7
004698  7e0101e0  vmmov mr2, r2
00469c  1f110000  addli r2, zero, 1
0046a0  b3900018  bfloat2float.rn r1, r1
0046a4  ea349102  vand.s.mz vr9{mr1}, r2, vr9
0046a8  1f018ff0  addli r2, r30, -1984
0046ac  6aa48034  vor.u.mh vr8{mr2}, r1, vr8
0046b0  e3008ff0  loadli.w r1,  -1984(r30)
0046b4  00a00000  mfence { lm }
0046b8  76a1b142  vlt.u.mz mr2{mr1}, vr3, vr11
0046bc  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0046c0  2b410000  lui r2, 4
0046c4  7e0201a0  vmmov r4, mr2
0046c8  b3900018  bfloat2float.rn r1, r1
0046cc  fe0101e0  vmmov mr3, r2
0046d0  96b49302  vadd.s.mz vr9{mr1}, vr7, vr9
0046d4  2b014000  lui r2, 1024
0046d8  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
0046dc  e3000feb  loadli.w r1,  -2688(r30)
0046e0  ea337122  vor.s.mz vr7{mr1}, r2, vr7
0046e4  92359902  vadd.s.mz vr11{mr1}, r18, vr9
0046e8  b3900018  bfloat2float.rn r1, r1
0046ec  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
0046f0  9f000feb  addli r1, r30, -2688
0046f4  00a00000  mfence { lm }
0046f8  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0046fc  9b40f200  srli r1, r4, 15
004700  9b801000  andi r1, r1, 1
004704  3bb00000  bneq r1, zero, 12
004708  fab0f540  vextracti.s r1, 15(vr11)
00470c  5b010000  j 8
004710  fab0f340  vextracti.s r1, 15(vr7)
004714  1b41e200  srli r2, r4, 14
004718  9f110000  addli r3, zero, 1
00471c  9f091000  addli r19, zero, 8
004720  9f0a8ff3  addli r21, r30, -1600
004724  1f6b3000  addli r22, zero, 30
004728  9f4b3000  addli r23, zero, 28
00472c  1f2c3000  addli r24, zero, 26
004730  9f0c3000  addli r25, zero, 24
004734  1f6d2000  addli r26, zero, 22
004738  9f4d2000  addli r27, zero, 20
00473c  1f2e2000  addli r28, zero, 18
004740  1b011100  andi r2, r2, 1
004744  7e8101e0  vmmov mr2, r3
004748  3b300100  bneq r2, zero, 12
00474c  7ab1e540  vextracti.s r2, 14(vr11)
004750  5b010000  j 8
004754  7ab1e340  vextracti.s r2, 14(vr7)
004758  9b41d200  srli r3, r4, 13
00475c  9b811100  andi r3, r3, 1
004760  3bb00100  bneq r3, zero, 12
004764  fab1d540  vextracti.s r3, 13(vr11)
004768  5b010000  j 8
00476c  fab1d340  vextracti.s r3, 13(vr7)
004770  9b42c200  srli r5, r4, 12
004774  9b821200  andi r5, r5, 1
004778  3bb00200  bneq r5, zero, 12
00477c  fab2c540  vextracti.s r5, 12(vr11)
004780  5b010000  j 8
004784  fab2c340  vextracti.s r5, 12(vr7)
004788  1b43b200  srli r6, r4, 11
00478c  1b031300  andi r6, r6, 1
004790  3b300300  bneq r6, zero, 12
004794  7ab3b540  vextracti.s r6, 11(vr11)
004798  5b010000  j 8
00479c  7ab3b340  vextracti.s r6, 11(vr7)
0047a0  9b43a200  srli r7, r4, 10
0047a4  9b831300  andi r7, r7, 1
0047a8  3bb00300  bneq r7, zero, 12
0047ac  fab3a540  vextracti.s r7, 10(vr11)
0047b0  5b010000  j 8
0047b4  fab3a340  vextracti.s r7, 10(vr7)
0047b8  1b449200  srli r8, r4, 9
0047bc  1b041400  andi r8, r8, 1
0047c0  3b300400  bneq r8, zero, 12
0047c4  7ab49540  vextracti.s r8, 9(vr11)
0047c8  5b010000  j 8
0047cc  7ab49340  vextracti.s r8, 9(vr7)
0047d0  9b448200  srli r9, r4, 8
0047d4  9b841400  andi r9, r9, 1
0047d8  3bb00400  bneq r9, zero, 12
0047dc  fab48540  vextracti.s r9, 8(vr11)
0047e0  5b010000  j 8
0047e4  fab48340  vextracti.s r9, 8(vr7)
0047e8  1b457200  srli r10, r4, 7
0047ec  1b051500  andi r10, r10, 1
0047f0  3b300500  bneq r10, zero, 12
0047f4  7ab57540  vextracti.s r10, 7(vr11)
0047f8  5b010000  j 8
0047fc  7ab57340  vextracti.s r10, 7(vr7)
004800  9b456200  srli r11, r4, 6
004804  9b851500  andi r11, r11, 1
004808  3bb00500  bneq r11, zero, 12
00480c  fab56540  vextracti.s r11, 6(vr11)
004810  5b010000  j 8
004814  fab56340  vextracti.s r11, 6(vr7)
004818  1b465200  srli r12, r4, 5
00481c  1b061600  andi r12, r12, 1
004820  3b300600  bneq r12, zero, 12
004824  7ab65540  vextracti.s r12, 5(vr11)
004828  5b010000  j 8
00482c  7ab65340  vextracti.s r12, 5(vr7)
004830  9b464200  srli r13, r4, 4
004834  9b861600  andi r13, r13, 1
004838  3bb00600  bneq r13, zero, 12
00483c  fab64540  vextracti.s r13, 4(vr11)
004840  5b010000  j 8
004844  fab64340  vextracti.s r13, 4(vr7)
004848  9b473200  srli r15, r4, 3
00484c  9b871700  andi r15, r15, 1
004850  3bb00700  bneq r15, zero, 12
004854  fab73540  vextracti.s r15, 3(vr11)
004858  5b010000  j 8
00485c  fab73340  vextracti.s r15, 3(vr7)
004860  1b482200  srli r16, r4, 2
004864  1b081800  andi r16, r16, 1
004868  3b300800  bneq r16, zero, 12
00486c  7ab82540  vextracti.s r16, 2(vr11)
004870  5b010000  j 8
004874  7ab82340  vextracti.s r16, 2(vr7)
004878  9b481200  srli r17, r4, 1
00487c  9b881800  andi r17, r17, 1
004880  3bb00800  bneq r17, zero, 12
004884  fab81540  vextracti.s r17, 1(vr11)
004888  5b010000  j 8
00488c  fab81340  vextracti.s r17, 1(vr7)
004890  1f0a8ff1  addli r20, r30, -1856
004894  1b021200  andi r4, r4, 1
004898  42140a02  vload_mask16.mz vr8{mr1}, 0(r20)
00489c  630a0ff3  loadli.w r20,  -1664(r30)
0048a0  664004a0  vmerge_h.hf vr0, vr8, vr0
0048a4  12100702  vadd.f.mz.rn vr0{mr1}, r14, vr0
0048a8  8a140a02  vmul.f.mz.rn vr9{mr1}, r20, vr0
0048ac  3b300200  bneq r4, zero, 12
0048b0  7ab20540  vextracti.s r4, 0(vr11)
0048b4  5b010000  j 8
0048b8  7ab20340  vextracti.s r4, 0(vr7)
0048bc  1f1a0000  addli r20, zero, 1
0048c0  1f008ff1  addli zero, r30, -1856
0048c4  a6904402  vmac.f.mz.rn vr1{mr1}, vr9, vr4
0048c8  e69400c0  vabs.f vr9, vr1
0048cc  c2150002  vload_mask16.mz vr11{mr1}, 0(zero)
0048d0  17200000  xor zero, zero, zero
0048d4  9233b002  vadd.s.mz vr7{mr1}, zero, vr11
0048d8  1230b002  vadd.s.mz vr0{mr1}, zero, vr11
0048dc  ea237234  vor.u.mh vr7{mr2}, r4, vr7
0048e0  1f220000  addli r4, zero, 2
0048e4  fe0102e0  vmmov mr3, r4
0048e8  1f420000  addli r4, zero, 4
0048ec  eaa37836  vor.u.mh vr7{mr3}, r17, vr7
0048f0  7e0002e0  vmmov mr0, r4
0048f4  1f021000  addli r4, zero, 8
0048f8  7e0102e0  vmmov mr2, r4
0048fc  1f022000  addli r4, zero, 16
004900  ea237830  vor.u.mh vr7{mr0}, r16, vr7
004904  eaa37734  vor.u.mh vr7{mr2}, r15, vr7
004908  7e0102e0  vmmov mr2, r4
00490c  1f024000  addli r4, zero, 32
004910  fe0102e0  vmmov mr3, r4
004914  1f028000  addli r4, zero, 64
004918  eaa37634  vor.u.mh vr7{mr2}, r13, vr7
00491c  7e0102e0  vmmov mr2, r4
004920  1f020001  addli r4, zero, 128
004924  ea237636  vor.u.mh vr7{mr3}, r12, vr7
004928  eaa37534  vor.u.mh vr7{mr2}, r11, vr7
00492c  7e0102e0  vmmov mr2, r4
004930  1f020002  addli r4, zero, 256
004934  ea237534  vor.u.mh vr7{mr2}, r10, vr7
004938  7e0102e0  vmmov mr2, r4
00493c  1f020004  addli r4, zero, 512
004940  eaa37434  vor.u.mh vr7{mr2}, r9, vr7
004944  7e0102e0  vmmov mr2, r4
004948  1f020008  addli r4, zero, 1024
00494c  ea237434  vor.u.mh vr7{mr2}, r8, vr7
004950  7e0102e0  vmmov mr2, r4
004954  1f020010  addli r4, zero, 2048
004958  eaa37334  vor.u.mh vr7{mr2}, r7, vr7
00495c  7e0102e0  vmmov mr2, r4
004960  1f020020  addli r4, zero, 4096
004964  ea237334  vor.u.mh vr7{mr2}, r6, vr7
004968  7e0102e0  vmmov mr2, r4
00496c  1f020040  addli r4, zero, 8192
004970  eaa37234  vor.u.mh vr7{mr2}, r5, vr7
004974  7e0102e0  vmmov mr2, r4
004978  eaa37134  vor.u.mh vr7{mr2}, r3, vr7
00497c  ab410000  lui r3, 4
004980  7e8101e0  vmmov mr2, r3
004984  ea237134  vor.u.mh vr7{mr2}, r2, vr7
004988  2b810000  lui r2, 8
00498c  fe0101e0  vmmov mr3, r2
004990  1f011000  addli r2, zero, 8
004994  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
004998  9f100000  addli r1, zero, 1
00499c  fe8100e0  vmmov mr3, r1
0049a0  9f200000  addli r1, zero, 2
0049a4  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
0049a8  fe8100e0  vmmov mr3, r1
0049ac  9f200000  addli r1, zero, 2
0049b0  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
0049b4  6a400030  vor.hf.mh vr0{mr0}, zero, vr0
0049b8  7e0001e0  vmmov mr0, r2
0049bc  1f014000  addli r2, zero, 32
0049c0  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0049c4  9f002000  addli r1, zero, 16
0049c8  fe8100e0  vmmov mr3, r1
0049cc  9f400000  addli r1, zero, 4
0049d0  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
0049d4  fe0101e0  vmmov mr3, r2
0049d8  1f010001  addli r2, zero, 128
0049dc  6ac00036  vor.hf.mh vr0{mr3}, r1, vr0
0049e0  9f008000  addli r1, zero, 64
0049e4  fe8100e0  vmmov mr3, r1
0049e8  9f600000  addli r1, zero, 6
0049ec  7e8001c0  vmmov mr0, mr3
0049f0  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
0049f4  fe0101e0  vmmov mr3, r2
0049f8  1f010010  addli r2, zero, 2048
0049fc  6ac00036  vor.hf.mh vr0{mr3}, r1, vr0
004a00  9f000002  addli r1, zero, 256
004a04  fe8100e0  vmmov mr3, r1
004a08  9f000004  addli r1, zero, 512
004a0c  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
004a10  fe8100e0  vmmov mr3, r1
004a14  9f000008  addli r1, zero, 1024
004a18  6ac00936  vor.hf.mh vr0{mr3}, r19, vr0
004a1c  fe8100e0  vmmov mr3, r1
004a20  9f201000  addli r1, zero, 10
004a24  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
004a28  fe0101e0  vmmov mr3, r2
004a2c  1f010040  addli r2, zero, 8192
004a30  6ac00036  vor.hf.mh vr0{mr3}, r1, vr0
004a34  9f000020  addli r1, zero, 4096
004a38  fe8100e0  vmmov mr3, r1
004a3c  9f401000  addli r1, zero, 12
004a40  6a400036  vor.hf.mh vr0{mr3}, zero, vr0
004a44  fe0101e0  vmmov mr3, r2
004a48  2b810000  lui r2, 8
004a4c  6ac00036  vor.hf.mh vr0{mr3}, r1, vr0
004a50  9f601000  addli r1, zero, 14
004a54  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004a58  7e0101e0  vmmov mr2, r2
004a5c  2b010200  lui r2, 32
004a60  6ac00034  vor.hf.mh vr0{mr2}, r1, vr0
004a64  ab000100  lui r1, 16
004a68  7e8100e0  vmmov mr2, r1
004a6c  9f002000  addli r1, zero, 16
004a70  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004a74  7e0101e0  vmmov mr2, r2
004a78  2b014000  lui r2, 1024
004a7c  6ac00034  vor.hf.mh vr0{mr2}, r1, vr0
004a80  ab000400  lui r1, 64
004a84  7e8100e0  vmmov mr2, r1
004a88  ab000800  lui r1, 128
004a8c  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004a90  7e8100e0  vmmov mr2, r1
004a94  ab001000  lui r1, 256
004a98  6a400e34  vor.hf.mh vr0{mr2}, r28, vr0
004a9c  7e8100e0  vmmov mr2, r1
004aa0  ab002000  lui r1, 512
004aa4  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004aa8  7e8100e0  vmmov mr2, r1
004aac  ab004000  lui r1, 1024
004ab0  6ac00d34  vor.hf.mh vr0{mr2}, r27, vr0
004ab4  7e8100e0  vmmov mr2, r1
004ab8  ab008000  lui r1, 2048
004abc  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004ac0  7e8100e0  vmmov mr2, r1
004ac4  ab000001  lui r1, 4096
004ac8  6a400d34  vor.hf.mh vr0{mr2}, r26, vr0
004acc  7e8100e0  vmmov mr2, r1
004ad0  ab000002  lui r1, 8192
004ad4  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004ad8  7e8100e0  vmmov mr2, r1
004adc  ab000004  lui r1, 16384
004ae0  6ac00c34  vor.hf.mh vr0{mr2}, r25, vr0
004ae4  7e8100e0  vmmov mr2, r1
004ae8  ab000008  lui r1, 32768
004aec  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004af0  7e8100e0  vmmov mr2, r1
004af4  9f008ff2  addli r1, r30, -1728
004af8  6a400c34  vor.hf.mh vr0{mr2}, r24, vr0
004afc  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
004b00  ab000010  lui r1, 65536
004b04  7e8100e0  vmmov mr2, r1
004b08  ab000020  lui r1, 131072
004b0c  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004b10  7e8100e0  vmmov mr2, r1
004b14  ab000040  lui r1, 262144
004b18  6eb211c2  vsrl.s.mz vr4{mr1}, vr3, vr1
004b1c  6ac00b34  vor.hf.mh vr0{mr2}, r23, vr0
004b20  7e8100e0  vmmov mr2, r1
004b24  9f008ff0  addli r1, r30, -1984
004b28  6a324a02  vand.s.mz vr4{mr1}, r20, vr4
004b2c  6a400034  vor.hf.mh vr0{mr2}, zero, vr0
004b30  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
004b34  ab000080  lui r1, 524288
004b38  16b24002  vadd.s.mz vr4{mr1}, vr1, vr4
004b3c  ea301122  vor.s.mz vr1{mr1}, r2, vr1
004b40  2ba1aaaa  lui r2, 699050
004b44  1f215115  addli r2, r2, 2730
004b48  76a19142  vlt.u.mz mr2{mr1}, vr3, vr9
004b4c  12324902  vadd.s.mz vr4{mr1}, r18, vr4
004b50  fe0201a0  vmmov r5, mr2
004b54  7e8100e0  vmmov mr2, r1
004b58  9bc0f200  srli r1, r5, 15
004b5c  6a400b34  vor.hf.mh vr0{mr2}, r22, vr0
004b60  7e0101e0  vmmov mr2, r2
004b64  9b801000  andi r1, r1, 1
004b68  62c07a14  vscatter.mh vr7{mr2}, vr0{r21}
004b6c  3bb00000  bneq r1, zero, 12
004b70  fa30f240  vextracti.s r1, 15(vr4)
004b74  5b010000  j 8
004b78  fab0f040  vextracti.s r1, 15(vr1)
004b7c  1f010fec  addli r2, r30, -2560
004b80  9f110000  addli r3, zero, 1
004b84  c2140102  vload_mask16.mz vr9{mr1}, 0(r2)
004b88  1f010fe9  addli r2, r30, -2944
004b8c  7e8101e0  vmmov mr2, r3
004b90  c2110102  vload_mask16.mz vr3{mr1}, 0(r2)
004b94  1bc1e200  srli r2, r5, 14
004b98  fe0100c0  vmmov mr3, mr0
004b9c  1b011100  andi r2, r2, 1
004ba0  3b300100  bneq r2, zero, 12
004ba4  7a31e240  vextracti.s r2, 14(vr4)
004ba8  5b010000  j 8
004bac  7ab1e040  vextracti.s r2, 14(vr1)
004bb0  9f410000  addli r3, zero, 4
004bb4  7e8001e0  vmmov mr0, r3
004bb8  9bc1d200  srli r3, r5, 13
004bbc  9b811100  andi r3, r3, 1
004bc0  3bb00100  bneq r3, zero, 12
004bc4  fa31d240  vextracti.s r3, 13(vr4)
004bc8  5b010000  j 8
004bcc  fab1d040  vextracti.s r3, 13(vr1)
004bd0  1bc2c200  srli r4, r5, 12
004bd4  1b021200  andi r4, r4, 1
004bd8  3b300200  bneq r4, zero, 12
004bdc  7a32c240  vextracti.s r4, 12(vr4)
004be0  5b010000  j 8
004be4  7ab2c040  vextracti.s r4, 12(vr1)
004be8  1bc3b200  srli r6, r5, 11
004bec  1b031300  andi r6, r6, 1
004bf0  3b300300  bneq r6, zero, 12
004bf4  7a33b240  vextracti.s r6, 11(vr4)
004bf8  5b010000  j 8
004bfc  7ab3b040  vextracti.s r6, 11(vr1)
004c00  9bc3a200  srli r7, r5, 10
004c04  9b831300  andi r7, r7, 1
004c08  3bb00300  bneq r7, zero, 12
004c0c  fa33a240  vextracti.s r7, 10(vr4)
004c10  5b010000  j 8
004c14  fab3a040  vextracti.s r7, 10(vr1)
004c18  1bc49200  srli r8, r5, 9
004c1c  1b041400  andi r8, r8, 1
004c20  3b300400  bneq r8, zero, 12
004c24  7a349240  vextracti.s r8, 9(vr4)
004c28  5b010000  j 8
004c2c  7ab49040  vextracti.s r8, 9(vr1)
004c30  9bc48200  srli r9, r5, 8
004c34  9b841400  andi r9, r9, 1
004c38  3bb00400  bneq r9, zero, 12
004c3c  fa348240  vextracti.s r9, 8(vr4)
004c40  5b010000  j 8
004c44  fab48040  vextracti.s r9, 8(vr1)
004c48  1bc57200  srli r10, r5, 7
004c4c  1b051500  andi r10, r10, 1
004c50  3b300500  bneq r10, zero, 12
004c54  7a357240  vextracti.s r10, 7(vr4)
004c58  5b010000  j 8
004c5c  7ab57040  vextracti.s r10, 7(vr1)
004c60  9bc56200  srli r11, r5, 6
004c64  9b851500  andi r11, r11, 1
004c68  3bb00500  bneq r11, zero, 12
004c6c  fa356240  vextracti.s r11, 6(vr4)
004c70  5b010000  j 8
004c74  fab56040  vextracti.s r11, 6(vr1)
004c78  1bc65200  srli r12, r5, 5
004c7c  1b061600  andi r12, r12, 1
004c80  3b300600  bneq r12, zero, 12
004c84  7a365240  vextracti.s r12, 5(vr4)
004c88  5b010000  j 8
004c8c  7ab65040  vextracti.s r12, 5(vr1)
004c90  9bc64200  srli r13, r5, 4
004c94  9b861600  andi r13, r13, 1
004c98  3bb00600  bneq r13, zero, 12
004c9c  fa364240  vextracti.s r13, 4(vr4)
004ca0  5b010000  j 8
004ca4  fab64040  vextracti.s r13, 4(vr1)
004ca8  9bc73200  srli r15, r5, 3
004cac  9b871700  andi r15, r15, 1
004cb0  3bb00700  bneq r15, zero, 12
004cb4  fa373240  vextracti.s r15, 3(vr4)
004cb8  5b010000  j 8
004cbc  fab73040  vextracti.s r15, 3(vr1)
004cc0  1bc82200  srli r16, r5, 2
004cc4  1b081800  andi r16, r16, 1
004cc8  3b300800  bneq r16, zero, 12
004ccc  7a382240  vextracti.s r16, 2(vr4)
004cd0  5b010000  j 8
004cd4  7ab82040  vextracti.s r16, 2(vr1)
004cd8  9bc81200  srli r17, r5, 1
004cdc  9b881800  andi r17, r17, 1
004ce0  3be00800  bneq r17, zero, 24
004ce4  fa381240  vextracti.s r17, 1(vr4)
004ce8  9b821200  andi r5, r5, 1
004cec  37e00200  beq r5, zero, 24
004cf0  fab20040  vextracti.s r5, 0(vr1)
004cf4  db020000  j 20
004cf8  fab81040  vextracti.s r17, 1(vr1)
004cfc  9b821200  andi r5, r5, 1
004d00  bbcf02fe  bneq r5, zero, -16
004d04  fa320240  vextracti.s r5, 0(vr4)
004d08  9233b002  vadd.s.mz vr7{mr1}, zero, vr11
004d0c  e6c03580  vmerge_l.hf vr1, vr11, vr3
004d10  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
004d14  eaa37234  vor.u.mh vr7{mr2}, r5, vr7
004d18  9f220000  addli r5, zero, 2
004d1c  7e8102e0  vmmov mr2, r5
004d20  9f021000  addli r5, zero, 8
004d24  eaa37834  vor.u.mh vr7{mr2}, r17, vr7
004d28  7e8102e0  vmmov mr2, r5
004d2c  9f022000  addli r5, zero, 16
004d30  ea237830  vor.u.mh vr7{mr0}, r16, vr7
004d34  eaa37734  vor.u.mh vr7{mr2}, r15, vr7
004d38  7e8102e0  vmmov mr2, r5
004d3c  9f024000  addli r5, zero, 32
004d40  eaa37634  vor.u.mh vr7{mr2}, r13, vr7
004d44  7e8102e0  vmmov mr2, r5
004d48  9f020001  addli r5, zero, 128
004d4c  ea237634  vor.u.mh vr7{mr2}, r12, vr7
004d50  7e8102e0  vmmov mr2, r5
004d54  9f020002  addli r5, zero, 256
004d58  eaa37536  vor.u.mh vr7{mr3}, r11, vr7
004d5c  ea237534  vor.u.mh vr7{mr2}, r10, vr7
004d60  7e8102e0  vmmov mr2, r5
004d64  9f020004  addli r5, zero, 512
004d68  eaa37434  vor.u.mh vr7{mr2}, r9, vr7
004d6c  7e8102e0  vmmov mr2, r5
004d70  9f020008  addli r5, zero, 1024
004d74  ea237434  vor.u.mh vr7{mr2}, r8, vr7
004d78  7e8102e0  vmmov mr2, r5
004d7c  9f020010  addli r5, zero, 2048
004d80  eaa37334  vor.u.mh vr7{mr2}, r7, vr7
004d84  7e8102e0  vmmov mr2, r5
004d88  ea237334  vor.u.mh vr7{mr2}, r6, vr7
004d8c  e3020ff3  loadli.w r5,  -1664(r30)
004d90  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
004d94  2693a002  vmac.f.mz.rn vr6{mr1}, vr1, vr10
004d98  661203c0  vabs.f vr4, vr6
004d9c  9f028ff2  addli r5, r30, -1728
004da0  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
004da4  9f020020  addli r5, zero, 4096
004da8  7e8102e0  vmmov mr2, r5
004dac  ea237234  vor.u.mh vr7{mr2}, r4, vr7
004db0  1f020040  addli r4, zero, 8192
004db4  7e0102e0  vmmov mr2, r4
004db8  eeb060c2  vsrl.s.mz vr1{mr1}, vr1, vr6
004dbc  eaa37134  vor.u.mh vr7{mr2}, r3, vr7
004dc0  ab410000  lui r3, 4
004dc4  7e8101e0  vmmov mr2, r3
004dc8  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
004dcc  ea237134  vor.u.mh vr7{mr2}, r2, vr7
004dd0  1f018ff0  addli r2, r30, -1984
004dd4  42150102  vload_mask16.mz vr10{mr1}, 0(r2)
004dd8  2b810000  lui r2, 8
004ddc  96301302  vadd.s.mz vr1{mr1}, vr6, vr1
004de0  92301902  vadd.s.mz vr1{mr1}, r18, vr1
004de4  76214542  vlt.u.mz mr2{mr1}, vr10, vr4
004de8  fe0201a0  vmmov r5, mr2
004dec  7e0101e0  vmmov mr2, r2
004df0  2b014000  lui r2, 1024
004df4  eaa37034  vor.u.mh vr7{mr2}, r1, vr7
004df8  9bc0f200  srli r1, r5, 15
004dfc  6a326122  vor.s.mz vr4{mr1}, r2, vr6
004e00  2ba1aaaa  lui r2, 699050
004e04  9b801000  andi r1, r1, 1
004e08  1f215115  addli r2, r2, 2730
004e0c  7e0101e0  vmmov mr2, r2
004e10  63415fd1  loadli.w r2,  -5972(r30)
004e14  62407114  vscatter.mh vr7{mr2}, vr0{r2}
004e18  3bb00000  bneq r1, zero, 12
004e1c  fab0f040  vextracti.s r1, 15(vr1)
004e20  5b010000  j 8
004e24  fa30f240  vextracti.s r1, 15(vr4)
004e28  1f010fee  addli r2, r30, -2304
004e2c  9f110000  addli r3, zero, 1
004e30  42140102  vload_mask16.mz vr8{mr1}, 0(r2)
004e34  1bc1e200  srli r2, r5, 14
004e38  7e8101e0  vmmov mr2, r3
004e3c  1b011100  andi r2, r2, 1
004e40  3b300100  bneq r2, zero, 12
004e44  7ab1e040  vextracti.s r2, 14(vr1)
004e48  5b010000  j 8
004e4c  7a31e240  vextracti.s r2, 14(vr4)
004e50  9bc1d200  srli r3, r5, 13
004e54  9b811100  andi r3, r3, 1
004e58  3bb00100  bneq r3, zero, 12
004e5c  fab1d040  vextracti.s r3, 13(vr1)
004e60  5b010000  j 8
004e64  fa31d240  vextracti.s r3, 13(vr4)
004e68  1bc2c200  srli r4, r5, 12
004e6c  1b021200  andi r4, r4, 1
004e70  3b300200  bneq r4, zero, 12
004e74  7ab2c040  vextracti.s r4, 12(vr1)
004e78  5b010000  j 8
004e7c  7a32c240  vextracti.s r4, 12(vr4)
004e80  1bc3b200  srli r6, r5, 11
004e84  1b031300  andi r6, r6, 1
004e88  3b300300  bneq r6, zero, 12
004e8c  7ab3b040  vextracti.s r6, 11(vr1)
004e90  5b010000  j 8
004e94  7a33b240  vextracti.s r6, 11(vr4)
004e98  9bc3a200  srli r7, r5, 10
004e9c  9b831300  andi r7, r7, 1
004ea0  3bb00300  bneq r7, zero, 12
004ea4  fab3a040  vextracti.s r7, 10(vr1)
004ea8  5b010000  j 8
004eac  fa33a240  vextracti.s r7, 10(vr4)
004eb0  1bc49200  srli r8, r5, 9
004eb4  1b041400  andi r8, r8, 1
004eb8  3b300400  bneq r8, zero, 12
004ebc  7ab49040  vextracti.s r8, 9(vr1)
004ec0  5b010000  j 8
004ec4  7a349240  vextracti.s r8, 9(vr4)
004ec8  9bc48200  srli r9, r5, 8
004ecc  9b841400  andi r9, r9, 1
004ed0  3bb00400  bneq r9, zero, 12
004ed4  fab48040  vextracti.s r9, 8(vr1)
004ed8  5b010000  j 8
004edc  fa348240  vextracti.s r9, 8(vr4)
004ee0  1bc57200  srli r10, r5, 7
004ee4  1b051500  andi r10, r10, 1
004ee8  3b300500  bneq r10, zero, 12
004eec  7ab57040  vextracti.s r10, 7(vr1)
004ef0  5b010000  j 8
004ef4  7a357240  vextracti.s r10, 7(vr4)
004ef8  9bc56200  srli r11, r5, 6
004efc  9b851500  andi r11, r11, 1
004f00  3bb00500  bneq r11, zero, 12
004f04  fab56040  vextracti.s r11, 6(vr1)
004f08  5b010000  j 8
004f0c  fa356240  vextracti.s r11, 6(vr4)
004f10  1bc65200  srli r12, r5, 5
004f14  1b061600  andi r12, r12, 1
004f18  3b300600  bneq r12, zero, 12
004f1c  7ab65040  vextracti.s r12, 5(vr1)
004f20  5b010000  j 8
004f24  7a365240  vextracti.s r12, 5(vr4)
004f28  9bc64200  srli r13, r5, 4
004f2c  9b861600  andi r13, r13, 1
004f30  3bb00600  bneq r13, zero, 12
004f34  fab64040  vextracti.s r13, 4(vr1)
004f38  5b010000  j 8
004f3c  fa364240  vextracti.s r13, 4(vr4)
004f40  9bc73200  srli r15, r5, 3
004f44  9b871700  andi r15, r15, 1
004f48  3bb00700  bneq r15, zero, 12
004f4c  fab73040  vextracti.s r15, 3(vr1)
004f50  5b010000  j 8
004f54  fa373240  vextracti.s r15, 3(vr4)
004f58  1bc82200  srli r16, r5, 2
004f5c  1b081800  andi r16, r16, 1
004f60  3b300800  bneq r16, zero, 12
004f64  7ab82040  vextracti.s r16, 2(vr1)
004f68  5b010000  j 8
004f6c  7a382240  vextracti.s r16, 2(vr4)
004f70  9bc81200  srli r17, r5, 1
004f74  9b881800  andi r17, r17, 1
004f78  3be00800  bneq r17, zero, 24
004f7c  fab81040  vextracti.s r17, 1(vr1)
004f80  9b821200  andi r5, r5, 1
004f84  37e00200  beq r5, zero, 24
004f88  fa320240  vextracti.s r5, 0(vr4)
004f8c  db020000  j 20
004f90  fa381240  vextracti.s r17, 1(vr4)
004f94  9b821200  andi r5, r5, 1
004f98  bbcf02fe  bneq r5, zero, -16
004f9c  fab20040  vextracti.s r5, 0(vr1)
004fa0  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
004fa4  e6c035a0  vmerge_h.hf vr1, vr11, vr3
004fa8  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
004fac  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
004fb0  9f220000  addli r5, zero, 2
004fb4  7e8102e0  vmmov mr2, r5
004fb8  9f021000  addli r5, zero, 8
004fbc  6aa24834  vor.u.mh vr4{mr2}, r17, vr4
004fc0  7e8102e0  vmmov mr2, r5
004fc4  9f022000  addli r5, zero, 16
004fc8  6a224830  vor.u.mh vr4{mr0}, r16, vr4
004fcc  6aa24734  vor.u.mh vr4{mr2}, r15, vr4
004fd0  7e8102e0  vmmov mr2, r5
004fd4  9f024000  addli r5, zero, 32
004fd8  6aa24634  vor.u.mh vr4{mr2}, r13, vr4
004fdc  7e8102e0  vmmov mr2, r5
004fe0  9f020001  addli r5, zero, 128
004fe4  6a224634  vor.u.mh vr4{mr2}, r12, vr4
004fe8  7e8102e0  vmmov mr2, r5
004fec  9f020002  addli r5, zero, 256
004ff0  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
004ff4  6a224534  vor.u.mh vr4{mr2}, r10, vr4
004ff8  7e8102e0  vmmov mr2, r5
004ffc  9f020004  addli r5, zero, 512
005000  6aa24434  vor.u.mh vr4{mr2}, r9, vr4
005004  7e8102e0  vmmov mr2, r5
005008  9f020008  addli r5, zero, 1024
00500c  6a224434  vor.u.mh vr4{mr2}, r8, vr4
005010  7e8102e0  vmmov mr2, r5
005014  9f020010  addli r5, zero, 2048
005018  6aa24334  vor.u.mh vr4{mr2}, r7, vr4
00501c  7e8102e0  vmmov mr2, r5
005020  6a224334  vor.u.mh vr4{mr2}, r6, vr4
005024  e3020ff3  loadli.w r5,  -1664(r30)
005028  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
00502c  9f028fdf  addli r5, r30, -4160
005030  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
005034  9f028ff2  addli r5, r30, -1728
005038  a6912002  vmac.f.mz.rn vr3{mr1}, vr1, vr2
00503c  669301c0  vabs.f vr6, vr3
005040  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
005044  9f020020  addli r5, zero, 4096
005048  7e8102e0  vmmov mr2, r5
00504c  6a224234  vor.u.mh vr4{mr2}, r4, vr4
005050  1f020040  addli r4, zero, 8192
005054  7e0102e0  vmmov mr2, r4
005058  eeb030c2  vsrl.s.mz vr1{mr1}, vr1, vr3
00505c  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
005060  ab410000  lui r3, 4
005064  7e8101e0  vmmov mr2, r3
005068  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
00506c  6a224134  vor.u.mh vr4{mr2}, r2, vr4
005070  2b810000  lui r2, 8
005074  76216542  vlt.u.mz mr2{mr1}, vr10, vr6
005078  fe0201a0  vmmov r5, mr2
00507c  7e0101e0  vmmov mr2, r2
005080  2b014000  lui r2, 1024
005084  96b01102  vadd.s.mz vr1{mr1}, vr3, vr1
005088  ea313122  vor.s.mz vr3{mr1}, r2, vr3
00508c  2ba1aaaa  lui r2, 699050
005090  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
005094  9bc0f200  srli r1, r5, 15
005098  1f215115  addli r2, r2, 2730
00509c  9b801000  andi r1, r1, 1
0050a0  92301902  vadd.s.mz vr1{mr1}, r18, vr1
0050a4  7e0101e0  vmmov mr2, r2
0050a8  63019fd1  loadli.w r2,  -5944(r30)
0050ac  62404114  vscatter.mh vr4{mr2}, vr0{r2}
0050b0  3bb00000  bneq r1, zero, 12
0050b4  fab0f040  vextracti.s r1, 15(vr1)
0050b8  5b010000  j 8
0050bc  fab0f140  vextracti.s r1, 15(vr3)
0050c0  1f018fee  addli r2, r30, -2240
0050c4  9f110000  addli r3, zero, 1
0050c8  c2130102  vload_mask16.mz vr7{mr1}, 0(r2)
0050cc  1bc1e200  srli r2, r5, 14
0050d0  7e8101e0  vmmov mr2, r3
0050d4  1b011100  andi r2, r2, 1
0050d8  3b300100  bneq r2, zero, 12
0050dc  7ab1e040  vextracti.s r2, 14(vr1)
0050e0  5b010000  j 8
0050e4  7ab1e140  vextracti.s r2, 14(vr3)
0050e8  9bc1d200  srli r3, r5, 13
0050ec  9b811100  andi r3, r3, 1
0050f0  3bb00100  bneq r3, zero, 12
0050f4  fab1d040  vextracti.s r3, 13(vr1)
0050f8  5b010000  j 8
0050fc  fab1d140  vextracti.s r3, 13(vr3)
005100  1bc2c200  srli r4, r5, 12
005104  1b021200  andi r4, r4, 1
005108  3b300200  bneq r4, zero, 12
00510c  7ab2c040  vextracti.s r4, 12(vr1)
005110  5b010000  j 8
005114  7ab2c140  vextracti.s r4, 12(vr3)
005118  1bc3b200  srli r6, r5, 11
00511c  1b031300  andi r6, r6, 1
005120  3b300300  bneq r6, zero, 12
005124  7ab3b040  vextracti.s r6, 11(vr1)
005128  5b010000  j 8
00512c  7ab3b140  vextracti.s r6, 11(vr3)
005130  9bc3a200  srli r7, r5, 10
005134  9b831300  andi r7, r7, 1
005138  3bb00300  bneq r7, zero, 12
00513c  fab3a040  vextracti.s r7, 10(vr1)
005140  5b010000  j 8
005144  fab3a140  vextracti.s r7, 10(vr3)
005148  1bc49200  srli r8, r5, 9
00514c  1b041400  andi r8, r8, 1
005150  3b300400  bneq r8, zero, 12
005154  7ab49040  vextracti.s r8, 9(vr1)
005158  5b010000  j 8
00515c  7ab49140  vextracti.s r8, 9(vr3)
005160  9bc48200  srli r9, r5, 8
005164  9b841400  andi r9, r9, 1
005168  3bb00400  bneq r9, zero, 12
00516c  fab48040  vextracti.s r9, 8(vr1)
005170  5b010000  j 8
005174  fab48140  vextracti.s r9, 8(vr3)
005178  1bc57200  srli r10, r5, 7
00517c  1b051500  andi r10, r10, 1
005180  3b300500  bneq r10, zero, 12
005184  7ab57040  vextracti.s r10, 7(vr1)
005188  5b010000  j 8
00518c  7ab57140  vextracti.s r10, 7(vr3)
005190  9bc56200  srli r11, r5, 6
005194  9b851500  andi r11, r11, 1
005198  3bb00500  bneq r11, zero, 12
00519c  fab56040  vextracti.s r11, 6(vr1)
0051a0  5b010000  j 8
0051a4  fab56140  vextracti.s r11, 6(vr3)
0051a8  1bc65200  srli r12, r5, 5
0051ac  1b061600  andi r12, r12, 1
0051b0  3b300600  bneq r12, zero, 12
0051b4  7ab65040  vextracti.s r12, 5(vr1)
0051b8  5b010000  j 8
0051bc  7ab65140  vextracti.s r12, 5(vr3)
0051c0  9bc64200  srli r13, r5, 4
0051c4  9b861600  andi r13, r13, 1
0051c8  3bb00600  bneq r13, zero, 12
0051cc  fab64040  vextracti.s r13, 4(vr1)
0051d0  5b010000  j 8
0051d4  fab64140  vextracti.s r13, 4(vr3)
0051d8  9bc73200  srli r15, r5, 3
0051dc  9b871700  andi r15, r15, 1
0051e0  3bb00700  bneq r15, zero, 12
0051e4  fab73040  vextracti.s r15, 3(vr1)
0051e8  5b010000  j 8
0051ec  fab73140  vextracti.s r15, 3(vr3)
0051f0  1bc82200  srli r16, r5, 2
0051f4  1b081800  andi r16, r16, 1
0051f8  3b300800  bneq r16, zero, 12
0051fc  7ab82040  vextracti.s r16, 2(vr1)
005200  5b010000  j 8
005204  7ab82140  vextracti.s r16, 2(vr3)
005208  9bc81200  srli r17, r5, 1
00520c  9b881800  andi r17, r17, 1
005210  3be00800  bneq r17, zero, 24
005214  fab81040  vextracti.s r17, 1(vr1)
005218  9b821200  andi r5, r5, 1
00521c  37e00200  beq r5, zero, 24
005220  fab20140  vextracti.s r5, 0(vr3)
005224  db020000  j 20
005228  fab81140  vextracti.s r17, 1(vr3)
00522c  9b821200  andi r5, r5, 1
005230  bbcf02fe  bneq r5, zero, -16
005234  fab20040  vextracti.s r5, 0(vr1)
005238  1232b002  vadd.s.mz vr4{mr1}, zero, vr11
00523c  e6c09580  vmerge_l.hf vr1, vr11, vr9
005240  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
005244  6aa24234  vor.u.mh vr4{mr2}, r5, vr4
005248  9f220000  addli r5, zero, 2
00524c  7e8102e0  vmmov mr2, r5
005250  9f021000  addli r5, zero, 8
005254  6aa24834  vor.u.mh vr4{mr2}, r17, vr4
005258  7e8102e0  vmmov mr2, r5
00525c  9f022000  addli r5, zero, 16
005260  6a224830  vor.u.mh vr4{mr0}, r16, vr4
005264  6aa24734  vor.u.mh vr4{mr2}, r15, vr4
005268  7e8102e0  vmmov mr2, r5
00526c  9f024000  addli r5, zero, 32
005270  6aa24634  vor.u.mh vr4{mr2}, r13, vr4
005274  7e8102e0  vmmov mr2, r5
005278  9f020001  addli r5, zero, 128
00527c  6a224634  vor.u.mh vr4{mr2}, r12, vr4
005280  7e8102e0  vmmov mr2, r5
005284  9f020002  addli r5, zero, 256
005288  6aa24536  vor.u.mh vr4{mr3}, r11, vr4
00528c  6a224534  vor.u.mh vr4{mr2}, r10, vr4
005290  7e8102e0  vmmov mr2, r5
005294  9f020004  addli r5, zero, 512
005298  6aa24434  vor.u.mh vr4{mr2}, r9, vr4
00529c  7e8102e0  vmmov mr2, r5
0052a0  9f020008  addli r5, zero, 1024
0052a4  6a224434  vor.u.mh vr4{mr2}, r8, vr4
0052a8  7e8102e0  vmmov mr2, r5
0052ac  9f020010  addli r5, zero, 2048
0052b0  6aa24334  vor.u.mh vr4{mr2}, r7, vr4
0052b4  7e8102e0  vmmov mr2, r5
0052b8  6a224334  vor.u.mh vr4{mr2}, r6, vr4
0052bc  e3020ff3  loadli.w r5,  -1664(r30)
0052c0  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
0052c4  9f020fe3  addli r5, r30, -3712
0052c8  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
0052cc  9f028ff2  addli r5, r30, -1728
0052d0  26915002  vmac.f.mz.rn vr2{mr1}, vr1, vr5
0052d4  e61101c0  vabs.f vr3, vr2
0052d8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0052dc  9f020020  addli r5, zero, 4096
0052e0  7e8102e0  vmmov mr2, r5
0052e4  6a224234  vor.u.mh vr4{mr2}, r4, vr4
0052e8  1f020040  addli r4, zero, 8192
0052ec  7e0102e0  vmmov mr2, r4
0052f0  eeb020c2  vsrl.s.mz vr1{mr1}, vr1, vr2
0052f4  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0052f8  ab410000  lui r3, 4
0052fc  7e8101e0  vmmov mr2, r3
005300  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005304  6a224134  vor.u.mh vr4{mr2}, r2, vr4
005308  2b810000  lui r2, 8
00530c  76213542  vlt.u.mz mr2{mr1}, vr10, vr3
005310  fe0201a0  vmmov r5, mr2
005314  7e0101e0  vmmov mr2, r2
005318  2b014000  lui r2, 1024
00531c  96301102  vadd.s.mz vr1{mr1}, vr2, vr1
005320  ea312122  vor.s.mz vr3{mr1}, r2, vr2
005324  2ba1aaaa  lui r2, 699050
005328  6aa24034  vor.u.mh vr4{mr2}, r1, vr4
00532c  9bc0f200  srli r1, r5, 15
005330  1f215115  addli r2, r2, 2730
005334  9b801000  andi r1, r1, 1
005338  92301902  vadd.s.mz vr1{mr1}, r18, vr1
00533c  7e0101e0  vmmov mr2, r2
005340  63015fd1  loadli.w r2,  -5976(r30)
005344  62404114  vscatter.mh vr4{mr2}, vr0{r2}
005348  3bb00000  bneq r1, zero, 12
00534c  fab0f040  vextracti.s r1, 15(vr1)
005350  5b010000  j 8
005354  fab0f140  vextracti.s r1, 15(vr3)
005358  1f018fef  addli r2, r30, -2112
00535c  9f110000  addli r3, zero, 1
005360  42120102  vload_mask16.mz vr4{mr1}, 0(r2)
005364  1f010fef  addli r2, r30, -2176
005368  7e8101e0  vmmov mr2, r3
00536c  42130102  vload_mask16.mz vr6{mr1}, 0(r2)
005370  1bc1e200  srli r2, r5, 14
005374  1b011100  andi r2, r2, 1
005378  3b300100  bneq r2, zero, 12
00537c  7ab1e040  vextracti.s r2, 14(vr1)
005380  5b010000  j 8
005384  7ab1e140  vextracti.s r2, 14(vr3)
005388  9bc1d200  srli r3, r5, 13
00538c  9b811100  andi r3, r3, 1
005390  3bb00100  bneq r3, zero, 12
005394  fab1d040  vextracti.s r3, 13(vr1)
005398  5b010000  j 8
00539c  fab1d140  vextracti.s r3, 13(vr3)
0053a0  1bc2c200  srli r4, r5, 12
0053a4  1b021200  andi r4, r4, 1
0053a8  3b300200  bneq r4, zero, 12
0053ac  7ab2c040  vextracti.s r4, 12(vr1)
0053b0  5b010000  j 8
0053b4  7ab2c140  vextracti.s r4, 12(vr3)
0053b8  1bc3b200  srli r6, r5, 11
0053bc  1b031300  andi r6, r6, 1
0053c0  3b300300  bneq r6, zero, 12
0053c4  7ab3b040  vextracti.s r6, 11(vr1)
0053c8  5b010000  j 8
0053cc  7ab3b140  vextracti.s r6, 11(vr3)
0053d0  9bc3a200  srli r7, r5, 10
0053d4  9b831300  andi r7, r7, 1
0053d8  3bb00300  bneq r7, zero, 12
0053dc  fab3a040  vextracti.s r7, 10(vr1)
0053e0  5b010000  j 8
0053e4  fab3a140  vextracti.s r7, 10(vr3)
0053e8  1bc49200  srli r8, r5, 9
0053ec  1b041400  andi r8, r8, 1
0053f0  3b300400  bneq r8, zero, 12
0053f4  7ab49040  vextracti.s r8, 9(vr1)
0053f8  5b010000  j 8
0053fc  7ab49140  vextracti.s r8, 9(vr3)
005400  9bc48200  srli r9, r5, 8
005404  9b841400  andi r9, r9, 1
005408  3bb00400  bneq r9, zero, 12
00540c  fab48040  vextracti.s r9, 8(vr1)
005410  5b010000  j 8
005414  fab48140  vextracti.s r9, 8(vr3)
005418  1bc57200  srli r10, r5, 7
00541c  1b051500  andi r10, r10, 1
005420  3b300500  bneq r10, zero, 12
005424  7ab57040  vextracti.s r10, 7(vr1)
005428  5b010000  j 8
00542c  7ab57140  vextracti.s r10, 7(vr3)
005430  9bc56200  srli r11, r5, 6
005434  9b851500  andi r11, r11, 1
005438  3bb00500  bneq r11, zero, 12
00543c  fab56040  vextracti.s r11, 6(vr1)
005440  5b010000  j 8
005444  fab56140  vextracti.s r11, 6(vr3)
005448  1bc65200  srli r12, r5, 5
00544c  1b061600  andi r12, r12, 1
005450  3b300600  bneq r12, zero, 12
005454  7ab65040  vextracti.s r12, 5(vr1)
005458  5b010000  j 8
00545c  7ab65140  vextracti.s r12, 5(vr3)
005460  9bc64200  srli r13, r5, 4
005464  9b861600  andi r13, r13, 1
005468  3bb00600  bneq r13, zero, 12
00546c  fab64040  vextracti.s r13, 4(vr1)
005470  5b010000  j 8
005474  fab64140  vextracti.s r13, 4(vr3)
005478  9bc73200  srli r15, r5, 3
00547c  9b871700  andi r15, r15, 1
005480  3bb00700  bneq r15, zero, 12
005484  fab73040  vextracti.s r15, 3(vr1)
005488  5b010000  j 8
00548c  fab73140  vextracti.s r15, 3(vr3)
005490  1bc82200  srli r16, r5, 2
005494  1b081800  andi r16, r16, 1
005498  3b300800  bneq r16, zero, 12
00549c  7ab82040  vextracti.s r16, 2(vr1)
0054a0  5b010000  j 8
0054a4  7ab82140  vextracti.s r16, 2(vr3)
0054a8  9bc81200  srli r17, r5, 1
0054ac  9b881800  andi r17, r17, 1
0054b0  3be00800  bneq r17, zero, 24
0054b4  fab81040  vextracti.s r17, 1(vr1)
0054b8  9b821200  andi r5, r5, 1
0054bc  37e00200  beq r5, zero, 24
0054c0  fab20140  vextracti.s r5, 0(vr3)
0054c4  db020000  j 20
0054c8  fab81140  vextracti.s r17, 1(vr3)
0054cc  9b821200  andi r5, r5, 1
0054d0  bbcf02fe  bneq r5, zero, -16
0054d4  fab20040  vextracti.s r5, 0(vr1)
0054d8  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
0054dc  e6c095a0  vmerge_h.hf vr1, vr11, vr9
0054e0  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0054e4  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
0054e8  9f220000  addli r5, zero, 2
0054ec  7e8102e0  vmmov mr2, r5
0054f0  9f021000  addli r5, zero, 8
0054f4  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
0054f8  7e8102e0  vmmov mr2, r5
0054fc  9f022000  addli r5, zero, 16
005500  ea213830  vor.u.mh vr3{mr0}, r16, vr3
005504  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
005508  7e8102e0  vmmov mr2, r5
00550c  9f024000  addli r5, zero, 32
005510  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
005514  7e8102e0  vmmov mr2, r5
005518  9f020001  addli r5, zero, 128
00551c  ea213634  vor.u.mh vr3{mr2}, r12, vr3
005520  7e8102e0  vmmov mr2, r5
005524  9f020002  addli r5, zero, 256
005528  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
00552c  ea213534  vor.u.mh vr3{mr2}, r10, vr3
005530  7e8102e0  vmmov mr2, r5
005534  9f020004  addli r5, zero, 512
005538  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
00553c  7e8102e0  vmmov mr2, r5
005540  9f020008  addli r5, zero, 1024
005544  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005548  7e8102e0  vmmov mr2, r5
00554c  9f020010  addli r5, zero, 2048
005550  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005554  7e8102e0  vmmov mr2, r5
005558  ea213334  vor.u.mh vr3{mr2}, r6, vr3
00555c  e3020ff3  loadli.w r5,  -1664(r30)
005560  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
005564  9f020fe4  addli r5, r30, -3584
005568  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
00556c  9f028fdb  addli r5, r30, -4672
005570  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005574  9f028ff2  addli r5, r30, -1728
005578  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
00557c  669102c0  vabs.f vr2, vr5
005580  c2940202  vload_mask16.mz vr9{mr1}, 0(r5)
005584  9f020020  addli r5, zero, 4096
005588  7e8102e0  vmmov mr2, r5
00558c  ea213234  vor.u.mh vr3{mr2}, r4, vr3
005590  1f020040  addli r4, zero, 8192
005594  7e0102e0  vmmov mr2, r4
005598  eeb054c2  vsrl.s.mz vr1{mr1}, vr9, vr5
00559c  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
0055a0  ab410000  lui r3, 4
0055a4  7e8101e0  vmmov mr2, r3
0055a8  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
0055ac  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0055b0  2b810000  lui r2, 8
0055b4  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
0055b8  fe0201a0  vmmov r5, mr2
0055bc  7e0101e0  vmmov mr2, r2
0055c0  2b014000  lui r2, 1024
0055c4  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
0055c8  6a315122  vor.s.mz vr2{mr1}, r2, vr5
0055cc  2ba1aaaa  lui r2, 699050
0055d0  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0055d4  9bc0f200  srli r1, r5, 15
0055d8  1f215115  addli r2, r2, 2730
0055dc  9b801000  andi r1, r1, 1
0055e0  92301902  vadd.s.mz vr1{mr1}, r18, vr1
0055e4  7e0101e0  vmmov mr2, r2
0055e8  63418fd1  loadli.w r2,  -5948(r30)
0055ec  62403114  vscatter.mh vr3{mr2}, vr0{r2}
0055f0  3bb00000  bneq r1, zero, 12
0055f4  fab0f040  vextracti.s r1, 15(vr1)
0055f8  5b010000  j 8
0055fc  fa30f140  vextracti.s r1, 15(vr2)
005600  1bc1e200  srli r2, r5, 14
005604  9f110000  addli r3, zero, 1
005608  1b011100  andi r2, r2, 1
00560c  7e8101e0  vmmov mr2, r3
005610  3b300100  bneq r2, zero, 12
005614  7ab1e040  vextracti.s r2, 14(vr1)
005618  5b010000  j 8
00561c  7a31e140  vextracti.s r2, 14(vr2)
005620  9bc1d200  srli r3, r5, 13
005624  9b811100  andi r3, r3, 1
005628  3bb00100  bneq r3, zero, 12
00562c  fab1d040  vextracti.s r3, 13(vr1)
005630  5b010000  j 8
005634  fa31d140  vextracti.s r3, 13(vr2)
005638  1bc2c200  srli r4, r5, 12
00563c  1b021200  andi r4, r4, 1
005640  3b300200  bneq r4, zero, 12
005644  7ab2c040  vextracti.s r4, 12(vr1)
005648  5b010000  j 8
00564c  7a32c140  vextracti.s r4, 12(vr2)
005650  1bc3b200  srli r6, r5, 11
005654  1b031300  andi r6, r6, 1
005658  3b300300  bneq r6, zero, 12
00565c  7ab3b040  vextracti.s r6, 11(vr1)
005660  5b010000  j 8
005664  7a33b140  vextracti.s r6, 11(vr2)
005668  9bc3a200  srli r7, r5, 10
00566c  9b831300  andi r7, r7, 1
005670  3bb00300  bneq r7, zero, 12
005674  fab3a040  vextracti.s r7, 10(vr1)
005678  5b010000  j 8
00567c  fa33a140  vextracti.s r7, 10(vr2)
005680  1bc49200  srli r8, r5, 9
005684  1b041400  andi r8, r8, 1
005688  3b300400  bneq r8, zero, 12
00568c  7ab49040  vextracti.s r8, 9(vr1)
005690  5b010000  j 8
005694  7a349140  vextracti.s r8, 9(vr2)
005698  9bc48200  srli r9, r5, 8
00569c  9b841400  andi r9, r9, 1
0056a0  3bb00400  bneq r9, zero, 12
0056a4  fab48040  vextracti.s r9, 8(vr1)
0056a8  5b010000  j 8
0056ac  fa348140  vextracti.s r9, 8(vr2)
0056b0  1bc57200  srli r10, r5, 7
0056b4  1b051500  andi r10, r10, 1
0056b8  3b300500  bneq r10, zero, 12
0056bc  7ab57040  vextracti.s r10, 7(vr1)
0056c0  5b010000  j 8
0056c4  7a357140  vextracti.s r10, 7(vr2)
0056c8  9bc56200  srli r11, r5, 6
0056cc  9b851500  andi r11, r11, 1
0056d0  3bb00500  bneq r11, zero, 12
0056d4  fab56040  vextracti.s r11, 6(vr1)
0056d8  5b010000  j 8
0056dc  fa356140  vextracti.s r11, 6(vr2)
0056e0  1bc65200  srli r12, r5, 5
0056e4  1b061600  andi r12, r12, 1
0056e8  3b300600  bneq r12, zero, 12
0056ec  7ab65040  vextracti.s r12, 5(vr1)
0056f0  5b010000  j 8
0056f4  7a365140  vextracti.s r12, 5(vr2)
0056f8  9bc64200  srli r13, r5, 4
0056fc  9b861600  andi r13, r13, 1
005700  3bb00600  bneq r13, zero, 12
005704  fab64040  vextracti.s r13, 4(vr1)
005708  5b010000  j 8
00570c  fa364140  vextracti.s r13, 4(vr2)
005710  9bc73200  srli r15, r5, 3
005714  9b871700  andi r15, r15, 1
005718  3bb00700  bneq r15, zero, 12
00571c  fab73040  vextracti.s r15, 3(vr1)
005720  5b010000  j 8
005724  fa373140  vextracti.s r15, 3(vr2)
005728  1bc82200  srli r16, r5, 2
00572c  1b081800  andi r16, r16, 1
005730  3b300800  bneq r16, zero, 12
005734  7ab82040  vextracti.s r16, 2(vr1)
005738  5b010000  j 8
00573c  7a382140  vextracti.s r16, 2(vr2)
005740  9bc81200  srli r17, r5, 1
005744  9b881800  andi r17, r17, 1
005748  3bb00800  bneq r17, zero, 12
00574c  fab81040  vextracti.s r17, 1(vr1)
005750  5b010000  j 8
005754  fa381140  vextracti.s r17, 1(vr2)
005758  92324002  vadd.s.mz vr5{mr1}, zero, vr4
00575c  9b821200  andi r5, r5, 1
005760  3bb00200  bneq r5, zero, 12
005764  fab20040  vextracti.s r5, 0(vr1)
005768  5b010000  j 8
00576c  fa320140  vextracti.s r5, 0(vr2)
005770  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
005774  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
005778  9f220000  addli r5, zero, 2
00577c  7e8102e0  vmmov mr2, r5
005780  9f021000  addli r5, zero, 8
005784  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
005788  7e8102e0  vmmov mr2, r5
00578c  9f022000  addli r5, zero, 16
005790  ea213830  vor.u.mh vr3{mr0}, r16, vr3
005794  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
005798  7e8102e0  vmmov mr2, r5
00579c  9f024000  addli r5, zero, 32
0057a0  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
0057a4  7e8102e0  vmmov mr2, r5
0057a8  9f020001  addli r5, zero, 128
0057ac  ea213634  vor.u.mh vr3{mr2}, r12, vr3
0057b0  7e8102e0  vmmov mr2, r5
0057b4  9f020002  addli r5, zero, 256
0057b8  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
0057bc  ea213534  vor.u.mh vr3{mr2}, r10, vr3
0057c0  7e8102e0  vmmov mr2, r5
0057c4  9f020004  addli r5, zero, 512
0057c8  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
0057cc  7e8102e0  vmmov mr2, r5
0057d0  9f020ff1  addli r5, r30, -1920
0057d4  ea213434  vor.u.mh vr3{mr2}, r8, vr3
0057d8  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
0057dc  9f020008  addli r5, zero, 1024
0057e0  7e8102e0  vmmov mr2, r5
0057e4  9f020010  addli r5, zero, 2048
0057e8  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
0057ec  7e8102e0  vmmov mr2, r5
0057f0  e6c01580  vmerge_l.hf vr1, vr11, vr1
0057f4  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0057f8  ea213334  vor.u.mh vr3{mr2}, r6, vr3
0057fc  e3020ff3  loadli.w r5,  -1664(r30)
005800  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
005804  9f020fe5  addli r5, r30, -3456
005808  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
00580c  9f028fdc  addli r5, r30, -4544
005810  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005814  9f020020  addli r5, zero, 4096
005818  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
00581c  eeb044c2  vsrl.s.mz vr1{mr1}, vr9, vr4
005820  661102c0  vabs.f vr2, vr4
005824  7e8102e0  vmmov mr2, r5
005828  ea213234  vor.u.mh vr3{mr2}, r4, vr3
00582c  1f020040  addli r4, zero, 8192
005830  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005834  7e0102e0  vmmov mr2, r4
005838  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
00583c  ab410000  lui r3, 4
005840  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
005844  7e8101e0  vmmov mr2, r3
005848  ea213134  vor.u.mh vr3{mr2}, r2, vr3
00584c  2b810000  lui r2, 8
005850  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
005854  fe0201a0  vmmov r5, mr2
005858  92301902  vadd.s.mz vr1{mr1}, r18, vr1
00585c  7e0101e0  vmmov mr2, r2
005860  2b014000  lui r2, 1024
005864  6a314122  vor.s.mz vr2{mr1}, r2, vr4
005868  2ba1aaaa  lui r2, 699050
00586c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
005870  9bc0f200  srli r1, r5, 15
005874  1f215115  addli r2, r2, 2730
005878  9b801000  andi r1, r1, 1
00587c  7e0101e0  vmmov mr2, r2
005880  63414fd1  loadli.w r2,  -5980(r30)
005884  62403114  vscatter.mh vr3{mr2}, vr0{r2}
005888  3bb00000  bneq r1, zero, 12
00588c  fab0f040  vextracti.s r1, 15(vr1)
005890  5b010000  j 8
005894  fa30f140  vextracti.s r1, 15(vr2)
005898  1bc1e200  srli r2, r5, 14
00589c  12325002  vadd.s.mz vr4{mr1}, zero, vr5
0058a0  9f110000  addli r3, zero, 1
0058a4  1b011100  andi r2, r2, 1
0058a8  7e8101e0  vmmov mr2, r3
0058ac  3b300100  bneq r2, zero, 12
0058b0  7ab1e040  vextracti.s r2, 14(vr1)
0058b4  5b010000  j 8
0058b8  7a31e140  vextracti.s r2, 14(vr2)
0058bc  9bc1d200  srli r3, r5, 13
0058c0  92326002  vadd.s.mz vr5{mr1}, zero, vr6
0058c4  12337002  vadd.s.mz vr6{mr1}, zero, vr7
0058c8  9b811100  andi r3, r3, 1
0058cc  3bb00100  bneq r3, zero, 12
0058d0  fab1d040  vextracti.s r3, 13(vr1)
0058d4  5b010000  j 8
0058d8  fa31d140  vextracti.s r3, 13(vr2)
0058dc  1bc2c200  srli r4, r5, 12
0058e0  92338002  vadd.s.mz vr7{mr1}, zero, vr8
0058e4  1b021200  andi r4, r4, 1
0058e8  3b300200  bneq r4, zero, 12
0058ec  7ab2c040  vextracti.s r4, 12(vr1)
0058f0  5b010000  j 8
0058f4  7a32c140  vextracti.s r4, 12(vr2)
0058f8  1bc3b200  srli r6, r5, 11
0058fc  1b031300  andi r6, r6, 1
005900  3b300300  bneq r6, zero, 12
005904  7ab3b040  vextracti.s r6, 11(vr1)
005908  5b010000  j 8
00590c  7a33b140  vextracti.s r6, 11(vr2)
005910  9bc3a200  srli r7, r5, 10
005914  9b831300  andi r7, r7, 1
005918  3bb00300  bneq r7, zero, 12
00591c  fab3a040  vextracti.s r7, 10(vr1)
005920  5b010000  j 8
005924  fa33a140  vextracti.s r7, 10(vr2)
005928  1bc49200  srli r8, r5, 9
00592c  1b041400  andi r8, r8, 1
005930  3b300400  bneq r8, zero, 12
005934  7ab49040  vextracti.s r8, 9(vr1)
005938  5b010000  j 8
00593c  7a349140  vextracti.s r8, 9(vr2)
005940  9bc48200  srli r9, r5, 8
005944  9b841400  andi r9, r9, 1
005948  3bb00400  bneq r9, zero, 12
00594c  fab48040  vextracti.s r9, 8(vr1)
005950  5b010000  j 8
005954  fa348140  vextracti.s r9, 8(vr2)
005958  1bc57200  srli r10, r5, 7
00595c  1b051500  andi r10, r10, 1
005960  3b300500  bneq r10, zero, 12
005964  7ab57040  vextracti.s r10, 7(vr1)
005968  5b010000  j 8
00596c  7a357140  vextracti.s r10, 7(vr2)
005970  9bc56200  srli r11, r5, 6
005974  9b851500  andi r11, r11, 1
005978  3bb00500  bneq r11, zero, 12
00597c  fab56040  vextracti.s r11, 6(vr1)
005980  5b010000  j 8
005984  fa356140  vextracti.s r11, 6(vr2)
005988  1bc65200  srli r12, r5, 5
00598c  1b061600  andi r12, r12, 1
005990  3b300600  bneq r12, zero, 12
005994  7ab65040  vextracti.s r12, 5(vr1)
005998  5b010000  j 8
00599c  7a365140  vextracti.s r12, 5(vr2)
0059a0  9bc64200  srli r13, r5, 4
0059a4  9b861600  andi r13, r13, 1
0059a8  3bb00600  bneq r13, zero, 12
0059ac  fab64040  vextracti.s r13, 4(vr1)
0059b0  5b010000  j 8
0059b4  fa364140  vextracti.s r13, 4(vr2)
0059b8  9bc73200  srli r15, r5, 3
0059bc  9b871700  andi r15, r15, 1
0059c0  3bb00700  bneq r15, zero, 12
0059c4  fab73040  vextracti.s r15, 3(vr1)
0059c8  5b010000  j 8
0059cc  fa373140  vextracti.s r15, 3(vr2)
0059d0  1bc82200  srli r16, r5, 2
0059d4  1b081800  andi r16, r16, 1
0059d8  3b300800  bneq r16, zero, 12
0059dc  7ab82040  vextracti.s r16, 2(vr1)
0059e0  5b010000  j 8
0059e4  7a382140  vextracti.s r16, 2(vr2)
0059e8  9bc81200  srli r17, r5, 1
0059ec  9b881800  andi r17, r17, 1
0059f0  3be00800  bneq r17, zero, 24
0059f4  fab81040  vextracti.s r17, 1(vr1)
0059f8  9b821200  andi r5, r5, 1
0059fc  37e00200  beq r5, zero, 24
005a00  fa320140  vextracti.s r5, 0(vr2)
005a04  db020000  j 20
005a08  fa381140  vextracti.s r17, 1(vr2)
005a0c  9b821200  andi r5, r5, 1
005a10  bbcf02fe  bneq r5, zero, -16
005a14  fab20040  vextracti.s r5, 0(vr1)
005a18  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
005a1c  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
005a20  9f220000  addli r5, zero, 2
005a24  7e8102e0  vmmov mr2, r5
005a28  9f021000  addli r5, zero, 8
005a2c  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
005a30  7e8102e0  vmmov mr2, r5
005a34  9f022000  addli r5, zero, 16
005a38  ea213830  vor.u.mh vr3{mr0}, r16, vr3
005a3c  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
005a40  7e8102e0  vmmov mr2, r5
005a44  9f024000  addli r5, zero, 32
005a48  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
005a4c  7e8102e0  vmmov mr2, r5
005a50  9f020001  addli r5, zero, 128
005a54  ea213634  vor.u.mh vr3{mr2}, r12, vr3
005a58  7e8102e0  vmmov mr2, r5
005a5c  9f020002  addli r5, zero, 256
005a60  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
005a64  ea213534  vor.u.mh vr3{mr2}, r10, vr3
005a68  7e8102e0  vmmov mr2, r5
005a6c  9f020004  addli r5, zero, 512
005a70  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
005a74  7e8102e0  vmmov mr2, r5
005a78  9f020ff1  addli r5, r30, -1920
005a7c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005a80  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
005a84  9f020008  addli r5, zero, 1024
005a88  7e8102e0  vmmov mr2, r5
005a8c  9f020010  addli r5, zero, 2048
005a90  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005a94  7e8102e0  vmmov mr2, r5
005a98  e6c015a0  vmerge_h.hf vr1, vr11, vr1
005a9c  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
005aa0  ea213334  vor.u.mh vr3{mr2}, r6, vr3
005aa4  e3020ff3  loadli.w r5,  -1664(r30)
005aa8  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
005aac  9f020fe6  addli r5, r30, -3328
005ab0  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
005ab4  9f028fe0  addli r5, r30, -4032
005ab8  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005abc  9f020020  addli r5, zero, 4096
005ac0  26942002  vmac.f.mz.rn vr8{mr1}, vr1, vr2
005ac4  eeb084c2  vsrl.s.mz vr1{mr1}, vr9, vr8
005ac8  661104c0  vabs.f vr2, vr8
005acc  7e8102e0  vmmov mr2, r5
005ad0  ea213234  vor.u.mh vr3{mr2}, r4, vr3
005ad4  1f020040  addli r4, zero, 8192
005ad8  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005adc  7e0102e0  vmmov mr2, r4
005ae0  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
005ae4  ab410000  lui r3, 4
005ae8  96301402  vadd.s.mz vr1{mr1}, vr8, vr1
005aec  7e8101e0  vmmov mr2, r3
005af0  ea213134  vor.u.mh vr3{mr2}, r2, vr3
005af4  2b810000  lui r2, 8
005af8  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
005afc  fe0201a0  vmmov r5, mr2
005b00  92301902  vadd.s.mz vr1{mr1}, r18, vr1
005b04  7e0101e0  vmmov mr2, r2
005b08  2b014000  lui r2, 1024
005b0c  6a318122  vor.s.mz vr2{mr1}, r2, vr8
005b10  2ba1aaaa  lui r2, 699050
005b14  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
005b18  9bc0f200  srli r1, r5, 15
005b1c  1f215115  addli r2, r2, 2730
005b20  9b801000  andi r1, r1, 1
005b24  7e0101e0  vmmov mr2, r2
005b28  63018fd1  loadli.w r2,  -5952(r30)
005b2c  62403114  vscatter.mh vr3{mr2}, vr0{r2}
005b30  3bb00000  bneq r1, zero, 12
005b34  fab0f040  vextracti.s r1, 15(vr1)
005b38  5b010000  j 8
005b3c  fa30f140  vextracti.s r1, 15(vr2)
005b40  1bc1e200  srli r2, r5, 14
005b44  9f110000  addli r3, zero, 1
005b48  1b011100  andi r2, r2, 1
005b4c  7e8101e0  vmmov mr2, r3
005b50  3b300100  bneq r2, zero, 12
005b54  7ab1e040  vextracti.s r2, 14(vr1)
005b58  5b010000  j 8
005b5c  7a31e140  vextracti.s r2, 14(vr2)
005b60  9bc1d200  srli r3, r5, 13
005b64  9b811100  andi r3, r3, 1
005b68  3bb00100  bneq r3, zero, 12
005b6c  fab1d040  vextracti.s r3, 13(vr1)
005b70  5b010000  j 8
005b74  fa31d140  vextracti.s r3, 13(vr2)
005b78  1bc2c200  srli r4, r5, 12
005b7c  1b021200  andi r4, r4, 1
005b80  3b300200  bneq r4, zero, 12
005b84  7ab2c040  vextracti.s r4, 12(vr1)
005b88  5b010000  j 8
005b8c  7a32c140  vextracti.s r4, 12(vr2)
005b90  1bc3b200  srli r6, r5, 11
005b94  1b031300  andi r6, r6, 1
005b98  3b300300  bneq r6, zero, 12
005b9c  7ab3b040  vextracti.s r6, 11(vr1)
005ba0  5b010000  j 8
005ba4  7a33b140  vextracti.s r6, 11(vr2)
005ba8  9bc3a200  srli r7, r5, 10
005bac  9b831300  andi r7, r7, 1
005bb0  3bb00300  bneq r7, zero, 12
005bb4  fab3a040  vextracti.s r7, 10(vr1)
005bb8  5b010000  j 8
005bbc  fa33a140  vextracti.s r7, 10(vr2)
005bc0  1bc49200  srli r8, r5, 9
005bc4  1b041400  andi r8, r8, 1
005bc8  3b300400  bneq r8, zero, 12
005bcc  7ab49040  vextracti.s r8, 9(vr1)
005bd0  5b010000  j 8
005bd4  7a349140  vextracti.s r8, 9(vr2)
005bd8  9bc48200  srli r9, r5, 8
005bdc  9b841400  andi r9, r9, 1
005be0  3bb00400  bneq r9, zero, 12
005be4  fab48040  vextracti.s r9, 8(vr1)
005be8  5b010000  j 8
005bec  fa348140  vextracti.s r9, 8(vr2)
005bf0  1bc57200  srli r10, r5, 7
005bf4  1b051500  andi r10, r10, 1
005bf8  3b300500  bneq r10, zero, 12
005bfc  7ab57040  vextracti.s r10, 7(vr1)
005c00  5b010000  j 8
005c04  7a357140  vextracti.s r10, 7(vr2)
005c08  9bc56200  srli r11, r5, 6
005c0c  9b851500  andi r11, r11, 1
005c10  3bb00500  bneq r11, zero, 12
005c14  fab56040  vextracti.s r11, 6(vr1)
005c18  5b010000  j 8
005c1c  fa356140  vextracti.s r11, 6(vr2)
005c20  1bc65200  srli r12, r5, 5
005c24  1b061600  andi r12, r12, 1
005c28  3b300600  bneq r12, zero, 12
005c2c  7ab65040  vextracti.s r12, 5(vr1)
005c30  5b010000  j 8
005c34  7a365140  vextracti.s r12, 5(vr2)
005c38  9bc64200  srli r13, r5, 4
005c3c  9b861600  andi r13, r13, 1
005c40  3bb00600  bneq r13, zero, 12
005c44  fab64040  vextracti.s r13, 4(vr1)
005c48  5b010000  j 8
005c4c  fa364140  vextracti.s r13, 4(vr2)
005c50  9bc73200  srli r15, r5, 3
005c54  9b871700  andi r15, r15, 1
005c58  3bb00700  bneq r15, zero, 12
005c5c  fab73040  vextracti.s r15, 3(vr1)
005c60  5b010000  j 8
005c64  fa373140  vextracti.s r15, 3(vr2)
005c68  1bc82200  srli r16, r5, 2
005c6c  1b081800  andi r16, r16, 1
005c70  3b300800  bneq r16, zero, 12
005c74  7ab82040  vextracti.s r16, 2(vr1)
005c78  5b010000  j 8
005c7c  7a382140  vextracti.s r16, 2(vr2)
005c80  9bc81200  srli r17, r5, 1
005c84  9b881800  andi r17, r17, 1
005c88  3be00800  bneq r17, zero, 24
005c8c  fab81040  vextracti.s r17, 1(vr1)
005c90  9b821200  andi r5, r5, 1
005c94  37e00200  beq r5, zero, 24
005c98  fa320140  vextracti.s r5, 0(vr2)
005c9c  db020000  j 20
005ca0  fa381140  vextracti.s r17, 1(vr2)
005ca4  9b821200  andi r5, r5, 1
005ca8  bbcf02fe  bneq r5, zero, -16
005cac  fab20040  vextracti.s r5, 0(vr1)
005cb0  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
005cb4  e6c07580  vmerge_l.hf vr1, vr11, vr7
005cb8  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
005cbc  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
005cc0  9f220000  addli r5, zero, 2
005cc4  7e8102e0  vmmov mr2, r5
005cc8  9f021000  addli r5, zero, 8
005ccc  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
005cd0  7e8102e0  vmmov mr2, r5
005cd4  9f022000  addli r5, zero, 16
005cd8  ea213830  vor.u.mh vr3{mr0}, r16, vr3
005cdc  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
005ce0  7e8102e0  vmmov mr2, r5
005ce4  9f024000  addli r5, zero, 32
005ce8  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
005cec  7e8102e0  vmmov mr2, r5
005cf0  9f020001  addli r5, zero, 128
005cf4  ea213634  vor.u.mh vr3{mr2}, r12, vr3
005cf8  7e8102e0  vmmov mr2, r5
005cfc  9f020002  addli r5, zero, 256
005d00  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
005d04  ea213534  vor.u.mh vr3{mr2}, r10, vr3
005d08  7e8102e0  vmmov mr2, r5
005d0c  9f020004  addli r5, zero, 512
005d10  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
005d14  7e8102e0  vmmov mr2, r5
005d18  9f020008  addli r5, zero, 1024
005d1c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005d20  7e8102e0  vmmov mr2, r5
005d24  9f020010  addli r5, zero, 2048
005d28  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005d2c  7e8102e0  vmmov mr2, r5
005d30  ea213334  vor.u.mh vr3{mr2}, r6, vr3
005d34  e3020ff3  loadli.w r5,  -1664(r30)
005d38  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
005d3c  9f020fe7  addli r5, r30, -3200
005d40  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
005d44  9f028fe3  addli r5, r30, -3648
005d48  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005d4c  9f020020  addli r5, zero, 4096
005d50  26942002  vmac.f.mz.rn vr8{mr1}, vr1, vr2
005d54  eeb084c2  vsrl.s.mz vr1{mr1}, vr9, vr8
005d58  661104c0  vabs.f vr2, vr8
005d5c  7e8102e0  vmmov mr2, r5
005d60  ea213234  vor.u.mh vr3{mr2}, r4, vr3
005d64  1f020040  addli r4, zero, 8192
005d68  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005d6c  7e0102e0  vmmov mr2, r4
005d70  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
005d74  ab410000  lui r3, 4
005d78  96301402  vadd.s.mz vr1{mr1}, vr8, vr1
005d7c  7e8101e0  vmmov mr2, r3
005d80  ea213134  vor.u.mh vr3{mr2}, r2, vr3
005d84  2b810000  lui r2, 8
005d88  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
005d8c  fe0201a0  vmmov r5, mr2
005d90  92301902  vadd.s.mz vr1{mr1}, r18, vr1
005d94  7e0101e0  vmmov mr2, r2
005d98  2b014000  lui r2, 1024
005d9c  6a318122  vor.s.mz vr2{mr1}, r2, vr8
005da0  2ba1aaaa  lui r2, 699050
005da4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
005da8  9bc0f200  srli r1, r5, 15
005dac  1f215115  addli r2, r2, 2730
005db0  9b801000  andi r1, r1, 1
005db4  7e0101e0  vmmov mr2, r2
005db8  63014fd1  loadli.w r2,  -5984(r30)
005dbc  62403114  vscatter.mh vr3{mr2}, vr0{r2}
005dc0  3bb00000  bneq r1, zero, 12
005dc4  fab0f040  vextracti.s r1, 15(vr1)
005dc8  5b010000  j 8
005dcc  fa30f140  vextracti.s r1, 15(vr2)
005dd0  1bc1e200  srli r2, r5, 14
005dd4  9f110000  addli r3, zero, 1
005dd8  1b011100  andi r2, r2, 1
005ddc  7e8101e0  vmmov mr2, r3
005de0  3b300100  bneq r2, zero, 12
005de4  7ab1e040  vextracti.s r2, 14(vr1)
005de8  5b010000  j 8
005dec  7a31e140  vextracti.s r2, 14(vr2)
005df0  9bc1d200  srli r3, r5, 13
005df4  9b811100  andi r3, r3, 1
005df8  3bb00100  bneq r3, zero, 12
005dfc  fab1d040  vextracti.s r3, 13(vr1)
005e00  5b010000  j 8
005e04  fa31d140  vextracti.s r3, 13(vr2)
005e08  1bc2c200  srli r4, r5, 12
005e0c  1b021200  andi r4, r4, 1
005e10  3b300200  bneq r4, zero, 12
005e14  7ab2c040  vextracti.s r4, 12(vr1)
005e18  5b010000  j 8
005e1c  7a32c140  vextracti.s r4, 12(vr2)
005e20  1bc3b200  srli r6, r5, 11
005e24  1b031300  andi r6, r6, 1
005e28  3b300300  bneq r6, zero, 12
005e2c  7ab3b040  vextracti.s r6, 11(vr1)
005e30  5b010000  j 8
005e34  7a33b140  vextracti.s r6, 11(vr2)
005e38  9bc3a200  srli r7, r5, 10
005e3c  9b831300  andi r7, r7, 1
005e40  3bb00300  bneq r7, zero, 12
005e44  fab3a040  vextracti.s r7, 10(vr1)
005e48  5b010000  j 8
005e4c  fa33a140  vextracti.s r7, 10(vr2)
005e50  1bc49200  srli r8, r5, 9
005e54  1b041400  andi r8, r8, 1
005e58  3b300400  bneq r8, zero, 12
005e5c  7ab49040  vextracti.s r8, 9(vr1)
005e60  5b010000  j 8
005e64  7a349140  vextracti.s r8, 9(vr2)
005e68  9bc48200  srli r9, r5, 8
005e6c  9b841400  andi r9, r9, 1
005e70  3bb00400  bneq r9, zero, 12
005e74  fab48040  vextracti.s r9, 8(vr1)
005e78  5b010000  j 8
005e7c  fa348140  vextracti.s r9, 8(vr2)
005e80  1bc57200  srli r10, r5, 7
005e84  1b051500  andi r10, r10, 1
005e88  3b300500  bneq r10, zero, 12
005e8c  7ab57040  vextracti.s r10, 7(vr1)
005e90  5b010000  j 8
005e94  7a357140  vextracti.s r10, 7(vr2)
005e98  9bc56200  srli r11, r5, 6
005e9c  9b851500  andi r11, r11, 1
005ea0  3bb00500  bneq r11, zero, 12
005ea4  fab56040  vextracti.s r11, 6(vr1)
005ea8  5b010000  j 8
005eac  fa356140  vextracti.s r11, 6(vr2)
005eb0  1bc65200  srli r12, r5, 5
005eb4  1b061600  andi r12, r12, 1
005eb8  3b300600  bneq r12, zero, 12
005ebc  7ab65040  vextracti.s r12, 5(vr1)
005ec0  5b010000  j 8
005ec4  7a365140  vextracti.s r12, 5(vr2)
005ec8  9bc64200  srli r13, r5, 4
005ecc  9b861600  andi r13, r13, 1
005ed0  3bb00600  bneq r13, zero, 12
005ed4  fab64040  vextracti.s r13, 4(vr1)
005ed8  5b010000  j 8
005edc  fa364140  vextracti.s r13, 4(vr2)
005ee0  9bc73200  srli r15, r5, 3
005ee4  9b871700  andi r15, r15, 1
005ee8  3bb00700  bneq r15, zero, 12
005eec  fab73040  vextracti.s r15, 3(vr1)
005ef0  5b010000  j 8
005ef4  fa373140  vextracti.s r15, 3(vr2)
005ef8  1bc82200  srli r16, r5, 2
005efc  1b081800  andi r16, r16, 1
005f00  3b300800  bneq r16, zero, 12
005f04  7ab82040  vextracti.s r16, 2(vr1)
005f08  5b010000  j 8
005f0c  7a382140  vextracti.s r16, 2(vr2)
005f10  9bc81200  srli r17, r5, 1
005f14  9b881800  andi r17, r17, 1
005f18  3be00800  bneq r17, zero, 24
005f1c  fab81040  vextracti.s r17, 1(vr1)
005f20  9b821200  andi r5, r5, 1
005f24  37e00200  beq r5, zero, 24
005f28  fa320140  vextracti.s r5, 0(vr2)
005f2c  db020000  j 20
005f30  fa381140  vextracti.s r17, 1(vr2)
005f34  9b821200  andi r5, r5, 1
005f38  bbcf02fe  bneq r5, zero, -16
005f3c  fab20040  vextracti.s r5, 0(vr1)
005f40  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
005f44  e6c075a0  vmerge_h.hf vr1, vr11, vr7
005f48  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
005f4c  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
005f50  9f220000  addli r5, zero, 2
005f54  7e8102e0  vmmov mr2, r5
005f58  9f021000  addli r5, zero, 8
005f5c  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
005f60  7e8102e0  vmmov mr2, r5
005f64  9f022000  addli r5, zero, 16
005f68  ea213830  vor.u.mh vr3{mr0}, r16, vr3
005f6c  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
005f70  7e8102e0  vmmov mr2, r5
005f74  9f024000  addli r5, zero, 32
005f78  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
005f7c  7e8102e0  vmmov mr2, r5
005f80  9f020001  addli r5, zero, 128
005f84  ea213634  vor.u.mh vr3{mr2}, r12, vr3
005f88  7e8102e0  vmmov mr2, r5
005f8c  9f020002  addli r5, zero, 256
005f90  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
005f94  ea213534  vor.u.mh vr3{mr2}, r10, vr3
005f98  7e8102e0  vmmov mr2, r5
005f9c  9f020004  addli r5, zero, 512
005fa0  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
005fa4  7e8102e0  vmmov mr2, r5
005fa8  9f020008  addli r5, zero, 1024
005fac  ea213434  vor.u.mh vr3{mr2}, r8, vr3
005fb0  7e8102e0  vmmov mr2, r5
005fb4  9f020010  addli r5, zero, 2048
005fb8  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
005fbc  7e8102e0  vmmov mr2, r5
005fc0  ea213334  vor.u.mh vr3{mr2}, r6, vr3
005fc4  e3020ff3  loadli.w r5,  -1664(r30)
005fc8  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
005fcc  9f020fe8  addli r5, r30, -3072
005fd0  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
005fd4  9f028fe4  addli r5, r30, -3520
005fd8  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
005fdc  9f020020  addli r5, zero, 4096
005fe0  a6932002  vmac.f.mz.rn vr7{mr1}, vr1, vr2
005fe4  eeb074c2  vsrl.s.mz vr1{mr1}, vr9, vr7
005fe8  669103c0  vabs.f vr2, vr7
005fec  7e8102e0  vmmov mr2, r5
005ff0  ea213234  vor.u.mh vr3{mr2}, r4, vr3
005ff4  1f020040  addli r4, zero, 8192
005ff8  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
005ffc  7e0102e0  vmmov mr2, r4
006000  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
006004  ab410000  lui r3, 4
006008  96b01302  vadd.s.mz vr1{mr1}, vr7, vr1
00600c  7e8101e0  vmmov mr2, r3
006010  ea213134  vor.u.mh vr3{mr2}, r2, vr3
006014  2b810000  lui r2, 8
006018  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
00601c  fe0201a0  vmmov r5, mr2
006020  92301902  vadd.s.mz vr1{mr1}, r18, vr1
006024  7e0101e0  vmmov mr2, r2
006028  2b014000  lui r2, 1024
00602c  6a317122  vor.s.mz vr2{mr1}, r2, vr7
006030  2ba1aaaa  lui r2, 699050
006034  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
006038  9bc0f200  srli r1, r5, 15
00603c  1f215115  addli r2, r2, 2730
006040  9b801000  andi r1, r1, 1
006044  7e0101e0  vmmov mr2, r2
006048  63417fd1  loadli.w r2,  -5956(r30)
00604c  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006050  3bb00000  bneq r1, zero, 12
006054  fab0f040  vextracti.s r1, 15(vr1)
006058  5b010000  j 8
00605c  fa30f140  vextracti.s r1, 15(vr2)
006060  1bc1e200  srli r2, r5, 14
006064  9f110000  addli r3, zero, 1
006068  1b011100  andi r2, r2, 1
00606c  7e8101e0  vmmov mr2, r3
006070  3b300100  bneq r2, zero, 12
006074  7ab1e040  vextracti.s r2, 14(vr1)
006078  5b010000  j 8
00607c  7a31e140  vextracti.s r2, 14(vr2)
006080  9bc1d200  srli r3, r5, 13
006084  9b811100  andi r3, r3, 1
006088  3bb00100  bneq r3, zero, 12
00608c  fab1d040  vextracti.s r3, 13(vr1)
006090  5b010000  j 8
006094  fa31d140  vextracti.s r3, 13(vr2)
006098  1bc2c200  srli r4, r5, 12
00609c  1b021200  andi r4, r4, 1
0060a0  3b300200  bneq r4, zero, 12
0060a4  7ab2c040  vextracti.s r4, 12(vr1)
0060a8  5b010000  j 8
0060ac  7a32c140  vextracti.s r4, 12(vr2)
0060b0  1bc3b200  srli r6, r5, 11
0060b4  1b031300  andi r6, r6, 1
0060b8  3b300300  bneq r6, zero, 12
0060bc  7ab3b040  vextracti.s r6, 11(vr1)
0060c0  5b010000  j 8
0060c4  7a33b140  vextracti.s r6, 11(vr2)
0060c8  9bc3a200  srli r7, r5, 10
0060cc  9b831300  andi r7, r7, 1
0060d0  3bb00300  bneq r7, zero, 12
0060d4  fab3a040  vextracti.s r7, 10(vr1)
0060d8  5b010000  j 8
0060dc  fa33a140  vextracti.s r7, 10(vr2)
0060e0  1bc49200  srli r8, r5, 9
0060e4  1b041400  andi r8, r8, 1
0060e8  3b300400  bneq r8, zero, 12
0060ec  7ab49040  vextracti.s r8, 9(vr1)
0060f0  5b010000  j 8
0060f4  7a349140  vextracti.s r8, 9(vr2)
0060f8  9bc48200  srli r9, r5, 8
0060fc  9b841400  andi r9, r9, 1
006100  3bb00400  bneq r9, zero, 12
006104  fab48040  vextracti.s r9, 8(vr1)
006108  5b010000  j 8
00610c  fa348140  vextracti.s r9, 8(vr2)
006110  1bc57200  srli r10, r5, 7
006114  1b051500  andi r10, r10, 1
006118  3b300500  bneq r10, zero, 12
00611c  7ab57040  vextracti.s r10, 7(vr1)
006120  5b010000  j 8
006124  7a357140  vextracti.s r10, 7(vr2)
006128  9bc56200  srli r11, r5, 6
00612c  9b851500  andi r11, r11, 1
006130  3bb00500  bneq r11, zero, 12
006134  fab56040  vextracti.s r11, 6(vr1)
006138  5b010000  j 8
00613c  fa356140  vextracti.s r11, 6(vr2)
006140  1bc65200  srli r12, r5, 5
006144  1b061600  andi r12, r12, 1
006148  3b300600  bneq r12, zero, 12
00614c  7ab65040  vextracti.s r12, 5(vr1)
006150  5b010000  j 8
006154  7a365140  vextracti.s r12, 5(vr2)
006158  9bc64200  srli r13, r5, 4
00615c  9b861600  andi r13, r13, 1
006160  3bb00600  bneq r13, zero, 12
006164  fab64040  vextracti.s r13, 4(vr1)
006168  5b010000  j 8
00616c  fa364140  vextracti.s r13, 4(vr2)
006170  9bc73200  srli r15, r5, 3
006174  9b871700  andi r15, r15, 1
006178  3bb00700  bneq r15, zero, 12
00617c  fab73040  vextracti.s r15, 3(vr1)
006180  5b010000  j 8
006184  fa373140  vextracti.s r15, 3(vr2)
006188  1bc82200  srli r16, r5, 2
00618c  1b081800  andi r16, r16, 1
006190  3b300800  bneq r16, zero, 12
006194  7ab82040  vextracti.s r16, 2(vr1)
006198  5b010000  j 8
00619c  7a382140  vextracti.s r16, 2(vr2)
0061a0  9bc81200  srli r17, r5, 1
0061a4  9b881800  andi r17, r17, 1
0061a8  3be00800  bneq r17, zero, 24
0061ac  fab81040  vextracti.s r17, 1(vr1)
0061b0  9b821200  andi r5, r5, 1
0061b4  37e00200  beq r5, zero, 24
0061b8  fa320140  vextracti.s r5, 0(vr2)
0061bc  db020000  j 20
0061c0  fa381140  vextracti.s r17, 1(vr2)
0061c4  9b821200  andi r5, r5, 1
0061c8  bbcf02fe  bneq r5, zero, -16
0061cc  fab20040  vextracti.s r5, 0(vr1)
0061d0  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
0061d4  e6c06580  vmerge_l.hf vr1, vr11, vr6
0061d8  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0061dc  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
0061e0  9f220000  addli r5, zero, 2
0061e4  7e8102e0  vmmov mr2, r5
0061e8  9f021000  addli r5, zero, 8
0061ec  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
0061f0  7e8102e0  vmmov mr2, r5
0061f4  9f022000  addli r5, zero, 16
0061f8  ea213830  vor.u.mh vr3{mr0}, r16, vr3
0061fc  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
006200  7e8102e0  vmmov mr2, r5
006204  9f024000  addli r5, zero, 32
006208  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
00620c  7e8102e0  vmmov mr2, r5
006210  9f020001  addli r5, zero, 128
006214  ea213634  vor.u.mh vr3{mr2}, r12, vr3
006218  7e8102e0  vmmov mr2, r5
00621c  9f020002  addli r5, zero, 256
006220  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
006224  ea213534  vor.u.mh vr3{mr2}, r10, vr3
006228  7e8102e0  vmmov mr2, r5
00622c  9f020004  addli r5, zero, 512
006230  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
006234  7e8102e0  vmmov mr2, r5
006238  9f020008  addli r5, zero, 1024
00623c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
006240  7e8102e0  vmmov mr2, r5
006244  9f020010  addli r5, zero, 2048
006248  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
00624c  7e8102e0  vmmov mr2, r5
006250  ea213334  vor.u.mh vr3{mr2}, r6, vr3
006254  e3020ff3  loadli.w r5,  -1664(r30)
006258  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
00625c  9f028fe9  addli r5, r30, -2880
006260  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
006264  9f028fe5  addli r5, r30, -3392
006268  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
00626c  9f020020  addli r5, zero, 4096
006270  a6932002  vmac.f.mz.rn vr7{mr1}, vr1, vr2
006274  eeb074c2  vsrl.s.mz vr1{mr1}, vr9, vr7
006278  669103c0  vabs.f vr2, vr7
00627c  7e8102e0  vmmov mr2, r5
006280  ea213234  vor.u.mh vr3{mr2}, r4, vr3
006284  1f020040  addli r4, zero, 8192
006288  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
00628c  7e0102e0  vmmov mr2, r4
006290  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
006294  ab410000  lui r3, 4
006298  96b01302  vadd.s.mz vr1{mr1}, vr7, vr1
00629c  7e8101e0  vmmov mr2, r3
0062a0  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0062a4  2b810000  lui r2, 8
0062a8  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
0062ac  fe0201a0  vmmov r5, mr2
0062b0  92301902  vadd.s.mz vr1{mr1}, r18, vr1
0062b4  7e0101e0  vmmov mr2, r2
0062b8  2b014000  lui r2, 1024
0062bc  6a317122  vor.s.mz vr2{mr1}, r2, vr7
0062c0  2ba1aaaa  lui r2, 699050
0062c4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0062c8  9bc0f200  srli r1, r5, 15
0062cc  1f215115  addli r2, r2, 2730
0062d0  9b801000  andi r1, r1, 1
0062d4  7e0101e0  vmmov mr2, r2
0062d8  63013fd1  loadli.w r2,  -5992(r30)
0062dc  62403114  vscatter.mh vr3{mr2}, vr0{r2}
0062e0  3bb00000  bneq r1, zero, 12
0062e4  fab0f040  vextracti.s r1, 15(vr1)
0062e8  5b010000  j 8
0062ec  fa30f140  vextracti.s r1, 15(vr2)
0062f0  1bc1e200  srli r2, r5, 14
0062f4  9f110000  addli r3, zero, 1
0062f8  1b011100  andi r2, r2, 1
0062fc  7e8101e0  vmmov mr2, r3
006300  3b300100  bneq r2, zero, 12
006304  7ab1e040  vextracti.s r2, 14(vr1)
006308  5b010000  j 8
00630c  7a31e140  vextracti.s r2, 14(vr2)
006310  9bc1d200  srli r3, r5, 13
006314  9b811100  andi r3, r3, 1
006318  3bb00100  bneq r3, zero, 12
00631c  fab1d040  vextracti.s r3, 13(vr1)
006320  5b010000  j 8
006324  fa31d140  vextracti.s r3, 13(vr2)
006328  1bc2c200  srli r4, r5, 12
00632c  1b021200  andi r4, r4, 1
006330  3b300200  bneq r4, zero, 12
006334  7ab2c040  vextracti.s r4, 12(vr1)
006338  5b010000  j 8
00633c  7a32c140  vextracti.s r4, 12(vr2)
006340  1bc3b200  srli r6, r5, 11
006344  1b031300  andi r6, r6, 1
006348  3b300300  bneq r6, zero, 12
00634c  7ab3b040  vextracti.s r6, 11(vr1)
006350  5b010000  j 8
006354  7a33b140  vextracti.s r6, 11(vr2)
006358  9bc3a200  srli r7, r5, 10
00635c  9b831300  andi r7, r7, 1
006360  3bb00300  bneq r7, zero, 12
006364  fab3a040  vextracti.s r7, 10(vr1)
006368  5b010000  j 8
00636c  fa33a140  vextracti.s r7, 10(vr2)
006370  1bc49200  srli r8, r5, 9
006374  1b041400  andi r8, r8, 1
006378  3b300400  bneq r8, zero, 12
00637c  7ab49040  vextracti.s r8, 9(vr1)
006380  5b010000  j 8
006384  7a349140  vextracti.s r8, 9(vr2)
006388  9bc48200  srli r9, r5, 8
00638c  9b841400  andi r9, r9, 1
006390  3bb00400  bneq r9, zero, 12
006394  fab48040  vextracti.s r9, 8(vr1)
006398  5b010000  j 8
00639c  fa348140  vextracti.s r9, 8(vr2)
0063a0  1bc57200  srli r10, r5, 7
0063a4  1b051500  andi r10, r10, 1
0063a8  3b300500  bneq r10, zero, 12
0063ac  7ab57040  vextracti.s r10, 7(vr1)
0063b0  5b010000  j 8
0063b4  7a357140  vextracti.s r10, 7(vr2)
0063b8  9bc56200  srli r11, r5, 6
0063bc  9b851500  andi r11, r11, 1
0063c0  3bb00500  bneq r11, zero, 12
0063c4  fab56040  vextracti.s r11, 6(vr1)
0063c8  5b010000  j 8
0063cc  fa356140  vextracti.s r11, 6(vr2)
0063d0  1bc65200  srli r12, r5, 5
0063d4  1b061600  andi r12, r12, 1
0063d8  3b300600  bneq r12, zero, 12
0063dc  7ab65040  vextracti.s r12, 5(vr1)
0063e0  5b010000  j 8
0063e4  7a365140  vextracti.s r12, 5(vr2)
0063e8  9bc64200  srli r13, r5, 4
0063ec  9b861600  andi r13, r13, 1
0063f0  3bb00600  bneq r13, zero, 12
0063f4  fab64040  vextracti.s r13, 4(vr1)
0063f8  5b010000  j 8
0063fc  fa364140  vextracti.s r13, 4(vr2)
006400  9bc73200  srli r15, r5, 3
006404  9b871700  andi r15, r15, 1
006408  3bb00700  bneq r15, zero, 12
00640c  fab73040  vextracti.s r15, 3(vr1)
006410  5b010000  j 8
006414  fa373140  vextracti.s r15, 3(vr2)
006418  1bc82200  srli r16, r5, 2
00641c  1b081800  andi r16, r16, 1
006420  3b300800  bneq r16, zero, 12
006424  7ab82040  vextracti.s r16, 2(vr1)
006428  5b010000  j 8
00642c  7a382140  vextracti.s r16, 2(vr2)
006430  9bc81200  srli r17, r5, 1
006434  9b881800  andi r17, r17, 1
006438  3be00800  bneq r17, zero, 24
00643c  fab81040  vextracti.s r17, 1(vr1)
006440  9b821200  andi r5, r5, 1
006444  37e00200  beq r5, zero, 24
006448  fa320140  vextracti.s r5, 0(vr2)
00644c  db020000  j 20
006450  fa381140  vextracti.s r17, 1(vr2)
006454  9b821200  andi r5, r5, 1
006458  bbcf02fe  bneq r5, zero, -16
00645c  fab20040  vextracti.s r5, 0(vr1)
006460  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006464  e6c065a0  vmerge_h.hf vr1, vr11, vr6
006468  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00646c  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006470  9f220000  addli r5, zero, 2
006474  7e8102e0  vmmov mr2, r5
006478  9f021000  addli r5, zero, 8
00647c  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006480  7e8102e0  vmmov mr2, r5
006484  9f022000  addli r5, zero, 16
006488  ea213830  vor.u.mh vr3{mr0}, r16, vr3
00648c  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
006490  7e8102e0  vmmov mr2, r5
006494  9f024000  addli r5, zero, 32
006498  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
00649c  7e8102e0  vmmov mr2, r5
0064a0  9f020001  addli r5, zero, 128
0064a4  ea213634  vor.u.mh vr3{mr2}, r12, vr3
0064a8  7e8102e0  vmmov mr2, r5
0064ac  9f020002  addli r5, zero, 256
0064b0  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
0064b4  ea213534  vor.u.mh vr3{mr2}, r10, vr3
0064b8  7e8102e0  vmmov mr2, r5
0064bc  9f020004  addli r5, zero, 512
0064c0  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
0064c4  7e8102e0  vmmov mr2, r5
0064c8  9f020008  addli r5, zero, 1024
0064cc  ea213434  vor.u.mh vr3{mr2}, r8, vr3
0064d0  7e8102e0  vmmov mr2, r5
0064d4  9f020010  addli r5, zero, 2048
0064d8  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
0064dc  7e8102e0  vmmov mr2, r5
0064e0  ea213334  vor.u.mh vr3{mr2}, r6, vr3
0064e4  e3020ff3  loadli.w r5,  -1664(r30)
0064e8  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
0064ec  9f028fea  addli r5, r30, -2752
0064f0  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
0064f4  9f028fe6  addli r5, r30, -3264
0064f8  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
0064fc  9f020020  addli r5, zero, 4096
006500  26932002  vmac.f.mz.rn vr6{mr1}, vr1, vr2
006504  eeb064c2  vsrl.s.mz vr1{mr1}, vr9, vr6
006508  661103c0  vabs.f vr2, vr6
00650c  7e8102e0  vmmov mr2, r5
006510  ea213234  vor.u.mh vr3{mr2}, r4, vr3
006514  1f020040  addli r4, zero, 8192
006518  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
00651c  7e0102e0  vmmov mr2, r4
006520  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
006524  ab410000  lui r3, 4
006528  96301302  vadd.s.mz vr1{mr1}, vr6, vr1
00652c  7e8101e0  vmmov mr2, r3
006530  ea213134  vor.u.mh vr3{mr2}, r2, vr3
006534  2b810000  lui r2, 8
006538  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
00653c  fe0201a0  vmmov r5, mr2
006540  92301902  vadd.s.mz vr1{mr1}, r18, vr1
006544  7e0101e0  vmmov mr2, r2
006548  2b014000  lui r2, 1024
00654c  6a316122  vor.s.mz vr2{mr1}, r2, vr6
006550  2ba1aaaa  lui r2, 699050
006554  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
006558  9bc0f200  srli r1, r5, 15
00655c  1f215115  addli r2, r2, 2730
006560  9b801000  andi r1, r1, 1
006564  7e0101e0  vmmov mr2, r2
006568  63017fd1  loadli.w r2,  -5960(r30)
00656c  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006570  3bb00000  bneq r1, zero, 12
006574  fab0f040  vextracti.s r1, 15(vr1)
006578  5b010000  j 8
00657c  fa30f140  vextracti.s r1, 15(vr2)
006580  1bc1e200  srli r2, r5, 14
006584  9f110000  addli r3, zero, 1
006588  1b011100  andi r2, r2, 1
00658c  7e8101e0  vmmov mr2, r3
006590  3b300100  bneq r2, zero, 12
006594  7ab1e040  vextracti.s r2, 14(vr1)
006598  5b010000  j 8
00659c  7a31e140  vextracti.s r2, 14(vr2)
0065a0  9bc1d200  srli r3, r5, 13
0065a4  9b811100  andi r3, r3, 1
0065a8  3bb00100  bneq r3, zero, 12
0065ac  fab1d040  vextracti.s r3, 13(vr1)
0065b0  5b010000  j 8
0065b4  fa31d140  vextracti.s r3, 13(vr2)
0065b8  1bc2c200  srli r4, r5, 12
0065bc  1b021200  andi r4, r4, 1
0065c0  3b300200  bneq r4, zero, 12
0065c4  7ab2c040  vextracti.s r4, 12(vr1)
0065c8  5b010000  j 8
0065cc  7a32c140  vextracti.s r4, 12(vr2)
0065d0  1bc3b200  srli r6, r5, 11
0065d4  1b031300  andi r6, r6, 1
0065d8  3b300300  bneq r6, zero, 12
0065dc  7ab3b040  vextracti.s r6, 11(vr1)
0065e0  5b010000  j 8
0065e4  7a33b140  vextracti.s r6, 11(vr2)
0065e8  9bc3a200  srli r7, r5, 10
0065ec  9b831300  andi r7, r7, 1
0065f0  3bb00300  bneq r7, zero, 12
0065f4  fab3a040  vextracti.s r7, 10(vr1)
0065f8  5b010000  j 8
0065fc  fa33a140  vextracti.s r7, 10(vr2)
006600  1bc49200  srli r8, r5, 9
006604  1b041400  andi r8, r8, 1
006608  3b300400  bneq r8, zero, 12
00660c  7ab49040  vextracti.s r8, 9(vr1)
006610  5b010000  j 8
006614  7a349140  vextracti.s r8, 9(vr2)
006618  9bc48200  srli r9, r5, 8
00661c  9b841400  andi r9, r9, 1
006620  3bb00400  bneq r9, zero, 12
006624  fab48040  vextracti.s r9, 8(vr1)
006628  5b010000  j 8
00662c  fa348140  vextracti.s r9, 8(vr2)
006630  1bc57200  srli r10, r5, 7
006634  1b051500  andi r10, r10, 1
006638  3b300500  bneq r10, zero, 12
00663c  7ab57040  vextracti.s r10, 7(vr1)
006640  5b010000  j 8
006644  7a357140  vextracti.s r10, 7(vr2)
006648  9bc56200  srli r11, r5, 6
00664c  9b851500  andi r11, r11, 1
006650  3bb00500  bneq r11, zero, 12
006654  fab56040  vextracti.s r11, 6(vr1)
006658  5b010000  j 8
00665c  fa356140  vextracti.s r11, 6(vr2)
006660  1bc65200  srli r12, r5, 5
006664  1b061600  andi r12, r12, 1
006668  3b300600  bneq r12, zero, 12
00666c  7ab65040  vextracti.s r12, 5(vr1)
006670  5b010000  j 8
006674  7a365140  vextracti.s r12, 5(vr2)
006678  9bc64200  srli r13, r5, 4
00667c  9b861600  andi r13, r13, 1
006680  3bb00600  bneq r13, zero, 12
006684  fab64040  vextracti.s r13, 4(vr1)
006688  5b010000  j 8
00668c  fa364140  vextracti.s r13, 4(vr2)
006690  9bc73200  srli r15, r5, 3
006694  9b871700  andi r15, r15, 1
006698  3bb00700  bneq r15, zero, 12
00669c  fab73040  vextracti.s r15, 3(vr1)
0066a0  5b010000  j 8
0066a4  fa373140  vextracti.s r15, 3(vr2)
0066a8  1bc82200  srli r16, r5, 2
0066ac  1b081800  andi r16, r16, 1
0066b0  3b300800  bneq r16, zero, 12
0066b4  7ab82040  vextracti.s r16, 2(vr1)
0066b8  5b010000  j 8
0066bc  7a382140  vextracti.s r16, 2(vr2)
0066c0  9bc81200  srli r17, r5, 1
0066c4  9b881800  andi r17, r17, 1
0066c8  3be00800  bneq r17, zero, 24
0066cc  fab81040  vextracti.s r17, 1(vr1)
0066d0  9b821200  andi r5, r5, 1
0066d4  37e00200  beq r5, zero, 24
0066d8  fa320140  vextracti.s r5, 0(vr2)
0066dc  db020000  j 20
0066e0  fa381140  vextracti.s r17, 1(vr2)
0066e4  9b821200  andi r5, r5, 1
0066e8  bbcf02fe  bneq r5, zero, -16
0066ec  fab20040  vextracti.s r5, 0(vr1)
0066f0  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
0066f4  e6c05580  vmerge_l.hf vr1, vr11, vr5
0066f8  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
0066fc  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006700  9f220000  addli r5, zero, 2
006704  7e8102e0  vmmov mr2, r5
006708  9f021000  addli r5, zero, 8
00670c  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006710  7e8102e0  vmmov mr2, r5
006714  9f022000  addli r5, zero, 16
006718  ea213830  vor.u.mh vr3{mr0}, r16, vr3
00671c  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
006720  7e8102e0  vmmov mr2, r5
006724  9f024000  addli r5, zero, 32
006728  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
00672c  7e8102e0  vmmov mr2, r5
006730  9f020001  addli r5, zero, 128
006734  ea213634  vor.u.mh vr3{mr2}, r12, vr3
006738  7e8102e0  vmmov mr2, r5
00673c  9f020002  addli r5, zero, 256
006740  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
006744  ea213534  vor.u.mh vr3{mr2}, r10, vr3
006748  7e8102e0  vmmov mr2, r5
00674c  9f020004  addli r5, zero, 512
006750  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
006754  7e8102e0  vmmov mr2, r5
006758  9f020008  addli r5, zero, 1024
00675c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
006760  7e8102e0  vmmov mr2, r5
006764  9f020010  addli r5, zero, 2048
006768  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
00676c  7e8102e0  vmmov mr2, r5
006770  ea213334  vor.u.mh vr3{mr2}, r6, vr3
006774  e3020ff3  loadli.w r5,  -1664(r30)
006778  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
00677c  9f028feb  addli r5, r30, -2624
006780  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
006784  9f028fe7  addli r5, r30, -3136
006788  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
00678c  9f020020  addli r5, zero, 4096
006790  26932002  vmac.f.mz.rn vr6{mr1}, vr1, vr2
006794  eeb064c2  vsrl.s.mz vr1{mr1}, vr9, vr6
006798  661103c0  vabs.f vr2, vr6
00679c  7e8102e0  vmmov mr2, r5
0067a0  ea213234  vor.u.mh vr3{mr2}, r4, vr3
0067a4  1f020040  addli r4, zero, 8192
0067a8  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
0067ac  7e0102e0  vmmov mr2, r4
0067b0  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
0067b4  ab410000  lui r3, 4
0067b8  96301302  vadd.s.mz vr1{mr1}, vr6, vr1
0067bc  7e8101e0  vmmov mr2, r3
0067c0  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0067c4  2b810000  lui r2, 8
0067c8  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
0067cc  fe0201a0  vmmov r5, mr2
0067d0  92301902  vadd.s.mz vr1{mr1}, r18, vr1
0067d4  7e0101e0  vmmov mr2, r2
0067d8  2b014000  lui r2, 1024
0067dc  6a316122  vor.s.mz vr2{mr1}, r2, vr6
0067e0  2ba1aaaa  lui r2, 699050
0067e4  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0067e8  9bc0f200  srli r1, r5, 15
0067ec  1f215115  addli r2, r2, 2730
0067f0  9b801000  andi r1, r1, 1
0067f4  7e0101e0  vmmov mr2, r2
0067f8  63412fd1  loadli.w r2,  -5996(r30)
0067fc  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006800  3bb00000  bneq r1, zero, 12
006804  fab0f040  vextracti.s r1, 15(vr1)
006808  5b010000  j 8
00680c  fa30f140  vextracti.s r1, 15(vr2)
006810  1bc1e200  srli r2, r5, 14
006814  9f110000  addli r3, zero, 1
006818  1b011100  andi r2, r2, 1
00681c  7e8101e0  vmmov mr2, r3
006820  3b300100  bneq r2, zero, 12
006824  7ab1e040  vextracti.s r2, 14(vr1)
006828  5b010000  j 8
00682c  7a31e140  vextracti.s r2, 14(vr2)
006830  9bc1d200  srli r3, r5, 13
006834  9b811100  andi r3, r3, 1
006838  3bb00100  bneq r3, zero, 12
00683c  fab1d040  vextracti.s r3, 13(vr1)
006840  5b010000  j 8
006844  fa31d140  vextracti.s r3, 13(vr2)
006848  1bc2c200  srli r4, r5, 12
00684c  1b021200  andi r4, r4, 1
006850  3b300200  bneq r4, zero, 12
006854  7ab2c040  vextracti.s r4, 12(vr1)
006858  5b010000  j 8
00685c  7a32c140  vextracti.s r4, 12(vr2)
006860  1bc3b200  srli r6, r5, 11
006864  1b031300  andi r6, r6, 1
006868  3b300300  bneq r6, zero, 12
00686c  7ab3b040  vextracti.s r6, 11(vr1)
006870  5b010000  j 8
006874  7a33b140  vextracti.s r6, 11(vr2)
006878  9bc3a200  srli r7, r5, 10
00687c  9b831300  andi r7, r7, 1
006880  3bb00300  bneq r7, zero, 12
006884  fab3a040  vextracti.s r7, 10(vr1)
006888  5b010000  j 8
00688c  fa33a140  vextracti.s r7, 10(vr2)
006890  1bc49200  srli r8, r5, 9
006894  1b041400  andi r8, r8, 1
006898  3b300400  bneq r8, zero, 12
00689c  7ab49040  vextracti.s r8, 9(vr1)
0068a0  5b010000  j 8
0068a4  7a349140  vextracti.s r8, 9(vr2)
0068a8  9bc48200  srli r9, r5, 8
0068ac  9b841400  andi r9, r9, 1
0068b0  3bb00400  bneq r9, zero, 12
0068b4  fab48040  vextracti.s r9, 8(vr1)
0068b8  5b010000  j 8
0068bc  fa348140  vextracti.s r9, 8(vr2)
0068c0  1bc57200  srli r10, r5, 7
0068c4  1b051500  andi r10, r10, 1
0068c8  3b300500  bneq r10, zero, 12
0068cc  7ab57040  vextracti.s r10, 7(vr1)
0068d0  5b010000  j 8
0068d4  7a357140  vextracti.s r10, 7(vr2)
0068d8  9bc56200  srli r11, r5, 6
0068dc  9b851500  andi r11, r11, 1
0068e0  3bb00500  bneq r11, zero, 12
0068e4  fab56040  vextracti.s r11, 6(vr1)
0068e8  5b010000  j 8
0068ec  fa356140  vextracti.s r11, 6(vr2)
0068f0  1bc65200  srli r12, r5, 5
0068f4  1b061600  andi r12, r12, 1
0068f8  3b300600  bneq r12, zero, 12
0068fc  7ab65040  vextracti.s r12, 5(vr1)
006900  5b010000  j 8
006904  7a365140  vextracti.s r12, 5(vr2)
006908  9bc64200  srli r13, r5, 4
00690c  9b861600  andi r13, r13, 1
006910  3bb00600  bneq r13, zero, 12
006914  fab64040  vextracti.s r13, 4(vr1)
006918  5b010000  j 8
00691c  fa364140  vextracti.s r13, 4(vr2)
006920  9bc73200  srli r15, r5, 3
006924  9b871700  andi r15, r15, 1
006928  3bb00700  bneq r15, zero, 12
00692c  fab73040  vextracti.s r15, 3(vr1)
006930  5b010000  j 8
006934  fa373140  vextracti.s r15, 3(vr2)
006938  1bc82200  srli r16, r5, 2
00693c  1b081800  andi r16, r16, 1
006940  3b300800  bneq r16, zero, 12
006944  7ab82040  vextracti.s r16, 2(vr1)
006948  5b010000  j 8
00694c  7a382140  vextracti.s r16, 2(vr2)
006950  9bc81200  srli r17, r5, 1
006954  9b881800  andi r17, r17, 1
006958  3be00800  bneq r17, zero, 24
00695c  fab81040  vextracti.s r17, 1(vr1)
006960  9b821200  andi r5, r5, 1
006964  37e00200  beq r5, zero, 24
006968  fa320140  vextracti.s r5, 0(vr2)
00696c  db020000  j 20
006970  fa381140  vextracti.s r17, 1(vr2)
006974  9b821200  andi r5, r5, 1
006978  bbcf02fe  bneq r5, zero, -16
00697c  fab20040  vextracti.s r5, 0(vr1)
006980  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006984  e6c055a0  vmerge_h.hf vr1, vr11, vr5
006988  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
00698c  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006990  9f220000  addli r5, zero, 2
006994  7e8102e0  vmmov mr2, r5
006998  9f021000  addli r5, zero, 8
00699c  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
0069a0  7e8102e0  vmmov mr2, r5
0069a4  9f022000  addli r5, zero, 16
0069a8  ea213830  vor.u.mh vr3{mr0}, r16, vr3
0069ac  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
0069b0  7e8102e0  vmmov mr2, r5
0069b4  9f024000  addli r5, zero, 32
0069b8  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
0069bc  7e8102e0  vmmov mr2, r5
0069c0  9f020001  addli r5, zero, 128
0069c4  ea213634  vor.u.mh vr3{mr2}, r12, vr3
0069c8  7e8102e0  vmmov mr2, r5
0069cc  9f020002  addli r5, zero, 256
0069d0  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
0069d4  ea213534  vor.u.mh vr3{mr2}, r10, vr3
0069d8  7e8102e0  vmmov mr2, r5
0069dc  9f020004  addli r5, zero, 512
0069e0  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
0069e4  7e8102e0  vmmov mr2, r5
0069e8  9f020008  addli r5, zero, 1024
0069ec  ea213434  vor.u.mh vr3{mr2}, r8, vr3
0069f0  7e8102e0  vmmov mr2, r5
0069f4  9f020010  addli r5, zero, 2048
0069f8  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
0069fc  7e8102e0  vmmov mr2, r5
006a00  ea213334  vor.u.mh vr3{mr2}, r6, vr3
006a04  e3020ff3  loadli.w r5,  -1664(r30)
006a08  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
006a0c  9f028fec  addli r5, r30, -2496
006a10  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
006a14  9f028fe8  addli r5, r30, -3008
006a18  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
006a1c  9f020020  addli r5, zero, 4096
006a20  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
006a24  eeb054c2  vsrl.s.mz vr1{mr1}, vr9, vr5
006a28  669102c0  vabs.f vr2, vr5
006a2c  7e8102e0  vmmov mr2, r5
006a30  ea213234  vor.u.mh vr3{mr2}, r4, vr3
006a34  1f020040  addli r4, zero, 8192
006a38  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
006a3c  7e0102e0  vmmov mr2, r4
006a40  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
006a44  ab410000  lui r3, 4
006a48  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
006a4c  7e8101e0  vmmov mr2, r3
006a50  ea213134  vor.u.mh vr3{mr2}, r2, vr3
006a54  2b810000  lui r2, 8
006a58  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
006a5c  fe0201a0  vmmov r5, mr2
006a60  92301902  vadd.s.mz vr1{mr1}, r18, vr1
006a64  7e0101e0  vmmov mr2, r2
006a68  2b014000  lui r2, 1024
006a6c  6a315122  vor.s.mz vr2{mr1}, r2, vr5
006a70  2ba1aaaa  lui r2, 699050
006a74  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
006a78  9bc0f200  srli r1, r5, 15
006a7c  1f215115  addli r2, r2, 2730
006a80  9b801000  andi r1, r1, 1
006a84  7e0101e0  vmmov mr2, r2
006a88  63416fd1  loadli.w r2,  -5964(r30)
006a8c  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006a90  3bb00000  bneq r1, zero, 12
006a94  fab0f040  vextracti.s r1, 15(vr1)
006a98  5b010000  j 8
006a9c  fa30f140  vextracti.s r1, 15(vr2)
006aa0  1bc1e200  srli r2, r5, 14
006aa4  9f110000  addli r3, zero, 1
006aa8  1b011100  andi r2, r2, 1
006aac  7e8101e0  vmmov mr2, r3
006ab0  3b300100  bneq r2, zero, 12
006ab4  7ab1e040  vextracti.s r2, 14(vr1)
006ab8  5b010000  j 8
006abc  7a31e140  vextracti.s r2, 14(vr2)
006ac0  9bc1d200  srli r3, r5, 13
006ac4  9b811100  andi r3, r3, 1
006ac8  3bb00100  bneq r3, zero, 12
006acc  fab1d040  vextracti.s r3, 13(vr1)
006ad0  5b010000  j 8
006ad4  fa31d140  vextracti.s r3, 13(vr2)
006ad8  1bc2c200  srli r4, r5, 12
006adc  1b021200  andi r4, r4, 1
006ae0  3b300200  bneq r4, zero, 12
006ae4  7ab2c040  vextracti.s r4, 12(vr1)
006ae8  5b010000  j 8
006aec  7a32c140  vextracti.s r4, 12(vr2)
006af0  1bc3b200  srli r6, r5, 11
006af4  1b031300  andi r6, r6, 1
006af8  3b300300  bneq r6, zero, 12
006afc  7ab3b040  vextracti.s r6, 11(vr1)
006b00  5b010000  j 8
006b04  7a33b140  vextracti.s r6, 11(vr2)
006b08  9bc3a200  srli r7, r5, 10
006b0c  9b831300  andi r7, r7, 1
006b10  3bb00300  bneq r7, zero, 12
006b14  fab3a040  vextracti.s r7, 10(vr1)
006b18  5b010000  j 8
006b1c  fa33a140  vextracti.s r7, 10(vr2)
006b20  1bc49200  srli r8, r5, 9
006b24  1b041400  andi r8, r8, 1
006b28  3b300400  bneq r8, zero, 12
006b2c  7ab49040  vextracti.s r8, 9(vr1)
006b30  5b010000  j 8
006b34  7a349140  vextracti.s r8, 9(vr2)
006b38  9bc48200  srli r9, r5, 8
006b3c  9b841400  andi r9, r9, 1
006b40  3bb00400  bneq r9, zero, 12
006b44  fab48040  vextracti.s r9, 8(vr1)
006b48  5b010000  j 8
006b4c  fa348140  vextracti.s r9, 8(vr2)
006b50  1bc57200  srli r10, r5, 7
006b54  1b051500  andi r10, r10, 1
006b58  3b300500  bneq r10, zero, 12
006b5c  7ab57040  vextracti.s r10, 7(vr1)
006b60  5b010000  j 8
006b64  7a357140  vextracti.s r10, 7(vr2)
006b68  9bc56200  srli r11, r5, 6
006b6c  9b851500  andi r11, r11, 1
006b70  3bb00500  bneq r11, zero, 12
006b74  fab56040  vextracti.s r11, 6(vr1)
006b78  5b010000  j 8
006b7c  fa356140  vextracti.s r11, 6(vr2)
006b80  1bc65200  srli r12, r5, 5
006b84  1b061600  andi r12, r12, 1
006b88  3b300600  bneq r12, zero, 12
006b8c  7ab65040  vextracti.s r12, 5(vr1)
006b90  5b010000  j 8
006b94  7a365140  vextracti.s r12, 5(vr2)
006b98  9bc64200  srli r13, r5, 4
006b9c  9b861600  andi r13, r13, 1
006ba0  3bb00600  bneq r13, zero, 12
006ba4  fab64040  vextracti.s r13, 4(vr1)
006ba8  5b010000  j 8
006bac  fa364140  vextracti.s r13, 4(vr2)
006bb0  9bc73200  srli r15, r5, 3
006bb4  9b871700  andi r15, r15, 1
006bb8  3bb00700  bneq r15, zero, 12
006bbc  fab73040  vextracti.s r15, 3(vr1)
006bc0  5b010000  j 8
006bc4  fa373140  vextracti.s r15, 3(vr2)
006bc8  1bc82200  srli r16, r5, 2
006bcc  1b081800  andi r16, r16, 1
006bd0  3b300800  bneq r16, zero, 12
006bd4  7ab82040  vextracti.s r16, 2(vr1)
006bd8  5b010000  j 8
006bdc  7a382140  vextracti.s r16, 2(vr2)
006be0  9bc81200  srli r17, r5, 1
006be4  9b881800  andi r17, r17, 1
006be8  3be00800  bneq r17, zero, 24
006bec  fab81040  vextracti.s r17, 1(vr1)
006bf0  9b821200  andi r5, r5, 1
006bf4  37e00200  beq r5, zero, 24
006bf8  fa320140  vextracti.s r5, 0(vr2)
006bfc  db020000  j 20
006c00  fa381140  vextracti.s r17, 1(vr2)
006c04  9b821200  andi r5, r5, 1
006c08  bbcf02fe  bneq r5, zero, -16
006c0c  fab20040  vextracti.s r5, 0(vr1)
006c10  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006c14  e6c04580  vmerge_l.hf vr1, vr11, vr4
006c18  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
006c1c  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006c20  9f220000  addli r5, zero, 2
006c24  7e8102e0  vmmov mr2, r5
006c28  9f021000  addli r5, zero, 8
006c2c  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006c30  7e8102e0  vmmov mr2, r5
006c34  9f022000  addli r5, zero, 16
006c38  ea213830  vor.u.mh vr3{mr0}, r16, vr3
006c3c  eaa13734  vor.u.mh vr3{mr2}, r15, vr3
006c40  7e8102e0  vmmov mr2, r5
006c44  9f024000  addli r5, zero, 32
006c48  eaa13634  vor.u.mh vr3{mr2}, r13, vr3
006c4c  7e8102e0  vmmov mr2, r5
006c50  9f020001  addli r5, zero, 128
006c54  ea213634  vor.u.mh vr3{mr2}, r12, vr3
006c58  7e8102e0  vmmov mr2, r5
006c5c  9f020002  addli r5, zero, 256
006c60  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
006c64  ea213534  vor.u.mh vr3{mr2}, r10, vr3
006c68  7e8102e0  vmmov mr2, r5
006c6c  9f020004  addli r5, zero, 512
006c70  eaa13434  vor.u.mh vr3{mr2}, r9, vr3
006c74  7e8102e0  vmmov mr2, r5
006c78  9f020008  addli r5, zero, 1024
006c7c  ea213434  vor.u.mh vr3{mr2}, r8, vr3
006c80  7e8102e0  vmmov mr2, r5
006c84  9f020010  addli r5, zero, 2048
006c88  eaa13334  vor.u.mh vr3{mr2}, r7, vr3
006c8c  7e8102e0  vmmov mr2, r5
006c90  ea213334  vor.u.mh vr3{mr2}, r6, vr3
006c94  e3020ff3  loadli.w r5,  -1664(r30)
006c98  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
006c9c  9f020fed  addli r5, r30, -2432
006ca0  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
006ca4  9f020fea  addli r5, r30, -2816
006ca8  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
006cac  9f020020  addli r5, zero, 4096
006cb0  a6922002  vmac.f.mz.rn vr5{mr1}, vr1, vr2
006cb4  eeb054c2  vsrl.s.mz vr1{mr1}, vr9, vr5
006cb8  669102c0  vabs.f vr2, vr5
006cbc  7e8102e0  vmmov mr2, r5
006cc0  ea213234  vor.u.mh vr3{mr2}, r4, vr3
006cc4  1f020040  addli r4, zero, 8192
006cc8  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
006ccc  7e0102e0  vmmov mr2, r4
006cd0  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
006cd4  ab410000  lui r3, 4
006cd8  96b01202  vadd.s.mz vr1{mr1}, vr5, vr1
006cdc  7e8101e0  vmmov mr2, r3
006ce0  ea213134  vor.u.mh vr3{mr2}, r2, vr3
006ce4  2b810000  lui r2, 8
006ce8  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
006cec  fe0201a0  vmmov r5, mr2
006cf0  92301902  vadd.s.mz vr1{mr1}, r18, vr1
006cf4  7e0101e0  vmmov mr2, r2
006cf8  2b014000  lui r2, 1024
006cfc  6a315122  vor.s.mz vr2{mr1}, r2, vr5
006d00  2ba1aaaa  lui r2, 699050
006d04  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
006d08  9bc0f200  srli r1, r5, 15
006d0c  1f215115  addli r2, r2, 2730
006d10  9b801000  andi r1, r1, 1
006d14  7e0101e0  vmmov mr2, r2
006d18  63012fd1  loadli.w r2,  -6000(r30)
006d1c  62403114  vscatter.mh vr3{mr2}, vr0{r2}
006d20  3bb00000  bneq r1, zero, 12
006d24  fab0f040  vextracti.s r1, 15(vr1)
006d28  5b010000  j 8
006d2c  fa30f140  vextracti.s r1, 15(vr2)
006d30  1bc1e200  srli r2, r5, 14
006d34  9f110000  addli r3, zero, 1
006d38  1b011100  andi r2, r2, 1
006d3c  7e8101e0  vmmov mr2, r3
006d40  3b300100  bneq r2, zero, 12
006d44  7ab1e040  vextracti.s r2, 14(vr1)
006d48  5b010000  j 8
006d4c  7a31e140  vextracti.s r2, 14(vr2)
006d50  9bc1d200  srli r3, r5, 13
006d54  9b811100  andi r3, r3, 1
006d58  3bb00100  bneq r3, zero, 12
006d5c  fab1d040  vextracti.s r3, 13(vr1)
006d60  5b010000  j 8
006d64  fa31d140  vextracti.s r3, 13(vr2)
006d68  1bc2c200  srli r4, r5, 12
006d6c  1b021200  andi r4, r4, 1
006d70  3b300200  bneq r4, zero, 12
006d74  7ab2c040  vextracti.s r4, 12(vr1)
006d78  5b010000  j 8
006d7c  7a32c140  vextracti.s r4, 12(vr2)
006d80  1bc3b200  srli r6, r5, 11
006d84  1b031300  andi r6, r6, 1
006d88  3b300300  bneq r6, zero, 12
006d8c  7ab3b040  vextracti.s r6, 11(vr1)
006d90  5b010000  j 8
006d94  7a33b140  vextracti.s r6, 11(vr2)
006d98  9bc3a200  srli r7, r5, 10
006d9c  9b831300  andi r7, r7, 1
006da0  3bb00300  bneq r7, zero, 12
006da4  fab3a040  vextracti.s r7, 10(vr1)
006da8  5b010000  j 8
006dac  fa33a140  vextracti.s r7, 10(vr2)
006db0  1bc49200  srli r8, r5, 9
006db4  1b041400  andi r8, r8, 1
006db8  3b300400  bneq r8, zero, 12
006dbc  7ab49040  vextracti.s r8, 9(vr1)
006dc0  5b010000  j 8
006dc4  7a349140  vextracti.s r8, 9(vr2)
006dc8  9bc48200  srli r9, r5, 8
006dcc  9b841400  andi r9, r9, 1
006dd0  3bb00400  bneq r9, zero, 12
006dd4  fab48040  vextracti.s r9, 8(vr1)
006dd8  5b010000  j 8
006ddc  fa348140  vextracti.s r9, 8(vr2)
006de0  1bc57200  srli r10, r5, 7
006de4  1b051500  andi r10, r10, 1
006de8  3b300500  bneq r10, zero, 12
006dec  7ab57040  vextracti.s r10, 7(vr1)
006df0  5b010000  j 8
006df4  7a357140  vextracti.s r10, 7(vr2)
006df8  9bc56200  srli r11, r5, 6
006dfc  9b851500  andi r11, r11, 1
006e00  3bb00500  bneq r11, zero, 12
006e04  fab56040  vextracti.s r11, 6(vr1)
006e08  5b010000  j 8
006e0c  fa356140  vextracti.s r11, 6(vr2)
006e10  1bc65200  srli r12, r5, 5
006e14  1b061600  andi r12, r12, 1
006e18  3b300600  bneq r12, zero, 12
006e1c  7ab65040  vextracti.s r12, 5(vr1)
006e20  5b010000  j 8
006e24  7a365140  vextracti.s r12, 5(vr2)
006e28  9bc64200  srli r13, r5, 4
006e2c  9b861600  andi r13, r13, 1
006e30  3bb00600  bneq r13, zero, 12
006e34  fab64040  vextracti.s r13, 4(vr1)
006e38  5b010000  j 8
006e3c  fa364140  vextracti.s r13, 4(vr2)
006e40  9bc73200  srli r15, r5, 3
006e44  9b871700  andi r15, r15, 1
006e48  3bb00700  bneq r15, zero, 12
006e4c  fab73040  vextracti.s r15, 3(vr1)
006e50  5b010000  j 8
006e54  fa373140  vextracti.s r15, 3(vr2)
006e58  1bc82200  srli r16, r5, 2
006e5c  1b081800  andi r16, r16, 1
006e60  3b300800  bneq r16, zero, 12
006e64  7ab82040  vextracti.s r16, 2(vr1)
006e68  5b010000  j 8
006e6c  7a382140  vextracti.s r16, 2(vr2)
006e70  9bc81200  srli r17, r5, 1
006e74  9b881800  andi r17, r17, 1
006e78  3be00800  bneq r17, zero, 24
006e7c  fab81040  vextracti.s r17, 1(vr1)
006e80  9b821200  andi r5, r5, 1
006e84  37e00200  beq r5, zero, 24
006e88  fa320140  vextracti.s r5, 0(vr2)
006e8c  db020000  j 20
006e90  fa381140  vextracti.s r17, 1(vr2)
006e94  9b821200  andi r5, r5, 1
006e98  bbcf02fe  bneq r5, zero, -16
006e9c  fab20040  vextracti.s r5, 0(vr1)
006ea0  9231b002  vadd.s.mz vr3{mr1}, zero, vr11
006ea4  e6c045a0  vmerge_h.hf vr1, vr11, vr4
006ea8  92101702  vadd.f.mz.rn vr1{mr1}, r14, vr1
006eac  eaa13234  vor.u.mh vr3{mr2}, r5, vr3
006eb0  9f220000  addli r5, zero, 2
006eb4  7e8102e0  vmmov mr2, r5
006eb8  9f021000  addli r5, zero, 8
006ebc  eaa13834  vor.u.mh vr3{mr2}, r17, vr3
006ec0  ea213830  vor.u.mh vr3{mr0}, r16, vr3
006ec4  7e8002e0  vmmov mr0, r5
006ec8  9f022000  addli r5, zero, 16
006ecc  eaa13730  vor.u.mh vr3{mr0}, r15, vr3
006ed0  7e8002e0  vmmov mr0, r5
006ed4  9f024000  addli r5, zero, 32
006ed8  eaa13630  vor.u.mh vr3{mr0}, r13, vr3
006edc  7e8002e0  vmmov mr0, r5
006ee0  9f020001  addli r5, zero, 128
006ee4  ea213630  vor.u.mh vr3{mr0}, r12, vr3
006ee8  7e8002e0  vmmov mr0, r5
006eec  9f020002  addli r5, zero, 256
006ef0  eaa13536  vor.u.mh vr3{mr3}, r11, vr3
006ef4  ea213530  vor.u.mh vr3{mr0}, r10, vr3
006ef8  7e8002e0  vmmov mr0, r5
006efc  9f020004  addli r5, zero, 512
006f00  eaa13430  vor.u.mh vr3{mr0}, r9, vr3
006f04  7e8002e0  vmmov mr0, r5
006f08  9f020008  addli r5, zero, 1024
006f0c  ea213430  vor.u.mh vr3{mr0}, r8, vr3
006f10  7e8002e0  vmmov mr0, r5
006f14  9f020010  addli r5, zero, 2048
006f18  eaa13330  vor.u.mh vr3{mr0}, r7, vr3
006f1c  7e8002e0  vmmov mr0, r5
006f20  ea213330  vor.u.mh vr3{mr0}, r6, vr3
006f24  e3020ff3  loadli.w r5,  -1664(r30)
006f28  8a901202  vmul.f.mz.rn vr1{mr1}, r5, vr1
006f2c  9f028fed  addli r5, r30, -2368
006f30  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
006f34  9f020feb  addli r5, r30, -2688
006f38  42910202  vload_mask16.mz vr2{mr1}, 0(r5)
006f3c  9f020020  addli r5, zero, 4096
006f40  26922002  vmac.f.mz.rn vr4{mr1}, vr1, vr2
006f44  eeb044c2  vsrl.s.mz vr1{mr1}, vr9, vr4
006f48  661102c0  vabs.f vr2, vr4
006f4c  7e8002e0  vmmov mr0, r5
006f50  ea213230  vor.u.mh vr3{mr0}, r4, vr3
006f54  1f020040  addli r4, zero, 8192
006f58  ea301a02  vand.s.mz vr1{mr1}, r20, vr1
006f5c  7e0002e0  vmmov mr0, r4
006f60  76212542  vlt.u.mz mr2{mr1}, vr10, vr2
006f64  7e0201a0  vmmov r4, mr2
006f68  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
006f6c  ab410000  lui r3, 4
006f70  96301202  vadd.s.mz vr1{mr1}, vr4, vr1
006f74  7e8001e0  vmmov mr0, r3
006f78  ea213130  vor.u.mh vr3{mr0}, r2, vr3
006f7c  2b810000  lui r2, 8
006f80  92301902  vadd.s.mz vr1{mr1}, r18, vr1
006f84  7e0001e0  vmmov mr0, r2
006f88  2b014000  lui r2, 1024
006f8c  6a314122  vor.s.mz vr2{mr1}, r2, vr4
006f90  2ba1aaaa  lui r2, 699050
006f94  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
006f98  9b40f200  srli r1, r4, 15
006f9c  1f215115  addli r2, r2, 2730
006fa0  9b801000  andi r1, r1, 1
006fa4  7e0001e0  vmmov mr0, r2
006fa8  63016fd1  loadli.w r2,  -5968(r30)
006fac  62403110  vscatter.mh vr3{mr0}, vr0{r2}
006fb0  3bb00000  bneq r1, zero, 12
006fb4  fab0f040  vextracti.s r1, 15(vr1)
006fb8  5b010000  j 8
006fbc  fa30f140  vextracti.s r1, 15(vr2)
006fc0  1b41e200  srli r2, r4, 14
006fc4  9f110000  addli r3, zero, 1
006fc8  9f080004  addli r17, zero, 512
006fcc  1b011100  andi r2, r2, 1
006fd0  7e8101e0  vmmov mr2, r3
006fd4  3b300100  bneq r2, zero, 12
006fd8  7ab1e040  vextracti.s r2, 14(vr1)
006fdc  5b010000  j 8
006fe0  7a31e140  vextracti.s r2, 14(vr2)
006fe4  9b41d200  srli r3, r4, 13
006fe8  9b811100  andi r3, r3, 1
006fec  3bb00100  bneq r3, zero, 12
006ff0  fab1d040  vextracti.s r3, 13(vr1)
006ff4  5b010000  j 8
006ff8  fa31d140  vextracti.s r3, 13(vr2)
006ffc  9b42c200  srli r5, r4, 12
007000  9b821200  andi r5, r5, 1
007004  3bb00200  bneq r5, zero, 12
007008  fab2c040  vextracti.s r5, 12(vr1)
00700c  5b010000  j 8
007010  fa32c140  vextracti.s r5, 12(vr2)
007014  1b43b200  srli r6, r4, 11
007018  1b031300  andi r6, r6, 1
00701c  3b300300  bneq r6, zero, 12
007020  7ab3b040  vextracti.s r6, 11(vr1)
007024  5b010000  j 8
007028  7a33b140  vextracti.s r6, 11(vr2)
00702c  9b43a200  srli r7, r4, 10
007030  9b831300  andi r7, r7, 1
007034  3bb00300  bneq r7, zero, 12
007038  fab3a040  vextracti.s r7, 10(vr1)
00703c  5b010000  j 8
007040  fa33a140  vextracti.s r7, 10(vr2)
007044  1b449200  srli r8, r4, 9
007048  1b041400  andi r8, r8, 1
00704c  3b300400  bneq r8, zero, 12
007050  7ab49040  vextracti.s r8, 9(vr1)
007054  5b010000  j 8
007058  7a349140  vextracti.s r8, 9(vr2)
00705c  9b448200  srli r9, r4, 8
007060  9b841400  andi r9, r9, 1
007064  3bb00400  bneq r9, zero, 12
007068  fab48040  vextracti.s r9, 8(vr1)
00706c  5b010000  j 8
007070  fa348140  vextracti.s r9, 8(vr2)
007074  1b457200  srli r10, r4, 7
007078  1b051500  andi r10, r10, 1
00707c  3b300500  bneq r10, zero, 12
007080  7ab57040  vextracti.s r10, 7(vr1)
007084  5b010000  j 8
007088  7a357140  vextracti.s r10, 7(vr2)
00708c  9b456200  srli r11, r4, 6
007090  9b851500  andi r11, r11, 1
007094  3bb00500  bneq r11, zero, 12
007098  fab56040  vextracti.s r11, 6(vr1)
00709c  5b010000  j 8
0070a0  fa356140  vextracti.s r11, 6(vr2)
0070a4  1b465200  srli r12, r4, 5
0070a8  1b061600  andi r12, r12, 1
0070ac  3b300600  bneq r12, zero, 12
0070b0  7ab65040  vextracti.s r12, 5(vr1)
0070b4  5b010000  j 8
0070b8  7a365140  vextracti.s r12, 5(vr2)
0070bc  9b464200  srli r13, r4, 4
0070c0  9b861600  andi r13, r13, 1
0070c4  3bb00600  bneq r13, zero, 12
0070c8  fab64040  vextracti.s r13, 4(vr1)
0070cc  5b010000  j 8
0070d0  fa364140  vextracti.s r13, 4(vr2)
0070d4  1b473200  srli r14, r4, 3
0070d8  1b071700  andi r14, r14, 1
0070dc  3b300700  bneq r14, zero, 12
0070e0  7ab73040  vextracti.s r14, 3(vr1)
0070e4  5b010000  j 8
0070e8  7a373140  vextracti.s r14, 3(vr2)
0070ec  9b472200  srli r15, r4, 2
0070f0  9b871700  andi r15, r15, 1
0070f4  3bb00700  bneq r15, zero, 12
0070f8  fab72040  vextracti.s r15, 2(vr1)
0070fc  5b010000  j 8
007100  fa372140  vextracti.s r15, 2(vr2)
007104  1b481200  srli r16, r4, 1
007108  1b081800  andi r16, r16, 1
00710c  3b500800  bneq r16, zero, 20
007110  7ab81040  vextracti.s r16, 1(vr1)
007114  1b021200  andi r4, r4, 1
007118  375802c8  beq r4, zero, -28140
00711c  5b020000  j 16
007120  7a381140  vextracti.s r16, 1(vr2)
007124  1b021200  andi r4, r4, 1
007128  371802c8  beq r4, zero, -28156
00712c  7a320140  vextracti.s r4, 0(vr2)
007130  5b40f2ff  j -28160
007134  e340afd0  loadli.w r1,  -6060(r30)
007138  0b161610  add.s r12, r12, r1
00713c  bf7fd6fe  blt.s r12, r13, -4
007140  9f0e8fd0  addli sp, r30, -6080
007144  9f8e8e2f  addli sp, sp, 6080
007148  00a00300  mfence { lm, sm, gm }
00714c  00100000  exit
007150  00100000  exit
007154  00100000  exit
007158  00100000  exit
00715c  00100000  exit
007160  00100000  exit
007164  00100000  exit
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
