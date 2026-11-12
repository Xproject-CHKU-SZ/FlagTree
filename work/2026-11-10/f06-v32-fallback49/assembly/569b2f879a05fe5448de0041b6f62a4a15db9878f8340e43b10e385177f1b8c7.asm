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
0000dc  9f8e0ecd  addli sp, sp, -6528
0000e0  80500102  load_param_i r1, 2
0000e4  80d10002  load_param_i r3, 1
0000e8  1f8f8e32  addli r30, sp, 6464
0000ec  1f038000  addli r6, zero, 64
0000f0  9f243000  addli r9, zero, 26
0000f4  0b921120  mul.s r4, r3, r1
0000f8  eb500f02  load.d r[2:3], 32(r30)
0000fc  3305a32c  .word 0x2ca30533
000100  2b0300fc  lui r6, 1032192
000104  b3037228  .word 0x287203b3
000108  0f927060  div.sl r[5:6], r[2:3], r[8:9]
00010c  0b32a248  max.sl r[5:6], r[5:6], r[11:12]
000110  2bf5ffff  lui r10, 1048575
000114  b305b32c  .word 0x2cb305b3
000118  17329202  sll.d r[5:6], r[5:6], r9
00011c  1b1305fc  ori r6, r10, 4032
000120  00350002  core_id r10
000124  0b22b210  add.ul r[5:6], r[5:6], r[12:13]
000128  b315b32c  .word 0x2cb315b3
00012c  1f030005  addli r6, zero, 640
000130  17529202  sra.d r[5:6], r[5:6], r9
000134  80540002  load_param_i r9, 0
000138  1702b202  and.d r[5:6], r[5:6], r[12:13]
00013c  b305b32c  .word 0x2cb305b3
000140  8b94a150  fmac.s r9, r3, r10
000144  8b31b240  min.sl r[4:5], r[5:6], r[12:13]
000148  b382542a  .word 0x2a5482b3
00014c  9f04efcd  addli r9, r30, -6416
000150  8bb85120  mul.sl r[18:19], r[4:5], r[6:7]
000154  73b03400  store.d r[4:5], 0(r9)
000158  93b21007  setle.sl r5, r[2:3], r[18:19]
00015c  bbed0200  bneq r5, zero, 888
000160  9f0befcd  addli r23, r30, -6416
000164  9f150000  addli r11, zero, 1
000168  8bb41019  sub.sl r[10:11], r[2:3], r[18:19]
00016c  eb570f00  load.d r[16:17], 0(r30)
000170  1f0dafcd  addli r26, r30, -6448
000174  eb5a8f00  load.d r[22:23], 8(r30)
000178  1f0a0fec  addli r20, r30, -2560
00017c  9f0dbfcd  addli r27, r30, -6440
000180  1f0edfcd  addli r28, r30, -6424
000184  9f020000  addli r5, zero, 0
000188  1f030000  addli r6, zero, 0
00018c  9f09000a  addli r19, zero, 1280
000190  ebd10b00  load.d r[4:5], 0(r23)
000194  97b6b802  sll.d r[14:15], r[18:19], r11
000198  7330fd00  store.d r[16:17], 0(r26)
00019c  2b0600f0  lui r12, 983040
0001a0  73b05d01  store.d r[22:23], 0(r27)
0001a4  0bbc9140  min.sl r[25:26], r[4:5], r[10:11]
0001a8  8ba4d710  add.ul r[10:11], r[16:17], r[14:15]
0001ac  8bb17120  mul.sl r[4:5], r[4:5], r[8:9]
0001b0  9f03cfcd  addli r7, r30, -6432
0001b4  9b371c00  slli r15, r24, 1
0001b8  1798c700  or r16, r15, r12
0001bc  63063f00  loadli.w r12,  24(r30)
0001c0  7fa84401  l_gm2lm r16, r20, 0(r[10:11])
0001c4  8ba4da10  add.ul r[10:11], r[22:23], r[14:15]
0001c8  2b0700f0  lui r14, 983040
0001cc  9f060fce  addli r13, r30, -6400
0001d0  9f0a2000  addli r21, zero, 16
0001d4  1f0b0000  addli r22, zero, 0
0001d8  1797e700  or r14, r15, r14
0001dc  eb570f01  load.d r[16:17], 16(r30)
0001e0  7fa7d400  l_gm2lm r14, r13, 0(r[10:11])
0001e4  7330fe00  store.d r[16:17], 0(r28)
0001e8  00a00200  mfence { lm, gm }
0001ec  73b03300  store.d r[4:5], 0(r7)
0001f0  5b0c0000  j 96
0001f4  1f08dfcd  addli r16, r30, -6424
0001f8  00a00300  mfence { lm, sm, gm }
0001fc  ab0400f0  lui r9, 983040
000200  97b1b802  sll.d r[4:5], r[18:19], r11
000204  9f920200  addli r5, r5, 1
000208  6b570800  load.d r[15:16], 0(r16)
00020c  97149500  or r9, r10, r9
000210  8b213710  add.ul r[4:5], r[15:16], r[4:5]
000214  ffb4d100  s_lm2gm r9, r13, 0(r[4:5])
000218  9b81f200  andi r3, r5, 15
00021c  b79a0100  beq r3, zero, 676
000220  9f110b00  addli r3, r22, 1
000224  1f320000  addli r4, zero, 3
000228  1b231300  xori r6, r6, 1
00022c  1f0a0fec  addli r20, r30, -2560
000230  9f060fce  addli r13, r30, -6400
000234  a7080d00  addli.d r[18:19], r[27:28], 0
000238  1f8c0300  addli r24, r7, 0
00023c  0b9b4138  mod.s r22, r3, r4
000240  93311d04  setlt.sl r3, r[27:28], r[2:3]
000244  0b1a3351  fmac.s r20, r6, r19
000248  8b163b51  fmac.s r13, r22, r19
00024c  37aa0100  beq r3, zero, 648
000250  9f04cfcd  addli r9, r30, -6432
000254  1f05efcd  addli r10, r30, -6416
000258  ebd10400  load.d r[4:5], 0(r9)
00025c  0bad3810  add.ul r[27:28], r[18:19], r[4:5]
000260  eb510500  load.d r[4:5], 0(r10)
000264  8bb3a019  sub.sl r[8:9], r[2:3], r[27:28]
000268  8bb37140  min.sl r[8:9], r[4:5], r[8:9]
00026c  3ff1b300  blt.s r7, r11, 92
000270  9b241300  xori r9, r6, 1
000274  1f050fec  addli r10, r30, -2560
000278  9f310000  addli r3, zero, 3
00027c  1f0eafcd  addli r28, r30, -6448
000280  ab0b00f0  lui r23, 983040
000284  1bb81300  slli r16, r7, 1
000288  1737bd02  sll.d r[15:16], r[27:28], r11
00028c  0b953451  fmac.s r10, r9, r19
000290  9f140b00  addli r9, r22, 1
000294  971b7801  or r23, r16, r23
000298  8b943438  mod.s r9, r9, r3
00029c  eb510e00  load.d r[4:5], 0(r28)
0002a0  1f0e0fce  addli r28, r30, -6400
0002a4  8ba1e110  add.ul r[4:5], r[4:5], r[15:16]
0002a8  ffaba100  l_gm2lm r23, r10, 0(r[4:5])
0002ac  1f02bfcd  addli r4, r30, -6440
0002b0  ab0100f0  lui r3, 983040
0002b4  0b9e3451  fmac.s r28, r9, r19
0002b8  eb540200  load.d r[10:11], 0(r4)
0002bc  97113800  or r3, r16, r3
0002c0  8ba4e410  add.ul r[10:11], r[10:11], r[15:16]
0002c4  ffa1c401  l_gm2lm r3, r28, 0(r[10:11])
0002c8  abf1ffff  lui r3, 1048575
0002cc  9b9101fc  ori r3, r3, 4032
0002d0  97043c00  and r9, r24, r3
0002d4  bff4b400  blt.s r9, r11, 316
0002d8  1f050000  addli r10, zero, 0
0002dc  1f0e0a00  addli r28, r20, 0
0002e0  9f8b0600  addli r23, r13, 0
0002e4  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
0002e8  ab01ffff  lui r3, 1048560
0002ec  c2910b02  vload_mask16.mz vr3{mr1}, 0(r23)
0002f0  1f028e00  addli r4, r28, 64
0002f4  1f878b00  addli r14, r23, 64
0002f8  1f058500  addli r10, r10, 64
0002fc  1f0e0e01  addli r28, r28, 128
000300  42120202  vload_mask16.mz vr4{mr1}, 0(r4)
000304  6ab10102  vand.s.mz vr2{mr1}, r3, vr0
000308  eab23102  vand.s.mz vr5{mr1}, r3, vr3
00030c  eab00aa2  vsll.s.mz vr1{mr1}, r21, vr0
000310  6ab03aa2  vsll.s.mz vr0{mr1}, r21, vr3
000314  c2110702  vload_mask16.mz vr3{mr1}, 0(r14)
000318  2b020100  lui r4, 16
00031c  ab870000  lui r15, 8
000320  22115602  vmac.f.mz.rn vr2{mr1}, r12, vr5
000324  a2100602  vmac.f.mz.rn vr1{mr1}, r12, vr0
000328  6ab04aa2  vsll.s.mz vr0{mr1}, r21, vr4
00032c  6ab24102  vand.s.mz vr4{mr1}, r3, vr4
000330  ea222202  vand.u.mz vr5{mr1}, r4, vr2
000334  6a231202  vand.u.mz vr6{mr1}, r4, vr1
000338  72215002  veq.u.mz mr2{mr1}, zero, vr5
00033c  72206002  veq.u.mz mr0{mr1}, zero, vr6
000340  eab23102  vand.s.mz vr5{mr1}, r3, vr3
000344  eab13aa2  vsll.s.mz vr3{mr1}, r21, vr3
000348  fe010140  vmnot mr3, mr2
00034c  12a12716  vadd.u.mh vr2{mr3}, r15, vr2
000350  fe010040  vmnot mr3, mr0
000354  92a01716  vadd.u.mh vr1{mr3}, r15, vr1
000358  2b780000  lui r16, 7
00035c  22125602  vmac.f.mz.rn vr4{mr1}, r12, vr5
000360  22103602  vmac.f.mz.rn vr0{mr1}, r12, vr3
000364  1b18f8ff  ori r16, r16, 4095
000368  12212814  vadd.u.mh vr2{mr2}, r16, vr2
00036c  92201810  vadd.u.mh vr1{mr0}, r16, vr1
000370  aba1aaaa  lui r3, 699050
000374  9b91a1aa  ori r3, r3, 2730
000378  7e8001e0  vmmov mr0, r3
00037c  9f01ffcd  addli r3, r30, -6408
000380  7e0000a0  vmmov zero, mr0
000384  46802b10  vstore.mh vr2{mr0}, 0(r23)
000388  67800100  storeli.w zero, 0(r3)
00038c  6af11ac0  vsrl.p vr2, r21, vr1
000390  ab515555  lui r3, 349525
000394  17200000  xor zero, zero, zero
000398  ea204202  vand.u.mz vr1{mr1}, r4, vr4
00039c  9b915155  ori r3, r3, 1365
0003a0  7e8001e0  vmmov mr0, r3
0003a4  9f41ffcd  addli r3, r30, -6404
0003a8  7e0000a0  vmmov zero, mr0
0003ac  46802b10  vstore.mh vr2{mr0}, 0(r23)
0003b0  6a210202  vand.u.mz vr2{mr1}, r4, vr0
0003b4  1f02ffcd  addli r4, r30, -6408
0003b8  9f8b0b01  addli r23, r23, 128
0003bc  67800100  storeli.w zero, 0(r3)
0003c0  17200000  xor zero, zero, zero
0003c4  f2211002  veq.u.mz mr3{mr1}, zero, vr1
0003c8  7e800140  vmnot mr0, mr3
0003cc  12a24710  vadd.u.mh vr4{mr0}, r15, vr4
0003d0  72202002  veq.u.mz mr0{mr1}, zero, vr2
0003d4  7e010040  vmnot mr2, mr0
0003d8  12a00714  vadd.u.mh vr0{mr2}, r15, vr0
0003dc  9f47ffcd  addli r15, r30, -6404
0003e0  12224816  vadd.u.mh vr4{mr3}, r16, vr4
0003e4  12200810  vadd.u.mh vr0{mr0}, r16, vr0
0003e8  63000200  loadli.w zero,  0(r4)
0003ec  7e0000e0  vmmov mr0, zero
0003f0  17200000  xor zero, zero, zero
0003f4  46004710  vstore.mh vr4{mr0}, 0(r14)
0003f8  eaf00ac0  vsrl.p vr1, r21, vr0
0003fc  63800700  loadli.w zero,  0(r15)
000400  7e0000e0  vmmov mr0, zero
000404  17200000  xor zero, zero, zero
000408  46001710  vstore.mh vr1{mr0}, 0(r14)
00040c  3f6b95fe  blt.s r10, r9, -296
000410  1b351c00  slli r10, r24, 1
000414  cb079cfe  ble.s r24, r9, -544
000418  abf1ffff  lui r3, 1048575
00041c  9b9101f8  ori r3, r3, 3968
000420  97013500  and r3, r10, r3
000424  0b973610  add.s r14, r13, r3
000428  0b1a3a10  add.s r20, r20, r3
00042c  c2100a02  vload_mask16.mz vr1{mr1}, 0(r20)
000430  ab01ffff  lui r3, 1048560
000434  42110702  vload_mask16.mz vr2{mr1}, 0(r14)
000438  2b020100  lui r4, 16
00043c  ab870000  lui r15, 8
000440  9f844400  addli r9, r9, 32
000444  1f0a8a00  addli r20, r20, 64
000448  6ab01102  vand.s.mz vr0{mr1}, r3, vr1
00044c  eab12102  vand.s.mz vr3{mr1}, r3, vr2
000450  eab01aa2  vsll.s.mz vr1{mr1}, r21, vr1
000454  6ab12aa2  vsll.s.mz vr2{mr1}, r21, vr2
000458  22103602  vmac.f.mz.rn vr0{mr1}, r12, vr3
00045c  a2102602  vmac.f.mz.rn vr1{mr1}, r12, vr2
000460  6a210202  vand.u.mz vr2{mr1}, r4, vr0
000464  ea211202  vand.u.mz vr3{mr1}, r4, vr1
000468  72212002  veq.u.mz mr2{mr1}, zero, vr2
00046c  72203002  veq.u.mz mr0{mr1}, zero, vr3
000470  fe010140  vmnot mr3, mr2
000474  12a00716  vadd.u.mh vr0{mr3}, r15, vr0
000478  fe010040  vmnot mr3, mr0
00047c  92a01716  vadd.u.mh vr1{mr3}, r15, vr1
000480  ab710000  lui r3, 7
000484  9b91f1ff  ori r3, r3, 4095
000488  12a00114  vadd.u.mh vr0{mr2}, r3, vr0
00048c  92a01110  vadd.u.mh vr1{mr0}, r3, vr1
000490  aba1aaaa  lui r3, 699050
000494  9b91a1aa  ori r3, r3, 2730
000498  7e8001e0  vmmov mr0, r3
00049c  46000710  vstore.mh vr0{mr0}, 0(r14)
0004a0  6af01ac0  vsrl.p vr0, r21, vr1
0004a4  ab515555  lui r3, 349525
0004a8  9b915155  ori r3, r3, 1365
0004ac  7e8001e0  vmmov mr0, r3
0004b0  46000710  vstore.mh vr0{mr0}, 0(r14)
0004b4  1f078700  addli r14, r14, 64
0004b8  bfdd84ff  blt.s r9, r24, -140
0004bc  5ba7ffff  j -712
0004c0  abf10000  lui r3, 15
0004c4  9b91f1ff  ori r3, r3, 4095
0004c8  80a10104  csr_set csr3, r3
0004cc  00d00100  sync_group
0004d0  5baaffff  j -688
0004d4  00a00300  mfence { lm, sm, gm }
0004d8  9f0e8fcd  addli sp, r30, -6464
0004dc  9f8e8e32  addli sp, sp, 6464
0004e0  00a00300  mfence { lm, sm, gm }
0004e4  00100000  exit
0004e8  00100000  exit
0004ec  00100000  exit
0004f0  00100000  exit
0004f4  00100000  exit
0004f8  00100000  exit
0004fc  00100000  exit
000500  00100000  exit
000504  00100000  exit
000508  00100000  exit
00050c  00100000  exit
000510  00100000  exit
000514  00100000  exit
000518  00100000  exit
00051c  00100000  exit
000520  00100000  exit
000524  00100000  exit
000528  00100000  exit
00052c  00100000  exit
000530  00100000  exit
000534  00100000  exit
000538  00100000  exit
00053c  00100000  exit
000540  00100000  exit
000544  00100000  exit
000548  00100000  exit
00054c  00100000  exit
000550  00100000  exit
000554  00100000  exit
000558  00100000  exit
00055c  00100000  exit
000560  00100000  exit
000564  00100000  exit
000568  00100000  exit
00056c  00100000  exit
000570  00100000  exit
000574  00100000  exit
000578  00100000  exit
00057c  00100000  exit
000580  00100000  exit
000584  00100000  exit
000588  00100000  exit
00058c  00100000  exit
000590  00100000  exit
000594  00100000  exit
000598  00100000  exit
00059c  00100000  exit
0005a0  00100000  exit
0005a4  00100000  exit
0005a8  00100000  exit
0005ac  00100000  exit
0005b0  00100000  exit
0005b4  00100000  exit
0005b8  00100000  exit
0005bc  00100000  exit
0005c0  00100000  exit
0005c4  00100000  exit
0005c8  00100000  exit
0005cc  00100000  exit
0005d0  00100000  exit
0005d4  00100000  exit
0005d8  00100000  exit
0005dc  00100000  exit
0005e0  00100000  exit
0005e4  00100000  exit
0005e8  00100000  exit
0005ec  00100000  exit
0005f0  00100000  exit
0005f4  00100000  exit
0005f8  00100000  exit
0005fc  00100000  exit
000600  00100000  exit
000604  00100000  exit
000608  00100000  exit
00060c  00100000  exit
000610  00100000  exit
000614  00100000  exit
000618  00100000  exit
00061c  00100000  exit
000620  00100000  exit
000624  00100000  exit
000628  00100000  exit
00062c  00100000  exit
000630  00100000  exit
000634  00100000  exit
000638  00100000  exit
00063c  00100000  exit
000640  00100000  exit
000644  00100000  exit
000648  00100000  exit
00064c  00100000  exit
000650  00100000  exit
000654  00100000  exit
000658  00100000  exit
00065c  00100000  exit
000660  00100000  exit
000664  00100000  exit
000668  00100000  exit
00066c  00100000  exit
000670  00100000  exit
000674  00100000  exit
000678  00100000  exit
00067c  00100000  exit
000680  00100000  exit
000684  00100000  exit
000688  00100000  exit
00068c  00100000  exit
000690  00100000  exit
000694  00100000  exit
000698  00100000  exit
00069c  00100000  exit
0006a0  00100000  exit
0006a4  00100000  exit
0006a8  00100000  exit
0006ac  00100000  exit
0006b0  00100000  exit
0006b4  00100000  exit
0006b8  00100000  exit
0006bc  00100000  exit
0006c0  00100000  exit
0006c4  00100000  exit
0006c8  00100000  exit
0006cc  00100000  exit
0006d0  00100000  exit
0006d4  00100000  exit
0006d8  00100000  exit
0006dc  00100000  exit
0006e0  00100000  exit
0006e4  00100000  exit
0006e8  00100000  exit
0006ec  00100000  exit
0006f0  00100000  exit
0006f4  00100000  exit
0006f8  00100000  exit
0006fc  00100000  exit
000700  00100000  exit
000704  00100000  exit
000708  00100000  exit
00070c  00100000  exit
000710  00100000  exit
000714  00100000  exit
000718  00100000  exit
00071c  00100000  exit
000720  00100000  exit
000724  00100000  exit
