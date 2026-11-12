; SHA-256 93d24bcf7e537491c8798e0c5231ebf83dedf8e177236278859ab513b1b139f6
; P800 Cluster · XTDK LLVM 19 · 868 / 868 words decoded
; bound names: _flat_row_reduce
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
0000dc  9f8e0efb  addli sp, sp, -640
0000e0  ab000000  lui r1, 0
0000e4  80310002  core_id r3
0000e8  1f8f8e04  addli r30, sp, 576
0000ec  abf20000  lui r5, 15
0000f0  1bb12100  slli r2, r3, 2
0000f4  9f800000  addli r1, r1, 0
0000f8  e3435f00  loadli.w r7,  44(r30)
0000fc  63025f00  loadli.w r4,  40(r30)
000100  63036f00  loadli.w r6,  48(r30)
000104  9b92f2ff  ori r5, r5, 4095
000108  0b141110  add.s r8, r2, r1
00010c  0b924320  mul.s r4, r7, r4
000110  80530002  load_param_i r7, 0
000114  9f042440  addli r9, r8, 8208
000118  0b126220  mul.s r4, r4, r6
00011c  67479ffc  storeli.w r9, -396(r30)
000120  73e00400  stores.w zero, 0(r9)
000124  00a00300  mfence { lm, sm, gm }
000128  80a10204  csr_set csr3, r5
00012c  00d00100  sync_group
000130  e7078ffc  storeli.w r8, -392(r30)
000134  73600400  stores.w zero, 0(r8)
000138  00a00300  mfence { lm, sm, gm }
00013c  67075ffc  storeli.w r5, -400(r30)
000140  80a10204  csr_set csr3, r5
000144  00d00100  sync_group
000148  e7464ffc  storeli.w r4, -404(r30)
00014c  4b257204  ble.s r4, r7, 2376
000150  1f021000  addli r4, zero, 8
000154  80d20002  load_param_i r5, 1
000158  2bf3ffff  lui r6, 1048575
00015c  1f1a0000  addli r20, zero, 1
000160  6b548f00  load.d r[9:10], 8(r30)
000164  6b550f00  load.d r[11:12], 0(r30)
000168  9f0a8ffe  addli r21, r30, -192
00016c  1f0b8000  addli r22, zero, 64
000170  eea37362  vxor.u.mz vr7{mr1}, vr7, vr7
000174  46107fc2  vstore_mask16.mz vr7{mr1}, 1536(r30)
000178  0b924130  div.s r4, r3, r4
00017c  e7065ffc  storeli.w r5, -408(r30)
000180  9b827100  andi r5, r3, 7
000184  67465ffc  storeli.w r5, -412(r30)
000188  9b323200  slli r5, r4, 3
00018c  1b32a200  slli r4, r4, 10
000190  8b915118  sub.s r3, r3, r5
000194  9b1203fe  ori r5, r6, 4064
000198  67064ffc  storeli.w r4, -416(r30)
00019c  9bb15100  slli r3, r3, 5
0001a0  17015100  and r2, r2, r5
0001a4  b3920128  sext_int2long r[6:7], r3
0001a8  0b161110  add.s r12, r2, r1
0001ac  97b04203  sll.d r[2:3], r[6:7], r20
0001b0  6708cffc  storeli.w r12, -384(r30)
0001b4  0b241410  add.ul r[9:10], r[9:10], r[2:3]
0001b8  9f002640  addli r1, r12, 8208
0001bc  1f060fff  addli r12, r30, -128
0001c0  e7471ffc  storeli.w r1, -388(r30)
0001c4  8b103210  add.s r1, r4, r3
0001c8  733c8fea  store.d r[9:10], -328(r30)
0001cc  e7451ffc  storeli.w r1, -420(r30)
0001d0  9f100000  addli r1, zero, 1
0001d4  7e8100e0  vmmov mr2, r1
0001d8  9f200000  addli r1, zero, 2
0001dc  fe8100e0  vmmov mr3, r1
0001e0  ab10833a  lui r1, 239665
0001e4  9b90f026  ori r1, r1, 623
0001e8  e74f1ffa  storeli.w r1, -516(r30)
0001ec  63016f00  loadli.w r2,  48(r30)
0001f0  e3415f00  loadli.w r3,  44(r30)
0001f4  67487ffc  storeli.w r7, -380(r30)
0001f8  2b0200f0  lui r4, 983040
0001fc  12307002  vadd.s.mz vr0{mr1}, zero, vr7
000200  92307002  vadd.s.mz vr1{mr1}, zero, vr7
000204  12317002  vadd.s.mz vr2{mr1}, zero, vr7
000208  92317002  vadd.s.mz vr3{mr1}, zero, vr7
00020c  9f000000  addli r1, zero, 0
000210  0b912330  div.s r2, r7, r2
000214  9f230000  addli r7, zero, 2
000218  17924300  or r4, r7, r4
00021c  0b113130  div.s r2, r2, r3
000220  e301cffc  loadli.w r3,  -416(r30)
000224  1b31d100  slli r2, r2, 13
000228  8b113110  add.s r3, r2, r3
00022c  b3920128  sext_int2long r[6:7], r3
000230  ab0100f0  lui r3, 983040
000234  97b24203  sll.d r[6:7], r[6:7], r20
000238  97913300  or r3, r7, r3
00023c  9f038ffd  addli r7, r30, -320
000240  8b225510  add.ul r[6:7], r[11:12], r[6:7]
000244  7fa27200  l_gm2lm r4, r7, 0(r[6:7])
000248  6b528f00  load.d r[5:6], 8(r30)
00024c  1f030ffe  addli r6, r30, -256
000250  ff216200  l_gm2lm r3, r6, 0(r[5:6])
000254  00a00000  mfence { lm }
000258  eb310ff0  load.hu r3, -256(r30)
00025c  6b320fec  load.hu r4, -320(r30)
000260  00a00000  mfence { lm }
000264  00a00000  mfence { lm }
000268  8bd14110  add.hf.rn r3, r3, r4
00026c  b3910120  hfloat2float.rn r3, r3
000270  0be80158  neg.f r16, r3
000274  e341bffc  loadli.w r3,  -420(r30)
000278  674b0ffd  storeli.w r16, -332(r30)
00027c  0b9c2110  add.s r24, r3, r2
000280  670b8ffd  storeli.w r24, -336(r30)
000284  0b111c10  add.s r2, r24, r1
000288  ab0100f0  lui r3, 983040
00028c  33830028  zext_int2long r[7:8], r1
000290  92327002  vadd.s.mz vr5{mr1}, zero, vr7
000294  33120128  sext_int2long r[5:6], r2
000298  17113b00  or r2, r22, r3
00029c  17324203  sll.d r[5:6], r[5:6], r20
0002a0  8b214510  add.ul r[4:5], r[11:12], r[5:6]
0002a4  97324303  sll.d r[6:7], r[7:8], r20
0002a8  ab0300f0  lui r7, 983040
0002ac  8b225410  add.ul r[6:7], r[9:10], r[6:7]
0002b0  97137b00  or r7, r22, r7
0002b4  7fa15101  l_gm2lm r2, r21, 0(r[4:5])
0002b8  ffa3c200  l_gm2lm r7, r12, 0(r[6:7])
0002bc  00a00000  mfence { lm }
0002c0  42128fe2  vload_mask16.mz vr4{mr1}, 1856(r30)
0002c4  00a00000  mfence { lm }
0002c8  eb33effa  load.hu r7, -82(r30)
0002cc  6b342ffb  load.hu r8, -78(r30)
0002d0  eb370ff8  load.hu r15, -128(r30)
0002d4  6b382ff8  load.hu r16, -126(r30)
0002d8  eb384ff8  load.hu r17, -124(r30)
0002dc  6b396ff8  load.hu r18, -122(r30)
0002e0  eb398ff8  load.hu r19, -120(r30)
0002e4  6b3caff8  load.hu r24, -118(r30)
0002e8  eb3ccff8  load.hu r25, -116(r30)
0002ec  6b3eeff8  load.hu r28, -114(r30)
0002f0  eb3a0ff9  load.hu r21, -112(r30)
0002f4  6b3b2ff9  load.hu r22, -110(r30)
0002f8  eb3d4ff9  load.hu r27, -108(r30)
0002fc  6b3d6ff9  load.hu r26, -106(r30)
000300  6b3a8ff9  load.hu r20, -104(r30)
000304  eb3baff9  load.hu r23, -102(r30)
000308  6b31cff9  load.hu r2, -100(r30)
00030c  eb31eff9  load.hu r3, -98(r30)
000310  6b320ffa  load.hu r4, -96(r30)
000314  eb322ffa  load.hu r5, -94(r30)
000318  6b334ffa  load.hu r6, -92(r30)
00031c  6b376ffa  load.hu r14, -90(r30)
000320  eb368ffa  load.hu r13, -88(r30)
000324  eb35affa  load.hu r11, -86(r30)
000328  eb34cffa  load.hu r9, -84(r30)
00032c  6b366ffb  load.hu r12, -74(r30)
000330  6b358ffb  load.hu r10, -72(r30)
000334  67497ffc  storeli.w r7, -364(r30)
000338  eb330ffb  load.hu r7, -80(r30)
00033c  674a8ffc  storeli.w r8, -348(r30)
000340  6b344ffb  load.hu r8, -76(r30)
000344  e7497ffc  storeli.w r7, -356(r30)
000348  eb33cffb  load.hu r7, -68(r30)
00034c  e70a8ffc  storeli.w r8, -344(r30)
000350  6b34affb  load.hu r8, -70(r30)
000354  e7097ffc  storeli.w r7, -360(r30)
000358  eb33effb  load.hu r7, -66(r30)
00035c  670a7ffc  storeli.w r7, -352(r30)
000360  eac25734  vor.hf.mh vr5{mr2}, r15, vr5
000364  9f430000  addli r7, zero, 4
000368  9f070006  addli r15, zero, 768
00036c  7e8003e0  vmmov mr0, r7
000370  9f031000  addli r7, zero, 8
000374  ea425836  vor.hf.mh vr5{mr3}, r16, vr5
000378  eac25830  vor.hf.mh vr5{mr0}, r17, vr5
00037c  7e8003e0  vmmov mr0, r7
000380  9f032000  addli r7, zero, 16
000384  ea425930  vor.hf.mh vr5{mr0}, r18, vr5
000388  7e8003e0  vmmov mr0, r7
00038c  9f034000  addli r7, zero, 32
000390  eac25930  vor.hf.mh vr5{mr0}, r19, vr5
000394  7e8003e0  vmmov mr0, r7
000398  9f038000  addli r7, zero, 64
00039c  ea425c30  vor.hf.mh vr5{mr0}, r24, vr5
0003a0  7e8003e0  vmmov mr0, r7
0003a4  630c6ffd  loadli.w r24,  -336(r30)
0003a8  63486ffd  loadli.w r16,  -332(r30)
0003ac  9f030001  addli r7, zero, 128
0003b0  eac25c30  vor.hf.mh vr5{mr0}, r25, vr5
0003b4  7e8003e0  vmmov mr0, r7
0003b8  9f030002  addli r7, zero, 256
0003bc  ea425e30  vor.hf.mh vr5{mr0}, r28, vr5
0003c0  7e8003e0  vmmov mr0, r7
0003c4  9f030004  addli r7, zero, 512
0003c8  eac25a30  vor.hf.mh vr5{mr0}, r21, vr5
0003cc  7e8003e0  vmmov mr0, r7
0003d0  9f030008  addli r7, zero, 1024
0003d4  9f0a8ffe  addli r21, r30, -192
0003d8  ea425b30  vor.hf.mh vr5{mr0}, r22, vr5
0003dc  7e8003e0  vmmov mr0, r7
0003e0  9f030010  addli r7, zero, 2048
0003e4  1f0b8000  addli r22, zero, 64
0003e8  eac25d30  vor.hf.mh vr5{mr0}, r27, vr5
0003ec  7e8003e0  vmmov mr0, r7
0003f0  9f030020  addli r7, zero, 4096
0003f4  ea425d30  vor.hf.mh vr5{mr0}, r26, vr5
0003f8  7e8003e0  vmmov mr0, r7
0003fc  9f030040  addli r7, zero, 8192
000400  ea425a30  vor.hf.mh vr5{mr0}, r20, vr5
000404  7e8003e0  vmmov mr0, r7
000408  ab430000  lui r7, 4
00040c  1f1a0000  addli r20, zero, 1
000410  eac25b30  vor.hf.mh vr5{mr0}, r23, vr5
000414  7e8003e0  vmmov mr0, r7
000418  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
00041c  2b810000  lui r2, 8
000420  7e0001e0  vmmov mr0, r2
000424  2b010100  lui r2, 16
000428  eac25130  vor.hf.mh vr5{mr0}, r3, vr5
00042c  7e0001e0  vmmov mr0, r2
000430  2b010200  lui r2, 32
000434  ea425230  vor.hf.mh vr5{mr0}, r4, vr5
000438  7e0001e0  vmmov mr0, r2
00043c  2b010400  lui r2, 64
000440  eac25230  vor.hf.mh vr5{mr0}, r5, vr5
000444  7e0001e0  vmmov mr0, r2
000448  2b010800  lui r2, 128
00044c  ea425330  vor.hf.mh vr5{mr0}, r6, vr5
000450  7e0001e0  vmmov mr0, r2
000454  2b011000  lui r2, 256
000458  ea425730  vor.hf.mh vr5{mr0}, r14, vr5
00045c  7e0001e0  vmmov mr0, r2
000460  2b012000  lui r2, 512
000464  eac25630  vor.hf.mh vr5{mr0}, r13, vr5
000468  7e0001e0  vmmov mr0, r2
00046c  2b014000  lui r2, 1024
000470  eac25530  vor.hf.mh vr5{mr0}, r11, vr5
000474  7e0001e0  vmmov mr0, r2
000478  2b018000  lui r2, 2048
00047c  eac25430  vor.hf.mh vr5{mr0}, r9, vr5
000480  7e0001e0  vmmov mr0, r2
000484  63412ffd  loadli.w r2,  -364(r30)
000488  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
00048c  2b010001  lui r2, 4096
000490  7e0001e0  vmmov mr0, r2
000494  63413ffd  loadli.w r2,  -356(r30)
000498  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
00049c  2b010002  lui r2, 8192
0004a0  7e0001e0  vmmov mr0, r2
0004a4  63414ffd  loadli.w r2,  -348(r30)
0004a8  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
0004ac  2b010004  lui r2, 16384
0004b0  7e0001e0  vmmov mr0, r2
0004b4  63015ffd  loadli.w r2,  -344(r30)
0004b8  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
0004bc  2b010008  lui r2, 32768
0004c0  7e0001e0  vmmov mr0, r2
0004c4  2b010010  lui r2, 65536
0004c8  ea425630  vor.hf.mh vr5{mr0}, r12, vr5
0004cc  7e0001e0  vmmov mr0, r2
0004d0  2b010020  lui r2, 131072
0004d4  1f060fff  addli r12, r30, -128
0004d8  ea425530  vor.hf.mh vr5{mr0}, r10, vr5
0004dc  7e0001e0  vmmov mr0, r2
0004e0  2b010040  lui r2, 262144
0004e4  6b550f00  load.d r[11:12], 0(r30)
0004e8  ea425430  vor.hf.mh vr5{mr0}, r8, vr5
0004ec  7e0001e0  vmmov mr0, r2
0004f0  63013ffd  loadli.w r2,  -360(r30)
0004f4  6b548feb  load.d r[9:10], -328(r30)
0004f8  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
0004fc  2b010080  lui r2, 524288
000500  7e0001e0  vmmov mr0, r2
000504  63014ffd  loadli.w r2,  -352(r30)
000508  ea425130  vor.hf.mh vr5{mr0}, r2, vr5
00050c  1381f004  setlt.u r2, r1, r15
000510  9f800002  addli r1, r1, 256
000514  16425202  vadd.hf.mz.rn vr4{mr1}, vr4, vr5
000518  86320200  vfp162float_l.rn vr5, vr4
00051c  06730200  vfp162float_h.rn vr6, vr4
000520  12125802  vadd.f.mz.rn vr4{mr1}, r16, vr5
000524  92126802  vadd.f.mz.rn vr5{mr1}, r16, vr6
000528  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
00052c  96915102  vadd.f.mz.rn vr3{mr1}, vr3, vr5
000530  26104202  vmac.f.mz.rn vr0{mr1}, vr4, vr4
000534  a6905202  vmac.f.mz.rn vr1{mr1}, vr5, vr5
000538  00a00000  mfence { lm }
00053c  00a00000  mfence { lm }
000540  3b1501fe  bneq r2, zero, -700
000544  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000548  fa100140  vextracti.f r1, 0(vr2)
00054c  7a111140  vextracti.f r2, 1(vr2)
000550  8be02010  add.f.rn r1, r1, r2
000554  7a112140  vextracti.f r2, 2(vr2)
000558  8b601110  add.f.rn r1, r2, r1
00055c  7a113140  vextracti.f r2, 3(vr2)
000560  8b601110  add.f.rn r1, r2, r1
000564  7a114140  vextracti.f r2, 4(vr2)
000568  8b601110  add.f.rn r1, r2, r1
00056c  7a115140  vextracti.f r2, 5(vr2)
000570  8b601110  add.f.rn r1, r2, r1
000574  7a116140  vextracti.f r2, 6(vr2)
000578  8b601110  add.f.rn r1, r2, r1
00057c  7a117140  vextracti.f r2, 7(vr2)
000580  8b601110  add.f.rn r1, r2, r1
000584  7a118140  vextracti.f r2, 8(vr2)
000588  8b601110  add.f.rn r1, r2, r1
00058c  7a119140  vextracti.f r2, 9(vr2)
000590  8b601110  add.f.rn r1, r2, r1
000594  7a11a140  vextracti.f r2, 10(vr2)
000598  8b601110  add.f.rn r1, r2, r1
00059c  7a11b140  vextracti.f r2, 11(vr2)
0005a0  8b601110  add.f.rn r1, r2, r1
0005a4  7a11c140  vextracti.f r2, 12(vr2)
0005a8  8b601110  add.f.rn r1, r2, r1
0005ac  7a11d140  vextracti.f r2, 13(vr2)
0005b0  8b601110  add.f.rn r1, r2, r1
0005b4  7a11e140  vextracti.f r2, 14(vr2)
0005b8  8b601110  add.f.rn r1, r2, r1
0005bc  7a11f140  vextracti.f r2, 15(vr2)
0005c0  8b601110  add.f.rn r1, r2, r1
0005c4  6301fffc  loadli.w r2,  -392(r30)
0005c8  73601100  stores.w r1, 0(r2)
0005cc  00a00300  mfence { lm, sm, gm }
0005d0  e302effc  loadli.w r5,  -400(r30)
0005d4  80a10204  csr_set csr3, r5
0005d8  00d00100  sync_group
0005dc  6342cffc  loadli.w r4,  -412(r30)
0005e0  3b210200  bneq r4, zero, 72
0005e4  63030ffd  loadli.w r6,  -384(r30)
0005e8  ef400300  loads.w r1, 0(r6)
0005ec  6f414300  loads.w r2, 4(r6)
0005f0  ef418300  loads.w r3, 8(r6)
0005f4  8be02010  add.f.rn r1, r1, r2
0005f8  6f41c300  loads.w r2, 12(r6)
0005fc  8be03010  add.f.rn r1, r1, r3
000600  ef410301  loads.w r3, 16(r6)
000604  8be02010  add.f.rn r1, r1, r2
000608  6f414301  loads.w r2, 20(r6)
00060c  8be03010  add.f.rn r1, r1, r3
000610  ef418301  loads.w r3, 24(r6)
000614  8be02010  add.f.rn r1, r1, r2
000618  6f41c301  loads.w r2, 28(r6)
00061c  8be03010  add.f.rn r1, r1, r3
000620  8be02010  add.f.rn r1, r1, r2
000624  73601300  stores.w r1, 0(r6)
000628  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00062c  00a00300  mfence { lm, sm, gm }
000630  80a10204  csr_set csr3, r5
000634  00d00100  sync_group
000638  fa100040  vextracti.f r1, 0(vr0)
00063c  7a111040  vextracti.f r2, 1(vr0)
000640  fa11f040  vextracti.f r3, 15(vr0)
000644  8be02010  add.f.rn r1, r1, r2
000648  7a112040  vextracti.f r2, 2(vr0)
00064c  8b601110  add.f.rn r1, r2, r1
000650  7a113040  vextracti.f r2, 3(vr0)
000654  8b601110  add.f.rn r1, r2, r1
000658  7a114040  vextracti.f r2, 4(vr0)
00065c  8b601110  add.f.rn r1, r2, r1
000660  7a115040  vextracti.f r2, 5(vr0)
000664  8b601110  add.f.rn r1, r2, r1
000668  7a116040  vextracti.f r2, 6(vr0)
00066c  8b601110  add.f.rn r1, r2, r1
000670  7a117040  vextracti.f r2, 7(vr0)
000674  8b601110  add.f.rn r1, r2, r1
000678  7a118040  vextracti.f r2, 8(vr0)
00067c  8b601110  add.f.rn r1, r2, r1
000680  7a119040  vextracti.f r2, 9(vr0)
000684  8b601110  add.f.rn r1, r2, r1
000688  7a11a040  vextracti.f r2, 10(vr0)
00068c  8b601110  add.f.rn r1, r2, r1
000690  7a11b040  vextracti.f r2, 11(vr0)
000694  8b601110  add.f.rn r1, r2, r1
000698  7a11c040  vextracti.f r2, 12(vr0)
00069c  8b601110  add.f.rn r1, r2, r1
0006a0  7a11d040  vextracti.f r2, 13(vr0)
0006a4  8b601110  add.f.rn r1, r2, r1
0006a8  7a11e040  vextracti.f r2, 14(vr0)
0006ac  0b611110  add.f.rn r2, r2, r1
0006b0  e3000ffd  loadli.w r1,  -384(r30)
0006b4  efc00000  loads.w r1, 0(r1)
0006b8  0be12110  add.f.rn r2, r3, r2
0006bc  e341effc  loadli.w r3,  -396(r30)
0006c0  73e02100  stores.w r2, 0(r3)
0006c4  00a00300  mfence { lm, sm, gm }
0006c8  80a10204  csr_set csr3, r5
0006cc  00d00100  sync_group
0006d0  3b210200  bneq r4, zero, 72
0006d4  6343fffc  loadli.w r6,  -388(r30)
0006d8  6f410300  loads.w r2, 0(r6)
0006dc  ef414300  loads.w r3, 4(r6)
0006e0  6f428300  loads.w r4, 8(r6)
0006e4  0b613110  add.f.rn r2, r2, r3
0006e8  ef41c300  loads.w r3, 12(r6)
0006ec  0b614110  add.f.rn r2, r2, r4
0006f0  6f420301  loads.w r4, 16(r6)
0006f4  0b613110  add.f.rn r2, r2, r3
0006f8  ef414301  loads.w r3, 20(r6)
0006fc  0b614110  add.f.rn r2, r2, r4
000700  6f428301  loads.w r4, 24(r6)
000704  0b613110  add.f.rn r2, r2, r3
000708  ef41c301  loads.w r3, 28(r6)
00070c  0b614110  add.f.rn r2, r2, r4
000710  0b613110  add.f.rn r2, r2, r3
000714  73602300  stores.w r2, 0(r6)
000718  00a00300  mfence { lm, sm, gm }
00071c  80a10204  csr_set csr3, r5
000720  00d00100  sync_group
000724  6341fffc  loadli.w r2,  -388(r30)
000728  ab01803a  lui r3, 239616
00072c  8be93020  mul.f.rn r19, r1, r3
000730  6f410100  loads.w r2, 0(r2)
000734  8b603120  mul.f.rn r1, r2, r3
000738  0be13921  mul.f.rn r2, r19, r19
00073c  9f010000  addli r3, zero, 0
000740  0be12018  sub.f.rn r2, r1, r2
000744  d7540100  jal 2724
000748  e340fffb  loadli.w r1,  -516(r30)
00074c  c2130fc2  vload_mask16.mz vr7{mr1}, 1536(r30)
000750  9f010000  addli r3, zero, 0
000754  9f0b8fff  addli r23, r30, -64
000758  8b601110  add.f.rn r1, r2, r1
00075c  2b01803f  lui r2, 260096
000760  8f800008  sqrt.f.rn r1, r1
000764  8f001118  div.f.rn r1, r2, r1
000768  e7481ffc  storeli.w r1, -372(r30)
00076c  8be00958  neg.f r1, r19
000770  e7081ffc  storeli.w r1, -376(r30)
000774  9f100000  addli r1, zero, 1
000778  7e8100e0  vmmov mr2, r1
00077c  9f200000  addli r1, zero, 2
000780  fe8100e0  vmmov mr3, r1
000784  0b123c10  add.s r4, r24, r3
000788  eb500f00  load.d r[2:3], 0(r30)
00078c  b3830128  zext_int2long r[8:9], r3
000790  2b0300f0  lui r6, 983040
000794  ab0500f0  lui r11, 983040
000798  92307002  vadd.s.mz vr1{mr1}, zero, vr7
00079c  33120228  sext_int2long r[5:6], r4
0007a0  97b34303  sll.d r[8:9], r[8:9], r20
0007a4  17136b00  or r6, r22, r6
0007a8  9715bb00  or r11, r22, r11
0007ac  17324203  sll.d r[5:6], r[5:6], r20
0007b0  8ba44010  add.ul r[10:11], r[2:3], r[5:6]
0007b4  eb508feb  load.d r[2:3], -328(r30)
0007b8  73344fea  store.d r[5:6], -344(r30)
0007bc  7fa35401  l_gm2lm r6, r21, 0(r[10:11])
0007c0  8ba37010  add.ul r[8:9], r[2:3], r[8:9]
0007c4  ffa57301  l_gm2lm r11, r23, 0(r[8:9])
0007c8  00a00000  mfence { lm }
0007cc  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
0007d0  00a00000  mfence { lm }
0007d4  eb35effe  load.hu r11, -18(r30)
0007d8  6b362fff  load.hu r12, -14(r30)
0007dc  eb390ffc  load.hu r19, -64(r30)
0007e0  6b3a2ffc  load.hu r20, -62(r30)
0007e4  eb3a4ffc  load.hu r21, -60(r30)
0007e8  6b3b6ffc  load.hu r22, -58(r30)
0007ec  eb3b8ffc  load.hu r23, -56(r30)
0007f0  6b3caffc  load.hu r24, -54(r30)
0007f4  eb3ccffc  load.hu r25, -52(r30)
0007f8  6b3deffc  load.hu r26, -50(r30)
0007fc  eb3d0ffd  load.hu r27, -48(r30)
000800  6b3e2ffd  load.hu r28, -46(r30)
000804  eb304ffd  load.hu r1, -44(r30)
000808  6b316ffd  load.hu r2, -42(r30)
00080c  6b328ffd  load.hu r4, -40(r30)
000810  eb32affd  load.hu r5, -38(r30)
000814  6b33cffd  load.hu r6, -36(r30)
000818  eb33effd  load.hu r7, -34(r30)
00081c  6b340ffe  load.hu r8, -32(r30)
000820  eb342ffe  load.hu r9, -30(r30)
000824  6b354ffe  load.hu r10, -28(r30)
000828  6b396ffe  load.hu r18, -26(r30)
00082c  eb388ffe  load.hu r17, -24(r30)
000830  eb37affe  load.hu r15, -22(r30)
000834  eb36cffe  load.hu r13, -20(r30)
000838  6b386fff  load.hu r16, -10(r30)
00083c  6b378fff  load.hu r14, -8(r30)
000840  6709bffc  storeli.w r11, -368(r30)
000844  eb350fff  load.hu r11, -16(r30)
000848  670acffc  storeli.w r12, -352(r30)
00084c  6b364fff  load.hu r12, -12(r30)
000850  e709bffc  storeli.w r11, -360(r30)
000854  eb35cfff  load.hu r11, -4(r30)
000858  674acffc  storeli.w r12, -348(r30)
00085c  6b36afff  load.hu r12, -6(r30)
000860  6749bffc  storeli.w r11, -364(r30)
000864  eb35efff  load.hu r11, -2(r30)
000868  e749bffc  storeli.w r11, -356(r30)
00086c  eac01934  vor.hf.mh vr1{mr2}, r19, vr1
000870  9f450000  addli r11, zero, 4
000874  9f090006  addli r19, zero, 768
000878  7e8005e0  vmmov mr0, r11
00087c  9f051000  addli r11, zero, 8
000880  ea401a36  vor.hf.mh vr1{mr3}, r20, vr1
000884  1f1a0000  addli r20, zero, 1
000888  eac01a30  vor.hf.mh vr1{mr0}, r21, vr1
00088c  7e8005e0  vmmov mr0, r11
000890  9f052000  addli r11, zero, 16
000894  9f0a8ffe  addli r21, r30, -192
000898  ea401b30  vor.hf.mh vr1{mr0}, r22, vr1
00089c  7e8005e0  vmmov mr0, r11
0008a0  9f054000  addli r11, zero, 32
0008a4  1f0b8000  addli r22, zero, 64
0008a8  eac01b30  vor.hf.mh vr1{mr0}, r23, vr1
0008ac  7e8005e0  vmmov mr0, r11
0008b0  9f058000  addli r11, zero, 64
0008b4  9f0b8fff  addli r23, r30, -64
0008b8  ea401c30  vor.hf.mh vr1{mr0}, r24, vr1
0008bc  7e8005e0  vmmov mr0, r11
0008c0  634c6ffd  loadli.w r24,  -332(r30)
0008c4  9f050001  addli r11, zero, 128
0008c8  eac01c30  vor.hf.mh vr1{mr0}, r25, vr1
0008cc  7e8005e0  vmmov mr0, r11
0008d0  9f050002  addli r11, zero, 256
0008d4  ea401d30  vor.hf.mh vr1{mr0}, r26, vr1
0008d8  7e8005e0  vmmov mr0, r11
0008dc  9f050004  addli r11, zero, 512
0008e0  eac01d30  vor.hf.mh vr1{mr0}, r27, vr1
0008e4  7e8005e0  vmmov mr0, r11
0008e8  9f050008  addli r11, zero, 1024
0008ec  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
0008f0  7e8005e0  vmmov mr0, r11
0008f4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0008f8  9f000010  addli r1, zero, 2048
0008fc  7e8000e0  vmmov mr0, r1
000900  9f000020  addli r1, zero, 4096
000904  ea401130  vor.hf.mh vr1{mr0}, r2, vr1
000908  7e8000e0  vmmov mr0, r1
00090c  9f000040  addli r1, zero, 8192
000910  13813105  setlt.u r2, r3, r19
000914  9f810102  addli r3, r3, 256
000918  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
00091c  7e8000e0  vmmov mr0, r1
000920  ab400000  lui r1, 4
000924  eac01230  vor.hf.mh vr1{mr0}, r5, vr1
000928  7e8000e0  vmmov mr0, r1
00092c  ab800000  lui r1, 8
000930  6b520f01  load.d r[5:6], 16(r30)
000934  ea401330  vor.hf.mh vr1{mr0}, r6, vr1
000938  7e8000e0  vmmov mr0, r1
00093c  ab000100  lui r1, 16
000940  eac01330  vor.hf.mh vr1{mr0}, r7, vr1
000944  7e8000e0  vmmov mr0, r1
000948  ab000200  lui r1, 32
00094c  ea401430  vor.hf.mh vr1{mr0}, r8, vr1
000950  7e8000e0  vmmov mr0, r1
000954  ab000400  lui r1, 64
000958  eac01430  vor.hf.mh vr1{mr0}, r9, vr1
00095c  7e8000e0  vmmov mr0, r1
000960  ab000800  lui r1, 128
000964  ea401530  vor.hf.mh vr1{mr0}, r10, vr1
000968  7e8000e0  vmmov mr0, r1
00096c  ab001000  lui r1, 256
000970  ea401930  vor.hf.mh vr1{mr0}, r18, vr1
000974  7e8000e0  vmmov mr0, r1
000978  ab002000  lui r1, 512
00097c  eac01830  vor.hf.mh vr1{mr0}, r17, vr1
000980  7e8000e0  vmmov mr0, r1
000984  ab004000  lui r1, 1024
000988  eac01730  vor.hf.mh vr1{mr0}, r15, vr1
00098c  7e8000e0  vmmov mr0, r1
000990  ab008000  lui r1, 2048
000994  eac01630  vor.hf.mh vr1{mr0}, r13, vr1
000998  7e8000e0  vmmov mr0, r1
00099c  e3002ffd  loadli.w r1,  -368(r30)
0009a0  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0009a4  ab000001  lui r1, 4096
0009a8  7e8000e0  vmmov mr0, r1
0009ac  e3003ffd  loadli.w r1,  -360(r30)
0009b0  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0009b4  ab000002  lui r1, 8192
0009b8  7e8000e0  vmmov mr0, r1
0009bc  e3004ffd  loadli.w r1,  -352(r30)
0009c0  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0009c4  ab000004  lui r1, 16384
0009c8  7e8000e0  vmmov mr0, r1
0009cc  e3404ffd  loadli.w r1,  -348(r30)
0009d0  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0009d4  ab000008  lui r1, 32768
0009d8  7e8000e0  vmmov mr0, r1
0009dc  ab000010  lui r1, 65536
0009e0  ea401830  vor.hf.mh vr1{mr0}, r16, vr1
0009e4  7e8000e0  vmmov mr0, r1
0009e8  ab000020  lui r1, 131072
0009ec  ea401730  vor.hf.mh vr1{mr0}, r14, vr1
0009f0  7e8000e0  vmmov mr0, r1
0009f4  ab000040  lui r1, 262144
0009f8  ea401630  vor.hf.mh vr1{mr0}, r12, vr1
0009fc  7e8000e0  vmmov mr0, r1
000a00  e3402ffd  loadli.w r1,  -364(r30)
000a04  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
000a08  ab000080  lui r1, 524288
000a0c  7e8000e0  vmmov mr0, r1
000a10  e3403ffd  loadli.w r1,  -356(r30)
000a14  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
000a18  6b538fea  load.d r[7:8], -344(r30)
000a1c  ab0000f0  lui r1, 983040
000a20  97101b00  or r1, r22, r1
000a24  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000a28  63031ffd  loadli.w r6,  -376(r30)
000a2c  16401002  vadd.hf.mz.rn vr0{mr1}, vr0, vr1
000a30  86300000  vfp162float_l.rn vr1, vr0
000a34  06710000  vfp162float_h.rn vr2, vr0
000a38  12101c02  vadd.f.mz.rn vr0{mr1}, r24, vr1
000a3c  92102c02  vadd.f.mz.rn vr1{mr1}, r24, vr2
000a40  630c6ffd  loadli.w r24,  -336(r30)
000a44  12100302  vadd.f.mz.rn vr0{mr1}, r6, vr0
000a48  92101302  vadd.f.mz.rn vr1{mr1}, r6, vr1
000a4c  63431ffd  loadli.w r6,  -372(r30)
000a50  0a100302  vmul.f.mz.rn vr0{mr1}, r6, vr0
000a54  8a101302  vmul.f.mz.rn vr1{mr1}, r6, vr1
000a58  06110000  vfloat2fp16_l.rn vr2, vr0
000a5c  06d10000  vfloat2fp16_h.rn vr2, vr1
000a60  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
000a64  00a00000  mfence { lm }
000a68  ff305201  s_lm2gm r1, r21, 0(r[5:6])
000a6c  00a00000  mfence { lm }
000a70  3b5401fe  bneq r2, zero, -748
000a74  e3430ffd  loadli.w r7,  -380(r30)
000a78  e300dffc  loadli.w r1,  -408(r30)
000a7c  6b550f00  load.d r[11:12], 0(r30)
000a80  6b548feb  load.d r[9:10], -328(r30)
000a84  1f060fff  addli r12, r30, -128
000a88  8b931310  add.s r7, r7, r1
000a8c  e340dffc  loadli.w r1,  -404(r30)
000a90  3ffd13fa  blt.s r7, r1, -2212
000a94  9f0e8ffb  addli sp, r30, -576
000a98  9f8e8e04  addli sp, sp, 576
000a9c  00a00300  mfence { lm, sm, gm }
000aa0  00100000  exit
000aa4  9f8efeff  addli sp, sp, -8
000aa8  9f000100  addli r1, r2, 0
000aac  2bf1ff7f  lui r2, 524287
000ab0  ab02807f  lui r5, 522240
000ab4  67c0ee01  storeli.w r30, 4(sp)
000ab8  6780fe01  storeli.w r31, 0(sp)
000abc  1f8f1e00  addli r30, sp, 8
000ac0  1b12f1ff  ori r4, r2, 4095
000ac4  17814000  and r2, r1, r4
000ac8  13832204  setlt.u r6, r5, r2
000acc  1f810100  addli r2, r3, 0
000ad0  bb210300  bneq r6, zero, 104
000ad4  97014100  and r3, r2, r4
000ad8  93813204  setlt.u r3, r5, r3
000adc  3be10100  bneq r3, zero, 88
000ae0  abf1ffff  lui r3, 1048575
000ae4  17221100  xor r4, r2, r1
000ae8  9b91f1ff  ori r3, r3, 4095
000aec  3fa04100  blt.s r3, r4, 8
000af0  5b0b0000  j 88
000af4  9b319100  slli r3, r2, 9
000af8  9bb29000  slli r5, r1, 9
000afc  1b427101  srli r4, r2, 23
000b00  1bc37001  srli r6, r1, 23
000b04  93e32004  setlt.f r7, r1, r2
000b08  93810100  seteq r3, r3, zero
000b0c  93820200  seteq r5, r5, zero
000b10  1b02f20f  andi r4, r4, 255
000b14  1b03f30f  andi r6, r6, 255
000b18  1b72f20f  setlti r4, r4, 255
000b1c  1b73f30f  setlti r6, r6, 255
000b20  97113200  or r3, r4, r3
000b24  17125300  or r4, r6, r5
000b28  97013200  and r3, r4, r3
000b2c  97813300  and r3, r7, r3
000b30  3ba00100  bneq r3, zero, 8
000b34  1f810000  addli r2, r1, 0
000b38  e38f0e00  loadli.w r31,  0(sp)
000b3c  63cf0e00  loadli.w r30,  4(sp)
000b40  9f8e1e00  addli sp, sp, 8
000b44  5f800f00  jr r31, 0
000b48  bfcf00fe  blt.s r1, zero, -16
000b4c  5bfdffff  j -24
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
000bd0  00100000  exit
000bd4  00100000  exit
000bd8  00100000  exit
000bdc  00100000  exit
000be0  00100000  exit
000be4  00100000  exit
000be8  00100000  exit
000bec  00100000  exit
000bf0  00100000  exit
000bf4  00100000  exit
000bf8  00100000  exit
000bfc  00100000  exit
000c00  00100000  exit
000c04  00100000  exit
000c08  00100000  exit
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
