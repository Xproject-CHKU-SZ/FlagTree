000000  9f8e8eed  addli sp, sp, -2368
000004  2b010000  lui r2, 0
000008  80300002  core_id r1
00000c  1f8f0e12  addli r30, sp, 2304
000010  00550002  load_param_i r10, 0
000014  9bb12000  slli r3, r1, 2
000018  1f010100  addli r2, r2, 0
00001c  63445f00  loadli.w r8,  44(r30)
000020  63025f00  loadli.w r4,  40(r30)
000024  63036f00  loadli.w r6,  48(r30)
000028  8b932110  add.s r7, r3, r2
00002c  0b124420  mul.s r4, r8, r4
000030  9f822320  addli r5, r7, 4112
000034  0b126220  mul.s r4, r4, r6
000038  e70a5fee  storeli.w r5, -2136(r30)
00003c  73e00200  stores.w zero, 0(r5)
000040  abf20000  lui r5, 15
000044  00a00300  mfence { lm, sm, gm }
000048  9b94f2ff  ori r9, r5, 4095
00004c  abf27fff  lui r5, 1046527
000050  9b92f2ff  ori r5, r5, 4095
000054  80a10404  csr_set csr3, r9
000058  00d00100  sync_group
00005c  e74a7fee  storeli.w r7, -2132(r30)
000060  73e05300  stores.w r5, 0(r7)
000064  00a00300  mfence { lm, sm, gm }
000068  80a10404  csr_set csr3, r9
00006c  00d00100  sync_group
000070  e7034fee  storeli.w r4, -2248(r30)
000074  4b64a212  ble.s r4, r10, 9496
000078  1f022000  addli r4, zero, 16
00007c  80d30002  load_param_i r7, 1
000080  9f250000  addli r11, zero, 2
000084  eb528f00  load.d r[6:7], 8(r30)
000088  6e25a562  vxor.u.mz vr10{mr1}, vr10, vr10
00008c  670c9fee  storeli.w r9, -2112(r30)
000090  0b924030  div.s r4, r1, r4
000094  67437fee  storeli.w r7, -2252(r30)
000098  abf3ffff  lui r7, 1048575
00009c  9b9303fc  ori r7, r7, 4032
0000a0  97817100  and r3, r3, r7
0000a4  1b344200  slli r8, r4, 4
0000a8  1b32b200  slli r4, r4, 11
0000ac  0b948018  sub.s r8, r1, r8
0000b0  9b80f000  andi r1, r1, 15
0000b4  9b337400  slli r7, r8, 7
0000b8  0b942110  add.s r8, r3, r2
0000bc  e70b1fee  storeli.w r1, -2120(r30)
0000c0  33910328  sext_int2long r[3:4], r7
0000c4  0b924310  add.s r4, r7, r4
0000c8  9f002420  addli r1, r8, 4112
0000cc  9f030004  addli r7, zero, 512
0000d0  e74b8fee  storeli.w r8, -2116(r30)
0000d4  1731b102  sll.d r[3:4], r[3:4], r11
0000d8  67034fee  storeli.w r4, -2256(r30)
0000dc  674b1fee  storeli.w r1, -2124(r30)
0000e0  9f008fee  addli r1, r30, -2240
0000e4  1f024fef  addli r4, r30, -2144
0000e8  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0000ec  1f030ff8  addli r6, r30, -1024
0000f0  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0000f4  73302200  store.d r[3:4], 0(r4)
0000f8  db030000  j 28
0000fc  63457fee  loadli.w r10,  -2244(r30)
000100  e3406fee  loadli.w r1,  -2252(r30)
000104  0b151510  add.s r10, r10, r1
000108  e3007fee  loadli.w r1,  -2248(r30)
00010c  3f201500  blt.s r10, r1, 8
000110  db8f0400  j 9340
000114  e3006f00  loadli.w r1,  48(r30)
000118  63415f00  loadli.w r2,  44(r30)
00011c  e743afee  storeli.w r10, -2244(r30)
000120  9f110000  addli r3, zero, 1
000124  8b101530  div.s r1, r10, r1
000128  8b902030  div.s r1, r1, r2
00012c  63016fee  loadli.w r2,  -2256(r30)
000130  9bb0e000  slli r1, r1, 14
000134  8b101110  add.s r1, r2, r1
000138  1f010004  addli r2, zero, 512
00013c  7e0101e0  vmmov mr2, r2
000140  1f410000  addli r2, zero, 4
000144  670b1fee  storeli.w r1, -2128(r30)
000148  9f000000  addli r1, zero, 0
00014c  00a00000  mfence { lm }
000150  fe0101e0  vmmov mr3, r2
000154  5b490100  j 2632
000158  00a00300  mfence { lm, sm, gm }
00015c  80a10404  csr_set csr3, r9
000160  00d00100  sync_group
000164  e3406fef  loadli.w r1,  -2124(r30)
000168  7a110140  vextracti.f r2, 0(vr2)
00016c  fa111140  vextracti.f r3, 1(vr2)
000170  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
000174  7a122140  vextracti.f r4, 2(vr2)
000178  9f420000  addli r5, zero, 4
00017c  1f030040  addli r6, zero, 8192
000180  9f030004  addli r7, zero, 512
000184  efc00000  loads.w r1, 0(r1)
000188  0f011118  div.f.rn r2, r2, r1
00018c  8f811118  div.f.rn r3, r3, r1
000190  6a248130  vor.u.mh vr8{mr0}, r2, vr8
000194  0f011218  div.f.rn r2, r4, r1
000198  7a123140  vextracti.f r4, 3(vr2)
00019c  7e8002e0  vmmov mr0, r5
0001a0  9f021000  addli r5, zero, 8
0001a4  6aa48134  vor.u.mh vr8{mr2}, r3, vr8
0001a8  8f011218  div.f.rn r3, r4, r1
0001ac  7a124140  vextracti.f r4, 4(vr2)
0001b0  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0001b4  0f011218  div.f.rn r2, r4, r1
0001b8  7a125140  vextracti.f r4, 5(vr2)
0001bc  7e8002e0  vmmov mr0, r5
0001c0  9f022000  addli r5, zero, 16
0001c4  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
0001c8  8f011218  div.f.rn r3, r4, r1
0001cc  7a126140  vextracti.f r4, 6(vr2)
0001d0  7e8002e0  vmmov mr0, r5
0001d4  9f024000  addli r5, zero, 32
0001d8  fe8102e0  vmmov mr3, r5
0001dc  9f028000  addli r5, zero, 64
0001e0  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0001e4  0f011218  div.f.rn r2, r4, r1
0001e8  7a127140  vextracti.f r4, 7(vr2)
0001ec  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
0001f0  8f011218  div.f.rn r3, r4, r1
0001f4  7a128140  vextracti.f r4, 8(vr2)
0001f8  fe8102e0  vmmov mr3, r5
0001fc  9f020001  addli r5, zero, 128
000200  6a248136  vor.u.mh vr8{mr3}, r2, vr8
000204  0f011218  div.f.rn r2, r4, r1
000208  7a129140  vextracti.f r4, 9(vr2)
00020c  fe8102e0  vmmov mr3, r5
000210  9f020002  addli r5, zero, 256
000214  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
000218  8f011218  div.f.rn r3, r4, r1
00021c  7a12a140  vextracti.f r4, 10(vr2)
000220  fe8102e0  vmmov mr3, r5
000224  9f020004  addli r5, zero, 512
000228  7e8002e0  vmmov mr0, r5
00022c  9f020008  addli r5, zero, 1024
000230  6a248136  vor.u.mh vr8{mr3}, r2, vr8
000234  0f011218  div.f.rn r2, r4, r1
000238  7a12b140  vextracti.f r4, 11(vr2)
00023c  fe8102e0  vmmov mr3, r5
000240  9f020010  addli r5, zero, 2048
000244  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
000248  8f011218  div.f.rn r3, r4, r1
00024c  7a12c140  vextracti.f r4, 12(vr2)
000250  6a248136  vor.u.mh vr8{mr3}, r2, vr8
000254  0f011218  div.f.rn r2, r4, r1
000258  7a12d140  vextracti.f r4, 13(vr2)
00025c  fe8102e0  vmmov mr3, r5
000260  9f020020  addli r5, zero, 4096
000264  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
000268  8f011218  div.f.rn r3, r4, r1
00026c  7a12e140  vextracti.f r4, 14(vr2)
000270  fe8102e0  vmmov mr3, r5
000274  fa120040  vextracti.f r5, 0(vr0)
000278  6a248136  vor.u.mh vr8{mr3}, r2, vr8
00027c  0f011218  div.f.rn r2, r4, r1
000280  7a12f140  vextracti.f r4, 15(vr2)
000284  fe0103e0  vmmov mr3, r6
000288  2b430000  lui r6, 4
00028c  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
000290  7e0003e0  vmmov mr0, r6
000294  2b830000  lui r6, 8
000298  6aa48136  vor.u.mh vr8{mr3}, r3, vr8
00029c  8f011218  div.f.rn r3, r4, r1
0002a0  0f821218  div.f.rn r4, r5, r1
0002a4  fa121040  vextracti.f r5, 1(vr0)
0002a8  6a248130  vor.u.mh vr8{mr0}, r2, vr8
0002ac  fe0101c0  vmmov mr3, mr2
0002b0  7e0103e0  vmmov mr2, r6
0002b4  0f811218  div.f.rn r2, r5, r1
0002b8  fa122040  vextracti.f r5, 2(vr0)
0002bc  1f030040  addli r6, zero, 8192
0002c0  6aa48134  vor.u.mh vr8{mr2}, r3, vr8
0002c4  9f110000  addli r3, zero, 1
0002c8  7e8001e0  vmmov mr0, r3
0002cc  8f811218  div.f.rn r3, r5, r1
0002d0  9f420000  addli r5, zero, 4
0002d4  6a212230  vor.u.mh vr2{mr0}, r4, vr2
0002d8  7a123040  vextracti.f r4, 3(vr0)
0002dc  7e8102e0  vmmov mr2, r5
0002e0  9f021000  addli r5, zero, 8
0002e4  6a212136  vor.u.mh vr2{mr3}, r2, vr2
0002e8  0f011218  div.f.rn r2, r4, r1
0002ec  7a124040  vextracti.f r4, 4(vr0)
0002f0  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0002f4  8f011218  div.f.rn r3, r4, r1
0002f8  7a125040  vextracti.f r4, 5(vr0)
0002fc  7e8102e0  vmmov mr2, r5
000300  9f022000  addli r5, zero, 16
000304  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000308  0f011218  div.f.rn r2, r4, r1
00030c  7a126040  vextracti.f r4, 6(vr0)
000310  7e8102e0  vmmov mr2, r5
000314  9f024000  addli r5, zero, 32
000318  fe8102e0  vmmov mr3, r5
00031c  9f028000  addli r5, zero, 64
000320  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000324  8f011218  div.f.rn r3, r4, r1
000328  7a127040  vextracti.f r4, 7(vr0)
00032c  7e8102e0  vmmov mr2, r5
000330  9f020001  addli r5, zero, 128
000334  6a212136  vor.u.mh vr2{mr3}, r2, vr2
000338  0f011218  div.f.rn r2, r4, r1
00033c  7a128040  vextracti.f r4, 8(vr0)
000340  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000344  8f011218  div.f.rn r3, r4, r1
000348  7a129040  vextracti.f r4, 9(vr0)
00034c  7e8102e0  vmmov mr2, r5
000350  9f020002  addli r5, zero, 256
000354  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000358  0f011218  div.f.rn r2, r4, r1
00035c  7a12a040  vextracti.f r4, 10(vr0)
000360  7e8102e0  vmmov mr2, r5
000364  9f020004  addli r5, zero, 512
000368  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
00036c  8f011218  div.f.rn r3, r4, r1
000370  7a12b040  vextracti.f r4, 11(vr0)
000374  7e8102e0  vmmov mr2, r5
000378  9f020008  addli r5, zero, 1024
00037c  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000380  0f011218  div.f.rn r2, r4, r1
000384  7a12c040  vextracti.f r4, 12(vr0)
000388  7e8102e0  vmmov mr2, r5
00038c  9f020010  addli r5, zero, 2048
000390  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
000394  8f011218  div.f.rn r3, r4, r1
000398  7a12d040  vextracti.f r4, 13(vr0)
00039c  7e8102e0  vmmov mr2, r5
0003a0  9f020020  addli r5, zero, 4096
0003a4  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0003a8  0f011218  div.f.rn r2, r4, r1
0003ac  7a12e040  vextracti.f r4, 14(vr0)
0003b0  7e8102e0  vmmov mr2, r5
0003b4  fa920040  vextracti.f r5, 0(vr1)
0003b8  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0003bc  8f011218  div.f.rn r3, r4, r1
0003c0  7a12f040  vextracti.f r4, 15(vr0)
0003c4  7e0103e0  vmmov mr2, r6
0003c8  2b430000  lui r6, 4
0003cc  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
0003d0  6a212134  vor.u.mh vr2{mr2}, r2, vr2
0003d4  0f011218  div.f.rn r2, r4, r1
0003d8  0f821218  div.f.rn r4, r5, r1
0003dc  fa921040  vextracti.f r5, 1(vr1)
0003e0  7e0103e0  vmmov mr2, r6
0003e4  2b830000  lui r6, 8
0003e8  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
0003ec  8f811218  div.f.rn r3, r5, r1
0003f0  fa922040  vextracti.f r5, 2(vr1)
0003f4  7e0103e0  vmmov mr2, r6
0003f8  1f030040  addli r6, zero, 8192
0003fc  6a212134  vor.u.mh vr2{mr2}, r2, vr2
000400  6a200230  vor.u.mh vr0{mr0}, r4, vr0
000404  0f811218  div.f.rn r2, r5, r1
000408  9f220000  addli r5, zero, 2
00040c  7a923040  vextracti.f r4, 3(vr1)
000410  7e8002e0  vmmov mr0, r5
000414  9f420000  addli r5, zero, 4
000418  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00041c  8f011218  div.f.rn r3, r4, r1
000420  7a924040  vextracti.f r4, 4(vr1)
000424  7e8002e0  vmmov mr0, r5
000428  9f021000  addli r5, zero, 8
00042c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000430  0f011218  div.f.rn r2, r4, r1
000434  7a925040  vextracti.f r4, 5(vr1)
000438  7e8002e0  vmmov mr0, r5
00043c  9f022000  addli r5, zero, 16
000440  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000444  8f011218  div.f.rn r3, r4, r1
000448  7a926040  vextracti.f r4, 6(vr1)
00044c  7e8002e0  vmmov mr0, r5
000450  9f028000  addli r5, zero, 64
000454  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000458  0f011218  div.f.rn r2, r4, r1
00045c  7a927040  vextracti.f r4, 7(vr1)
000460  7e8002e0  vmmov mr0, r5
000464  9f020001  addli r5, zero, 128
000468  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
00046c  8f011218  div.f.rn r3, r4, r1
000470  7a928040  vextracti.f r4, 8(vr1)
000474  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000478  0f011218  div.f.rn r2, r4, r1
00047c  7a929040  vextracti.f r4, 9(vr1)
000480  7e8002e0  vmmov mr0, r5
000484  9f020002  addli r5, zero, 256
000488  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
00048c  8f011218  div.f.rn r3, r4, r1
000490  7a92a040  vextracti.f r4, 10(vr1)
000494  7e8002e0  vmmov mr0, r5
000498  9f020004  addli r5, zero, 512
00049c  7e8102e0  vmmov mr2, r5
0004a0  9f020008  addli r5, zero, 1024
0004a4  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0004a8  0f011218  div.f.rn r2, r4, r1
0004ac  7a92b040  vextracti.f r4, 11(vr1)
0004b0  7e8002e0  vmmov mr0, r5
0004b4  9f020010  addli r5, zero, 2048
0004b8  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
0004bc  8f011218  div.f.rn r3, r4, r1
0004c0  7a92c040  vextracti.f r4, 12(vr1)
0004c4  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0004c8  0f011218  div.f.rn r2, r4, r1
0004cc  7a92d040  vextracti.f r4, 13(vr1)
0004d0  7e8002e0  vmmov mr0, r5
0004d4  9f020020  addli r5, zero, 4096
0004d8  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
0004dc  8f011218  div.f.rn r3, r4, r1
0004e0  7a92e040  vextracti.f r4, 14(vr1)
0004e4  7e8002e0  vmmov mr0, r5
0004e8  fa920140  vextracti.f r5, 0(vr3)
0004ec  6a200130  vor.u.mh vr0{mr0}, r2, vr0
0004f0  0f011218  div.f.rn r2, r4, r1
0004f4  7a92f040  vextracti.f r4, 15(vr1)
0004f8  7e0003e0  vmmov mr0, r6
0004fc  2b430000  lui r6, 4
000500  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
000504  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000508  8f011218  div.f.rn r3, r4, r1
00050c  7e0003e0  vmmov mr0, r6
000510  0f821218  div.f.rn r4, r5, r1
000514  fa921140  vextracti.f r5, 1(vr3)
000518  2b830000  lui r6, 8
00051c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
000520  7e0003e0  vmmov mr0, r6
000524  0f811218  div.f.rn r2, r5, r1
000528  fa922140  vextracti.f r5, 2(vr3)
00052c  1f030040  addli r6, zero, 8192
000530  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
000534  9f110000  addli r3, zero, 1
000538  7e8001e0  vmmov mr0, r3
00053c  8f811218  div.f.rn r3, r5, r1
000540  9f220000  addli r5, zero, 2
000544  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000548  7a923140  vextracti.f r4, 3(vr3)
00054c  7e8002e0  vmmov mr0, r5
000550  9f420000  addli r5, zero, 4
000554  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000558  0f011218  div.f.rn r2, r4, r1
00055c  7a924140  vextracti.f r4, 4(vr3)
000560  7e8002e0  vmmov mr0, r5
000564  9f021000  addli r5, zero, 8
000568  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
00056c  8f011218  div.f.rn r3, r4, r1
000570  7a925140  vextracti.f r4, 5(vr3)
000574  7e8002e0  vmmov mr0, r5
000578  9f022000  addli r5, zero, 16
00057c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000580  0f011218  div.f.rn r2, r4, r1
000584  7a926140  vextracti.f r4, 6(vr3)
000588  7e8002e0  vmmov mr0, r5
00058c  9f028000  addli r5, zero, 64
000590  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000594  8f011218  div.f.rn r3, r4, r1
000598  7a927140  vextracti.f r4, 7(vr3)
00059c  7e8002e0  vmmov mr0, r5
0005a0  9f020001  addli r5, zero, 128
0005a4  ea201136  vor.u.mh vr1{mr3}, r2, vr1
0005a8  0f011218  div.f.rn r2, r4, r1
0005ac  7a928140  vextracti.f r4, 8(vr3)
0005b0  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005b4  8f011218  div.f.rn r3, r4, r1
0005b8  7a929140  vextracti.f r4, 9(vr3)
0005bc  7e8002e0  vmmov mr0, r5
0005c0  9f020002  addli r5, zero, 256
0005c4  ea201130  vor.u.mh vr1{mr0}, r2, vr1
0005c8  0f011218  div.f.rn r2, r4, r1
0005cc  7a92a140  vextracti.f r4, 10(vr3)
0005d0  7e8002e0  vmmov mr0, r5
0005d4  9f020008  addli r5, zero, 1024
0005d8  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005dc  8f011218  div.f.rn r3, r4, r1
0005e0  7a92b140  vextracti.f r4, 11(vr3)
0005e4  7e8002e0  vmmov mr0, r5
0005e8  9f020010  addli r5, zero, 2048
0005ec  ea201134  vor.u.mh vr1{mr2}, r2, vr1
0005f0  0f011218  div.f.rn r2, r4, r1
0005f4  7a92c140  vextracti.f r4, 12(vr3)
0005f8  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
0005fc  8f011218  div.f.rn r3, r4, r1
000600  7a92d140  vextracti.f r4, 13(vr3)
000604  7e8002e0  vmmov mr0, r5
000608  9f020020  addli r5, zero, 4096
00060c  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000610  0f011218  div.f.rn r2, r4, r1
000614  7a92e140  vextracti.f r4, 14(vr3)
000618  7e8002e0  vmmov mr0, r5
00061c  fa120240  vextracti.f r5, 0(vr4)
000620  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000624  8f011218  div.f.rn r3, r4, r1
000628  7a92f140  vextracti.f r4, 15(vr3)
00062c  7e0003e0  vmmov mr0, r6
000630  2b430000  lui r6, 4
000634  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
000638  ea201130  vor.u.mh vr1{mr0}, r2, vr1
00063c  0f011218  div.f.rn r2, r4, r1
000640  7e0003e0  vmmov mr0, r6
000644  0f821218  div.f.rn r4, r5, r1
000648  fa121240  vextracti.f r5, 1(vr4)
00064c  2b830000  lui r6, 8
000650  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
000654  7e0003e0  vmmov mr0, r6
000658  8f811218  div.f.rn r3, r5, r1
00065c  fa122240  vextracti.f r5, 2(vr4)
000660  1f030040  addli r6, zero, 8192
000664  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000668  1f110000  addli r2, zero, 1
00066c  7e0001e0  vmmov mr0, r2
000670  0f811218  div.f.rn r2, r5, r1
000674  9f220000  addli r5, zero, 2
000678  ea213230  vor.u.mh vr3{mr0}, r4, vr3
00067c  7a123240  vextracti.f r4, 3(vr4)
000680  7e8002e0  vmmov mr0, r5
000684  9f420000  addli r5, zero, 4
000688  7e8102e0  vmmov mr2, r5
00068c  9f021000  addli r5, zero, 8
000690  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000694  8f011218  div.f.rn r3, r4, r1
000698  7a124240  vextracti.f r4, 4(vr4)
00069c  7e8002e0  vmmov mr0, r5
0006a0  9f022000  addli r5, zero, 16
0006a4  ea213134  vor.u.mh vr3{mr2}, r2, vr3
0006a8  0f011218  div.f.rn r2, r4, r1
0006ac  7a125240  vextracti.f r4, 5(vr4)
0006b0  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0006b4  8f011218  div.f.rn r3, r4, r1
0006b8  7a126240  vextracti.f r4, 6(vr4)
0006bc  7e8002e0  vmmov mr0, r5
0006c0  9f028000  addli r5, zero, 64
0006c4  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0006c8  0f011218  div.f.rn r2, r4, r1
0006cc  7a127240  vextracti.f r4, 7(vr4)
0006d0  7e8002e0  vmmov mr0, r5
0006d4  9f020001  addli r5, zero, 128
0006d8  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
0006dc  8f011218  div.f.rn r3, r4, r1
0006e0  7a128240  vextracti.f r4, 8(vr4)
0006e4  ea213130  vor.u.mh vr3{mr0}, r2, vr3
0006e8  0f011218  div.f.rn r2, r4, r1
0006ec  7a129240  vextracti.f r4, 9(vr4)
0006f0  7e8002e0  vmmov mr0, r5
0006f4  9f020002  addli r5, zero, 256
0006f8  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0006fc  8f011218  div.f.rn r3, r4, r1
000700  7a12a240  vextracti.f r4, 10(vr4)
000704  7e8002e0  vmmov mr0, r5
000708  9f020004  addli r5, zero, 512
00070c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000710  0f011218  div.f.rn r2, r4, r1
000714  7a12b240  vextracti.f r4, 11(vr4)
000718  7e8002e0  vmmov mr0, r5
00071c  9f020008  addli r5, zero, 1024
000720  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000724  8f011218  div.f.rn r3, r4, r1
000728  7a12c240  vextracti.f r4, 12(vr4)
00072c  7e8002e0  vmmov mr0, r5
000730  9f020010  addli r5, zero, 2048
000734  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000738  0f011218  div.f.rn r2, r4, r1
00073c  7a12d240  vextracti.f r4, 13(vr4)
000740  7e8002e0  vmmov mr0, r5
000744  9f020020  addli r5, zero, 4096
000748  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
00074c  8f011218  div.f.rn r3, r4, r1
000750  7a12e240  vextracti.f r4, 14(vr4)
000754  7e8002e0  vmmov mr0, r5
000758  fa920240  vextracti.f r5, 0(vr5)
00075c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000760  0f011218  div.f.rn r2, r4, r1
000764  7a12f240  vextracti.f r4, 15(vr4)
000768  7e0003e0  vmmov mr0, r6
00076c  2b430000  lui r6, 4
000770  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
000774  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
000778  8f011218  div.f.rn r3, r4, r1
00077c  7e0003e0  vmmov mr0, r6
000780  0f821218  div.f.rn r4, r5, r1
000784  fa921240  vextracti.f r5, 1(vr5)
000788  2b830000  lui r6, 8
00078c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
000790  7e0003e0  vmmov mr0, r6
000794  0f811218  div.f.rn r2, r5, r1
000798  fa922240  vextracti.f r5, 2(vr5)
00079c  1f030040  addli r6, zero, 8192
0007a0  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
0007a4  9f110000  addli r3, zero, 1
0007a8  7e8001e0  vmmov mr0, r3
0007ac  8f811218  div.f.rn r3, r5, r1
0007b0  9f220000  addli r5, zero, 2
0007b4  6a224230  vor.u.mh vr4{mr0}, r4, vr4
0007b8  7a923240  vextracti.f r4, 3(vr5)
0007bc  7e8002e0  vmmov mr0, r5
0007c0  9f021000  addli r5, zero, 8
0007c4  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0007c8  0f011218  div.f.rn r2, r4, r1
0007cc  7a924240  vextracti.f r4, 4(vr5)
0007d0  7e8002e0  vmmov mr0, r5
0007d4  9f022000  addli r5, zero, 16
0007d8  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
0007dc  8f011218  div.f.rn r3, r4, r1
0007e0  7a925240  vextracti.f r4, 5(vr5)
0007e4  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0007e8  0f011218  div.f.rn r2, r4, r1
0007ec  7a926240  vextracti.f r4, 6(vr5)
0007f0  7e8002e0  vmmov mr0, r5
0007f4  9f028000  addli r5, zero, 64
0007f8  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0007fc  8f011218  div.f.rn r3, r4, r1
000800  7a927240  vextracti.f r4, 7(vr5)
000804  7e8002e0  vmmov mr0, r5
000808  9f020001  addli r5, zero, 128
00080c  6a224136  vor.u.mh vr4{mr3}, r2, vr4
000810  0f011218  div.f.rn r2, r4, r1
000814  7a928240  vextracti.f r4, 8(vr5)
000818  fe8102e0  vmmov mr3, r5
00081c  9f020002  addli r5, zero, 256
000820  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000824  8f011218  div.f.rn r3, r4, r1
000828  7a929240  vextracti.f r4, 9(vr5)
00082c  7e8002e0  vmmov mr0, r5
000830  9f020004  addli r5, zero, 512
000834  7e8102e0  vmmov mr2, r5
000838  9f020008  addli r5, zero, 1024
00083c  6a224136  vor.u.mh vr4{mr3}, r2, vr4
000840  0f011218  div.f.rn r2, r4, r1
000844  7a92a240  vextracti.f r4, 10(vr5)
000848  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
00084c  8f011218  div.f.rn r3, r4, r1
000850  7a92b240  vextracti.f r4, 11(vr5)
000854  7e8002e0  vmmov mr0, r5
000858  9f020010  addli r5, zero, 2048
00085c  6a224134  vor.u.mh vr4{mr2}, r2, vr4
000860  0f011218  div.f.rn r2, r4, r1
000864  7a92c240  vextracti.f r4, 12(vr5)
000868  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
00086c  8f011218  div.f.rn r3, r4, r1
000870  7a92d240  vextracti.f r4, 13(vr5)
000874  7e8002e0  vmmov mr0, r5
000878  9f020020  addli r5, zero, 4096
00087c  6a224130  vor.u.mh vr4{mr0}, r2, vr4
000880  0f011218  div.f.rn r2, r4, r1
000884  7a92e240  vextracti.f r4, 14(vr5)
000888  7e8002e0  vmmov mr0, r5
00088c  fa120340  vextracti.f r5, 0(vr6)
000890  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
000894  8f011218  div.f.rn r3, r4, r1
000898  7a92f240  vextracti.f r4, 15(vr5)
00089c  7e0003e0  vmmov mr0, r6
0008a0  2b430000  lui r6, 4
0008a4  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
0008a8  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0008ac  0f011218  div.f.rn r2, r4, r1
0008b0  7e0003e0  vmmov mr0, r6
0008b4  0f821218  div.f.rn r4, r5, r1
0008b8  fa121340  vextracti.f r5, 1(vr6)
0008bc  2b830000  lui r6, 8
0008c0  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0008c4  7e0003e0  vmmov mr0, r6
0008c8  8f811218  div.f.rn r3, r5, r1
0008cc  fa122340  vextracti.f r5, 2(vr6)
0008d0  1f030040  addli r6, zero, 8192
0008d4  6a224130  vor.u.mh vr4{mr0}, r2, vr4
0008d8  1f110000  addli r2, zero, 1
0008dc  7e0001e0  vmmov mr0, r2
0008e0  0f811218  div.f.rn r2, r5, r1
0008e4  9f220000  addli r5, zero, 2
0008e8  ea225230  vor.u.mh vr5{mr0}, r4, vr5
0008ec  7a123340  vextracti.f r4, 3(vr6)
0008f0  7e8002e0  vmmov mr0, r5
0008f4  9f420000  addli r5, zero, 4
0008f8  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0008fc  8f011218  div.f.rn r3, r4, r1
000900  7a124340  vextracti.f r4, 4(vr6)
000904  7e8002e0  vmmov mr0, r5
000908  9f021000  addli r5, zero, 8
00090c  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000910  0f011218  div.f.rn r2, r4, r1
000914  7a125340  vextracti.f r4, 5(vr6)
000918  7e8002e0  vmmov mr0, r5
00091c  9f022000  addli r5, zero, 16
000920  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000924  8f011218  div.f.rn r3, r4, r1
000928  7a126340  vextracti.f r4, 6(vr6)
00092c  7e8002e0  vmmov mr0, r5
000930  9f024000  addli r5, zero, 32
000934  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000938  0f011218  div.f.rn r2, r4, r1
00093c  7a127340  vextracti.f r4, 7(vr6)
000940  7e8002e0  vmmov mr0, r5
000944  9f028000  addli r5, zero, 64
000948  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
00094c  8f011218  div.f.rn r3, r4, r1
000950  7a128340  vextracti.f r4, 8(vr6)
000954  7e8002e0  vmmov mr0, r5
000958  9f020002  addli r5, zero, 256
00095c  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000960  0f011218  div.f.rn r2, r4, r1
000964  7a129340  vextracti.f r4, 9(vr6)
000968  7e8002e0  vmmov mr0, r5
00096c  9f020008  addli r5, zero, 1024
000970  eaa25136  vor.u.mh vr5{mr3}, r3, vr5
000974  8f011218  div.f.rn r3, r4, r1
000978  7a12a340  vextracti.f r4, 10(vr6)
00097c  ea225130  vor.u.mh vr5{mr0}, r2, vr5
000980  0f011218  div.f.rn r2, r4, r1
000984  7a12b340  vextracti.f r4, 11(vr6)
000988  7e8002e0  vmmov mr0, r5
00098c  9f020010  addli r5, zero, 2048
000990  eaa25134  vor.u.mh vr5{mr2}, r3, vr5
000994  8f011218  div.f.rn r3, r4, r1
000998  7a12c340  vextracti.f r4, 12(vr6)
00099c  fe0101c0  vmmov mr3, mr2
0009a0  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0009a4  0f011218  div.f.rn r2, r4, r1
0009a8  7a12d340  vextracti.f r4, 13(vr6)
0009ac  7e8002e0  vmmov mr0, r5
0009b0  9f020020  addli r5, zero, 4096
0009b4  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0009b8  8f011218  div.f.rn r3, r4, r1
0009bc  7a12e340  vextracti.f r4, 14(vr6)
0009c0  7e8002e0  vmmov mr0, r5
0009c4  fa920340  vextracti.f r5, 0(vr7)
0009c8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0009cc  0f011218  div.f.rn r2, r4, r1
0009d0  7a12f340  vextracti.f r4, 15(vr6)
0009d4  7e0003e0  vmmov mr0, r6
0009d8  2b430000  lui r6, 4
0009dc  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
0009e0  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0009e4  8f011218  div.f.rn r3, r4, r1
0009e8  7e0003e0  vmmov mr0, r6
0009ec  0f821218  div.f.rn r4, r5, r1
0009f0  fa921340  vextracti.f r5, 1(vr7)
0009f4  2b830000  lui r6, 8
0009f8  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0009fc  7e0003e0  vmmov mr0, r6
000a00  0f811218  div.f.rn r2, r5, r1
000a04  fa922340  vextracti.f r5, 2(vr7)
000a08  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
000a0c  9f110000  addli r3, zero, 1
000a10  7e8001e0  vmmov mr0, r3
000a14  8f811218  div.f.rn r3, r5, r1
000a18  9f220000  addli r5, zero, 2
000a1c  6a236230  vor.u.mh vr6{mr0}, r4, vr6
000a20  7a923340  vextracti.f r4, 3(vr7)
000a24  7e8102e0  vmmov mr2, r5
000a28  9f420000  addli r5, zero, 4
000a2c  7e8002e0  vmmov mr0, r5
000a30  9f021000  addli r5, zero, 8
000a34  6a236134  vor.u.mh vr6{mr2}, r2, vr6
000a38  0f011218  div.f.rn r2, r4, r1
000a3c  7a924340  vextracti.f r4, 4(vr7)
000a40  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000a44  8f011218  div.f.rn r3, r4, r1
000a48  7a925340  vextracti.f r4, 5(vr7)
000a4c  7e8002e0  vmmov mr0, r5
000a50  9f022000  addli r5, zero, 16
000a54  7e8102e0  vmmov mr2, r5
000a58  9f024000  addli r5, zero, 32
000a5c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000a60  0f011218  div.f.rn r2, r4, r1
000a64  7a926340  vextracti.f r4, 6(vr7)
000a68  7e8002e0  vmmov mr0, r5
000a6c  9f028000  addli r5, zero, 64
000a70  6aa36134  vor.u.mh vr6{mr2}, r3, vr6
000a74  8f011218  div.f.rn r3, r4, r1
000a78  7a927340  vextracti.f r4, 7(vr7)
000a7c  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000a80  0f011218  div.f.rn r2, r4, r1
000a84  7a928340  vextracti.f r4, 8(vr7)
000a88  7e8002e0  vmmov mr0, r5
000a8c  9f020001  addli r5, zero, 128
000a90  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000a94  8f011218  div.f.rn r3, r4, r1
000a98  7a929340  vextracti.f r4, 9(vr7)
000a9c  7e8002e0  vmmov mr0, r5
000aa0  9f020002  addli r5, zero, 256
000aa4  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000aa8  0f011218  div.f.rn r2, r4, r1
000aac  7a92a340  vextracti.f r4, 10(vr7)
000ab0  7e8002e0  vmmov mr0, r5
000ab4  9f020008  addli r5, zero, 1024
000ab8  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000abc  8f011218  div.f.rn r3, r4, r1
000ac0  7a92b340  vextracti.f r4, 11(vr7)
000ac4  7e8002e0  vmmov mr0, r5
000ac8  9f020010  addli r5, zero, 2048
000acc  6a236136  vor.u.mh vr6{mr3}, r2, vr6
000ad0  0f011218  div.f.rn r2, r4, r1
000ad4  7a92c340  vextracti.f r4, 12(vr7)
000ad8  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000adc  8f011218  div.f.rn r3, r4, r1
000ae0  7a92d340  vextracti.f r4, 13(vr7)
000ae4  7e8002e0  vmmov mr0, r5
000ae8  9f020020  addli r5, zero, 4096
000aec  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000af0  0f011218  div.f.rn r2, r4, r1
000af4  7a92e340  vextracti.f r4, 14(vr7)
000af8  7e8002e0  vmmov mr0, r5
000afc  9f020040  addli r5, zero, 8192
000b00  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000b04  8f011218  div.f.rn r3, r4, r1
000b08  7e8002e0  vmmov mr0, r5
000b0c  7a92f340  vextracti.f r4, 15(vr7)
000b10  8f001218  div.f.rn r1, r4, r1
000b14  6a236130  vor.u.mh vr6{mr0}, r2, vr6
000b18  2b410000  lui r2, 4
000b1c  7e0001e0  vmmov mr0, r2
000b20  2b0100f0  lui r2, 983040
000b24  6aa36130  vor.u.mh vr6{mr0}, r3, vr6
000b28  eb510f01  load.d r[4:5], 16(r30)
000b2c  eb520fbb  load.d r[6:7], -1104(r30)
000b30  17912300  or r2, r7, r2
000b34  8ba15110  add.ul r[4:5], r[4:5], r[6:7]
000b38  ab820000  lui r5, 8
000b3c  1f030ff8  addli r6, r30, -1024
000b40  7e8102e0  vmmov mr2, r5
000b44  7e0001c0  vmmov mr0, mr2
000b48  6aa36030  vor.u.mh vr6{mr0}, r1, vr6
000b4c  46108f82  vstore_mask16.mz vr8{mr1}, 1024(r30)
000b50  46142f82  vstore_mask16.mz vr2{mr1}, 1088(r30)
000b54  46180f82  vstore_mask16.mz vr0{mr1}, 1152(r30)
000b58  461c1f82  vstore_mask16.mz vr1{mr1}, 1216(r30)
000b5c  46103fa2  vstore_mask16.mz vr3{mr1}, 1280(r30)
000b60  46144fa2  vstore_mask16.mz vr4{mr1}, 1344(r30)
000b64  46185fa2  vstore_mask16.mz vr5{mr1}, 1408(r30)
000b68  461c6fa2  vstore_mask16.mz vr6{mr1}, 1472(r30)
000b6c  00a00000  mfence { lm }
000b70  7fb16100  s_lm2gm r2, r6, 0(r[4:5])
000b74  1f420000  addli r4, zero, 4
000b78  9f010000  addli r3, zero, 0
000b7c  00a00000  mfence { lm }
000b80  e3407ff7  loadli.w r1,  -1092(r30)
000b84  fe0102e0  vmmov mr3, r4
000b88  1f020004  addli r4, zero, 512
000b8c  7e0102e0  vmmov mr2, r4
000b90  1b811000  andi r2, r1, 1
000b94  9f000040  addli r1, zero, 8192
000b98  b71501fa  beq r2, zero, -2716
000b9c  63016fef  loadli.w r2,  -2128(r30)
000ba0  e74b3ff6  storeli.w r3, -1092(r30)
000ba4  9f220000  addli r5, zero, 2
000ba8  1234a002  vadd.s.mz vr8{mr1}, zero, vr10
000bac  8b101110  add.s r1, r2, r1
000bb0  2b0100f0  lui r2, 983040
000bb4  b3910028  sext_int2long r[4:5], r1
000bb8  17912300  or r2, r7, r2
000bbc  ab0000f0  lui r1, 983040
000bc0  17b45102  sll.d r[9:10], r[4:5], r5
000bc4  eb510f00  load.d r[4:5], 0(r30)
000bc8  97901300  or r1, r7, r1
000bcc  73388fba  store.d r[9:10], -1104(r30)
000bd0  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
000bd4  7fa16100  l_gm2lm r2, r6, 0(r[4:5])
000bd8  1f024fef  addli r4, r30, -2144
000bdc  6b510200  load.d r[3:4], 0(r4)
000be0  1f020ffc  addli r4, r30, -512
000be4  ff204100  l_gm2lm r1, r4, 0(r[3:4])
000be8  9f008ff5  addli r1, r30, -1344
000bec  00a00000  mfence { lm }
000bf0  c2130f82  vload_mask16.mz vr7{mr1}, 1024(r30)
000bf4  c2128f82  vload_mask16.mz vr5{mr1}, 1088(r30)
000bf8  42130f83  vload_mask16.mz vr6{mr1}, 1152(r30)
000bfc  42128f83  vload_mask16.mz vr4{mr1}, 1216(r30)
000c00  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
000c04  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000c08  9f000ff6  addli r1, r30, -1280
000c0c  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
000c10  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000c14  9f008ff6  addli r1, r30, -1216
000c18  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
000c1c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000c20  9f008ff7  addli r1, r30, -1088
000c24  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
000c28  00a00000  mfence { lm }
000c2c  634ebffd  loadli.w r28,  -292(r30)
000c30  6341effc  loadli.w r2,  -396(r30)
000c34  e301fffc  loadli.w r3,  -392(r30)
000c38  6342fffc  loadli.w r4,  -388(r30)
000c3c  e3020ffd  loadli.w r5,  -384(r30)
000c40  63430ffd  loadli.w r6,  -380(r30)
000c44  e3031ffd  loadli.w r7,  -376(r30)
000c48  63441ffd  loadli.w r8,  -372(r30)
000c4c  e3042ffd  loadli.w r9,  -368(r30)
000c50  63452ffd  loadli.w r10,  -364(r30)
000c54  e3053ffd  loadli.w r11,  -360(r30)
000c58  63463ffd  loadli.w r12,  -356(r30)
000c5c  e3064ffd  loadli.w r13,  -352(r30)
000c60  63474ffd  loadli.w r14,  -348(r30)
000c64  e3075ffd  loadli.w r15,  -344(r30)
000c68  63485ffd  loadli.w r16,  -340(r30)
000c6c  e3086ffd  loadli.w r17,  -336(r30)
000c70  63496ffd  loadli.w r18,  -332(r30)
000c74  e3097ffd  loadli.w r19,  -328(r30)
000c78  634a7ffd  loadli.w r20,  -324(r30)
000c7c  e30a8ffd  loadli.w r21,  -320(r30)
000c80  634b8ffd  loadli.w r22,  -316(r30)
000c84  e30b9ffd  loadli.w r23,  -312(r30)
000c88  634c9ffd  loadli.w r24,  -308(r30)
000c8c  e30caffd  loadli.w r25,  -304(r30)
000c90  634daffd  loadli.w r26,  -300(r30)
000c94  e30dbffd  loadli.w r27,  -296(r30)
000c98  674ccfef  storeli.w r28, -2108(r30)
000c9c  630ecffd  loadli.w r28,  -288(r30)
000ca0  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000ca4  e3000ffc  loadli.w r1,  -512(r30)
000ca8  e70ccfef  storeli.w r28, -2104(r30)
000cac  634ecffd  loadli.w r28,  -284(r30)
000cb0  67081ff0  storeli.w r1, -1920(r30)
000cb4  e3400ffc  loadli.w r1,  -508(r30)
000cb8  e74ccfef  storeli.w r28, -2100(r30)
000cbc  630edffd  loadli.w r28,  -280(r30)
000cc0  e7081ff0  storeli.w r1, -1912(r30)
000cc4  e3001ffc  loadli.w r1,  -504(r30)
000cc8  670dcfef  storeli.w r28, -2096(r30)
000ccc  634edffd  loadli.w r28,  -276(r30)
000cd0  67091ff0  storeli.w r1, -1904(r30)
000cd4  e3401ffc  loadli.w r1,  -500(r30)
000cd8  674dcfef  storeli.w r28, -2092(r30)
000cdc  630eeffd  loadli.w r28,  -272(r30)
000ce0  e7091ff0  storeli.w r1, -1896(r30)
000ce4  e3002ffc  loadli.w r1,  -496(r30)
000ce8  e70dcfef  storeli.w r28, -2088(r30)
000cec  634eeffd  loadli.w r28,  -268(r30)
000cf0  670a1ff0  storeli.w r1, -1888(r30)
000cf4  e3402ffc  loadli.w r1,  -492(r30)
000cf8  e74dcfef  storeli.w r28, -2084(r30)
000cfc  630efffd  loadli.w r28,  -264(r30)
000d00  e70a1ff0  storeli.w r1, -1880(r30)
000d04  e3003ffc  loadli.w r1,  -488(r30)
000d08  670ecfef  storeli.w r28, -2080(r30)
000d0c  634efffd  loadli.w r28,  -260(r30)
000d10  670b1ff0  storeli.w r1, -1872(r30)
000d14  e3403ffc  loadli.w r1,  -484(r30)
000d18  674ecfef  storeli.w r28, -2076(r30)
000d1c  630e0ffe  loadli.w r28,  -256(r30)
000d20  e70b1ff0  storeli.w r1, -1864(r30)
000d24  e3004ffc  loadli.w r1,  -480(r30)
000d28  e70ecfef  storeli.w r28, -2072(r30)
000d2c  634e0ffe  loadli.w r28,  -252(r30)
000d30  670c1ff0  storeli.w r1, -1856(r30)
000d34  e3404ffc  loadli.w r1,  -476(r30)
000d38  e74ecfef  storeli.w r28, -2068(r30)
000d3c  630e1ffe  loadli.w r28,  -248(r30)
000d40  e70c1ff0  storeli.w r1, -1848(r30)
000d44  e3005ffc  loadli.w r1,  -472(r30)
000d48  670fcfef  storeli.w r28, -2064(r30)
000d4c  634e1ffe  loadli.w r28,  -244(r30)
000d50  670d1ff0  storeli.w r1, -1840(r30)
000d54  e3405ffc  loadli.w r1,  -468(r30)
000d58  674fcfef  storeli.w r28, -2060(r30)
000d5c  630e2ffe  loadli.w r28,  -240(r30)
000d60  e70d1ff0  storeli.w r1, -1832(r30)
000d64  e3006ffc  loadli.w r1,  -464(r30)
000d68  e70fcfef  storeli.w r28, -2056(r30)
000d6c  634e2ffe  loadli.w r28,  -236(r30)
000d70  670e1ff0  storeli.w r1, -1824(r30)
000d74  e3406ffc  loadli.w r1,  -460(r30)
000d78  e74fcfef  storeli.w r28, -2052(r30)
000d7c  630e3ffe  loadli.w r28,  -232(r30)
000d80  e70e1ff0  storeli.w r1, -1816(r30)
000d84  e3007ffc  loadli.w r1,  -456(r30)
000d88  6700cff1  storeli.w r28, -2048(r30)
000d8c  634e3ffe  loadli.w r28,  -228(r30)
000d90  670f1ff0  storeli.w r1, -1808(r30)
000d94  e3407ffc  loadli.w r1,  -452(r30)
000d98  6740cff1  storeli.w r28, -2044(r30)
000d9c  630e4ffe  loadli.w r28,  -224(r30)
000da0  e70f1ff0  storeli.w r1, -1800(r30)
000da4  e3008ffc  loadli.w r1,  -448(r30)
000da8  e700cff1  storeli.w r28, -2040(r30)
000dac  634e4ffe  loadli.w r28,  -220(r30)
000db0  67001ff2  storeli.w r1, -1792(r30)
000db4  e3408ffc  loadli.w r1,  -444(r30)
000db8  e740cff1  storeli.w r28, -2036(r30)
000dbc  630e5ffe  loadli.w r28,  -216(r30)
000dc0  e7001ff2  storeli.w r1, -1784(r30)
000dc4  e3009ffc  loadli.w r1,  -440(r30)
000dc8  6701cff1  storeli.w r28, -2032(r30)
000dcc  634e5ffe  loadli.w r28,  -212(r30)
000dd0  67011ff2  storeli.w r1, -1776(r30)
000dd4  e3409ffc  loadli.w r1,  -436(r30)
000dd8  6741cff1  storeli.w r28, -2028(r30)
000ddc  630e6ffe  loadli.w r28,  -208(r30)
000de0  e7011ff2  storeli.w r1, -1768(r30)
000de4  e300affc  loadli.w r1,  -432(r30)
000de8  e701cff1  storeli.w r28, -2024(r30)
000dec  634e6ffe  loadli.w r28,  -204(r30)
000df0  67021ff2  storeli.w r1, -1760(r30)
000df4  e340affc  loadli.w r1,  -428(r30)
000df8  e741cff1  storeli.w r28, -2020(r30)
000dfc  630e7ffe  loadli.w r28,  -200(r30)
000e00  67421ff2  storeli.w r1, -1756(r30)
000e04  e300bffc  loadli.w r1,  -424(r30)
000e08  6702cff1  storeli.w r28, -2016(r30)
000e0c  634e7ffe  loadli.w r28,  -196(r30)
000e10  e7021ff2  storeli.w r1, -1752(r30)
000e14  e340bffc  loadli.w r1,  -420(r30)
000e18  6742cff1  storeli.w r28, -2012(r30)
000e1c  630e8ffe  loadli.w r28,  -192(r30)
000e20  e7421ff2  storeli.w r1, -1748(r30)
000e24  e300cffc  loadli.w r1,  -416(r30)
000e28  e702cff1  storeli.w r28, -2008(r30)
000e2c  634e8ffe  loadli.w r28,  -188(r30)
000e30  67031ff2  storeli.w r1, -1744(r30)
000e34  e340cffc  loadli.w r1,  -412(r30)
000e38  e742cff1  storeli.w r28, -2004(r30)
000e3c  630e9ffe  loadli.w r28,  -184(r30)
000e40  67431ff2  storeli.w r1, -1740(r30)
000e44  e300dffc  loadli.w r1,  -408(r30)
000e48  6703cff1  storeli.w r28, -2000(r30)
000e4c  634e9ffe  loadli.w r28,  -180(r30)
000e50  e7031ff2  storeli.w r1, -1736(r30)
000e54  e340dffc  loadli.w r1,  -404(r30)
000e58  6743cff1  storeli.w r28, -1996(r30)
000e5c  630eaffe  loadli.w r28,  -176(r30)
000e60  e7431ff2  storeli.w r1, -1732(r30)
000e64  e300effc  loadli.w r1,  -400(r30)
000e68  e703cff1  storeli.w r28, -1992(r30)
000e6c  634eaffe  loadli.w r28,  -172(r30)
000e70  e743cff1  storeli.w r28, -1988(r30)
000e74  630ebffe  loadli.w r28,  -168(r30)
000e78  6704cff1  storeli.w r28, -1984(r30)
000e7c  634ebffe  loadli.w r28,  -164(r30)
000e80  6744cff1  storeli.w r28, -1980(r30)
000e84  630ecffe  loadli.w r28,  -160(r30)
000e88  e704cff1  storeli.w r28, -1976(r30)
000e8c  634ecffe  loadli.w r28,  -156(r30)
000e90  e744cff1  storeli.w r28, -1972(r30)
000e94  630edffe  loadli.w r28,  -152(r30)
000e98  6705cff1  storeli.w r28, -1968(r30)
000e9c  634edffe  loadli.w r28,  -148(r30)
000ea0  6745cff1  storeli.w r28, -1964(r30)
000ea4  630eeffe  loadli.w r28,  -144(r30)
000ea8  e705cff1  storeli.w r28, -1960(r30)
000eac  634eeffe  loadli.w r28,  -140(r30)
000eb0  e745cff1  storeli.w r28, -1956(r30)
000eb4  630efffe  loadli.w r28,  -136(r30)
000eb8  6706cff1  storeli.w r28, -1952(r30)
000ebc  634efffe  loadli.w r28,  -132(r30)
000ec0  6746cff1  storeli.w r28, -1948(r30)
000ec4  630e0fff  loadli.w r28,  -128(r30)
000ec8  e706cff1  storeli.w r28, -1944(r30)
000ecc  634e0fff  loadli.w r28,  -124(r30)
000ed0  e746cff1  storeli.w r28, -1940(r30)
000ed4  630e1fff  loadli.w r28,  -120(r30)
000ed8  6707cff1  storeli.w r28, -1936(r30)
000edc  634e1fff  loadli.w r28,  -116(r30)
000ee0  6747cff1  storeli.w r28, -1932(r30)
000ee4  630e2fff  loadli.w r28,  -112(r30)
000ee8  e707cff1  storeli.w r28, -1928(r30)
000eec  634e2fff  loadli.w r28,  -108(r30)
000ef0  e747cff1  storeli.w r28, -1924(r30)
000ef4  630e3fff  loadli.w r28,  -104(r30)
000ef8  6748cff1  storeli.w r28, -1916(r30)
000efc  634e3fff  loadli.w r28,  -100(r30)
000f00  e748cff1  storeli.w r28, -1908(r30)
000f04  630e4fff  loadli.w r28,  -96(r30)
000f08  6749cff1  storeli.w r28, -1900(r30)
000f0c  634e4fff  loadli.w r28,  -92(r30)
000f10  e749cff1  storeli.w r28, -1892(r30)
000f14  630e5fff  loadli.w r28,  -88(r30)
000f18  674acff1  storeli.w r28, -1884(r30)
000f1c  634e5fff  loadli.w r28,  -84(r30)
000f20  e74acff1  storeli.w r28, -1876(r30)
000f24  630e6fff  loadli.w r28,  -80(r30)
000f28  674bcff1  storeli.w r28, -1868(r30)
000f2c  634e6fff  loadli.w r28,  -76(r30)
000f30  e74bcff1  storeli.w r28, -1860(r30)
000f34  630e7fff  loadli.w r28,  -72(r30)
000f38  674ccff1  storeli.w r28, -1852(r30)
000f3c  634e7fff  loadli.w r28,  -68(r30)
000f40  e74ccff1  storeli.w r28, -1844(r30)
000f44  630e8fff  loadli.w r28,  -64(r30)
000f48  674dcff1  storeli.w r28, -1836(r30)
000f4c  634e8fff  loadli.w r28,  -60(r30)
000f50  e74dcff1  storeli.w r28, -1828(r30)
000f54  630e9fff  loadli.w r28,  -56(r30)
000f58  674ecff1  storeli.w r28, -1820(r30)
000f5c  634e9fff  loadli.w r28,  -52(r30)
000f60  e74ecff1  storeli.w r28, -1812(r30)
000f64  630eafff  loadli.w r28,  -48(r30)
000f68  674fcff1  storeli.w r28, -1804(r30)
000f6c  634eafff  loadli.w r28,  -44(r30)
000f70  e74fcff1  storeli.w r28, -1796(r30)
000f74  630ebfff  loadli.w r28,  -40(r30)
000f78  6740cff3  storeli.w r28, -1788(r30)
000f7c  634ebfff  loadli.w r28,  -36(r30)
000f80  e740cff3  storeli.w r28, -1780(r30)
000f84  630ecfff  loadli.w r28,  -32(r30)
000f88  6741cff3  storeli.w r28, -1772(r30)
000f8c  634ecfff  loadli.w r28,  -28(r30)
000f90  e741cff3  storeli.w r28, -1764(r30)
000f94  630edfff  loadli.w r28,  -24(r30)
000f98  6704cff3  storeli.w r28, -1728(r30)
000f9c  634edfff  loadli.w r28,  -20(r30)
000fa0  670ccff3  storeli.w r28, -1600(r30)
000fa4  630eefff  loadli.w r28,  -16(r30)
000fa8  6700cff5  storeli.w r28, -1536(r30)
000fac  634eefff  loadli.w r28,  -12(r30)
000fb0  6704cff5  storeli.w r28, -1472(r30)
000fb4  630effff  loadli.w r28,  -8(r30)
000fb8  6708cff5  storeli.w r28, -1408(r30)
000fbc  634effff  loadli.w r28,  -4(r30)
000fc0  e74bcff3  storeli.w r28, -1604(r30)
000fc4  1f1e0000  addli r28, zero, 1
000fc8  7e8001c0  vmmov mr0, mr3
000fcc  fe010ee0  vmmov mr3, r28
000fd0  630e0ff1  loadli.w r28,  -1920(r30)
000fd4  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
000fd8  1f2e0000  addli r28, zero, 2
000fdc  fe010ee0  vmmov mr3, r28
000fe0  630e1ff1  loadli.w r28,  -1912(r30)
000fe4  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
000fe8  630e2ff1  loadli.w r28,  -1904(r30)
000fec  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
000ff0  1f0e1000  addli r28, zero, 8
000ff4  fe010ee0  vmmov mr3, r28
000ff8  630e3ff1  loadli.w r28,  -1896(r30)
000ffc  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001000  1f0e2000  addli r28, zero, 16
001004  fe010ee0  vmmov mr3, r28
001008  630e4ff1  loadli.w r28,  -1888(r30)
00100c  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001010  1f0e4000  addli r28, zero, 32
001014  7e0001c0  vmmov mr0, mr2
001018  fe010ee0  vmmov mr3, r28
00101c  630e5ff1  loadli.w r28,  -1880(r30)
001020  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001024  1f0e8000  addli r28, zero, 64
001028  fe010ee0  vmmov mr3, r28
00102c  630e6ff1  loadli.w r28,  -1872(r30)
001030  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001034  1f0e0001  addli r28, zero, 128
001038  7e010ee0  vmmov mr2, r28
00103c  630e7ff1  loadli.w r28,  -1864(r30)
001040  6a248e34  vor.u.mh vr8{mr2}, r28, vr8
001044  1f0e0002  addli r28, zero, 256
001048  fe010ee0  vmmov mr3, r28
00104c  630e8ff1  loadli.w r28,  -1856(r30)
001050  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
001054  630e9ff1  loadli.w r28,  -1848(r30)
001058  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
00105c  1f0e0008  addli r28, zero, 1024
001060  fe010ee0  vmmov mr3, r28
001064  630eaff1  loadli.w r28,  -1840(r30)
001068  6a248e36  vor.u.mh vr8{mr3}, r28, vr8
00106c  1f0e0010  addli r28, zero, 2048
001070  7e010ee0  vmmov mr2, r28
001074  630ebff1  loadli.w r28,  -1832(r30)
001078  6a248e34  vor.u.mh vr8{mr2}, r28, vr8
00107c  1f0e0020  addli r28, zero, 4096
001080  7e000ee0  vmmov mr0, r28
001084  630ecff1  loadli.w r28,  -1824(r30)
001088  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
00108c  1f0e0040  addli r28, zero, 8192
001090  2b800000  lui zero, 8
001094  7e010ee0  vmmov mr2, r28
001098  630edff1  loadli.w r28,  -1816(r30)
00109c  6a248e34  vor.u.mh vr8{mr2}, r28, vr8
0010a0  2b4e0000  lui r28, 4
0010a4  7e000ee0  vmmov mr0, r28
0010a8  630eeff1  loadli.w r28,  -1808(r30)
0010ac  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
0010b0  7e0000e0  vmmov mr0, zero
0010b4  630efff1  loadli.w r28,  -1800(r30)
0010b8  17200000  xor zero, zero, zero
0010bc  9234a002  vadd.s.mz vr9{mr1}, zero, vr10
0010c0  1f100000  addli zero, zero, 1
0010c4  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
0010c8  630e0ff2  loadli.w r28,  -1792(r30)
0010cc  7e0000e0  vmmov mr0, zero
0010d0  17200000  xor zero, zero, zero
0010d4  1f200000  addli zero, zero, 2
0010d8  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0010dc  630e1ff2  loadli.w r28,  -1784(r30)
0010e0  7e0000e0  vmmov mr0, zero
0010e4  17200000  xor zero, zero, zero
0010e8  16948302  vadd.f.mz.rn vr8{mr1}, vr7, vr8
0010ec  1f400000  addli zero, zero, 4
0010f0  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
0010f4  630e2ff2  loadli.w r28,  -1776(r30)
0010f8  7e0000e0  vmmov mr0, zero
0010fc  17200000  xor zero, zero, zero
001100  1f001000  addli zero, zero, 8
001104  ea249e30  vor.u.mh vr9{mr0}, r28, vr9
001108  630e3ff2  loadli.w r28,  -1768(r30)
00110c  fe0100e0  vmmov mr3, zero
001110  17200000  xor zero, zero, zero
001114  1f002000  addli zero, zero, 16
001118  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
00111c  630e4ff2  loadli.w r28,  -1760(r30)
001120  fe0100e0  vmmov mr3, zero
001124  17200000  xor zero, zero, zero
001128  1f004000  addli zero, zero, 32
00112c  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
001130  634e4ff2  loadli.w r28,  -1756(r30)
001134  fe0100e0  vmmov mr3, zero
001138  17200000  xor zero, zero, zero
00113c  1f008000  addli zero, zero, 64
001140  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
001144  630e5ff2  loadli.w r28,  -1752(r30)
001148  7e0100e0  vmmov mr2, zero
00114c  17200000  xor zero, zero, zero
001150  1f000001  addli zero, zero, 128
001154  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
001158  634e5ff2  loadli.w r28,  -1748(r30)
00115c  7e0100e0  vmmov mr2, zero
001160  17200000  xor zero, zero, zero
001164  1f000002  addli zero, zero, 256
001168  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
00116c  630e6ff2  loadli.w r28,  -1744(r30)
001170  7e0100e0  vmmov mr2, zero
001174  17200000  xor zero, zero, zero
001178  1f000004  addli zero, zero, 512
00117c  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
001180  634e6ff2  loadli.w r28,  -1740(r30)
001184  fe0100e0  vmmov mr3, zero
001188  17200000  xor zero, zero, zero
00118c  1f000008  addli zero, zero, 1024
001190  ea249e36  vor.u.mh vr9{mr3}, r28, vr9
001194  630e7ff2  loadli.w r28,  -1736(r30)
001198  7e0100e0  vmmov mr2, zero
00119c  17200000  xor zero, zero, zero
0011a0  1f000010  addli zero, zero, 2048
0011a4  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
0011a8  634e7ff2  loadli.w r28,  -1732(r30)
0011ac  7e0100e0  vmmov mr2, zero
0011b0  17200000  xor zero, zero, zero
0011b4  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
0011b8  ea249e34  vor.u.mh vr9{mr2}, r28, vr9
0011bc  1f0e0020  addli r28, zero, 4096
0011c0  7e010ee0  vmmov mr2, r28
0011c4  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0011c8  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0011cc  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0011d0  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0011d4  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
0011d8  9f000040  addli r1, zero, 8192
0011dc  7e8100e0  vmmov mr2, r1
0011e0  ab400000  lui r1, 4
0011e4  ea249134  vor.u.mh vr9{mr2}, r2, vr9
0011e8  7e8100e0  vmmov mr2, r1
0011ec  ab800000  lui r1, 8
0011f0  1f010001  addli r2, zero, 128
0011f4  eaa49134  vor.u.mh vr9{mr2}, r3, vr9
0011f8  7e8100e0  vmmov mr2, r1
0011fc  9f100000  addli r1, zero, 1
001200  ea249234  vor.u.mh vr9{mr2}, r4, vr9
001204  7e8100e0  vmmov mr2, r1
001208  9f200000  addli r1, zero, 2
00120c  6aa5a234  vor.u.mh vr10{mr2}, r5, vr10
001210  7e8100e0  vmmov mr2, r1
001214  9f001000  addli r1, zero, 8
001218  96929202  vadd.f.mz.rn vr5{mr1}, vr5, vr9
00121c  6a25a334  vor.u.mh vr10{mr2}, r6, vr10
001220  6aa5a330  vor.u.mh vr10{mr0}, r7, vr10
001224  7e8000e0  vmmov mr0, r1
001228  9f002000  addli r1, zero, 16
00122c  6a25a430  vor.u.mh vr10{mr0}, r8, vr10
001230  7e8000e0  vmmov mr0, r1
001234  9f004000  addli r1, zero, 32
001238  6aa5a430  vor.u.mh vr10{mr0}, r9, vr10
00123c  7e8000e0  vmmov mr0, r1
001240  9f008000  addli r1, zero, 64
001244  6a25a530  vor.u.mh vr10{mr0}, r10, vr10
001248  7e8000e0  vmmov mr0, r1
00124c  9f000001  addli r1, zero, 128
001250  6aa5a530  vor.u.mh vr10{mr0}, r11, vr10
001254  7e8000e0  vmmov mr0, r1
001258  9f000002  addli r1, zero, 256
00125c  6a25a630  vor.u.mh vr10{mr0}, r12, vr10
001260  7e8000e0  vmmov mr0, r1
001264  9f000008  addli r1, zero, 1024
001268  6aa5a630  vor.u.mh vr10{mr0}, r13, vr10
00126c  7e8000e0  vmmov mr0, r1
001270  9f000010  addli r1, zero, 2048
001274  6a25a736  vor.u.mh vr10{mr3}, r14, vr10
001278  6aa5a730  vor.u.mh vr10{mr0}, r15, vr10
00127c  7e8000e0  vmmov mr0, r1
001280  9f000020  addli r1, zero, 4096
001284  6a25a830  vor.u.mh vr10{mr0}, r16, vr10
001288  7e8000e0  vmmov mr0, r1
00128c  9f000040  addli r1, zero, 8192
001290  6aa5a830  vor.u.mh vr10{mr0}, r17, vr10
001294  7e8000e0  vmmov mr0, r1
001298  ab400000  lui r1, 4
00129c  6a25a930  vor.u.mh vr10{mr0}, r18, vr10
0012a0  7e8000e0  vmmov mr0, r1
0012a4  ab800000  lui r1, 8
0012a8  6aa5a930  vor.u.mh vr10{mr0}, r19, vr10
0012ac  7e8000e0  vmmov mr0, r1
0012b0  9f100000  addli r1, zero, 1
0012b4  7e8100e0  vmmov mr2, r1
0012b8  9f200000  addli r1, zero, 2
0012bc  6a25aa30  vor.u.mh vr10{mr0}, r20, vr10
0012c0  eaa5ba34  vor.u.mh vr11{mr2}, r21, vr11
0012c4  7e8100e0  vmmov mr2, r1
0012c8  9f400000  addli r1, zero, 4
0012cc  ea25bb34  vor.u.mh vr11{mr2}, r22, vr11
0012d0  7e8100e0  vmmov mr2, r1
0012d4  9f001000  addli r1, zero, 8
0012d8  9613a302  vadd.f.mz.rn vr7{mr1}, vr6, vr10
0012dc  eaa5bb34  vor.u.mh vr11{mr2}, r23, vr11
0012e0  7e8100e0  vmmov mr2, r1
0012e4  9f002000  addli r1, zero, 16
0012e8  ea25bc34  vor.u.mh vr11{mr2}, r24, vr11
0012ec  7e8100e0  vmmov mr2, r1
0012f0  9f004000  addli r1, zero, 32
0012f4  eaa5bc34  vor.u.mh vr11{mr2}, r25, vr11
0012f8  7e8100e0  vmmov mr2, r1
0012fc  9f008000  addli r1, zero, 64
001300  ea25bd34  vor.u.mh vr11{mr2}, r26, vr11
001304  7e8100e0  vmmov mr2, r1
001308  eaa5bd34  vor.u.mh vr11{mr2}, r27, vr11
00130c  e3408fef  loadli.w r1,  -2108(r30)
001310  7e0101e0  vmmov mr2, r2
001314  1f010002  addli r2, zero, 256
001318  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
00131c  e3009fef  loadli.w r1,  -2104(r30)
001320  7e0101e0  vmmov mr2, r2
001324  1f010008  addli r2, zero, 1024
001328  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
00132c  e3409fef  loadli.w r1,  -2100(r30)
001330  7e0101e0  vmmov mr2, r2
001334  1f010010  addli r2, zero, 2048
001338  eaa5b036  vor.u.mh vr11{mr3}, r1, vr11
00133c  e300afef  loadli.w r1,  -2096(r30)
001340  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001344  e340afef  loadli.w r1,  -2092(r30)
001348  7e0101e0  vmmov mr2, r2
00134c  1f010020  addli r2, zero, 4096
001350  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001354  e300bfef  loadli.w r1,  -2088(r30)
001358  7e0101e0  vmmov mr2, r2
00135c  1f010040  addli r2, zero, 8192
001360  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001364  e340bfef  loadli.w r1,  -2084(r30)
001368  7e0101e0  vmmov mr2, r2
00136c  2b410000  lui r2, 4
001370  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001374  e300cfef  loadli.w r1,  -2080(r30)
001378  7e0101e0  vmmov mr2, r2
00137c  1f110000  addli r2, zero, 1
001380  eaa5b034  vor.u.mh vr11{mr2}, r1, vr11
001384  e340cfef  loadli.w r1,  -2076(r30)
001388  7e0101e0  vmmov mr2, r2
00138c  1f210000  addli r2, zero, 2
001390  eaa5b030  vor.u.mh vr11{mr0}, r1, vr11
001394  e300dfef  loadli.w r1,  -2072(r30)
001398  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
00139c  e340dfef  loadli.w r1,  -2068(r30)
0013a0  7e0101e0  vmmov mr2, r2
0013a4  1f410000  addli r2, zero, 4
0013a8  1613b202  vadd.f.mz.rn vr6{mr1}, vr4, vr11
0013ac  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0013b0  e300efef  loadli.w r1,  -2064(r30)
0013b4  7e0101e0  vmmov mr2, r2
0013b8  1f011000  addli r2, zero, 8
0013bc  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0013c0  e340efef  loadli.w r1,  -2060(r30)
0013c4  7e0101e0  vmmov mr2, r2
0013c8  1f012000  addli r2, zero, 16
0013cc  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0013d0  e300ffef  loadli.w r1,  -2056(r30)
0013d4  7e0101e0  vmmov mr2, r2
0013d8  1f014000  addli r2, zero, 32
0013dc  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0013e0  e340ffef  loadli.w r1,  -2052(r30)
0013e4  7e0101e0  vmmov mr2, r2
0013e8  1f018000  addli r2, zero, 64
0013ec  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
0013f0  e3000ff0  loadli.w r1,  -2048(r30)
0013f4  7e0101e0  vmmov mr2, r2
0013f8  1f010001  addli r2, zero, 128
0013fc  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001400  e3400ff0  loadli.w r1,  -2044(r30)
001404  7e0101e0  vmmov mr2, r2
001408  1f010002  addli r2, zero, 256
00140c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001410  e3001ff0  loadli.w r1,  -2040(r30)
001414  7e0101e0  vmmov mr2, r2
001418  1f010008  addli r2, zero, 1024
00141c  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001420  e3401ff0  loadli.w r1,  -2036(r30)
001424  7e0101e0  vmmov mr2, r2
001428  1f010010  addli r2, zero, 2048
00142c  eaa13036  vor.u.mh vr3{mr3}, r1, vr3
001430  e3002ff0  loadli.w r1,  -2032(r30)
001434  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001438  e3402ff0  loadli.w r1,  -2028(r30)
00143c  7e0101e0  vmmov mr2, r2
001440  1f010020  addli r2, zero, 4096
001444  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001448  e3003ff0  loadli.w r1,  -2024(r30)
00144c  7e0101e0  vmmov mr2, r2
001450  1f010040  addli r2, zero, 8192
001454  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001458  e3403ff0  loadli.w r1,  -2020(r30)
00145c  7e0101e0  vmmov mr2, r2
001460  2b410000  lui r2, 4
001464  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001468  e3004ff0  loadli.w r1,  -2016(r30)
00146c  7e0101e0  vmmov mr2, r2
001470  1f110000  addli r2, zero, 1
001474  eaa13034  vor.u.mh vr3{mr2}, r1, vr3
001478  e3404ff0  loadli.w r1,  -2012(r30)
00147c  eaa13030  vor.u.mh vr3{mr0}, r1, vr3
001480  e3005ff0  loadli.w r1,  -2008(r30)
001484  7e0001e0  vmmov mr0, r2
001488  1f210000  addli r2, zero, 2
00148c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
001490  e3405ff0  loadli.w r1,  -2004(r30)
001494  7e0001e0  vmmov mr0, r2
001498  1f410000  addli r2, zero, 4
00149c  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0014a0  e3006ff0  loadli.w r1,  -2000(r30)
0014a4  7e0001e0  vmmov mr0, r2
0014a8  1f011000  addli r2, zero, 8
0014ac  7e0101e0  vmmov mr2, r2
0014b0  1f012000  addli r2, zero, 16
0014b4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0014b8  e3406ff0  loadli.w r1,  -1996(r30)
0014bc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0014c0  e3007ff0  loadli.w r1,  -1992(r30)
0014c4  7e0101e0  vmmov mr2, r2
0014c8  1f014000  addli r2, zero, 32
0014cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0014d0  e3407ff0  loadli.w r1,  -1988(r30)
0014d4  7e0101e0  vmmov mr2, r2
0014d8  1f018000  addli r2, zero, 64
0014dc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0014e0  e3008ff0  loadli.w r1,  -1984(r30)
0014e4  7e0101e0  vmmov mr2, r2
0014e8  1f010001  addli r2, zero, 128
0014ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0014f0  e3408ff0  loadli.w r1,  -1980(r30)
0014f4  7e0101e0  vmmov mr2, r2
0014f8  1f010002  addli r2, zero, 256
0014fc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001500  e3009ff0  loadli.w r1,  -1976(r30)
001504  7e0101e0  vmmov mr2, r2
001508  1f010008  addli r2, zero, 1024
00150c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001510  e3409ff0  loadli.w r1,  -1972(r30)
001514  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001518  e300aff0  loadli.w r1,  -1968(r30)
00151c  fe0101e0  vmmov mr3, r2
001520  1f010010  addli r2, zero, 2048
001524  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001528  e340aff0  loadli.w r1,  -1964(r30)
00152c  fe0101e0  vmmov mr3, r2
001530  1f010020  addli r2, zero, 4096
001534  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001538  e300bff0  loadli.w r1,  -1960(r30)
00153c  fe0101e0  vmmov mr3, r2
001540  1f010040  addli r2, zero, 8192
001544  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001548  e340bff0  loadli.w r1,  -1956(r30)
00154c  fe0101e0  vmmov mr3, r2
001550  2b410000  lui r2, 4
001554  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001558  e300cff0  loadli.w r1,  -1952(r30)
00155c  fe0101e0  vmmov mr3, r2
001560  2b810000  lui r2, 8
001564  7e0101e0  vmmov mr2, r2
001568  1f110000  addli r2, zero, 1
00156c  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
001570  e340cff0  loadli.w r1,  -1948(r30)
001574  fe0101e0  vmmov mr3, r2
001578  1f210000  addli r2, zero, 2
00157c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
001580  e300dff0  loadli.w r1,  -1944(r30)
001584  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001588  e340dff0  loadli.w r1,  -1940(r30)
00158c  fe0101e0  vmmov mr3, r2
001590  1f011000  addli r2, zero, 8
001594  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001598  e300eff0  loadli.w r1,  -1936(r30)
00159c  fe0101e0  vmmov mr3, r2
0015a0  1f012000  addli r2, zero, 16
0015a4  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0015a8  e340eff0  loadli.w r1,  -1932(r30)
0015ac  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0015b0  e300fff0  loadli.w r1,  -1928(r30)
0015b4  fe0101e0  vmmov mr3, r2
0015b8  1f014000  addli r2, zero, 32
0015bc  7e0101e0  vmmov mr2, r2
0015c0  1f018000  addli r2, zero, 64
0015c4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0015c8  e340fff0  loadli.w r1,  -1924(r30)
0015cc  fe0101e0  vmmov mr3, r2
0015d0  1f010001  addli r2, zero, 128
0015d4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0015d8  e3400ff1  loadli.w r1,  -1916(r30)
0015dc  7e0101e0  vmmov mr2, r2
0015e0  1f010002  addli r2, zero, 256
0015e4  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
0015e8  e3401ff1  loadli.w r1,  -1908(r30)
0015ec  fe0101e0  vmmov mr3, r2
0015f0  1f010004  addli r2, zero, 512
0015f4  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0015f8  e3402ff1  loadli.w r1,  -1900(r30)
0015fc  7e0101e0  vmmov mr2, r2
001600  1f010008  addli r2, zero, 1024
001604  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001608  e3403ff1  loadli.w r1,  -1892(r30)
00160c  fe0101e0  vmmov mr3, r2
001610  1f010010  addli r2, zero, 2048
001614  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
001618  e3404ff1  loadli.w r1,  -1884(r30)
00161c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001620  e3405ff1  loadli.w r1,  -1876(r30)
001624  fe0101e0  vmmov mr3, r2
001628  1f010020  addli r2, zero, 4096
00162c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001630  e3406ff1  loadli.w r1,  -1868(r30)
001634  fe0101e0  vmmov mr3, r2
001638  1f010040  addli r2, zero, 8192
00163c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001640  e3407ff1  loadli.w r1,  -1860(r30)
001644  fe0101e0  vmmov mr3, r2
001648  2b410000  lui r2, 4
00164c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001650  e3408ff1  loadli.w r1,  -1852(r30)
001654  fe0101e0  vmmov mr3, r2
001658  2b810000  lui r2, 8
00165c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001660  e3409ff1  loadli.w r1,  -1844(r30)
001664  fe0101e0  vmmov mr3, r2
001668  1f110000  addli r2, zero, 1
00166c  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
001670  e340aff1  loadli.w r1,  -1836(r30)
001674  fe0101e0  vmmov mr3, r2
001678  1f210000  addli r2, zero, 2
00167c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001680  e340bff1  loadli.w r1,  -1828(r30)
001684  fe0101e0  vmmov mr3, r2
001688  1f011000  addli r2, zero, 8
00168c  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
001690  e340cff1  loadli.w r1,  -1820(r30)
001694  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001698  e340dff1  loadli.w r1,  -1812(r30)
00169c  7e0001e0  vmmov mr0, r2
0016a0  1f012000  addli r2, zero, 16
0016a4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016a8  e340eff1  loadli.w r1,  -1804(r30)
0016ac  7e0001e0  vmmov mr0, r2
0016b0  1f014000  addli r2, zero, 32
0016b4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016b8  e340fff1  loadli.w r1,  -1796(r30)
0016bc  7e0001e0  vmmov mr0, r2
0016c0  1f018000  addli r2, zero, 64
0016c4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016c8  e3400ff2  loadli.w r1,  -1788(r30)
0016cc  7e0001e0  vmmov mr0, r2
0016d0  1f010001  addli r2, zero, 128
0016d4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016d8  e3401ff2  loadli.w r1,  -1780(r30)
0016dc  7e0001e0  vmmov mr0, r2
0016e0  1f010002  addli r2, zero, 256
0016e4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016e8  e3402ff2  loadli.w r1,  -1772(r30)
0016ec  7e0001e0  vmmov mr0, r2
0016f0  1f010008  addli r2, zero, 1024
0016f4  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0016f8  e3403ff2  loadli.w r1,  -1764(r30)
0016fc  7e0001e0  vmmov mr0, r2
001700  1f010010  addli r2, zero, 2048
001704  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
001708  e3008ff2  loadli.w r1,  -1728(r30)
00170c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001710  e3008ff3  loadli.w r1,  -1600(r30)
001714  7e0001e0  vmmov mr0, r2
001718  1f010020  addli r2, zero, 4096
00171c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001720  9f008ff3  addli r1, r30, -1600
001724  00a00000  mfence { lm }
001728  7e0001e0  vmmov mr0, r2
00172c  1f010040  addli r2, zero, 8192
001730  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
001734  9f008ff2  addli r1, r30, -1728
001738  b6125402  vmax.f.mz vr5{mr1}, vr8, vr5
00173c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
001740  e3000ff4  loadli.w r1,  -1536(r30)
001744  36927202  vmax.f.mz vr4{mr1}, vr5, vr7
001748  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00174c  9f000ff4  addli r1, r30, -1536
001750  00a00000  mfence { lm }
001754  7e0001e0  vmmov mr0, r2
001758  2b410000  lui r2, 4
00175c  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
001760  9f008ff5  addli r1, r30, -1344
001764  c2920002  vload_mask16.mz vr5{mr1}, 0(r1)
001768  e3008ff4  loadli.w r1,  -1472(r30)
00176c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
001770  9f008ff4  addli r1, r30, -1472
001774  00a00000  mfence { lm }
001778  7e0001e0  vmmov mr0, r2
00177c  2b810000  lui r2, 8
001780  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
001784  9f000ff6  addli r1, r30, -1280
001788  96923202  vadd.f.mz.rn vr5{mr1}, vr5, vr3
00178c  b6116202  vmax.f.mz vr3{mr1}, vr4, vr6
001790  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
001794  e3000ff5  loadli.w r1,  -1408(r30)
001798  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00179c  9f000ff5  addli r1, r30, -1408
0017a0  00a00000  mfence { lm }
0017a4  7e0001e0  vmmov mr0, r2
0017a8  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
0017ac  9f008ff6  addli r1, r30, -1216
0017b0  16122202  vadd.f.mz.rn vr4{mr1}, vr4, vr2
0017b4  36915102  vmax.f.mz vr2{mr1}, vr3, vr5
0017b8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0017bc  e3407ff3  loadli.w r1,  -1604(r30)
0017c0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0017c4  9f008ff5  addli r1, r30, -1344
0017c8  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0017cc  9f008ff7  addli r1, r30, -1088
0017d0  96911102  vadd.f.mz.rn vr3{mr1}, vr3, vr1
0017d4  b6104102  vmax.f.mz vr1{mr1}, vr2, vr4
0017d8  42910002  vload_mask16.mz vr2{mr1}, 0(r1)
0017dc  9f000ff6  addli r1, r30, -1280
0017e0  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0017e4  9f008ff6  addli r1, r30, -1216
0017e8  16110102  vadd.f.mz.rn vr2{mr1}, vr2, vr0
0017ec  36903002  vmax.f.mz vr0{mr1}, vr1, vr3
0017f0  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0017f4  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0017f8  9f008ff7  addli r1, r30, -1088
0017fc  7a110040  vextracti.f r2, 0(vr0)
001800  fa111040  vextracti.f r3, 1(vr0)
001804  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
001808  57000000  jal 0
00180c  9f008ff7  addli r1, r30, -1088
001810  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001814  fa112040  vextracti.f r3, 2(vr0)
001818  57000000  jal 0
00181c  9f008ff7  addli r1, r30, -1088
001820  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001824  fa113040  vextracti.f r3, 3(vr0)
001828  57000000  jal 0
00182c  9f008ff7  addli r1, r30, -1088
001830  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001834  fa114040  vextracti.f r3, 4(vr0)
001838  57000000  jal 0
00183c  9f008ff7  addli r1, r30, -1088
001840  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001844  fa115040  vextracti.f r3, 5(vr0)
001848  57000000  jal 0
00184c  9f008ff7  addli r1, r30, -1088
001850  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001854  fa116040  vextracti.f r3, 6(vr0)
001858  57000000  jal 0
00185c  9f008ff7  addli r1, r30, -1088
001860  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001864  fa117040  vextracti.f r3, 7(vr0)
001868  57000000  jal 0
00186c  9f008ff7  addli r1, r30, -1088
001870  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001874  fa118040  vextracti.f r3, 8(vr0)
001878  57000000  jal 0
00187c  9f008ff7  addli r1, r30, -1088
001880  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001884  fa119040  vextracti.f r3, 9(vr0)
001888  57000000  jal 0
00188c  9f008ff7  addli r1, r30, -1088
001890  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
001894  fa11a040  vextracti.f r3, 10(vr0)
001898  57000000  jal 0
00189c  9f008ff7  addli r1, r30, -1088
0018a0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018a4  fa11b040  vextracti.f r3, 11(vr0)
0018a8  57000000  jal 0
0018ac  9f008ff7  addli r1, r30, -1088
0018b0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018b4  fa11c040  vextracti.f r3, 12(vr0)
0018b8  57000000  jal 0
0018bc  9f008ff7  addli r1, r30, -1088
0018c0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018c4  fa11d040  vextracti.f r3, 13(vr0)
0018c8  57000000  jal 0
0018cc  9f008ff7  addli r1, r30, -1088
0018d0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018d4  fa11e040  vextracti.f r3, 14(vr0)
0018d8  57000000  jal 0
0018dc  9f008ff7  addli r1, r30, -1088
0018e0  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0018e4  fa11f040  vextracti.f r3, 15(vr0)
0018e8  57000000  jal 0
0018ec  e3405fef  loadli.w r1,  -2132(r30)
0018f0  e3048fef  loadli.w r9,  -2112(r30)
0018f4  73e02000  stores.w r2, 0(r1)
0018f8  00a00300  mfence { lm, sm, gm }
0018fc  80a10404  csr_set csr3, r9
001900  00d00100  sync_group
001904  63037fef  loadli.w r6,  -2120(r30)
001908  bb030300  bneq r6, zero, 224
00190c  e34b7fef  loadli.w r23,  -2116(r30)
001910  efc0cb02  loads.w r1, 44(r23)
001914  6fc10b00  loads.w r2, 0(r23)
001918  efc14b00  loads.w r3, 4(r23)
00191c  6fcd8b00  loads.w r26, 8(r23)
001920  efcdcb00  loads.w r27, 12(r23)
001924  6fce0b01  loads.w r28, 16(r23)
001928  efc94b01  loads.w r19, 20(r23)
00192c  6fca8b01  loads.w r20, 24(r23)
001930  efcacb01  loads.w r21, 28(r23)
001934  6fcb0b02  loads.w r22, 32(r23)
001938  efcc4b02  loads.w r25, 36(r23)
00193c  6fcc8b02  loads.w r24, 40(r23)
001940  67431ff2  storeli.w r1, -1740(r30)
001944  efc00b03  loads.w r1, 48(r23)
001948  e7031ff2  storeli.w r1, -1736(r30)
00194c  efc04b03  loads.w r1, 52(r23)
001950  e7431ff2  storeli.w r1, -1732(r30)
001954  efc08b03  loads.w r1, 56(r23)
001958  e74b1ff2  storeli.w r1, -1604(r30)
00195c  efc0cb03  loads.w r1, 60(r23)
001960  00a00000  mfence { lm }
001964  670c1ff6  storeli.w r1, -1088(r30)
001968  57000000  jal 0
00196c  9f010d00  addli r3, r26, 0
001970  57000000  jal 0
001974  9f810d00  addli r3, r27, 0
001978  57000000  jal 0
00197c  9f010e00  addli r3, r28, 0
001980  57000000  jal 0
001984  9f810900  addli r3, r19, 0
001988  57000000  jal 0
00198c  9f010a00  addli r3, r20, 0
001990  57000000  jal 0
001994  9f810a00  addli r3, r21, 0
001998  57000000  jal 0
00199c  9f010b00  addli r3, r22, 0
0019a0  57000000  jal 0
0019a4  9f810c00  addli r3, r25, 0
0019a8  57000000  jal 0
0019ac  9f010c00  addli r3, r24, 0
0019b0  57000000  jal 0
0019b4  e3416ff2  loadli.w r3,  -1740(r30)
0019b8  57000000  jal 0
0019bc  e3017ff2  loadli.w r3,  -1736(r30)
0019c0  57000000  jal 0
0019c4  e3417ff2  loadli.w r3,  -1732(r30)
0019c8  57000000  jal 0
0019cc  e3417ff3  loadli.w r3,  -1604(r30)
0019d0  57000000  jal 0
0019d4  e3018ff7  loadli.w r3,  -1088(r30)
0019d8  57000000  jal 0
0019dc  63037fef  loadli.w r6,  -2120(r30)
0019e0  e3048fef  loadli.w r9,  -2112(r30)
0019e4  73e02b00  stores.w r2, 0(r23)
0019e8  00a00300  mfence { lm, sm, gm }
0019ec  80a10404  csr_set csr3, r9
0019f0  00d00100  sync_group
0019f4  e3407fef  loadli.w r1,  -2116(r30)
0019f8  2b010080  lui r2, 524288
0019fc  9f028fee  addli r5, r30, -2240
001a00  9f030040  addli r7, zero, 8192
001a04  42950202  vload_mask16.mz vr10{mr1}, 0(r5)
001a08  9f120000  addli r5, zero, 1
001a0c  efc00000  loads.w r1, 0(r1)
001a10  7e8002e0  vmmov mr0, r5
001a14  9f220000  addli r5, zero, 2
001a18  1231a002  vadd.s.mz vr2{mr1}, zero, vr10
001a1c  97a02000  xor r1, r1, r2
001a20  1f018ff2  addli r2, r30, -1728
001a24  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
001a28  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
001a2c  7a110040  vextracti.f r2, 0(vr0)
001a30  fa111040  vextracti.f r3, 1(vr0)
001a34  7a122040  vextracti.f r4, 2(vr0)
001a38  0f010100  exp.f.rn r2, r2
001a3c  8f810100  exp.f.rn r3, r3
001a40  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001a44  0f010200  exp.f.rn r2, r4
001a48  7a123040  vextracti.f r4, 3(vr0)
001a4c  7e8002e0  vmmov mr0, r5
001a50  9f420000  addli r5, zero, 4
001a54  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
001a58  8f010200  exp.f.rn r3, r4
001a5c  7a124040  vextracti.f r4, 4(vr0)
001a60  7e8002e0  vmmov mr0, r5
001a64  9f021000  addli r5, zero, 8
001a68  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001a6c  0f010200  exp.f.rn r2, r4
001a70  7a125040  vextracti.f r4, 5(vr0)
001a74  7e8002e0  vmmov mr0, r5
001a78  9f022000  addli r5, zero, 16
001a7c  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
001a80  8f010200  exp.f.rn r3, r4
001a84  7a126040  vextracti.f r4, 6(vr0)
001a88  7e8002e0  vmmov mr0, r5
001a8c  9f024000  addli r5, zero, 32
001a90  7e8102e0  vmmov mr2, r5
001a94  9f028000  addli r5, zero, 64
001a98  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001a9c  0f010200  exp.f.rn r2, r4
001aa0  7a127040  vextracti.f r4, 7(vr0)
001aa4  7e8002e0  vmmov mr0, r5
001aa8  9f020001  addli r5, zero, 128
001aac  fe8102e0  vmmov mr3, r5
001ab0  9f020002  addli r5, zero, 256
001ab4  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
001ab8  8f010200  exp.f.rn r3, r4
001abc  7a128040  vextracti.f r4, 8(vr0)
001ac0  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001ac4  0f010200  exp.f.rn r2, r4
001ac8  7a129040  vextracti.f r4, 9(vr0)
001acc  7e8002e0  vmmov mr0, r5
001ad0  9f020004  addli r5, zero, 512
001ad4  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
001ad8  8f010200  exp.f.rn r3, r4
001adc  7a12a040  vextracti.f r4, 10(vr0)
001ae0  fe8102e0  vmmov mr3, r5
001ae4  9f020008  addli r5, zero, 1024
001ae8  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001aec  0f010200  exp.f.rn r2, r4
001af0  7a12b040  vextracti.f r4, 11(vr0)
001af4  7e8002e0  vmmov mr0, r5
001af8  9f020010  addli r5, zero, 2048
001afc  7e8102e0  vmmov mr2, r5
001b00  9f028ff3  addli r5, r30, -1600
001b04  6aa12136  vor.u.mh vr2{mr3}, r3, vr2
001b08  8f010200  exp.f.rn r3, r4
001b0c  7a12c040  vextracti.f r4, 12(vr0)
001b10  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001b14  0f010200  exp.f.rn r2, r4
001b18  7a12d040  vextracti.f r4, 13(vr0)
001b1c  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
001b20  c2900202  vload_mask16.mz vr1{mr1}, 0(r5)
001b24  8f010200  exp.f.rn r3, r4
001b28  9f020020  addli r5, zero, 4096
001b2c  7a12e040  vextracti.f r4, 14(vr0)
001b30  7e8103e0  vmmov mr2, r7
001b34  ab430000  lui r7, 4
001b38  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
001b3c  7e8002e0  vmmov mr0, r5
001b40  fa920040  vextracti.f r5, 0(vr1)
001b44  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001b48  0f010200  exp.f.rn r2, r4
001b4c  7a12f040  vextracti.f r4, 15(vr0)
001b50  7e8003e0  vmmov mr0, r7
001b54  9f430000  addli r7, zero, 4
001b58  1230a002  vadd.s.mz vr0{mr1}, zero, vr10
001b5c  6aa12134  vor.u.mh vr2{mr2}, r3, vr2
001b60  8f010200  exp.f.rn r3, r4
001b64  0f820200  exp.f.rn r4, r5
001b68  7e8103e0  vmmov mr2, r7
001b6c  fa921040  vextracti.f r5, 1(vr1)
001b70  ab830000  lui r7, 8
001b74  6a212130  vor.u.mh vr2{mr0}, r2, vr2
001b78  7e8003e0  vmmov mr0, r7
001b7c  0f810200  exp.f.rn r2, r5
001b80  fa922040  vextracti.f r5, 2(vr1)
001b84  9f030040  addli r7, zero, 8192
001b88  6aa12130  vor.u.mh vr2{mr0}, r3, vr2
001b8c  9f110000  addli r3, zero, 1
001b90  7e8001e0  vmmov mr0, r3
001b94  8f810200  exp.f.rn r3, r5
001b98  9f220000  addli r5, zero, 2
001b9c  6a200230  vor.u.mh vr0{mr0}, r4, vr0
001ba0  7a923040  vextracti.f r4, 3(vr1)
001ba4  7e8002e0  vmmov mr0, r5
001ba8  9f021000  addli r5, zero, 8
001bac  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001bb0  0f010200  exp.f.rn r2, r4
001bb4  7a924040  vextracti.f r4, 4(vr1)
001bb8  7e8002e0  vmmov mr0, r5
001bbc  9f022000  addli r5, zero, 16
001bc0  6aa00134  vor.u.mh vr0{mr2}, r3, vr0
001bc4  8f010200  exp.f.rn r3, r4
001bc8  7a925040  vextracti.f r4, 5(vr1)
001bcc  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001bd0  0f010200  exp.f.rn r2, r4
001bd4  7a926040  vextracti.f r4, 6(vr1)
001bd8  7e8002e0  vmmov mr0, r5
001bdc  9f024000  addli r5, zero, 32
001be0  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001be4  8f010200  exp.f.rn r3, r4
001be8  7a927040  vextracti.f r4, 7(vr1)
001bec  7e8002e0  vmmov mr0, r5
001bf0  9f028000  addli r5, zero, 64
001bf4  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001bf8  0f010200  exp.f.rn r2, r4
001bfc  7a928040  vextracti.f r4, 8(vr1)
001c00  7e8002e0  vmmov mr0, r5
001c04  9f020001  addli r5, zero, 128
001c08  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001c0c  8f010200  exp.f.rn r3, r4
001c10  7a929040  vextracti.f r4, 9(vr1)
001c14  7e8002e0  vmmov mr0, r5
001c18  9f020002  addli r5, zero, 256
001c1c  6a200130  vor.u.mh vr0{mr0}, r2, vr0
001c20  0f010200  exp.f.rn r2, r4
001c24  7a92a040  vextracti.f r4, 10(vr1)
001c28  7e8002e0  vmmov mr0, r5
001c2c  9f020008  addli r5, zero, 1024
001c30  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001c34  8f010200  exp.f.rn r3, r4
001c38  7a92b040  vextracti.f r4, 11(vr1)
001c3c  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001c40  0f010200  exp.f.rn r2, r4
001c44  7a92c040  vextracti.f r4, 12(vr1)
001c48  fe8102e0  vmmov mr3, r5
001c4c  9f020010  addli r5, zero, 2048
001c50  6aa00136  vor.u.mh vr0{mr3}, r3, vr0
001c54  8f010200  exp.f.rn r3, r4
001c58  7a92d040  vextracti.f r4, 13(vr1)
001c5c  fe8102e0  vmmov mr3, r5
001c60  9f020ff4  addli r5, r30, -1536
001c64  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001c68  c2910202  vload_mask16.mz vr3{mr1}, 0(r5)
001c6c  0f010200  exp.f.rn r2, r4
001c70  9f020020  addli r5, zero, 4096
001c74  7a92e040  vextracti.f r4, 14(vr1)
001c78  fe8103e0  vmmov mr3, r7
001c7c  ab430000  lui r7, 4
001c80  92913002  vadd.f.mz.rn vr3{mr1}, r1, vr3
001c84  7e8002e0  vmmov mr0, r5
001c88  fa920140  vextracti.f r5, 0(vr3)
001c8c  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001c90  8f010200  exp.f.rn r3, r4
001c94  7a92f040  vextracti.f r4, 15(vr1)
001c98  9230a002  vadd.s.mz vr1{mr1}, zero, vr10
001c9c  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001ca0  0f010200  exp.f.rn r2, r4
001ca4  fe8103e0  vmmov mr3, r7
001ca8  0f820200  exp.f.rn r4, r5
001cac  fa921140  vextracti.f r5, 1(vr3)
001cb0  ab830000  lui r7, 8
001cb4  7e8001c0  vmmov mr0, mr3
001cb8  fe8103e0  vmmov mr3, r7
001cbc  9f030040  addli r7, zero, 8192
001cc0  6aa00130  vor.u.mh vr0{mr0}, r3, vr0
001cc4  8f810200  exp.f.rn r3, r5
001cc8  fa922140  vextracti.f r5, 2(vr3)
001ccc  6a200136  vor.u.mh vr0{mr3}, r2, vr0
001cd0  1f110000  addli r2, zero, 1
001cd4  7e0001e0  vmmov mr0, r2
001cd8  0f810200  exp.f.rn r2, r5
001cdc  9f220000  addli r5, zero, 2
001ce0  ea201230  vor.u.mh vr1{mr0}, r4, vr1
001ce4  7a923140  vextracti.f r4, 3(vr3)
001ce8  7e8002e0  vmmov mr0, r5
001cec  9f021000  addli r5, zero, 8
001cf0  96140102  vadd.f.mz.rn vr9{mr1}, vr2, vr0
001cf4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001cf8  8f010200  exp.f.rn r3, r4
001cfc  7a924140  vextracti.f r4, 4(vr3)
001d00  7e8002e0  vmmov mr0, r5
001d04  9f022000  addli r5, zero, 16
001d08  ea201134  vor.u.mh vr1{mr2}, r2, vr1
001d0c  0f010200  exp.f.rn r2, r4
001d10  7a925140  vextracti.f r4, 5(vr3)
001d14  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001d18  8f010200  exp.f.rn r3, r4
001d1c  7a926140  vextracti.f r4, 6(vr3)
001d20  7e8002e0  vmmov mr0, r5
001d24  9f024000  addli r5, zero, 32
001d28  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001d2c  0f010200  exp.f.rn r2, r4
001d30  7a927140  vextracti.f r4, 7(vr3)
001d34  7e8002e0  vmmov mr0, r5
001d38  9f028000  addli r5, zero, 64
001d3c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001d40  8f010200  exp.f.rn r3, r4
001d44  7a928140  vextracti.f r4, 8(vr3)
001d48  7e8002e0  vmmov mr0, r5
001d4c  9f020001  addli r5, zero, 128
001d50  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001d54  0f010200  exp.f.rn r2, r4
001d58  7a929140  vextracti.f r4, 9(vr3)
001d5c  7e8002e0  vmmov mr0, r5
001d60  9f020002  addli r5, zero, 256
001d64  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001d68  8f010200  exp.f.rn r3, r4
001d6c  7a92a140  vextracti.f r4, 10(vr3)
001d70  7e8002e0  vmmov mr0, r5
001d74  9f020004  addli r5, zero, 512
001d78  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001d7c  0f010200  exp.f.rn r2, r4
001d80  7a92b140  vextracti.f r4, 11(vr3)
001d84  7e8002e0  vmmov mr0, r5
001d88  9f020008  addli r5, zero, 1024
001d8c  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001d90  8f010200  exp.f.rn r3, r4
001d94  7a92c140  vextracti.f r4, 12(vr3)
001d98  7e8002e0  vmmov mr0, r5
001d9c  9f020010  addli r5, zero, 2048
001da0  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001da4  0f010200  exp.f.rn r2, r4
001da8  7a92d140  vextracti.f r4, 13(vr3)
001dac  7e8002e0  vmmov mr0, r5
001db0  9f028ff4  addli r5, r30, -1472
001db4  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001db8  42920202  vload_mask16.mz vr4{mr1}, 0(r5)
001dbc  8f010200  exp.f.rn r3, r4
001dc0  9f020020  addli r5, zero, 4096
001dc4  7a92e140  vextracti.f r4, 14(vr3)
001dc8  7e8003e0  vmmov mr0, r7
001dcc  ab430000  lui r7, 4
001dd0  12924002  vadd.f.mz.rn vr4{mr1}, r1, vr4
001dd4  fe8102e0  vmmov mr3, r5
001dd8  fa120240  vextracti.f r5, 0(vr4)
001ddc  ea201136  vor.u.mh vr1{mr3}, r2, vr1
001de0  0f010200  exp.f.rn r2, r4
001de4  7a92f140  vextracti.f r4, 15(vr3)
001de8  9231a002  vadd.s.mz vr3{mr1}, zero, vr10
001dec  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001df0  8f010200  exp.f.rn r3, r4
001df4  7e8003e0  vmmov mr0, r7
001df8  0f820200  exp.f.rn r4, r5
001dfc  fa121240  vextracti.f r5, 1(vr4)
001e00  ab830000  lui r7, 8
001e04  ea201130  vor.u.mh vr1{mr0}, r2, vr1
001e08  7e8003e0  vmmov mr0, r7
001e0c  0f810200  exp.f.rn r2, r5
001e10  fa122240  vextracti.f r5, 2(vr4)
001e14  9f030040  addli r7, zero, 8192
001e18  eaa01130  vor.u.mh vr1{mr0}, r3, vr1
001e1c  9f110000  addli r3, zero, 1
001e20  7e8001e0  vmmov mr0, r3
001e24  8f810200  exp.f.rn r3, r5
001e28  9f220000  addli r5, zero, 2
001e2c  ea213230  vor.u.mh vr3{mr0}, r4, vr3
001e30  7a123240  vextracti.f r4, 3(vr4)
001e34  7e8002e0  vmmov mr0, r5
001e38  9f021000  addli r5, zero, 8
001e3c  96941402  vadd.f.mz.rn vr9{mr1}, vr9, vr1
001e40  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001e44  0f010200  exp.f.rn r2, r4
001e48  7a124240  vextracti.f r4, 4(vr4)
001e4c  7e8002e0  vmmov mr0, r5
001e50  9f022000  addli r5, zero, 16
001e54  eaa13134  vor.u.mh vr3{mr2}, r3, vr3
001e58  8f010200  exp.f.rn r3, r4
001e5c  7a125240  vextracti.f r4, 5(vr4)
001e60  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001e64  0f010200  exp.f.rn r2, r4
001e68  7a126240  vextracti.f r4, 6(vr4)
001e6c  7e8002e0  vmmov mr0, r5
001e70  9f024000  addli r5, zero, 32
001e74  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001e78  8f010200  exp.f.rn r3, r4
001e7c  7a127240  vextracti.f r4, 7(vr4)
001e80  7e8002e0  vmmov mr0, r5
001e84  9f028000  addli r5, zero, 64
001e88  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001e8c  0f010200  exp.f.rn r2, r4
001e90  7a128240  vextracti.f r4, 8(vr4)
001e94  7e8002e0  vmmov mr0, r5
001e98  9f020001  addli r5, zero, 128
001e9c  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001ea0  8f010200  exp.f.rn r3, r4
001ea4  7a129240  vextracti.f r4, 9(vr4)
001ea8  7e8002e0  vmmov mr0, r5
001eac  9f020002  addli r5, zero, 256
001eb0  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001eb4  0f010200  exp.f.rn r2, r4
001eb8  7a12a240  vextracti.f r4, 10(vr4)
001ebc  7e8002e0  vmmov mr0, r5
001ec0  9f020004  addli r5, zero, 512
001ec4  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001ec8  8f010200  exp.f.rn r3, r4
001ecc  7a12b240  vextracti.f r4, 11(vr4)
001ed0  7e8002e0  vmmov mr0, r5
001ed4  9f020008  addli r5, zero, 1024
001ed8  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001edc  0f010200  exp.f.rn r2, r4
001ee0  7a12c240  vextracti.f r4, 12(vr4)
001ee4  7e8002e0  vmmov mr0, r5
001ee8  9f020010  addli r5, zero, 2048
001eec  7e8102e0  vmmov mr2, r5
001ef0  9f020ff5  addli r5, r30, -1408
001ef4  eaa13130  vor.u.mh vr3{mr0}, r3, vr3
001ef8  8f010200  exp.f.rn r3, r4
001efc  7a12d240  vextracti.f r4, 13(vr4)
001f00  7e0001c0  vmmov mr0, mr2
001f04  7e8103e0  vmmov mr2, r7
001f08  ab430000  lui r7, 4
001f0c  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001f10  0f010200  exp.f.rn r2, r4
001f14  7a12e240  vextracti.f r4, 14(vr4)
001f18  c2920202  vload_mask16.mz vr5{mr1}, 0(r5)
001f1c  92925002  vadd.f.mz.rn vr5{mr1}, r1, vr5
001f20  fa920240  vextracti.f r5, 0(vr5)
001f24  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
001f28  8f010200  exp.f.rn r3, r4
001f2c  7a12f240  vextracti.f r4, 15(vr4)
001f30  fe8103e0  vmmov mr3, r7
001f34  ab830000  lui r7, 8
001f38  1232a002  vadd.s.mz vr4{mr1}, zero, vr10
001f3c  7e8003e0  vmmov mr0, r7
001f40  ab830000  lui r7, 8
001f44  ea213134  vor.u.mh vr3{mr2}, r2, vr3
001f48  0f010200  exp.f.rn r2, r4
001f4c  0f820200  exp.f.rn r4, r5
001f50  fa921240  vextracti.f r5, 1(vr5)
001f54  eaa13136  vor.u.mh vr3{mr3}, r3, vr3
001f58  8f810200  exp.f.rn r3, r5
001f5c  fa922240  vextracti.f r5, 2(vr5)
001f60  ea213130  vor.u.mh vr3{mr0}, r2, vr3
001f64  1f110000  addli r2, zero, 1
001f68  7e0001e0  vmmov mr0, r2
001f6c  0f810200  exp.f.rn r2, r5
001f70  9f220000  addli r5, zero, 2
001f74  6a224230  vor.u.mh vr4{mr0}, r4, vr4
001f78  7a923240  vextracti.f r4, 3(vr5)
001f7c  7e8002e0  vmmov mr0, r5
001f80  9f420000  addli r5, zero, 4
001f84  96943402  vadd.f.mz.rn vr9{mr1}, vr9, vr3
001f88  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
001f8c  8f010200  exp.f.rn r3, r4
001f90  7a924240  vextracti.f r4, 4(vr5)
001f94  7e8002e0  vmmov mr0, r5
001f98  9f021000  addli r5, zero, 8
001f9c  6a224130  vor.u.mh vr4{mr0}, r2, vr4
001fa0  0f010200  exp.f.rn r2, r4
001fa4  7a925240  vextracti.f r4, 5(vr5)
001fa8  7e8002e0  vmmov mr0, r5
001fac  9f022000  addli r5, zero, 16
001fb0  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
001fb4  8f010200  exp.f.rn r3, r4
001fb8  7a926240  vextracti.f r4, 6(vr5)
001fbc  7e8002e0  vmmov mr0, r5
001fc0  9f024000  addli r5, zero, 32
001fc4  6a224130  vor.u.mh vr4{mr0}, r2, vr4
001fc8  0f010200  exp.f.rn r2, r4
001fcc  7a927240  vextracti.f r4, 7(vr5)
001fd0  7e8002e0  vmmov mr0, r5
001fd4  9f028000  addli r5, zero, 64
001fd8  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
001fdc  8f010200  exp.f.rn r3, r4
001fe0  7a928240  vextracti.f r4, 8(vr5)
001fe4  7e8002e0  vmmov mr0, r5
001fe8  9f020001  addli r5, zero, 128
001fec  6a224130  vor.u.mh vr4{mr0}, r2, vr4
001ff0  0f010200  exp.f.rn r2, r4
001ff4  7a929240  vextracti.f r4, 9(vr5)
001ff8  7e8002e0  vmmov mr0, r5
001ffc  9f020002  addli r5, zero, 256
002000  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002004  8f010200  exp.f.rn r3, r4
002008  7a92a240  vextracti.f r4, 10(vr5)
00200c  7e8002e0  vmmov mr0, r5
002010  9f020004  addli r5, zero, 512
002014  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002018  0f010200  exp.f.rn r2, r4
00201c  7a92b240  vextracti.f r4, 11(vr5)
002020  7e8002e0  vmmov mr0, r5
002024  9f020008  addli r5, zero, 1024
002028  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
00202c  8f010200  exp.f.rn r3, r4
002030  7a92c240  vextracti.f r4, 12(vr5)
002034  7e8002e0  vmmov mr0, r5
002038  9f020010  addli r5, zero, 2048
00203c  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002040  0f010200  exp.f.rn r2, r4
002044  7a92d240  vextracti.f r4, 13(vr5)
002048  7e8002e0  vmmov mr0, r5
00204c  9f028ff5  addli r5, r30, -1344
002050  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
002054  42930202  vload_mask16.mz vr6{mr1}, 0(r5)
002058  8f010200  exp.f.rn r3, r4
00205c  9f020020  addli r5, zero, 4096
002060  7a92e240  vextracti.f r4, 14(vr5)
002064  12936002  vadd.f.mz.rn vr6{mr1}, r1, vr6
002068  7e8002e0  vmmov mr0, r5
00206c  fa120340  vextracti.f r5, 0(vr6)
002070  6a224130  vor.u.mh vr4{mr0}, r2, vr4
002074  0f010200  exp.f.rn r2, r4
002078  7a92f240  vextracti.f r4, 15(vr5)
00207c  7e8003e0  vmmov mr0, r7
002080  9232a002  vadd.s.mz vr5{mr1}, zero, vr10
002084  9f030040  addli r7, zero, 8192
002088  6aa24134  vor.u.mh vr4{mr2}, r3, vr4
00208c  8f010200  exp.f.rn r3, r4
002090  0f820200  exp.f.rn r4, r5
002094  fa121340  vextracti.f r5, 1(vr6)
002098  6a224136  vor.u.mh vr4{mr3}, r2, vr4
00209c  0f810200  exp.f.rn r2, r5
0020a0  fa122340  vextracti.f r5, 2(vr6)
0020a4  6aa24130  vor.u.mh vr4{mr0}, r3, vr4
0020a8  9f110000  addli r3, zero, 1
0020ac  7e8001e0  vmmov mr0, r3
0020b0  8f810200  exp.f.rn r3, r5
0020b4  9f220000  addli r5, zero, 2
0020b8  ea225230  vor.u.mh vr5{mr0}, r4, vr5
0020bc  7a123340  vextracti.f r4, 3(vr6)
0020c0  fe0100c0  vmmov mr3, mr0
0020c4  7e8002e0  vmmov mr0, r5
0020c8  9f420000  addli r5, zero, 4
0020cc  7e8102e0  vmmov mr2, r5
0020d0  9f021000  addli r5, zero, 8
0020d4  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0020d8  0f010200  exp.f.rn r2, r4
0020dc  7a124340  vextracti.f r4, 4(vr6)
0020e0  7e8002e0  vmmov mr0, r5
0020e4  9f022000  addli r5, zero, 16
0020e8  eaa25134  vor.u.mh vr5{mr2}, r3, vr5
0020ec  8f010200  exp.f.rn r3, r4
0020f0  7a125340  vextracti.f r4, 5(vr6)
0020f4  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0020f8  0f010200  exp.f.rn r2, r4
0020fc  7a126340  vextracti.f r4, 6(vr6)
002100  7e8002e0  vmmov mr0, r5
002104  9f024000  addli r5, zero, 32
002108  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
00210c  8f010200  exp.f.rn r3, r4
002110  7a127340  vextracti.f r4, 7(vr6)
002114  7e8002e0  vmmov mr0, r5
002118  9f028000  addli r5, zero, 64
00211c  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002120  0f010200  exp.f.rn r2, r4
002124  7a128340  vextracti.f r4, 8(vr6)
002128  7e8002e0  vmmov mr0, r5
00212c  9f020001  addli r5, zero, 128
002130  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
002134  8f010200  exp.f.rn r3, r4
002138  7a129340  vextracti.f r4, 9(vr6)
00213c  7e8002e0  vmmov mr0, r5
002140  9f020002  addli r5, zero, 256
002144  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002148  0f010200  exp.f.rn r2, r4
00214c  7a12a340  vextracti.f r4, 10(vr6)
002150  7e8002e0  vmmov mr0, r5
002154  9f020004  addli r5, zero, 512
002158  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
00215c  8f010200  exp.f.rn r3, r4
002160  7a12b340  vextracti.f r4, 11(vr6)
002164  7e8002e0  vmmov mr0, r5
002168  9f020008  addli r5, zero, 1024
00216c  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002170  0f010200  exp.f.rn r2, r4
002174  7a12c340  vextracti.f r4, 12(vr6)
002178  7e8002e0  vmmov mr0, r5
00217c  9f020010  addli r5, zero, 2048
002180  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
002184  8f010200  exp.f.rn r3, r4
002188  7a12d340  vextracti.f r4, 13(vr6)
00218c  7e8002e0  vmmov mr0, r5
002190  9f020ff6  addli r5, r30, -1280
002194  ea225130  vor.u.mh vr5{mr0}, r2, vr5
002198  c2930202  vload_mask16.mz vr7{mr1}, 0(r5)
00219c  0f010200  exp.f.rn r2, r4
0021a0  9f020020  addli r5, zero, 4096
0021a4  7a12e340  vextracti.f r4, 14(vr6)
0021a8  92937002  vadd.f.mz.rn vr7{mr1}, r1, vr7
0021ac  7e8002e0  vmmov mr0, r5
0021b0  fa920340  vextracti.f r5, 0(vr7)
0021b4  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0021b8  8f010200  exp.f.rn r3, r4
0021bc  7a12f340  vextracti.f r4, 15(vr6)
0021c0  7e8003e0  vmmov mr0, r7
0021c4  ab430000  lui r7, 4
0021c8  1233a002  vadd.s.mz vr6{mr1}, zero, vr10
0021cc  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0021d0  0f010200  exp.f.rn r2, r4
0021d4  0f820200  exp.f.rn r4, r5
0021d8  7e8003e0  vmmov mr0, r7
0021dc  fa921340  vextracti.f r5, 1(vr7)
0021e0  ab830000  lui r7, 8
0021e4  eaa25130  vor.u.mh vr5{mr0}, r3, vr5
0021e8  8f810200  exp.f.rn r3, r5
0021ec  7e8003e0  vmmov mr0, r7
0021f0  fa922340  vextracti.f r5, 2(vr7)
0021f4  ea225130  vor.u.mh vr5{mr0}, r2, vr5
0021f8  7e8001c0  vmmov mr0, mr3
0021fc  0f810200  exp.f.rn r2, r5
002200  9f220000  addli r5, zero, 2
002204  6a236230  vor.u.mh vr6{mr0}, r4, vr6
002208  7a923340  vextracti.f r4, 3(vr7)
00220c  fe8102e0  vmmov mr3, r5
002210  9f021000  addli r5, zero, 8
002214  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
002218  8f010200  exp.f.rn r3, r4
00221c  7a924340  vextracti.f r4, 4(vr7)
002220  fe8102e0  vmmov mr3, r5
002224  9f022000  addli r5, zero, 16
002228  6a236134  vor.u.mh vr6{mr2}, r2, vr6
00222c  0f010200  exp.f.rn r2, r4
002230  7a925340  vextracti.f r4, 5(vr7)
002234  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
002238  8f010200  exp.f.rn r3, r4
00223c  7a926340  vextracti.f r4, 6(vr7)
002240  fe8102e0  vmmov mr3, r5
002244  9f024000  addli r5, zero, 32
002248  6a236136  vor.u.mh vr6{mr3}, r2, vr6
00224c  0f010200  exp.f.rn r2, r4
002250  7a927340  vextracti.f r4, 7(vr7)
002254  fe8102e0  vmmov mr3, r5
002258  9f028000  addli r5, zero, 64
00225c  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
002260  8f010200  exp.f.rn r3, r4
002264  7a928340  vextracti.f r4, 8(vr7)
002268  fe8102e0  vmmov mr3, r5
00226c  9f020001  addli r5, zero, 128
002270  6a236136  vor.u.mh vr6{mr3}, r2, vr6
002274  0f010200  exp.f.rn r2, r4
002278  7a929340  vextracti.f r4, 9(vr7)
00227c  fe8102e0  vmmov mr3, r5
002280  9f020002  addli r5, zero, 256
002284  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
002288  8f010200  exp.f.rn r3, r4
00228c  7a92a340  vextracti.f r4, 10(vr7)
002290  fe8102e0  vmmov mr3, r5
002294  9f020004  addli r5, zero, 512
002298  6a236136  vor.u.mh vr6{mr3}, r2, vr6
00229c  0f010200  exp.f.rn r2, r4
0022a0  7a92b340  vextracti.f r4, 11(vr7)
0022a4  fe8102e0  vmmov mr3, r5
0022a8  9f020008  addli r5, zero, 1024
0022ac  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
0022b0  8f010200  exp.f.rn r3, r4
0022b4  7a92c340  vextracti.f r4, 12(vr7)
0022b8  fe8102e0  vmmov mr3, r5
0022bc  9f020010  addli r5, zero, 2048
0022c0  6a236136  vor.u.mh vr6{mr3}, r2, vr6
0022c4  0f010200  exp.f.rn r2, r4
0022c8  fe8102e0  vmmov mr3, r5
0022cc  7a92d340  vextracti.f r4, 13(vr7)
0022d0  9f028ff6  addli r5, r30, -1216
0022d4  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
0022d8  42940202  vload_mask16.mz vr8{mr1}, 0(r5)
0022dc  8f010200  exp.f.rn r3, r4
0022e0  7a92e340  vextracti.f r4, 14(vr7)
0022e4  9f020040  addli r5, zero, 8192
0022e8  12948002  vadd.f.mz.rn vr8{mr1}, r1, vr8
0022ec  9f000020  addli r1, zero, 4096
0022f0  fe8100e0  vmmov mr3, r1
0022f4  8f000200  exp.f.rn r1, r4
0022f8  7a120440  vextracti.f r4, 0(vr8)
0022fc  6a236136  vor.u.mh vr6{mr3}, r2, vr6
002300  7a91f340  vextracti.f r2, 15(vr7)
002304  fe8102e0  vmmov mr3, r5
002308  ab420000  lui r5, 4
00230c  9233a002  vadd.s.mz vr7{mr1}, zero, vr10
002310  0f010100  exp.f.rn r2, r2
002314  6aa36136  vor.u.mh vr6{mr3}, r3, vr6
002318  8f010200  exp.f.rn r3, r4
00231c  7a121440  vextracti.f r4, 1(vr8)
002320  fe8102e0  vmmov mr3, r5
002324  ab820000  lui r5, 8
002328  6aa36036  vor.u.mh vr6{mr3}, r1, vr6
00232c  8f000200  exp.f.rn r1, r4
002330  7a122440  vextracti.f r4, 2(vr8)
002334  fe8102e0  vmmov mr3, r5
002338  6a236136  vor.u.mh vr6{mr3}, r2, vr6
00233c  eaa37130  vor.u.mh vr7{mr0}, r3, vr7
002340  0f010200  exp.f.rn r2, r4
002344  1f220000  addli r4, zero, 2
002348  fa113440  vextracti.f r3, 3(vr8)
00234c  7e0002e0  vmmov mr0, r4
002350  1f021000  addli r4, zero, 8
002354  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002358  8f800100  exp.f.rn r1, r3
00235c  fa114440  vextracti.f r3, 4(vr8)
002360  7e0002e0  vmmov mr0, r4
002364  1f022000  addli r4, zero, 16
002368  ea237134  vor.u.mh vr7{mr2}, r2, vr7
00236c  0f810100  exp.f.rn r2, r3
002370  fa115440  vextracti.f r3, 5(vr8)
002374  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002378  8f800100  exp.f.rn r1, r3
00237c  fa116440  vextracti.f r3, 6(vr8)
002380  7e0002e0  vmmov mr0, r4
002384  1f024000  addli r4, zero, 32
002388  ea237130  vor.u.mh vr7{mr0}, r2, vr7
00238c  0f810100  exp.f.rn r2, r3
002390  fa117440  vextracti.f r3, 7(vr8)
002394  7e0002e0  vmmov mr0, r4
002398  1f028000  addli r4, zero, 64
00239c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0023a0  8f800100  exp.f.rn r1, r3
0023a4  fa118440  vextracti.f r3, 8(vr8)
0023a8  7e0002e0  vmmov mr0, r4
0023ac  1f020001  addli r4, zero, 128
0023b0  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0023b4  0f810100  exp.f.rn r2, r3
0023b8  fa119440  vextracti.f r3, 9(vr8)
0023bc  7e0002e0  vmmov mr0, r4
0023c0  1f020002  addli r4, zero, 256
0023c4  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0023c8  8f800100  exp.f.rn r1, r3
0023cc  fa11a440  vextracti.f r3, 10(vr8)
0023d0  7e0002e0  vmmov mr0, r4
0023d4  1f020004  addli r4, zero, 512
0023d8  ea237130  vor.u.mh vr7{mr0}, r2, vr7
0023dc  0f810100  exp.f.rn r2, r3
0023e0  fa11b440  vextracti.f r3, 11(vr8)
0023e4  7e0002e0  vmmov mr0, r4
0023e8  1f020008  addli r4, zero, 1024
0023ec  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
0023f0  8f800100  exp.f.rn r1, r3
0023f4  fa11c440  vextracti.f r3, 12(vr8)
0023f8  7e0002e0  vmmov mr0, r4
0023fc  1f020010  addli r4, zero, 2048
002400  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002404  0f810100  exp.f.rn r2, r3
002408  fa11d440  vextracti.f r3, 13(vr8)
00240c  7e0002e0  vmmov mr0, r4
002410  1f020020  addli r4, zero, 4096
002414  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002418  8f800100  exp.f.rn r1, r3
00241c  fa11e440  vextracti.f r3, 14(vr8)
002420  7e0002e0  vmmov mr0, r4
002424  1f020040  addli r4, zero, 8192
002428  ea237130  vor.u.mh vr7{mr0}, r2, vr7
00242c  0f810100  exp.f.rn r2, r3
002430  fa11f440  vextracti.f r3, 15(vr8)
002434  7e0002e0  vmmov mr0, r4
002438  16944402  vadd.f.mz.rn vr8{mr1}, vr9, vr4
00243c  eaa37030  vor.u.mh vr7{mr0}, r1, vr7
002440  8f800100  exp.f.rn r1, r3
002444  ab410000  lui r3, 4
002448  16145402  vadd.f.mz.rn vr8{mr1}, vr8, vr5
00244c  7e8001e0  vmmov mr0, r3
002450  ea237130  vor.u.mh vr7{mr0}, r2, vr7
002454  16146402  vadd.f.mz.rn vr8{mr1}, vr8, vr6
002458  eaa37036  vor.u.mh vr7{mr3}, r1, vr7
00245c  16147402  vadd.f.mz.rn vr8{mr1}, vr8, vr7
002460  fa100440  vextracti.f r1, 0(vr8)
002464  7a111440  vextracti.f r2, 1(vr8)
002468  8be02010  add.f.rn r1, r1, r2
00246c  7a112440  vextracti.f r2, 2(vr8)
002470  8b601110  add.f.rn r1, r2, r1
002474  7a113440  vextracti.f r2, 3(vr8)
002478  8b601110  add.f.rn r1, r2, r1
00247c  7a114440  vextracti.f r2, 4(vr8)
002480  8b601110  add.f.rn r1, r2, r1
002484  7a115440  vextracti.f r2, 5(vr8)
002488  8b601110  add.f.rn r1, r2, r1
00248c  7a116440  vextracti.f r2, 6(vr8)
002490  8b601110  add.f.rn r1, r2, r1
002494  7a117440  vextracti.f r2, 7(vr8)
002498  8b601110  add.f.rn r1, r2, r1
00249c  7a118440  vextracti.f r2, 8(vr8)
0024a0  8b601110  add.f.rn r1, r2, r1
0024a4  7a119440  vextracti.f r2, 9(vr8)
0024a8  8b601110  add.f.rn r1, r2, r1
0024ac  7a11a440  vextracti.f r2, 10(vr8)
0024b0  8b601110  add.f.rn r1, r2, r1
0024b4  7a11b440  vextracti.f r2, 11(vr8)
0024b8  8b601110  add.f.rn r1, r2, r1
0024bc  7a11c440  vextracti.f r2, 12(vr8)
0024c0  8b601110  add.f.rn r1, r2, r1
0024c4  7a11d440  vextracti.f r2, 13(vr8)
0024c8  8b601110  add.f.rn r1, r2, r1
0024cc  7a11e440  vextracti.f r2, 14(vr8)
0024d0  8b601110  add.f.rn r1, r2, r1
0024d4  7a11f440  vextracti.f r2, 15(vr8)
0024d8  8b601110  add.f.rn r1, r2, r1
0024dc  63015fef  loadli.w r2,  -2136(r30)
0024e0  73601100  stores.w r1, 0(r2)
0024e4  9f100000  addli r1, zero, 1
0024e8  00a00300  mfence { lm, sm, gm }
0024ec  80a10404  csr_set csr3, r9
0024f0  00d00100  sync_group
0024f4  7e8000e0  vmmov mr0, r1
0024f8  9f200000  addli r1, zero, 2
0024fc  7e8100e0  vmmov mr2, r1
002500  3b6103ee  bneq r6, zero, -9128
002504  63426fef  loadli.w r4,  -2124(r30)
002508  ef400200  loads.w r1, 0(r4)
00250c  6f414200  loads.w r2, 4(r4)
002510  ef418200  loads.w r3, 8(r4)
002514  8be02010  add.f.rn r1, r1, r2
002518  6f41c200  loads.w r2, 12(r4)
00251c  8be03010  add.f.rn r1, r1, r3
002520  ef410201  loads.w r3, 16(r4)
002524  8be02010  add.f.rn r1, r1, r2
002528  6f414201  loads.w r2, 20(r4)
00252c  8be03010  add.f.rn r1, r1, r3
002530  ef418201  loads.w r3, 24(r4)
002534  8be02010  add.f.rn r1, r1, r2
002538  6f41c201  loads.w r2, 28(r4)
00253c  8be03010  add.f.rn r1, r1, r3
002540  ef410202  loads.w r3, 32(r4)
002544  8be02010  add.f.rn r1, r1, r2
002548  6f414202  loads.w r2, 36(r4)
00254c  8be03010  add.f.rn r1, r1, r3
002550  ef418202  loads.w r3, 40(r4)
002554  8be02010  add.f.rn r1, r1, r2
002558  6f41c202  loads.w r2, 44(r4)
00255c  8be03010  add.f.rn r1, r1, r3
002560  ef410203  loads.w r3, 48(r4)
002564  8be02010  add.f.rn r1, r1, r2
002568  6f414203  loads.w r2, 52(r4)
00256c  8be03010  add.f.rn r1, r1, r3
002570  ef418203  loads.w r3, 56(r4)
002574  8be02010  add.f.rn r1, r1, r2
002578  6f41c203  loads.w r2, 60(r4)
00257c  8be03010  add.f.rn r1, r1, r3
002580  8be02010  add.f.rn r1, r1, r2
002584  73601200  stores.w r1, 0(r4)
002588  5b7afbff  j -9264
00258c  9f0e0fee  addli sp, r30, -2304
002590  9f8e0e12  addli sp, sp, 2304
002594  00a00300  mfence { lm, sm, gm }
002598  00100000  exit
