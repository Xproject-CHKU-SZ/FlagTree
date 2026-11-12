000000  9f8e0efc  addli sp, sp, -512
000004  ab000000  lui r1, 0
000008  80310002  core_id r3
00000c  1f8f8e03  addli r30, sp, 448
000010  80540002  load_param_i r9, 0
000014  1bb12100  slli r2, r3, 2
000018  9f800000  addli r1, r1, 0
00001c  e3433f00  loadli.w r7,  28(r30)
000020  63023f00  loadli.w r4,  24(r30)
000024  63034f00  loadli.w r6,  32(r30)
000028  0b141110  add.s r8, r2, r1
00002c  0b924320  mul.s r4, r7, r4
000030  9f022440  addli r5, r8, 8208
000034  0b126220  mul.s r4, r4, r6
000038  674e5ffc  storeli.w r5, -284(r30)
00003c  73e00200  stores.w zero, 0(r5)
000040  abf20000  lui r5, 15
000044  00a00300  mfence { lm, sm, gm }
000048  9b9bf2ff  ori r23, r5, 4095
00004c  abf27fff  lui r5, 1046527
000050  9b92f2ff  ori r5, r5, 4095
000054  80a10b04  csr_set csr3, r23
000058  00d00100  sync_group
00005c  e70e8ffc  storeli.w r8, -280(r30)
000060  73605400  stores.w r5, 0(r8)
000064  00a00300  mfence { lm, sm, gm }
000068  80a10b04  csr_set csr3, r23
00006c  00d00100  sync_group
000070  67074ffc  storeli.w r4, -400(r30)
000074  cb059204  ble.s r4, r9, 2400
000078  1f021000  addli r4, zero, 8
00007c  80d30002  load_param_i r7, 1
000080  9b897100  andi r19, r3, 7
000084  2bf4ffff  lui r8, 1048575
000088  1f2b0000  addli r22, zero, 2
00008c  eb528f00  load.d r[6:7], 8(r30)
000090  9f0c8ffe  addli r25, r30, -192
000094  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000098  46183fc2  vstore_mask16.mz vr3{mr1}, 1664(r30)
00009c  0b924130  div.s r4, r3, r4
0000a0  e7467ffc  storeli.w r7, -404(r30)
0000a4  e7473ffd  storeli.w r19, -388(r30)
0000a8  9b333200  slli r7, r4, 3
0000ac  1b32b200  slli r4, r4, 11
0000b0  8b917118  sub.s r3, r3, r7
0000b4  9b1304fe  ori r7, r8, 4064
0000b8  9bb14100  slli r3, r3, 4
0000bc  17017100  and r2, r2, r7
0000c0  b3930128  sext_int2long r[8:9], r3
0000c4  0b1a1110  add.s r20, r2, r1
0000c8  97b06303  sll.d r[2:3], r[8:9], r22
0000cc  1f0c2a40  addli r24, r20, 8208
0000d0  e74f4ffd  storeli.w r20, -260(r30)
0000d4  8ba51210  add.ul r[12:13], r[6:7], r[2:3]
0000d8  abc07fff  lui r1, 1046524
0000dc  0b113210  add.s r2, r4, r3
0000e0  e7078ffd  storeli.w r24, -392(r30)
0000e4  9b90e099  ori r1, r1, 2462
0000e8  e7062ffc  storeli.w r2, -408(r30)
0000ec  7338bfee  store.d r[12:13], -272(r30)
0000f0  67461ffc  storeli.w r1, -412(r30)
0000f4  9f100000  addli r1, zero, 1
0000f8  7e8100e0  vmmov mr2, r1
0000fc  9f200000  addli r1, zero, 2
000100  fe8100e0  vmmov mr3, r1
000104  9f400000  addli r1, zero, 4
000108  7e8000e0  vmmov mr0, r1
00010c  e3004f00  loadli.w r1,  32(r30)
000110  63413f00  loadli.w r2,  28(r30)
000114  634ecffc  loadli.w r28,  -412(r30)
000118  1f0d0000  addli r26, zero, 0
00011c  9f0d0000  addli r27, zero, 0
000120  67479ffc  storeli.w r9, -396(r30)
000124  8b901430  div.s r1, r9, r1
000128  8b902030  div.s r1, r1, r2
00012c  6301dffc  loadli.w r2,  -408(r30)
000130  9bb0e000  slli r1, r1, 14
000134  8b101110  add.s r1, r2, r1
000138  e74e1ffc  storeli.w r1, -276(r30)
00013c  db080000  j 68
000140  8b612e18  sub.f.rn r3, r28, r2
000144  00a00300  mfence { lm, sm, gm }
000148  80a10b04  csr_set csr3, r23
00014c  00d00100  sync_group
000150  6f420c00  loads.w r4, 0(r24)
000154  9f02000f  addli r5, zero, 1920
000158  1f0e0100  addli r28, r2, 0
00015c  1f410000  addli r2, zero, 4
000160  eb550fef  load.d r[12:13], -272(r30)
000164  93825d04  setlt.u r5, r27, r5
000168  9f8d0d01  addli r27, r27, 128
00016c  7e0001e0  vmmov mr0, r2
000170  8f810100  exp.f.rn r3, r3
000174  8b613d20  mul.f.rn r3, r26, r3
000178  0bed4110  add.f.rn r26, r3, r4
00017c  b7a30202  beq r5, zero, 1256
000180  e340dffd  loadli.w r1,  -276(r30)
000184  eb530f00  load.d r[8:9], 0(r30)
000188  2b0100f0  lui r2, 983040
00018c  b3820d28  zext_int2long r[6:7], r27
000190  9f048000  addli r9, zero, 64
000194  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000198  8b90b011  add.s r1, r1, r27
00019c  b3910028  sext_int2long r[4:5], r1
0001a0  97902400  or r1, r9, r2
0001a4  97b16103  sll.d r[4:5], r[4:5], r22
0001a8  0ba13310  add.ul r[3:4], r[8:9], r[4:5]
0001ac  17b26203  sll.d r[5:6], r[6:7], r22
0001b0  2b0300f0  lui r6, 983040
0001b4  ff209101  l_gm2lm r1, r25, 0(r[3:4])
0001b8  0ba24510  add.ul r[5:6], r[12:13], r[5:6]
0001bc  17936400  or r6, r9, r6
0001c0  9f000fff  addli r1, r30, -128
0001c4  7f231200  l_gm2lm r6, r1, 0(r[5:6])
0001c8  00a00000  mfence { lm }
0001cc  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
0001d0  00a00000  mfence { lm }
0001d4  e3000fff  loadli.w r1,  -128(r30)
0001d8  63410fff  loadli.w r2,  -124(r30)
0001dc  e3011fff  loadli.w r3,  -120(r30)
0001e0  63421fff  loadli.w r4,  -116(r30)
0001e4  e3022fff  loadli.w r5,  -112(r30)
0001e8  63432fff  loadli.w r6,  -108(r30)
0001ec  e3033fff  loadli.w r7,  -104(r30)
0001f0  63443fff  loadli.w r8,  -100(r30)
0001f4  e3044fff  loadli.w r9,  -96(r30)
0001f8  63454fff  loadli.w r10,  -92(r30)
0001fc  e3055fff  loadli.w r11,  -88(r30)
000200  63465fff  loadli.w r12,  -84(r30)
000204  e3066fff  loadli.w r13,  -80(r30)
000208  63476fff  loadli.w r14,  -76(r30)
00020c  e3077fff  loadli.w r15,  -72(r30)
000210  63487fff  loadli.w r16,  -68(r30)
000214  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000218  9f001000  addli r1, zero, 8
00021c  7e8100e0  vmmov mr2, r1
000220  9f002000  addli r1, zero, 16
000224  ea201136  vor.u.mh vr1{mr3}, r2, vr1
000228  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00022c  ea201234  vor.u.mh vr1{mr2}, r4, vr1
000230  7e8100e0  vmmov mr2, r1
000234  9f004000  addli r1, zero, 32
000238  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
00023c  7e8100e0  vmmov mr2, r1
000240  9f008000  addli r1, zero, 64
000244  ea201334  vor.u.mh vr1{mr2}, r6, vr1
000248  7e8100e0  vmmov mr2, r1
00024c  9f000001  addli r1, zero, 128
000250  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
000254  7e8100e0  vmmov mr2, r1
000258  9f000002  addli r1, zero, 256
00025c  ea201434  vor.u.mh vr1{mr2}, r8, vr1
000260  7e8100e0  vmmov mr2, r1
000264  9f000004  addli r1, zero, 512
000268  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
00026c  7e8100e0  vmmov mr2, r1
000270  9f000008  addli r1, zero, 1024
000274  ea201534  vor.u.mh vr1{mr2}, r10, vr1
000278  7e8100e0  vmmov mr2, r1
00027c  9f000010  addli r1, zero, 2048
000280  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
000284  7e8100e0  vmmov mr2, r1
000288  9f000020  addli r1, zero, 4096
00028c  ea201634  vor.u.mh vr1{mr2}, r12, vr1
000290  7e8100e0  vmmov mr2, r1
000294  9f000040  addli r1, zero, 8192
000298  eaa01634  vor.u.mh vr1{mr2}, r13, vr1
00029c  7e8100e0  vmmov mr2, r1
0002a0  ab400000  lui r1, 4
0002a4  ea201734  vor.u.mh vr1{mr2}, r14, vr1
0002a8  7e8100e0  vmmov mr2, r1
0002ac  ab800000  lui r1, 8
0002b0  eaa01734  vor.u.mh vr1{mr2}, r15, vr1
0002b4  7e8100e0  vmmov mr2, r1
0002b8  ea201834  vor.u.mh vr1{mr2}, r16, vr1
0002bc  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0002c0  7a110040  vextracti.f r2, 0(vr0)
0002c4  fa111040  vextracti.f r3, 1(vr0)
0002c8  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
0002cc  7e8001c0  vmmov mr0, mr3
0002d0  57000000  jal 0
0002d4  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0002d8  fa112040  vextracti.f r3, 2(vr0)
0002dc  57000000  jal 0
0002e0  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0002e4  fa113040  vextracti.f r3, 3(vr0)
0002e8  57000000  jal 0
0002ec  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0002f0  fa114040  vextracti.f r3, 4(vr0)
0002f4  57000000  jal 0
0002f8  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0002fc  fa115040  vextracti.f r3, 5(vr0)
000300  57000000  jal 0
000304  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000308  fa116040  vextracti.f r3, 6(vr0)
00030c  57000000  jal 0
000310  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000314  fa117040  vextracti.f r3, 7(vr0)
000318  57000000  jal 0
00031c  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000320  fa118040  vextracti.f r3, 8(vr0)
000324  57000000  jal 0
000328  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
00032c  fa119040  vextracti.f r3, 9(vr0)
000330  57000000  jal 0
000334  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000338  fa11a040  vextracti.f r3, 10(vr0)
00033c  57000000  jal 0
000340  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000344  fa11b040  vextracti.f r3, 11(vr0)
000348  57000000  jal 0
00034c  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000350  fa11c040  vextracti.f r3, 12(vr0)
000354  57000000  jal 0
000358  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
00035c  fa11d040  vextracti.f r3, 13(vr0)
000360  57000000  jal 0
000364  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000368  fa11e040  vextracti.f r3, 14(vr0)
00036c  57000000  jal 0
000370  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000374  fa11f040  vextracti.f r3, 15(vr0)
000378  57000000  jal 0
00037c  e300dffd  loadli.w r1,  -280(r30)
000380  73e02000  stores.w r2, 0(r1)
000384  00a00300  mfence { lm, sm, gm }
000388  80a10b04  csr_set csr3, r23
00038c  00d00100  sync_group
000390  3bc20900  bneq r19, zero, 144
000394  e340fffd  loadli.w r1,  -260(r30)
000398  6f410a00  loads.w r2, 0(r20)
00039c  ef414a00  loads.w r3, 4(r20)
0003a0  9f890b00  addli r19, r23, 0
0003a4  6fca8000  loads.w r20, 8(r1)
0003a8  e340fffd  loadli.w r1,  -260(r30)
0003ac  efcac000  loads.w r21, 12(r1)
0003b0  e340fffd  loadli.w r1,  -260(r30)
0003b4  6fcb0001  loads.w r22, 16(r1)
0003b8  e340fffd  loadli.w r1,  -260(r30)
0003bc  efcb4001  loads.w r23, 20(r1)
0003c0  e340fffd  loadli.w r1,  -260(r30)
0003c4  6fcc8001  loads.w r24, 24(r1)
0003c8  e340fffd  loadli.w r1,  -260(r30)
0003cc  efccc001  loads.w r25, 28(r1)
0003d0  57000000  jal 0
0003d4  9f010a00  addli r3, r20, 0
0003d8  634afffd  loadli.w r20,  -260(r30)
0003dc  57000000  jal 0
0003e0  9f810a00  addli r3, r21, 0
0003e4  57000000  jal 0
0003e8  9f010b00  addli r3, r22, 0
0003ec  1f2b0000  addli r22, zero, 2
0003f0  57000000  jal 0
0003f4  9f810b00  addli r3, r23, 0
0003f8  9f8b0900  addli r23, r19, 0
0003fc  e349fffc  loadli.w r19,  -388(r30)
000400  57000000  jal 0
000404  9f010c00  addli r3, r24, 0
000408  630cfffc  loadli.w r24,  -392(r30)
00040c  57000000  jal 0
000410  9f810c00  addli r3, r25, 0
000414  9f0c8ffe  addli r25, r30, -192
000418  57000000  jal 0
00041c  73602a00  stores.w r2, 0(r20)
000420  00a00300  mfence { lm, sm, gm }
000424  80a10b04  csr_set csr3, r23
000428  00d00100  sync_group
00042c  ef410a00  loads.w r3, 0(r20)
000430  1f010e00  addli r2, r28, 0
000434  57000000  jal 0
000438  42110fc3  vload_mask16.mz vr2{mr1}, 1664(r30)
00043c  8b600158  neg.f r1, r2
000440  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000444  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000448  fa910040  vextracti.f r3, 0(vr1)
00044c  7a921040  vextracti.f r4, 1(vr1)
000450  1f130000  addli r6, zero, 1
000454  fa922040  vextracti.f r5, 2(vr1)
000458  7e0103e0  vmmov mr2, r6
00045c  1f430000  addli r6, zero, 4
000460  8f810100  exp.f.rn r3, r3
000464  0f020200  exp.f.rn r4, r4
000468  12302002  vadd.s.mz vr0{mr1}, zero, vr2
00046c  92312002  vadd.s.mz vr3{mr1}, zero, vr2
000470  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000474  8f810200  exp.f.rn r3, r5
000478  fa923040  vextracti.f r5, 3(vr1)
00047c  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000480  0f820200  exp.f.rn r4, r5
000484  fa924040  vextracti.f r5, 4(vr1)
000488  fe0100c0  vmmov mr3, mr0
00048c  7e0003e0  vmmov mr0, r6
000490  1f031000  addli r6, zero, 8
000494  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000498  8f810200  exp.f.rn r3, r5
00049c  fa925040  vextracti.f r5, 5(vr1)
0004a0  7e0003e0  vmmov mr0, r6
0004a4  1f032000  addli r6, zero, 16
0004a8  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0004ac  0f820200  exp.f.rn r4, r5
0004b0  fa926040  vextracti.f r5, 6(vr1)
0004b4  7e0003e0  vmmov mr0, r6
0004b8  1f034000  addli r6, zero, 32
0004bc  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004c0  8f810200  exp.f.rn r3, r5
0004c4  fa927040  vextracti.f r5, 7(vr1)
0004c8  7e0003e0  vmmov mr0, r6
0004cc  1f038000  addli r6, zero, 64
0004d0  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0004d4  0f820200  exp.f.rn r4, r5
0004d8  fa928040  vextracti.f r5, 8(vr1)
0004dc  7e0003e0  vmmov mr0, r6
0004e0  1f030001  addli r6, zero, 128
0004e4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004e8  8f810200  exp.f.rn r3, r5
0004ec  fa929040  vextracti.f r5, 9(vr1)
0004f0  7e0003e0  vmmov mr0, r6
0004f4  1f030002  addli r6, zero, 256
0004f8  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0004fc  0f820200  exp.f.rn r4, r5
000500  fa92a040  vextracti.f r5, 10(vr1)
000504  7e0003e0  vmmov mr0, r6
000508  1f030004  addli r6, zero, 512
00050c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000510  8f810200  exp.f.rn r3, r5
000514  fa92b040  vextracti.f r5, 11(vr1)
000518  7e0003e0  vmmov mr0, r6
00051c  1f030008  addli r6, zero, 1024
000520  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000524  0f820200  exp.f.rn r4, r5
000528  fa92c040  vextracti.f r5, 12(vr1)
00052c  7e0003e0  vmmov mr0, r6
000530  1f030010  addli r6, zero, 2048
000534  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000538  8f810200  exp.f.rn r3, r5
00053c  fa92d040  vextracti.f r5, 13(vr1)
000540  7e0003e0  vmmov mr0, r6
000544  1f030020  addli r6, zero, 4096
000548  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00054c  0f820200  exp.f.rn r4, r5
000550  fa92e040  vextracti.f r5, 14(vr1)
000554  7e0003e0  vmmov mr0, r6
000558  1f030040  addli r6, zero, 8192
00055c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000560  8f810200  exp.f.rn r3, r5
000564  fa92f040  vextracti.f r5, 15(vr1)
000568  7e0003e0  vmmov mr0, r6
00056c  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000570  0f820200  exp.f.rn r4, r5
000574  ab420000  lui r5, 4
000578  7e8002e0  vmmov mr0, r5
00057c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000580  ab810000  lui r3, 8
000584  7e8001e0  vmmov mr0, r3
000588  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00058c  fa110040  vextracti.f r3, 0(vr0)
000590  7a121040  vextracti.f r4, 1(vr0)
000594  8be14110  add.f.rn r3, r3, r4
000598  7a122040  vextracti.f r4, 2(vr0)
00059c  8b613210  add.f.rn r3, r4, r3
0005a0  7a123040  vextracti.f r4, 3(vr0)
0005a4  8b613210  add.f.rn r3, r4, r3
0005a8  7a124040  vextracti.f r4, 4(vr0)
0005ac  8b613210  add.f.rn r3, r4, r3
0005b0  7a125040  vextracti.f r4, 5(vr0)
0005b4  8b613210  add.f.rn r3, r4, r3
0005b8  7a126040  vextracti.f r4, 6(vr0)
0005bc  8b613210  add.f.rn r3, r4, r3
0005c0  7a127040  vextracti.f r4, 7(vr0)
0005c4  8b613210  add.f.rn r3, r4, r3
0005c8  7a128040  vextracti.f r4, 8(vr0)
0005cc  8b613210  add.f.rn r3, r4, r3
0005d0  7a129040  vextracti.f r4, 9(vr0)
0005d4  8b613210  add.f.rn r3, r4, r3
0005d8  7a12a040  vextracti.f r4, 10(vr0)
0005dc  8b613210  add.f.rn r3, r4, r3
0005e0  7a12b040  vextracti.f r4, 11(vr0)
0005e4  8b613210  add.f.rn r3, r4, r3
0005e8  7a12c040  vextracti.f r4, 12(vr0)
0005ec  8b613210  add.f.rn r3, r4, r3
0005f0  7a12d040  vextracti.f r4, 13(vr0)
0005f4  8b613210  add.f.rn r3, r4, r3
0005f8  7a12e040  vextracti.f r4, 14(vr0)
0005fc  8b613210  add.f.rn r3, r4, r3
000600  7a12f040  vextracti.f r4, 15(vr0)
000604  8b613210  add.f.rn r3, r4, r3
000608  6342cffd  loadli.w r4,  -284(r30)
00060c  73603200  stores.w r3, 0(r4)
000610  00a00300  mfence { lm, sm, gm }
000614  80a10b04  csr_set csr3, r23
000618  00d00100  sync_group
00061c  bb9c09fc  bneq r19, zero, -1244
000620  ef410c00  loads.w r3, 0(r24)
000624  6f424c00  loads.w r4, 4(r24)
000628  ef428c00  loads.w r5, 8(r24)
00062c  8be14110  add.f.rn r3, r3, r4
000630  6f42cc00  loads.w r4, 12(r24)
000634  8be15110  add.f.rn r3, r3, r5
000638  ef420c01  loads.w r5, 16(r24)
00063c  8be14110  add.f.rn r3, r3, r4
000640  6f424c01  loads.w r4, 20(r24)
000644  8be15110  add.f.rn r3, r3, r5
000648  ef428c01  loads.w r5, 24(r24)
00064c  8be14110  add.f.rn r3, r3, r4
000650  6f42cc01  loads.w r4, 28(r24)
000654  8be15110  add.f.rn r3, r3, r5
000658  8be14110  add.f.rn r3, r3, r4
00065c  73603c00  stores.w r3, 0(r24)
000660  5b5cffff  j -1312
000664  6a103d22  vor.f.mz vr0{mr1}, r26, vr3
000668  6b5d0f00  load.d r[27:28], 0(r30)
00066c  e34cdffd  loadli.w r25,  -276(r30)
000670  1f010000  addli r2, zero, 0
000674  9f0a8ffe  addli r21, r30, -192
000678  1f0e8000  addli r28, zero, 64
00067c  1f0c8fff  addli r24, r30, -64
000680  8b912c10  add.s r3, r25, r2
000684  33030128  zext_int2long r[7:8], r2
000688  ab0200f0  lui r5, 983040
00068c  2b0500f0  lui r10, 983040
000690  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000694  1f100000  addli zero, zero, 1
000698  b3910128  sext_int2long r[4:5], r3
00069c  17336303  sll.d r[7:8], r[7:8], r22
0006a0  97125e00  or r5, r28, r5
0006a4  1715ae00  or r10, r28, r10
0006a8  7e0100e0  vmmov mr2, zero
0006ac  17200000  xor zero, zero, zero
0006b0  97b16103  sll.d r[4:5], r[4:5], r22
0006b4  0ba36510  add.ul r[7:8], r[12:13], r[7:8]
0006b8  0b243d10  add.ul r[9:10], r[27:28], r[4:5]
0006bc  ff225401  l_gm2lm r5, r21, 0(r[9:10])
0006c0  7f258301  l_gm2lm r10, r24, 0(r[7:8])
0006c4  00a00000  mfence { lm }
0006c8  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
0006cc  00a00000  mfence { lm }
0006d0  e3028fff  loadli.w r5,  -64(r30)
0006d4  63438fff  loadli.w r6,  -60(r30)
0006d8  e3039fff  loadli.w r7,  -56(r30)
0006dc  63449fff  loadli.w r8,  -52(r30)
0006e0  e304afff  loadli.w r9,  -48(r30)
0006e4  6345afff  loadli.w r10,  -44(r30)
0006e8  e305bfff  loadli.w r11,  -40(r30)
0006ec  6346bfff  loadli.w r12,  -36(r30)
0006f0  e306cfff  loadli.w r13,  -32(r30)
0006f4  6347cfff  loadli.w r14,  -28(r30)
0006f8  e307dfff  loadli.w r15,  -24(r30)
0006fc  6348dfff  loadli.w r16,  -20(r30)
000700  e308efff  loadli.w r17,  -16(r30)
000704  6349efff  loadli.w r18,  -12(r30)
000708  e309ffff  loadli.w r19,  -8(r30)
00070c  634affff  loadli.w r20,  -4(r30)
000710  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
000714  9f021000  addli r5, zero, 8
000718  7e8102e0  vmmov mr2, r5
00071c  9f022000  addli r5, zero, 16
000720  6a212336  vor.u.mh vr2{mr3}, r6, vr2
000724  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
000728  fa13b040  vextracti.f r7, 11(vr0)
00072c  6a212434  vor.u.mh vr2{mr2}, r8, vr2
000730  7e8102e0  vmmov mr2, r5
000734  9f024000  addli r5, zero, 32
000738  6aa12434  vor.u.mh vr2{mr2}, r9, vr2
00073c  7e8102e0  vmmov mr2, r5
000740  9f028000  addli r5, zero, 64
000744  fa140040  vextracti.f r9, 0(vr0)
000748  6a212534  vor.u.mh vr2{mr2}, r10, vr2
00074c  7e8102e0  vmmov mr2, r5
000750  9f020001  addli r5, zero, 128
000754  6aa12534  vor.u.mh vr2{mr2}, r11, vr2
000758  7e8102e0  vmmov mr2, r5
00075c  9f020002  addli r5, zero, 256
000760  fa151040  vextracti.f r11, 1(vr0)
000764  6a212634  vor.u.mh vr2{mr2}, r12, vr2
000768  7e8102e0  vmmov mr2, r5
00076c  9f020004  addli r5, zero, 512
000770  6aa12634  vor.u.mh vr2{mr2}, r13, vr2
000774  7e8102e0  vmmov mr2, r5
000778  9f020008  addli r5, zero, 1024
00077c  9f160000  addli r13, zero, 1
000780  6a212734  vor.u.mh vr2{mr2}, r14, vr2
000784  7e8102e0  vmmov mr2, r5
000788  9f020010  addli r5, zero, 2048
00078c  6aa12734  vor.u.mh vr2{mr2}, r15, vr2
000790  7e8102e0  vmmov mr2, r5
000794  9f020020  addli r5, zero, 4096
000798  6a212834  vor.u.mh vr2{mr2}, r16, vr2
00079c  7e8102e0  vmmov mr2, r5
0007a0  9f020040  addli r5, zero, 8192
0007a4  6aa12834  vor.u.mh vr2{mr2}, r17, vr2
0007a8  7e8102e0  vmmov mr2, r5
0007ac  ab420000  lui r5, 4
0007b0  6a212934  vor.u.mh vr2{mr2}, r18, vr2
0007b4  7e8102e0  vmmov mr2, r5
0007b8  ab820000  lui r5, 8
0007bc  6aa12934  vor.u.mh vr2{mr2}, r19, vr2
0007c0  7e8102e0  vmmov mr2, r5
0007c4  6a212a34  vor.u.mh vr2{mr2}, r20, vr2
0007c8  7e8106e0  vmmov mr2, r13
0007cc  9f061000  addli r13, zero, 8
0007d0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0007d4  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0007d8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0007dc  fa920040  vextracti.f r5, 0(vr1)
0007e0  7a93b040  vextracti.f r6, 11(vr1)
0007e4  7a941040  vextracti.f r8, 1(vr1)
0007e8  7a952040  vextracti.f r10, 2(vr1)
0007ec  8f820200  exp.f.rn r5, r5
0007f0  0f030300  exp.f.rn r6, r6
0007f4  0f040400  exp.f.rn r8, r8
0007f8  0f050500  exp.f.rn r10, r10
0007fc  8f849218  div.f.rn r9, r5, r9
000800  8f027318  div.f.rn r5, r6, r7
000804  7a933040  vextracti.f r6, 3(vr1)
000808  8f03b418  div.f.rn r7, r8, r11
00080c  7a142040  vextracti.f r8, 2(vr0)
000810  eb550fef  load.d r[12:13], -272(r30)
000814  0f030300  exp.f.rn r6, r6
000818  0f048518  div.f.rn r8, r10, r8
00081c  7a153040  vextracti.f r10, 3(vr0)
000820  6aa12434  vor.u.mh vr2{mr2}, r9, vr2
000824  fa944040  vextracti.f r9, 4(vr1)
000828  7e8106e0  vmmov mr2, r13
00082c  9f062000  addli r13, zero, 16
000830  8f840400  exp.f.rn r9, r9
000834  0f03a318  div.f.rn r6, r6, r10
000838  7a154040  vextracti.f r10, 4(vr0)
00083c  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
000840  fa935040  vextracti.f r7, 5(vr1)
000844  8f830300  exp.f.rn r7, r7
000848  6a212430  vor.u.mh vr2{mr0}, r8, vr2
00084c  7a946040  vextracti.f r8, 6(vr1)
000850  8f84a418  div.f.rn r9, r9, r10
000854  7a155040  vextracti.f r10, 5(vr0)
000858  0f040400  exp.f.rn r8, r8
00085c  6a212334  vor.u.mh vr2{mr2}, r6, vr2
000860  7a937040  vextracti.f r6, 7(vr1)
000864  7e8106e0  vmmov mr2, r13
000868  9f064000  addli r13, zero, 32
00086c  8f83a318  div.f.rn r7, r7, r10
000870  7a156040  vextracti.f r10, 6(vr0)
000874  0f030300  exp.f.rn r6, r6
000878  6aa12434  vor.u.mh vr2{mr2}, r9, vr2
00087c  fa948040  vextracti.f r9, 8(vr1)
000880  7e8106e0  vmmov mr2, r13
000884  9f068000  addli r13, zero, 64
000888  0f04a418  div.f.rn r8, r8, r10
00088c  7a157040  vextracti.f r10, 7(vr0)
000890  8f840400  exp.f.rn r9, r9
000894  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
000898  fa939040  vextracti.f r7, 9(vr1)
00089c  7e8106e0  vmmov mr2, r13
0008a0  9f060001  addli r13, zero, 128
0008a4  0f03a318  div.f.rn r6, r6, r10
0008a8  7a158040  vextracti.f r10, 8(vr0)
0008ac  8f830300  exp.f.rn r7, r7
0008b0  6a212434  vor.u.mh vr2{mr2}, r8, vr2
0008b4  7a94a040  vextracti.f r8, 10(vr1)
0008b8  7e8106e0  vmmov mr2, r13
0008bc  9f060002  addli r13, zero, 256
0008c0  8f84a418  div.f.rn r9, r9, r10
0008c4  7a159040  vextracti.f r10, 9(vr0)
0008c8  0f040400  exp.f.rn r8, r8
0008cc  6a212334  vor.u.mh vr2{mr2}, r6, vr2
0008d0  7a93c040  vextracti.f r6, 12(vr1)
0008d4  7e8106e0  vmmov mr2, r13
0008d8  9f060004  addli r13, zero, 512
0008dc  8f83a318  div.f.rn r7, r7, r10
0008e0  7a15a040  vextracti.f r10, 10(vr0)
0008e4  0f030300  exp.f.rn r6, r6
0008e8  6aa12434  vor.u.mh vr2{mr2}, r9, vr2
0008ec  fa94d040  vextracti.f r9, 13(vr1)
0008f0  7e8106e0  vmmov mr2, r13
0008f4  9f060008  addli r13, zero, 1024
0008f8  0f04a418  div.f.rn r8, r8, r10
0008fc  7a15c040  vextracti.f r10, 12(vr0)
000900  8f840400  exp.f.rn r9, r9
000904  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
000908  fa93e040  vextracti.f r7, 14(vr1)
00090c  7e8106e0  vmmov mr2, r13
000910  0f03a318  div.f.rn r6, r6, r10
000914  7a15d040  vextracti.f r10, 13(vr0)
000918  8f830300  exp.f.rn r7, r7
00091c  6a212434  vor.u.mh vr2{mr2}, r8, vr2
000920  0f84a418  div.f.rn r8, r9, r10
000924  1f050010  addli r10, zero, 2048
000928  fa94f040  vextracti.f r9, 15(vr1)
00092c  7e0105e0  vmmov mr2, r10
000930  1f050020  addli r10, zero, 4096
000934  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
000938  fa12e040  vextracti.f r5, 14(vr0)
00093c  8f840400  exp.f.rn r9, r9
000940  7e0105e0  vmmov mr2, r10
000944  8f825318  div.f.rn r5, r7, r5
000948  9f030040  addli r7, zero, 8192
00094c  6a212334  vor.u.mh vr2{mr2}, r6, vr2
000950  7a13f040  vextracti.f r6, 15(vr0)
000954  7e8103e0  vmmov mr2, r7
000958  ab430000  lui r7, 4
00095c  0f836418  div.f.rn r6, r9, r6
000960  6a212434  vor.u.mh vr2{mr2}, r8, vr2
000964  7e8103e0  vmmov mr2, r7
000968  eb530f01  load.d r[8:9], 16(r30)
00096c  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
000970  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
000974  ab820000  lui r5, 8
000978  7e8102e0  vmmov mr2, r5
00097c  ab0200f0  lui r5, 983040
000980  6a212334  vor.u.mh vr2{mr2}, r6, vr2
000984  1f03000f  addli r6, zero, 1920
000988  97125e00  or r5, r28, r5
00098c  13036104  setlt.u r6, r2, r6
000990  1f010101  addli r2, r2, 128
000994  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
000998  00a00000  mfence { lm }
00099c  ffb25101  s_lm2gm r5, r21, 0(r[4:5])
0009a0  00a00000  mfence { lm }
0009a4  3b7303fe  bneq r6, zero, -804
0009a8  e344effc  loadli.w r9,  -396(r30)
0009ac  e340dffc  loadli.w r1,  -404(r30)
0009b0  1f110000  addli r2, zero, 1
0009b4  e349fffc  loadli.w r19,  -388(r30)
0009b8  634afffd  loadli.w r20,  -260(r30)
0009bc  630cfffc  loadli.w r24,  -392(r30)
0009c0  9f0c8ffe  addli r25, r30, -192
0009c4  7e0101e0  vmmov mr2, r2
0009c8  8b941410  add.s r9, r9, r1
0009cc  e300effc  loadli.w r1,  -400(r30)
0009d0  bffc14fa  blt.s r9, r1, -2244
0009d4  9f0e8ffc  addli sp, r30, -448
0009d8  9f8e8e03  addli sp, sp, 448
0009dc  00a00300  mfence { lm, sm, gm }
0009e0  00100000  exit
