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
000080  ff090200  l_gm2sm r19, zero, 0(r[4:5])
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
0000dc  9f8e0efc  addli sp, sp, -512
0000e0  ab000000  lui r1, 0
0000e4  80310002  core_id r3
0000e8  1f8f8e03  addli r30, sp, 448
0000ec  80540002  load_param_i r9, 0
0000f0  1bb12100  slli r2, r3, 2
0000f4  9f800000  addli r1, r1, 0
0000f8  e3433f00  loadli.w r7,  28(r30)
0000fc  63023f00  loadli.w r4,  24(r30)
000100  63034f00  loadli.w r6,  32(r30)
000104  0b141110  add.s r8, r2, r1
000108  0b924320  mul.s r4, r7, r4
00010c  9f022440  addli r5, r8, 8208
000110  0b126220  mul.s r4, r4, r6
000114  674e5ffc  storeli.w r5, -284(r30)
000118  73e00200  stores.w zero, 0(r5)
00011c  abf20000  lui r5, 15
000120  00a00300  mfence { lm, sm, gm }
000124  9b9bf2ff  ori r23, r5, 4095
000128  abf27fff  lui r5, 1046527
00012c  9b92f2ff  ori r5, r5, 4095
000130  80a10b04  csr_set csr3, r23
000134  00d00100  sync_group
000138  e70e8ffc  storeli.w r8, -280(r30)
00013c  73605400  stores.w r5, 0(r8)
000140  00a00300  mfence { lm, sm, gm }
000144  80a10b04  csr_set csr3, r23
000148  00d00100  sync_group
00014c  67074ffc  storeli.w r4, -400(r30)
000150  cb059204  ble.s r4, r9, 2400
000154  1f021000  addli r4, zero, 8
000158  80d30002  load_param_i r7, 1
00015c  9b897100  andi r19, r3, 7
000160  2bf4ffff  lui r8, 1048575
000164  1f2b0000  addli r22, zero, 2
000168  eb528f00  load.d r[6:7], 8(r30)
00016c  9f0c8ffe  addli r25, r30, -192
000170  eea13162  vxor.u.mz vr3{mr1}, vr3, vr3
000174  46183fc2  vstore_mask16.mz vr3{mr1}, 1664(r30)
000178  0b924130  div.s r4, r3, r4
00017c  e7467ffc  storeli.w r7, -404(r30)
000180  e7473ffd  storeli.w r19, -388(r30)
000184  9b333200  slli r7, r4, 3
000188  1b32b200  slli r4, r4, 11
00018c  8b917118  sub.s r3, r3, r7
000190  9b1304fe  ori r7, r8, 4064
000194  9bb14100  slli r3, r3, 4
000198  17017100  and r2, r2, r7
00019c  b3930128  sext_int2long r[8:9], r3
0001a0  0b1a1110  add.s r20, r2, r1
0001a4  97b06303  sll.d r[2:3], r[8:9], r22
0001a8  1f0c2a40  addli r24, r20, 8208
0001ac  e74f4ffd  storeli.w r20, -260(r30)
0001b0  8ba51210  add.ul r[12:13], r[6:7], r[2:3]
0001b4  abc07fff  lui r1, 1046524
0001b8  0b113210  add.s r2, r4, r3
0001bc  e7078ffd  storeli.w r24, -392(r30)
0001c0  9b90e099  ori r1, r1, 2462
0001c4  e7062ffc  storeli.w r2, -408(r30)
0001c8  7338bfee  store.d r[12:13], -272(r30)
0001cc  67461ffc  storeli.w r1, -412(r30)
0001d0  9f100000  addli r1, zero, 1
0001d4  7e8100e0  vmmov mr2, r1
0001d8  9f200000  addli r1, zero, 2
0001dc  fe8100e0  vmmov mr3, r1
0001e0  9f400000  addli r1, zero, 4
0001e4  7e8000e0  vmmov mr0, r1
0001e8  e3004f00  loadli.w r1,  32(r30)
0001ec  63413f00  loadli.w r2,  28(r30)
0001f0  634ecffc  loadli.w r28,  -412(r30)
0001f4  1f0d0000  addli r26, zero, 0
0001f8  9f0d0000  addli r27, zero, 0
0001fc  67479ffc  storeli.w r9, -396(r30)
000200  8b901430  div.s r1, r9, r1
000204  8b902030  div.s r1, r1, r2
000208  6301dffc  loadli.w r2,  -408(r30)
00020c  9bb0e000  slli r1, r1, 14
000210  8b101110  add.s r1, r2, r1
000214  e74e1ffc  storeli.w r1, -276(r30)
000218  db080000  j 68
00021c  8b612e18  sub.f.rn r3, r28, r2
000220  00a00300  mfence { lm, sm, gm }
000224  80a10b04  csr_set csr3, r23
000228  00d00100  sync_group
00022c  6f420c00  loads.w r4, 0(r24)
000230  9f02000f  addli r5, zero, 1920
000234  1f0e0100  addli r28, r2, 0
000238  1f410000  addli r2, zero, 4
00023c  eb550fef  load.d r[12:13], -272(r30)
000240  93825d04  setlt.u r5, r27, r5
000244  9f8d0d01  addli r27, r27, 128
000248  7e0001e0  vmmov mr0, r2
00024c  8f810100  exp.f.rn r3, r3
000250  8b613d20  mul.f.rn r3, r26, r3
000254  0bed4110  add.f.rn r26, r3, r4
000258  b7a30202  beq r5, zero, 1256
00025c  e340dffd  loadli.w r1,  -276(r30)
000260  eb530f00  load.d r[8:9], 0(r30)
000264  2b0100f0  lui r2, 983040
000268  b3820d28  zext_int2long r[6:7], r27
00026c  9f048000  addli r9, zero, 64
000270  92303002  vadd.s.mz vr1{mr1}, zero, vr3
000274  8b90b011  add.s r1, r1, r27
000278  b3910028  sext_int2long r[4:5], r1
00027c  97902400  or r1, r9, r2
000280  97b16103  sll.d r[4:5], r[4:5], r22
000284  0ba13310  add.ul r[3:4], r[8:9], r[4:5]
000288  17b26203  sll.d r[5:6], r[6:7], r22
00028c  2b0300f0  lui r6, 983040
000290  ff209101  l_gm2lm r1, r25, 0(r[3:4])
000294  0ba24510  add.ul r[5:6], r[12:13], r[5:6]
000298  17936400  or r6, r9, r6
00029c  9f000fff  addli r1, r30, -128
0002a0  7f231200  l_gm2lm r6, r1, 0(r[5:6])
0002a4  00a00000  mfence { lm }
0002a8  42108fe2  vload_mask16.mz vr0{mr1}, 1856(r30)
0002ac  00a00000  mfence { lm }
0002b0  e3000fff  loadli.w r1,  -128(r30)
0002b4  63410fff  loadli.w r2,  -124(r30)
0002b8  e3011fff  loadli.w r3,  -120(r30)
0002bc  63421fff  loadli.w r4,  -116(r30)
0002c0  e3022fff  loadli.w r5,  -112(r30)
0002c4  63432fff  loadli.w r6,  -108(r30)
0002c8  e3033fff  loadli.w r7,  -104(r30)
0002cc  63443fff  loadli.w r8,  -100(r30)
0002d0  e3044fff  loadli.w r9,  -96(r30)
0002d4  63454fff  loadli.w r10,  -92(r30)
0002d8  e3055fff  loadli.w r11,  -88(r30)
0002dc  63465fff  loadli.w r12,  -84(r30)
0002e0  e3066fff  loadli.w r13,  -80(r30)
0002e4  63476fff  loadli.w r14,  -76(r30)
0002e8  e3077fff  loadli.w r15,  -72(r30)
0002ec  63487fff  loadli.w r16,  -68(r30)
0002f0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0002f4  9f001000  addli r1, zero, 8
0002f8  7e8100e0  vmmov mr2, r1
0002fc  9f002000  addli r1, zero, 16
000300  ea201136  vor.u.mh vr1{mr3}, r2, vr1
000304  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000308  ea201234  vor.u.mh vr1{mr2}, r4, vr1
00030c  7e8100e0  vmmov mr2, r1
000310  9f004000  addli r1, zero, 32
000314  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
000318  7e8100e0  vmmov mr2, r1
00031c  9f008000  addli r1, zero, 64
000320  ea201334  vor.u.mh vr1{mr2}, r6, vr1
000324  7e8100e0  vmmov mr2, r1
000328  9f000001  addli r1, zero, 128
00032c  eaa01334  vor.u.mh vr1{mr2}, r7, vr1
000330  7e8100e0  vmmov mr2, r1
000334  9f000002  addli r1, zero, 256
000338  ea201434  vor.u.mh vr1{mr2}, r8, vr1
00033c  7e8100e0  vmmov mr2, r1
000340  9f000004  addli r1, zero, 512
000344  eaa01434  vor.u.mh vr1{mr2}, r9, vr1
000348  7e8100e0  vmmov mr2, r1
00034c  9f000008  addli r1, zero, 1024
000350  ea201534  vor.u.mh vr1{mr2}, r10, vr1
000354  7e8100e0  vmmov mr2, r1
000358  9f000010  addli r1, zero, 2048
00035c  eaa01534  vor.u.mh vr1{mr2}, r11, vr1
000360  7e8100e0  vmmov mr2, r1
000364  9f000020  addli r1, zero, 4096
000368  ea201634  vor.u.mh vr1{mr2}, r12, vr1
00036c  7e8100e0  vmmov mr2, r1
000370  9f000040  addli r1, zero, 8192
000374  eaa01634  vor.u.mh vr1{mr2}, r13, vr1
000378  7e8100e0  vmmov mr2, r1
00037c  ab400000  lui r1, 4
000380  ea201734  vor.u.mh vr1{mr2}, r14, vr1
000384  7e8100e0  vmmov mr2, r1
000388  ab800000  lui r1, 8
00038c  eaa01734  vor.u.mh vr1{mr2}, r15, vr1
000390  7e8100e0  vmmov mr2, r1
000394  ea201834  vor.u.mh vr1{mr2}, r16, vr1
000398  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00039c  7a110040  vextracti.f r2, 0(vr0)
0003a0  fa111040  vextracti.f r3, 1(vr0)
0003a4  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
0003a8  7e8001c0  vmmov mr0, mr3
0003ac  57580100  jal 2752
0003b0  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0003b4  fa112040  vextracti.f r3, 2(vr0)
0003b8  57580100  jal 2752
0003bc  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0003c0  fa113040  vextracti.f r3, 3(vr0)
0003c4  57580100  jal 2752
0003c8  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0003cc  fa114040  vextracti.f r3, 4(vr0)
0003d0  57580100  jal 2752
0003d4  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0003d8  fa115040  vextracti.f r3, 5(vr0)
0003dc  57580100  jal 2752
0003e0  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0003e4  fa116040  vextracti.f r3, 6(vr0)
0003e8  57580100  jal 2752
0003ec  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0003f0  fa117040  vextracti.f r3, 7(vr0)
0003f4  57580100  jal 2752
0003f8  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
0003fc  fa118040  vextracti.f r3, 8(vr0)
000400  57580100  jal 2752
000404  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000408  fa119040  vextracti.f r3, 9(vr0)
00040c  57580100  jal 2752
000410  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000414  fa11a040  vextracti.f r3, 10(vr0)
000418  57580100  jal 2752
00041c  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000420  fa11b040  vextracti.f r3, 11(vr0)
000424  57580100  jal 2752
000428  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
00042c  fa11c040  vextracti.f r3, 12(vr0)
000430  57580100  jal 2752
000434  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000438  fa11d040  vextracti.f r3, 13(vr0)
00043c  57580100  jal 2752
000440  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000444  fa11e040  vextracti.f r3, 14(vr0)
000448  57580100  jal 2752
00044c  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000450  fa11f040  vextracti.f r3, 15(vr0)
000454  57580100  jal 2752
000458  e300dffd  loadli.w r1,  -280(r30)
00045c  73e02000  stores.w r2, 0(r1)
000460  00a00300  mfence { lm, sm, gm }
000464  80a10b04  csr_set csr3, r23
000468  00d00100  sync_group
00046c  3bc20900  bneq r19, zero, 144
000470  e340fffd  loadli.w r1,  -260(r30)
000474  6f410a00  loads.w r2, 0(r20)
000478  ef414a00  loads.w r3, 4(r20)
00047c  9f890b00  addli r19, r23, 0
000480  6fca8000  loads.w r20, 8(r1)
000484  e340fffd  loadli.w r1,  -260(r30)
000488  efcac000  loads.w r21, 12(r1)
00048c  e340fffd  loadli.w r1,  -260(r30)
000490  6fcb0001  loads.w r22, 16(r1)
000494  e340fffd  loadli.w r1,  -260(r30)
000498  efcb4001  loads.w r23, 20(r1)
00049c  e340fffd  loadli.w r1,  -260(r30)
0004a0  6fcc8001  loads.w r24, 24(r1)
0004a4  e340fffd  loadli.w r1,  -260(r30)
0004a8  efccc001  loads.w r25, 28(r1)
0004ac  57580100  jal 2752
0004b0  9f010a00  addli r3, r20, 0
0004b4  634afffd  loadli.w r20,  -260(r30)
0004b8  57580100  jal 2752
0004bc  9f810a00  addli r3, r21, 0
0004c0  57580100  jal 2752
0004c4  9f010b00  addli r3, r22, 0
0004c8  1f2b0000  addli r22, zero, 2
0004cc  57580100  jal 2752
0004d0  9f810b00  addli r3, r23, 0
0004d4  9f8b0900  addli r23, r19, 0
0004d8  e349fffc  loadli.w r19,  -388(r30)
0004dc  57580100  jal 2752
0004e0  9f010c00  addli r3, r24, 0
0004e4  630cfffc  loadli.w r24,  -392(r30)
0004e8  57580100  jal 2752
0004ec  9f810c00  addli r3, r25, 0
0004f0  9f0c8ffe  addli r25, r30, -192
0004f4  57580100  jal 2752
0004f8  73602a00  stores.w r2, 0(r20)
0004fc  00a00300  mfence { lm, sm, gm }
000500  80a10b04  csr_set csr3, r23
000504  00d00100  sync_group
000508  ef410a00  loads.w r3, 0(r20)
00050c  1f010e00  addli r2, r28, 0
000510  57580100  jal 2752
000514  42110fc3  vload_mask16.mz vr2{mr1}, 1664(r30)
000518  8b600158  neg.f r1, r2
00051c  42100fe2  vload_mask16.mz vr0{mr1}, 1792(r30)
000520  92900002  vadd.f.mz.rn vr1{mr1}, r1, vr0
000524  fa910040  vextracti.f r3, 0(vr1)
000528  7a921040  vextracti.f r4, 1(vr1)
00052c  1f130000  addli r6, zero, 1
000530  fa922040  vextracti.f r5, 2(vr1)
000534  7e0103e0  vmmov mr2, r6
000538  1f430000  addli r6, zero, 4
00053c  8f810100  exp.f.rn r3, r3
000540  0f020200  exp.f.rn r4, r4
000544  12302002  vadd.s.mz vr0{mr1}, zero, vr2
000548  92312002  vadd.s.mz vr3{mr1}, zero, vr2
00054c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000550  8f810200  exp.f.rn r3, r5
000554  fa923040  vextracti.f r5, 3(vr1)
000558  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00055c  0f820200  exp.f.rn r4, r5
000560  fa924040  vextracti.f r5, 4(vr1)
000564  fe0100c0  vmmov mr3, mr0
000568  7e0003e0  vmmov mr0, r6
00056c  1f031000  addli r6, zero, 8
000570  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000574  8f810200  exp.f.rn r3, r5
000578  fa925040  vextracti.f r5, 5(vr1)
00057c  7e0003e0  vmmov mr0, r6
000580  1f032000  addli r6, zero, 16
000584  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000588  0f820200  exp.f.rn r4, r5
00058c  fa926040  vextracti.f r5, 6(vr1)
000590  7e0003e0  vmmov mr0, r6
000594  1f034000  addli r6, zero, 32
000598  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00059c  8f810200  exp.f.rn r3, r5
0005a0  fa927040  vextracti.f r5, 7(vr1)
0005a4  7e0003e0  vmmov mr0, r6
0005a8  1f038000  addli r6, zero, 64
0005ac  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0005b0  0f820200  exp.f.rn r4, r5
0005b4  fa928040  vextracti.f r5, 8(vr1)
0005b8  7e0003e0  vmmov mr0, r6
0005bc  1f030001  addli r6, zero, 128
0005c0  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0005c4  8f810200  exp.f.rn r3, r5
0005c8  fa929040  vextracti.f r5, 9(vr1)
0005cc  7e0003e0  vmmov mr0, r6
0005d0  1f030002  addli r6, zero, 256
0005d4  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0005d8  0f820200  exp.f.rn r4, r5
0005dc  fa92a040  vextracti.f r5, 10(vr1)
0005e0  7e0003e0  vmmov mr0, r6
0005e4  1f030004  addli r6, zero, 512
0005e8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0005ec  8f810200  exp.f.rn r3, r5
0005f0  fa92b040  vextracti.f r5, 11(vr1)
0005f4  7e0003e0  vmmov mr0, r6
0005f8  1f030008  addli r6, zero, 1024
0005fc  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000600  0f820200  exp.f.rn r4, r5
000604  fa92c040  vextracti.f r5, 12(vr1)
000608  7e0003e0  vmmov mr0, r6
00060c  1f030010  addli r6, zero, 2048
000610  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000614  8f810200  exp.f.rn r3, r5
000618  fa92d040  vextracti.f r5, 13(vr1)
00061c  7e0003e0  vmmov mr0, r6
000620  1f030020  addli r6, zero, 4096
000624  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000628  0f820200  exp.f.rn r4, r5
00062c  fa92e040  vextracti.f r5, 14(vr1)
000630  7e0003e0  vmmov mr0, r6
000634  1f030040  addli r6, zero, 8192
000638  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00063c  8f810200  exp.f.rn r3, r5
000640  fa92f040  vextracti.f r5, 15(vr1)
000644  7e0003e0  vmmov mr0, r6
000648  6a200230  vor.u.mh vr0{mr0}, r4, vr0
00064c  0f820200  exp.f.rn r4, r5
000650  ab420000  lui r5, 4
000654  7e8002e0  vmmov mr0, r5
000658  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00065c  ab810000  lui r3, 8
000660  7e8001e0  vmmov mr0, r3
000664  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000668  fa110040  vextracti.f r3, 0(vr0)
00066c  7a121040  vextracti.f r4, 1(vr0)
000670  8be14110  add.f.rn r3, r3, r4
000674  7a122040  vextracti.f r4, 2(vr0)
000678  8b613210  add.f.rn r3, r4, r3
00067c  7a123040  vextracti.f r4, 3(vr0)
000680  8b613210  add.f.rn r3, r4, r3
000684  7a124040  vextracti.f r4, 4(vr0)
000688  8b613210  add.f.rn r3, r4, r3
00068c  7a125040  vextracti.f r4, 5(vr0)
000690  8b613210  add.f.rn r3, r4, r3
000694  7a126040  vextracti.f r4, 6(vr0)
000698  8b613210  add.f.rn r3, r4, r3
00069c  7a127040  vextracti.f r4, 7(vr0)
0006a0  8b613210  add.f.rn r3, r4, r3
0006a4  7a128040  vextracti.f r4, 8(vr0)
0006a8  8b613210  add.f.rn r3, r4, r3
0006ac  7a129040  vextracti.f r4, 9(vr0)
0006b0  8b613210  add.f.rn r3, r4, r3
0006b4  7a12a040  vextracti.f r4, 10(vr0)
0006b8  8b613210  add.f.rn r3, r4, r3
0006bc  7a12b040  vextracti.f r4, 11(vr0)
0006c0  8b613210  add.f.rn r3, r4, r3
0006c4  7a12c040  vextracti.f r4, 12(vr0)
0006c8  8b613210  add.f.rn r3, r4, r3
0006cc  7a12d040  vextracti.f r4, 13(vr0)
0006d0  8b613210  add.f.rn r3, r4, r3
0006d4  7a12e040  vextracti.f r4, 14(vr0)
0006d8  8b613210  add.f.rn r3, r4, r3
0006dc  7a12f040  vextracti.f r4, 15(vr0)
0006e0  8b613210  add.f.rn r3, r4, r3
0006e4  6342cffd  loadli.w r4,  -284(r30)
0006e8  73603200  stores.w r3, 0(r4)
0006ec  00a00300  mfence { lm, sm, gm }
0006f0  80a10b04  csr_set csr3, r23
0006f4  00d00100  sync_group
0006f8  bb9c09fc  bneq r19, zero, -1244
0006fc  ef410c00  loads.w r3, 0(r24)
000700  6f424c00  loads.w r4, 4(r24)
000704  ef428c00  loads.w r5, 8(r24)
000708  8be14110  add.f.rn r3, r3, r4
00070c  6f42cc00  loads.w r4, 12(r24)
000710  8be15110  add.f.rn r3, r3, r5
000714  ef420c01  loads.w r5, 16(r24)
000718  8be14110  add.f.rn r3, r3, r4
00071c  6f424c01  loads.w r4, 20(r24)
000720  8be15110  add.f.rn r3, r3, r5
000724  ef428c01  loads.w r5, 24(r24)
000728  8be14110  add.f.rn r3, r3, r4
00072c  6f42cc01  loads.w r4, 28(r24)
000730  8be15110  add.f.rn r3, r3, r5
000734  8be14110  add.f.rn r3, r3, r4
000738  73603c00  stores.w r3, 0(r24)
00073c  5b5cffff  j -1312
000740  6a103d22  vor.f.mz vr0{mr1}, r26, vr3
000744  6b5d0f00  load.d r[27:28], 0(r30)
000748  e34cdffd  loadli.w r25,  -276(r30)
00074c  1f010000  addli r2, zero, 0
000750  9f0a8ffe  addli r21, r30, -192
000754  1f0e8000  addli r28, zero, 64
000758  1f0c8fff  addli r24, r30, -64
00075c  8b912c10  add.s r3, r25, r2
000760  33030128  zext_int2long r[7:8], r2
000764  ab0200f0  lui r5, 983040
000768  2b0500f0  lui r10, 983040
00076c  12313002  vadd.s.mz vr2{mr1}, zero, vr3
000770  1f100000  addli zero, zero, 1
000774  b3910128  sext_int2long r[4:5], r3
000778  17336303  sll.d r[7:8], r[7:8], r22
00077c  97125e00  or r5, r28, r5
000780  1715ae00  or r10, r28, r10
000784  7e0100e0  vmmov mr2, zero
000788  17200000  xor zero, zero, zero
00078c  97b16103  sll.d r[4:5], r[4:5], r22
000790  0ba36510  add.ul r[7:8], r[12:13], r[7:8]
000794  0b243d10  add.ul r[9:10], r[27:28], r[4:5]
000798  ff225401  l_gm2lm r5, r21, 0(r[9:10])
00079c  7f258301  l_gm2lm r10, r24, 0(r[7:8])
0007a0  00a00000  mfence { lm }
0007a4  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
0007a8  00a00000  mfence { lm }
0007ac  e3028fff  loadli.w r5,  -64(r30)
0007b0  63438fff  loadli.w r6,  -60(r30)
0007b4  e3039fff  loadli.w r7,  -56(r30)
0007b8  63449fff  loadli.w r8,  -52(r30)
0007bc  e304afff  loadli.w r9,  -48(r30)
0007c0  6345afff  loadli.w r10,  -44(r30)
0007c4  e305bfff  loadli.w r11,  -40(r30)
0007c8  6346bfff  loadli.w r12,  -36(r30)
0007cc  e306cfff  loadli.w r13,  -32(r30)
0007d0  6347cfff  loadli.w r14,  -28(r30)
0007d4  e307dfff  loadli.w r15,  -24(r30)
0007d8  6348dfff  loadli.w r16,  -20(r30)
0007dc  e308efff  loadli.w r17,  -16(r30)
0007e0  6349efff  loadli.w r18,  -12(r30)
0007e4  e309ffff  loadli.w r19,  -8(r30)
0007e8  634affff  loadli.w r20,  -4(r30)
0007ec  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
0007f0  9f021000  addli r5, zero, 8
0007f4  7e8102e0  vmmov mr2, r5
0007f8  9f022000  addli r5, zero, 16
0007fc  6a212336  vor.u.mh vr2{mr3}, r6, vr2
000800  6aa12330  vor.u.mh vr2{mr0}, r7, vr2
000804  fa13b040  vextracti.f r7, 11(vr0)
000808  6a212434  vor.u.mh vr2{mr2}, r8, vr2
00080c  7e8102e0  vmmov mr2, r5
000810  9f024000  addli r5, zero, 32
000814  6aa12434  vor.u.mh vr2{mr2}, r9, vr2
000818  7e8102e0  vmmov mr2, r5
00081c  9f028000  addli r5, zero, 64
000820  fa140040  vextracti.f r9, 0(vr0)
000824  6a212534  vor.u.mh vr2{mr2}, r10, vr2
000828  7e8102e0  vmmov mr2, r5
00082c  9f020001  addli r5, zero, 128
000830  6aa12534  vor.u.mh vr2{mr2}, r11, vr2
000834  7e8102e0  vmmov mr2, r5
000838  9f020002  addli r5, zero, 256
00083c  fa151040  vextracti.f r11, 1(vr0)
000840  6a212634  vor.u.mh vr2{mr2}, r12, vr2
000844  7e8102e0  vmmov mr2, r5
000848  9f020004  addli r5, zero, 512
00084c  6aa12634  vor.u.mh vr2{mr2}, r13, vr2
000850  7e8102e0  vmmov mr2, r5
000854  9f020008  addli r5, zero, 1024
000858  9f160000  addli r13, zero, 1
00085c  6a212734  vor.u.mh vr2{mr2}, r14, vr2
000860  7e8102e0  vmmov mr2, r5
000864  9f020010  addli r5, zero, 2048
000868  6aa12734  vor.u.mh vr2{mr2}, r15, vr2
00086c  7e8102e0  vmmov mr2, r5
000870  9f020020  addli r5, zero, 4096
000874  6a212834  vor.u.mh vr2{mr2}, r16, vr2
000878  7e8102e0  vmmov mr2, r5
00087c  9f020040  addli r5, zero, 8192
000880  6aa12834  vor.u.mh vr2{mr2}, r17, vr2
000884  7e8102e0  vmmov mr2, r5
000888  ab420000  lui r5, 4
00088c  6a212934  vor.u.mh vr2{mr2}, r18, vr2
000890  7e8102e0  vmmov mr2, r5
000894  ab820000  lui r5, 8
000898  6aa12934  vor.u.mh vr2{mr2}, r19, vr2
00089c  7e8102e0  vmmov mr2, r5
0008a0  6a212a34  vor.u.mh vr2{mr2}, r20, vr2
0008a4  7e8106e0  vmmov mr2, r13
0008a8  9f061000  addli r13, zero, 8
0008ac  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0008b0  12313002  vadd.s.mz vr2{mr1}, zero, vr3
0008b4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0008b8  fa920040  vextracti.f r5, 0(vr1)
0008bc  7a93b040  vextracti.f r6, 11(vr1)
0008c0  7a941040  vextracti.f r8, 1(vr1)
0008c4  7a952040  vextracti.f r10, 2(vr1)
0008c8  8f820200  exp.f.rn r5, r5
0008cc  0f030300  exp.f.rn r6, r6
0008d0  0f040400  exp.f.rn r8, r8
0008d4  0f050500  exp.f.rn r10, r10
0008d8  8f849218  div.f.rn r9, r5, r9
0008dc  8f027318  div.f.rn r5, r6, r7
0008e0  7a933040  vextracti.f r6, 3(vr1)
0008e4  8f03b418  div.f.rn r7, r8, r11
0008e8  7a142040  vextracti.f r8, 2(vr0)
0008ec  eb550fef  load.d r[12:13], -272(r30)
0008f0  0f030300  exp.f.rn r6, r6
0008f4  0f048518  div.f.rn r8, r10, r8
0008f8  7a153040  vextracti.f r10, 3(vr0)
0008fc  6aa12434  vor.u.mh vr2{mr2}, r9, vr2
000900  fa944040  vextracti.f r9, 4(vr1)
000904  7e8106e0  vmmov mr2, r13
000908  9f062000  addli r13, zero, 16
00090c  8f840400  exp.f.rn r9, r9
000910  0f03a318  div.f.rn r6, r6, r10
000914  7a154040  vextracti.f r10, 4(vr0)
000918  6aa12336  vor.u.mh vr2{mr3}, r7, vr2
00091c  fa935040  vextracti.f r7, 5(vr1)
000920  8f830300  exp.f.rn r7, r7
000924  6a212430  vor.u.mh vr2{mr0}, r8, vr2
000928  7a946040  vextracti.f r8, 6(vr1)
00092c  8f84a418  div.f.rn r9, r9, r10
000930  7a155040  vextracti.f r10, 5(vr0)
000934  0f040400  exp.f.rn r8, r8
000938  6a212334  vor.u.mh vr2{mr2}, r6, vr2
00093c  7a937040  vextracti.f r6, 7(vr1)
000940  7e8106e0  vmmov mr2, r13
000944  9f064000  addli r13, zero, 32
000948  8f83a318  div.f.rn r7, r7, r10
00094c  7a156040  vextracti.f r10, 6(vr0)
000950  0f030300  exp.f.rn r6, r6
000954  6aa12434  vor.u.mh vr2{mr2}, r9, vr2
000958  fa948040  vextracti.f r9, 8(vr1)
00095c  7e8106e0  vmmov mr2, r13
000960  9f068000  addli r13, zero, 64
000964  0f04a418  div.f.rn r8, r8, r10
000968  7a157040  vextracti.f r10, 7(vr0)
00096c  8f840400  exp.f.rn r9, r9
000970  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
000974  fa939040  vextracti.f r7, 9(vr1)
000978  7e8106e0  vmmov mr2, r13
00097c  9f060001  addli r13, zero, 128
000980  0f03a318  div.f.rn r6, r6, r10
000984  7a158040  vextracti.f r10, 8(vr0)
000988  8f830300  exp.f.rn r7, r7
00098c  6a212434  vor.u.mh vr2{mr2}, r8, vr2
000990  7a94a040  vextracti.f r8, 10(vr1)
000994  7e8106e0  vmmov mr2, r13
000998  9f060002  addli r13, zero, 256
00099c  8f84a418  div.f.rn r9, r9, r10
0009a0  7a159040  vextracti.f r10, 9(vr0)
0009a4  0f040400  exp.f.rn r8, r8
0009a8  6a212334  vor.u.mh vr2{mr2}, r6, vr2
0009ac  7a93c040  vextracti.f r6, 12(vr1)
0009b0  7e8106e0  vmmov mr2, r13
0009b4  9f060004  addli r13, zero, 512
0009b8  8f83a318  div.f.rn r7, r7, r10
0009bc  7a15a040  vextracti.f r10, 10(vr0)
0009c0  0f030300  exp.f.rn r6, r6
0009c4  6aa12434  vor.u.mh vr2{mr2}, r9, vr2
0009c8  fa94d040  vextracti.f r9, 13(vr1)
0009cc  7e8106e0  vmmov mr2, r13
0009d0  9f060008  addli r13, zero, 1024
0009d4  0f04a418  div.f.rn r8, r8, r10
0009d8  7a15c040  vextracti.f r10, 12(vr0)
0009dc  8f840400  exp.f.rn r9, r9
0009e0  6aa12334  vor.u.mh vr2{mr2}, r7, vr2
0009e4  fa93e040  vextracti.f r7, 14(vr1)
0009e8  7e8106e0  vmmov mr2, r13
0009ec  0f03a318  div.f.rn r6, r6, r10
0009f0  7a15d040  vextracti.f r10, 13(vr0)
0009f4  8f830300  exp.f.rn r7, r7
0009f8  6a212434  vor.u.mh vr2{mr2}, r8, vr2
0009fc  0f84a418  div.f.rn r8, r9, r10
000a00  1f050010  addli r10, zero, 2048
000a04  fa94f040  vextracti.f r9, 15(vr1)
000a08  7e0105e0  vmmov mr2, r10
000a0c  1f050020  addli r10, zero, 4096
000a10  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
000a14  fa12e040  vextracti.f r5, 14(vr0)
000a18  8f840400  exp.f.rn r9, r9
000a1c  7e0105e0  vmmov mr2, r10
000a20  8f825318  div.f.rn r5, r7, r5
000a24  9f030040  addli r7, zero, 8192
000a28  6a212334  vor.u.mh vr2{mr2}, r6, vr2
000a2c  7a13f040  vextracti.f r6, 15(vr0)
000a30  7e8103e0  vmmov mr2, r7
000a34  ab430000  lui r7, 4
000a38  0f836418  div.f.rn r6, r9, r6
000a3c  6a212434  vor.u.mh vr2{mr2}, r8, vr2
000a40  7e8103e0  vmmov mr2, r7
000a44  eb530f01  load.d r[8:9], 16(r30)
000a48  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
000a4c  6aa12234  vor.u.mh vr2{mr2}, r5, vr2
000a50  ab820000  lui r5, 8
000a54  7e8102e0  vmmov mr2, r5
000a58  ab0200f0  lui r5, 983040
000a5c  6a212334  vor.u.mh vr2{mr2}, r6, vr2
000a60  1f03000f  addli r6, zero, 1920
000a64  97125e00  or r5, r28, r5
000a68  13036104  setlt.u r6, r2, r6
000a6c  1f010101  addli r2, r2, 128
000a70  46142fe2  vstore_mask16.mz vr2{mr1}, 1856(r30)
000a74  00a00000  mfence { lm }
000a78  ffb25101  s_lm2gm r5, r21, 0(r[4:5])
000a7c  00a00000  mfence { lm }
000a80  3b7303fe  bneq r6, zero, -804
000a84  e344effc  loadli.w r9,  -396(r30)
000a88  e340dffc  loadli.w r1,  -404(r30)
000a8c  1f110000  addli r2, zero, 1
000a90  e349fffc  loadli.w r19,  -388(r30)
000a94  634afffd  loadli.w r20,  -260(r30)
000a98  630cfffc  loadli.w r24,  -392(r30)
000a9c  9f0c8ffe  addli r25, r30, -192
000aa0  7e0101e0  vmmov mr2, r2
000aa4  8b941410  add.s r9, r9, r1
000aa8  e300effc  loadli.w r1,  -400(r30)
000aac  bffc14fa  blt.s r9, r1, -2244
000ab0  9f0e8ffc  addli sp, r30, -448
000ab4  9f8e8e03  addli sp, sp, 448
000ab8  00a00300  mfence { lm, sm, gm }
000abc  00100000  exit
000ac0  9f8efeff  addli sp, sp, -8
000ac4  9f000100  addli r1, r2, 0
000ac8  2bf1ff7f  lui r2, 524287
000acc  ab02807f  lui r5, 522240
000ad0  67c0ee01  storeli.w r30, 4(sp)
000ad4  6780fe01  storeli.w r31, 0(sp)
000ad8  1f8f1e00  addli r30, sp, 8
000adc  1b12f1ff  ori r4, r2, 4095
000ae0  17814000  and r2, r1, r4
000ae4  13832204  setlt.u r6, r5, r2
000ae8  1f810100  addli r2, r3, 0
000aec  bb210300  bneq r6, zero, 104
000af0  97014100  and r3, r2, r4
000af4  93813204  setlt.u r3, r5, r3
000af8  3be10100  bneq r3, zero, 88
000afc  abf1ffff  lui r3, 1048575
000b00  17221100  xor r4, r2, r1
000b04  9b91f1ff  ori r3, r3, 4095
000b08  3fa04100  blt.s r3, r4, 8
000b0c  5b0b0000  j 88
000b10  9b319100  slli r3, r2, 9
000b14  9bb29000  slli r5, r1, 9
000b18  1b427101  srli r4, r2, 23
000b1c  1bc37001  srli r6, r1, 23
000b20  93e32004  setlt.f r7, r1, r2
000b24  93810100  seteq r3, r3, zero
000b28  93820200  seteq r5, r5, zero
000b2c  1b02f20f  andi r4, r4, 255
000b30  1b03f30f  andi r6, r6, 255
000b34  1b72f20f  setlti r4, r4, 255
000b38  1b73f30f  setlti r6, r6, 255
000b3c  97113200  or r3, r4, r3
000b40  17125300  or r4, r6, r5
000b44  97013200  and r3, r4, r3
000b48  97813300  and r3, r7, r3
000b4c  3ba00100  bneq r3, zero, 8
000b50  1f810000  addli r2, r1, 0
000b54  e38f0e00  loadli.w r31,  0(sp)
000b58  63cf0e00  loadli.w r30,  4(sp)
000b5c  9f8e1e00  addli sp, sp, 8
000b60  5f800f00  jr r31, 0
000b64  bfcf00fe  blt.s r1, zero, -16
000b68  5bfdffff  j -24
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
000d90  00100000  exit
000d94  00100000  exit
000d98  00100000  exit
000d9c  00100000  exit
000da0  00100000  exit
000da4  00100000  exit
000da8  00100000  exit
