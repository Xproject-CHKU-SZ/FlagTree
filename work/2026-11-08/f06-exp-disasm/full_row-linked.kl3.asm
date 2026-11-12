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
0000dc  9f8e8eed  addli sp, sp, -2368
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f0e12  addli r30, sp, 2304
0000ec  00550002  load_param_i r10, 0
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  63445f00  loadli.w r8,  44(r30)
0000fc  63025f00  loadli.w r4,  40(r30)
000100  63036f00  loadli.w r6,  48(r30)
000104  8b932110  add.s r7, r3, r2
000108  0b124420  mul.s r4, r8, r4
00010c  9f822320  addli r5, r7, 4112
000110  0b126220  mul.s r4, r4, r6
000114  e70a5fee  storeli.w r5, -2136(r30)
000118  73e00200  stores.w zero, 0(r5)
00011c  abf20000  lui r5, 15
000120  00a00300  mfence { lm, sm, gm }
000124  9b94f2ff  ori r9, r5, 4095
000128  abf27fff  lui r5, 1046527
00012c  9b92f2ff  ori r5, r5, 4095
000130  80a10404  csr_set csr3, r9
000134  00d00100  sync_group
000138  e74a7fee  storeli.w r7, -2132(r30)
00013c  73e05300  stores.w r5, 0(r7)
000140  00a00300  mfence { lm, sm, gm }
000144  80a10404  csr_set csr3, r9
000148  00d00100  sync_group
00014c  e7034fee  storeli.w r4, -2248(r30)
000150  4b64a212  ble.s r4, r10, 9496
000154  1f022000  addli r4, zero, 16
000158  80d30002  load_param_i r7, 1
00015c  9f250000  addli r11, zero, 2
000160  eb528f00  load.d r[6:7], 8(r30)
000164  6e25a562  vxor.u.mz vr10{mr1}, vr10, vr10
000168  670c9fee  storeli.w r9, -2112(r30)
00016c  0b924030  div.s r4, r1, r4
000170  67437fee  storeli.w r7, -2252(r30)
000174  abf3ffff  lui r7, 1048575
000178  9b9303fc  ori r7, r7, 4032
00017c  97817100  and r3, r3, r7
000180  1b344200  slli r8, r4, 4
000184  1b32b200  slli r4, r4, 11
000188  0b948018  sub.s r8, r1, r8
00018c  9b80f000  andi r1, r1, 15
000190  9b337400  slli r7, r8, 7
000194  0b942110  add.s r8, r3, r2
000198  e70b1fee  storeli.w r1, -2120(r30)
00019c  33910328  sext_int2long r[3:4], r7
0001a0  0b924310  add.s r4, r7, r4
0001a4  9f002420  addli r1, r8, 4112
0001a8  9f030004  addli r7, zero, 512
0001ac  e74b8fee  storeli.w r8, -2116(r30)
0001b0  1731b102  sll.d r[3:4], r[3:4], r11
0001b4  67034fee  storeli.w r4, -2256(r30)
0001b8  674b1fee  storeli.w r1, -2124(r30)
0001bc  9f008fee  addli r1, r30, -2240
0001c0  1f024fef  addli r4, r30, -2144
0001c4  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0001c8  1f030ff8  addli r6, r30, -1024
0001cc  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0001d0  73302200  store.d r[3:4], 0(r4)
0001d4  db030000  j 28
0001d8  63457fee  loadli.w r10,  -2244(r30)
0001dc  e3406fee  loadli.w r1,  -2252(r30)
0001e0  0b151510  add.s r10, r10, r1
0001e4  e3007fee  loadli.w r1,  -2248(r30)
0001e8  3f201500  blt.s r10, r1, 8
0001ec  db8f0400  j 9340
0001f0  e3006f00  loadli.w r1,  48(r30)
0001f4  63415f00  loadli.w r2,  44(r30)
0001f8  e743afee  storeli.w r10, -2244(r30)
0001fc  9f110000  addli r3, zero, 1
000200  8b101530  div.s r1, r10, r1
000204  8b902030  div.s r1, r1, r2
000208  63016fee  loadli.w r2,  -2256(r30)
00020c  9bb0e000  slli r1, r1, 14
000210  8b101110  add.s r1, r2, r1
000214  1f010004  addli r2, zero, 512
000218  7e0101e0  vmmov mr2, r2
00021c  1f410000  addli r2, zero, 4
000220  670b1fee  storeli.w r1, -2128(r30)
000224  9f000000  addli r1, zero, 0
000228  00a00000  mfence { lm }
00022c  fe0101e0  vmmov mr3, r2
000230  5b490100  j 2632
000234  00a00300  mfence { lm, sm, gm }
000238  80a10404  csr_set csr3, r9
00023c  00d00100  sync_group
000240  e3406fef  loadli.w r1,  -2124(r30)
000244  7a110140  vextracti.f r2, 0(vr2)
000248  fa111140  vextracti.f r3, 1(vr2)
00024c  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
000250  7a122140  vextracti.f r4, 2(vr2)
000254  9f420000  addli r5, zero, 4
000258  1f030040  addli r6, zero, 8192
00025c  9f030004  addli r7, zero, 512
000260  efc00000  loads.w r1, 0(r1)
000264  0f011118  div.f.rn r2, r2, r1
000268  8f811118  div.f.rn r3, r3, r1
00026c  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000270  0f011218  div.f.rn r2, r4, r1
000274  7a123140  vextracti.f r4, 3(vr2)
000278  7e8002e0  vmmov mr0, r5
00027c  9f021000  addli r5, zero, 8
000280  6aa48134  vor.u.mh vr8{mr2}, r3, vr8
000284  8f011218  div.f.rn r3, r4, r1
000288  7a124140  vextracti.f r4, 4(vr2)
00028c  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000290  0f011218  div.f.rn r2, r4, r1
000294  7a125140  vextracti.f r4, 5(vr2)
000298  7e8002e0  vmmov mr0, r5
00029c  9f022000  addli r5, zero, 16
0002a0  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
0002a4  8f011218  div.f.rn r3, r4, r1
0002a8  7a126140  vextracti.f r4, 6(vr2)
0002ac  7e8002e0  vmmov mr0, r5
0002b0  9f024000  addli r5, zero, 32
0002b4  fe8102e0  vmmov mr3, r5
0002b8  9f028000  addli r5, zero, 64
0002bc  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0002c0  0f011218  div.f.rn r2, r4, r1
0002c4  7a127140  vextracti.f r4, 7(vr2)
0002c8  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
0002cc  8f011218  div.f.rn r3, r4, r1
0002d0  7a128140  vextracti.f r4, 8(vr2)
0002d4  fe8102e0  vmmov mr3, r5
0002d8  9f020001  addli r5, zero, 128
0002dc  6a248136  vor.u.mh vr8{mr3}, r2, vr8
0002e0  0f011218  div.f.rn r2, r4, r1
0002e4  7a129140  vextracti.f r4, 9(vr2)
0002e8  fe8102e0  vmmov mr3, r5
0002ec  9f020002  addli r5, zero, 256
0002f0  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
0002f4  8f011218  div.f.rn r3, r4, r1
0002f8  7a12a140  vextracti.f r4, 10(vr2)
0002fc  fe8102e0  vmmov mr3, r5
000300  9f020004  addli r5, zero, 512
000304  7e8002e0  vmmov mr0, r5
000308  9f020008  addli r5, zero, 1024
00030c  6a248136  vor.u.mh vr8{mr3}, r2, vr8
000310  0f011218  div.f.rn r2, r4, r1
000314  7a12b140  vextracti.f r4, 11(vr2)
000318  fe8102e0  vmmov mr3, r5
00031c  9f020010  addli r5, zero, 2048
000320  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
000324  8f011218  div.f.rn r3, r4, r1
000328  7a12c140  vextracti.f r4, 12(vr2)
00032c  6a248136  vor.u.mh vr8{mr3}, r2, vr8
000330  0f011218  div.f.rn r2, r4, r1
000334  7a12d140  vextracti.f r4, 13(vr2)
000338  fe8102e0  vmmov mr3, r5
00033c  9f020020  addli r5, zero, 4096
000340  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
000344  8f011218  div.f.rn r3, r4, r1
000348  7a12e140  vextracti.f r4, 14(vr2)
00034c  fe8102e0  vmmov mr3, r5
000350  fa120040  vextracti.f r5, 0(vr0)
000354  6a248136  vor.u.mh vr8{mr3}, r2, vr8
000358  0f011218  div.f.rn r2, r4, r1
00035c  7a12f140  vextracti.f r4, 15(vr2)
000360  fe0103e0  vmmov mr3, r6
000364  2b430000  lui r6, 4
000368  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
00036c  7e0003e0  vmmov mr0, r6
000370  2b830000  lui r6, 8
000374  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
000378  8f011218  div.f.rn r3, r4, r1
00037c  0f821218  div.f.rn r4, r5, r1
000380  fa121040  vextracti.f r5, 1(vr0)
000384  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000388  fe0101c0  vmmov mr3, mr2
00038c  7e0103e0  vmmov mr2, r6
000390  0f811218  div.f.rn r2, r5, r1
000394  fa122040  vextracti.f r5, 2(vr0)
000398  1f030040  addli r6, zero, 8192
00039c  6aa48134  vor.u.mh vr8{mr2}, r3, vr8
0003a0  9f110000  addli r3, zero, 1
0003a4  7e8001e0  vmmov mr0, r3
0003a8  8f811218  div.f.rn r3, r5, r1
0003ac  9f420000  addli r5, zero, 4
0003b0  6a212230  vor.u.mh vr2{mr0}, r4, vr2
0003b4  7a123040  vextracti.f r4, 3(vr0)
0003b8  7e8102e0  vmmov mr2, r5
0003bc  9f021000  addli r5, zero, 8
0003c0  6a212136  vor.u.mh vr2{mr3}, r2, vr2
0003c4  0f011218  div.f.rn r2, r4, r1
0003c8  7a124040  vextracti.f r4, 4(vr0)
0003cc  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0003d0  8f011218  div.f.rn r3, r4, r1
0003d4  7a125040  vextracti.f r4, 5(vr0)
0003d8  7e8102e0  vmmov mr2, r5
0003dc  9f022000  addli r5, zero, 16
0003e0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0003e4  0f011218  div.f.rn r2, r4, r1
0003e8  7a126040  vextracti.f r4, 6(vr0)
0003ec  7e8102e0  vmmov mr2, r5
0003f0  9f024000  addli r5, zero, 32
0003f4  fe8102e0  vmmov mr3, r5
0003f8  9f028000  addli r5, zero, 64
0003fc  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000400  8f011218  div.f.rn r3, r4, r1
000404  7a127040  vextracti.f r4, 7(vr0)
000408  7e8102e0  vmmov mr2, r5
00040c  9f020001  addli r5, zero, 128
000410  6a212136  vor.u.mh vr2{mr3}, r2, vr2
000414  0f011218  div.f.rn r2, r4, r1
000418  7a128040  vextracti.f r4, 8(vr0)
00041c  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000420  8f011218  div.f.rn r3, r4, r1
000424  7a129040  vextracti.f r4, 9(vr0)
000428  7e8102e0  vmmov mr2, r5
00042c  9f020002  addli r5, zero, 256
000430  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000434  0f011218  div.f.rn r2, r4, r1
000438  7a12a040  vextracti.f r4, 10(vr0)
00043c  7e8102e0  vmmov mr2, r5
000440  9f020004  addli r5, zero, 512
000444  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000448  8f011218  div.f.rn r3, r4, r1
00044c  7a12b040  vextracti.f r4, 11(vr0)
000450  7e8102e0  vmmov mr2, r5
000454  9f020008  addli r5, zero, 1024
000458  6a212134  vor.u.mh vr2{mr2}, r2, vr2
00045c  0f011218  div.f.rn r2, r4, r1
000460  7a12c040  vextracti.f r4, 12(vr0)
000464  7e8102e0  vmmov mr2, r5
000468  9f020010  addli r5, zero, 2048
00046c  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000470  8f011218  div.f.rn r3, r4, r1
000474  7a12d040  vextracti.f r4, 13(vr0)
000478  7e8102e0  vmmov mr2, r5
00047c  9f020020  addli r5, zero, 4096
000480  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000484  0f011218  div.f.rn r2, r4, r1
000488  7a12e040  vextracti.f r4, 14(vr0)
00048c  7e8102e0  vmmov mr2, r5
000490  fa920040  vextracti.f r5, 0(vr1)
000494  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000498  8f011218  div.f.rn r3, r4, r1
00049c  7a12f040  vextracti.f r4, 15(vr0)
0004a0  7e0103e0  vmmov mr2, r6
0004a4  2b430000  lui r6, 4
0004a8  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
0004ac  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0004b0  0f011218  div.f.rn r2, r4, r1
0004b4  0f821218  div.f.rn r4, r5, r1
0004b8  fa921040  vextracti.f r5, 1(vr1)
0004bc  7e0103e0  vmmov mr2, r6
0004c0  2b830000  lui r6, 8
0004c4  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0004c8  8f811218  div.f.rn r3, r5, r1
0004cc  fa922040  vextracti.f r5, 2(vr1)
0004d0  7e0103e0  vmmov mr2, r6
0004d4  1f030040  addli r6, zero, 8192
0004d8  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0004dc  6a200230  vor.u.mh vr0{mr0}, r4, vr0
0004e0  0f811218  div.f.rn r2, r5, r1
0004e4  9f220000  addli r5, zero, 2
0004e8  7a923040  vextracti.f r4, 3(vr1)
0004ec  7e8002e0  vmmov mr0, r5
0004f0  9f420000  addli r5, zero, 4
0004f4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004f8  8f011218  div.f.rn r3, r4, r1
0004fc  7a924040  vextracti.f r4, 4(vr1)
000500  7e8002e0  vmmov mr0, r5
000504  9f021000  addli r5, zero, 8
000508  6a200130  vor.u.mh vr0{mr0}, r2, vr0
00050c  0f011218  div.f.rn r2, r4, r1
000510  7a925040  vextracti.f r4, 5(vr1)
000514  7e8002e0  vmmov mr0, r5
000518  9f022000  addli r5, zero, 16
00051c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000520  8f011218  div.f.rn r3, r4, r1
000524  7a926040  vextracti.f r4, 6(vr1)
000528  7e8002e0  vmmov mr0, r5
00052c  9f028000  addli r5, zero, 64
000530  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000534  0f011218  div.f.rn r2, r4, r1
000538  7a927040  vextracti.f r4, 7(vr1)
00053c  7e8002e0  vmmov mr0, r5
000540  9f020001  addli r5, zero, 128
000544  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
000548  8f011218  div.f.rn r3, r4, r1
00054c  7a928040  vextracti.f r4, 8(vr1)
000550  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000554  0f011218  div.f.rn r2, r4, r1
000558  7a929040  vextracti.f r4, 9(vr1)
00055c  7e8002e0  vmmov mr0, r5
000560  9f020002  addli r5, zero, 256
000564  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000568  8f011218  div.f.rn r3, r4, r1
00056c  7a92a040  vextracti.f r4, 10(vr1)
000570  7e8002e0  vmmov mr0, r5
000574  9f020004  addli r5, zero, 512
000578  7e8102e0  vmmov mr2, r5
00057c  9f020008  addli r5, zero, 1024
000580  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000584  0f011218  div.f.rn r2, r4, r1
000588  7a92b040  vextracti.f r4, 11(vr1)
00058c  7e8002e0  vmmov mr0, r5
000590  9f020010  addli r5, zero, 2048
000594  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
000598  8f011218  div.f.rn r3, r4, r1
00059c  7a92c040  vextracti.f r4, 12(vr1)
0005a0  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0005a4  0f011218  div.f.rn r2, r4, r1
0005a8  7a92d040  vextracti.f r4, 13(vr1)
0005ac  7e8002e0  vmmov mr0, r5
0005b0  9f020020  addli r5, zero, 4096
0005b4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0005b8  8f011218  div.f.rn r3, r4, r1
0005bc  7a92e040  vextracti.f r4, 14(vr1)
0005c0  7e8002e0  vmmov mr0, r5
0005c4  fa920140  vextracti.f r5, 0(vr3)
0005c8  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0005cc  0f011218  div.f.rn r2, r4, r1
0005d0  7a92f040  vextracti.f r4, 15(vr1)
0005d4  7e0003e0  vmmov mr0, r6
0005d8  2b430000  lui r6, 4
0005dc  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
0005e0  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0005e4  8f011218  div.f.rn r3, r4, r1
0005e8  7e0003e0  vmmov mr0, r6
0005ec  0f821218  div.f.rn r4, r5, r1
0005f0  fa921140  vextracti.f r5, 1(vr3)
0005f4  2b830000  lui r6, 8
0005f8  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0005fc  7e0003e0  vmmov mr0, r6
000600  0f811218  div.f.rn r2, r5, r1
000604  fa922140  vextracti.f r5, 2(vr3)
000608  1f030040  addli r6, zero, 8192
00060c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000610  9f110000  addli r3, zero, 1
000614  7e8001e0  vmmov mr0, r3
000618  8f811218  div.f.rn r3, r5, r1
00061c  9f220000  addli r5, zero, 2
000620  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000624  7a923140  vextracti.f r4, 3(vr3)
000628  7e8002e0  vmmov mr0, r5
00062c  9f420000  addli r5, zero, 4
000630  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000634  0f011218  div.f.rn r2, r4, r1
000638  7a924140  vextracti.f r4, 4(vr3)
00063c  7e8002e0  vmmov mr0, r5
000640  9f021000  addli r5, zero, 8
000644  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000648  8f011218  div.f.rn r3, r4, r1
00064c  7a925140  vextracti.f r4, 5(vr3)
000650  7e8002e0  vmmov mr0, r5
000654  9f022000  addli r5, zero, 16
000658  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00065c  0f011218  div.f.rn r2, r4, r1
000660  7a926140  vextracti.f r4, 6(vr3)
000664  7e8002e0  vmmov mr0, r5
000668  9f028000  addli r5, zero, 64
00066c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000670  8f011218  div.f.rn r3, r4, r1
000674  7a927140  vextracti.f r4, 7(vr3)
000678  7e8002e0  vmmov mr0, r5
00067c  9f020001  addli r5, zero, 128
000680  ea201136  vor.u.mh vr1{mr3}, r2, vr1
000684  0f011218  div.f.rn r2, r4, r1
000688  7a928140  vextracti.f r4, 8(vr3)
00068c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000690  8f011218  div.f.rn r3, r4, r1
000694  7a929140  vextracti.f r4, 9(vr3)
000698  7e8002e0  vmmov mr0, r5
00069c  9f020002  addli r5, zero, 256
0006a0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0006a4  0f011218  div.f.rn r2, r4, r1
0006a8  7a92a140  vextracti.f r4, 10(vr3)
0006ac  7e8002e0  vmmov mr0, r5
0006b0  9f020008  addli r5, zero, 1024
0006b4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0006b8  8f011218  div.f.rn r3, r4, r1
0006bc  7a92b140  vextracti.f r4, 11(vr3)
0006c0  7e8002e0  vmmov mr0, r5
0006c4  9f020010  addli r5, zero, 2048
0006c8  ea201134  vor.u.mh vr1{mr2}, r2, vr1
0006cc  0f011218  div.f.rn r2, r4, r1
0006d0  7a92c140  vextracti.f r4, 12(vr3)
0006d4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0006d8  8f011218  div.f.rn r3, r4, r1
0006dc  7a92d140  vextracti.f r4, 13(vr3)
0006e0  7e8002e0  vmmov mr0, r5
0006e4  9f020020  addli r5, zero, 4096
0006e8  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0006ec  0f011218  div.f.rn r2, r4, r1
0006f0  7a92e140  vextracti.f r4, 14(vr3)
0006f4  7e8002e0  vmmov mr0, r5
0006f8  fa120240  vextracti.f r5, 0(vr4)
0006fc  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000700  8f011218  div.f.rn r3, r4, r1
000704  7a92f140  vextracti.f r4, 15(vr3)
000708  7e0003e0  vmmov mr0, r6
00070c  2b430000  lui r6, 4
000710  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
000714  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000718  0f011218  div.f.rn r2, r4, r1
00071c  7e0003e0  vmmov mr0, r6
000720  0f821218  div.f.rn r4, r5, r1
000724  fa121240  vextracti.f r5, 1(vr4)
000728  2b830000  lui r6, 8
00072c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000730  7e0003e0  vmmov mr0, r6
000734  8f811218  div.f.rn r3, r5, r1
000738  fa122240  vextracti.f r5, 2(vr4)
00073c  1f030040  addli r6, zero, 8192
000740  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000744  1f110000  addli r2, zero, 1
000748  7e0001e0  vmmov mr0, r2
00074c  0f811218  div.f.rn r2, r5, r1
000750  9f220000  addli r5, zero, 2
000754  ea213230  vor.u.mh vr3{mr0}, r4, vr3
000758  7a123240  vextracti.f r4, 3(vr4)
00075c  7e8002e0  vmmov mr0, r5
000760  9f420000  addli r5, zero, 4
000764  7e8102e0  vmmov mr2, r5
000768  9f021000  addli r5, zero, 8
00076c  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000770  8f011218  div.f.rn r3, r4, r1
000774  7a124240  vextracti.f r4, 4(vr4)
000778  7e8002e0  vmmov mr0, r5
00077c  9f022000  addli r5, zero, 16
000780  ea213134  vor.u.mh vr3{mr2}, r2, vr3
000784  0f011218  div.f.rn r2, r4, r1
000788  7a125240  vextracti.f r4, 5(vr4)
00078c  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000790  8f011218  div.f.rn r3, r4, r1
000794  7a126240  vextracti.f r4, 6(vr4)
000798  7e8002e0  vmmov mr0, r5
00079c  9f028000  addli r5, zero, 64
0007a0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0007a4  0f011218  div.f.rn r2, r4, r1
0007a8  7a127240  vextracti.f r4, 7(vr4)
0007ac  7e8002e0  vmmov mr0, r5
0007b0  9f020001  addli r5, zero, 128
0007b4  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
0007b8  8f011218  div.f.rn r3, r4, r1
0007bc  7a128240  vextracti.f r4, 8(vr4)
0007c0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0007c4  0f011218  div.f.rn r2, r4, r1
0007c8  7a129240  vextracti.f r4, 9(vr4)
0007cc  7e8002e0  vmmov mr0, r5
0007d0  9f020002  addli r5, zero, 256
0007d4  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0007d8  8f011218  div.f.rn r3, r4, r1
0007dc  7a12a240  vextracti.f r4, 10(vr4)
0007e0  7e8002e0  vmmov mr0, r5
0007e4  9f020004  addli r5, zero, 512
0007e8  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0007ec  0f011218  div.f.rn r2, r4, r1
0007f0  7a12b240  vextracti.f r4, 11(vr4)
0007f4  7e8002e0  vmmov mr0, r5
0007f8  9f020008  addli r5, zero, 1024
0007fc  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000800  8f011218  div.f.rn r3, r4, r1
000804  7a12c240  vextracti.f r4, 12(vr4)
000808  7e8002e0  vmmov mr0, r5
00080c  9f020010  addli r5, zero, 2048
000810  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000814  0f011218  div.f.rn r2, r4, r1
000818  7a12d240  vextracti.f r4, 13(vr4)
00081c  7e8002e0  vmmov mr0, r5
000820  9f020020  addli r5, zero, 4096
000824  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000828  8f011218  div.f.rn r3, r4, r1
00082c  7a12e240  vextracti.f r4, 14(vr4)
000830  7e8002e0  vmmov mr0, r5
000834  fa920240  vextracti.f r5, 0(vr5)
000838  ea213130  vor.u.mh vr3{mr0}, r2, vr3
00083c  0f011218  div.f.rn r2, r4, r1
000840  7a12f240  vextracti.f r4, 15(vr4)
000844  7e0003e0  vmmov mr0, r6
000848  2b430000  lui r6, 4
00084c  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
000850  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000854  8f011218  div.f.rn r3, r4, r1
000858  7e0003e0  vmmov mr0, r6
00085c  0f821218  div.f.rn r4, r5, r1
000860  fa921240  vextracti.f r5, 1(vr5)
000864  2b830000  lui r6, 8
000868  ea213130  vor.u.mh vr3{mr0}, r2, vr3
00086c  7e0003e0  vmmov mr0, r6
000870  0f811218  div.f.rn r2, r5, r1
000874  fa922240  vextracti.f r5, 2(vr5)
000878  1f030040  addli r6, zero, 8192
00087c  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000880  9f110000  addli r3, zero, 1
000884  7e8001e0  vmmov mr0, r3
000888  8f811218  div.f.rn r3, r5, r1
00088c  9f220000  addli r5, zero, 2
000890  6a224230  vor.u.mh vr4{mr0}, r4, vr4
000894  7a923240  vextracti.f r4, 3(vr5)
000898  7e8002e0  vmmov mr0, r5
00089c  9f021000  addli r5, zero, 8
0008a0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0008a4  0f011218  div.f.rn r2, r4, r1
0008a8  7a924240  vextracti.f r4, 4(vr5)
0008ac  7e8002e0  vmmov mr0, r5
0008b0  9f022000  addli r5, zero, 16
0008b4  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0008b8  8f011218  div.f.rn r3, r4, r1
0008bc  7a925240  vextracti.f r4, 5(vr5)
0008c0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0008c4  0f011218  div.f.rn r2, r4, r1
0008c8  7a926240  vextracti.f r4, 6(vr5)
0008cc  7e8002e0  vmmov mr0, r5
0008d0  9f028000  addli r5, zero, 64
0008d4  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0008d8  8f011218  div.f.rn r3, r4, r1
0008dc  7a927240  vextracti.f r4, 7(vr5)
0008e0  7e8002e0  vmmov mr0, r5
0008e4  9f020001  addli r5, zero, 128
0008e8  6a224136  vor.u.mh vr4{mr3}, r2, vr4
0008ec  0f011218  div.f.rn r2, r4, r1
0008f0  7a928240  vextracti.f r4, 8(vr5)
0008f4  fe8102e0  vmmov mr3, r5
0008f8  9f020002  addli r5, zero, 256
0008fc  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000900  8f011218  div.f.rn r3, r4, r1
000904  7a929240  vextracti.f r4, 9(vr5)
000908  7e8002e0  vmmov mr0, r5
00090c  9f020004  addli r5, zero, 512
000910  7e8102e0  vmmov mr2, r5
000914  9f020008  addli r5, zero, 1024
000918  6a224136  vor.u.mh vr4{mr3}, r2, vr4
00091c  0f011218  div.f.rn r2, r4, r1
000920  7a92a240  vextracti.f r4, 10(vr5)
000924  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000928  8f011218  div.f.rn r3, r4, r1
00092c  7a92b240  vextracti.f r4, 11(vr5)
000930  7e8002e0  vmmov mr0, r5
000934  9f020010  addli r5, zero, 2048
000938  6a224134  vor.u.mh vr4{mr2}, r2, vr4
00093c  0f011218  div.f.rn r2, r4, r1
000940  7a92c240  vextracti.f r4, 12(vr5)
000944  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000948  8f011218  div.f.rn r3, r4, r1
00094c  7a92d240  vextracti.f r4, 13(vr5)
000950  7e8002e0  vmmov mr0, r5
000954  9f020020  addli r5, zero, 4096
000958  6a224130  vor.u.mh vr4{mr0}, r2, vr4
00095c  0f011218  div.f.rn r2, r4, r1
000960  7a92e240  vextracti.f r4, 14(vr5)
000964  7e8002e0  vmmov mr0, r5
000968  fa120340  vextracti.f r5, 0(vr6)
00096c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000970  8f011218  div.f.rn r3, r4, r1
000974  7a92f240  vextracti.f r4, 15(vr5)
000978  7e0003e0  vmmov mr0, r6
00097c  2b430000  lui r6, 4
000980  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
000984  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000988  0f011218  div.f.rn r2, r4, r1
00098c  7e0003e0  vmmov mr0, r6
000990  0f821218  div.f.rn r4, r5, r1
000994  fa121340  vextracti.f r5, 1(vr6)
000998  2b830000  lui r6, 8
00099c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0009a0  7e0003e0  vmmov mr0, r6
0009a4  8f811218  div.f.rn r3, r5, r1
0009a8  fa122340  vextracti.f r5, 2(vr6)
0009ac  1f030040  addli r6, zero, 8192
0009b0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0009b4  1f110000  addli r2, zero, 1
0009b8  7e0001e0  vmmov mr0, r2
0009bc  0f811218  div.f.rn r2, r5, r1
0009c0  9f220000  addli r5, zero, 2
0009c4  ea225230  vor.u.mh vr5{mr0}, r4, vr5
0009c8  7a123340  vextracti.f r4, 3(vr6)
0009cc  7e8002e0  vmmov mr0, r5
0009d0  9f420000  addli r5, zero, 4
0009d4  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0009d8  8f011218  div.f.rn r3, r4, r1
0009dc  7a124340  vextracti.f r4, 4(vr6)
0009e0  7e8002e0  vmmov mr0, r5
0009e4  9f021000  addli r5, zero, 8
0009e8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0009ec  0f011218  div.f.rn r2, r4, r1
0009f0  7a125340  vextracti.f r4, 5(vr6)
0009f4  7e8002e0  vmmov mr0, r5
0009f8  9f022000  addli r5, zero, 16
0009fc  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000a00  8f011218  div.f.rn r3, r4, r1
000a04  7a126340  vextracti.f r4, 6(vr6)
000a08  7e8002e0  vmmov mr0, r5
000a0c  9f024000  addli r5, zero, 32
000a10  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000a14  0f011218  div.f.rn r2, r4, r1
000a18  7a127340  vextracti.f r4, 7(vr6)
000a1c  7e8002e0  vmmov mr0, r5
000a20  9f028000  addli r5, zero, 64
000a24  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000a28  8f011218  div.f.rn r3, r4, r1
000a2c  7a128340  vextracti.f r4, 8(vr6)
000a30  7e8002e0  vmmov mr0, r5
000a34  9f020002  addli r5, zero, 256
000a38  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000a3c  0f011218  div.f.rn r2, r4, r1
000a40  7a129340  vextracti.f r4, 9(vr6)
000a44  7e8002e0  vmmov mr0, r5
000a48  9f020008  addli r5, zero, 1024
000a4c  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
000a50  8f011218  div.f.rn r3, r4, r1
000a54  7a12a340  vextracti.f r4, 10(vr6)
000a58  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000a5c  0f011218  div.f.rn r2, r4, r1
000a60  7a12b340  vextracti.f r4, 11(vr6)
000a64  7e8002e0  vmmov mr0, r5
000a68  9f020010  addli r5, zero, 2048
000a6c  eaa25134  vor.u.mh vr5{mr2}, r3, vr5
000a70  8f011218  div.f.rn r3, r4, r1
000a74  7a12c340  vextracti.f r4, 12(vr6)
000a78  fe0101c0  vmmov mr3, mr2
000a7c  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000a80  0f011218  div.f.rn r2, r4, r1
000a84  7a12d340  vextracti.f r4, 13(vr6)
000a88  7e8002e0  vmmov mr0, r5
000a8c  9f020020  addli r5, zero, 4096
000a90  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000a94  8f011218  div.f.rn r3, r4, r1
000a98  7a12e340  vextracti.f r4, 14(vr6)
000a9c  7e8002e0  vmmov mr0, r5
000aa0  fa920340  vextracti.f r5, 0(vr7)
000aa4  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000aa8  0f011218  div.f.rn r2, r4, r1
000aac  7a12f340  vextracti.f r4, 15(vr6)
000ab0  7e0003e0  vmmov mr0, r6
000ab4  2b430000  lui r6, 4
000ab8  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
000abc  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000ac0  8f011218  div.f.rn r3, r4, r1
000ac4  7e0003e0  vmmov mr0, r6
000ac8  0f821218  div.f.rn r4, r5, r1
000acc  fa921340  vextracti.f r5, 1(vr7)
000ad0  2b830000  lui r6, 8
000ad4  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000ad8  7e0003e0  vmmov mr0, r6
000adc  0f811218  div.f.rn r2, r5, r1
000ae0  fa922340  vextracti.f r5, 2(vr7)
000ae4  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000ae8  9f110000  addli r3, zero, 1
000aec  7e8001e0  vmmov mr0, r3
000af0  8f811218  div.f.rn r3, r5, r1
000af4  9f220000  addli r5, zero, 2
000af8  6a236230  vor.u.mh vr6{mr0}, r4, vr6
000afc  7a923340  vextracti.f r4, 3(vr7)
000b00  7e8102e0  vmmov mr2, r5
000b04  9f420000  addli r5, zero, 4
000b08  7e8002e0  vmmov mr0, r5
000b0c  9f021000  addli r5, zero, 8
000b10  6a236134  vor.u.mh vr6{mr2}, r2, vr6
000b14  0f011218  div.f.rn r2, r4, r1
000b18  7a924340  vextracti.f r4, 4(vr7)
000b1c  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000b20  8f011218  div.f.rn r3, r4, r1
000b24  7a925340  vextracti.f r4, 5(vr7)
000b28  7e8002e0  vmmov mr0, r5
000b2c  9f022000  addli r5, zero, 16
000b30  7e8102e0  vmmov mr2, r5
000b34  9f024000  addli r5, zero, 32
000b38  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000b3c  0f011218  div.f.rn r2, r4, r1
000b40  7a926340  vextracti.f r4, 6(vr7)
000b44  7e8002e0  vmmov mr0, r5
000b48  9f028000  addli r5, zero, 64
000b4c  6aa36134  vor.u.mh vr6{mr2}, r3, vr6
000b50  8f011218  div.f.rn r3, r4, r1
000b54  7a927340  vextracti.f r4, 7(vr7)
000b58  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000b5c  0f011218  div.f.rn r2, r4, r1
000b60  7a928340  vextracti.f r4, 8(vr7)
000b64  7e8002e0  vmmov mr0, r5
000b68  9f020001  addli r5, zero, 128
000b6c  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000b70  8f011218  div.f.rn r3, r4, r1
000b74  7a929340  vextracti.f r4, 9(vr7)
000b78  7e8002e0  vmmov mr0, r5
000b7c  9f020002  addli r5, zero, 256
000b80  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000b84  0f011218  div.f.rn r2, r4, r1
000b88  7a92a340  vextracti.f r4, 10(vr7)
000b8c  7e8002e0  vmmov mr0, r5
000b90  9f020008  addli r5, zero, 1024
000b94  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000b98  8f011218  div.f.rn r3, r4, r1
000b9c  7a92b340  vextracti.f r4, 11(vr7)
000ba0  7e8002e0  vmmov mr0, r5
000ba4  9f020010  addli r5, zero, 2048
000ba8  6a236136  vor.u.mh vr6{mr3}, r2, vr6
000bac  0f011218  div.f.rn r2, r4, r1
000bb0  7a92c340  vextracti.f r4, 12(vr7)
000bb4  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000bb8  8f011218  div.f.rn r3, r4, r1
000bbc  7a92d340  vextracti.f r4, 13(vr7)
000bc0  7e8002e0  vmmov mr0, r5
000bc4  9f020020  addli r5, zero, 4096
000bc8  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000bcc  0f011218  div.f.rn r2, r4, r1
000bd0  7a92e340  vextracti.f r4, 14(vr7)
000bd4  7e8002e0  vmmov mr0, r5
000bd8  9f020040  addli r5, zero, 8192
000bdc  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000be0  8f011218  div.f.rn r3, r4, r1
000be4  7e8002e0  vmmov mr0, r5
000be8  7a92f340  vextracti.f r4, 15(vr7)
000bec  8f001218  div.f.rn r1, r4, r1
000bf0  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000bf4  2b410000  lui r2, 4
000bf8  7e0001e0  vmmov mr0, r2
000bfc  2b0100f0  lui r2, 983040
000c00  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000c04  eb510f01  load.d r[4:5], 16(r30)
000c08  eb520fbb  load.d r[6:7], -1104(r30)
000c0c  17912300  or r2, r7, r2
000c10  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000c14  ab820000  lui r5, 8
000c18  1f030ff8  addli r6, r30, -1024
000c1c  7e8102e0  vmmov mr2, r5
000c20  7e0001c0  vmmov mr0, mr2
000c24  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000c28  46108f82  vstore_mask16.mz vr8{mr1}, 1024(r30)
000c2c  46142f82  vstore_mask16.mz vr2{mr1}, 1088(r30)
000c30  46180f82  vstore_mask16.mz vr0{mr1}, 1152(r30)
000c34  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
000c38  46103fa2  vstore_mask16.mz vr3{mr1}, 1280(r30)
000c3c  46144fa2  vstore_mask16.mz vr4{mr1}, 1344(r30)
000c40  46185fa2  vstore_mask16.mz vr5{mr1}, 1408(r30)
000c44  461c6fa2  vstore_mask16.mz vr6{mr1}, 1472(r30)
000c48  00a00000  mfence { lm }
000c4c  7fb16100  s_lm2gm r2, r6, 0(r[4:5])
000c50  1f420000  addli r4, zero, 4
000c54  9f010000  addli r3, zero, 0
000c58  00a00000  mfence { lm }
000c5c  e3407ff7  loadli.w r1,  -1092(r30)
000c60  fe0102e0  vmmov mr3, r4
000c64  1f020004  addli r4, zero, 512
000c68  7e0102e0  vmmov mr2, r4
000c6c  1b811000  andi r2, r1, 1
000c70  9f000040  addli r1, zero, 8192
000c74  b71501fa  beq r2, zero, -2716
000c78  63016fef  loadli.w r2,  -2128(r30)
000c7c  e74b3ff6  storeli.w r3, -1092(r30)
000c80  9f220000  addli r5, zero, 2
000c84  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
000c88  8b101110  add.s r1, r2, r1
000c8c  2b0100f0  lui r2, 983040
000c90  b3910028  sext_int2long r[4:5], r1
000c94  17912300  or r2, r7, r2
000c98  ab0000f0  lui r1, 983040
000c9c  17b45102  sll.d r[9:10], r[4:5], r5
000ca0  eb510f00  load.d r[4:5], 0(r30)
000ca4  97901300  or r1, r7, r1
000ca8  73388fba  store.d r[9:10], -1104(r30)
000cac  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
000cb0  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
000cb4  1f024fef  addli r4, r30, -2144
000cb8  6b510200  load.d r[3:4], 0(r4)
000cbc  1f020ffc  addli r4, r30, -512
000cc0  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000cc4  9f008ff5  addli r1, r30, -1344
000cc8  00a00000  mfence { lm }
000ccc  c2130f82  vload_mask16.mz vr7{mr1}, 1024(r30)
000cd0  c2128f82  vload_mask16.mz vr5{mr1}, 1088(r30)
000cd4  42130f83  vload_mask16.mz vr6{mr1}, 1152(r30)
000cd8  42128f83  vload_mask16.mz vr4{mr1}, 1216(r30)
000cdc  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
000ce0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000ce4  9f000ff6  addli r1, r30, -1280
000ce8  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
000cec  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000cf0  9f008ff6  addli r1, r30, -1216
000cf4  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
000cf8  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000cfc  9f008ff7  addli r1, r30, -1088
000d00  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000d04  00a00000  mfence { lm }
000d08  634ebffd  loadli.w r28,  -292(r30)
000d0c  6341effc  loadli.w r2,  -396(r30)
000d10  e301fffc  loadli.w r3,  -392(r30)
000d14  6342fffc  loadli.w r4,  -388(r30)
000d18  e3020ffd  loadli.w r5,  -384(r30)
000d1c  63430ffd  loadli.w r6,  -380(r30)
000d20  e3031ffd  loadli.w r7,  -376(r30)
000d24  63441ffd  loadli.w r8,  -372(r30)
000d28  e3042ffd  loadli.w r9,  -368(r30)
000d2c  63452ffd  loadli.w r10,  -364(r30)
000d30  e3053ffd  loadli.w r11,  -360(r30)
000d34  63463ffd  loadli.w r12,  -356(r30)
000d38  e3064ffd  loadli.w r13,  -352(r30)
000d3c  63474ffd  loadli.w r14,  -348(r30)
000d40  e3075ffd  loadli.w r15,  -344(r30)
000d44  63485ffd  loadli.w r16,  -340(r30)
000d48  e3086ffd  loadli.w r17,  -336(r30)
000d4c  63496ffd  loadli.w r18,  -332(r30)
000d50  e3097ffd  loadli.w r19,  -328(r30)
000d54  634a7ffd  loadli.w r20,  -324(r30)
000d58  e30a8ffd  loadli.w r21,  -320(r30)
000d5c  634b8ffd  loadli.w r22,  -316(r30)
000d60  e30b9ffd  loadli.w r23,  -312(r30)
000d64  634c9ffd  loadli.w r24,  -308(r30)
000d68  e30caffd  loadli.w r25,  -304(r30)
000d6c  634daffd  loadli.w r26,  -300(r30)
000d70  e30dbffd  loadli.w r27,  -296(r30)
000d74  674ccfef  storeli.w r28, -2108(r30)
000d78  630ecffd  loadli.w r28,  -288(r30)
000d7c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000d80  e3000ffc  loadli.w r1,  -512(r30)
000d84  e70ccfef  storeli.w r28, -2104(r30)
000d88  634ecffd  loadli.w r28,  -284(r30)
000d8c  67081ff0  storeli.w r1, -1920(r30)
000d90  e3400ffc  loadli.w r1,  -508(r30)
000d94  e74ccfef  storeli.w r28, -2100(r30)
000d98  630edffd  loadli.w r28,  -280(r30)
000d9c  e7081ff0  storeli.w r1, -1912(r30)
000da0  e3001ffc  loadli.w r1,  -504(r30)
000da4  670dcfef  storeli.w r28, -2096(r30)
000da8  634edffd  loadli.w r28,  -276(r30)
000dac  67091ff0  storeli.w r1, -1904(r30)
000db0  e3401ffc  loadli.w r1,  -500(r30)
000db4  674dcfef  storeli.w r28, -2092(r30)
000db8  630eeffd  loadli.w r28,  -272(r30)
000dbc  e7091ff0  storeli.w r1, -1896(r30)
000dc0  e3002ffc  loadli.w r1,  -496(r30)
000dc4  e70dcfef  storeli.w r28, -2088(r30)
000dc8  634eeffd  loadli.w r28,  -268(r30)
000dcc  670a1ff0  storeli.w r1, -1888(r30)
000dd0  e3402ffc  loadli.w r1,  -492(r30)
000dd4  e74dcfef  storeli.w r28, -2084(r30)
000dd8  630efffd  loadli.w r28,  -264(r30)
000ddc  e70a1ff0  storeli.w r1, -1880(r30)
000de0  e3003ffc  loadli.w r1,  -488(r30)
000de4  670ecfef  storeli.w r28, -2080(r30)
000de8  634efffd  loadli.w r28,  -260(r30)
000dec  670b1ff0  storeli.w r1, -1872(r30)
000df0  e3403ffc  loadli.w r1,  -484(r30)
000df4  674ecfef  storeli.w r28, -2076(r30)
000df8  630e0ffe  loadli.w r28,  -256(r30)
000dfc  e70b1ff0  storeli.w r1, -1864(r30)
000e00  e3004ffc  loadli.w r1,  -480(r30)
000e04  e70ecfef  storeli.w r28, -2072(r30)
000e08  634e0ffe  loadli.w r28,  -252(r30)
000e0c  670c1ff0  storeli.w r1, -1856(r30)
000e10  e3404ffc  loadli.w r1,  -476(r30)
000e14  e74ecfef  storeli.w r28, -2068(r30)
000e18  630e1ffe  loadli.w r28,  -248(r30)
000e1c  e70c1ff0  storeli.w r1, -1848(r30)
000e20  e3005ffc  loadli.w r1,  -472(r30)
000e24  670fcfef  storeli.w r28, -2064(r30)
000e28  634e1ffe  loadli.w r28,  -244(r30)
000e2c  670d1ff0  storeli.w r1, -1840(r30)
000e30  e3405ffc  loadli.w r1,  -468(r30)
000e34  674fcfef  storeli.w r28, -2060(r30)
000e38  630e2ffe  loadli.w r28,  -240(r30)
000e3c  e70d1ff0  storeli.w r1, -1832(r30)
000e40  e3006ffc  loadli.w r1,  -464(r30)
000e44  e70fcfef  storeli.w r28, -2056(r30)
000e48  634e2ffe  loadli.w r28,  -236(r30)
000e4c  670e1ff0  storeli.w r1, -1824(r30)
000e50  e3406ffc  loadli.w r1,  -460(r30)
000e54  e74fcfef  storeli.w r28, -2052(r30)
000e58  630e3ffe  loadli.w r28,  -232(r30)
000e5c  e70e1ff0  storeli.w r1, -1816(r30)
000e60  e3007ffc  loadli.w r1,  -456(r30)
000e64  6700cff1  storeli.w r28, -2048(r30)
000e68  634e3ffe  loadli.w r28,  -228(r30)
000e6c  670f1ff0  storeli.w r1, -1808(r30)
000e70  e3407ffc  loadli.w r1,  -452(r30)
000e74  6740cff1  storeli.w r28, -2044(r30)
000e78  630e4ffe  loadli.w r28,  -224(r30)
000e7c  e70f1ff0  storeli.w r1, -1800(r30)
000e80  e3008ffc  loadli.w r1,  -448(r30)
000e84  e700cff1  storeli.w r28, -2040(r30)
000e88  634e4ffe  loadli.w r28,  -220(r30)
000e8c  67001ff2  storeli.w r1, -1792(r30)
000e90  e3408ffc  loadli.w r1,  -444(r30)
000e94  e740cff1  storeli.w r28, -2036(r30)
000e98  630e5ffe  loadli.w r28,  -216(r30)
000e9c  e7001ff2  storeli.w r1, -1784(r30)
000ea0  e3009ffc  loadli.w r1,  -440(r30)
000ea4  6701cff1  storeli.w r28, -2032(r30)
000ea8  634e5ffe  loadli.w r28,  -212(r30)
000eac  67011ff2  storeli.w r1, -1776(r30)
000eb0  e3409ffc  loadli.w r1,  -436(r30)
000eb4  6741cff1  storeli.w r28, -2028(r30)
000eb8  630e6ffe  loadli.w r28,  -208(r30)
000ebc  e7011ff2  storeli.w r1, -1768(r30)
000ec0  e300affc  loadli.w r1,  -432(r30)
000ec4  e701cff1  storeli.w r28, -2024(r30)
000ec8  634e6ffe  loadli.w r28,  -204(r30)
000ecc  67021ff2  storeli.w r1, -1760(r30)
000ed0  e340affc  loadli.w r1,  -428(r30)
000ed4  e741cff1  storeli.w r28, -2020(r30)
000ed8  630e7ffe  loadli.w r28,  -200(r30)
000edc  67421ff2  storeli.w r1, -1756(r30)
000ee0  e300bffc  loadli.w r1,  -424(r30)
000ee4  6702cff1  storeli.w r28, -2016(r30)
000ee8  634e7ffe  loadli.w r28,  -196(r30)
000eec  e7021ff2  storeli.w r1, -1752(r30)
000ef0  e340bffc  loadli.w r1,  -420(r30)
000ef4  6742cff1  storeli.w r28, -2012(r30)
000ef8  630e8ffe  loadli.w r28,  -192(r30)
000efc  e7421ff2  storeli.w r1, -1748(r30)
000f00  e300cffc  loadli.w r1,  -416(r30)
000f04  e702cff1  storeli.w r28, -2008(r30)
000f08  634e8ffe  loadli.w r28,  -188(r30)
000f0c  67031ff2  storeli.w r1, -1744(r30)
000f10  e340cffc  loadli.w r1,  -412(r30)
000f14  e742cff1  storeli.w r28, -2004(r30)
000f18  630e9ffe  loadli.w r28,  -184(r30)
000f1c  67431ff2  storeli.w r1, -1740(r30)
000f20  e300dffc  loadli.w r1,  -408(r30)
000f24  6703cff1  storeli.w r28, -2000(r30)
000f28  634e9ffe  loadli.w r28,  -180(r30)
000f2c  e7031ff2  storeli.w r1, -1736(r30)
000f30  e340dffc  loadli.w r1,  -404(r30)
000f34  6743cff1  storeli.w r28, -1996(r30)
000f38  630eaffe  loadli.w r28,  -176(r30)
000f3c  e7431ff2  storeli.w r1, -1732(r30)
000f40  e300effc  loadli.w r1,  -400(r30)
000f44  e703cff1  storeli.w r28, -1992(r30)
000f48  634eaffe  loadli.w r28,  -172(r30)
000f4c  e743cff1  storeli.w r28, -1988(r30)
000f50  630ebffe  loadli.w r28,  -168(r30)
000f54  6704cff1  storeli.w r28, -1984(r30)
000f58  634ebffe  loadli.w r28,  -164(r30)
000f5c  6744cff1  storeli.w r28, -1980(r30)
000f60  630ecffe  loadli.w r28,  -160(r30)
000f64  e704cff1  storeli.w r28, -1976(r30)
000f68  634ecffe  loadli.w r28,  -156(r30)
000f6c  e744cff1  storeli.w r28, -1972(r30)
000f70  630edffe  loadli.w r28,  -152(r30)
000f74  6705cff1  storeli.w r28, -1968(r30)
000f78  634edffe  loadli.w r28,  -148(r30)
000f7c  6745cff1  storeli.w r28, -1964(r30)
000f80  630eeffe  loadli.w r28,  -144(r30)
000f84  e705cff1  storeli.w r28, -1960(r30)
000f88  634eeffe  loadli.w r28,  -140(r30)
000f8c  e745cff1  storeli.w r28, -1956(r30)
000f90  630efffe  loadli.w r28,  -136(r30)
000f94  6706cff1  storeli.w r28, -1952(r30)
000f98  634efffe  loadli.w r28,  -132(r30)
000f9c  6746cff1  storeli.w r28, -1948(r30)
000fa0  630e0fff  loadli.w r28,  -128(r30)
000fa4  e706cff1  storeli.w r28, -1944(r30)
000fa8  634e0fff  loadli.w r28,  -124(r30)
000fac  e746cff1  storeli.w r28, -1940(r30)
000fb0  630e1fff  loadli.w r28,  -120(r30)
000fb4  6707cff1  storeli.w r28, -1936(r30)
000fb8  634e1fff  loadli.w r28,  -116(r30)
000fbc  6747cff1  storeli.w r28, -1932(r30)
000fc0  630e2fff  loadli.w r28,  -112(r30)
000fc4  e707cff1  storeli.w r28, -1928(r30)
000fc8  634e2fff  loadli.w r28,  -108(r30)
000fcc  e747cff1  storeli.w r28, -1924(r30)
000fd0  630e3fff  loadli.w r28,  -104(r30)
000fd4  6748cff1  storeli.w r28, -1916(r30)
000fd8  634e3fff  loadli.w r28,  -100(r30)
000fdc  e748cff1  storeli.w r28, -1908(r30)
000fe0  630e4fff  loadli.w r28,  -96(r30)
000fe4  6749cff1  storeli.w r28, -1900(r30)
000fe8  634e4fff  loadli.w r28,  -92(r30)
000fec  e749cff1  storeli.w r28, -1892(r30)
000ff0  630e5fff  loadli.w r28,  -88(r30)
000ff4  674acff1  storeli.w r28, -1884(r30)
000ff8  634e5fff  loadli.w r28,  -84(r30)
000ffc  e74acff1  storeli.w r28, -1876(r30)
001000  630e6fff  loadli.w r28,  -80(r30)
001004  674bcff1  storeli.w r28, -1868(r30)
001008  634e6fff  loadli.w r28,  -76(r30)
00100c  e74bcff1  storeli.w r28, -1860(r30)
001010  630e7fff  loadli.w r28,  -72(r30)
001014  674ccff1  storeli.w r28, -1852(r30)
001018  634e7fff  loadli.w r28,  -68(r30)
00101c  e74ccff1  storeli.w r28, -1844(r30)
001020  630e8fff  loadli.w r28,  -64(r30)
001024  674dcff1  storeli.w r28, -1836(r30)
001028  634e8fff  loadli.w r28,  -60(r30)
00102c  e74dcff1  storeli.w r28, -1828(r30)
001030  630e9fff  loadli.w r28,  -56(r30)
001034  674ecff1  storeli.w r28, -1820(r30)
001038  634e9fff  loadli.w r28,  -52(r30)
00103c  e74ecff1  storeli.w r28, -1812(r30)
001040  630eafff  loadli.w r28,  -48(r30)
001044  674fcff1  storeli.w r28, -1804(r30)
001048  634eafff  loadli.w r28,  -44(r30)
00104c  e74fcff1  storeli.w r28, -1796(r30)
001050  630ebfff  loadli.w r28,  -40(r30)
001054  6740cff3  storeli.w r28, -1788(r30)
001058  634ebfff  loadli.w r28,  -36(r30)
00105c  e740cff3  storeli.w r28, -1780(r30)
001060  630ecfff  loadli.w r28,  -32(r30)
001064  6741cff3  storeli.w r28, -1772(r30)
001068  634ecfff  loadli.w r28,  -28(r30)
00106c  e741cff3  storeli.w r28, -1764(r30)
001070  630edfff  loadli.w r28,  -24(r30)
001074  6704cff3  storeli.w r28, -1728(r30)
001078  634edfff  loadli.w r28,  -20(r30)
00107c  670ccff3  storeli.w r28, -1600(r30)
001080  630eefff  loadli.w r28,  -16(r30)
001084  6700cff5  storeli.w r28, -1536(r30)
001088  634eefff  loadli.w r28,  -12(r30)
00108c  6704cff5  storeli.w r28, -1472(r30)
001090  630effff  loadli.w r28,  -8(r30)
001094  6708cff5  storeli.w r28, -1408(r30)
001098  634effff  loadli.w r28,  -4(r30)
00109c  e74bcff3  storeli.w r28, -1604(r30)
0010a0  1f1e0000  addli r28, zero, 1
0010a4  7e8001c0  vmmov mr0, mr3
0010a8  fe010ee0  vmmov mr3, r28
0010ac  630e0ff1  loadli.w r28,  -1920(r30)
0010b0  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
0010b4  1f2e0000  addli r28, zero, 2
0010b8  fe010ee0  vmmov mr3, r28
0010bc  630e1ff1  loadli.w r28,  -1912(r30)
0010c0  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
0010c4  630e2ff1  loadli.w r28,  -1904(r30)
0010c8  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
0010cc  1f0e1000  addli r28, zero, 8
0010d0  fe010ee0  vmmov mr3, r28
0010d4  630e3ff1  loadli.w r28,  -1896(r30)
0010d8  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
0010dc  1f0e2000  addli r28, zero, 16
0010e0  fe010ee0  vmmov mr3, r28
0010e4  630e4ff1  loadli.w r28,  -1888(r30)
0010e8  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
0010ec  1f0e4000  addli r28, zero, 32
0010f0  7e0001c0  vmmov mr0, mr2
0010f4  fe010ee0  vmmov mr3, r28
0010f8  630e5ff1  loadli.w r28,  -1880(r30)
0010fc  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001100  1f0e8000  addli r28, zero, 64
001104  fe010ee0  vmmov mr3, r28
001108  630e6ff1  loadli.w r28,  -1872(r30)
00110c  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001110  1f0e0001  addli r28, zero, 128
001114  7e010ee0  vmmov mr2, r28
001118  630e7ff1  loadli.w r28,  -1864(r30)
00111c  6a248e34  vor.u.mh vr8{mr2}, r28, vr8
001120  1f0e0002  addli r28, zero, 256
001124  fe010ee0  vmmov mr3, r28
001128  630e8ff1  loadli.w r28,  -1856(r30)
00112c  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001130  630e9ff1  loadli.w r28,  -1848(r30)
001134  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
001138  1f0e0008  addli r28, zero, 1024
00113c  fe010ee0  vmmov mr3, r28
001140  630eaff1  loadli.w r28,  -1840(r30)
001144  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001148  1f0e0010  addli r28, zero, 2048
00114c  7e010ee0  vmmov mr2, r28
001150  630ebff1  loadli.w r28,  -1832(r30)
001154  6a248e34  vor.u.mh vr8{mr2}, r28, vr8
001158  1f0e0020  addli r28, zero, 4096
00115c  7e000ee0  vmmov mr0, r28
001160  630ecff1  loadli.w r28,  -1824(r30)
001164  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
001168  1f0e0040  addli r28, zero, 8192
00116c  2b800000  lui zero, 8
001170  7e010ee0  vmmov mr2, r28
001174  630edff1  loadli.w r28,  -1816(r30)
001178  6a248e34  vor.u.mh vr8{mr2}, r28, vr8
00117c  2b4e0000  lui r28, 4
001180  7e000ee0  vmmov mr0, r28
001184  630eeff1  loadli.w r28,  -1808(r30)
001188  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
00118c  7e0000e0  vmmov mr0, zero
001190  630efff1  loadli.w r28,  -1800(r30)
001194  17200000  xor zero, zero, zero
001198  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
00119c  1f100000  addli zero, zero, 1
0011a0  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
0011a4  630e0ff2  loadli.w r28,  -1792(r30)
0011a8  7e0000e0  vmmov mr0, zero
0011ac  17200000  xor zero, zero, zero
0011b0  1f200000  addli zero, zero, 2
0011b4  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0011b8  630e1ff2  loadli.w r28,  -1784(r30)
0011bc  7e0000e0  vmmov mr0, zero
0011c0  17200000  xor zero, zero, zero
0011c4  16948302  vadd.f.mz.rn vr8{mr1}, vr7, vr8
0011c8  1f400000  addli zero, zero, 4
0011cc  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0011d0  630e2ff2  loadli.w r28,  -1776(r30)
0011d4  7e0000e0  vmmov mr0, zero
0011d8  17200000  xor zero, zero, zero
0011dc  1f001000  addli zero, zero, 8
0011e0  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0011e4  630e3ff2  loadli.w r28,  -1768(r30)
0011e8  fe0100e0  vmmov mr3, zero
0011ec  17200000  xor zero, zero, zero
0011f0  1f002000  addli zero, zero, 16
0011f4  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
0011f8  630e4ff2  loadli.w r28,  -1760(r30)
0011fc  fe0100e0  vmmov mr3, zero
001200  17200000  xor zero, zero, zero
001204  1f004000  addli zero, zero, 32
001208  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
00120c  634e4ff2  loadli.w r28,  -1756(r30)
001210  fe0100e0  vmmov mr3, zero
001214  17200000  xor zero, zero, zero
001218  1f008000  addli zero, zero, 64
00121c  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
001220  630e5ff2  loadli.w r28,  -1752(r30)
001224  7e0100e0  vmmov mr2, zero
001228  17200000  xor zero, zero, zero
00122c  1f000001  addli zero, zero, 128
001230  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
001234  634e5ff2  loadli.w r28,  -1748(r30)
001238  7e0100e0  vmmov mr2, zero
00123c  17200000  xor zero, zero, zero
001240  1f000002  addli zero, zero, 256
001244  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
001248  630e6ff2  loadli.w r28,  -1744(r30)
00124c  7e0100e0  vmmov mr2, zero
001250  17200000  xor zero, zero, zero
001254  1f000004  addli zero, zero, 512
001258  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
00125c  634e6ff2  loadli.w r28,  -1740(r30)
001260  fe0100e0  vmmov mr3, zero
001264  17200000  xor zero, zero, zero
001268  1f000008  addli zero, zero, 1024
00126c  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
001270  630e7ff2  loadli.w r28,  -1736(r30)
001274  7e0100e0  vmmov mr2, zero
001278  17200000  xor zero, zero, zero
00127c  1f000010  addli zero, zero, 2048
001280  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
001284  634e7ff2  loadli.w r28,  -1732(r30)
001288  7e0100e0  vmmov mr2, zero
00128c  17200000  xor zero, zero, zero
001290  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
001294  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
001298  1f0e0020  addli r28, zero, 4096
00129c  7e010ee0  vmmov mr2, r28
0012a0  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0012a4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0012a8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0012ac  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0012b0  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0012b4  9f000040  addli r1, zero, 8192
0012b8  7e8100e0  vmmov mr2, r1
0012bc  ab400000  lui r1, 4
0012c0  ea249134  vor.u.mh vr9{mr2}, r2, vr9
0012c4  7e8100e0  vmmov mr2, r1
0012c8  ab800000  lui r1, 8
0012cc  1f010001  addli r2, zero, 128
0012d0  eaa49134  vor.u.mh vr9{mr2}, r3, vr9
0012d4  7e8100e0  vmmov mr2, r1
0012d8  9f100000  addli r1, zero, 1
0012dc  ea249234  vor.u.mh vr9{mr2}, r4, vr9
0012e0  7e8100e0  vmmov mr2, r1
0012e4  9f200000  addli r1, zero, 2
0012e8  6aa5a234  vor.u.mh vr10{mr2}, r5, vr10
0012ec  7e8100e0  vmmov mr2, r1
0012f0  9f001000  addli r1, zero, 8
0012f4  96929202  vadd.f.mz.rn vr5{mr1}, vr5, vr9
0012f8  6a25a334  vor.u.mh vr10{mr2}, r6, vr10
0012fc  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
001300  7e8000e0  vmmov mr0, r1
001304  9f002000  addli r1, zero, 16
001308  6a25a430  vor.u.mh vr10{mr0}, r8, vr10
00130c  7e8000e0  vmmov mr0, r1
001310  9f004000  addli r1, zero, 32
001314  6aa5a430  vor.u.mh vr10{mr0}, r9, vr10
001318  7e8000e0  vmmov mr0, r1
00131c  9f008000  addli r1, zero, 64
001320  6a25a530  vor.u.mh vr10{mr0}, r10, vr10
001324  7e8000e0  vmmov mr0, r1
001328  9f000001  addli r1, zero, 128
00132c  6aa5a530  vor.u.mh vr10{mr0}, r11, vr10
001330  7e8000e0  vmmov mr0, r1
001334  9f000002  addli r1, zero, 256
001338  6a25a630  vor.u.mh vr10{mr0}, r12, vr10
00133c  7e8000e0  vmmov mr0, r1
001340  9f000008  addli r1, zero, 1024
001344  6aa5a630  vor.u.mh vr10{mr0}, r13, vr10
001348  7e8000e0  vmmov mr0, r1
00134c  9f000010  addli r1, zero, 2048
001350  6a25a736  vor.u.mh vr10{mr3}, r14, vr10
001354  6aa5a730  vor.u.mh vr10{mr0}, r15, vr10
001358  7e8000e0  vmmov mr0, r1
00135c  9f000020  addli r1, zero, 4096
001360  6a25a830  vor.u.mh vr10{mr0}, r16, vr10
001364  7e8000e0  vmmov mr0, r1
001368  9f000040  addli r1, zero, 8192
00136c  6aa5a830  vor.u.mh vr10{mr0}, r17, vr10
001370  7e8000e0  vmmov mr0, r1
001374  ab400000  lui r1, 4
001378  6a25a930  vor.u.mh vr10{mr0}, r18, vr10
00137c  7e8000e0  vmmov mr0, r1
001380  ab800000  lui r1, 8
001384  6aa5a930  vor.u.mh vr10{mr0}, r19, vr10
001388  7e8000e0  vmmov mr0, r1
00138c  9f100000  addli r1, zero, 1
001390  7e8100e0  vmmov mr2, r1
001394  9f200000  addli r1, zero, 2
001398  6a25aa30  vor.u.mh vr10{mr0}, r20, vr10
00139c  eaa5ba34  vor.u.mh vr11{mr2}, r21, vr11
0013a0  7e8100e0  vmmov mr2, r1
0013a4  9f400000  addli r1, zero, 4
0013a8  ea25bb34  vor.u.mh vr11{mr2}, r22, vr11
0013ac  7e8100e0  vmmov mr2, r1
0013b0  9f001000  addli r1, zero, 8
0013b4  9613a302  vadd.f.mz.rn vr7{mr1}, vr6, vr10
0013b8  eaa5bb34  vor.u.mh vr11{mr2}, r23, vr11
0013bc  7e8100e0  vmmov mr2, r1
0013c0  9f002000  addli r1, zero, 16
0013c4  ea25bc34  vor.u.mh vr11{mr2}, r24, vr11
0013c8  7e8100e0  vmmov mr2, r1
0013cc  9f004000  addli r1, zero, 32
0013d0  eaa5bc34  vor.u.mh vr11{mr2}, r25, vr11
0013d4  7e8100e0  vmmov mr2, r1
0013d8  9f008000  addli r1, zero, 64
0013dc  ea25bd34  vor.u.mh vr11{mr2}, r26, vr11
0013e0  7e8100e0  vmmov mr2, r1
0013e4  eaa5bd34  vor.u.mh vr11{mr2}, r27, vr11
0013e8  e3408fef  loadli.w r1,  -2108(r30)
0013ec  7e0101e0  vmmov mr2, r2
0013f0  1f010002  addli r2, zero, 256
0013f4  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
0013f8  e3009fef  loadli.w r1,  -2104(r30)
0013fc  7e0101e0  vmmov mr2, r2
001400  1f010008  addli r2, zero, 1024
001404  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001408  e3409fef  loadli.w r1,  -2100(r30)
00140c  7e0101e0  vmmov mr2, r2
001410  1f010010  addli r2, zero, 2048
001414  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
001418  e300afef  loadli.w r1,  -2096(r30)
00141c  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001420  e340afef  loadli.w r1,  -2092(r30)
001424  7e0101e0  vmmov mr2, r2
001428  1f010020  addli r2, zero, 4096
00142c  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001430  e300bfef  loadli.w r1,  -2088(r30)
001434  7e0101e0  vmmov mr2, r2
001438  1f010040  addli r2, zero, 8192
00143c  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001440  e340bfef  loadli.w r1,  -2084(r30)
001444  7e0101e0  vmmov mr2, r2
001448  2b410000  lui r2, 4
00144c  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001450  e300cfef  loadli.w r1,  -2080(r30)
001454  7e0101e0  vmmov mr2, r2
001458  1f110000  addli r2, zero, 1
00145c  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001460  e340cfef  loadli.w r1,  -2076(r30)
001464  7e0101e0  vmmov mr2, r2
001468  1f210000  addli r2, zero, 2
00146c  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
001470  e300dfef  loadli.w r1,  -2072(r30)
001474  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001478  e340dfef  loadli.w r1,  -2068(r30)
00147c  7e0101e0  vmmov mr2, r2
001480  1f410000  addli r2, zero, 4
001484  1613b202  vadd.f.mz.rn vr6{mr1}, vr4, vr11
001488  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00148c  e300efef  loadli.w r1,  -2064(r30)
001490  7e0101e0  vmmov mr2, r2
001494  1f011000  addli r2, zero, 8
001498  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00149c  e340efef  loadli.w r1,  -2060(r30)
0014a0  7e0101e0  vmmov mr2, r2
0014a4  1f012000  addli r2, zero, 16
0014a8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0014ac  e300ffef  loadli.w r1,  -2056(r30)
0014b0  7e0101e0  vmmov mr2, r2
0014b4  1f014000  addli r2, zero, 32
0014b8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0014bc  e340ffef  loadli.w r1,  -2052(r30)
0014c0  7e0101e0  vmmov mr2, r2
0014c4  1f018000  addli r2, zero, 64
0014c8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0014cc  e3000ff0  loadli.w r1,  -2048(r30)
0014d0  7e0101e0  vmmov mr2, r2
0014d4  1f010001  addli r2, zero, 128
0014d8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0014dc  e3400ff0  loadli.w r1,  -2044(r30)
0014e0  7e0101e0  vmmov mr2, r2
0014e4  1f010002  addli r2, zero, 256
0014e8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0014ec  e3001ff0  loadli.w r1,  -2040(r30)
0014f0  7e0101e0  vmmov mr2, r2
0014f4  1f010008  addli r2, zero, 1024
0014f8  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0014fc  e3401ff0  loadli.w r1,  -2036(r30)
001500  7e0101e0  vmmov mr2, r2
001504  1f010010  addli r2, zero, 2048
001508  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
00150c  e3002ff0  loadli.w r1,  -2032(r30)
001510  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001514  e3402ff0  loadli.w r1,  -2028(r30)
001518  7e0101e0  vmmov mr2, r2
00151c  1f010020  addli r2, zero, 4096
001520  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001524  e3003ff0  loadli.w r1,  -2024(r30)
001528  7e0101e0  vmmov mr2, r2
00152c  1f010040  addli r2, zero, 8192
001530  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001534  e3403ff0  loadli.w r1,  -2020(r30)
001538  7e0101e0  vmmov mr2, r2
00153c  2b410000  lui r2, 4
001540  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001544  e3004ff0  loadli.w r1,  -2016(r30)
001548  7e0101e0  vmmov mr2, r2
00154c  1f110000  addli r2, zero, 1
001550  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001554  e3404ff0  loadli.w r1,  -2012(r30)
001558  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
00155c  e3005ff0  loadli.w r1,  -2008(r30)
001560  7e0001e0  vmmov mr0, r2
001564  1f210000  addli r2, zero, 2
001568  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00156c  e3405ff0  loadli.w r1,  -2004(r30)
001570  7e0001e0  vmmov mr0, r2
001574  1f410000  addli r2, zero, 4
001578  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
00157c  e3006ff0  loadli.w r1,  -2000(r30)
001580  7e0001e0  vmmov mr0, r2
001584  1f011000  addli r2, zero, 8
001588  7e0101e0  vmmov mr2, r2
00158c  1f012000  addli r2, zero, 16
001590  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001594  e3406ff0  loadli.w r1,  -1996(r30)
001598  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00159c  e3007ff0  loadli.w r1,  -1992(r30)
0015a0  7e0101e0  vmmov mr2, r2
0015a4  1f014000  addli r2, zero, 32
0015a8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0015ac  e3407ff0  loadli.w r1,  -1988(r30)
0015b0  7e0101e0  vmmov mr2, r2
0015b4  1f018000  addli r2, zero, 64
0015b8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0015bc  e3008ff0  loadli.w r1,  -1984(r30)
0015c0  7e0101e0  vmmov mr2, r2
0015c4  1f010001  addli r2, zero, 128
0015c8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0015cc  e3408ff0  loadli.w r1,  -1980(r30)
0015d0  7e0101e0  vmmov mr2, r2
0015d4  1f010002  addli r2, zero, 256
0015d8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0015dc  e3009ff0  loadli.w r1,  -1976(r30)
0015e0  7e0101e0  vmmov mr2, r2
0015e4  1f010008  addli r2, zero, 1024
0015e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0015ec  e3409ff0  loadli.w r1,  -1972(r30)
0015f0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0015f4  e300aff0  loadli.w r1,  -1968(r30)
0015f8  fe0101e0  vmmov mr3, r2
0015fc  1f010010  addli r2, zero, 2048
001600  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001604  e340aff0  loadli.w r1,  -1964(r30)
001608  fe0101e0  vmmov mr3, r2
00160c  1f010020  addli r2, zero, 4096
001610  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001614  e300bff0  loadli.w r1,  -1960(r30)
001618  fe0101e0  vmmov mr3, r2
00161c  1f010040  addli r2, zero, 8192
001620  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001624  e340bff0  loadli.w r1,  -1956(r30)
001628  fe0101e0  vmmov mr3, r2
00162c  2b410000  lui r2, 4
001630  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001634  e300cff0  loadli.w r1,  -1952(r30)
001638  fe0101e0  vmmov mr3, r2
00163c  2b810000  lui r2, 8
001640  7e0101e0  vmmov mr2, r2
001644  1f110000  addli r2, zero, 1
001648  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
00164c  e340cff0  loadli.w r1,  -1948(r30)
001650  fe0101e0  vmmov mr3, r2
001654  1f210000  addli r2, zero, 2
001658  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00165c  e300dff0  loadli.w r1,  -1944(r30)
001660  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001664  e340dff0  loadli.w r1,  -1940(r30)
001668  fe0101e0  vmmov mr3, r2
00166c  1f011000  addli r2, zero, 8
001670  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001674  e300eff0  loadli.w r1,  -1936(r30)
001678  fe0101e0  vmmov mr3, r2
00167c  1f012000  addli r2, zero, 16
001680  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
001684  e340eff0  loadli.w r1,  -1932(r30)
001688  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00168c  e300fff0  loadli.w r1,  -1928(r30)
001690  fe0101e0  vmmov mr3, r2
001694  1f014000  addli r2, zero, 32
001698  7e0101e0  vmmov mr2, r2
00169c  1f018000  addli r2, zero, 64
0016a0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0016a4  e340fff0  loadli.w r1,  -1924(r30)
0016a8  fe0101e0  vmmov mr3, r2
0016ac  1f010001  addli r2, zero, 128
0016b0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0016b4  e3400ff1  loadli.w r1,  -1916(r30)
0016b8  7e0101e0  vmmov mr2, r2
0016bc  1f010002  addli r2, zero, 256
0016c0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0016c4  e3401ff1  loadli.w r1,  -1908(r30)
0016c8  fe0101e0  vmmov mr3, r2
0016cc  1f010004  addli r2, zero, 512
0016d0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0016d4  e3402ff1  loadli.w r1,  -1900(r30)
0016d8  7e0101e0  vmmov mr2, r2
0016dc  1f010008  addli r2, zero, 1024
0016e0  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0016e4  e3403ff1  loadli.w r1,  -1892(r30)
0016e8  fe0101e0  vmmov mr3, r2
0016ec  1f010010  addli r2, zero, 2048
0016f0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0016f4  e3404ff1  loadli.w r1,  -1884(r30)
0016f8  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0016fc  e3405ff1  loadli.w r1,  -1876(r30)
001700  fe0101e0  vmmov mr3, r2
001704  1f010020  addli r2, zero, 4096
001708  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00170c  e3406ff1  loadli.w r1,  -1868(r30)
001710  fe0101e0  vmmov mr3, r2
001714  1f010040  addli r2, zero, 8192
001718  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00171c  e3407ff1  loadli.w r1,  -1860(r30)
001720  fe0101e0  vmmov mr3, r2
001724  2b410000  lui r2, 4
001728  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00172c  e3408ff1  loadli.w r1,  -1852(r30)
001730  fe0101e0  vmmov mr3, r2
001734  2b810000  lui r2, 8
001738  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00173c  e3409ff1  loadli.w r1,  -1844(r30)
001740  fe0101e0  vmmov mr3, r2
001744  1f110000  addli r2, zero, 1
001748  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00174c  e340aff1  loadli.w r1,  -1836(r30)
001750  fe0101e0  vmmov mr3, r2
001754  1f210000  addli r2, zero, 2
001758  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
00175c  e340bff1  loadli.w r1,  -1828(r30)
001760  fe0101e0  vmmov mr3, r2
001764  1f011000  addli r2, zero, 8
001768  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
00176c  e340cff1  loadli.w r1,  -1820(r30)
001770  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001774  e340dff1  loadli.w r1,  -1812(r30)
001778  7e0001e0  vmmov mr0, r2
00177c  1f012000  addli r2, zero, 16
001780  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001784  e340eff1  loadli.w r1,  -1804(r30)
001788  7e0001e0  vmmov mr0, r2
00178c  1f014000  addli r2, zero, 32
001790  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001794  e340fff1  loadli.w r1,  -1796(r30)
001798  7e0001e0  vmmov mr0, r2
00179c  1f018000  addli r2, zero, 64
0017a0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017a4  e3400ff2  loadli.w r1,  -1788(r30)
0017a8  7e0001e0  vmmov mr0, r2
0017ac  1f010001  addli r2, zero, 128
0017b0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017b4  e3401ff2  loadli.w r1,  -1780(r30)
0017b8  7e0001e0  vmmov mr0, r2
0017bc  1f010002  addli r2, zero, 256
0017c0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017c4  e3402ff2  loadli.w r1,  -1772(r30)
0017c8  7e0001e0  vmmov mr0, r2
0017cc  1f010008  addli r2, zero, 1024
0017d0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017d4  e3403ff2  loadli.w r1,  -1764(r30)
0017d8  7e0001e0  vmmov mr0, r2
0017dc  1f010010  addli r2, zero, 2048
0017e0  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
0017e4  e3008ff2  loadli.w r1,  -1728(r30)
0017e8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017ec  e3008ff3  loadli.w r1,  -1600(r30)
0017f0  7e0001e0  vmmov mr0, r2
0017f4  1f010020  addli r2, zero, 4096
0017f8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017fc  9f008ff3  addli r1, r30, -1600
001800  00a00000  mfence { lm }
001804  7e0001e0  vmmov mr0, r2
001808  1f010040  addli r2, zero, 8192
00180c  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001810  9f008ff2  addli r1, r30, -1728
001814  b6125402  vmax.f.mz vr5{mr1}, vr8, vr5
001818  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
00181c  e3000ff4  loadli.w r1,  -1536(r30)
001820  36927202  vmax.f.mz vr4{mr1}, vr5, vr7
001824  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001828  9f000ff4  addli r1, r30, -1536
00182c  00a00000  mfence { lm }
001830  7e0001e0  vmmov mr0, r2
001834  2b410000  lui r2, 4
001838  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
00183c  9f008ff5  addli r1, r30, -1344
001840  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001844  e3008ff4  loadli.w r1,  -1472(r30)
001848  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00184c  9f008ff4  addli r1, r30, -1472
001850  00a00000  mfence { lm }
001854  7e0001e0  vmmov mr0, r2
001858  2b810000  lui r2, 8
00185c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
001860  9f000ff6  addli r1, r30, -1280
001864  96923202  vadd.f.mz.rn vr5{mr1}, vr5, vr3
001868  b6116202  vmax.f.mz vr3{mr1}, vr4, vr6
00186c  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001870  e3000ff5  loadli.w r1,  -1408(r30)
001874  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001878  9f000ff5  addli r1, r30, -1408
00187c  00a00000  mfence { lm }
001880  7e0001e0  vmmov mr0, r2
001884  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001888  9f008ff6  addli r1, r30, -1216
00188c  16122202  vadd.f.mz.rn vr4{mr1}, vr4, vr2
001890  36915102  vmax.f.mz vr2{mr1}, vr3, vr5
001894  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
001898  e3407ff3  loadli.w r1,  -1604(r30)
00189c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0018a0  9f008ff5  addli r1, r30, -1344
0018a4  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0018a8  9f008ff7  addli r1, r30, -1088
0018ac  96911102  vadd.f.mz.rn vr3{mr1}, vr3, vr1
0018b0  b6104102  vmax.f.mz vr1{mr1}, vr2, vr4
0018b4  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0018b8  9f000ff6  addli r1, r30, -1280
0018bc  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0018c0  9f008ff6  addli r1, r30, -1216
0018c4  16110102  vadd.f.mz.rn vr2{mr1}, vr2, vr0
0018c8  36903002  vmax.f.mz vr0{mr1}, vr1, vr3
0018cc  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0018d0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0018d4  9f008ff7  addli r1, r30, -1088
0018d8  7a110040  vextracti.f r2, 0(vr0)
0018dc  fa111040  vextracti.f r3, 1(vr0)
0018e0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
0018e4  57cf0400  jal 9848
0018e8  9f008ff7  addli r1, r30, -1088
0018ec  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018f0  fa112040  vextracti.f r3, 2(vr0)
0018f4  57cf0400  jal 9848
0018f8  9f008ff7  addli r1, r30, -1088
0018fc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001900  fa113040  vextracti.f r3, 3(vr0)
001904  57cf0400  jal 9848
001908  9f008ff7  addli r1, r30, -1088
00190c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001910  fa114040  vextracti.f r3, 4(vr0)
001914  57cf0400  jal 9848
001918  9f008ff7  addli r1, r30, -1088
00191c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001920  fa115040  vextracti.f r3, 5(vr0)
001924  57cf0400  jal 9848
001928  9f008ff7  addli r1, r30, -1088
00192c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001930  fa116040  vextracti.f r3, 6(vr0)
001934  57cf0400  jal 9848
001938  9f008ff7  addli r1, r30, -1088
00193c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001940  fa117040  vextracti.f r3, 7(vr0)
001944  57cf0400  jal 9848
001948  9f008ff7  addli r1, r30, -1088
00194c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001950  fa118040  vextracti.f r3, 8(vr0)
001954  57cf0400  jal 9848
001958  9f008ff7  addli r1, r30, -1088
00195c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001960  fa119040  vextracti.f r3, 9(vr0)
001964  57cf0400  jal 9848
001968  9f008ff7  addli r1, r30, -1088
00196c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001970  fa11a040  vextracti.f r3, 10(vr0)
001974  57cf0400  jal 9848
001978  9f008ff7  addli r1, r30, -1088
00197c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001980  fa11b040  vextracti.f r3, 11(vr0)
001984  57cf0400  jal 9848
001988  9f008ff7  addli r1, r30, -1088
00198c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001990  fa11c040  vextracti.f r3, 12(vr0)
001994  57cf0400  jal 9848
001998  9f008ff7  addli r1, r30, -1088
00199c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0019a0  fa11d040  vextracti.f r3, 13(vr0)
0019a4  57cf0400  jal 9848
0019a8  9f008ff7  addli r1, r30, -1088
0019ac  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0019b0  fa11e040  vextracti.f r3, 14(vr0)
0019b4  57cf0400  jal 9848
0019b8  9f008ff7  addli r1, r30, -1088
0019bc  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0019c0  fa11f040  vextracti.f r3, 15(vr0)
0019c4  57cf0400  jal 9848
0019c8  e3405fef  loadli.w r1,  -2132(r30)
0019cc  e3048fef  loadli.w r9,  -2112(r30)
0019d0  73e02000  stores.w r2, 0(r1)
0019d4  00a00300  mfence { lm, sm, gm }
0019d8  80a10404  csr_set csr3, r9
0019dc  00d00100  sync_group
0019e0  63037fef  loadli.w r6,  -2120(r30)
0019e4  bb030300  bneq r6, zero, 224
0019e8  e34b7fef  loadli.w r23,  -2116(r30)
0019ec  efc0cb02  loads.w r1, 44(r23)
0019f0  6fc10b00  loads.w r2, 0(r23)
0019f4  efc14b00  loads.w r3, 4(r23)
0019f8  6fcd8b00  loads.w r26, 8(r23)
0019fc  efcdcb00  loads.w r27, 12(r23)
001a00  6fce0b01  loads.w r28, 16(r23)
001a04  efc94b01  loads.w r19, 20(r23)
001a08  6fca8b01  loads.w r20, 24(r23)
001a0c  efcacb01  loads.w r21, 28(r23)
001a10  6fcb0b02  loads.w r22, 32(r23)
001a14  efcc4b02  loads.w r25, 36(r23)
001a18  6fcc8b02  loads.w r24, 40(r23)
001a1c  67431ff2  storeli.w r1, -1740(r30)
001a20  efc00b03  loads.w r1, 48(r23)
001a24  e7031ff2  storeli.w r1, -1736(r30)
001a28  efc04b03  loads.w r1, 52(r23)
001a2c  e7431ff2  storeli.w r1, -1732(r30)
001a30  efc08b03  loads.w r1, 56(r23)
001a34  e74b1ff2  storeli.w r1, -1604(r30)
001a38  efc0cb03  loads.w r1, 60(r23)
001a3c  00a00000  mfence { lm }
001a40  670c1ff6  storeli.w r1, -1088(r30)
001a44  57cf0400  jal 9848
001a48  9f010d00  addli r3, r26, 0
001a4c  57cf0400  jal 9848
001a50  9f810d00  addli r3, r27, 0
001a54  57cf0400  jal 9848
001a58  9f010e00  addli r3, r28, 0
001a5c  57cf0400  jal 9848
001a60  9f810900  addli r3, r19, 0
001a64  57cf0400  jal 9848
001a68  9f010a00  addli r3, r20, 0
001a6c  57cf0400  jal 9848
001a70  9f810a00  addli r3, r21, 0
001a74  57cf0400  jal 9848
001a78  9f010b00  addli r3, r22, 0
001a7c  57cf0400  jal 9848
001a80  9f810c00  addli r3, r25, 0
001a84  57cf0400  jal 9848
001a88  9f010c00  addli r3, r24, 0
001a8c  57cf0400  jal 9848
001a90  e3416ff2  loadli.w r3,  -1740(r30)
001a94  57cf0400  jal 9848
001a98  e3017ff2  loadli.w r3,  -1736(r30)
001a9c  57cf0400  jal 9848
001aa0  e3417ff2  loadli.w r3,  -1732(r30)
001aa4  57cf0400  jal 9848
001aa8  e3417ff3  loadli.w r3,  -1604(r30)
001aac  57cf0400  jal 9848
001ab0  e3018ff7  loadli.w r3,  -1088(r30)
001ab4  57cf0400  jal 9848
001ab8  63037fef  loadli.w r6,  -2120(r30)
001abc  e3048fef  loadli.w r9,  -2112(r30)
001ac0  73e02b00  stores.w r2, 0(r23)
001ac4  00a00300  mfence { lm, sm, gm }
001ac8  80a10404  csr_set csr3, r9
001acc  00d00100  sync_group
001ad0  e3407fef  loadli.w r1,  -2116(r30)
001ad4  2b010080  lui r2, 524288
001ad8  9f028fee  addli r5, r30, -2240
001adc  9f030040  addli r7, zero, 8192
001ae0  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
001ae4  9f120000  addli r5, zero, 1
001ae8  efc00000  loads.w r1, 0(r1)
001aec  7e8002e0  vmmov mr0, r5
001af0  9f220000  addli r5, zero, 2
001af4  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
001af8  97a02000  xor r1, r1, r2
001afc  1f018ff2  addli r2, r30, -1728
001b00  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001b04  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001b08  7a110040  vextracti.f r2, 0(vr0)
001b0c  fa111040  vextracti.f r3, 1(vr0)
001b10  7a122040  vextracti.f r4, 2(vr0)
001b14  0f010100  exp.f.rn r2, r2
001b18  8f810100  exp.f.rn r3, r3
001b1c  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001b20  0f010200  exp.f.rn r2, r4
001b24  7a123040  vextracti.f r4, 3(vr0)
001b28  7e8002e0  vmmov mr0, r5
001b2c  9f420000  addli r5, zero, 4
001b30  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
001b34  8f010200  exp.f.rn r3, r4
001b38  7a124040  vextracti.f r4, 4(vr0)
001b3c  7e8002e0  vmmov mr0, r5
001b40  9f021000  addli r5, zero, 8
001b44  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001b48  0f010200  exp.f.rn r2, r4
001b4c  7a125040  vextracti.f r4, 5(vr0)
001b50  7e8002e0  vmmov mr0, r5
001b54  9f022000  addli r5, zero, 16
001b58  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
001b5c  8f010200  exp.f.rn r3, r4
001b60  7a126040  vextracti.f r4, 6(vr0)
001b64  7e8002e0  vmmov mr0, r5
001b68  9f024000  addli r5, zero, 32
001b6c  7e8102e0  vmmov mr2, r5
001b70  9f028000  addli r5, zero, 64
001b74  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001b78  0f010200  exp.f.rn r2, r4
001b7c  7a127040  vextracti.f r4, 7(vr0)
001b80  7e8002e0  vmmov mr0, r5
001b84  9f020001  addli r5, zero, 128
001b88  fe8102e0  vmmov mr3, r5
001b8c  9f020002  addli r5, zero, 256
001b90  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
001b94  8f010200  exp.f.rn r3, r4
001b98  7a128040  vextracti.f r4, 8(vr0)
001b9c  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001ba0  0f010200  exp.f.rn r2, r4
001ba4  7a129040  vextracti.f r4, 9(vr0)
001ba8  7e8002e0  vmmov mr0, r5
001bac  9f020004  addli r5, zero, 512
001bb0  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
001bb4  8f010200  exp.f.rn r3, r4
001bb8  7a12a040  vextracti.f r4, 10(vr0)
001bbc  fe8102e0  vmmov mr3, r5
001bc0  9f020008  addli r5, zero, 1024
001bc4  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001bc8  0f010200  exp.f.rn r2, r4
001bcc  7a12b040  vextracti.f r4, 11(vr0)
001bd0  7e8002e0  vmmov mr0, r5
001bd4  9f020010  addli r5, zero, 2048
001bd8  7e8102e0  vmmov mr2, r5
001bdc  9f028ff3  addli r5, r30, -1600
001be0  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
001be4  8f010200  exp.f.rn r3, r4
001be8  7a12c040  vextracti.f r4, 12(vr0)
001bec  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001bf0  0f010200  exp.f.rn r2, r4
001bf4  7a12d040  vextracti.f r4, 13(vr0)
001bf8  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
001bfc  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001c00  8f010200  exp.f.rn r3, r4
001c04  9f020020  addli r5, zero, 4096
001c08  7a12e040  vextracti.f r4, 14(vr0)
001c0c  7e8103e0  vmmov mr2, r7
001c10  ab430000  lui r7, 4
001c14  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001c18  7e8002e0  vmmov mr0, r5
001c1c  fa920040  vextracti.f r5, 0(vr1)
001c20  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001c24  0f010200  exp.f.rn r2, r4
001c28  7a12f040  vextracti.f r4, 15(vr0)
001c2c  7e8003e0  vmmov mr0, r7
001c30  9f430000  addli r7, zero, 4
001c34  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
001c38  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
001c3c  8f010200  exp.f.rn r3, r4
001c40  0f820200  exp.f.rn r4, r5
001c44  7e8103e0  vmmov mr2, r7
001c48  fa921040  vextracti.f r5, 1(vr1)
001c4c  ab830000  lui r7, 8
001c50  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001c54  7e8003e0  vmmov mr0, r7
001c58  0f810200  exp.f.rn r2, r5
001c5c  fa922040  vextracti.f r5, 2(vr1)
001c60  9f030040  addli r7, zero, 8192
001c64  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
001c68  9f110000  addli r3, zero, 1
001c6c  7e8001e0  vmmov mr0, r3
001c70  8f810200  exp.f.rn r3, r5
001c74  9f220000  addli r5, zero, 2
001c78  6a200230  vor.u.mh vr0{mr0}, r4, vr0
001c7c  7a923040  vextracti.f r4, 3(vr1)
001c80  7e8002e0  vmmov mr0, r5
001c84  9f021000  addli r5, zero, 8
001c88  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001c8c  0f010200  exp.f.rn r2, r4
001c90  7a924040  vextracti.f r4, 4(vr1)
001c94  7e8002e0  vmmov mr0, r5
001c98  9f022000  addli r5, zero, 16
001c9c  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001ca0  8f010200  exp.f.rn r3, r4
001ca4  7a925040  vextracti.f r4, 5(vr1)
001ca8  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001cac  0f010200  exp.f.rn r2, r4
001cb0  7a926040  vextracti.f r4, 6(vr1)
001cb4  7e8002e0  vmmov mr0, r5
001cb8  9f024000  addli r5, zero, 32
001cbc  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001cc0  8f010200  exp.f.rn r3, r4
001cc4  7a927040  vextracti.f r4, 7(vr1)
001cc8  7e8002e0  vmmov mr0, r5
001ccc  9f028000  addli r5, zero, 64
001cd0  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001cd4  0f010200  exp.f.rn r2, r4
001cd8  7a928040  vextracti.f r4, 8(vr1)
001cdc  7e8002e0  vmmov mr0, r5
001ce0  9f020001  addli r5, zero, 128
001ce4  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001ce8  8f010200  exp.f.rn r3, r4
001cec  7a929040  vextracti.f r4, 9(vr1)
001cf0  7e8002e0  vmmov mr0, r5
001cf4  9f020002  addli r5, zero, 256
001cf8  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001cfc  0f010200  exp.f.rn r2, r4
001d00  7a92a040  vextracti.f r4, 10(vr1)
001d04  7e8002e0  vmmov mr0, r5
001d08  9f020008  addli r5, zero, 1024
001d0c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001d10  8f010200  exp.f.rn r3, r4
001d14  7a92b040  vextracti.f r4, 11(vr1)
001d18  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001d1c  0f010200  exp.f.rn r2, r4
001d20  7a92c040  vextracti.f r4, 12(vr1)
001d24  fe8102e0  vmmov mr3, r5
001d28  9f020010  addli r5, zero, 2048
001d2c  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
001d30  8f010200  exp.f.rn r3, r4
001d34  7a92d040  vextracti.f r4, 13(vr1)
001d38  fe8102e0  vmmov mr3, r5
001d3c  9f020ff4  addli r5, r30, -1536
001d40  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001d44  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
001d48  0f010200  exp.f.rn r2, r4
001d4c  9f020020  addli r5, zero, 4096
001d50  7a92e040  vextracti.f r4, 14(vr1)
001d54  fe8103e0  vmmov mr3, r7
001d58  ab430000  lui r7, 4
001d5c  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
001d60  7e8002e0  vmmov mr0, r5
001d64  fa920140  vextracti.f r5, 0(vr3)
001d68  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001d6c  8f010200  exp.f.rn r3, r4
001d70  7a92f040  vextracti.f r4, 15(vr1)
001d74  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
001d78  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001d7c  0f010200  exp.f.rn r2, r4
001d80  fe8103e0  vmmov mr3, r7
001d84  0f820200  exp.f.rn r4, r5
001d88  fa921140  vextracti.f r5, 1(vr3)
001d8c  ab830000  lui r7, 8
001d90  7e8001c0  vmmov mr0, mr3
001d94  fe8103e0  vmmov mr3, r7
001d98  9f030040  addli r7, zero, 8192
001d9c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001da0  8f810200  exp.f.rn r3, r5
001da4  fa922140  vextracti.f r5, 2(vr3)
001da8  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001dac  1f110000  addli r2, zero, 1
001db0  7e0001e0  vmmov mr0, r2
001db4  0f810200  exp.f.rn r2, r5
001db8  9f220000  addli r5, zero, 2
001dbc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
001dc0  7a923140  vextracti.f r4, 3(vr3)
001dc4  7e8002e0  vmmov mr0, r5
001dc8  9f021000  addli r5, zero, 8
001dcc  96140102  vadd.f.mz.rn vr9{mr1}, vr2, vr0
001dd0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001dd4  8f010200  exp.f.rn r3, r4
001dd8  7a924140  vextracti.f r4, 4(vr3)
001ddc  7e8002e0  vmmov mr0, r5
001de0  9f022000  addli r5, zero, 16
001de4  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001de8  0f010200  exp.f.rn r2, r4
001dec  7a925140  vextracti.f r4, 5(vr3)
001df0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001df4  8f010200  exp.f.rn r3, r4
001df8  7a926140  vextracti.f r4, 6(vr3)
001dfc  7e8002e0  vmmov mr0, r5
001e00  9f024000  addli r5, zero, 32
001e04  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001e08  0f010200  exp.f.rn r2, r4
001e0c  7a927140  vextracti.f r4, 7(vr3)
001e10  7e8002e0  vmmov mr0, r5
001e14  9f028000  addli r5, zero, 64
001e18  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001e1c  8f010200  exp.f.rn r3, r4
001e20  7a928140  vextracti.f r4, 8(vr3)
001e24  7e8002e0  vmmov mr0, r5
001e28  9f020001  addli r5, zero, 128
001e2c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001e30  0f010200  exp.f.rn r2, r4
001e34  7a929140  vextracti.f r4, 9(vr3)
001e38  7e8002e0  vmmov mr0, r5
001e3c  9f020002  addli r5, zero, 256
001e40  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001e44  8f010200  exp.f.rn r3, r4
001e48  7a92a140  vextracti.f r4, 10(vr3)
001e4c  7e8002e0  vmmov mr0, r5
001e50  9f020004  addli r5, zero, 512
001e54  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001e58  0f010200  exp.f.rn r2, r4
001e5c  7a92b140  vextracti.f r4, 11(vr3)
001e60  7e8002e0  vmmov mr0, r5
001e64  9f020008  addli r5, zero, 1024
001e68  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001e6c  8f010200  exp.f.rn r3, r4
001e70  7a92c140  vextracti.f r4, 12(vr3)
001e74  7e8002e0  vmmov mr0, r5
001e78  9f020010  addli r5, zero, 2048
001e7c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001e80  0f010200  exp.f.rn r2, r4
001e84  7a92d140  vextracti.f r4, 13(vr3)
001e88  7e8002e0  vmmov mr0, r5
001e8c  9f028ff4  addli r5, r30, -1472
001e90  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001e94  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
001e98  8f010200  exp.f.rn r3, r4
001e9c  9f020020  addli r5, zero, 4096
001ea0  7a92e140  vextracti.f r4, 14(vr3)
001ea4  7e8003e0  vmmov mr0, r7
001ea8  ab430000  lui r7, 4
001eac  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
001eb0  fe8102e0  vmmov mr3, r5
001eb4  fa120240  vextracti.f r5, 0(vr4)
001eb8  ea201136  vor.u.mh vr1{mr3}, r2, vr1
001ebc  0f010200  exp.f.rn r2, r4
001ec0  7a92f140  vextracti.f r4, 15(vr3)
001ec4  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
001ec8  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001ecc  8f010200  exp.f.rn r3, r4
001ed0  7e8003e0  vmmov mr0, r7
001ed4  0f820200  exp.f.rn r4, r5
001ed8  fa121240  vextracti.f r5, 1(vr4)
001edc  ab830000  lui r7, 8
001ee0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001ee4  7e8003e0  vmmov mr0, r7
001ee8  0f810200  exp.f.rn r2, r5
001eec  fa122240  vextracti.f r5, 2(vr4)
001ef0  9f030040  addli r7, zero, 8192
001ef4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001ef8  9f110000  addli r3, zero, 1
001efc  7e8001e0  vmmov mr0, r3
001f00  8f810200  exp.f.rn r3, r5
001f04  9f220000  addli r5, zero, 2
001f08  ea213230  vor.u.mh vr3{mr0}, r4, vr3
001f0c  7a123240  vextracti.f r4, 3(vr4)
001f10  7e8002e0  vmmov mr0, r5
001f14  9f021000  addli r5, zero, 8
001f18  96941402  vadd.f.mz.rn vr9{mr1}, vr9, vr1
001f1c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001f20  0f010200  exp.f.rn r2, r4
001f24  7a124240  vextracti.f r4, 4(vr4)
001f28  7e8002e0  vmmov mr0, r5
001f2c  9f022000  addli r5, zero, 16
001f30  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
001f34  8f010200  exp.f.rn r3, r4
001f38  7a125240  vextracti.f r4, 5(vr4)
001f3c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001f40  0f010200  exp.f.rn r2, r4
001f44  7a126240  vextracti.f r4, 6(vr4)
001f48  7e8002e0  vmmov mr0, r5
001f4c  9f024000  addli r5, zero, 32
001f50  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001f54  8f010200  exp.f.rn r3, r4
001f58  7a127240  vextracti.f r4, 7(vr4)
001f5c  7e8002e0  vmmov mr0, r5
001f60  9f028000  addli r5, zero, 64
001f64  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001f68  0f010200  exp.f.rn r2, r4
001f6c  7a128240  vextracti.f r4, 8(vr4)
001f70  7e8002e0  vmmov mr0, r5
001f74  9f020001  addli r5, zero, 128
001f78  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001f7c  8f010200  exp.f.rn r3, r4
001f80  7a129240  vextracti.f r4, 9(vr4)
001f84  7e8002e0  vmmov mr0, r5
001f88  9f020002  addli r5, zero, 256
001f8c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001f90  0f010200  exp.f.rn r2, r4
001f94  7a12a240  vextracti.f r4, 10(vr4)
001f98  7e8002e0  vmmov mr0, r5
001f9c  9f020004  addli r5, zero, 512
001fa0  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001fa4  8f010200  exp.f.rn r3, r4
001fa8  7a12b240  vextracti.f r4, 11(vr4)
001fac  7e8002e0  vmmov mr0, r5
001fb0  9f020008  addli r5, zero, 1024
001fb4  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001fb8  0f010200  exp.f.rn r2, r4
001fbc  7a12c240  vextracti.f r4, 12(vr4)
001fc0  7e8002e0  vmmov mr0, r5
001fc4  9f020010  addli r5, zero, 2048
001fc8  7e8102e0  vmmov mr2, r5
001fcc  9f020ff5  addli r5, r30, -1408
001fd0  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001fd4  8f010200  exp.f.rn r3, r4
001fd8  7a12d240  vextracti.f r4, 13(vr4)
001fdc  7e0001c0  vmmov mr0, mr2
001fe0  7e8103e0  vmmov mr2, r7
001fe4  ab430000  lui r7, 4
001fe8  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001fec  0f010200  exp.f.rn r2, r4
001ff0  7a12e240  vextracti.f r4, 14(vr4)
001ff4  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
001ff8  92925002  vadd.f.mz.rn vr5{mr1}, r1, vr5
001ffc  fa920240  vextracti.f r5, 0(vr5)
002000  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
002004  8f010200  exp.f.rn r3, r4
002008  7a12f240  vextracti.f r4, 15(vr4)
00200c  fe8103e0  vmmov mr3, r7
002010  ab830000  lui r7, 8
002014  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
002018  7e8003e0  vmmov mr0, r7
00201c  ab830000  lui r7, 8
002020  ea213134  vor.u.mh vr3{mr2}, r2, vr3
002024  0f010200  exp.f.rn r2, r4
002028  0f820200  exp.f.rn r4, r5
00202c  fa921240  vextracti.f r5, 1(vr5)
002030  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
002034  8f810200  exp.f.rn r3, r5
002038  fa922240  vextracti.f r5, 2(vr5)
00203c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
002040  1f110000  addli r2, zero, 1
002044  7e0001e0  vmmov mr0, r2
002048  0f810200  exp.f.rn r2, r5
00204c  9f220000  addli r5, zero, 2
002050  6a224230  vor.u.mh vr4{mr0}, r4, vr4
002054  7a923240  vextracti.f r4, 3(vr5)
002058  7e8002e0  vmmov mr0, r5
00205c  9f420000  addli r5, zero, 4
002060  96943402  vadd.f.mz.rn vr9{mr1}, vr9, vr3
002064  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002068  8f010200  exp.f.rn r3, r4
00206c  7a924240  vextracti.f r4, 4(vr5)
002070  7e8002e0  vmmov mr0, r5
002074  9f021000  addli r5, zero, 8
002078  6a224130  vor.u.mh vr4{mr0}, r2, vr4
00207c  0f010200  exp.f.rn r2, r4
002080  7a925240  vextracti.f r4, 5(vr5)
002084  7e8002e0  vmmov mr0, r5
002088  9f022000  addli r5, zero, 16
00208c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002090  8f010200  exp.f.rn r3, r4
002094  7a926240  vextracti.f r4, 6(vr5)
002098  7e8002e0  vmmov mr0, r5
00209c  9f024000  addli r5, zero, 32
0020a0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0020a4  0f010200  exp.f.rn r2, r4
0020a8  7a927240  vextracti.f r4, 7(vr5)
0020ac  7e8002e0  vmmov mr0, r5
0020b0  9f028000  addli r5, zero, 64
0020b4  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0020b8  8f010200  exp.f.rn r3, r4
0020bc  7a928240  vextracti.f r4, 8(vr5)
0020c0  7e8002e0  vmmov mr0, r5
0020c4  9f020001  addli r5, zero, 128
0020c8  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0020cc  0f010200  exp.f.rn r2, r4
0020d0  7a929240  vextracti.f r4, 9(vr5)
0020d4  7e8002e0  vmmov mr0, r5
0020d8  9f020002  addli r5, zero, 256
0020dc  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0020e0  8f010200  exp.f.rn r3, r4
0020e4  7a92a240  vextracti.f r4, 10(vr5)
0020e8  7e8002e0  vmmov mr0, r5
0020ec  9f020004  addli r5, zero, 512
0020f0  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0020f4  0f010200  exp.f.rn r2, r4
0020f8  7a92b240  vextracti.f r4, 11(vr5)
0020fc  7e8002e0  vmmov mr0, r5
002100  9f020008  addli r5, zero, 1024
002104  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002108  8f010200  exp.f.rn r3, r4
00210c  7a92c240  vextracti.f r4, 12(vr5)
002110  7e8002e0  vmmov mr0, r5
002114  9f020010  addli r5, zero, 2048
002118  6a224130  vor.u.mh vr4{mr0}, r2, vr4
00211c  0f010200  exp.f.rn r2, r4
002120  7a92d240  vextracti.f r4, 13(vr5)
002124  7e8002e0  vmmov mr0, r5
002128  9f028ff5  addli r5, r30, -1344
00212c  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002130  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
002134  8f010200  exp.f.rn r3, r4
002138  9f020020  addli r5, zero, 4096
00213c  7a92e240  vextracti.f r4, 14(vr5)
002140  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
002144  7e8002e0  vmmov mr0, r5
002148  fa120340  vextracti.f r5, 0(vr6)
00214c  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002150  0f010200  exp.f.rn r2, r4
002154  7a92f240  vextracti.f r4, 15(vr5)
002158  7e8003e0  vmmov mr0, r7
00215c  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
002160  9f030040  addli r7, zero, 8192
002164  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
002168  8f010200  exp.f.rn r3, r4
00216c  0f820200  exp.f.rn r4, r5
002170  fa121340  vextracti.f r5, 1(vr6)
002174  6a224136  vor.u.mh vr4{mr3}, r2, vr4
002178  0f810200  exp.f.rn r2, r5
00217c  fa122340  vextracti.f r5, 2(vr6)
002180  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002184  9f110000  addli r3, zero, 1
002188  7e8001e0  vmmov mr0, r3
00218c  8f810200  exp.f.rn r3, r5
002190  9f220000  addli r5, zero, 2
002194  ea225230  vor.u.mh vr5{mr0}, r4, vr5
002198  7a123340  vextracti.f r4, 3(vr6)
00219c  fe0100c0  vmmov mr3, mr0
0021a0  7e8002e0  vmmov mr0, r5
0021a4  9f420000  addli r5, zero, 4
0021a8  7e8102e0  vmmov mr2, r5
0021ac  9f021000  addli r5, zero, 8
0021b0  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0021b4  0f010200  exp.f.rn r2, r4
0021b8  7a124340  vextracti.f r4, 4(vr6)
0021bc  7e8002e0  vmmov mr0, r5
0021c0  9f022000  addli r5, zero, 16
0021c4  eaa25134  vor.u.mh vr5{mr2}, r3, vr5
0021c8  8f010200  exp.f.rn r3, r4
0021cc  7a125340  vextracti.f r4, 5(vr6)
0021d0  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0021d4  0f010200  exp.f.rn r2, r4
0021d8  7a126340  vextracti.f r4, 6(vr6)
0021dc  7e8002e0  vmmov mr0, r5
0021e0  9f024000  addli r5, zero, 32
0021e4  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0021e8  8f010200  exp.f.rn r3, r4
0021ec  7a127340  vextracti.f r4, 7(vr6)
0021f0  7e8002e0  vmmov mr0, r5
0021f4  9f028000  addli r5, zero, 64
0021f8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0021fc  0f010200  exp.f.rn r2, r4
002200  7a128340  vextracti.f r4, 8(vr6)
002204  7e8002e0  vmmov mr0, r5
002208  9f020001  addli r5, zero, 128
00220c  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
002210  8f010200  exp.f.rn r3, r4
002214  7a129340  vextracti.f r4, 9(vr6)
002218  7e8002e0  vmmov mr0, r5
00221c  9f020002  addli r5, zero, 256
002220  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002224  0f010200  exp.f.rn r2, r4
002228  7a12a340  vextracti.f r4, 10(vr6)
00222c  7e8002e0  vmmov mr0, r5
002230  9f020004  addli r5, zero, 512
002234  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
002238  8f010200  exp.f.rn r3, r4
00223c  7a12b340  vextracti.f r4, 11(vr6)
002240  7e8002e0  vmmov mr0, r5
002244  9f020008  addli r5, zero, 1024
002248  ea225130  vor.u.mh vr5{mr0}, r2, vr5
00224c  0f010200  exp.f.rn r2, r4
002250  7a12c340  vextracti.f r4, 12(vr6)
002254  7e8002e0  vmmov mr0, r5
002258  9f020010  addli r5, zero, 2048
00225c  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
002260  8f010200  exp.f.rn r3, r4
002264  7a12d340  vextracti.f r4, 13(vr6)
002268  7e8002e0  vmmov mr0, r5
00226c  9f020ff6  addli r5, r30, -1280
002270  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002274  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
002278  0f010200  exp.f.rn r2, r4
00227c  9f020020  addli r5, zero, 4096
002280  7a12e340  vextracti.f r4, 14(vr6)
002284  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
002288  7e8002e0  vmmov mr0, r5
00228c  fa920340  vextracti.f r5, 0(vr7)
002290  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
002294  8f010200  exp.f.rn r3, r4
002298  7a12f340  vextracti.f r4, 15(vr6)
00229c  7e8003e0  vmmov mr0, r7
0022a0  ab430000  lui r7, 4
0022a4  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
0022a8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0022ac  0f010200  exp.f.rn r2, r4
0022b0  0f820200  exp.f.rn r4, r5
0022b4  7e8003e0  vmmov mr0, r7
0022b8  fa921340  vextracti.f r5, 1(vr7)
0022bc  ab830000  lui r7, 8
0022c0  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0022c4  8f810200  exp.f.rn r3, r5
0022c8  7e8003e0  vmmov mr0, r7
0022cc  fa922340  vextracti.f r5, 2(vr7)
0022d0  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0022d4  7e8001c0  vmmov mr0, mr3
0022d8  0f810200  exp.f.rn r2, r5
0022dc  9f220000  addli r5, zero, 2
0022e0  6a236230  vor.u.mh vr6{mr0}, r4, vr6
0022e4  7a923340  vextracti.f r4, 3(vr7)
0022e8  fe8102e0  vmmov mr3, r5
0022ec  9f021000  addli r5, zero, 8
0022f0  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
0022f4  8f010200  exp.f.rn r3, r4
0022f8  7a924340  vextracti.f r4, 4(vr7)
0022fc  fe8102e0  vmmov mr3, r5
002300  9f022000  addli r5, zero, 16
002304  6a236134  vor.u.mh vr6{mr2}, r2, vr6
002308  0f010200  exp.f.rn r2, r4
00230c  7a925340  vextracti.f r4, 5(vr7)
002310  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
002314  8f010200  exp.f.rn r3, r4
002318  7a926340  vextracti.f r4, 6(vr7)
00231c  fe8102e0  vmmov mr3, r5
002320  9f024000  addli r5, zero, 32
002324  6a236136  vor.u.mh vr6{mr3}, r2, vr6
002328  0f010200  exp.f.rn r2, r4
00232c  7a927340  vextracti.f r4, 7(vr7)
002330  fe8102e0  vmmov mr3, r5
002334  9f028000  addli r5, zero, 64
002338  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
00233c  8f010200  exp.f.rn r3, r4
002340  7a928340  vextracti.f r4, 8(vr7)
002344  fe8102e0  vmmov mr3, r5
002348  9f020001  addli r5, zero, 128
00234c  6a236136  vor.u.mh vr6{mr3}, r2, vr6
002350  0f010200  exp.f.rn r2, r4
002354  7a929340  vextracti.f r4, 9(vr7)
002358  fe8102e0  vmmov mr3, r5
00235c  9f020002  addli r5, zero, 256
002360  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
002364  8f010200  exp.f.rn r3, r4
002368  7a92a340  vextracti.f r4, 10(vr7)
00236c  fe8102e0  vmmov mr3, r5
002370  9f020004  addli r5, zero, 512
002374  6a236136  vor.u.mh vr6{mr3}, r2, vr6
002378  0f010200  exp.f.rn r2, r4
00237c  7a92b340  vextracti.f r4, 11(vr7)
002380  fe8102e0  vmmov mr3, r5
002384  9f020008  addli r5, zero, 1024
002388  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
00238c  8f010200  exp.f.rn r3, r4
002390  7a92c340  vextracti.f r4, 12(vr7)
002394  fe8102e0  vmmov mr3, r5
002398  9f020010  addli r5, zero, 2048
00239c  6a236136  vor.u.mh vr6{mr3}, r2, vr6
0023a0  0f010200  exp.f.rn r2, r4
0023a4  fe8102e0  vmmov mr3, r5
0023a8  7a92d340  vextracti.f r4, 13(vr7)
0023ac  9f028ff6  addli r5, r30, -1216
0023b0  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
0023b4  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
0023b8  8f010200  exp.f.rn r3, r4
0023bc  7a92e340  vextracti.f r4, 14(vr7)
0023c0  9f020040  addli r5, zero, 8192
0023c4  12948002  vadd.f.mz.rn vr8{mr1}, r1, vr8
0023c8  9f000020  addli r1, zero, 4096
0023cc  fe8100e0  vmmov mr3, r1
0023d0  8f000200  exp.f.rn r1, r4
0023d4  7a120440  vextracti.f r4, 0(vr8)
0023d8  6a236136  vor.u.mh vr6{mr3}, r2, vr6
0023dc  7a91f340  vextracti.f r2, 15(vr7)
0023e0  fe8102e0  vmmov mr3, r5
0023e4  ab420000  lui r5, 4
0023e8  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
0023ec  0f010100  exp.f.rn r2, r2
0023f0  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
0023f4  8f010200  exp.f.rn r3, r4
0023f8  7a121440  vextracti.f r4, 1(vr8)
0023fc  fe8102e0  vmmov mr3, r5
002400  ab820000  lui r5, 8
002404  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
002408  8f000200  exp.f.rn r1, r4
00240c  7a122440  vextracti.f r4, 2(vr8)
002410  fe8102e0  vmmov mr3, r5
002414  6a236136  vor.u.mh vr6{mr3}, r2, vr6
002418  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
00241c  0f010200  exp.f.rn r2, r4
002420  1f220000  addli r4, zero, 2
002424  fa113440  vextracti.f r3, 3(vr8)
002428  7e0002e0  vmmov mr0, r4
00242c  1f021000  addli r4, zero, 8
002430  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002434  8f800100  exp.f.rn r1, r3
002438  fa114440  vextracti.f r3, 4(vr8)
00243c  7e0002e0  vmmov mr0, r4
002440  1f022000  addli r4, zero, 16
002444  ea237134  vor.u.mh vr7{mr2}, r2, vr7
002448  0f810100  exp.f.rn r2, r3
00244c  fa115440  vextracti.f r3, 5(vr8)
002450  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002454  8f800100  exp.f.rn r1, r3
002458  fa116440  vextracti.f r3, 6(vr8)
00245c  7e0002e0  vmmov mr0, r4
002460  1f024000  addli r4, zero, 32
002464  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002468  0f810100  exp.f.rn r2, r3
00246c  fa117440  vextracti.f r3, 7(vr8)
002470  7e0002e0  vmmov mr0, r4
002474  1f028000  addli r4, zero, 64
002478  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00247c  8f800100  exp.f.rn r1, r3
002480  fa118440  vextracti.f r3, 8(vr8)
002484  7e0002e0  vmmov mr0, r4
002488  1f020001  addli r4, zero, 128
00248c  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002490  0f810100  exp.f.rn r2, r3
002494  fa119440  vextracti.f r3, 9(vr8)
002498  7e0002e0  vmmov mr0, r4
00249c  1f020002  addli r4, zero, 256
0024a0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0024a4  8f800100  exp.f.rn r1, r3
0024a8  fa11a440  vextracti.f r3, 10(vr8)
0024ac  7e0002e0  vmmov mr0, r4
0024b0  1f020004  addli r4, zero, 512
0024b4  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0024b8  0f810100  exp.f.rn r2, r3
0024bc  fa11b440  vextracti.f r3, 11(vr8)
0024c0  7e0002e0  vmmov mr0, r4
0024c4  1f020008  addli r4, zero, 1024
0024c8  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0024cc  8f800100  exp.f.rn r1, r3
0024d0  fa11c440  vextracti.f r3, 12(vr8)
0024d4  7e0002e0  vmmov mr0, r4
0024d8  1f020010  addli r4, zero, 2048
0024dc  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0024e0  0f810100  exp.f.rn r2, r3
0024e4  fa11d440  vextracti.f r3, 13(vr8)
0024e8  7e0002e0  vmmov mr0, r4
0024ec  1f020020  addli r4, zero, 4096
0024f0  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0024f4  8f800100  exp.f.rn r1, r3
0024f8  fa11e440  vextracti.f r3, 14(vr8)
0024fc  7e0002e0  vmmov mr0, r4
002500  1f020040  addli r4, zero, 8192
002504  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002508  0f810100  exp.f.rn r2, r3
00250c  fa11f440  vextracti.f r3, 15(vr8)
002510  7e0002e0  vmmov mr0, r4
002514  16944402  vadd.f.mz.rn vr8{mr1}, vr9, vr4
002518  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
00251c  8f800100  exp.f.rn r1, r3
002520  ab410000  lui r3, 4
002524  16145402  vadd.f.mz.rn vr8{mr1}, vr8, vr5
002528  7e8001e0  vmmov mr0, r3
00252c  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002530  16146402  vadd.f.mz.rn vr8{mr1}, vr8, vr6
002534  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
002538  16147402  vadd.f.mz.rn vr8{mr1}, vr8, vr7
00253c  fa100440  vextracti.f r1, 0(vr8)
002540  7a111440  vextracti.f r2, 1(vr8)
002544  8be02010  add.f.rn r1, r1, r2
002548  7a112440  vextracti.f r2, 2(vr8)
00254c  8b601110  add.f.rn r1, r2, r1
002550  7a113440  vextracti.f r2, 3(vr8)
002554  8b601110  add.f.rn r1, r2, r1
002558  7a114440  vextracti.f r2, 4(vr8)
00255c  8b601110  add.f.rn r1, r2, r1
002560  7a115440  vextracti.f r2, 5(vr8)
002564  8b601110  add.f.rn r1, r2, r1
002568  7a116440  vextracti.f r2, 6(vr8)
00256c  8b601110  add.f.rn r1, r2, r1
002570  7a117440  vextracti.f r2, 7(vr8)
002574  8b601110  add.f.rn r1, r2, r1
002578  7a118440  vextracti.f r2, 8(vr8)
00257c  8b601110  add.f.rn r1, r2, r1
002580  7a119440  vextracti.f r2, 9(vr8)
002584  8b601110  add.f.rn r1, r2, r1
002588  7a11a440  vextracti.f r2, 10(vr8)
00258c  8b601110  add.f.rn r1, r2, r1
002590  7a11b440  vextracti.f r2, 11(vr8)
002594  8b601110  add.f.rn r1, r2, r1
002598  7a11c440  vextracti.f r2, 12(vr8)
00259c  8b601110  add.f.rn r1, r2, r1
0025a0  7a11d440  vextracti.f r2, 13(vr8)
0025a4  8b601110  add.f.rn r1, r2, r1
0025a8  7a11e440  vextracti.f r2, 14(vr8)
0025ac  8b601110  add.f.rn r1, r2, r1
0025b0  7a11f440  vextracti.f r2, 15(vr8)
0025b4  8b601110  add.f.rn r1, r2, r1
0025b8  63015fef  loadli.w r2,  -2136(r30)
0025bc  73601100  stores.w r1, 0(r2)
0025c0  9f100000  addli r1, zero, 1
0025c4  00a00300  mfence { lm, sm, gm }
0025c8  80a10404  csr_set csr3, r9
0025cc  00d00100  sync_group
0025d0  7e8000e0  vmmov mr0, r1
0025d4  9f200000  addli r1, zero, 2
0025d8  7e8100e0  vmmov mr2, r1
0025dc  3b6103ee  bneq r6, zero, -9128
0025e0  63426fef  loadli.w r4,  -2124(r30)
0025e4  ef400200  loads.w r1, 0(r4)
0025e8  6f414200  loads.w r2, 4(r4)
0025ec  ef418200  loads.w r3, 8(r4)
0025f0  8be02010  add.f.rn r1, r1, r2
0025f4  6f41c200  loads.w r2, 12(r4)
0025f8  8be03010  add.f.rn r1, r1, r3
0025fc  ef410201  loads.w r3, 16(r4)
002600  8be02010  add.f.rn r1, r1, r2
002604  6f414201  loads.w r2, 20(r4)
002608  8be03010  add.f.rn r1, r1, r3
00260c  ef418201  loads.w r3, 24(r4)
002610  8be02010  add.f.rn r1, r1, r2
002614  6f41c201  loads.w r2, 28(r4)
002618  8be03010  add.f.rn r1, r1, r3
00261c  ef410202  loads.w r3, 32(r4)
002620  8be02010  add.f.rn r1, r1, r2
002624  6f414202  loads.w r2, 36(r4)
002628  8be03010  add.f.rn r1, r1, r3
00262c  ef418202  loads.w r3, 40(r4)
002630  8be02010  add.f.rn r1, r1, r2
002634  6f41c202  loads.w r2, 44(r4)
002638  8be03010  add.f.rn r1, r1, r3
00263c  ef410203  loads.w r3, 48(r4)
002640  8be02010  add.f.rn r1, r1, r2
002644  6f414203  loads.w r2, 52(r4)
002648  8be03010  add.f.rn r1, r1, r3
00264c  ef418203  loads.w r3, 56(r4)
002650  8be02010  add.f.rn r1, r1, r2
002654  6f41c203  loads.w r2, 60(r4)
002658  8be03010  add.f.rn r1, r1, r3
00265c  8be02010  add.f.rn r1, r1, r2
002660  73601200  stores.w r1, 0(r4)
002664  5b7afbff  j -9264
002668  9f0e0fee  addli sp, r30, -2304
00266c  9f8e0e12  addli sp, sp, 2304
002670  00a00300  mfence { lm, sm, gm }
002674  00100000  exit
002678  9f8efeff  addli sp, sp, -8
00267c  9f000100  addli r1, r2, 0
002680  2bf1ff7f  lui r2, 524287
002684  ab02807f  lui r5, 522240
002688  67c0ee01  storeli.w r30, 4(sp)
00268c  6780fe01  storeli.w r31, 0(sp)
002690  1f8f1e00  addli r30, sp, 8
002694  1b12f1ff  ori r4, r2, 4095
002698  17814000  and r2, r1, r4
00269c  13832204  setlt.u r6, r5, r2
0026a0  1f810100  addli r2, r3, 0
0026a4  bb210300  bneq r6, zero, 104
0026a8  97014100  and r3, r2, r4
0026ac  93813204  setlt.u r3, r5, r3
0026b0  3be10100  bneq r3, zero, 88
0026b4  abf1ffff  lui r3, 1048575
0026b8  17221100  xor r4, r2, r1
0026bc  9b91f1ff  ori r3, r3, 4095
0026c0  3fa04100  blt.s r3, r4, 8
0026c4  5b0b0000  j 88
0026c8  9b319100  slli r3, r2, 9
0026cc  9bb29000  slli r5, r1, 9
0026d0  1b427101  srli r4, r2, 23
0026d4  1bc37001  srli r6, r1, 23
0026d8  93e32004  setlt.f r7, r1, r2
0026dc  93810100  seteq r3, r3, zero
0026e0  93820200  seteq r5, r5, zero
0026e4  1b02f20f  andi r4, r4, 255
0026e8  1b03f30f  andi r6, r6, 255
0026ec  1b72f20f  setlti r4, r4, 255
0026f0  1b73f30f  setlti r6, r6, 255
0026f4  97113200  or r3, r4, r3
0026f8  17125300  or r4, r6, r5
0026fc  97013200  and r3, r4, r3
002700  97813300  and r3, r7, r3
002704  3ba00100  bneq r3, zero, 8
002708  1f810000  addli r2, r1, 0
00270c  e38f0e00  loadli.w r31,  0(sp)
002710  63cf0e00  loadli.w r30,  4(sp)
002714  9f8e1e00  addli sp, sp, 8
002718  5f800f00  jr r31, 0
00271c  bfcf00fe  blt.s r1, zero, -16
002720  5bfdffff  j -24
002724  00100000  exit
002728  00100000  exit
00272c  00100000  exit
002730  00100000  exit
002734  00100000  exit
002738  00100000  exit
00273c  00100000  exit
002740  00100000  exit
002744  00100000  exit
002748  00100000  exit
00274c  00100000  exit
002750  00100000  exit
002754  00100000  exit
002758  00100000  exit
00275c  00100000  exit
002760  00100000  exit
002764  00100000  exit
002768  00100000  exit
00276c  00100000  exit
002770  00100000  exit
002774  00100000  exit
002778  00100000  exit
00277c  00100000  exit
002780  00100000  exit
002784  00100000  exit
002788  00100000  exit
00278c  00100000  exit
002790  00100000  exit
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
