; SHA-256 2d25f1d8ac0a55482f3984291195dc05f8880872b571dd4e60eb20056494590e
; P800 Cluster · XTDK LLVM 15 · 1350 / 1350 words decoded
; bound names: _ZN14xpukernel_xpu39reduce_mtILi0E8bfloat16S1_EEvPKT0_PT1_ll11ReduceParam
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
0000dc  9f8e0ecd  addli sp, sp, -6528
0000e0  1f8f8e32  addli r30, sp, 6464
0000e4  9f000040  addli r1, zero, 8192
0000e8  eb510f01  load.d r[3:4], 16(r30)
0000ec  b380102a  zext_int2long r[1:2], r1
0000f0  1f03afce  addli r6, r30, -6320
0000f4  9f03efce  addli r7, r30, -6288
0000f8  6b588f01  load.d r[16:17], 24(r30)
0000fc  93b21104  setlt.sl r5, r[3:4], r[1:2]
000100  eb508f00  load.d r[1:2], 8(r30)
000104  73301300  store.d r[1:2], 0(r6)
000108  eb500f00  load.d r[1:2], 0(r30)
00010c  73b01300  store.d r[1:2], 0(r7)
000110  9f007fcf  addli r1, r30, -6216
000114  73b00001  store.d r[16:17], 0(r1)
000118  3b880202  bneq r5, zero, 1536
00011c  9f020004  addli r5, zero, 512
000120  b382522a  zext_int2long r[5:6], r5
000124  93b20205  setlt.sl r5, r[5:6], r[16:17]
000128  bbc70202  bneq r5, zero, 1520
00012c  9f020008  addli r5, zero, 1024
000130  80530102  load_param_i r7, 2
000134  00d40002  load_param_i r8, 1
000138  b382522a  zext_int2long r[5:6], r5
00013c  8b137420  mul.s r7, r8, r7
000140  8f900263  div.sl r[1:2], r[5:6], r[16:17]
000144  b384932e  zext_int2long r[9:10], r7
000148  80330002  core_id r7
00014c  8ba21110  add.ul r[5:6], r[3:4], r[1:2]
000150  a7f2f2ff  addli.d r[5:6], r[5:6], 32767
000154  8f921262  div.sl r[5:6], r[5:6], r[1:2]
000158  8f959276  mod.sl r[11:12], r[5:6], r[9:10]
00015c  8f929262  div.sl r[5:6], r[5:6], r[9:10]
000160  80540002  load_param_i r9, 0
000164  8b147450  fmac.s r9, r8, r7
000168  b383742a  zext_int2long r[7:8], r9
00016c  93b4b304  setlt.sl r9, r[7:8], r[11:12]
000170  0bb5b340  min.sl r[10:11], r[7:8], r[11:12]
000174  0bb57250  fmac.sl r[10:11], r[5:6], r[7:8]
000178  8b331520  mul.sl r[7:8], r[10:11], r[1:2]
00017c  8bb93340  min.sl r[19:20], r[7:8], r[3:4]
000180  3386c42a  zext_int2long r[12:13], r9
000184  8ba2c210  add.ul r[5:6], r[5:6], r[12:13]
000188  8ba2a210  add.ul r[5:6], r[5:6], r[10:11]
00018c  9f052fcf  addli r11, r30, -6256
000190  8bb21220  mul.sl r[5:6], r[5:6], r[1:2]
000194  73b01500  store.d r[1:2], 0(r11)
000198  8bb43240  min.sl r[9:10], r[5:6], r[3:4]
00019c  93b13407  setle.sl r3, r[9:10], r[19:20]
0001a0  bba40108  bneq r3, zero, 4392
0001a4  9f004000  addli r1, zero, 32
0001a8  abf2ffff  lui r5, 1048575
0001ac  9f73f8ff  addli r7, r16, -1
0001b0  b3013028  zext_int2long r[3:4], zero
0001b4  0b131838  mod.s r6, r16, r1
0001b8  1b9402fe  ori r8, r5, 4064
0001bc  9b92f2ff  ori r5, r5, 4095
0001c0  17868300  and r12, r7, r8
0001c4  37300300  beq r6, zero, 12
0001c8  17b36200  sll r6, r5, r6
0001cc  97225300  xor r5, r6, r5
0001d0  a300f801  andi.d r[1:2], r[16:17], 31
0001d4  1f03ffce  addli r6, r30, -6280
0001d8  1f170000  addli r14, zero, 1
0001dc  7e8102e0  vmmov mr2, r5
0001e0  9f025fcf  addli r5, r30, -6232
0001e4  9f060000  addli r13, zero, 0
0001e8  1b391800  slli r18, r16, 1
0001ec  9b3c1600  slli r25, r12, 1
0001f0  1f0d8fdf  addli r26, r30, -4160
0001f4  9f0d8000  addli r27, zero, 64
0001f8  1f0e8fcf  addli r28, r30, -6208
0001fc  9f03dfce  addli r7, r30, -6296
000200  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000204  73301300  store.d r[1:2], 0(r6)
000208  8b303848  max.sl r[1:2], r[16:17], r[3:4]
00020c  1f026fcf  addli r4, r30, -6224
000210  9f010004  addli r3, zero, 512
000214  7e0001a0  vmmov zero, mr2
000218  73301200  store.d r[1:2], 0(r4)
00021c  b300172c  zext_int2long r[1:2], r14
000220  b38a512f  zext_int2long r[21:22], r3
000224  9f010fe0  addli r3, r30, -4096
000228  73b01200  store.d r[1:2], 0(r5)
00022c  9f00bfce  addli r1, r30, -6312
000230  1f419fce  addli r2, r30, -6324
000234  73b05301  store.d r[21:22], 0(r7)
000238  67000100  storeli.w zero, 0(r2)
00023c  73b09000  store.d r[9:10], 0(r1)
000240  17200000  xor zero, zero, zero
000244  5b0a0000  j 80
000248  9f05bfce  addli r11, r30, -6312
00024c  9f07afce  addli r15, r30, -6320
000250  1f170000  addli r14, zero, 1
000254  00a00000  mfence { lm }
000258  ab0300f0  lui r7, 983040
00025c  1bb31b00  slli r6, r23, 1
000260  ebd40500  load.d r[9:10], 0(r11)
000264  ebd00700  load.d r[1:2], 0(r15)
000268  17b2e902  sll.d r[4:5], r[19:20], r14
00026c  a7890904  addli.d r[19:20], r[19:20], 512
000270  17137300  or r6, r6, r7
000274  0ba24010  add.ul r[4:5], r[1:2], r[4:5]
000278  9f409fce  addli r1, r30, -6324
00027c  13b49904  setlt.sl r8, r[19:20], r[9:10]
000280  63800000  loadli.w zero,  0(r1)
000284  7f33c201  s_lm2gm r6, r28, 0(r[4:5])
000288  7e0100e0  vmmov mr2, zero
00028c  17200000  xor zero, zero, zero
000290  b7600408  beq r8, zero, 4152
000294  9f072fcf  addli r15, r30, -6256
000298  0bb30921  mul.sl r[6:7], r[19:20], r[16:17]
00029c  0bb23419  sub.sl r[4:5], r[9:10], r[19:20]
0002a0  9f150000  addli r11, zero, 1
0002a4  1f00efce  addli zero, r30, -6288
0002a8  ebd00700  load.d r[1:2], 0(r15)
0002ac  1733e302  sll.d r[6:7], r[6:7], r14
0002b0  1f075fcf  addli r14, r30, -6232
0002b4  2b0500f0  lui r10, 983040
0002b8  0bb44040  min.sl r[8:9], r[1:2], r[4:5]
0002bc  eb500700  load.d r[1:2], 0(r14)
0002c0  8b3b0421  mul.sl r[23:24], r[8:9], r[16:17]
0002c4  93341204  setlt.sl r9, r[4:5], r[1:2]
0002c8  eb500000  load.d r[1:2], 0(zero)
0002cc  17200000  xor zero, zero, zero
0002d0  1bb41b00  slli r8, r23, 1
0002d4  0ba36010  add.ul r[6:7], r[1:2], r[6:7]
0002d8  1714a400  or r8, r8, r10
0002dc  8b305241  min.sl r[1:2], r[4:5], r[21:22]
0002e0  1f02cfce  addli r4, r30, -6304
0002e4  7f243300  l_gm2lm r8, r3, 0(r[6:7])
0002e8  73301200  store.d r[1:2], 0(r4)
0002ec  3bad0400  bneq r9, zero, 840
0002f0  0ba23011  add.ul r[4:5], r[1:2], r[19:20]
0002f4  a7830900  addli.d r[7:8], r[19:20], 0
0002f8  9f001fcf  addli r1, r30, -6264
0002fc  1f010fcf  addli r2, r30, -6272
000300  73b03001  store.d r[19:20], 0(r1)
000304  73304100  store.d r[4:5], 0(r2)
000308  5b080000  j 64
00030c  1f030fcf  addli r6, r30, -6272
000310  9f043fcf  addli r9, r30, -6248
000314  9ba61600  xori r13, r13, 1
000318  9f010fe0  addli r3, r30, -4096
00031c  1f054fcf  addli r10, r30, -6240
000320  9f150000  addli r11, zero, 1
000324  6b520300  load.d r[4:5], 0(r6)
000328  ebd30400  load.d r[7:8], 0(r9)
00032c  1bb1b600  slli r2, r13, 11
000330  eb5b0500  load.d r[23:24], 0(r10)
000334  8b912110  add.s r3, r3, r2
000338  1f011fcf  addli r2, r30, -6264
00033c  93b04304  setlt.sl r1, r[7:8], r[4:5]
000340  eb590100  load.d r[19:20], 0(r2)
000344  b7cb0000  beq r1, zero, 752
000348  1f032fcf  addli r6, r30, -6256
00034c  eb500300  load.d r[1:2], 0(r6)
000350  0ba71310  add.ul r[14:15], r[7:8], r[1:2]
000354  0b32e218  sub.sl r[4:5], r[4:5], r[14:15]
000358  8bb44040  min.sl r[9:10], r[1:2], r[4:5]
00035c  27820b00  addli.d r[4:5], r[23:24], 0
000360  8bbb0421  mul.sl r[23:24], r[9:10], r[16:17]
000364  9f045fcf  addli r9, r30, -6232
000368  ebd00400  load.d r[1:2], 0(r9)
00036c  00a00000  mfence { lm }
000370  13b31b04  setlt.sl r6, r[23:24], r[1:2]
000374  3b410300  bneq r6, zero, 80
000378  1bb3b600  slli r6, r13, 11
00037c  8b340721  mul.sl r[9:10], r[14:15], r[16:17]
000380  a78a0900  addli.d r[21:22], r[19:20], 0
000384  a7090700  addli.d r[19:20], r[14:15], 0
000388  9f000fe0  addli r1, r30, -4096
00038c  9f07efce  addli r15, r30, -6288
000390  2b0700f0  lui r14, 983040
000394  1b230380  xori r6, r6, 2048
000398  97b4b402  sll.d r[9:10], r[9:10], r11
00039c  9bb51b00  slli r11, r23, 1
0003a0  0b936010  add.s r6, r1, r6
0003a4  ebd00700  load.d r[1:2], 0(r15)
0003a8  9795e500  or r11, r11, r14
0003ac  27870900  addli.d r[14:15], r[19:20], 0
0003b0  a7890a00  addli.d r[19:20], r[21:22], 0
0003b4  8ba49010  add.ul r[9:10], r[1:2], r[9:10]
0003b8  9f00dfce  addli r1, r30, -6296
0003bc  ebda0000  load.d r[21:22], 0(r1)
0003c0  ffa56400  l_gm2lm r11, r6, 0(r[9:10])
0003c4  8f120263  div.sl r[5:6], r[4:5], r[16:17]
0003c8  9f054fcf  addli r11, r30, -6240
0003cc  b3049028  zext_int2long r[9:10], zero
0003d0  73b07501  store.d r[23:24], 0(r11)
0003d4  9f0bffce  addli r23, r30, -6280
0003d8  ebd00b00  load.d r[1:2], 0(r23)
0003dc  8bbb3319  sub.sl r[23:24], r[7:8], r[19:20]
0003e0  9f035fcf  addli r7, r30, -6232
0003e4  13a29000  seteq.d r4, r[1:2], r[9:10]
0003e8  9f003fcf  addli r1, r30, -6248
0003ec  73b0e000  store.d r[14:15], 0(r1)
0003f0  3b460200  bneq r4, zero, 400
0003f4  ebd00300  load.d r[1:2], 0(r7)
0003f8  13b21204  setlt.sl r4, r[5:6], r[1:2]
0003fc  3b4c02fe  bneq r4, zero, -240
000400  9f090000  addli r19, zero, 0
000404  3307e028  zext_int2long r[14:15], zero
000408  1f820100  addli r4, r3, 0
00040c  db050000  j 44
000410  8b237711  add.ul r[7:8], r[14:15], r[23:24]
000414  8f935377  mod.sl r[7:8], r[7:8], r[21:22]
000418  9bb32300  slli r7, r7, 2
00041c  8b137e10  add.s r7, r28, r7
000420  6780b300  storeli.w r11, 0(r7)
000424  27170700  addli.d r[14:15], r[14:15], 1
000428  8b990919  sub.s r19, r19, r16
00042c  0b122211  add.s r4, r4, r18
000430  93305704  setlt.sl r1, r[14:15], r[5:6]
000434  37eb00fe  beq r1, zero, -296
000438  9f056fcf  addli r11, r30, -6224
00043c  b383792e  zext_int2long r[7:8], r19
000440  ebd00500  load.d r[1:2], 0(r11)
000444  a383f301  andi.d r[7:8], r[7:8], 31
000448  9f050000  addli r11, zero, 0
00044c  8ba47040  min.ul r[9:10], r[1:2], r[7:8]
000450  b3037028  zext_int2long r[7:8], zero
000454  93a37400  seteq.d r7, r[9:10], r[7:8]
000458  bb900300  bneq r7, zero, 36
00045c  9f030200  addli r7, r4, 0
000460  1f840400  addli r8, r9, 0
000464  6bb80300  load.hu r16, 0(r7)
000468  1f74f4ff  addli r8, r8, -1
00046c  9fa30300  addli r7, r7, 2
000470  33180818  bfloat2float.rn r16, r16
000474  8be50511  add.f.rn r11, r11, r16
000478  bb3f04fe  bneq r8, zero, -20
00047c  9f007fcf  addli r1, r30, -6216
000480  6bd80000  load.d r[16:17], 0(r1)
000484  93a30403  setneq.d r7, r[9:10], r[16:17]
000488  37ae03fe  beq r7, zero, -120
00048c  0b389818  sub.sl r[16:17], r[16:17], r[9:10]
000490  9f004000  addli r1, zero, 32
000494  abf3ffff  lui r7, 1048575
000498  0b1a1838  mod.s r20, r16, r1
00049c  1b94f3ff  ori r8, r7, 4095
0004a0  37300a00  beq r20, zero, 12
0004a4  173a4401  sll r20, r8, r20
0004a8  17248a00  xor r8, r20, r8
0004ac  1f1a0000  addli r20, zero, 1
0004b0  1f007fcf  addli zero, r30, -6216
0004b4  1f78f8ff  addli r16, r16, -1
0004b8  9bb81400  slli r17, r9, 1
0004bc  7e0004e0  vmmov mr0, r8
0004c0  eb500000  load.d r[1:2], 0(zero)
0004c4  17200000  xor zero, zero, zero
0004c8  8b301720  mul.sl r[1:2], r[14:15], r[1:2]
0004cc  9bb01000  slli r1, r1, 1
0004d0  1b9103fe  ori r2, r7, 4064
0004d4  8b901110  add.s r1, r3, r1
0004d8  97032800  and r7, r16, r2
0004dc  8b901011  add.s r1, r1, r17
0004e0  1bb11300  slli r2, r7, 1
0004e4  8b902010  add.s r1, r1, r2
0004e8  c2800000  vload.mz vr1{mr0}, 0(r1)
0004ec  66411080  vmerge_l.hf vr2, vr0, vr1
0004f0  e64110a0  vmerge_h.hf vr3, vr0, vr1
0004f4  96103102  vadd.f.mz.rn vr1{mr1}, vr2, vr3
0004f8  bff04301  blt.s r7, r20, 60
0004fc  9bb01400  slli r1, r9, 1
000500  9f040000  addli r9, zero, 0
000504  0b141210  add.s r8, r4, r1
000508  9f007fcf  addli r1, r30, -6216
00050c  6bd80000  load.d r[16:17], 0(r1)
000510  42010402  vload.mz vr2{mr1}, 0(r8)
000514  e6412080  vmerge_l.hf vr3, vr0, vr2
000518  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00051c  9f844400  addli r9, r9, 32
000520  1f048400  addli r8, r8, 64
000524  e64120a0  vmerge_h.hf vr3, vr0, vr2
000528  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
00052c  bf9f74fe  blt.s r9, r7, -28
000530  db010000  j 12
000534  9f007fcf  addli r1, r30, -6216
000538  6bd80000  load.d r[16:17], 0(r1)
00053c  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
000540  9f030000  addli r7, zero, 0
000544  1f040000  addli r8, zero, 0
000548  00a00000  mfence { lm }
00054c  8b107d10  add.s r1, r26, r7
000550  9fc30300  addli r7, r7, 4
000554  e3800000  loadli.w r1,  0(r1)
000558  0b641410  add.f.rn r8, r8, r1
00055c  bbcfb3ff  bneq r7, r27, -16
000560  8b207711  add.ul r[1:2], r[14:15], r[23:24]
000564  8be38510  add.f.rn r7, r11, r8
000568  8f905073  mod.sl r[1:2], r[1:2], r[21:22]
00056c  9bb02000  slli r1, r1, 2
000570  8b101e10  add.s r1, r28, r1
000574  67807000  storeli.w r7, 0(r1)
000578  00a00000  mfence { lm }
00057c  5bd5ffff  j -344
000580  ebd00300  load.d r[1:2], 0(r7)
000584  13b21204  setlt.sl r4, r[5:6], r[1:2]
000588  9f100000  addli r1, zero, 1
00058c  3b0602fe  bneq r4, zero, -640
000590  3307e028  zext_int2long r[14:15], zero
000594  1f820100  addli r4, r3, 0
000598  8b330721  mul.sl r[7:8], r[14:15], r[16:17]
00059c  9bb31300  slli r7, r7, 1
0005a0  8b937110  add.s r7, r3, r7
0005a4  8b939311  add.s r7, r7, r25
0005a8  c2800304  vload.mz vr1{mr2}, 0(r7)
0005ac  66411080  vmerge_l.hf vr2, vr0, vr1
0005b0  e64110a0  vmerge_h.hf vr3, vr0, vr1
0005b4  96103102  vadd.f.mz.rn vr1{mr1}, vr2, vr3
0005b8  bf301600  blt.s r12, r1, 44
0005bc  9f030000  addli r7, zero, 0
0005c0  1f040200  addli r8, r4, 0
0005c4  42010402  vload.mz vr2{mr1}, 0(r8)
0005c8  e6412080  vmerge_l.hf vr3, vr0, vr2
0005cc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0005d0  9f834300  addli r7, r7, 32
0005d4  1f048400  addli r8, r8, 64
0005d8  e64120a0  vmerge_h.hf vr3, vr0, vr2
0005dc  96903002  vadd.f.mz.rn vr1{mr1}, vr1, vr3
0005e0  bf9fc3fe  blt.s r7, r12, -28
0005e4  46101d02  vstore_mask16.mz vr1{mr1}, 0(r26)
0005e8  1f040000  addli r8, zero, 0
0005ec  9f030000  addli r7, zero, 0
0005f0  00a00000  mfence { lm }
0005f4  8b148d10  add.s r9, r26, r8
0005f8  1f440400  addli r8, r8, 4
0005fc  e3840400  loadli.w r9,  0(r9)
000600  8be39310  add.f.rn r7, r7, r9
000604  bb4fb4ff  bneq r8, r27, -16
000608  0b247711  add.ul r[8:9], r[14:15], r[23:24]
00060c  27170700  addli.d r[14:15], r[14:15], 1
000610  0b122211  add.s r4, r4, r18
000614  0f145471  mod.sl r[8:9], r[8:9], r[21:22]
000618  13355704  setlt.sl r10, r[14:15], r[5:6]
00061c  1b342400  slli r8, r8, 2
000620  0b148e10  add.s r8, r28, r8
000624  67007400  storeli.w r7, 0(r8)
000628  00a00000  mfence { lm }
00062c  bb3d05fe  bneq r10, zero, -148
000630  db9bffff  j -804
000634  1f02cfce  addli r4, r30, -6304
000638  00a00000  mfence { lm }
00063c  9f201000  addli r1, zero, 10
000640  1f710000  addli r2, zero, 7
000644  1f350000  addli r10, zero, 3
000648  eb5b0200  load.d r[23:24], 0(r4)
00064c  bfffbbfc  blt.s r23, r11, -1028
000650  1f028fcf  addli r4, r30, -6208
000654  9f028fcf  addli r5, r30, -6208
000658  1f030000  addli r6, zero, 0
00065c  9f038200  addli r7, r4, 64
000660  c2100202  vload_mask16.mz vr1{mr1}, 0(r4)
000664  1f034300  addli r6, r6, 32
000668  1f020201  addli r4, r4, 128
00066c  42910302  vload_mask16.mz vr2{mr1}, 0(r7)
000670  ab030100  lui r7, 16
000674  eaa11302  vand.u.mz vr3{mr1}, r7, vr1
000678  6aa22302  vand.u.mz vr4{mr1}, r7, vr2
00067c  ab830000  lui r7, 8
000680  f2213002  veq.u.mz mr3{mr1}, zero, vr3
000684  7e800140  vmnot mr0, mr3
000688  72214002  veq.u.mz mr2{mr1}, zero, vr4
00068c  92a01310  vadd.u.mh vr1{mr0}, r7, vr1
000690  7e000140  vmnot mr0, mr2
000694  12a12310  vadd.u.mh vr2{mr0}, r7, vr2
000698  ab730000  lui r7, 7
00069c  9b93f3ff  ori r7, r7, 4095
0006a0  92a01316  vadd.u.mh vr1{mr3}, r7, vr1
0006a4  12a12314  vadd.u.mh vr2{mr2}, r7, vr2
0006a8  eab110c2  vsrl.s.mz vr3{mr1}, r1, vr1
0006ac  6ab220c2  vsrl.s.mz vr4{mr1}, r1, vr2
0006b0  ab03803f  lui r7, 260096
0006b4  2bf480ff  lui r8, 1046543
0006b8  abf47f00  lui r9, 2047
0006bc  9b94f4ff  ori r9, r9, 4095
0006c0  eaa13322  vor.u.mz vr3{mr1}, r7, vr3
0006c4  6aa24322  vor.u.mz vr4{mr1}, r7, vr4
0006c8  1b1404f8  ori r8, r8, 3968
0006cc  eaa01402  vand.u.mz vr1{mr1}, r9, vr1
0006d0  6aa12402  vand.u.mz vr2{mr1}, r9, vr2
0006d4  86910120  vfloat2fp16_l.rz vr3, vr3
0006d8  eaa01322  vor.u.mz vr1{mr1}, r7, vr1
0006dc  6aa12322  vor.u.mz vr2{mr1}, r7, vr2
0006e0  ab037f00  lui r7, 2032
0006e4  86510220  vfloat2fp16_h.rz vr3, vr4
0006e8  9b93f307  ori r7, r7, 127
0006ec  86900020  vfloat2fp16_l.rz vr1, vr1
0006f0  ea2131a2  vsll.u.mz vr3{mr1}, r2, vr3
0006f4  86500120  vfloat2fp16_h.rz vr1, vr2
0006f8  6a213402  vand.u.mz vr2{mr1}, r8, vr3
0006fc  ea2015c2  vsrl.u.mz vr1{mr1}, r10, vr1
000700  eaa01302  vand.u.mz vr1{mr1}, r7, vr1
000704  eea02022  vor.u.mz vr1{mr1}, vr1, vr2
000708  46801202  vstore.mz vr1{mr1}, 0(r5)
00070c  9f828200  addli r5, r5, 64
000710  3f3d73ff  blt.s r6, r23, -180
000714  db66ffff  j -1228
000718  80d00002  load_param_i r1, 1
00071c  00510002  load_param_i r2, 0
000720  eb044f02  load.b r9, 36(r30)
000724  b382502a  zext_int2long r[5:6], r1
000728  b303712c  zext_int2long r[7:8], r2
00072c  37810400  beq r9, zero, 64
000730  8f105872  mod.sl r[1:2], r[16:17], r[5:6]
000734  8f125862  div.sl r[5:6], r[16:17], r[5:6]
000738  330da029  zext_int2long r[26:27], zero
00073c  13b51304  setlt.sl r10, r[7:8], r[1:2]
000740  8bb01340  min.sl r[1:2], r[7:8], r[1:2]
000744  8bb07250  fmac.sl r[1:2], r[5:6], r[7:8]
000748  0bb60041  min.sl r[12:13], r[1:2], r[16:17]
00074c  3305a52c  zext_int2long r[10:11], r10
000750  8ba2a210  add.ul r[5:6], r[5:6], r[10:11]
000754  27850100  addli.d r[10:11], r[3:4], 0
000758  8ba21210  add.ul r[5:6], r[5:6], r[1:2]
00075c  8bb20241  min.sl r[5:6], r[5:6], r[16:17]
000760  9330a507  setle.sl r1, r[10:11], r[26:27]
000764  37810000  beq r1, zero, 64
000768  5b6c0100  j 2912
00076c  8f905172  mod.sl r[1:2], r[3:4], r[5:6]
000770  8f925162  div.sl r[5:6], r[3:4], r[5:6]
000774  3306c028  zext_int2long r[12:13], zero
000778  13b51304  setlt.sl r10, r[7:8], r[1:2]
00077c  8bb01340  min.sl r[1:2], r[7:8], r[1:2]
000780  8bb07250  fmac.sl r[1:2], r[5:6], r[7:8]
000784  0bbd3040  min.sl r[26:27], r[1:2], r[3:4]
000788  3305a52c  zext_int2long r[10:11], r10
00078c  8ba2a210  add.ul r[5:6], r[5:6], r[10:11]
000790  8ba21210  add.ul r[5:6], r[5:6], r[1:2]
000794  0bb53240  min.sl r[10:11], r[5:6], r[3:4]
000798  a7020800  addli.d r[5:6], r[16:17], 0
00079c  9330a507  setle.sl r1, r[10:11], r[26:27]
0007a0  bbac0004  bneq r1, zero, 2856
0007a4  270a0500  addli.d r[20:21], r[10:11], 0
0007a8  93800400  seteq r1, r9, zero
0007ac  8bb4c218  sub.sl r[9:10], r[5:6], r[12:13]
0007b0  1f110000  addli r2, zero, 1
0007b4  00330002  core_id r6
0007b8  80520102  load_param_i r5, 2
0007bc  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
0007c0  9f055fcf  addli r11, r30, -6232
0007c4  ee300062  vxor.s.mz vr1{mr1}, vr0, vr0
0007c8  17362602  sll.d r[12:13], r[12:13], r2
0007cc  1f010008  addli r2, zero, 1024
0007d0  1b374300  slli r14, r6, 4
0007d4  e7445fce  storeli.w r5, -6324(r30)
0007d8  e704efce  storeli.w r14, -6328(r30)
0007dc  1bb74200  slli r14, r5, 4
0007e0  3309212d  zext_int2long r[18:19], r2
0007e4  9f023fcf  addli r5, r30, -6248
0007e8  1b315300  slli r2, r6, 5
0007ec  73b02201  store.d r[18:19], 0(r5)
0007f0  0bb92441  min.sl r[18:19], r[9:10], r[18:19]
0007f4  67422fce  storeli.w r2, -6364(r30)
0007f8  73b02501  store.d r[18:19], 0(r11)
0007fc  3bb00000  bneq r1, zero, 12
000800  8bb03320  mul.sl r[1:2], r[7:8], r[3:4]
000804  5b010000  j 8
000808  b3001028  zext_int2long r[1:2], zero
00080c  9f01ffcd  addli r3, r30, -6408
000810  9f054fcf  addli r11, r30, -6240
000814  9f095fcf  addli r19, r30, -6232
000818  63439fce  loadli.w r6,  -6324(r30)
00081c  80320002  core_id r5
000820  92101002  vadd.f.mz.rn vr1{mr1}, zero, vr1
000824  3307e72c  zext_int2long r[14:15], r14
000828  1f2e1000  addli r28, zero, 10
00082c  73b01100  store.d r[1:2], 0(r3)
000830  73b09500  store.d r[9:10], 0(r11)
000834  a7f0f407  addli.d r[1:2], r[9:10], 1023
000838  9f04efce  addli r9, r30, -6288
00083c  1f052fcf  addli r10, r30, -6256
000840  338c822b  zext_int2long r[24:25], r5
000844  330b632d  zext_int2long r[22:23], r6
000848  1b347300  slli r8, r6, 7
00084c  ebd10400  load.d r[3:4], 0(r9)
000850  8ba1c110  add.ul r[3:4], r[3:4], r[12:13]
000854  1f063fcf  addli r12, r30, -6248
000858  9f067fce  addli r13, r30, -6344
00085c  73303500  store.d r[3:4], 0(r10)
000860  eb510600  load.d r[3:4], 0(r12)
000864  a7040a00  addli.d r[9:10], r[20:21], 0
000868  1f0acfce  addli r20, r30, -6304
00086c  9f0a6fce  addli r21, r30, -6352
000870  8f903062  div.sl r[1:2], r[1:2], r[3:4]
000874  e3019fce  loadli.w r3,  -6328(r30)
000878  b381312e  zext_int2long r[3:4], r3
00087c  73b03600  store.d r[3:4], 0(r13)
000880  ebd10900  load.d r[3:4], 0(r19)
000884  9f098000  addli r19, zero, 64
000888  9bb11100  slli r3, r3, 1
00088c  1bb27200  slli r4, r5, 7
000890  67083fce  storeli.w r3, -6272(r30)
000894  9b315300  slli r3, r6, 5
000898  1b336300  slli r6, r6, 6
00089c  67023fce  storeli.w r3, -6368(r30)
0008a0  2b190000  lui r18, 1
0008a4  ab030000  lui r7, 0
0008a8  9bb12200  slli r3, r5, 2
0008ac  9bb26200  slli r5, r5, 6
0008b0  e7016fce  storeli.w r6, -6376(r30)
0008b4  1f030004  addli r6, zero, 512
0008b8  e7418fce  storeli.w r8, -6372(r30)
0008bc  1f04bfce  addli r8, r30, -6312
0008c0  73b0ea00  store.d r[14:15], 0(r21)
0008c4  1f0909f0  addli r18, r18, -2048
0008c8  9f830300  addli r7, r7, 0
0008cc  73308401  store.d r[24:25], 0(r8)
0008d0  8b912111  add.s r3, r3, r18
0008d4  e7063fce  storeli.w r3, -6296(r30)
0008d8  8b117210  add.s r3, r4, r7
0008dc  a3b00002  slli.d r[1:2], r[1:2], 32
0008e0  67413fce  storeli.w r3, -6380(r30)
0008e4  8b912211  add.s r3, r5, r18
0008e8  9f025fce  addli r5, r30, -6360
0008ec  a3d00002  srai.d r[1:2], r[1:2], 32
0008f0  67013fce  storeli.w r3, -6384(r30)
0008f4  b301332c  zext_int2long r[3:4], r6
0008f8  1f830300  addli r6, r7, 0
0008fc  9f030fce  addli r7, r30, -6400
000900  73b03200  store.d r[3:4], 0(r5)
000904  9f011fce  addli r3, r30, -6392
000908  1f028fdf  addli r4, r30, -4160
00090c  73b01100  store.d r[1:2], 0(r3)
000910  e3404fce  loadli.w r1,  -6364(r30)
000914  b380102a  zext_int2long r[1:2], r1
000918  73b01300  store.d r[1:2], 0(r7)
00091c  9f100000  addli r1, zero, 1
000920  1f01ffce  addli r2, r30, -6280
000924  fe8100e0  vmmov mr3, r1
000928  9f008fce  addli r1, r30, -6336
00092c  73306101  store.d r[22:23], 0(r2)
000930  7e8001a0  vmmov zero, mr3
000934  67000a00  storeli.w zero, 0(r20)
000938  73b09000  store.d r[9:10], 0(r1)
00093c  17200000  xor zero, zero, zero
000940  5b0b0000  j 88
000944  00200100  mfence { sm }
000948  abf00000  lui r1, 15
00094c  1f017fcf  addli r2, r30, -6216
000950  9f018fce  addli r3, r30, -6336
000954  9f026fce  addli r5, r30, -6352
000958  9b90f0ff  ori r1, r1, 4095
00095c  80a10004  csr_set csr3, r1
000960  00d00100  sync_group
000964  6b580100  load.d r[16:17], 0(r2)
000968  ebd40100  load.d r[9:10], 0(r3)
00096c  6bd70200  load.d r[14:15], 0(r5)
000970  80300002  core_id r1
000974  b7a00004  beq r1, zero, 2088
000978  270d0d04  addli.d r[26:27], r[26:27], 512
00097c  00200100  mfence { sm }
000980  2bf10000  lui r2, 15
000984  93309d04  setlt.sl r1, r[26:27], r[9:10]
000988  1b11f1ff  ori r2, r2, 4095
00098c  80210104  csr_set csr3, r2
000990  00d00100  sync_group
000994  b7d40004  beq r1, zero, 2356
000998  9f015fce  addli r3, r30, -6360
00099c  8bb0a419  sub.sl r[1:2], r[9:10], r[26:27]
0009a0  ebd30100  load.d r[7:8], 0(r3)
0009a4  0bba7040  min.sl r[20:21], r[1:2], r[7:8]
0009a8  a3300a02  slli.d r[1:2], r[20:21], 32
0009ac  a3d30002  srai.d r[7:8], r[1:2], 32
0009b0  1f017fce  addli r2, r30, -6344
0009b4  e3009fce  loadli.w r1,  -6328(r30)
0009b8  6b560100  load.d r[12:13], 0(r2)
0009bc  4b701a00  ble.s r20, r1, 28
0009c0  9b302600  slli r1, r12, 2
0009c4  0b26e610  add.ul r[12:13], r[12:13], r[14:15]
0009c8  13317604  setlt.sl r2, r[12:13], r[7:8]
0009cc  8b906010  add.s r1, r1, r6
0009d0  4e901002  vstores_mask16.mz vr1{mr1}, 0(r1)
0009d4  bb3f01fe  bneq r2, zero, -20
0009d8  e3409fce  loadli.w r1,  -6324(r30)
0009dc  4b814001  ble.s r1, r20, 64
0009e0  27060c00  addli.d r[12:13], r[24:25], 0
0009e4  80300002  core_id r1
0009e8  cb501a00  ble.s r20, r1, 52
0009ec  9b308600  slli r1, r12, 8
0009f0  0b266611  add.ul r[12:13], r[12:13], r[22:23]
0009f4  13317604  setlt.sl r2, r[12:13], r[7:8]
0009f8  8b902011  add.s r1, r1, r18
0009fc  9f818000  addli r3, r1, 64
000a00  4e901002  vstores_mask16.mz vr1{mr1}, 0(r1)
000a04  4e901102  vstores_mask16.mz vr1{mr1}, 0(r3)
000a08  9f810001  addli r3, r1, 128
000a0c  9f808001  addli r1, r1, 192
000a10  4e901102  vstores_mask16.mz vr1{mr1}, 0(r3)
000a14  4e901002  vstores_mask16.mz vr1{mr1}, 0(r1)
000a18  3b5f01fe  bneq r2, zero, -44
000a1c  0f174c75  mod.sl r[14:15], r[24:25], r[20:21]
000a20  13316a05  setlt.sl r2, r[20:21], r[22:23]
000a24  93338a07  setle.sl r7, r[20:21], r[24:25]
000a28  00a00300  mfence { lm, sm, gm }
000a2c  abf00000  lui r1, 15
000a30  9f160000  addli r13, zero, 1
000a34  9f011fcf  addli r3, r30, -6264
000a38  9b90f0ff  ori r1, r1, 4095
000a3c  b382562a  zext_int2long r[5:6], r13
000a40  80a10004  csr_set csr3, r1
000a44  9f006fcf  addli r1, r30, -6224
000a48  00d00100  sync_group
000a4c  73b04101  store.d r[20:21], 0(r3)
000a50  73b0a001  store.d r[26:27], 0(r1)
000a54  b72b0100  beq r2, zero, 744
000a58  8f104c63  div.sl r[1:2], r[24:25], r[20:21]
000a5c  1f044fcf  addli r8, r30, -6240
000a60  9f04efce  addli r9, r30, -6288
000a64  1f053fcf  addli r10, r30, -6248
000a68  0b2aa711  add.ul r[20:21], r[14:15], r[26:27]
000a6c  73b05400  store.d r[5:6], 0(r9)
000a70  17bbc003  sll.d r[22:23], r[1:2], r28
000a74  eb500400  load.d r[1:2], 0(r8)
000a78  8bb06019  sub.sl r[1:2], r[1:2], r[22:23]
000a7c  93b15004  setlt.sl r3, r[1:2], r[5:6]
000a80  eb520500  load.d r[5:6], 0(r10)
000a84  8bb85040  min.sl r[17:18], r[1:2], r[5:6]
000a88  bbf00100  bneq r3, zero, 60
000a8c  9f047fcf  addli r9, r30, -6216
000a90  1f052fcf  addli r10, r30, -6256
000a94  9732db02  sll.d r[5:6], r[22:23], r13
000a98  9bb11800  slli r3, r17, 1
000a9c  ebd00400  load.d r[1:2], 0(r9)
000aa0  6b570500  load.d r[14:15], 0(r10)
000aa4  2b0400f0  lui r8, 983040
000aa8  97918100  or r3, r3, r8
000aac  8b301a20  mul.sl r[1:2], r[20:21], r[1:2]
000ab0  97b0d002  sll.d r[1:2], r[1:2], r13
000ab4  8b201710  add.ul r[1:2], r[14:15], r[1:2]
000ab8  8ba05010  add.ul r[1:2], r[1:2], r[5:6]
000abc  9f020fe0  addli r5, r30, -4096
000ac0  ffa15000  l_gm2lm r3, r5, 0(r[1:2])
000ac4  9f011fce  addli r3, r30, -6392
000ac8  1f041fcf  addli r8, r30, -6264
000acc  9f074000  addli r15, zero, 32
000ad0  ebd00100  load.d r[1:2], 0(r3)
000ad4  eb520400  load.d r[5:6], 0(r8)
000ad8  8bb51220  mul.sl r[11:12], r[5:6], r[1:2]
000adc  93b08507  setle.sl r1, r[11:12], r[24:25]
000ae0  3bf60000  bneq r1, zero, 412
000ae4  9f00bfce  addli r1, r30, -6312
000ae8  9f010000  addli r3, zero, 0
000aec  1f040000  addli r8, zero, 0
000af0  1f070fe0  addli r14, r30, -4096
000af4  6bdc0000  load.d r[24:25], 0(r1)
000af8  1f08ffce  addli r16, r30, -6280
000afc  9f041fcf  addli r9, r30, -6264
000b00  1f00efce  addli zero, r30, -6288
000b04  eb500800  load.d r[1:2], 0(r16)
000b08  ebd20400  load.d r[5:6], 0(r9)
000b0c  eb540000  load.d r[9:10], 0(zero)
000b10  17200000  xor zero, zero, zero
000b14  0b2c1c10  add.ul r[24:25], r[24:25], r[1:2]
000b18  8f105c62  div.sl r[1:2], r[24:25], r[5:6]
000b1c  8f125c72  mod.sl r[5:6], r[24:25], r[5:6]
000b20  17bbc003  sll.d r[22:23], r[1:2], r28
000b24  1f0e4fcf  addli r28, r30, -6240
000b28  0bada211  add.ul r[26:27], r[5:6], r[26:27]
000b2c  eb500e00  load.d r[1:2], 0(r28)
000b30  8bb06019  sub.sl r[1:2], r[1:2], r[22:23]
000b34  13be9004  setlt.sl r28, r[1:2], r[9:10]
000b38  9f043fcf  addli r9, r30, -6248
000b3c  ebd20400  load.d r[5:6], 0(r9)
000b40  00a00300  mfence { lm, sm, gm }
000b44  8bb45040  min.sl r[9:10], r[1:2], r[5:6]
000b48  3b310e00  bneq r28, zero, 76
000b4c  9bb0b100  slli r1, r3, 11
000b50  1f0e7fcf  addli r28, r30, -6216
000b54  1f010fe0  addli r2, r30, -4096
000b58  173bdb02  sll.d r[22:23], r[22:23], r13
000b5c  eb520e00  load.d r[5:6], 0(r28)
000b60  9ba00080  xori r1, r1, 2048
000b64  8b101110  add.s r1, r2, r1
000b68  1f012fcf  addli r2, r30, -6256
000b6c  8b325d20  mul.sl r[5:6], r[26:27], r[5:6]
000b70  eb570100  load.d r[15:16], 0(r2)
000b74  1bb11400  slli r2, r9, 1
000b78  2b0e00f0  lui r28, 983040
000b7c  97b2d202  sll.d r[5:6], r[5:6], r13
000b80  1711c101  or r2, r2, r28
000b84  8ba25710  add.ul r[5:6], r[15:16], r[5:6]
000b88  9f074000  addli r15, zero, 32
000b8c  8ba26211  add.ul r[5:6], r[5:6], r[22:23]
000b90  7fa11200  l_gm2lm r2, r1, 0(r[5:6])
000b94  8b92f838  mod.s r5, r17, r15
000b98  abfbffff  lui r23, 1048575
000b9c  1b9bfbff  ori r22, r23, 4095
000ba0  37b00200  beq r5, zero, 12
000ba4  97305b00  sll r1, r22, r5
000ba8  17ab6001  xor r22, r1, r22
000bac  9ff0f8ff  addli r1, r17, -1
000bb0  1b910bfe  ori r2, r23, 4064
000bb4  7e000be0  vmmov mr0, r22
000bb8  1f2e1000  addli r28, zero, 10
000bbc  97882000  and r17, r1, r2
000bc0  9bb01800  slli r1, r17, 1
000bc4  8b101710  add.s r1, r14, r1
000bc8  42810000  vload.mz vr2{mr0}, 0(r1)
000bcc  e6412080  vmerge_l.hf vr3, vr0, vr2
000bd0  664220a0  vmerge_h.hf vr4, vr0, vr2
000bd4  16914102  vadd.f.mz.rn vr2{mr1}, vr3, vr4
000bd8  bfa0d800  blt.s r17, r13, 40
000bdc  1f090000  addli r18, zero, 0
000be0  c2010702  vload.mz vr3{mr1}, 0(r14)
000be4  66423080  vmerge_l.hf vr4, vr0, vr3
000be8  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
000bec  1f094900  addli r18, r18, 32
000bf0  1f078700  addli r14, r14, 64
000bf4  664230a0  vmerge_h.hf vr4, vr0, vr3
000bf8  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
000bfc  bf1f19ff  blt.s r18, r17, -28
000c00  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
000c04  9f080000  addli r17, zero, 0
000c08  1f070000  addli r14, zero, 0
000c0c  00a00000  mfence { lm }
000c10  8b101211  add.s r1, r4, r17
000c14  9fc80800  addli r17, r17, 4
000c18  e3800000  loadli.w r1,  0(r1)
000c1c  0b671710  add.f.rn r14, r14, r1
000c20  bbcf38ff  bneq r17, r19, -16
000c24  1f086fcf  addli r16, r30, -6224
000c28  8b628718  sub.f.rn r5, r14, r8
000c2c  133bbc04  setlt.sl r22, r[24:25], r[11:12]
000c30  9ba11100  xori r3, r3, 1
000c34  eb580800  load.d r[17:18], 0(r16)
000c38  8b301a19  sub.sl r[1:2], r[20:21], r[17:18]
000c3c  270a0d00  addli.d r[20:21], r[26:27], 0
000c40  278d0800  addli.d r[26:27], r[17:18], 0
000c44  9f880400  addli r17, r9, 0
000c48  9bb08000  slli r1, r1, 8
000c4c  6301dfce  loadli.w r2,  -6296(r30)
000c50  8b101110  add.s r1, r2, r1
000c54  6fc10000  loads.w r2, 0(r1)
000c58  00a00100  mfence { lm, sm }
000c5c  0be32210  add.f.rn r6, r5, r2
000c60  0b612318  sub.f.rn r2, r6, r2
000c64  73e06000  stores.w r6, 0(r1)
000c68  0b645118  sub.f.rn r8, r2, r5
000c6c  1bb1b100  slli r2, r3, 11
000c70  9f020fe0  addli r5, r30, -4096
000c74  0b972210  add.s r14, r5, r2
000c78  3b0a0bfe  bneq r22, zero, -384
000c7c  00200100  mfence { sm }
000c80  abf00000  lui r1, 15
000c84  1f01ffce  addli r2, r30, -6280
000c88  9f011fcf  addli r3, r30, -6264
000c8c  9f020002  addli r5, zero, 256
000c90  1f040001  addli r8, zero, 128
000c94  9b90f0ff  ori r1, r1, 4095
000c98  80a10004  csr_set csr3, r1
000c9c  9f00bfce  addli r1, r30, -6312
000ca0  00d00100  sync_group
000ca4  6b5b0100  load.d r[22:23], 0(r2)
000ca8  6bdc0000  load.d r[24:25], 0(r1)
000cac  2b190000  lui r18, 1
000cb0  2b030000  lui r6, 0
000cb4  6bd80100  load.d r[16:17], 0(r3)
000cb8  1f0909f0  addli r18, r18, -2048
000cbc  1f030300  addli r6, r6, 0
000cc0  27060c00  addli.d r[12:13], r[24:25], 0
000cc4  3b8203fe  bneq r7, zero, -896
000cc8  9b308600  slli r1, r12, 8
000ccc  8b902011  add.s r1, r1, r18
000cd0  1f818000  addli r2, r1, 64
000cd4  9f810001  addli r3, r1, 128
000cd8  4a910002  vloads_mask16.mz vr2{mr1}, 0(r1)
000cdc  9f808001  addli r1, r1, 192
000ce0  ca110102  vloads_mask16.mz vr3{mr1}, 0(r2)
000ce4  ca920002  vloads_mask16.mz vr5{mr1}, 0(r1)
000ce8  4a920102  vloads_mask16.mz vr4{mr1}, 0(r3)
000cec  9b302600  slli r1, r12, 2
000cf0  0b266611  add.ul r[12:13], r[12:13], r[22:23]
000cf4  13310605  setlt.sl r2, r[12:13], r[16:17]
000cf8  8b906010  add.s r1, r1, r6
000cfc  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000d00  96115202  vadd.f.mz.rn vr3{mr1}, vr4, vr5
000d04  16113102  vadd.f.mz.rn vr2{mr1}, vr2, vr3
000d08  eaf122c0  vsrl.p vr3, r5, vr2
000d0c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000d10  ea7124c0  vsrl.p vr3, r8, vr2
000d14  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000d18  eaf129c0  vsrl.p vr3, r19, vr2
000d1c  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000d20  eaf127c0  vsrl.p vr3, r15, vr2
000d24  16912102  vadd.f.mz.rn vr2{mr1}, vr3, vr2
000d28  fa110126  vextract.f r3, vr2{mr3}
000d2c  73e03000  stores.w r3, 0(r1)
000d30  00a00100  mfence { lm, sm }
000d34  3b5e01fe  bneq r2, zero, -108
000d38  db81ffff  j -1012
000d3c  9f014fcf  addli r3, r30, -6240
000d40  a7840200  addli.d r[9:10], r[5:6], 0
000d44  0b2ca711  add.ul r[24:25], r[14:15], r[26:27]
000d48  ebd00100  load.d r[1:2], 0(r3)
000d4c  93b05004  setlt.sl r1, r[1:2], r[5:6]
000d50  67071fce  storeli.w r1, -6288(r30)
000d54  bbb00000  bneq r1, zero, 44
000d58  1f042fcf  addli r8, r30, -6256
000d5c  8b300c21  mul.sl r[1:2], r[24:25], r[16:17]
000d60  ab0100f0  lui r3, 983040
000d64  eb520400  load.d r[5:6], 0(r8)
000d68  97b0d002  sll.d r[1:2], r[1:2], r13
000d6c  8ba01210  add.ul r[1:2], r[5:6], r[1:2]
000d70  e3020fcf  loadli.w r5,  -6272(r30)
000d74  97913200  or r3, r5, r3
000d78  9f020fe0  addli r5, r30, -4096
000d7c  ffa15000  l_gm2lm r3, r5, 0(r[1:2])
000d80  3ba90300  bneq r7, zero, 584
000d84  abf0ffff  lui r1, 1048575
000d88  1f01bfce  addli r2, r30, -6312
000d8c  1f0a0000  addli r20, zero, 0
000d90  1f0e0fe0  addli r28, r30, -4096
000d94  9b90f0ff  ori r1, r1, 4095
000d98  eb5a0100  load.d r[21:22], 0(r2)
000d9c  b393702a  sext_int2long r[7:8], r1
000da0  9f005fcf  addli r1, r30, -6232
000da4  ebd80000  load.d r[17:18], 0(r1)
000da8  db030000  j 28
000dac  27870800  addli.d r[14:15], r[17:18], 0
000db0  9f011fcf  addli r3, r30, -6264
000db4  a7080700  addli.d r[17:18], r[14:15], 0
000db8  ebd00100  load.d r[1:2], 0(r3)
000dbc  93b01a04  setlt.sl r1, r[21:22], r[1:2]
000dc0  37a80000  beq r1, zero, 520
000dc4  9f01ffce  addli r3, r30, -6280
000dc8  ebd00100  load.d r[1:2], 0(r3)
000dcc  8baa1a10  add.ul r[21:22], r[21:22], r[1:2]
000dd0  e300efce  loadli.w r1,  -6288(r30)
000dd4  3bef00fe  bneq r1, zero, -40
000dd8  9f004fcf  addli r1, r30, -6240
000ddc  330da029  zext_int2long r[26:27], zero
000de0  9f010000  addli r3, zero, 0
000de4  ebd50000  load.d r[11:12], 0(r1)
000de8  8ba0a811  add.ul r[1:2], r[17:18], r[26:27]
000dec  1f033fcf  addli r6, r30, -6248
000df0  00a00300  mfence { lm, sm, gm }
000df4  8bb01518  sub.sl r[1:2], r[11:12], r[1:2]
000df8  6b570300  load.d r[14:15], 0(r6)
000dfc  93b29004  setlt.sl r5, r[1:2], r[9:10]
000e00  0bb7e040  min.sl r[14:15], r[1:2], r[14:15]
000e04  3be10200  bneq r5, zero, 88
000e08  9f057fcf  addli r11, r30, -6216
000e0c  1f062fcf  addli r12, r30, -6256
000e10  9732dd02  sll.d r[5:6], r[26:27], r13
000e14  ebd00500  load.d r[1:2], 0(r11)
000e18  eb530600  load.d r[7:8], 0(r12)
000e1c  8b301c20  mul.sl r[1:2], r[24:25], r[1:2]
000e20  97b0d002  sll.d r[1:2], r[1:2], r13
000e24  8ba01310  add.ul r[1:2], r[7:8], r[1:2]
000e28  9b33ba00  slli r7, r20, 11
000e2c  1f040fe0  addli r8, r30, -4096
000e30  8ba05010  add.ul r[1:2], r[1:2], r[5:6]
000e34  97b2d802  sll.d r[5:6], r[17:18], r13
000e38  9ba30380  xori r7, r7, 2048
000e3c  8ba05010  add.ul r[1:2], r[1:2], r[5:6]
000e40  9b321700  slli r5, r14, 1
000e44  2b0300f0  lui r6, 983040
000e48  8b137410  add.s r7, r8, r7
000e4c  97926200  or r5, r5, r6
000e50  ffa27000  l_gm2lm r5, r7, 0(r[1:2])
000e54  a7030c00  addli.d r[7:8], r[24:25], 0
000e58  5b0e0000  j 112
000e5c  9f021fcf  addli r5, r30, -6264
000e60  ebd00200  load.d r[1:2], 0(r5)
000e64  93b05007  setle.sl r1, r[1:2], r[21:22]
000e68  bb810000  bneq r1, zero, 96
000e6c  9f051fcf  addli r11, r30, -6264
000e70  1f066fcf  addli r12, r30, -6224
000e74  1f087fcf  addli r16, r30, -6216
000e78  9b32ba00  slli r5, r20, 11
000e7c  9f0b2fcf  addli r23, r30, -6256
000e80  ebd00500  load.d r[1:2], 0(r11)
000e84  6b530600  load.d r[6:7], 0(r12)
000e88  8f901a72  mod.sl r[1:2], r[21:22], r[1:2]
000e8c  8ba36010  add.ul r[7:8], r[1:2], r[6:7]
000e90  ab0000f0  lui r1, 983040
000e94  6b570800  load.d r[14:15], 0(r16)
000e98  1ba10280  xori r2, r5, 2048
000e9c  0bb7e320  mul.sl r[14:15], r[7:8], r[14:15]
000ea0  9732d702  sll.d r[5:6], r[14:15], r13
000ea4  1f070fe0  addli r14, r30, -4096
000ea8  0b112710  add.s r2, r14, r2
000eac  6bd70b00  load.d r[14:15], 0(r23)
000eb0  8b225710  add.ul r[5:6], r[14:15], r[5:6]
000eb4  63070fcf  loadli.w r14,  -6272(r30)
000eb8  97101700  or r1, r14, r1
000ebc  ffa02200  l_gm2lm r1, r2, 0(r[5:6])
000ec0  9f005fcf  addli r1, r30, -6232
000ec4  6bd70000  load.d r[14:15], 0(r1)
000ec8  9f004000  addli r1, zero, 32
000ecc  2bf8ffff  lui r16, 1048575
000ed0  2b030000  lui r6, 0
000ed4  8b921838  mod.s r5, r17, r1
000ed8  9b1bf8ff  ori r23, r16, 4095
000edc  1f030300  addli r6, r6, 0
000ee0  37b00200  beq r5, zero, 12
000ee4  97b05b00  sll r1, r23, r5
000ee8  97ab7001  xor r23, r1, r23
000eec  9ff0f8ff  addli r1, r17, -1
000ef0  1b1108fe  ori r2, r16, 4064
000ef4  7e810be0  vmmov mr2, r23
000ef8  17882000  and r16, r1, r2
000efc  9b301800  slli r1, r16, 1
000f00  8b101e10  add.s r1, r28, r1
000f04  42810004  vload.mz vr2{mr2}, 0(r1)
000f08  e6412080  vmerge_l.hf vr3, vr0, vr2
000f0c  664220a0  vmerge_h.hf vr4, vr0, vr2
000f10  16914102  vadd.f.mz.rn vr2{mr1}, vr3, vr4
000f14  bf20d800  blt.s r16, r13, 40
000f18  9f080000  addli r17, zero, 0
000f1c  c2010e02  vload.mz vr3{mr1}, 0(r28)
000f20  66423080  vmerge_l.hf vr4, vr0, vr3
000f24  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
000f28  9f884800  addli r17, r17, 32
000f2c  1f0e8e00  addli r28, r28, 64
000f30  664230a0  vmerge_h.hf vr4, vr0, vr3
000f34  16114102  vadd.f.mz.rn vr2{mr1}, vr2, vr4
000f38  bf9f08ff  blt.s r17, r16, -28
000f3c  46102202  vstore_mask16.mz vr2{mr1}, 0(r4)
000f40  9f080000  addli r17, zero, 0
000f44  1f080000  addli r16, zero, 0
000f48  00a00000  mfence { lm }
000f4c  8b101211  add.s r1, r4, r17
000f50  9fc80800  addli r17, r17, 4
000f54  e3800000  loadli.w r1,  0(r1)
000f58  0b681810  add.f.rn r16, r16, r1
000f5c  bbcf38ff  bneq r17, r19, -16
000f60  9f0b6fcf  addli r23, r30, -6224
000f64  8b613818  sub.f.rn r3, r16, r3
000f68  1f095fcf  addli r18, r30, -6232
000f6c  1b2a1a00  xori r20, r20, 1
000f70  ebd00b00  load.d r[1:2], 0(r23)
000f74  6b580900  load.d r[16:17], 0(r18)
000f78  8b301c18  sub.sl r[1:2], r[24:25], r[1:2]
000f7c  0b2d0d11  add.ul r[26:27], r[26:27], r[16:17]
000f80  9f084fcf  addli r17, r30, -6240
000f84  1f080fe0  addli r16, r30, -4096
000f88  278c0300  addli.d r[24:25], r[7:8], 0
000f8c  9bb02000  slli r1, r1, 2
000f90  ebd50800  load.d r[11:12], 0(r17)
000f94  a7080700  addli.d r[17:18], r[14:15], 0
000f98  8b906010  add.s r1, r1, r6
000f9c  1333bd04  setlt.sl r6, r[26:27], r[11:12]
000fa0  6fc10000  loads.w r2, 0(r1)
000fa4  00a00100  mfence { lm, sm }
000fa8  8be22110  add.f.rn r5, r3, r2
000fac  0be12218  sub.f.rn r2, r5, r2
000fb0  73e05000  stores.w r5, 0(r1)
000fb4  8b613118  sub.f.rn r3, r2, r3
000fb8  1b31ba00  slli r2, r20, 11
000fbc  0b1e2810  add.s r28, r16, r2
000fc0  bb2803fe  bneq r6, zero, -472
000fc4  dbbdffff  j -532
000fc8  9f020fce  addli r5, r30, -6400
000fcc  9f051fcf  addli r11, r30, -6264
000fd0  9f088fce  addli r17, r30, -6336
000fd4  1f08ffce  addli r16, r30, -6280
000fd8  1f0e6fce  addli r28, r30, -6352
000fdc  9f06bfce  addli r13, r30, -6312
000fe0  ebd00200  load.d r[1:2], 0(r5)
000fe4  6bda0500  load.d r[20:21], 0(r11)
000fe8  00200100  mfence { sm }
000fec  93301a06  setle.sl r1, r[20:21], r[1:2]
000ff0  2bf10000  lui r2, 15
000ff4  1b11f1ff  ori r2, r2, 4095
000ff8  80210104  csr_set csr3, r2
000ffc  1f016fcf  addli r2, r30, -6224
001000  00d00100  sync_group
001004  ebd40800  load.d r[9:10], 0(r17)
001008  6b5b0800  load.d r[22:23], 0(r16)
00100c  6b570e00  load.d r[14:15], 0(r28)
001010  e3012fce  loadli.w r3,  -6384(r30)
001014  e3432fce  loadli.w r7,  -6380(r30)
001018  63444fce  loadli.w r8,  -6364(r30)
00101c  6bdc0600  load.d r[24:25], 0(r13)
001020  63034fce  loadli.w r6,  -6368(r30)
001024  1f2e1000  addli r28, zero, 10
001028  1f780000  addli r16, zero, 7
00102c  9f380000  addli r17, zero, 3
001030  6b5d0100  load.d r[26:27], 0(r2)
001034  2b190000  lui r18, 1
001038  63463fce  loadli.w r12,  -6372(r30)
00103c  e3063fce  loadli.w r13,  -6376(r30)
001040  1f0909f0  addli r18, r18, -2048
001044  37e20000  beq r1, zero, 152
001048  00200100  mfence { sm }
00104c  abf00000  lui r1, 15
001050  1f017fcf  addli r2, r30, -6216
001054  9f130000  addli r7, zero, 1
001058  9b90f0ff  ori r1, r1, 4095
00105c  80a10004  csr_set csr3, r1
001060  00d00100  sync_group
001064  6b580100  load.d r[16:17], 0(r2)
001068  2b030000  lui r6, 0
00106c  80300002  core_id r1
001070  1f030300  addli r6, r6, 0
001074  3b9400fc  bneq r1, zero, -1788
001078  1f04ffcd  addli r8, r30, -6408
00107c  9f051fcf  addli r11, r30, -6264
001080  1f06afce  addli r12, r30, -6320
001084  eb500400  load.d r[1:2], 0(r8)
001088  ebd20500  load.d r[5:6], 0(r11)
00108c  8b201d10  add.ul r[1:2], r[26:27], r[1:2]
001090  9bb11200  slli r3, r5, 1
001094  ab0200f0  lui r5, 983040
001098  97b07002  sll.d r[1:2], r[1:2], r7
00109c  6b530600  load.d r[6:7], 0(r12)
0010a0  97915100  or r3, r3, r5
0010a4  8b201310  add.ul r[1:2], r[6:7], r[1:2]
0010a8  2b030000  lui r6, 0
0010ac  ff912001  s_sm2gm r3, r18, 0(r[1:2])
0010b0  1f030300  addli r6, r6, 0
0010b4  db18ffff  j -1852
0010b8  9f021fcf  addli r5, r30, -6264
0010bc  0b146410  add.s r8, r8, r6
0010c0  8b93c310  add.s r7, r7, r12
0010c4  8b91d110  add.s r3, r3, r13
0010c8  6bda0200  load.d r[20:21], 0(r5)
0010cc  b3101428  sext_int2long r[1:2], r8
0010d0  00200100  mfence { sm }
0010d4  93b04005  setlt.sl r1, r[1:2], r[20:21]
0010d8  b7cd00fe  beq r1, zero, -144
0010dc  4b7f8afe  ble.s r20, r8, -36
0010e0  9f808300  addli r1, r7, 64
0010e4  4a910302  vloads_mask16.mz vr2{mr1}, 0(r7)
0010e8  9f05cfce  addli r11, r30, -6304
0010ec  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
0010f0  ab000100  lui r1, 16
0010f4  6aa22002  vand.u.mz vr4{mr1}, r1, vr2
0010f8  eaa23002  vand.u.mz vr5{mr1}, r1, vr3
0010fc  ab800000  lui r1, 8
001100  f2214002  veq.u.mz mr3{mr1}, zero, vr4
001104  7e800140  vmnot mr0, mr3
001108  72215002  veq.u.mz mr2{mr1}, zero, vr5
00110c  12a12010  vadd.u.mh vr2{mr0}, r1, vr2
001110  7e000140  vmnot mr0, mr2
001114  92a13010  vadd.u.mh vr3{mr0}, r1, vr3
001118  ab700000  lui r1, 7
00111c  9b90f0ff  ori r1, r1, 4095
001120  12a12016  vadd.u.mh vr2{mr3}, r1, vr2
001124  63800500  loadli.w zero,  0(r11)
001128  92a13014  vadd.u.mh vr3{mr2}, r1, vr3
00112c  6a322ec2  vsrl.s.mz vr4{mr1}, r28, vr2
001130  ea323ec2  vsrl.s.mz vr5{mr1}, r28, vr3
001134  ab00803f  lui r1, 260096
001138  2bf180ff  lui r2, 1046543
00113c  abf27f00  lui r5, 2047
001140  9b92f2ff  ori r5, r5, 4095
001144  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
001148  eaa25022  vor.u.mz vr5{mr1}, r1, vr5
00114c  1b1101f8  ori r2, r2, 3968
001150  fe0100e0  vmmov mr3, zero
001154  17200000  xor zero, zero, zero
001158  6aa12202  vand.u.mz vr2{mr1}, r5, vr2
00115c  eaa13202  vand.u.mz vr3{mr1}, r5, vr3
001160  06120220  vfloat2fp16_l.rz vr4, vr4
001164  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
001168  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
00116c  ab007f00  lui r1, 2032
001170  06d20220  vfloat2fp16_h.rz vr4, vr5
001174  9b90f007  ori r1, r1, 127
001178  06110120  vfloat2fp16_l.rz vr2, vr2
00117c  6a2248a2  vsll.u.mz vr4{mr1}, r16, vr4
001180  06d10120  vfloat2fp16_h.rz vr2, vr3
001184  ea214102  vand.u.mz vr3{mr1}, r2, vr4
001188  6aa128c2  vsrl.u.mz vr2{mr1}, r17, vr2
00118c  6aa12002  vand.u.mz vr2{mr1}, r1, vr2
001190  6e213122  vor.u.mz vr2{mr1}, vr2, vr3
001194  4e802102  vstores.mz vr2{mr1}, 0(r3)
001198  5be4ffff  j -224
00119c  1f011fcf  addli r2, r30, -6264
0011a0  1f760000  addli r12, zero, 7
0011a4  9f100000  addli r1, zero, 1
0011a8  9f360000  addli r13, zero, 3
0011ac  6b5a0100  load.d r[20:21], 0(r2)
0011b0  3f231a00  blt.s r20, r1, 200
0011b4  9f010000  addli r3, zero, 0
0011b8  9f030300  addli r7, r6, 0
0011bc  1f040300  addli r8, r6, 0
0011c0  9f808300  addli r1, r7, 64
0011c4  4a910302  vloads_mask16.mz vr2{mr1}, 0(r7)
0011c8  9f814100  addli r3, r3, 32
0011cc  9f830301  addli r7, r7, 128
0011d0  ca910002  vloads_mask16.mz vr3{mr1}, 0(r1)
0011d4  ab000100  lui r1, 16
0011d8  6aa22002  vand.u.mz vr4{mr1}, r1, vr2
0011dc  eaa23002  vand.u.mz vr5{mr1}, r1, vr3
0011e0  ab800000  lui r1, 8
0011e4  f2214002  veq.u.mz mr3{mr1}, zero, vr4
0011e8  7e800140  vmnot mr0, mr3
0011ec  72215002  veq.u.mz mr2{mr1}, zero, vr5
0011f0  12a12010  vadd.u.mh vr2{mr0}, r1, vr2
0011f4  7e000140  vmnot mr0, mr2
0011f8  92a13010  vadd.u.mh vr3{mr0}, r1, vr3
0011fc  ab700000  lui r1, 7
001200  9b90f0ff  ori r1, r1, 4095
001204  12a12016  vadd.u.mh vr2{mr3}, r1, vr2
001208  92a13014  vadd.u.mh vr3{mr2}, r1, vr3
00120c  6a322ec2  vsrl.s.mz vr4{mr1}, r28, vr2
001210  ea323ec2  vsrl.s.mz vr5{mr1}, r28, vr3
001214  ab00803f  lui r1, 260096
001218  2bf180ff  lui r2, 1046543
00121c  abf27f00  lui r5, 2047
001220  9b92f2ff  ori r5, r5, 4095
001224  6aa24022  vor.u.mz vr4{mr1}, r1, vr4
001228  eaa25022  vor.u.mz vr5{mr1}, r1, vr5
00122c  1b1101f8  ori r2, r2, 3968
001230  6aa12202  vand.u.mz vr2{mr1}, r5, vr2
001234  eaa13202  vand.u.mz vr3{mr1}, r5, vr3
001238  06120220  vfloat2fp16_l.rz vr4, vr4
00123c  6aa12022  vor.u.mz vr2{mr1}, r1, vr2
001240  eaa13022  vor.u.mz vr3{mr1}, r1, vr3
001244  ab007f00  lui r1, 2032
001248  06d20220  vfloat2fp16_h.rz vr4, vr5
00124c  9b90f007  ori r1, r1, 127
001250  06110120  vfloat2fp16_l.rz vr2, vr2
001254  6a2246a2  vsll.u.mz vr4{mr1}, r12, vr4
001258  06d10120  vfloat2fp16_h.rz vr2, vr3
00125c  ea214102  vand.u.mz vr3{mr1}, r2, vr4
001260  6aa126c2  vsrl.u.mz vr2{mr1}, r13, vr2
001264  6aa12002  vand.u.mz vr2{mr1}, r1, vr2
001268  6e213122  vor.u.mz vr2{mr1}, vr2, vr3
00126c  4e002402  vstores.mz vr2{mr1}, 0(r8)
001270  1f048400  addli r8, r8, 64
001274  3fbd41ff  blt.s r3, r20, -180
001278  1f04ffcd  addli r8, r30, -6408
00127c  9f05afce  addli r11, r30, -6320
001280  9f110000  addli r3, zero, 1
001284  eb500400  load.d r[1:2], 0(r8)
001288  00200100  mfence { sm }
00128c  ab0200f0  lui r5, 983040
001290  6bd30500  load.d r[6:7], 0(r11)
001294  8b201d10  add.ul r[1:2], r[26:27], r[1:2]
001298  97b03002  sll.d r[1:2], r[1:2], r3
00129c  9b311a00  slli r3, r20, 1
0012a0  8b201310  add.ul r[1:2], r[6:7], r[1:2]
0012a4  2b030000  lui r6, 0
0012a8  97915100  or r3, r3, r5
0012ac  1f030300  addli r6, r6, 0
0012b0  ff916000  s_sm2gm r3, r6, 0(r[1:2])
0012b4  9f00cfce  addli r1, r30, -6304
0012b8  63800000  loadli.w zero,  0(r1)
0012bc  fe0100e0  vmmov mr3, zero
0012c0  17200000  xor zero, zero, zero
0012c4  dbd6feff  j -2380
0012c8  9f0e8fcd  addli sp, r30, -6464
0012cc  9f8e8e32  addli sp, sp, 6464
0012d0  00a00300  mfence { lm, sm, gm }
0012d4  00100000  exit
0012d8  00100000  exit
0012dc  00100000  exit
0012e0  00100000  exit
0012e4  00100000  exit
0012e8  00100000  exit
0012ec  00100000  exit
0012f0  00100000  exit
0012f4  00100000  exit
0012f8  00100000  exit
0012fc  00100000  exit
001300  00100000  exit
001304  00100000  exit
001308  00100000  exit
00130c  00100000  exit
001310  00100000  exit
001314  00100000  exit
001318  00100000  exit
00131c  00100000  exit
001320  00100000  exit
001324  00100000  exit
001328  00100000  exit
00132c  00100000  exit
001330  00100000  exit
001334  00100000  exit
001338  00100000  exit
00133c  00100000  exit
001340  00100000  exit
001344  00100000  exit
001348  00100000  exit
00134c  00100000  exit
001350  00100000  exit
001354  00100000  exit
001358  00100000  exit
00135c  00100000  exit
001360  00100000  exit
001364  00100000  exit
001368  00100000  exit
00136c  00100000  exit
001370  00100000  exit
001374  00100000  exit
001378  00100000  exit
00137c  00100000  exit
001380  00100000  exit
001384  00100000  exit
001388  00100000  exit
00138c  00100000  exit
001390  00100000  exit
001394  00100000  exit
001398  00100000  exit
00139c  00100000  exit
0013a0  00100000  exit
0013a4  00100000  exit
0013a8  00100000  exit
0013ac  00100000  exit
0013b0  00100000  exit
0013b4  00100000  exit
0013b8  00100000  exit
0013bc  00100000  exit
0013c0  00100000  exit
0013c4  00100000  exit
0013c8  00100000  exit
0013cc  00100000  exit
0013d0  00100000  exit
0013d4  00100000  exit
0013d8  00100000  exit
0013dc  00100000  exit
0013e0  00100000  exit
0013e4  00100000  exit
0013e8  00100000  exit
0013ec  00100000  exit
0013f0  00100000  exit
0013f4  00100000  exit
0013f8  00100000  exit
0013fc  00100000  exit
001400  00100000  exit
001404  00100000  exit
001408  00100000  exit
00140c  00100000  exit
001410  00100000  exit
001414  00100000  exit
001418  00100000  exit
00141c  00100000  exit
001420  00100000  exit
001424  00100000  exit
001428  00100000  exit
00142c  00100000  exit
001430  00100000  exit
001434  00100000  exit
001438  00100000  exit
00143c  00100000  exit
001440  00100000  exit
001444  00100000  exit
001448  00100000  exit
00144c  00100000  exit
001450  00100000  exit
001454  00100000  exit
001458  00100000  exit
00145c  00100000  exit
001460  00100000  exit
001464  00100000  exit
001468  00100000  exit
00146c  00100000  exit
001470  00100000  exit
001474  00100000  exit
001478  00100000  exit
00147c  00100000  exit
001480  00100000  exit
001484  00100000  exit
001488  00100000  exit
00148c  00100000  exit
001490  00100000  exit
001494  00100000  exit
001498  00100000  exit
00149c  00100000  exit
0014a0  00100000  exit
0014a4  00100000  exit
0014a8  00100000  exit
0014ac  00100000  exit
0014b0  00100000  exit
0014b4  00100000  exit
0014b8  00100000  exit
0014bc  00100000  exit
0014c0  00100000  exit
0014c4  00100000  exit
0014c8  00100000  exit
0014cc  00100000  exit
0014d0  00100000  exit
0014d4  00100000  exit
0014d8  00100000  exit
0014dc  00100000  exit
0014e0  00100000  exit
0014e4  00100000  exit
0014e8  00100000  exit
0014ec  00100000  exit
0014f0  00100000  exit
0014f4  00100000  exit
0014f8  00100000  exit
0014fc  00100000  exit
001500  00100000  exit
001504  00100000  exit
001508  00100000  exit
00150c  00100000  exit
001510  00100000  exit
001514  00100000  exit
