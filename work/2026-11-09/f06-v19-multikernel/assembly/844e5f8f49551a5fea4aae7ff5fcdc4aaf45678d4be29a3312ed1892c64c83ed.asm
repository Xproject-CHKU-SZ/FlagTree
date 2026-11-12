; SHA-256 844e5f8f49551a5fea4aae7ff5fcdc4aaf45678d4be29a3312ed1892c64c83ed
; P800 Cluster · XTDK LLVM 19 · 1683 / 1731 words decoded
; bound names: triton_poi_fused_add_gelu_0
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
0000dc  9f8e8efb  addli sp, sp, -576
0000e0  1f8f0e04  addli r30, sp, 512
0000e4  00520002  load_param_i r4, 0
0000e8  63014f00  loadli.w r2,  32(r30)
0000ec  e3403f00  loadli.w r1,  28(r30)
0000f0  e3414f00  loadli.w r3,  36(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67491ffc  storeli.w r1, -364(r30)
000100  cbd74008  ble.s r1, r4, 4596
000104  80300002  core_id r1
000108  00d10002  load_param_i r2, 1
00010c  9f024000  addli r5, zero, 32
000110  9f040fff  addli r9, r30, -128
000114  ab0a807f  lui r21, 522240
000118  2b0b4000  lui r22, 1024
00011c  2b0effff  lui r28, 1048560
000120  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000124  46140fc2  vstore_mask16.mz vr0{mr1}, 1600(r30)
000128  9bb04000  slli r1, r1, 4
00012c  67092ffc  storeli.w r2, -368(r30)
000130  2bf1ff7f  lui r2, 524287
000134  e7481ffc  storeli.w r1, -372(r30)
000138  ab700000  lui r1, 7
00013c  1b1af1ff  ori r20, r2, 4095
000140  2bb1a73e  lui r2, 256635
000144  1b99f0ff  ori r18, r1, 4095
000148  ab00353f  lui r1, 258896
00014c  9b1951a0  ori r19, r2, 2565
000150  ab01f03f  lui r3, 261888
000154  e7034ffd  storeli.w r20, -456(r30)
000158  9b90304f  ori r1, r1, 1267
00015c  733c2ff2  store.d r[3:4], -200(r30)
000160  2bf1b53f  lui r2, 260959
000164  e7432ffd  storeli.w r18, -452(r30)
000168  e7413fff  storeli.w r19, -228(r30)
00016c  67021ffe  storeli.w r1, -224(r30)
000170  ab00babf  lui r1, 785312
000174  9b9d300e  ori r27, r1, 227
000178  abd0873f  lui r1, 260221
00017c  1b9d20c2  ori r26, r1, 3106
000180  9b10310e  ori r1, r2, 227
000184  2b71823e  lui r2, 256039
000188  6742bfff  storeli.w r27, -220(r30)
00018c  67031ffe  storeli.w r1, -208(r30)
000190  aba091be  lui r1, 780570
000194  e702afff  storeli.w r26, -216(r30)
000198  9b9be098  ori r23, r1, 2446
00019c  9b106190  ori r1, r2, 2310
0001a0  67431ffe  storeli.w r1, -204(r30)
0001a4  e7427fff  storeli.w r23, -212(r30)
0001a8  5b380000  j 448
0001ac  63411ffe  loadli.w r2,  -244(r30)
0001b0  ab08803f  lui r17, 260096
0001b4  e3010ffe  loadli.w r3,  -256(r30)
0001b8  6342effd  loadli.w r4,  -268(r30)
0001bc  63433ffd  loadli.w r6,  -356(r30)
0001c0  e342cffd  loadli.w r5,  -284(r30)
0001c4  e3439ffd  loadli.w r7,  -308(r30)
0001c8  63061ffe  loadli.w r12,  -248(r30)
0001cc  63048ffd  loadli.w r8,  -320(r30)
0001d0  e3446ffd  loadli.w r9,  -332(r30)
0001d4  63457ffd  loadli.w r10,  -324(r30)
0001d8  e3059ffd  loadli.w r11,  -312(r30)
0001dc  e346bffd  loadli.w r13,  -292(r30)
0001e0  63497ffc  loadli.w r18,  -452(r30)
0001e4  8be01011  add.f.rn r1, r1, r17
0001e8  8be71a11  add.f.rn r15, r21, r17
0001ec  0b671d11  add.f.rn r14, r26, r17
0001f0  0b681a11  add.f.rn r16, r20, r17
0001f4  ab0a807f  lui r21, 522240
0001f8  0b611111  add.f.rn r2, r2, r17
0001fc  8be11111  add.f.rn r3, r3, r17
000200  0b621211  add.f.rn r4, r4, r17
000204  8be21211  add.f.rn r5, r5, r17
000208  8be31311  add.f.rn r7, r7, r17
00020c  0b641411  add.f.rn r8, r8, r17
000210  8be41411  add.f.rn r9, r9, r17
000214  0b651511  add.f.rn r10, r10, r17
000218  8be51511  add.f.rn r11, r11, r17
00021c  8be61611  add.f.rn r13, r13, r17
000220  8be01c20  mul.f.rn r1, r25, r1
000224  0b612320  mul.f.rn r2, r6, r2
000228  63033ffd  loadli.w r6,  -360(r30)
00022c  0b648e20  mul.f.rn r8, r28, r8
000230  0b65ab20  mul.f.rn r10, r22, r10
000234  8be49920  mul.f.rn r9, r19, r9
000238  8b65bc20  mul.f.rn r11, r24, r11
00023c  2b0b4000  lui r22, 1024
000240  2b0effff  lui r28, 1048560
000244  8b613320  mul.f.rn r3, r6, r3
000248  6343dffd  loadli.w r6,  -276(r30)
00024c  b3900000  float2bfloat.rn r1, r1
000250  0b624320  mul.f.rn r4, r6, r4
000254  6303cffd  loadli.w r6,  -288(r30)
000258  33110100  float2bfloat.rn r2, r2
00025c  731f1ff8  store.h r1, -98(r30)
000260  ab0000f0  lui r1, 983040
000264  73102ff8  store.h r2, -128(r30)
000268  8b625320  mul.f.rn r5, r6, r5
00026c  6303bffd  loadli.w r6,  -296(r30)
000270  b3910100  float2bfloat.rn r3, r3
000274  73113ff8  store.h r3, -126(r30)
000278  0b631311  add.f.rn r6, r6, r17
00027c  33110200  float2bfloat.rn r2, r4
000280  73122ff8  store.h r2, -124(r30)
000284  b3910200  float2bfloat.rn r3, r5
000288  6b520ff1  load.d r[5:6], -240(r30)
00028c  73133ff8  store.h r3, -122(r30)
000290  0b636620  mul.f.rn r6, r12, r6
000294  6306affd  loadli.w r12,  -304(r30)
000298  8b637620  mul.f.rn r7, r12, r7
00029c  6346affd  loadli.w r12,  -300(r30)
0002a0  0b661611  add.f.rn r12, r12, r17
0002a4  e3480ffe  loadli.w r17,  -252(r30)
0002a8  33110300  float2bfloat.rn r2, r6
0002ac  73142ff8  store.h r2, -120(r30)
0002b0  33110400  float2bfloat.rn r2, r8
0002b4  b3910300  float2bfloat.rn r3, r7
0002b8  73162ff8  store.h r2, -116(r30)
0002bc  33110500  float2bfloat.rn r2, r10
0002c0  73153ff8  store.h r3, -118(r30)
0002c4  b3910400  float2bfloat.rn r3, r9
0002c8  9f040fff  addli r9, r30, -128
0002cc  0be6c820  mul.f.rn r12, r17, r12
0002d0  e348fffd  loadli.w r17,  -260(r30)
0002d4  73182ff8  store.h r2, -112(r30)
0002d8  73173ff8  store.h r3, -114(r30)
0002dc  b3910500  float2bfloat.rn r3, r11
0002e0  8be6d820  mul.f.rn r13, r17, r13
0002e4  e308fffd  loadli.w r17,  -264(r30)
0002e8  73193ff8  store.h r3, -110(r30)
0002ec  0be7e820  mul.f.rn r14, r17, r14
0002f0  e308effd  loadli.w r17,  -272(r30)
0002f4  33110600  float2bfloat.rn r2, r12
0002f8  731a2ff8  store.h r2, -108(r30)
0002fc  8be7f820  mul.f.rn r15, r17, r15
000300  e308dffd  loadli.w r17,  -280(r30)
000304  b3910600  float2bfloat.rn r3, r13
000308  731b3ff8  store.h r3, -106(r30)
00030c  0be80821  mul.f.rn r16, r17, r16
000310  33110700  float2bfloat.rn r2, r14
000314  731c2ff8  store.h r2, -104(r30)
000318  b3910700  float2bfloat.rn r3, r15
00031c  731d3ff8  store.h r3, -102(r30)
000320  33110800  float2bfloat.rn r2, r16
000324  731e2ff8  store.h r2, -100(r30)
000328  6b510f01  load.d r[3:4], 16(r30)
00032c  00a00000  mfence { lm }
000330  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000334  9f024000  addli r5, zero, 32
000338  63023ffe  loadli.w r4,  -232(r30)
00033c  97901200  or r1, r5, r1
000340  ff309100  s_lm2gm r1, r9, 0(r[3:4])
000344  e3002ffd  loadli.w r1,  -368(r30)
000348  00a00000  mfence { lm }
00034c  630a7ffc  loadli.w r20,  -456(r30)
000350  e34d4ffe  loadli.w r27,  -220(r30)
000354  630d5ffe  loadli.w r26,  -216(r30)
000358  0b121210  add.s r4, r4, r1
00035c  e3402ffd  loadli.w r1,  -364(r30)
000360  3f201200  blt.s r4, r1, 8
000364  5bf20100  j 3984
000368  e3404f00  loadli.w r1,  36(r30)
00036c  63014f00  loadli.w r2,  32(r30)
000370  ab0100f0  lui r3, 983040
000374  e7014ffe  storeli.w r4, -232(r30)
000378  9f130000  addli r7, zero, 1
00037c  c2108fc2  vload_mask16.mz vr1{mr1}, 1600(r30)
000380  9f180000  addli r17, zero, 1
000384  97913200  or r3, r5, r3
000388  7e8108e0  vmmov mr2, r17
00038c  8b101230  div.s r1, r4, r1
000390  2b0200f0  lui r4, 983040
000394  17924200  or r4, r5, r4
000398  12301002  vadd.s.mz vr0{mr1}, zero, vr1
00039c  8b902030  div.s r1, r1, r2
0003a0  63411ffd  loadli.w r2,  -372(r30)
0003a4  9bb0a000  slli r1, r1, 10
0003a8  8b902010  add.s r1, r1, r2
0003ac  1f010008  addli r2, zero, 1024
0003b0  0b912038  mod.s r2, r1, r2
0003b4  b3920028  sext_int2long r[6:7], r1
0003b8  17b57202  sll.d r[11:12], r[6:7], r7
0003bc  eb520f00  load.d r[6:7], 0(r30)
0003c0  7338aff0  store.d r[11:12], -240(r30)
0003c4  8ba2a210  add.ul r[6:7], r[6:7], r[11:12]
0003c8  b3100128  sext_int2long r[2:3], r2
0003cc  97b07002  sll.d r[2:3], r[2:3], r7
0003d0  eb538f00  load.d r[8:9], 8(r30)
0003d4  8ba01310  add.ul r[2:3], r[8:9], r[2:3]
0003d8  9f038ffe  addli r7, r30, -192
0003dc  ffa17200  l_gm2lm r3, r7, 0(r[6:7])
0003e0  7fa29000  l_gm2lm r4, r9, 0(r[2:3])
0003e4  00a00000  mfence { lm }
0003e8  eb300ff4  load.hu r1, -192(r30)
0003ec  6b312ff4  load.hu r2, -190(r30)
0003f0  eb314ff4  load.hu r3, -188(r30)
0003f4  6b326ff4  load.hu r4, -186(r30)
0003f8  eb328ff4  load.hu r5, -184(r30)
0003fc  6b33aff4  load.hu r6, -182(r30)
000400  eb33cff4  load.hu r7, -180(r30)
000404  6b34eff4  load.hu r8, -178(r30)
000408  eb340ff5  load.hu r9, -176(r30)
00040c  6b352ff5  load.hu r10, -174(r30)
000410  eb354ff5  load.hu r11, -172(r30)
000414  6b366ff5  load.hu r12, -170(r30)
000418  eb368ff5  load.hu r13, -168(r30)
00041c  6b37aff5  load.hu r14, -166(r30)
000420  eb37cff5  load.hu r15, -164(r30)
000424  6b38eff5  load.hu r16, -162(r30)
000428  b3900018  bfloat2float.rn r1, r1
00042c  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000430  b3100118  bfloat2float.rn r1, r2
000434  1f210000  addli r2, zero, 2
000438  fe0101e0  vmmov mr3, r2
00043c  1f410000  addli r2, zero, 4
000440  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
000444  b3900118  bfloat2float.rn r1, r3
000448  7e0001e0  vmmov mr0, r2
00044c  1f011000  addli r2, zero, 8
000450  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000454  b3100218  bfloat2float.rn r1, r4
000458  7e0001e0  vmmov mr0, r2
00045c  1f012000  addli r2, zero, 16
000460  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000464  b3900218  bfloat2float.rn r1, r5
000468  7e0001e0  vmmov mr0, r2
00046c  1f014000  addli r2, zero, 32
000470  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000474  b3100318  bfloat2float.rn r1, r6
000478  7e0001e0  vmmov mr0, r2
00047c  1f018000  addli r2, zero, 64
000480  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000484  b3900318  bfloat2float.rn r1, r7
000488  7e0001e0  vmmov mr0, r2
00048c  1f010001  addli r2, zero, 128
000490  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000494  b3100418  bfloat2float.rn r1, r8
000498  7e0001e0  vmmov mr0, r2
00049c  1f010002  addli r2, zero, 256
0004a0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004a4  b3900418  bfloat2float.rn r1, r9
0004a8  7e0001e0  vmmov mr0, r2
0004ac  1f010004  addli r2, zero, 512
0004b0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004b4  b3100518  bfloat2float.rn r1, r10
0004b8  7e0001e0  vmmov mr0, r2
0004bc  1f010008  addli r2, zero, 1024
0004c0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004c4  b3900518  bfloat2float.rn r1, r11
0004c8  7e0001e0  vmmov mr0, r2
0004cc  1f010010  addli r2, zero, 2048
0004d0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004d4  b3100618  bfloat2float.rn r1, r12
0004d8  7e0001e0  vmmov mr0, r2
0004dc  1f010020  addli r2, zero, 4096
0004e0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004e4  b3900618  bfloat2float.rn r1, r13
0004e8  7e0001e0  vmmov mr0, r2
0004ec  1f010040  addli r2, zero, 8192
0004f0  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004f4  b3100718  bfloat2float.rn r1, r14
0004f8  7e0001e0  vmmov mr0, r2
0004fc  2b410000  lui r2, 4
000500  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000504  b3900718  bfloat2float.rn r1, r15
000508  7e0001e0  vmmov mr0, r2
00050c  2b810000  lui r2, 8
000510  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000514  b3100818  bfloat2float.rn r1, r16
000518  7e0001e0  vmmov mr0, r2
00051c  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000520  eb300ff8  load.hu r1, -128(r30)
000524  6b312ff8  load.hu r2, -126(r30)
000528  eb314ff8  load.hu r3, -124(r30)
00052c  6b326ff8  load.hu r4, -122(r30)
000530  eb328ff8  load.hu r5, -120(r30)
000534  6b33aff8  load.hu r6, -118(r30)
000538  eb33cff8  load.hu r7, -116(r30)
00053c  6b34eff8  load.hu r8, -114(r30)
000540  eb340ff9  load.hu r9, -112(r30)
000544  6b352ff9  load.hu r10, -110(r30)
000548  eb354ff9  load.hu r11, -108(r30)
00054c  6b366ff9  load.hu r12, -106(r30)
000550  eb368ff9  load.hu r13, -104(r30)
000554  6b37aff9  load.hu r14, -102(r30)
000558  eb37cff9  load.hu r15, -100(r30)
00055c  6b38eff9  load.hu r16, -98(r30)
000560  b3900018  bfloat2float.rn r1, r1
000564  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000568  b3100118  bfloat2float.rn r1, r2
00056c  1f410000  addli r2, zero, 4
000570  7e0101e0  vmmov mr2, r2
000574  1f011000  addli r2, zero, 8
000578  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
00057c  b3900118  bfloat2float.rn r1, r3
000580  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000584  b3100218  bfloat2float.rn r1, r4
000588  7e0101e0  vmmov mr2, r2
00058c  1f012000  addli r2, zero, 16
000590  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000594  b3900218  bfloat2float.rn r1, r5
000598  7e0101e0  vmmov mr2, r2
00059c  1f014000  addli r2, zero, 32
0005a0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005a4  b3100318  bfloat2float.rn r1, r6
0005a8  7e0101e0  vmmov mr2, r2
0005ac  1f018000  addli r2, zero, 64
0005b0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005b4  b3900318  bfloat2float.rn r1, r7
0005b8  7e0101e0  vmmov mr2, r2
0005bc  1f010001  addli r2, zero, 128
0005c0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005c4  b3100418  bfloat2float.rn r1, r8
0005c8  7e0101e0  vmmov mr2, r2
0005cc  1f010002  addli r2, zero, 256
0005d0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005d4  b3900418  bfloat2float.rn r1, r9
0005d8  7e0101e0  vmmov mr2, r2
0005dc  1f010004  addli r2, zero, 512
0005e0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005e4  b3100518  bfloat2float.rn r1, r10
0005e8  7e0101e0  vmmov mr2, r2
0005ec  1f010008  addli r2, zero, 1024
0005f0  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005f4  b3900518  bfloat2float.rn r1, r11
0005f8  7e0101e0  vmmov mr2, r2
0005fc  1f010010  addli r2, zero, 2048
000600  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000604  b3100618  bfloat2float.rn r1, r12
000608  7e0101e0  vmmov mr2, r2
00060c  1f010020  addli r2, zero, 4096
000610  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000614  b3900618  bfloat2float.rn r1, r13
000618  7e0101e0  vmmov mr2, r2
00061c  1f010040  addli r2, zero, 8192
000620  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000624  b3100718  bfloat2float.rn r1, r14
000628  7e0101e0  vmmov mr2, r2
00062c  2b410000  lui r2, 4
000630  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000634  b3900718  bfloat2float.rn r1, r15
000638  7e0101e0  vmmov mr2, r2
00063c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000640  b3100818  bfloat2float.rn r1, r16
000644  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000648  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
00064c  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000650  00a00000  mfence { lm }
000654  e3008fff  loadli.w r1,  -64(r30)
000658  63488fff  loadli.w r16,  -60(r30)
00065c  e3079fff  loadli.w r15,  -56(r30)
000660  63479fff  loadli.w r14,  -52(r30)
000664  e306afff  loadli.w r13,  -48(r30)
000668  6346afff  loadli.w r12,  -44(r30)
00066c  e305bfff  loadli.w r11,  -40(r30)
000670  6345bfff  loadli.w r10,  -36(r30)
000674  e304cfff  loadli.w r9,  -32(r30)
000678  6344cfff  loadli.w r8,  -28(r30)
00067c  e303dfff  loadli.w r7,  -24(r30)
000680  6343dfff  loadli.w r6,  -20(r30)
000684  e302efff  loadli.w r5,  -16(r30)
000688  6342efff  loadli.w r4,  -12(r30)
00068c  e301ffff  loadli.w r3,  -8(r30)
000690  17814001  and r2, r1, r20
000694  93882a04  setlt.u r17, r21, r2
000698  6341ffff  loadli.w r2,  -4(r30)
00069c  3be00800  bneq r17, zero, 24
0006a0  9bc80001  srli r17, r1, 16
0006a4  9b881800  andi r17, r17, 1
0006a8  8b901011  add.s r1, r1, r17
0006ac  8b902011  add.s r1, r1, r18
0006b0  5b010000  j 8
0006b4  97906001  or r1, r1, r22
0006b8  97084801  and r17, r16, r20
0006bc  93881a05  setlt.u r17, r21, r17
0006c0  3be00800  bneq r17, zero, 24
0006c4  9b480801  srli r17, r16, 16
0006c8  9b881800  andi r17, r17, 1
0006cc  0b181811  add.s r16, r16, r17
0006d0  0b1c2811  add.s r24, r16, r18
0006d4  5b010000  j 8
0006d8  171c6801  or r24, r16, r22
0006dc  17884701  and r16, r15, r20
0006e0  13880a05  setlt.u r16, r21, r16
0006e4  3b600800  bneq r16, zero, 24
0006e8  1bc80701  srli r16, r15, 16
0006ec  1b081800  andi r16, r16, 1
0006f0  8b970711  add.s r15, r15, r16
0006f4  8b992711  add.s r19, r15, r18
0006f8  5b010000  j 8
0006fc  97996701  or r19, r15, r22
000700  97074701  and r15, r14, r20
000704  9387fa04  setlt.u r15, r21, r15
000708  3be00700  bneq r15, zero, 24
00070c  9b470701  srli r15, r14, 16
000710  9b871700  andi r15, r15, 1
000714  0b17f710  add.s r14, r14, r15
000718  8b1c2711  add.s r25, r14, r18
00071c  5b010000  j 8
000720  971c6701  or r25, r14, r22
000724  17874601  and r14, r13, r20
000728  1387ea04  setlt.u r14, r21, r14
00072c  3b600700  bneq r14, zero, 24
000730  1bc70601  srli r14, r13, 16
000734  1b071700  andi r14, r14, 1
000738  8b96e610  add.s r13, r13, r14
00073c  8b9b2611  add.s r23, r13, r18
000740  5b010000  j 8
000744  979b6601  or r23, r13, r22
000748  97064601  and r13, r12, r20
00074c  9386da04  setlt.u r13, r21, r13
000750  3be00600  bneq r13, zero, 24
000754  9b460601  srli r13, r12, 16
000758  9b861600  andi r13, r13, 1
00075c  0b16d610  add.s r12, r12, r13
000760  0b162611  add.s r12, r12, r18
000764  5b010000  j 8
000768  17166601  or r12, r12, r22
00076c  e74ccffc  storeli.w r12, -308(r30)
000770  17864501  and r12, r11, r20
000774  1386ca04  setlt.u r12, r21, r12
000778  3b600600  bneq r12, zero, 24
00077c  1bc60501  srli r12, r11, 16
000780  1b061600  andi r12, r12, 1
000784  8b95c510  add.s r11, r11, r12
000788  8b952511  add.s r11, r11, r18
00078c  5b010000  j 8
000790  97956501  or r11, r11, r22
000794  670cbffc  storeli.w r11, -320(r30)
000798  97054501  and r11, r10, r20
00079c  9385ba04  setlt.u r11, r21, r11
0007a0  3be00500  bneq r11, zero, 24
0007a4  9b450501  srli r11, r10, 16
0007a8  9b851500  andi r11, r11, 1
0007ac  0b15b510  add.s r10, r10, r11
0007b0  0b152511  add.s r10, r10, r18
0007b4  5b010000  j 8
0007b8  17156501  or r10, r10, r22
0007bc  674baffc  storeli.w r10, -332(r30)
0007c0  17854401  and r10, r9, r20
0007c4  1385aa04  setlt.u r10, r21, r10
0007c8  3b600500  bneq r10, zero, 24
0007cc  1bc50401  srli r10, r9, 16
0007d0  1b051500  andi r10, r10, 1
0007d4  8b94a410  add.s r9, r9, r10
0007d8  8b942411  add.s r9, r9, r18
0007dc  5b010000  j 8
0007e0  97946401  or r9, r9, r22
0007e4  e74b9ffc  storeli.w r9, -324(r30)
0007e8  97044401  and r9, r8, r20
0007ec  93849a04  setlt.u r9, r21, r9
0007f0  3be00400  bneq r9, zero, 24
0007f4  9b440401  srli r9, r8, 16
0007f8  9b841400  andi r9, r9, 1
0007fc  0b149410  add.s r8, r8, r9
000800  0b142411  add.s r8, r8, r18
000804  5b010000  j 8
000808  17146401  or r8, r8, r22
00080c  e70c8ffc  storeli.w r8, -312(r30)
000810  17844301  and r8, r7, r20
000814  13848a04  setlt.u r8, r21, r8
000818  3b600400  bneq r8, zero, 24
00081c  1bc40301  srli r8, r7, 16
000820  1b041400  andi r8, r8, 1
000824  8b938310  add.s r7, r7, r8
000828  8b932311  add.s r7, r7, r18
00082c  5b010000  j 8
000830  97936301  or r7, r7, r22
000834  674d7ffc  storeli.w r7, -300(r30)
000838  97034301  and r7, r6, r20
00083c  93837a04  setlt.u r7, r21, r7
000840  3be00300  bneq r7, zero, 24
000844  9b430301  srli r7, r6, 16
000848  9b831300  andi r7, r7, 1
00084c  0b137310  add.s r6, r6, r7
000850  0b132311  add.s r6, r6, r18
000854  5b010000  j 8
000858  17136301  or r6, r6, r22
00085c  e74d6ffc  storeli.w r6, -292(r30)
000860  17834201  and r6, r5, r20
000864  13836a04  setlt.u r6, r21, r6
000868  3b600300  bneq r6, zero, 24
00086c  1bc30201  srli r6, r5, 16
000870  1b031300  andi r6, r6, 1
000874  8b926210  add.s r5, r5, r6
000878  8b922211  add.s r5, r5, r18
00087c  5b010000  j 8
000880  97926201  or r5, r5, r22
000884  e70e5ffc  storeli.w r5, -280(r30)
000888  97024201  and r5, r4, r20
00088c  93825a04  setlt.u r5, r21, r5
000890  3be00200  bneq r5, zero, 24
000894  9b420201  srli r5, r4, 16
000898  9b821200  andi r5, r5, 1
00089c  0b125210  add.s r4, r4, r5
0008a0  0b122211  add.s r4, r4, r18
0008a4  5b010000  j 8
0008a8  17126201  or r4, r4, r22
0008ac  670f4ffc  storeli.w r4, -272(r30)
0008b0  17824101  and r4, r3, r20
0008b4  13824a04  setlt.u r4, r21, r4
0008b8  3b600200  bneq r4, zero, 24
0008bc  1bc20101  srli r4, r3, 16
0008c0  1b021200  andi r4, r4, 1
0008c4  8b914110  add.s r3, r3, r4
0008c8  8b912111  add.s r3, r3, r18
0008cc  5b010000  j 8
0008d0  97916101  or r3, r3, r22
0008d4  e74f3ffc  storeli.w r3, -260(r30)
0008d8  97014101  and r3, r2, r20
0008dc  93813a04  setlt.u r3, r21, r3
0008e0  3be00100  bneq r3, zero, 24
0008e4  9b410101  srli r3, r2, 16
0008e8  9b811100  andi r3, r3, 1
0008ec  0b113110  add.s r2, r2, r3
0008f0  0b112111  add.s r2, r2, r18
0008f4  5b010000  j 8
0008f8  17116101  or r2, r2, r22
0008fc  630b4ffe  loadli.w r22,  -224(r30)
000900  9780c001  and r1, r1, r28
000904  67402ffe  storeli.w r2, -252(r30)
000908  63413ffe  loadli.w r2,  -228(r30)
00090c  eb538ff3  load.d r[8:9], -200(r30)
000910  9f030000  addli r7, zero, 0
000914  e7001ffe  storeli.w r1, -248(r30)
000918  8be06021  mul.f.rn r1, r1, r22
00091c  733c7ff2  store.d r[8:9], -200(r30)
000920  0bea0060  abs.f r20, r1
000924  1bb29000  slli r4, r1, 9
000928  0b612a20  mul.f.rn r2, r20, r2
00092c  13030200  seteq r6, r4, zero
000930  0f210108  .word 0x0801210f
000934  0f127120  .word 0x2071120f
000938  1bc17001  srli r2, r1, 23
00093c  93e00004  setlt.f r1, r1, zero
000940  1b01f10f  andi r2, r2, 255
000944  1b71f10f  setlti r2, r2, 255
000948  17116100  or r2, r2, r6
00094c  978a2000  and r21, r1, r2
000950  27810300  addli.d r[3:4], r[8:9], 0
000954  d7600200  jal 4868
000958  8f300110  .word 0x1001308f
00095c  1f810d00  addli r2, r27, 0
000960  e3016ffe  loadli.w r3,  -208(r30)
000964  0b620a58  neg.f r4, r20
000968  0be1a051  fmac.f.rn r2, r1, r26
00096c  8b611150  fmac.f.rn r3, r2, r1
000970  63415ffe  loadli.w r2,  -212(r30)
000974  0be11150  fmac.f.rn r2, r3, r1
000978  e3416ffe  loadli.w r3,  -204(r30)
00097c  8b611150  fmac.f.rn r3, r2, r1
000980  0b614a20  mul.f.rn r2, r20, r4
000984  8be10158  neg.f r3, r3
000988  0f010100  exp.f.rn r2, r2
00098c  8be03020  mul.f.rn r1, r1, r3
000990  ab01803f  lui r3, 260096
000994  8be12050  fmac.f.rn r3, r1, r2
000998  37a00a00  beq r21, zero, 8
00099c  8be10158  neg.f r3, r3
0009a0  9700cc01  and r1, r24, r28
0009a4  634c3ffe  loadli.w r24,  -228(r30)
0009a8  e7403ffe  storeli.w r3, -244(r30)
0009ac  e70f1ffc  storeli.w r1, -264(r30)
0009b0  8be06021  mul.f.rn r1, r1, r22
0009b4  0bea0060  abs.f r20, r1
0009b8  1bb29000  slli r4, r1, 9
0009bc  0b618a21  mul.f.rn r2, r20, r24
0009c0  13030200  seteq r6, r4, zero
0009c4  8f230108  .word 0x0801238f
0009c8  6b518ff3  load.d r[3:4], -200(r30)
0009cc  0f922320  .word 0x2023920f
0009d0  9bc37001  srli r7, r1, 23
0009d4  93e00004  setlt.f r1, r1, zero
0009d8  9b83f30f  andi r7, r7, 255
0009dc  9bf3f30f  setlti r7, r7, 255
0009e0  17936300  or r6, r7, r6
0009e4  978a6000  and r21, r1, r6
0009e8  d7600200  jal 4868
0009ec  8f300110  .word 0x1001308f
0009f0  1f810d00  addli r2, r27, 0
0009f4  e3016ffe  loadli.w r3,  -208(r30)
0009f8  0b620a58  neg.f r4, r20
0009fc  0be1a051  fmac.f.rn r2, r1, r26
000a00  8b611150  fmac.f.rn r3, r2, r1
000a04  63415ffe  loadli.w r2,  -212(r30)
000a08  0be11150  fmac.f.rn r2, r3, r1
000a0c  e3416ffe  loadli.w r3,  -204(r30)
000a10  8b611150  fmac.f.rn r3, r2, r1
000a14  0b614a20  mul.f.rn r2, r20, r4
000a18  8be10158  neg.f r3, r3
000a1c  0f010100  exp.f.rn r2, r2
000a20  8be03020  mul.f.rn r1, r1, r3
000a24  ab01803f  lui r3, 260096
000a28  8be12050  fmac.f.rn r3, r1, r2
000a2c  37a00a00  beq r21, zero, 8
000a30  8be10158  neg.f r3, r3
000a34  9780c901  and r1, r19, r28
000a38  67003ffe  storeli.w r3, -256(r30)
000a3c  e74e1ffc  storeli.w r1, -276(r30)
000a40  8be06021  mul.f.rn r1, r1, r22
000a44  8be90060  abs.f r19, r1
000a48  1bb29000  slli r4, r1, 9
000a4c  0be18921  mul.f.rn r2, r19, r24
000a50  13030200  seteq r6, r4, zero
000a54  8f230108  .word 0x0801238f
000a58  6b518ff3  load.d r[3:4], -200(r30)
000a5c  0f922320  .word 0x2023920f
000a60  9bc37001  srli r7, r1, 23
000a64  93e00004  setlt.f r1, r1, zero
000a68  9b83f30f  andi r7, r7, 255
000a6c  9bf3f30f  setlti r7, r7, 255
000a70  17936300  or r6, r7, r6
000a74  178a6000  and r20, r1, r6
000a78  d7600200  jal 4868
000a7c  8f300110  .word 0x1001308f
000a80  1f810d00  addli r2, r27, 0
000a84  e30a6ffe  loadli.w r21,  -208(r30)
000a88  0be20958  neg.f r4, r19
000a8c  9f810a00  addli r3, r21, 0
000a90  0be1a051  fmac.f.rn r2, r1, r26
000a94  8b611150  fmac.f.rn r3, r2, r1
000a98  63415ffe  loadli.w r2,  -212(r30)
000a9c  0be11150  fmac.f.rn r2, r3, r1
000aa0  e3416ffe  loadli.w r3,  -204(r30)
000aa4  8b611150  fmac.f.rn r3, r2, r1
000aa8  0be14920  mul.f.rn r2, r19, r4
000aac  8be10158  neg.f r3, r3
000ab0  0f010100  exp.f.rn r2, r2
000ab4  8be03020  mul.f.rn r1, r1, r3
000ab8  ab01803f  lui r3, 260096
000abc  8be12050  fmac.f.rn r3, r1, r2
000ac0  37200a00  beq r20, zero, 8
000ac4  8be10158  neg.f r3, r3
000ac8  9780cc01  and r1, r25, r28
000acc  674f3ffc  storeli.w r3, -268(r30)
000ad0  670e1ffc  storeli.w r1, -288(r30)
000ad4  8be06021  mul.f.rn r1, r1, r22
000ad8  8be90060  abs.f r19, r1
000adc  1bb29000  slli r4, r1, 9
000ae0  0be18921  mul.f.rn r2, r19, r24
000ae4  13030200  seteq r6, r4, zero
000ae8  8f230108  .word 0x0801238f
000aec  6b518ff3  load.d r[3:4], -200(r30)
000af0  0f922320  .word 0x2023920f
000af4  9bc37001  srli r7, r1, 23
000af8  93e00004  setlt.f r1, r1, zero
000afc  9b83f30f  andi r7, r7, 255
000b00  9bf3f30f  setlti r7, r7, 255
000b04  17936300  or r6, r7, r6
000b08  178a6000  and r20, r1, r6
000b0c  d7600200  jal 4868
000b10  8f300110  .word 0x1001308f
000b14  1f810d00  addli r2, r27, 0
000b18  9f810a00  addli r3, r21, 0
000b1c  e34c5ffe  loadli.w r25,  -212(r30)
000b20  0be20958  neg.f r4, r19
000b24  0be1a051  fmac.f.rn r2, r1, r26
000b28  8b611150  fmac.f.rn r3, r2, r1
000b2c  1f810c00  addli r2, r25, 0
000b30  0be11150  fmac.f.rn r2, r3, r1
000b34  e3416ffe  loadli.w r3,  -204(r30)
000b38  8b611150  fmac.f.rn r3, r2, r1
000b3c  0be14920  mul.f.rn r2, r19, r4
000b40  8be10158  neg.f r3, r3
000b44  0f010100  exp.f.rn r2, r2
000b48  8be03020  mul.f.rn r1, r1, r3
000b4c  ab01803f  lui r3, 260096
000b50  8be12050  fmac.f.rn r3, r1, r2
000b54  37200a00  beq r20, zero, 8
000b58  8be10158  neg.f r3, r3
000b5c  9780cb01  and r1, r23, r28
000b60  674e3ffc  storeli.w r3, -284(r30)
000b64  670d1ffc  storeli.w r1, -304(r30)
000b68  8be06021  mul.f.rn r1, r1, r22
000b6c  8be90060  abs.f r19, r1
000b70  1bb29000  slli r4, r1, 9
000b74  0be18921  mul.f.rn r2, r19, r24
000b78  13030200  seteq r6, r4, zero
000b7c  8f230108  .word 0x0801238f
000b80  6b518ff3  load.d r[3:4], -200(r30)
000b84  0f922320  .word 0x2023920f
000b88  9bc37001  srli r7, r1, 23
000b8c  93e00004  setlt.f r1, r1, zero
000b90  9b83f30f  andi r7, r7, 255
000b94  9bf3f30f  setlti r7, r7, 255
000b98  17936300  or r6, r7, r6
000b9c  178a6000  and r20, r1, r6
000ba0  d7600200  jal 4868
000ba4  8f300110  .word 0x1001308f
000ba8  1f810d00  addli r2, r27, 0
000bac  9f810a00  addli r3, r21, 0
000bb0  e34b6ffe  loadli.w r23,  -204(r30)
000bb4  0be20958  neg.f r4, r19
000bb8  0be1a051  fmac.f.rn r2, r1, r26
000bbc  8b611150  fmac.f.rn r3, r2, r1
000bc0  1f810c00  addli r2, r25, 0
000bc4  0be11150  fmac.f.rn r2, r3, r1
000bc8  9f810b00  addli r3, r23, 0
000bcc  8b611150  fmac.f.rn r3, r2, r1
000bd0  0be14920  mul.f.rn r2, r19, r4
000bd4  8be10158  neg.f r3, r3
000bd8  0f010100  exp.f.rn r2, r2
000bdc  8be03020  mul.f.rn r1, r1, r3
000be0  ab01803f  lui r3, 260096
000be4  8be12050  fmac.f.rn r3, r1, r2
000be8  37200a00  beq r20, zero, 8
000bec  8be10158  neg.f r3, r3
000bf0  e3409ffd  loadli.w r1,  -308(r30)
000bf4  e70d3ffc  storeli.w r3, -296(r30)
000bf8  9780c001  and r1, r1, r28
000bfc  674c1ffc  storeli.w r1, -316(r30)
000c00  8be06021  mul.f.rn r1, r1, r22
000c04  8be90060  abs.f r19, r1
000c08  1bb29000  slli r4, r1, 9
000c0c  0be18921  mul.f.rn r2, r19, r24
000c10  13030200  seteq r6, r4, zero
000c14  8f230108  .word 0x0801238f
000c18  6b518ff3  load.d r[3:4], -200(r30)
000c1c  0f922320  .word 0x2023920f
000c20  9bc37001  srli r7, r1, 23
000c24  93e00004  setlt.f r1, r1, zero
000c28  9b83f30f  andi r7, r7, 255
000c2c  9bf3f30f  setlti r7, r7, 255
000c30  17936300  or r6, r7, r6
000c34  178a6000  and r20, r1, r6
000c38  d7600200  jal 4868
000c3c  8f300110  .word 0x1001308f
000c40  1f810d00  addli r2, r27, 0
000c44  9f810a00  addli r3, r21, 0
000c48  0be20958  neg.f r4, r19
000c4c  0be1a051  fmac.f.rn r2, r1, r26
000c50  8b611150  fmac.f.rn r3, r2, r1
000c54  1f810c00  addli r2, r25, 0
000c58  0be11150  fmac.f.rn r2, r3, r1
000c5c  9f810b00  addli r3, r23, 0
000c60  8b611150  fmac.f.rn r3, r2, r1
000c64  0be14920  mul.f.rn r2, r19, r4
000c68  8be10158  neg.f r3, r3
000c6c  0f010100  exp.f.rn r2, r2
000c70  8be03020  mul.f.rn r1, r1, r3
000c74  ab01803f  lui r3, 260096
000c78  8be12050  fmac.f.rn r3, r1, r2
000c7c  37200a00  beq r20, zero, 8
000c80  8be10158  neg.f r3, r3
000c84  e3008ffd  loadli.w r1,  -320(r30)
000c88  e74c3ffc  storeli.w r3, -308(r30)
000c8c  9780c001  and r1, r1, r28
000c90  e70b1ffc  storeli.w r1, -328(r30)
000c94  8be06021  mul.f.rn r1, r1, r22
000c98  8be90060  abs.f r19, r1
000c9c  1bb29000  slli r4, r1, 9
000ca0  0be18921  mul.f.rn r2, r19, r24
000ca4  13030200  seteq r6, r4, zero
000ca8  8f230108  .word 0x0801238f
000cac  6b518ff3  load.d r[3:4], -200(r30)
000cb0  0f922320  .word 0x2023920f
000cb4  9bc37001  srli r7, r1, 23
000cb8  93e00004  setlt.f r1, r1, zero
000cbc  9b83f30f  andi r7, r7, 255
000cc0  9bf3f30f  setlti r7, r7, 255
000cc4  17936300  or r6, r7, r6
000cc8  178a6000  and r20, r1, r6
000ccc  d7600200  jal 4868
000cd0  8f300110  .word 0x1001308f
000cd4  1f810d00  addli r2, r27, 0
000cd8  9f810a00  addli r3, r21, 0
000cdc  0be20958  neg.f r4, r19
000ce0  0be1a051  fmac.f.rn r2, r1, r26
000ce4  8b611150  fmac.f.rn r3, r2, r1
000ce8  1f810c00  addli r2, r25, 0
000cec  0be11150  fmac.f.rn r2, r3, r1
000cf0  9f810b00  addli r3, r23, 0
000cf4  8b611150  fmac.f.rn r3, r2, r1
000cf8  0be14920  mul.f.rn r2, r19, r4
000cfc  8be10158  neg.f r3, r3
000d00  0f010100  exp.f.rn r2, r2
000d04  8be03020  mul.f.rn r1, r1, r3
000d08  ab01803f  lui r3, 260096
000d0c  8be12050  fmac.f.rn r3, r1, r2
000d10  37200a00  beq r20, zero, 8
000d14  8be10158  neg.f r3, r3
000d18  e3406ffd  loadli.w r1,  -332(r30)
000d1c  670c3ffc  storeli.w r3, -320(r30)
000d20  9780c001  and r1, r1, r28
000d24  670b1ffc  storeli.w r1, -336(r30)
000d28  8be06021  mul.f.rn r1, r1, r22
000d2c  8be90060  abs.f r19, r1
000d30  1bb29000  slli r4, r1, 9
000d34  0be18921  mul.f.rn r2, r19, r24
000d38  13030200  seteq r6, r4, zero
000d3c  8f230108  .word 0x0801238f
000d40  6b518ff3  load.d r[3:4], -200(r30)
000d44  0f922320  .word 0x2023920f
000d48  9bc37001  srli r7, r1, 23
000d4c  93e00004  setlt.f r1, r1, zero
000d50  9b83f30f  andi r7, r7, 255
000d54  9bf3f30f  setlti r7, r7, 255
000d58  17936300  or r6, r7, r6
000d5c  178a6000  and r20, r1, r6
000d60  d7600200  jal 4868
000d64  8f300110  .word 0x1001308f
000d68  1f810d00  addli r2, r27, 0
000d6c  9f810a00  addli r3, r21, 0
000d70  0be20958  neg.f r4, r19
000d74  0be1a051  fmac.f.rn r2, r1, r26
000d78  8b611150  fmac.f.rn r3, r2, r1
000d7c  1f810c00  addli r2, r25, 0
000d80  0be11150  fmac.f.rn r2, r3, r1
000d84  9f810b00  addli r3, r23, 0
000d88  8b611150  fmac.f.rn r3, r2, r1
000d8c  0be14920  mul.f.rn r2, r19, r4
000d90  8be10158  neg.f r3, r3
000d94  0f010100  exp.f.rn r2, r2
000d98  8be03020  mul.f.rn r1, r1, r3
000d9c  ab01803f  lui r3, 260096
000da0  8be12050  fmac.f.rn r3, r1, r2
000da4  37200a00  beq r20, zero, 8
000da8  8be10158  neg.f r3, r3
000dac  e3407ffd  loadli.w r1,  -324(r30)
000db0  674b3ffc  storeli.w r3, -332(r30)
000db4  9780c001  and r1, r1, r28
000db8  e74a1ffc  storeli.w r1, -340(r30)
000dbc  8be06021  mul.f.rn r1, r1, r22
000dc0  8be90060  abs.f r19, r1
000dc4  1bb29000  slli r4, r1, 9
000dc8  0be18921  mul.f.rn r2, r19, r24
000dcc  13030200  seteq r6, r4, zero
000dd0  8f230108  .word 0x0801238f
000dd4  6b518ff3  load.d r[3:4], -200(r30)
000dd8  0f922320  .word 0x2023920f
000ddc  9bc37001  srli r7, r1, 23
000de0  93e00004  setlt.f r1, r1, zero
000de4  9b83f30f  andi r7, r7, 255
000de8  9bf3f30f  setlti r7, r7, 255
000dec  17936300  or r6, r7, r6
000df0  178a6000  and r20, r1, r6
000df4  d7600200  jal 4868
000df8  8f300110  .word 0x1001308f
000dfc  1f810d00  addli r2, r27, 0
000e00  9f810a00  addli r3, r21, 0
000e04  0be20958  neg.f r4, r19
000e08  0be1a051  fmac.f.rn r2, r1, r26
000e0c  8b611150  fmac.f.rn r3, r2, r1
000e10  1f810c00  addli r2, r25, 0
000e14  0be11150  fmac.f.rn r2, r3, r1
000e18  9f810b00  addli r3, r23, 0
000e1c  8b611150  fmac.f.rn r3, r2, r1
000e20  0be14920  mul.f.rn r2, r19, r4
000e24  8be10158  neg.f r3, r3
000e28  0f010100  exp.f.rn r2, r2
000e2c  8be03020  mul.f.rn r1, r1, r3
000e30  ab01803f  lui r3, 260096
000e34  8be12050  fmac.f.rn r3, r1, r2
000e38  37200a00  beq r20, zero, 8
000e3c  8be10158  neg.f r3, r3
000e40  e3009ffd  loadli.w r1,  -312(r30)
000e44  e74b3ffc  storeli.w r3, -324(r30)
000e48  9780c001  and r1, r1, r28
000e4c  e70a1ffc  storeli.w r1, -344(r30)
000e50  8be06021  mul.f.rn r1, r1, r22
000e54  8be90060  abs.f r19, r1
000e58  1bb29000  slli r4, r1, 9
000e5c  0be18921  mul.f.rn r2, r19, r24
000e60  13030200  seteq r6, r4, zero
000e64  8f230108  .word 0x0801238f
000e68  6b518ff3  load.d r[3:4], -200(r30)
000e6c  0f922320  .word 0x2023920f
000e70  9bc37001  srli r7, r1, 23
000e74  93e00004  setlt.f r1, r1, zero
000e78  9b83f30f  andi r7, r7, 255
000e7c  9bf3f30f  setlti r7, r7, 255
000e80  17936300  or r6, r7, r6
000e84  178a6000  and r20, r1, r6
000e88  d7600200  jal 4868
000e8c  8f300110  .word 0x1001308f
000e90  1f810d00  addli r2, r27, 0
000e94  9f810a00  addli r3, r21, 0
000e98  0be20958  neg.f r4, r19
000e9c  0be1a051  fmac.f.rn r2, r1, r26
000ea0  8b611150  fmac.f.rn r3, r2, r1
000ea4  1f810c00  addli r2, r25, 0
000ea8  0be11150  fmac.f.rn r2, r3, r1
000eac  9f810b00  addli r3, r23, 0
000eb0  8b611150  fmac.f.rn r3, r2, r1
000eb4  0be14920  mul.f.rn r2, r19, r4
000eb8  8be10158  neg.f r3, r3
000ebc  0f010100  exp.f.rn r2, r2
000ec0  8be03020  mul.f.rn r1, r1, r3
000ec4  ab01803f  lui r3, 260096
000ec8  8be12050  fmac.f.rn r3, r1, r2
000ecc  37200a00  beq r20, zero, 8
000ed0  8be10158  neg.f r3, r3
000ed4  e340affd  loadli.w r1,  -300(r30)
000ed8  e70c3ffc  storeli.w r3, -312(r30)
000edc  9780c001  and r1, r1, r28
000ee0  674a1ffc  storeli.w r1, -348(r30)
000ee4  8be06021  mul.f.rn r1, r1, r22
000ee8  8be90060  abs.f r19, r1
000eec  1bb29000  slli r4, r1, 9
000ef0  0be18921  mul.f.rn r2, r19, r24
000ef4  13030200  seteq r6, r4, zero
000ef8  8f230108  .word 0x0801238f
000efc  6b518ff3  load.d r[3:4], -200(r30)
000f00  0f922320  .word 0x2023920f
000f04  9bc37001  srli r7, r1, 23
000f08  93e00004  setlt.f r1, r1, zero
000f0c  9b83f30f  andi r7, r7, 255
000f10  9bf3f30f  setlti r7, r7, 255
000f14  17936300  or r6, r7, r6
000f18  178a6000  and r20, r1, r6
000f1c  d7600200  jal 4868
000f20  8f300110  .word 0x1001308f
000f24  1f810d00  addli r2, r27, 0
000f28  9f810a00  addli r3, r21, 0
000f2c  0be20958  neg.f r4, r19
000f30  0be1a051  fmac.f.rn r2, r1, r26
000f34  8b611150  fmac.f.rn r3, r2, r1
000f38  1f810c00  addli r2, r25, 0
000f3c  0be11150  fmac.f.rn r2, r3, r1
000f40  9f810b00  addli r3, r23, 0
000f44  8b611150  fmac.f.rn r3, r2, r1
000f48  0be14920  mul.f.rn r2, r19, r4
000f4c  8be10158  neg.f r3, r3
000f50  0f010100  exp.f.rn r2, r2
000f54  8be03020  mul.f.rn r1, r1, r3
000f58  ab01803f  lui r3, 260096
000f5c  8be12050  fmac.f.rn r3, r1, r2
000f60  37200a00  beq r20, zero, 8
000f64  8be10158  neg.f r3, r3
000f68  e340bffd  loadli.w r1,  -292(r30)
000f6c  674d3ffc  storeli.w r3, -300(r30)
000f70  9780c001  and r1, r1, r28
000f74  670a1ffc  storeli.w r1, -352(r30)
000f78  8be06021  mul.f.rn r1, r1, r22
000f7c  8be90060  abs.f r19, r1
000f80  1bb29000  slli r4, r1, 9
000f84  0be18921  mul.f.rn r2, r19, r24
000f88  13030200  seteq r6, r4, zero
000f8c  8f230108  .word 0x0801238f
000f90  6b518ff3  load.d r[3:4], -200(r30)
000f94  0f922320  .word 0x2023920f
000f98  9bc37001  srli r7, r1, 23
000f9c  93e00004  setlt.f r1, r1, zero
000fa0  9b83f30f  andi r7, r7, 255
000fa4  9bf3f30f  setlti r7, r7, 255
000fa8  17936300  or r6, r7, r6
000fac  178a6000  and r20, r1, r6
000fb0  d7600200  jal 4868
000fb4  8f300110  .word 0x1001308f
000fb8  1f810d00  addli r2, r27, 0
000fbc  9f810a00  addli r3, r21, 0
000fc0  0be20958  neg.f r4, r19
000fc4  0be1a051  fmac.f.rn r2, r1, r26
000fc8  8b611150  fmac.f.rn r3, r2, r1
000fcc  1f810c00  addli r2, r25, 0
000fd0  0be11150  fmac.f.rn r2, r3, r1
000fd4  9f810b00  addli r3, r23, 0
000fd8  8b611150  fmac.f.rn r3, r2, r1
000fdc  0be14920  mul.f.rn r2, r19, r4
000fe0  8be10158  neg.f r3, r3
000fe4  0f010100  exp.f.rn r2, r2
000fe8  8be03020  mul.f.rn r1, r1, r3
000fec  ab01803f  lui r3, 260096
000ff0  8be12050  fmac.f.rn r3, r1, r2
000ff4  37200a00  beq r20, zero, 8
000ff8  8be10158  neg.f r3, r3
000ffc  e300dffd  loadli.w r1,  -280(r30)
001000  e74d3ffc  storeli.w r3, -292(r30)
001004  9780c001  and r1, r1, r28
001008  e70e1ffc  storeli.w r1, -280(r30)
00100c  8be06021  mul.f.rn r1, r1, r22
001010  8be90060  abs.f r19, r1
001014  1bb29000  slli r4, r1, 9
001018  0be18921  mul.f.rn r2, r19, r24
00101c  13030200  seteq r6, r4, zero
001020  8f230108  .word 0x0801238f
001024  6b518ff3  load.d r[3:4], -200(r30)
001028  0f922320  .word 0x2023920f
00102c  9bc37001  srli r7, r1, 23
001030  93e00004  setlt.f r1, r1, zero
001034  9b83f30f  andi r7, r7, 255
001038  9bf3f30f  setlti r7, r7, 255
00103c  17936300  or r6, r7, r6
001040  178a6000  and r20, r1, r6
001044  d7600200  jal 4868
001048  8f300110  .word 0x1001308f
00104c  1f810d00  addli r2, r27, 0
001050  9f810a00  addli r3, r21, 0
001054  0be20958  neg.f r4, r19
001058  0be1a051  fmac.f.rn r2, r1, r26
00105c  2b0d803f  lui r26, 260096
001060  8b611150  fmac.f.rn r3, r2, r1
001064  1f810c00  addli r2, r25, 0
001068  0be11150  fmac.f.rn r2, r3, r1
00106c  9f810b00  addli r3, r23, 0
001070  8b611150  fmac.f.rn r3, r2, r1
001074  0be14920  mul.f.rn r2, r19, r4
001078  8be10158  neg.f r3, r3
00107c  0f010100  exp.f.rn r2, r2
001080  8be03020  mul.f.rn r1, r1, r3
001084  0bed2050  fmac.f.rn r26, r1, r2
001088  37200a00  beq r20, zero, 8
00108c  0b6d0d58  neg.f r26, r26
001090  e300effd  loadli.w r1,  -272(r30)
001094  9780c001  and r1, r1, r28
001098  670f1ffc  storeli.w r1, -272(r30)
00109c  8be06021  mul.f.rn r1, r1, r22
0010a0  8be90060  abs.f r19, r1
0010a4  1bb29000  slli r4, r1, 9
0010a8  0be18921  mul.f.rn r2, r19, r24
0010ac  13030200  seteq r6, r4, zero
0010b0  8f230108  .word 0x0801238f
0010b4  6b518ff3  load.d r[3:4], -200(r30)
0010b8  0f922320  .word 0x2023920f
0010bc  9bc37001  srli r7, r1, 23
0010c0  93e00004  setlt.f r1, r1, zero
0010c4  9b83f30f  andi r7, r7, 255
0010c8  9bf3f30f  setlti r7, r7, 255
0010cc  17936300  or r6, r7, r6
0010d0  178a6000  and r20, r1, r6
0010d4  d7600200  jal 4868
0010d8  8f300110  .word 0x1001308f
0010dc  e3015ffe  loadli.w r3,  -216(r30)
0010e0  1f810d00  addli r2, r27, 0
0010e4  0be20958  neg.f r4, r19
0010e8  0be13050  fmac.f.rn r2, r1, r3
0010ec  9f810a00  addli r3, r21, 0
0010f0  ab0a803f  lui r21, 260096
0010f4  8b611150  fmac.f.rn r3, r2, r1
0010f8  1f810c00  addli r2, r25, 0
0010fc  0be11150  fmac.f.rn r2, r3, r1
001100  9f810b00  addli r3, r23, 0
001104  8b611150  fmac.f.rn r3, r2, r1
001108  0be14920  mul.f.rn r2, r19, r4
00110c  8be10158  neg.f r3, r3
001110  0f010100  exp.f.rn r2, r2
001114  8be03020  mul.f.rn r1, r1, r3
001118  8bea2050  fmac.f.rn r21, r1, r2
00111c  37200a00  beq r20, zero, 8
001120  8bea0a58  neg.f r21, r21
001124  e340fffd  loadli.w r1,  -260(r30)
001128  978dc001  and r27, r1, r28
00112c  8be06d21  mul.f.rn r1, r27, r22
001130  8be90060  abs.f r19, r1
001134  1bb29000  slli r4, r1, 9
001138  0be18921  mul.f.rn r2, r19, r24
00113c  13030200  seteq r6, r4, zero
001140  8f230108  .word 0x0801238f
001144  6b518ff3  load.d r[3:4], -200(r30)
001148  0f922320  .word 0x2023920f
00114c  9bc37001  srli r7, r1, 23
001150  93e00004  setlt.f r1, r1, zero
001154  9b83f30f  andi r7, r7, 255
001158  9bf3f30f  setlti r7, r7, 255
00115c  17936300  or r6, r7, r6
001160  178b6000  and r22, r1, r6
001164  d7600200  jal 4868
001168  8f300110  .word 0x1001308f
00116c  63414ffe  loadli.w r2,  -220(r30)
001170  e3015ffe  loadli.w r3,  -216(r30)
001174  0be20958  neg.f r4, r19
001178  2b0a803f  lui r20, 260096
00117c  0be13050  fmac.f.rn r2, r1, r3
001180  e3016ffe  loadli.w r3,  -208(r30)
001184  8b611150  fmac.f.rn r3, r2, r1
001188  1f810c00  addli r2, r25, 0
00118c  0be11150  fmac.f.rn r2, r3, r1
001190  9f810b00  addli r3, r23, 0
001194  8b611150  fmac.f.rn r3, r2, r1
001198  0be14920  mul.f.rn r2, r19, r4
00119c  8be10158  neg.f r3, r3
0011a0  0f010100  exp.f.rn r2, r2
0011a4  8be03020  mul.f.rn r1, r1, r3
0011a8  0bea2050  fmac.f.rn r20, r1, r2
0011ac  37200b00  beq r22, zero, 8
0011b0  0b6a0a58  neg.f r20, r20
0011b4  e3400ffe  loadli.w r1,  -252(r30)
0011b8  63014ffe  loadli.w r2,  -224(r30)
0011bc  ab03003f  lui r7, 258048
0011c0  9780c001  and r1, r1, r28
0011c4  0be42020  mul.f.rn r8, r1, r2
0011c8  63011ffe  loadli.w r2,  -248(r30)
0011cc  8bec7020  mul.f.rn r25, r1, r7
0011d0  0b617120  mul.f.rn r2, r2, r7
0011d4  8b6b0460  abs.f r23, r8
0011d8  9b329400  slli r5, r8, 9
0011dc  8be18b21  mul.f.rn r3, r23, r24
0011e0  13830200  seteq r6, r5, zero
0011e4  e7492ffc  storeli.w r2, -356(r30)
0011e8  6301fffd  loadli.w r2,  -264(r30)
0011ec  0b617120  mul.f.rn r2, r2, r7
0011f0  8fa40108  .word 0x0801a48f
0011f4  e7092ffc  storeli.w r2, -360(r30)
0011f8  6341dffd  loadli.w r2,  -276(r30)
0011fc  0b617120  mul.f.rn r2, r2, r7
001200  e74e2ffc  storeli.w r2, -276(r30)
001204  6301cffd  loadli.w r2,  -288(r30)
001208  0b617120  mul.f.rn r2, r2, r7
00120c  670e2ffc  storeli.w r2, -288(r30)
001210  6301affd  loadli.w r2,  -304(r30)
001214  0b617120  mul.f.rn r2, r2, r7
001218  e7002ffe  storeli.w r2, -248(r30)
00121c  63418ffd  loadli.w r2,  -316(r30)
001220  0b617120  mul.f.rn r2, r2, r7
001224  670d2ffc  storeli.w r2, -304(r30)
001228  63017ffd  loadli.w r2,  -328(r30)
00122c  0b6e7120  mul.f.rn r28, r2, r7
001230  63016ffd  loadli.w r2,  -336(r30)
001234  8b697120  mul.f.rn r19, r2, r7
001238  63415ffd  loadli.w r2,  -340(r30)
00123c  0b6b7120  mul.f.rn r22, r2, r7
001240  63015ffd  loadli.w r2,  -344(r30)
001244  0b6c7120  mul.f.rn r24, r2, r7
001248  63414ffd  loadli.w r2,  -348(r30)
00124c  0b617120  mul.f.rn r2, r2, r7
001250  67402ffe  storeli.w r2, -252(r30)
001254  63014ffd  loadli.w r2,  -352(r30)
001258  0b617120  mul.f.rn r2, r2, r7
00125c  e74f2ffc  storeli.w r2, -260(r30)
001260  6301dffd  loadli.w r2,  -280(r30)
001264  0b617120  mul.f.rn r2, r2, r7
001268  e70f2ffc  storeli.w r2, -264(r30)
00126c  6301effd  loadli.w r2,  -272(r30)
001270  0b617120  mul.f.rn r2, r2, r7
001274  670f2ffc  storeli.w r2, -272(r30)
001278  0be17d20  mul.f.rn r2, r27, r7
00127c  e70e2ffc  storeli.w r2, -280(r30)
001280  6b518ff3  load.d r[3:4], -200(r30)
001284  0f922420  .word 0x2024920f
001288  9b447401  srli r9, r8, 23
00128c  13640404  setlt.f r8, r8, zero
001290  9b84f40f  andi r9, r9, 255
001294  9bf0f40f  setlti r1, r9, 255
001298  97906000  or r1, r1, r6
00129c  970d1400  and r27, r8, r1
0012a0  d7600200  jal 4868
0012a4  8f300110  .word 0x1001308f
0012a8  63414ffe  loadli.w r2,  -220(r30)
0012ac  e3015ffe  loadli.w r3,  -216(r30)
0012b0  0be20b58  neg.f r4, r23
0012b4  0be13050  fmac.f.rn r2, r1, r3
0012b8  e3016ffe  loadli.w r3,  -208(r30)
0012bc  8b611150  fmac.f.rn r3, r2, r1
0012c0  63415ffe  loadli.w r2,  -212(r30)
0012c4  0be11150  fmac.f.rn r2, r3, r1
0012c8  e3416ffe  loadli.w r3,  -204(r30)
0012cc  8b611150  fmac.f.rn r3, r2, r1
0012d0  0be14b20  mul.f.rn r2, r23, r4
0012d4  8be10158  neg.f r3, r3
0012d8  0f010100  exp.f.rn r2, r2
0012dc  8be13020  mul.f.rn r3, r1, r3
0012e0  ab00803f  lui r1, 260096
0012e4  8be02150  fmac.f.rn r1, r3, r2
0012e8  379b0df6  beq r27, zero, -4412
0012ec  8be00058  neg.f r1, r1
0012f0  dbd7fdff  j -4420
0012f4  9f0e0ffc  addli sp, r30, -512
0012f8  9f8e0e04  addli sp, sp, 512
0012fc  00a00300  mfence { lm, sm, gm }
001300  00100000  exit
001304  9f8e7eff  addli sp, sp, -72
001308  9f406000  addli r1, zero, 52
00130c  2bf50f00  lui r10, 255
001310  abf7ffff  lui r15, 1048575
001314  ab040080  lui r9, 524288
001318  17232202  xor.d r[7:8], r[5:6], r[3:4]
00131c  e7c1ee01  storeli.w r30, 28(sp)
001320  67c43e01  storeli.w r19, 68(sp)
001324  67844e01  storeli.w r20, 64(sp)
001328  e7c35e01  storeli.w r21, 60(sp)
00132c  e7836e01  storeli.w r22, 56(sp)
001330  67c37e01  storeli.w r23, 52(sp)
001334  67838e01  storeli.w r24, 48(sp)
001338  e7c29e01  storeli.w r25, 44(sp)
00133c  e782ae01  storeli.w r26, 40(sp)
001340  67c2be01  storeli.w r27, 36(sp)
001344  6782ce01  storeli.w r28, 32(sp)
001348  e781fe01  storeli.w r31, 24(sp)
00134c  1f8f9e00  addli r30, sp, 72
001350  1f040000  addli r8, zero, 0
001354  97451102  srl.d r[12:13], r[3:4], r1
001358  17481202  srl.d r[17:18], r[5:6], r1
00135c  1b17f5ff  ori r14, r10, 4095
001360  9b96f7ff  ori r13, r15, 4095
001364  17038302  and.d r[7:8], r[7:8], r[9:10]
001368  9b80f57f  andi r1, r11, 2047
00136c  1b05f87f  andi r10, r16, 2047
001370  9b982780  ori r17, r15, 2050
001374  1704d102  and.d r[9:10], r[3:4], r[14:15]
001378  9705d202  and.d r[12:13], r[5:6], r[14:15]
00137c  1f9800f0  addli r16, r1, -2047
001380  13081805  setlt.u r16, r16, r17
001384  3b700800  bneq r16, zero, 28
001388  1f1805f0  addli r16, r10, -2047
00138c  9b971780  ori r15, r15, 2049
001390  93870705  setlt.u r15, r15, r16
001394  37b00700  beq r15, zero, 12
001398  1f020000  addli r4, zero, 0
00139c  5b0b0000  j 88
0013a0  abf7ff7f  lui r15, 524287
0013a4  2b09f07f  lui r18, 524032
0013a8  9f180000  addli r17, zero, 1
0013ac  1b97f7ff  ori r14, r15, 4095
0013b0  9707d102  and.d r[16:17], r[3:4], r[14:15]
0013b4  93a91705  setlt.ul r19, r[16:17], r[18:19]
0013b8  3be00900  bneq r19, zero, 24
0013bc  ab020800  lui r5, 128
0013c0  9f060000  addli r13, zero, 0
0013c4  1f020000  addli r4, zero, 0
0013c8  17114102  or.d r[3:4], r[3:4], r[5:6]
0013cc  5b040000  j 32
0013d0  1701d202  and.d r[3:4], r[5:6], r[14:15]
0013d4  93261105  setlt.ul r13, r[3:4], r[18:19]
0013d8  3bf80600  bneq r13, zero, 540
0013dc  ab010800  lui r3, 128
0013e0  9f060000  addli r13, zero, 0
0013e4  1f010000  addli r2, zero, 0
0013e8  17112202  or.d r[3:4], r[5:6], r[3:4]
0013ec  1f020000  addli r4, zero, 0
0013f0  b7c90600  beq r13, zero, 624
0013f4  ab011000  lui r3, 256
0013f8  9f371000  addli r15, zero, 11
0013fc  abf9ffff  lui r19, 1048575
001400  2bf90475  lui r18, 479311
001404  9f582000  addli r17, zero, 21
001408  73346ffc  store.d r[7:8], -56(r30)
00140c  9f723000  addli r5, zero, 31
001410  73308ffc  store.d r[9:10], -64(r30)
001414  8b90a018  sub.s r1, r1, r10
001418  1f010000  addli r2, zero, 0
00141c  97b7f502  sll.d r[16:17], r[12:13], r15
001420  9b1a3933  ori r21, r18, 819
001424  8b101210  add.s r1, r4, r1
001428  97162402  or.d r[14:15], r[9:10], r[3:4]
00142c  17912502  or.d r[3:4], r[12:13], r[3:4]
001430  9b950980  ori r11, r19, 2048
001434  733cdffa  store.d r[14:15], -72(r30)
001438  338c0528  zext_int2long r[25:26], r11
00143c  174b1103  srl.d r[23:24], r[3:4], r17
001440  9b95f9ff  ori r11, r19, 4095
001444  9b99e9ff  ori r19, r19, 4094
001448  b3880528  zext_int2long r[18:19], r11
00144c  8b9a6a19  sub.s r21, r21, r22
001450  97878703  and.d r[16:17], r[16:17], r[25:26]
001454  b3890928  zext_int2long r[20:21], r19
001458  170d1b03  and.d r[27:28], r[23:24], r[18:19]
00145c  b38a0a28  zext_int2long r[22:23], r21
001460  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
001464  0b930358  neg.s r6, r7
001468  33030328  zext_int2long r[7:8], r6
00146c  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
001470  17435302  srl.d r[7:8], r[7:8], r5
001474  17031303  and.d r[7:8], r[7:8], r[18:19]
001478  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
00147c  8b1a0b58  neg.s r21, r22
001480  b38a0a28  zext_int2long r[22:23], r21
001484  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
001488  17435302  srl.d r[7:8], r[7:8], r5
00148c  17031303  and.d r[7:8], r[7:8], r[18:19]
001490  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
001494  8b1a0b58  neg.s r21, r22
001498  1f0b4000  addli r22, zero, 32
00149c  33840a28  zext_int2long r[9:10], r21
0014a0  9f1a0000  addli r21, zero, 1
0014a4  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0014a8  33840a28  zext_int2long r[9:10], r21
0014ac  17435302  srl.d r[7:8], r[7:8], r5
0014b0  1f73f3ff  addli r6, r6, -1
0014b4  33030328  zext_int2long r[7:8], r6
0014b8  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0014bc  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0014c0  97c76703  srl.d r[16:17], r[16:17], r22
0014c4  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0014c8  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0014cc  97071403  and.d r[16:17], r[9:10], r[18:19]
0014d0  17446403  srl.d r[9:10], r[9:10], r22
0014d4  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0014d8  97cb5702  srl.d r[24:25], r[16:17], r5
0014dc  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
0014e0  97b75603  sll.d r[16:17], r[14:15], r21
0014e4  abf41f00  lui r9, 511
0014e8  97b25203  sll.d r[6:7], r[6:7], r21
0014ec  97cc6703  srl.d r[26:27], r[16:17], r22
0014f0  978d3703  and.d r[28:29], r[16:17], r[20:21]
0014f4  1b96f4ff  ori r12, r9, 4095
0014f8  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
0014fc  a7f232fe  addli.d r[6:7], r[6:7], 32543
001500  97831203  and.d r[8:9], r[6:7], r[18:19]
001504  97c26203  srl.d r[6:7], r[6:7], r22
001508  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
00150c  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
001510  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
001514  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
001518  97881303  and.d r[18:19], r[8:9], r[18:19]
00151c  97cb6b03  srl.d r[24:25], r[24:25], r22
001520  97cc6d03  srl.d r[26:27], r[28:29], r22
001524  97893d03  and.d r[20:21], r[28:29], r[20:21]
001528  97c36303  srl.d r[8:9], r[8:9], r22
00152c  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
001530  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
001534  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
001538  0b227210  add.ul r[5:6], r[5:6], r[8:9]
00153c  17c36803  srl.d r[7:8], r[18:19], r22
001540  0b226210  add.ul r[5:6], r[5:6], r[7:8]
001544  13a34504  setlt.ul r6, r[12:13], r[5:6]
001548  3b710300  bneq r6, zero, 92
00154c  1f536000  addli r6, zero, 53
001550  eb540ffc  load.d r[10:11], -64(r30)
001554  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
001558  9fe0f007  addli r1, r1, 1022
00155c  97b46402  sll.d r[10:11], r[10:11], r6
001560  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
001564  1f73f00f  addli r6, zero, 2047
001568  3fa06000  blt.s r1, r6, 8
00156c  5b0c0000  j 96
001570  1f150000  addli r10, zero, 1
001574  bfb1a000  blt.s r1, r10, 108
001578  2bf30f00  lui r6, 255
00157c  abf3ffff  lui r7, 1048575
001580  b3850028  zext_int2long r[12:13], r1
001584  9f406000  addli r1, zero, 52
001588  1734a402  sll.d r[9:10], r[9:10], r10
00158c  1b17f3ff  ori r14, r6, 4095
001590  97b51502  sll.d r[12:13], r[12:13], r1
001594  9b96f3ff  ori r13, r7, 4095
001598  1702d202  and.d r[5:6], r[5:6], r[14:15]
00159c  17924502  or.d r[5:6], r[12:13], r[5:6]
0015a0  db140000  j 164
0015a4  17425203  srl.d r[5:6], r[5:6], r21
0015a8  1f436000  addli r6, zero, 52
0015ac  eb530ffc  load.d r[8:9], -64(r30)
0015b0  9ff0f007  addli r1, r1, 1023
0015b4  eb578ffb  load.d r[16:17], -72(r30)
0015b8  17b36302  sll.d r[7:8], r[8:9], r6
0015bc  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0015c0  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0015c4  1f73f00f  addli r6, zero, 2047
0015c8  bfae60fe  blt.s r1, r6, -88
0015cc  2b01f07f  lui r2, 524032
0015d0  eb518ffc  load.d r[4:5], -56(r30)
0015d4  9f000000  addli r1, zero, 0
0015d8  17911102  or.d r[3:4], r[4:5], r[2:3]
0015dc  db100000  j 132
0015e0  2bf3ffff  lui r6, 1048575
0015e4  1b13b3fc  ori r6, r6, 4043
0015e8  bf701300  blt.s r6, r1, 60
0015ec  6b518ffc  load.d r[3:4], -56(r30)
0015f0  5b0e0000  j 112
0015f4  ab02f07f  lui r5, 524032
0015f8  1f020000  addli r4, zero, 0
0015fc  93a64702  setneq.d r13, r[16:17], r[5:6]
001600  3be20600  bneq r13, zero, 152
001604  1f020000  addli r4, zero, 0
001608  13214100  seteq.d r2, r[3:4], r[5:6]
00160c  b7060100  beq r2, zero, 416
001610  ab01f87f  lui r3, 524160
001614  9f060000  addli r13, zero, 0
001618  1f020000  addli r4, zero, 0
00161c  1f010000  addli r2, zero, 0
001620  5bbaffff  j -560
001624  9f130000  addli r7, zero, 1
001628  1fc36000  addli r6, r1, 52
00162c  8b901318  sub.s r1, r7, r1
001630  17b46702  sll.d r[9:10], r[16:17], r6
001634  17421202  srl.d r[5:6], r[5:6], r1
001638  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
00163c  17337502  sll.d r[7:8], r[11:12], r7
001640  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
001644  23031200  andi.d r[7:8], r[5:6], 1
001648  0b238310  add.ul r[7:8], r[7:8], r[9:10]
00164c  93206104  setlt.ul r1, r[3:4], r[7:8]
001650  b3800028  zext_int2long r[2:3], r1
001654  8b201210  add.ul r[2:3], r[5:6], r[2:3]
001658  eb518ffc  load.d r[4:5], -56(r30)
00165c  17913002  or.d r[3:4], r[2:3], r[4:5]
001660  e38f3e00  loadli.w r31,  24(sp)
001664  63cf3e00  loadli.w r30,  28(sp)
001668  638e4e00  loadli.w r28,  32(sp)
00166c  e3cd4e00  loadli.w r27,  36(sp)
001670  638d5e00  loadli.w r26,  40(sp)
001674  e3cc5e00  loadli.w r25,  44(sp)
001678  638c6e00  loadli.w r24,  48(sp)
00167c  e3cb6e00  loadli.w r23,  52(sp)
001680  638b7e00  loadli.w r22,  56(sp)
001684  e3ca7e00  loadli.w r21,  60(sp)
001688  638a8e00  loadli.w r20,  64(sp)
00168c  e3c98e00  loadli.w r19,  68(sp)
001690  9f8e9e00  addli sp, sp, 72
001694  5f800f00  jr r31, 0
001698  1f020000  addli r4, zero, 0
00169c  13224102  setneq.d r4, r[3:4], r[5:6]
0016a0  3b500200  bneq r4, zero, 20
0016a4  9f060000  addli r13, zero, 0
0016a8  1f020000  addli r4, zero, 0
0016ac  27010300  addli.d r[3:4], r[7:8], 0
0016b0  5ba8ffff  j -704
0016b4  33020028  zext_int2long r[5:6], zero
0016b8  13a24702  setneq.d r4, r[16:17], r[5:6]
0016bc  37240200  beq r4, zero, 264
0016c0  33020028  zext_int2long r[5:6], zero
0016c4  13224102  setneq.d r4, r[3:4], r[5:6]
0016c8  b7130200  beq r4, zero, 228
0016cc  2bf20f00  lui r4, 255
0016d0  abf2ffff  lui r5, 1048575
0016d4  1b17f2ff  ori r14, r4, 4095
0016d8  9b96f2ff  ori r13, r5, 4095
0016dc  13a2f604  setlt.ul r4, r[14:15], r[16:17]
0016e0  bb630200  bneq r4, zero, 248
0016e4  9f120000  addli r5, zero, 1
0016e8  9f270000  addli r15, zero, 2
0016ec  1f420000  addli r4, zero, 4
0016f0  1f081000  addli r16, zero, 8
0016f4  97485402  srl.d r[18:19], r[9:10], r5
0016f8  97181403  or.d r[18:19], r[9:10], r[18:19]
0016fc  97c9f802  srl.d r[20:21], r[18:19], r15
001700  97983803  or.d r[18:19], r[18:19], r[20:21]
001704  97c94802  srl.d r[20:21], r[18:19], r4
001708  97983803  or.d r[18:19], r[18:19], r[20:21]
00170c  9f092000  addli r19, zero, 16
001710  17ca0803  srl.d r[21:22], r[18:19], r16
001714  17984803  or.d r[17:18], r[18:19], r[21:22]
001718  1f094000  addli r18, zero, 32
00171c  97493803  srl.d r[20:21], r[17:18], r19
001720  17183803  or.d r[17:18], r[17:18], r[20:21]
001724  2b5a5555  lui r20, 349525
001728  17492803  srl.d r[19:20], r[17:18], r18
00172c  17182803  or.d r[17:18], r[17:18], r[19:20]
001730  33990628  sext_int2long r[19:20], r13
001734  17282803  xor.d r[17:18], r[17:18], r[19:20]
001738  1b195a55  ori r18, r20, 1365
00173c  174a5802  srl.d r[21:22], r[17:18], r5
001740  9f090900  addli r19, r18, 0
001744  ab323333  lui r5, 209715
001748  17092a03  and.d r[19:20], r[21:22], r[19:20]
00174c  1b9a3233  ori r20, r5, 819
001750  ab020f0f  lui r5, 61680
001754  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
001758  9f0a0a00  addli r21, r20, 0
00175c  1749f802  srl.d r[19:20], r[17:18], r15
001760  97074803  and.d r[16:17], r[17:18], r[21:22]
001764  97084903  and.d r[18:19], r[19:20], r[21:22]
001768  ab090101  lui r19, 4112
00176c  1f0a7000  addli r20, zero, 56
001770  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
001774  97c84702  srl.d r[18:19], r[16:17], r4
001778  1b92f2f0  ori r4, r5, 3855
00177c  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
001780  9f020200  addli r5, r4, 0
001784  9f481000  addli r17, zero, 12
001788  17824702  and.d r[5:6], r[16:17], r[5:6]
00178c  9b971910  ori r15, r19, 257
001790  1f880700  addli r16, r15, 0
001794  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
001798  17424203  srl.d r[5:6], r[5:6], r20
00179c  9f57e2ff  addli r15, r4, -11
0017a0  0b924818  sub.s r4, r17, r4
0017a4  1734f402  sll.d r[9:10], r[9:10], r15
0017a8  db060000  j 52
0017ac  ab01f07f  lui r3, 524032
0017b0  9f060000  addli r13, zero, 0
0017b4  1f020000  addli r4, zero, 0
0017b8  1f010000  addli r2, zero, 0
0017bc  17112302  or.d r[3:4], r[7:8], r[3:4]
0017c0  5b86ffff  j -976
0017c4  33020028  zext_int2long r[5:6], zero
0017c8  13214100  seteq.d r2, r[3:4], r[5:6]
0017cc  bb430100  bneq r2, zero, 240
0017d0  27010300  addli.d r[3:4], r[7:8], 0
0017d4  5b1e0000  j 240
0017d8  1f020000  addli r4, zero, 0
0017dc  13a12604  setlt.ul r2, r[14:15], r[3:4]
0017e0  3b530100  bneq r2, zero, 212
0017e4  9f160000  addli r13, zero, 1
0017e8  9f210000  addli r3, zero, 2
0017ec  1f410000  addli r2, zero, 4
0017f0  9f021000  addli r5, zero, 8
0017f4  1f072000  addli r14, zero, 16
0017f8  97c7d502  srl.d r[16:17], r[12:13], r13
0017fc  9797f502  or.d r[16:17], r[12:13], r[16:17]
001800  97c83702  srl.d r[18:19], r[16:17], r3
001804  97971703  or.d r[16:17], r[16:17], r[18:19]
001808  97c82702  srl.d r[18:19], r[16:17], r2
00180c  97971703  or.d r[16:17], r[16:17], r[18:19]
001810  97c85702  srl.d r[18:19], r[16:17], r5
001814  9f024000  addli r5, zero, 32
001818  97971703  or.d r[16:17], r[16:17], r[18:19]
00181c  97c8e702  srl.d r[18:19], r[16:17], r14
001820  2bf7ffff  lui r14, 1048575
001824  97971703  or.d r[16:17], r[16:17], r[18:19]
001828  1b17f7ff  ori r14, r14, 4095
00182c  97c85702  srl.d r[18:19], r[16:17], r5
001830  ab525555  lui r5, 349525
001834  97971703  or.d r[16:17], r[16:17], r[18:19]
001838  b3180728  sext_int2long r[18:19], r14
00183c  9b995255  ori r19, r5, 1365
001840  ab323333  lui r5, 209715
001844  17a71703  xor.d r[15:16], r[16:17], r[18:19]
001848  1f8a0900  addli r20, r19, 0
00184c  1748d702  srl.d r[17:18], r[15:16], r13
001850  17083803  and.d r[17:18], r[17:18], r[20:21]
001854  1b993233  ori r18, r5, 819
001858  ab020101  lui r5, 4112
00185c  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
001860  9f090900  addli r19, r18, 0
001864  17483702  srl.d r[17:18], r[15:16], r3
001868  17072703  and.d r[15:16], r[15:16], r[19:20]
00186c  ab010f0f  lui r3, 61680
001870  17082803  and.d r[17:18], r[17:18], r[19:20]
001874  1b99f1f0  ori r18, r3, 3855
001878  0b270711  add.ul r[15:16], r[15:16], r[17:18]
00187c  9f090900  addli r19, r18, 0
001880  17412702  srl.d r[3:4], r[15:16], r2
001884  0b212710  add.ul r[3:4], r[15:16], r[3:4]
001888  1b971210  ori r14, r5, 257
00188c  9f027000  addli r5, zero, 56
001890  17012103  and.d r[3:4], r[3:4], r[19:20]
001894  9f070700  addli r15, r14, 0
001898  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
00189c  17415102  srl.d r[3:4], r[3:4], r5
0018a0  9f52e1ff  addli r5, r2, -11
0018a4  0b114110  add.s r2, r2, r4
0018a8  97b55502  sll.d r[12:13], r[12:13], r5
0018ac  1f42e1ff  addli r4, r2, -12
0018b0  5b010000  j 8
0018b4  9f160000  addli r13, zero, 1
0018b8  5b67ffff  j -1224
0018bc  ab01f87f  lui r3, 524160
0018c0  1f010000  addli r2, zero, 0
0018c4  9f060000  addli r13, zero, 0
0018c8  db64ffff  j -1244
0018cc  00100000  exit
0018d0  00100000  exit
0018d4  00100000  exit
0018d8  00100000  exit
0018dc  00100000  exit
0018e0  00100000  exit
0018e4  00100000  exit
0018e8  00100000  exit
0018ec  00100000  exit
0018f0  00100000  exit
0018f4  00100000  exit
0018f8  00100000  exit
0018fc  00100000  exit
001900  00100000  exit
001904  00100000  exit
001908  00100000  exit
00190c  00100000  exit
001910  00100000  exit
001914  00100000  exit
001918  00100000  exit
00191c  00100000  exit
001920  00100000  exit
001924  00100000  exit
001928  00100000  exit
00192c  00100000  exit
001930  00100000  exit
001934  00100000  exit
001938  00100000  exit
00193c  00100000  exit
001940  00100000  exit
001944  00100000  exit
001948  00100000  exit
00194c  00100000  exit
001950  00100000  exit
001954  00100000  exit
001958  00100000  exit
00195c  00100000  exit
001960  00100000  exit
001964  00100000  exit
001968  00100000  exit
00196c  00100000  exit
001970  00100000  exit
001974  00100000  exit
001978  00100000  exit
00197c  00100000  exit
001980  00100000  exit
001984  00100000  exit
001988  00100000  exit
00198c  00100000  exit
001990  00100000  exit
001994  00100000  exit
001998  00100000  exit
00199c  00100000  exit
0019a0  00100000  exit
0019a4  00100000  exit
0019a8  00100000  exit
0019ac  00100000  exit
0019b0  00100000  exit
0019b4  00100000  exit
0019b8  00100000  exit
0019bc  00100000  exit
0019c0  00100000  exit
0019c4  00100000  exit
0019c8  00100000  exit
0019cc  00100000  exit
0019d0  00100000  exit
0019d4  00100000  exit
0019d8  00100000  exit
0019dc  00100000  exit
0019e0  00100000  exit
0019e4  00100000  exit
0019e8  00100000  exit
0019ec  00100000  exit
0019f0  00100000  exit
0019f4  00100000  exit
0019f8  00100000  exit
0019fc  00100000  exit
001a00  00100000  exit
001a04  00100000  exit
001a08  00100000  exit
001a0c  00100000  exit
001a10  00100000  exit
001a14  00100000  exit
001a18  00100000  exit
001a1c  00100000  exit
001a20  00100000  exit
001a24  00100000  exit
001a28  00100000  exit
001a2c  00100000  exit
001a30  00100000  exit
001a34  00100000  exit
001a38  00100000  exit
001a3c  00100000  exit
001a40  00100000  exit
001a44  00100000  exit
001a48  00100000  exit
001a4c  00100000  exit
001a50  00100000  exit
001a54  00100000  exit
001a58  00100000  exit
001a5c  00100000  exit
001a60  00100000  exit
001a64  00100000  exit
001a68  00100000  exit
001a6c  00100000  exit
001a70  00100000  exit
001a74  00100000  exit
001a78  00100000  exit
001a7c  00100000  exit
001a80  00100000  exit
001a84  00100000  exit
001a88  00100000  exit
001a8c  00100000  exit
001a90  00100000  exit
001a94  00100000  exit
001a98  00100000  exit
001a9c  00100000  exit
001aa0  00100000  exit
001aa4  00100000  exit
001aa8  00100000  exit
001aac  00100000  exit
001ab0  00100000  exit
001ab4  00100000  exit
001ab8  00100000  exit
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
