; SHA-256 cb948ed6ef876789d8339911c7680fbf812fdc1e380918aea886aeee10f3dc9f
; P800 Cluster · XTDK LLVM 19 · 5850 / 5850 words decoded
; bound names: _tle_row_softmax
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
000078  9f09d000  addli r19, zero, 104
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
0000ac  d71c0000  jal 228
0000b0  fe8007e0  vmmov mr1, r15
0000b4  fe900720  vmmovh mr1, r15
0000b8  1f8a0eff  addli r20, sp, -128
0000bc  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
0000c0  ca108002  vloads_mask16.mz vr1{mr1}, 64(zero)
0000c4  46000a02  vstore.mz vr0{mr1}, 0(r20)
0000c8  46041a02  vstore.mz vr1{mr1}, 64(r20)
0000cc  00a00100  mfence { lm, sm }
0000d0  00d00100  sync_group
0000d4  97a01000  xor r1, r1, r1
0000d8  1f8f0e00  addli r30, sp, 0
0000dc  d71c0000  jal 228
0000e0  00400000  trap
0000e4  9f8e8ecb  addli sp, sp, -6720
0000e8  2b010000  lui r2, 0
0000ec  00320002  core_id r4
0000f0  ab600000  lui r1, 6
0000f4  1f8f8e33  addli r30, sp, 6592
0000f8  abf30000  lui r7, 15
0000fc  805a0002  load_param_i r21, 0
000100  9b312200  slli r3, r4, 2
000104  1f010100  addli r2, r2, 0
000108  9b900001  ori r1, r1, 16
00010c  e304cf00  loadli.w r9,  96(r30)
000110  6343bf00  loadli.w r6,  92(r30)
000114  1b9af3ff  ori r20, r7, 4095
000118  6344cf00  loadli.w r8,  100(r30)
00011c  8b123110  add.s r5, r2, r3
000120  0b951210  add.s r10, r5, r1
000124  9f820240  addli r5, r5, 8192
000128  e700afce  storeli.w r10, -6392(r30)
00012c  73600500  stores.w zero, 0(r10)
000130  00a00300  mfence { lm, sm, gm }
000134  80210a04  csr_set csr3, r20
000138  00d00100  sync_group
00013c  67405fce  storeli.w r5, -6396(r30)
000140  73e00200  stores.w zero, 0(r5)
000144  8b926420  mul.s r5, r9, r6
000148  00a00300  mfence { lm, sm, gm }
00014c  80210a04  csr_set csr3, r20
000150  00d00100  sync_group
000154  8b928220  mul.s r5, r5, r8
000158  67005fce  storeli.w r5, -6400(r30)
00015c  cbfe522b  ble.s r5, r21, 22460
000160  1b0b3200  andi r22, r4, 3
000164  6b540f03  load.d r[9:10], 48(r30)
000168  9f1b0000  addli r23, zero, 1
00016c  63055f00  loadli.w r10,  40(r30)
000170  eb550f02  load.d r[12:13], 32(r30)
000174  9f090004  addli r19, zero, 512
000178  1b422200  srli r4, r4, 2
00017c  e3471f00  loadli.w r15,  12(r30)
000180  e3438f00  loadli.w r7,  68(r30)
000184  eb568f01  load.d r[14:15], 24(r30)
000188  eb520f05  load.d r[6:7], 80(r30)
00018c  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000190  e74f4fcd  storeli.w r20, -6404(r30)
000194  1b389b00  slli r16, r22, 9
000198  e70f6fcd  storeli.w r22, -6408(r30)
00019c  b3080828  zext_int2long r[18:19], r16
0001a0  0b150519  sub.s r10, r10, r16
0001a4  0b341421  mul.sl r[9:10], r[9:10], r[18:19]
0001a8  0b150548  max.s r10, r10, zero
0001ac  17347403  sll.d r[9:10], r[9:10], r23
0001b0  0ba48510  add.ul r[9:10], r[12:13], r[9:10]
0001b4  9f05efcd  addli r11, r30, -6416
0001b8  73b08500  store.d r[9:10], 0(r11)
0001bc  00d40002  load_param_i r8, 1
0001c0  9b04f200  andi r9, r4, 15
0001c4  e74e8fcc  storeli.w r8, -6420(r30)
0001c8  0b143541  min.s r8, r10, r19
0001cc  674e9fcc  storeli.w r9, -6428(r30)
0001d0  1b341400  slli r8, r8, 1
0001d4  e70e8fcc  storeli.w r8, -6424(r30)
0001d8  2bf4ffff  lui r8, 1048575
0001dc  1b1204ff  ori r4, r8, 4080
0001e0  0b940719  sub.s r8, r15, r16
0001e4  97814100  and r3, r3, r4
0001e8  0b120448  max.s r4, r8, zero
0001ec  33840428  zext_int2long r[9:10], r9
0001f0  0b113110  add.s r2, r2, r3
0001f4  9f01bfcd  addli r3, r30, -6440
0001f8  73b08100  store.d r[9:10], 0(r3)
0001fc  8b113241  min.s r3, r4, r19
000200  8b101110  add.s r1, r2, r1
000204  0bb41621  mul.sl r[9:10], r[14:15], r[18:19]
000208  1f02afcd  addli r4, r30, -6448
00020c  9bb11100  slli r3, r3, 1
000210  e7401fce  storeli.w r1, -6388(r30)
000214  73308200  store.d r[9:10], 0(r4)
000218  1f020140  addli r4, r2, 8192
00021c  1f040ff6  addli r8, r30, -1280
000220  e74c3fcc  storeli.w r3, -6452(r30)
000224  8b910319  sub.s r3, r7, r16
000228  67014fce  storeli.w r4, -6384(r30)
00022c  1f028fcd  addli r4, r30, -6464
000230  8b910148  max.s r3, r3, zero
000234  8b903141  min.s r1, r3, r19
000238  0bb11221  mul.sl r[3:4], r[6:7], r[18:19]
00023c  9bb01000  slli r1, r1, 1
000240  73302200  store.d r[3:4], 0(r4)
000244  e74b1fcc  storeli.w r1, -6468(r30)
000248  9f008fcc  addli r1, r30, -6592
00024c  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
000250  5b0a0000  j 80
000254  1f03efed  addli r6, r30, -2320
000258  6b518f04  load.d r[3:4], 72(r30)
00025c  6b520300  load.d r[5:6], 0(r6)
000260  1f038fcd  addli r6, r30, -6464
000264  0b312220  mul.sl r[3:4], r[5:6], r[3:4]
000268  6b520300  load.d r[5:6], 0(r6)
00026c  0b214110  add.ul r[3:4], r[3:4], r[5:6]
000270  eb528f03  load.d r[6:7], 56(r30)
000274  2b0200f0  lui r4, 983040
000278  17317103  sll.d r[3:4], r[3:4], r23
00027c  97904000  or r1, r1, r4
000280  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
000284  ff308100  s_lm2gm r1, r8, 0(r[3:4])
000288  e340dfcd  loadli.w r1,  -6420(r30)
00028c  00a00000  mfence { lm }
000290  8b9a1a10  add.s r21, r21, r1
000294  e3000fce  loadli.w r1,  -6400(r30)
000298  3fa01a00  blt.s r21, r1, 8
00029c  dbcf0a00  j 22140
0002a0  e340cf00  loadli.w r1,  100(r30)
0002a4  6301cf00  loadli.w r2,  96(r30)
0002a8  9f03bfcd  addli r7, r30, -6440
0002ac  2b0200f0  lui r4, 983040
0002b0  e74f5fed  storeli.w r21, -2308(r30)
0002b4  ebd20300  load.d r[6:7], 0(r7)
0002b8  9f03efed  addli r7, r30, -2320
0002bc  8b901a30  div.s r1, r21, r1
0002c0  8b902030  div.s r1, r1, r2
0002c4  9bb04000  slli r1, r1, 4
0002c8  33910028  sext_int2long r[3:4], r1
0002cc  97125102  or.d r[6:7], r[3:4], r[6:7]
0002d0  6301dfcd  loadli.w r2,  -6424(r30)
0002d4  73b05300  store.d r[6:7], 0(r7)
0002d8  9f03efcd  addli r7, r30, -6416
0002dc  17114100  or r2, r2, r4
0002e0  eb510f01  load.d r[4:5], 16(r30)
0002e4  8bb13220  mul.sl r[4:5], r[6:7], r[4:5]
0002e8  ebd20300  load.d r[6:7], 0(r7)
0002ec  9f030fee  addli r7, r30, -2304
0002f0  7fa17200  l_gm2lm r2, r7, 0(r[6:7])
0002f4  1f01afcd  addli r2, r30, -6448
0002f8  eb520100  load.d r[6:7], 0(r2)
0002fc  00a00000  mfence { lm }
000300  0ba15110  add.ul r[3:4], r[4:5], r[6:7]
000304  6342cfcd  loadli.w r4,  -6428(r30)
000308  17317103  sll.d r[3:4], r[3:4], r23
00030c  17934000  or r6, r1, r4
000310  6b520f00  load.d r[5:6], 0(r30)
000314  e74e6fec  storeli.w r6, -2324(r30)
000318  8b202210  add.ul r[2:3], r[5:6], r[3:4]
00031c  e3419fcd  loadli.w r3,  -6452(r30)
000320  63021f00  loadli.w r4,  8(r30)
000324  3f204300  blt.s r6, r4, 8
000328  9f010000  addli r3, zero, 0
00032c  9f020fee  addli r5, r30, -2304
000330  1f236fee  addli r6, r30, -2254
000334  1f0e0ff6  addli r28, r30, -1280
000338  6bb20200  load.hu r4, 0(r5)
00033c  9f220fee  addli r5, r30, -2302
000340  e70e4fda  storeli.w r4, -4632(r30)
000344  6bb20200  load.hu r4, 0(r5)
000348  9f420fee  addli r5, r30, -2300
00034c  674e4fda  storeli.w r4, -4636(r30)
000350  6bb20200  load.hu r4, 0(r5)
000354  9f620fee  addli r5, r30, -2298
000358  e70f4fda  storeli.w r4, -4616(r30)
00035c  6bb20200  load.hu r4, 0(r5)
000360  9f021fee  addli r5, r30, -2296
000364  674f4fda  storeli.w r4, -4620(r30)
000368  6bb20200  load.hu r4, 0(r5)
00036c  9f221fee  addli r5, r30, -2294
000370  67464fdc  storeli.w r4, -4508(r30)
000374  6bb20200  load.hu r4, 0(r5)
000378  9f421fee  addli r5, r30, -2292
00037c  67064fdc  storeli.w r4, -4512(r30)
000380  6bb20200  load.hu r4, 0(r5)
000384  9f621fee  addli r5, r30, -2290
000388  67474fdc  storeli.w r4, -4492(r30)
00038c  6bb20200  load.hu r4, 0(r5)
000390  9f022fee  addli r5, r30, -2288
000394  67074fdc  storeli.w r4, -4496(r30)
000398  6bb20200  load.hu r4, 0(r5)
00039c  9f222fee  addli r5, r30, -2286
0003a0  67484fdc  storeli.w r4, -4476(r30)
0003a4  6bb20200  load.hu r4, 0(r5)
0003a8  9f422fee  addli r5, r30, -2284
0003ac  67084fdc  storeli.w r4, -4480(r30)
0003b0  6bb20200  load.hu r4, 0(r5)
0003b4  9f622fee  addli r5, r30, -2282
0003b8  67494fdc  storeli.w r4, -4460(r30)
0003bc  6bb20200  load.hu r4, 0(r5)
0003c0  9f023fee  addli r5, r30, -2280
0003c4  67094fdc  storeli.w r4, -4464(r30)
0003c8  6bb20200  load.hu r4, 0(r5)
0003cc  9f223fee  addli r5, r30, -2278
0003d0  674a4fdc  storeli.w r4, -4444(r30)
0003d4  6bb20200  load.hu r4, 0(r5)
0003d8  9f423fee  addli r5, r30, -2276
0003dc  670a4fdc  storeli.w r4, -4448(r30)
0003e0  6bb20200  load.hu r4, 0(r5)
0003e4  9f623fee  addli r5, r30, -2274
0003e8  674b4fdc  storeli.w r4, -4428(r30)
0003ec  6bb20200  load.hu r4, 0(r5)
0003f0  9f024fee  addli r5, r30, -2272
0003f4  670b4fdc  storeli.w r4, -4432(r30)
0003f8  6bb20200  load.hu r4, 0(r5)
0003fc  9f224fee  addli r5, r30, -2270
000400  00a00000  mfence { lm }
000404  67004fde  storeli.w r4, -4352(r30)
000408  6bb20200  load.hu r4, 0(r5)
00040c  9f424fee  addli r5, r30, -2268
000410  670c4fdc  storeli.w r4, -4416(r30)
000414  6bb20200  load.hu r4, 0(r5)
000418  9f624fee  addli r5, r30, -2266
00041c  67004fe0  storeli.w r4, -4096(r30)
000420  6bb20200  load.hu r4, 0(r5)
000424  9f025fee  addli r5, r30, -2264
000428  670c4fde  storeli.w r4, -4160(r30)
00042c  6bb20200  load.hu r4, 0(r5)
000430  9f225fee  addli r5, r30, -2262
000434  67084fe2  storeli.w r4, -3712(r30)
000438  6bb20200  load.hu r4, 0(r5)
00043c  9f425fee  addli r5, r30, -2260
000440  67044fe2  storeli.w r4, -3776(r30)
000444  6bb20200  load.hu r4, 0(r5)
000448  9f625fee  addli r5, r30, -2258
00044c  67084fe6  storeli.w r4, -3200(r30)
000450  6bb20200  load.hu r4, 0(r5)
000454  9f026fee  addli r5, r30, -2256
000458  67044fe6  storeli.w r4, -3264(r30)
00045c  6bb20200  load.hu r4, 0(r5)
000460  ab0200f0  lui r5, 983040
000464  97915100  or r3, r3, r5
000468  67084fea  storeli.w r4, -2688(r30)
00046c  6b320300  load.hu r4, 0(r6)
000470  1f436fee  addli r6, r30, -2252
000474  ffa18000  l_gm2lm r3, r8, 0(r[2:3])
000478  9f606fee  addli r1, r30, -2250
00047c  1f21cfee  addli r2, r30, -2206
000480  eb310f90  load.hu r3, -1792(r30)
000484  eb320300  load.hu r5, 0(r6)
000488  6bb30000  load.hu r6, 0(r1)
00048c  9f007fee  addli r1, r30, -2248
000490  ebb30000  load.hu r7, 0(r1)
000494  9f207fee  addli r1, r30, -2246
000498  6bb40000  load.hu r8, 0(r1)
00049c  9f407fee  addli r1, r30, -2244
0004a0  ebb40000  load.hu r9, 0(r1)
0004a4  9f607fee  addli r1, r30, -2242
0004a8  6bb50000  load.hu r10, 0(r1)
0004ac  9f008fee  addli r1, r30, -2240
0004b0  ebb50000  load.hu r11, 0(r1)
0004b4  9f208fee  addli r1, r30, -2238
0004b8  6bb60000  load.hu r12, 0(r1)
0004bc  9f408fee  addli r1, r30, -2236
0004c0  ebb60000  load.hu r13, 0(r1)
0004c4  9f608fee  addli r1, r30, -2234
0004c8  6bb70000  load.hu r14, 0(r1)
0004cc  9f009fee  addli r1, r30, -2232
0004d0  ebb70000  load.hu r15, 0(r1)
0004d4  9f209fee  addli r1, r30, -2230
0004d8  6bb80000  load.hu r16, 0(r1)
0004dc  9f409fee  addli r1, r30, -2228
0004e0  ebb80000  load.hu r17, 0(r1)
0004e4  9f609fee  addli r1, r30, -2226
0004e8  6bb90000  load.hu r18, 0(r1)
0004ec  9f00afee  addli r1, r30, -2224
0004f0  ebb90000  load.hu r19, 0(r1)
0004f4  9f20afee  addli r1, r30, -2222
0004f8  6bba0000  load.hu r20, 0(r1)
0004fc  9f40afee  addli r1, r30, -2220
000500  ebba0000  load.hu r21, 0(r1)
000504  9f60afee  addli r1, r30, -2218
000508  6bbb0000  load.hu r22, 0(r1)
00050c  9f00bfee  addli r1, r30, -2216
000510  ebbb0000  load.hu r23, 0(r1)
000514  9f20bfee  addli r1, r30, -2214
000518  6bbc0000  load.hu r24, 0(r1)
00051c  9f40bfee  addli r1, r30, -2212
000520  ebbc0000  load.hu r25, 0(r1)
000524  9f60bfee  addli r1, r30, -2210
000528  6bbd0000  load.hu r26, 0(r1)
00052c  9f00cfee  addli r1, r30, -2208
000530  ebbd0000  load.hu r27, 0(r1)
000534  eb300100  load.hu r1, 0(r2)
000538  1f41cfee  addli r2, r30, -2204
00053c  67411fce  storeli.w r1, -6380(r30)
000540  eb300100  load.hu r1, 0(r2)
000544  1f61cfee  addli r2, r30, -2202
000548  e7011fce  storeli.w r1, -6376(r30)
00054c  eb300100  load.hu r1, 0(r2)
000550  1f01dfee  addli r2, r30, -2200
000554  e7411fce  storeli.w r1, -6372(r30)
000558  eb300100  load.hu r1, 0(r2)
00055c  1f21dfee  addli r2, r30, -2198
000560  67021fce  storeli.w r1, -6368(r30)
000564  eb300100  load.hu r1, 0(r2)
000568  1f41dfee  addli r2, r30, -2196
00056c  67421fce  storeli.w r1, -6364(r30)
000570  eb300100  load.hu r1, 0(r2)
000574  1f61dfee  addli r2, r30, -2194
000578  e7021fce  storeli.w r1, -6360(r30)
00057c  eb300100  load.hu r1, 0(r2)
000580  1f01efee  addli r2, r30, -2192
000584  e7421fce  storeli.w r1, -6356(r30)
000588  eb300100  load.hu r1, 0(r2)
00058c  1f21efee  addli r2, r30, -2190
000590  67031fce  storeli.w r1, -6352(r30)
000594  eb300100  load.hu r1, 0(r2)
000598  1f41efee  addli r2, r30, -2188
00059c  67431fce  storeli.w r1, -6348(r30)
0005a0  eb300100  load.hu r1, 0(r2)
0005a4  1f61efee  addli r2, r30, -2186
0005a8  e7031fce  storeli.w r1, -6344(r30)
0005ac  eb300100  load.hu r1, 0(r2)
0005b0  1f01ffee  addli r2, r30, -2184
0005b4  e7431fce  storeli.w r1, -6340(r30)
0005b8  eb300100  load.hu r1, 0(r2)
0005bc  1f21ffee  addli r2, r30, -2182
0005c0  67041fce  storeli.w r1, -6336(r30)
0005c4  eb300100  load.hu r1, 0(r2)
0005c8  1f41ffee  addli r2, r30, -2180
0005cc  67441fce  storeli.w r1, -6332(r30)
0005d0  eb300100  load.hu r1, 0(r2)
0005d4  1f61ffee  addli r2, r30, -2178
0005d8  e7041fce  storeli.w r1, -6328(r30)
0005dc  eb300100  load.hu r1, 0(r2)
0005e0  1f010fef  addli r2, r30, -2176
0005e4  e7441fce  storeli.w r1, -6324(r30)
0005e8  eb300100  load.hu r1, 0(r2)
0005ec  1f210fef  addli r2, r30, -2174
0005f0  67051fce  storeli.w r1, -6320(r30)
0005f4  eb300100  load.hu r1, 0(r2)
0005f8  1f410fef  addli r2, r30, -2172
0005fc  67451fce  storeli.w r1, -6316(r30)
000600  eb300100  load.hu r1, 0(r2)
000604  1f610fef  addli r2, r30, -2170
000608  e7051fce  storeli.w r1, -6312(r30)
00060c  eb300100  load.hu r1, 0(r2)
000610  1f011fef  addli r2, r30, -2168
000614  e7451fce  storeli.w r1, -6308(r30)
000618  eb300100  load.hu r1, 0(r2)
00061c  1f211fef  addli r2, r30, -2166
000620  67061fce  storeli.w r1, -6304(r30)
000624  eb300100  load.hu r1, 0(r2)
000628  1f411fef  addli r2, r30, -2164
00062c  67461fce  storeli.w r1, -6300(r30)
000630  eb300100  load.hu r1, 0(r2)
000634  1f611fef  addli r2, r30, -2162
000638  e7061fce  storeli.w r1, -6296(r30)
00063c  eb300100  load.hu r1, 0(r2)
000640  1f012fef  addli r2, r30, -2160
000644  e7461fce  storeli.w r1, -6292(r30)
000648  eb300100  load.hu r1, 0(r2)
00064c  1f212fef  addli r2, r30, -2158
000650  67071fce  storeli.w r1, -6288(r30)
000654  eb300100  load.hu r1, 0(r2)
000658  1f412fef  addli r2, r30, -2156
00065c  67471fce  storeli.w r1, -6284(r30)
000660  eb300100  load.hu r1, 0(r2)
000664  1f612fef  addli r2, r30, -2154
000668  e7071fce  storeli.w r1, -6280(r30)
00066c  eb300100  load.hu r1, 0(r2)
000670  1f013fef  addli r2, r30, -2152
000674  e7471fce  storeli.w r1, -6276(r30)
000678  eb300100  load.hu r1, 0(r2)
00067c  1f213fef  addli r2, r30, -2150
000680  67081fce  storeli.w r1, -6272(r30)
000684  eb300100  load.hu r1, 0(r2)
000688  1f413fef  addli r2, r30, -2148
00068c  67481fce  storeli.w r1, -6268(r30)
000690  eb300100  load.hu r1, 0(r2)
000694  1f613fef  addli r2, r30, -2146
000698  e7081fce  storeli.w r1, -6264(r30)
00069c  eb300100  load.hu r1, 0(r2)
0006a0  1f014fef  addli r2, r30, -2144
0006a4  e7481fce  storeli.w r1, -6260(r30)
0006a8  eb300100  load.hu r1, 0(r2)
0006ac  1f214fef  addli r2, r30, -2142
0006b0  67091fce  storeli.w r1, -6256(r30)
0006b4  eb300100  load.hu r1, 0(r2)
0006b8  1f414fef  addli r2, r30, -2140
0006bc  67491fce  storeli.w r1, -6252(r30)
0006c0  eb300100  load.hu r1, 0(r2)
0006c4  1f614fef  addli r2, r30, -2138
0006c8  e7091fce  storeli.w r1, -6248(r30)
0006cc  eb300100  load.hu r1, 0(r2)
0006d0  1f015fef  addli r2, r30, -2136
0006d4  e7491fce  storeli.w r1, -6244(r30)
0006d8  eb300100  load.hu r1, 0(r2)
0006dc  1f215fef  addli r2, r30, -2134
0006e0  670a1fce  storeli.w r1, -6240(r30)
0006e4  eb300100  load.hu r1, 0(r2)
0006e8  1f415fef  addli r2, r30, -2132
0006ec  674a1fce  storeli.w r1, -6236(r30)
0006f0  eb300100  load.hu r1, 0(r2)
0006f4  1f615fef  addli r2, r30, -2130
0006f8  e70a1fce  storeli.w r1, -6232(r30)
0006fc  eb300100  load.hu r1, 0(r2)
000700  1f016fef  addli r2, r30, -2128
000704  e74a1fce  storeli.w r1, -6228(r30)
000708  eb300100  load.hu r1, 0(r2)
00070c  1f216fef  addli r2, r30, -2126
000710  670b1fce  storeli.w r1, -6224(r30)
000714  eb300100  load.hu r1, 0(r2)
000718  1f416fef  addli r2, r30, -2124
00071c  674b1fce  storeli.w r1, -6220(r30)
000720  eb300100  load.hu r1, 0(r2)
000724  1f616fef  addli r2, r30, -2122
000728  e70b1fce  storeli.w r1, -6216(r30)
00072c  eb300100  load.hu r1, 0(r2)
000730  1f017fef  addli r2, r30, -2120
000734  e74b1fce  storeli.w r1, -6212(r30)
000738  eb300100  load.hu r1, 0(r2)
00073c  1f217fef  addli r2, r30, -2118
000740  670c1fce  storeli.w r1, -6208(r30)
000744  eb300100  load.hu r1, 0(r2)
000748  1f417fef  addli r2, r30, -2116
00074c  674c1fce  storeli.w r1, -6204(r30)
000750  eb300100  load.hu r1, 0(r2)
000754  1f617fef  addli r2, r30, -2114
000758  e70c1fce  storeli.w r1, -6200(r30)
00075c  eb300100  load.hu r1, 0(r2)
000760  1f018fef  addli r2, r30, -2112
000764  e74c1fce  storeli.w r1, -6196(r30)
000768  eb300100  load.hu r1, 0(r2)
00076c  1f218fef  addli r2, r30, -2110
000770  670d1fce  storeli.w r1, -6192(r30)
000774  eb300100  load.hu r1, 0(r2)
000778  1f418fef  addli r2, r30, -2108
00077c  674d1fce  storeli.w r1, -6188(r30)
000780  eb300100  load.hu r1, 0(r2)
000784  1f618fef  addli r2, r30, -2106
000788  e70d1fce  storeli.w r1, -6184(r30)
00078c  eb300100  load.hu r1, 0(r2)
000790  1f019fef  addli r2, r30, -2104
000794  e74d1fce  storeli.w r1, -6180(r30)
000798  eb300100  load.hu r1, 0(r2)
00079c  1f219fef  addli r2, r30, -2102
0007a0  670e1fce  storeli.w r1, -6176(r30)
0007a4  eb300100  load.hu r1, 0(r2)
0007a8  1f419fef  addli r2, r30, -2100
0007ac  674e1fce  storeli.w r1, -6172(r30)
0007b0  eb300100  load.hu r1, 0(r2)
0007b4  1f619fef  addli r2, r30, -2098
0007b8  e70e1fce  storeli.w r1, -6168(r30)
0007bc  eb300100  load.hu r1, 0(r2)
0007c0  1f01afef  addli r2, r30, -2096
0007c4  e74e1fce  storeli.w r1, -6164(r30)
0007c8  eb300100  load.hu r1, 0(r2)
0007cc  1f21afef  addli r2, r30, -2094
0007d0  670f1fce  storeli.w r1, -6160(r30)
0007d4  eb300100  load.hu r1, 0(r2)
0007d8  1f41afef  addli r2, r30, -2092
0007dc  674f1fce  storeli.w r1, -6156(r30)
0007e0  eb300100  load.hu r1, 0(r2)
0007e4  1f61afef  addli r2, r30, -2090
0007e8  e70f1fce  storeli.w r1, -6152(r30)
0007ec  eb300100  load.hu r1, 0(r2)
0007f0  1f01bfef  addli r2, r30, -2088
0007f4  e74f1fce  storeli.w r1, -6148(r30)
0007f8  eb300100  load.hu r1, 0(r2)
0007fc  1f21bfef  addli r2, r30, -2086
000800  67001fd0  storeli.w r1, -6144(r30)
000804  eb300100  load.hu r1, 0(r2)
000808  1f41bfef  addli r2, r30, -2084
00080c  67401fd0  storeli.w r1, -6140(r30)
000810  eb300100  load.hu r1, 0(r2)
000814  1f61bfef  addli r2, r30, -2082
000818  e7001fd0  storeli.w r1, -6136(r30)
00081c  eb300100  load.hu r1, 0(r2)
000820  1f01cfef  addli r2, r30, -2080
000824  e7401fd0  storeli.w r1, -6132(r30)
000828  eb300100  load.hu r1, 0(r2)
00082c  1f21cfef  addli r2, r30, -2078
000830  67011fd0  storeli.w r1, -6128(r30)
000834  eb300100  load.hu r1, 0(r2)
000838  1f41cfef  addli r2, r30, -2076
00083c  67411fd0  storeli.w r1, -6124(r30)
000840  eb300100  load.hu r1, 0(r2)
000844  1f61cfef  addli r2, r30, -2074
000848  e7011fd0  storeli.w r1, -6120(r30)
00084c  eb300100  load.hu r1, 0(r2)
000850  1f01dfef  addli r2, r30, -2072
000854  e7411fd0  storeli.w r1, -6116(r30)
000858  eb300100  load.hu r1, 0(r2)
00085c  1f21dfef  addli r2, r30, -2070
000860  67021fd0  storeli.w r1, -6112(r30)
000864  eb300100  load.hu r1, 0(r2)
000868  1f41dfef  addli r2, r30, -2068
00086c  67421fd0  storeli.w r1, -6108(r30)
000870  eb300100  load.hu r1, 0(r2)
000874  1f61dfef  addli r2, r30, -2066
000878  e7021fd0  storeli.w r1, -6104(r30)
00087c  eb300100  load.hu r1, 0(r2)
000880  1f01efef  addli r2, r30, -2064
000884  e7421fd0  storeli.w r1, -6100(r30)
000888  eb300100  load.hu r1, 0(r2)
00088c  1f21efef  addli r2, r30, -2062
000890  67031fd0  storeli.w r1, -6096(r30)
000894  eb300100  load.hu r1, 0(r2)
000898  1f41efef  addli r2, r30, -2060
00089c  67431fd0  storeli.w r1, -6092(r30)
0008a0  eb300100  load.hu r1, 0(r2)
0008a4  1f61efef  addli r2, r30, -2058
0008a8  e7031fd0  storeli.w r1, -6088(r30)
0008ac  eb300100  load.hu r1, 0(r2)
0008b0  1f01ffef  addli r2, r30, -2056
0008b4  e7431fd0  storeli.w r1, -6084(r30)
0008b8  eb300100  load.hu r1, 0(r2)
0008bc  1f21ffef  addli r2, r30, -2054
0008c0  67041fd0  storeli.w r1, -6080(r30)
0008c4  eb300100  load.hu r1, 0(r2)
0008c8  1f41ffef  addli r2, r30, -2052
0008cc  67441fd0  storeli.w r1, -6076(r30)
0008d0  eb300100  load.hu r1, 0(r2)
0008d4  1f61ffef  addli r2, r30, -2050
0008d8  e7041fd0  storeli.w r1, -6072(r30)
0008dc  eb300100  load.hu r1, 0(r2)
0008e0  6b31ef8f  load.hu r2, -1794(r30)
0008e4  e7441fd0  storeli.w r1, -6068(r30)
0008e8  eb300f80  load.hu r1, -2048(r30)
0008ec  67051fd0  storeli.w r1, -6064(r30)
0008f0  eb302f80  load.hu r1, -2046(r30)
0008f4  67451fd0  storeli.w r1, -6060(r30)
0008f8  eb304f80  load.hu r1, -2044(r30)
0008fc  e7051fd0  storeli.w r1, -6056(r30)
000900  eb306f80  load.hu r1, -2042(r30)
000904  e7451fd0  storeli.w r1, -6052(r30)
000908  eb308f80  load.hu r1, -2040(r30)
00090c  67061fd0  storeli.w r1, -6048(r30)
000910  eb30af80  load.hu r1, -2038(r30)
000914  67461fd0  storeli.w r1, -6044(r30)
000918  eb30cf80  load.hu r1, -2036(r30)
00091c  e7061fd0  storeli.w r1, -6040(r30)
000920  eb30ef80  load.hu r1, -2034(r30)
000924  e7461fd0  storeli.w r1, -6036(r30)
000928  eb300f81  load.hu r1, -2032(r30)
00092c  67071fd0  storeli.w r1, -6032(r30)
000930  eb302f81  load.hu r1, -2030(r30)
000934  67471fd0  storeli.w r1, -6028(r30)
000938  eb304f81  load.hu r1, -2028(r30)
00093c  e7071fd0  storeli.w r1, -6024(r30)
000940  eb306f81  load.hu r1, -2026(r30)
000944  e7471fd0  storeli.w r1, -6020(r30)
000948  eb308f81  load.hu r1, -2024(r30)
00094c  67081fd0  storeli.w r1, -6016(r30)
000950  eb30af81  load.hu r1, -2022(r30)
000954  67481fd0  storeli.w r1, -6012(r30)
000958  eb30cf81  load.hu r1, -2020(r30)
00095c  e7081fd0  storeli.w r1, -6008(r30)
000960  eb30ef81  load.hu r1, -2018(r30)
000964  e7481fd0  storeli.w r1, -6004(r30)
000968  eb300f82  load.hu r1, -2016(r30)
00096c  67091fd0  storeli.w r1, -6000(r30)
000970  eb302f82  load.hu r1, -2014(r30)
000974  67491fd0  storeli.w r1, -5996(r30)
000978  eb304f82  load.hu r1, -2012(r30)
00097c  e7091fd0  storeli.w r1, -5992(r30)
000980  eb306f82  load.hu r1, -2010(r30)
000984  e7491fd0  storeli.w r1, -5988(r30)
000988  eb308f82  load.hu r1, -2008(r30)
00098c  670a1fd0  storeli.w r1, -5984(r30)
000990  eb30af82  load.hu r1, -2006(r30)
000994  674a1fd0  storeli.w r1, -5980(r30)
000998  eb30cf82  load.hu r1, -2004(r30)
00099c  e70a1fd0  storeli.w r1, -5976(r30)
0009a0  eb30ef82  load.hu r1, -2002(r30)
0009a4  e74a1fd0  storeli.w r1, -5972(r30)
0009a8  eb300f83  load.hu r1, -2000(r30)
0009ac  670b1fd0  storeli.w r1, -5968(r30)
0009b0  eb302f83  load.hu r1, -1998(r30)
0009b4  674b1fd0  storeli.w r1, -5964(r30)
0009b8  eb304f83  load.hu r1, -1996(r30)
0009bc  e70b1fd0  storeli.w r1, -5960(r30)
0009c0  eb306f83  load.hu r1, -1994(r30)
0009c4  e74b1fd0  storeli.w r1, -5956(r30)
0009c8  eb308f83  load.hu r1, -1992(r30)
0009cc  670c1fd0  storeli.w r1, -5952(r30)
0009d0  eb30af83  load.hu r1, -1990(r30)
0009d4  674c1fd0  storeli.w r1, -5948(r30)
0009d8  eb30cf83  load.hu r1, -1988(r30)
0009dc  e70c1fd0  storeli.w r1, -5944(r30)
0009e0  eb30ef83  load.hu r1, -1986(r30)
0009e4  e74c1fd0  storeli.w r1, -5940(r30)
0009e8  eb300f84  load.hu r1, -1984(r30)
0009ec  670d1fd0  storeli.w r1, -5936(r30)
0009f0  eb302f84  load.hu r1, -1982(r30)
0009f4  674d1fd0  storeli.w r1, -5932(r30)
0009f8  eb304f84  load.hu r1, -1980(r30)
0009fc  e70d1fd0  storeli.w r1, -5928(r30)
000a00  eb306f84  load.hu r1, -1978(r30)
000a04  e74d1fd0  storeli.w r1, -5924(r30)
000a08  eb308f84  load.hu r1, -1976(r30)
000a0c  670e1fd0  storeli.w r1, -5920(r30)
000a10  eb30af84  load.hu r1, -1974(r30)
000a14  674e1fd0  storeli.w r1, -5916(r30)
000a18  eb30cf84  load.hu r1, -1972(r30)
000a1c  e70e1fd0  storeli.w r1, -5912(r30)
000a20  eb30ef84  load.hu r1, -1970(r30)
000a24  e74e1fd0  storeli.w r1, -5908(r30)
000a28  eb300f85  load.hu r1, -1968(r30)
000a2c  670f1fd0  storeli.w r1, -5904(r30)
000a30  eb302f85  load.hu r1, -1966(r30)
000a34  674f1fd0  storeli.w r1, -5900(r30)
000a38  eb304f85  load.hu r1, -1964(r30)
000a3c  e70f1fd0  storeli.w r1, -5896(r30)
000a40  eb306f85  load.hu r1, -1962(r30)
000a44  e74f1fd0  storeli.w r1, -5892(r30)
000a48  eb308f85  load.hu r1, -1960(r30)
000a4c  67001fd2  storeli.w r1, -5888(r30)
000a50  eb30af85  load.hu r1, -1958(r30)
000a54  67401fd2  storeli.w r1, -5884(r30)
000a58  eb30cf85  load.hu r1, -1956(r30)
000a5c  e7001fd2  storeli.w r1, -5880(r30)
000a60  eb30ef85  load.hu r1, -1954(r30)
000a64  e7401fd2  storeli.w r1, -5876(r30)
000a68  eb300f86  load.hu r1, -1952(r30)
000a6c  67011fd2  storeli.w r1, -5872(r30)
000a70  eb302f86  load.hu r1, -1950(r30)
000a74  67411fd2  storeli.w r1, -5868(r30)
000a78  eb304f86  load.hu r1, -1948(r30)
000a7c  e7011fd2  storeli.w r1, -5864(r30)
000a80  eb306f86  load.hu r1, -1946(r30)
000a84  e7411fd2  storeli.w r1, -5860(r30)
000a88  eb308f86  load.hu r1, -1944(r30)
000a8c  67021fd2  storeli.w r1, -5856(r30)
000a90  eb30af86  load.hu r1, -1942(r30)
000a94  67421fd2  storeli.w r1, -5852(r30)
000a98  eb30cf86  load.hu r1, -1940(r30)
000a9c  e7021fd2  storeli.w r1, -5848(r30)
000aa0  eb30ef86  load.hu r1, -1938(r30)
000aa4  e7421fd2  storeli.w r1, -5844(r30)
000aa8  eb300f87  load.hu r1, -1936(r30)
000aac  67031fd2  storeli.w r1, -5840(r30)
000ab0  eb302f87  load.hu r1, -1934(r30)
000ab4  67431fd2  storeli.w r1, -5836(r30)
000ab8  eb304f87  load.hu r1, -1932(r30)
000abc  e7031fd2  storeli.w r1, -5832(r30)
000ac0  eb306f87  load.hu r1, -1930(r30)
000ac4  e7431fd2  storeli.w r1, -5828(r30)
000ac8  eb308f87  load.hu r1, -1928(r30)
000acc  67041fd2  storeli.w r1, -5824(r30)
000ad0  eb30af87  load.hu r1, -1926(r30)
000ad4  67441fd2  storeli.w r1, -5820(r30)
000ad8  eb30cf87  load.hu r1, -1924(r30)
000adc  e7041fd2  storeli.w r1, -5816(r30)
000ae0  eb30ef87  load.hu r1, -1922(r30)
000ae4  e7441fd2  storeli.w r1, -5812(r30)
000ae8  eb300f88  load.hu r1, -1920(r30)
000aec  67051fd2  storeli.w r1, -5808(r30)
000af0  eb302f88  load.hu r1, -1918(r30)
000af4  67451fd2  storeli.w r1, -5804(r30)
000af8  eb304f88  load.hu r1, -1916(r30)
000afc  e7051fd2  storeli.w r1, -5800(r30)
000b00  eb306f88  load.hu r1, -1914(r30)
000b04  e7451fd2  storeli.w r1, -5796(r30)
000b08  eb308f88  load.hu r1, -1912(r30)
000b0c  67061fd2  storeli.w r1, -5792(r30)
000b10  eb30af88  load.hu r1, -1910(r30)
000b14  67461fd2  storeli.w r1, -5788(r30)
000b18  eb30cf88  load.hu r1, -1908(r30)
000b1c  e7061fd2  storeli.w r1, -5784(r30)
000b20  eb30ef88  load.hu r1, -1906(r30)
000b24  e7461fd2  storeli.w r1, -5780(r30)
000b28  eb300f89  load.hu r1, -1904(r30)
000b2c  67071fd2  storeli.w r1, -5776(r30)
000b30  eb302f89  load.hu r1, -1902(r30)
000b34  67471fd2  storeli.w r1, -5772(r30)
000b38  eb304f89  load.hu r1, -1900(r30)
000b3c  e7071fd2  storeli.w r1, -5768(r30)
000b40  eb306f89  load.hu r1, -1898(r30)
000b44  e7471fd2  storeli.w r1, -5764(r30)
000b48  eb308f89  load.hu r1, -1896(r30)
000b4c  67081fd2  storeli.w r1, -5760(r30)
000b50  eb30af89  load.hu r1, -1894(r30)
000b54  67481fd2  storeli.w r1, -5756(r30)
000b58  eb30cf89  load.hu r1, -1892(r30)
000b5c  e7081fd2  storeli.w r1, -5752(r30)
000b60  eb30ef89  load.hu r1, -1890(r30)
000b64  e7481fd2  storeli.w r1, -5748(r30)
000b68  eb300f8a  load.hu r1, -1888(r30)
000b6c  67091fd2  storeli.w r1, -5744(r30)
000b70  eb302f8a  load.hu r1, -1886(r30)
000b74  67491fd2  storeli.w r1, -5740(r30)
000b78  eb304f8a  load.hu r1, -1884(r30)
000b7c  e7091fd2  storeli.w r1, -5736(r30)
000b80  eb306f8a  load.hu r1, -1882(r30)
000b84  e7491fd2  storeli.w r1, -5732(r30)
000b88  eb308f8a  load.hu r1, -1880(r30)
000b8c  670a1fd2  storeli.w r1, -5728(r30)
000b90  eb30af8a  load.hu r1, -1878(r30)
000b94  674a1fd2  storeli.w r1, -5724(r30)
000b98  eb30cf8a  load.hu r1, -1876(r30)
000b9c  e70a1fd2  storeli.w r1, -5720(r30)
000ba0  eb30ef8a  load.hu r1, -1874(r30)
000ba4  e74a1fd2  storeli.w r1, -5716(r30)
000ba8  eb300f8b  load.hu r1, -1872(r30)
000bac  670b1fd2  storeli.w r1, -5712(r30)
000bb0  eb302f8b  load.hu r1, -1870(r30)
000bb4  674b1fd2  storeli.w r1, -5708(r30)
000bb8  eb304f8b  load.hu r1, -1868(r30)
000bbc  e70b1fd2  storeli.w r1, -5704(r30)
000bc0  eb306f8b  load.hu r1, -1866(r30)
000bc4  e74b1fd2  storeli.w r1, -5700(r30)
000bc8  eb308f8b  load.hu r1, -1864(r30)
000bcc  670c1fd2  storeli.w r1, -5696(r30)
000bd0  eb30af8b  load.hu r1, -1862(r30)
000bd4  674c1fd2  storeli.w r1, -5692(r30)
000bd8  eb30cf8b  load.hu r1, -1860(r30)
000bdc  e70c1fd2  storeli.w r1, -5688(r30)
000be0  eb30ef8b  load.hu r1, -1858(r30)
000be4  e74c1fd2  storeli.w r1, -5684(r30)
000be8  eb300f8c  load.hu r1, -1856(r30)
000bec  670d1fd2  storeli.w r1, -5680(r30)
000bf0  eb302f8c  load.hu r1, -1854(r30)
000bf4  674d1fd2  storeli.w r1, -5676(r30)
000bf8  eb304f8c  load.hu r1, -1852(r30)
000bfc  e70d1fd2  storeli.w r1, -5672(r30)
000c00  eb306f8c  load.hu r1, -1850(r30)
000c04  e74d1fd2  storeli.w r1, -5668(r30)
000c08  eb308f8c  load.hu r1, -1848(r30)
000c0c  670e1fd2  storeli.w r1, -5664(r30)
000c10  eb30af8c  load.hu r1, -1846(r30)
000c14  674e1fd2  storeli.w r1, -5660(r30)
000c18  eb30cf8c  load.hu r1, -1844(r30)
000c1c  e70e1fd2  storeli.w r1, -5656(r30)
000c20  eb30ef8c  load.hu r1, -1842(r30)
000c24  e74e1fd2  storeli.w r1, -5652(r30)
000c28  eb300f8d  load.hu r1, -1840(r30)
000c2c  670f1fd2  storeli.w r1, -5648(r30)
000c30  eb302f8d  load.hu r1, -1838(r30)
000c34  674f1fd2  storeli.w r1, -5644(r30)
000c38  eb304f8d  load.hu r1, -1836(r30)
000c3c  e70f1fd2  storeli.w r1, -5640(r30)
000c40  eb306f8d  load.hu r1, -1834(r30)
000c44  e74f1fd2  storeli.w r1, -5636(r30)
000c48  eb308f8d  load.hu r1, -1832(r30)
000c4c  67001fd4  storeli.w r1, -5632(r30)
000c50  eb30af8d  load.hu r1, -1830(r30)
000c54  67401fd4  storeli.w r1, -5628(r30)
000c58  eb30cf8d  load.hu r1, -1828(r30)
000c5c  e7001fd4  storeli.w r1, -5624(r30)
000c60  eb30ef8d  load.hu r1, -1826(r30)
000c64  e7401fd4  storeli.w r1, -5620(r30)
000c68  eb300f8e  load.hu r1, -1824(r30)
000c6c  67011fd4  storeli.w r1, -5616(r30)
000c70  eb302f8e  load.hu r1, -1822(r30)
000c74  67411fd4  storeli.w r1, -5612(r30)
000c78  eb304f8e  load.hu r1, -1820(r30)
000c7c  e7011fd4  storeli.w r1, -5608(r30)
000c80  eb306f8e  load.hu r1, -1818(r30)
000c84  e7411fd4  storeli.w r1, -5604(r30)
000c88  eb308f8e  load.hu r1, -1816(r30)
000c8c  67021fd4  storeli.w r1, -5600(r30)
000c90  eb30af8e  load.hu r1, -1814(r30)
000c94  67421fd4  storeli.w r1, -5596(r30)
000c98  eb30cf8e  load.hu r1, -1812(r30)
000c9c  e7021fd4  storeli.w r1, -5592(r30)
000ca0  eb30ef8e  load.hu r1, -1810(r30)
000ca4  e7421fd4  storeli.w r1, -5588(r30)
000ca8  eb300f8f  load.hu r1, -1808(r30)
000cac  67031fd4  storeli.w r1, -5584(r30)
000cb0  eb302f8f  load.hu r1, -1806(r30)
000cb4  67431fd4  storeli.w r1, -5580(r30)
000cb8  eb304f8f  load.hu r1, -1804(r30)
000cbc  e7031fd4  storeli.w r1, -5576(r30)
000cc0  eb306f8f  load.hu r1, -1802(r30)
000cc4  e7431fd4  storeli.w r1, -5572(r30)
000cc8  eb308f8f  load.hu r1, -1800(r30)
000ccc  67041fd4  storeli.w r1, -5568(r30)
000cd0  eb30af8f  load.hu r1, -1798(r30)
000cd4  67441fd4  storeli.w r1, -5564(r30)
000cd8  eb302f90  load.hu r1, -1790(r30)
000cdc  e7041fd4  storeli.w r1, -5560(r30)
000ce0  eb304f90  load.hu r1, -1788(r30)
000ce4  e7441fd4  storeli.w r1, -5556(r30)
000ce8  eb306f90  load.hu r1, -1786(r30)
000cec  67051fd4  storeli.w r1, -5552(r30)
000cf0  eb308f90  load.hu r1, -1784(r30)
000cf4  67451fd4  storeli.w r1, -5548(r30)
000cf8  eb30af90  load.hu r1, -1782(r30)
000cfc  e7051fd4  storeli.w r1, -5544(r30)
000d00  eb30cf90  load.hu r1, -1780(r30)
000d04  e7451fd4  storeli.w r1, -5540(r30)
000d08  eb30ef90  load.hu r1, -1778(r30)
000d0c  67061fd4  storeli.w r1, -5536(r30)
000d10  eb300f91  load.hu r1, -1776(r30)
000d14  67461fd4  storeli.w r1, -5532(r30)
000d18  eb302f91  load.hu r1, -1774(r30)
000d1c  e7061fd4  storeli.w r1, -5528(r30)
000d20  eb304f91  load.hu r1, -1772(r30)
000d24  e7461fd4  storeli.w r1, -5524(r30)
000d28  eb306f91  load.hu r1, -1770(r30)
000d2c  67071fd4  storeli.w r1, -5520(r30)
000d30  eb308f91  load.hu r1, -1768(r30)
000d34  67471fd4  storeli.w r1, -5516(r30)
000d38  eb30af91  load.hu r1, -1766(r30)
000d3c  e7071fd4  storeli.w r1, -5512(r30)
000d40  eb30cf91  load.hu r1, -1764(r30)
000d44  e7471fd4  storeli.w r1, -5508(r30)
000d48  eb30ef91  load.hu r1, -1762(r30)
000d4c  67081fd4  storeli.w r1, -5504(r30)
000d50  eb300f92  load.hu r1, -1760(r30)
000d54  67481fd4  storeli.w r1, -5500(r30)
000d58  eb302f92  load.hu r1, -1758(r30)
000d5c  e7081fd4  storeli.w r1, -5496(r30)
000d60  eb304f92  load.hu r1, -1756(r30)
000d64  e7481fd4  storeli.w r1, -5492(r30)
000d68  eb306f92  load.hu r1, -1754(r30)
000d6c  67091fd4  storeli.w r1, -5488(r30)
000d70  eb308f92  load.hu r1, -1752(r30)
000d74  67491fd4  storeli.w r1, -5484(r30)
000d78  eb30af92  load.hu r1, -1750(r30)
000d7c  e7091fd4  storeli.w r1, -5480(r30)
000d80  eb30cf92  load.hu r1, -1748(r30)
000d84  e7491fd4  storeli.w r1, -5476(r30)
000d88  eb30ef92  load.hu r1, -1746(r30)
000d8c  670a1fd4  storeli.w r1, -5472(r30)
000d90  eb300f93  load.hu r1, -1744(r30)
000d94  674a1fd4  storeli.w r1, -5468(r30)
000d98  eb302f93  load.hu r1, -1742(r30)
000d9c  e70a1fd4  storeli.w r1, -5464(r30)
000da0  eb304f93  load.hu r1, -1740(r30)
000da4  e74a1fd4  storeli.w r1, -5460(r30)
000da8  eb306f93  load.hu r1, -1738(r30)
000dac  670b1fd4  storeli.w r1, -5456(r30)
000db0  eb308f93  load.hu r1, -1736(r30)
000db4  674b1fd4  storeli.w r1, -5452(r30)
000db8  eb30af93  load.hu r1, -1734(r30)
000dbc  e70b1fd4  storeli.w r1, -5448(r30)
000dc0  eb30cf93  load.hu r1, -1732(r30)
000dc4  e74b1fd4  storeli.w r1, -5444(r30)
000dc8  eb30ef93  load.hu r1, -1730(r30)
000dcc  670c1fd4  storeli.w r1, -5440(r30)
000dd0  eb300f94  load.hu r1, -1728(r30)
000dd4  674c1fd4  storeli.w r1, -5436(r30)
000dd8  eb302f94  load.hu r1, -1726(r30)
000ddc  e70c1fd4  storeli.w r1, -5432(r30)
000de0  eb304f94  load.hu r1, -1724(r30)
000de4  e74c1fd4  storeli.w r1, -5428(r30)
000de8  eb306f94  load.hu r1, -1722(r30)
000dec  670d1fd4  storeli.w r1, -5424(r30)
000df0  eb308f94  load.hu r1, -1720(r30)
000df4  674d1fd4  storeli.w r1, -5420(r30)
000df8  eb30af94  load.hu r1, -1718(r30)
000dfc  e70d1fd4  storeli.w r1, -5416(r30)
000e00  eb30cf94  load.hu r1, -1716(r30)
000e04  e74d1fd4  storeli.w r1, -5412(r30)
000e08  eb30ef94  load.hu r1, -1714(r30)
000e0c  670e1fd4  storeli.w r1, -5408(r30)
000e10  eb300f95  load.hu r1, -1712(r30)
000e14  674e1fd4  storeli.w r1, -5404(r30)
000e18  eb302f95  load.hu r1, -1710(r30)
000e1c  e70e1fd4  storeli.w r1, -5400(r30)
000e20  eb304f95  load.hu r1, -1708(r30)
000e24  e74e1fd4  storeli.w r1, -5396(r30)
000e28  eb306f95  load.hu r1, -1706(r30)
000e2c  670f1fd4  storeli.w r1, -5392(r30)
000e30  eb308f95  load.hu r1, -1704(r30)
000e34  674f1fd4  storeli.w r1, -5388(r30)
000e38  eb30af95  load.hu r1, -1702(r30)
000e3c  e70f1fd4  storeli.w r1, -5384(r30)
000e40  eb30cf95  load.hu r1, -1700(r30)
000e44  e74f1fd4  storeli.w r1, -5380(r30)
000e48  eb30ef95  load.hu r1, -1698(r30)
000e4c  67001fd6  storeli.w r1, -5376(r30)
000e50  eb300f96  load.hu r1, -1696(r30)
000e54  67401fd6  storeli.w r1, -5372(r30)
000e58  eb302f96  load.hu r1, -1694(r30)
000e5c  e7001fd6  storeli.w r1, -5368(r30)
000e60  eb304f96  load.hu r1, -1692(r30)
000e64  e7401fd6  storeli.w r1, -5364(r30)
000e68  eb306f96  load.hu r1, -1690(r30)
000e6c  67011fd6  storeli.w r1, -5360(r30)
000e70  eb308f96  load.hu r1, -1688(r30)
000e74  67411fd6  storeli.w r1, -5356(r30)
000e78  eb30af96  load.hu r1, -1686(r30)
000e7c  e7011fd6  storeli.w r1, -5352(r30)
000e80  eb30cf96  load.hu r1, -1684(r30)
000e84  e7411fd6  storeli.w r1, -5348(r30)
000e88  eb30ef96  load.hu r1, -1682(r30)
000e8c  67021fd6  storeli.w r1, -5344(r30)
000e90  eb300f97  load.hu r1, -1680(r30)
000e94  67421fd6  storeli.w r1, -5340(r30)
000e98  eb302f97  load.hu r1, -1678(r30)
000e9c  e7021fd6  storeli.w r1, -5336(r30)
000ea0  eb304f97  load.hu r1, -1676(r30)
000ea4  e7421fd6  storeli.w r1, -5332(r30)
000ea8  eb306f97  load.hu r1, -1674(r30)
000eac  67031fd6  storeli.w r1, -5328(r30)
000eb0  eb308f97  load.hu r1, -1672(r30)
000eb4  67431fd6  storeli.w r1, -5324(r30)
000eb8  eb30af97  load.hu r1, -1670(r30)
000ebc  e7031fd6  storeli.w r1, -5320(r30)
000ec0  eb30cf97  load.hu r1, -1668(r30)
000ec4  e7431fd6  storeli.w r1, -5316(r30)
000ec8  eb30ef97  load.hu r1, -1666(r30)
000ecc  67041fd6  storeli.w r1, -5312(r30)
000ed0  eb300f98  load.hu r1, -1664(r30)
000ed4  67441fd6  storeli.w r1, -5308(r30)
000ed8  eb302f98  load.hu r1, -1662(r30)
000edc  e7041fd6  storeli.w r1, -5304(r30)
000ee0  eb304f98  load.hu r1, -1660(r30)
000ee4  e7441fd6  storeli.w r1, -5300(r30)
000ee8  eb306f98  load.hu r1, -1658(r30)
000eec  67051fd6  storeli.w r1, -5296(r30)
000ef0  eb308f98  load.hu r1, -1656(r30)
000ef4  67451fd6  storeli.w r1, -5292(r30)
000ef8  eb30af98  load.hu r1, -1654(r30)
000efc  e7051fd6  storeli.w r1, -5288(r30)
000f00  eb30cf98  load.hu r1, -1652(r30)
000f04  e7451fd6  storeli.w r1, -5284(r30)
000f08  eb30ef98  load.hu r1, -1650(r30)
000f0c  67061fd6  storeli.w r1, -5280(r30)
000f10  eb300f99  load.hu r1, -1648(r30)
000f14  67461fd6  storeli.w r1, -5276(r30)
000f18  eb302f99  load.hu r1, -1646(r30)
000f1c  e7061fd6  storeli.w r1, -5272(r30)
000f20  eb304f99  load.hu r1, -1644(r30)
000f24  e7461fd6  storeli.w r1, -5268(r30)
000f28  eb306f99  load.hu r1, -1642(r30)
000f2c  67071fd6  storeli.w r1, -5264(r30)
000f30  eb308f99  load.hu r1, -1640(r30)
000f34  67471fd6  storeli.w r1, -5260(r30)
000f38  eb30af99  load.hu r1, -1638(r30)
000f3c  e7071fd6  storeli.w r1, -5256(r30)
000f40  eb30cf99  load.hu r1, -1636(r30)
000f44  e7471fd6  storeli.w r1, -5252(r30)
000f48  eb30ef99  load.hu r1, -1634(r30)
000f4c  67081fd6  storeli.w r1, -5248(r30)
000f50  eb300f9a  load.hu r1, -1632(r30)
000f54  67481fd6  storeli.w r1, -5244(r30)
000f58  eb302f9a  load.hu r1, -1630(r30)
000f5c  e7081fd6  storeli.w r1, -5240(r30)
000f60  eb304f9a  load.hu r1, -1628(r30)
000f64  e7481fd6  storeli.w r1, -5236(r30)
000f68  eb306f9a  load.hu r1, -1626(r30)
000f6c  67091fd6  storeli.w r1, -5232(r30)
000f70  eb308f9a  load.hu r1, -1624(r30)
000f74  67491fd6  storeli.w r1, -5228(r30)
000f78  eb30af9a  load.hu r1, -1622(r30)
000f7c  e7091fd6  storeli.w r1, -5224(r30)
000f80  eb30cf9a  load.hu r1, -1620(r30)
000f84  e7491fd6  storeli.w r1, -5220(r30)
000f88  eb30ef9a  load.hu r1, -1618(r30)
000f8c  670a1fd6  storeli.w r1, -5216(r30)
000f90  eb300f9b  load.hu r1, -1616(r30)
000f94  674a1fd6  storeli.w r1, -5212(r30)
000f98  eb302f9b  load.hu r1, -1614(r30)
000f9c  e70a1fd6  storeli.w r1, -5208(r30)
000fa0  eb304f9b  load.hu r1, -1612(r30)
000fa4  e74a1fd6  storeli.w r1, -5204(r30)
000fa8  eb306f9b  load.hu r1, -1610(r30)
000fac  670b1fd6  storeli.w r1, -5200(r30)
000fb0  eb308f9b  load.hu r1, -1608(r30)
000fb4  674b1fd6  storeli.w r1, -5196(r30)
000fb8  eb30af9b  load.hu r1, -1606(r30)
000fbc  e70b1fd6  storeli.w r1, -5192(r30)
000fc0  eb30cf9b  load.hu r1, -1604(r30)
000fc4  e74b1fd6  storeli.w r1, -5188(r30)
000fc8  eb30ef9b  load.hu r1, -1602(r30)
000fcc  670c1fd6  storeli.w r1, -5184(r30)
000fd0  eb300f9c  load.hu r1, -1600(r30)
000fd4  674c1fd6  storeli.w r1, -5180(r30)
000fd8  eb302f9c  load.hu r1, -1598(r30)
000fdc  e70c1fd6  storeli.w r1, -5176(r30)
000fe0  eb304f9c  load.hu r1, -1596(r30)
000fe4  e74c1fd6  storeli.w r1, -5172(r30)
000fe8  eb306f9c  load.hu r1, -1594(r30)
000fec  670d1fd6  storeli.w r1, -5168(r30)
000ff0  eb308f9c  load.hu r1, -1592(r30)
000ff4  674d1fd6  storeli.w r1, -5164(r30)
000ff8  eb30af9c  load.hu r1, -1590(r30)
000ffc  e70d1fd6  storeli.w r1, -5160(r30)
001000  eb30cf9c  load.hu r1, -1588(r30)
001004  e74d1fd6  storeli.w r1, -5156(r30)
001008  eb30ef9c  load.hu r1, -1586(r30)
00100c  670e1fd6  storeli.w r1, -5152(r30)
001010  eb300f9d  load.hu r1, -1584(r30)
001014  674e1fd6  storeli.w r1, -5148(r30)
001018  eb302f9d  load.hu r1, -1582(r30)
00101c  e70e1fd6  storeli.w r1, -5144(r30)
001020  eb304f9d  load.hu r1, -1580(r30)
001024  e74e1fd6  storeli.w r1, -5140(r30)
001028  eb306f9d  load.hu r1, -1578(r30)
00102c  670f1fd6  storeli.w r1, -5136(r30)
001030  eb308f9d  load.hu r1, -1576(r30)
001034  674f1fd6  storeli.w r1, -5132(r30)
001038  eb30af9d  load.hu r1, -1574(r30)
00103c  e70f1fd6  storeli.w r1, -5128(r30)
001040  eb30cf9d  load.hu r1, -1572(r30)
001044  e74f1fd6  storeli.w r1, -5124(r30)
001048  eb30ef9d  load.hu r1, -1570(r30)
00104c  67001fd8  storeli.w r1, -5120(r30)
001050  eb300f9e  load.hu r1, -1568(r30)
001054  67401fd8  storeli.w r1, -5116(r30)
001058  eb302f9e  load.hu r1, -1566(r30)
00105c  e7001fd8  storeli.w r1, -5112(r30)
001060  eb304f9e  load.hu r1, -1564(r30)
001064  e7401fd8  storeli.w r1, -5108(r30)
001068  eb306f9e  load.hu r1, -1562(r30)
00106c  67011fd8  storeli.w r1, -5104(r30)
001070  eb308f9e  load.hu r1, -1560(r30)
001074  67411fd8  storeli.w r1, -5100(r30)
001078  eb30af9e  load.hu r1, -1558(r30)
00107c  e7011fd8  storeli.w r1, -5096(r30)
001080  eb30cf9e  load.hu r1, -1556(r30)
001084  e7411fd8  storeli.w r1, -5092(r30)
001088  eb30ef9e  load.hu r1, -1554(r30)
00108c  67021fd8  storeli.w r1, -5088(r30)
001090  eb300f9f  load.hu r1, -1552(r30)
001094  67421fd8  storeli.w r1, -5084(r30)
001098  eb302f9f  load.hu r1, -1550(r30)
00109c  e7021fd8  storeli.w r1, -5080(r30)
0010a0  eb304f9f  load.hu r1, -1548(r30)
0010a4  e7421fd8  storeli.w r1, -5076(r30)
0010a8  eb306f9f  load.hu r1, -1546(r30)
0010ac  67031fd8  storeli.w r1, -5072(r30)
0010b0  eb308f9f  load.hu r1, -1544(r30)
0010b4  67431fd8  storeli.w r1, -5068(r30)
0010b8  eb30af9f  load.hu r1, -1542(r30)
0010bc  e7031fd8  storeli.w r1, -5064(r30)
0010c0  eb30cf9f  load.hu r1, -1540(r30)
0010c4  e7431fd8  storeli.w r1, -5060(r30)
0010c8  eb30ef9f  load.hu r1, -1538(r30)
0010cc  67041fd8  storeli.w r1, -5056(r30)
0010d0  eb300fa0  load.hu r1, -1536(r30)
0010d4  67441fd8  storeli.w r1, -5052(r30)
0010d8  eb302fa0  load.hu r1, -1534(r30)
0010dc  e7041fd8  storeli.w r1, -5048(r30)
0010e0  eb304fa0  load.hu r1, -1532(r30)
0010e4  e7441fd8  storeli.w r1, -5044(r30)
0010e8  eb306fa0  load.hu r1, -1530(r30)
0010ec  67051fd8  storeli.w r1, -5040(r30)
0010f0  eb308fa0  load.hu r1, -1528(r30)
0010f4  67451fd8  storeli.w r1, -5036(r30)
0010f8  eb30afa0  load.hu r1, -1526(r30)
0010fc  e7051fd8  storeli.w r1, -5032(r30)
001100  eb30cfa0  load.hu r1, -1524(r30)
001104  e7451fd8  storeli.w r1, -5028(r30)
001108  eb30efa0  load.hu r1, -1522(r30)
00110c  67061fd8  storeli.w r1, -5024(r30)
001110  eb300fa1  load.hu r1, -1520(r30)
001114  67461fd8  storeli.w r1, -5020(r30)
001118  eb302fa1  load.hu r1, -1518(r30)
00111c  e7061fd8  storeli.w r1, -5016(r30)
001120  eb304fa1  load.hu r1, -1516(r30)
001124  e7461fd8  storeli.w r1, -5012(r30)
001128  eb306fa1  load.hu r1, -1514(r30)
00112c  67071fd8  storeli.w r1, -5008(r30)
001130  eb308fa1  load.hu r1, -1512(r30)
001134  67471fd8  storeli.w r1, -5004(r30)
001138  eb30afa1  load.hu r1, -1510(r30)
00113c  e7071fd8  storeli.w r1, -5000(r30)
001140  eb30cfa1  load.hu r1, -1508(r30)
001144  e7471fd8  storeli.w r1, -4996(r30)
001148  eb30efa1  load.hu r1, -1506(r30)
00114c  67081fd8  storeli.w r1, -4992(r30)
001150  eb300fa2  load.hu r1, -1504(r30)
001154  67481fd8  storeli.w r1, -4988(r30)
001158  eb302fa2  load.hu r1, -1502(r30)
00115c  e7081fd8  storeli.w r1, -4984(r30)
001160  eb304fa2  load.hu r1, -1500(r30)
001164  e7481fd8  storeli.w r1, -4980(r30)
001168  eb306fa2  load.hu r1, -1498(r30)
00116c  67091fd8  storeli.w r1, -4976(r30)
001170  eb308fa2  load.hu r1, -1496(r30)
001174  67491fd8  storeli.w r1, -4972(r30)
001178  eb30afa2  load.hu r1, -1494(r30)
00117c  e7091fd8  storeli.w r1, -4968(r30)
001180  eb30cfa2  load.hu r1, -1492(r30)
001184  e7491fd8  storeli.w r1, -4964(r30)
001188  eb30efa2  load.hu r1, -1490(r30)
00118c  670a1fd8  storeli.w r1, -4960(r30)
001190  eb300fa3  load.hu r1, -1488(r30)
001194  674a1fd8  storeli.w r1, -4956(r30)
001198  eb302fa3  load.hu r1, -1486(r30)
00119c  e70a1fd8  storeli.w r1, -4952(r30)
0011a0  eb304fa3  load.hu r1, -1484(r30)
0011a4  e74a1fd8  storeli.w r1, -4948(r30)
0011a8  eb306fa3  load.hu r1, -1482(r30)
0011ac  670b1fd8  storeli.w r1, -4944(r30)
0011b0  eb308fa3  load.hu r1, -1480(r30)
0011b4  674b1fd8  storeli.w r1, -4940(r30)
0011b8  eb30afa3  load.hu r1, -1478(r30)
0011bc  e70b1fd8  storeli.w r1, -4936(r30)
0011c0  eb30cfa3  load.hu r1, -1476(r30)
0011c4  e74b1fd8  storeli.w r1, -4932(r30)
0011c8  eb30efa3  load.hu r1, -1474(r30)
0011cc  670c1fd8  storeli.w r1, -4928(r30)
0011d0  eb300fa4  load.hu r1, -1472(r30)
0011d4  674c1fd8  storeli.w r1, -4924(r30)
0011d8  eb302fa4  load.hu r1, -1470(r30)
0011dc  e70c1fd8  storeli.w r1, -4920(r30)
0011e0  eb304fa4  load.hu r1, -1468(r30)
0011e4  e74c1fd8  storeli.w r1, -4916(r30)
0011e8  eb306fa4  load.hu r1, -1466(r30)
0011ec  670d1fd8  storeli.w r1, -4912(r30)
0011f0  eb308fa4  load.hu r1, -1464(r30)
0011f4  674d1fd8  storeli.w r1, -4908(r30)
0011f8  eb30afa4  load.hu r1, -1462(r30)
0011fc  e70d1fd8  storeli.w r1, -4904(r30)
001200  eb30cfa4  load.hu r1, -1460(r30)
001204  e74d1fd8  storeli.w r1, -4900(r30)
001208  eb30efa4  load.hu r1, -1458(r30)
00120c  670e1fd8  storeli.w r1, -4896(r30)
001210  eb300fa5  load.hu r1, -1456(r30)
001214  674e1fd8  storeli.w r1, -4892(r30)
001218  eb302fa5  load.hu r1, -1454(r30)
00121c  e70e1fd8  storeli.w r1, -4888(r30)
001220  eb304fa5  load.hu r1, -1452(r30)
001224  e74e1fd8  storeli.w r1, -4884(r30)
001228  eb306fa5  load.hu r1, -1450(r30)
00122c  670f1fd8  storeli.w r1, -4880(r30)
001230  eb308fa5  load.hu r1, -1448(r30)
001234  674f1fd8  storeli.w r1, -4876(r30)
001238  eb30afa5  load.hu r1, -1446(r30)
00123c  e70f1fd8  storeli.w r1, -4872(r30)
001240  eb30cfa5  load.hu r1, -1444(r30)
001244  e74f1fd8  storeli.w r1, -4868(r30)
001248  eb30efa5  load.hu r1, -1442(r30)
00124c  67001fda  storeli.w r1, -4864(r30)
001250  eb300fa6  load.hu r1, -1440(r30)
001254  67401fda  storeli.w r1, -4860(r30)
001258  eb302fa6  load.hu r1, -1438(r30)
00125c  e7001fda  storeli.w r1, -4856(r30)
001260  eb304fa6  load.hu r1, -1436(r30)
001264  e7401fda  storeli.w r1, -4852(r30)
001268  eb306fa6  load.hu r1, -1434(r30)
00126c  67011fda  storeli.w r1, -4848(r30)
001270  eb308fa6  load.hu r1, -1432(r30)
001274  67411fda  storeli.w r1, -4844(r30)
001278  eb30afa6  load.hu r1, -1430(r30)
00127c  e7011fda  storeli.w r1, -4840(r30)
001280  eb30cfa6  load.hu r1, -1428(r30)
001284  e7411fda  storeli.w r1, -4836(r30)
001288  eb30efa6  load.hu r1, -1426(r30)
00128c  67021fda  storeli.w r1, -4832(r30)
001290  eb300fa7  load.hu r1, -1424(r30)
001294  67421fda  storeli.w r1, -4828(r30)
001298  eb302fa7  load.hu r1, -1422(r30)
00129c  e7021fda  storeli.w r1, -4824(r30)
0012a0  eb304fa7  load.hu r1, -1420(r30)
0012a4  e7421fda  storeli.w r1, -4820(r30)
0012a8  eb306fa7  load.hu r1, -1418(r30)
0012ac  67031fda  storeli.w r1, -4816(r30)
0012b0  eb308fa7  load.hu r1, -1416(r30)
0012b4  67431fda  storeli.w r1, -4812(r30)
0012b8  eb30afa7  load.hu r1, -1414(r30)
0012bc  e7031fda  storeli.w r1, -4808(r30)
0012c0  eb30cfa7  load.hu r1, -1412(r30)
0012c4  e7431fda  storeli.w r1, -4804(r30)
0012c8  eb30efa7  load.hu r1, -1410(r30)
0012cc  67041fda  storeli.w r1, -4800(r30)
0012d0  eb300fa8  load.hu r1, -1408(r30)
0012d4  67441fda  storeli.w r1, -4796(r30)
0012d8  eb302fa8  load.hu r1, -1406(r30)
0012dc  e7041fda  storeli.w r1, -4792(r30)
0012e0  eb304fa8  load.hu r1, -1404(r30)
0012e4  e7441fda  storeli.w r1, -4788(r30)
0012e8  eb306fa8  load.hu r1, -1402(r30)
0012ec  67051fda  storeli.w r1, -4784(r30)
0012f0  eb308fa8  load.hu r1, -1400(r30)
0012f4  67451fda  storeli.w r1, -4780(r30)
0012f8  eb30afa8  load.hu r1, -1398(r30)
0012fc  e7051fda  storeli.w r1, -4776(r30)
001300  eb30cfa8  load.hu r1, -1396(r30)
001304  e7451fda  storeli.w r1, -4772(r30)
001308  eb30efa8  load.hu r1, -1394(r30)
00130c  67061fda  storeli.w r1, -4768(r30)
001310  eb300fa9  load.hu r1, -1392(r30)
001314  67461fda  storeli.w r1, -4764(r30)
001318  eb302fa9  load.hu r1, -1390(r30)
00131c  e7061fda  storeli.w r1, -4760(r30)
001320  eb304fa9  load.hu r1, -1388(r30)
001324  e7461fda  storeli.w r1, -4756(r30)
001328  eb306fa9  load.hu r1, -1386(r30)
00132c  67071fda  storeli.w r1, -4752(r30)
001330  eb308fa9  load.hu r1, -1384(r30)
001334  67471fda  storeli.w r1, -4748(r30)
001338  eb30afa9  load.hu r1, -1382(r30)
00133c  e7071fda  storeli.w r1, -4744(r30)
001340  eb30cfa9  load.hu r1, -1380(r30)
001344  e7471fda  storeli.w r1, -4740(r30)
001348  eb30efa9  load.hu r1, -1378(r30)
00134c  67081fda  storeli.w r1, -4736(r30)
001350  eb300faa  load.hu r1, -1376(r30)
001354  67481fda  storeli.w r1, -4732(r30)
001358  eb302faa  load.hu r1, -1374(r30)
00135c  e7081fda  storeli.w r1, -4728(r30)
001360  eb304faa  load.hu r1, -1372(r30)
001364  e7481fda  storeli.w r1, -4724(r30)
001368  eb306faa  load.hu r1, -1370(r30)
00136c  67091fda  storeli.w r1, -4720(r30)
001370  eb308faa  load.hu r1, -1368(r30)
001374  67491fda  storeli.w r1, -4716(r30)
001378  eb30afaa  load.hu r1, -1366(r30)
00137c  e7091fda  storeli.w r1, -4712(r30)
001380  eb30cfaa  load.hu r1, -1364(r30)
001384  e7491fda  storeli.w r1, -4708(r30)
001388  eb30efaa  load.hu r1, -1362(r30)
00138c  670a1fda  storeli.w r1, -4704(r30)
001390  eb300fab  load.hu r1, -1360(r30)
001394  674a1fda  storeli.w r1, -4700(r30)
001398  eb302fab  load.hu r1, -1358(r30)
00139c  e70a1fda  storeli.w r1, -4696(r30)
0013a0  eb304fab  load.hu r1, -1356(r30)
0013a4  e74a1fda  storeli.w r1, -4692(r30)
0013a8  eb306fab  load.hu r1, -1354(r30)
0013ac  670b1fda  storeli.w r1, -4688(r30)
0013b0  eb308fab  load.hu r1, -1352(r30)
0013b4  674b1fda  storeli.w r1, -4684(r30)
0013b8  eb30afab  load.hu r1, -1350(r30)
0013bc  e70b1fda  storeli.w r1, -4680(r30)
0013c0  eb30cfab  load.hu r1, -1348(r30)
0013c4  e74b1fda  storeli.w r1, -4676(r30)
0013c8  eb30efab  load.hu r1, -1346(r30)
0013cc  670c1fda  storeli.w r1, -4672(r30)
0013d0  eb300fac  load.hu r1, -1344(r30)
0013d4  674c1fda  storeli.w r1, -4668(r30)
0013d8  eb302fac  load.hu r1, -1342(r30)
0013dc  e70c1fda  storeli.w r1, -4664(r30)
0013e0  eb304fac  load.hu r1, -1340(r30)
0013e4  e74c1fda  storeli.w r1, -4660(r30)
0013e8  eb306fac  load.hu r1, -1338(r30)
0013ec  670d1fda  storeli.w r1, -4656(r30)
0013f0  eb308fac  load.hu r1, -1336(r30)
0013f4  674d1fda  storeli.w r1, -4652(r30)
0013f8  eb30afac  load.hu r1, -1334(r30)
0013fc  e70d1fda  storeli.w r1, -4648(r30)
001400  eb30cfac  load.hu r1, -1332(r30)
001404  e74d1fda  storeli.w r1, -4644(r30)
001408  eb30efac  load.hu r1, -1330(r30)
00140c  670e1fda  storeli.w r1, -4640(r30)
001410  eb300fad  load.hu r1, -1328(r30)
001414  e74e1fda  storeli.w r1, -4628(r30)
001418  eb302fad  load.hu r1, -1326(r30)
00141c  670f1fda  storeli.w r1, -4624(r30)
001420  eb304fad  load.hu r1, -1324(r30)
001424  e74f1fda  storeli.w r1, -4612(r30)
001428  eb306fad  load.hu r1, -1322(r30)
00142c  e7451fdc  storeli.w r1, -4516(r30)
001430  eb308fad  load.hu r1, -1320(r30)
001434  e7061fdc  storeli.w r1, -4504(r30)
001438  eb30afad  load.hu r1, -1318(r30)
00143c  e7461fdc  storeli.w r1, -4500(r30)
001440  eb30cfad  load.hu r1, -1316(r30)
001444  e7071fdc  storeli.w r1, -4488(r30)
001448  eb30efad  load.hu r1, -1314(r30)
00144c  e7471fdc  storeli.w r1, -4484(r30)
001450  eb300fae  load.hu r1, -1312(r30)
001454  e7081fdc  storeli.w r1, -4472(r30)
001458  eb302fae  load.hu r1, -1310(r30)
00145c  e7481fdc  storeli.w r1, -4468(r30)
001460  eb304fae  load.hu r1, -1308(r30)
001464  e7091fdc  storeli.w r1, -4456(r30)
001468  eb306fae  load.hu r1, -1306(r30)
00146c  e7491fdc  storeli.w r1, -4452(r30)
001470  eb308fae  load.hu r1, -1304(r30)
001474  e70a1fdc  storeli.w r1, -4440(r30)
001478  eb30afae  load.hu r1, -1302(r30)
00147c  e74a1fdc  storeli.w r1, -4436(r30)
001480  eb30cfae  load.hu r1, -1300(r30)
001484  e70b1fdc  storeli.w r1, -4424(r30)
001488  eb30efae  load.hu r1, -1298(r30)
00148c  e74b1fdc  storeli.w r1, -4420(r30)
001490  eb300faf  load.hu r1, -1296(r30)
001494  67041fde  storeli.w r1, -4288(r30)
001498  eb302faf  load.hu r1, -1294(r30)
00149c  67081fde  storeli.w r1, -4224(r30)
0014a0  eb304faf  load.hu r1, -1292(r30)
0014a4  67041fe0  storeli.w r1, -4032(r30)
0014a8  eb306faf  load.hu r1, -1290(r30)
0014ac  67001fe2  storeli.w r1, -3840(r30)
0014b0  eb308faf  load.hu r1, -1288(r30)
0014b4  670c1fea  storeli.w r1, -2624(r30)
0014b8  eb30afaf  load.hu r1, -1286(r30)
0014bc  67001fec  storeli.w r1, -2560(r30)
0014c0  eb30cfaf  load.hu r1, -1284(r30)
0014c4  67041fec  storeli.w r1, -2496(r30)
0014c8  eb30efaf  load.hu r1, -1282(r30)
0014cc  67081fec  storeli.w r1, -2432(r30)
0014d0  eb30cf8f  load.hu r1, -1796(r30)
0014d4  00a00000  mfence { lm }
0014d8  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
0014dc  1f0e0fdc  addli r28, r30, -4608
0014e0  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
0014e4  1f0e8ff6  addli r28, r30, -1216
0014e8  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
0014ec  1f0e8fe1  addli r28, r30, -3904
0014f0  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
0014f4  1f0e0ff7  addli r28, r30, -1152
0014f8  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
0014fc  1f0e0fe1  addli r28, r30, -3968
001500  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001504  1f0e8ff7  addli r28, r30, -1088
001508  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
00150c  1f0e8fe4  addli r28, r30, -3520
001510  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001514  1f0e0fe4  addli r28, r30, -3584
001518  42100f82  vload_mask16.mz vr0{mr1}, 1024(r30)
00151c  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001520  1f0e8fe3  addli r28, r30, -3648
001524  42108f82  vload_mask16.mz vr0{mr1}, 1088(r30)
001528  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
00152c  1f0e0fe6  addli r28, r30, -3328
001530  42100f83  vload_mask16.mz vr0{mr1}, 1152(r30)
001534  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001538  1f0e8fe5  addli r28, r30, -3392
00153c  42108f83  vload_mask16.mz vr0{mr1}, 1216(r30)
001540  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001544  1f0e0fe5  addli r28, r30, -3456
001548  42100fa2  vload_mask16.mz vr0{mr1}, 1280(r30)
00154c  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001550  1f0e8fe8  addli r28, r30, -3008
001554  42108fa2  vload_mask16.mz vr0{mr1}, 1344(r30)
001558  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
00155c  1f0e0fe8  addli r28, r30, -3072
001560  42100fa3  vload_mask16.mz vr0{mr1}, 1408(r30)
001564  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001568  1f0e8fe7  addli r28, r30, -3136
00156c  42108fa3  vload_mask16.mz vr0{mr1}, 1472(r30)
001570  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001574  1f0e8fea  addli r28, r30, -2752
001578  42100fc2  vload_mask16.mz vr0{mr1}, 1536(r30)
00157c  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001580  1f0e0fea  addli r28, r30, -2816
001584  42108fc2  vload_mask16.mz vr0{mr1}, 1600(r30)
001588  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
00158c  1f0e8fe9  addli r28, r30, -2880
001590  42100fc3  vload_mask16.mz vr0{mr1}, 1664(r30)
001594  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
001598  1f0e0fe9  addli r28, r30, -2944
00159c  42108fc3  vload_mask16.mz vr0{mr1}, 1728(r30)
0015a0  46100e02  vstore_mask16.mz vr0{mr1}, 0(r28)
0015a4  1f0e8fcc  addli r28, r30, -6592
0015a8  42100e02  vload_mask16.mz vr0{mr1}, 0(r28)
0015ac  1f1e0000  addli r28, zero, 1
0015b0  fe010ee0  vmmov mr3, r28
0015b4  630edfdb  loadli.w r28,  -4632(r30)
0015b8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0015bc  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0015c0  92330002  vadd.s.mz vr7{mr1}, zero, vr0
0015c4  92350002  vadd.s.mz vr11{mr1}, zero, vr0
0015c8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0015cc  92320002  vadd.s.mz vr5{mr1}, zero, vr0
0015d0  12320002  vadd.s.mz vr4{mr1}, zero, vr0
0015d4  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0015d8  12310002  vadd.s.mz vr2{mr1}, zero, vr0
0015dc  ea401e36  vor.hf.mh vr1{mr3}, r28, vr1
0015e0  1f2e0000  addli r28, zero, 2
0015e4  fe010ee0  vmmov mr3, r28
0015e8  634ecfdb  loadli.w r28,  -4636(r30)
0015ec  ea401e36  vor.hf.mh vr1{mr3}, r28, vr1
0015f0  1f4e0000  addli r28, zero, 4
0015f4  7e010ee0  vmmov mr2, r28
0015f8  630effdb  loadli.w r28,  -4616(r30)
0015fc  ea401e34  vor.hf.mh vr1{mr2}, r28, vr1
001600  1f0e1000  addli r28, zero, 8
001604  7e000ee0  vmmov mr0, r28
001608  634eefdb  loadli.w r28,  -4620(r30)
00160c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001610  1f0e2000  addli r28, zero, 16
001614  7e000ee0  vmmov mr0, r28
001618  634ecfdc  loadli.w r28,  -4508(r30)
00161c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001620  1f0e4000  addli r28, zero, 32
001624  7e000ee0  vmmov mr0, r28
001628  630ecfdc  loadli.w r28,  -4512(r30)
00162c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001630  1f0e8000  addli r28, zero, 64
001634  7e000ee0  vmmov mr0, r28
001638  634eefdc  loadli.w r28,  -4492(r30)
00163c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001640  1f0e0001  addli r28, zero, 128
001644  7e000ee0  vmmov mr0, r28
001648  630eefdc  loadli.w r28,  -4496(r30)
00164c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001650  1f0e0002  addli r28, zero, 256
001654  7e000ee0  vmmov mr0, r28
001658  634e0fdd  loadli.w r28,  -4476(r30)
00165c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001660  1f0e0004  addli r28, zero, 512
001664  7e000ee0  vmmov mr0, r28
001668  630e0fdd  loadli.w r28,  -4480(r30)
00166c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001670  1f0e0008  addli r28, zero, 1024
001674  7e000ee0  vmmov mr0, r28
001678  634e2fdd  loadli.w r28,  -4460(r30)
00167c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001680  1f0e0010  addli r28, zero, 2048
001684  7e000ee0  vmmov mr0, r28
001688  630e2fdd  loadli.w r28,  -4464(r30)
00168c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001690  1f0e0020  addli r28, zero, 4096
001694  7e000ee0  vmmov mr0, r28
001698  634e4fdd  loadli.w r28,  -4444(r30)
00169c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
0016a0  1f0e0040  addli r28, zero, 8192
0016a4  7e000ee0  vmmov mr0, r28
0016a8  630e4fdd  loadli.w r28,  -4448(r30)
0016ac  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
0016b0  2b4e0000  lui r28, 4
0016b4  7e000ee0  vmmov mr0, r28
0016b8  634e6fdd  loadli.w r28,  -4428(r30)
0016bc  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
0016c0  2b8e0000  lui r28, 8
0016c4  7e000ee0  vmmov mr0, r28
0016c8  630e6fdd  loadli.w r28,  -4432(r30)
0016cc  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
0016d0  2b0e0100  lui r28, 16
0016d4  7e000ee0  vmmov mr0, r28
0016d8  630e0fde  loadli.w r28,  -4352(r30)
0016dc  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
0016e0  2b0e0200  lui r28, 32
0016e4  7e000ee0  vmmov mr0, r28
0016e8  630e8fdd  loadli.w r28,  -4416(r30)
0016ec  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
0016f0  2b0e0400  lui r28, 64
0016f4  7e000ee0  vmmov mr0, r28
0016f8  630e0fe0  loadli.w r28,  -4096(r30)
0016fc  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001700  2b0e0800  lui r28, 128
001704  7e000ee0  vmmov mr0, r28
001708  630e8fdf  loadli.w r28,  -4160(r30)
00170c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001710  2b0e1000  lui r28, 256
001714  7e000ee0  vmmov mr0, r28
001718  630e0fe3  loadli.w r28,  -3712(r30)
00171c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001720  2b0e2000  lui r28, 512
001724  7e000ee0  vmmov mr0, r28
001728  630e8fe2  loadli.w r28,  -3776(r30)
00172c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001730  2b0e4000  lui r28, 1024
001734  7e000ee0  vmmov mr0, r28
001738  630e0fe7  loadli.w r28,  -3200(r30)
00173c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001740  2b0e8000  lui r28, 2048
001744  7e000ee0  vmmov mr0, r28
001748  630e8fe6  loadli.w r28,  -3264(r30)
00174c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001750  2b0e0001  lui r28, 4096
001754  7e000ee0  vmmov mr0, r28
001758  630e0feb  loadli.w r28,  -2688(r30)
00175c  ea401e30  vor.hf.mh vr1{mr0}, r28, vr1
001760  2b0e0002  lui r28, 8192
001764  7e000ee0  vmmov mr0, r28
001768  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
00176c  2b020004  lui r4, 16384
001770  7e0002e0  vmmov mr0, r4
001774  2b020008  lui r4, 32768
001778  eac01230  vor.hf.mh vr1{mr0}, r5, vr1
00177c  7e0002e0  vmmov mr0, r4
001780  2b020010  lui r4, 65536
001784  ab020200  lui r5, 32
001788  ea401330  vor.hf.mh vr1{mr0}, r6, vr1
00178c  7e0002e0  vmmov mr0, r4
001790  2b020020  lui r4, 131072
001794  eac01330  vor.hf.mh vr1{mr0}, r7, vr1
001798  7e0002e0  vmmov mr0, r4
00179c  2b020040  lui r4, 262144
0017a0  ea401430  vor.hf.mh vr1{mr0}, r8, vr1
0017a4  7e0002e0  vmmov mr0, r4
0017a8  2b020080  lui r4, 524288
0017ac  eac01430  vor.hf.mh vr1{mr0}, r9, vr1
0017b0  7e0002e0  vmmov mr0, r4
0017b4  1f020feb  addli r4, r30, -2688
0017b8  ea401530  vor.hf.mh vr1{mr0}, r10, vr1
0017bc  00a00000  mfence { lm }
0017c0  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
0017c4  92300002  vadd.s.mz vr1{mr1}, zero, vr0
0017c8  1f120000  addli r4, zero, 1
0017cc  7e0002e0  vmmov mr0, r4
0017d0  1f021000  addli r4, zero, 8
0017d4  eac01530  vor.hf.mh vr1{mr0}, r11, vr1
0017d8  ea401636  vor.hf.mh vr1{mr3}, r12, vr1
0017dc  eac01634  vor.hf.mh vr1{mr2}, r13, vr1
0017e0  7e0102e0  vmmov mr2, r4
0017e4  1f022000  addli r4, zero, 16
0017e8  ea401734  vor.hf.mh vr1{mr2}, r14, vr1
0017ec  7e0102e0  vmmov mr2, r4
0017f0  1f024000  addli r4, zero, 32
0017f4  eac01734  vor.hf.mh vr1{mr2}, r15, vr1
0017f8  7e0102e0  vmmov mr2, r4
0017fc  1f028000  addli r4, zero, 64
001800  ea401834  vor.hf.mh vr1{mr2}, r16, vr1
001804  7e0102e0  vmmov mr2, r4
001808  1f020001  addli r4, zero, 128
00180c  eac01834  vor.hf.mh vr1{mr2}, r17, vr1
001810  7e0102e0  vmmov mr2, r4
001814  1f020002  addli r4, zero, 256
001818  ea401934  vor.hf.mh vr1{mr2}, r18, vr1
00181c  7e0102e0  vmmov mr2, r4
001820  1f020004  addli r4, zero, 512
001824  eac01934  vor.hf.mh vr1{mr2}, r19, vr1
001828  7e0102e0  vmmov mr2, r4
00182c  1f020008  addli r4, zero, 1024
001830  ea401a34  vor.hf.mh vr1{mr2}, r20, vr1
001834  7e0102e0  vmmov mr2, r4
001838  1f020010  addli r4, zero, 2048
00183c  eac01a34  vor.hf.mh vr1{mr2}, r21, vr1
001840  7e0102e0  vmmov mr2, r4
001844  1f020020  addli r4, zero, 4096
001848  ea401b34  vor.hf.mh vr1{mr2}, r22, vr1
00184c  7e0102e0  vmmov mr2, r4
001850  1f020040  addli r4, zero, 8192
001854  eac01b34  vor.hf.mh vr1{mr2}, r23, vr1
001858  7e0102e0  vmmov mr2, r4
00185c  2b420000  lui r4, 4
001860  ea401c34  vor.hf.mh vr1{mr2}, r24, vr1
001864  7e0102e0  vmmov mr2, r4
001868  2b820000  lui r4, 8
00186c  eac01c34  vor.hf.mh vr1{mr2}, r25, vr1
001870  7e0102e0  vmmov mr2, r4
001874  2b020100  lui r4, 16
001878  ea401d34  vor.hf.mh vr1{mr2}, r26, vr1
00187c  7e0102e0  vmmov mr2, r4
001880  eac01d34  vor.hf.mh vr1{mr2}, r27, vr1
001884  63422fce  loadli.w r4,  -6380(r30)
001888  7e8102e0  vmmov mr2, r5
00188c  ab020400  lui r5, 64
001890  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001894  63023fce  loadli.w r4,  -6376(r30)
001898  7e8102e0  vmmov mr2, r5
00189c  ab020800  lui r5, 128
0018a0  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
0018a4  63423fce  loadli.w r4,  -6372(r30)
0018a8  7e8102e0  vmmov mr2, r5
0018ac  ab021000  lui r5, 256
0018b0  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
0018b4  63024fce  loadli.w r4,  -6368(r30)
0018b8  7e8102e0  vmmov mr2, r5
0018bc  ab022000  lui r5, 512
0018c0  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
0018c4  63424fce  loadli.w r4,  -6364(r30)
0018c8  7e8102e0  vmmov mr2, r5
0018cc  ab024000  lui r5, 1024
0018d0  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
0018d4  63025fce  loadli.w r4,  -6360(r30)
0018d8  7e8102e0  vmmov mr2, r5
0018dc  ab028000  lui r5, 2048
0018e0  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
0018e4  63425fce  loadli.w r4,  -6356(r30)
0018e8  7e8102e0  vmmov mr2, r5
0018ec  ab020001  lui r5, 4096
0018f0  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
0018f4  63026fce  loadli.w r4,  -6352(r30)
0018f8  7e8102e0  vmmov mr2, r5
0018fc  ab020002  lui r5, 8192
001900  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001904  63426fce  loadli.w r4,  -6348(r30)
001908  7e8102e0  vmmov mr2, r5
00190c  ab020004  lui r5, 16384
001910  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001914  63027fce  loadli.w r4,  -6344(r30)
001918  7e8102e0  vmmov mr2, r5
00191c  ab020008  lui r5, 32768
001920  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001924  63427fce  loadli.w r4,  -6340(r30)
001928  7e8102e0  vmmov mr2, r5
00192c  ab020010  lui r5, 65536
001930  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001934  63028fce  loadli.w r4,  -6336(r30)
001938  7e8102e0  vmmov mr2, r5
00193c  ab020040  lui r5, 262144
001940  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001944  2b020020  lui r4, 131072
001948  7e8102e0  vmmov mr2, r5
00194c  ab020080  lui r5, 524288
001950  fe0102e0  vmmov mr3, r4
001954  63428fce  loadli.w r4,  -6332(r30)
001958  ea401236  vor.hf.mh vr1{mr3}, r4, vr1
00195c  63029fce  loadli.w r4,  -6328(r30)
001960  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001964  63429fce  loadli.w r4,  -6324(r30)
001968  7e8102e0  vmmov mr2, r5
00196c  9f220000  addli r5, zero, 2
001970  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001974  1f020fe7  addli r4, r30, -3200
001978  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
00197c  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001980  6302afce  loadli.w r4,  -6320(r30)
001984  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001988  6342afce  loadli.w r4,  -6316(r30)
00198c  7e8002e0  vmmov mr0, r5
001990  9f420000  addli r5, zero, 4
001994  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001998  6302bfce  loadli.w r4,  -6312(r30)
00199c  7e8002e0  vmmov mr0, r5
0019a0  9f021000  addli r5, zero, 8
0019a4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0019a8  6342bfce  loadli.w r4,  -6308(r30)
0019ac  7e8002e0  vmmov mr0, r5
0019b0  9f022000  addli r5, zero, 16
0019b4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0019b8  6302cfce  loadli.w r4,  -6304(r30)
0019bc  7e8002e0  vmmov mr0, r5
0019c0  9f024000  addli r5, zero, 32
0019c4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0019c8  6342cfce  loadli.w r4,  -6300(r30)
0019cc  7e8002e0  vmmov mr0, r5
0019d0  9f028000  addli r5, zero, 64
0019d4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0019d8  6302dfce  loadli.w r4,  -6296(r30)
0019dc  7e8002e0  vmmov mr0, r5
0019e0  9f020001  addli r5, zero, 128
0019e4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0019e8  6342dfce  loadli.w r4,  -6292(r30)
0019ec  7e8002e0  vmmov mr0, r5
0019f0  9f020002  addli r5, zero, 256
0019f4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0019f8  6302efce  loadli.w r4,  -6288(r30)
0019fc  7e8002e0  vmmov mr0, r5
001a00  9f020004  addli r5, zero, 512
001a04  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a08  6342efce  loadli.w r4,  -6284(r30)
001a0c  7e8002e0  vmmov mr0, r5
001a10  9f020008  addli r5, zero, 1024
001a14  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a18  6302ffce  loadli.w r4,  -6280(r30)
001a1c  7e8002e0  vmmov mr0, r5
001a20  9f020010  addli r5, zero, 2048
001a24  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a28  6342ffce  loadli.w r4,  -6276(r30)
001a2c  7e8002e0  vmmov mr0, r5
001a30  9f020020  addli r5, zero, 4096
001a34  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a38  63020fcf  loadli.w r4,  -6272(r30)
001a3c  7e8002e0  vmmov mr0, r5
001a40  9f020040  addli r5, zero, 8192
001a44  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a48  63420fcf  loadli.w r4,  -6268(r30)
001a4c  7e8002e0  vmmov mr0, r5
001a50  ab420000  lui r5, 4
001a54  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a58  63021fcf  loadli.w r4,  -6264(r30)
001a5c  7e8002e0  vmmov mr0, r5
001a60  ab820000  lui r5, 8
001a64  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a68  63421fcf  loadli.w r4,  -6260(r30)
001a6c  7e8002e0  vmmov mr0, r5
001a70  ab020100  lui r5, 16
001a74  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a78  63022fcf  loadli.w r4,  -6256(r30)
001a7c  7e8002e0  vmmov mr0, r5
001a80  ab020200  lui r5, 32
001a84  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a88  63422fcf  loadli.w r4,  -6252(r30)
001a8c  7e8002e0  vmmov mr0, r5
001a90  ab020400  lui r5, 64
001a94  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001a98  63023fcf  loadli.w r4,  -6248(r30)
001a9c  7e8002e0  vmmov mr0, r5
001aa0  ab020800  lui r5, 128
001aa4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001aa8  63423fcf  loadli.w r4,  -6244(r30)
001aac  7e8002e0  vmmov mr0, r5
001ab0  ab021000  lui r5, 256
001ab4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001ab8  63024fcf  loadli.w r4,  -6240(r30)
001abc  7e8002e0  vmmov mr0, r5
001ac0  ab022000  lui r5, 512
001ac4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001ac8  63424fcf  loadli.w r4,  -6236(r30)
001acc  7e8002e0  vmmov mr0, r5
001ad0  ab024000  lui r5, 1024
001ad4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001ad8  63025fcf  loadli.w r4,  -6232(r30)
001adc  7e8002e0  vmmov mr0, r5
001ae0  ab028000  lui r5, 2048
001ae4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001ae8  63425fcf  loadli.w r4,  -6228(r30)
001aec  7e8002e0  vmmov mr0, r5
001af0  ab020001  lui r5, 4096
001af4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001af8  63026fcf  loadli.w r4,  -6224(r30)
001afc  7e8002e0  vmmov mr0, r5
001b00  ab020002  lui r5, 8192
001b04  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001b08  63426fcf  loadli.w r4,  -6220(r30)
001b0c  7e8002e0  vmmov mr0, r5
001b10  ab020004  lui r5, 16384
001b14  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001b18  63027fcf  loadli.w r4,  -6216(r30)
001b1c  7e8002e0  vmmov mr0, r5
001b20  ab020008  lui r5, 32768
001b24  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001b28  63427fcf  loadli.w r4,  -6212(r30)
001b2c  7e8002e0  vmmov mr0, r5
001b30  ab020010  lui r5, 65536
001b34  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001b38  63028fcf  loadli.w r4,  -6208(r30)
001b3c  7e8002e0  vmmov mr0, r5
001b40  ab020040  lui r5, 262144
001b44  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001b48  63428fcf  loadli.w r4,  -6204(r30)
001b4c  ea401236  vor.hf.mh vr1{mr3}, r4, vr1
001b50  63029fcf  loadli.w r4,  -6200(r30)
001b54  fe8102e0  vmmov mr3, r5
001b58  9f120000  addli r5, zero, 1
001b5c  7e8001c0  vmmov mr0, mr3
001b60  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001b64  2b020080  lui r4, 524288
001b68  7e0102e0  vmmov mr2, r4
001b6c  7e0001c0  vmmov mr0, mr2
001b70  63429fcf  loadli.w r4,  -6196(r30)
001b74  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001b78  1f028fe6  addli r4, r30, -3264
001b7c  7e8002e0  vmmov mr0, r5
001b80  9f220000  addli r5, zero, 2
001b84  7e8102e0  vmmov mr2, r5
001b88  9f420000  addli r5, zero, 4
001b8c  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
001b90  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001b94  6302afcf  loadli.w r4,  -6192(r30)
001b98  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001b9c  6342afcf  loadli.w r4,  -6188(r30)
001ba0  7e8002e0  vmmov mr0, r5
001ba4  9f021000  addli r5, zero, 8
001ba8  fe8102e0  vmmov mr3, r5
001bac  9f022000  addli r5, zero, 16
001bb0  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001bb4  6302bfcf  loadli.w r4,  -6184(r30)
001bb8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001bbc  6342bfcf  loadli.w r4,  -6180(r30)
001bc0  7e8001c0  vmmov mr0, mr3
001bc4  fe8102e0  vmmov mr3, r5
001bc8  9f024000  addli r5, zero, 32
001bcc  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001bd0  6302cfcf  loadli.w r4,  -6176(r30)
001bd4  7e8001c0  vmmov mr0, mr3
001bd8  fe8102e0  vmmov mr3, r5
001bdc  9f028000  addli r5, zero, 64
001be0  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001be4  6342cfcf  loadli.w r4,  -6172(r30)
001be8  7e8001c0  vmmov mr0, mr3
001bec  fe8102e0  vmmov mr3, r5
001bf0  9f020001  addli r5, zero, 128
001bf4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001bf8  6302dfcf  loadli.w r4,  -6168(r30)
001bfc  7e8001c0  vmmov mr0, mr3
001c00  fe8102e0  vmmov mr3, r5
001c04  9f020002  addli r5, zero, 256
001c08  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001c0c  6342dfcf  loadli.w r4,  -6164(r30)
001c10  7e8001c0  vmmov mr0, mr3
001c14  fe8102e0  vmmov mr3, r5
001c18  9f020004  addli r5, zero, 512
001c1c  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001c20  6302efcf  loadli.w r4,  -6160(r30)
001c24  7e8001c0  vmmov mr0, mr3
001c28  fe8102e0  vmmov mr3, r5
001c2c  9f020008  addli r5, zero, 1024
001c30  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001c34  6342efcf  loadli.w r4,  -6156(r30)
001c38  7e8001c0  vmmov mr0, mr3
001c3c  fe8102e0  vmmov mr3, r5
001c40  9f020010  addli r5, zero, 2048
001c44  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001c48  6302ffcf  loadli.w r4,  -6152(r30)
001c4c  7e8001c0  vmmov mr0, mr3
001c50  fe8102e0  vmmov mr3, r5
001c54  9f020020  addli r5, zero, 4096
001c58  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001c5c  6342ffcf  loadli.w r4,  -6148(r30)
001c60  7e8001c0  vmmov mr0, mr3
001c64  fe8102e0  vmmov mr3, r5
001c68  9f020040  addli r5, zero, 8192
001c6c  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001c70  63020fd0  loadli.w r4,  -6144(r30)
001c74  7e8001c0  vmmov mr0, mr3
001c78  fe8102e0  vmmov mr3, r5
001c7c  ab420000  lui r5, 4
001c80  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001c84  63420fd0  loadli.w r4,  -6140(r30)
001c88  7e8001c0  vmmov mr0, mr3
001c8c  fe8102e0  vmmov mr3, r5
001c90  ab820000  lui r5, 8
001c94  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001c98  63021fd0  loadli.w r4,  -6136(r30)
001c9c  7e8001c0  vmmov mr0, mr3
001ca0  fe8102e0  vmmov mr3, r5
001ca4  ab020100  lui r5, 16
001ca8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001cac  63421fd0  loadli.w r4,  -6132(r30)
001cb0  7e8001c0  vmmov mr0, mr3
001cb4  fe8102e0  vmmov mr3, r5
001cb8  ab020200  lui r5, 32
001cbc  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001cc0  63022fd0  loadli.w r4,  -6128(r30)
001cc4  7e8001c0  vmmov mr0, mr3
001cc8  fe8102e0  vmmov mr3, r5
001ccc  ab020400  lui r5, 64
001cd0  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001cd4  63422fd0  loadli.w r4,  -6124(r30)
001cd8  7e8001c0  vmmov mr0, mr3
001cdc  fe8102e0  vmmov mr3, r5
001ce0  ab020800  lui r5, 128
001ce4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001ce8  63023fd0  loadli.w r4,  -6120(r30)
001cec  7e8001c0  vmmov mr0, mr3
001cf0  fe8102e0  vmmov mr3, r5
001cf4  ab021000  lui r5, 256
001cf8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001cfc  63423fd0  loadli.w r4,  -6116(r30)
001d00  7e8001c0  vmmov mr0, mr3
001d04  fe8102e0  vmmov mr3, r5
001d08  ab022000  lui r5, 512
001d0c  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001d10  63024fd0  loadli.w r4,  -6112(r30)
001d14  7e8001c0  vmmov mr0, mr3
001d18  fe8102e0  vmmov mr3, r5
001d1c  ab024000  lui r5, 1024
001d20  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001d24  63424fd0  loadli.w r4,  -6108(r30)
001d28  7e8001c0  vmmov mr0, mr3
001d2c  fe8102e0  vmmov mr3, r5
001d30  ab028000  lui r5, 2048
001d34  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001d38  63025fd0  loadli.w r4,  -6104(r30)
001d3c  7e8001c0  vmmov mr0, mr3
001d40  fe8102e0  vmmov mr3, r5
001d44  ab020001  lui r5, 4096
001d48  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001d4c  63425fd0  loadli.w r4,  -6100(r30)
001d50  7e8001c0  vmmov mr0, mr3
001d54  fe8102e0  vmmov mr3, r5
001d58  ab020002  lui r5, 8192
001d5c  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001d60  63026fd0  loadli.w r4,  -6096(r30)
001d64  7e8001c0  vmmov mr0, mr3
001d68  fe8102e0  vmmov mr3, r5
001d6c  ab020004  lui r5, 16384
001d70  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001d74  63426fd0  loadli.w r4,  -6092(r30)
001d78  7e8001c0  vmmov mr0, mr3
001d7c  fe8102e0  vmmov mr3, r5
001d80  ab020008  lui r5, 32768
001d84  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001d88  63027fd0  loadli.w r4,  -6088(r30)
001d8c  7e8001c0  vmmov mr0, mr3
001d90  fe8102e0  vmmov mr3, r5
001d94  ab020010  lui r5, 65536
001d98  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001d9c  63427fd0  loadli.w r4,  -6084(r30)
001da0  7e8001c0  vmmov mr0, mr3
001da4  fe8102e0  vmmov mr3, r5
001da8  ab020020  lui r5, 131072
001dac  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001db0  63028fd0  loadli.w r4,  -6080(r30)
001db4  ea401236  vor.hf.mh vr1{mr3}, r4, vr1
001db8  63428fd0  loadli.w r4,  -6076(r30)
001dbc  fe8102e0  vmmov mr3, r5
001dc0  ab020040  lui r5, 262144
001dc4  ea401236  vor.hf.mh vr1{mr3}, r4, vr1
001dc8  63029fd0  loadli.w r4,  -6072(r30)
001dcc  fe8102e0  vmmov mr3, r5
001dd0  ab020080  lui r5, 524288
001dd4  7e8002e0  vmmov mr0, r5
001dd8  9f120000  addli r5, zero, 1
001ddc  ea401236  vor.hf.mh vr1{mr3}, r4, vr1
001de0  63429fd0  loadli.w r4,  -6068(r30)
001de4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001de8  1f020fe3  addli r4, r30, -3712
001dec  7e8002e0  vmmov mr0, r5
001df0  9f420000  addli r5, zero, 4
001df4  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
001df8  92300002  vadd.s.mz vr1{mr1}, zero, vr0
001dfc  6302afd0  loadli.w r4,  -6064(r30)
001e00  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e04  6342afd0  loadli.w r4,  -6060(r30)
001e08  7e8002e0  vmmov mr0, r5
001e0c  9f021000  addli r5, zero, 8
001e10  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
001e14  6302bfd0  loadli.w r4,  -6056(r30)
001e18  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e1c  6342bfd0  loadli.w r4,  -6052(r30)
001e20  7e8002e0  vmmov mr0, r5
001e24  9f022000  addli r5, zero, 16
001e28  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e2c  6302cfd0  loadli.w r4,  -6048(r30)
001e30  7e8002e0  vmmov mr0, r5
001e34  9f024000  addli r5, zero, 32
001e38  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e3c  6342cfd0  loadli.w r4,  -6044(r30)
001e40  7e8002e0  vmmov mr0, r5
001e44  9f028000  addli r5, zero, 64
001e48  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e4c  6302dfd0  loadli.w r4,  -6040(r30)
001e50  7e8002e0  vmmov mr0, r5
001e54  9f020001  addli r5, zero, 128
001e58  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e5c  6342dfd0  loadli.w r4,  -6036(r30)
001e60  7e8002e0  vmmov mr0, r5
001e64  9f020002  addli r5, zero, 256
001e68  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e6c  6302efd0  loadli.w r4,  -6032(r30)
001e70  7e8002e0  vmmov mr0, r5
001e74  9f020004  addli r5, zero, 512
001e78  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e7c  6342efd0  loadli.w r4,  -6028(r30)
001e80  7e8002e0  vmmov mr0, r5
001e84  9f020008  addli r5, zero, 1024
001e88  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e8c  6302ffd0  loadli.w r4,  -6024(r30)
001e90  7e8002e0  vmmov mr0, r5
001e94  9f020010  addli r5, zero, 2048
001e98  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001e9c  6342ffd0  loadli.w r4,  -6020(r30)
001ea0  7e8002e0  vmmov mr0, r5
001ea4  9f020020  addli r5, zero, 4096
001ea8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001eac  63020fd1  loadli.w r4,  -6016(r30)
001eb0  7e8002e0  vmmov mr0, r5
001eb4  9f020040  addli r5, zero, 8192
001eb8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001ebc  63420fd1  loadli.w r4,  -6012(r30)
001ec0  7e8002e0  vmmov mr0, r5
001ec4  ab420000  lui r5, 4
001ec8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001ecc  63021fd1  loadli.w r4,  -6008(r30)
001ed0  7e8002e0  vmmov mr0, r5
001ed4  ab820000  lui r5, 8
001ed8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001edc  63421fd1  loadli.w r4,  -6004(r30)
001ee0  7e8002e0  vmmov mr0, r5
001ee4  ab020100  lui r5, 16
001ee8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001eec  63022fd1  loadli.w r4,  -6000(r30)
001ef0  7e8002e0  vmmov mr0, r5
001ef4  ab020200  lui r5, 32
001ef8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001efc  63422fd1  loadli.w r4,  -5996(r30)
001f00  7e8002e0  vmmov mr0, r5
001f04  ab020400  lui r5, 64
001f08  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f0c  63023fd1  loadli.w r4,  -5992(r30)
001f10  7e8002e0  vmmov mr0, r5
001f14  ab020800  lui r5, 128
001f18  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f1c  63423fd1  loadli.w r4,  -5988(r30)
001f20  7e8002e0  vmmov mr0, r5
001f24  ab021000  lui r5, 256
001f28  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f2c  63024fd1  loadli.w r4,  -5984(r30)
001f30  7e8002e0  vmmov mr0, r5
001f34  ab022000  lui r5, 512
001f38  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f3c  63424fd1  loadli.w r4,  -5980(r30)
001f40  7e8002e0  vmmov mr0, r5
001f44  ab024000  lui r5, 1024
001f48  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f4c  63025fd1  loadli.w r4,  -5976(r30)
001f50  7e8002e0  vmmov mr0, r5
001f54  ab028000  lui r5, 2048
001f58  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f5c  63425fd1  loadli.w r4,  -5972(r30)
001f60  7e8002e0  vmmov mr0, r5
001f64  ab020001  lui r5, 4096
001f68  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f6c  63026fd1  loadli.w r4,  -5968(r30)
001f70  7e8002e0  vmmov mr0, r5
001f74  ab020002  lui r5, 8192
001f78  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f7c  63426fd1  loadli.w r4,  -5964(r30)
001f80  7e8002e0  vmmov mr0, r5
001f84  ab020004  lui r5, 16384
001f88  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f8c  63027fd1  loadli.w r4,  -5960(r30)
001f90  7e8002e0  vmmov mr0, r5
001f94  ab020008  lui r5, 32768
001f98  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001f9c  63427fd1  loadli.w r4,  -5956(r30)
001fa0  7e8002e0  vmmov mr0, r5
001fa4  ab020010  lui r5, 65536
001fa8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001fac  63028fd1  loadli.w r4,  -5952(r30)
001fb0  7e8002e0  vmmov mr0, r5
001fb4  ab020020  lui r5, 131072
001fb8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001fbc  2b020010  lui r4, 65536
001fc0  7e8002e0  vmmov mr0, r5
001fc4  ab020080  lui r5, 524288
001fc8  7e0102e0  vmmov mr2, r4
001fcc  63428fd1  loadli.w r4,  -5948(r30)
001fd0  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001fd4  63029fd1  loadli.w r4,  -5944(r30)
001fd8  7e8002e0  vmmov mr0, r5
001fdc  9f120000  addli r5, zero, 1
001fe0  ea401236  vor.hf.mh vr1{mr3}, r4, vr1
001fe4  63429fd1  loadli.w r4,  -5940(r30)
001fe8  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
001fec  1f028fe2  addli r4, r30, -3776
001ff0  7e8002e0  vmmov mr0, r5
001ff4  9f220000  addli r5, zero, 2
001ff8  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
001ffc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002000  6302afd1  loadli.w r4,  -5936(r30)
002004  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002008  6342afd1  loadli.w r4,  -5932(r30)
00200c  7e8002e0  vmmov mr0, r5
002010  9f420000  addli r5, zero, 4
002014  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002018  6302bfd1  loadli.w r4,  -5928(r30)
00201c  7e8002e0  vmmov mr0, r5
002020  9f021000  addli r5, zero, 8
002024  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002028  6342bfd1  loadli.w r4,  -5924(r30)
00202c  7e8002e0  vmmov mr0, r5
002030  9f022000  addli r5, zero, 16
002034  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002038  6302cfd1  loadli.w r4,  -5920(r30)
00203c  7e8002e0  vmmov mr0, r5
002040  9f024000  addli r5, zero, 32
002044  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002048  6342cfd1  loadli.w r4,  -5916(r30)
00204c  7e8002e0  vmmov mr0, r5
002050  9f028000  addli r5, zero, 64
002054  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002058  6302dfd1  loadli.w r4,  -5912(r30)
00205c  7e8002e0  vmmov mr0, r5
002060  9f020001  addli r5, zero, 128
002064  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002068  6342dfd1  loadli.w r4,  -5908(r30)
00206c  7e8002e0  vmmov mr0, r5
002070  9f020002  addli r5, zero, 256
002074  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002078  6302efd1  loadli.w r4,  -5904(r30)
00207c  7e8002e0  vmmov mr0, r5
002080  9f020004  addli r5, zero, 512
002084  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002088  6342efd1  loadli.w r4,  -5900(r30)
00208c  7e8002e0  vmmov mr0, r5
002090  9f020008  addli r5, zero, 1024
002094  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002098  6302ffd1  loadli.w r4,  -5896(r30)
00209c  7e8002e0  vmmov mr0, r5
0020a0  9f020010  addli r5, zero, 2048
0020a4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0020a8  6342ffd1  loadli.w r4,  -5892(r30)
0020ac  7e8002e0  vmmov mr0, r5
0020b0  9f020020  addli r5, zero, 4096
0020b4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0020b8  63020fd2  loadli.w r4,  -5888(r30)
0020bc  7e8002e0  vmmov mr0, r5
0020c0  9f020040  addli r5, zero, 8192
0020c4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0020c8  63420fd2  loadli.w r4,  -5884(r30)
0020cc  7e8002e0  vmmov mr0, r5
0020d0  ab420000  lui r5, 4
0020d4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0020d8  63021fd2  loadli.w r4,  -5880(r30)
0020dc  7e8002e0  vmmov mr0, r5
0020e0  ab820000  lui r5, 8
0020e4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0020e8  63421fd2  loadli.w r4,  -5876(r30)
0020ec  7e8002e0  vmmov mr0, r5
0020f0  ab020100  lui r5, 16
0020f4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0020f8  63022fd2  loadli.w r4,  -5872(r30)
0020fc  7e8002e0  vmmov mr0, r5
002100  ab020200  lui r5, 32
002104  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002108  63422fd2  loadli.w r4,  -5868(r30)
00210c  7e8002e0  vmmov mr0, r5
002110  ab020400  lui r5, 64
002114  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002118  63023fd2  loadli.w r4,  -5864(r30)
00211c  7e8002e0  vmmov mr0, r5
002120  ab020800  lui r5, 128
002124  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002128  63423fd2  loadli.w r4,  -5860(r30)
00212c  7e8002e0  vmmov mr0, r5
002130  ab021000  lui r5, 256
002134  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002138  63024fd2  loadli.w r4,  -5856(r30)
00213c  7e8002e0  vmmov mr0, r5
002140  ab022000  lui r5, 512
002144  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002148  63424fd2  loadli.w r4,  -5852(r30)
00214c  7e8002e0  vmmov mr0, r5
002150  ab024000  lui r5, 1024
002154  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002158  63025fd2  loadli.w r4,  -5848(r30)
00215c  7e8002e0  vmmov mr0, r5
002160  ab028000  lui r5, 2048
002164  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002168  63425fd2  loadli.w r4,  -5844(r30)
00216c  7e8002e0  vmmov mr0, r5
002170  ab020001  lui r5, 4096
002174  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002178  63026fd2  loadli.w r4,  -5840(r30)
00217c  7e8002e0  vmmov mr0, r5
002180  ab020002  lui r5, 8192
002184  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002188  63426fd2  loadli.w r4,  -5836(r30)
00218c  7e8002e0  vmmov mr0, r5
002190  ab020004  lui r5, 16384
002194  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
002198  63027fd2  loadli.w r4,  -5832(r30)
00219c  7e8002e0  vmmov mr0, r5
0021a0  ab020008  lui r5, 32768
0021a4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0021a8  63427fd2  loadli.w r4,  -5828(r30)
0021ac  7e8002e0  vmmov mr0, r5
0021b0  ab020020  lui r5, 131072
0021b4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0021b8  63028fd2  loadli.w r4,  -5824(r30)
0021bc  7e8002e0  vmmov mr0, r5
0021c0  ab020080  lui r5, 524288
0021c4  ea401234  vor.hf.mh vr1{mr2}, r4, vr1
0021c8  63428fd2  loadli.w r4,  -5820(r30)
0021cc  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0021d0  63029fd2  loadli.w r4,  -5816(r30)
0021d4  7e8002e0  vmmov mr0, r5
0021d8  9f120000  addli r5, zero, 1
0021dc  ea401236  vor.hf.mh vr1{mr3}, r4, vr1
0021e0  63429fd2  loadli.w r4,  -5812(r30)
0021e4  ea401230  vor.hf.mh vr1{mr0}, r4, vr1
0021e8  1f020fe0  addli r4, r30, -4096
0021ec  7e8002e0  vmmov mr0, r5
0021f0  9f220000  addli r5, zero, 2
0021f4  46101202  vstore_mask16.mz vr1{mr1}, 0(r4)
0021f8  6302afd2  loadli.w r4,  -5808(r30)
0021fc  92300002  vadd.s.mz vr1{mr1}, zero, vr0
002200  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002204  6342afd2  loadli.w r4,  -5804(r30)
002208  7e8002e0  vmmov mr0, r5
00220c  9f420000  addli r5, zero, 4
002210  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002214  6302bfd2  loadli.w r4,  -5800(r30)
002218  7e8002e0  vmmov mr0, r5
00221c  9f021000  addli r5, zero, 8
002220  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002224  6342bfd2  loadli.w r4,  -5796(r30)
002228  7e8002e0  vmmov mr0, r5
00222c  9f022000  addli r5, zero, 16
002230  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002234  6302cfd2  loadli.w r4,  -5792(r30)
002238  7e8002e0  vmmov mr0, r5
00223c  9f024000  addli r5, zero, 32
002240  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002244  6342cfd2  loadli.w r4,  -5788(r30)
002248  7e8002e0  vmmov mr0, r5
00224c  9f028000  addli r5, zero, 64
002250  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002254  6302dfd2  loadli.w r4,  -5784(r30)
002258  7e8002e0  vmmov mr0, r5
00225c  9f020001  addli r5, zero, 128
002260  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002264  6342dfd2  loadli.w r4,  -5780(r30)
002268  7e8002e0  vmmov mr0, r5
00226c  9f020002  addli r5, zero, 256
002270  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002274  6302efd2  loadli.w r4,  -5776(r30)
002278  7e8002e0  vmmov mr0, r5
00227c  9f020004  addli r5, zero, 512
002280  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002284  6342efd2  loadli.w r4,  -5772(r30)
002288  7e8002e0  vmmov mr0, r5
00228c  9f020008  addli r5, zero, 1024
002290  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002294  6302ffd2  loadli.w r4,  -5768(r30)
002298  7e8002e0  vmmov mr0, r5
00229c  9f020010  addli r5, zero, 2048
0022a0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0022a4  6342ffd2  loadli.w r4,  -5764(r30)
0022a8  7e8002e0  vmmov mr0, r5
0022ac  9f020020  addli r5, zero, 4096
0022b0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0022b4  63020fd3  loadli.w r4,  -5760(r30)
0022b8  7e8002e0  vmmov mr0, r5
0022bc  9f020040  addli r5, zero, 8192
0022c0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0022c4  63420fd3  loadli.w r4,  -5756(r30)
0022c8  7e8002e0  vmmov mr0, r5
0022cc  ab420000  lui r5, 4
0022d0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0022d4  63021fd3  loadli.w r4,  -5752(r30)
0022d8  7e8002e0  vmmov mr0, r5
0022dc  ab820000  lui r5, 8
0022e0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0022e4  63421fd3  loadli.w r4,  -5748(r30)
0022e8  7e8002e0  vmmov mr0, r5
0022ec  ab020100  lui r5, 16
0022f0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0022f4  63022fd3  loadli.w r4,  -5744(r30)
0022f8  7e8002e0  vmmov mr0, r5
0022fc  ab020200  lui r5, 32
002300  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002304  63422fd3  loadli.w r4,  -5740(r30)
002308  7e8002e0  vmmov mr0, r5
00230c  ab020400  lui r5, 64
002310  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002314  63023fd3  loadli.w r4,  -5736(r30)
002318  7e8002e0  vmmov mr0, r5
00231c  ab020800  lui r5, 128
002320  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002324  63423fd3  loadli.w r4,  -5732(r30)
002328  7e8002e0  vmmov mr0, r5
00232c  ab021000  lui r5, 256
002330  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002334  63024fd3  loadli.w r4,  -5728(r30)
002338  7e8002e0  vmmov mr0, r5
00233c  ab022000  lui r5, 512
002340  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002344  63424fd3  loadli.w r4,  -5724(r30)
002348  7e8002e0  vmmov mr0, r5
00234c  ab024000  lui r5, 1024
002350  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002354  63025fd3  loadli.w r4,  -5720(r30)
002358  7e8002e0  vmmov mr0, r5
00235c  ab028000  lui r5, 2048
002360  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002364  63425fd3  loadli.w r4,  -5716(r30)
002368  7e8002e0  vmmov mr0, r5
00236c  ab020001  lui r5, 4096
002370  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002374  63026fd3  loadli.w r4,  -5712(r30)
002378  7e8002e0  vmmov mr0, r5
00237c  ab020002  lui r5, 8192
002380  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002384  63426fd3  loadli.w r4,  -5708(r30)
002388  7e8002e0  vmmov mr0, r5
00238c  ab020004  lui r5, 16384
002390  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
002394  63027fd3  loadli.w r4,  -5704(r30)
002398  7e8002e0  vmmov mr0, r5
00239c  ab020008  lui r5, 32768
0023a0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0023a4  63427fd3  loadli.w r4,  -5700(r30)
0023a8  7e8002e0  vmmov mr0, r5
0023ac  ab020020  lui r5, 131072
0023b0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0023b4  63028fd3  loadli.w r4,  -5696(r30)
0023b8  7e8002e0  vmmov mr0, r5
0023bc  ab020080  lui r5, 524288
0023c0  6a448234  vor.hf.mh vr8{mr2}, r4, vr8
0023c4  63428fd3  loadli.w r4,  -5692(r30)
0023c8  7e8102e0  vmmov mr2, r5
0023cc  9f120000  addli r5, zero, 1
0023d0  6a448230  vor.hf.mh vr8{mr0}, r4, vr8
0023d4  63029fd3  loadli.w r4,  -5688(r30)
0023d8  7e8002e0  vmmov mr0, r5
0023dc  9f220000  addli r5, zero, 2
0023e0  6a448236  vor.hf.mh vr8{mr3}, r4, vr8
0023e4  63429fd3  loadli.w r4,  -5684(r30)
0023e8  6a448234  vor.hf.mh vr8{mr2}, r4, vr8
0023ec  2b020080  lui r4, 524288
0023f0  7e0102e0  vmmov mr2, r4
0023f4  6302afd3  loadli.w r4,  -5680(r30)
0023f8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0023fc  6342afd3  loadli.w r4,  -5676(r30)
002400  7e8002e0  vmmov mr0, r5
002404  9f420000  addli r5, zero, 4
002408  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00240c  6302bfd3  loadli.w r4,  -5672(r30)
002410  7e8002e0  vmmov mr0, r5
002414  9f021000  addli r5, zero, 8
002418  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00241c  6342bfd3  loadli.w r4,  -5668(r30)
002420  7e8002e0  vmmov mr0, r5
002424  9f022000  addli r5, zero, 16
002428  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00242c  6302cfd3  loadli.w r4,  -5664(r30)
002430  7e8002e0  vmmov mr0, r5
002434  9f024000  addli r5, zero, 32
002438  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00243c  6342cfd3  loadli.w r4,  -5660(r30)
002440  7e8002e0  vmmov mr0, r5
002444  9f028000  addli r5, zero, 64
002448  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00244c  6302dfd3  loadli.w r4,  -5656(r30)
002450  7e8002e0  vmmov mr0, r5
002454  9f020001  addli r5, zero, 128
002458  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00245c  6342dfd3  loadli.w r4,  -5652(r30)
002460  7e8002e0  vmmov mr0, r5
002464  9f020002  addli r5, zero, 256
002468  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00246c  6302efd3  loadli.w r4,  -5648(r30)
002470  7e8002e0  vmmov mr0, r5
002474  9f020004  addli r5, zero, 512
002478  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00247c  6342efd3  loadli.w r4,  -5644(r30)
002480  7e8002e0  vmmov mr0, r5
002484  9f020008  addli r5, zero, 1024
002488  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00248c  6302ffd3  loadli.w r4,  -5640(r30)
002490  7e8002e0  vmmov mr0, r5
002494  9f020010  addli r5, zero, 2048
002498  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00249c  6342ffd3  loadli.w r4,  -5636(r30)
0024a0  7e8002e0  vmmov mr0, r5
0024a4  9f020020  addli r5, zero, 4096
0024a8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0024ac  63020fd4  loadli.w r4,  -5632(r30)
0024b0  7e8002e0  vmmov mr0, r5
0024b4  9f020040  addli r5, zero, 8192
0024b8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0024bc  63420fd4  loadli.w r4,  -5628(r30)
0024c0  7e8002e0  vmmov mr0, r5
0024c4  ab420000  lui r5, 4
0024c8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0024cc  63021fd4  loadli.w r4,  -5624(r30)
0024d0  7e8002e0  vmmov mr0, r5
0024d4  ab820000  lui r5, 8
0024d8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0024dc  63421fd4  loadli.w r4,  -5620(r30)
0024e0  7e8002e0  vmmov mr0, r5
0024e4  ab020100  lui r5, 16
0024e8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0024ec  63022fd4  loadli.w r4,  -5616(r30)
0024f0  7e8002e0  vmmov mr0, r5
0024f4  ab020200  lui r5, 32
0024f8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0024fc  63422fd4  loadli.w r4,  -5612(r30)
002500  7e8002e0  vmmov mr0, r5
002504  ab020400  lui r5, 64
002508  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00250c  63023fd4  loadli.w r4,  -5608(r30)
002510  7e8002e0  vmmov mr0, r5
002514  ab020800  lui r5, 128
002518  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00251c  63423fd4  loadli.w r4,  -5604(r30)
002520  7e8002e0  vmmov mr0, r5
002524  ab021000  lui r5, 256
002528  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00252c  63024fd4  loadli.w r4,  -5600(r30)
002530  7e8002e0  vmmov mr0, r5
002534  ab022000  lui r5, 512
002538  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00253c  63424fd4  loadli.w r4,  -5596(r30)
002540  7e8002e0  vmmov mr0, r5
002544  ab024000  lui r5, 1024
002548  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00254c  63025fd4  loadli.w r4,  -5592(r30)
002550  7e8002e0  vmmov mr0, r5
002554  ab028000  lui r5, 2048
002558  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00255c  63425fd4  loadli.w r4,  -5588(r30)
002560  7e8002e0  vmmov mr0, r5
002564  ab020001  lui r5, 4096
002568  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00256c  63026fd4  loadli.w r4,  -5584(r30)
002570  7e8002e0  vmmov mr0, r5
002574  ab020002  lui r5, 8192
002578  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00257c  63426fd4  loadli.w r4,  -5580(r30)
002580  7e8002e0  vmmov mr0, r5
002584  ab020004  lui r5, 16384
002588  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00258c  63027fd4  loadli.w r4,  -5576(r30)
002590  7e8002e0  vmmov mr0, r5
002594  ab020008  lui r5, 32768
002598  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
00259c  63427fd4  loadli.w r4,  -5572(r30)
0025a0  7e8002e0  vmmov mr0, r5
0025a4  ab020010  lui r5, 65536
0025a8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0025ac  63028fd4  loadli.w r4,  -5568(r30)
0025b0  7e8002e0  vmmov mr0, r5
0025b4  ab020020  lui r5, 131072
0025b8  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0025bc  63428fd4  loadli.w r4,  -5564(r30)
0025c0  7e8002e0  vmmov mr0, r5
0025c4  ea437230  vor.hf.mh vr7{mr0}, r4, vr7
0025c8  eac37036  vor.hf.mh vr7{mr3}, r1, vr7
0025cc  9f100000  addli r1, zero, 1
0025d0  7e8000e0  vmmov mr0, r1
0025d4  ea437134  vor.hf.mh vr7{mr2}, r2, vr7
0025d8  eac5b130  vor.hf.mh vr11{mr0}, r3, vr11
0025dc  1f210000  addli r2, zero, 2
0025e0  e3009fd4  loadli.w r1,  -5560(r30)
0025e4  7e0001e0  vmmov mr0, r2
0025e8  1f410000  addli r2, zero, 4
0025ec  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0025f0  e3409fd4  loadli.w r1,  -5556(r30)
0025f4  7e0001e0  vmmov mr0, r2
0025f8  1f011000  addli r2, zero, 8
0025fc  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002600  e300afd4  loadli.w r1,  -5552(r30)
002604  7e0001e0  vmmov mr0, r2
002608  1f012000  addli r2, zero, 16
00260c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002610  e340afd4  loadli.w r1,  -5548(r30)
002614  7e0001e0  vmmov mr0, r2
002618  1f014000  addli r2, zero, 32
00261c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002620  e300bfd4  loadli.w r1,  -5544(r30)
002624  7e0001e0  vmmov mr0, r2
002628  1f018000  addli r2, zero, 64
00262c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002630  e340bfd4  loadli.w r1,  -5540(r30)
002634  7e0001e0  vmmov mr0, r2
002638  1f010001  addli r2, zero, 128
00263c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002640  e300cfd4  loadli.w r1,  -5536(r30)
002644  7e0001e0  vmmov mr0, r2
002648  1f010002  addli r2, zero, 256
00264c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002650  e340cfd4  loadli.w r1,  -5532(r30)
002654  7e0001e0  vmmov mr0, r2
002658  1f010004  addli r2, zero, 512
00265c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002660  e300dfd4  loadli.w r1,  -5528(r30)
002664  7e0001e0  vmmov mr0, r2
002668  1f010008  addli r2, zero, 1024
00266c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002670  e340dfd4  loadli.w r1,  -5524(r30)
002674  7e0001e0  vmmov mr0, r2
002678  1f010010  addli r2, zero, 2048
00267c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002680  e300efd4  loadli.w r1,  -5520(r30)
002684  7e0001e0  vmmov mr0, r2
002688  1f010020  addli r2, zero, 4096
00268c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002690  e340efd4  loadli.w r1,  -5516(r30)
002694  7e0001e0  vmmov mr0, r2
002698  1f010040  addli r2, zero, 8192
00269c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0026a0  e300ffd4  loadli.w r1,  -5512(r30)
0026a4  7e0001e0  vmmov mr0, r2
0026a8  2b410000  lui r2, 4
0026ac  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0026b0  e340ffd4  loadli.w r1,  -5508(r30)
0026b4  7e0001e0  vmmov mr0, r2
0026b8  2b810000  lui r2, 8
0026bc  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0026c0  e3000fd5  loadli.w r1,  -5504(r30)
0026c4  7e0001e0  vmmov mr0, r2
0026c8  2b010100  lui r2, 16
0026cc  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0026d0  e3400fd5  loadli.w r1,  -5500(r30)
0026d4  7e0001e0  vmmov mr0, r2
0026d8  2b010200  lui r2, 32
0026dc  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0026e0  e3001fd5  loadli.w r1,  -5496(r30)
0026e4  7e0001e0  vmmov mr0, r2
0026e8  2b010400  lui r2, 64
0026ec  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0026f0  e3401fd5  loadli.w r1,  -5492(r30)
0026f4  7e0001e0  vmmov mr0, r2
0026f8  2b010800  lui r2, 128
0026fc  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002700  e3002fd5  loadli.w r1,  -5488(r30)
002704  7e0001e0  vmmov mr0, r2
002708  2b011000  lui r2, 256
00270c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002710  e3402fd5  loadli.w r1,  -5484(r30)
002714  7e0001e0  vmmov mr0, r2
002718  2b012000  lui r2, 512
00271c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002720  e3003fd5  loadli.w r1,  -5480(r30)
002724  7e0001e0  vmmov mr0, r2
002728  2b014000  lui r2, 1024
00272c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002730  e3403fd5  loadli.w r1,  -5476(r30)
002734  7e0001e0  vmmov mr0, r2
002738  2b018000  lui r2, 2048
00273c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002740  e3004fd5  loadli.w r1,  -5472(r30)
002744  7e0001e0  vmmov mr0, r2
002748  2b010001  lui r2, 4096
00274c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002750  e3404fd5  loadli.w r1,  -5468(r30)
002754  7e0001e0  vmmov mr0, r2
002758  2b010002  lui r2, 8192
00275c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002760  e3005fd5  loadli.w r1,  -5464(r30)
002764  7e0001e0  vmmov mr0, r2
002768  2b010004  lui r2, 16384
00276c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002770  e3405fd5  loadli.w r1,  -5460(r30)
002774  7e0001e0  vmmov mr0, r2
002778  2b010008  lui r2, 32768
00277c  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002780  e3006fd5  loadli.w r1,  -5456(r30)
002784  7e0001e0  vmmov mr0, r2
002788  2b010010  lui r2, 65536
00278c  7e0101e0  vmmov mr2, r2
002790  2b010020  lui r2, 131072
002794  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
002798  e3406fd5  loadli.w r1,  -5452(r30)
00279c  7e0001e0  vmmov mr0, r2
0027a0  2b010080  lui r2, 524288
0027a4  eac5b034  vor.hf.mh vr11{mr2}, r1, vr11
0027a8  e3007fd5  loadli.w r1,  -5448(r30)
0027ac  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0027b0  e3407fd5  loadli.w r1,  -5444(r30)
0027b4  7e0001e0  vmmov mr0, r2
0027b8  1f110000  addli r2, zero, 1
0027bc  eac5b036  vor.hf.mh vr11{mr3}, r1, vr11
0027c0  e3008fd5  loadli.w r1,  -5440(r30)
0027c4  eac5b030  vor.hf.mh vr11{mr0}, r1, vr11
0027c8  e3408fd5  loadli.w r1,  -5436(r30)
0027cc  7e0001e0  vmmov mr0, r2
0027d0  1f210000  addli r2, zero, 2
0027d4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0027d8  e3009fd5  loadli.w r1,  -5432(r30)
0027dc  7e0001e0  vmmov mr0, r2
0027e0  1f410000  addli r2, zero, 4
0027e4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0027e8  e3409fd5  loadli.w r1,  -5428(r30)
0027ec  7e0001e0  vmmov mr0, r2
0027f0  1f011000  addli r2, zero, 8
0027f4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0027f8  e300afd5  loadli.w r1,  -5424(r30)
0027fc  7e0001e0  vmmov mr0, r2
002800  1f012000  addli r2, zero, 16
002804  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002808  e340afd5  loadli.w r1,  -5420(r30)
00280c  7e0001e0  vmmov mr0, r2
002810  1f014000  addli r2, zero, 32
002814  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002818  e300bfd5  loadli.w r1,  -5416(r30)
00281c  7e0001e0  vmmov mr0, r2
002820  1f018000  addli r2, zero, 64
002824  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002828  e340bfd5  loadli.w r1,  -5412(r30)
00282c  7e0001e0  vmmov mr0, r2
002830  1f010001  addli r2, zero, 128
002834  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002838  e300cfd5  loadli.w r1,  -5408(r30)
00283c  7e0001e0  vmmov mr0, r2
002840  1f010002  addli r2, zero, 256
002844  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002848  e340cfd5  loadli.w r1,  -5404(r30)
00284c  7e0001e0  vmmov mr0, r2
002850  1f010004  addli r2, zero, 512
002854  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002858  e300dfd5  loadli.w r1,  -5400(r30)
00285c  7e0001e0  vmmov mr0, r2
002860  1f010008  addli r2, zero, 1024
002864  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002868  e340dfd5  loadli.w r1,  -5396(r30)
00286c  7e0001e0  vmmov mr0, r2
002870  1f010010  addli r2, zero, 2048
002874  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002878  e300efd5  loadli.w r1,  -5392(r30)
00287c  7e0001e0  vmmov mr0, r2
002880  1f010020  addli r2, zero, 4096
002884  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002888  e340efd5  loadli.w r1,  -5388(r30)
00288c  7e0001e0  vmmov mr0, r2
002890  1f010040  addli r2, zero, 8192
002894  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002898  e300ffd5  loadli.w r1,  -5384(r30)
00289c  7e0001e0  vmmov mr0, r2
0028a0  2b410000  lui r2, 4
0028a4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0028a8  e340ffd5  loadli.w r1,  -5380(r30)
0028ac  7e0001e0  vmmov mr0, r2
0028b0  2b810000  lui r2, 8
0028b4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0028b8  e3000fd6  loadli.w r1,  -5376(r30)
0028bc  7e0001e0  vmmov mr0, r2
0028c0  2b010100  lui r2, 16
0028c4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0028c8  e3400fd6  loadli.w r1,  -5372(r30)
0028cc  7e0001e0  vmmov mr0, r2
0028d0  2b010200  lui r2, 32
0028d4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0028d8  e3001fd6  loadli.w r1,  -5368(r30)
0028dc  7e0001e0  vmmov mr0, r2
0028e0  2b010400  lui r2, 64
0028e4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0028e8  e3401fd6  loadli.w r1,  -5364(r30)
0028ec  7e0001e0  vmmov mr0, r2
0028f0  2b010800  lui r2, 128
0028f4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0028f8  e3002fd6  loadli.w r1,  -5360(r30)
0028fc  7e0001e0  vmmov mr0, r2
002900  2b011000  lui r2, 256
002904  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002908  e3402fd6  loadli.w r1,  -5356(r30)
00290c  7e0001e0  vmmov mr0, r2
002910  2b012000  lui r2, 512
002914  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002918  e3003fd6  loadli.w r1,  -5352(r30)
00291c  7e0001e0  vmmov mr0, r2
002920  2b014000  lui r2, 1024
002924  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002928  e3403fd6  loadli.w r1,  -5348(r30)
00292c  7e0001e0  vmmov mr0, r2
002930  2b018000  lui r2, 2048
002934  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002938  e3004fd6  loadli.w r1,  -5344(r30)
00293c  7e0001e0  vmmov mr0, r2
002940  2b010001  lui r2, 4096
002944  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002948  e3404fd6  loadli.w r1,  -5340(r30)
00294c  7e0001e0  vmmov mr0, r2
002950  2b010002  lui r2, 8192
002954  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002958  e3005fd6  loadli.w r1,  -5336(r30)
00295c  7e0001e0  vmmov mr0, r2
002960  2b010004  lui r2, 16384
002964  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002968  e3405fd6  loadli.w r1,  -5332(r30)
00296c  7e0001e0  vmmov mr0, r2
002970  2b010008  lui r2, 32768
002974  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002978  e3006fd6  loadli.w r1,  -5328(r30)
00297c  7e0001e0  vmmov mr0, r2
002980  2b010020  lui r2, 131072
002984  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
002988  e3406fd6  loadli.w r1,  -5324(r30)
00298c  7e0001e0  vmmov mr0, r2
002990  2b010080  lui r2, 524288
002994  6ac36034  vor.hf.mh vr6{mr2}, r1, vr6
002998  e3007fd6  loadli.w r1,  -5320(r30)
00299c  7e0101e0  vmmov mr2, r2
0029a0  1f110000  addli r2, zero, 1
0029a4  6ac36030  vor.hf.mh vr6{mr0}, r1, vr6
0029a8  e3407fd6  loadli.w r1,  -5316(r30)
0029ac  7e0001e0  vmmov mr0, r2
0029b0  1f210000  addli r2, zero, 2
0029b4  6ac36036  vor.hf.mh vr6{mr3}, r1, vr6
0029b8  e3008fd6  loadli.w r1,  -5312(r30)
0029bc  6ac36034  vor.hf.mh vr6{mr2}, r1, vr6
0029c0  e3408fd6  loadli.w r1,  -5308(r30)
0029c4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
0029c8  e3009fd6  loadli.w r1,  -5304(r30)
0029cc  7e0001e0  vmmov mr0, r2
0029d0  1f410000  addli r2, zero, 4
0029d4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
0029d8  e3409fd6  loadli.w r1,  -5300(r30)
0029dc  7e0001e0  vmmov mr0, r2
0029e0  1f011000  addli r2, zero, 8
0029e4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
0029e8  e300afd6  loadli.w r1,  -5296(r30)
0029ec  7e0001e0  vmmov mr0, r2
0029f0  1f012000  addli r2, zero, 16
0029f4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
0029f8  e340afd6  loadli.w r1,  -5292(r30)
0029fc  7e0001e0  vmmov mr0, r2
002a00  1f014000  addli r2, zero, 32
002a04  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a08  e300bfd6  loadli.w r1,  -5288(r30)
002a0c  7e0001e0  vmmov mr0, r2
002a10  1f018000  addli r2, zero, 64
002a14  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a18  e340bfd6  loadli.w r1,  -5284(r30)
002a1c  7e0001e0  vmmov mr0, r2
002a20  1f010001  addli r2, zero, 128
002a24  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a28  e300cfd6  loadli.w r1,  -5280(r30)
002a2c  7e0001e0  vmmov mr0, r2
002a30  1f010002  addli r2, zero, 256
002a34  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a38  e340cfd6  loadli.w r1,  -5276(r30)
002a3c  7e0001e0  vmmov mr0, r2
002a40  1f010004  addli r2, zero, 512
002a44  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a48  e300dfd6  loadli.w r1,  -5272(r30)
002a4c  7e0001e0  vmmov mr0, r2
002a50  1f010008  addli r2, zero, 1024
002a54  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a58  e340dfd6  loadli.w r1,  -5268(r30)
002a5c  7e0001e0  vmmov mr0, r2
002a60  1f010010  addli r2, zero, 2048
002a64  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a68  e300efd6  loadli.w r1,  -5264(r30)
002a6c  7e0001e0  vmmov mr0, r2
002a70  1f010020  addli r2, zero, 4096
002a74  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a78  e340efd6  loadli.w r1,  -5260(r30)
002a7c  7e0001e0  vmmov mr0, r2
002a80  1f010040  addli r2, zero, 8192
002a84  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a88  e300ffd6  loadli.w r1,  -5256(r30)
002a8c  7e0001e0  vmmov mr0, r2
002a90  2b410000  lui r2, 4
002a94  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002a98  e340ffd6  loadli.w r1,  -5252(r30)
002a9c  7e0001e0  vmmov mr0, r2
002aa0  2b810000  lui r2, 8
002aa4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002aa8  e3000fd7  loadli.w r1,  -5248(r30)
002aac  7e0001e0  vmmov mr0, r2
002ab0  2b010100  lui r2, 16
002ab4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002ab8  e3400fd7  loadli.w r1,  -5244(r30)
002abc  7e0001e0  vmmov mr0, r2
002ac0  2b010200  lui r2, 32
002ac4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002ac8  e3001fd7  loadli.w r1,  -5240(r30)
002acc  7e0001e0  vmmov mr0, r2
002ad0  2b010400  lui r2, 64
002ad4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002ad8  e3401fd7  loadli.w r1,  -5236(r30)
002adc  7e0001e0  vmmov mr0, r2
002ae0  2b010800  lui r2, 128
002ae4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002ae8  e3002fd7  loadli.w r1,  -5232(r30)
002aec  7e0001e0  vmmov mr0, r2
002af0  2b011000  lui r2, 256
002af4  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002af8  e3402fd7  loadli.w r1,  -5228(r30)
002afc  7e0001e0  vmmov mr0, r2
002b00  2b012000  lui r2, 512
002b04  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b08  e3003fd7  loadli.w r1,  -5224(r30)
002b0c  7e0001e0  vmmov mr0, r2
002b10  2b014000  lui r2, 1024
002b14  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b18  e3403fd7  loadli.w r1,  -5220(r30)
002b1c  7e0001e0  vmmov mr0, r2
002b20  2b018000  lui r2, 2048
002b24  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b28  e3004fd7  loadli.w r1,  -5216(r30)
002b2c  7e0001e0  vmmov mr0, r2
002b30  2b010001  lui r2, 4096
002b34  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b38  e3404fd7  loadli.w r1,  -5212(r30)
002b3c  7e0001e0  vmmov mr0, r2
002b40  2b010002  lui r2, 8192
002b44  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b48  e3005fd7  loadli.w r1,  -5208(r30)
002b4c  7e0001e0  vmmov mr0, r2
002b50  2b010004  lui r2, 16384
002b54  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b58  e3405fd7  loadli.w r1,  -5204(r30)
002b5c  7e0001e0  vmmov mr0, r2
002b60  2b010008  lui r2, 32768
002b64  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b68  e3006fd7  loadli.w r1,  -5200(r30)
002b6c  7e0001e0  vmmov mr0, r2
002b70  2b010010  lui r2, 65536
002b74  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b78  e3406fd7  loadli.w r1,  -5196(r30)
002b7c  7e0001e0  vmmov mr0, r2
002b80  2b010020  lui r2, 131072
002b84  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b88  e3007fd7  loadli.w r1,  -5192(r30)
002b8c  7e0001e0  vmmov mr0, r2
002b90  1f110000  addli r2, zero, 1
002b94  eac25030  vor.hf.mh vr5{mr0}, r1, vr5
002b98  e3407fd7  loadli.w r1,  -5188(r30)
002b9c  7e0001e0  vmmov mr0, r2
002ba0  1f210000  addli r2, zero, 2
002ba4  eac25036  vor.hf.mh vr5{mr3}, r1, vr5
002ba8  e3008fd7  loadli.w r1,  -5184(r30)
002bac  eac25034  vor.hf.mh vr5{mr2}, r1, vr5
002bb0  e3408fd7  loadli.w r1,  -5180(r30)
002bb4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002bb8  e3009fd7  loadli.w r1,  -5176(r30)
002bbc  7e0001e0  vmmov mr0, r2
002bc0  1f410000  addli r2, zero, 4
002bc4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002bc8  e3409fd7  loadli.w r1,  -5172(r30)
002bcc  7e0001e0  vmmov mr0, r2
002bd0  1f011000  addli r2, zero, 8
002bd4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002bd8  e300afd7  loadli.w r1,  -5168(r30)
002bdc  7e0001e0  vmmov mr0, r2
002be0  1f012000  addli r2, zero, 16
002be4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002be8  e340afd7  loadli.w r1,  -5164(r30)
002bec  7e0001e0  vmmov mr0, r2
002bf0  1f014000  addli r2, zero, 32
002bf4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002bf8  e300bfd7  loadli.w r1,  -5160(r30)
002bfc  7e0001e0  vmmov mr0, r2
002c00  1f018000  addli r2, zero, 64
002c04  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c08  e340bfd7  loadli.w r1,  -5156(r30)
002c0c  7e0001e0  vmmov mr0, r2
002c10  1f010001  addli r2, zero, 128
002c14  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c18  e300cfd7  loadli.w r1,  -5152(r30)
002c1c  7e0001e0  vmmov mr0, r2
002c20  1f010002  addli r2, zero, 256
002c24  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c28  e340cfd7  loadli.w r1,  -5148(r30)
002c2c  7e0001e0  vmmov mr0, r2
002c30  1f010004  addli r2, zero, 512
002c34  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c38  e300dfd7  loadli.w r1,  -5144(r30)
002c3c  7e0001e0  vmmov mr0, r2
002c40  1f010008  addli r2, zero, 1024
002c44  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c48  e340dfd7  loadli.w r1,  -5140(r30)
002c4c  7e0001e0  vmmov mr0, r2
002c50  1f010010  addli r2, zero, 2048
002c54  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c58  e300efd7  loadli.w r1,  -5136(r30)
002c5c  7e0001e0  vmmov mr0, r2
002c60  1f010020  addli r2, zero, 4096
002c64  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c68  e340efd7  loadli.w r1,  -5132(r30)
002c6c  7e0001e0  vmmov mr0, r2
002c70  1f010040  addli r2, zero, 8192
002c74  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c78  e300ffd7  loadli.w r1,  -5128(r30)
002c7c  7e0001e0  vmmov mr0, r2
002c80  2b410000  lui r2, 4
002c84  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c88  e340ffd7  loadli.w r1,  -5124(r30)
002c8c  7e0001e0  vmmov mr0, r2
002c90  2b810000  lui r2, 8
002c94  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002c98  e3000fd8  loadli.w r1,  -5120(r30)
002c9c  7e0001e0  vmmov mr0, r2
002ca0  2b010100  lui r2, 16
002ca4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002ca8  e3400fd8  loadli.w r1,  -5116(r30)
002cac  7e0001e0  vmmov mr0, r2
002cb0  2b010200  lui r2, 32
002cb4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002cb8  e3001fd8  loadli.w r1,  -5112(r30)
002cbc  7e0001e0  vmmov mr0, r2
002cc0  2b010400  lui r2, 64
002cc4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002cc8  e3401fd8  loadli.w r1,  -5108(r30)
002ccc  7e0001e0  vmmov mr0, r2
002cd0  2b010800  lui r2, 128
002cd4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002cd8  e3002fd8  loadli.w r1,  -5104(r30)
002cdc  7e0001e0  vmmov mr0, r2
002ce0  2b011000  lui r2, 256
002ce4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002ce8  e3402fd8  loadli.w r1,  -5100(r30)
002cec  7e0001e0  vmmov mr0, r2
002cf0  2b012000  lui r2, 512
002cf4  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002cf8  e3003fd8  loadli.w r1,  -5096(r30)
002cfc  7e0001e0  vmmov mr0, r2
002d00  2b014000  lui r2, 1024
002d04  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d08  e3403fd8  loadli.w r1,  -5092(r30)
002d0c  7e0001e0  vmmov mr0, r2
002d10  2b018000  lui r2, 2048
002d14  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d18  e3004fd8  loadli.w r1,  -5088(r30)
002d1c  7e0001e0  vmmov mr0, r2
002d20  2b010001  lui r2, 4096
002d24  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d28  e3404fd8  loadli.w r1,  -5084(r30)
002d2c  7e0001e0  vmmov mr0, r2
002d30  2b010002  lui r2, 8192
002d34  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d38  e3005fd8  loadli.w r1,  -5080(r30)
002d3c  7e0001e0  vmmov mr0, r2
002d40  2b010004  lui r2, 16384
002d44  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d48  e3405fd8  loadli.w r1,  -5076(r30)
002d4c  7e0001e0  vmmov mr0, r2
002d50  2b010008  lui r2, 32768
002d54  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d58  e3006fd8  loadli.w r1,  -5072(r30)
002d5c  7e0001e0  vmmov mr0, r2
002d60  2b010010  lui r2, 65536
002d64  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d68  e3406fd8  loadli.w r1,  -5068(r30)
002d6c  7e0001e0  vmmov mr0, r2
002d70  2b010020  lui r2, 131072
002d74  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d78  e3007fd8  loadli.w r1,  -5064(r30)
002d7c  7e0001e0  vmmov mr0, r2
002d80  1f110000  addli r2, zero, 1
002d84  6ac24030  vor.hf.mh vr4{mr0}, r1, vr4
002d88  e3407fd8  loadli.w r1,  -5060(r30)
002d8c  7e0001e0  vmmov mr0, r2
002d90  1f210000  addli r2, zero, 2
002d94  6ac24036  vor.hf.mh vr4{mr3}, r1, vr4
002d98  e3008fd8  loadli.w r1,  -5056(r30)
002d9c  6ac24034  vor.hf.mh vr4{mr2}, r1, vr4
002da0  e3408fd8  loadli.w r1,  -5052(r30)
002da4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002da8  e3009fd8  loadli.w r1,  -5048(r30)
002dac  7e0001e0  vmmov mr0, r2
002db0  1f410000  addli r2, zero, 4
002db4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002db8  e3409fd8  loadli.w r1,  -5044(r30)
002dbc  7e0001e0  vmmov mr0, r2
002dc0  1f011000  addli r2, zero, 8
002dc4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002dc8  e300afd8  loadli.w r1,  -5040(r30)
002dcc  7e0001e0  vmmov mr0, r2
002dd0  1f012000  addli r2, zero, 16
002dd4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002dd8  e340afd8  loadli.w r1,  -5036(r30)
002ddc  7e0001e0  vmmov mr0, r2
002de0  1f014000  addli r2, zero, 32
002de4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002de8  e300bfd8  loadli.w r1,  -5032(r30)
002dec  7e0001e0  vmmov mr0, r2
002df0  1f018000  addli r2, zero, 64
002df4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002df8  e340bfd8  loadli.w r1,  -5028(r30)
002dfc  7e0001e0  vmmov mr0, r2
002e00  1f010001  addli r2, zero, 128
002e04  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e08  e300cfd8  loadli.w r1,  -5024(r30)
002e0c  7e0001e0  vmmov mr0, r2
002e10  1f010002  addli r2, zero, 256
002e14  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e18  e340cfd8  loadli.w r1,  -5020(r30)
002e1c  7e0001e0  vmmov mr0, r2
002e20  1f010004  addli r2, zero, 512
002e24  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e28  e300dfd8  loadli.w r1,  -5016(r30)
002e2c  7e0001e0  vmmov mr0, r2
002e30  1f010008  addli r2, zero, 1024
002e34  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e38  e340dfd8  loadli.w r1,  -5012(r30)
002e3c  7e0001e0  vmmov mr0, r2
002e40  1f010010  addli r2, zero, 2048
002e44  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e48  e300efd8  loadli.w r1,  -5008(r30)
002e4c  7e0001e0  vmmov mr0, r2
002e50  1f010020  addli r2, zero, 4096
002e54  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e58  e340efd8  loadli.w r1,  -5004(r30)
002e5c  7e0001e0  vmmov mr0, r2
002e60  1f010040  addli r2, zero, 8192
002e64  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e68  e300ffd8  loadli.w r1,  -5000(r30)
002e6c  7e0001e0  vmmov mr0, r2
002e70  2b410000  lui r2, 4
002e74  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e78  e340ffd8  loadli.w r1,  -4996(r30)
002e7c  7e0001e0  vmmov mr0, r2
002e80  2b810000  lui r2, 8
002e84  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e88  e3000fd9  loadli.w r1,  -4992(r30)
002e8c  7e0001e0  vmmov mr0, r2
002e90  2b010100  lui r2, 16
002e94  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002e98  e3400fd9  loadli.w r1,  -4988(r30)
002e9c  7e0001e0  vmmov mr0, r2
002ea0  2b010200  lui r2, 32
002ea4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002ea8  e3001fd9  loadli.w r1,  -4984(r30)
002eac  7e0001e0  vmmov mr0, r2
002eb0  2b010400  lui r2, 64
002eb4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002eb8  e3401fd9  loadli.w r1,  -4980(r30)
002ebc  7e0001e0  vmmov mr0, r2
002ec0  2b010800  lui r2, 128
002ec4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002ec8  e3002fd9  loadli.w r1,  -4976(r30)
002ecc  7e0001e0  vmmov mr0, r2
002ed0  2b011000  lui r2, 256
002ed4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002ed8  e3402fd9  loadli.w r1,  -4972(r30)
002edc  7e0001e0  vmmov mr0, r2
002ee0  2b012000  lui r2, 512
002ee4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002ee8  e3003fd9  loadli.w r1,  -4968(r30)
002eec  7e0001e0  vmmov mr0, r2
002ef0  2b014000  lui r2, 1024
002ef4  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002ef8  e3403fd9  loadli.w r1,  -4964(r30)
002efc  7e0001e0  vmmov mr0, r2
002f00  2b018000  lui r2, 2048
002f04  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002f08  e3004fd9  loadli.w r1,  -4960(r30)
002f0c  7e0001e0  vmmov mr0, r2
002f10  2b010001  lui r2, 4096
002f14  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002f18  e3404fd9  loadli.w r1,  -4956(r30)
002f1c  7e0001e0  vmmov mr0, r2
002f20  2b010002  lui r2, 8192
002f24  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002f28  e3005fd9  loadli.w r1,  -4952(r30)
002f2c  7e0001e0  vmmov mr0, r2
002f30  2b010004  lui r2, 16384
002f34  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002f38  e3405fd9  loadli.w r1,  -4948(r30)
002f3c  7e0001e0  vmmov mr0, r2
002f40  2b010008  lui r2, 32768
002f44  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002f48  e3006fd9  loadli.w r1,  -4944(r30)
002f4c  7e0001e0  vmmov mr0, r2
002f50  2b010010  lui r2, 65536
002f54  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002f58  e3406fd9  loadli.w r1,  -4940(r30)
002f5c  7e0001e0  vmmov mr0, r2
002f60  2b010020  lui r2, 131072
002f64  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002f68  e3007fd9  loadli.w r1,  -4936(r30)
002f6c  7e0001e0  vmmov mr0, r2
002f70  1f110000  addli r2, zero, 1
002f74  eac13030  vor.hf.mh vr3{mr0}, r1, vr3
002f78  e3407fd9  loadli.w r1,  -4932(r30)
002f7c  7e0001e0  vmmov mr0, r2
002f80  1f210000  addli r2, zero, 2
002f84  eac13036  vor.hf.mh vr3{mr3}, r1, vr3
002f88  e3008fd9  loadli.w r1,  -4928(r30)
002f8c  eac13034  vor.hf.mh vr3{mr2}, r1, vr3
002f90  e3408fd9  loadli.w r1,  -4924(r30)
002f94  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
002f98  e3009fd9  loadli.w r1,  -4920(r30)
002f9c  7e0001e0  vmmov mr0, r2
002fa0  1f410000  addli r2, zero, 4
002fa4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
002fa8  e3409fd9  loadli.w r1,  -4916(r30)
002fac  7e0001e0  vmmov mr0, r2
002fb0  1f011000  addli r2, zero, 8
002fb4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
002fb8  e300afd9  loadli.w r1,  -4912(r30)
002fbc  7e0001e0  vmmov mr0, r2
002fc0  1f012000  addli r2, zero, 16
002fc4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
002fc8  e340afd9  loadli.w r1,  -4908(r30)
002fcc  7e0001e0  vmmov mr0, r2
002fd0  1f014000  addli r2, zero, 32
002fd4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
002fd8  e300bfd9  loadli.w r1,  -4904(r30)
002fdc  7e0001e0  vmmov mr0, r2
002fe0  1f018000  addli r2, zero, 64
002fe4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
002fe8  e340bfd9  loadli.w r1,  -4900(r30)
002fec  7e0001e0  vmmov mr0, r2
002ff0  1f010001  addli r2, zero, 128
002ff4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
002ff8  e300cfd9  loadli.w r1,  -4896(r30)
002ffc  7e0001e0  vmmov mr0, r2
003000  1f010002  addli r2, zero, 256
003004  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003008  e340cfd9  loadli.w r1,  -4892(r30)
00300c  7e0001e0  vmmov mr0, r2
003010  1f010004  addli r2, zero, 512
003014  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003018  e300dfd9  loadli.w r1,  -4888(r30)
00301c  7e0001e0  vmmov mr0, r2
003020  1f010008  addli r2, zero, 1024
003024  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003028  e340dfd9  loadli.w r1,  -4884(r30)
00302c  7e0001e0  vmmov mr0, r2
003030  1f010010  addli r2, zero, 2048
003034  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003038  e300efd9  loadli.w r1,  -4880(r30)
00303c  7e0001e0  vmmov mr0, r2
003040  1f010020  addli r2, zero, 4096
003044  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003048  e340efd9  loadli.w r1,  -4876(r30)
00304c  7e0001e0  vmmov mr0, r2
003050  1f010040  addli r2, zero, 8192
003054  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003058  e300ffd9  loadli.w r1,  -4872(r30)
00305c  7e0001e0  vmmov mr0, r2
003060  2b410000  lui r2, 4
003064  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003068  e340ffd9  loadli.w r1,  -4868(r30)
00306c  7e0001e0  vmmov mr0, r2
003070  2b810000  lui r2, 8
003074  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003078  e3000fda  loadli.w r1,  -4864(r30)
00307c  7e0001e0  vmmov mr0, r2
003080  2b010100  lui r2, 16
003084  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003088  e3400fda  loadli.w r1,  -4860(r30)
00308c  7e0001e0  vmmov mr0, r2
003090  2b010200  lui r2, 32
003094  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003098  e3001fda  loadli.w r1,  -4856(r30)
00309c  7e0001e0  vmmov mr0, r2
0030a0  2b010400  lui r2, 64
0030a4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
0030a8  e3401fda  loadli.w r1,  -4852(r30)
0030ac  7e0001e0  vmmov mr0, r2
0030b0  2b010800  lui r2, 128
0030b4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
0030b8  e3002fda  loadli.w r1,  -4848(r30)
0030bc  7e0001e0  vmmov mr0, r2
0030c0  2b011000  lui r2, 256
0030c4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
0030c8  e3402fda  loadli.w r1,  -4844(r30)
0030cc  7e0001e0  vmmov mr0, r2
0030d0  2b012000  lui r2, 512
0030d4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
0030d8  e3003fda  loadli.w r1,  -4840(r30)
0030dc  7e0001e0  vmmov mr0, r2
0030e0  2b014000  lui r2, 1024
0030e4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
0030e8  e3403fda  loadli.w r1,  -4836(r30)
0030ec  7e0001e0  vmmov mr0, r2
0030f0  2b018000  lui r2, 2048
0030f4  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
0030f8  e3004fda  loadli.w r1,  -4832(r30)
0030fc  7e0001e0  vmmov mr0, r2
003100  2b010001  lui r2, 4096
003104  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003108  e3404fda  loadli.w r1,  -4828(r30)
00310c  7e0001e0  vmmov mr0, r2
003110  2b010002  lui r2, 8192
003114  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003118  e3005fda  loadli.w r1,  -4824(r30)
00311c  7e0001e0  vmmov mr0, r2
003120  2b010004  lui r2, 16384
003124  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003128  e3405fda  loadli.w r1,  -4820(r30)
00312c  7e0001e0  vmmov mr0, r2
003130  2b010008  lui r2, 32768
003134  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003138  e3006fda  loadli.w r1,  -4816(r30)
00313c  7e0001e0  vmmov mr0, r2
003140  2b010010  lui r2, 65536
003144  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003148  e3406fda  loadli.w r1,  -4812(r30)
00314c  7e0001e0  vmmov mr0, r2
003150  2b010020  lui r2, 131072
003154  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003158  e3007fda  loadli.w r1,  -4808(r30)
00315c  7e0001e0  vmmov mr0, r2
003160  1f110000  addli r2, zero, 1
003164  6ac12030  vor.hf.mh vr2{mr0}, r1, vr2
003168  e3407fda  loadli.w r1,  -4804(r30)
00316c  7e0001e0  vmmov mr0, r2
003170  1f210000  addli r2, zero, 2
003174  6ac12036  vor.hf.mh vr2{mr3}, r1, vr2
003178  e3008fda  loadli.w r1,  -4800(r30)
00317c  6ac12034  vor.hf.mh vr2{mr2}, r1, vr2
003180  e3408fda  loadli.w r1,  -4796(r30)
003184  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003188  e3009fda  loadli.w r1,  -4792(r30)
00318c  7e0001e0  vmmov mr0, r2
003190  1f410000  addli r2, zero, 4
003194  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003198  e3409fda  loadli.w r1,  -4788(r30)
00319c  7e0001e0  vmmov mr0, r2
0031a0  1f011000  addli r2, zero, 8
0031a4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0031a8  e300afda  loadli.w r1,  -4784(r30)
0031ac  7e0001e0  vmmov mr0, r2
0031b0  1f012000  addli r2, zero, 16
0031b4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0031b8  e340afda  loadli.w r1,  -4780(r30)
0031bc  7e0001e0  vmmov mr0, r2
0031c0  1f014000  addli r2, zero, 32
0031c4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0031c8  e300bfda  loadli.w r1,  -4776(r30)
0031cc  7e0001e0  vmmov mr0, r2
0031d0  1f018000  addli r2, zero, 64
0031d4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0031d8  e340bfda  loadli.w r1,  -4772(r30)
0031dc  7e0001e0  vmmov mr0, r2
0031e0  1f010001  addli r2, zero, 128
0031e4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0031e8  e300cfda  loadli.w r1,  -4768(r30)
0031ec  7e0001e0  vmmov mr0, r2
0031f0  1f010002  addli r2, zero, 256
0031f4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0031f8  e340cfda  loadli.w r1,  -4764(r30)
0031fc  7e0001e0  vmmov mr0, r2
003200  1f010004  addli r2, zero, 512
003204  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003208  e300dfda  loadli.w r1,  -4760(r30)
00320c  7e0001e0  vmmov mr0, r2
003210  1f010008  addli r2, zero, 1024
003214  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003218  e340dfda  loadli.w r1,  -4756(r30)
00321c  7e0001e0  vmmov mr0, r2
003220  1f010010  addli r2, zero, 2048
003224  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003228  e300efda  loadli.w r1,  -4752(r30)
00322c  7e0001e0  vmmov mr0, r2
003230  1f010020  addli r2, zero, 4096
003234  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003238  e340efda  loadli.w r1,  -4748(r30)
00323c  7e0001e0  vmmov mr0, r2
003240  1f010040  addli r2, zero, 8192
003244  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003248  e300ffda  loadli.w r1,  -4744(r30)
00324c  7e0001e0  vmmov mr0, r2
003250  2b410000  lui r2, 4
003254  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003258  e340ffda  loadli.w r1,  -4740(r30)
00325c  7e0001e0  vmmov mr0, r2
003260  2b810000  lui r2, 8
003264  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003268  e3000fdb  loadli.w r1,  -4736(r30)
00326c  7e0001e0  vmmov mr0, r2
003270  2b010100  lui r2, 16
003274  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003278  e3400fdb  loadli.w r1,  -4732(r30)
00327c  7e0001e0  vmmov mr0, r2
003280  2b010200  lui r2, 32
003284  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003288  e3001fdb  loadli.w r1,  -4728(r30)
00328c  7e0001e0  vmmov mr0, r2
003290  2b010400  lui r2, 64
003294  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003298  e3401fdb  loadli.w r1,  -4724(r30)
00329c  7e0001e0  vmmov mr0, r2
0032a0  2b010800  lui r2, 128
0032a4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0032a8  e3002fdb  loadli.w r1,  -4720(r30)
0032ac  7e0001e0  vmmov mr0, r2
0032b0  2b011000  lui r2, 256
0032b4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0032b8  e3402fdb  loadli.w r1,  -4716(r30)
0032bc  7e0001e0  vmmov mr0, r2
0032c0  2b012000  lui r2, 512
0032c4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0032c8  e3003fdb  loadli.w r1,  -4712(r30)
0032cc  7e0001e0  vmmov mr0, r2
0032d0  2b014000  lui r2, 1024
0032d4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0032d8  e3403fdb  loadli.w r1,  -4708(r30)
0032dc  7e0001e0  vmmov mr0, r2
0032e0  2b018000  lui r2, 2048
0032e4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0032e8  e3004fdb  loadli.w r1,  -4704(r30)
0032ec  7e0001e0  vmmov mr0, r2
0032f0  2b010001  lui r2, 4096
0032f4  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
0032f8  e3404fdb  loadli.w r1,  -4700(r30)
0032fc  7e0001e0  vmmov mr0, r2
003300  2b010002  lui r2, 8192
003304  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003308  e3005fdb  loadli.w r1,  -4696(r30)
00330c  7e0001e0  vmmov mr0, r2
003310  2b010004  lui r2, 16384
003314  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003318  e3405fdb  loadli.w r1,  -4692(r30)
00331c  7e0001e0  vmmov mr0, r2
003320  2b010008  lui r2, 32768
003324  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003328  e3006fdb  loadli.w r1,  -4688(r30)
00332c  7e0001e0  vmmov mr0, r2
003330  2b010010  lui r2, 65536
003334  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003338  e3406fdb  loadli.w r1,  -4684(r30)
00333c  7e0001e0  vmmov mr0, r2
003340  2b010020  lui r2, 131072
003344  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003348  e3007fdb  loadli.w r1,  -4680(r30)
00334c  7e0001e0  vmmov mr0, r2
003350  1f110000  addli r2, zero, 1
003354  eac01030  vor.hf.mh vr1{mr0}, r1, vr1
003358  e3407fdb  loadli.w r1,  -4676(r30)
00335c  7e0001e0  vmmov mr0, r2
003360  1f210000  addli r2, zero, 2
003364  eac01036  vor.hf.mh vr1{mr3}, r1, vr1
003368  e3008fdb  loadli.w r1,  -4672(r30)
00336c  eac01034  vor.hf.mh vr1{mr2}, r1, vr1
003370  e3408fdb  loadli.w r1,  -4668(r30)
003374  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003378  e3009fdb  loadli.w r1,  -4664(r30)
00337c  7e0001e0  vmmov mr0, r2
003380  1f410000  addli r2, zero, 4
003384  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003388  e3409fdb  loadli.w r1,  -4660(r30)
00338c  7e0001e0  vmmov mr0, r2
003390  1f011000  addli r2, zero, 8
003394  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003398  e300afdb  loadli.w r1,  -4656(r30)
00339c  7e0001e0  vmmov mr0, r2
0033a0  1f012000  addli r2, zero, 16
0033a4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0033a8  e340afdb  loadli.w r1,  -4652(r30)
0033ac  7e0001e0  vmmov mr0, r2
0033b0  1f014000  addli r2, zero, 32
0033b4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0033b8  e300bfdb  loadli.w r1,  -4648(r30)
0033bc  7e0001e0  vmmov mr0, r2
0033c0  1f018000  addli r2, zero, 64
0033c4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0033c8  e340bfdb  loadli.w r1,  -4644(r30)
0033cc  7e0001e0  vmmov mr0, r2
0033d0  1f010001  addli r2, zero, 128
0033d4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0033d8  e300cfdb  loadli.w r1,  -4640(r30)
0033dc  7e0001e0  vmmov mr0, r2
0033e0  1f010002  addli r2, zero, 256
0033e4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0033e8  e340dfdb  loadli.w r1,  -4628(r30)
0033ec  7e0001e0  vmmov mr0, r2
0033f0  1f010004  addli r2, zero, 512
0033f4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0033f8  e300efdb  loadli.w r1,  -4624(r30)
0033fc  7e0001e0  vmmov mr0, r2
003400  1f010008  addli r2, zero, 1024
003404  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003408  e340ffdb  loadli.w r1,  -4612(r30)
00340c  7e0001e0  vmmov mr0, r2
003410  1f010010  addli r2, zero, 2048
003414  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003418  e340bfdc  loadli.w r1,  -4516(r30)
00341c  7e0001e0  vmmov mr0, r2
003420  1f010020  addli r2, zero, 4096
003424  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003428  e300dfdc  loadli.w r1,  -4504(r30)
00342c  7e0001e0  vmmov mr0, r2
003430  1f010040  addli r2, zero, 8192
003434  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003438  e340dfdc  loadli.w r1,  -4500(r30)
00343c  7e0001e0  vmmov mr0, r2
003440  2b410000  lui r2, 4
003444  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003448  e300ffdc  loadli.w r1,  -4488(r30)
00344c  7e0001e0  vmmov mr0, r2
003450  2b810000  lui r2, 8
003454  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003458  e340ffdc  loadli.w r1,  -4484(r30)
00345c  7e0001e0  vmmov mr0, r2
003460  2b010100  lui r2, 16
003464  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003468  e3001fdd  loadli.w r1,  -4472(r30)
00346c  7e0001e0  vmmov mr0, r2
003470  2b010200  lui r2, 32
003474  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003478  e3401fdd  loadli.w r1,  -4468(r30)
00347c  7e0001e0  vmmov mr0, r2
003480  2b010400  lui r2, 64
003484  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003488  e3003fdd  loadli.w r1,  -4456(r30)
00348c  7e0001e0  vmmov mr0, r2
003490  2b010800  lui r2, 128
003494  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003498  e3403fdd  loadli.w r1,  -4452(r30)
00349c  7e0001e0  vmmov mr0, r2
0034a0  2b011000  lui r2, 256
0034a4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0034a8  e3005fdd  loadli.w r1,  -4440(r30)
0034ac  7e0001e0  vmmov mr0, r2
0034b0  2b012000  lui r2, 512
0034b4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0034b8  e3405fdd  loadli.w r1,  -4436(r30)
0034bc  7e0001e0  vmmov mr0, r2
0034c0  2b014000  lui r2, 1024
0034c4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0034c8  e3007fdd  loadli.w r1,  -4424(r30)
0034cc  7e0001e0  vmmov mr0, r2
0034d0  2b018000  lui r2, 2048
0034d4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0034d8  e3407fdd  loadli.w r1,  -4420(r30)
0034dc  7e0001e0  vmmov mr0, r2
0034e0  2b010001  lui r2, 4096
0034e4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0034e8  e3008fde  loadli.w r1,  -4288(r30)
0034ec  7e0001e0  vmmov mr0, r2
0034f0  2b010002  lui r2, 8192
0034f4  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0034f8  e3000fdf  loadli.w r1,  -4224(r30)
0034fc  7e0001e0  vmmov mr0, r2
003500  2b010004  lui r2, 16384
003504  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003508  e3008fe0  loadli.w r1,  -4032(r30)
00350c  7e0001e0  vmmov mr0, r2
003510  2b010008  lui r2, 32768
003514  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003518  e3000fe2  loadli.w r1,  -3840(r30)
00351c  7e0001e0  vmmov mr0, r2
003520  2b010010  lui r2, 65536
003524  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
003528  9f000fdc  addli r1, r30, -4608
00352c  7e0001e0  vmmov mr0, r2
003530  2b010020  lui r2, 131072
003534  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
003538  9f000feb  addli r1, r30, -2688
00353c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
003540  9f008fe0  addli r1, r30, -4032
003544  00a00000  mfence { lm }
003548  96449502  vadd.hf.mz.rn vr9{mr1}, vr10, vr9
00354c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
003550  9f008fe1  addli r1, r30, -3904
003554  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
003558  9f000fe7  addli r1, r30, -3200
00355c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
003560  9f000fe2  addli r1, r30, -3840
003564  96449502  vadd.hf.mz.rn vr9{mr1}, vr10, vr9
003568  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00356c  9f000fe1  addli r1, r30, -3968
003570  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
003574  9f008fe6  addli r1, r30, -3264
003578  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00357c  96449502  vadd.hf.mz.rn vr9{mr1}, vr10, vr9
003580  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
003584  e3008feb  loadli.w r1,  -2624(r30)
003588  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
00358c  9f008fe4  addli r1, r30, -3520
003590  7e0001e0  vmmov mr0, r2
003594  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
003598  9f000fe3  addli r1, r30, -3712
00359c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0035a0  9f000fe7  addli r1, r30, -3200
0035a4  96449502  vadd.hf.mz.rn vr9{mr1}, vr10, vr9
0035a8  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0035ac  9f000fe4  addli r1, r30, -3584
0035b0  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0035b4  9f008fe2  addli r1, r30, -3776
0035b8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0035bc  9f000feb  addli r1, r30, -2688
0035c0  96449502  vadd.hf.mz.rn vr9{mr1}, vr10, vr9
0035c4  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0035c8  9f008fe3  addli r1, r30, -3648
0035cc  c2940002  vload_mask16.mz vr9{mr1}, 0(r1)
0035d0  9f000fe0  addli r1, r30, -4096
0035d4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0035d8  9f008feb  addli r1, r30, -2624
0035dc  00a00000  mfence { lm }
0035e0  96449502  vadd.hf.mz.rn vr9{mr1}, vr10, vr9
0035e4  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0035e8  e3000fec  loadli.w r1,  -2560(r30)
0035ec  6ac00030  vor.hf.mh vr0{mr0}, r1, vr0
0035f0  9f000fe6  addli r1, r30, -3328
0035f4  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0035f8  9f008fe5  addli r1, r30, -3392
0035fc  1644a402  vadd.hf.mz.rn vr8{mr1}, vr8, vr10
003600  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
003604  9f000fe5  addli r1, r30, -3456
003608  96c3a302  vadd.hf.mz.rn vr7{mr1}, vr7, vr10
00360c  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
003610  9f000fec  addli r1, r30, -2560
003614  00a00000  mfence { lm }
003618  96c4a502  vadd.hf.mz.rn vr9{mr1}, vr11, vr10
00361c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
003620  e3008fec  loadli.w r1,  -2496(r30)
003624  6ac00036  vor.hf.mh vr0{mr3}, r1, vr0
003628  9f008fe8  addli r1, r30, -3008
00362c  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
003630  9f000fe8  addli r1, r30, -3072
003634  1643b302  vadd.hf.mz.rn vr6{mr1}, vr6, vr11
003638  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
00363c  9f008fe7  addli r1, r30, -3136
003640  96c2b202  vadd.hf.mz.rn vr5{mr1}, vr5, vr11
003644  c2950002  vload_mask16.mz vr11{mr1}, 0(r1)
003648  e3000fed  loadli.w r1,  -2432(r30)
00364c  6ac00034  vor.hf.mh vr0{mr2}, r1, vr0
003650  9f008fea  addli r1, r30, -2752
003654  9645b202  vadd.hf.mz.rn vr11{mr1}, vr4, vr11
003658  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00365c  9f000fea  addli r1, r30, -2816
003660  96c14102  vadd.hf.mz.rn vr3{mr1}, vr3, vr4
003664  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
003668  9f008fe9  addli r1, r30, -2880
00366c  16414102  vadd.hf.mz.rn vr2{mr1}, vr2, vr4
003670  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
003674  9f008fec  addli r1, r30, -2496
003678  00a00000  mfence { lm }
00367c  96c04002  vadd.hf.mz.rn vr1{mr1}, vr1, vr4
003680  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
003684  9f000fe9  addli r1, r30, -2944
003688  42920002  vload_mask16.mz vr4{mr1}, 0(r1)
00368c  9f000fed  addli r1, r30, -2432
003690  16404002  vadd.hf.mz.rn vr0{mr1}, vr0, vr4
003694  46900002  vstore_mask16.mz vr0{mr1}, 0(r1)
003698  9f008fe0  addli r1, r30, -4032
00369c  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0036a0  9f000fe2  addli r1, r30, -3840
0036a4  06350000  vfp162float_l.rn vr10, vr0
0036a8  86700000  vfp162float_h.rn vr1, vr0
0036ac  42900002  vload_mask16.mz vr0{mr1}, 0(r1)
0036b0  9f000fe4  addli r1, r30, -3584
0036b4  06320000  vfp162float_l.rn vr4, vr0
0036b8  86740000  vfp162float_h.rn vr9, vr0
0036bc  36101502  vmax.f.mz vr0{mr1}, vr10, vr1
0036c0  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0036c4  9f000fdf  addli r1, r30, -4224
0036c8  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
0036cc  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
0036d0  4690a002  vstore_mask16.mz vr10{mr1}, 0(r1)
0036d4  9f008fe3  addli r1, r30, -3648
0036d8  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0036dc  9f000fe3  addli r1, r30, -3712
0036e0  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0036e4  9f008fe6  addli r1, r30, -3264
0036e8  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
0036ec  9f008fdd  addli r1, r30, -4416
0036f0  86340500  vfp162float_l.rn vr9, vr10
0036f4  06720500  vfp162float_h.rn vr4, vr10
0036f8  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
0036fc  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
003700  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
003704  9f008fde  addli r1, r30, -4288
003708  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00370c  9f000fe7  addli r1, r30, -3200
003710  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
003714  9f000fde  addli r1, r30, -4352
003718  86340500  vfp162float_l.rn vr9, vr10
00371c  06720500  vfp162float_h.rn vr4, vr10
003720  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
003724  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
003728  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00372c  9f008fdf  addli r1, r30, -4160
003730  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
003734  9f000feb  addli r1, r30, -2688
003738  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
00373c  9f000fe0  addli r1, r30, -4096
003740  86340500  vfp162float_l.rn vr9, vr10
003744  06720500  vfp162float_h.rn vr4, vr10
003748  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
00374c  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
003750  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
003754  9f000fe5  addli r1, r30, -3456
003758  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00375c  9f008feb  addli r1, r30, -2624
003760  42950002  vload_mask16.mz vr10{mr1}, 0(r1)
003764  9f008fe4  addli r1, r30, -3520
003768  86340500  vfp162float_l.rn vr9, vr10
00376c  06720500  vfp162float_h.rn vr4, vr10
003770  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
003774  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
003778  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
00377c  9f008fe5  addli r1, r30, -3392
003780  86340400  vfp162float_l.rn vr9, vr8
003784  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
003788  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00378c  9f000fe6  addli r1, r30, -3328
003790  06720400  vfp162float_h.rn vr4, vr8
003794  06b40300  vfp162float_l.rn vr8, vr7
003798  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
00379c  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
0037a0  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
0037a4  9f000fe7  addli r1, r30, -3200
0037a8  86b40100  vfp162float_l.rn vr9, vr3
0037ac  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0037b0  9f008fe6  addli r1, r30, -3264
0037b4  06f20300  vfp162float_h.rn vr4, vr7
0037b8  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
0037bc  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
0037c0  9f008fe7  addli r1, r30, -3136
0037c4  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0037c8  9f000fec  addli r1, r30, -2560
0037cc  42940002  vload_mask16.mz vr8{mr1}, 0(r1)
0037d0  9f008fe0  addli r1, r30, -4032
0037d4  86330400  vfp162float_l.rn vr7, vr8
0037d8  06720400  vfp162float_h.rn vr4, vr8
0037dc  36107002  vmax.f.mz vr0{mr1}, vr0, vr7
0037e0  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
0037e4  06740300  vfp162float_h.rn vr8, vr6
0037e8  46907002  vstore_mask16.mz vr7{mr1}, 0(r1)
0037ec  9f000fe8  addli r1, r30, -3072
0037f0  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
0037f4  9f000fe1  addli r1, r30, -3968
0037f8  06320300  vfp162float_l.rn vr4, vr6
0037fc  06b30200  vfp162float_l.rn vr6, vr5
003800  36104002  vmax.f.mz vr0{mr1}, vr0, vr4
003804  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
003808  46904002  vstore_mask16.mz vr4{mr1}, 0(r1)
00380c  9f008fe8  addli r1, r30, -3008
003810  36106002  vmax.f.mz vr0{mr1}, vr0, vr6
003814  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003818  9f008fe1  addli r1, r30, -3904
00381c  06f40200  vfp162float_h.rn vr8, vr5
003820  86b20500  vfp162float_l.rn vr5, vr11
003824  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
003828  36105002  vmax.f.mz vr0{mr1}, vr0, vr5
00382c  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
003830  9f000fe9  addli r1, r30, -2944
003834  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003838  9f000fe2  addli r1, r30, -3840
00383c  06f40500  vfp162float_h.rn vr8, vr11
003840  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
003844  36109002  vmax.f.mz vr0{mr1}, vr0, vr9
003848  46905002  vstore_mask16.mz vr5{mr1}, 0(r1)
00384c  9f008fe9  addli r1, r30, -2880
003850  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003854  9f000fea  addli r1, r30, -2816
003858  06f40100  vfp162float_h.rn vr8, vr3
00385c  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
003860  86710100  vfp162float_h.rn vr3, vr2
003864  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
003868  9f008feb  addli r1, r30, -2624
00386c  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003870  9f008fe2  addli r1, r30, -3776
003874  06340100  vfp162float_l.rn vr8, vr2
003878  36108002  vmax.f.mz vr0{mr1}, vr0, vr8
00387c  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
003880  46908002  vstore_mask16.mz vr8{mr1}, 0(r1)
003884  9f000fec  addli r1, r30, -2560
003888  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
00388c  9f008fec  addli r1, r30, -2496
003890  c2900002  vload_mask16.mz vr1{mr1}, 0(r1)
003894  9f008fea  addli r1, r30, -2752
003898  86b10000  vfp162float_l.rn vr3, vr1
00389c  06f10000  vfp162float_h.rn vr2, vr1
0038a0  36103002  vmax.f.mz vr0{mr1}, vr0, vr3
0038a4  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0038a8  46903002  vstore_mask16.mz vr3{mr1}, 0(r1)
0038ac  9f008fec  addli r1, r30, -2496
0038b0  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
0038b4  9f000fed  addli r1, r30, -2432
0038b8  c2910002  vload_mask16.mz vr3{mr1}, 0(r1)
0038bc  9f000feb  addli r1, r30, -2688
0038c0  06b10100  vfp162float_l.rn vr2, vr3
0038c4  36102002  vmax.f.mz vr0{mr1}, vr0, vr2
0038c8  86f00100  vfp162float_h.rn vr1, vr3
0038cc  36101002  vmax.f.mz vr0{mr1}, vr0, vr1
0038d0  7a111040  vextracti.f r2, 1(vr0)
0038d4  fa112040  vextracti.f r3, 2(vr0)
0038d8  7a123040  vextracti.f r4, 3(vr0)
0038dc  fa124040  vextracti.f r5, 4(vr0)
0038e0  7a135040  vextracti.f r6, 5(vr0)
0038e4  fa136040  vextracti.f r7, 6(vr0)
0038e8  7a147040  vextracti.f r8, 7(vr0)
0038ec  fa148040  vextracti.f r9, 8(vr0)
0038f0  7a159040  vextracti.f r10, 9(vr0)
0038f4  fa15a040  vextracti.f r11, 10(vr0)
0038f8  7a16b040  vextracti.f r12, 11(vr0)
0038fc  fa16c040  vextracti.f r13, 12(vr0)
003900  7a17d040  vextracti.f r14, 13(vr0)
003904  fa17e040  vextracti.f r15, 14(vr0)
003908  7a18f040  vextracti.f r16, 15(vr0)
00390c  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
003910  9f000fed  addli r1, r30, -2432
003914  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
003918  fa100040  vextracti.f r1, 0(vr0)
00391c  8be02048  max.f r1, r1, r2
003920  63410fce  loadli.w r2,  -6396(r30)
003924  8be03048  max.f r1, r1, r3
003928  8be04048  max.f r1, r1, r4
00392c  8be05048  max.f r1, r1, r5
003930  8be06048  max.f r1, r1, r6
003934  8be07048  max.f r1, r1, r7
003938  8be08048  max.f r1, r1, r8
00393c  8be09048  max.f r1, r1, r9
003940  8be0a048  max.f r1, r1, r10
003944  8be0b048  max.f r1, r1, r11
003948  8be0c048  max.f r1, r1, r12
00394c  8be0d048  max.f r1, r1, r13
003950  8be0e048  max.f r1, r1, r14
003954  8be0f048  max.f r1, r1, r15
003958  8be00049  max.f r1, r1, r16
00395c  73601100  stores.w r1, 0(r2)
003960  00a00300  mfence { lm, sm, gm }
003964  634affcd  loadli.w r20,  -6404(r30)
003968  80210a04  csr_set csr3, r20
00396c  00d00100  sync_group
003970  630bffcd  loadli.w r22,  -6408(r30)
003974  bb200b00  bneq r22, zero, 40
003978  e3022fce  loadli.w r5,  -6384(r30)
00397c  efc00200  loads.w r1, 0(r5)
003980  6fc14200  loads.w r2, 4(r5)
003984  efc18200  loads.w r3, 8(r5)
003988  6fc2c200  loads.w r4, 12(r5)
00398c  8be02048  max.f r1, r1, r2
003990  8be03048  max.f r1, r1, r3
003994  8be04048  max.f r1, r1, r4
003998  73e01200  stores.w r1, 0(r5)
00399c  00a00300  mfence { lm, sm, gm }
0039a0  80210a04  csr_set csr3, r20
0039a4  00d00100  sync_group
0039a8  e3002fce  loadli.w r1,  -6384(r30)
0039ac  2b010080  lui r2, 524288
0039b0  1f090ffe  addli r18, r30, -256
0039b4  efc00000  loads.w r1, 0(r1)
0039b8  97a02000  xor r1, r1, r2
0039bc  1f010fdf  addli r2, r30, -4224
0039c0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0039c4  1f010fe4  addli r2, r30, -3584
0039c8  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0039cc  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
0039d0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0039d4  1f018fe3  addli r2, r30, -3648
0039d8  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0039dc  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
0039e0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0039e4  1f010fe3  addli r2, r30, -3712
0039e8  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0039ec  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
0039f0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0039f4  1f018fdd  addli r2, r30, -4416
0039f8  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
0039fc  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
003a00  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
003a04  00a00000  mfence { lm }
003a08  63010900  loadli.w r2,  0(r18)
003a0c  e3410900  loadli.w r3,  4(r18)
003a10  63021900  loadli.w r4,  8(r18)
003a14  e3421900  loadli.w r5,  12(r18)
003a18  63032900  loadli.w r6,  16(r18)
003a1c  e3432900  loadli.w r7,  20(r18)
003a20  63043900  loadli.w r8,  24(r18)
003a24  e3443900  loadli.w r9,  28(r18)
003a28  63054900  loadli.w r10,  32(r18)
003a2c  e3454900  loadli.w r11,  36(r18)
003a30  63065900  loadli.w r12,  40(r18)
003a34  e3465900  loadli.w r13,  44(r18)
003a38  63076900  loadli.w r14,  48(r18)
003a3c  e3476900  loadli.w r15,  52(r18)
003a40  63087900  loadli.w r16,  56(r18)
003a44  e3487900  loadli.w r17,  60(r18)
003a48  0f010100  exp.f.rn r2, r2
003a4c  8f810100  exp.f.rn r3, r3
003a50  0f020200  exp.f.rn r4, r4
003a54  8f820200  exp.f.rn r5, r5
003a58  0f030300  exp.f.rn r6, r6
003a5c  8f830300  exp.f.rn r7, r7
003a60  0f040400  exp.f.rn r8, r8
003a64  8f840400  exp.f.rn r9, r9
003a68  0f050500  exp.f.rn r10, r10
003a6c  8f850500  exp.f.rn r11, r11
003a70  0f060600  exp.f.rn r12, r12
003a74  8f860600  exp.f.rn r13, r13
003a78  0f070700  exp.f.rn r14, r14
003a7c  8f870700  exp.f.rn r15, r15
003a80  0f080800  exp.f.rn r16, r16
003a84  8f880800  exp.f.rn r17, r17
003a88  67002900  storeli.w r2, 0(r18)
003a8c  67403900  storeli.w r3, 4(r18)
003a90  e7004900  storeli.w r4, 8(r18)
003a94  e7405900  storeli.w r5, 12(r18)
003a98  67016900  storeli.w r6, 16(r18)
003a9c  67417900  storeli.w r7, 20(r18)
003aa0  e7018900  storeli.w r8, 24(r18)
003aa4  e7419900  storeli.w r9, 28(r18)
003aa8  6702a900  storeli.w r10, 32(r18)
003aac  6742b900  storeli.w r11, 36(r18)
003ab0  e702c900  storeli.w r12, 40(r18)
003ab4  e742d900  storeli.w r13, 44(r18)
003ab8  6703e900  storeli.w r14, 48(r18)
003abc  6743f900  storeli.w r15, 52(r18)
003ac0  e7030901  storeli.w r16, 56(r18)
003ac4  e7431901  storeli.w r17, 60(r18)
003ac8  63018900  loadli.w r2,  64(r18)
003acc  e3418900  loadli.w r3,  68(r18)
003ad0  63029900  loadli.w r4,  72(r18)
003ad4  e3429900  loadli.w r5,  76(r18)
003ad8  6303a900  loadli.w r6,  80(r18)
003adc  e343a900  loadli.w r7,  84(r18)
003ae0  6304b900  loadli.w r8,  88(r18)
003ae4  e344b900  loadli.w r9,  92(r18)
003ae8  6305c900  loadli.w r10,  96(r18)
003aec  e345c900  loadli.w r11,  100(r18)
003af0  6306d900  loadli.w r12,  104(r18)
003af4  e346d900  loadli.w r13,  108(r18)
003af8  6307e900  loadli.w r14,  112(r18)
003afc  e347e900  loadli.w r15,  116(r18)
003b00  6308f900  loadli.w r16,  120(r18)
003b04  e348f900  loadli.w r17,  124(r18)
003b08  0f010100  exp.f.rn r2, r2
003b0c  8f810100  exp.f.rn r3, r3
003b10  0f020200  exp.f.rn r4, r4
003b14  8f820200  exp.f.rn r5, r5
003b18  0f030300  exp.f.rn r6, r6
003b1c  8f830300  exp.f.rn r7, r7
003b20  0f040400  exp.f.rn r8, r8
003b24  8f840400  exp.f.rn r9, r9
003b28  0f050500  exp.f.rn r10, r10
003b2c  8f850500  exp.f.rn r11, r11
003b30  0f060600  exp.f.rn r12, r12
003b34  8f860600  exp.f.rn r13, r13
003b38  0f070700  exp.f.rn r14, r14
003b3c  8f870700  exp.f.rn r15, r15
003b40  0f080800  exp.f.rn r16, r16
003b44  8f880800  exp.f.rn r17, r17
003b48  67042900  storeli.w r2, 64(r18)
003b4c  67443900  storeli.w r3, 68(r18)
003b50  e7044900  storeli.w r4, 72(r18)
003b54  e7445900  storeli.w r5, 76(r18)
003b58  67056900  storeli.w r6, 80(r18)
003b5c  67457900  storeli.w r7, 84(r18)
003b60  e7058900  storeli.w r8, 88(r18)
003b64  e7459900  storeli.w r9, 92(r18)
003b68  6706a900  storeli.w r10, 96(r18)
003b6c  6746b900  storeli.w r11, 100(r18)
003b70  e706c900  storeli.w r12, 104(r18)
003b74  e746d900  storeli.w r13, 108(r18)
003b78  6707e900  storeli.w r14, 112(r18)
003b7c  6747f900  storeli.w r15, 116(r18)
003b80  e7070901  storeli.w r16, 120(r18)
003b84  e7471901  storeli.w r17, 124(r18)
003b88  63010901  loadli.w r2,  128(r18)
003b8c  e3410901  loadli.w r3,  132(r18)
003b90  63021901  loadli.w r4,  136(r18)
003b94  e3421901  loadli.w r5,  140(r18)
003b98  63032901  loadli.w r6,  144(r18)
003b9c  e3432901  loadli.w r7,  148(r18)
003ba0  63043901  loadli.w r8,  152(r18)
003ba4  e3443901  loadli.w r9,  156(r18)
003ba8  63054901  loadli.w r10,  160(r18)
003bac  e3454901  loadli.w r11,  164(r18)
003bb0  63065901  loadli.w r12,  168(r18)
003bb4  e3465901  loadli.w r13,  172(r18)
003bb8  63076901  loadli.w r14,  176(r18)
003bbc  e3476901  loadli.w r15,  180(r18)
003bc0  63087901  loadli.w r16,  184(r18)
003bc4  e3487901  loadli.w r17,  188(r18)
003bc8  0f010100  exp.f.rn r2, r2
003bcc  8f810100  exp.f.rn r3, r3
003bd0  0f020200  exp.f.rn r4, r4
003bd4  8f820200  exp.f.rn r5, r5
003bd8  0f030300  exp.f.rn r6, r6
003bdc  8f830300  exp.f.rn r7, r7
003be0  0f040400  exp.f.rn r8, r8
003be4  8f840400  exp.f.rn r9, r9
003be8  0f050500  exp.f.rn r10, r10
003bec  8f850500  exp.f.rn r11, r11
003bf0  0f060600  exp.f.rn r12, r12
003bf4  8f860600  exp.f.rn r13, r13
003bf8  0f070700  exp.f.rn r14, r14
003bfc  8f870700  exp.f.rn r15, r15
003c00  0f080800  exp.f.rn r16, r16
003c04  8f880800  exp.f.rn r17, r17
003c08  67082900  storeli.w r2, 128(r18)
003c0c  67483900  storeli.w r3, 132(r18)
003c10  e7084900  storeli.w r4, 136(r18)
003c14  e7485900  storeli.w r5, 140(r18)
003c18  67096900  storeli.w r6, 144(r18)
003c1c  67497900  storeli.w r7, 148(r18)
003c20  e7098900  storeli.w r8, 152(r18)
003c24  e7499900  storeli.w r9, 156(r18)
003c28  670aa900  storeli.w r10, 160(r18)
003c2c  674ab900  storeli.w r11, 164(r18)
003c30  e70ac900  storeli.w r12, 168(r18)
003c34  e74ad900  storeli.w r13, 172(r18)
003c38  670be900  storeli.w r14, 176(r18)
003c3c  674bf900  storeli.w r15, 180(r18)
003c40  e70b0901  storeli.w r16, 184(r18)
003c44  e74b1901  storeli.w r17, 188(r18)
003c48  63018901  loadli.w r2,  192(r18)
003c4c  e3418901  loadli.w r3,  196(r18)
003c50  63029901  loadli.w r4,  200(r18)
003c54  e3429901  loadli.w r5,  204(r18)
003c58  6303a901  loadli.w r6,  208(r18)
003c5c  e343a901  loadli.w r7,  212(r18)
003c60  6304b901  loadli.w r8,  216(r18)
003c64  e344b901  loadli.w r9,  220(r18)
003c68  6305c901  loadli.w r10,  224(r18)
003c6c  e345c901  loadli.w r11,  228(r18)
003c70  6306d901  loadli.w r12,  232(r18)
003c74  e346d901  loadli.w r13,  236(r18)
003c78  6307e901  loadli.w r14,  240(r18)
003c7c  e347e901  loadli.w r15,  244(r18)
003c80  6308f901  loadli.w r16,  248(r18)
003c84  e348f901  loadli.w r17,  252(r18)
003c88  0f010100  exp.f.rn r2, r2
003c8c  8f810100  exp.f.rn r3, r3
003c90  0f020200  exp.f.rn r4, r4
003c94  8f820200  exp.f.rn r5, r5
003c98  0f030300  exp.f.rn r6, r6
003c9c  8f830300  exp.f.rn r7, r7
003ca0  0f040400  exp.f.rn r8, r8
003ca4  8f840400  exp.f.rn r9, r9
003ca8  0f050500  exp.f.rn r10, r10
003cac  8f850500  exp.f.rn r11, r11
003cb0  0f060600  exp.f.rn r12, r12
003cb4  8f860600  exp.f.rn r13, r13
003cb8  0f070700  exp.f.rn r14, r14
003cbc  8f870700  exp.f.rn r15, r15
003cc0  0f080800  exp.f.rn r16, r16
003cc4  8f880800  exp.f.rn r17, r17
003cc8  670c2900  storeli.w r2, 192(r18)
003ccc  674c3900  storeli.w r3, 196(r18)
003cd0  e70c4900  storeli.w r4, 200(r18)
003cd4  e74c5900  storeli.w r5, 204(r18)
003cd8  670d6900  storeli.w r6, 208(r18)
003cdc  674d7900  storeli.w r7, 212(r18)
003ce0  e70d8900  storeli.w r8, 216(r18)
003ce4  e74d9900  storeli.w r9, 220(r18)
003ce8  670ea900  storeli.w r10, 224(r18)
003cec  674eb900  storeli.w r11, 228(r18)
003cf0  e70ec900  storeli.w r12, 232(r18)
003cf4  e74ed900  storeli.w r13, 236(r18)
003cf8  670fe900  storeli.w r14, 240(r18)
003cfc  674ff900  storeli.w r15, 244(r18)
003d00  e70f0901  storeli.w r16, 248(r18)
003d04  e74f1901  storeli.w r17, 252(r18)
003d08  00a00000  mfence { lm }
003d0c  42110fe2  vload_mask16.mz vr2{mr1}, 1792(r30)
003d10  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
003d14  1f018fde  addli r2, r30, -4288
003d18  42120fe3  vload_mask16.mz vr4{mr1}, 1920(r30)
003d1c  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
003d20  c2118fe3  vload_mask16.mz vr3{mr1}, 1984(r30)
003d24  46100fe2  vstore_mask16.mz vr0{mr1}, 1792(r30)
003d28  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
003d2c  1f010fde  addli r2, r30, -4352
003d30  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
003d34  46140fe2  vstore_mask16.mz vr0{mr1}, 1856(r30)
003d38  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
003d3c  1f010fdf  addli r2, r30, -4224
003d40  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
003d44  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
003d48  1f018fde  addli r2, r30, -4288
003d4c  96101102  vadd.f.mz.rn vr1{mr1}, vr2, vr1
003d50  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
003d54  1f018fdf  addli r2, r30, -4160
003d58  46180fe2  vstore_mask16.mz vr0{mr1}, 1920(r30)
003d5c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
003d60  1f018fe3  addli r2, r30, -3648
003d64  12900002  vadd.f.mz.rn vr0{mr1}, r1, vr0
003d68  461c0fe2  vstore_mask16.mz vr0{mr1}, 1984(r30)
003d6c  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
003d70  1f010fe0  addli r2, r30, -4096
003d74  16904002  vadd.f.mz.rn vr0{mr1}, vr1, vr4
003d78  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
003d7c  00a00000  mfence { lm }
003d80  63010900  loadli.w r2,  0(r18)
003d84  e3410900  loadli.w r3,  4(r18)
003d88  63021900  loadli.w r4,  8(r18)
003d8c  e3421900  loadli.w r5,  12(r18)
003d90  63032900  loadli.w r6,  16(r18)
003d94  e3432900  loadli.w r7,  20(r18)
003d98  63043900  loadli.w r8,  24(r18)
003d9c  e3443900  loadli.w r9,  28(r18)
003da0  63054900  loadli.w r10,  32(r18)
003da4  e3454900  loadli.w r11,  36(r18)
003da8  63065900  loadli.w r12,  40(r18)
003dac  e3465900  loadli.w r13,  44(r18)
003db0  63076900  loadli.w r14,  48(r18)
003db4  e3476900  loadli.w r15,  52(r18)
003db8  63087900  loadli.w r16,  56(r18)
003dbc  e3487900  loadli.w r17,  60(r18)
003dc0  0f010100  exp.f.rn r2, r2
003dc4  8f810100  exp.f.rn r3, r3
003dc8  0f020200  exp.f.rn r4, r4
003dcc  8f820200  exp.f.rn r5, r5
003dd0  0f030300  exp.f.rn r6, r6
003dd4  8f830300  exp.f.rn r7, r7
003dd8  0f040400  exp.f.rn r8, r8
003ddc  8f840400  exp.f.rn r9, r9
003de0  0f050500  exp.f.rn r10, r10
003de4  8f850500  exp.f.rn r11, r11
003de8  0f060600  exp.f.rn r12, r12
003dec  8f860600  exp.f.rn r13, r13
003df0  0f070700  exp.f.rn r14, r14
003df4  8f870700  exp.f.rn r15, r15
003df8  0f080800  exp.f.rn r16, r16
003dfc  8f880800  exp.f.rn r17, r17
003e00  67002900  storeli.w r2, 0(r18)
003e04  67403900  storeli.w r3, 4(r18)
003e08  e7004900  storeli.w r4, 8(r18)
003e0c  e7405900  storeli.w r5, 12(r18)
003e10  67016900  storeli.w r6, 16(r18)
003e14  67417900  storeli.w r7, 20(r18)
003e18  e7018900  storeli.w r8, 24(r18)
003e1c  e7419900  storeli.w r9, 28(r18)
003e20  6702a900  storeli.w r10, 32(r18)
003e24  6742b900  storeli.w r11, 36(r18)
003e28  e702c900  storeli.w r12, 40(r18)
003e2c  e742d900  storeli.w r13, 44(r18)
003e30  6703e900  storeli.w r14, 48(r18)
003e34  6743f900  storeli.w r15, 52(r18)
003e38  e7030901  storeli.w r16, 56(r18)
003e3c  e7431901  storeli.w r17, 60(r18)
003e40  63018900  loadli.w r2,  64(r18)
003e44  e3418900  loadli.w r3,  68(r18)
003e48  63029900  loadli.w r4,  72(r18)
003e4c  e3429900  loadli.w r5,  76(r18)
003e50  6303a900  loadli.w r6,  80(r18)
003e54  e343a900  loadli.w r7,  84(r18)
003e58  6304b900  loadli.w r8,  88(r18)
003e5c  e344b900  loadli.w r9,  92(r18)
003e60  6305c900  loadli.w r10,  96(r18)
003e64  e345c900  loadli.w r11,  100(r18)
003e68  6306d900  loadli.w r12,  104(r18)
003e6c  e346d900  loadli.w r13,  108(r18)
003e70  6307e900  loadli.w r14,  112(r18)
003e74  e347e900  loadli.w r15,  116(r18)
003e78  6308f900  loadli.w r16,  120(r18)
003e7c  e348f900  loadli.w r17,  124(r18)
003e80  0f010100  exp.f.rn r2, r2
003e84  8f810100  exp.f.rn r3, r3
003e88  0f020200  exp.f.rn r4, r4
003e8c  8f820200  exp.f.rn r5, r5
003e90  0f030300  exp.f.rn r6, r6
003e94  8f830300  exp.f.rn r7, r7
003e98  0f040400  exp.f.rn r8, r8
003e9c  8f840400  exp.f.rn r9, r9
003ea0  0f050500  exp.f.rn r10, r10
003ea4  8f850500  exp.f.rn r11, r11
003ea8  0f060600  exp.f.rn r12, r12
003eac  8f860600  exp.f.rn r13, r13
003eb0  0f070700  exp.f.rn r14, r14
003eb4  8f870700  exp.f.rn r15, r15
003eb8  0f080800  exp.f.rn r16, r16
003ebc  8f880800  exp.f.rn r17, r17
003ec0  67042900  storeli.w r2, 64(r18)
003ec4  67443900  storeli.w r3, 68(r18)
003ec8  e7044900  storeli.w r4, 72(r18)
003ecc  e7445900  storeli.w r5, 76(r18)
003ed0  67056900  storeli.w r6, 80(r18)
003ed4  67457900  storeli.w r7, 84(r18)
003ed8  e7058900  storeli.w r8, 88(r18)
003edc  e7459900  storeli.w r9, 92(r18)
003ee0  6706a900  storeli.w r10, 96(r18)
003ee4  6746b900  storeli.w r11, 100(r18)
003ee8  e706c900  storeli.w r12, 104(r18)
003eec  e746d900  storeli.w r13, 108(r18)
003ef0  6707e900  storeli.w r14, 112(r18)
003ef4  6747f900  storeli.w r15, 116(r18)
003ef8  e7070901  storeli.w r16, 120(r18)
003efc  e7471901  storeli.w r17, 124(r18)
003f00  63010901  loadli.w r2,  128(r18)
003f04  e3410901  loadli.w r3,  132(r18)
003f08  63021901  loadli.w r4,  136(r18)
003f0c  e3421901  loadli.w r5,  140(r18)
003f10  63032901  loadli.w r6,  144(r18)
003f14  e3432901  loadli.w r7,  148(r18)
003f18  63043901  loadli.w r8,  152(r18)
003f1c  e3443901  loadli.w r9,  156(r18)
003f20  63054901  loadli.w r10,  160(r18)
003f24  e3454901  loadli.w r11,  164(r18)
003f28  63065901  loadli.w r12,  168(r18)
003f2c  e3465901  loadli.w r13,  172(r18)
003f30  63076901  loadli.w r14,  176(r18)
003f34  e3476901  loadli.w r15,  180(r18)
003f38  63087901  loadli.w r16,  184(r18)
003f3c  e3487901  loadli.w r17,  188(r18)
003f40  0f010100  exp.f.rn r2, r2
003f44  8f810100  exp.f.rn r3, r3
003f48  0f020200  exp.f.rn r4, r4
003f4c  8f820200  exp.f.rn r5, r5
003f50  0f030300  exp.f.rn r6, r6
003f54  8f830300  exp.f.rn r7, r7
003f58  0f040400  exp.f.rn r8, r8
003f5c  8f840400  exp.f.rn r9, r9
003f60  0f050500  exp.f.rn r10, r10
003f64  8f850500  exp.f.rn r11, r11
003f68  0f060600  exp.f.rn r12, r12
003f6c  8f860600  exp.f.rn r13, r13
003f70  0f070700  exp.f.rn r14, r14
003f74  8f870700  exp.f.rn r15, r15
003f78  0f080800  exp.f.rn r16, r16
003f7c  8f880800  exp.f.rn r17, r17
003f80  67082900  storeli.w r2, 128(r18)
003f84  67483900  storeli.w r3, 132(r18)
003f88  e7084900  storeli.w r4, 136(r18)
003f8c  e7485900  storeli.w r5, 140(r18)
003f90  67096900  storeli.w r6, 144(r18)
003f94  67497900  storeli.w r7, 148(r18)
003f98  e7098900  storeli.w r8, 152(r18)
003f9c  e7499900  storeli.w r9, 156(r18)
003fa0  670aa900  storeli.w r10, 160(r18)
003fa4  674ab900  storeli.w r11, 164(r18)
003fa8  e70ac900  storeli.w r12, 168(r18)
003fac  e74ad900  storeli.w r13, 172(r18)
003fb0  670be900  storeli.w r14, 176(r18)
003fb4  674bf900  storeli.w r15, 180(r18)
003fb8  e70b0901  storeli.w r16, 184(r18)
003fbc  e74b1901  storeli.w r17, 188(r18)
003fc0  63018901  loadli.w r2,  192(r18)
003fc4  e3418901  loadli.w r3,  196(r18)
003fc8  63029901  loadli.w r4,  200(r18)
003fcc  e3429901  loadli.w r5,  204(r18)
003fd0  6303a901  loadli.w r6,  208(r18)
003fd4  e343a901  loadli.w r7,  212(r18)
003fd8  6304b901  loadli.w r8,  216(r18)
003fdc  e344b901  loadli.w r9,  220(r18)
003fe0  6305c901  loadli.w r10,  224(r18)
003fe4  e345c901  loadli.w r11,  228(r18)
003fe8  6306d901  loadli.w r12,  232(r18)
003fec  e346d901  loadli.w r13,  236(r18)
003ff0  6307e901  loadli.w r14,  240(r18)
003ff4  e347e901  loadli.w r15,  244(r18)
003ff8  6308f901  loadli.w r16,  248(r18)
003ffc  e348f901  loadli.w r17,  252(r18)
004000  0f010100  exp.f.rn r2, r2
004004  8f810100  exp.f.rn r3, r3
004008  0f020200  exp.f.rn r4, r4
00400c  8f820200  exp.f.rn r5, r5
004010  0f030300  exp.f.rn r6, r6
004014  8f830300  exp.f.rn r7, r7
004018  0f040400  exp.f.rn r8, r8
00401c  8f840400  exp.f.rn r9, r9
004020  0f050500  exp.f.rn r10, r10
004024  8f850500  exp.f.rn r11, r11
004028  0f060600  exp.f.rn r12, r12
00402c  8f860600  exp.f.rn r13, r13
004030  0f070700  exp.f.rn r14, r14
004034  8f870700  exp.f.rn r15, r15
004038  0f080800  exp.f.rn r16, r16
00403c  8f880800  exp.f.rn r17, r17
004040  670c2900  storeli.w r2, 192(r18)
004044  674c3900  storeli.w r3, 196(r18)
004048  e70c4900  storeli.w r4, 200(r18)
00404c  e74c5900  storeli.w r5, 204(r18)
004050  670d6900  storeli.w r6, 208(r18)
004054  674d7900  storeli.w r7, 212(r18)
004058  e70d8900  storeli.w r8, 216(r18)
00405c  e74d9900  storeli.w r9, 220(r18)
004060  670ea900  storeli.w r10, 224(r18)
004064  674eb900  storeli.w r11, 228(r18)
004068  e70ec900  storeli.w r12, 232(r18)
00406c  e74ed900  storeli.w r13, 236(r18)
004070  670fe900  storeli.w r14, 240(r18)
004074  674ff900  storeli.w r15, 244(r18)
004078  e70f0901  storeli.w r16, 248(r18)
00407c  e74f1901  storeli.w r17, 252(r18)
004080  00a00000  mfence { lm }
004084  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
004088  1f010fe4  addli r2, r30, -3584
00408c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004090  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
004094  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
004098  1f010fe3  addli r2, r30, -3712
00409c  c2118fe2  vload_mask16.mz vr3{mr1}, 1856(r30)
0040a0  42130fe3  vload_mask16.mz vr6{mr1}, 1920(r30)
0040a4  c2128fe3  vload_mask16.mz vr5{mr1}, 1984(r30)
0040a8  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0040ac  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
0040b0  1f010fe5  addli r2, r30, -3456
0040b4  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
0040b8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0040bc  1f018fe4  addli r2, r30, -3520
0040c0  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0040c4  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0040c8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0040cc  1f010fe5  addli r2, r30, -3456
0040d0  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
0040d4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0040d8  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
0040dc  1f018fe5  addli r2, r30, -3392
0040e0  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0040e4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0040e8  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
0040ec  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0040f0  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0040f4  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
0040f8  1f010fe6  addli r2, r30, -3328
0040fc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004100  00a00000  mfence { lm }
004104  63010900  loadli.w r2,  0(r18)
004108  e3410900  loadli.w r3,  4(r18)
00410c  63021900  loadli.w r4,  8(r18)
004110  e3421900  loadli.w r5,  12(r18)
004114  63032900  loadli.w r6,  16(r18)
004118  e3432900  loadli.w r7,  20(r18)
00411c  63043900  loadli.w r8,  24(r18)
004120  e3443900  loadli.w r9,  28(r18)
004124  63054900  loadli.w r10,  32(r18)
004128  e3454900  loadli.w r11,  36(r18)
00412c  63065900  loadli.w r12,  40(r18)
004130  e3465900  loadli.w r13,  44(r18)
004134  63076900  loadli.w r14,  48(r18)
004138  e3476900  loadli.w r15,  52(r18)
00413c  63087900  loadli.w r16,  56(r18)
004140  e3487900  loadli.w r17,  60(r18)
004144  0f010100  exp.f.rn r2, r2
004148  8f810100  exp.f.rn r3, r3
00414c  0f020200  exp.f.rn r4, r4
004150  8f820200  exp.f.rn r5, r5
004154  0f030300  exp.f.rn r6, r6
004158  8f830300  exp.f.rn r7, r7
00415c  0f040400  exp.f.rn r8, r8
004160  8f840400  exp.f.rn r9, r9
004164  0f050500  exp.f.rn r10, r10
004168  8f850500  exp.f.rn r11, r11
00416c  0f060600  exp.f.rn r12, r12
004170  8f860600  exp.f.rn r13, r13
004174  0f070700  exp.f.rn r14, r14
004178  8f870700  exp.f.rn r15, r15
00417c  0f080800  exp.f.rn r16, r16
004180  8f880800  exp.f.rn r17, r17
004184  67002900  storeli.w r2, 0(r18)
004188  67403900  storeli.w r3, 4(r18)
00418c  e7004900  storeli.w r4, 8(r18)
004190  e7405900  storeli.w r5, 12(r18)
004194  67016900  storeli.w r6, 16(r18)
004198  67417900  storeli.w r7, 20(r18)
00419c  e7018900  storeli.w r8, 24(r18)
0041a0  e7419900  storeli.w r9, 28(r18)
0041a4  6702a900  storeli.w r10, 32(r18)
0041a8  6742b900  storeli.w r11, 36(r18)
0041ac  e702c900  storeli.w r12, 40(r18)
0041b0  e742d900  storeli.w r13, 44(r18)
0041b4  6703e900  storeli.w r14, 48(r18)
0041b8  6743f900  storeli.w r15, 52(r18)
0041bc  e7030901  storeli.w r16, 56(r18)
0041c0  e7431901  storeli.w r17, 60(r18)
0041c4  63018900  loadli.w r2,  64(r18)
0041c8  e3418900  loadli.w r3,  68(r18)
0041cc  63029900  loadli.w r4,  72(r18)
0041d0  e3429900  loadli.w r5,  76(r18)
0041d4  6303a900  loadli.w r6,  80(r18)
0041d8  e343a900  loadli.w r7,  84(r18)
0041dc  6304b900  loadli.w r8,  88(r18)
0041e0  e344b900  loadli.w r9,  92(r18)
0041e4  6305c900  loadli.w r10,  96(r18)
0041e8  e345c900  loadli.w r11,  100(r18)
0041ec  6306d900  loadli.w r12,  104(r18)
0041f0  e346d900  loadli.w r13,  108(r18)
0041f4  6307e900  loadli.w r14,  112(r18)
0041f8  e347e900  loadli.w r15,  116(r18)
0041fc  6308f900  loadli.w r16,  120(r18)
004200  e348f900  loadli.w r17,  124(r18)
004204  0f010100  exp.f.rn r2, r2
004208  8f810100  exp.f.rn r3, r3
00420c  0f020200  exp.f.rn r4, r4
004210  8f820200  exp.f.rn r5, r5
004214  0f030300  exp.f.rn r6, r6
004218  8f830300  exp.f.rn r7, r7
00421c  0f040400  exp.f.rn r8, r8
004220  8f840400  exp.f.rn r9, r9
004224  0f050500  exp.f.rn r10, r10
004228  8f850500  exp.f.rn r11, r11
00422c  0f060600  exp.f.rn r12, r12
004230  8f860600  exp.f.rn r13, r13
004234  0f070700  exp.f.rn r14, r14
004238  8f870700  exp.f.rn r15, r15
00423c  0f080800  exp.f.rn r16, r16
004240  8f880800  exp.f.rn r17, r17
004244  67042900  storeli.w r2, 64(r18)
004248  67443900  storeli.w r3, 68(r18)
00424c  e7044900  storeli.w r4, 72(r18)
004250  e7445900  storeli.w r5, 76(r18)
004254  67056900  storeli.w r6, 80(r18)
004258  67457900  storeli.w r7, 84(r18)
00425c  e7058900  storeli.w r8, 88(r18)
004260  e7459900  storeli.w r9, 92(r18)
004264  6706a900  storeli.w r10, 96(r18)
004268  6746b900  storeli.w r11, 100(r18)
00426c  e706c900  storeli.w r12, 104(r18)
004270  e746d900  storeli.w r13, 108(r18)
004274  6707e900  storeli.w r14, 112(r18)
004278  6747f900  storeli.w r15, 116(r18)
00427c  e7070901  storeli.w r16, 120(r18)
004280  e7471901  storeli.w r17, 124(r18)
004284  63010901  loadli.w r2,  128(r18)
004288  e3410901  loadli.w r3,  132(r18)
00428c  63021901  loadli.w r4,  136(r18)
004290  e3421901  loadli.w r5,  140(r18)
004294  63032901  loadli.w r6,  144(r18)
004298  e3432901  loadli.w r7,  148(r18)
00429c  63043901  loadli.w r8,  152(r18)
0042a0  e3443901  loadli.w r9,  156(r18)
0042a4  63054901  loadli.w r10,  160(r18)
0042a8  e3454901  loadli.w r11,  164(r18)
0042ac  63065901  loadli.w r12,  168(r18)
0042b0  e3465901  loadli.w r13,  172(r18)
0042b4  63076901  loadli.w r14,  176(r18)
0042b8  e3476901  loadli.w r15,  180(r18)
0042bc  63087901  loadli.w r16,  184(r18)
0042c0  e3487901  loadli.w r17,  188(r18)
0042c4  0f010100  exp.f.rn r2, r2
0042c8  8f810100  exp.f.rn r3, r3
0042cc  0f020200  exp.f.rn r4, r4
0042d0  8f820200  exp.f.rn r5, r5
0042d4  0f030300  exp.f.rn r6, r6
0042d8  8f830300  exp.f.rn r7, r7
0042dc  0f040400  exp.f.rn r8, r8
0042e0  8f840400  exp.f.rn r9, r9
0042e4  0f050500  exp.f.rn r10, r10
0042e8  8f850500  exp.f.rn r11, r11
0042ec  0f060600  exp.f.rn r12, r12
0042f0  8f860600  exp.f.rn r13, r13
0042f4  0f070700  exp.f.rn r14, r14
0042f8  8f870700  exp.f.rn r15, r15
0042fc  0f080800  exp.f.rn r16, r16
004300  8f880800  exp.f.rn r17, r17
004304  67082900  storeli.w r2, 128(r18)
004308  67483900  storeli.w r3, 132(r18)
00430c  e7084900  storeli.w r4, 136(r18)
004310  e7485900  storeli.w r5, 140(r18)
004314  67096900  storeli.w r6, 144(r18)
004318  67497900  storeli.w r7, 148(r18)
00431c  e7098900  storeli.w r8, 152(r18)
004320  e7499900  storeli.w r9, 156(r18)
004324  670aa900  storeli.w r10, 160(r18)
004328  674ab900  storeli.w r11, 164(r18)
00432c  e70ac900  storeli.w r12, 168(r18)
004330  e74ad900  storeli.w r13, 172(r18)
004334  670be900  storeli.w r14, 176(r18)
004338  674bf900  storeli.w r15, 180(r18)
00433c  e70b0901  storeli.w r16, 184(r18)
004340  e74b1901  storeli.w r17, 188(r18)
004344  63018901  loadli.w r2,  192(r18)
004348  e3418901  loadli.w r3,  196(r18)
00434c  63029901  loadli.w r4,  200(r18)
004350  e3429901  loadli.w r5,  204(r18)
004354  6303a901  loadli.w r6,  208(r18)
004358  e343a901  loadli.w r7,  212(r18)
00435c  6304b901  loadli.w r8,  216(r18)
004360  e344b901  loadli.w r9,  220(r18)
004364  6305c901  loadli.w r10,  224(r18)
004368  e345c901  loadli.w r11,  228(r18)
00436c  6306d901  loadli.w r12,  232(r18)
004370  e346d901  loadli.w r13,  236(r18)
004374  6307e901  loadli.w r14,  240(r18)
004378  e347e901  loadli.w r15,  244(r18)
00437c  6308f901  loadli.w r16,  248(r18)
004380  e348f901  loadli.w r17,  252(r18)
004384  0f010100  exp.f.rn r2, r2
004388  8f810100  exp.f.rn r3, r3
00438c  0f020200  exp.f.rn r4, r4
004390  8f820200  exp.f.rn r5, r5
004394  0f030300  exp.f.rn r6, r6
004398  8f830300  exp.f.rn r7, r7
00439c  0f040400  exp.f.rn r8, r8
0043a0  8f840400  exp.f.rn r9, r9
0043a4  0f050500  exp.f.rn r10, r10
0043a8  8f850500  exp.f.rn r11, r11
0043ac  0f060600  exp.f.rn r12, r12
0043b0  8f860600  exp.f.rn r13, r13
0043b4  0f070700  exp.f.rn r14, r14
0043b8  8f870700  exp.f.rn r15, r15
0043bc  0f080800  exp.f.rn r16, r16
0043c0  8f880800  exp.f.rn r17, r17
0043c4  670c2900  storeli.w r2, 192(r18)
0043c8  674c3900  storeli.w r3, 196(r18)
0043cc  e70c4900  storeli.w r4, 200(r18)
0043d0  e74c5900  storeli.w r5, 204(r18)
0043d4  670d6900  storeli.w r6, 208(r18)
0043d8  674d7900  storeli.w r7, 212(r18)
0043dc  e70d8900  storeli.w r8, 216(r18)
0043e0  e74d9900  storeli.w r9, 220(r18)
0043e4  670ea900  storeli.w r10, 224(r18)
0043e8  674eb900  storeli.w r11, 228(r18)
0043ec  e70ec900  storeli.w r12, 232(r18)
0043f0  e74ed900  storeli.w r13, 236(r18)
0043f4  670fe900  storeli.w r14, 240(r18)
0043f8  674ff900  storeli.w r15, 244(r18)
0043fc  e70f0901  storeli.w r16, 248(r18)
004400  e74f1901  storeli.w r17, 252(r18)
004404  00a00000  mfence { lm }
004408  42120fe2  vload_mask16.mz vr4{mr1}, 1792(r30)
00440c  1f010fe6  addli r2, r30, -3328
004410  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
004414  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004418  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
00441c  1f018fe4  addli r2, r30, -3520
004420  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
004424  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
004428  c2158fe3  vload_mask16.mz vr11{mr1}, 1984(r30)
00442c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
004430  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
004434  1f010fe7  addli r2, r30, -3200
004438  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
00443c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004440  1f018fe6  addli r2, r30, -3264
004444  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004448  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
00444c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004450  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
004454  1f018fe7  addli r2, r30, -3136
004458  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00445c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004460  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
004464  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004468  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00446c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
004470  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
004474  1f018fe0  addli r2, r30, -4032
004478  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
00447c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004480  00a00000  mfence { lm }
004484  63010900  loadli.w r2,  0(r18)
004488  e3410900  loadli.w r3,  4(r18)
00448c  63021900  loadli.w r4,  8(r18)
004490  e3421900  loadli.w r5,  12(r18)
004494  63032900  loadli.w r6,  16(r18)
004498  e3432900  loadli.w r7,  20(r18)
00449c  63043900  loadli.w r8,  24(r18)
0044a0  e3443900  loadli.w r9,  28(r18)
0044a4  63054900  loadli.w r10,  32(r18)
0044a8  e3454900  loadli.w r11,  36(r18)
0044ac  63065900  loadli.w r12,  40(r18)
0044b0  e3465900  loadli.w r13,  44(r18)
0044b4  63076900  loadli.w r14,  48(r18)
0044b8  e3476900  loadli.w r15,  52(r18)
0044bc  63087900  loadli.w r16,  56(r18)
0044c0  e3487900  loadli.w r17,  60(r18)
0044c4  0f010100  exp.f.rn r2, r2
0044c8  8f810100  exp.f.rn r3, r3
0044cc  0f020200  exp.f.rn r4, r4
0044d0  8f820200  exp.f.rn r5, r5
0044d4  0f030300  exp.f.rn r6, r6
0044d8  8f830300  exp.f.rn r7, r7
0044dc  0f040400  exp.f.rn r8, r8
0044e0  8f840400  exp.f.rn r9, r9
0044e4  0f050500  exp.f.rn r10, r10
0044e8  8f850500  exp.f.rn r11, r11
0044ec  0f060600  exp.f.rn r12, r12
0044f0  8f860600  exp.f.rn r13, r13
0044f4  0f070700  exp.f.rn r14, r14
0044f8  8f870700  exp.f.rn r15, r15
0044fc  0f080800  exp.f.rn r16, r16
004500  8f880800  exp.f.rn r17, r17
004504  67002900  storeli.w r2, 0(r18)
004508  67403900  storeli.w r3, 4(r18)
00450c  e7004900  storeli.w r4, 8(r18)
004510  e7405900  storeli.w r5, 12(r18)
004514  67016900  storeli.w r6, 16(r18)
004518  67417900  storeli.w r7, 20(r18)
00451c  e7018900  storeli.w r8, 24(r18)
004520  e7419900  storeli.w r9, 28(r18)
004524  6702a900  storeli.w r10, 32(r18)
004528  6742b900  storeli.w r11, 36(r18)
00452c  e702c900  storeli.w r12, 40(r18)
004530  e742d900  storeli.w r13, 44(r18)
004534  6703e900  storeli.w r14, 48(r18)
004538  6743f900  storeli.w r15, 52(r18)
00453c  e7030901  storeli.w r16, 56(r18)
004540  e7431901  storeli.w r17, 60(r18)
004544  63018900  loadli.w r2,  64(r18)
004548  e3418900  loadli.w r3,  68(r18)
00454c  63029900  loadli.w r4,  72(r18)
004550  e3429900  loadli.w r5,  76(r18)
004554  6303a900  loadli.w r6,  80(r18)
004558  e343a900  loadli.w r7,  84(r18)
00455c  6304b900  loadli.w r8,  88(r18)
004560  e344b900  loadli.w r9,  92(r18)
004564  6305c900  loadli.w r10,  96(r18)
004568  e345c900  loadli.w r11,  100(r18)
00456c  6306d900  loadli.w r12,  104(r18)
004570  e346d900  loadli.w r13,  108(r18)
004574  6307e900  loadli.w r14,  112(r18)
004578  e347e900  loadli.w r15,  116(r18)
00457c  6308f900  loadli.w r16,  120(r18)
004580  e348f900  loadli.w r17,  124(r18)
004584  0f010100  exp.f.rn r2, r2
004588  8f810100  exp.f.rn r3, r3
00458c  0f020200  exp.f.rn r4, r4
004590  8f820200  exp.f.rn r5, r5
004594  0f030300  exp.f.rn r6, r6
004598  8f830300  exp.f.rn r7, r7
00459c  0f040400  exp.f.rn r8, r8
0045a0  8f840400  exp.f.rn r9, r9
0045a4  0f050500  exp.f.rn r10, r10
0045a8  8f850500  exp.f.rn r11, r11
0045ac  0f060600  exp.f.rn r12, r12
0045b0  8f860600  exp.f.rn r13, r13
0045b4  0f070700  exp.f.rn r14, r14
0045b8  8f870700  exp.f.rn r15, r15
0045bc  0f080800  exp.f.rn r16, r16
0045c0  8f880800  exp.f.rn r17, r17
0045c4  67042900  storeli.w r2, 64(r18)
0045c8  67443900  storeli.w r3, 68(r18)
0045cc  e7044900  storeli.w r4, 72(r18)
0045d0  e7445900  storeli.w r5, 76(r18)
0045d4  67056900  storeli.w r6, 80(r18)
0045d8  67457900  storeli.w r7, 84(r18)
0045dc  e7058900  storeli.w r8, 88(r18)
0045e0  e7459900  storeli.w r9, 92(r18)
0045e4  6706a900  storeli.w r10, 96(r18)
0045e8  6746b900  storeli.w r11, 100(r18)
0045ec  e706c900  storeli.w r12, 104(r18)
0045f0  e746d900  storeli.w r13, 108(r18)
0045f4  6707e900  storeli.w r14, 112(r18)
0045f8  6747f900  storeli.w r15, 116(r18)
0045fc  e7070901  storeli.w r16, 120(r18)
004600  e7471901  storeli.w r17, 124(r18)
004604  63010901  loadli.w r2,  128(r18)
004608  e3410901  loadli.w r3,  132(r18)
00460c  63021901  loadli.w r4,  136(r18)
004610  e3421901  loadli.w r5,  140(r18)
004614  63032901  loadli.w r6,  144(r18)
004618  e3432901  loadli.w r7,  148(r18)
00461c  63043901  loadli.w r8,  152(r18)
004620  e3443901  loadli.w r9,  156(r18)
004624  63054901  loadli.w r10,  160(r18)
004628  e3454901  loadli.w r11,  164(r18)
00462c  63065901  loadli.w r12,  168(r18)
004630  e3465901  loadli.w r13,  172(r18)
004634  63076901  loadli.w r14,  176(r18)
004638  e3476901  loadli.w r15,  180(r18)
00463c  63087901  loadli.w r16,  184(r18)
004640  e3487901  loadli.w r17,  188(r18)
004644  0f010100  exp.f.rn r2, r2
004648  8f810100  exp.f.rn r3, r3
00464c  0f020200  exp.f.rn r4, r4
004650  8f820200  exp.f.rn r5, r5
004654  0f030300  exp.f.rn r6, r6
004658  8f830300  exp.f.rn r7, r7
00465c  0f040400  exp.f.rn r8, r8
004660  8f840400  exp.f.rn r9, r9
004664  0f050500  exp.f.rn r10, r10
004668  8f850500  exp.f.rn r11, r11
00466c  0f060600  exp.f.rn r12, r12
004670  8f860600  exp.f.rn r13, r13
004674  0f070700  exp.f.rn r14, r14
004678  8f870700  exp.f.rn r15, r15
00467c  0f080800  exp.f.rn r16, r16
004680  8f880800  exp.f.rn r17, r17
004684  67082900  storeli.w r2, 128(r18)
004688  67483900  storeli.w r3, 132(r18)
00468c  e7084900  storeli.w r4, 136(r18)
004690  e7485900  storeli.w r5, 140(r18)
004694  67096900  storeli.w r6, 144(r18)
004698  67497900  storeli.w r7, 148(r18)
00469c  e7098900  storeli.w r8, 152(r18)
0046a0  e7499900  storeli.w r9, 156(r18)
0046a4  670aa900  storeli.w r10, 160(r18)
0046a8  674ab900  storeli.w r11, 164(r18)
0046ac  e70ac900  storeli.w r12, 168(r18)
0046b0  e74ad900  storeli.w r13, 172(r18)
0046b4  670be900  storeli.w r14, 176(r18)
0046b8  674bf900  storeli.w r15, 180(r18)
0046bc  e70b0901  storeli.w r16, 184(r18)
0046c0  e74b1901  storeli.w r17, 188(r18)
0046c4  63018901  loadli.w r2,  192(r18)
0046c8  e3418901  loadli.w r3,  196(r18)
0046cc  63029901  loadli.w r4,  200(r18)
0046d0  e3429901  loadli.w r5,  204(r18)
0046d4  6303a901  loadli.w r6,  208(r18)
0046d8  e343a901  loadli.w r7,  212(r18)
0046dc  6304b901  loadli.w r8,  216(r18)
0046e0  e344b901  loadli.w r9,  220(r18)
0046e4  6305c901  loadli.w r10,  224(r18)
0046e8  e345c901  loadli.w r11,  228(r18)
0046ec  6306d901  loadli.w r12,  232(r18)
0046f0  e346d901  loadli.w r13,  236(r18)
0046f4  6307e901  loadli.w r14,  240(r18)
0046f8  e347e901  loadli.w r15,  244(r18)
0046fc  6308f901  loadli.w r16,  248(r18)
004700  e348f901  loadli.w r17,  252(r18)
004704  0f010100  exp.f.rn r2, r2
004708  8f810100  exp.f.rn r3, r3
00470c  0f020200  exp.f.rn r4, r4
004710  8f820200  exp.f.rn r5, r5
004714  0f030300  exp.f.rn r6, r6
004718  8f830300  exp.f.rn r7, r7
00471c  0f040400  exp.f.rn r8, r8
004720  8f840400  exp.f.rn r9, r9
004724  0f050500  exp.f.rn r10, r10
004728  8f850500  exp.f.rn r11, r11
00472c  0f060600  exp.f.rn r12, r12
004730  8f860600  exp.f.rn r13, r13
004734  0f070700  exp.f.rn r14, r14
004738  8f870700  exp.f.rn r15, r15
00473c  0f080800  exp.f.rn r16, r16
004740  8f880800  exp.f.rn r17, r17
004744  670c2900  storeli.w r2, 192(r18)
004748  674c3900  storeli.w r3, 196(r18)
00474c  e70c4900  storeli.w r4, 200(r18)
004750  e74c5900  storeli.w r5, 204(r18)
004754  670d6900  storeli.w r6, 208(r18)
004758  674d7900  storeli.w r7, 212(r18)
00475c  e70d8900  storeli.w r8, 216(r18)
004760  e74d9900  storeli.w r9, 220(r18)
004764  670ea900  storeli.w r10, 224(r18)
004768  674eb900  storeli.w r11, 228(r18)
00476c  e70ec900  storeli.w r12, 232(r18)
004770  e74ed900  storeli.w r13, 236(r18)
004774  670fe900  storeli.w r14, 240(r18)
004778  674ff900  storeli.w r15, 244(r18)
00477c  e70f0901  storeli.w r16, 248(r18)
004780  e74f1901  storeli.w r17, 252(r18)
004784  00a00000  mfence { lm }
004788  c2130fe2  vload_mask16.mz vr7{mr1}, 1792(r30)
00478c  42118fe2  vload_mask16.mz vr2{mr1}, 1856(r30)
004790  1f010fe7  addli r2, r30, -3200
004794  c2120fe3  vload_mask16.mz vr5{mr1}, 1920(r30)
004798  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00479c  42138fe3  vload_mask16.mz vr6{mr1}, 1984(r30)
0047a0  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
0047a4  1610b002  vadd.f.mz.rn vr0{mr1}, vr0, vr11
0047a8  46107102  vstore_mask16.mz vr7{mr1}, 0(r2)
0047ac  1f010fe8  addli r2, r30, -3072
0047b0  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
0047b4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0047b8  1f010fe1  addli r2, r30, -3968
0047bc  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0047c0  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
0047c4  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0047c8  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0047cc  1f018fe8  addli r2, r30, -3008
0047d0  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
0047d4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0047d8  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
0047dc  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0047e0  1f010fe8  addli r2, r30, -3072
0047e4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0047e8  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
0047ec  46105102  vstore_mask16.mz vr5{mr1}, 0(r2)
0047f0  1f018fe1  addli r2, r30, -3904
0047f4  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
0047f8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0047fc  00a00000  mfence { lm }
004800  63010900  loadli.w r2,  0(r18)
004804  e3410900  loadli.w r3,  4(r18)
004808  63021900  loadli.w r4,  8(r18)
00480c  e3421900  loadli.w r5,  12(r18)
004810  63032900  loadli.w r6,  16(r18)
004814  e3432900  loadli.w r7,  20(r18)
004818  63043900  loadli.w r8,  24(r18)
00481c  e3443900  loadli.w r9,  28(r18)
004820  63054900  loadli.w r10,  32(r18)
004824  e3454900  loadli.w r11,  36(r18)
004828  63065900  loadli.w r12,  40(r18)
00482c  e3465900  loadli.w r13,  44(r18)
004830  63076900  loadli.w r14,  48(r18)
004834  e3476900  loadli.w r15,  52(r18)
004838  63087900  loadli.w r16,  56(r18)
00483c  e3487900  loadli.w r17,  60(r18)
004840  0f010100  exp.f.rn r2, r2
004844  8f810100  exp.f.rn r3, r3
004848  0f020200  exp.f.rn r4, r4
00484c  8f820200  exp.f.rn r5, r5
004850  0f030300  exp.f.rn r6, r6
004854  8f830300  exp.f.rn r7, r7
004858  0f040400  exp.f.rn r8, r8
00485c  8f840400  exp.f.rn r9, r9
004860  0f050500  exp.f.rn r10, r10
004864  8f850500  exp.f.rn r11, r11
004868  0f060600  exp.f.rn r12, r12
00486c  8f860600  exp.f.rn r13, r13
004870  0f070700  exp.f.rn r14, r14
004874  8f870700  exp.f.rn r15, r15
004878  0f080800  exp.f.rn r16, r16
00487c  8f880800  exp.f.rn r17, r17
004880  67002900  storeli.w r2, 0(r18)
004884  67403900  storeli.w r3, 4(r18)
004888  e7004900  storeli.w r4, 8(r18)
00488c  e7405900  storeli.w r5, 12(r18)
004890  67016900  storeli.w r6, 16(r18)
004894  67417900  storeli.w r7, 20(r18)
004898  e7018900  storeli.w r8, 24(r18)
00489c  e7419900  storeli.w r9, 28(r18)
0048a0  6702a900  storeli.w r10, 32(r18)
0048a4  6742b900  storeli.w r11, 36(r18)
0048a8  e702c900  storeli.w r12, 40(r18)
0048ac  e742d900  storeli.w r13, 44(r18)
0048b0  6703e900  storeli.w r14, 48(r18)
0048b4  6743f900  storeli.w r15, 52(r18)
0048b8  e7030901  storeli.w r16, 56(r18)
0048bc  e7431901  storeli.w r17, 60(r18)
0048c0  63018900  loadli.w r2,  64(r18)
0048c4  e3418900  loadli.w r3,  68(r18)
0048c8  63029900  loadli.w r4,  72(r18)
0048cc  e3429900  loadli.w r5,  76(r18)
0048d0  6303a900  loadli.w r6,  80(r18)
0048d4  e343a900  loadli.w r7,  84(r18)
0048d8  6304b900  loadli.w r8,  88(r18)
0048dc  e344b900  loadli.w r9,  92(r18)
0048e0  6305c900  loadli.w r10,  96(r18)
0048e4  e345c900  loadli.w r11,  100(r18)
0048e8  6306d900  loadli.w r12,  104(r18)
0048ec  e346d900  loadli.w r13,  108(r18)
0048f0  6307e900  loadli.w r14,  112(r18)
0048f4  e347e900  loadli.w r15,  116(r18)
0048f8  6308f900  loadli.w r16,  120(r18)
0048fc  e348f900  loadli.w r17,  124(r18)
004900  0f010100  exp.f.rn r2, r2
004904  8f810100  exp.f.rn r3, r3
004908  0f020200  exp.f.rn r4, r4
00490c  8f820200  exp.f.rn r5, r5
004910  0f030300  exp.f.rn r6, r6
004914  8f830300  exp.f.rn r7, r7
004918  0f040400  exp.f.rn r8, r8
00491c  8f840400  exp.f.rn r9, r9
004920  0f050500  exp.f.rn r10, r10
004924  8f850500  exp.f.rn r11, r11
004928  0f060600  exp.f.rn r12, r12
00492c  8f860600  exp.f.rn r13, r13
004930  0f070700  exp.f.rn r14, r14
004934  8f870700  exp.f.rn r15, r15
004938  0f080800  exp.f.rn r16, r16
00493c  8f880800  exp.f.rn r17, r17
004940  67042900  storeli.w r2, 64(r18)
004944  67443900  storeli.w r3, 68(r18)
004948  e7044900  storeli.w r4, 72(r18)
00494c  e7445900  storeli.w r5, 76(r18)
004950  67056900  storeli.w r6, 80(r18)
004954  67457900  storeli.w r7, 84(r18)
004958  e7058900  storeli.w r8, 88(r18)
00495c  e7459900  storeli.w r9, 92(r18)
004960  6706a900  storeli.w r10, 96(r18)
004964  6746b900  storeli.w r11, 100(r18)
004968  e706c900  storeli.w r12, 104(r18)
00496c  e746d900  storeli.w r13, 108(r18)
004970  6707e900  storeli.w r14, 112(r18)
004974  6747f900  storeli.w r15, 116(r18)
004978  e7070901  storeli.w r16, 120(r18)
00497c  e7471901  storeli.w r17, 124(r18)
004980  63010901  loadli.w r2,  128(r18)
004984  e3410901  loadli.w r3,  132(r18)
004988  63021901  loadli.w r4,  136(r18)
00498c  e3421901  loadli.w r5,  140(r18)
004990  63032901  loadli.w r6,  144(r18)
004994  e3432901  loadli.w r7,  148(r18)
004998  63043901  loadli.w r8,  152(r18)
00499c  e3443901  loadli.w r9,  156(r18)
0049a0  63054901  loadli.w r10,  160(r18)
0049a4  e3454901  loadli.w r11,  164(r18)
0049a8  63065901  loadli.w r12,  168(r18)
0049ac  e3465901  loadli.w r13,  172(r18)
0049b0  63076901  loadli.w r14,  176(r18)
0049b4  e3476901  loadli.w r15,  180(r18)
0049b8  63087901  loadli.w r16,  184(r18)
0049bc  e3487901  loadli.w r17,  188(r18)
0049c0  0f010100  exp.f.rn r2, r2
0049c4  8f810100  exp.f.rn r3, r3
0049c8  0f020200  exp.f.rn r4, r4
0049cc  8f820200  exp.f.rn r5, r5
0049d0  0f030300  exp.f.rn r6, r6
0049d4  8f830300  exp.f.rn r7, r7
0049d8  0f040400  exp.f.rn r8, r8
0049dc  8f840400  exp.f.rn r9, r9
0049e0  0f050500  exp.f.rn r10, r10
0049e4  8f850500  exp.f.rn r11, r11
0049e8  0f060600  exp.f.rn r12, r12
0049ec  8f860600  exp.f.rn r13, r13
0049f0  0f070700  exp.f.rn r14, r14
0049f4  8f870700  exp.f.rn r15, r15
0049f8  0f080800  exp.f.rn r16, r16
0049fc  8f880800  exp.f.rn r17, r17
004a00  67082900  storeli.w r2, 128(r18)
004a04  67483900  storeli.w r3, 132(r18)
004a08  e7084900  storeli.w r4, 136(r18)
004a0c  e7485900  storeli.w r5, 140(r18)
004a10  67096900  storeli.w r6, 144(r18)
004a14  67497900  storeli.w r7, 148(r18)
004a18  e7098900  storeli.w r8, 152(r18)
004a1c  e7499900  storeli.w r9, 156(r18)
004a20  670aa900  storeli.w r10, 160(r18)
004a24  674ab900  storeli.w r11, 164(r18)
004a28  e70ac900  storeli.w r12, 168(r18)
004a2c  e74ad900  storeli.w r13, 172(r18)
004a30  670be900  storeli.w r14, 176(r18)
004a34  674bf900  storeli.w r15, 180(r18)
004a38  e70b0901  storeli.w r16, 184(r18)
004a3c  e74b1901  storeli.w r17, 188(r18)
004a40  63018901  loadli.w r2,  192(r18)
004a44  e3418901  loadli.w r3,  196(r18)
004a48  63029901  loadli.w r4,  200(r18)
004a4c  e3429901  loadli.w r5,  204(r18)
004a50  6303a901  loadli.w r6,  208(r18)
004a54  e343a901  loadli.w r7,  212(r18)
004a58  6304b901  loadli.w r8,  216(r18)
004a5c  e344b901  loadli.w r9,  220(r18)
004a60  6305c901  loadli.w r10,  224(r18)
004a64  e345c901  loadli.w r11,  228(r18)
004a68  6306d901  loadli.w r12,  232(r18)
004a6c  e346d901  loadli.w r13,  236(r18)
004a70  6307e901  loadli.w r14,  240(r18)
004a74  e347e901  loadli.w r15,  244(r18)
004a78  6308f901  loadli.w r16,  248(r18)
004a7c  e348f901  loadli.w r17,  252(r18)
004a80  0f010100  exp.f.rn r2, r2
004a84  8f810100  exp.f.rn r3, r3
004a88  0f020200  exp.f.rn r4, r4
004a8c  8f820200  exp.f.rn r5, r5
004a90  0f030300  exp.f.rn r6, r6
004a94  8f830300  exp.f.rn r7, r7
004a98  0f040400  exp.f.rn r8, r8
004a9c  8f840400  exp.f.rn r9, r9
004aa0  0f050500  exp.f.rn r10, r10
004aa4  8f850500  exp.f.rn r11, r11
004aa8  0f060600  exp.f.rn r12, r12
004aac  8f860600  exp.f.rn r13, r13
004ab0  0f070700  exp.f.rn r14, r14
004ab4  8f870700  exp.f.rn r15, r15
004ab8  0f080800  exp.f.rn r16, r16
004abc  8f880800  exp.f.rn r17, r17
004ac0  670c2900  storeli.w r2, 192(r18)
004ac4  674c3900  storeli.w r3, 196(r18)
004ac8  e70c4900  storeli.w r4, 200(r18)
004acc  e74c5900  storeli.w r5, 204(r18)
004ad0  670d6900  storeli.w r6, 208(r18)
004ad4  674d7900  storeli.w r7, 212(r18)
004ad8  e70d8900  storeli.w r8, 216(r18)
004adc  e74d9900  storeli.w r9, 220(r18)
004ae0  670ea900  storeli.w r10, 224(r18)
004ae4  674eb900  storeli.w r11, 228(r18)
004ae8  e70ec900  storeli.w r12, 232(r18)
004aec  e74ed900  storeli.w r13, 236(r18)
004af0  670fe900  storeli.w r14, 240(r18)
004af4  674ff900  storeli.w r15, 244(r18)
004af8  e70f0901  storeli.w r16, 248(r18)
004afc  e74f1901  storeli.w r17, 252(r18)
004b00  00a00000  mfence { lm }
004b04  42140fe2  vload_mask16.mz vr8{mr1}, 1792(r30)
004b08  1f018fe8  addli r2, r30, -3008
004b0c  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004b10  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
004b14  46106102  vstore_mask16.mz vr6{mr1}, 0(r2)
004b18  1f010fe9  addli r2, r30, -2944
004b1c  c2128fe2  vload_mask16.mz vr5{mr1}, 1856(r30)
004b20  c2130fe3  vload_mask16.mz vr7{mr1}, 1920(r30)
004b24  42138fe3  vload_mask16.mz vr6{mr1}, 1984(r30)
004b28  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
004b2c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004b30  1f010fe2  addli r2, r30, -3840
004b34  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004b38  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
004b3c  16108002  vadd.f.mz.rn vr0{mr1}, vr0, vr8
004b40  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004b44  1f018fe9  addli r2, r30, -2880
004b48  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004b4c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
004b50  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004b54  1f010fea  addli r2, r30, -2816
004b58  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004b5c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
004b60  16105002  vadd.f.mz.rn vr0{mr1}, vr0, vr5
004b64  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004b68  00a00000  mfence { lm }
004b6c  63010900  loadli.w r2,  0(r18)
004b70  e3410900  loadli.w r3,  4(r18)
004b74  63021900  loadli.w r4,  8(r18)
004b78  e3421900  loadli.w r5,  12(r18)
004b7c  63032900  loadli.w r6,  16(r18)
004b80  e3432900  loadli.w r7,  20(r18)
004b84  63043900  loadli.w r8,  24(r18)
004b88  e3443900  loadli.w r9,  28(r18)
004b8c  63054900  loadli.w r10,  32(r18)
004b90  e3454900  loadli.w r11,  36(r18)
004b94  63065900  loadli.w r12,  40(r18)
004b98  e3465900  loadli.w r13,  44(r18)
004b9c  63076900  loadli.w r14,  48(r18)
004ba0  e3476900  loadli.w r15,  52(r18)
004ba4  63087900  loadli.w r16,  56(r18)
004ba8  e3487900  loadli.w r17,  60(r18)
004bac  0f010100  exp.f.rn r2, r2
004bb0  8f810100  exp.f.rn r3, r3
004bb4  0f020200  exp.f.rn r4, r4
004bb8  8f820200  exp.f.rn r5, r5
004bbc  0f030300  exp.f.rn r6, r6
004bc0  8f830300  exp.f.rn r7, r7
004bc4  0f040400  exp.f.rn r8, r8
004bc8  8f840400  exp.f.rn r9, r9
004bcc  0f050500  exp.f.rn r10, r10
004bd0  8f850500  exp.f.rn r11, r11
004bd4  0f060600  exp.f.rn r12, r12
004bd8  8f860600  exp.f.rn r13, r13
004bdc  0f070700  exp.f.rn r14, r14
004be0  8f870700  exp.f.rn r15, r15
004be4  0f080800  exp.f.rn r16, r16
004be8  8f880800  exp.f.rn r17, r17
004bec  67002900  storeli.w r2, 0(r18)
004bf0  67403900  storeli.w r3, 4(r18)
004bf4  e7004900  storeli.w r4, 8(r18)
004bf8  e7405900  storeli.w r5, 12(r18)
004bfc  67016900  storeli.w r6, 16(r18)
004c00  67417900  storeli.w r7, 20(r18)
004c04  e7018900  storeli.w r8, 24(r18)
004c08  e7419900  storeli.w r9, 28(r18)
004c0c  6702a900  storeli.w r10, 32(r18)
004c10  6742b900  storeli.w r11, 36(r18)
004c14  e702c900  storeli.w r12, 40(r18)
004c18  e742d900  storeli.w r13, 44(r18)
004c1c  6703e900  storeli.w r14, 48(r18)
004c20  6743f900  storeli.w r15, 52(r18)
004c24  e7030901  storeli.w r16, 56(r18)
004c28  e7431901  storeli.w r17, 60(r18)
004c2c  63018900  loadli.w r2,  64(r18)
004c30  e3418900  loadli.w r3,  68(r18)
004c34  63029900  loadli.w r4,  72(r18)
004c38  e3429900  loadli.w r5,  76(r18)
004c3c  6303a900  loadli.w r6,  80(r18)
004c40  e343a900  loadli.w r7,  84(r18)
004c44  6304b900  loadli.w r8,  88(r18)
004c48  e344b900  loadli.w r9,  92(r18)
004c4c  6305c900  loadli.w r10,  96(r18)
004c50  e345c900  loadli.w r11,  100(r18)
004c54  6306d900  loadli.w r12,  104(r18)
004c58  e346d900  loadli.w r13,  108(r18)
004c5c  6307e900  loadli.w r14,  112(r18)
004c60  e347e900  loadli.w r15,  116(r18)
004c64  6308f900  loadli.w r16,  120(r18)
004c68  e348f900  loadli.w r17,  124(r18)
004c6c  0f010100  exp.f.rn r2, r2
004c70  8f810100  exp.f.rn r3, r3
004c74  0f020200  exp.f.rn r4, r4
004c78  8f820200  exp.f.rn r5, r5
004c7c  0f030300  exp.f.rn r6, r6
004c80  8f830300  exp.f.rn r7, r7
004c84  0f040400  exp.f.rn r8, r8
004c88  8f840400  exp.f.rn r9, r9
004c8c  0f050500  exp.f.rn r10, r10
004c90  8f850500  exp.f.rn r11, r11
004c94  0f060600  exp.f.rn r12, r12
004c98  8f860600  exp.f.rn r13, r13
004c9c  0f070700  exp.f.rn r14, r14
004ca0  8f870700  exp.f.rn r15, r15
004ca4  0f080800  exp.f.rn r16, r16
004ca8  8f880800  exp.f.rn r17, r17
004cac  67042900  storeli.w r2, 64(r18)
004cb0  67443900  storeli.w r3, 68(r18)
004cb4  e7044900  storeli.w r4, 72(r18)
004cb8  e7445900  storeli.w r5, 76(r18)
004cbc  67056900  storeli.w r6, 80(r18)
004cc0  67457900  storeli.w r7, 84(r18)
004cc4  e7058900  storeli.w r8, 88(r18)
004cc8  e7459900  storeli.w r9, 92(r18)
004ccc  6706a900  storeli.w r10, 96(r18)
004cd0  6746b900  storeli.w r11, 100(r18)
004cd4  e706c900  storeli.w r12, 104(r18)
004cd8  e746d900  storeli.w r13, 108(r18)
004cdc  6707e900  storeli.w r14, 112(r18)
004ce0  6747f900  storeli.w r15, 116(r18)
004ce4  e7070901  storeli.w r16, 120(r18)
004ce8  e7471901  storeli.w r17, 124(r18)
004cec  63010901  loadli.w r2,  128(r18)
004cf0  e3410901  loadli.w r3,  132(r18)
004cf4  63021901  loadli.w r4,  136(r18)
004cf8  e3421901  loadli.w r5,  140(r18)
004cfc  63032901  loadli.w r6,  144(r18)
004d00  e3432901  loadli.w r7,  148(r18)
004d04  63043901  loadli.w r8,  152(r18)
004d08  e3443901  loadli.w r9,  156(r18)
004d0c  63054901  loadli.w r10,  160(r18)
004d10  e3454901  loadli.w r11,  164(r18)
004d14  63065901  loadli.w r12,  168(r18)
004d18  e3465901  loadli.w r13,  172(r18)
004d1c  63076901  loadli.w r14,  176(r18)
004d20  e3476901  loadli.w r15,  180(r18)
004d24  63087901  loadli.w r16,  184(r18)
004d28  e3487901  loadli.w r17,  188(r18)
004d2c  0f010100  exp.f.rn r2, r2
004d30  8f810100  exp.f.rn r3, r3
004d34  0f020200  exp.f.rn r4, r4
004d38  8f820200  exp.f.rn r5, r5
004d3c  0f030300  exp.f.rn r6, r6
004d40  8f830300  exp.f.rn r7, r7
004d44  0f040400  exp.f.rn r8, r8
004d48  8f840400  exp.f.rn r9, r9
004d4c  0f050500  exp.f.rn r10, r10
004d50  8f850500  exp.f.rn r11, r11
004d54  0f060600  exp.f.rn r12, r12
004d58  8f860600  exp.f.rn r13, r13
004d5c  0f070700  exp.f.rn r14, r14
004d60  8f870700  exp.f.rn r15, r15
004d64  0f080800  exp.f.rn r16, r16
004d68  8f880800  exp.f.rn r17, r17
004d6c  67082900  storeli.w r2, 128(r18)
004d70  67483900  storeli.w r3, 132(r18)
004d74  e7084900  storeli.w r4, 136(r18)
004d78  e7485900  storeli.w r5, 140(r18)
004d7c  67096900  storeli.w r6, 144(r18)
004d80  67497900  storeli.w r7, 148(r18)
004d84  e7098900  storeli.w r8, 152(r18)
004d88  e7499900  storeli.w r9, 156(r18)
004d8c  670aa900  storeli.w r10, 160(r18)
004d90  674ab900  storeli.w r11, 164(r18)
004d94  e70ac900  storeli.w r12, 168(r18)
004d98  e74ad900  storeli.w r13, 172(r18)
004d9c  670be900  storeli.w r14, 176(r18)
004da0  674bf900  storeli.w r15, 180(r18)
004da4  e70b0901  storeli.w r16, 184(r18)
004da8  e74b1901  storeli.w r17, 188(r18)
004dac  63018901  loadli.w r2,  192(r18)
004db0  e3418901  loadli.w r3,  196(r18)
004db4  63029901  loadli.w r4,  200(r18)
004db8  e3429901  loadli.w r5,  204(r18)
004dbc  6303a901  loadli.w r6,  208(r18)
004dc0  e343a901  loadli.w r7,  212(r18)
004dc4  6304b901  loadli.w r8,  216(r18)
004dc8  e344b901  loadli.w r9,  220(r18)
004dcc  6305c901  loadli.w r10,  224(r18)
004dd0  e345c901  loadli.w r11,  228(r18)
004dd4  6306d901  loadli.w r12,  232(r18)
004dd8  e346d901  loadli.w r13,  236(r18)
004ddc  6307e901  loadli.w r14,  240(r18)
004de0  e347e901  loadli.w r15,  244(r18)
004de4  6308f901  loadli.w r16,  248(r18)
004de8  e348f901  loadli.w r17,  252(r18)
004dec  0f010100  exp.f.rn r2, r2
004df0  8f810100  exp.f.rn r3, r3
004df4  0f020200  exp.f.rn r4, r4
004df8  8f820200  exp.f.rn r5, r5
004dfc  0f030300  exp.f.rn r6, r6
004e00  8f830300  exp.f.rn r7, r7
004e04  0f040400  exp.f.rn r8, r8
004e08  8f840400  exp.f.rn r9, r9
004e0c  0f050500  exp.f.rn r10, r10
004e10  8f850500  exp.f.rn r11, r11
004e14  0f060600  exp.f.rn r12, r12
004e18  8f860600  exp.f.rn r13, r13
004e1c  0f070700  exp.f.rn r14, r14
004e20  8f870700  exp.f.rn r15, r15
004e24  0f080800  exp.f.rn r16, r16
004e28  8f880800  exp.f.rn r17, r17
004e2c  670c2900  storeli.w r2, 192(r18)
004e30  674c3900  storeli.w r3, 196(r18)
004e34  e70c4900  storeli.w r4, 200(r18)
004e38  e74c5900  storeli.w r5, 204(r18)
004e3c  670d6900  storeli.w r6, 208(r18)
004e40  674d7900  storeli.w r7, 212(r18)
004e44  e70d8900  storeli.w r8, 216(r18)
004e48  e74d9900  storeli.w r9, 220(r18)
004e4c  670ea900  storeli.w r10, 224(r18)
004e50  674eb900  storeli.w r11, 228(r18)
004e54  e70ec900  storeli.w r12, 232(r18)
004e58  e74ed900  storeli.w r13, 236(r18)
004e5c  670fe900  storeli.w r14, 240(r18)
004e60  674ff900  storeli.w r15, 244(r18)
004e64  e70f0901  storeli.w r16, 248(r18)
004e68  e74f1901  storeli.w r17, 252(r18)
004e6c  00a00000  mfence { lm }
004e70  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
004e74  1f010fea  addli r2, r30, -2816
004e78  42158fe2  vload_mask16.mz vr10{mr1}, 1856(r30)
004e7c  c2140fe3  vload_mask16.mz vr9{mr1}, 1920(r30)
004e80  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004e84  42118fe3  vload_mask16.mz vr2{mr1}, 1984(r30)
004e88  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
004e8c  16107002  vadd.f.mz.rn vr0{mr1}, vr0, vr7
004e90  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
004e94  1f018feb  addli r2, r30, -2624
004e98  16106002  vadd.f.mz.rn vr0{mr1}, vr0, vr6
004e9c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ea0  1f018fe2  addli r2, r30, -3776
004ea4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004ea8  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
004eac  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004eb0  1f010fec  addli r2, r30, -2560
004eb4  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
004eb8  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004ebc  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
004ec0  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004ec4  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
004ec8  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
004ecc  46109102  vstore_mask16.mz vr9{mr1}, 0(r2)
004ed0  1f018fea  addli r2, r30, -2752
004ed4  1610a002  vadd.f.mz.rn vr0{mr1}, vr0, vr10
004ed8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
004edc  00a00000  mfence { lm }
004ee0  63010900  loadli.w r2,  0(r18)
004ee4  e3410900  loadli.w r3,  4(r18)
004ee8  63021900  loadli.w r4,  8(r18)
004eec  e3421900  loadli.w r5,  12(r18)
004ef0  63032900  loadli.w r6,  16(r18)
004ef4  e3432900  loadli.w r7,  20(r18)
004ef8  63043900  loadli.w r8,  24(r18)
004efc  e3443900  loadli.w r9,  28(r18)
004f00  63054900  loadli.w r10,  32(r18)
004f04  e3454900  loadli.w r11,  36(r18)
004f08  63065900  loadli.w r12,  40(r18)
004f0c  e3465900  loadli.w r13,  44(r18)
004f10  63076900  loadli.w r14,  48(r18)
004f14  e3476900  loadli.w r15,  52(r18)
004f18  63087900  loadli.w r16,  56(r18)
004f1c  e3487900  loadli.w r17,  60(r18)
004f20  0f010100  exp.f.rn r2, r2
004f24  8f810100  exp.f.rn r3, r3
004f28  0f020200  exp.f.rn r4, r4
004f2c  8f820200  exp.f.rn r5, r5
004f30  0f030300  exp.f.rn r6, r6
004f34  8f830300  exp.f.rn r7, r7
004f38  0f040400  exp.f.rn r8, r8
004f3c  8f840400  exp.f.rn r9, r9
004f40  0f050500  exp.f.rn r10, r10
004f44  8f850500  exp.f.rn r11, r11
004f48  0f060600  exp.f.rn r12, r12
004f4c  8f860600  exp.f.rn r13, r13
004f50  0f070700  exp.f.rn r14, r14
004f54  8f870700  exp.f.rn r15, r15
004f58  0f080800  exp.f.rn r16, r16
004f5c  8f880800  exp.f.rn r17, r17
004f60  67002900  storeli.w r2, 0(r18)
004f64  67403900  storeli.w r3, 4(r18)
004f68  e7004900  storeli.w r4, 8(r18)
004f6c  e7405900  storeli.w r5, 12(r18)
004f70  67016900  storeli.w r6, 16(r18)
004f74  67417900  storeli.w r7, 20(r18)
004f78  e7018900  storeli.w r8, 24(r18)
004f7c  e7419900  storeli.w r9, 28(r18)
004f80  6702a900  storeli.w r10, 32(r18)
004f84  6742b900  storeli.w r11, 36(r18)
004f88  e702c900  storeli.w r12, 40(r18)
004f8c  e742d900  storeli.w r13, 44(r18)
004f90  6703e900  storeli.w r14, 48(r18)
004f94  6743f900  storeli.w r15, 52(r18)
004f98  e7030901  storeli.w r16, 56(r18)
004f9c  e7431901  storeli.w r17, 60(r18)
004fa0  63018900  loadli.w r2,  64(r18)
004fa4  e3418900  loadli.w r3,  68(r18)
004fa8  63029900  loadli.w r4,  72(r18)
004fac  e3429900  loadli.w r5,  76(r18)
004fb0  6303a900  loadli.w r6,  80(r18)
004fb4  e343a900  loadli.w r7,  84(r18)
004fb8  6304b900  loadli.w r8,  88(r18)
004fbc  e344b900  loadli.w r9,  92(r18)
004fc0  6305c900  loadli.w r10,  96(r18)
004fc4  e345c900  loadli.w r11,  100(r18)
004fc8  6306d900  loadli.w r12,  104(r18)
004fcc  e346d900  loadli.w r13,  108(r18)
004fd0  6307e900  loadli.w r14,  112(r18)
004fd4  e347e900  loadli.w r15,  116(r18)
004fd8  6308f900  loadli.w r16,  120(r18)
004fdc  e348f900  loadli.w r17,  124(r18)
004fe0  0f010100  exp.f.rn r2, r2
004fe4  8f810100  exp.f.rn r3, r3
004fe8  0f020200  exp.f.rn r4, r4
004fec  8f820200  exp.f.rn r5, r5
004ff0  0f030300  exp.f.rn r6, r6
004ff4  8f830300  exp.f.rn r7, r7
004ff8  0f040400  exp.f.rn r8, r8
004ffc  8f840400  exp.f.rn r9, r9
005000  0f050500  exp.f.rn r10, r10
005004  8f850500  exp.f.rn r11, r11
005008  0f060600  exp.f.rn r12, r12
00500c  8f860600  exp.f.rn r13, r13
005010  0f070700  exp.f.rn r14, r14
005014  8f870700  exp.f.rn r15, r15
005018  0f080800  exp.f.rn r16, r16
00501c  8f880800  exp.f.rn r17, r17
005020  67042900  storeli.w r2, 64(r18)
005024  67443900  storeli.w r3, 68(r18)
005028  e7044900  storeli.w r4, 72(r18)
00502c  e7445900  storeli.w r5, 76(r18)
005030  67056900  storeli.w r6, 80(r18)
005034  67457900  storeli.w r7, 84(r18)
005038  e7058900  storeli.w r8, 88(r18)
00503c  e7459900  storeli.w r9, 92(r18)
005040  6706a900  storeli.w r10, 96(r18)
005044  6746b900  storeli.w r11, 100(r18)
005048  e706c900  storeli.w r12, 104(r18)
00504c  e746d900  storeli.w r13, 108(r18)
005050  6707e900  storeli.w r14, 112(r18)
005054  6747f900  storeli.w r15, 116(r18)
005058  e7070901  storeli.w r16, 120(r18)
00505c  e7471901  storeli.w r17, 124(r18)
005060  63010901  loadli.w r2,  128(r18)
005064  e3410901  loadli.w r3,  132(r18)
005068  63021901  loadli.w r4,  136(r18)
00506c  e3421901  loadli.w r5,  140(r18)
005070  63032901  loadli.w r6,  144(r18)
005074  e3432901  loadli.w r7,  148(r18)
005078  63043901  loadli.w r8,  152(r18)
00507c  e3443901  loadli.w r9,  156(r18)
005080  63054901  loadli.w r10,  160(r18)
005084  e3454901  loadli.w r11,  164(r18)
005088  63065901  loadli.w r12,  168(r18)
00508c  e3465901  loadli.w r13,  172(r18)
005090  63076901  loadli.w r14,  176(r18)
005094  e3476901  loadli.w r15,  180(r18)
005098  63087901  loadli.w r16,  184(r18)
00509c  e3487901  loadli.w r17,  188(r18)
0050a0  0f010100  exp.f.rn r2, r2
0050a4  8f810100  exp.f.rn r3, r3
0050a8  0f020200  exp.f.rn r4, r4
0050ac  8f820200  exp.f.rn r5, r5
0050b0  0f030300  exp.f.rn r6, r6
0050b4  8f830300  exp.f.rn r7, r7
0050b8  0f040400  exp.f.rn r8, r8
0050bc  8f840400  exp.f.rn r9, r9
0050c0  0f050500  exp.f.rn r10, r10
0050c4  8f850500  exp.f.rn r11, r11
0050c8  0f060600  exp.f.rn r12, r12
0050cc  8f860600  exp.f.rn r13, r13
0050d0  0f070700  exp.f.rn r14, r14
0050d4  8f870700  exp.f.rn r15, r15
0050d8  0f080800  exp.f.rn r16, r16
0050dc  8f880800  exp.f.rn r17, r17
0050e0  67082900  storeli.w r2, 128(r18)
0050e4  67483900  storeli.w r3, 132(r18)
0050e8  e7084900  storeli.w r4, 136(r18)
0050ec  e7485900  storeli.w r5, 140(r18)
0050f0  67096900  storeli.w r6, 144(r18)
0050f4  67497900  storeli.w r7, 148(r18)
0050f8  e7098900  storeli.w r8, 152(r18)
0050fc  e7499900  storeli.w r9, 156(r18)
005100  670aa900  storeli.w r10, 160(r18)
005104  674ab900  storeli.w r11, 164(r18)
005108  e70ac900  storeli.w r12, 168(r18)
00510c  e74ad900  storeli.w r13, 172(r18)
005110  670be900  storeli.w r14, 176(r18)
005114  674bf900  storeli.w r15, 180(r18)
005118  e70b0901  storeli.w r16, 184(r18)
00511c  e74b1901  storeli.w r17, 188(r18)
005120  63018901  loadli.w r2,  192(r18)
005124  e3418901  loadli.w r3,  196(r18)
005128  63029901  loadli.w r4,  200(r18)
00512c  e3429901  loadli.w r5,  204(r18)
005130  6303a901  loadli.w r6,  208(r18)
005134  e343a901  loadli.w r7,  212(r18)
005138  6304b901  loadli.w r8,  216(r18)
00513c  e344b901  loadli.w r9,  220(r18)
005140  6305c901  loadli.w r10,  224(r18)
005144  e345c901  loadli.w r11,  228(r18)
005148  6306d901  loadli.w r12,  232(r18)
00514c  e346d901  loadli.w r13,  236(r18)
005150  6307e901  loadli.w r14,  240(r18)
005154  e347e901  loadli.w r15,  244(r18)
005158  6308f901  loadli.w r16,  248(r18)
00515c  e348f901  loadli.w r17,  252(r18)
005160  0f010100  exp.f.rn r2, r2
005164  8f810100  exp.f.rn r3, r3
005168  0f020200  exp.f.rn r4, r4
00516c  8f820200  exp.f.rn r5, r5
005170  0f030300  exp.f.rn r6, r6
005174  8f830300  exp.f.rn r7, r7
005178  0f040400  exp.f.rn r8, r8
00517c  8f840400  exp.f.rn r9, r9
005180  0f050500  exp.f.rn r10, r10
005184  8f850500  exp.f.rn r11, r11
005188  0f060600  exp.f.rn r12, r12
00518c  8f860600  exp.f.rn r13, r13
005190  0f070700  exp.f.rn r14, r14
005194  8f870700  exp.f.rn r15, r15
005198  0f080800  exp.f.rn r16, r16
00519c  8f880800  exp.f.rn r17, r17
0051a0  670c2900  storeli.w r2, 192(r18)
0051a4  674c3900  storeli.w r3, 196(r18)
0051a8  e70c4900  storeli.w r4, 200(r18)
0051ac  e74c5900  storeli.w r5, 204(r18)
0051b0  670d6900  storeli.w r6, 208(r18)
0051b4  674d7900  storeli.w r7, 212(r18)
0051b8  e70d8900  storeli.w r8, 216(r18)
0051bc  e74d9900  storeli.w r9, 220(r18)
0051c0  670ea900  storeli.w r10, 224(r18)
0051c4  674eb900  storeli.w r11, 228(r18)
0051c8  e70ec900  storeli.w r12, 232(r18)
0051cc  e74ed900  storeli.w r13, 236(r18)
0051d0  670fe900  storeli.w r14, 240(r18)
0051d4  674ff900  storeli.w r15, 244(r18)
0051d8  e70f0901  storeli.w r16, 248(r18)
0051dc  e74f1901  storeli.w r17, 252(r18)
0051e0  00a00000  mfence { lm }
0051e4  c2110fe2  vload_mask16.mz vr3{mr1}, 1792(r30)
0051e8  1f018feb  addli r2, r30, -2624
0051ec  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
0051f0  46102102  vstore_mask16.mz vr2{mr1}, 0(r2)
0051f4  1f018fea  addli r2, r30, -2752
0051f8  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
0051fc  42128fe2  vload_mask16.mz vr4{mr1}, 1856(r30)
005200  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
005204  42110fe3  vload_mask16.mz vr2{mr1}, 1920(r30)
005208  c2148fe3  vload_mask16.mz vr9{mr1}, 1984(r30)
00520c  46101fe2  vstore_mask16.mz vr1{mr1}, 1792(r30)
005210  46103102  vstore_mask16.mz vr3{mr1}, 0(r2)
005214  1f018fec  addli r2, r30, -2496
005218  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
00521c  1f010feb  addli r2, r30, -2688
005220  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
005224  46141fe2  vstore_mask16.mz vr1{mr1}, 1856(r30)
005228  16103002  vadd.f.mz.rn vr0{mr1}, vr0, vr3
00522c  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
005230  46104102  vstore_mask16.mz vr4{mr1}, 0(r2)
005234  1f010fed  addli r2, r30, -2432
005238  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
00523c  46181fe2  vstore_mask16.mz vr1{mr1}, 1920(r30)
005240  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
005244  92901002  vadd.f.mz.rn vr1{mr1}, r1, vr1
005248  9f000fed  addli r1, r30, -2432
00524c  461c1fe2  vstore_mask16.mz vr1{mr1}, 1984(r30)
005250  16104002  vadd.f.mz.rn vr0{mr1}, vr0, vr4
005254  46902002  vstore_mask16.mz vr2{mr1}, 0(r1)
005258  00a00000  mfence { lm }
00525c  e3000900  loadli.w r1,  0(r18)
005260  63410900  loadli.w r2,  4(r18)
005264  e3011900  loadli.w r3,  8(r18)
005268  63421900  loadli.w r4,  12(r18)
00526c  e3022900  loadli.w r5,  16(r18)
005270  63432900  loadli.w r6,  20(r18)
005274  e3033900  loadli.w r7,  24(r18)
005278  63443900  loadli.w r8,  28(r18)
00527c  e3044900  loadli.w r9,  32(r18)
005280  63454900  loadli.w r10,  36(r18)
005284  e3055900  loadli.w r11,  40(r18)
005288  63465900  loadli.w r12,  44(r18)
00528c  e3066900  loadli.w r13,  48(r18)
005290  63476900  loadli.w r14,  52(r18)
005294  e3077900  loadli.w r15,  56(r18)
005298  63487900  loadli.w r16,  60(r18)
00529c  8f800000  exp.f.rn r1, r1
0052a0  0f010100  exp.f.rn r2, r2
0052a4  8f810100  exp.f.rn r3, r3
0052a8  0f020200  exp.f.rn r4, r4
0052ac  8f820200  exp.f.rn r5, r5
0052b0  0f030300  exp.f.rn r6, r6
0052b4  8f830300  exp.f.rn r7, r7
0052b8  0f040400  exp.f.rn r8, r8
0052bc  8f840400  exp.f.rn r9, r9
0052c0  0f050500  exp.f.rn r10, r10
0052c4  8f850500  exp.f.rn r11, r11
0052c8  0f060600  exp.f.rn r12, r12
0052cc  8f860600  exp.f.rn r13, r13
0052d0  0f070700  exp.f.rn r14, r14
0052d4  8f870700  exp.f.rn r15, r15
0052d8  0f080800  exp.f.rn r16, r16
0052dc  67001900  storeli.w r1, 0(r18)
0052e0  67402900  storeli.w r2, 4(r18)
0052e4  e7003900  storeli.w r3, 8(r18)
0052e8  e7404900  storeli.w r4, 12(r18)
0052ec  67015900  storeli.w r5, 16(r18)
0052f0  67416900  storeli.w r6, 20(r18)
0052f4  e7017900  storeli.w r7, 24(r18)
0052f8  e7418900  storeli.w r8, 28(r18)
0052fc  67029900  storeli.w r9, 32(r18)
005300  6742a900  storeli.w r10, 36(r18)
005304  e702b900  storeli.w r11, 40(r18)
005308  e742c900  storeli.w r12, 44(r18)
00530c  6703d900  storeli.w r13, 48(r18)
005310  6743e900  storeli.w r14, 52(r18)
005314  e703f900  storeli.w r15, 56(r18)
005318  e7430901  storeli.w r16, 60(r18)
00531c  e3008900  loadli.w r1,  64(r18)
005320  63418900  loadli.w r2,  68(r18)
005324  e3019900  loadli.w r3,  72(r18)
005328  63429900  loadli.w r4,  76(r18)
00532c  e302a900  loadli.w r5,  80(r18)
005330  6343a900  loadli.w r6,  84(r18)
005334  e303b900  loadli.w r7,  88(r18)
005338  6344b900  loadli.w r8,  92(r18)
00533c  e304c900  loadli.w r9,  96(r18)
005340  6345c900  loadli.w r10,  100(r18)
005344  e305d900  loadli.w r11,  104(r18)
005348  6346d900  loadli.w r12,  108(r18)
00534c  e306e900  loadli.w r13,  112(r18)
005350  6347e900  loadli.w r14,  116(r18)
005354  e307f900  loadli.w r15,  120(r18)
005358  6348f900  loadli.w r16,  124(r18)
00535c  8f800000  exp.f.rn r1, r1
005360  0f010100  exp.f.rn r2, r2
005364  8f810100  exp.f.rn r3, r3
005368  0f020200  exp.f.rn r4, r4
00536c  8f820200  exp.f.rn r5, r5
005370  0f030300  exp.f.rn r6, r6
005374  8f830300  exp.f.rn r7, r7
005378  0f040400  exp.f.rn r8, r8
00537c  8f840400  exp.f.rn r9, r9
005380  0f050500  exp.f.rn r10, r10
005384  8f850500  exp.f.rn r11, r11
005388  0f060600  exp.f.rn r12, r12
00538c  8f860600  exp.f.rn r13, r13
005390  0f070700  exp.f.rn r14, r14
005394  8f870700  exp.f.rn r15, r15
005398  0f080800  exp.f.rn r16, r16
00539c  67041900  storeli.w r1, 64(r18)
0053a0  67442900  storeli.w r2, 68(r18)
0053a4  e7043900  storeli.w r3, 72(r18)
0053a8  e7444900  storeli.w r4, 76(r18)
0053ac  67055900  storeli.w r5, 80(r18)
0053b0  67456900  storeli.w r6, 84(r18)
0053b4  e7057900  storeli.w r7, 88(r18)
0053b8  e7458900  storeli.w r8, 92(r18)
0053bc  67069900  storeli.w r9, 96(r18)
0053c0  6746a900  storeli.w r10, 100(r18)
0053c4  e706b900  storeli.w r11, 104(r18)
0053c8  e746c900  storeli.w r12, 108(r18)
0053cc  6707d900  storeli.w r13, 112(r18)
0053d0  6747e900  storeli.w r14, 116(r18)
0053d4  e707f900  storeli.w r15, 120(r18)
0053d8  e7470901  storeli.w r16, 124(r18)
0053dc  e3000901  loadli.w r1,  128(r18)
0053e0  63410901  loadli.w r2,  132(r18)
0053e4  e3011901  loadli.w r3,  136(r18)
0053e8  63421901  loadli.w r4,  140(r18)
0053ec  e3022901  loadli.w r5,  144(r18)
0053f0  63432901  loadli.w r6,  148(r18)
0053f4  e3033901  loadli.w r7,  152(r18)
0053f8  63443901  loadli.w r8,  156(r18)
0053fc  e3044901  loadli.w r9,  160(r18)
005400  63454901  loadli.w r10,  164(r18)
005404  e3055901  loadli.w r11,  168(r18)
005408  63465901  loadli.w r12,  172(r18)
00540c  e3066901  loadli.w r13,  176(r18)
005410  63476901  loadli.w r14,  180(r18)
005414  e3077901  loadli.w r15,  184(r18)
005418  63487901  loadli.w r16,  188(r18)
00541c  8f800000  exp.f.rn r1, r1
005420  0f010100  exp.f.rn r2, r2
005424  8f810100  exp.f.rn r3, r3
005428  0f020200  exp.f.rn r4, r4
00542c  8f820200  exp.f.rn r5, r5
005430  0f030300  exp.f.rn r6, r6
005434  8f830300  exp.f.rn r7, r7
005438  0f040400  exp.f.rn r8, r8
00543c  8f840400  exp.f.rn r9, r9
005440  0f050500  exp.f.rn r10, r10
005444  8f850500  exp.f.rn r11, r11
005448  0f060600  exp.f.rn r12, r12
00544c  8f860600  exp.f.rn r13, r13
005450  0f070700  exp.f.rn r14, r14
005454  8f870700  exp.f.rn r15, r15
005458  0f080800  exp.f.rn r16, r16
00545c  67081900  storeli.w r1, 128(r18)
005460  67482900  storeli.w r2, 132(r18)
005464  e7083900  storeli.w r3, 136(r18)
005468  e7484900  storeli.w r4, 140(r18)
00546c  67095900  storeli.w r5, 144(r18)
005470  67496900  storeli.w r6, 148(r18)
005474  e7097900  storeli.w r7, 152(r18)
005478  e7498900  storeli.w r8, 156(r18)
00547c  670a9900  storeli.w r9, 160(r18)
005480  674aa900  storeli.w r10, 164(r18)
005484  e70ab900  storeli.w r11, 168(r18)
005488  e74ac900  storeli.w r12, 172(r18)
00548c  670bd900  storeli.w r13, 176(r18)
005490  674be900  storeli.w r14, 180(r18)
005494  e70bf900  storeli.w r15, 184(r18)
005498  e74b0901  storeli.w r16, 188(r18)
00549c  e3008901  loadli.w r1,  192(r18)
0054a0  63418901  loadli.w r2,  196(r18)
0054a4  e3019901  loadli.w r3,  200(r18)
0054a8  63429901  loadli.w r4,  204(r18)
0054ac  e302a901  loadli.w r5,  208(r18)
0054b0  6343a901  loadli.w r6,  212(r18)
0054b4  e303b901  loadli.w r7,  216(r18)
0054b8  6344b901  loadli.w r8,  220(r18)
0054bc  e304c901  loadli.w r9,  224(r18)
0054c0  6345c901  loadli.w r10,  228(r18)
0054c4  e305d901  loadli.w r11,  232(r18)
0054c8  6346d901  loadli.w r12,  236(r18)
0054cc  e306e901  loadli.w r13,  240(r18)
0054d0  6347e901  loadli.w r14,  244(r18)
0054d4  e307f901  loadli.w r15,  248(r18)
0054d8  6348f901  loadli.w r16,  252(r18)
0054dc  8f800000  exp.f.rn r1, r1
0054e0  0f010100  exp.f.rn r2, r2
0054e4  8f810100  exp.f.rn r3, r3
0054e8  0f020200  exp.f.rn r4, r4
0054ec  8f820200  exp.f.rn r5, r5
0054f0  0f030300  exp.f.rn r6, r6
0054f4  8f830300  exp.f.rn r7, r7
0054f8  0f040400  exp.f.rn r8, r8
0054fc  8f840400  exp.f.rn r9, r9
005500  0f050500  exp.f.rn r10, r10
005504  8f850500  exp.f.rn r11, r11
005508  0f060600  exp.f.rn r12, r12
00550c  8f860600  exp.f.rn r13, r13
005510  0f070700  exp.f.rn r14, r14
005514  8f870700  exp.f.rn r15, r15
005518  0f080800  exp.f.rn r16, r16
00551c  670c1900  storeli.w r1, 192(r18)
005520  674c2900  storeli.w r2, 196(r18)
005524  e70c3900  storeli.w r3, 200(r18)
005528  e74c4900  storeli.w r4, 204(r18)
00552c  670d5900  storeli.w r5, 208(r18)
005530  674d6900  storeli.w r6, 212(r18)
005534  e70d7900  storeli.w r7, 216(r18)
005538  e74d8900  storeli.w r8, 220(r18)
00553c  670e9900  storeli.w r9, 224(r18)
005540  674ea900  storeli.w r10, 228(r18)
005544  e70eb900  storeli.w r11, 232(r18)
005548  e74ec900  storeli.w r12, 236(r18)
00554c  670fd900  storeli.w r13, 240(r18)
005550  674fe900  storeli.w r14, 244(r18)
005554  e70ff900  storeli.w r15, 248(r18)
005558  e74f0901  storeli.w r16, 252(r18)
00555c  00a00000  mfence { lm }
005560  c2100fe2  vload_mask16.mz vr1{mr1}, 1792(r30)
005564  9f008fec  addli r1, r30, -2496
005568  16102002  vadd.f.mz.rn vr0{mr1}, vr0, vr2
00556c  46909002  vstore_mask16.mz vr9{mr1}, 0(r1)
005570  9f008fe9  addli r1, r30, -2880
005574  16109002  vadd.f.mz.rn vr0{mr1}, vr0, vr9
005578  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00557c  9f000fe9  addli r1, r30, -2944
005580  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
005584  c2108fe2  vload_mask16.mz vr1{mr1}, 1856(r30)
005588  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00558c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
005590  9f008fe2  addli r1, r30, -3776
005594  c2100fe3  vload_mask16.mz vr1{mr1}, 1920(r30)
005598  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
00559c  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0055a0  9f000fe2  addli r1, r30, -3840
0055a4  c2108fe3  vload_mask16.mz vr1{mr1}, 1984(r30)
0055a8  16101002  vadd.f.mz.rn vr0{mr1}, vr0, vr1
0055ac  46901002  vstore_mask16.mz vr1{mr1}, 0(r1)
0055b0  fa100040  vextracti.f r1, 0(vr0)
0055b4  7a111040  vextracti.f r2, 1(vr0)
0055b8  8be02010  add.f.rn r1, r1, r2
0055bc  7a112040  vextracti.f r2, 2(vr0)
0055c0  8b601110  add.f.rn r1, r2, r1
0055c4  7a113040  vextracti.f r2, 3(vr0)
0055c8  8b601110  add.f.rn r1, r2, r1
0055cc  7a114040  vextracti.f r2, 4(vr0)
0055d0  8b601110  add.f.rn r1, r2, r1
0055d4  7a115040  vextracti.f r2, 5(vr0)
0055d8  8b601110  add.f.rn r1, r2, r1
0055dc  7a116040  vextracti.f r2, 6(vr0)
0055e0  8b601110  add.f.rn r1, r2, r1
0055e4  7a117040  vextracti.f r2, 7(vr0)
0055e8  8b601110  add.f.rn r1, r2, r1
0055ec  7a118040  vextracti.f r2, 8(vr0)
0055f0  8b601110  add.f.rn r1, r2, r1
0055f4  7a119040  vextracti.f r2, 9(vr0)
0055f8  8b601110  add.f.rn r1, r2, r1
0055fc  7a11a040  vextracti.f r2, 10(vr0)
005600  8b601110  add.f.rn r1, r2, r1
005604  7a11b040  vextracti.f r2, 11(vr0)
005608  8b601110  add.f.rn r1, r2, r1
00560c  7a11c040  vextracti.f r2, 12(vr0)
005610  8b601110  add.f.rn r1, r2, r1
005614  7a11d040  vextracti.f r2, 13(vr0)
005618  8b601110  add.f.rn r1, r2, r1
00561c  7a11e040  vextracti.f r2, 14(vr0)
005620  8b601110  add.f.rn r1, r2, r1
005624  7a11f040  vextracti.f r2, 15(vr0)
005628  8b601110  add.f.rn r1, r2, r1
00562c  63011fce  loadli.w r2,  -6392(r30)
005630  73601100  stores.w r1, 0(r2)
005634  00a00300  mfence { lm, sm, gm }
005638  80210a04  csr_set csr3, r20
00563c  00d00100  sync_group
005640  bb200b00  bneq r22, zero, 40
005644  63421fce  loadli.w r4,  -6388(r30)
005648  ef400200  loads.w r1, 0(r4)
00564c  6f414200  loads.w r2, 4(r4)
005650  ef418200  loads.w r3, 8(r4)
005654  8be02010  add.f.rn r1, r1, r2
005658  6f41c200  loads.w r2, 12(r4)
00565c  8be03010  add.f.rn r1, r1, r3
005660  8be02010  add.f.rn r1, r1, r2
005664  73601200  stores.w r1, 0(r4)
005668  00a00300  mfence { lm, sm, gm }
00566c  80210a04  csr_set csr3, r20
005670  00d00100  sync_group
005674  e3401fce  loadli.w r1,  -6388(r30)
005678  2b01803f  lui r2, 260096
00567c  9f1b0000  addli r23, zero, 1
005680  1f040ff6  addli r8, r30, -1280
005684  efc00000  loads.w r1, 0(r1)
005688  8f001118  div.f.rn r1, r2, r1
00568c  1f018fde  addli r2, r30, -4288
005690  8a925002  vmul.f.mz.rn vr5{mr1}, r1, vr5
005694  0a936002  vmul.f.mz.rn vr6{mr1}, r1, vr6
005698  0a95a002  vmul.f.mz.rn vr10{mr1}, r1, vr10
00569c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0056a0  1f010fdf  addli r2, r30, -4224
0056a4  0a900002  vmul.f.mz.rn vr0{mr1}, r1, vr0
0056a8  c2100102  vload_mask16.mz vr1{mr1}, 0(r2)
0056ac  1f018fe1  addli r2, r30, -3904
0056b0  8a941002  vmul.f.mz.rn vr9{mr1}, r1, vr1
0056b4  86100000  vfloat2fp16_l.rn vr1, vr0
0056b8  86d00400  vfloat2fp16_h.rn vr1, vr9
0056bc  46101102  vstore_mask16.mz vr1{mr1}, 0(r2)
0056c0  1f018fe3  addli r2, r30, -3648
0056c4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0056c8  1f010fe4  addli r2, r30, -3584
0056cc  8a900002  vmul.f.mz.rn vr1{mr1}, r1, vr0
0056d0  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0056d4  0a910002  vmul.f.mz.rn vr2{mr1}, r1, vr0
0056d8  06900000  vfloat2fp16_l.rn vr0, vr1
0056dc  06500100  vfloat2fp16_h.rn vr0, vr2
0056e0  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
0056e4  1f010fe3  addli r2, r30, -3712
0056e8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0056ec  1f010fe5  addli r2, r30, -3456
0056f0  8a900002  vmul.f.mz.rn vr1{mr1}, r1, vr0
0056f4  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0056f8  0a910002  vmul.f.mz.rn vr2{mr1}, r1, vr0
0056fc  06900000  vfloat2fp16_l.rn vr0, vr1
005700  06500100  vfloat2fp16_h.rn vr0, vr2
005704  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005708  1f018fe5  addli r2, r30, -3392
00570c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005710  1f010fe6  addli r2, r30, -3328
005714  8a900002  vmul.f.mz.rn vr1{mr1}, r1, vr0
005718  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00571c  0a910002  vmul.f.mz.rn vr2{mr1}, r1, vr0
005720  06900000  vfloat2fp16_l.rn vr0, vr1
005724  06500100  vfloat2fp16_h.rn vr0, vr2
005728  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00572c  1f018fe4  addli r2, r30, -3520
005730  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005734  1f018fe6  addli r2, r30, -3264
005738  0a910002  vmul.f.mz.rn vr2{mr1}, r1, vr0
00573c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005740  8a910002  vmul.f.mz.rn vr3{mr1}, r1, vr0
005744  06100100  vfloat2fp16_l.rn vr0, vr2
005748  06d00100  vfloat2fp16_h.rn vr0, vr3
00574c  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
005750  1f018fe7  addli r2, r30, -3136
005754  8a91b002  vmul.f.mz.rn vr3{mr1}, r1, vr11
005758  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00575c  0a910002  vmul.f.mz.rn vr2{mr1}, r1, vr0
005760  06100100  vfloat2fp16_l.rn vr0, vr2
005764  06d00100  vfloat2fp16_h.rn vr0, vr3
005768  46100102  vstore_mask16.mz vr0{mr1}, 0(r2)
00576c  1f010fe7  addli r2, r30, -3200
005770  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005774  1f010fe1  addli r2, r30, -3968
005778  0a910002  vmul.f.mz.rn vr2{mr1}, r1, vr0
00577c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005780  1f010fe8  addli r2, r30, -3072
005784  8a910002  vmul.f.mz.rn vr3{mr1}, r1, vr0
005788  86150100  vfloat2fp16_l.rn vr11, vr2
00578c  86d50100  vfloat2fp16_h.rn vr11, vr3
005790  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005794  1f018fe8  addli r2, r30, -3008
005798  8a910002  vmul.f.mz.rn vr3{mr1}, r1, vr0
00579c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0057a0  1f010fea  addli r2, r30, -2816
0057a4  0a920002  vmul.f.mz.rn vr4{mr1}, r1, vr0
0057a8  86940100  vfloat2fp16_l.rn vr9, vr3
0057ac  86540200  vfloat2fp16_h.rn vr9, vr4
0057b0  0a928002  vmul.f.mz.rn vr4{mr1}, r1, vr8
0057b4  06140200  vfloat2fp16_l.rn vr8, vr4
0057b8  06d40200  vfloat2fp16_h.rn vr8, vr5
0057bc  8a927002  vmul.f.mz.rn vr5{mr1}, r1, vr7
0057c0  86930200  vfloat2fp16_l.rn vr7, vr5
0057c4  86530300  vfloat2fp16_h.rn vr7, vr6
0057c8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0057cc  1f010fec  addli r2, r30, -2560
0057d0  0a930002  vmul.f.mz.rn vr6{mr1}, r1, vr0
0057d4  86120300  vfloat2fp16_l.rn vr5, vr6
0057d8  86520500  vfloat2fp16_h.rn vr5, vr10
0057dc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0057e0  1f018feb  addli r2, r30, -2624
0057e4  0a930002  vmul.f.mz.rn vr6{mr1}, r1, vr0
0057e8  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
0057ec  1f018fea  addli r2, r30, -2752
0057f0  0a950002  vmul.f.mz.rn vr10{mr1}, r1, vr0
0057f4  06120300  vfloat2fp16_l.rn vr4, vr6
0057f8  06520500  vfloat2fp16_h.rn vr4, vr10
0057fc  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005800  1f010feb  addli r2, r30, -2688
005804  0a930002  vmul.f.mz.rn vr6{mr1}, r1, vr0
005808  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00580c  1f010fed  addli r2, r30, -2432
005810  0a950002  vmul.f.mz.rn vr10{mr1}, r1, vr0
005814  86110300  vfloat2fp16_l.rn vr3, vr6
005818  86510500  vfloat2fp16_h.rn vr3, vr10
00581c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005820  1f018fec  addli r2, r30, -2496
005824  0a930002  vmul.f.mz.rn vr6{mr1}, r1, vr0
005828  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00582c  1f018fe9  addli r2, r30, -2880
005830  0a950002  vmul.f.mz.rn vr10{mr1}, r1, vr0
005834  06110300  vfloat2fp16_l.rn vr2, vr6
005838  06510500  vfloat2fp16_h.rn vr2, vr10
00583c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005840  1f010fe9  addli r2, r30, -2944
005844  0a930002  vmul.f.mz.rn vr6{mr1}, r1, vr0
005848  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00584c  1f018fe2  addli r2, r30, -3776
005850  0a950002  vmul.f.mz.rn vr10{mr1}, r1, vr0
005854  86100300  vfloat2fp16_l.rn vr1, vr6
005858  86500500  vfloat2fp16_h.rn vr1, vr10
00585c  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
005860  1f010fe2  addli r2, r30, -3840
005864  0a930002  vmul.f.mz.rn vr6{mr1}, r1, vr0
005868  42100102  vload_mask16.mz vr0{mr1}, 0(r2)
00586c  0a950002  vmul.f.mz.rn vr10{mr1}, r1, vr0
005870  9f008fe1  addli r1, r30, -3904
005874  06100300  vfloat2fp16_l.rn vr0, vr6
005878  06500500  vfloat2fp16_h.rn vr0, vr10
00587c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
005880  9f000ff6  addli r1, r30, -1280
005884  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005888  9f000fe4  addli r1, r30, -3584
00588c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
005890  9f008ff6  addli r1, r30, -1216
005894  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
005898  9f000fe5  addli r1, r30, -3456
00589c  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0058a0  9f000ff7  addli r1, r30, -1152
0058a4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0058a8  9f000fe6  addli r1, r30, -3328
0058ac  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0058b0  9f008ff7  addli r1, r30, -1088
0058b4  46906002  vstore_mask16.mz vr6{mr1}, 0(r1)
0058b8  9f008fe6  addli r1, r30, -3264
0058bc  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0058c0  9f008fe7  addli r1, r30, -3136
0058c4  46106f82  vstore_mask16.mz vr6{mr1}, 1024(r30)
0058c8  42930002  vload_mask16.mz vr6{mr1}, 0(r1)
0058cc  46146f82  vstore_mask16.mz vr6{mr1}, 1088(r30)
0058d0  4618bf82  vstore_mask16.mz vr11{mr1}, 1152(r30)
0058d4  461c9f82  vstore_mask16.mz vr9{mr1}, 1216(r30)
0058d8  46108fa2  vstore_mask16.mz vr8{mr1}, 1280(r30)
0058dc  46147fa2  vstore_mask16.mz vr7{mr1}, 1344(r30)
0058e0  46185fa2  vstore_mask16.mz vr5{mr1}, 1408(r30)
0058e4  461c4fa2  vstore_mask16.mz vr4{mr1}, 1472(r30)
0058e8  46103fc2  vstore_mask16.mz vr3{mr1}, 1536(r30)
0058ec  46142fc2  vstore_mask16.mz vr2{mr1}, 1600(r30)
0058f0  46181fc2  vstore_mask16.mz vr1{mr1}, 1664(r30)
0058f4  461c0fc2  vstore_mask16.mz vr0{mr1}, 1728(r30)
0058f8  00a00000  mfence { lm }
0058fc  63018f00  loadli.w r2,  64(r30)
005900  e3407fcd  loadli.w r1,  -6468(r30)
005904  e34affed  loadli.w r21,  -2308(r30)
005908  e341dfed  loadli.w r3,  -2324(r30)
00590c  3fa521d4  blt.s r3, r2, -22200
005910  9f000000  addli r1, zero, 0
005914  5b28f5ff  j -22208
005918  9f0e8fcc  addli sp, r30, -6592
00591c  9f8e8e33  addli sp, sp, 6592
005920  00a00300  mfence { lm, sm, gm }
005924  00100000  exit
005928  00100000  exit
00592c  00100000  exit
005930  00100000  exit
005934  00100000  exit
005938  00100000  exit
00593c  00100000  exit
005940  00100000  exit
005944  00100000  exit
005948  00100000  exit
00594c  00100000  exit
005950  00100000  exit
005954  00100000  exit
005958  00100000  exit
00595c  00100000  exit
005960  00100000  exit
005964  00100000  exit
005968  00100000  exit
00596c  00100000  exit
005970  00100000  exit
005974  00100000  exit
005978  00100000  exit
00597c  00100000  exit
005980  00100000  exit
005984  00100000  exit
005988  00100000  exit
00598c  00100000  exit
005990  00100000  exit
005994  00100000  exit
005998  00100000  exit
00599c  00100000  exit
0059a0  00100000  exit
0059a4  00100000  exit
0059a8  00100000  exit
0059ac  00100000  exit
0059b0  00100000  exit
0059b4  00100000  exit
0059b8  00100000  exit
0059bc  00100000  exit
0059c0  00100000  exit
0059c4  00100000  exit
0059c8  00100000  exit
0059cc  00100000  exit
0059d0  00100000  exit
0059d4  00100000  exit
0059d8  00100000  exit
0059dc  00100000  exit
0059e0  00100000  exit
0059e4  00100000  exit
0059e8  00100000  exit
0059ec  00100000  exit
0059f0  00100000  exit
0059f4  00100000  exit
0059f8  00100000  exit
0059fc  00100000  exit
005a00  00100000  exit
005a04  00100000  exit
005a08  00100000  exit
005a0c  00100000  exit
005a10  00100000  exit
005a14  00100000  exit
005a18  00100000  exit
005a1c  00100000  exit
005a20  00100000  exit
005a24  00100000  exit
005a28  00100000  exit
005a2c  00100000  exit
005a30  00100000  exit
005a34  00100000  exit
005a38  00100000  exit
005a3c  00100000  exit
005a40  00100000  exit
005a44  00100000  exit
005a48  00100000  exit
005a4c  00100000  exit
005a50  00100000  exit
005a54  00100000  exit
005a58  00100000  exit
005a5c  00100000  exit
005a60  00100000  exit
005a64  00100000  exit
005a68  00100000  exit
005a6c  00100000  exit
005a70  00100000  exit
005a74  00100000  exit
005a78  00100000  exit
005a7c  00100000  exit
005a80  00100000  exit
005a84  00100000  exit
005a88  00100000  exit
005a8c  00100000  exit
005a90  00100000  exit
005a94  00100000  exit
005a98  00100000  exit
005a9c  00100000  exit
005aa0  00100000  exit
005aa4  00100000  exit
005aa8  00100000  exit
005aac  00100000  exit
005ab0  00100000  exit
005ab4  00100000  exit
005ab8  00100000  exit
005abc  00100000  exit
005ac0  00100000  exit
005ac4  00100000  exit
005ac8  00100000  exit
005acc  00100000  exit
005ad0  00100000  exit
005ad4  00100000  exit
005ad8  00100000  exit
005adc  00100000  exit
005ae0  00100000  exit
005ae4  00100000  exit
005ae8  00100000  exit
005aec  00100000  exit
005af0  00100000  exit
005af4  00100000  exit
005af8  00100000  exit
005afc  00100000  exit
005b00  00100000  exit
005b04  00100000  exit
005b08  00100000  exit
005b0c  00100000  exit
005b10  00100000  exit
005b14  00100000  exit
005b18  00100000  exit
005b1c  00100000  exit
005b20  00100000  exit
005b24  00100000  exit
005b28  00100000  exit
005b2c  00100000  exit
005b30  00100000  exit
005b34  00100000  exit
005b38  00100000  exit
005b3c  00100000  exit
005b40  00100000  exit
005b44  00100000  exit
005b48  00100000  exit
005b4c  00100000  exit
005b50  00100000  exit
005b54  00100000  exit
005b58  00100000  exit
005b5c  00100000  exit
005b60  00100000  exit
005b64  00100000  exit
