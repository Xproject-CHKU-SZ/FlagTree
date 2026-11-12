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
000028  0b864138  mod.u r12, r3, r4
00002c  9f450000  addli r11, zero, 4
000030  8b86b030  div.u r13, r1, r11
000034  1f160600  addli r12, r12, 1
000038  8b00d620  mul.u r1, r12, r13
00003c  8b805010  add.u r1, r1, r5
000040  9f8e0000  addli sp, r1, 0
000044  1bba6700  slli r20, r15, 6
000048  978e4e01  and sp, sp, r20
00004c  cb003200  ble.s r4, r3, 32
000050  80520202  load_param_i r5, 4
000054  00d20102  load_param_i r4, 3
000058  ab0900f0  lui r19, 983040
00005c  9f097003  addli r19, zero, 440
000060  1f8a8efc  addli r20, sp, -448
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7110000  jal 140
000088  00400000  trap
00008c  9f8eaee9  addli sp, sp, -2864
000090  1f8fee12  addli r30, sp, 2416
000094  b3013028  zext_int2long r[3:4], zero
000098  eb500f04  load.d r[2:3], 64(r30)
00009c  93a13000  seteq.d r3, r[2:3], r[4:5]
0000a0  bbc00100  bneq r3, zero, 48
0000a4  00a00000  mfence { lm }
0000a8  9f410000  addli r3, zero, 4
0000ac  2b0200f0  lui r4, 983040
0000b0  9f02cff7  addli r5, r30, -1056
0000b4  97914100  or r3, r3, r4
0000b8  ffa15000  l_gm2lm r3, r5, 0(r[2:3])
0000bc  00a00200  mfence { lm, gm }
0000c0  e300cff7  loadli.w r1,  -1056(r30)
0000c4  9f120000  addli r5, zero, 1
0000c8  3bd05000  bneq r1, r5, 20
0000cc  5b300500  j 10624
0000d0  9f000000  addli r1, zero, 0
0000d4  9f120000  addli r5, zero, 1
0000d8  b7d55014  beq r1, r5, 10612
0000dc  e3404f03  loadli.w r1,  420(r30)
0000e0  00510002  load_param_i r2, 0
0000e4  6347cf01  loadli.w r14,  228(r30)
0000e8  e307cf01  loadli.w r15,  224(r30)
0000ec  63486f01  loadli.w r16,  180(r30)
0000f0  63046f01  loadli.w r8,  176(r30)
0000f4  63422f02  loadli.w r4,  276(r30)
0000f8  630a0f02  loadli.w r20,  256(r30)
0000fc  6346df01  loadli.w r12,  236(r30)
000100  e305ef01  loadli.w r11,  240(r30)
000104  e34aff01  loadli.w r21,  252(r30)
000108  e341ef01  loadli.w r3,  244(r30)
00010c  e306df01  loadli.w r13,  232(r30)
000110  634b0f02  loadli.w r22,  260(r30)
000114  e3446f02  loadli.w r9,  308(r30)
000118  63056f02  loadli.w r10,  304(r30)
00011c  eb5b0f06  load.d r[24:25], 96(r30)
000120  eb5c8f05  load.d r[26:27], 88(r30)
000124  eb5d8f04  load.d r[28:29], 72(r30)
000128  67052fee  storeli.w r2, -2224(r30)
00012c  e7061fee  storeli.w r1, -2200(r30)
000130  e3004f03  loadli.w r1,  416(r30)
000134  e7014fee  storeli.w r4, -2280(r30)
000138  8b91d140  min.s r3, r3, r13
00013c  67015fef  storeli.w r21, -2288(r30)
000140  67414fef  storeli.w r20, -2284(r30)
000144  67006fef  storeli.w r22, -2304(r30)
000148  67461fee  storeli.w r1, -2204(r30)
00014c  e3403f03  loadli.w r1,  412(r30)
000150  e7041fee  storeli.w r1, -2232(r30)
000154  e3003f03  loadli.w r1,  408(r30)
000158  67041fee  storeli.w r1, -2240(r30)
00015c  e300af02  loadli.w r1,  336(r30)
000160  e70f1fec  storeli.w r1, -2312(r30)
000164  e3005f02  loadli.w r1,  296(r30)
000168  e7051fee  storeli.w r1, -2216(r30)
00016c  e300bf01  loadli.w r1,  216(r30)
000170  0b131138  mod.s r6, r2, r1
000174  8b181130  div.s r17, r2, r1
000178  e3001f01  loadli.w r1,  136(r30)
00017c  67401fee  storeli.w r1, -2300(r30)
000180  eb500f08  load.d r[2:3], 128(r30)
000184  0b19f320  mul.s r18, r6, r15
000188  8b99e820  mul.s r19, r17, r14
00018c  6b530f07  load.d r[7:8], 112(r30)
000190  674f2fed  storeli.w r18, -2316(r30)
000194  0b192419  sub.s r18, r8, r18
000198  0b183819  sub.s r16, r16, r19
00019c  8b972741  min.s r15, r15, r18
0001a0  0b170741  min.s r14, r14, r16
0001a4  0b984930  div.s r16, r19, r4
0001a8  0b124a30  div.s r4, r20, r4
0001ac  eb588f06  load.d r[18:19], 104(r30)
0001b0  8b970748  max.s r15, r15, zero
0001b4  0b170748  max.s r14, r14, zero
0001b8  0b16f640  min.s r12, r12, r15
0001bc  8b95e540  min.s r11, r11, r14
0001c0  e74d4fec  storeli.w r4, -2340(r30)
0001c4  0b120648  max.s r4, r12, zero
0001c8  0b960548  max.s r12, r11, zero
0001cc  670e0fed  storeli.w r16, -2336(r30)
0001d0  8b954a10  add.s r11, r21, r4
0001d4  e7404fee  storeli.w r4, -2292(r30)
0001d8  0b920148  max.s r4, r3, zero
0001dc  e700cfee  storeli.w r12, -2296(r30)
0001e0  9ff5f5ff  addli r11, r11, -1
0001e4  e74f4fec  storeli.w r4, -2308(r30)
0001e8  8b915531  div.s r3, r11, r21
0001ec  8b15ca10  add.s r11, r20, r12
0001f0  0b164b10  add.s r12, r22, r4
0001f4  0b129530  div.s r4, r10, r9
0001f8  00350002  core_id r10
0001fc  9f240000  addli r9, zero, 2
000200  9f76f6ff  addli r13, r12, -1
000204  9ff5f5ff  addli r11, r11, -1
000208  0b964531  div.s r12, r11, r20
00020c  8b9a6631  div.s r21, r13, r22
000210  67454fee  storeli.w r4, -2220(r30)
000214  7dc00200  xsignal_mode_cfg r5
000218  bff1a404  blt.s r9, r10, 2172
00021c  63022f03  loadli.w r4,  400(r30)
000220  e3064f02  loadli.w r13,  288(r30)
000224  63473f02  loadli.w r14,  284(r30)
000228  80350002  core_id r11
00022c  674d4fec  storeli.w r4, -2348(r30)
000230  63028f02  loadli.w r4,  320(r30)
000234  670a4fee  storeli.w r4, -2144(r30)
000238  63427f02  loadli.w r4,  316(r30)
00023c  e7494fee  storeli.w r4, -2148(r30)
000240  63027f02  loadli.w r4,  312(r30)
000244  e7094fee  storeli.w r4, -2152(r30)
000248  63023f02  loadli.w r4,  280(r30)
00024c  67054fee  storeli.w r4, -2224(r30)
000250  6b528f07  load.d r[5:6], 120(r30)
000254  b7f20506  beq r11, zero, 3260
000258  e3404f02  loadli.w r1,  292(r30)
00025c  63416f02  loadli.w r2,  308(r30)
000260  eb540f05  load.d r[10:11], 80(r30)
000264  8b902030  div.s r1, r1, r2
000268  1f110000  addli r2, zero, 1
00026c  67491fee  storeli.w r1, -2156(r30)
000270  37ce250a  beq r11, r2, 6032
000274  9f200000  addli r1, zero, 2
000278  bbde1512  bneq r11, r1, 10164
00027c  b3001028  zext_int2long r[1:2], zero
000280  674d0ff6  storeli.w zero, -1068(r30)
000284  674a0fee  storeli.w zero, -2140(r30)
000288  e74f0ffe  storeli.w zero, -4(r30)
00028c  93a01d00  seteq.d r1, r[28:29], r[2:3]
000290  bb800000  bneq r1, zero, 32
000294  00a00000  mfence { lm }
000298  9f400000  addli r1, zero, 4
00029c  2b0100f0  lui r2, 983040
0002a0  1f04cff7  addli r8, r30, -1056
0002a4  97902000  or r1, r1, r2
0002a8  ffa08d00  l_gm2lm r1, r8, 0(r[28:29])
0002ac  00a00200  mfence { lm, gm }
0002b0  b3001028  zext_int2long r[1:2], zero
0002b4  93a01400  seteq.d r1, r[10:11], r[2:3]
0002b8  bb800000  bneq r1, zero, 32
0002bc  00a00000  mfence { lm }
0002c0  9f400000  addli r1, zero, 4
0002c4  2b0100f0  lui r2, 983040
0002c8  1f04cff7  addli r8, r30, -1056
0002cc  97902000  or r1, r1, r2
0002d0  ffa08400  l_gm2lm r1, r8, 0(r[10:11])
0002d4  00a00200  mfence { lm, gm }
0002d8  e3004f01  loadli.w r1,  160(r30)
0002dc  bbb00000  bneq r1, zero, 44
0002e0  b3001028  zext_int2long r[1:2], zero
0002e4  93a01c00  seteq.d r1, r[26:27], r[2:3]
0002e8  bb800000  bneq r1, zero, 32
0002ec  00a00000  mfence { lm }
0002f0  9f400000  addli r1, zero, 4
0002f4  2b0100f0  lui r2, 983040
0002f8  1f04cff7  addli r8, r30, -1056
0002fc  97902000  or r1, r1, r2
000300  ffa08c00  l_gm2lm r1, r8, 0(r[26:27])
000304  00a00200  mfence { lm, gm }
000308  e3404f01  loadli.w r1,  164(r30)
00030c  bbb00000  bneq r1, zero, 44
000310  b3001028  zext_int2long r[1:2], zero
000314  93a01b00  seteq.d r1, r[24:25], r[2:3]
000318  bb800000  bneq r1, zero, 32
00031c  00a00000  mfence { lm }
000320  9f400000  addli r1, zero, 4
000324  2b0100f0  lui r2, 983040
000328  1f04cff7  addli r8, r30, -1056
00032c  97902000  or r1, r1, r2
000330  ffa08b00  l_gm2lm r1, r8, 0(r[24:25])
000334  00a00200  mfence { lm, gm }
000338  e3005f01  loadli.w r1,  168(r30)
00033c  b7f10000  beq r1, zero, 124
000340  b3001028  zext_int2long r[1:2], zero
000344  93a01800  seteq.d r1, r[18:19], r[2:3]
000348  bb800000  bneq r1, zero, 32
00034c  00a00000  mfence { lm }
000350  9f400000  addli r1, zero, 4
000354  2b0100f0  lui r2, 983040
000358  1f04cff7  addli r8, r30, -1056
00035c  97902000  or r1, r1, r2
000360  ffa08800  l_gm2lm r1, r8, 0(r[18:19])
000364  00a00200  mfence { lm, gm }
000368  b3001028  zext_int2long r[1:2], zero
00036c  93201300  seteq.d r1, r[7:8], r[2:3]
000370  bb800000  bneq r1, zero, 32
000374  00a00000  mfence { lm }
000378  9f400000  addli r1, zero, 4
00037c  2b0100f0  lui r2, 983040
000380  1f04cff7  addli r8, r30, -1056
000384  97902000  or r1, r1, r2
000388  ff208300  l_gm2lm r1, r8, 0(r[7:8])
00038c  00a00200  mfence { lm, gm }
000390  b3001028  zext_int2long r[1:2], zero
000394  93201200  seteq.d r1, r[5:6], r[2:3]
000398  bb800000  bneq r1, zero, 32
00039c  00a00000  mfence { lm }
0003a0  9f400000  addli r1, zero, 4
0003a4  2b0100f0  lui r2, 983040
0003a8  1f03cff7  addli r6, r30, -1056
0003ac  97902000  or r1, r1, r2
0003b0  ff206200  l_gm2lm r1, r6, 0(r[5:6])
0003b4  00a00200  mfence { lm, gm }
0003b8  e3406f03  loadli.w r1,  436(r30)
0003bc  1f411000  addli r2, zero, 12
0003c0  1f020000  addli r4, zero, 0
0003c4  e70e1fec  storeli.w r1, -2328(r30)
0003c8  e3006f03  loadli.w r1,  432(r30)
0003cc  674e1fec  storeli.w r1, -2332(r30)
0003d0  e3405f03  loadli.w r1,  428(r30)
0003d4  67031fee  storeli.w r1, -2256(r30)
0003d8  e3005f03  loadli.w r1,  424(r30)
0003dc  e7021fee  storeli.w r1, -2264(r30)
0003e0  9f00cff7  addli r1, r30, -1056
0003e4  8b924010  add.s r5, r1, r4
0003e8  1f120200  addli r4, r4, 1
0003ec  13032204  setlt.u r6, r4, r2
0003f0  73800200  store.b zero, 0(r5)
0003f4  bb4f03fe  bneq r6, zero, -16
0003f8  e3401f01  loadli.w r1,  140(r30)
0003fc  1f016fef  addli r2, r30, -2128
000400  670b3fee  storeli.w r3, -2128(r30)
000404  674bcfee  storeli.w r12, -2124(r30)
000408  e70b5fef  storeli.w r21, -2120(r30)
00040c  9bb02000  slli r1, r1, 2
000410  0b111110  add.s r2, r2, r1
000414  e3010100  loadli.w r3,  0(r2)
000418  1f110000  addli r2, zero, 1
00041c  67023fee  storeli.w r3, -2272(r30)
000420  3fb82112  blt.s r3, r2, 9740
000424  1f03cff7  addli r6, r30, -1056
000428  e3013f02  loadli.w r3,  280(r30)
00042c  e3035f02  loadli.w r7,  296(r30)
000430  63423f02  loadli.w r4,  284(r30)
000434  e3024f02  loadli.w r5,  288(r30)
000438  9f040000  addli r9, zero, 0
00043c  1f050000  addli r10, zero, 0
000440  9f050000  addli r11, zero, 0
000444  1f561000  addli r12, zero, 13
000448  9f771000  addli r15, zero, 15
00044c  9f481000  addli r17, zero, 12
000450  1f3b0000  addli r22, zero, 3
000454  9f6b1000  addli r23, zero, 14
000458  1f080000  addli r16, zero, 0
00045c  670f0fec  storeli.w zero, -2320(r30)
000460  e74e0fec  storeli.w zero, -2324(r30)
000464  8b101310  add.s r1, r6, r1
000468  1b3e5200  slli r28, r4, 5
00046c  1bb25200  slli r4, r5, 5
000470  e7411fee  storeli.w r1, -2276(r30)
000474  9ff0f1ff  addli r1, r3, -1
000478  674f1fec  storeli.w r1, -2316(r30)
00047c  9ff0f3ff  addli r1, r7, -1
000480  9f032000  addli r7, zero, 16
000484  e7471fee  storeli.w r1, -2180(r30)
000488  9f201000  addli r1, zero, 10
00048c  db040000  j 36
000490  e3447fee  loadli.w r9,  -2244(r30)
000494  e3014fee  loadli.w r3,  -2272(r30)
000498  e3057fee  loadli.w r11,  -2248(r30)
00049c  63486fee  loadli.w r16,  -2252(r30)
0004a0  1f561000  addli r12, zero, 13
0004a4  9f771000  addli r15, zero, 15
0004a8  9f940400  addli r9, r9, 1
0004ac  37863412  beq r9, r3, 9600
0004b0  e3015fee  loadli.w r3,  -2264(r30)
0004b4  e3423fee  loadli.w r5,  -2276(r30)
0004b8  630aafee  loadli.w r20,  -2224(r30)
0004bc  9381b106  setle.u r3, r3, r11
0004c0  67809200  storeli.w r9, 0(r5)
0004c4  634ccff7  loadli.w r24,  -1052(r30)
0004c8  3bd00100  bneq r3, zero, 20
0004cc  3b400c00  bneq r24, zero, 16
0004d0  9f950500  addli r11, r11, 1
0004d4  9f010000  addli r3, zero, 0
0004d8  5b060000  j 48
0004dc  b7000c00  beq r24, zero, 32
0004e0  e341cfed  loadli.w r3,  -2332(r30)
0004e4  6303efed  loadli.w r6,  -2320(r30)
0004e8  93023306  setle.u r5, r6, r3
0004ec  93816104  setlt.u r3, r3, r6
0004f0  0b135310  add.s r6, r6, r5
0004f4  670f6fec  storeli.w r6, -2320(r30)
0004f8  5b020000  j 16
0004fc  e301efed  loadli.w r3,  -2320(r30)
000500  670f0fec  storeli.w zero, -2320(r30)
000504  9f910100  addli r3, r3, 1
000508  e302cff7  loadli.w r5,  -1056(r30)
00050c  6304dff7  loadli.w r8,  -1048(r30)
000510  3fc02100  blt.s r3, r2, 16
000514  7d100600  xwait r12, 0
000518  9ff1f1ff  addli r3, r3, -1
00051c  bbef01fe  bneq r3, zero, -8
000520  e3016fee  loadli.w r3,  -2256(r30)
000524  93810107  setle.u r3, r3, r16
000528  bbcc0100  bneq r3, zero, 816
00052c  bbbc0200  bneq r5, zero, 812
000530  1f180800  addli r16, r16, 1
000534  9f010000  addli r3, zero, 0
000538  e7439fee  storeli.w r9, -2244(r30)
00053c  3fc02100  blt.s r3, r2, 16
000540  7d900700  xwait r15, 0
000544  9ff1f1ff  addli r3, r3, -1
000548  bbef01fe  bneq r3, zero, -8
00054c  3b600400  bneq r8, zero, 24
000550  e341aff7  loadli.w r3,  -1068(r30)
000554  6303ffed  loadli.w r6,  -2312(r30)
000558  93846104  setlt.u r9, r3, r6
00055c  1f43aff7  addli r6, r30, -1068
000560  bb900400  bneq r9, zero, 36
000564  e3414fef  loadli.w r3,  -2140(r30)
000568  6343afed  loadli.w r6,  -2348(r30)
00056c  93043304  setlt.u r9, r6, r3
000570  37a00400  beq r9, zero, 8
000574  e341ffff  loadli.w r3,  -4(r30)
000578  1f43ffff  addli r6, r30, -4
00057c  3ba00400  bneq r9, zero, 8
000580  1f434fef  addli r6, r30, -2140
000584  e3472fee  loadli.w r15,  -2284(r30)
000588  63061fee  loadli.w r12,  -2296(r30)
00058c  67430fef  storeli.w r16, -2252(r30)
000590  63083fee  loadli.w r16,  -2280(r30)
000594  63092fee  loadli.w r18,  -2288(r30)
000598  e3090fee  loadli.w r19,  -2304(r30)
00059c  e703bfee  storeli.w r11, -2248(r30)
0005a0  8b155410  add.s r11, r8, r5
0005a4  9f910100  addli r3, r3, 1
0005a8  67003300  storeli.w r3, 0(r6)
0005ac  e3410fee  loadli.w r3,  -2300(r30)
0005b0  8b14fc20  mul.s r9, r24, r15
0005b4  8b149618  sub.s r9, r12, r9
0005b8  0b168411  add.s r12, r8, r24
0005bc  0b143421  mul.s r8, r8, r19
0005c0  8b949740  min.s r9, r15, r9
0005c4  8b972221  mul.s r15, r5, r18
0005c8  8b940448  max.s r9, r9, zero
0005cc  8b9a0431  div.s r21, r9, r16
0005d0  e3441fee  loadli.w r9,  -2292(r30)
0005d4  63482fef  loadli.w r16,  -2156(r30)
0005d8  8b94f418  sub.s r9, r9, r15
0005dc  e347ffed  loadli.w r15,  -2308(r30)
0005e0  8b149940  min.s r9, r18, r9
0005e4  0b948718  sub.s r8, r15, r8
0005e8  67085fef  storeli.w r21, -2176(r30)
0005ec  8b940448  max.s r9, r9, zero
0005f0  0b948940  min.s r8, r19, r8
0005f4  e7489fee  storeli.w r9, -2164(r30)
0005f8  0b190448  max.s r18, r8, zero
0005fc  6344efed  loadli.w r8,  -2316(r30)
000600  67092fef  storeli.w r18, -2160(r30)
000604  0b149410  add.s r8, r8, r9
000608  8b940a11  add.s r9, r21, r16
00060c  8b1c4431  div.s r25, r8, r20
000610  1ff4f4ff  addli r8, r9, -1
000614  9f74f9ff  addli r9, r18, -1
000618  0b1d0431  div.s r26, r8, r16
00061c  63089fee  loadli.w r16,  -2232(r30)
000620  0b94e410  add.s r8, r9, r14
000624  8b94d410  add.s r9, r9, r13
000628  8b17e430  div.s r15, r8, r14
00062c  63048fee  loadli.w r8,  -2240(r30)
000630  8b94d430  div.s r9, r9, r13
000634  8b950539  mod.s r11, r11, r16
000638  6308dfee  loadli.w r16,  -2200(r30)
00063c  0b160639  mod.s r12, r12, r16
000640  0b948520  mul.s r8, r11, r8
000644  67478fee  storeli.w r8, -2188(r30)
000648  6344cfee  loadli.w r8,  -2204(r30)
00064c  0b148620  mul.s r8, r12, r8
000650  e7078fee  storeli.w r8, -2184(r30)
000654  b7b82100  beq r3, r2, 556
000658  b7e86101  beq r3, r22, 568
00065c  1f230000  addli r6, zero, 2
000660  1f880700  addli r16, r15, 0
000664  3bd06100  bneq r3, r6, 20
000668  93810200  seteq r3, r5, zero
00066c  13030c02  setneq r6, r24, zero
000670  97816100  and r3, r3, r6
000674  bbb80100  bneq r3, zero, 556
000678  3bb30200  bneq r5, zero, 204
00067c  3f232d00  blt.s r26, r2, 200
000680  e3012fef  loadli.w r3,  -2160(r30)
000684  9f024000  addli r5, zero, 32
000688  9ff13100  addli r3, r3, 31
00068c  8b925138  mod.s r5, r3, r5
000690  8b925118  sub.s r5, r3, r5
000694  9f010000  addli r3, zero, 0
000698  1bb35200  slli r6, r5, 5
00069c  5b020000  j 16
0006a0  9f910100  addli r3, r3, 1
0006a4  1f880700  addli r16, r15, 0
0006a8  37f2a101  beq r3, r26, 156
0006ac  bfdf24fe  blt.s r9, r2, -12
0006b0  63482fef  loadli.w r16,  -2156(r30)
0006b4  63090fef  loadli.w r18,  -2176(r30)
0006b8  0b940121  mul.s r8, r3, r16
0006bc  8b157430  div.s r11, r8, r7
0006c0  0b198918  sub.s r18, r18, r8
0006c4  8b1d2841  min.s r27, r16, r18
0006c8  1bb64500  slli r12, r11, 4
0006cc  0b14c418  sub.s r8, r8, r12
0006d0  6306ffee  loadli.w r12,  -2184(r30)
0006d4  1b341400  slli r8, r8, 1
0006d8  0b16b350  fmac.s r12, r6, r11
0006dc  8b158610  add.s r11, r12, r8
0006e0  63042fef  loadli.w r8,  -2160(r30)
0006e4  1f860400  addli r12, r9, 0
0006e8  db020000  j 20
0006ec  1f76f6ff  addli r12, r12, -1
0006f0  8b954510  add.s r11, r11, r4
0006f4  0b14d418  sub.s r8, r8, r13
0006f8  b72e06fe  beq r12, zero, -88
0006fc  0b998640  min.s r18, r13, r8
000700  bf3f29fe  blt.s r18, r2, -20
000704  63483fef  loadli.w r16,  -2148(r30)
000708  630a3fef  loadli.w r20,  -2152(r30)
00070c  7d900800  xwait r17, 0
000710  1d000000  lock zero, zero
000714  010b0000  ds_cfg r22, zero, 0
000718  810d0002  ds_cfg r27, zero, 1
00071c  8102001c  ds_cfg r5, zero, 14
000720  8b190539  mod.s r19, r10, r16
000724  63084fef  loadli.w r16,  -2144(r30)
000728  810d001a  ds_cfg r27, zero, 13
00072c  1f150500  addli r10, r10, 1
000730  0b9a0951  fmac.s r20, r19, r16
000734  c1052a05  shuffle_coa r11, r20, r18, 2
000738  1d100000  unlock zero
00073c  7d800000  xsignal r1, 0
000740  dbf5ffff  j -84
000744  3fb52cfe  blt.s r25, r2, -692
000748  e3012fef  loadli.w r3,  -2160(r30)
00074c  9f024000  addli r5, zero, 32
000750  13030c02  setneq r6, r24, zero
000754  1b741800  setlti r8, r16, 1
000758  1f060000  addli r12, zero, 0
00075c  1f0d0000  addli r26, zero, 0
000760  9ff13100  addli r3, r3, 31
000764  8b925138  mod.s r5, r3, r5
000768  97148300  or r9, r6, r8
00076c  8b915118  sub.s r3, r3, r5
000770  9ff2fcff  addli r5, r25, -1
000774  9bb55100  slli r11, r3, 5
000778  db010000  j 12
00077c  1f1d0d00  addli r26, r26, 1
000780  37449dff  beq r26, r25, -752
000784  6309afee  loadli.w r18,  -2224(r30)
000788  63441fef  loadli.w r8,  -2164(r30)
00078c  0b132d21  mul.s r6, r26, r18
000790  0b146418  sub.s r8, r8, r6
000794  8b1d8940  min.s r27, r18, r8
000798  37810400  beq r9, zero, 64
00079c  6344ffee  loadli.w r8,  -2180(r30)
0007a0  37205d00  beq r26, r5, 8
0007a4  1f040000  addli r8, zero, 0
0007a8  0b136410  add.s r6, r8, r6
0007ac  6304bfee  loadli.w r8,  -2216(r30)
0007b0  0b13b311  add.s r6, r6, r27
0007b4  0b138330  div.s r6, r6, r8
0007b8  4b1fc3fe  ble.s r6, r12, -60
0007bc  0b14c318  sub.s r8, r6, r12
0007c0  7d800b00  xsignal r23, 0
0007c4  7d800300  xsignal r7, 0
0007c8  1f74f4ff  addli r8, r8, -1
0007cc  bb5f04fe  bneq r8, zero, -12
0007d0  1f060300  addli r12, r6, 0
0007d4  5bf5ffff  j -88
0007d8  0b147330  div.s r8, r6, r7
0007dc  e349efee  loadli.w r19,  -2188(r30)
0007e0  630c2fef  loadli.w r24,  -2160(r30)
0007e4  1b394400  slli r18, r8, 4
0007e8  8b998550  fmac.s r19, r11, r8
0007ec  0b192319  sub.s r18, r6, r18
0007f0  1b341900  slli r8, r18, 1
0007f4  1f890700  addli r18, r15, 0
0007f8  0b948910  add.s r8, r19, r8
0007fc  db020000  j 20
000800  1f79f9ff  addli r18, r18, -1
000804  0b14c411  add.s r8, r8, r28
000808  0b1cec18  sub.s r24, r24, r14
00080c  374e09fe  beq r18, zero, -112
000810  bfcf2dfe  blt.s r27, r2, -16
000814  63483fef  loadli.w r16,  -2148(r30)
000818  e30a3fef  loadli.w r21,  -2152(r30)
00081c  7d900800  xwait r17, 0
000820  1d000000  lock zero, zero
000824  0b1a8741  min.s r20, r14, r24
000828  010b0000  ds_cfg r22, zero, 0
00082c  010a0002  ds_cfg r20, zero, 1
000830  8b190539  mod.s r19, r10, r16
000834  63084fef  loadli.w r16,  -2144(r30)
000838  8101001c  ds_cfg r3, zero, 14
00083c  810d001a  ds_cfg r27, zero, 13
000840  1f150500  addli r10, r10, 1
000844  8b9a0951  fmac.s r21, r19, r16
000848  21944a03  shuffle_batch r8, r21, r20, 1
00084c  1d100000  unlock zero
000850  7d800000  xsignal r1, 0
000854  dbf5ffff  j -84
000858  b7980200  beq r5, zero, 548
00085c  e301dfed  loadli.w r3,  -2328(r30)
000860  6346dfed  loadli.w r12,  -2324(r30)
000864  13033606  setle.u r6, r12, r3
000868  9381c104  setlt.u r3, r3, r12
00086c  0b166610  add.s r12, r12, r6
000870  e74ecfec  storeli.w r12, -2324(r30)
000874  e7439fee  storeli.w r9, -2244(r30)
000878  3fd321fe  blt.s r3, r2, -812
00087c  db98ffff  j -828
000880  93810200  seteq r3, r5, zero
000884  1f880700  addli r16, r15, 0
000888  b7c701fe  beq r3, zero, -528
00088c  db020000  j 20
000890  97115c00  or r3, r24, r5
000894  93810100  seteq r3, r3, zero
000898  1f880700  addli r16, r15, 0
00089c  37f701fe  beq r3, zero, -548
0008a0  3b330c00  bneq r24, zero, 204
0008a4  3fa32c00  blt.s r25, r2, 200
0008a8  e3012fef  loadli.w r3,  -2160(r30)
0008ac  9f024000  addli r5, zero, 32
0008b0  1f030000  addli r6, zero, 0
0008b4  9ff13100  addli r3, r3, 31
0008b8  8b925138  mod.s r5, r3, r5
0008bc  8b915118  sub.s r3, r3, r5
0008c0  9bb25100  slli r5, r3, 5
0008c4  5b020000  j 16
0008c8  1f130300  addli r6, r6, 1
0008cc  1f880700  addli r16, r15, 0
0008d0  37729301  beq r6, r25, 156
0008d4  bf5f28fe  blt.s r16, r2, -12
0008d8  e309afee  loadli.w r19,  -2224(r30)
0008dc  63491fef  loadli.w r18,  -2164(r30)
0008e0  0b143321  mul.s r8, r6, r19
0008e4  8b157430  div.s r11, r8, r7
0008e8  0b198918  sub.s r18, r18, r8
0008ec  8b9d2941  min.s r27, r19, r18
0008f0  1bb64500  slli r12, r11, 4
0008f4  0b14c418  sub.s r8, r8, r12
0008f8  6346efee  loadli.w r12,  -2188(r30)
0008fc  1b341400  slli r8, r8, 1
000900  0b96b250  fmac.s r12, r5, r11
000904  e3052fef  loadli.w r11,  -2160(r30)
000908  0b1c8610  add.s r24, r12, r8
00090c  1f040800  addli r8, r16, 0
000910  db020000  j 20
000914  1f74f4ff  addli r8, r8, -1
000918  0b1ccc11  add.s r24, r24, r28
00091c  8b95e518  sub.s r11, r11, r14
000920  b72e04fe  beq r8, zero, -88
000924  bfcf2dfe  blt.s r27, r2, -16
000928  63463fef  loadli.w r12,  -2148(r30)
00092c  e3093fef  loadli.w r19,  -2152(r30)
000930  7d900800  xwait r17, 0
000934  1d000000  lock zero, zero
000938  0b19b740  min.s r18, r14, r11
00093c  010b0000  ds_cfg r22, zero, 0
000940  01090002  ds_cfg r18, zero, 1
000944  63084fef  loadli.w r16,  -2144(r30)
000948  8101001c  ds_cfg r3, zero, 14
00094c  810d001a  ds_cfg r27, zero, 13
000950  0b16c538  mod.s r12, r10, r12
000954  1f150500  addli r10, r10, 1
000958  8b190651  fmac.s r19, r12, r16
00095c  219c2903  shuffle_batch r24, r19, r18, 1
000960  1d100000  unlock zero
000964  7d800000  xsignal r1, 0
000968  dbf5ffff  j -84
00096c  bf1c2dfc  blt.s r26, r2, -1244
000970  e3012fef  loadli.w r3,  -2160(r30)
000974  9f024000  addli r5, zero, 32
000978  6343afee  loadli.w r6,  -2220(r30)
00097c  9f0c0000  addli r25, zero, 0
000980  1f0c0000  addli r24, zero, 0
000984  9ff13100  addli r3, r3, 31
000988  9f77f3ff  addli r15, r6, -1
00098c  8b925138  mod.s r5, r3, r5
000990  8b915118  sub.s r3, r3, r5
000994  9f72fdff  addli r5, r26, -1
000998  1bb95100  slli r18, r3, 5
00099c  db010000  j 12
0009a0  1f1c0c00  addli r24, r24, 1
0009a4  b73bacfd  beq r24, r26, -1300
0009a8  e3452fef  loadli.w r11,  -2156(r30)
0009ac  63040fef  loadli.w r8,  -2176(r30)
0009b0  0b13bc20  mul.s r6, r24, r11
0009b4  0b146418  sub.s r8, r8, r6
0009b8  8b9d8540  min.s r27, r11, r8
0009bc  3f922400  blt.s r9, r2, 132
0009c0  0b147330  div.s r8, r6, r7
0009c4  6306ffee  loadli.w r12,  -2184(r30)
0009c8  9b354400  slli r11, r8, 4
0009cc  0b168950  fmac.s r12, r18, r8
0009d0  8b15b318  sub.s r11, r6, r11
0009d4  1bb41500  slli r8, r11, 1
0009d8  8b158610  add.s r11, r12, r8
0009dc  63042fef  loadli.w r8,  -2160(r30)
0009e0  1f860400  addli r12, r9, 0
0009e4  db020000  j 20
0009e8  1f76f6ff  addli r12, r12, -1
0009ec  8b954510  add.s r11, r11, r4
0009f0  0b14d418  sub.s r8, r8, r13
0009f4  37310600  beq r12, zero, 76
0009f8  0b988640  min.s r16, r13, r8
0009fc  bf3f28fe  blt.s r16, r2, -20
000a00  e3493fef  loadli.w r19,  -2148(r30)
000a04  630a3fef  loadli.w r20,  -2152(r30)
000a08  7d900800  xwait r17, 0
000a0c  1d000000  lock zero, zero
000a10  010b0000  ds_cfg r22, zero, 0
000a14  810d0002  ds_cfg r27, zero, 1
000a18  8101001c  ds_cfg r3, zero, 14
000a1c  e30a4fef  loadli.w r21,  -2144(r30)
000a20  810d001a  ds_cfg r27, zero, 13
000a24  8b193539  mod.s r19, r10, r19
000a28  1f150500  addli r10, r10, 1
000a2c  0b9a5951  fmac.s r20, r19, r21
000a30  c1050a05  shuffle_coa r11, r20, r16, 2
000a34  1d100000  unlock zero
000a38  7d800000  xsignal r1, 0
000a3c  dbf5ffff  j -84
000a40  1f840700  addli r8, r15, 0
000a44  37205c00  beq r24, r5, 8
000a48  1f040000  addli r8, zero, 0
000a4c  0b136410  add.s r6, r8, r6
000a50  6344afee  loadli.w r8,  -2220(r30)
000a54  0b13b311  add.s r6, r6, r27
000a58  0b138330  div.s r6, r6, r8
000a5c  4b1d93ff  ble.s r6, r25, -188
000a60  0b149319  sub.s r8, r6, r25
000a64  7d800b00  xsignal r23, 0
000a68  7d800300  xsignal r7, 0
000a6c  1f74f4ff  addli r8, r8, -1
000a70  bb5f04fe  bneq r8, zero, -12
000a74  9f0c0300  addli r25, r6, 0
000a78  5be5ffff  j -216
000a7c  e341dfed  loadli.w r3,  -2324(r30)
000a80  e74e0fec  storeli.w zero, -2324(r30)
000a84  9f910100  addli r3, r3, 1
000a88  e7439fee  storeli.w r9, -2244(r30)
000a8c  3f8b21fc  blt.s r3, r2, -1344
000a90  5b56ffff  j -1360
000a94  63429f02  loadli.w r4,  332(r30)
000a98  e3465f02  loadli.w r13,  300(r30)
000a9c  9f320000  addli r5, zero, 3
000aa0  67094fee  storeli.w r4, -2160(r30)
000aa4  63029f02  loadli.w r4,  328(r30)
000aa8  e7484fee  storeli.w r4, -2164(r30)
000aac  63428f02  loadli.w r4,  324(r30)
000ab0  67084fee  storeli.w r4, -2176(r30)
000ab4  b75d5506  beq r10, r5, 3956
000ab8  63421f03  loadli.w r4,  396(r30)
000abc  9f440000  addli r9, zero, 4
000ac0  670a4fee  storeli.w r4, -2144(r30)
000ac4  63021f03  loadli.w r4,  392(r30)
000ac8  e7494fee  storeli.w r4, -2148(r30)
000acc  63420f03  loadli.w r4,  388(r30)
000ad0  e7094fee  storeli.w r4, -2152(r30)
000ad4  377f9508  beq r10, r9, 5084
000ad8  1f720000  addli r4, zero, 7
000adc  3b4d450e  bneq r10, r4, 8016
000ae0  ab07803f  lui r15, 260096
000ae4  e3025f01  loadli.w r5,  168(r30)
000ae8  63490fee  loadli.w r18,  -2300(r30)
000aec  3bc20200  bneq r5, zero, 144
000af0  33024028  zext_int2long r[4:5], zero
000af4  93a24000  seteq.d r5, r[2:3], r[5:6]
000af8  2b02803f  lui r4, 260096
000afc  bbf10200  bneq r5, zero, 124
000b00  00a00000  mfence { lm }
000b04  1f026000  addli r4, zero, 48
000b08  ab0200f0  lui r5, 983040
000b0c  1f03cff7  addli r6, r30, -1056
000b10  17125200  or r4, r4, r5
000b14  7fa26000  l_gm2lm r4, r6, 0(r[2:3])
000b18  00a00200  mfence { lm, gm }
000b1c  e300cff7  loadli.w r1,  -1056(r30)
000b20  6341cff7  loadli.w r2,  -1052(r30)
000b24  6302dff7  loadli.w r4,  -1048(r30)
000b28  e342dff7  loadli.w r5,  -1044(r30)
000b2c  6303eff7  loadli.w r6,  -1040(r30)
000b30  e343eff7  loadli.w r7,  -1036(r30)
000b34  63440ff8  loadli.w r8,  -1020(r30)
000b38  e3041ff8  loadli.w r9,  -1016(r30)
000b3c  63451ff8  loadli.w r10,  -1012(r30)
000b40  8be02048  max.f r1, r1, r2
000b44  0b615248  max.f r2, r4, r5
000b48  0b627348  max.f r4, r6, r7
000b4c  e302fff7  loadli.w r5,  -1032(r30)
000b50  6343fff7  loadli.w r6,  -1028(r30)
000b54  e3030ff8  loadli.w r7,  -1024(r30)
000b58  0b614148  max.f r2, r2, r4
000b5c  8be26248  max.f r5, r5, r6
000b60  0be38348  max.f r6, r7, r8
000b64  8be3a448  max.f r7, r9, r10
000b68  8be02048  max.f r1, r1, r2
000b6c  0b627348  max.f r4, r6, r7
000b70  0be14248  max.f r2, r5, r4
000b74  0be22048  max.f r4, r1, r2
000b78  8f074218  div.f.rn r15, r4, r4
000b7c  e3009f01  loadli.w r1,  200(r30)
000b80  1f020fef  addli r4, r30, -2176
000b84  1f030000  addli r6, zero, 0
000b88  67491fee  storeli.w r1, -2156(r30)
000b8c  eb508f01  load.d r[2:3], 24(r30)
000b90  73301200  store.d r[2:3], 0(r4)
000b94  9f00cff7  addli r1, r30, -1056
000b98  1f411000  addli r2, zero, 12
000b9c  8b926010  add.s r5, r1, r6
000ba0  1f130300  addli r6, r6, 1
000ba4  93032304  setlt.u r7, r6, r2
000ba8  73800200  store.b zero, 0(r5)
000bac  bbcf03fe  bneq r7, zero, -16
000bb0  e3401f01  loadli.w r1,  140(r30)
000bb4  1f016fef  addli r2, r30, -2128
000bb8  670b3fee  storeli.w r3, -2128(r30)
000bbc  674bcfee  storeli.w r12, -2124(r30)
000bc0  e70b5fef  storeli.w r21, -2120(r30)
000bc4  9f110000  addli r3, zero, 1
000bc8  9bb02000  slli r1, r1, 2
000bcc  0b111110  add.s r2, r2, r1
000bd0  63020100  loadli.w r4,  0(r2)
000bd4  3f69320e  blt.s r4, r3, 7768
000bd8  63069f01  loadli.w r12,  200(r30)
000bdc  1f01cff7  addli r2, r30, -1056
000be0  e3425f02  loadli.w r5,  300(r30)
000be4  1ff3faff  addli r6, r21, -1
000be8  1f040000  addli r8, zero, 0
000bec  9f03dfee  addli r7, r30, -2200
000bf0  1f1a4000  addli r20, zero, 33
000bf4  9f5a0000  addli r21, zero, 5
000bf8  1f0b4000  addli r22, zero, 32
000bfc  9f0b0001  addli r23, zero, 128
000c00  1f0e0000  addli r28, zero, 0
000c04  e7474fee  storeli.w r4, -2180(r30)
000c08  0b111110  add.s r2, r2, r1
000c0c  67476fee  storeli.w r6, -2188(r30)
000c10  9b301600  slli r1, r12, 1
000c14  b3149628  sext_int2long r[9:10], r12
000c18  e7072fee  storeli.w r2, -2184(r30)
000c1c  67091fee  storeli.w r1, -2160(r30)
000c20  8b900058  neg.s r1, r1
000c24  73b09300  store.d r[10:11], 0(r7)
000c28  e7481fee  storeli.w r1, -2164(r30)
000c2c  9ff0f2ff  addli r1, r5, -1
000c30  67461fee  storeli.w r1, -2204(r30)
000c34  5b050000  j 40
000c38  9f407000  addli r1, zero, 60
000c3c  7d800000  xsignal r1, 0
000c40  7d900000  xwait r1, 0
000c44  63490fee  loadli.w r18,  -2300(r30)
000c48  6342ffee  loadli.w r4,  -2180(r30)
000c4c  6301ffee  loadli.w r2,  -2184(r30)
000c50  6343efee  loadli.w r6,  -2188(r30)
000c54  1f140400  addli r8, r8, 1
000c58  3757440e  beq r8, r4, 7636
000c5c  67008100  storeli.w r8, 0(r2)
000c60  e300dff7  loadli.w r1,  -1048(r30)
000c64  bbcf60fe  bneq r1, r6, -16
000c68  e344cff7  loadli.w r9,  -1052(r30)
000c6c  63422fee  loadli.w r4,  -2284(r30)
000c70  63051fee  loadli.w r10,  -2296(r30)
000c74  e300cff7  loadli.w r1,  -1056(r30)
000c78  63072fee  loadli.w r14,  -2288(r30)
000c7c  6341efed  loadli.w r2,  -2316(r30)
000c80  e302cfed  loadli.w r5,  -2336(r30)
000c84  1f0c0fef  addli r24, r30, -2176
000c88  8b934420  mul.s r7, r9, r4
000c8c  0b93e020  mul.s r6, r1, r14
000c90  0b91e050  fmac.s r2, r1, r14
000c94  8b137518  sub.s r7, r10, r7
000c98  63451fee  loadli.w r10,  -2292(r30)
000c9c  8b137240  min.s r7, r4, r7
000ca0  63023fee  loadli.w r4,  -2280(r30)
000ca4  0b136518  sub.s r6, r10, r6
000ca8  3315a12c  sext_int2long r[10:11], r2
000cac  0b910348  max.s r2, r7, zero
000cb0  8b196740  min.s r19, r14, r6
000cb4  1f07dfee  addli r14, r30, -2200
000cb8  8b1d4130  div.s r27, r2, r4
000cbc  6341bfed  loadli.w r2,  -2340(r30)
000cc0  6b580700  load.d r[17:18], 0(r14)
000cc4  8b922450  fmac.s r5, r9, r2
000cc8  0b910948  max.s r2, r19, zero
000ccc  0b330521  mul.sl r[7:8], r[11:12], r[17:18]
000cd0  17383802  sll.d r[17:18], r[17:18], r3
000cd4  3395a22a  sext_int2long r[10:11], r5
000cd8  6b520c00  load.d r[5:6], 0(r24)
000cdc  17333302  sll.d r[7:8], r[7:8], r3
000ce0  17353502  sll.d r[11:12], r[11:12], r3
000ce4  8b226210  add.ul r[6:7], r[5:6], r[7:8]
000ce8  0ba3a210  add.ul r[7:8], r[6:7], r[11:12]
000cec  b7243900  beq r18, r3, 296
000cf0  1f320000  addli r4, zero, 3
000cf4  37744900  beq r18, r4, 284
000cf8  1f220000  addli r4, zero, 2
000cfc  3b504900  bneq r18, r4, 20
000d00  93800000  seteq r1, r1, zero
000d04  93820402  setneq r5, r9, zero
000d08  97805000  and r1, r1, r5
000d0c  3bc40000  bneq r1, zero, 272
000d10  e340cfee  loadli.w r1,  -2204(r30)
000d14  8b902010  add.s r1, r1, r2
000d18  8b99d030  div.s r19, r1, r13
000d1c  3ffc39fe  blt.s r19, r3, -228
000d20  9ff03d00  addli r1, r27, 31
000d24  9f0c0000  addli r25, zero, 0
000d28  1f0d0100  addli r26, r2, 0
000d2c  0b976031  div.s r14, r1, r22
000d30  9bb02d00  slli r1, r27, 2
000d34  9b80c007  andi r1, r1, 124
000d38  5b080000  j 64
000d3c  15050004  dma_cfg r10, zero, zero, 2
000d40  95847507  dma_cfg r9, r11, r23, 3
000d44  63022fef  loadli.w r4,  -2160(r30)
000d48  15828b0b  dma_cfg r4, r23, r24, 5
000d4c  1f028000  addli r4, zero, 64
000d50  1502e908  dma_cfg r4, r18, r14, 4
000d54  35000000  dma_run zero
000d58  1500300a  dma_cfg zero, zero, r3, 5
000d5c  15000010  dma_cfg zero, zero, zero, 8
000d60  1d900a00  unlock r21
000d64  7d000b00  xsignal r22, 0
000d68  1f1e0e00  addli r28, r28, 1
000d6c  9f9c0c00  addli r25, r25, 1
000d70  0b1ddd18  sub.s r26, r26, r13
000d74  379b3cff  beq r25, r19, -316
000d78  8b94dc20  mul.s r9, r25, r13
000d7c  0b129118  sub.s r4, r2, r9
000d80  0b9c4640  min.s r24, r13, r4
000d84  bf2f3cfe  blt.s r24, r3, -24
000d88  7d100a00  xwait r20, 0
000d8c  3fef3dfe  blt.s r27, r3, -40
000d90  63423fef  loadli.w r4,  -2148(r30)
000d94  e3422fef  loadli.w r5,  -2156(r30)
000d98  e3053fef  loadli.w r11,  -2152(r30)
000d9c  1d800a00  lock zero, r21
000da0  1b397c00  slli r18, r24, 7
000da4  8b925420  mul.s r5, r9, r5
000da8  0b124e38  mod.s r4, r28, r4
000dac  b394922a  sext_int2long r[9:10], r5
000db0  e3024fef  loadli.w r5,  -2144(r30)
000db4  15000012  dma_cfg zero, zero, zero, 9
000db8  9501f000  dma_cfg r3, zero, r15, 0
000dbc  15001010  dma_cfg zero, zero, r1, 8
000dc0  15800102  dma_cfg zero, r3, zero, 1
000dc4  97b43402  sll.d r[10:11], r[10:11], r3
000dc8  8b155250  fmac.s r11, r4, r5
000dcc  8b249310  add.ul r[10:11], r[7:8], r[10:11]
000dd0  3f203600  blt.s r12, r3, 8
000dd4  5bedffff  j -152
000dd8  0b92a641  min.s r4, r13, r26
000ddc  e3421fef  loadli.w r5,  -2164(r30)
000de0  95823b0a  dma_cfg r5, r23, r3, 5
000de4  9f028000  addli r5, zero, 64
000de8  9502e908  dma_cfg r5, r18, r14, 4
000dec  0b190258  neg.s r18, r4
000df0  15050004  dma_cfg r10, zero, zero, 2
000df4  95847507  dma_cfg r9, r11, r23, 3
000df8  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
000dfc  1f190900  addli r18, r18, 1
000e00  9f850501  addli r11, r11, 128
000e04  35000000  dma_run zero
000e08  bb2f09fe  bneq r18, zero, -24
000e0c  dbe9ffff  j -180
000e10  97901400  or r1, r9, r1
000e14  93800000  seteq r1, r1, zero
000e18  b7eb00fe  beq r1, zero, -264
000e1c  6342afee  loadli.w r4,  -2220(r30)
000e20  8b904d10  add.s r1, r27, r4
000e24  9ff0f0ff  addli r1, r1, -1
000e28  8b9c4030  div.s r25, r1, r4
000e2c  3fb83cfe  blt.s r25, r3, -500
000e30  9b307100  slli r1, r2, 7
000e34  1f070000  addli r14, zero, 0
000e38  db070000  j 60
000e3c  15050004  dma_cfg r10, zero, zero, 2
000e40  95047d07  dma_cfg r9, r26, r23, 3
000e44  63022fef  loadli.w r4,  -2160(r30)
000e48  15822b0a  dma_cfg r4, r23, r2, 5
000e4c  1f028000  addli r4, zero, 64
000e50  1582b008  dma_cfg r4, r1, r11, 4
000e54  35000000  dma_run zero
000e58  1500300a  dma_cfg zero, zero, r3, 5
000e5c  15000010  dma_cfg zero, zero, zero, 8
000e60  1d900a00  unlock r21
000e64  7d000b00  xsignal r22, 0
000e68  1f1e0e00  addli r28, r28, 1
000e6c  1f170700  addli r14, r14, 1
000e70  372797ff  beq r14, r25, -568
000e74  bfef39fe  blt.s r19, r3, -8
000e78  6342afee  loadli.w r4,  -2220(r30)
000e7c  7d100a00  xwait r20, 0
000e80  0b154720  mul.s r10, r14, r4
000e84  8b92ad18  sub.s r5, r27, r10
000e88  8b145240  min.s r9, r4, r5
000e8c  3fef34fe  blt.s r9, r3, -40
000e90  63423fef  loadli.w r4,  -2148(r30)
000e94  630d3fef  loadli.w r26,  -2152(r30)
000e98  9ff53400  addli r11, r9, 31
000e9c  9bb42400  slli r9, r9, 2
000ea0  8b956531  div.s r11, r11, r22
000ea4  9b84c407  andi r9, r9, 124
000ea8  8b124e38  mod.s r5, r28, r4
000eac  63024fef  loadli.w r4,  -2144(r30)
000eb0  1d800a00  lock zero, r21
000eb4  15000012  dma_cfg zero, zero, zero, 9
000eb8  9501f000  dma_cfg r3, zero, r15, 0
000ebc  15009010  dma_cfg zero, zero, r9, 8
000ec0  15800102  dma_cfg zero, r3, zero, 1
000ec4  0b9d4250  fmac.s r26, r5, r4
000ec8  3312452c  sext_int2long r[4:5], r10
000ecc  17323202  sll.d r[5:6], r[5:6], r3
000ed0  8b244310  add.ul r[10:11], r[7:8], r[5:6]
000ed4  3f203600  blt.s r12, r3, 8
000ed8  dbecffff  j -156
000edc  63421fef  loadli.w r4,  -2164(r30)
000ee0  15823b0a  dma_cfg r4, r23, r3, 5
000ee4  1f028000  addli r4, zero, 64
000ee8  1582b008  dma_cfg r4, r1, r11, 4
000eec  9f050100  addli r11, r2, 0
000ef0  15050004  dma_cfg r10, zero, zero, 2
000ef4  95047d07  dma_cfg r9, r26, r23, 3
000ef8  8ba40411  add.ul r[10:11], r[10:11], r[17:18]
000efc  9ff5f5ff  addli r11, r11, -1
000f00  1f0d0d01  addli r26, r26, 128
000f04  35000000  dma_run zero
000f08  bbaf05fe  bneq r11, zero, -24
000f0c  dbe9ffff  j -180
000f10  63045f01  loadli.w r8,  168(r30)
000f14  674d0ff6  storeli.w zero, -1068(r30)
000f18  674a0fee  storeli.w zero, -2140(r30)
000f1c  e74f0ffe  storeli.w zero, -4(r30)
000f20  ab04803f  lui r9, 260096
000f24  630dafee  loadli.w r26,  -2224(r30)
000f28  67089fee  storeli.w r9, -2176(r30)
000f2c  67499fee  storeli.w r9, -2156(r30)
000f30  bb550400  bneq r8, zero, 372
000f34  33048028  zext_int2long r[8:9], zero
000f38  93a48800  seteq.d r9, r[18:19], r[9:10]
000f3c  2b04803f  lui r8, 260096
000f40  bbf10400  bneq r9, zero, 124
000f44  00a00000  mfence { lm }
000f48  1f046000  addli r8, zero, 48
000f4c  ab0400f0  lui r9, 983040
000f50  1f05cff7  addli r10, r30, -1056
000f54  17149400  or r8, r8, r9
000f58  7fa4a800  l_gm2lm r8, r10, 0(r[18:19])
000f5c  00a00200  mfence { lm, gm }
000f60  6304cff7  loadli.w r8,  -1056(r30)
000f64  e344cff7  loadli.w r9,  -1052(r30)
000f68  6305dff7  loadli.w r10,  -1048(r30)
000f6c  e345dff7  loadli.w r11,  -1044(r30)
000f70  6308eff7  loadli.w r16,  -1040(r30)
000f74  e348eff7  loadli.w r17,  -1036(r30)
000f78  63490ff8  loadli.w r18,  -1020(r30)
000f7c  e3091ff8  loadli.w r19,  -1016(r30)
000f80  634a1ff8  loadli.w r20,  -1012(r30)
000f84  0b649448  max.f r8, r8, r9
000f88  8b64b548  max.f r9, r10, r11
000f8c  0b651849  max.f r10, r16, r17
000f90  e305fff7  loadli.w r11,  -1032(r30)
000f94  6348fff7  loadli.w r16,  -1028(r30)
000f98  e3080ff8  loadli.w r17,  -1024(r30)
000f9c  8be4a448  max.f r9, r9, r10
000fa0  8be50549  max.f r11, r11, r16
000fa4  0be82849  max.f r16, r17, r18
000fa8  8be84949  max.f r17, r19, r20
000fac  0b649448  max.f r8, r8, r9
000fb0  0b651849  max.f r10, r16, r17
000fb4  8be4a548  max.f r9, r11, r10
000fb8  0b649448  max.f r8, r8, r9
000fbc  b3049028  zext_int2long r[9:10], zero
000fc0  13259300  seteq.d r10, r[7:8], r[10:11]
000fc4  ab04803f  lui r9, 260096
000fc8  bb710500  bneq r10, zero, 124
000fcc  00a00000  mfence { lm }
000fd0  9f046000  addli r9, zero, 48
000fd4  2b0500f0  lui r10, 983040
000fd8  9f05cff7  addli r11, r30, -1056
000fdc  9794a400  or r9, r9, r10
000fe0  ff24b300  l_gm2lm r9, r11, 0(r[7:8])
000fe4  00a00200  mfence { lm, gm }
000fe8  6303cff7  loadli.w r6,  -1056(r30)
000fec  e343cff7  loadli.w r7,  -1052(r30)
000ff0  e304dff7  loadli.w r9,  -1048(r30)
000ff4  6345dff7  loadli.w r10,  -1044(r30)
000ff8  e305eff7  loadli.w r11,  -1040(r30)
000ffc  6348eff7  loadli.w r16,  -1036(r30)
001000  e3480ff8  loadli.w r17,  -1020(r30)
001004  63091ff8  loadli.w r18,  -1016(r30)
001008  e3491ff8  loadli.w r19,  -1012(r30)
00100c  0b637348  max.f r6, r6, r7
001010  8be3a448  max.f r7, r9, r10
001014  8be40549  max.f r9, r11, r16
001018  6305fff7  loadli.w r10,  -1032(r30)
00101c  e345fff7  loadli.w r11,  -1028(r30)
001020  63080ff8  loadli.w r16,  -1024(r30)
001024  8be39348  max.f r7, r7, r9
001028  0b65b548  max.f r10, r10, r11
00102c  8b651849  max.f r11, r16, r17
001030  0b683949  max.f r16, r18, r19
001034  0b637348  max.f r6, r6, r7
001038  8be40549  max.f r9, r11, r16
00103c  8b639548  max.f r7, r10, r9
001040  8b647348  max.f r9, r6, r7
001044  33036028  zext_int2long r[6:7], zero
001048  13236200  seteq.d r6, r[5:6], r[7:8]
00104c  bb000300  bneq r6, zero, 32
001050  00a00000  mfence { lm }
001054  1f036000  addli r6, zero, 48
001058  ab0300f0  lui r7, 983040
00105c  1f05cff7  addli r10, r30, -1056
001060  17137300  or r6, r6, r7
001064  7f23a200  l_gm2lm r6, r10, 0(r[5:6])
001068  00a00200  mfence { lm, gm }
00106c  33024028  zext_int2long r[4:5], zero
001070  13a24000  seteq.d r4, r[2:3], r[5:6]
001074  bb000200  bneq r4, zero, 32
001078  00a00000  mfence { lm }
00107c  1f026000  addli r4, zero, 48
001080  ab0200f0  lui r5, 983040
001084  1f03cff7  addli r6, r30, -1056
001088  17125200  or r4, r4, r5
00108c  7fa26000  l_gm2lm r4, r6, 0(r[2:3])
001090  00a00200  mfence { lm, gm }
001094  8f008418  div.f.rn r1, r8, r8
001098  67081fee  storeli.w r1, -2176(r30)
00109c  8f809418  div.f.rn r1, r9, r9
0010a0  67491fee  storeli.w r1, -2156(r30)
0010a4  e3008f01  loadli.w r1,  192(r30)
0010a8  9f029fed  addli r5, r30, -2360
0010ac  1f038fed  addli r6, r30, -2368
0010b0  e34c7f02  loadli.w r25,  316(r30)
0010b4  1f020000  addli r4, zero, 0
0010b8  67091fee  storeli.w r1, -2160(r30)
0010bc  e3407f01  loadli.w r1,  188(r30)
0010c0  e7411fee  storeli.w r1, -2276(r30)
0010c4  eb508f00  load.d r[2:3], 8(r30)
0010c8  73b01200  store.d r[2:3], 0(r5)
0010cc  eb500f00  load.d r[2:3], 0(r30)
0010d0  73301300  store.d r[2:3], 0(r6)
0010d4  9f00cff7  addli r1, r30, -1056
0010d8  1f411000  addli r2, zero, 12
0010dc  8b924010  add.s r5, r1, r4
0010e0  1f120200  addli r4, r4, 1
0010e4  13032204  setlt.u r6, r4, r2
0010e8  73800200  store.b zero, 0(r5)
0010ec  bb4f03fe  bneq r6, zero, -16
0010f0  e3401f01  loadli.w r1,  140(r30)
0010f4  1f016fef  addli r2, r30, -2128
0010f8  670b3fee  storeli.w r3, -2128(r30)
0010fc  674bcfee  storeli.w r12, -2124(r30)
001100  e70b5fef  storeli.w r21, -2120(r30)
001104  1f120000  addli r4, zero, 1
001108  9bb02000  slli r1, r1, 2
00110c  0b111110  add.s r2, r2, r1
001110  63010100  loadli.w r2,  0(r2)
001114  e74b2fec  storeli.w r2, -2372(r30)
001118  3f54410c  blt.s r2, r4, 6420
00111c  9f04cff7  addli r9, r30, -1056
001120  63434f02  loadli.w r6,  292(r30)
001124  63446f02  loadli.w r8,  308(r30)
001128  6301cf02  loadli.w r2,  352(r30)
00112c  e3010f03  loadli.w r3,  384(r30)
001130  e3023f02  loadli.w r5,  280(r30)
001134  e3457f01  loadli.w r11,  188(r30)
001138  e3078f01  loadli.w r15,  192(r30)
00113c  e3035f02  loadli.w r7,  296(r30)
001140  1f050000  addli r10, zero, 0
001144  1f060000  addli r12, zero, 0
001148  1f080000  addli r16, zero, 0
00114c  e7490fec  storeli.w zero, -2404(r30)
001150  e74e0fec  storeli.w zero, -2324(r30)
001154  8b901410  add.s r1, r9, r1
001158  0b113148  max.s r2, r2, r3
00115c  9f311000  addli r3, zero, 11
001160  e747bfee  storeli.w r11, -2180(r30)
001164  e748ffee  storeli.w r15, -2164(r30)
001168  674b1fec  storeli.w r1, -2380(r30)
00116c  8b108330  div.s r1, r6, r8
001170  1f034fed  addli r6, r30, -2400
001174  e70b2fec  storeli.w r2, -2376(r30)
001178  e7031fee  storeli.w r1, -2248(r30)
00117c  9ff0f2ff  addli r1, r5, -1
001180  9f025fed  addli r5, r30, -2392
001184  670b1fec  storeli.w r1, -2384(r30)
001188  b390152e  sext_int2long r[1:2], r11
00118c  73b01200  store.d r[2:3], 0(r5)
001190  b390172e  sext_int2long r[1:2], r15
001194  73301300  store.d r[2:3], 0(r6)
001198  9bb01500  slli r1, r11, 1
00119c  1bb11700  slli r2, r15, 1
0011a0  67471fee  storeli.w r1, -2188(r30)
0011a4  8b900058  neg.s r1, r1
0011a8  e7072fee  storeli.w r2, -2184(r30)
0011ac  67461fee  storeli.w r1, -2204(r30)
0011b0  8b100158  neg.s r1, r2
0011b4  e7061fee  storeli.w r1, -2200(r30)
0011b8  9ff0f3ff  addli r1, r7, -1
0011bc  67031fee  storeli.w r1, -2256(r30)
0011c0  5b030000  j 24
0011c4  630dafee  loadli.w r26,  -2224(r30)
0011c8  6305dfed  loadli.w r10,  -2328(r30)
0011cc  e3407fed  loadli.w r1,  -2372(r30)
0011d0  1f150500  addli r10, r10, 1
0011d4  3761150c  beq r10, r1, 6232
0011d8  6343aff7  loadli.w r6,  -1068(r30)
0011dc  e3007fed  loadli.w r1,  -2376(r30)
0011e0  e3426fed  loadli.w r5,  -2380(r30)
0011e4  1f4caff7  addli r24, r30, -1068
0011e8  93001304  setlt.u r1, r6, r1
0011ec  6780a200  storeli.w r10, 0(r5)
0011f0  bb900000  bneq r1, zero, 36
0011f4  63434fef  loadli.w r6,  -2140(r30)
0011f8  e340afed  loadli.w r1,  -2348(r30)
0011fc  93806004  setlt.u r1, r1, r6
001200  37a00000  beq r1, zero, 8
001204  6343ffff  loadli.w r6,  -4(r30)
001208  1f4cffff  addli r24, r30, -4
00120c  3ba00000  bneq r1, zero, 8
001210  1f4c4fef  addli r24, r30, -2140
001214  e70eafec  storeli.w r10, -2328(r30)
001218  e30acff7  loadli.w r21,  -1056(r30)
00121c  63052fee  loadli.w r10,  -2288(r30)
001220  e3421fee  loadli.w r5,  -2292(r30)
001224  e348cff7  loadli.w r17,  -1052(r30)
001228  e3051fee  loadli.w r11,  -2296(r30)
00122c  e300dff7  loadli.w r1,  -1048(r30)
001230  e3070fee  loadli.w r15,  -2304(r30)
001234  8b93aa20  mul.s r7, r21, r10
001238  0b94f020  mul.s r8, r1, r15
00123c  e70d1fec  storeli.w r1, -2344(r30)
001240  670f1fed  storeli.w r17, -2320(r30)
001244  8b937218  sub.s r7, r5, r7
001248  e3422fee  loadli.w r5,  -2284(r30)
00124c  331b6429  sext_int2long r[22:23], r8
001250  8b137540  min.s r7, r10, r7
001254  8b945820  mul.s r9, r17, r5
001258  8b900348  max.s r1, r7, zero
00125c  e343ffed  loadli.w r7,  -2308(r30)
001260  8b949518  sub.s r9, r11, r9
001264  9f150300  addli r11, r6, 1
001268  e7431fee  storeli.w r1, -2244(r30)
00126c  8b949240  min.s r9, r5, r9
001270  e3023fee  loadli.w r5,  -2280(r30)
001274  8b938318  sub.s r7, r7, r8
001278  6700bc00  storeli.w r11, 0(r24)
00127c  8b940448  max.s r9, r9, zero
001280  8b937740  min.s r7, r15, r7
001284  0b915430  div.s r2, r9, r5
001288  e304cfed  loadli.w r9,  -2336(r30)
00128c  e342bfed  loadli.w r5,  -2340(r30)
001290  8b9d0348  max.s r27, r7, zero
001294  e343efed  loadli.w r7,  -2316(r30)
001298  1f008fed  addli zero, r30, -2368
00129c  8b945850  fmac.s r9, r17, r5
0012a0  8b93aa50  fmac.s r7, r21, r10
0012a4  b392542a  sext_int2long r[5:6], r9
0012a8  9f049fee  addli r9, r30, -2232
0012ac  b399332f  sext_int2long r[19:20], r7
0012b0  9ff3fdff  addli r7, r27, -1
0012b4  67432fee  storeli.w r2, -2252(r30)
0012b8  73b05400  store.d r[6:7], 0(r9)
0012bc  e3026fed  loadli.w r5,  -2384(r30)
0012c0  0b95e310  add.s r10, r7, r14
0012c4  0b15e530  div.s r10, r10, r14
0012c8  0b931210  add.s r6, r5, r1
0012cc  e3027fee  loadli.w r5,  -2248(r30)
0012d0  8b17a331  div.s r15, r6, r26
0012d4  0b135110  add.s r6, r2, r5
0012d8  a7000b00  addli.d r[2:3], r[23:24], 0
0012dc  1f73f3ff  addli r6, r6, -1
0012e0  0b1e5330  div.s r28, r6, r5
0012e4  9f025fed  addli r5, r30, -2392
0012e8  0b93d310  add.s r6, r7, r13
0012ec  ebd80200  load.d r[18:19], 0(r5)
0012f0  0b1dd330  div.s r26, r6, r13
0012f4  1f034fed  addli r6, r30, -2400
0012f8  eb530300  load.d r[8:9], 0(r6)
0012fc  eb520000  load.d r[6:7], 0(zero)
001300  17200000  xor zero, zero, zero
001304  8bb91921  mul.sl r[20:21], r[20:21], r[18:19]
001308  1f008fee  addli zero, r30, -2240
00130c  97b94902  sll.d r[20:21], r[20:21], r4
001310  0bbb7020  mul.sl r[23:24], r[2:3], r[8:9]
001314  17b44302  sll.d r[9:10], r[8:9], r4
001318  8ba23211  add.ul r[6:7], r[6:7], r[20:21]
00131c  9f098fee  addli r19, r30, -2240
001320  173b4b02  sll.d r[23:24], r[23:24], r4
001324  73b05900  store.d r[6:7], 0(r19)
001328  97b94002  sll.d r[20:21], r[2:3], r4
00132c  9f009fed  addli r1, r30, -2360
001330  ebd20000  load.d r[6:7], 0(r1)
001334  0bab6211  add.ul r[23:24], r[6:7], r[23:24]
001338  e302ffed  loadli.w r5,  -2312(r30)
00133c  6343dfed  loadli.w r6,  -2324(r30)
001340  93826206  setle.u r5, r5, r6
001344  674e5fec  storeli.w r5, -2332(r30)
001348  9f029fee  addli r5, r30, -2232
00134c  ebd00200  load.d r[2:3], 0(r5)
001350  eb520000  load.d r[6:7], 0(zero)
001354  17200000  xor zero, zero, zero
001358  e704ffee  storeli.w r15, -2232(r30)
00135c  6704cfef  storeli.w r28, -2240(r30)
001360  8ba23211  add.ul r[6:7], r[6:7], r[20:21]
001364  9f094fee  addli r19, r30, -2272
001368  97b04002  sll.d r[2:3], r[2:3], r4
00136c  73b05900  store.d r[6:7], 0(r19)
001370  8b221b10  add.ul r[6:7], r[23:24], r[2:3]
001374  63410fee  loadli.w r2,  -2300(r30)
001378  9f005fee  addli r1, r30, -2264
00137c  17bb4802  sll.d r[23:24], r[18:19], r4
001380  73b05000  store.d r[6:7], 0(r1)
001384  37464100  beq r2, r4, 400
001388  9f300000  addli r1, zero, 3
00138c  37561100  beq r2, r1, 404
001390  9f200000  addli r1, zero, 2
001394  3b761100  bneq r2, r1, 412
001398  e300efed  loadli.w r1,  -2320(r30)
00139c  13810a00  seteq r2, r21, zero
0013a0  93830002  setneq r7, r1, zero
0013a4  17017100  and r2, r2, r7
0013a8  37260100  beq r2, zero, 392
0013ac  e300efed  loadli.w r1,  -2320(r30)
0013b0  9f4a0000  addli r21, zero, 4
0013b4  bbd40000  bneq r1, zero, 308
0013b8  bfc44700  blt.s r15, r4, 304
0013bc  e3437fee  loadli.w r7,  -2244(r30)
0013c0  1f0e0000  addli r28, zero, 0
0013c4  5b030000  j 24
0013c8  e300afee  loadli.w r1,  -2224(r30)
0013cc  1f1e0e00  addli r28, r28, 1
0013d0  8b931318  sub.s r7, r7, r1
0013d4  e3009fee  loadli.w r1,  -2232(r30)
0013d8  37441e00  beq r28, r1, 272
0013dc  bf3f45fe  blt.s r10, r4, -20
0013e0  e302afee  loadli.w r5,  -2224(r30)
0013e4  63433fee  loadli.w r6,  -2276(r30)
0013e8  0b917240  min.s r2, r5, r7
0013ec  8b105e20  mul.s r1, r28, r5
0013f0  8b170158  neg.s r15, r2
0013f4  63417fee  loadli.w r2,  -2244(r30)
0013f8  8b956020  mul.s r11, r1, r6
0013fc  b398152f  sext_int2long r[17:18], r11
001400  9f050000  addli r11, zero, 0
001404  8b101118  sub.s r1, r2, r1
001408  97b84802  sll.d r[18:19], r[18:19], r4
00140c  0b911240  min.s r2, r5, r1
001410  9f004fee  addli r1, r30, -2272
001414  ebd20000  load.d r[6:7], 0(r1)
001418  8ba81211  add.ul r[18:19], r[6:7], r[18:19]
00141c  1f830700  addli r6, r15, 0
001420  db010000  j 12
001424  9f950500  addli r11, r11, 1
001428  b78ea5fe  beq r11, r10, -96
00142c  9b00f60f  andi r1, r12, 255
001430  37b00000  beq r1, zero, 12
001434  9f201000  addli r1, zero, 10
001438  7d900000  xwait r1, 0
00143c  3f524100  blt.s r2, r4, 148
001440  8b99e520  mul.s r19, r11, r14
001444  8b903d19  sub.s r1, r27, r19
001448  8b101740  min.s r1, r14, r1
00144c  3f924000  blt.s r1, r4, 132
001450  e3423fef  loadli.w r5,  -2148(r30)
001454  e3073fef  loadli.w r15,  -2152(r30)
001458  1d800a00  lock zero, r21
00145c  b399392f  sext_int2long r[19:20], r19
001460  97b94902  sll.d r[20:21], r[20:21], r4
001464  0b1c5838  mod.s r24, r16, r5
001468  e3020fef  loadli.w r5,  -2176(r30)
00146c  15025200  dma_cfg r4, r4, r5, 0
001470  e3024fef  loadli.w r5,  -2144(r30)
001474  15020002  dma_cfg r4, zero, zero, 1
001478  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
00147c  8b175c50  fmac.s r15, r24, r5
001480  1bbc1000  slli r24, r1, 1
001484  e340ffee  loadli.w r1,  -2180(r30)
001488  3ff04000  blt.s r1, r4, 28
00148c  15000a04  dma_cfg zero, r20, zero, 2
001490  95878907  dma_cfg r15, r19, r24, 3
001494  e340efee  loadli.w r1,  -2188(r30)
001498  158c2008  dma_cfg r24, r1, r2, 4
00149c  35000000  dma_run zero
0014a0  db050000  j 44
0014a4  e340cfee  loadli.w r1,  -2204(r30)
0014a8  158c4008  dma_cfg r24, r1, r4, 4
0014ac  9f000300  addli r1, r6, 0
0014b0  15000a04  dma_cfg zero, r20, zero, 2
0014b4  95878907  dma_cfg r15, r19, r24, 3
0014b8  8ba96911  add.ul r[20:21], r[20:21], r[23:24]
0014bc  9f900000  addli r1, r1, 1
0014c0  8b978711  add.s r15, r15, r24
0014c4  35000000  dma_run zero
0014c8  bbaf00fe  bneq r1, zero, -24
0014cc  1d900a00  unlock r21
0014d0  7d800100  xsignal r3, 0
0014d4  1f180800  addli r16, r16, 1
0014d8  3b3d98ff  bneq r16, r25, -180
0014dc  1f160000  addli r12, zero, 1
0014e0  1f080000  addli r16, zero, 0
0014e4  5be8ffff  j -192
0014e8  e340cfed  loadli.w r1,  -2332(r30)
0014ec  bbc50000  bneq r1, zero, 368
0014f0  e300bfed  loadli.w r1,  -2344(r30)
0014f4  bba50000  bneq r1, zero, 360
0014f8  e340dfed  loadli.w r1,  -2324(r30)
0014fc  9f900000  addli r1, r1, 1
001500  e74e1fec  storeli.w r1, -2324(r30)
001504  9f000000  addli r1, zero, 0
001508  63018fee  loadli.w r2,  -2240(r30)
00150c  bbc50000  bneq r1, zero, 368
001510  db2e0000  j 372
001514  13810a00  seteq r2, r21, zero
001518  3b5a01fe  bneq r2, zero, -364
00151c  db020000  j 20
001520  e300efed  loadli.w r1,  -2320(r30)
001524  17915001  or r2, r1, r21
001528  13010100  seteq r2, r2, zero
00152c  3b0a01fe  bneq r2, zero, -384
001530  bb8b0a00  bneq r21, zero, 736
001534  bf3b4e00  blt.s r28, r4, 748
001538  9f030000  addli r7, zero, 0
00153c  9f4a0000  addli r21, zero, 4
001540  5b020000  j 16
001544  e3008fee  loadli.w r1,  -2240(r30)
001548  9f930300  addli r7, r7, 1
00154c  37ab1300  beq r7, r1, 712
001550  bf5f4dfe  blt.s r26, r4, -12
001554  e3027fee  loadli.w r5,  -2248(r30)
001558  63416fee  loadli.w r2,  -2252(r30)
00155c  1f0e0000  addli r28, zero, 0
001560  1f8c0d00  addli r24, r27, 0
001564  8b905320  mul.s r1, r7, r5
001568  0b111118  sub.s r2, r2, r1
00156c  b398102b  sext_int2long r[17:18], r1
001570  8b952240  min.s r11, r5, r2
001574  97b04802  sll.d r[2:3], r[18:19], r4
001578  9f085fee  addli r17, r30, -2264
00157c  ebd20800  load.d r[6:7], 0(r17)
001580  9bb71500  slli r15, r11, 1
001584  8ba01210  add.ul r[2:3], r[6:7], r[2:3]
001588  5b020000  j 16
00158c  1f1e0e00  addli r28, r28, 1
001590  0b1cdc18  sub.s r24, r24, r13
001594  b74eaeff  beq r28, r26, -80
001598  9b08f60f  andi r17, r12, 255
00159c  37b00800  beq r17, zero, 12
0015a0  9f221000  addli r5, zero, 10
0015a4  7d900200  xwait r5, 0
0015a8  3ff24500  blt.s r11, r4, 156
0015ac  0b19de20  mul.s r18, r28, r13
0015b0  8b982d19  sub.s r17, r27, r18
0015b4  0b9a1641  min.s r20, r13, r17
0015b8  3f324a00  blt.s r20, r4, 140
0015bc  e3423fef  loadli.w r5,  -2148(r30)
0015c0  e3083fef  loadli.w r17,  -2152(r30)
0015c4  8b195838  mod.s r19, r16, r5
0015c8  e3022fef  loadli.w r5,  -2160(r30)
0015cc  1d800a00  lock zero, r21
0015d0  0b195920  mul.s r18, r18, r5
0015d4  b312592c  sext_int2long r[5:6], r18
0015d8  63492fef  loadli.w r18,  -2156(r30)
0015dc  15022201  dma_cfg r4, r4, r18, 0
0015e0  63094fef  loadli.w r18,  -2144(r30)
0015e4  15020002  dma_cfg r4, zero, zero, 1
0015e8  97b24202  sll.d r[6:7], r[6:7], r4
0015ec  8b982951  fmac.s r17, r19, r18
0015f0  0ba95010  add.ul r[19:20], r[2:3], r[6:7]
0015f4  e3421fef  loadli.w r5,  -2164(r30)
0015f8  3ff04200  blt.s r5, r4, 28
0015fc  15800904  dma_cfg zero, r19, zero, 2
001600  9508f906  dma_cfg r17, r18, r15, 3
001604  e302ffee  loadli.w r5,  -2184(r30)
001608  95874209  dma_cfg r15, r5, r20, 4
00160c  35000000  dma_run zero
001610  5b060000  j 48
001614  8b928641  min.s r5, r13, r24
001618  6303dfee  loadli.w r6,  -2200(r30)
00161c  95074308  dma_cfg r15, r6, r4, 4
001620  0b9a0258  neg.s r20, r5
001624  15800904  dma_cfg zero, r19, zero, 2
001628  9508f906  dma_cfg r17, r18, r15, 3
00162c  0b298910  add.ul r[19:20], r[19:20], r[9:10]
001630  1f1a0a00  addli r20, r20, 1
001634  8b98f810  add.s r17, r17, r15
001638  35000000  dma_run zero
00163c  bb2f0afe  bneq r20, zero, -24
001640  1d900a00  unlock r21
001644  7d800100  xsignal r3, 0
001648  1f180800  addli r16, r16, 1
00164c  3b0d98ff  bneq r16, r25, -192
001650  1f160000  addli r12, zero, 1
001654  1f080000  addli r16, zero, 0
001658  dbe6ffff  j -204
00165c  e340afed  loadli.w r1,  -2348(r30)
001660  e3423fed  loadli.w r5,  -2404(r30)
001664  13811206  setle.u r2, r5, r1
001668  93805004  setlt.u r1, r1, r5
00166c  8b922210  add.s r5, r5, r2
001670  e7495fec  storeli.w r5, -2404(r30)
001674  63018fee  loadli.w r2,  -2240(r30)
001678  37b00000  beq r1, zero, 12
00167c  9f102000  addli r1, zero, 17
001680  7d900000  xwait r1, 0
001684  3f0d41fc  blt.s r2, r4, -1216
001688  9f70f1ff  addli r1, r2, -1
00168c  1f050000  addli r10, zero, 0
001690  9f070000  addli r15, zero, 0
001694  e7041fee  storeli.w r1, -2232(r30)
001698  e340afee  loadli.w r1,  -2220(r30)
00169c  9ff0f0ff  addli r1, r1, -1
0016a0  e7431fee  storeli.w r1, -2244(r30)
0016a4  5b020000  j 16
0016a8  63038fee  loadli.w r6,  -2240(r30)
0016ac  9f970700  addli r15, r15, 1
0016b0  37dc67fc  beq r15, r6, -1260
0016b4  63017fee  loadli.w r2,  -2248(r30)
0016b8  e3406fee  loadli.w r1,  -2252(r30)
0016bc  8b932720  mul.s r7, r15, r2
0016c0  8b907018  sub.s r1, r1, r7
0016c4  0b1e1140  min.s r28, r2, r1
0016c8  bf734d00  blt.s r26, r4, 252
0016cc  9f085fee  addli r17, r30, -2264
0016d0  b390132e  sext_int2long r[1:2], r7
0016d4  1f0b0000  addli r22, zero, 0
0016d8  9b351e00  slli r11, r28, 1
0016dc  ebd20800  load.d r[6:7], 0(r17)
0016e0  97b04002  sll.d r[2:3], r[2:3], r4
0016e4  8bab1210  add.ul r[24:25], r[6:7], r[2:3]
0016e8  9f800d00  addli r1, r27, 0
0016ec  5b020000  j 16
0016f0  1f1b0b00  addli r22, r22, 1
0016f4  8b90d018  sub.s r1, r1, r13
0016f8  3733ab01  beq r22, r26, 204
0016fc  1b01f60f  andi r2, r12, 255
001700  37300100  beq r2, zero, 12
001704  1f211000  addli r2, zero, 10
001708  7d100100  xwait r2, 0
00170c  bf024e00  blt.s r28, r4, 160
001710  8b18db20  mul.s r17, r22, r13
001714  0b911d19  sub.s r2, r27, r17
001718  8b992640  min.s r19, r13, r2
00171c  3fc24900  blt.s r19, r4, 144
001720  63413fef  loadli.w r2,  -2148(r30)
001724  e3022fef  loadli.w r5,  -2160(r30)
001728  0b192838  mod.s r18, r16, r2
00172c  8b985820  mul.s r17, r17, r5
001730  63013fef  loadli.w r2,  -2152(r30)
001734  1d800a00  lock zero, r21
001738  e3422fef  loadli.w r5,  -2156(r30)
00173c  15025200  dma_cfg r4, r4, r5, 0
001740  e3024fef  loadli.w r5,  -2144(r30)
001744  15020002  dma_cfg r4, zero, zero, 1
001748  339a482b  sext_int2long r[20:21], r17
00174c  173a4a02  sll.d r[21:22], r[21:22], r4
001750  0b115950  fmac.s r2, r18, r5
001754  e3421fef  loadli.w r5,  -2164(r30)
001758  8ba84b11  add.ul r[18:19], r[24:25], r[21:22]
00175c  3ff04200  blt.s r5, r4, 28
001760  15000904  dma_cfg zero, r18, zero, 2
001764  1581b806  dma_cfg r2, r17, r11, 3
001768  6301ffee  loadli.w r2,  -2184(r30)
00176c  95053109  dma_cfg r11, r2, r19, 4
001770  35000000  dma_run zero
001774  5b060000  j 48
001778  8b991640  min.s r19, r13, r1
00177c  e302dfee  loadli.w r5,  -2200(r30)
001780  95854208  dma_cfg r11, r5, r4, 4
001784  8b990958  neg.s r19, r19
001788  15000904  dma_cfg zero, r18, zero, 2
00178c  1581b806  dma_cfg r2, r17, r11, 3
001790  8ba88810  add.ul r[18:19], r[18:19], r[9:10]
001794  9f990900  addli r19, r19, 1
001798  0b11b110  add.s r2, r2, r11
00179c  35000000  dma_run zero
0017a0  bbaf09fe  bneq r19, zero, -24
0017a4  9f4a0000  addli r21, zero, 4
0017a8  1d900a00  unlock r21
0017ac  7d800100  xsignal r3, 0
0017b0  1f180800  addli r16, r16, 1
0017b4  bb7c98ff  bneq r16, r25, -196
0017b8  1f160000  addli r12, zero, 1
0017bc  1f080000  addli r16, zero, 0
0017c0  5be6ffff  j -208
0017c4  e3407fee  loadli.w r1,  -2244(r30)
0017c8  63019fee  loadli.w r2,  -2232(r30)
0017cc  37a02700  beq r15, r2, 8
0017d0  9f000000  addli r1, zero, 0
0017d4  8b907010  add.s r1, r1, r7
0017d8  6341afee  loadli.w r2,  -2220(r30)
0017dc  8b90c011  add.s r1, r1, r28
0017e0  8b902030  div.s r1, r1, r2
0017e4  4b9ba0fe  ble.s r1, r10, -316
0017e8  63038fee  loadli.w r6,  -2240(r30)
0017ec  0b91a018  sub.s r2, r1, r10
0017f0  9f222000  addli r5, zero, 18
0017f4  7d800200  xsignal r5, 0
0017f8  1f71f1ff  addli r2, r2, -1
0017fc  bb6f01fe  bneq r2, zero, -8
001800  1f850000  addli r10, r1, 0
001804  9f970700  addli r15, r15, 1
001808  bbba67fe  bneq r15, r6, -340
00180c  5b37ffff  j -1608
001810  9f4a0000  addli r21, zero, 4
001814  e340cfed  loadli.w r1,  -2332(r30)
001818  37d00000  beq r1, zero, 20
00181c  db050000  j 44
001820  9f4a0000  addli r21, zero, 4
001824  e340cfed  loadli.w r1,  -2332(r30)
001828  bb800000  bneq r1, zero, 32
00182c  e300bfed  loadli.w r1,  -2344(r30)
001830  3be00000  bneq r1, zero, 24
001834  e340dfed  loadli.w r1,  -2324(r30)
001838  9f900000  addli r1, r1, 1
00183c  e74e1fec  storeli.w r1, -2324(r30)
001840  9f000000  addli r1, zero, 0
001844  db030000  j 28
001848  e340afed  loadli.w r1,  -2348(r30)
00184c  e3423fed  loadli.w r5,  -2404(r30)
001850  13811206  setle.u r2, r5, r1
001854  93805004  setlt.u r1, r1, r5
001858  8b922210  add.s r5, r5, r2
00185c  e7495fec  storeli.w r5, -2404(r30)
001860  630dafee  loadli.w r26,  -2224(r30)
001864  e3029fee  loadli.w r5,  -2232(r30)
001868  37b00000  beq r1, zero, 12
00186c  9f102000  addli r1, zero, 17
001870  7d900000  xwait r1, 0
001874  3fd542fc  blt.s r5, r4, -1708
001878  e300efed  loadli.w r1,  -2320(r30)
00187c  1b711500  setlti r2, r10, 1
001880  63447fee  loadli.w r8,  -2244(r30)
001884  9ff2f2ff  addli r5, r5, -1
001888  9f040000  addli r9, zero, 0
00188c  1f030000  addli r6, zero, 0
001890  67045fee  storeli.w r5, -2240(r30)
001894  93800002  setneq r1, r1, zero
001898  97902000  or r1, r1, r2
00189c  67431fee  storeli.w r1, -2252(r30)
0018a0  db020000  j 20
0018a4  e3009fee  loadli.w r1,  -2232(r30)
0018a8  1f130300  addli r6, r6, 1
0018ac  0b14a419  sub.s r8, r8, r26
0018b0  376413fc  beq r6, r1, -1768
0018b4  e3407fee  loadli.w r1,  -2244(r30)
0018b8  8b13a321  mul.s r7, r6, r26
0018bc  8b907018  sub.s r1, r1, r7
0018c0  0b1e1d40  min.s r28, r26, r1
0018c4  e3406fee  loadli.w r1,  -2252(r30)
0018c8  37910000  beq r1, zero, 68
0018cc  e3006fee  loadli.w r1,  -2256(r30)
0018d0  63018fee  loadli.w r2,  -2240(r30)
0018d4  37202300  beq r6, r2, 8
0018d8  9f000000  addli r1, zero, 0
0018dc  8b907010  add.s r1, r1, r7
0018e0  6301bfee  loadli.w r2,  -2216(r30)
0018e4  8b90c011  add.s r1, r1, r28
0018e8  8b902030  div.s r1, r1, r2
0018ec  cbee90fe  ble.s r1, r9, -72
0018f0  0b919018  sub.s r2, r1, r9
0018f4  9f222000  addli r5, zero, 18
0018f8  7d800200  xsignal r5, 0
0018fc  1f71f1ff  addli r2, r2, -1
001900  bb6f01fe  bneq r2, zero, -8
001904  9f840000  addli r9, r1, 0
001908  dbf3ffff  j -100
00190c  e3403fee  loadli.w r1,  -2276(r30)
001910  8b128d40  min.s r5, r26, r8
001914  8b901320  mul.s r1, r7, r1
001918  b390102a  sext_int2long r[1:2], r1
00191c  97b84002  sll.d r[18:19], r[2:3], r4
001920  8b900258  neg.s r1, r5
001924  9f024fee  addli r5, r30, -2272
001928  1f010000  addli r2, zero, 0
00192c  ebd90200  load.d r[20:21], 0(r5)
001930  8ba81911  add.ul r[18:19], r[20:21], r[18:19]
001934  db010000  j 12
001938  1f110100  addli r2, r2, 1
00193c  374ea1fe  beq r2, r10, -112
001940  9b02f60f  andi r5, r12, 255
001944  37b00200  beq r5, zero, 12
001948  9f221000  addli r5, zero, 10
00194c  7d900200  xwait r5, 0
001950  3f624e00  blt.s r28, r4, 152
001954  8b19e120  mul.s r19, r2, r14
001958  8b923d19  sub.s r5, r27, r19
00195c  8b175740  min.s r15, r14, r5
001960  3fa24700  blt.s r15, r4, 136
001964  e3423fef  loadli.w r5,  -2148(r30)
001968  e3053fef  loadli.w r11,  -2152(r30)
00196c  1d800a00  lock zero, r21
001970  e30a0fef  loadli.w r21,  -2176(r30)
001974  b399392f  sext_int2long r[19:20], r19
001978  15025201  dma_cfg r4, r4, r21, 0
00197c  9bb71700  slli r15, r15, 1
001980  e30a4fef  loadli.w r21,  -2144(r30)
001984  15020002  dma_cfg r4, zero, zero, 1
001988  97b94902  sll.d r[20:21], r[20:21], r4
00198c  8b125838  mod.s r5, r16, r5
001990  8ba93811  add.ul r[20:21], r[18:19], r[20:21]
001994  8b955251  fmac.s r11, r5, r21
001998  e342ffee  loadli.w r5,  -2180(r30)
00199c  3ff04200  blt.s r5, r4, 28
0019a0  15000a04  dma_cfg zero, r20, zero, 2
0019a4  9585f906  dma_cfg r11, r19, r15, 3
0019a8  e342efee  loadli.w r5,  -2188(r30)
0019ac  9587c209  dma_cfg r15, r5, r28, 4
0019b0  35000000  dma_run zero
0019b4  db050000  j 44
0019b8  e342cfee  loadli.w r5,  -2204(r30)
0019bc  95874208  dma_cfg r15, r5, r4, 4
0019c0  1f8c0000  addli r24, r1, 0
0019c4  15000a04  dma_cfg zero, r20, zero, 2
0019c8  9585f906  dma_cfg r11, r19, r15, 3
0019cc  8ba96911  add.ul r[20:21], r[20:21], r[23:24]
0019d0  1f1c0c00  addli r24, r24, 1
0019d4  8b95f510  add.s r11, r11, r15
0019d8  35000000  dma_run zero
0019dc  bb2f0cfe  bneq r24, zero, -24
0019e0  9f4a0000  addli r21, zero, 4
0019e4  1d900a00  unlock r21
0019e8  7d800100  xsignal r3, 0
0019ec  1f180800  addli r16, r16, 1
0019f0  3b2d98ff  bneq r16, r25, -184
0019f4  1f160000  addli r12, zero, 1
0019f8  1f080000  addli r16, zero, 0
0019fc  dbe7ffff  j -196
001a00  9f000000  addli r1, zero, 0
001a04  63084f01  loadli.w r16,  160(r30)
001a08  b389302b  zext_int2long r[19:20], r1
001a0c  93a53c01  seteq.d r11, r[26:27], r[20:21]
001a10  37431802  beq r16, r1, 1232
001a14  1f010400  addli r2, r8, 0
001a18  37b30502  beq r11, zero, 1228
001a1c  73349fbf  store.d r[26:27], -1048(r30)
001a20  37c30502  beq r11, zero, 1232
001a24  5ba30000  j 1304
001a28  e3005f01  loadli.w r1,  168(r30)
001a2c  674d0ff6  storeli.w zero, -1068(r30)
001a30  674a0fee  storeli.w zero, -2140(r30)
001a34  3bd10000  bneq r1, zero, 84
001a38  b3001028  zext_int2long r[1:2], zero
001a3c  93a01800  seteq.d r1, r[18:19], r[2:3]
001a40  bb800000  bneq r1, zero, 32
001a44  00a00000  mfence { lm }
001a48  9f006000  addli r1, zero, 48
001a4c  2b0100f0  lui r2, 983040
001a50  1f02cff7  addli r4, r30, -1056
001a54  97902000  or r1, r1, r2
001a58  ffa04800  l_gm2lm r1, r4, 0(r[18:19])
001a5c  00a00200  mfence { lm, gm }
001a60  b3001028  zext_int2long r[1:2], zero
001a64  93201300  seteq.d r1, r[7:8], r[2:3]
001a68  bb800000  bneq r1, zero, 32
001a6c  00a00000  mfence { lm }
001a70  9f006000  addli r1, zero, 48
001a74  2b0100f0  lui r2, 983040
001a78  1f02cff7  addli r4, r30, -1056
001a7c  97902000  or r1, r1, r2
001a80  ff204300  l_gm2lm r1, r4, 0(r[7:8])
001a84  00a00200  mfence { lm, gm }
001a88  9f00cff7  addli r1, r30, -1056
001a8c  1f411000  addli r2, zero, 12
001a90  1f020000  addli r4, zero, 0
001a94  8b924010  add.s r5, r1, r4
001a98  1f120200  addli r4, r4, 1
001a9c  13032204  setlt.u r6, r4, r2
001aa0  73800200  store.b zero, 0(r5)
001aa4  bb4f03fe  bneq r6, zero, -16
001aa8  e3401f01  loadli.w r1,  140(r30)
001aac  1f016fef  addli r2, r30, -2128
001ab0  670b3fee  storeli.w r3, -2128(r30)
001ab4  674bcfee  storeli.w r12, -2124(r30)
001ab8  e70b5fef  storeli.w r21, -2120(r30)
001abc  9bb02000  slli r1, r1, 2
001ac0  0b111110  add.s r2, r2, r1
001ac4  e3010100  loadli.w r3,  0(r2)
001ac8  1f110000  addli r2, zero, 1
001acc  e7493fee  storeli.w r3, -2148(r30)
001ad0  3ffd2106  blt.s r3, r2, 3932
001ad4  e3015f02  loadli.w r3,  296(r30)
001ad8  1f0e2000  addli r28, zero, 16
001adc  1f03cff7  addli r6, r30, -1056
001ae0  63425f02  loadli.w r4,  300(r30)
001ae4  9f653000  addli r11, zero, 30
001ae8  1f058000  addli r10, zero, 64
001aec  1f783000  addli r16, zero, 31
001af0  1f492000  addli r18, zero, 20
001af4  9f090000  addli r19, zero, 0
001af8  8b101310  add.s r1, r6, r1
001afc  9ff21100  addli r5, r3, 15
001b00  9bb37100  slli r7, r3, 7
001b04  1f74f2ff  addli r8, r4, -1
001b08  e7091fee  storeli.w r1, -2152(r30)
001b0c  9ff0f1ff  addli r1, r3, -1
001b10  8b94c239  mod.s r9, r5, r28
001b14  67491fee  storeli.w r1, -2156(r30)
001b18  8b909218  sub.s r1, r5, r9
001b1c  e7471fee  storeli.w r1, -2180(r30)
001b20  5b050000  j 40
001b24  9f501000  addli r1, zero, 13
001b28  7d800000  xsignal r1, 0
001b2c  9f653000  addli r11, zero, 30
001b30  9f701000  addli r1, zero, 15
001b34  7d800000  xsignal r1, 0
001b38  e3094fef  loadli.w r19,  -2144(r30)
001b3c  e3403fef  loadli.w r1,  -2148(r30)
001b40  9f990900  addli r19, r19, 1
001b44  b7ab1906  beq r19, r1, 3816
001b48  6343aff7  loadli.w r6,  -1068(r30)
001b4c  e300ffed  loadli.w r1,  -2312(r30)
001b50  1f42aff7  addli r4, r30, -1068
001b54  93021304  setlt.u r5, r6, r1
001b58  e3003fef  loadli.w r1,  -2152(r30)
001b5c  67803001  storeli.w r19, 0(r1)
001b60  3ba00200  bneq r5, zero, 8
001b64  1f424fef  addli r4, r30, -2140
001b68  e300cff7  loadli.w r1,  -1056(r30)
001b6c  e341cff7  loadli.w r3,  -1052(r30)
001b70  6307dff7  loadli.w r14,  -1048(r30)
001b74  9f140300  addli r9, r6, 1
001b78  1f130000  addli r6, zero, 1
001b7c  3ba00200  bneq r5, zero, 8
001b80  9f140000  addli r9, zero, 1
001b84  67009200  storeli.w r9, 0(r4)
001b88  63424fef  loadli.w r4,  -2140(r30)
001b8c  3f406200  blt.s r4, r6, 16
001b90  7d900500  xwait r11, 0
001b94  1f72f2ff  addli r4, r4, -1
001b98  bb6f02fe  bneq r4, zero, -8
001b9c  e3072fee  loadli.w r15,  -2288(r30)
001ba0  e3451fee  loadli.w r11,  -2292(r30)
001ba4  63462fee  loadli.w r12,  -2284(r30)
001ba8  e348ffed  loadli.w r17,  -2308(r30)
001bac  0b121710  add.s r4, r14, r1
001bb0  8b123710  add.s r5, r14, r3
001bb4  8b941110  add.s r9, r3, r1
001bb8  674a0fee  storeli.w zero, -2140(r30)
001bbc  670a3fef  storeli.w r19, -2144(r30)
001bc0  0b93f020  mul.s r6, r1, r15
001bc4  0b936518  sub.s r6, r11, r6
001bc8  8b95c120  mul.s r11, r3, r12
001bcc  8b9b6740  min.s r23, r15, r6
001bd0  63031fee  loadli.w r6,  -2296(r30)
001bd4  8b970b48  max.s r15, r23, zero
001bd8  0b13b318  sub.s r6, r6, r11
001bdc  0b136640  min.s r6, r12, r6
001be0  63060fee  loadli.w r12,  -2304(r30)
001be4  0b130348  max.s r6, r6, zero
001be8  8b15c720  mul.s r11, r14, r12
001bec  8b95b818  sub.s r11, r17, r11
001bf0  e3089fee  loadli.w r17,  -2232(r30)
001bf4  8b15b640  min.s r11, r12, r11
001bf8  63063fee  loadli.w r12,  -2280(r30)
001bfc  0b121239  mod.s r4, r4, r17
001c00  e308dfee  loadli.w r17,  -2200(r30)
001c04  8b9c0548  max.s r25, r11, zero
001c08  8b921239  mod.s r5, r5, r17
001c0c  e3481fef  loadli.w r17,  -2164(r30)
001c10  8b941439  mod.s r9, r9, r17
001c14  8b18c330  div.s r17, r6, r12
001c18  63038fee  loadli.w r6,  -2240(r30)
001c1c  0b1d6220  mul.s r26, r4, r6
001c20  6342cfee  loadli.w r4,  -2204(r30)
001c24  8b954220  mul.s r11, r5, r4
001c28  63020fef  loadli.w r4,  -2176(r30)
001c2c  e3022fef  loadli.w r5,  -2160(r30)
001c30  0b925450  fmac.s r4, r9, r5
001c34  e3420fee  loadli.w r5,  -2300(r30)
001c38  37e52200  beq r5, r2, 344
001c3c  1f330000  addli r6, zero, 3
001c40  37b56200  beq r5, r6, 332
001c44  1f230000  addli r6, zero, 2
001c48  3bd06200  bneq r5, r6, 20
001c4c  93800000  seteq r1, r1, zero
001c50  93810102  setneq r3, r3, zero
001c54  97803000  and r1, r1, r3
001c58  3b850000  bneq r1, zero, 320
001c5c  e3402fef  loadli.w r1,  -2156(r30)
001c60  e301bfee  loadli.w r3,  -2216(r30)
001c64  8b90f010  add.s r1, r1, r15
001c68  8b9b3030  div.s r23, r1, r3
001c6c  bfea2bfe  blt.s r23, r2, -328
001c70  9bb01c00  slli r1, r25, 1
001c74  9f620000  addli r5, zero, 6
001c78  9f090000  addli r19, zero, 0
001c7c  9bb48700  slli r9, r15, 8
001c80  1b8bf803  andi r22, r17, 63
001c84  1f0a0000  addli r20, zero, 0
001c88  9ff07000  addli r1, r1, 63
001c8c  17d65800  sra r12, r17, r5
001c90  8b91a038  mod.s r3, r1, r10
001c94  8b903018  sub.s r1, r1, r3
001c98  e341ffee  loadli.w r3,  -2180(r30)
001c9c  9bb26000  slli r5, r1, 6
001ca0  0b933020  mul.s r6, r1, r3
001ca4  9ff0fbff  addli r1, r23, -1
001ca8  db020000  j 20
001cac  0b1d6d10  add.s r26, r26, r6
001cb0  1f1a0a00  addli r20, r20, 1
001cb4  0b127210  add.s r4, r4, r7
001cb8  b7397aff  beq r20, r23, -404
001cbc  e30abfee  loadli.w r21,  -2216(r30)
001cc0  9f611000  addli r3, zero, 14
001cc4  7d900100  xwait r3, 0
001cc8  7d100e00  xwait r28, 0
001ccc  8b1d5a21  mul.s r27, r20, r21
001cd0  8b91b719  sub.s r3, r15, r27
001cd4  8b913a40  min.s r3, r21, r3
001cd8  9f3a2000  addli r21, zero, 19
001cdc  7d900a00  xwait r21, 0
001ce0  bfd12100  blt.s r3, r2, 116
001ce4  1d000100  lock zero, r2
001ce8  0900f104  mm_cfg zero, r2, r15, 2
001cec  09853c00  mm_cfg r10, r25, r3, 0
001cf0  1f0c0200  addli r24, r4, 0
001cf4  1f8e0500  addli r28, r11, 0
001cf8  9f0a0600  addli r21, r12, 0
001cfc  b7300700  beq r14, zero, 44
001d00  3fe0a800  blt.s r17, r10, 24
001d04  291ccd0b  mm_acc r24, r26, r28, 5
001d08  0b1e5e10  add.s r28, r28, r5
001d0c  9ffafaff  addli r21, r21, -1
001d10  0b1c9c10  add.s r24, r24, r9
001d14  bbcf0afe  bneq r21, zero, -16
001d18  b7500b00  beq r22, zero, 52
001d1c  098b3c00  mm_cfg r22, r25, r3, 0
001d20  291ccd0b  mm_acc r24, r26, r28, 5
001d24  5b050000  j 40
001d28  3fe0a800  blt.s r17, r10, 24
001d2c  290ccd0b  mm r24, r26, r28, 5
001d30  0b1e5e10  add.s r28, r28, r5
001d34  9ffafaff  addli r21, r21, -1
001d38  0b1c9c10  add.s r24, r24, r9
001d3c  bbcf0afe  bneq r21, zero, -16
001d40  37300b00  beq r22, zero, 12
001d44  098b3c00  mm_cfg r22, r25, r3, 0
001d48  290ccd0b  mm r24, r26, r28, 5
001d4c  1f0e2000  addli r28, zero, 16
001d50  1d100100  unlock r2
001d54  9f0a0400  addli r21, r8, 0
001d58  37201a00  beq r20, r1, 8
001d5c  9f0a0000  addli r21, zero, 0
001d60  8b9aba11  add.s r21, r21, r27
001d64  8b913a10  add.s r3, r21, r3
001d68  8b91d130  div.s r3, r3, r13
001d6c  4b8d31ff  ble.s r3, r19, -192
001d70  8b993119  sub.s r19, r3, r19
001d74  7d000800  xsignal r16, 0
001d78  7d000900  xsignal r18, 0
001d7c  9ff9f9ff  addli r19, r19, -1
001d80  bbdf09fe  bneq r19, zero, -12
001d84  9f890100  addli r19, r3, 0
001d88  dbe4ffff  j -220
001d8c  97901100  or r1, r3, r1
001d90  93800000  seteq r1, r1, zero
001d94  37ab00fe  beq r1, zero, -312
001d98  e341afee  loadli.w r3,  -2220(r30)
001d9c  8b903810  add.s r1, r17, r3
001da0  9ff0f0ff  addli r1, r1, -1
001da4  8b903030  div.s r1, r1, r3
001da8  bff520fe  blt.s r1, r2, -644
001dac  e342afee  loadli.w r5,  -2220(r30)
001db0  9bb11c00  slli r3, r25, 1
001db4  9bb98700  slli r19, r15, 8
001db8  1f0a0000  addli r20, zero, 0
001dbc  9ff17100  addli r3, r3, 63
001dc0  9ff21200  addli r5, r5, 15
001dc4  8b94a138  mod.s r9, r3, r10
001dc8  0b93c239  mod.s r6, r5, r28
001dcc  8b919118  sub.s r3, r3, r9
001dd0  0b936218  sub.s r6, r5, r6
001dd4  9bb25700  slli r5, r15, 5
001dd8  9bb46100  slli r9, r3, 6
001ddc  0b133320  mul.s r6, r6, r3
001de0  db030000  j 28
001de4  1d100100  unlock r2
001de8  7d000800  xsignal r16, 0
001dec  7d000900  xsignal r18, 0
001df0  1f1a0a00  addli r20, r20, 1
001df4  8b956510  add.s r11, r11, r6
001df8  b7341afe  beq r20, r1, -724
001dfc  9f611000  addli r3, zero, 14
001e00  7d900100  xwait r3, 0
001e04  7d100e00  xwait r28, 0
001e08  9f312000  addli r3, zero, 19
001e0c  7d900100  xwait r3, 0
001e10  3fef2bfe  blt.s r23, r2, -40
001e14  634bafee  loadli.w r22,  -2220(r30)
001e18  1f064000  addli r12, zero, 32
001e1c  1d000100  lock zero, r2
001e20  0900f104  mm_cfg zero, r2, r15, 2
001e24  0985fc00  mm_cfg r10, r25, r15, 0
001e28  1f8c0500  addli r24, r11, 0
001e2c  8b116a21  mul.s r3, r20, r22
001e30  0b96c130  div.s r12, r3, r12
001e34  9b3a5600  slli r21, r12, 5
001e38  8b9a5119  sub.s r21, r3, r21
001e3c  8b913818  sub.s r3, r17, r3
001e40  8b9ac250  fmac.s r21, r5, r12
001e44  0b163b40  min.s r12, r22, r3
001e48  9bb12a00  slli r3, r21, 2
001e4c  9f6a0000  addli r21, zero, 6
001e50  175b5601  sra r22, r12, r21
001e54  8b914110  add.s r3, r3, r4
001e58  9b0af603  andi r21, r12, 63
001e5c  b7300700  beq r14, zero, 44
001e60  3f60a600  blt.s r12, r10, 24
001e64  a9118d0b  mm_acc r3, r26, r24, 5
001e68  0b1c9c10  add.s r24, r24, r9
001e6c  1f7bfbff  addli r22, r22, -1
001e70  8b913111  add.s r3, r3, r19
001e74  bb4f0bfe  bneq r22, zero, -16
001e78  b7bd0afe  beq r21, zero, -148
001e7c  898afc00  mm_cfg r21, r25, r15, 0
001e80  a9118d0b  mm_acc r3, r26, r24, 5
001e84  5becffff  j -160
001e88  3f60a600  blt.s r12, r10, 24
001e8c  a9018d0b  mm r3, r26, r24, 5
001e90  0b1c9c10  add.s r24, r24, r9
001e94  1f7bfbff  addli r22, r22, -1
001e98  8b913111  add.s r3, r3, r19
001e9c  bb4f0bfe  bneq r22, zero, -16
001ea0  379d0afe  beq r21, zero, -188
001ea4  898afc00  mm_cfg r21, r25, r15, 0
001ea8  a9018d0b  mm r3, r26, r24, 5
001eac  5be7ffff  j -200
001eb0  b3001028  zext_int2long r[1:2], zero
001eb4  93a01d00  seteq.d r1, r[28:29], r[2:3]
001eb8  3b820002  bneq r1, zero, 1152
001ebc  00a00000  mfence { lm }
001ec0  9f400000  addli r1, zero, 4
001ec4  2b0100f0  lui r2, 983040
001ec8  9f04cff7  addli r9, r30, -1056
001ecc  97902000  or r1, r1, r2
001ed0  ffa09d00  l_gm2lm r1, r9, 0(r[28:29])
001ed4  00a00200  mfence { lm, gm }
001ed8  e300cff7  loadli.w r1,  -1056(r30)
001edc  5b8c0000  j 1120
001ee0  bbfc05fc  bneq r11, zero, -1220
001ee4  9f000100  addli r1, r2, 0
001ee8  73349fbf  store.d r[26:27], -1048(r30)
001eec  3bc10500  bneq r11, zero, 80
001ef0  63014f01  loadli.w r2,  160(r30)
001ef4  1f140000  addli r8, zero, 1
001ef8  3b118100  bneq r2, r8, 68
001efc  37810000  beq r1, zero, 64
001f00  1f010002  addli r2, zero, 256
001f04  670e1ff6  storeli.w r1, -1056(r30)
001f08  00a00000  mfence { lm }
001f0c  8b902040  min.s r1, r1, r2
001f10  1f01cff7  addli r2, r30, -1056
001f14  eb598fbe  load.d r[20:21], -1048(r30)
001f18  2b0400f0  lui r8, 983040
001f1c  9bb02000  slli r1, r1, 2
001f20  1f012100  addli r2, r2, 16
001f24  97908000  or r1, r1, r8
001f28  ffa02900  l_gm2lm r1, r2, 0(r[20:21])
001f2c  b3001028  zext_int2long r[1:2], zero
001f30  00a00200  mfence { lm, gm }
001f34  73381ffe  store.d r[2:3], -16(r30)
001f38  5b010000  j 8
001f3c  670e0ff6  storeli.w zero, -1056(r30)
001f40  e3004f01  loadli.w r1,  160(r30)
001f44  bbb00000  bneq r1, zero, 44
001f48  b3001028  zext_int2long r[1:2], zero
001f4c  93a01c00  seteq.d r1, r[26:27], r[2:3]
001f50  bb800000  bneq r1, zero, 32
001f54  00a00000  mfence { lm }
001f58  9f400000  addli r1, zero, 4
001f5c  2b0100f0  lui r2, 983040
001f60  1f046fef  addli r8, r30, -2128
001f64  97902000  or r1, r1, r2
001f68  ffa08c00  l_gm2lm r1, r8, 0(r[26:27])
001f6c  00a00200  mfence { lm, gm }
001f70  e3404f01  loadli.w r1,  164(r30)
001f74  bbb00000  bneq r1, zero, 44
001f78  b3001028  zext_int2long r[1:2], zero
001f7c  93a01b00  seteq.d r1, r[24:25], r[2:3]
001f80  bb800000  bneq r1, zero, 32
001f84  00a00000  mfence { lm }
001f88  9f400000  addli r1, zero, 4
001f8c  2b0100f0  lui r2, 983040
001f90  1f046fef  addli r8, r30, -2128
001f94  97902000  or r1, r1, r2
001f98  ffa08b00  l_gm2lm r1, r8, 0(r[24:25])
001f9c  00a00200  mfence { lm, gm }
001fa0  b3001028  zext_int2long r[1:2], zero
001fa4  e34c0fee  loadli.w r25,  -2300(r30)
001fa8  630dafee  loadli.w r26,  -2224(r30)
001fac  93a01400  seteq.d r1, r[10:11], r[2:3]
001fb0  bb800000  bneq r1, zero, 32
001fb4  00a00000  mfence { lm }
001fb8  9f400000  addli r1, zero, 4
001fbc  2b0100f0  lui r2, 983040
001fc0  1f046fef  addli r8, r30, -2128
001fc4  97902000  or r1, r1, r2
001fc8  ffa08400  l_gm2lm r1, r8, 0(r[10:11])
001fcc  00a00200  mfence { lm, gm }
001fd0  b3001028  zext_int2long r[1:2], zero
001fd4  93a01d00  seteq.d r1, r[28:29], r[2:3]
001fd8  bb800000  bneq r1, zero, 32
001fdc  00a00000  mfence { lm }
001fe0  9f400000  addli r1, zero, 4
001fe4  2b0100f0  lui r2, 983040
001fe8  1f046fef  addli r8, r30, -2128
001fec  97902000  or r1, r1, r2
001ff0  ffa08d00  l_gm2lm r1, r8, 0(r[28:29])
001ff4  00a00200  mfence { lm, gm }
001ff8  e3005f01  loadli.w r1,  168(r30)
001ffc  b7f10000  beq r1, zero, 124
002000  b3001028  zext_int2long r[1:2], zero
002004  93a01800  seteq.d r1, r[18:19], r[2:3]
002008  bb800000  bneq r1, zero, 32
00200c  00a00000  mfence { lm }
002010  9f400000  addli r1, zero, 4
002014  2b0100f0  lui r2, 983040
002018  1f046fef  addli r8, r30, -2128
00201c  97902000  or r1, r1, r2
002020  ffa08800  l_gm2lm r1, r8, 0(r[18:19])
002024  00a00200  mfence { lm, gm }
002028  b3001028  zext_int2long r[1:2], zero
00202c  93201300  seteq.d r1, r[7:8], r[2:3]
002030  bb800000  bneq r1, zero, 32
002034  00a00000  mfence { lm }
002038  9f400000  addli r1, zero, 4
00203c  2b0100f0  lui r2, 983040
002040  1f046fef  addli r8, r30, -2128
002044  97902000  or r1, r1, r2
002048  ff208300  l_gm2lm r1, r8, 0(r[7:8])
00204c  00a00200  mfence { lm, gm }
002050  b3001028  zext_int2long r[1:2], zero
002054  93201200  seteq.d r1, r[5:6], r[2:3]
002058  bb800000  bneq r1, zero, 32
00205c  00a00000  mfence { lm }
002060  9f400000  addli r1, zero, 4
002064  2b0100f0  lui r2, 983040
002068  1f036fef  addli r6, r30, -2128
00206c  97902000  or r1, r1, r2
002070  ff206200  l_gm2lm r1, r6, 0(r[5:6])
002074  00a00200  mfence { lm, gm }
002078  9f006fef  addli r1, r30, -2128
00207c  1f411000  addli r2, zero, 12
002080  1f020000  addli r4, zero, 0
002084  8b924010  add.s r5, r1, r4
002088  1f120200  addli r4, r4, 1
00208c  13032204  setlt.u r6, r4, r2
002090  73800200  store.b zero, 0(r5)
002094  bb4f03fe  bneq r6, zero, -16
002098  e3401f01  loadli.w r1,  140(r30)
00209c  674d3ff6  storeli.w r3, -1068(r30)
0020a0  e70dcff6  storeli.w r12, -1064(r30)
0020a4  e74d5ff7  storeli.w r21, -1060(r30)
0020a8  1f110000  addli r2, zero, 1
0020ac  9bb12000  slli r3, r1, 2
0020b0  9f40aff7  addli r1, r30, -1068
0020b4  8b903010  add.s r1, r1, r3
0020b8  e3800000  loadli.w r1,  0(r1)
0020bc  bfc52004  blt.s r1, r2, 2416
0020c0  63023f02  loadli.w r4,  280(r30)
0020c4  63035f02  loadli.w r6,  296(r30)
0020c8  9f026fef  addli r5, r30, -2128
0020cc  9f431000  addli r7, zero, 12
0020d0  1f242000  addli r8, zero, 18
0020d4  9f342000  addli r9, zero, 19
0020d8  1f350000  addli r10, zero, 3
0020dc  9f250000  addli r11, zero, 2
0020e0  1f060000  addli r12, zero, 0
0020e4  8b913210  add.s r3, r5, r3
0020e8  9f72f3ff  addli r5, r6, -1
0020ec  1f72f2ff  addli r4, r4, -1
0020f0  1f331000  addli r6, zero, 11
0020f4  db010000  j 12
0020f8  1f160600  addli r12, r12, 1
0020fc  b7441604  beq r12, r1, 2352
002100  6780c100  storeli.w r12, 0(r3)
002104  63492fee  loadli.w r18,  -2284(r30)
002108  630a1fee  loadli.w r20,  -2296(r30)
00210c  e3092fee  loadli.w r19,  -2288(r30)
002110  634b6fef  loadli.w r22,  -2124(r30)
002114  e30b6fef  loadli.w r23,  -2128(r30)
002118  e3077fef  loadli.w r15,  -2120(r30)
00211c  0b182b21  mul.s r16, r22, r18
002120  8b983b21  mul.s r17, r23, r19
002124  0b180a19  sub.s r16, r20, r16
002128  630a0fee  loadli.w r20,  -2304(r30)
00212c  0b180941  min.s r16, r18, r16
002130  63491fee  loadli.w r18,  -2292(r30)
002134  8b974721  mul.s r15, r15, r20
002138  0b180848  max.s r16, r16, zero
00213c  8b181919  sub.s r17, r18, r17
002140  6349ffed  loadli.w r18,  -2308(r30)
002144  8b17f918  sub.s r15, r18, r15
002148  63093fee  loadli.w r18,  -2280(r30)
00214c  8b17fa40  min.s r15, r20, r15
002150  8b1a2831  div.s r21, r16, r18
002154  0b981941  min.s r16, r19, r17
002158  e3492fef  loadli.w r19,  -2156(r30)
00215c  8b970748  max.s r15, r15, zero
002160  0b1a0848  max.s r20, r16, zero
002164  1ff9f7ff  addli r18, r15, -1
002168  0b184211  add.s r16, r4, r20
00216c  8b983a11  add.s r17, r21, r19
002170  8b17a831  div.s r15, r16, r26
002174  0b18e910  add.s r16, r18, r14
002178  9ff8f8ff  addli r17, r17, -1
00217c  8b983831  div.s r17, r17, r19
002180  8b19d910  add.s r19, r18, r13
002184  0b19e830  div.s r18, r16, r14
002188  8b99d930  div.s r19, r19, r13
00218c  37e32c00  beq r25, r2, 216
002190  b783ac00  beq r25, r10, 224
002194  bba3bc00  bneq r25, r11, 232
002198  13880b00  seteq r16, r23, zero
00219c  130c0b02  setneq r24, r22, zero
0021a0  17088801  and r16, r16, r24
0021a4  37630800  beq r16, zero, 216
0021a8  bb500b00  bneq r22, zero, 52
0021ac  bfc02700  blt.s r15, r2, 48
0021b0  1f080000  addli r16, zero, 0
0021b4  db010000  j 12
0021b8  1f180800  addli r16, r16, 1
0021bc  b700f800  beq r16, r15, 32
0021c0  1f0a0900  addli r20, r18, 0
0021c4  bf5f29fe  blt.s r18, r2, -12
0021c8  7d100300  xwait r6, 0
0021cc  7d800300  xsignal r7, 0
0021d0  1f7afaff  addli r20, r20, -1
0021d4  bb5f0afe  bneq r20, zero, -12
0021d8  5bfcffff  j -32
0021dc  3ffc28fe  blt.s r17, r2, -228
0021e0  6348afee  loadli.w r16,  -2220(r30)
0021e4  1f0b0000  addli r22, zero, 0
0021e8  9ff7f8ff  addli r15, r17, -1
0021ec  1f0a0000  addli r20, zero, 0
0021f0  1f79f8ff  addli r18, r16, -1
0021f4  db010000  j 12
0021f8  1f1a0a00  addli r20, r20, 1
0021fc  b77b1aff  beq r20, r17, -260
002200  1f880900  addli r16, r19, 0
002204  3fd02900  blt.s r19, r2, 20
002208  7d100300  xwait r6, 0
00220c  7d800300  xsignal r7, 0
002210  1f78f8ff  addli r16, r16, -1
002214  bb5f08fe  bneq r16, zero, -12
002218  1f080900  addli r16, r18, 0
00221c  3720fa00  beq r20, r15, 8
002220  1f080000  addli r16, zero, 0
002224  634c2fef  loadli.w r24,  -2156(r30)
002228  8b1b8a21  mul.s r23, r20, r24
00222c  0b188a51  fmac.s r16, r20, r24
002230  8b9b7a19  sub.s r23, r21, r23
002234  8b1b7c41  min.s r23, r24, r23
002238  0b187811  add.s r16, r16, r23
00223c  e34bafee  loadli.w r23,  -2220(r30)
002240  0b187831  div.s r16, r16, r23
002244  cb5e68ff  ble.s r16, r22, -76
002248  0b1b6819  sub.s r22, r16, r22
00224c  7d100400  xwait r8, 0
002250  7d800400  xsignal r9, 0
002254  1f7bfbff  addli r22, r22, -1
002258  bb5f0bfe  bneq r22, zero, -12
00225c  1f0b0800  addli r22, r16, 0
002260  5bf3ffff  j -104
002264  13880b00  seteq r16, r23, zero
002268  3b0d08fe  bneq r16, zero, -192
00226c  5b020000  j 16
002270  17187b01  or r16, r22, r23
002274  13080800  seteq r16, r16, zero
002278  bb4c08fe  bneq r16, zero, -208
00227c  bbd00b00  bneq r23, zero, 52
002280  bfc02800  blt.s r17, r2, 48
002284  1f080000  addli r16, zero, 0
002288  db010000  j 12
00228c  1f180800  addli r16, r16, 1
002290  b7001801  beq r16, r17, 32
002294  9f8a0900  addli r21, r19, 0
002298  bfdf29fe  blt.s r19, r2, -12
00229c  7d100300  xwait r6, 0
0022a0  7d800300  xsignal r7, 0
0022a4  9ffafaff  addli r21, r21, -1
0022a8  bbdf0afe  bneq r21, zero, -12
0022ac  5bfcffff  j -32
0022b0  3fa927fe  blt.s r15, r2, -440
0022b4  13080b02  setneq r16, r22, zero
0022b8  9b791900  setlti r19, r18, 1
0022bc  9f0b0000  addli r23, zero, 0
0022c0  9ff8f7ff  addli r17, r15, -1
0022c4  9f0a0000  addli r21, zero, 0
0022c8  97193801  or r19, r16, r19
0022cc  db010000  j 12
0022d0  9f9a0a00  addli r21, r21, 1
0022d4  b798fafe  beq r21, r15, -476
0022d8  3be00900  bneq r19, zero, 24
0022dc  1f080900  addli r16, r18, 0
0022e0  7d100300  xwait r6, 0
0022e4  7d800300  xsignal r7, 0
0022e8  1f78f8ff  addli r16, r16, -1
0022ec  bb5f08fe  bneq r16, zero, -12
0022f0  1f880200  addli r16, r5, 0
0022f4  37a01a01  beq r21, r17, 8
0022f8  1f080000  addli r16, zero, 0
0022fc  0b9baa21  mul.s r22, r21, r26
002300  0b98aa51  fmac.s r16, r21, r26
002304  0b1b6a19  sub.s r22, r20, r22
002308  0b1b6d41  min.s r22, r26, r22
00230c  0b186811  add.s r16, r16, r22
002310  630bbfee  loadli.w r22,  -2216(r30)
002314  0b186831  div.s r16, r16, r22
002318  cb6e78ff  ble.s r16, r23, -72
00231c  0b1b7819  sub.s r22, r16, r23
002320  7d100400  xwait r8, 0
002324  7d800400  xsignal r9, 0
002328  1f7bfbff  addli r22, r22, -1
00232c  bb5f0bfe  bneq r22, zero, -12
002330  9f0b0800  addli r23, r16, 0
002334  dbf3ffff  j -100
002338  e3402f01  loadli.w r1,  148(r30)
00233c  67491fee  storeli.w r1, -2156(r30)
002340  e3005f01  loadli.w r1,  168(r30)
002344  b7d10000  beq r1, zero, 116
002348  b3001028  zext_int2long r[1:2], zero
00234c  13a11800  seteq.d r2, r[18:19], r[2:3]
002350  ab00803f  lui r1, 260096
002354  bb100100  bneq r2, zero, 36
002358  00a00000  mfence { lm }
00235c  9f400000  addli r1, zero, 4
002360  2b0100f0  lui r2, 983040
002364  9f04cff7  addli r9, r30, -1056
002368  97902000  or r1, r1, r2
00236c  ffa09800  l_gm2lm r1, r9, 0(r[18:19])
002370  00a00200  mfence { lm, gm }
002374  e300cff7  loadli.w r1,  -1056(r30)
002378  b3049028  zext_int2long r[9:10], zero
00237c  2b01803f  lui r2, 260096
002380  93249300  seteq.d r9, r[7:8], r[10:11]
002384  bb900400  bneq r9, zero, 36
002388  00a00000  mfence { lm }
00238c  1f410000  addli r2, zero, 4
002390  ab0400f0  lui r9, 983040
002394  1f05cff7  addli r10, r30, -1056
002398  17119100  or r2, r2, r9
00239c  7f21a300  l_gm2lm r2, r10, 0(r[7:8])
0023a0  00a00200  mfence { lm, gm }
0023a4  6301cff7  loadli.w r2,  -1056(r30)
0023a8  63422fef  loadli.w r4,  -2156(r30)
0023ac  8b601220  mul.f.rn r1, r4, r1
0023b0  8be02020  mul.f.rn r1, r1, r2
0023b4  67491fee  storeli.w r1, -2156(r30)
0023b8  e3004f01  loadli.w r1,  160(r30)
0023bc  3b810000  bneq r1, zero, 64
0023c0  b3001028  zext_int2long r[1:2], zero
0023c4  13a11c00  seteq.d r2, r[26:27], r[2:3]
0023c8  ab00803f  lui r1, 260096
0023cc  bb100100  bneq r2, zero, 36
0023d0  00a00000  mfence { lm }
0023d4  9f400000  addli r1, zero, 4
0023d8  2b0100f0  lui r2, 983040
0023dc  1f03cff7  addli r6, r30, -1056
0023e0  97902000  or r1, r1, r2
0023e4  ffa06c00  l_gm2lm r1, r6, 0(r[26:27])
0023e8  00a00200  mfence { lm, gm }
0023ec  e300cff7  loadli.w r1,  -1056(r30)
0023f0  63412fef  loadli.w r2,  -2156(r30)
0023f4  0b611120  mul.f.rn r2, r2, r1
0023f8  67492fee  storeli.w r2, -2156(r30)
0023fc  e3404f01  loadli.w r1,  164(r30)
002400  3b810000  bneq r1, zero, 64
002404  b3001028  zext_int2long r[1:2], zero
002408  13a11b00  seteq.d r2, r[24:25], r[2:3]
00240c  ab00803f  lui r1, 260096
002410  bb100100  bneq r2, zero, 36
002414  00a00000  mfence { lm }
002418  9f400000  addli r1, zero, 4
00241c  2b0100f0  lui r2, 983040
002420  1f03cff7  addli r6, r30, -1056
002424  97902000  or r1, r1, r2
002428  ffa06b00  l_gm2lm r1, r6, 0(r[24:25])
00242c  00a00200  mfence { lm, gm }
002430  e300cff7  loadli.w r1,  -1056(r30)
002434  63412fef  loadli.w r2,  -2156(r30)
002438  0b611120  mul.f.rn r2, r2, r1
00243c  67492fee  storeli.w r2, -2156(r30)
002440  b3001028  zext_int2long r[1:2], zero
002444  63034f01  loadli.w r6,  160(r30)
002448  93a31c00  seteq.d r7, r[26:27], r[2:3]
00244c  1f210000  addli r2, zero, 2
002450  1d000100  lock zero, r2
002454  0d000022  ew_cfg zero, zero, zero, 17
002458  9f100000  addli r1, zero, 1
00245c  1d100100  unlock r2
002460  37200300  beq r6, zero, 8
002464  9f000400  addli r1, r8, 0
002468  1f030000  addli r6, zero, 0
00246c  3ba00300  bneq r7, zero, 8
002470  1f830000  addli r6, r1, 0
002474  eb508f02  load.d r[2:3], 40(r30)
002478  73349fbf  store.d r[26:27], -1048(r30)
00247c  3bc10300  bneq r7, zero, 80
002480  e3034f01  loadli.w r7,  160(r30)
002484  1f140000  addli r8, zero, 1
002488  3b918300  bneq r7, r8, 68
00248c  37010300  beq r6, zero, 64
002490  9f030002  addli r7, zero, 256
002494  670e6ff6  storeli.w r6, -1056(r30)
002498  9f04cff7  addli r9, r30, -1056
00249c  00a00000  mfence { lm }
0024a0  0b137340  min.s r6, r6, r7
0024a4  eb538fbe  load.d r[8:9], -1048(r30)
0024a8  2b0500f0  lui r10, 983040
0024ac  9f842400  addli r9, r9, 16
0024b0  1b332300  slli r6, r6, 2
0024b4  1713a300  or r6, r6, r10
0024b8  7fa39300  l_gm2lm r6, r9, 0(r[8:9])
0024bc  33036028  zext_int2long r[6:7], zero
0024c0  00a00200  mfence { lm, gm }
0024c4  73386ffe  store.d r[7:8], -16(r30)
0024c8  5b010000  j 8
0024cc  670e0ff6  storeli.w zero, -1056(r30)
0024d0  6b520f03  load.d r[5:6], 48(r30)
0024d4  9f03bfee  addli r7, r30, -2216
0024d8  63041f03  loadli.w r8,  392(r30)
0024dc  1f030000  addli r6, zero, 0
0024e0  670b0fee  storeli.w zero, -2128(r30)
0024e4  73b04300  store.d r[5:6], 0(r7)
0024e8  1f027fef  addli r4, r30, -2120
0024ec  73301200  store.d r[2:3], 0(r4)
0024f0  9f40aff7  addli r1, r30, -1068
0024f4  1f411000  addli r2, zero, 12
0024f8  8b936010  add.s r7, r1, r6
0024fc  1f130300  addli r6, r6, 1
002500  93042304  setlt.u r9, r6, r2
002504  73800300  store.b zero, 0(r7)
002508  bbcf04fe  bneq r9, zero, -16
00250c  e3401f01  loadli.w r1,  140(r30)
002510  1f414fef  addli r2, r30, -2140
002514  674a3fee  storeli.w r3, -2140(r30)
002518  e70acfee  storeli.w r12, -2136(r30)
00251c  e74a5fef  storeli.w r21, -2132(r30)
002520  9f110000  addli r3, zero, 1
002524  9bb02000  slli r1, r1, 2
002528  0b111110  add.s r2, r2, r1
00252c  63010100  loadli.w r2,  0(r2)
002530  67472fee  storeli.w r2, -2188(r30)
002534  3f123102  blt.s r2, r3, 1156
002538  63413f01  loadli.w r2,  156(r30)
00253c  9f43aff7  addli r7, r30, -1068
002540  63435f02  loadli.w r6,  300(r30)
002544  1f060000  addli r12, zero, 0
002548  1f0b0000  addli r22, zero, 0
00254c  9f4c2000  addli r25, zero, 20
002550  1f7d3000  addli r26, zero, 31
002554  9f2d0000  addli r27, zero, 2
002558  9f154000  addli r11, zero, 33
00255c  8b901310  add.s r1, r7, r1
002560  9f036fef  addli r7, r30, -2128
002564  1b08f100  andi r16, r2, 15
002568  1f01cff7  addli r2, r30, -1056
00256c  9b3b7300  slli r23, r6, 7
002570  e7061fee  storeli.w r1, -2200(r30)
002574  9ff0faff  addli r1, r21, -1
002578  1f012100  addli r2, r2, 16
00257c  e7472fee  storeli.w r2, -2180(r30)
002580  1f812300  addli r2, r7, 16
002584  9f030000  addli r7, zero, 0
002588  e7072fee  storeli.w r2, -2184(r30)
00258c  1f71f3ff  addli r2, r6, -1
002590  67462fee  storeli.w r2, -2204(r30)
002594  5b040000  j 32
002598  1f112000  addli r2, zero, 17
00259c  7d000100  xsignal r2, 0
0025a0  1f160600  addli r12, r12, 1
0025a4  1f613000  addli r2, zero, 30
0025a8  7d000100  xsignal r2, 0
0025ac  6341efee  loadli.w r2,  -2188(r30)
0025b0  37202602  beq r12, r2, 1032
0025b4  6301dfee  loadli.w r2,  -2200(r30)
0025b8  63422fee  loadli.w r4,  -2284(r30)
0025bc  e3021fee  loadli.w r5,  -2296(r30)
0025c0  63090fef  loadli.w r18,  -2176(r30)
0025c4  6700c100  storeli.w r12, 0(r2)
0025c8  e304bff7  loadli.w r9,  -1064(r30)
0025cc  6345aff7  loadli.w r10,  -1068(r30)
0025d0  0b914420  mul.s r2, r9, r4
0025d4  0b97a410  add.s r14, r9, r10
0025d8  0b912218  sub.s r2, r5, r2
0025dc  e3022fee  loadli.w r5,  -2288(r30)
0025e0  0b112240  min.s r2, r4, r2
0025e4  63421fee  loadli.w r4,  -2292(r30)
0025e8  8b175520  mul.s r15, r10, r5
0025ec  8b180148  max.s r17, r2, zero
0025f0  63411fef  loadli.w r2,  -2164(r30)
0025f4  8b17f218  sub.s r15, r4, r15
0025f8  63023fee  loadli.w r4,  -2280(r30)
0025fc  8b192738  mod.s r19, r14, r2
002600  0b91f240  min.s r2, r5, r15
002604  6347bff7  loadli.w r14,  -1060(r30)
002608  8b9a4830  div.s r21, r17, r4
00260c  63022fef  loadli.w r4,  -2160(r30)
002610  e348efed  loadli.w r17,  -2316(r30)
002614  0b1a0148  max.s r20, r2, zero
002618  8b185550  fmac.s r17, r10, r5
00261c  0b994950  fmac.s r18, r19, r4
002620  63420fee  loadli.w r4,  -2300(r30)
002624  b7073200  beq r4, r3, 480
002628  9f320000  addli r5, zero, 3
00262c  b7175200  beq r4, r5, 484
002630  bb37b201  bneq r4, r27, 492
002634  13050500  seteq r10, r10, zero
002638  93840402  setneq r9, r9, zero
00263c  97049500  and r9, r10, r9
002640  37f70400  beq r9, zero, 476
002644  6342afee  loadli.w r4,  -2220(r30)
002648  8b944a10  add.s r9, r21, r4
00264c  9ff4f4ff  addli r9, r9, -1
002650  8b994430  div.s r19, r9, r4
002654  3f9d39fe  blt.s r19, r3, -188
002658  1f020002  addli r4, zero, 256
00265c  9b375a00  slli r15, r20, 5
002660  1f0e0000  addli r28, zero, 0
002664  8b944830  div.s r9, r17, r4
002668  1bbc8400  slli r24, r9, 8
00266c  db030000  j 28
002670  9f830400  addli r7, r9, 0
002674  6342afee  loadli.w r4,  -2220(r30)
002678  9ff9f9ff  addli r19, r19, -1
00267c  8b9a4a18  sub.s r21, r21, r4
002680  0b1e4e10  add.s r28, r28, r4
002684  37dc09fe  beq r19, zero, -236
002688  7d900c00  xwait r25, 0
00268c  7d100d00  xwait r26, 0
002690  bb1f17fe  bneq r14, r1, -28
002694  bf0f31fe  blt.s r2, r3, -32
002698  9b84f30f  andi r9, r7, 255
00269c  37b00400  beq r9, zero, 12
0026a0  1f024000  addli r4, zero, 32
0026a4  7d100200  xwait r4, 0
0026a8  e304cff7  loadli.w r9,  -1056(r30)
0026ac  37e10400  beq r9, zero, 88
0026b0  3fd11401  blt.s r9, r17, 84
0026b4  6305efff  loadli.w r10,  -16(r30)
0026b8  3fb0a800  blt.s r17, r10, 12
0026bc  1f050502  addli r10, r10, 256
0026c0  3f91a800  blt.s r17, r10, 68
0026c4  670f8fff  storeli.w r24, -16(r30)
0026c8  8b948419  sub.s r9, r9, r24
0026cc  1f020002  addli r4, zero, 256
0026d0  00a00000  mfence { lm }
0026d4  8b944440  min.s r9, r9, r4
0026d8  6b650fff  loadext.w r[11:12], -16(r30)
0026dc  6b528fbe  load.d r[5:6], -1048(r30)
0026e0  2b0300f0  lui r6, 983040
0026e4  9bb42400  slli r9, r9, 2
0026e8  1735b503  sll.d r[11:12], r[11:12], r27
0026ec  17936400  or r6, r9, r6
0026f0  e344ffee  loadli.w r9,  -2180(r30)
0026f4  0b22a210  add.ul r[5:6], r[5:6], r[11:12]
0026f8  9f154000  addli r11, zero, 33
0026fc  7f239200  l_gm2lm r6, r9, 0(r[5:6])
002700  00a00200  mfence { lm, gm }
002704  e3046fef  loadli.w r9,  -2128(r30)
002708  37f10400  beq r9, zero, 92
00270c  3fe11401  blt.s r9, r17, 88
002710  63058ff7  loadli.w r10,  -1088(r30)
002714  3fb0a800  blt.s r17, r10, 12
002718  1f020502  addli r4, r10, 256
00271c  3fa14800  blt.s r17, r4, 72
002720  670c8ff7  storeli.w r24, -1088(r30)
002724  0b928419  sub.s r4, r9, r24
002728  9f040002  addli r9, zero, 256
00272c  9f057fef  addli r11, r30, -2120
002730  00a00000  mfence { lm }
002734  eb620fbc  loadext.w r[6:7], -1088(r30)
002738  0b129240  min.s r4, r4, r9
00273c  ebd40500  load.d r[10:11], 0(r11)
002740  ab0500f0  lui r11, 983040
002744  1b322200  slli r4, r4, 2
002748  97b2b203  sll.d r[6:7], r[6:7], r27
00274c  1712b200  or r4, r4, r11
002750  9f154000  addli r11, zero, 33
002754  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
002758  e304ffee  loadli.w r9,  -2184(r30)
00275c  7fa29200  l_gm2lm r4, r9, 0(r[6:7])
002760  00a00200  mfence { lm, gm }
002764  6342afee  loadli.w r4,  -2220(r30)
002768  1d800d00  lock zero, r27
00276c  8d010020  ew_cfg r3, zero, zero, 16
002770  0d000002  ew_cfg zero, zero, zero, 1
002774  8b145241  min.s r9, r4, r21
002778  bf813400  blt.s r9, r3, 96
00277c  1f024000  addli r4, zero, 32
002780  9ff2f4ff  addli r5, r9, -1
002784  63433fef  loadli.w r6,  -2148(r30)
002788  e3043fef  loadli.w r9,  -2152(r30)
00278c  0d800204  ew_cfg zero, r5, zero, 2
002790  8d010006  ew_cfg r3, zero, zero, 3
002794  8d010000  ew_cfg r3, zero, zero, 0
002798  0d080014  ew_cfg r16, zero, zero, 10
00279c  63452fef  loadli.w r10,  -2156(r30)
0027a0  0d150000  ewcoeff_cfg r10, zero, zero, 0
0027a4  0d0a0006  ew_cfg r20, zero, zero, 3
0027a8  0b124e30  div.s r4, r28, r4
0027ac  0b136b38  mod.s r6, r22, r6
0027b0  9b325200  slli r5, r4, 5
0027b4  8b125e18  sub.s r5, r28, r5
0027b8  8b924750  fmac.s r5, r15, r4
0027bc  1bb22200  slli r4, r5, 2
0027c0  e3024fef  loadli.w r5,  -2144(r30)
0027c4  0d0a4a27  ew_cfg r20, r20, r20, 19
0027c8  0b122211  add.s r4, r4, r18
0027cc  8b145350  fmac.s r9, r6, r5
0027d0  ad044200  dsmadd r9, r4, r4, 0
0027d4  0d000000  ew_cfg zero, zero, zero, 0
0027d8  0d000026  ew_cfg zero, zero, zero, 19
0027dc  0d000020  ew_cfg zero, zero, zero, 16
0027e0  1d900d00  unlock r27
0027e4  1f150b00  addli r10, r22, 1
0027e8  7d800500  xsignal r11, 0
0027ec  9f140000  addli r9, zero, 1
0027f0  1f0b0000  addli r22, zero, 0
0027f4  b77985fe  beq r10, r8, -388
0027f8  9f840300  addli r9, r7, 0
0027fc  1f0b0500  addli r22, r10, 0
002800  5bceffff  j -400
002804  93040500  seteq r9, r10, zero
002808  bbf804fe  bneq r9, zero, -452
00280c  5b020000  j 16
002810  9794a400  or r9, r9, r10
002814  93840400  seteq r9, r9, zero
002818  bbb804fe  bneq r9, zero, -468
00281c  6341cfee  loadli.w r2,  -2204(r30)
002820  0b114111  add.s r2, r2, r20
002824  0b11d130  div.s r2, r2, r13
002828  bf4531fe  blt.s r2, r3, -656
00282c  9ff9faff  addli r19, r21, -1
002830  9f070a00  addli r15, r20, 0
002834  db030000  j 28
002838  9f830400  addli r7, r9, 0
00283c  0b197911  add.s r18, r18, r23
002840  8b98d810  add.s r17, r17, r13
002844  1f71f1ff  addli r2, r2, -1
002848  8b97d718  sub.s r15, r15, r13
00284c  373501fe  beq r2, zero, -692
002850  7d900c00  xwait r25, 0
002854  7d100d00  xwait r26, 0
002858  bb2f17fe  bneq r14, r1, -24
00285c  0b9cf640  min.s r24, r13, r15
002860  3f7f3cfe  blt.s r24, r3, -36
002864  1b82f30f  andi r4, r7, 255
002868  37300200  beq r4, zero, 12
00286c  1f024000  addli r4, zero, 32
002870  7d100200  xwait r4, 0
002874  e304cff7  loadli.w r9,  -1056(r30)
002878  b7810400  beq r9, zero, 96
00287c  3ff11401  blt.s r9, r17, 92
002880  6305efff  loadli.w r10,  -16(r30)
002884  3fb0a800  blt.s r17, r10, 12
002888  1f020502  addli r4, r10, 256
00288c  3fb14800  blt.s r17, r4, 76
002890  9f020002  addli r5, zero, 256
002894  0b925830  div.s r4, r17, r5
002898  1b328200  slli r4, r4, 8
00289c  670f4ffe  storeli.w r4, -16(r30)
0028a0  0b924418  sub.s r4, r9, r4
0028a4  00a00000  mfence { lm }
0028a8  0b125240  min.s r4, r4, r5
0028ac  eb620fff  loadext.w r[6:7], -16(r30)
0028b0  eb548fbe  load.d r[10:11], -1048(r30)
0028b4  ab0500f0  lui r11, 983040
0028b8  1b322200  slli r4, r4, 2
0028bc  97b2b203  sll.d r[6:7], r[6:7], r27
0028c0  1712b200  or r4, r4, r11
0028c4  9f154000  addli r11, zero, 33
0028c8  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
0028cc  e344ffee  loadli.w r9,  -2180(r30)
0028d0  7fa29200  l_gm2lm r4, r9, 0(r[6:7])
0028d4  00a00200  mfence { lm, gm }
0028d8  e3046fef  loadli.w r9,  -2128(r30)
0028dc  b7910400  beq r9, zero, 100
0028e0  bf811401  blt.s r9, r17, 96
0028e4  63058ff7  loadli.w r10,  -1088(r30)
0028e8  3fb0a800  blt.s r17, r10, 12
0028ec  1f020502  addli r4, r10, 256
0028f0  3fc14800  blt.s r17, r4, 80
0028f4  9f020002  addli r5, zero, 256
0028f8  1f0e7fef  addli r28, r30, -2120
0028fc  0b925830  div.s r4, r17, r5
002900  1b328200  slli r4, r4, 8
002904  670c4ff6  storeli.w r4, -1088(r30)
002908  0b924418  sub.s r4, r9, r4
00290c  00a00000  mfence { lm }
002910  0b125240  min.s r4, r4, r5
002914  eb620fbc  loadext.w r[6:7], -1088(r30)
002918  eb540e00  load.d r[10:11], 0(r28)
00291c  ab0500f0  lui r11, 983040
002920  1b322200  slli r4, r4, 2
002924  97b2b203  sll.d r[6:7], r[6:7], r27
002928  1712b200  or r4, r4, r11
00292c  9f154000  addli r11, zero, 33
002930  8ba25410  add.ul r[6:7], r[10:11], r[6:7]
002934  e304ffee  loadli.w r9,  -2184(r30)
002938  7fa29200  l_gm2lm r4, r9, 0(r[6:7])
00293c  00a00200  mfence { lm, gm }
002940  1d800d00  lock zero, r27
002944  8d010020  ew_cfg r3, zero, zero, 16
002948  0d000002  ew_cfg zero, zero, zero, 1
00294c  3f813a00  blt.s r21, r3, 64
002950  63423fef  loadli.w r4,  -2148(r30)
002954  e3023fef  loadli.w r5,  -2152(r30)
002958  0d800904  ew_cfg zero, r19, zero, 2
00295c  8d010006  ew_cfg r3, zero, zero, 3
002960  8d010000  ew_cfg r3, zero, zero, 0
002964  0d080014  ew_cfg r16, zero, zero, 10
002968  63432fef  loadli.w r6,  -2156(r30)
00296c  0d130000  ewcoeff_cfg r6, zero, zero, 0
002970  63034fef  loadli.w r6,  -2144(r30)
002974  0d0c0006  ew_cfg r24, zero, zero, 3
002978  0d0c4a27  ew_cfg r24, r20, r20, 19
00297c  0b124b38  mod.s r4, r22, r4
002980  8b126250  fmac.s r5, r4, r6
002984  ad022901  dsmadd r5, r18, r18, 0
002988  0d000000  ew_cfg zero, zero, zero, 0
00298c  0d000026  ew_cfg zero, zero, zero, 19
002990  0d000020  ew_cfg zero, zero, zero, 16
002994  1d900d00  unlock r27
002998  1f150b00  addli r10, r22, 1
00299c  7d800500  xsignal r11, 0
0029a0  9f140000  addli r9, zero, 1
0029a4  1f0b0000  addli r22, zero, 0
0029a8  374a85fe  beq r10, r8, -368
0029ac  9f840300  addli r9, r7, 0
0029b0  1f0b0500  addli r22, r10, 0
0029b4  dbd0ffff  j -380
0029b8  9f01bfee  addli r3, r30, -2216
0029bc  b3001028  zext_int2long r[1:2], zero
0029c0  ebd50100  load.d r[12:13], 0(r3)
0029c4  93a01500  seteq.d r1, r[12:13], r[2:3]
0029c8  bb910000  bneq r1, zero, 100
0029cc  6302afee  loadli.w r4,  -2224(r30)
0029d0  1f311000  addli r2, zero, 11
0029d4  9f200000  addli r1, zero, 2
0029d8  1d800000  lock zero, r1
0029dc  dd810000  ld_sd_rdout r3, r1, zero, 0
0029e0  670e3ff6  storeli.w r3, -1056(r30)
0029e4  1d900000  unlock r1
0029e8  00a00000  mfence { lm }
0029ec  13014104  setlt.u r2, r2, r4
0029f0  bb700100  bneq r2, zero, 60
0029f4  1f01cff7  addli r2, r30, -1056
0029f8  9f410000  addli r3, zero, 4
0029fc  80d20002  load_param_i r5, 1
002a00  1f431000  addli r6, zero, 12
002a04  b3037228  zext_int2long r[7:8], r4
002a08  0b924210  add.s r4, r5, r4
002a0c  ab0400f0  lui r9, 983040
002a10  97b31302  sll.d r[8:9], r[8:9], r1
002a14  13056204  setlt.u r10, r4, r6
002a18  97949100  or r9, r3, r9
002a1c  8ba37510  add.ul r[8:9], r[12:13], r[8:9]
002a20  ffb42300  s_lm2gm r9, r2, 0(r[8:9])
002a24  00a00200  mfence { lm, gm }
002a28  3b7f05fe  bneq r10, zero, -36
002a2c  7d000000  xsignal zero, 0
002a30  80300002  core_id r1
002a34  3be00000  bneq r1, zero, 24
002a38  80500102  load_param_i r1, 2
002a3c  7d100000  xwait zero, 0
002a40  9ff0f0ff  addli r1, r1, -1
002a44  bbef00fe  bneq r1, zero, -8
002a48  7d400000  xsignal_mode_cfg zero
002a4c  9f0e2fed  addli sp, r30, -2416
002a50  9f8eee12  addli sp, sp, 2416
002a54  00a00300  mfence { lm, sm, gm }
002a58  00100000  exit
002a5c  00000000  nop
