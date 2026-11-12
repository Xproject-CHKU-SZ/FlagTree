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
0000dc  9f8e0efe  addli sp, sp, -256
0000e0  1f8f8e01  addli r30, sp, 192
0000e4  63014f00  loadli.w r2,  32(r30)
0000e8  e3413f00  loadli.w r3,  28(r30)
0000ec  63494f00  loadli.w r18,  36(r30)
0000f0  0b123120  mul.s r4, r2, r3
0000f4  80510002  load_param_i r3, 0
0000f8  0b122221  mul.s r4, r4, r18
0000fc  cb2c3200  ble.s r4, r3, 808
000100  00360002  core_id r12
000104  9f200000  addli r1, zero, 2
000108  80d50002  load_param_i r11, 1
00010c  1f170000  addli r14, zero, 1
000110  1f084000  addli r16, zero, 32
000114  9f098fff  addli r19, r30, -64
000118  1f0a8000  addli r20, zero, 64
00011c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000120  1b364600  slli r12, r12, 4
000124  fe8100e0  vmmov mr3, r1
000128  8b9a2131  div.s r21, r3, r18
00012c  9f000010  addli r1, zero, 2048
000130  2b0b00f0  lui r22, 983040
000134  eb530f00  load.d r[8:9], 0(r30)
000138  2b0c00f0  lui r24, 983040
00013c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000140  1f100000  addli zero, zero, 1
000144  8b91b110  add.s r3, r3, r11
000148  971c6801  or r25, r16, r22
00014c  171c8801  or r24, r16, r24
000150  7e0100e0  vmmov mr2, zero
000154  17200000  xor zero, zero, zero
000158  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00015c  8b9a2a30  div.s r21, r21, r2
000160  9bbaaa00  slli r21, r21, 10
000164  8b9aca10  add.s r21, r21, r12
000168  8b9b1a38  mod.s r23, r21, r1
00016c  b39a0a28  sext_int2long r[22:23], r21
000170  9f008ffe  addli r1, r30, -192
000174  97b2ea02  sll.d r[6:7], r[22:23], r14
000178  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
00017c  eb538f00  load.d r[8:9], 8(r30)
000180  339d0b28  sext_int2long r[27:28], r23
000184  ffac1200  l_gm2lm r25, r1, 0(r[6:7])
000188  9f000fff  addli r1, r30, -128
00018c  173ded02  sll.d r[27:28], r[27:28], r14
000190  0bada311  add.ul r[27:28], r[8:9], r[27:28]
000194  7f2c1d00  l_gm2lm r24, r1, 0(r[27:28])
000198  00a00000  mfence { lm }
00019c  eb320ff4  load.hu r5, -192(r30)
0001a0  6b332ff4  load.hu r6, -190(r30)
0001a4  eb30eff5  load.hu r1, -162(r30)
0001a8  eb3b4ff4  load.hu r23, -188(r30)
0001ac  6b3c6ff4  load.hu r24, -186(r30)
0001b0  eb3c8ff4  load.hu r25, -184(r30)
0001b4  6b3daff4  load.hu r26, -182(r30)
0001b8  eb3dcff4  load.hu r27, -180(r30)
0001bc  6b3eeff4  load.hu r28, -178(r30)
0001c0  eb330ff5  load.hu r7, -176(r30)
0001c4  6b342ff5  load.hu r8, -174(r30)
0001c8  eb344ff5  load.hu r9, -172(r30)
0001cc  6b356ff5  load.hu r10, -170(r30)
0001d0  eb368ff5  load.hu r13, -168(r30)
0001d4  eb37aff5  load.hu r15, -166(r30)
0001d8  eb38cff5  load.hu r17, -164(r30)
0001dc  b3920218  bfloat2float.rn r5, r5
0001e0  b3900018  bfloat2float.rn r1, r1
0001e4  eaa01234  vor.u.mh vr1{mr2}, r5, vr1
0001e8  b3120318  bfloat2float.rn r5, r6
0001ec  1f430000  addli r6, zero, 4
0001f0  7e0003e0  vmmov mr0, r6
0001f4  1f031000  addli r6, zero, 8
0001f8  eaa01236  vor.u.mh vr1{mr3}, r5, vr1
0001fc  b3920b18  bfloat2float.rn r5, r23
000200  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000204  b3120c18  bfloat2float.rn r5, r24
000208  7e0003e0  vmmov mr0, r6
00020c  1f032000  addli r6, zero, 16
000210  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000214  b3920c18  bfloat2float.rn r5, r25
000218  7e0003e0  vmmov mr0, r6
00021c  1f034000  addli r6, zero, 32
000220  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000224  b3120d18  bfloat2float.rn r5, r26
000228  7e0003e0  vmmov mr0, r6
00022c  1f038000  addli r6, zero, 64
000230  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000234  b3920d18  bfloat2float.rn r5, r27
000238  7e0003e0  vmmov mr0, r6
00023c  1f030001  addli r6, zero, 128
000240  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000244  b3120e18  bfloat2float.rn r5, r28
000248  7e0003e0  vmmov mr0, r6
00024c  1f030002  addli r6, zero, 256
000250  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000254  b3920318  bfloat2float.rn r5, r7
000258  7e0003e0  vmmov mr0, r6
00025c  1f030004  addli r6, zero, 512
000260  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000264  b3120418  bfloat2float.rn r5, r8
000268  7e0003e0  vmmov mr0, r6
00026c  1f030008  addli r6, zero, 1024
000270  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000274  b3920418  bfloat2float.rn r5, r9
000278  7e0003e0  vmmov mr0, r6
00027c  1f030010  addli r6, zero, 2048
000280  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000284  b3120518  bfloat2float.rn r5, r10
000288  7e0003e0  vmmov mr0, r6
00028c  1f030020  addli r6, zero, 4096
000290  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
000294  b3920618  bfloat2float.rn r5, r13
000298  7e0003e0  vmmov mr0, r6
00029c  1f030040  addli r6, zero, 8192
0002a0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002a4  b3920718  bfloat2float.rn r5, r15
0002a8  7e0003e0  vmmov mr0, r6
0002ac  2b430000  lui r6, 4
0002b0  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002b4  b3920818  bfloat2float.rn r5, r17
0002b8  7e0003e0  vmmov mr0, r6
0002bc  eaa01230  vor.u.mh vr1{mr0}, r5, vr1
0002c0  ab820000  lui r5, 8
0002c4  7e8002e0  vmmov mr0, r5
0002c8  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
0002cc  eb300ff8  load.hu r1, -128(r30)
0002d0  eb322ff8  load.hu r5, -126(r30)
0002d4  6b334ff8  load.hu r6, -124(r30)
0002d8  eb336ff8  load.hu r7, -122(r30)
0002dc  6b348ff8  load.hu r8, -120(r30)
0002e0  eb34aff8  load.hu r9, -118(r30)
0002e4  6b35cff8  load.hu r10, -116(r30)
0002e8  eb36eff8  load.hu r13, -114(r30)
0002ec  eb370ff9  load.hu r15, -112(r30)
0002f0  eb382ff9  load.hu r17, -110(r30)
0002f4  eb3b4ff9  load.hu r23, -108(r30)
0002f8  6b3c6ff9  load.hu r24, -106(r30)
0002fc  eb3c8ff9  load.hu r25, -104(r30)
000300  6b3daff9  load.hu r26, -102(r30)
000304  eb3dcff9  load.hu r27, -100(r30)
000308  6b3eeff9  load.hu r28, -98(r30)
00030c  b3900018  bfloat2float.rn r1, r1
000310  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000314  b3900218  bfloat2float.rn r1, r5
000318  9f420000  addli r5, zero, 4
00031c  7e8102e0  vmmov mr2, r5
000320  9f021000  addli r5, zero, 8
000324  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
000328  b3100318  bfloat2float.rn r1, r6
00032c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000330  b3900318  bfloat2float.rn r1, r7
000334  7e8102e0  vmmov mr2, r5
000338  9f022000  addli r5, zero, 16
00033c  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000340  b3100418  bfloat2float.rn r1, r8
000344  7e8102e0  vmmov mr2, r5
000348  9f024000  addli r5, zero, 32
00034c  eb530f01  load.d r[8:9], 16(r30)
000350  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000354  b3900418  bfloat2float.rn r1, r9
000358  7e8102e0  vmmov mr2, r5
00035c  9f028000  addli r5, zero, 64
000360  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000364  b3100518  bfloat2float.rn r1, r10
000368  7e8102e0  vmmov mr2, r5
00036c  9f020001  addli r5, zero, 128
000370  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000374  b3900618  bfloat2float.rn r1, r13
000378  7e8102e0  vmmov mr2, r5
00037c  9f020002  addli r5, zero, 256
000380  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000384  b3900718  bfloat2float.rn r1, r15
000388  7e8102e0  vmmov mr2, r5
00038c  9f020004  addli r5, zero, 512
000390  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
000394  b3900818  bfloat2float.rn r1, r17
000398  7e8102e0  vmmov mr2, r5
00039c  9f020008  addli r5, zero, 1024
0003a0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003a4  b3900b18  bfloat2float.rn r1, r23
0003a8  7e8102e0  vmmov mr2, r5
0003ac  9f020010  addli r5, zero, 2048
0003b0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003b4  b3100c18  bfloat2float.rn r1, r24
0003b8  7e8102e0  vmmov mr2, r5
0003bc  9f020020  addli r5, zero, 4096
0003c0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003c4  b3900c18  bfloat2float.rn r1, r25
0003c8  7e8102e0  vmmov mr2, r5
0003cc  9f020040  addli r5, zero, 8192
0003d0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003d4  b3100d18  bfloat2float.rn r1, r26
0003d8  7e8102e0  vmmov mr2, r5
0003dc  ab420000  lui r5, 4
0003e0  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003e4  b3900d18  bfloat2float.rn r1, r27
0003e8  7e8102e0  vmmov mr2, r5
0003ec  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0003f0  b3100e18  bfloat2float.rn r1, r28
0003f4  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0003f8  9f200000  addli r1, zero, 2
0003fc  97b21a02  sll.d r[6:7], r[22:23], r1
000400  ab0000f0  lui r1, 983040
000404  8e902002  vmul.f.mz.rn vr1{mr1}, vr1, vr2
000408  8ba25310  add.ul r[6:7], r[8:9], r[6:7]
00040c  97101a00  or r1, r20, r1
000410  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
000414  00a00000  mfence { lm }
000418  ffb03201  s_lm2gm r1, r19, 0(r[6:7])
00041c  00a00000  mfence { lm }
000420  3fa441fe  blt.s r3, r4, -760
000424  9f8e8e01  addli sp, sp, 192
000428  00a00300  mfence { lm, sm, gm }
00042c  00100000  exit
000430  00100000  exit
000434  00100000  exit
000438  00100000  exit
00043c  00100000  exit
000440  00100000  exit
000444  00100000  exit
000448  00100000  exit
00044c  00100000  exit
000450  00100000  exit
000454  00100000  exit
000458  00100000  exit
00045c  00100000  exit
000460  00100000  exit
000464  00100000  exit
000468  00100000  exit
00046c  00100000  exit
000470  00100000  exit
000474  00100000  exit
000478  00100000  exit
00047c  00100000  exit
000480  00100000  exit
000484  00100000  exit
000488  00100000  exit
00048c  00100000  exit
000490  00100000  exit
000494  00100000  exit
000498  00100000  exit
00049c  00100000  exit
0004a0  00100000  exit
0004a4  00100000  exit
0004a8  00100000  exit
0004ac  00100000  exit
0004b0  00100000  exit
0004b4  00100000  exit
0004b8  00100000  exit
0004bc  00100000  exit
0004c0  00100000  exit
0004c4  00100000  exit
0004c8  00100000  exit
0004cc  00100000  exit
0004d0  00100000  exit
0004d4  00100000  exit
0004d8  00100000  exit
0004dc  00100000  exit
0004e0  00100000  exit
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
