; SHA-256 cad26df058513f35aaa9a4fe4b9576612e55ddfbbac5581331d9d05272d55b09
; P800 Cluster · XTDK LLVM 19 · 1681 / 1729 words decoded
; bound names: triton_poi_fused_add_gelu_1
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
000078  9f094000  addli r19, zero, 32
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
0000e8  63013f00  loadli.w r2,  24(r30)
0000ec  e3402f00  loadli.w r1,  20(r30)
0000f0  e3413f00  loadli.w r3,  28(r30)
0000f4  8b101120  mul.s r1, r2, r1
0000f8  8b903020  mul.s r1, r1, r3
0000fc  67091ffc  storeli.w r1, -368(r30)
000100  cbb74008  ble.s r1, r4, 4588
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
00012c  e7482ffc  storeli.w r2, -372(r30)
000130  2bf1ff7f  lui r2, 524287
000134  e7081ffc  storeli.w r1, -376(r30)
000138  ab700000  lui r1, 7
00013c  1b1af1ff  ori r20, r2, 4095
000140  2bb1a73e  lui r2, 256635
000144  1b99f0ff  ori r18, r1, 4095
000148  ab00353f  lui r1, 258896
00014c  9b1d51a0  ori r27, r2, 2565
000150  ab01f03f  lui r3, 261888
000154  e7034ffd  storeli.w r20, -456(r30)
000158  9b90304f  ori r1, r1, 1267
00015c  733c2ff2  store.d r[3:4], -200(r30)
000160  2bf1b53f  lui r2, 260959
000164  e7432ffd  storeli.w r18, -452(r30)
000168  6742bfff  storeli.w r27, -220(r30)
00016c  e7411ffe  storeli.w r1, -228(r30)
000170  ab00babf  lui r1, 785312
000174  9b99300e  ori r19, r1, 227
000178  abd0873f  lui r1, 260221
00017c  1b9d20c2  ori r26, r1, 3106
000180  9b10310e  ori r1, r2, 227
000184  2b71823e  lui r2, 256039
000188  67023fff  storeli.w r19, -224(r30)
00018c  67031ffe  storeli.w r1, -208(r30)
000190  aba091be  lui r1, 780570
000194  e702afff  storeli.w r26, -216(r30)
000198  9b9be098  ori r23, r1, 2446
00019c  9b106190  ori r1, r2, 2310
0001a0  67431ffe  storeli.w r1, -204(r30)
0001a4  e7427fff  storeli.w r23, -212(r30)
0001a8  5b370000  j 440
0001ac  63411ffe  loadli.w r2,  -244(r30)
0001b0  ab08803f  lui r17, 260096
0001b4  e3010ffe  loadli.w r3,  -256(r30)
0001b8  6342effd  loadli.w r4,  -268(r30)
0001bc  e342cffd  loadli.w r5,  -284(r30)
0001c0  63433ffd  loadli.w r6,  -356(r30)
0001c4  e3430ffe  loadli.w r7,  -252(r30)
0001c8  e346bffd  loadli.w r13,  -292(r30)
0001cc  e3051ffe  loadli.w r11,  -248(r30)
0001d0  6306cffd  loadli.w r12,  -288(r30)
0001d4  63048ffd  loadli.w r8,  -320(r30)
0001d8  e3446ffd  loadli.w r9,  -332(r30)
0001dc  63457ffd  loadli.w r10,  -324(r30)
0001e0  63497ffc  loadli.w r18,  -452(r30)
0001e4  8be01011  add.f.rn r1, r1, r17
0001e8  8be71a11  add.f.rn r15, r21, r17
0001ec  0b671d11  add.f.rn r14, r26, r17
0001f0  0b681a11  add.f.rn r16, r20, r17
0001f4  ab0a807f  lui r21, 522240
0001f8  0b611111  add.f.rn r2, r2, r17
0001fc  8be11111  add.f.rn r3, r3, r17
000200  8be21211  add.f.rn r5, r5, r17
000204  0b621211  add.f.rn r4, r4, r17
000208  8be61611  add.f.rn r13, r13, r17
00020c  0b641411  add.f.rn r8, r8, r17
000210  8be41411  add.f.rn r9, r9, r17
000214  0b651511  add.f.rn r10, r10, r17
000218  8b601e20  mul.f.rn r1, r28, r1
00021c  2b0effff  lui r28, 1048560
000220  0b612320  mul.f.rn r2, r6, r2
000224  63033ffd  loadli.w r6,  -360(r30)
000228  8be25320  mul.f.rn r5, r7, r5
00022c  e3439ffd  loadli.w r7,  -308(r30)
000230  0be48920  mul.f.rn r8, r19, r8
000234  e349fffd  loadli.w r19,  -260(r30)
000238  8b649b20  mul.f.rn r9, r22, r9
00023c  0be5ab20  mul.f.rn r10, r23, r10
000240  2b0b4000  lui r22, 1024
000244  8b613320  mul.f.rn r3, r6, r3
000248  63432ffd  loadli.w r6,  -364(r30)
00024c  8be31311  add.f.rn r7, r7, r17
000250  b3900000  float2bfloat.rn r1, r1
000254  0b624320  mul.f.rn r4, r6, r4
000258  6303bffd  loadli.w r6,  -296(r30)
00025c  33110100  float2bfloat.rn r2, r2
000260  731f1ff8  store.h r1, -98(r30)
000264  73102ff8  store.h r2, -128(r30)
000268  0b631311  add.f.rn r6, r6, r17
00026c  8b637620  mul.f.rn r7, r12, r7
000270  6346affd  loadli.w r12,  -300(r30)
000274  33910100  float2bfloat.rn r2, r3
000278  73112ff8  store.h r2, -126(r30)
00027c  33910200  float2bfloat.rn r2, r5
000280  9f024000  addli r5, zero, 32
000284  0b661611  add.f.rn r12, r12, r17
000288  b3110200  float2bfloat.rn r3, r4
00028c  73132ff8  store.h r2, -122(r30)
000290  73123ff8  store.h r3, -124(r30)
000294  0be36520  mul.f.rn r6, r11, r6
000298  e3059ffd  loadli.w r11,  -312(r30)
00029c  33910300  float2bfloat.rn r2, r7
0002a0  73152ff8  store.h r2, -118(r30)
0002a4  33910400  float2bfloat.rn r2, r9
0002a8  9f040fff  addli r9, r30, -128
0002ac  8be51511  add.f.rn r11, r11, r17
0002b0  e308fffd  loadli.w r17,  -264(r30)
0002b4  0be6c920  mul.f.rn r12, r19, r12
0002b8  73172ff8  store.h r2, -114(r30)
0002bc  8be6d820  mul.f.rn r13, r17, r13
0002c0  e348dffd  loadli.w r17,  -276(r30)
0002c4  b3110300  float2bfloat.rn r3, r6
0002c8  73143ff8  store.h r3, -120(r30)
0002cc  b3110400  float2bfloat.rn r3, r8
0002d0  0be7e820  mul.f.rn r14, r17, r14
0002d4  e308effd  loadli.w r17,  -272(r30)
0002d8  8be5bc20  mul.f.rn r11, r25, r11
0002dc  73163ff8  store.h r3, -116(r30)
0002e0  b3110500  float2bfloat.rn r3, r10
0002e4  8be7f820  mul.f.rn r15, r17, r15
0002e8  e308dffd  loadli.w r17,  -280(r30)
0002ec  73183ff8  store.h r3, -112(r30)
0002f0  b3110600  float2bfloat.rn r3, r12
0002f4  731a3ff8  store.h r3, -108(r30)
0002f8  0be80821  mul.f.rn r16, r17, r16
0002fc  33910500  float2bfloat.rn r2, r11
000300  b3110700  float2bfloat.rn r3, r14
000304  73192ff8  store.h r2, -110(r30)
000308  33910600  float2bfloat.rn r2, r13
00030c  731c3ff8  store.h r3, -104(r30)
000310  731b2ff8  store.h r2, -106(r30)
000314  33910700  float2bfloat.rn r2, r15
000318  b3110800  float2bfloat.rn r3, r16
00031c  731d2ff8  store.h r2, -102(r30)
000320  2b0100f0  lui r2, 983040
000324  731e3ff8  store.h r3, -100(r30)
000328  97902200  or r1, r5, r2
00032c  00a00000  mfence { lm }
000330  6b510ff1  load.d r[3:4], -240(r30)
000334  63023ffe  loadli.w r4,  -232(r30)
000338  ff309100  s_lm2gm r1, r9, 0(r[3:4])
00033c  e3401ffd  loadli.w r1,  -372(r30)
000340  00a00000  mfence { lm }
000344  630a7ffc  loadli.w r20,  -456(r30)
000348  e34d4ffe  loadli.w r27,  -220(r30)
00034c  630d5ffe  loadli.w r26,  -216(r30)
000350  0b121210  add.s r4, r4, r1
000354  e3002ffd  loadli.w r1,  -368(r30)
000358  3f201200  blt.s r4, r1, 8
00035c  5bf20100  j 3984
000360  e3403f00  loadli.w r1,  28(r30)
000364  63013f00  loadli.w r2,  24(r30)
000368  ab0100f0  lui r3, 983040
00036c  e7014ffe  storeli.w r4, -232(r30)
000370  9f130000  addli r7, zero, 1
000374  c2108fc2  vload_mask16.mz vr1{mr1}, 1600(r30)
000378  9f180000  addli r17, zero, 1
00037c  97913200  or r3, r5, r3
000380  7e8108e0  vmmov mr2, r17
000384  8b101230  div.s r1, r4, r1
000388  2b0200f0  lui r4, 983040
00038c  17924200  or r4, r5, r4
000390  12301002  vadd.s.mz vr0{mr1}, zero, vr1
000394  8b902030  div.s r1, r1, r2
000398  63011ffd  loadli.w r2,  -376(r30)
00039c  9bb0a000  slli r1, r1, 10
0003a0  8b902010  add.s r1, r1, r2
0003a4  1f010008  addli r2, zero, 1024
0003a8  0b912038  mod.s r2, r1, r2
0003ac  b3920028  sext_int2long r[6:7], r1
0003b0  97b27202  sll.d r[6:7], r[6:7], r7
0003b4  b3100128  sext_int2long r[2:3], r2
0003b8  97b07002  sll.d r[2:3], r[2:3], r7
0003bc  eb530f00  load.d r[8:9], 0(r30)
0003c0  8ba35310  add.ul r[8:9], r[8:9], r[6:7]
0003c4  eb528f00  load.d r[6:7], 8(r30)
0003c8  73387ff0  store.d r[8:9], -240(r30)
0003cc  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
0003d0  9f028ffe  addli r5, r30, -192
0003d4  ffa15300  l_gm2lm r3, r5, 0(r[8:9])
0003d8  7fa29000  l_gm2lm r4, r9, 0(r[2:3])
0003dc  00a00000  mfence { lm }
0003e0  eb300ff4  load.hu r1, -192(r30)
0003e4  6b312ff4  load.hu r2, -190(r30)
0003e8  eb314ff4  load.hu r3, -188(r30)
0003ec  6b326ff4  load.hu r4, -186(r30)
0003f0  eb328ff4  load.hu r5, -184(r30)
0003f4  6b33aff4  load.hu r6, -182(r30)
0003f8  eb33cff4  load.hu r7, -180(r30)
0003fc  6b34eff4  load.hu r8, -178(r30)
000400  eb340ff5  load.hu r9, -176(r30)
000404  6b352ff5  load.hu r10, -174(r30)
000408  eb354ff5  load.hu r11, -172(r30)
00040c  6b366ff5  load.hu r12, -170(r30)
000410  eb368ff5  load.hu r13, -168(r30)
000414  6b37aff5  load.hu r14, -166(r30)
000418  eb37cff5  load.hu r15, -164(r30)
00041c  6b38eff5  load.hu r16, -162(r30)
000420  b3900018  bfloat2float.rn r1, r1
000424  6aa00034  vor.u.mh vr0{mr2}, r1, vr0
000428  b3100118  bfloat2float.rn r1, r2
00042c  1f210000  addli r2, zero, 2
000430  fe0101e0  vmmov mr3, r2
000434  1f410000  addli r2, zero, 4
000438  6aa00036  vor.u.mh vr0{mr3}, r1, vr0
00043c  b3900118  bfloat2float.rn r1, r3
000440  7e0001e0  vmmov mr0, r2
000444  1f011000  addli r2, zero, 8
000448  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00044c  b3100218  bfloat2float.rn r1, r4
000450  7e0001e0  vmmov mr0, r2
000454  1f012000  addli r2, zero, 16
000458  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00045c  b3900218  bfloat2float.rn r1, r5
000460  7e0001e0  vmmov mr0, r2
000464  1f014000  addli r2, zero, 32
000468  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00046c  b3100318  bfloat2float.rn r1, r6
000470  7e0001e0  vmmov mr0, r2
000474  1f018000  addli r2, zero, 64
000478  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00047c  b3900318  bfloat2float.rn r1, r7
000480  7e0001e0  vmmov mr0, r2
000484  1f010001  addli r2, zero, 128
000488  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00048c  b3100418  bfloat2float.rn r1, r8
000490  7e0001e0  vmmov mr0, r2
000494  1f010002  addli r2, zero, 256
000498  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00049c  b3900418  bfloat2float.rn r1, r9
0004a0  7e0001e0  vmmov mr0, r2
0004a4  1f010004  addli r2, zero, 512
0004a8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004ac  b3100518  bfloat2float.rn r1, r10
0004b0  7e0001e0  vmmov mr0, r2
0004b4  1f010008  addli r2, zero, 1024
0004b8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004bc  b3900518  bfloat2float.rn r1, r11
0004c0  7e0001e0  vmmov mr0, r2
0004c4  1f010010  addli r2, zero, 2048
0004c8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004cc  b3100618  bfloat2float.rn r1, r12
0004d0  7e0001e0  vmmov mr0, r2
0004d4  1f010020  addli r2, zero, 4096
0004d8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004dc  b3900618  bfloat2float.rn r1, r13
0004e0  7e0001e0  vmmov mr0, r2
0004e4  1f010040  addli r2, zero, 8192
0004e8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004ec  b3100718  bfloat2float.rn r1, r14
0004f0  7e0001e0  vmmov mr0, r2
0004f4  2b410000  lui r2, 4
0004f8  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
0004fc  b3900718  bfloat2float.rn r1, r15
000500  7e0001e0  vmmov mr0, r2
000504  2b810000  lui r2, 8
000508  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
00050c  b3100818  bfloat2float.rn r1, r16
000510  7e0001e0  vmmov mr0, r2
000514  6aa00030  vor.u.mh vr0{mr0}, r1, vr0
000518  eb300ff8  load.hu r1, -128(r30)
00051c  6b312ff8  load.hu r2, -126(r30)
000520  eb314ff8  load.hu r3, -124(r30)
000524  6b326ff8  load.hu r4, -122(r30)
000528  eb328ff8  load.hu r5, -120(r30)
00052c  6b33aff8  load.hu r6, -118(r30)
000530  eb33cff8  load.hu r7, -116(r30)
000534  6b34eff8  load.hu r8, -114(r30)
000538  eb340ff9  load.hu r9, -112(r30)
00053c  6b352ff9  load.hu r10, -110(r30)
000540  eb354ff9  load.hu r11, -108(r30)
000544  6b366ff9  load.hu r12, -106(r30)
000548  eb368ff9  load.hu r13, -104(r30)
00054c  6b37aff9  load.hu r14, -102(r30)
000550  eb37cff9  load.hu r15, -100(r30)
000554  6b38eff9  load.hu r16, -98(r30)
000558  b3900018  bfloat2float.rn r1, r1
00055c  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000560  b3100118  bfloat2float.rn r1, r2
000564  1f410000  addli r2, zero, 4
000568  7e0101e0  vmmov mr2, r2
00056c  1f011000  addli r2, zero, 8
000570  eaa01036  vor.u.mh vr1{mr3}, r1, vr1
000574  b3900118  bfloat2float.rn r1, r3
000578  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00057c  b3100218  bfloat2float.rn r1, r4
000580  7e0101e0  vmmov mr2, r2
000584  1f012000  addli r2, zero, 16
000588  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00058c  b3900218  bfloat2float.rn r1, r5
000590  7e0101e0  vmmov mr2, r2
000594  1f014000  addli r2, zero, 32
000598  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00059c  b3100318  bfloat2float.rn r1, r6
0005a0  7e0101e0  vmmov mr2, r2
0005a4  1f018000  addli r2, zero, 64
0005a8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005ac  b3900318  bfloat2float.rn r1, r7
0005b0  7e0101e0  vmmov mr2, r2
0005b4  1f010001  addli r2, zero, 128
0005b8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005bc  b3100418  bfloat2float.rn r1, r8
0005c0  7e0101e0  vmmov mr2, r2
0005c4  1f010002  addli r2, zero, 256
0005c8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005cc  b3900418  bfloat2float.rn r1, r9
0005d0  7e0101e0  vmmov mr2, r2
0005d4  1f010004  addli r2, zero, 512
0005d8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005dc  b3100518  bfloat2float.rn r1, r10
0005e0  7e0101e0  vmmov mr2, r2
0005e4  1f010008  addli r2, zero, 1024
0005e8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005ec  b3900518  bfloat2float.rn r1, r11
0005f0  7e0101e0  vmmov mr2, r2
0005f4  1f010010  addli r2, zero, 2048
0005f8  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
0005fc  b3100618  bfloat2float.rn r1, r12
000600  7e0101e0  vmmov mr2, r2
000604  1f010020  addli r2, zero, 4096
000608  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00060c  b3900618  bfloat2float.rn r1, r13
000610  7e0101e0  vmmov mr2, r2
000614  1f010040  addli r2, zero, 8192
000618  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00061c  b3100718  bfloat2float.rn r1, r14
000620  7e0101e0  vmmov mr2, r2
000624  2b410000  lui r2, 4
000628  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
00062c  b3900718  bfloat2float.rn r1, r15
000630  7e0101e0  vmmov mr2, r2
000634  eaa01034  vor.u.mh vr1{mr2}, r1, vr1
000638  b3100818  bfloat2float.rn r1, r16
00063c  eaa01030  vor.u.mh vr1{mr0}, r1, vr1
000640  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
000644  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
000648  00a00000  mfence { lm }
00064c  e3008fff  loadli.w r1,  -64(r30)
000650  63488fff  loadli.w r16,  -60(r30)
000654  e3079fff  loadli.w r15,  -56(r30)
000658  63479fff  loadli.w r14,  -52(r30)
00065c  e306afff  loadli.w r13,  -48(r30)
000660  6346afff  loadli.w r12,  -44(r30)
000664  e305bfff  loadli.w r11,  -40(r30)
000668  6345bfff  loadli.w r10,  -36(r30)
00066c  e304cfff  loadli.w r9,  -32(r30)
000670  6344cfff  loadli.w r8,  -28(r30)
000674  e303dfff  loadli.w r7,  -24(r30)
000678  6343dfff  loadli.w r6,  -20(r30)
00067c  e302efff  loadli.w r5,  -16(r30)
000680  6342efff  loadli.w r4,  -12(r30)
000684  e301ffff  loadli.w r3,  -8(r30)
000688  17814001  and r2, r1, r20
00068c  93882a04  setlt.u r17, r21, r2
000690  6341ffff  loadli.w r2,  -4(r30)
000694  3be00800  bneq r17, zero, 24
000698  9bc80001  srli r17, r1, 16
00069c  9b881800  andi r17, r17, 1
0006a0  8b901011  add.s r1, r1, r17
0006a4  8b902011  add.s r1, r1, r18
0006a8  5b010000  j 8
0006ac  97906001  or r1, r1, r22
0006b0  97084801  and r17, r16, r20
0006b4  93881a05  setlt.u r17, r21, r17
0006b8  3be00800  bneq r17, zero, 24
0006bc  9b480801  srli r17, r16, 16
0006c0  9b881800  andi r17, r17, 1
0006c4  0b181811  add.s r16, r16, r17
0006c8  0b1c2811  add.s r24, r16, r18
0006cc  5b010000  j 8
0006d0  171c6801  or r24, r16, r22
0006d4  17884701  and r16, r15, r20
0006d8  13880a05  setlt.u r16, r21, r16
0006dc  3b600800  bneq r16, zero, 24
0006e0  1bc80701  srli r16, r15, 16
0006e4  1b081800  andi r16, r16, 1
0006e8  8b970711  add.s r15, r15, r16
0006ec  8b992711  add.s r19, r15, r18
0006f0  5b010000  j 8
0006f4  97996701  or r19, r15, r22
0006f8  97074701  and r15, r14, r20
0006fc  9387fa04  setlt.u r15, r21, r15
000700  3be00700  bneq r15, zero, 24
000704  9b470701  srli r15, r14, 16
000708  9b871700  andi r15, r15, 1
00070c  0b17f710  add.s r14, r14, r15
000710  8b1c2711  add.s r25, r14, r18
000714  5b010000  j 8
000718  971c6701  or r25, r14, r22
00071c  17874601  and r14, r13, r20
000720  1387ea04  setlt.u r14, r21, r14
000724  3b600700  bneq r14, zero, 24
000728  1bc70601  srli r14, r13, 16
00072c  1b071700  andi r14, r14, 1
000730  8b96e610  add.s r13, r13, r14
000734  8b9b2611  add.s r23, r13, r18
000738  5b010000  j 8
00073c  979b6601  or r23, r13, r22
000740  97064601  and r13, r12, r20
000744  9386da04  setlt.u r13, r21, r13
000748  3be00600  bneq r13, zero, 24
00074c  9b460601  srli r13, r12, 16
000750  9b861600  andi r13, r13, 1
000754  0b16d610  add.s r12, r12, r13
000758  0b162611  add.s r12, r12, r18
00075c  5b010000  j 8
000760  17166601  or r12, r12, r22
000764  e74ccffc  storeli.w r12, -308(r30)
000768  17864501  and r12, r11, r20
00076c  1386ca04  setlt.u r12, r21, r12
000770  3b600600  bneq r12, zero, 24
000774  1bc60501  srli r12, r11, 16
000778  1b061600  andi r12, r12, 1
00077c  8b95c510  add.s r11, r11, r12
000780  8b952511  add.s r11, r11, r18
000784  5b010000  j 8
000788  97956501  or r11, r11, r22
00078c  670cbffc  storeli.w r11, -320(r30)
000790  97054501  and r11, r10, r20
000794  9385ba04  setlt.u r11, r21, r11
000798  3be00500  bneq r11, zero, 24
00079c  9b450501  srli r11, r10, 16
0007a0  9b851500  andi r11, r11, 1
0007a4  0b15b510  add.s r10, r10, r11
0007a8  0b152511  add.s r10, r10, r18
0007ac  5b010000  j 8
0007b0  17156501  or r10, r10, r22
0007b4  674baffc  storeli.w r10, -332(r30)
0007b8  17854401  and r10, r9, r20
0007bc  1385aa04  setlt.u r10, r21, r10
0007c0  3b600500  bneq r10, zero, 24
0007c4  1bc50401  srli r10, r9, 16
0007c8  1b051500  andi r10, r10, 1
0007cc  8b94a410  add.s r9, r9, r10
0007d0  8b942411  add.s r9, r9, r18
0007d4  5b010000  j 8
0007d8  97946401  or r9, r9, r22
0007dc  e74b9ffc  storeli.w r9, -324(r30)
0007e0  97044401  and r9, r8, r20
0007e4  93849a04  setlt.u r9, r21, r9
0007e8  3be00400  bneq r9, zero, 24
0007ec  9b440401  srli r9, r8, 16
0007f0  9b841400  andi r9, r9, 1
0007f4  0b149410  add.s r8, r8, r9
0007f8  0b142411  add.s r8, r8, r18
0007fc  5b010000  j 8
000800  17146401  or r8, r8, r22
000804  e70c8ffc  storeli.w r8, -312(r30)
000808  17844301  and r8, r7, r20
00080c  13848a04  setlt.u r8, r21, r8
000810  3b600400  bneq r8, zero, 24
000814  1bc40301  srli r8, r7, 16
000818  1b041400  andi r8, r8, 1
00081c  8b938310  add.s r7, r7, r8
000820  8b932311  add.s r7, r7, r18
000824  5b010000  j 8
000828  97936301  or r7, r7, r22
00082c  674d7ffc  storeli.w r7, -300(r30)
000830  97034301  and r7, r6, r20
000834  93837a04  setlt.u r7, r21, r7
000838  3be00300  bneq r7, zero, 24
00083c  9b430301  srli r7, r6, 16
000840  9b831300  andi r7, r7, 1
000844  0b137310  add.s r6, r6, r7
000848  0b132311  add.s r6, r6, r18
00084c  5b010000  j 8
000850  17136301  or r6, r6, r22
000854  e74d6ffc  storeli.w r6, -292(r30)
000858  17834201  and r6, r5, r20
00085c  13836a04  setlt.u r6, r21, r6
000860  3b600300  bneq r6, zero, 24
000864  1bc30201  srli r6, r5, 16
000868  1b031300  andi r6, r6, 1
00086c  8b926210  add.s r5, r5, r6
000870  8b922211  add.s r5, r5, r18
000874  5b010000  j 8
000878  97926201  or r5, r5, r22
00087c  e70e5ffc  storeli.w r5, -280(r30)
000880  97024201  and r5, r4, r20
000884  93825a04  setlt.u r5, r21, r5
000888  3be00200  bneq r5, zero, 24
00088c  9b420201  srli r5, r4, 16
000890  9b821200  andi r5, r5, 1
000894  0b125210  add.s r4, r4, r5
000898  0b122211  add.s r4, r4, r18
00089c  5b010000  j 8
0008a0  17126201  or r4, r4, r22
0008a4  670f4ffc  storeli.w r4, -272(r30)
0008a8  17824101  and r4, r3, r20
0008ac  13824a04  setlt.u r4, r21, r4
0008b0  3b600200  bneq r4, zero, 24
0008b4  1bc20101  srli r4, r3, 16
0008b8  1b021200  andi r4, r4, 1
0008bc  8b914110  add.s r3, r3, r4
0008c0  8b912111  add.s r3, r3, r18
0008c4  5b010000  j 8
0008c8  97916101  or r3, r3, r22
0008cc  e74f3ffc  storeli.w r3, -260(r30)
0008d0  97014101  and r3, r2, r20
0008d4  93813a04  setlt.u r3, r21, r3
0008d8  3be00100  bneq r3, zero, 24
0008dc  9b410101  srli r3, r2, 16
0008e0  9b811100  andi r3, r3, 1
0008e4  0b113110  add.s r2, r2, r3
0008e8  0b112111  add.s r2, r2, r18
0008ec  5b010000  j 8
0008f0  17116101  or r2, r2, r22
0008f4  634b3ffe  loadli.w r22,  -228(r30)
0008f8  9780c001  and r1, r1, r28
0008fc  67402ffe  storeli.w r2, -252(r30)
000900  6b518ff3  load.d r[3:4], -200(r30)
000904  1f010000  addli r2, zero, 0
000908  e7001ffe  storeli.w r1, -248(r30)
00090c  8be06021  mul.f.rn r1, r1, r22
000910  733c2ff2  store.d r[3:4], -200(r30)
000914  0bea0060  abs.f r20, r1
000918  0b62ba21  mul.f.rn r4, r20, r27
00091c  8f230208  .word 0x0802238f
000920  1bb29000  slli r4, r1, 9
000924  13030200  seteq r6, r4, zero
000928  0f922320  .word 0x2023920f
00092c  9bc37001  srli r7, r1, 23
000930  93e00004  setlt.f r1, r1, zero
000934  9b83f30f  andi r7, r7, 255
000938  9bf3f30f  setlti r7, r7, 255
00093c  17936300  or r6, r7, r6
000940  978a6000  and r21, r1, r6
000944  d75f0200  jal 4860
000948  8f300110  .word 0x1001308f
00094c  63014ffe  loadli.w r2,  -224(r30)
000950  e3016ffe  loadli.w r3,  -208(r30)
000954  0b620a58  neg.f r4, r20
000958  0be1a051  fmac.f.rn r2, r1, r26
00095c  8b611150  fmac.f.rn r3, r2, r1
000960  63415ffe  loadli.w r2,  -212(r30)
000964  0be11150  fmac.f.rn r2, r3, r1
000968  e3416ffe  loadli.w r3,  -204(r30)
00096c  8b611150  fmac.f.rn r3, r2, r1
000970  0b614a20  mul.f.rn r2, r20, r4
000974  8be10158  neg.f r3, r3
000978  0f010100  exp.f.rn r2, r2
00097c  8be03020  mul.f.rn r1, r1, r3
000980  ab01803f  lui r3, 260096
000984  8be12050  fmac.f.rn r3, r1, r2
000988  37a00a00  beq r21, zero, 8
00098c  8be10158  neg.f r3, r3
000990  9700cc01  and r1, r24, r28
000994  e7403ffe  storeli.w r3, -244(r30)
000998  e70f1ffc  storeli.w r1, -264(r30)
00099c  8be06021  mul.f.rn r1, r1, r22
0009a0  0bea0060  abs.f r20, r1
0009a4  1bb29000  slli r4, r1, 9
0009a8  0b61ba21  mul.f.rn r2, r20, r27
0009ac  13030200  seteq r6, r4, zero
0009b0  8f230108  .word 0x0801238f
0009b4  6b518ff3  load.d r[3:4], -200(r30)
0009b8  0f922320  .word 0x2023920f
0009bc  9bc37001  srli r7, r1, 23
0009c0  93e00004  setlt.f r1, r1, zero
0009c4  9b83f30f  andi r7, r7, 255
0009c8  9bf3f30f  setlti r7, r7, 255
0009cc  17936300  or r6, r7, r6
0009d0  978a6000  and r21, r1, r6
0009d4  d75f0200  jal 4860
0009d8  8f300110  .word 0x1001308f
0009dc  630c4ffe  loadli.w r24,  -224(r30)
0009e0  e3016ffe  loadli.w r3,  -208(r30)
0009e4  0b620a58  neg.f r4, r20
0009e8  1f010c00  addli r2, r24, 0
0009ec  0be1a051  fmac.f.rn r2, r1, r26
0009f0  8b611150  fmac.f.rn r3, r2, r1
0009f4  63415ffe  loadli.w r2,  -212(r30)
0009f8  0be11150  fmac.f.rn r2, r3, r1
0009fc  e3416ffe  loadli.w r3,  -204(r30)
000a00  8b611150  fmac.f.rn r3, r2, r1
000a04  0b614a20  mul.f.rn r2, r20, r4
000a08  8be10158  neg.f r3, r3
000a0c  0f010100  exp.f.rn r2, r2
000a10  8be03020  mul.f.rn r1, r1, r3
000a14  ab01803f  lui r3, 260096
000a18  8be12050  fmac.f.rn r3, r1, r2
000a1c  37a00a00  beq r21, zero, 8
000a20  8be10158  neg.f r3, r3
000a24  9780c901  and r1, r19, r28
000a28  67003ffe  storeli.w r3, -256(r30)
000a2c  e74e1ffc  storeli.w r1, -276(r30)
000a30  8be06021  mul.f.rn r1, r1, r22
000a34  8be90060  abs.f r19, r1
000a38  1bb29000  slli r4, r1, 9
000a3c  0be1b921  mul.f.rn r2, r19, r27
000a40  13030200  seteq r6, r4, zero
000a44  8f230108  .word 0x0801238f
000a48  6b518ff3  load.d r[3:4], -200(r30)
000a4c  0f922320  .word 0x2023920f
000a50  9bc37001  srli r7, r1, 23
000a54  93e00004  setlt.f r1, r1, zero
000a58  9b83f30f  andi r7, r7, 255
000a5c  9bf3f30f  setlti r7, r7, 255
000a60  17936300  or r6, r7, r6
000a64  178a6000  and r20, r1, r6
000a68  d75f0200  jal 4860
000a6c  8f300110  .word 0x1001308f
000a70  1f010c00  addli r2, r24, 0
000a74  e30a6ffe  loadli.w r21,  -208(r30)
000a78  0be20958  neg.f r4, r19
000a7c  9f810a00  addli r3, r21, 0
000a80  0be1a051  fmac.f.rn r2, r1, r26
000a84  8b611150  fmac.f.rn r3, r2, r1
000a88  63415ffe  loadli.w r2,  -212(r30)
000a8c  0be11150  fmac.f.rn r2, r3, r1
000a90  e3416ffe  loadli.w r3,  -204(r30)
000a94  8b611150  fmac.f.rn r3, r2, r1
000a98  0be14920  mul.f.rn r2, r19, r4
000a9c  8be10158  neg.f r3, r3
000aa0  0f010100  exp.f.rn r2, r2
000aa4  8be03020  mul.f.rn r1, r1, r3
000aa8  ab01803f  lui r3, 260096
000aac  8be12050  fmac.f.rn r3, r1, r2
000ab0  37200a00  beq r20, zero, 8
000ab4  8be10158  neg.f r3, r3
000ab8  9780cc01  and r1, r25, r28
000abc  674f3ffc  storeli.w r3, -268(r30)
000ac0  670e1ffc  storeli.w r1, -288(r30)
000ac4  8be06021  mul.f.rn r1, r1, r22
000ac8  8be90060  abs.f r19, r1
000acc  1bb29000  slli r4, r1, 9
000ad0  0be1b921  mul.f.rn r2, r19, r27
000ad4  13030200  seteq r6, r4, zero
000ad8  8f230108  .word 0x0801238f
000adc  6b518ff3  load.d r[3:4], -200(r30)
000ae0  0f922320  .word 0x2023920f
000ae4  9bc37001  srli r7, r1, 23
000ae8  93e00004  setlt.f r1, r1, zero
000aec  9b83f30f  andi r7, r7, 255
000af0  9bf3f30f  setlti r7, r7, 255
000af4  17936300  or r6, r7, r6
000af8  178a6000  and r20, r1, r6
000afc  d75f0200  jal 4860
000b00  8f300110  .word 0x1001308f
000b04  1f010c00  addli r2, r24, 0
000b08  9f810a00  addli r3, r21, 0
000b0c  e34c5ffe  loadli.w r25,  -212(r30)
000b10  0be20958  neg.f r4, r19
000b14  0be1a051  fmac.f.rn r2, r1, r26
000b18  8b611150  fmac.f.rn r3, r2, r1
000b1c  1f810c00  addli r2, r25, 0
000b20  0be11150  fmac.f.rn r2, r3, r1
000b24  e3416ffe  loadli.w r3,  -204(r30)
000b28  8b611150  fmac.f.rn r3, r2, r1
000b2c  0be14920  mul.f.rn r2, r19, r4
000b30  8be10158  neg.f r3, r3
000b34  0f010100  exp.f.rn r2, r2
000b38  8be03020  mul.f.rn r1, r1, r3
000b3c  ab01803f  lui r3, 260096
000b40  8be12050  fmac.f.rn r3, r1, r2
000b44  37200a00  beq r20, zero, 8
000b48  8be10158  neg.f r3, r3
000b4c  9780cb01  and r1, r23, r28
000b50  674e3ffc  storeli.w r3, -284(r30)
000b54  670d1ffc  storeli.w r1, -304(r30)
000b58  8be06021  mul.f.rn r1, r1, r22
000b5c  8be90060  abs.f r19, r1
000b60  1bb29000  slli r4, r1, 9
000b64  0be1b921  mul.f.rn r2, r19, r27
000b68  13030200  seteq r6, r4, zero
000b6c  8f230108  .word 0x0801238f
000b70  6b518ff3  load.d r[3:4], -200(r30)
000b74  0f922320  .word 0x2023920f
000b78  9bc37001  srli r7, r1, 23
000b7c  93e00004  setlt.f r1, r1, zero
000b80  9b83f30f  andi r7, r7, 255
000b84  9bf3f30f  setlti r7, r7, 255
000b88  17936300  or r6, r7, r6
000b8c  178a6000  and r20, r1, r6
000b90  d75f0200  jal 4860
000b94  8f300110  .word 0x1001308f
000b98  1f010c00  addli r2, r24, 0
000b9c  9f810a00  addli r3, r21, 0
000ba0  e34b6ffe  loadli.w r23,  -204(r30)
000ba4  0be20958  neg.f r4, r19
000ba8  0be1a051  fmac.f.rn r2, r1, r26
000bac  8b611150  fmac.f.rn r3, r2, r1
000bb0  1f810c00  addli r2, r25, 0
000bb4  0be11150  fmac.f.rn r2, r3, r1
000bb8  9f810b00  addli r3, r23, 0
000bbc  8b611150  fmac.f.rn r3, r2, r1
000bc0  0be14920  mul.f.rn r2, r19, r4
000bc4  8be10158  neg.f r3, r3
000bc8  0f010100  exp.f.rn r2, r2
000bcc  8be03020  mul.f.rn r1, r1, r3
000bd0  ab01803f  lui r3, 260096
000bd4  8be12050  fmac.f.rn r3, r1, r2
000bd8  37200a00  beq r20, zero, 8
000bdc  8be10158  neg.f r3, r3
000be0  e3409ffd  loadli.w r1,  -308(r30)
000be4  e70d3ffc  storeli.w r3, -296(r30)
000be8  9780c001  and r1, r1, r28
000bec  674c1ffc  storeli.w r1, -316(r30)
000bf0  8be06021  mul.f.rn r1, r1, r22
000bf4  8be90060  abs.f r19, r1
000bf8  1bb29000  slli r4, r1, 9
000bfc  0be1b921  mul.f.rn r2, r19, r27
000c00  13030200  seteq r6, r4, zero
000c04  8f230108  .word 0x0801238f
000c08  6b518ff3  load.d r[3:4], -200(r30)
000c0c  0f922320  .word 0x2023920f
000c10  9bc37001  srli r7, r1, 23
000c14  93e00004  setlt.f r1, r1, zero
000c18  9b83f30f  andi r7, r7, 255
000c1c  9bf3f30f  setlti r7, r7, 255
000c20  17936300  or r6, r7, r6
000c24  178a6000  and r20, r1, r6
000c28  d75f0200  jal 4860
000c2c  8f300110  .word 0x1001308f
000c30  1f010c00  addli r2, r24, 0
000c34  9f810a00  addli r3, r21, 0
000c38  0be20958  neg.f r4, r19
000c3c  0be1a051  fmac.f.rn r2, r1, r26
000c40  8b611150  fmac.f.rn r3, r2, r1
000c44  1f810c00  addli r2, r25, 0
000c48  0be11150  fmac.f.rn r2, r3, r1
000c4c  9f810b00  addli r3, r23, 0
000c50  8b611150  fmac.f.rn r3, r2, r1
000c54  0be14920  mul.f.rn r2, r19, r4
000c58  8be10158  neg.f r3, r3
000c5c  0f010100  exp.f.rn r2, r2
000c60  8be03020  mul.f.rn r1, r1, r3
000c64  ab01803f  lui r3, 260096
000c68  8be12050  fmac.f.rn r3, r1, r2
000c6c  37200a00  beq r20, zero, 8
000c70  8be10158  neg.f r3, r3
000c74  e3008ffd  loadli.w r1,  -320(r30)
000c78  e74c3ffc  storeli.w r3, -308(r30)
000c7c  9780c001  and r1, r1, r28
000c80  e70b1ffc  storeli.w r1, -328(r30)
000c84  8be06021  mul.f.rn r1, r1, r22
000c88  8be90060  abs.f r19, r1
000c8c  1bb29000  slli r4, r1, 9
000c90  0be1b921  mul.f.rn r2, r19, r27
000c94  13030200  seteq r6, r4, zero
000c98  8f230108  .word 0x0801238f
000c9c  6b518ff3  load.d r[3:4], -200(r30)
000ca0  0f922320  .word 0x2023920f
000ca4  9bc37001  srli r7, r1, 23
000ca8  93e00004  setlt.f r1, r1, zero
000cac  9b83f30f  andi r7, r7, 255
000cb0  9bf3f30f  setlti r7, r7, 255
000cb4  17936300  or r6, r7, r6
000cb8  178a6000  and r20, r1, r6
000cbc  d75f0200  jal 4860
000cc0  8f300110  .word 0x1001308f
000cc4  1f010c00  addli r2, r24, 0
000cc8  9f810a00  addli r3, r21, 0
000ccc  0be20958  neg.f r4, r19
000cd0  0be1a051  fmac.f.rn r2, r1, r26
000cd4  8b611150  fmac.f.rn r3, r2, r1
000cd8  1f810c00  addli r2, r25, 0
000cdc  0be11150  fmac.f.rn r2, r3, r1
000ce0  9f810b00  addli r3, r23, 0
000ce4  8b611150  fmac.f.rn r3, r2, r1
000ce8  0be14920  mul.f.rn r2, r19, r4
000cec  8be10158  neg.f r3, r3
000cf0  0f010100  exp.f.rn r2, r2
000cf4  8be03020  mul.f.rn r1, r1, r3
000cf8  ab01803f  lui r3, 260096
000cfc  8be12050  fmac.f.rn r3, r1, r2
000d00  37200a00  beq r20, zero, 8
000d04  8be10158  neg.f r3, r3
000d08  e3406ffd  loadli.w r1,  -332(r30)
000d0c  670c3ffc  storeli.w r3, -320(r30)
000d10  9780c001  and r1, r1, r28
000d14  670b1ffc  storeli.w r1, -336(r30)
000d18  8be06021  mul.f.rn r1, r1, r22
000d1c  8be90060  abs.f r19, r1
000d20  1bb29000  slli r4, r1, 9
000d24  0be1b921  mul.f.rn r2, r19, r27
000d28  13030200  seteq r6, r4, zero
000d2c  8f230108  .word 0x0801238f
000d30  6b518ff3  load.d r[3:4], -200(r30)
000d34  0f922320  .word 0x2023920f
000d38  9bc37001  srli r7, r1, 23
000d3c  93e00004  setlt.f r1, r1, zero
000d40  9b83f30f  andi r7, r7, 255
000d44  9bf3f30f  setlti r7, r7, 255
000d48  17936300  or r6, r7, r6
000d4c  178a6000  and r20, r1, r6
000d50  d75f0200  jal 4860
000d54  8f300110  .word 0x1001308f
000d58  1f010c00  addli r2, r24, 0
000d5c  9f810a00  addli r3, r21, 0
000d60  0be20958  neg.f r4, r19
000d64  0be1a051  fmac.f.rn r2, r1, r26
000d68  8b611150  fmac.f.rn r3, r2, r1
000d6c  1f810c00  addli r2, r25, 0
000d70  0be11150  fmac.f.rn r2, r3, r1
000d74  9f810b00  addli r3, r23, 0
000d78  8b611150  fmac.f.rn r3, r2, r1
000d7c  0be14920  mul.f.rn r2, r19, r4
000d80  8be10158  neg.f r3, r3
000d84  0f010100  exp.f.rn r2, r2
000d88  8be03020  mul.f.rn r1, r1, r3
000d8c  ab01803f  lui r3, 260096
000d90  8be12050  fmac.f.rn r3, r1, r2
000d94  37200a00  beq r20, zero, 8
000d98  8be10158  neg.f r3, r3
000d9c  e3407ffd  loadli.w r1,  -324(r30)
000da0  674b3ffc  storeli.w r3, -332(r30)
000da4  9780c001  and r1, r1, r28
000da8  e74a1ffc  storeli.w r1, -340(r30)
000dac  8be06021  mul.f.rn r1, r1, r22
000db0  8be90060  abs.f r19, r1
000db4  1bb29000  slli r4, r1, 9
000db8  0be1b921  mul.f.rn r2, r19, r27
000dbc  13030200  seteq r6, r4, zero
000dc0  8f230108  .word 0x0801238f
000dc4  6b518ff3  load.d r[3:4], -200(r30)
000dc8  0f922320  .word 0x2023920f
000dcc  9bc37001  srli r7, r1, 23
000dd0  93e00004  setlt.f r1, r1, zero
000dd4  9b83f30f  andi r7, r7, 255
000dd8  9bf3f30f  setlti r7, r7, 255
000ddc  17936300  or r6, r7, r6
000de0  178a6000  and r20, r1, r6
000de4  d75f0200  jal 4860
000de8  8f300110  .word 0x1001308f
000dec  1f010c00  addli r2, r24, 0
000df0  9f810a00  addli r3, r21, 0
000df4  0be20958  neg.f r4, r19
000df8  0be1a051  fmac.f.rn r2, r1, r26
000dfc  8b611150  fmac.f.rn r3, r2, r1
000e00  1f810c00  addli r2, r25, 0
000e04  0be11150  fmac.f.rn r2, r3, r1
000e08  9f810b00  addli r3, r23, 0
000e0c  8b611150  fmac.f.rn r3, r2, r1
000e10  0be14920  mul.f.rn r2, r19, r4
000e14  8be10158  neg.f r3, r3
000e18  0f010100  exp.f.rn r2, r2
000e1c  8be03020  mul.f.rn r1, r1, r3
000e20  ab01803f  lui r3, 260096
000e24  8be12050  fmac.f.rn r3, r1, r2
000e28  37200a00  beq r20, zero, 8
000e2c  8be10158  neg.f r3, r3
000e30  e3009ffd  loadli.w r1,  -312(r30)
000e34  e74b3ffc  storeli.w r3, -324(r30)
000e38  9780c001  and r1, r1, r28
000e3c  e70a1ffc  storeli.w r1, -344(r30)
000e40  8be06021  mul.f.rn r1, r1, r22
000e44  8be90060  abs.f r19, r1
000e48  1bb29000  slli r4, r1, 9
000e4c  0be1b921  mul.f.rn r2, r19, r27
000e50  13030200  seteq r6, r4, zero
000e54  8f230108  .word 0x0801238f
000e58  6b518ff3  load.d r[3:4], -200(r30)
000e5c  0f922320  .word 0x2023920f
000e60  9bc37001  srli r7, r1, 23
000e64  93e00004  setlt.f r1, r1, zero
000e68  9b83f30f  andi r7, r7, 255
000e6c  9bf3f30f  setlti r7, r7, 255
000e70  17936300  or r6, r7, r6
000e74  178a6000  and r20, r1, r6
000e78  d75f0200  jal 4860
000e7c  8f300110  .word 0x1001308f
000e80  1f010c00  addli r2, r24, 0
000e84  9f810a00  addli r3, r21, 0
000e88  0be20958  neg.f r4, r19
000e8c  0be1a051  fmac.f.rn r2, r1, r26
000e90  8b611150  fmac.f.rn r3, r2, r1
000e94  1f810c00  addli r2, r25, 0
000e98  0be11150  fmac.f.rn r2, r3, r1
000e9c  9f810b00  addli r3, r23, 0
000ea0  8b611150  fmac.f.rn r3, r2, r1
000ea4  0be14920  mul.f.rn r2, r19, r4
000ea8  8be10158  neg.f r3, r3
000eac  0f010100  exp.f.rn r2, r2
000eb0  8be03020  mul.f.rn r1, r1, r3
000eb4  ab01803f  lui r3, 260096
000eb8  8be12050  fmac.f.rn r3, r1, r2
000ebc  37200a00  beq r20, zero, 8
000ec0  8be10158  neg.f r3, r3
000ec4  e340affd  loadli.w r1,  -300(r30)
000ec8  e70c3ffc  storeli.w r3, -312(r30)
000ecc  9780c001  and r1, r1, r28
000ed0  674a1ffc  storeli.w r1, -348(r30)
000ed4  8be06021  mul.f.rn r1, r1, r22
000ed8  8be90060  abs.f r19, r1
000edc  1bb29000  slli r4, r1, 9
000ee0  0be1b921  mul.f.rn r2, r19, r27
000ee4  13030200  seteq r6, r4, zero
000ee8  8f230108  .word 0x0801238f
000eec  6b518ff3  load.d r[3:4], -200(r30)
000ef0  0f922320  .word 0x2023920f
000ef4  9bc37001  srli r7, r1, 23
000ef8  93e00004  setlt.f r1, r1, zero
000efc  9b83f30f  andi r7, r7, 255
000f00  9bf3f30f  setlti r7, r7, 255
000f04  17936300  or r6, r7, r6
000f08  178a6000  and r20, r1, r6
000f0c  d75f0200  jal 4860
000f10  8f300110  .word 0x1001308f
000f14  1f010c00  addli r2, r24, 0
000f18  9f810a00  addli r3, r21, 0
000f1c  0be20958  neg.f r4, r19
000f20  0be1a051  fmac.f.rn r2, r1, r26
000f24  8b611150  fmac.f.rn r3, r2, r1
000f28  1f810c00  addli r2, r25, 0
000f2c  0be11150  fmac.f.rn r2, r3, r1
000f30  9f810b00  addli r3, r23, 0
000f34  8b611150  fmac.f.rn r3, r2, r1
000f38  0be14920  mul.f.rn r2, r19, r4
000f3c  8be10158  neg.f r3, r3
000f40  0f010100  exp.f.rn r2, r2
000f44  8be03020  mul.f.rn r1, r1, r3
000f48  ab01803f  lui r3, 260096
000f4c  8be12050  fmac.f.rn r3, r1, r2
000f50  37200a00  beq r20, zero, 8
000f54  8be10158  neg.f r3, r3
000f58  e340bffd  loadli.w r1,  -292(r30)
000f5c  674d3ffc  storeli.w r3, -300(r30)
000f60  9780c001  and r1, r1, r28
000f64  670a1ffc  storeli.w r1, -352(r30)
000f68  8be06021  mul.f.rn r1, r1, r22
000f6c  8be90060  abs.f r19, r1
000f70  1bb29000  slli r4, r1, 9
000f74  0be1b921  mul.f.rn r2, r19, r27
000f78  13030200  seteq r6, r4, zero
000f7c  8f230108  .word 0x0801238f
000f80  6b518ff3  load.d r[3:4], -200(r30)
000f84  0f922320  .word 0x2023920f
000f88  9bc37001  srli r7, r1, 23
000f8c  93e00004  setlt.f r1, r1, zero
000f90  9b83f30f  andi r7, r7, 255
000f94  9bf3f30f  setlti r7, r7, 255
000f98  17936300  or r6, r7, r6
000f9c  178a6000  and r20, r1, r6
000fa0  d75f0200  jal 4860
000fa4  8f300110  .word 0x1001308f
000fa8  1f010c00  addli r2, r24, 0
000fac  9f810a00  addli r3, r21, 0
000fb0  0be20958  neg.f r4, r19
000fb4  0be1a051  fmac.f.rn r2, r1, r26
000fb8  8b611150  fmac.f.rn r3, r2, r1
000fbc  1f810c00  addli r2, r25, 0
000fc0  0be11150  fmac.f.rn r2, r3, r1
000fc4  9f810b00  addli r3, r23, 0
000fc8  8b611150  fmac.f.rn r3, r2, r1
000fcc  0be14920  mul.f.rn r2, r19, r4
000fd0  8be10158  neg.f r3, r3
000fd4  0f010100  exp.f.rn r2, r2
000fd8  8be03020  mul.f.rn r1, r1, r3
000fdc  ab01803f  lui r3, 260096
000fe0  8be12050  fmac.f.rn r3, r1, r2
000fe4  37200a00  beq r20, zero, 8
000fe8  8be10158  neg.f r3, r3
000fec  e300dffd  loadli.w r1,  -280(r30)
000ff0  e74d3ffc  storeli.w r3, -292(r30)
000ff4  9780c001  and r1, r1, r28
000ff8  e70e1ffc  storeli.w r1, -280(r30)
000ffc  8be06021  mul.f.rn r1, r1, r22
001000  8be90060  abs.f r19, r1
001004  1bb29000  slli r4, r1, 9
001008  0be1b921  mul.f.rn r2, r19, r27
00100c  13030200  seteq r6, r4, zero
001010  8f230108  .word 0x0801238f
001014  6b518ff3  load.d r[3:4], -200(r30)
001018  0f922320  .word 0x2023920f
00101c  9bc37001  srli r7, r1, 23
001020  93e00004  setlt.f r1, r1, zero
001024  9b83f30f  andi r7, r7, 255
001028  9bf3f30f  setlti r7, r7, 255
00102c  17936300  or r6, r7, r6
001030  178a6000  and r20, r1, r6
001034  d75f0200  jal 4860
001038  8f300110  .word 0x1001308f
00103c  1f010c00  addli r2, r24, 0
001040  9f810a00  addli r3, r21, 0
001044  0be20958  neg.f r4, r19
001048  0be1a051  fmac.f.rn r2, r1, r26
00104c  2b0d803f  lui r26, 260096
001050  8b611150  fmac.f.rn r3, r2, r1
001054  1f810c00  addli r2, r25, 0
001058  0be11150  fmac.f.rn r2, r3, r1
00105c  9f810b00  addli r3, r23, 0
001060  8b611150  fmac.f.rn r3, r2, r1
001064  0be14920  mul.f.rn r2, r19, r4
001068  8be10158  neg.f r3, r3
00106c  0f010100  exp.f.rn r2, r2
001070  8be03020  mul.f.rn r1, r1, r3
001074  0bed2050  fmac.f.rn r26, r1, r2
001078  37200a00  beq r20, zero, 8
00107c  0b6d0d58  neg.f r26, r26
001080  e300effd  loadli.w r1,  -272(r30)
001084  9780c001  and r1, r1, r28
001088  670f1ffc  storeli.w r1, -272(r30)
00108c  8be06021  mul.f.rn r1, r1, r22
001090  8be90060  abs.f r19, r1
001094  1bb29000  slli r4, r1, 9
001098  0be1b921  mul.f.rn r2, r19, r27
00109c  13030200  seteq r6, r4, zero
0010a0  8f230108  .word 0x0801238f
0010a4  6b518ff3  load.d r[3:4], -200(r30)
0010a8  0f922320  .word 0x2023920f
0010ac  9bc37001  srli r7, r1, 23
0010b0  93e00004  setlt.f r1, r1, zero
0010b4  9b83f30f  andi r7, r7, 255
0010b8  9bf3f30f  setlti r7, r7, 255
0010bc  17936300  or r6, r7, r6
0010c0  178a6000  and r20, r1, r6
0010c4  d75f0200  jal 4860
0010c8  8f300110  .word 0x1001308f
0010cc  e3015ffe  loadli.w r3,  -216(r30)
0010d0  1f010c00  addli r2, r24, 0
0010d4  0be20958  neg.f r4, r19
0010d8  0be13050  fmac.f.rn r2, r1, r3
0010dc  9f810a00  addli r3, r21, 0
0010e0  ab0a803f  lui r21, 260096
0010e4  8b611150  fmac.f.rn r3, r2, r1
0010e8  1f810c00  addli r2, r25, 0
0010ec  0be11150  fmac.f.rn r2, r3, r1
0010f0  9f810b00  addli r3, r23, 0
0010f4  8b611150  fmac.f.rn r3, r2, r1
0010f8  0be14920  mul.f.rn r2, r19, r4
0010fc  8be10158  neg.f r3, r3
001100  0f010100  exp.f.rn r2, r2
001104  8be03020  mul.f.rn r1, r1, r3
001108  8bea2050  fmac.f.rn r21, r1, r2
00110c  37200a00  beq r20, zero, 8
001110  8bea0a58  neg.f r21, r21
001114  e340fffd  loadli.w r1,  -260(r30)
001118  63414ffe  loadli.w r2,  -220(r30)
00111c  978dc001  and r27, r1, r28
001120  8be06d21  mul.f.rn r1, r27, r22
001124  8be90060  abs.f r19, r1
001128  1bb29000  slli r4, r1, 9
00112c  0be12920  mul.f.rn r2, r19, r2
001130  13030200  seteq r6, r4, zero
001134  8f230108  .word 0x0801238f
001138  6b518ff3  load.d r[3:4], -200(r30)
00113c  0f922320  .word 0x2023920f
001140  9bc37001  srli r7, r1, 23
001144  93e00004  setlt.f r1, r1, zero
001148  9b83f30f  andi r7, r7, 255
00114c  9bf3f30f  setlti r7, r7, 255
001150  17936300  or r6, r7, r6
001154  178b6000  and r22, r1, r6
001158  d75f0200  jal 4860
00115c  8f300110  .word 0x1001308f
001160  e3015ffe  loadli.w r3,  -216(r30)
001164  1f010c00  addli r2, r24, 0
001168  0be20958  neg.f r4, r19
00116c  2b0a803f  lui r20, 260096
001170  0be13050  fmac.f.rn r2, r1, r3
001174  e3016ffe  loadli.w r3,  -208(r30)
001178  8b611150  fmac.f.rn r3, r2, r1
00117c  1f810c00  addli r2, r25, 0
001180  0be11150  fmac.f.rn r2, r3, r1
001184  9f810b00  addli r3, r23, 0
001188  8b611150  fmac.f.rn r3, r2, r1
00118c  0be14920  mul.f.rn r2, r19, r4
001190  8be10158  neg.f r3, r3
001194  0f010100  exp.f.rn r2, r2
001198  8be03020  mul.f.rn r1, r1, r3
00119c  0bea2050  fmac.f.rn r20, r1, r2
0011a0  37200b00  beq r22, zero, 8
0011a4  0b6a0a58  neg.f r20, r20
0011a8  e3400ffe  loadli.w r1,  -252(r30)
0011ac  63413ffe  loadli.w r2,  -228(r30)
0011b0  ab03003f  lui r7, 258048
0011b4  e3414ffe  loadli.w r3,  -220(r30)
0011b8  9780c001  and r1, r1, r28
0011bc  0be42020  mul.f.rn r8, r1, r2
0011c0  63011ffe  loadli.w r2,  -248(r30)
0011c4  0bee7020  mul.f.rn r28, r1, r7
0011c8  0b617120  mul.f.rn r2, r2, r7
0011cc  0b6c0460  abs.f r24, r8
0011d0  9b329400  slli r5, r8, 9
0011d4  8b613c20  mul.f.rn r3, r24, r3
0011d8  13830200  seteq r6, r5, zero
0011dc  e7492ffc  storeli.w r2, -356(r30)
0011e0  6301fffd  loadli.w r2,  -264(r30)
0011e4  0b617120  mul.f.rn r2, r2, r7
0011e8  8fa40108  .word 0x0801a48f
0011ec  e7092ffc  storeli.w r2, -360(r30)
0011f0  6341dffd  loadli.w r2,  -276(r30)
0011f4  0b617120  mul.f.rn r2, r2, r7
0011f8  67492ffc  storeli.w r2, -364(r30)
0011fc  6301cffd  loadli.w r2,  -288(r30)
001200  0b617120  mul.f.rn r2, r2, r7
001204  67402ffe  storeli.w r2, -252(r30)
001208  6301affd  loadli.w r2,  -304(r30)
00120c  0b617120  mul.f.rn r2, r2, r7
001210  e7002ffe  storeli.w r2, -248(r30)
001214  63418ffd  loadli.w r2,  -316(r30)
001218  0b617120  mul.f.rn r2, r2, r7
00121c  670e2ffc  storeli.w r2, -288(r30)
001220  63017ffd  loadli.w r2,  -328(r30)
001224  8b697120  mul.f.rn r19, r2, r7
001228  63016ffd  loadli.w r2,  -336(r30)
00122c  0b6b7120  mul.f.rn r22, r2, r7
001230  63415ffd  loadli.w r2,  -340(r30)
001234  8b6b7120  mul.f.rn r23, r2, r7
001238  63015ffd  loadli.w r2,  -344(r30)
00123c  8b6c7120  mul.f.rn r25, r2, r7
001240  63414ffd  loadli.w r2,  -348(r30)
001244  0b617120  mul.f.rn r2, r2, r7
001248  e74f2ffc  storeli.w r2, -260(r30)
00124c  63014ffd  loadli.w r2,  -352(r30)
001250  0b617120  mul.f.rn r2, r2, r7
001254  e70f2ffc  storeli.w r2, -264(r30)
001258  6301dffd  loadli.w r2,  -280(r30)
00125c  0b617120  mul.f.rn r2, r2, r7
001260  e74e2ffc  storeli.w r2, -276(r30)
001264  6301effd  loadli.w r2,  -272(r30)
001268  0b617120  mul.f.rn r2, r2, r7
00126c  670f2ffc  storeli.w r2, -272(r30)
001270  0be17d20  mul.f.rn r2, r27, r7
001274  e70e2ffc  storeli.w r2, -280(r30)
001278  6b518ff3  load.d r[3:4], -200(r30)
00127c  0f922420  .word 0x2024920f
001280  9b447401  srli r9, r8, 23
001284  13640404  setlt.f r8, r8, zero
001288  9b84f40f  andi r9, r9, 255
00128c  9bf0f40f  setlti r1, r9, 255
001290  97906000  or r1, r1, r6
001294  970d1400  and r27, r8, r1
001298  d75f0200  jal 4860
00129c  8f300110  .word 0x1001308f
0012a0  63014ffe  loadli.w r2,  -224(r30)
0012a4  e3015ffe  loadli.w r3,  -216(r30)
0012a8  0b620c58  neg.f r4, r24
0012ac  0be13050  fmac.f.rn r2, r1, r3
0012b0  e3016ffe  loadli.w r3,  -208(r30)
0012b4  8b611150  fmac.f.rn r3, r2, r1
0012b8  63415ffe  loadli.w r2,  -212(r30)
0012bc  0be11150  fmac.f.rn r2, r3, r1
0012c0  e3416ffe  loadli.w r3,  -204(r30)
0012c4  8b611150  fmac.f.rn r3, r2, r1
0012c8  0b614c20  mul.f.rn r2, r24, r4
0012cc  8be10158  neg.f r3, r3
0012d0  0f010100  exp.f.rn r2, r2
0012d4  8be13020  mul.f.rn r3, r1, r3
0012d8  ab00803f  lui r1, 260096
0012dc  8be02150  fmac.f.rn r1, r3, r2
0012e0  37bb0df6  beq r27, zero, -4404
0012e4  8be00058  neg.f r1, r1
0012e8  dbd8fdff  j -4412
0012ec  9f0e0ffc  addli sp, r30, -512
0012f0  9f8e0e04  addli sp, sp, 512
0012f4  00a00300  mfence { lm, sm, gm }
0012f8  00100000  exit
0012fc  9f8e7eff  addli sp, sp, -72
001300  9f406000  addli r1, zero, 52
001304  2bf50f00  lui r10, 255
001308  abf7ffff  lui r15, 1048575
00130c  ab040080  lui r9, 524288
001310  17232202  xor.d r[7:8], r[5:6], r[3:4]
001314  e7c1ee01  storeli.w r30, 28(sp)
001318  67c43e01  storeli.w r19, 68(sp)
00131c  67844e01  storeli.w r20, 64(sp)
001320  e7c35e01  storeli.w r21, 60(sp)
001324  e7836e01  storeli.w r22, 56(sp)
001328  67c37e01  storeli.w r23, 52(sp)
00132c  67838e01  storeli.w r24, 48(sp)
001330  e7c29e01  storeli.w r25, 44(sp)
001334  e782ae01  storeli.w r26, 40(sp)
001338  67c2be01  storeli.w r27, 36(sp)
00133c  6782ce01  storeli.w r28, 32(sp)
001340  e781fe01  storeli.w r31, 24(sp)
001344  1f8f9e00  addli r30, sp, 72
001348  1f040000  addli r8, zero, 0
00134c  97451102  srl.d r[12:13], r[3:4], r1
001350  17481202  srl.d r[17:18], r[5:6], r1
001354  1b17f5ff  ori r14, r10, 4095
001358  9b96f7ff  ori r13, r15, 4095
00135c  17038302  and.d r[7:8], r[7:8], r[9:10]
001360  9b80f57f  andi r1, r11, 2047
001364  1b05f87f  andi r10, r16, 2047
001368  9b982780  ori r17, r15, 2050
00136c  1704d102  and.d r[9:10], r[3:4], r[14:15]
001370  9705d202  and.d r[12:13], r[5:6], r[14:15]
001374  1f9800f0  addli r16, r1, -2047
001378  13081805  setlt.u r16, r16, r17
00137c  3b700800  bneq r16, zero, 28
001380  1f1805f0  addli r16, r10, -2047
001384  9b971780  ori r15, r15, 2049
001388  93870705  setlt.u r15, r15, r16
00138c  37b00700  beq r15, zero, 12
001390  1f020000  addli r4, zero, 0
001394  5b0b0000  j 88
001398  abf7ff7f  lui r15, 524287
00139c  2b09f07f  lui r18, 524032
0013a0  9f180000  addli r17, zero, 1
0013a4  1b97f7ff  ori r14, r15, 4095
0013a8  9707d102  and.d r[16:17], r[3:4], r[14:15]
0013ac  93a91705  setlt.ul r19, r[16:17], r[18:19]
0013b0  3be00900  bneq r19, zero, 24
0013b4  ab020800  lui r5, 128
0013b8  9f060000  addli r13, zero, 0
0013bc  1f020000  addli r4, zero, 0
0013c0  17114102  or.d r[3:4], r[3:4], r[5:6]
0013c4  5b040000  j 32
0013c8  1701d202  and.d r[3:4], r[5:6], r[14:15]
0013cc  93261105  setlt.ul r13, r[3:4], r[18:19]
0013d0  3bf80600  bneq r13, zero, 540
0013d4  ab010800  lui r3, 128
0013d8  9f060000  addli r13, zero, 0
0013dc  1f010000  addli r2, zero, 0
0013e0  17112202  or.d r[3:4], r[5:6], r[3:4]
0013e4  1f020000  addli r4, zero, 0
0013e8  b7c90600  beq r13, zero, 624
0013ec  ab011000  lui r3, 256
0013f0  9f371000  addli r15, zero, 11
0013f4  abf9ffff  lui r19, 1048575
0013f8  2bf90475  lui r18, 479311
0013fc  9f582000  addli r17, zero, 21
001400  73346ffc  store.d r[7:8], -56(r30)
001404  9f723000  addli r5, zero, 31
001408  73308ffc  store.d r[9:10], -64(r30)
00140c  8b90a018  sub.s r1, r1, r10
001410  1f010000  addli r2, zero, 0
001414  97b7f502  sll.d r[16:17], r[12:13], r15
001418  9b1a3933  ori r21, r18, 819
00141c  8b101210  add.s r1, r4, r1
001420  97162402  or.d r[14:15], r[9:10], r[3:4]
001424  17912502  or.d r[3:4], r[12:13], r[3:4]
001428  9b950980  ori r11, r19, 2048
00142c  733cdffa  store.d r[14:15], -72(r30)
001430  338c0528  zext_int2long r[25:26], r11
001434  174b1103  srl.d r[23:24], r[3:4], r17
001438  9b95f9ff  ori r11, r19, 4095
00143c  9b99e9ff  ori r19, r19, 4094
001440  b3880528  zext_int2long r[18:19], r11
001444  8b9a6a19  sub.s r21, r21, r22
001448  97878703  and.d r[16:17], r[16:17], r[25:26]
00144c  b3890928  zext_int2long r[20:21], r19
001450  170d1b03  and.d r[27:28], r[23:24], r[18:19]
001454  b38a0a28  zext_int2long r[22:23], r21
001458  0b335d21  mul.sl r[7:8], r[27:28], r[22:23]
00145c  0b930358  neg.s r6, r7
001460  33030328  zext_int2long r[7:8], r6
001464  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
001468  17435302  srl.d r[7:8], r[7:8], r5
00146c  17031303  and.d r[7:8], r[7:8], r[18:19]
001470  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
001474  8b1a0b58  neg.s r21, r22
001478  b38a0a28  zext_int2long r[22:23], r21
00147c  0b335321  mul.sl r[7:8], r[7:8], r[22:23]
001480  17435302  srl.d r[7:8], r[7:8], r5
001484  17031303  and.d r[7:8], r[7:8], r[18:19]
001488  8b3aa321  mul.sl r[22:23], r[7:8], r[27:28]
00148c  8b1a0b58  neg.s r21, r22
001490  1f0b4000  addli r22, zero, 32
001494  33840a28  zext_int2long r[9:10], r21
001498  9f1a0000  addli r21, zero, 1
00149c  0b338320  mul.sl r[7:8], r[7:8], r[9:10]
0014a0  33840a28  zext_int2long r[9:10], r21
0014a4  17435302  srl.d r[7:8], r[7:8], r5
0014a8  1f73f3ff  addli r6, r6, -1
0014ac  33030328  zext_int2long r[7:8], r6
0014b0  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0014b4  8b3b6d20  mul.sl r[24:25], r[27:28], r[7:8]
0014b8  97c76703  srl.d r[16:17], r[16:17], r22
0014bc  8ba7fb10  add.ul r[16:17], r[24:25], r[16:17]
0014c0  0b34f418  sub.sl r[9:10], r[9:10], r[16:17]
0014c4  97071403  and.d r[16:17], r[9:10], r[18:19]
0014c8  17446403  srl.d r[9:10], r[9:10], r22
0014cc  8bb76720  mul.sl r[16:17], r[16:17], r[7:8]
0014d0  97cb5702  srl.d r[24:25], r[16:17], r5
0014d4  8b328320  mul.sl r[6:7], r[7:8], r[9:10]
0014d8  97b75603  sll.d r[16:17], r[14:15], r21
0014dc  abf41f00  lui r9, 511
0014e0  97b25203  sll.d r[6:7], r[6:7], r21
0014e4  97cc6703  srl.d r[26:27], r[16:17], r22
0014e8  978d3703  and.d r[28:29], r[16:17], r[20:21]
0014ec  1b96f4ff  ori r12, r9, 4095
0014f0  8ba27211  add.ul r[6:7], r[6:7], r[24:25]
0014f4  a7f232fe  addli.d r[6:7], r[6:7], 32543
0014f8  97831203  and.d r[8:9], r[6:7], r[18:19]
0014fc  97c26203  srl.d r[6:7], r[6:7], r22
001500  8bbbb321  mul.sl r[24:25], r[8:9], r[28:29]
001504  8bb39321  mul.sl r[8:9], r[8:9], r[26:27]
001508  8bbdb221  mul.sl r[28:29], r[6:7], r[28:29]
00150c  8bb29221  mul.sl r[6:7], r[6:7], r[26:27]
001510  97881303  and.d r[18:19], r[8:9], r[18:19]
001514  97cb6b03  srl.d r[24:25], r[24:25], r22
001518  97cc6d03  srl.d r[26:27], r[28:29], r22
00151c  97893d03  and.d r[20:21], r[28:29], r[20:21]
001520  97c36303  srl.d r[8:9], r[8:9], r22
001524  8ba81b11  add.ul r[18:19], r[24:25], r[18:19]
001528  0ba25c10  add.ul r[5:6], r[26:27], r[6:7]
00152c  8ba83811  add.ul r[18:19], r[18:19], r[20:21]
001530  0b227210  add.ul r[5:6], r[5:6], r[8:9]
001534  17c36803  srl.d r[7:8], r[18:19], r22
001538  0b226210  add.ul r[5:6], r[5:6], r[7:8]
00153c  13a34504  setlt.ul r6, r[12:13], r[5:6]
001540  3b710300  bneq r6, zero, 92
001544  1f536000  addli r6, zero, 53
001548  eb540ffc  load.d r[10:11], -64(r30)
00154c  8b332220  mul.sl r[8:9], r[5:6], r[3:4]
001550  9fe0f007  addli r1, r1, 1022
001554  97b46402  sll.d r[10:11], r[10:11], r6
001558  0bb47418  sub.sl r[9:10], r[10:11], r[8:9]
00155c  1f73f00f  addli r6, zero, 2047
001560  3fa06000  blt.s r1, r6, 8
001564  5b0c0000  j 96
001568  1f150000  addli r10, zero, 1
00156c  bfb1a000  blt.s r1, r10, 108
001570  2bf30f00  lui r6, 255
001574  abf3ffff  lui r7, 1048575
001578  b3850028  zext_int2long r[12:13], r1
00157c  9f406000  addli r1, zero, 52
001580  1734a402  sll.d r[9:10], r[9:10], r10
001584  1b17f3ff  ori r14, r6, 4095
001588  97b51502  sll.d r[12:13], r[12:13], r1
00158c  9b96f3ff  ori r13, r7, 4095
001590  1702d202  and.d r[5:6], r[5:6], r[14:15]
001594  17924502  or.d r[5:6], r[12:13], r[5:6]
001598  db140000  j 164
00159c  17425203  srl.d r[5:6], r[5:6], r21
0015a0  1f436000  addli r6, zero, 52
0015a4  eb530ffc  load.d r[8:9], -64(r30)
0015a8  9ff0f007  addli r1, r1, 1023
0015ac  eb578ffb  load.d r[16:17], -72(r30)
0015b0  17b36302  sll.d r[7:8], r[8:9], r6
0015b4  0b342220  mul.sl r[9:10], r[5:6], r[3:4]
0015b8  0b348318  sub.sl r[9:10], r[7:8], r[9:10]
0015bc  1f73f00f  addli r6, zero, 2047
0015c0  bfae60fe  blt.s r1, r6, -88
0015c4  2b01f07f  lui r2, 524032
0015c8  eb518ffc  load.d r[4:5], -56(r30)
0015cc  9f000000  addli r1, zero, 0
0015d0  17911102  or.d r[3:4], r[4:5], r[2:3]
0015d4  db100000  j 132
0015d8  2bf3ffff  lui r6, 1048575
0015dc  1b13b3fc  ori r6, r6, 4043
0015e0  bf701300  blt.s r6, r1, 60
0015e4  6b518ffc  load.d r[3:4], -56(r30)
0015e8  5b0e0000  j 112
0015ec  ab02f07f  lui r5, 524032
0015f0  1f020000  addli r4, zero, 0
0015f4  93a64702  setneq.d r13, r[16:17], r[5:6]
0015f8  3be20600  bneq r13, zero, 152
0015fc  1f020000  addli r4, zero, 0
001600  13214100  seteq.d r2, r[3:4], r[5:6]
001604  b7060100  beq r2, zero, 416
001608  ab01f87f  lui r3, 524160
00160c  9f060000  addli r13, zero, 0
001610  1f020000  addli r4, zero, 0
001614  1f010000  addli r2, zero, 0
001618  5bbaffff  j -560
00161c  9f130000  addli r7, zero, 1
001620  1fc36000  addli r6, r1, 52
001624  8b901318  sub.s r1, r7, r1
001628  17b46702  sll.d r[9:10], r[16:17], r6
00162c  17421202  srl.d r[5:6], r[5:6], r1
001630  0b354120  mul.sl r[11:12], r[3:4], r[5:6]
001634  17337502  sll.d r[7:8], r[11:12], r7
001638  0b346418  sub.sl r[9:10], r[9:10], r[7:8]
00163c  23031200  andi.d r[7:8], r[5:6], 1
001640  0b238310  add.ul r[7:8], r[7:8], r[9:10]
001644  93206104  setlt.ul r1, r[3:4], r[7:8]
001648  b3800028  zext_int2long r[2:3], r1
00164c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
001650  eb518ffc  load.d r[4:5], -56(r30)
001654  17913002  or.d r[3:4], r[2:3], r[4:5]
001658  e38f3e00  loadli.w r31,  24(sp)
00165c  63cf3e00  loadli.w r30,  28(sp)
001660  638e4e00  loadli.w r28,  32(sp)
001664  e3cd4e00  loadli.w r27,  36(sp)
001668  638d5e00  loadli.w r26,  40(sp)
00166c  e3cc5e00  loadli.w r25,  44(sp)
001670  638c6e00  loadli.w r24,  48(sp)
001674  e3cb6e00  loadli.w r23,  52(sp)
001678  638b7e00  loadli.w r22,  56(sp)
00167c  e3ca7e00  loadli.w r21,  60(sp)
001680  638a8e00  loadli.w r20,  64(sp)
001684  e3c98e00  loadli.w r19,  68(sp)
001688  9f8e9e00  addli sp, sp, 72
00168c  5f800f00  jr r31, 0
001690  1f020000  addli r4, zero, 0
001694  13224102  setneq.d r4, r[3:4], r[5:6]
001698  3b500200  bneq r4, zero, 20
00169c  9f060000  addli r13, zero, 0
0016a0  1f020000  addli r4, zero, 0
0016a4  27010300  addli.d r[3:4], r[7:8], 0
0016a8  5ba8ffff  j -704
0016ac  33020028  zext_int2long r[5:6], zero
0016b0  13a24702  setneq.d r4, r[16:17], r[5:6]
0016b4  37240200  beq r4, zero, 264
0016b8  33020028  zext_int2long r[5:6], zero
0016bc  13224102  setneq.d r4, r[3:4], r[5:6]
0016c0  b7130200  beq r4, zero, 228
0016c4  2bf20f00  lui r4, 255
0016c8  abf2ffff  lui r5, 1048575
0016cc  1b17f2ff  ori r14, r4, 4095
0016d0  9b96f2ff  ori r13, r5, 4095
0016d4  13a2f604  setlt.ul r4, r[14:15], r[16:17]
0016d8  bb630200  bneq r4, zero, 248
0016dc  9f120000  addli r5, zero, 1
0016e0  9f270000  addli r15, zero, 2
0016e4  1f420000  addli r4, zero, 4
0016e8  1f081000  addli r16, zero, 8
0016ec  97485402  srl.d r[18:19], r[9:10], r5
0016f0  97181403  or.d r[18:19], r[9:10], r[18:19]
0016f4  97c9f802  srl.d r[20:21], r[18:19], r15
0016f8  97983803  or.d r[18:19], r[18:19], r[20:21]
0016fc  97c94802  srl.d r[20:21], r[18:19], r4
001700  97983803  or.d r[18:19], r[18:19], r[20:21]
001704  9f092000  addli r19, zero, 16
001708  17ca0803  srl.d r[21:22], r[18:19], r16
00170c  17984803  or.d r[17:18], r[18:19], r[21:22]
001710  1f094000  addli r18, zero, 32
001714  97493803  srl.d r[20:21], r[17:18], r19
001718  17183803  or.d r[17:18], r[17:18], r[20:21]
00171c  2b5a5555  lui r20, 349525
001720  17492803  srl.d r[19:20], r[17:18], r18
001724  17182803  or.d r[17:18], r[17:18], r[19:20]
001728  33990628  sext_int2long r[19:20], r13
00172c  17282803  xor.d r[17:18], r[17:18], r[19:20]
001730  1b195a55  ori r18, r20, 1365
001734  174a5802  srl.d r[21:22], r[17:18], r5
001738  9f090900  addli r19, r18, 0
00173c  ab323333  lui r5, 209715
001740  17092a03  and.d r[19:20], r[21:22], r[19:20]
001744  1b9a3233  ori r20, r5, 819
001748  ab020f0f  lui r5, 61680
00174c  0b382819  sub.sl r[17:18], r[17:18], r[19:20]
001750  9f0a0a00  addli r21, r20, 0
001754  1749f802  srl.d r[19:20], r[17:18], r15
001758  97074803  and.d r[16:17], r[17:18], r[21:22]
00175c  97084903  and.d r[18:19], r[19:20], r[21:22]
001760  ab090101  lui r19, 4112
001764  1f0a7000  addli r20, zero, 56
001768  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
00176c  97c84702  srl.d r[18:19], r[16:17], r4
001770  1b92f2f0  ori r4, r5, 3855
001774  8ba71711  add.ul r[16:17], r[16:17], r[18:19]
001778  9f020200  addli r5, r4, 0
00177c  9f481000  addli r17, zero, 12
001780  17824702  and.d r[5:6], r[16:17], r[5:6]
001784  9b971910  ori r15, r19, 257
001788  1f880700  addli r16, r15, 0
00178c  0b32f220  mul.sl r[5:6], r[5:6], r[16:17]
001790  17424203  srl.d r[5:6], r[5:6], r20
001794  9f57e2ff  addli r15, r4, -11
001798  0b924818  sub.s r4, r17, r4
00179c  1734f402  sll.d r[9:10], r[9:10], r15
0017a0  db060000  j 52
0017a4  ab01f07f  lui r3, 524032
0017a8  9f060000  addli r13, zero, 0
0017ac  1f020000  addli r4, zero, 0
0017b0  1f010000  addli r2, zero, 0
0017b4  17112302  or.d r[3:4], r[7:8], r[3:4]
0017b8  5b86ffff  j -976
0017bc  33020028  zext_int2long r[5:6], zero
0017c0  13214100  seteq.d r2, r[3:4], r[5:6]
0017c4  bb430100  bneq r2, zero, 240
0017c8  27010300  addli.d r[3:4], r[7:8], 0
0017cc  5b1e0000  j 240
0017d0  1f020000  addli r4, zero, 0
0017d4  13a12604  setlt.ul r2, r[14:15], r[3:4]
0017d8  3b530100  bneq r2, zero, 212
0017dc  9f160000  addli r13, zero, 1
0017e0  9f210000  addli r3, zero, 2
0017e4  1f410000  addli r2, zero, 4
0017e8  9f021000  addli r5, zero, 8
0017ec  1f072000  addli r14, zero, 16
0017f0  97c7d502  srl.d r[16:17], r[12:13], r13
0017f4  9797f502  or.d r[16:17], r[12:13], r[16:17]
0017f8  97c83702  srl.d r[18:19], r[16:17], r3
0017fc  97971703  or.d r[16:17], r[16:17], r[18:19]
001800  97c82702  srl.d r[18:19], r[16:17], r2
001804  97971703  or.d r[16:17], r[16:17], r[18:19]
001808  97c85702  srl.d r[18:19], r[16:17], r5
00180c  9f024000  addli r5, zero, 32
001810  97971703  or.d r[16:17], r[16:17], r[18:19]
001814  97c8e702  srl.d r[18:19], r[16:17], r14
001818  2bf7ffff  lui r14, 1048575
00181c  97971703  or.d r[16:17], r[16:17], r[18:19]
001820  1b17f7ff  ori r14, r14, 4095
001824  97c85702  srl.d r[18:19], r[16:17], r5
001828  ab525555  lui r5, 349525
00182c  97971703  or.d r[16:17], r[16:17], r[18:19]
001830  b3180728  sext_int2long r[18:19], r14
001834  9b995255  ori r19, r5, 1365
001838  ab323333  lui r5, 209715
00183c  17a71703  xor.d r[15:16], r[16:17], r[18:19]
001840  1f8a0900  addli r20, r19, 0
001844  1748d702  srl.d r[17:18], r[15:16], r13
001848  17083803  and.d r[17:18], r[17:18], r[20:21]
00184c  1b993233  ori r18, r5, 819
001850  ab020101  lui r5, 4112
001854  0b370719  sub.sl r[15:16], r[15:16], r[17:18]
001858  9f090900  addli r19, r18, 0
00185c  17483702  srl.d r[17:18], r[15:16], r3
001860  17072703  and.d r[15:16], r[15:16], r[19:20]
001864  ab010f0f  lui r3, 61680
001868  17082803  and.d r[17:18], r[17:18], r[19:20]
00186c  1b99f1f0  ori r18, r3, 3855
001870  0b270711  add.ul r[15:16], r[15:16], r[17:18]
001874  9f090900  addli r19, r18, 0
001878  17412702  srl.d r[3:4], r[15:16], r2
00187c  0b212710  add.ul r[3:4], r[15:16], r[3:4]
001880  1b971210  ori r14, r5, 257
001884  9f027000  addli r5, zero, 56
001888  17012103  and.d r[3:4], r[3:4], r[19:20]
00188c  9f070700  addli r15, r14, 0
001890  0b31e120  mul.sl r[3:4], r[3:4], r[15:16]
001894  17415102  srl.d r[3:4], r[3:4], r5
001898  9f52e1ff  addli r5, r2, -11
00189c  0b114110  add.s r2, r2, r4
0018a0  97b55502  sll.d r[12:13], r[12:13], r5
0018a4  1f42e1ff  addli r4, r2, -12
0018a8  5b010000  j 8
0018ac  9f160000  addli r13, zero, 1
0018b0  5b67ffff  j -1224
0018b4  ab01f87f  lui r3, 524160
0018b8  1f010000  addli r2, zero, 0
0018bc  9f060000  addli r13, zero, 0
0018c0  db64ffff  j -1244
0018c4  00100000  exit
0018c8  00100000  exit
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
