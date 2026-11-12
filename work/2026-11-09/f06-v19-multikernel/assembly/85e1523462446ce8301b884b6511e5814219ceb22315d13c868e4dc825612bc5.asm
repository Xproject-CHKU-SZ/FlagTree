; SHA-256 85e1523462446ce8301b884b6511e5814219ceb22315d13c868e4dc825612bc5
; P800 Cluster · XTDK LLVM 19 · 737 / 737 words decoded
; bound names: triton_poi_fused_add_silu_0
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
0000dc  9f8e0efb  addli sp, sp, -640
0000e0  1f8f8e04  addli r30, sp, 576
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  e74e1ffa  storeli.w r1, -532(r30)
000100  cbd04004  ble.s r1, r4, 2100
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f080ffd  addli r17, r30, -384
000110  9f040001  addli r9, zero, 128
000114  2b0a807f  lui r20, 522240
000118  2b0c4000  lui r24, 1024
00011c  2b0bffff  lui r22, 1048560
000120  ab0b803f  lui r23, 260096
000124  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000128  9bb06000  slli r1, r1, 6
00012c  e70e2ffa  storeli.w r2, -536(r30)
000130  2bf1ff7f  lui r2, 524287
000134  674e1ffa  storeli.w r1, -540(r30)
000138  ab700000  lui r1, 7
00013c  9b19f1ff  ori r19, r2, 4095
000140  1b99f0ff  ori r18, r1, 4095
000144  9f200000  addli r1, zero, 2
000148  fe8100e0  vmmov mr3, r1
00014c  e74f2ffb  storeli.w r18, -516(r30)
000150  db070000  j 60
000154  6b510f01  load.d r[3:4], 16(r30)
000158  6b520fdf  load.d r[5:6], -528(r30)
00015c  ab0000f0  lui r1, 983040
000160  9f040001  addli r9, zero, 128
000164  97901400  or r1, r9, r1
000168  0b214110  add.ul r[3:4], r[3:4], r[5:6]
00016c  6302fffb  loadli.w r4,  -520(r30)
000170  ff301101  s_lm2gm r1, r17, 0(r[3:4])
000174  e300dffb  loadli.w r1,  -536(r30)
000178  00a00000  mfence { lm }
00017c  0b121210  add.s r4, r4, r1
000180  e340dffb  loadli.w r1,  -532(r30)
000184  3f201200  blt.s r4, r1, 8
000188  dbf50000  j 1964
00018c  e3404f00  loadli.w r1,  36(r30)
000190  63014f00  loadli.w r2,  32(r30)
000194  e70f4ffa  storeli.w r4, -520(r30)
000198  9f130000  addli r7, zero, 1
00019c  9f8d2800  addli r27, r17, 16
0001a0  1f0e0000  addli r28, zero, 0
0001a4  8b101230  div.s r1, r4, r1
0001a8  8b902030  div.s r1, r1, r2
0001ac  6341cffb  loadli.w r2,  -540(r30)
0001b0  9bb0c000  slli r1, r1, 12
0001b4  8b902010  add.s r1, r1, r2
0001b8  1f010010  addli r2, zero, 2048
0001bc  0b912038  mod.s r2, r1, r2
0001c0  b3910028  sext_int2long r[4:5], r1
0001c4  ab0000f0  lui r1, 983040
0001c8  17b57102  sll.d r[11:12], r[4:5], r7
0001cc  97901400  or r1, r9, r1
0001d0  7338afde  store.d r[11:12], -528(r30)
0001d4  b3120128  sext_int2long r[6:7], r2
0001d8  2b0100f0  lui r2, 983040
0001dc  97b17202  sll.d r[4:5], r[6:7], r7
0001e0  eb520f00  load.d r[6:7], 0(r30)
0001e4  eb538f00  load.d r[8:9], 8(r30)
0001e8  17912400  or r2, r9, r2
0001ec  8ba13310  add.ul r[4:5], r[8:9], r[4:5]
0001f0  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
0001f4  9f030ffc  addli r7, r30, -512
0001f8  ffa07200  l_gm2lm r1, r7, 0(r[6:7])
0001fc  7fa11101  l_gm2lm r2, r17, 0(r[4:5])
000200  00a00000  mfence { lm }
000204  5b470000  j 568
000208  9b400301  srli r1, r6, 16
00020c  9b801000  andi r1, r1, 1
000210  8b101310  add.s r1, r6, r1
000214  0b992011  add.s r18, r1, r18
000218  97866601  and r13, r13, r22
00021c  978a6a01  and r21, r21, r22
000220  17836301  and r6, r7, r22
000224  97876201  and r15, r5, r22
000228  97826801  and r5, r17, r22
00022c  97006801  and r1, r16, r22
000230  97056101  and r11, r2, r22
000234  17076701  and r14, r14, r22
000238  17816c01  and r2, r25, r22
00023c  17026d01  and r4, r26, r22
000240  97846401  and r9, r9, r22
000244  17056501  and r10, r10, r22
000248  1f0e8e00  addli r28, r28, 64
00024c  8be30a58  neg.f r7, r21
000250  0be40658  neg.f r8, r13
000254  8bec0558  neg.f r25, r11
000258  0b6d0358  neg.f r26, r6
00025c  0bea0258  neg.f r20, r5
000260  0f880300  exp.f.rn r16, r7
000264  8f080400  exp.f.rn r17, r8
000268  97836101  and r7, r3, r22
00026c  97016601  and r3, r12, r22
000270  17066901  and r12, r18, r22
000274  0be90758  neg.f r18, r15
000278  17046c01  and r8, r24, r22
00027c  0b6c0758  neg.f r24, r14
000280  8f8c0c00  exp.f.rn r25, r25
000284  0f0d0d00  exp.f.rn r26, r26
000288  0f0a0a00  exp.f.rn r20, r20
00028c  0f090900  exp.f.rn r18, r18
000290  0f0c0c00  exp.f.rn r24, r24
000294  0b687811  add.f.rn r16, r16, r23
000298  8be87811  add.f.rn r17, r17, r23
00029c  8bec7c11  add.f.rn r25, r25, r23
0002a0  0b6d7d11  add.f.rn r26, r26, r23
0002a4  0b6a7a11  add.f.rn r20, r20, r23
0002a8  0b697911  add.f.rn r18, r18, r23
0002ac  0b6c7c11  add.f.rn r24, r24, r23
0002b0  0f880b19  div.f.rn r16, r23, r16
0002b4  8f881b19  div.f.rn r17, r23, r17
0002b8  8f8c9b19  div.f.rn r25, r23, r25
0002bc  0f8dab19  div.f.rn r26, r23, r26
0002c0  0f8a4b19  div.f.rn r20, r23, r20
0002c4  0f892b19  div.f.rn r18, r23, r18
0002c8  0f8c8b19  div.f.rn r24, r23, r24
0002cc  0b685821  mul.f.rn r16, r16, r21
0002d0  8be6d820  mul.f.rn r13, r17, r13
0002d4  8b6a0258  neg.f r21, r4
0002d8  8b680158  neg.f r17, r2
0002dc  8be5bc20  mul.f.rn r11, r25, r11
0002e0  8b6c0458  neg.f r25, r8
0002e4  0b636d20  mul.f.rn r6, r26, r6
0002e8  8b625a20  mul.f.rn r5, r20, r5
0002ec  0bed0458  neg.f r26, r9
0002f0  0b6a0558  neg.f r20, r10
0002f4  8f8a0a00  exp.f.rn r21, r21
0002f8  8f880800  exp.f.rn r17, r17
0002fc  8b67f920  mul.f.rn r15, r18, r15
000300  0be90058  neg.f r18, r1
000304  0b67ec20  mul.f.rn r14, r24, r14
000308  0bec0358  neg.f r24, r7
00030c  8f8c0c00  exp.f.rn r25, r25
000310  0f0d0d00  exp.f.rn r26, r26
000314  0f0a0a00  exp.f.rn r20, r20
000318  0f090900  exp.f.rn r18, r18
00031c  0f0c0c00  exp.f.rn r24, r24
000320  b3960600  float2bfloat.rn r13, r13
000324  33180800  float2bfloat.rn r16, r16
000328  b3950500  float2bfloat.rn r11, r11
00032c  33130300  float2bfloat.rn r6, r6
000330  b3920200  float2bfloat.rn r5, r5
000334  7399ddfe  store.h r13, -14(r27)
000338  b3960700  float2bfloat.rn r13, r15
00033c  33170700  float2bfloat.rn r14, r14
000340  73980dff  store.h r16, -16(r27)
000344  739cbdfe  store.h r11, -8(r27)
000348  739d6dfe  store.h r6, -6(r27)
00034c  739e5dfe  store.h r5, -4(r27)
000350  8bea7a11  add.f.rn r21, r21, r23
000354  8be87811  add.f.rn r17, r17, r23
000358  8bec7c11  add.f.rn r25, r25, r23
00035c  0b6d7d11  add.f.rn r26, r26, r23
000360  0b6a7a11  add.f.rn r20, r20, r23
000364  739addfe  store.h r13, -12(r27)
000368  739bedfe  store.h r14, -10(r27)
00036c  0b697911  add.f.rn r18, r18, r23
000370  0b6c7c11  add.f.rn r24, r24, r23
000374  8f8a5b19  div.f.rn r21, r23, r21
000378  8f881b19  div.f.rn r17, r23, r17
00037c  8f8c9b19  div.f.rn r25, r23, r25
000380  0f8dab19  div.f.rn r26, r23, r26
000384  0f8a4b19  div.f.rn r20, r23, r20
000388  0f892b19  div.f.rn r18, r23, r18
00038c  0f8c8b19  div.f.rn r24, r23, r24
000390  0be24a20  mul.f.rn r4, r21, r4
000394  0be12820  mul.f.rn r2, r17, r2
000398  8bea0158  neg.f r21, r3
00039c  8b680658  neg.f r17, r12
0003a0  0be48c20  mul.f.rn r8, r25, r8
0003a4  0b65aa20  mul.f.rn r10, r20, r10
0003a8  8b649d20  mul.f.rn r9, r26, r9
0003ac  2b0a807f  lui r20, 522240
0003b0  8f8a0a00  exp.f.rn r21, r21
0003b4  8f880800  exp.f.rn r17, r17
0003b8  8b601920  mul.f.rn r1, r18, r1
0003bc  8b637c20  mul.f.rn r7, r24, r7
0003c0  2b0c4000  lui r24, 1024
0003c4  33110100  float2bfloat.rn r2, r2
0003c8  33120200  float2bfloat.rn r4, r4
0003cc  b3900000  float2bfloat.rn r1, r1
0003d0  73902d00  store.h r2, 0(r27)
0003d4  33110400  float2bfloat.rn r2, r8
0003d8  739f4dfe  store.h r4, -2(r27)
0003dc  8bea7a11  add.f.rn r21, r21, r23
0003e0  8be87811  add.f.rn r17, r17, r23
0003e4  73911d00  store.h r1, 2(r27)
0003e8  b3900300  float2bfloat.rn r1, r7
0003ec  73932d00  store.h r2, 6(r27)
0003f0  33110500  float2bfloat.rn r2, r10
0003f4  73921d00  store.h r1, 4(r27)
0003f8  b3900400  float2bfloat.rn r1, r9
0003fc  73952d00  store.h r2, 10(r27)
000400  73941d00  store.h r1, 8(r27)
000404  8f8a5b19  div.f.rn r21, r23, r21
000408  8f881b19  div.f.rn r17, r23, r17
00040c  0be6c820  mul.f.rn r12, r17, r12
000410  8be13a20  mul.f.rn r3, r21, r3
000414  9f080ffd  addli r17, r30, -384
000418  b3900100  float2bfloat.rn r1, r3
00041c  33110600  float2bfloat.rn r2, r12
000420  73961d00  store.h r1, 12(r27)
000424  73972d00  store.h r2, 14(r27)
000428  9f8d4d00  addli r27, r27, 32
00042c  9f000002  addli r1, zero, 256
000430  00a00000  mfence { lm }
000434  6349fffb  loadli.w r18,  -516(r30)
000438  37741efe  beq r28, r1, -740
00043c  9f000ffc  addli r1, r30, -512
000440  92300002  vadd.s.mz vr1{mr1}, zero, vr0
000444  9f1a0000  addli r21, zero, 1
000448  12310002  vadd.s.mz vr2{mr1}, zero, vr0
00044c  8b91c011  add.s r3, r1, r28
000450  7e810ae0  vmmov mr2, r21
000454  6bb20100  load.hu r4, 0(r3)
000458  ebb22100  load.hu r5, 2(r3)
00045c  6bb1a101  load.hu r2, 26(r3)
000460  ebb0c101  load.hu r1, 28(r3)
000464  6bb34100  load.hu r6, 4(r3)
000468  ebb36100  load.hu r7, 6(r3)
00046c  6bb48100  load.hu r8, 8(r3)
000470  ebb4a100  load.hu r9, 10(r3)
000474  6bb5c100  load.hu r10, 12(r3)
000478  ebb5e100  load.hu r11, 14(r3)
00047c  6bb60101  load.hu r12, 16(r3)
000480  ebb62101  load.hu r13, 18(r3)
000484  6bb74101  load.hu r14, 20(r3)
000488  ebb76101  load.hu r15, 22(r3)
00048c  6bb88101  load.hu r16, 24(r3)
000490  ebb1e101  load.hu r3, 30(r3)
000494  33120218  bfloat2float.rn r4, r4
000498  33110118  bfloat2float.rn r2, r2
00049c  b3900018  bfloat2float.rn r1, r1
0004a0  ea201234  vor.u.mh vr1{mr2}, r4, vr1
0004a4  33920218  bfloat2float.rn r4, r5
0004a8  9f420000  addli r5, zero, 4
0004ac  7e8002e0  vmmov mr0, r5
0004b0  9f021000  addli r5, zero, 8
0004b4  ea201236  vor.u.mh vr1{mr3}, r4, vr1
0004b8  33120318  bfloat2float.rn r4, r6
0004bc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0004c0  33920318  bfloat2float.rn r4, r7
0004c4  7e8002e0  vmmov mr0, r5
0004c8  9f022000  addli r5, zero, 16
0004cc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0004d0  33120418  bfloat2float.rn r4, r8
0004d4  7e8002e0  vmmov mr0, r5
0004d8  9f024000  addli r5, zero, 32
0004dc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0004e0  33920418  bfloat2float.rn r4, r9
0004e4  7e8002e0  vmmov mr0, r5
0004e8  9f028000  addli r5, zero, 64
0004ec  ea201230  vor.u.mh vr1{mr0}, r4, vr1
0004f0  33120518  bfloat2float.rn r4, r10
0004f4  7e8002e0  vmmov mr0, r5
0004f8  9f020001  addli r5, zero, 128
0004fc  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000500  33920518  bfloat2float.rn r4, r11
000504  7e8002e0  vmmov mr0, r5
000508  9f020002  addli r5, zero, 256
00050c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000510  33120618  bfloat2float.rn r4, r12
000514  7e8002e0  vmmov mr0, r5
000518  9f020004  addli r5, zero, 512
00051c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000520  33920618  bfloat2float.rn r4, r13
000524  7e8002e0  vmmov mr0, r5
000528  9f020008  addli r5, zero, 1024
00052c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000530  33120718  bfloat2float.rn r4, r14
000534  7e8002e0  vmmov mr0, r5
000538  9f020010  addli r5, zero, 2048
00053c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000540  33920718  bfloat2float.rn r4, r15
000544  7e8002e0  vmmov mr0, r5
000548  9f020020  addli r5, zero, 4096
00054c  ea201230  vor.u.mh vr1{mr0}, r4, vr1
000550  33120818  bfloat2float.rn r4, r16
000554  7e8002e0  vmmov mr0, r5
000558  ea201230  vor.u.mh vr1{mr0}, r4, vr1
00055c  1f020040  addli r4, zero, 8192
000560  7e0002e0  vmmov mr0, r4
000564  ea201130  vor.u.mh vr1{mr0}, r2, vr1
000568  2b410000  lui r2, 4
00056c  7e0001e0  vmmov mr0, r2
000570  0b91c811  add.s r2, r17, r28
000574  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000578  b3900118  bfloat2float.rn r1, r3
00057c  ab810000  lui r3, 8
000580  7e8001e0  vmmov mr0, r3
000584  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000588  eb300100  load.hu r1, 0(r2)
00058c  eb312100  load.hu r3, 2(r2)
000590  6b324100  load.hu r4, 4(r2)
000594  eb326100  load.hu r5, 6(r2)
000598  6b338100  load.hu r6, 8(r2)
00059c  eb33a100  load.hu r7, 10(r2)
0005a0  6b34c100  load.hu r8, 12(r2)
0005a4  eb34e100  load.hu r9, 14(r2)
0005a8  6b350101  load.hu r10, 16(r2)
0005ac  eb352101  load.hu r11, 18(r2)
0005b0  6b364101  load.hu r12, 20(r2)
0005b4  eb366101  load.hu r13, 22(r2)
0005b8  6b378101  load.hu r14, 24(r2)
0005bc  eb37a101  load.hu r15, 26(r2)
0005c0  6b38c101  load.hu r16, 28(r2)
0005c4  6b31e101  load.hu r2, 30(r2)
0005c8  b3900018  bfloat2float.rn r1, r1
0005cc  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005d0  b3900118  bfloat2float.rn r1, r3
0005d4  9f410000  addli r3, zero, 4
0005d8  7e8101e0  vmmov mr2, r3
0005dc  9f011000  addli r3, zero, 8
0005e0  6aa12036  vor.u.mh vr2{mr3}, r1, vr2
0005e4  b3100218  bfloat2float.rn r1, r4
0005e8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005ec  b3900218  bfloat2float.rn r1, r5
0005f0  7e8101e0  vmmov mr2, r3
0005f4  9f012000  addli r3, zero, 16
0005f8  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0005fc  b3100318  bfloat2float.rn r1, r6
000600  7e8101e0  vmmov mr2, r3
000604  9f014000  addli r3, zero, 32
000608  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00060c  b3900318  bfloat2float.rn r1, r7
000610  7e8101e0  vmmov mr2, r3
000614  9f018000  addli r3, zero, 64
000618  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00061c  b3100418  bfloat2float.rn r1, r8
000620  7e8101e0  vmmov mr2, r3
000624  9f010001  addli r3, zero, 128
000628  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00062c  b3900418  bfloat2float.rn r1, r9
000630  7e8101e0  vmmov mr2, r3
000634  9f010002  addli r3, zero, 256
000638  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00063c  b3100518  bfloat2float.rn r1, r10
000640  7e8101e0  vmmov mr2, r3
000644  9f010004  addli r3, zero, 512
000648  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00064c  b3900518  bfloat2float.rn r1, r11
000650  7e8101e0  vmmov mr2, r3
000654  9f010008  addli r3, zero, 1024
000658  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00065c  b3100618  bfloat2float.rn r1, r12
000660  7e8101e0  vmmov mr2, r3
000664  9f010010  addli r3, zero, 2048
000668  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00066c  b3900618  bfloat2float.rn r1, r13
000670  7e8101e0  vmmov mr2, r3
000674  9f010020  addli r3, zero, 4096
000678  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00067c  b3100718  bfloat2float.rn r1, r14
000680  7e8101e0  vmmov mr2, r3
000684  9f010040  addli r3, zero, 8192
000688  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00068c  b3900718  bfloat2float.rn r1, r15
000690  7e8101e0  vmmov mr2, r3
000694  ab410000  lui r3, 4
000698  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
00069c  b3100818  bfloat2float.rn r1, r16
0006a0  7e8101e0  vmmov mr2, r3
0006a4  6aa12034  vor.u.mh vr2{mr2}, r1, vr2
0006a8  b3100118  bfloat2float.rn r1, r2
0006ac  6aa12030  vor.u.mh vr2{mr0}, r1, vr2
0006b0  96902002  vadd.f.mz.rn vr1{mr1}, vr1, vr2
0006b4  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0006b8  00a00000  mfence { lm }
0006bc  e3060ffe  loadli.w r13,  -256(r30)
0006c0  e3440ffe  loadli.w r9,  -252(r30)
0006c4  e3021ffe  loadli.w r5,  -248(r30)
0006c8  e3431ffe  loadli.w r7,  -244(r30)
0006cc  63012ffe  loadli.w r2,  -240(r30)
0006d0  63462ffe  loadli.w r12,  -236(r30)
0006d4  e3013ffe  loadli.w r3,  -232(r30)
0006d8  634d3ffe  loadli.w r26,  -228(r30)
0006dc  e30c4ffe  loadli.w r25,  -224(r30)
0006e0  63424ffe  loadli.w r4,  -220(r30)
0006e4  e3055ffe  loadli.w r11,  -216(r30)
0006e8  e3475ffe  loadli.w r15,  -212(r30)
0006ec  97803601  and r1, r13, r19
0006f0  13071a04  setlt.u r14, r20, r1
0006f4  e3006ffe  loadli.w r1,  -208(r30)
0006f8  63456ffe  loadli.w r10,  -204(r30)
0006fc  63047ffe  loadli.w r8,  -200(r30)
000700  63437ffe  loadli.w r6,  -196(r30)
000704  3b600700  bneq r14, zero, 24
000708  1bc70601  srli r14, r13, 16
00070c  1b071700  andi r14, r14, 1
000710  8b96e610  add.s r13, r13, r14
000714  8b9a2611  add.s r21, r13, r18
000718  5b010000  j 8
00071c  979a8601  or r21, r13, r24
000720  97863401  and r13, r9, r19
000724  9306da04  setlt.u r13, r20, r13
000728  3be00600  bneq r13, zero, 24
00072c  9bc60401  srli r13, r9, 16
000730  9b861600  andi r13, r13, 1
000734  8b94d410  add.s r9, r9, r13
000738  8b962411  add.s r13, r9, r18
00073c  5b010000  j 8
000740  97968401  or r13, r9, r24
000744  97843201  and r9, r5, r19
000748  93049a04  setlt.u r9, r20, r9
00074c  3be00400  bneq r9, zero, 24
000750  9bc40201  srli r9, r5, 16
000754  9b841400  andi r9, r9, 1
000758  8b929210  add.s r5, r5, r9
00075c  8b922211  add.s r5, r5, r18
000760  5b010000  j 8
000764  97928201  or r5, r5, r24
000768  97843301  and r9, r7, r19
00076c  93049a04  setlt.u r9, r20, r9
000770  3be00400  bneq r9, zero, 24
000774  9bc40301  srli r9, r7, 16
000778  9b841400  andi r9, r9, 1
00077c  8b939310  add.s r7, r7, r9
000780  0b972311  add.s r14, r7, r18
000784  5b010000  j 8
000788  17978301  or r14, r7, r24
00078c  97033101  and r7, r2, r19
000790  93037a04  setlt.u r7, r20, r7
000794  3be00300  bneq r7, zero, 24
000798  9b430101  srli r7, r2, 16
00079c  9b831300  andi r7, r7, 1
0007a0  0b117110  add.s r2, r2, r7
0007a4  0b112111  add.s r2, r2, r18
0007a8  5b010000  j 8
0007ac  17118101  or r2, r2, r24
0007b0  97033601  and r7, r12, r19
0007b4  93037a04  setlt.u r7, r20, r7
0007b8  3be00300  bneq r7, zero, 24
0007bc  9b430601  srli r7, r12, 16
0007c0  9b831300  andi r7, r7, 1
0007c4  8b137610  add.s r7, r12, r7
0007c8  8b932311  add.s r7, r7, r18
0007cc  5b010000  j 8
0007d0  97138601  or r7, r12, r24
0007d4  97843101  and r9, r3, r19
0007d8  93049a04  setlt.u r9, r20, r9
0007dc  3be00400  bneq r9, zero, 24
0007e0  9bc40101  srli r9, r3, 16
0007e4  9b841400  andi r9, r9, 1
0007e8  8b919110  add.s r3, r3, r9
0007ec  8b982111  add.s r17, r3, r18
0007f0  5b010000  j 8
0007f4  97988101  or r17, r3, r24
0007f8  97013d01  and r3, r26, r19
0007fc  93013a04  setlt.u r3, r20, r3
000800  3be00100  bneq r3, zero, 24
000804  9b410d01  srli r3, r26, 16
000808  9b811100  andi r3, r3, 1
00080c  8b113d10  add.s r3, r26, r3
000810  0b9d2111  add.s r26, r3, r18
000814  5b010000  j 8
000818  171d8d01  or r26, r26, r24
00081c  97813c01  and r3, r25, r19
000820  93013a04  setlt.u r3, r20, r3
000824  3be00100  bneq r3, zero, 24
000828  9bc10c01  srli r3, r25, 16
00082c  9b811100  andi r3, r3, 1
000830  8b913c10  add.s r3, r25, r3
000834  8b9c2111  add.s r25, r3, r18
000838  5b010000  j 8
00083c  979c8c01  or r25, r25, r24
000840  97013201  and r3, r4, r19
000844  93013a04  setlt.u r3, r20, r3
000848  3be00100  bneq r3, zero, 24
00084c  9b410201  srli r3, r4, 16
000850  9b811100  andi r3, r3, 1
000854  8b113210  add.s r3, r4, r3
000858  0b982111  add.s r16, r3, r18
00085c  5b010000  j 8
000860  17188201  or r16, r4, r24
000864  97813501  and r3, r11, r19
000868  93013a04  setlt.u r3, r20, r3
00086c  3be00100  bneq r3, zero, 24
000870  9bc10501  srli r3, r11, 16
000874  9b811100  andi r3, r3, 1
000878  8b913510  add.s r3, r11, r3
00087c  8b912111  add.s r3, r3, r18
000880  5b010000  j 8
000884  97918501  or r3, r11, r24
000888  17823701  and r4, r15, r19
00088c  ab054000  lui r11, 1024
000890  13024a04  setlt.u r4, r20, r4
000894  3b600200  bneq r4, zero, 24
000898  1bc20701  srli r4, r15, 16
00089c  1b021200  andi r4, r4, 1
0008a0  0b924710  add.s r4, r15, r4
0008a4  0b1c2211  add.s r24, r4, r18
0008a8  db010000  j 12
0008ac  2b024000  lui r4, 1024
0008b0  179c4700  or r24, r15, r4
0008b4  17823001  and r4, r1, r19
0008b8  13024a04  setlt.u r4, r20, r4
0008bc  3b600200  bneq r4, zero, 24
0008c0  1bc20001  srli r4, r1, 16
0008c4  1b021200  andi r4, r4, 1
0008c8  8b904010  add.s r1, r1, r4
0008cc  8b942011  add.s r9, r1, r18
0008d0  5b010000  j 8
0008d4  9794b000  or r9, r1, r11
0008d8  97003501  and r1, r10, r19
0008dc  93001a04  setlt.u r1, r20, r1
0008e0  3be00000  bneq r1, zero, 24
0008e4  9b400501  srli r1, r10, 16
0008e8  9b801000  andi r1, r1, 1
0008ec  8b101510  add.s r1, r10, r1
0008f0  0b952011  add.s r10, r1, r18
0008f4  5b010000  j 8
0008f8  1715b500  or r10, r10, r11
0008fc  97003401  and r1, r8, r19
000900  93001a04  setlt.u r1, r20, r1
000904  3be00000  bneq r1, zero, 24
000908  9b400401  srli r1, r8, 16
00090c  9b801000  andi r1, r1, 1
000910  8b101410  add.s r1, r8, r1
000914  0b962011  add.s r12, r1, r18
000918  5b010000  j 8
00091c  1716b400  or r12, r8, r11
000920  97003301  and r1, r6, r19
000924  93001a04  setlt.u r1, r20, r1
000928  b78300fc  beq r1, zero, -1824
00092c  1719b300  or r18, r6, r11
000930  5b1dffff  j -1816
000934  9f0e8ffb  addli sp, r30, -576
000938  9f8e8e04  addli sp, sp, 576
00093c  00a00300  mfence { lm, sm, gm }
000940  00100000  exit
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
000aac  00100000  exit
000ab0  00100000  exit
000ab4  00100000  exit
000ab8  00100000  exit
000abc  00100000  exit
000ac0  00100000  exit
000ac4  00100000  exit
000ac8  00100000  exit
000acc  00100000  exit
000ad0  00100000  exit
000ad4  00100000  exit
000ad8  00100000  exit
000adc  00100000  exit
000ae0  00100000  exit
000ae4  00100000  exit
000ae8  00100000  exit
000aec  00100000  exit
000af0  00100000  exit
000af4  00100000  exit
000af8  00100000  exit
000afc  00100000  exit
000b00  00100000  exit
000b04  00100000  exit
000b08  00100000  exit
000b0c  00100000  exit
000b10  00100000  exit
000b14  00100000  exit
000b18  00100000  exit
000b1c  00100000  exit
000b20  00100000  exit
000b24  00100000  exit
000b28  00100000  exit
000b2c  00100000  exit
000b30  00100000  exit
000b34  00100000  exit
000b38  00100000  exit
000b3c  00100000  exit
000b40  00100000  exit
000b44  00100000  exit
000b48  00100000  exit
000b4c  00100000  exit
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
