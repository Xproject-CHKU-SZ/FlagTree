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
00005c  9f494000  addli r19, zero, 36
000060  1f8a8eff  addli r20, sp, -64
000064  ff494201  bl_gm2lm r19, r20, 0(r[5:6])
000068  00a00200  mfence { lm, gm }
00006c  abfa0000  lui r21, 15
000070  9b9afaff  ori r21, r21, 4095
000074  80a10a04  csr_set csr3, r21
000078  00d00100  sync_group
00007c  fe8007e0  vmmov mr1, r15
000080  fe900720  vmmovh mr1, r15
000084  d7160000  jal 180
000088  fe8007e0  vmmov mr1, r15
00008c  fe900720  vmmovh mr1, r15
000090  1f8a8eff  addli r20, sp, -64
000094  4a100002  vloads_mask16.mz vr0{mr1}, 0(zero)
000098  46000a02  vstore.mz vr0{mr1}, 0(r20)
00009c  00a00100  mfence { lm, sm }
0000a0  00d00100  sync_group
0000a4  97a01000  xor r1, r1, r1
0000a8  1f8f0e00  addli r30, sp, 0
0000ac  d7160000  jal 180
0000b0  00400000  trap
0000b4  9f8e5ef8  addli sp, sp, -984
0000b8  9f100000  addli r1, zero, 1
0000bc  80350002  core_id r11
0000c0  1f8f3e07  addli r30, sp, 920
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00500  beq r11, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  5b700000  j 896
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  1d100100  unlock r2
0000fc  1f311000  addli r2, zero, 11
000100  80a10004  csr_set csr3, r1
000104  9f501000  addli r1, zero, 13
000108  00d00100  sync_group
00010c  7d800000  xsignal r1, 0
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d000100  xsignal r2, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  9f500000  addli r1, zero, 5
000128  1f310000  addli r2, zero, 3
00012c  7d800000  xsignal r1, 0
000130  7d800000  xsignal r1, 0
000134  7d800000  xsignal r1, 0
000138  7d800000  xsignal r1, 0
00013c  7d800000  xsignal r1, 0
000140  7d800000  xsignal r1, 0
000144  7d800000  xsignal r1, 0
000148  7d800000  xsignal r1, 0
00014c  7d800000  xsignal r1, 0
000150  7d800000  xsignal r1, 0
000154  7d800000  xsignal r1, 0
000158  7d800000  xsignal r1, 0
00015c  7d800000  xsignal r1, 0
000160  7d800000  xsignal r1, 0
000164  7d800000  xsignal r1, 0
000168  7d800000  xsignal r1, 0
00016c  7d800000  xsignal r1, 0
000170  7d800000  xsignal r1, 0
000174  7d800000  xsignal r1, 0
000178  7d800000  xsignal r1, 0
00017c  7d800000  xsignal r1, 0
000180  7d800000  xsignal r1, 0
000184  7d800000  xsignal r1, 0
000188  7d800000  xsignal r1, 0
00018c  7d800000  xsignal r1, 0
000190  7d800000  xsignal r1, 0
000194  7d800000  xsignal r1, 0
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
0001a4  7d800000  xsignal r1, 0
0001a8  7d800000  xsignal r1, 0
0001ac  7d800000  xsignal r1, 0
0001b0  7d800000  xsignal r1, 0
0001b4  7d800000  xsignal r1, 0
0001b8  7d800000  xsignal r1, 0
0001bc  7d800000  xsignal r1, 0
0001c0  7d800000  xsignal r1, 0
0001c4  7d800000  xsignal r1, 0
0001c8  7d800000  xsignal r1, 0
0001cc  7d800000  xsignal r1, 0
0001d0  7d800000  xsignal r1, 0
0001d4  7d800000  xsignal r1, 0
0001d8  7d800000  xsignal r1, 0
0001dc  7d800000  xsignal r1, 0
0001e0  7d800000  xsignal r1, 0
0001e4  7d800000  xsignal r1, 0
0001e8  7d800000  xsignal r1, 0
0001ec  7d000100  xsignal r2, 0
0001f0  7d000100  xsignal r2, 0
0001f4  7d000100  xsignal r2, 0
0001f8  7d000100  xsignal r2, 0
0001fc  7d000100  xsignal r2, 0
000200  7d000100  xsignal r2, 0
000204  7d000100  xsignal r2, 0
000208  7d000100  xsignal r2, 0
00020c  7d000100  xsignal r2, 0
000210  7d000100  xsignal r2, 0
000214  7d000100  xsignal r2, 0
000218  7d000100  xsignal r2, 0
00021c  7d000100  xsignal r2, 0
000220  7d000100  xsignal r2, 0
000224  7d000100  xsignal r2, 0
000228  7d000100  xsignal r2, 0
00022c  7d000100  xsignal r2, 0
000230  7d000100  xsignal r2, 0
000234  7d000100  xsignal r2, 0
000238  7d000100  xsignal r2, 0
00023c  7d000100  xsignal r2, 0
000240  7d000100  xsignal r2, 0
000244  7d000100  xsignal r2, 0
000248  7d000100  xsignal r2, 0
00024c  7d000100  xsignal r2, 0
000250  7d000100  xsignal r2, 0
000254  7d000100  xsignal r2, 0
000258  7d000100  xsignal r2, 0
00025c  7d000100  xsignal r2, 0
000260  7d000100  xsignal r2, 0
000264  7d000100  xsignal r2, 0
000268  7d000100  xsignal r2, 0
00026c  7d000100  xsignal r2, 0
000270  7d000100  xsignal r2, 0
000274  7d000100  xsignal r2, 0
000278  7d000100  xsignal r2, 0
00027c  7d000100  xsignal r2, 0
000280  9f101000  addli r1, zero, 9
000284  1f710000  addli r2, zero, 7
000288  7d800000  xsignal r1, 0
00028c  7d800000  xsignal r1, 0
000290  7d800000  xsignal r1, 0
000294  7d800000  xsignal r1, 0
000298  7d800000  xsignal r1, 0
00029c  7d800000  xsignal r1, 0
0002a0  7d800000  xsignal r1, 0
0002a4  7d800000  xsignal r1, 0
0002a8  7d800000  xsignal r1, 0
0002ac  7d800000  xsignal r1, 0
0002b0  7d800000  xsignal r1, 0
0002b4  7d800000  xsignal r1, 0
0002b8  7d800000  xsignal r1, 0
0002bc  7d800000  xsignal r1, 0
0002c0  7d800000  xsignal r1, 0
0002c4  7d800000  xsignal r1, 0
0002c8  7d800000  xsignal r1, 0
0002cc  7d800000  xsignal r1, 0
0002d0  7d800000  xsignal r1, 0
0002d4  7d800000  xsignal r1, 0
0002d8  7d800000  xsignal r1, 0
0002dc  7d800000  xsignal r1, 0
0002e0  7d800000  xsignal r1, 0
0002e4  7d800000  xsignal r1, 0
0002e8  7d800000  xsignal r1, 0
0002ec  7d800000  xsignal r1, 0
0002f0  7d800000  xsignal r1, 0
0002f4  7d800000  xsignal r1, 0
0002f8  7d800000  xsignal r1, 0
0002fc  7d800000  xsignal r1, 0
000300  7d800000  xsignal r1, 0
000304  7d800000  xsignal r1, 0
000308  7d800000  xsignal r1, 0
00030c  7d800000  xsignal r1, 0
000310  7d800000  xsignal r1, 0
000314  7d800000  xsignal r1, 0
000318  7d800000  xsignal r1, 0
00031c  7d800000  xsignal r1, 0
000320  7d800000  xsignal r1, 0
000324  7d800000  xsignal r1, 0
000328  7d800000  xsignal r1, 0
00032c  7d800000  xsignal r1, 0
000330  7d800000  xsignal r1, 0
000334  7d800000  xsignal r1, 0
000338  7d800000  xsignal r1, 0
00033c  7d800000  xsignal r1, 0
000340  7d800000  xsignal r1, 0
000344  7d800000  xsignal r1, 0
000348  7d800000  xsignal r1, 0
00034c  7d800000  xsignal r1, 0
000350  7d800000  xsignal r1, 0
000354  7d800000  xsignal r1, 0
000358  7d800000  xsignal r1, 0
00035c  7d800000  xsignal r1, 0
000360  7d800000  xsignal r1, 0
000364  7d800000  xsignal r1, 0
000368  7d800000  xsignal r1, 0
00036c  7d800000  xsignal r1, 0
000370  7d800000  xsignal r1, 0
000374  7d800000  xsignal r1, 0
000378  7d800000  xsignal r1, 0
00037c  7d800000  xsignal r1, 0
000380  7d800000  xsignal r1, 0
000384  7d800000  xsignal r1, 0
000388  7d800000  xsignal r1, 0
00038c  7d800000  xsignal r1, 0
000390  7d800000  xsignal r1, 0
000394  7d800000  xsignal r1, 0
000398  7d800000  xsignal r1, 0
00039c  7d800000  xsignal r1, 0
0003a0  7d800000  xsignal r1, 0
0003a4  7d800000  xsignal r1, 0
0003a8  7d800000  xsignal r1, 0
0003ac  7d800000  xsignal r1, 0
0003b0  7d800000  xsignal r1, 0
0003b4  7d800000  xsignal r1, 0
0003b8  7d800000  xsignal r1, 0
0003bc  7d800000  xsignal r1, 0
0003c0  7d800000  xsignal r1, 0
0003c4  7d800000  xsignal r1, 0
0003c8  7d000100  xsignal r2, 0
0003cc  7d000100  xsignal r2, 0
0003d0  7d000100  xsignal r2, 0
0003d4  7d000100  xsignal r2, 0
0003d8  7d000100  xsignal r2, 0
0003dc  7d000100  xsignal r2, 0
0003e0  7d000100  xsignal r2, 0
0003e4  7d000100  xsignal r2, 0
0003e8  7d000100  xsignal r2, 0
0003ec  7d000100  xsignal r2, 0
0003f0  7d000100  xsignal r2, 0
0003f4  7d000100  xsignal r2, 0
0003f8  7d000100  xsignal r2, 0
0003fc  7d000100  xsignal r2, 0
000400  7d000100  xsignal r2, 0
000404  7d000100  xsignal r2, 0
000408  7d000100  xsignal r2, 0
00040c  7d000100  xsignal r2, 0
000410  7d000100  xsignal r2, 0
000414  7d000100  xsignal r2, 0
000418  7d000100  xsignal r2, 0
00041c  7d000100  xsignal r2, 0
000420  7d000100  xsignal r2, 0
000424  7d000100  xsignal r2, 0
000428  7d000100  xsignal r2, 0
00042c  7d000100  xsignal r2, 0
000430  7d000100  xsignal r2, 0
000434  7d000100  xsignal r2, 0
000438  7d000100  xsignal r2, 0
00043c  7d000100  xsignal r2, 0
000440  7d000100  xsignal r2, 0
000444  7d000100  xsignal r2, 0
000448  7d000100  xsignal r2, 0
00044c  7d000100  xsignal r2, 0
000450  7d000100  xsignal r2, 0
000454  7d000100  xsignal r2, 0
000458  7d000100  xsignal r2, 0
00045c  e3003f00  loadli.w r1,  24(r30)
000460  63413f00  loadli.w r2,  28(r30)
000464  80d10002  load_param_i r3, 1
000468  63024f00  loadli.w r4,  32(r30)
00046c  00530002  load_param_i r6, 0
000470  abf2ffff  lui r5, 1048575
000474  e7060ffe  storeli.w zero, -152(r30)
000478  67420ffc  storeli.w zero, -476(r30)
00047c  e7480ffa  storeli.w zero, -628(r30)
000480  e70c0ff8  storeli.w zero, -824(r30)
000484  8b101120  mul.s r1, r2, r1
000488  1f810100  addli r2, r3, 0
00048c  0b914050  fmac.s r2, r1, r4
000490  0b924020  mul.s r4, r1, r4
000494  1f71f1ff  addli r2, r2, -1
000498  0b113130  div.s r2, r2, r3
00049c  9b91f2ff  ori r3, r5, 4095
0004a0  e7463ffe  storeli.w r3, -148(r30)
0004a4  67073ffe  storeli.w r3, -144(r30)
0004a8  67473ffe  storeli.w r3, -140(r30)
0004ac  e7073ffe  storeli.w r3, -136(r30)
0004b0  e7473ffe  storeli.w r3, -132(r30)
0004b4  67083ffe  storeli.w r3, -128(r30)
0004b8  67483ffe  storeli.w r3, -124(r30)
0004bc  e7083ffe  storeli.w r3, -120(r30)
0004c0  e7483ffe  storeli.w r3, -116(r30)
0004c4  67093ffe  storeli.w r3, -112(r30)
0004c8  67493ffe  storeli.w r3, -108(r30)
0004cc  e7093ffe  storeli.w r3, -104(r30)
0004d0  e7493ffe  storeli.w r3, -100(r30)
0004d4  670a3ffe  storeli.w r3, -96(r30)
0004d8  674a3ffe  storeli.w r3, -92(r30)
0004dc  e70a3ffe  storeli.w r3, -88(r30)
0004e0  e74a3ffe  storeli.w r3, -84(r30)
0004e4  670b3ffe  storeli.w r3, -80(r30)
0004e8  674b3ffe  storeli.w r3, -76(r30)
0004ec  e70b3ffe  storeli.w r3, -72(r30)
0004f0  e74b3ffe  storeli.w r3, -68(r30)
0004f4  670c3ffe  storeli.w r3, -64(r30)
0004f8  674c3ffe  storeli.w r3, -60(r30)
0004fc  e70c3ffe  storeli.w r3, -56(r30)
000500  e74c3ffe  storeli.w r3, -52(r30)
000504  670d3ffe  storeli.w r3, -48(r30)
000508  674d3ffe  storeli.w r3, -44(r30)
00050c  e70d3ffe  storeli.w r3, -40(r30)
000510  e74d3ffe  storeli.w r3, -36(r30)
000514  670e3ffe  storeli.w r3, -32(r30)
000518  674e3ffe  storeli.w r3, -28(r30)
00051c  e70e3ffe  storeli.w r3, -24(r30)
000520  e74e3ffe  storeli.w r3, -20(r30)
000524  670f3ffe  storeli.w r3, -16(r30)
000528  674f3ffe  storeli.w r3, -12(r30)
00052c  e70f3ffe  storeli.w r3, -8(r30)
000530  e74f3ffe  storeli.w r3, -4(r30)
000534  e7023ffc  storeli.w r3, -472(r30)
000538  e7423ffc  storeli.w r3, -468(r30)
00053c  67033ffc  storeli.w r3, -464(r30)
000540  67433ffc  storeli.w r3, -460(r30)
000544  e7033ffc  storeli.w r3, -456(r30)
000548  e7433ffc  storeli.w r3, -452(r30)
00054c  67043ffc  storeli.w r3, -448(r30)
000550  67443ffc  storeli.w r3, -444(r30)
000554  e7043ffc  storeli.w r3, -440(r30)
000558  e7443ffc  storeli.w r3, -436(r30)
00055c  67053ffc  storeli.w r3, -432(r30)
000560  67453ffc  storeli.w r3, -428(r30)
000564  e7053ffc  storeli.w r3, -424(r30)
000568  e7453ffc  storeli.w r3, -420(r30)
00056c  67063ffc  storeli.w r3, -416(r30)
000570  67463ffc  storeli.w r3, -412(r30)
000574  e7063ffc  storeli.w r3, -408(r30)
000578  e7463ffc  storeli.w r3, -404(r30)
00057c  67073ffc  storeli.w r3, -400(r30)
000580  67473ffc  storeli.w r3, -396(r30)
000584  e7073ffc  storeli.w r3, -392(r30)
000588  e7473ffc  storeli.w r3, -388(r30)
00058c  67083ffc  storeli.w r3, -384(r30)
000590  67483ffc  storeli.w r3, -380(r30)
000594  e7083ffc  storeli.w r3, -376(r30)
000598  e7483ffc  storeli.w r3, -372(r30)
00059c  67093ffc  storeli.w r3, -368(r30)
0005a0  67493ffc  storeli.w r3, -364(r30)
0005a4  e7093ffc  storeli.w r3, -360(r30)
0005a8  e7493ffc  storeli.w r3, -356(r30)
0005ac  670a3ffc  storeli.w r3, -352(r30)
0005b0  674a3ffc  storeli.w r3, -348(r30)
0005b4  e70a3ffc  storeli.w r3, -344(r30)
0005b8  e74a3ffc  storeli.w r3, -340(r30)
0005bc  670b3ffc  storeli.w r3, -336(r30)
0005c0  674b3ffc  storeli.w r3, -332(r30)
0005c4  e70b3ffc  storeli.w r3, -328(r30)
0005c8  e74b3ffc  storeli.w r3, -324(r30)
0005cc  670c3ffc  storeli.w r3, -320(r30)
0005d0  674c3ffc  storeli.w r3, -316(r30)
0005d4  e70c3ffc  storeli.w r3, -312(r30)
0005d8  e74c3ffc  storeli.w r3, -308(r30)
0005dc  670d3ffc  storeli.w r3, -304(r30)
0005e0  674d3ffc  storeli.w r3, -300(r30)
0005e4  e70d3ffc  storeli.w r3, -296(r30)
0005e8  e74d3ffc  storeli.w r3, -292(r30)
0005ec  670e3ffc  storeli.w r3, -288(r30)
0005f0  674e3ffc  storeli.w r3, -284(r30)
0005f4  e70e3ffc  storeli.w r3, -280(r30)
0005f8  e74e3ffc  storeli.w r3, -276(r30)
0005fc  670f3ffc  storeli.w r3, -272(r30)
000600  674f3ffc  storeli.w r3, -268(r30)
000604  e70f3ffc  storeli.w r3, -264(r30)
000608  e74f3ffc  storeli.w r3, -260(r30)
00060c  67003ffe  storeli.w r3, -256(r30)
000610  67403ffe  storeli.w r3, -252(r30)
000614  e7003ffe  storeli.w r3, -248(r30)
000618  e7403ffe  storeli.w r3, -244(r30)
00061c  67013ffe  storeli.w r3, -240(r30)
000620  67413ffe  storeli.w r3, -236(r30)
000624  e7013ffe  storeli.w r3, -232(r30)
000628  e7413ffe  storeli.w r3, -228(r30)
00062c  67023ffe  storeli.w r3, -224(r30)
000630  67423ffe  storeli.w r3, -220(r30)
000634  e7023ffe  storeli.w r3, -216(r30)
000638  e7423ffe  storeli.w r3, -212(r30)
00063c  67033ffe  storeli.w r3, -208(r30)
000640  67433ffe  storeli.w r3, -204(r30)
000644  e7033ffe  storeli.w r3, -200(r30)
000648  e7433ffe  storeli.w r3, -196(r30)
00064c  67043ffe  storeli.w r3, -192(r30)
000650  67443ffe  storeli.w r3, -188(r30)
000654  e7043ffe  storeli.w r3, -184(r30)
000658  e7443ffe  storeli.w r3, -180(r30)
00065c  67053ffe  storeli.w r3, -176(r30)
000660  67453ffe  storeli.w r3, -172(r30)
000664  e7053ffe  storeli.w r3, -168(r30)
000668  e7453ffe  storeli.w r3, -164(r30)
00066c  67063ffe  storeli.w r3, -160(r30)
000670  67463ffe  storeli.w r3, -156(r30)
000674  67093ffa  storeli.w r3, -624(r30)
000678  67493ffa  storeli.w r3, -620(r30)
00067c  e7093ffa  storeli.w r3, -616(r30)
000680  e7493ffa  storeli.w r3, -612(r30)
000684  670a3ffa  storeli.w r3, -608(r30)
000688  674a3ffa  storeli.w r3, -604(r30)
00068c  e70a3ffa  storeli.w r3, -600(r30)
000690  e74a3ffa  storeli.w r3, -596(r30)
000694  670b3ffa  storeli.w r3, -592(r30)
000698  674b3ffa  storeli.w r3, -588(r30)
00069c  e70b3ffa  storeli.w r3, -584(r30)
0006a0  e74b3ffa  storeli.w r3, -580(r30)
0006a4  670c3ffa  storeli.w r3, -576(r30)
0006a8  674c3ffa  storeli.w r3, -572(r30)
0006ac  e70c3ffa  storeli.w r3, -568(r30)
0006b0  e74c3ffa  storeli.w r3, -564(r30)
0006b4  670d3ffa  storeli.w r3, -560(r30)
0006b8  674d3ffa  storeli.w r3, -556(r30)
0006bc  e70d3ffa  storeli.w r3, -552(r30)
0006c0  e74d3ffa  storeli.w r3, -548(r30)
0006c4  670e3ffa  storeli.w r3, -544(r30)
0006c8  674e3ffa  storeli.w r3, -540(r30)
0006cc  e70e3ffa  storeli.w r3, -536(r30)
0006d0  e74e3ffa  storeli.w r3, -532(r30)
0006d4  670f3ffa  storeli.w r3, -528(r30)
0006d8  674f3ffa  storeli.w r3, -524(r30)
0006dc  e70f3ffa  storeli.w r3, -520(r30)
0006e0  e74f3ffa  storeli.w r3, -516(r30)
0006e4  67003ffc  storeli.w r3, -512(r30)
0006e8  67403ffc  storeli.w r3, -508(r30)
0006ec  e7003ffc  storeli.w r3, -504(r30)
0006f0  e7403ffc  storeli.w r3, -500(r30)
0006f4  67013ffc  storeli.w r3, -496(r30)
0006f8  67413ffc  storeli.w r3, -492(r30)
0006fc  e7013ffc  storeli.w r3, -488(r30)
000700  e7413ffc  storeli.w r3, -484(r30)
000704  67023ffc  storeli.w r3, -480(r30)
000708  e74c3ff8  storeli.w r3, -820(r30)
00070c  670d3ff8  storeli.w r3, -816(r30)
000710  674d3ff8  storeli.w r3, -812(r30)
000714  e70d3ff8  storeli.w r3, -808(r30)
000718  e74d3ff8  storeli.w r3, -804(r30)
00071c  670e3ff8  storeli.w r3, -800(r30)
000720  674e3ff8  storeli.w r3, -796(r30)
000724  e70e3ff8  storeli.w r3, -792(r30)
000728  e74e3ff8  storeli.w r3, -788(r30)
00072c  670f3ff8  storeli.w r3, -784(r30)
000730  674f3ff8  storeli.w r3, -780(r30)
000734  e70f3ff8  storeli.w r3, -776(r30)
000738  e74f3ff8  storeli.w r3, -772(r30)
00073c  67003ffa  storeli.w r3, -768(r30)
000740  67403ffa  storeli.w r3, -764(r30)
000744  e7003ffa  storeli.w r3, -760(r30)
000748  e7403ffa  storeli.w r3, -756(r30)
00074c  67013ffa  storeli.w r3, -752(r30)
000750  67413ffa  storeli.w r3, -748(r30)
000754  e7013ffa  storeli.w r3, -744(r30)
000758  e7413ffa  storeli.w r3, -740(r30)
00075c  67023ffa  storeli.w r3, -736(r30)
000760  67423ffa  storeli.w r3, -732(r30)
000764  e7023ffa  storeli.w r3, -728(r30)
000768  e7423ffa  storeli.w r3, -724(r30)
00076c  67033ffa  storeli.w r3, -720(r30)
000770  67433ffa  storeli.w r3, -716(r30)
000774  e7033ffa  storeli.w r3, -712(r30)
000778  e7433ffa  storeli.w r3, -708(r30)
00077c  67043ffa  storeli.w r3, -704(r30)
000780  67443ffa  storeli.w r3, -700(r30)
000784  e7043ffa  storeli.w r3, -696(r30)
000788  e7443ffa  storeli.w r3, -692(r30)
00078c  67053ffa  storeli.w r3, -688(r30)
000790  67453ffa  storeli.w r3, -684(r30)
000794  e7053ffa  storeli.w r3, -680(r30)
000798  e7453ffa  storeli.w r3, -676(r30)
00079c  67063ffa  storeli.w r3, -672(r30)
0007a0  67463ffa  storeli.w r3, -668(r30)
0007a4  e7063ffa  storeli.w r3, -664(r30)
0007a8  e7463ffa  storeli.w r3, -660(r30)
0007ac  67073ffa  storeli.w r3, -656(r30)
0007b0  67473ffa  storeli.w r3, -652(r30)
0007b4  e7073ffa  storeli.w r3, -648(r30)
0007b8  e7473ffa  storeli.w r3, -644(r30)
0007bc  67083ffa  storeli.w r3, -640(r30)
0007c0  67483ffa  storeli.w r3, -636(r30)
0007c4  e7083ffa  storeli.w r3, -632(r30)
0007c8  8b106120  mul.s r1, r2, r6
0007cc  0b116150  fmac.s r2, r2, r6
0007d0  0b114140  min.s r2, r2, r4
0007d4  4b1a110c  ble.s r2, r1, 6788
0007d8  33110128  sext_int2long r[3:4], r2
0007dc  33930028  sext_int2long r[7:8], r1
0007e0  9f048000  addli r9, zero, 64
0007e4  1f360000  addli r12, zero, 3
0007e8  1f2e0000  addli r28, zero, 2
0007ec  9f0d4000  addli r27, zero, 32
0007f0  2b02807f  lui r4, 522240
0007f4  ab02ffff  lui r5, 1048560
0007f8  e7490ff8  storeli.w zero, -868(r30)
0007fc  73382fc6  store.d r[3:4], -912(r30)
000800  1f71f01f  addli r2, zero, 4095
000804  ab80ffff  lui r1, 1048568
000808  73341fc6  store.d r[2:3], -920(r30)
00080c  abf0ff7f  lui r1, 524287
000810  2bf17f7f  lui r2, 522239
000814  9b96f0ff  ori r13, r1, 4095
000818  ab700000  lui r1, 7
00081c  9b11f1ff  ori r3, r2, 4095
000820  9b98f0ff  ori r17, r1, 4095
000824  db060000  j 52
000828  9f301000  addli r1, zero, 11
00082c  1f2e0000  addli r28, zero, 2
000830  9f0d4000  addli r27, zero, 32
000834  7d800000  xsignal r1, 0
000838  9f401000  addli r1, zero, 12
00083c  7d800000  xsignal r1, 0
000840  6b530fc9  load.d r[7:8], -880(r30)
000844  eb500fc7  load.d r[2:3], -912(r30)
000848  1f360000  addli r12, zero, 3
00084c  27130300  addli.d r[7:8], r[7:8], 1
000850  93301304  setlt.sl r1, r[7:8], r[2:3]
000854  3798000c  beq r1, zero, 6660
000858  9f400000  addli r1, zero, 4
00085c  3bb01500  bneq r11, r1, 12
000860  9f301000  addli r1, zero, 11
000864  7d900000  xwait r1, 0
000868  e3004f00  loadli.w r1,  32(r30)
00086c  63413f00  loadli.w r2,  28(r30)
000870  73386fc8  store.d r[7:8], -880(r30)
000874  63491ffb  loadli.w r18,  -628(r30)
000878  1f0c8000  addli r24, zero, 64
00087c  8b101330  div.s r1, r6, r1
000880  1f031000  addli r6, zero, 8
000884  0b952030  div.s r10, r1, r2
000888  1f410000  addli r2, zero, 4
00088c  8b159530  div.s r11, r10, r9
000890  9bb03500  slli r1, r11, 3
000894  0b111118  sub.s r2, r2, r1
000898  0b146140  min.s r8, r2, r6
00089c  63039ff9  loadli.w r6,  -824(r30)
0008a0  0b118538  mod.s r2, r10, r8
0008a4  8b942010  add.s r9, r1, r2
0008a8  1f511000  addli r2, zero, 13
0008ac  93009604  setlt.u r1, r12, r9
0008b0  33870428  zext_int2long r[15:16], r9
0008b4  7334efc8  store.d r[15:16], -888(r30)
0008b8  17372702  sll.d r[15:16], r[15:16], r2
0008bc  7338efca  store.d r[15:16], -848(r30)
0008c0  3bb00000  bneq r1, zero, 12
0008c4  b3000028  zext_int2long r[2:3], zero
0008c8  db010000  j 12
0008cc  eb508fc6  load.d r[2:3], -920(r30)
0008d0  97001702  and.d r[2:3], r[15:16], r[2:3]
0008d4  9bb56500  slli r11, r11, 6
0008d8  73341fca  store.d r[2:3], -856(r30)
0008dc  e3403ff9  loadli.w r1,  -868(r30)
0008e0  9bb47400  slli r9, r9, 7
0008e4  1f010001  addli r2, zero, 128
0008e8  9f030000  addli r7, zero, 0
0008ec  9f3c0000  addli r25, zero, 3
0008f0  0b15b518  sub.s r10, r10, r11
0008f4  e7479ff8  storeli.w r9, -900(r30)
0008f8  8b95c038  mod.s r11, r1, r12
0008fc  1f160000  addli r12, zero, 1
000900  9f900000  addli r1, r1, 1
000904  0b148530  div.s r8, r10, r8
000908  e7491ff8  storeli.w r1, -868(r30)
00090c  9bb70501  slli r15, r11, 16
000910  b3040428  zext_int2long r[10:11], r8
000914  1b347400  slli r8, r8, 7
000918  e7078ff8  storeli.w r8, -904(r30)
00091c  1f740000  addli r8, zero, 7
000920  17b48402  sll.d r[9:10], r[10:11], r8
000924  2b050300  lui r10, 48
000928  0b97a710  add.s r14, r15, r10
00092c  6b558f00  load.d r[11:12], 8(r30)
000930  73308fc8  store.d r[9:10], -896(r30)
000934  1734c402  sll.d r[9:10], r[9:10], r12
000938  0b248510  add.ul r[9:10], r[11:12], r[9:10]
00093c  80350002  core_id r11
000940  73308fca  store.d r[9:10], -864(r30)
000944  1f040000  addli r8, zero, 0
000948  5b040000  j 32
00094c  1b041600  andi r8, r12, 1
000950  80350002  core_id r11
000954  372f0402  beq r8, zero, 1992
000958  1f060000  addli r12, zero, 0
00095c  9f930300  addli r7, r7, 1
000960  1f140000  addli r8, zero, 1
000964  1f090500  addli r18, r10, 0
000968  9f006000  addli r1, zero, 48
00096c  b3090c28  zext_int2long r[20:21], r24
000970  8b141338  mod.s r9, r6, r1
000974  9f504000  addli r1, zero, 37
000978  73303fcd  store.d r[20:21], -832(r30)
00097c  1f130300  addli r6, r6, 1
000980  0b151938  mod.s r10, r18, r1
000984  9f000003  addli r1, zero, 384
000988  e70c6ff8  storeli.w r6, -824(r30)
00098c  b3890028  zext_int2long r[20:21], r1
000990  ab000600  lui r1, 96
000994  733c3fcb  store.d r[20:21], -840(r30)
000998  9bb9e400  slli r19, r9, 14
00099c  9b3ae500  slli r21, r10, 14
0009a0  1f150900  addli r10, r18, 1
0009a4  0b9a1a10  add.s r20, r21, r1
0009a8  e748affa  storeli.w r10, -628(r30)
0009ac  b7dbc501  beq r11, r28, 756
0009b0  33040428  zext_int2long r[9:10], r8
0009b4  003b0002  core_id r22
0009b8  9f600000  addli r1, zero, 6
0009bc  bb7f1b00  bneq r22, r1, 1020
0009c0  9f500000  addli r1, zero, 5
0009c4  6b5b0fcb  load.d r[23:24], -848(r30)
0009c8  6b5c0fcc  load.d r[25:26], -832(r30)
0009cc  9f1d0000  addli r27, zero, 1
0009d0  003d0002  core_id r26
0009d4  17341402  sll.d r[9:10], r[9:10], r1
0009d8  17146403  or.d r[9:10], r[9:10], r[23:24]
0009dc  6b5b8fca  load.d r[23:24], -856(r30)
0009e0  0b3b6419  sub.sl r[23:24], r[9:10], r[23:24]
0009e4  1734b403  sll.d r[9:10], r[9:10], r27
0009e8  0f1b8b61  div.sl r[23:24], r[23:24], r[25:26]
0009ec  6b5c8fcb  load.d r[25:26], -840(r30)
0009f0  0b3c8b41  min.sl r[25:26], r[23:24], r[25:26]
0009f4  0b3c6c19  sub.sl r[25:26], r[25:26], r[23:24]
0009f8  6b5b0f00  load.d r[23:24], 0(r30)
0009fc  9f050c01  addli r11, r24, 128
000a00  1f3c0000  addli r24, zero, 3
000a04  0b2b8b10  add.ul r[23:24], r[23:24], r[9:10]
000a08  9f048000  addli r9, zero, 64
000a0c  1f444000  addli r8, zero, 36
000a10  7d100c00  xwait r24, 0
000a14  bf042401  blt.s r8, r18, 288
000a18  1d800000  lock zero, r1
000a1c  1f440000  addli r8, zero, 4
000a20  15000014  dma_cfg zero, zero, zero, 10
000a24  1500b015  dma_cfg zero, zero, r27, 10
000a28  1500c015  dma_cfg zero, zero, r28, 10
000a2c  15008015  dma_cfg zero, zero, r24, 10
000a30  15008014  dma_cfg zero, zero, r8, 10
000a34  1f640000  addli r8, zero, 6
000a38  15001014  dma_cfg zero, zero, r1, 10
000a3c  15008014  dma_cfg zero, zero, r8, 10
000a40  1f740000  addli r8, zero, 7
000a44  15008014  dma_cfg zero, zero, r8, 10
000a48  1f041000  addli r8, zero, 8
000a4c  15008014  dma_cfg zero, zero, r8, 10
000a50  1f141000  addli r8, zero, 9
000a54  15008014  dma_cfg zero, zero, r8, 10
000a58  1f241000  addli r8, zero, 10
000a5c  15008014  dma_cfg zero, zero, r8, 10
000a60  1f341000  addli r8, zero, 11
000a64  15008014  dma_cfg zero, zero, r8, 10
000a68  1f441000  addli r8, zero, 12
000a6c  15008014  dma_cfg zero, zero, r8, 10
000a70  1f541000  addli r8, zero, 13
000a74  15008014  dma_cfg zero, zero, r8, 10
000a78  1f641000  addli r8, zero, 14
000a7c  15008014  dma_cfg zero, zero, r8, 10
000a80  1f741000  addli r8, zero, 15
000a84  15008014  dma_cfg zero, zero, r8, 10
000a88  1f042000  addli r8, zero, 16
000a8c  15008014  dma_cfg zero, zero, r8, 10
000a90  1f142000  addli r8, zero, 17
000a94  15008014  dma_cfg zero, zero, r8, 10
000a98  1f242000  addli r8, zero, 18
000a9c  15008014  dma_cfg zero, zero, r8, 10
000aa0  1f342000  addli r8, zero, 19
000aa4  15008014  dma_cfg zero, zero, r8, 10
000aa8  1f442000  addli r8, zero, 20
000aac  15008014  dma_cfg zero, zero, r8, 10
000ab0  1f542000  addli r8, zero, 21
000ab4  15008014  dma_cfg zero, zero, r8, 10
000ab8  1f642000  addli r8, zero, 22
000abc  15008014  dma_cfg zero, zero, r8, 10
000ac0  1f742000  addli r8, zero, 23
000ac4  15008014  dma_cfg zero, zero, r8, 10
000ac8  1f043000  addli r8, zero, 24
000acc  15008014  dma_cfg zero, zero, r8, 10
000ad0  1f143000  addli r8, zero, 25
000ad4  15008014  dma_cfg zero, zero, r8, 10
000ad8  1f243000  addli r8, zero, 26
000adc  15008014  dma_cfg zero, zero, r8, 10
000ae0  1f343000  addli r8, zero, 27
000ae4  15008014  dma_cfg zero, zero, r8, 10
000ae8  1f443000  addli r8, zero, 28
000aec  15008014  dma_cfg zero, zero, r8, 10
000af0  1f543000  addli r8, zero, 29
000af4  15008014  dma_cfg zero, zero, r8, 10
000af8  1f643000  addli r8, zero, 30
000afc  15008014  dma_cfg zero, zero, r8, 10
000b00  1f743000  addli r8, zero, 31
000b04  15008014  dma_cfg zero, zero, r8, 10
000b08  958d0d00  dma_cfg r27, r27, zero, 0
000b0c  950d0002  dma_cfg r27, zero, zero, 1
000b10  15000004  dma_cfg zero, zero, zero, 2
000b14  150a9006  dma_cfg r20, zero, r9, 3
000b18  1501b009  dma_cfg r2, zero, r27, 4
000b1c  1501200a  dma_cfg r2, zero, r2, 5
000b20  15000010  dma_cfg zero, zero, zero, 8
000b24  35000000  dma_run zero
000b28  1500b00b  dma_cfg zero, zero, r27, 5
000b2c  15000010  dma_cfg zero, zero, zero, 8
000b30  1d900000  unlock r1
000b34  2b010600  lui r2, 96
000b38  1f480000  addli r16, zero, 4
000b3c  9f3c0000  addli r25, zero, 3
000b40  1b140104  ori r8, r2, 64
000b44  1d000800  lock zero, r16
000b48  1f010001  addli r2, zero, 128
000b4c  958d0d00  dma_cfg r27, r27, zero, 0
000b50  0b948a10  add.s r8, r21, r8
000b54  15800b04  dma_cfg zero, r23, zero, 2
000b58  15049b06  dma_cfg r8, r22, r9, 3
000b5c  1f640000  addli r8, zero, 6
000b60  1581b409  dma_cfg r2, r9, r27, 4
000b64  1501b10a  dma_cfg r2, r2, r11, 5
000b68  15000010  dma_cfg zero, zero, zero, 8
000b6c  35000000  dma_run zero
000b70  1500b00b  dma_cfg zero, zero, r27, 5
000b74  15000010  dma_cfg zero, zero, zero, 8
000b78  1d100800  unlock r16
000b7c  1d800000  lock zero, r1
000b80  15000014  dma_cfg zero, zero, zero, 10
000b84  1500b015  dma_cfg zero, zero, r27, 10
000b88  1500c015  dma_cfg zero, zero, r28, 10
000b8c  15008015  dma_cfg zero, zero, r24, 10
000b90  1f0c8000  addli r24, zero, 64
000b94  15000015  dma_cfg zero, zero, r16, 10
000b98  15001014  dma_cfg zero, zero, r1, 10
000b9c  15008014  dma_cfg zero, zero, r8, 10
000ba0  1f740000  addli r8, zero, 7
000ba4  15008014  dma_cfg zero, zero, r8, 10
000ba8  1f041000  addli r8, zero, 8
000bac  15008014  dma_cfg zero, zero, r8, 10
000bb0  1f141000  addli r8, zero, 9
000bb4  15008014  dma_cfg zero, zero, r8, 10
000bb8  1f241000  addli r8, zero, 10
000bbc  15008014  dma_cfg zero, zero, r8, 10
000bc0  1f341000  addli r8, zero, 11
000bc4  15008014  dma_cfg zero, zero, r8, 10
000bc8  1f441000  addli r8, zero, 12
000bcc  15008014  dma_cfg zero, zero, r8, 10
000bd0  1f541000  addli r8, zero, 13
000bd4  15008014  dma_cfg zero, zero, r8, 10
000bd8  1f641000  addli r8, zero, 14
000bdc  15008014  dma_cfg zero, zero, r8, 10
000be0  1f741000  addli r8, zero, 15
000be4  15008014  dma_cfg zero, zero, r8, 10
000be8  1f042000  addli r8, zero, 16
000bec  15008014  dma_cfg zero, zero, r8, 10
000bf0  1f142000  addli r8, zero, 17
000bf4  15008014  dma_cfg zero, zero, r8, 10
000bf8  1f242000  addli r8, zero, 18
000bfc  15008014  dma_cfg zero, zero, r8, 10
000c00  1f342000  addli r8, zero, 19
000c04  15008014  dma_cfg zero, zero, r8, 10
000c08  1f442000  addli r8, zero, 20
000c0c  15008014  dma_cfg zero, zero, r8, 10
000c10  1f542000  addli r8, zero, 21
000c14  15008014  dma_cfg zero, zero, r8, 10
000c18  1f642000  addli r8, zero, 22
000c1c  15008014  dma_cfg zero, zero, r8, 10
000c20  1f742000  addli r8, zero, 23
000c24  15008014  dma_cfg zero, zero, r8, 10
000c28  1f043000  addli r8, zero, 24
000c2c  15008014  dma_cfg zero, zero, r8, 10
000c30  1f143000  addli r8, zero, 25
000c34  15008014  dma_cfg zero, zero, r8, 10
000c38  1f243000  addli r8, zero, 26
000c3c  15008014  dma_cfg zero, zero, r8, 10
000c40  1f343000  addli r8, zero, 27
000c44  15008014  dma_cfg zero, zero, r8, 10
000c48  1f443000  addli r8, zero, 28
000c4c  15008014  dma_cfg zero, zero, r8, 10
000c50  1f543000  addli r8, zero, 29
000c54  15008014  dma_cfg zero, zero, r8, 10
000c58  1f643000  addli r8, zero, 30
000c5c  15008014  dma_cfg zero, zero, r8, 10
000c60  1f743000  addli r8, zero, 31
000c64  15008014  dma_cfg zero, zero, r8, 10
000c68  958d0d00  dma_cfg r27, r27, zero, 0
000c6c  950d0002  dma_cfg r27, zero, zero, 1
000c70  15000004  dma_cfg zero, zero, zero, 2
000c74  150a9006  dma_cfg r20, zero, r9, 3
000c78  1501b009  dma_cfg r2, zero, r27, 4
000c7c  1501b00a  dma_cfg r2, zero, r11, 5
000c80  15000010  dma_cfg zero, zero, zero, 8
000c84  35000000  dma_run zero
000c88  1500b00b  dma_cfg zero, zero, r27, 5
000c8c  9f0d4000  addli r27, zero, 32
000c90  15000010  dma_cfg zero, zero, zero, 8
000c94  1d900000  unlock r1
000c98  7d000e00  xsignal r28, 0
000c9c  db070000  j 60
000ca0  9f500000  addli r1, zero, 5
000ca4  7d100e00  xwait r28, 0
000ca8  003d0002  core_id r26
000cac  1f440000  addli r8, zero, 4
000cb0  7d900000  xwait r1, 0
000cb4  1d000000  lock zero, zero
000cb8  010e0000  ds_cfg r28, zero, 0
000cbc  810d0002  ds_cfg r27, zero, 1
000cc0  810d001c  ds_cfg r27, zero, 14
000cc4  0101001a  ds_cfg r2, zero, 13
000cc8  a119ba03  shuffle_batch r19, r20, r27, 1
000ccc  1d100000  unlock zero
000cd0  7d800c00  xsignal r25, 0
000cd4  7d000400  xsignal r8, 0
000cd8  63444ffc  loadli.w r8,  -476(r30)
000cdc  9f00a000  addli r1, zero, 80
000ce0  e305dffe  loadli.w r11,  -152(r30)
000ce4  8b141438  mod.s r9, r8, r1
000ce8  1f980500  addli r16, r11, 1
000cec  1f140400  addli r8, r8, 1
000cf0  67428ffc  storeli.w r8, -476(r30)
000cf4  e7060fff  storeli.w r16, -152(r30)
000cf8  9bb5e400  slli r11, r9, 14
000cfc  1f440000  addli r8, zero, 4
000d00  3b318dfe  bneq r26, r8, -948
000d04  7d100400  xwait r8, 0
000d08  1f041000  addli r8, zero, 8
000d0c  9f140000  addli r9, zero, 1
000d10  1f080000  addli r16, zero, 0
000d14  1f0a8000  addli r20, zero, 64
000d18  9f4a0000  addli r21, zero, 4
000d1c  7d100400  xwait r8, 0
000d20  1f140000  addli r8, zero, 1
000d24  b7f00300  beq r7, zero, 60
000d28  1b39d800  slli r18, r16, 13
000d2c  1b388800  slli r16, r16, 8
000d30  1d000400  lock zero, r8
000d34  098a2d00  mm_cfg r20, r27, r2, 0
000d38  1719b900  or r18, r18, r11
000d3c  1718e800  or r16, r16, r14
000d40  098e8a04  mm_cfg r28, r21, r8, 2
000d44  29982911  mm_acc r16, r19, r18, 8
000d48  1b891400  andi r18, r9, 1
000d4c  1f180000  addli r16, zero, 1
000d50  9f040000  addli r9, zero, 0
000d54  1d100400  unlock r8
000d58  3b4f09fe  bneq r18, zero, -48
000d5c  5b070000  j 56
000d60  1b39d800  slli r18, r16, 13
000d64  1b388800  slli r16, r16, 8
000d68  1d000400  lock zero, r8
000d6c  098a2d00  mm_cfg r20, r27, r2, 0
000d70  1719b900  or r18, r18, r11
000d74  1718e800  or r16, r16, r14
000d78  098e8a04  mm_cfg r28, r21, r8, 2
000d7c  29882911  mm r16, r19, r18, 8
000d80  1b891400  andi r18, r9, 1
000d84  1f180000  addli r16, zero, 1
000d88  9f040000  addli r9, zero, 0
000d8c  1d100400  unlock r8
000d90  3b4f09fe  bneq r18, zero, -48
000d94  9f500000  addli r1, zero, 5
000d98  1f0c8000  addli r24, zero, 64
000d9c  1b041600  andi r8, r12, 1
000da0  80350002  core_id r11
000da4  7d800000  xsignal r1, 0
000da8  9f101000  addli r1, zero, 9
000dac  7d800000  xsignal r1, 0
000db0  bb2e04fc  bneq r8, zero, -1112
000db4  5b6b0000  j 856
000db8  e3454ffc  loadli.w r11,  -476(r30)
000dbc  9f00a000  addli r1, zero, 80
000dc0  e30bdffe  loadli.w r23,  -152(r30)
000dc4  0b981538  mod.s r16, r11, r1
000dc8  9f504000  addli r1, zero, 37
000dcc  9f950500  addli r11, r11, 1
000dd0  0b991b38  mod.s r18, r23, r1
000dd4  6742bffc  storeli.w r11, -476(r30)
000dd8  ab400f00  lui r1, 244
000ddc  9b35e800  slli r11, r16, 14
000de0  1f980b00  addli r16, r23, 1
000de4  1b39e900  slli r18, r18, 14
000de8  e7060fff  storeli.w r16, -152(r30)
000dec  1f780000  addli r16, zero, 7
000df0  0b1a1910  add.s r20, r18, r1
000df4  372b0b01  beq r22, r16, 712
000df8  003d0002  core_id r26
000dfc  9f100000  addli r1, zero, 1
000e00  bb7b1bfe  bneq r22, r1, -260
000e04  1f0c2000  addli r24, zero, 16
000e08  eb500fca  load.d r[2:3], -864(r30)
000e0c  1f780000  addli r16, zero, 7
000e10  9f090001  addli r19, zero, 128
000e14  17348403  sll.d r[9:10], r[9:10], r24
000e18  7d100800  xwait r16, 0
000e1c  8baa8010  add.ul r[22:23], r[2:3], r[9:10]
000e20  9f048000  addli r9, zero, 64
000e24  9f404000  addli r1, zero, 36
000e28  bf947001  blt.s r1, r23, 292
000e2c  9f500000  addli r1, zero, 5
000e30  1f110000  addli r2, zero, 1
000e34  1f440000  addli r8, zero, 4
000e38  9f650000  addli r11, zero, 6
000e3c  1d800000  lock zero, r1
000e40  15000014  dma_cfg zero, zero, zero, 10
000e44  15002014  dma_cfg zero, zero, r2, 10
000e48  1500c015  dma_cfg zero, zero, r28, 10
000e4c  15009015  dma_cfg zero, zero, r25, 10
000e50  15008014  dma_cfg zero, zero, r8, 10
000e54  15001014  dma_cfg zero, zero, r1, 10
000e58  1500b014  dma_cfg zero, zero, r11, 10
000e5c  9f051000  addli r11, zero, 8
000e60  15000015  dma_cfg zero, zero, r16, 10
000e64  1500b014  dma_cfg zero, zero, r11, 10
000e68  9f151000  addli r11, zero, 9
000e6c  1500b014  dma_cfg zero, zero, r11, 10
000e70  9f251000  addli r11, zero, 10
000e74  1500b014  dma_cfg zero, zero, r11, 10
000e78  9f351000  addli r11, zero, 11
000e7c  1500b014  dma_cfg zero, zero, r11, 10
000e80  9f451000  addli r11, zero, 12
000e84  1500b014  dma_cfg zero, zero, r11, 10
000e88  9f551000  addli r11, zero, 13
000e8c  1500b014  dma_cfg zero, zero, r11, 10
000e90  9f651000  addli r11, zero, 14
000e94  1500b014  dma_cfg zero, zero, r11, 10
000e98  9f751000  addli r11, zero, 15
000e9c  1500b014  dma_cfg zero, zero, r11, 10
000ea0  9f152000  addli r11, zero, 17
000ea4  15008015  dma_cfg zero, zero, r24, 10
000ea8  1500b014  dma_cfg zero, zero, r11, 10
000eac  9f252000  addli r11, zero, 18
000eb0  1500b014  dma_cfg zero, zero, r11, 10
000eb4  9f352000  addli r11, zero, 19
000eb8  1500b014  dma_cfg zero, zero, r11, 10
000ebc  9f452000  addli r11, zero, 20
000ec0  1500b014  dma_cfg zero, zero, r11, 10
000ec4  9f552000  addli r11, zero, 21
000ec8  1500b014  dma_cfg zero, zero, r11, 10
000ecc  9f652000  addli r11, zero, 22
000ed0  1500b014  dma_cfg zero, zero, r11, 10
000ed4  9f752000  addli r11, zero, 23
000ed8  1500b014  dma_cfg zero, zero, r11, 10
000edc  9f053000  addli r11, zero, 24
000ee0  1500b014  dma_cfg zero, zero, r11, 10
000ee4  9f153000  addli r11, zero, 25
000ee8  1500b014  dma_cfg zero, zero, r11, 10
000eec  9f253000  addli r11, zero, 26
000ef0  1500b014  dma_cfg zero, zero, r11, 10
000ef4  9f353000  addli r11, zero, 27
000ef8  1500b014  dma_cfg zero, zero, r11, 10
000efc  9f453000  addli r11, zero, 28
000f00  1500b014  dma_cfg zero, zero, r11, 10
000f04  9f553000  addli r11, zero, 29
000f08  1500b014  dma_cfg zero, zero, r11, 10
000f0c  9f653000  addli r11, zero, 30
000f10  1500b014  dma_cfg zero, zero, r11, 10
000f14  9f753000  addli r11, zero, 31
000f18  1500b014  dma_cfg zero, zero, r11, 10
000f1c  15010100  dma_cfg r2, r2, zero, 0
000f20  15010002  dma_cfg r2, zero, zero, 1
000f24  15000004  dma_cfg zero, zero, zero, 2
000f28  150a9006  dma_cfg r20, zero, r9, 3
000f2c  95098008  dma_cfg r19, zero, r8, 4
000f30  1f040004  addli r8, zero, 512
000f34  1504b00b  dma_cfg r8, zero, r27, 5
000f38  15000010  dma_cfg zero, zero, zero, 8
000f3c  35000000  dma_run zero
000f40  1500200a  dma_cfg zero, zero, r2, 5
000f44  15000010  dma_cfg zero, zero, zero, 8
000f48  1d900000  unlock r1
000f4c  ab400f00  lui r1, 244
000f50  9f450000  addli r11, zero, 4
000f54  1f110000  addli r2, zero, 1
000f58  9f090004  addli r19, zero, 512
000f5c  1b940004  ori r8, r1, 64
000f60  1d800500  lock zero, r11
000f64  9f000010  addli r1, zero, 2048
000f68  15010100  dma_cfg r2, r2, zero, 0
000f6c  0b148910  add.s r8, r18, r8
000f70  15000b04  dma_cfg zero, r22, zero, 2
000f74  1f090001  addli r18, zero, 128
000f78  15849a06  dma_cfg r8, r21, r9, 3
000f7c  9f6a0000  addli r21, zero, 6
000f80  1f041000  addli r8, zero, 8
000f84  1589b408  dma_cfg r18, r9, r11, 4
000f88  9589b00b  dma_cfg r19, r1, r27, 5
000f8c  9f500000  addli r1, zero, 5
000f90  15000010  dma_cfg zero, zero, zero, 8
000f94  35000000  dma_run zero
000f98  1500200a  dma_cfg zero, zero, r2, 5
000f9c  15000010  dma_cfg zero, zero, zero, 8
000fa0  1d900500  unlock r11
000fa4  1d800000  lock zero, r1
000fa8  15000014  dma_cfg zero, zero, zero, 10
000fac  15002014  dma_cfg zero, zero, r2, 10
000fb0  1500c015  dma_cfg zero, zero, r28, 10
000fb4  15009015  dma_cfg zero, zero, r25, 10
000fb8  1500b014  dma_cfg zero, zero, r11, 10
000fbc  15001014  dma_cfg zero, zero, r1, 10
000fc0  15005015  dma_cfg zero, zero, r21, 10
000fc4  15000015  dma_cfg zero, zero, r16, 10
000fc8  15008014  dma_cfg zero, zero, r8, 10
000fcc  1f141000  addli r8, zero, 9
000fd0  15008014  dma_cfg zero, zero, r8, 10
000fd4  1f241000  addli r8, zero, 10
000fd8  15008014  dma_cfg zero, zero, r8, 10
000fdc  1f341000  addli r8, zero, 11
000fe0  15008014  dma_cfg zero, zero, r8, 10
000fe4  1f441000  addli r8, zero, 12
000fe8  15008014  dma_cfg zero, zero, r8, 10
000fec  1f541000  addli r8, zero, 13
000ff0  15008014  dma_cfg zero, zero, r8, 10
000ff4  1f641000  addli r8, zero, 14
000ff8  15008014  dma_cfg zero, zero, r8, 10
000ffc  1f741000  addli r8, zero, 15
001000  15008014  dma_cfg zero, zero, r8, 10
001004  1f142000  addli r8, zero, 17
001008  15008015  dma_cfg zero, zero, r24, 10
00100c  1f0c8000  addli r24, zero, 64
001010  15008014  dma_cfg zero, zero, r8, 10
001014  1f242000  addli r8, zero, 18
001018  15008014  dma_cfg zero, zero, r8, 10
00101c  1f342000  addli r8, zero, 19
001020  15008014  dma_cfg zero, zero, r8, 10
001024  1f442000  addli r8, zero, 20
001028  15008014  dma_cfg zero, zero, r8, 10
00102c  1f542000  addli r8, zero, 21
001030  15008014  dma_cfg zero, zero, r8, 10
001034  1f642000  addli r8, zero, 22
001038  15008014  dma_cfg zero, zero, r8, 10
00103c  1f742000  addli r8, zero, 23
001040  15008014  dma_cfg zero, zero, r8, 10
001044  1f043000  addli r8, zero, 24
001048  15008014  dma_cfg zero, zero, r8, 10
00104c  1f143000  addli r8, zero, 25
001050  15008014  dma_cfg zero, zero, r8, 10
001054  1f243000  addli r8, zero, 26
001058  15008014  dma_cfg zero, zero, r8, 10
00105c  1f343000  addli r8, zero, 27
001060  15008014  dma_cfg zero, zero, r8, 10
001064  1f443000  addli r8, zero, 28
001068  15008014  dma_cfg zero, zero, r8, 10
00106c  1f543000  addli r8, zero, 29
001070  15008014  dma_cfg zero, zero, r8, 10
001074  1f643000  addli r8, zero, 30
001078  15008014  dma_cfg zero, zero, r8, 10
00107c  1f743000  addli r8, zero, 31
001080  15008014  dma_cfg zero, zero, r8, 10
001084  15010100  dma_cfg r2, r2, zero, 0
001088  15010002  dma_cfg r2, zero, zero, 1
00108c  15000004  dma_cfg zero, zero, zero, 2
001090  150a9006  dma_cfg r20, zero, r9, 3
001094  1509b008  dma_cfg r18, zero, r11, 4
001098  9509b00b  dma_cfg r19, zero, r27, 5
00109c  15000010  dma_cfg zero, zero, zero, 8
0010a0  35000000  dma_run zero
0010a4  1500200a  dma_cfg zero, zero, r2, 5
0010a8  1f010001  addli r2, zero, 128
0010ac  15000010  dma_cfg zero, zero, zero, 8
0010b0  1d900000  unlock r1
0010b4  7d800a00  xsignal r21, 0
0010b8  5b080000  j 64
0010bc  9f600000  addli r1, zero, 6
0010c0  1f740000  addli r8, zero, 7
0010c4  7d900000  xwait r1, 0
0010c8  9f101000  addli r1, zero, 9
0010cc  7d900000  xwait r1, 0
0010d0  1d000000  lock zero, zero
0010d4  010e0000  ds_cfg r28, zero, 0
0010d8  01010002  ds_cfg r2, zero, 1
0010dc  810d001c  ds_cfg r27, zero, 14
0010e0  0101001a  ds_cfg r2, zero, 13
0010e4  c105ba05  shuffle_coa r11, r20, r27, 2
0010e8  1d100000  unlock zero
0010ec  7d000400  xsignal r8, 0
0010f0  1f041000  addli r8, zero, 8
0010f4  7d000400  xsignal r8, 0
0010f8  80350002  core_id r11
0010fc  1b041600  andi r8, r12, 1
001100  3b6104fc  bneq r8, zero, -1960
001104  9f400000  addli r1, zero, 4
001108  3bd01500  bneq r11, r1, 20
00110c  9f201000  addli r1, zero, 10
001110  670a0ff8  storeli.w zero, -864(r30)
001114  7d800000  xsignal r1, 0
001118  5b050000  j 40
00111c  bb809501  bneq r11, r25, 32
001120  9f201000  addli r1, zero, 10
001124  7d900000  xwait r1, 0
001128  9f100000  addli r1, zero, 1
00112c  670a1ff8  storeli.w r1, -864(r30)
001130  9f501000  addli r1, zero, 13
001134  7d900000  xwait r1, 0
001138  5b010000  j 8
00113c  670a0ff8  storeli.w zero, -864(r30)
001140  9f70f001  addli r1, zero, 255
001144  3d000000  xfence
001148  33030128  zext_int2long r[7:8], r2
00114c  00a00300  mfence { lm, sm, gm }
001150  80a20004  csr_set csr5, r1
001154  9f70f000  addli r1, zero, 127
001158  00e00200  sync_core
00115c  b38d0028  zext_int2long r[28:29], r1
001160  bbe70500  bneq r11, zero, 504
001164  3d000000  xfence
001168  33040028  zext_int2long r[9:10], zero
00116c  00a00300  mfence { lm, sm, gm }
001170  db030000  j 28
001174  9f701000  addli r1, zero, 15
001178  6b540fcb  load.d r[9:10], -848(r30)
00117c  b3800028  zext_int2long r[2:3], r1
001180  93201404  setlt.ul r1, r[9:10], r[2:3]
001184  27140400  addli.d r[9:10], r[9:10], 1
001188  37a70000  beq r1, zero, 456
00118c  9f700000  addli r1, zero, 7
001190  73388fca  store.d r[9:10], -848(r30)
001194  97391402  sll.d r[20:21], r[9:10], r1
001198  bbd1e700  bneq r15, r14, 116
00119c  33040028  zext_int2long r[9:10], zero
0011a0  db050000  j 44
0011a4  1b410501  srli r2, r10, 16
0011a8  1b011100  andi r2, r2, 1
0011ac  0b112510  add.s r2, r10, r2
0011b0  0b111111  add.s r2, r2, r17
0011b4  17015100  and r2, r2, r5
0011b8  1325b405  setlt.ul r10, r[9:10], r[28:29]
0011bc  8b901710  add.s r1, r15, r1
0011c0  27140400  addli.d r[9:10], r[9:10], 1
0011c4  73e02000  stores.w r2, 0(r1)
0011c8  b73e05fe  beq r10, zero, -84
0011cc  8b203411  add.ul r[2:3], r[9:10], r[20:21]
0011d0  9bb02000  slli r1, r1, 2
0011d4  0b111710  add.s r2, r14, r1
0011d8  6f450100  loads.w r10, 0(r2)
0011dc  9705d500  and r11, r10, r13
0011e0  1301b204  setlt.u r2, r4, r11
0011e4  3b500100  bneq r2, zero, 20
0011e8  1f010500  addli r2, r10, 0
0011ec  9385b104  setlt.u r11, r3, r11
0011f0  3baf05fe  bneq r11, zero, -56
0011f4  5bf6ffff  j -80
0011f8  2b014000  lui r2, 1024
0011fc  17112500  or r2, r10, r2
001200  9385b104  setlt.u r11, r3, r11
001204  bbde05fe  bneq r11, zero, -76
001208  dbf3ffff  j -100
00120c  33050028  zext_int2long r[11:12], zero
001210  db040000  j 36
001214  27450500  addli.d r[11:12], r[11:12], 4
001218  0b91c710  add.s r2, r15, r12
00121c  93206500  seteq.d r1, r[11:12], r[7:8]
001220  73667101  stores.w r23, 12(r2)
001224  73648100  stores.w r8, 8(r2)
001228  73629100  stores.w r9, 4(r2)
00122c  7360a101  stores.w r26, 0(r2)
001230  3b9d00fe  bneq r1, zero, -188
001234  8b203511  add.ul r[2:3], r[11:12], r[20:21]
001238  1bb62000  slli r12, r1, 2
00123c  0b1dc710  add.s r26, r14, r12
001240  6f49cd00  loads.w r18, 12(r26)
001244  970ad900  and r21, r18, r13
001248  93005205  setlt.u r1, r4, r21
00124c  3bb00000  bneq r1, zero, 12
001250  9f0b0900  addli r23, r18, 0
001254  db010000  j 12
001258  ab004000  lui r1, 1024
00125c  971b1900  or r23, r18, r1
001260  6f4b8d00  loads.w r22, 8(r26)
001264  170cdb00  and r24, r22, r13
001268  93008205  setlt.u r1, r4, r24
00126c  3bb00000  bneq r1, zero, 12
001270  1f040b00  addli r8, r22, 0
001274  db010000  j 12
001278  ab004000  lui r1, 1024
00127c  17141b00  or r8, r22, r1
001280  ef4c4d00  loads.w r25, 4(r26)
001284  9780dc00  and r1, r25, r13
001288  13011204  setlt.u r2, r4, r1
00128c  3b300100  bneq r2, zero, 12
001290  9f840c00  addli r9, r25, 0
001294  db010000  j 12
001298  2b014000  lui r2, 1024
00129c  97942c00  or r9, r25, r2
0012a0  6f410d00  loads.w r2, 0(r26)
0012a4  1708d100  and r16, r2, r13
0012a8  130d0205  setlt.u r26, r4, r16
0012ac  3b500d00  bneq r26, zero, 20
0012b0  1f0d0100  addli r26, r2, 0
0012b4  13880105  setlt.u r16, r3, r16
0012b8  37600800  beq r16, zero, 24
0012bc  5b050000  j 40
0012c0  2b0d4000  lui r26, 1024
0012c4  171da101  or r26, r2, r26
0012c8  13880105  setlt.u r16, r3, r16
0012cc  3b600800  bneq r16, zero, 24
0012d0  1b480101  srli r16, r2, 16
0012d4  1b081800  andi r16, r16, 1
0012d8  0b110111  add.s r2, r2, r16
0012dc  0b111111  add.s r2, r2, r17
0012e0  170d5100  and r26, r2, r5
0012e4  93801104  setlt.u r1, r3, r1
0012e8  bbb00000  bneq r1, zero, 44
0012ec  9bc00c01  srli r1, r25, 16
0012f0  9b801000  andi r1, r1, 1
0012f4  8b901c10  add.s r1, r25, r1
0012f8  8b901011  add.s r1, r1, r17
0012fc  97845000  and r9, r1, r5
001300  93808105  setlt.u r1, r3, r24
001304  37e00000  beq r1, zero, 24
001308  93805105  setlt.u r1, r3, r21
00130c  3bac00fe  bneq r1, zero, -248
001310  5b050000  j 40
001314  93808105  setlt.u r1, r3, r24
001318  bbcf00fe  bneq r1, zero, -16
00131c  9b400b01  srli r1, r22, 16
001320  9b801000  andi r1, r1, 1
001324  8b101b10  add.s r1, r22, r1
001328  8b901011  add.s r1, r1, r17
00132c  17845000  and r8, r1, r5
001330  93805105  setlt.u r1, r3, r21
001334  bb8b00fe  bneq r1, zero, -288
001338  9b400901  srli r1, r18, 16
00133c  9b801000  andi r1, r1, 1
001340  8b101910  add.s r1, r18, r1
001344  8b901011  add.s r1, r1, r17
001348  978b5000  and r23, r1, r5
00134c  5bd9ffff  j -312
001350  80350002  core_id r11
001354  00200100  mfence { sm }
001358  9f048000  addli r9, zero, 64
00135c  9f200000  addli r1, zero, 2
001360  37981500  beq r11, r1, 516
001364  9f100000  addli r1, zero, 1
001368  bbef1500  bneq r11, r1, 1016
00136c  b3000028  zext_int2long r[2:3], zero
001370  73341fca  store.d r[2:3], -856(r30)
001374  9f002000  addli r1, zero, 16
001378  3d000000  xfence
00137c  33840028  zext_int2long r[9:10], r1
001380  00a00300  mfence { lm, sm, gm }
001384  db030000  j 28
001388  9f703000  addli r1, zero, 31
00138c  6b540fcb  load.d r[9:10], -848(r30)
001390  b3800028  zext_int2long r[2:3], r1
001394  93201404  setlt.ul r1, r[9:10], r[2:3]
001398  27140400  addli.d r[9:10], r[9:10], 1
00139c  b7ee0000  beq r1, zero, 952
0013a0  9f700000  addli r1, zero, 7
0013a4  73388fca  store.d r[9:10], -848(r30)
0013a8  97301402  sll.d r[2:3], r[9:10], r1
0013ac  bbd1e700  bneq r15, r14, 116
0013b0  33040028  zext_int2long r[9:10], zero
0013b4  db050000  j 44
0013b8  9b450601  srli r11, r12, 16
0013bc  9b851500  andi r11, r11, 1
0013c0  8b15b610  add.s r11, r12, r11
0013c4  8b951511  add.s r11, r11, r17
0013c8  97855500  and r11, r11, r5
0013cc  1326b405  setlt.ul r12, r[9:10], r[28:29]
0013d0  0b95a710  add.s r10, r15, r10
0013d4  27140400  addli.d r[9:10], r[9:10], 1
0013d8  7360b500  stores.w r11, 0(r10)
0013dc  b73e06fe  beq r12, zero, -84
0013e0  0b251410  add.ul r[11:12], r[9:10], r[2:3]
0013e4  1b352500  slli r10, r10, 2
0013e8  8b15a710  add.s r11, r14, r10
0013ec  6fc60500  loads.w r12, 0(r11)
0013f0  1708d600  and r16, r12, r13
0013f4  93050205  setlt.u r11, r4, r16
0013f8  3bd00500  bneq r11, zero, 20
0013fc  9f050600  addli r11, r12, 0
001400  13880105  setlt.u r16, r3, r16
001404  3b2f08fe  bneq r16, zero, -56
001408  5bf6ffff  j -80
00140c  ab054000  lui r11, 1024
001410  9715b600  or r11, r12, r11
001414  13880105  setlt.u r16, r3, r16
001418  bb5e08fe  bneq r16, zero, -76
00141c  dbf3ffff  j -100
001420  6b558fca  load.d r[11:12], -856(r30)
001424  db040000  j 36
001428  27450500  addli.d r[11:12], r[11:12], 4
00142c  8b94c710  add.s r9, r15, r12
001430  13246500  seteq.d r8, r[11:12], r[7:8]
001434  73e62401  stores.w r18, 12(r9)
001438  73e46401  stores.w r22, 8(r9)
00143c  73e29401  stores.w r25, 4(r9)
001440  73e0a401  stores.w r26, 0(r9)
001444  3b1d04fe  bneq r8, zero, -188
001448  0b241510  add.ul r[9:10], r[11:12], r[2:3]
00144c  1b362400  slli r12, r8, 2
001450  0b1dc710  add.s r26, r14, r12
001454  ef4bcd00  loads.w r23, 12(r26)
001458  978adb00  and r21, r23, r13
00145c  13045205  setlt.u r8, r4, r21
001460  3b300400  bneq r8, zero, 12
001464  1f890b00  addli r18, r23, 0
001468  db010000  j 12
00146c  2b044000  lui r8, 1024
001470  17998b00  or r18, r23, r8
001474  6f448d00  loads.w r8, 8(r26)
001478  170cd400  and r24, r8, r13
00147c  93048205  setlt.u r9, r4, r24
001480  3bb00400  bneq r9, zero, 12
001484  1f0b0400  addli r22, r8, 0
001488  db010000  j 12
00148c  ab044000  lui r9, 1024
001490  171b9400  or r22, r8, r9
001494  ef444d00  loads.w r9, 4(r26)
001498  9789d400  and r19, r9, r13
00149c  13083205  setlt.u r16, r4, r19
0014a0  3b300800  bneq r16, zero, 12
0014a4  9f8c0400  addli r25, r9, 0
0014a8  db010000  j 12
0014ac  2b084000  lui r16, 1024
0014b0  979c0401  or r25, r9, r16
0014b4  6f4a0d00  loads.w r20, 0(r26)
0014b8  1708da00  and r16, r20, r13
0014bc  130d0205  setlt.u r26, r4, r16
0014c0  3b500d00  bneq r26, zero, 20
0014c4  1f0d0a00  addli r26, r20, 0
0014c8  13880105  setlt.u r16, r3, r16
0014cc  37600800  beq r16, zero, 24
0014d0  5b050000  j 40
0014d4  2b0d4000  lui r26, 1024
0014d8  171daa01  or r26, r20, r26
0014dc  13880105  setlt.u r16, r3, r16
0014e0  3b600800  bneq r16, zero, 24
0014e4  1b480a01  srli r16, r20, 16
0014e8  1b081800  andi r16, r16, 1
0014ec  0b180a11  add.s r16, r20, r16
0014f0  0b181811  add.s r16, r16, r17
0014f4  170d5800  and r26, r16, r5
0014f8  13883105  setlt.u r16, r3, r19
0014fc  bb300800  bneq r16, zero, 44
001500  1bc80401  srli r16, r9, 16
001504  1b081800  andi r16, r16, 1
001508  8b940411  add.s r9, r9, r16
00150c  8b941411  add.s r9, r9, r17
001510  978c5400  and r25, r9, r5
001514  93848105  setlt.u r9, r3, r24
001518  37e00400  beq r9, zero, 24
00151c  13845105  setlt.u r8, r3, r21
001520  3b2c04fe  bneq r8, zero, -248
001524  5b050000  j 40
001528  93848105  setlt.u r9, r3, r24
00152c  bbcf04fe  bneq r9, zero, -16
001530  9b440401  srli r9, r8, 16
001534  9b841400  andi r9, r9, 1
001538  0b149410  add.s r8, r8, r9
00153c  0b141411  add.s r8, r8, r17
001540  170b5400  and r22, r8, r5
001544  13845105  setlt.u r8, r3, r21
001548  bb0b04fe  bneq r8, zero, -288
00154c  1bc40b01  srli r8, r23, 16
001550  1b041400  andi r8, r8, 1
001554  0b948b10  add.s r8, r23, r8
001558  0b141411  add.s r8, r8, r17
00155c  17095400  and r18, r8, r5
001560  5bd9ffff  j -312
001564  9f004000  addli r1, zero, 32
001568  3d000000  xfence
00156c  00a00300  mfence { lm, sm, gm }
001570  33840028  zext_int2long r[9:10], r1
001574  db030000  j 28
001578  9f705000  addli r1, zero, 47
00157c  6b540fcb  load.d r[9:10], -848(r30)
001580  b3800028  zext_int2long r[2:3], r1
001584  93201404  setlt.ul r1, r[9:10], r[2:3]
001588  27140400  addli.d r[9:10], r[9:10], 1
00158c  37a70000  beq r1, zero, 456
001590  9f700000  addli r1, zero, 7
001594  73388fca  store.d r[9:10], -848(r30)
001598  97391402  sll.d r[20:21], r[9:10], r1
00159c  bbd1e700  bneq r15, r14, 116
0015a0  33040028  zext_int2long r[9:10], zero
0015a4  db050000  j 44
0015a8  1b410501  srli r2, r10, 16
0015ac  1b011100  andi r2, r2, 1
0015b0  0b112510  add.s r2, r10, r2
0015b4  0b111111  add.s r2, r2, r17
0015b8  17015100  and r2, r2, r5
0015bc  1325b405  setlt.ul r10, r[9:10], r[28:29]
0015c0  8b901710  add.s r1, r15, r1
0015c4  27140400  addli.d r[9:10], r[9:10], 1
0015c8  73e02000  stores.w r2, 0(r1)
0015cc  b73e05fe  beq r10, zero, -84
0015d0  8b203411  add.ul r[2:3], r[9:10], r[20:21]
0015d4  9bb02000  slli r1, r1, 2
0015d8  0b111710  add.s r2, r14, r1
0015dc  6f450100  loads.w r10, 0(r2)
0015e0  9705d500  and r11, r10, r13
0015e4  1301b204  setlt.u r2, r4, r11
0015e8  3b500100  bneq r2, zero, 20
0015ec  1f010500  addli r2, r10, 0
0015f0  9385b104  setlt.u r11, r3, r11
0015f4  3baf05fe  bneq r11, zero, -56
0015f8  5bf6ffff  j -80
0015fc  2b014000  lui r2, 1024
001600  17112500  or r2, r10, r2
001604  9385b104  setlt.u r11, r3, r11
001608  bbde05fe  bneq r11, zero, -76
00160c  dbf3ffff  j -100
001610  33050028  zext_int2long r[11:12], zero
001614  db040000  j 36
001618  27450500  addli.d r[11:12], r[11:12], 4
00161c  0b91c710  add.s r2, r15, r12
001620  93206500  seteq.d r1, r[11:12], r[7:8]
001624  73662101  stores.w r18, 12(r2)
001628  73646101  stores.w r22, 8(r2)
00162c  73629101  stores.w r25, 4(r2)
001630  7360a101  stores.w r26, 0(r2)
001634  3b9d00fe  bneq r1, zero, -188
001638  8b203511  add.ul r[2:3], r[11:12], r[20:21]
00163c  1bb62000  slli r12, r1, 2
001640  0b1dc710  add.s r26, r14, r12
001644  ef4bcd00  loads.w r23, 12(r26)
001648  978adb00  and r21, r23, r13
00164c  93005205  setlt.u r1, r4, r21
001650  3bb00000  bneq r1, zero, 12
001654  1f890b00  addli r18, r23, 0
001658  db010000  j 12
00165c  ab004000  lui r1, 1024
001660  17991b00  or r18, r23, r1
001664  6f448d00  loads.w r8, 8(r26)
001668  170cd400  and r24, r8, r13
00166c  93008205  setlt.u r1, r4, r24
001670  3bb00000  bneq r1, zero, 12
001674  1f0b0400  addli r22, r8, 0
001678  db010000  j 12
00167c  ab004000  lui r1, 1024
001680  171b1400  or r22, r8, r1
001684  ef444d00  loads.w r9, 4(r26)
001688  9780d400  and r1, r9, r13
00168c  13011204  setlt.u r2, r4, r1
001690  3b300100  bneq r2, zero, 12
001694  9f8c0400  addli r25, r9, 0
001698  db010000  j 12
00169c  2b014000  lui r2, 1024
0016a0  979c2400  or r25, r9, r2
0016a4  6f410d00  loads.w r2, 0(r26)
0016a8  1708d100  and r16, r2, r13
0016ac  130d0205  setlt.u r26, r4, r16
0016b0  3b500d00  bneq r26, zero, 20
0016b4  1f0d0100  addli r26, r2, 0
0016b8  13880105  setlt.u r16, r3, r16
0016bc  37600800  beq r16, zero, 24
0016c0  5b050000  j 40
0016c4  2b0d4000  lui r26, 1024
0016c8  171da101  or r26, r2, r26
0016cc  13880105  setlt.u r16, r3, r16
0016d0  3b600800  bneq r16, zero, 24
0016d4  1b480101  srli r16, r2, 16
0016d8  1b081800  andi r16, r16, 1
0016dc  0b110111  add.s r2, r2, r16
0016e0  0b111111  add.s r2, r2, r17
0016e4  170d5100  and r26, r2, r5
0016e8  93801104  setlt.u r1, r3, r1
0016ec  bbb00000  bneq r1, zero, 44
0016f0  9bc00401  srli r1, r9, 16
0016f4  9b801000  andi r1, r1, 1
0016f8  8b901410  add.s r1, r9, r1
0016fc  8b901011  add.s r1, r1, r17
001700  978c5000  and r25, r1, r5
001704  93808105  setlt.u r1, r3, r24
001708  37e00000  beq r1, zero, 24
00170c  93805105  setlt.u r1, r3, r21
001710  3bac00fe  bneq r1, zero, -248
001714  5b050000  j 40
001718  93808105  setlt.u r1, r3, r24
00171c  bbcf00fe  bneq r1, zero, -16
001720  9b400401  srli r1, r8, 16
001724  9b801000  andi r1, r1, 1
001728  8b101410  add.s r1, r8, r1
00172c  8b901011  add.s r1, r1, r17
001730  178b5000  and r22, r1, r5
001734  93805105  setlt.u r1, r3, r21
001738  bb8b00fe  bneq r1, zero, -288
00173c  9bc00b01  srli r1, r23, 16
001740  9b801000  andi r1, r1, 1
001744  8b901b10  add.s r1, r23, r1
001748  8b901011  add.s r1, r1, r17
00174c  17895000  and r18, r1, r5
001750  5bd9ffff  j -312
001754  80350002  core_id r11
001758  9f048000  addli r9, zero, 64
00175c  00200100  mfence { sm }
001760  e3004ff9  loadli.w r1,  -864(r30)
001764  b7d70000  beq r1, zero, 500
001768  9f006000  addli r1, zero, 48
00176c  3d000000  xfence
001770  00a00300  mfence { lm, sm, gm }
001774  33840028  zext_int2long r[9:10], r1
001778  db030000  j 28
00177c  9f707000  addli r1, zero, 63
001780  6b540fcb  load.d r[9:10], -848(r30)
001784  b3800028  zext_int2long r[2:3], r1
001788  93201404  setlt.ul r1, r[9:10], r[2:3]
00178c  27140400  addli.d r[9:10], r[9:10], 1
001790  b7fe0000  beq r1, zero, 956
001794  9f700000  addli r1, zero, 7
001798  73388fca  store.d r[9:10], -848(r30)
00179c  97391402  sll.d r[20:21], r[9:10], r1
0017a0  bbd1e700  bneq r15, r14, 116
0017a4  33040028  zext_int2long r[9:10], zero
0017a8  db050000  j 44
0017ac  1b410501  srli r2, r10, 16
0017b0  1b011100  andi r2, r2, 1
0017b4  0b112510  add.s r2, r10, r2
0017b8  0b111111  add.s r2, r2, r17
0017bc  17015100  and r2, r2, r5
0017c0  1325b405  setlt.ul r10, r[9:10], r[28:29]
0017c4  8b901710  add.s r1, r15, r1
0017c8  27140400  addli.d r[9:10], r[9:10], 1
0017cc  73e02000  stores.w r2, 0(r1)
0017d0  b73e05fe  beq r10, zero, -84
0017d4  8b203411  add.ul r[2:3], r[9:10], r[20:21]
0017d8  9bb02000  slli r1, r1, 2
0017dc  0b111710  add.s r2, r14, r1
0017e0  6f450100  loads.w r10, 0(r2)
0017e4  9705d500  and r11, r10, r13
0017e8  1301b204  setlt.u r2, r4, r11
0017ec  3b500100  bneq r2, zero, 20
0017f0  1f010500  addli r2, r10, 0
0017f4  9385b104  setlt.u r11, r3, r11
0017f8  3baf05fe  bneq r11, zero, -56
0017fc  5bf6ffff  j -80
001800  2b014000  lui r2, 1024
001804  17112500  or r2, r10, r2
001808  9385b104  setlt.u r11, r3, r11
00180c  bbde05fe  bneq r11, zero, -76
001810  dbf3ffff  j -100
001814  33050028  zext_int2long r[11:12], zero
001818  db040000  j 36
00181c  27450500  addli.d r[11:12], r[11:12], 4
001820  0b91c710  add.s r2, r15, r12
001824  93206500  seteq.d r1, r[11:12], r[7:8]
001828  73662101  stores.w r18, 12(r2)
00182c  73646101  stores.w r22, 8(r2)
001830  73629101  stores.w r25, 4(r2)
001834  7360a101  stores.w r26, 0(r2)
001838  3b9d00fe  bneq r1, zero, -188
00183c  8b203511  add.ul r[2:3], r[11:12], r[20:21]
001840  1bb62000  slli r12, r1, 2
001844  0b1dc710  add.s r26, r14, r12
001848  ef4bcd00  loads.w r23, 12(r26)
00184c  978adb00  and r21, r23, r13
001850  93005205  setlt.u r1, r4, r21
001854  3bb00000  bneq r1, zero, 12
001858  1f890b00  addli r18, r23, 0
00185c  db010000  j 12
001860  ab004000  lui r1, 1024
001864  17991b00  or r18, r23, r1
001868  6f448d00  loads.w r8, 8(r26)
00186c  170cd400  and r24, r8, r13
001870  93008205  setlt.u r1, r4, r24
001874  3bb00000  bneq r1, zero, 12
001878  1f0b0400  addli r22, r8, 0
00187c  db010000  j 12
001880  ab004000  lui r1, 1024
001884  171b1400  or r22, r8, r1
001888  ef444d00  loads.w r9, 4(r26)
00188c  9780d400  and r1, r9, r13
001890  13011204  setlt.u r2, r4, r1
001894  3b300100  bneq r2, zero, 12
001898  9f8c0400  addli r25, r9, 0
00189c  db010000  j 12
0018a0  2b014000  lui r2, 1024
0018a4  979c2400  or r25, r9, r2
0018a8  6f410d00  loads.w r2, 0(r26)
0018ac  1708d100  and r16, r2, r13
0018b0  130d0205  setlt.u r26, r4, r16
0018b4  3b420d00  bneq r26, zero, 144
0018b8  1f0d0100  addli r26, r2, 0
0018bc  13880105  setlt.u r16, r3, r16
0018c0  3b600800  bneq r16, zero, 24
0018c4  1b480101  srli r16, r2, 16
0018c8  1b081800  andi r16, r16, 1
0018cc  0b110111  add.s r2, r2, r16
0018d0  0b111111  add.s r2, r2, r17
0018d4  170d5100  and r26, r2, r5
0018d8  93801104  setlt.u r1, r3, r1
0018dc  bbb00000  bneq r1, zero, 44
0018e0  9bc00401  srli r1, r9, 16
0018e4  9b801000  andi r1, r1, 1
0018e8  8b901410  add.s r1, r9, r1
0018ec  8b901011  add.s r1, r1, r17
0018f0  978c5000  and r25, r1, r5
0018f4  93808105  setlt.u r1, r3, r24
0018f8  37e00000  beq r1, zero, 24
0018fc  93805105  setlt.u r1, r3, r21
001900  3bfc00fe  bneq r1, zero, -228
001904  5b050000  j 40
001908  93808105  setlt.u r1, r3, r24
00190c  bbcf00fe  bneq r1, zero, -16
001910  9b400401  srli r1, r8, 16
001914  9b801000  andi r1, r1, 1
001918  8b101410  add.s r1, r8, r1
00191c  8b901011  add.s r1, r1, r17
001920  178b5000  and r22, r1, r5
001924  93805105  setlt.u r1, r3, r21
001928  bbdb00fe  bneq r1, zero, -268
00192c  9bc00b01  srli r1, r23, 16
001930  9b801000  andi r1, r1, 1
001934  8b901b10  add.s r1, r23, r1
001938  8b901011  add.s r1, r1, r17
00193c  17895000  and r18, r1, r5
001940  dbdbffff  j -292
001944  2b0d4000  lui r26, 1024
001948  171da101  or r26, r2, r26
00194c  13880105  setlt.u r16, r3, r16
001950  b75d08fe  beq r16, zero, -140
001954  dbf0ffff  j -124
001958  9f400000  addli r1, zero, 4
00195c  3b981500  bneq r11, r1, 516
001960  3d000000  xfence
001964  00a00300  mfence { lm, sm, gm }
001968  6b540fcc  load.d r[9:10], -832(r30)
00196c  db030000  j 28
001970  9f709000  addli r1, zero, 79
001974  6b540fcc  load.d r[9:10], -832(r30)
001978  b3800028  zext_int2long r[2:3], r1
00197c  93201404  setlt.ul r1, r[9:10], r[2:3]
001980  27140400  addli.d r[9:10], r[9:10], 1
001984  b79f0000  beq r1, zero, 996
001988  9f700000  addli r1, zero, 7
00198c  73308fcc  store.d r[9:10], -832(r30)
001990  97301402  sll.d r[2:3], r[9:10], r1
001994  bbd1e700  bneq r15, r14, 116
001998  33040028  zext_int2long r[9:10], zero
00199c  db050000  j 44
0019a0  9b450601  srli r11, r12, 16
0019a4  9b851500  andi r11, r11, 1
0019a8  8b15b610  add.s r11, r12, r11
0019ac  8b951511  add.s r11, r11, r17
0019b0  97855500  and r11, r11, r5
0019b4  1326b405  setlt.ul r12, r[9:10], r[28:29]
0019b8  0b95a710  add.s r10, r15, r10
0019bc  27140400  addli.d r[9:10], r[9:10], 1
0019c0  7360b500  stores.w r11, 0(r10)
0019c4  b73e06fe  beq r12, zero, -84
0019c8  0b251410  add.ul r[11:12], r[9:10], r[2:3]
0019cc  1b352500  slli r10, r10, 2
0019d0  8b15a710  add.s r11, r14, r10
0019d4  6fc60500  loads.w r12, 0(r11)
0019d8  1708d600  and r16, r12, r13
0019dc  93050205  setlt.u r11, r4, r16
0019e0  3bd00500  bneq r11, zero, 20
0019e4  9f050600  addli r11, r12, 0
0019e8  13880105  setlt.u r16, r3, r16
0019ec  3b2f08fe  bneq r16, zero, -56
0019f0  5bf6ffff  j -80
0019f4  ab054000  lui r11, 1024
0019f8  9715b600  or r11, r12, r11
0019fc  13880105  setlt.u r16, r3, r16
001a00  bb5e08fe  bneq r16, zero, -76
001a04  dbf3ffff  j -100
001a08  33050028  zext_int2long r[11:12], zero
001a0c  db040000  j 36
001a10  27450500  addli.d r[11:12], r[11:12], 4
001a14  8b94c710  add.s r9, r15, r12
001a18  13246500  seteq.d r8, r[11:12], r[7:8]
001a1c  73e62401  stores.w r18, 12(r9)
001a20  73e45401  stores.w r21, 8(r9)
001a24  73e26401  stores.w r22, 4(r9)
001a28  73e07401  stores.w r23, 0(r9)
001a2c  3b1d04fe  bneq r8, zero, -188
001a30  0b241510  add.ul r[9:10], r[11:12], r[2:3]
001a34  1b362400  slli r12, r8, 2
001a38  8b1bc710  add.s r23, r14, r12
001a3c  efc9cb00  loads.w r19, 12(r23)
001a40  178ad900  and r20, r19, r13
001a44  13044205  setlt.u r8, r4, r20
001a48  3b300400  bneq r8, zero, 12
001a4c  1f890900  addli r18, r19, 0
001a50  db010000  j 12
001a54  2b044000  lui r8, 1024
001a58  17998900  or r18, r19, r8
001a5c  6fc48b00  loads.w r8, 8(r23)
001a60  170cd400  and r24, r8, r13
001a64  93048205  setlt.u r9, r4, r24
001a68  3bb00400  bneq r9, zero, 12
001a6c  9f0a0400  addli r21, r8, 0
001a70  db010000  j 12
001a74  ab044000  lui r9, 1024
001a78  971a9400  or r21, r8, r9
001a7c  efc44b00  loads.w r9, 4(r23)
001a80  978cd400  and r25, r9, r13
001a84  13089205  setlt.u r16, r4, r25
001a88  3b300800  bneq r16, zero, 12
001a8c  1f8b0400  addli r22, r9, 0
001a90  db010000  j 12
001a94  2b084000  lui r16, 1024
001a98  179b0401  or r22, r9, r16
001a9c  6fcd0b00  loads.w r26, 0(r23)
001aa0  1708dd00  and r16, r26, r13
001aa4  930b0205  setlt.u r23, r4, r16
001aa8  3bc20b00  bneq r23, zero, 144
001aac  9f0b0d00  addli r23, r26, 0
001ab0  13880105  setlt.u r16, r3, r16
001ab4  3b600800  bneq r16, zero, 24
001ab8  1b480d01  srli r16, r26, 16
001abc  1b081800  andi r16, r16, 1
001ac0  0b180d11  add.s r16, r26, r16
001ac4  0b181811  add.s r16, r16, r17
001ac8  970b5800  and r23, r16, r5
001acc  13889105  setlt.u r16, r3, r25
001ad0  bb300800  bneq r16, zero, 44
001ad4  1bc80401  srli r16, r9, 16
001ad8  1b081800  andi r16, r16, 1
001adc  8b940411  add.s r9, r9, r16
001ae0  8b941411  add.s r9, r9, r17
001ae4  178b5400  and r22, r9, r5
001ae8  93848105  setlt.u r9, r3, r24
001aec  37e00400  beq r9, zero, 24
001af0  13844105  setlt.u r8, r3, r20
001af4  3b7c04fe  bneq r8, zero, -228
001af8  5b050000  j 40
001afc  93848105  setlt.u r9, r3, r24
001b00  bbcf04fe  bneq r9, zero, -16
001b04  9b440401  srli r9, r8, 16
001b08  9b841400  andi r9, r9, 1
001b0c  0b149410  add.s r8, r8, r9
001b10  0b141411  add.s r8, r8, r17
001b14  970a5400  and r21, r8, r5
001b18  13844105  setlt.u r8, r3, r20
001b1c  bb5b04fe  bneq r8, zero, -268
001b20  1bc40901  srli r8, r19, 16
001b24  1b041400  andi r8, r8, 1
001b28  0b948910  add.s r8, r19, r8
001b2c  0b141411  add.s r8, r8, r17
001b30  17095400  and r18, r8, r5
001b34  dbdbffff  j -292
001b38  ab0b4000  lui r23, 1024
001b3c  971b7d01  or r23, r26, r23
001b40  13880105  setlt.u r16, r3, r16
001b44  b75d08fe  beq r16, zero, -140
001b48  dbf0ffff  j -124
001b4c  80350002  core_id r11
001b50  9f048000  addli r9, zero, 64
001b54  00200100  mfence { sm }
001b58  9f400000  addli r1, zero, 4
001b5c  379815fe  beq r11, r1, -508
001b60  9f700000  addli r1, zero, 7
001b64  37e81500  beq r11, r1, 536
001b68  9f600000  addli r1, zero, 6
001b6c  b7ef1500  beq r11, r1, 1016
001b70  9f500000  addli r1, zero, 5
001b74  bbb71502  bneq r11, r1, 1516
001b78  9f00a000  addli r1, zero, 80
001b7c  3d000000  xfence
001b80  00a00300  mfence { lm, sm, gm }
001b84  33840028  zext_int2long r[9:10], r1
001b88  db030000  j 28
001b8c  9f70b000  addli r1, zero, 95
001b90  6b540fcc  load.d r[9:10], -832(r30)
001b94  b3800028  zext_int2long r[2:3], r1
001b98  93201404  setlt.ul r1, r[9:10], r[2:3]
001b9c  27140400  addli.d r[9:10], r[9:10], 1
001ba0  b7d60002  beq r1, zero, 1460
001ba4  9f700000  addli r1, zero, 7
001ba8  73308fcc  store.d r[9:10], -832(r30)
001bac  97391402  sll.d r[20:21], r[9:10], r1
001bb0  bbd1e700  bneq r15, r14, 116
001bb4  33040028  zext_int2long r[9:10], zero
001bb8  db050000  j 44
001bbc  1b410501  srli r2, r10, 16
001bc0  1b011100  andi r2, r2, 1
001bc4  0b112510  add.s r2, r10, r2
001bc8  0b111111  add.s r2, r2, r17
001bcc  17015100  and r2, r2, r5
001bd0  1325b405  setlt.ul r10, r[9:10], r[28:29]
001bd4  8b901710  add.s r1, r15, r1
001bd8  27140400  addli.d r[9:10], r[9:10], 1
001bdc  73e02000  stores.w r2, 0(r1)
001be0  b73e05fe  beq r10, zero, -84
001be4  8b203411  add.ul r[2:3], r[9:10], r[20:21]
001be8  9bb02000  slli r1, r1, 2
001bec  0b111710  add.s r2, r14, r1
001bf0  6f450100  loads.w r10, 0(r2)
001bf4  9705d500  and r11, r10, r13
001bf8  1301b204  setlt.u r2, r4, r11
001bfc  3b500100  bneq r2, zero, 20
001c00  1f010500  addli r2, r10, 0
001c04  9385b104  setlt.u r11, r3, r11
001c08  3baf05fe  bneq r11, zero, -56
001c0c  5bf6ffff  j -80
001c10  2b014000  lui r2, 1024
001c14  17112500  or r2, r10, r2
001c18  9385b104  setlt.u r11, r3, r11
001c1c  bbde05fe  bneq r11, zero, -76
001c20  dbf3ffff  j -100
001c24  33050028  zext_int2long r[11:12], zero
001c28  db040000  j 36
001c2c  27450500  addli.d r[11:12], r[11:12], 4
001c30  0b91c710  add.s r2, r15, r12
001c34  93206500  seteq.d r1, r[11:12], r[7:8]
001c38  73662101  stores.w r18, 12(r2)
001c3c  73647101  stores.w r23, 8(r2)
001c40  73629101  stores.w r25, 4(r2)
001c44  7360a101  stores.w r26, 0(r2)
001c48  3b9d00fe  bneq r1, zero, -188
001c4c  8b203511  add.ul r[2:3], r[11:12], r[20:21]
001c50  1bb62000  slli r12, r1, 2
001c54  0b1dc710  add.s r26, r14, r12
001c58  ef4acd00  loads.w r21, 12(r26)
001c5c  178bda00  and r22, r21, r13
001c60  93006205  setlt.u r1, r4, r22
001c64  3bb00000  bneq r1, zero, 12
001c68  1f890a00  addli r18, r21, 0
001c6c  db010000  j 12
001c70  ab004000  lui r1, 1024
001c74  17991a00  or r18, r21, r1
001c78  6f448d00  loads.w r8, 8(r26)
001c7c  170cd400  and r24, r8, r13
001c80  93008205  setlt.u r1, r4, r24
001c84  3bb00000  bneq r1, zero, 12
001c88  9f0b0400  addli r23, r8, 0
001c8c  db010000  j 12
001c90  ab004000  lui r1, 1024
001c94  971b1400  or r23, r8, r1
001c98  ef444d00  loads.w r9, 4(r26)
001c9c  9780d400  and r1, r9, r13
001ca0  13011204  setlt.u r2, r4, r1
001ca4  3b300100  bneq r2, zero, 12
001ca8  9f8c0400  addli r25, r9, 0
001cac  db010000  j 12
001cb0  2b014000  lui r2, 1024
001cb4  979c2400  or r25, r9, r2
001cb8  6f410d00  loads.w r2, 0(r26)
001cbc  1708d100  and r16, r2, r13
001cc0  130d0205  setlt.u r26, r4, r16
001cc4  3b420d00  bneq r26, zero, 144
001cc8  1f0d0100  addli r26, r2, 0
001ccc  13880105  setlt.u r16, r3, r16
001cd0  3b600800  bneq r16, zero, 24
001cd4  1b480101  srli r16, r2, 16
001cd8  1b081800  andi r16, r16, 1
001cdc  0b110111  add.s r2, r2, r16
001ce0  0b111111  add.s r2, r2, r17
001ce4  170d5100  and r26, r2, r5
001ce8  93801104  setlt.u r1, r3, r1
001cec  bbb00000  bneq r1, zero, 44
001cf0  9bc00401  srli r1, r9, 16
001cf4  9b801000  andi r1, r1, 1
001cf8  8b901410  add.s r1, r9, r1
001cfc  8b901011  add.s r1, r1, r17
001d00  978c5000  and r25, r1, r5
001d04  93808105  setlt.u r1, r3, r24
001d08  37e00000  beq r1, zero, 24
001d0c  93806105  setlt.u r1, r3, r22
001d10  3bfc00fe  bneq r1, zero, -228
001d14  5b050000  j 40
001d18  93808105  setlt.u r1, r3, r24
001d1c  bbcf00fe  bneq r1, zero, -16
001d20  9b400401  srli r1, r8, 16
001d24  9b801000  andi r1, r1, 1
001d28  8b101410  add.s r1, r8, r1
001d2c  8b901011  add.s r1, r1, r17
001d30  978b5000  and r23, r1, r5
001d34  93806105  setlt.u r1, r3, r22
001d38  bbdb00fe  bneq r1, zero, -268
001d3c  9bc00a01  srli r1, r21, 16
001d40  9b801000  andi r1, r1, 1
001d44  8b901a10  add.s r1, r21, r1
001d48  8b901011  add.s r1, r1, r17
001d4c  17895000  and r18, r1, r5
001d50  dbdbffff  j -292
001d54  2b0d4000  lui r26, 1024
001d58  171da101  or r26, r2, r26
001d5c  13880105  setlt.u r16, r3, r16
001d60  b75d08fe  beq r16, zero, -140
001d64  dbf0ffff  j -124
001d68  80350002  core_id r11
001d6c  9f048000  addli r9, zero, 64
001d70  00200100  mfence { sm }
001d74  9f700000  addli r1, zero, 7
001d78  bbc715fe  bneq r11, r1, -528
001d7c  9f00e000  addli r1, zero, 112
001d80  3d000000  xfence
001d84  00a00300  mfence { lm, sm, gm }
001d88  33840028  zext_int2long r[9:10], r1
001d8c  db020000  j 20
001d90  6b540fcc  load.d r[9:10], -832(r30)
001d94  9320b405  setlt.ul r1, r[9:10], r[28:29]
001d98  27140400  addli.d r[9:10], r[9:10], 1
001d9c  b7ee0000  beq r1, zero, 952
001da0  9f700000  addli r1, zero, 7
001da4  73308fcc  store.d r[9:10], -832(r30)
001da8  97391402  sll.d r[20:21], r[9:10], r1
001dac  bbd1e700  bneq r15, r14, 116
001db0  33040028  zext_int2long r[9:10], zero
001db4  db050000  j 44
001db8  1b410501  srli r2, r10, 16
001dbc  1b011100  andi r2, r2, 1
001dc0  0b112510  add.s r2, r10, r2
001dc4  0b111111  add.s r2, r2, r17
001dc8  17015100  and r2, r2, r5
001dcc  1325b405  setlt.ul r10, r[9:10], r[28:29]
001dd0  8b901710  add.s r1, r15, r1
001dd4  27140400  addli.d r[9:10], r[9:10], 1
001dd8  73e02000  stores.w r2, 0(r1)
001ddc  b75e05fe  beq r10, zero, -76
001de0  8b203411  add.ul r[2:3], r[9:10], r[20:21]
001de4  9bb02000  slli r1, r1, 2
001de8  0b111710  add.s r2, r14, r1
001dec  6f450100  loads.w r10, 0(r2)
001df0  9705d500  and r11, r10, r13
001df4  1301b204  setlt.u r2, r4, r11
001df8  3b500100  bneq r2, zero, 20
001dfc  1f010500  addli r2, r10, 0
001e00  9385b104  setlt.u r11, r3, r11
001e04  3baf05fe  bneq r11, zero, -56
001e08  5bf6ffff  j -80
001e0c  2b014000  lui r2, 1024
001e10  17112500  or r2, r10, r2
001e14  9385b104  setlt.u r11, r3, r11
001e18  bbde05fe  bneq r11, zero, -76
001e1c  dbf3ffff  j -100
001e20  33050028  zext_int2long r[11:12], zero
001e24  db040000  j 36
001e28  27450500  addli.d r[11:12], r[11:12], 4
001e2c  0b91c710  add.s r2, r15, r12
001e30  93206500  seteq.d r1, r[11:12], r[7:8]
001e34  73662101  stores.w r18, 12(r2)
001e38  73647101  stores.w r23, 8(r2)
001e3c  73629101  stores.w r25, 4(r2)
001e40  7360a101  stores.w r26, 0(r2)
001e44  3bbd00fe  bneq r1, zero, -180
001e48  8b203511  add.ul r[2:3], r[11:12], r[20:21]
001e4c  1bb62000  slli r12, r1, 2
001e50  0b1dc710  add.s r26, r14, r12
001e54  ef4acd00  loads.w r21, 12(r26)
001e58  178bda00  and r22, r21, r13
001e5c  93006205  setlt.u r1, r4, r22
001e60  3bb00000  bneq r1, zero, 12
001e64  1f890a00  addli r18, r21, 0
001e68  db010000  j 12
001e6c  ab004000  lui r1, 1024
001e70  17991a00  or r18, r21, r1
001e74  6f448d00  loads.w r8, 8(r26)
001e78  170cd400  and r24, r8, r13
001e7c  93008205  setlt.u r1, r4, r24
001e80  3bb00000  bneq r1, zero, 12
001e84  9f0b0400  addli r23, r8, 0
001e88  db010000  j 12
001e8c  ab004000  lui r1, 1024
001e90  971b1400  or r23, r8, r1
001e94  ef444d00  loads.w r9, 4(r26)
001e98  9780d400  and r1, r9, r13
001e9c  13011204  setlt.u r2, r4, r1
001ea0  3b300100  bneq r2, zero, 12
001ea4  9f8c0400  addli r25, r9, 0
001ea8  db010000  j 12
001eac  2b014000  lui r2, 1024
001eb0  979c2400  or r25, r9, r2
001eb4  6f410d00  loads.w r2, 0(r26)
001eb8  1708d100  and r16, r2, r13
001ebc  130d0205  setlt.u r26, r4, r16
001ec0  3b500d00  bneq r26, zero, 20
001ec4  1f0d0100  addli r26, r2, 0
001ec8  13880105  setlt.u r16, r3, r16
001ecc  37600800  beq r16, zero, 24
001ed0  5b050000  j 40
001ed4  2b0d4000  lui r26, 1024
001ed8  171da101  or r26, r2, r26
001edc  13880105  setlt.u r16, r3, r16
001ee0  3b600800  bneq r16, zero, 24
001ee4  1b480101  srli r16, r2, 16
001ee8  1b081800  andi r16, r16, 1
001eec  0b110111  add.s r2, r2, r16
001ef0  0b111111  add.s r2, r2, r17
001ef4  170d5100  and r26, r2, r5
001ef8  93801104  setlt.u r1, r3, r1
001efc  bbb00000  bneq r1, zero, 44
001f00  9bc00401  srli r1, r9, 16
001f04  9b801000  andi r1, r1, 1
001f08  8b901410  add.s r1, r9, r1
001f0c  8b901011  add.s r1, r1, r17
001f10  978c5000  and r25, r1, r5
001f14  93808105  setlt.u r1, r3, r24
001f18  37e00000  beq r1, zero, 24
001f1c  93806105  setlt.u r1, r3, r22
001f20  3bac00fe  bneq r1, zero, -248
001f24  5b050000  j 40
001f28  93808105  setlt.u r1, r3, r24
001f2c  bbcf00fe  bneq r1, zero, -16
001f30  9b400401  srli r1, r8, 16
001f34  9b801000  andi r1, r1, 1
001f38  8b101410  add.s r1, r8, r1
001f3c  8b901011  add.s r1, r1, r17
001f40  978b5000  and r23, r1, r5
001f44  93806105  setlt.u r1, r3, r22
001f48  bb8b00fe  bneq r1, zero, -288
001f4c  9bc00a01  srli r1, r21, 16
001f50  9b801000  andi r1, r1, 1
001f54  8b901a10  add.s r1, r21, r1
001f58  8b901011  add.s r1, r1, r17
001f5c  17895000  and r18, r1, r5
001f60  5bd9ffff  j -312
001f64  9f00c000  addli r1, zero, 96
001f68  3d000000  xfence
001f6c  00a00300  mfence { lm, sm, gm }
001f70  33840028  zext_int2long r[9:10], r1
001f74  db030000  j 28
001f78  9f70d000  addli r1, zero, 111
001f7c  6b540fcc  load.d r[9:10], -832(r30)
001f80  b3800028  zext_int2long r[2:3], r1
001f84  93201404  setlt.ul r1, r[9:10], r[2:3]
001f88  27140400  addli.d r[9:10], r[9:10], 1
001f8c  37a70000  beq r1, zero, 456
001f90  9f700000  addli r1, zero, 7
001f94  73308fcc  store.d r[9:10], -832(r30)
001f98  97391402  sll.d r[20:21], r[9:10], r1
001f9c  bbd1e700  bneq r15, r14, 116
001fa0  33040028  zext_int2long r[9:10], zero
001fa4  db050000  j 44
001fa8  1b410501  srli r2, r10, 16
001fac  1b011100  andi r2, r2, 1
001fb0  0b112510  add.s r2, r10, r2
001fb4  0b111111  add.s r2, r2, r17
001fb8  17015100  and r2, r2, r5
001fbc  1325b405  setlt.ul r10, r[9:10], r[28:29]
001fc0  8b901710  add.s r1, r15, r1
001fc4  27140400  addli.d r[9:10], r[9:10], 1
001fc8  73e02000  stores.w r2, 0(r1)
001fcc  b73e05fe  beq r10, zero, -84
001fd0  8b203411  add.ul r[2:3], r[9:10], r[20:21]
001fd4  9bb02000  slli r1, r1, 2
001fd8  0b111710  add.s r2, r14, r1
001fdc  6f450100  loads.w r10, 0(r2)
001fe0  9705d500  and r11, r10, r13
001fe4  1301b204  setlt.u r2, r4, r11
001fe8  3b500100  bneq r2, zero, 20
001fec  1f010500  addli r2, r10, 0
001ff0  9385b104  setlt.u r11, r3, r11
001ff4  3baf05fe  bneq r11, zero, -56
001ff8  5bf6ffff  j -80
001ffc  2b014000  lui r2, 1024
002000  17112500  or r2, r10, r2
002004  9385b104  setlt.u r11, r3, r11
002008  bbde05fe  bneq r11, zero, -76
00200c  dbf3ffff  j -100
002010  33050028  zext_int2long r[11:12], zero
002014  db040000  j 36
002018  27450500  addli.d r[11:12], r[11:12], 4
00201c  0b91c710  add.s r2, r15, r12
002020  93206500  seteq.d r1, r[11:12], r[7:8]
002024  73662101  stores.w r18, 12(r2)
002028  73647101  stores.w r23, 8(r2)
00202c  73629101  stores.w r25, 4(r2)
002030  7360a101  stores.w r26, 0(r2)
002034  3b9d00fe  bneq r1, zero, -188
002038  8b203511  add.ul r[2:3], r[11:12], r[20:21]
00203c  1bb62000  slli r12, r1, 2
002040  0b1dc710  add.s r26, r14, r12
002044  ef4acd00  loads.w r21, 12(r26)
002048  178bda00  and r22, r21, r13
00204c  93006205  setlt.u r1, r4, r22
002050  3bb00000  bneq r1, zero, 12
002054  1f890a00  addli r18, r21, 0
002058  db010000  j 12
00205c  ab004000  lui r1, 1024
002060  17991a00  or r18, r21, r1
002064  6f448d00  loads.w r8, 8(r26)
002068  170cd400  and r24, r8, r13
00206c  93008205  setlt.u r1, r4, r24
002070  3bb00000  bneq r1, zero, 12
002074  9f0b0400  addli r23, r8, 0
002078  db010000  j 12
00207c  ab004000  lui r1, 1024
002080  971b1400  or r23, r8, r1
002084  ef444d00  loads.w r9, 4(r26)
002088  9780d400  and r1, r9, r13
00208c  13011204  setlt.u r2, r4, r1
002090  3b300100  bneq r2, zero, 12
002094  9f8c0400  addli r25, r9, 0
002098  db010000  j 12
00209c  2b014000  lui r2, 1024
0020a0  979c2400  or r25, r9, r2
0020a4  6f410d00  loads.w r2, 0(r26)
0020a8  1708d100  and r16, r2, r13
0020ac  130d0205  setlt.u r26, r4, r16
0020b0  3b500d00  bneq r26, zero, 20
0020b4  1f0d0100  addli r26, r2, 0
0020b8  13880105  setlt.u r16, r3, r16
0020bc  37600800  beq r16, zero, 24
0020c0  5b050000  j 40
0020c4  2b0d4000  lui r26, 1024
0020c8  171da101  or r26, r2, r26
0020cc  13880105  setlt.u r16, r3, r16
0020d0  3b600800  bneq r16, zero, 24
0020d4  1b480101  srli r16, r2, 16
0020d8  1b081800  andi r16, r16, 1
0020dc  0b110111  add.s r2, r2, r16
0020e0  0b111111  add.s r2, r2, r17
0020e4  170d5100  and r26, r2, r5
0020e8  93801104  setlt.u r1, r3, r1
0020ec  bbb00000  bneq r1, zero, 44
0020f0  9bc00401  srli r1, r9, 16
0020f4  9b801000  andi r1, r1, 1
0020f8  8b901410  add.s r1, r9, r1
0020fc  8b901011  add.s r1, r1, r17
002100  978c5000  and r25, r1, r5
002104  93808105  setlt.u r1, r3, r24
002108  37e00000  beq r1, zero, 24
00210c  93806105  setlt.u r1, r3, r22
002110  3bac00fe  bneq r1, zero, -248
002114  5b050000  j 40
002118  93808105  setlt.u r1, r3, r24
00211c  bbcf00fe  bneq r1, zero, -16
002120  9b400401  srli r1, r8, 16
002124  9b801000  andi r1, r1, 1
002128  8b101410  add.s r1, r8, r1
00212c  8b901011  add.s r1, r1, r17
002130  978b5000  and r23, r1, r5
002134  93806105  setlt.u r1, r3, r22
002138  bb8b00fe  bneq r1, zero, -288
00213c  9bc00a01  srli r1, r21, 16
002140  9b801000  andi r1, r1, 1
002144  8b901a10  add.s r1, r21, r1
002148  8b901011  add.s r1, r1, r17
00214c  17895000  and r18, r1, r5
002150  5bd9ffff  j -312
002154  80350002  core_id r11
002158  9f048000  addli r9, zero, 64
00215c  00200100  mfence { sm }
002160  9f70f001  addli r1, zero, 255
002164  80a20004  csr_set csr5, r1
002168  00e00200  sync_core
00216c  e3004ff9  loadli.w r1,  -864(r30)
002170  bbea00f2  bneq r1, zero, -6472
002174  9f0b0001  addli r23, zero, 128
002178  1f580000  addli r16, zero, 5
00217c  1f1b0000  addli r22, zero, 1
002180  1f2e0000  addli r28, zero, 2
002184  9f0d4000  addli r27, zero, 32
002188  bbea05f2  bneq r11, zero, -6472
00218c  e300fff8  loadli.w r1,  -904(r30)
002190  1f040007  addli r8, zero, 896
002194  6345fff8  loadli.w r10,  -900(r30)
002198  6b598fc8  load.d r[19:20], -888(r30)
00219c  1f262000  addli r12, zero, 18
0021a0  6b5a0f01  load.d r[21:22], 16(r30)
0021a4  1f078000  addli r14, zero, 64
0021a8  33040428  zext_int2long r[9:10], r8
0021ac  b3800028  zext_int2long r[2:3], r1
0021b0  33150528  sext_int2long r[11:12], r10
0021b4  1739c902  sll.d r[19:20], r[19:20], r12
0021b8  1f461000  addli r12, zero, 12
0021bc  0ba48040  min.ul r[9:10], r[2:3], r[9:10]
0021c0  0b292a11  add.ul r[19:20], r[21:22], r[19:20]
0021c4  6b5a0fc8  load.d r[21:22], -896(r30)
0021c8  27040401  addli.d r[9:10], r[9:10], 128
0021cc  173a6a03  sll.d r[21:22], r[21:22], r22
0021d0  0b241448  max.ul r[9:10], r[9:10], r[2:3]
0021d4  8b301418  sub.sl r[2:3], r[9:10], r[2:3]
0021d8  6b548fcb  load.d r[9:10], -840(r30)
0021dc  7d100600  xwait r12, 0
0021e0  1d000800  lock zero, r16
0021e4  1b960704  ori r12, r15, 64
0021e8  150b0b00  dma_cfg r22, r22, zero, 0
0021ec  8ba06040  min.ul r[2:3], r[2:3], r[7:8]
0021f0  15000b02  dma_cfg zero, r22, zero, 1
0021f4  0b348540  min.sl r[9:10], r[11:12], r[9:10]
0021f8  27040401  addli.d r[9:10], r[9:10], 128
0021fc  0b34a448  max.sl r[9:10], r[9:10], r[11:12]
002200  0b34a418  sub.sl r[9:10], r[9:10], r[11:12]
002204  0b254911  add.ul r[11:12], r[19:20], r[21:22]
002208  95050004  dma_cfg r11, zero, zero, 2
00220c  0b336440  min.sl r[7:8], r[9:10], r[7:8]
002210  9f048000  addli r9, zero, 64
002214  1505e606  dma_cfg r10, r12, r14, 3
002218  1ff53000  addli r10, r1, 31
00221c  9bb01000  slli r1, r1, 1
002220  1f010004  addli r2, zero, 512
002224  80350002  core_id r11
002228  1b445500  srli r8, r10, 5
00222c  9b80e003  andi r1, r1, 62
002230  95848b08  dma_cfg r9, r23, r8, 4
002234  1f040010  addli r8, zero, 2048
002238  1504610a  dma_cfg r8, r2, r6, 5
00223c  15001010  dma_cfg zero, zero, r1, 8
002240  35000000  dma_run zero
002244  1500600b  dma_cfg zero, zero, r22, 5
002248  9f501000  addli r1, zero, 13
00224c  15000010  dma_cfg zero, zero, zero, 8
002250  1d100800  unlock r16
002254  5bbdfcff  j -6680
002258  7d000000  xsignal zero, 0
00225c  bbe00500  bneq r11, zero, 56
002260  9f200000  addli r1, zero, 2
002264  7d100000  xwait zero, 0
002268  7d100000  xwait zero, 0
00226c  7d100000  xwait zero, 0
002270  7d100000  xwait zero, 0
002274  7d100000  xwait zero, 0
002278  7d100000  xwait zero, 0
00227c  7d100000  xwait zero, 0
002280  7d100000  xwait zero, 0
002284  1d800000  lock zero, r1
002288  0d000020  ew_cfg zero, zero, zero, 16
00228c  1d900000  unlock r1
002290  7d400000  xsignal_mode_cfg zero
002294  9f8e3e07  addli sp, sp, 920
002298  00a00300  mfence { lm, sm, gm }
00229c  00100000  exit
0022a0  00100000  exit
0022a4  00100000  exit
0022a8  00100000  exit
0022ac  00100000  exit
0022b0  00100000  exit
0022b4  00100000  exit
0022b8  00100000  exit
0022bc  00100000  exit
0022c0  00100000  exit
0022c4  00100000  exit
0022c8  00100000  exit
0022cc  00100000  exit
0022d0  00100000  exit
0022d4  00100000  exit
0022d8  00100000  exit
0022dc  00100000  exit
0022e0  00100000  exit
0022e4  00100000  exit
0022e8  00100000  exit
0022ec  00100000  exit
0022f0  00100000  exit
0022f4  00100000  exit
0022f8  00100000  exit
0022fc  00100000  exit
002300  00100000  exit
002304  00100000  exit
002308  00100000  exit
00230c  00100000  exit
002310  00100000  exit
002314  00100000  exit
002318  00100000  exit
00231c  00100000  exit
002320  00100000  exit
002324  00100000  exit
002328  00100000  exit
00232c  00100000  exit
002330  00100000  exit
002334  00100000  exit
002338  00100000  exit
00233c  00100000  exit
002340  00100000  exit
002344  00100000  exit
002348  00100000  exit
00234c  00100000  exit
002350  00100000  exit
002354  00100000  exit
002358  00100000  exit
00235c  00100000  exit
002360  00100000  exit
002364  00100000  exit
002368  00100000  exit
00236c  00100000  exit
002370  00100000  exit
002374  00100000  exit
002378  00100000  exit
00237c  00100000  exit
002380  00100000  exit
002384  00100000  exit
002388  00100000  exit
00238c  00100000  exit
002390  00100000  exit
002394  00100000  exit
002398  00100000  exit
00239c  00100000  exit
0023a0  00100000  exit
0023a4  00100000  exit
0023a8  00100000  exit
0023ac  00100000  exit
0023b0  00100000  exit
0023b4  00100000  exit
0023b8  00100000  exit
0023bc  00100000  exit
0023c0  00100000  exit
0023c4  00100000  exit
0023c8  00100000  exit
0023cc  00100000  exit
0023d0  00100000  exit
0023d4  00100000  exit
0023d8  00100000  exit
0023dc  00100000  exit
0023e0  00100000  exit
0023e4  00100000  exit
0023e8  00100000  exit
0023ec  00100000  exit
0023f0  00100000  exit
0023f4  00100000  exit
0023f8  00100000  exit
0023fc  00100000  exit
002400  00100000  exit
002404  00100000  exit
002408  00100000  exit
00240c  00100000  exit
002410  00100000  exit
002414  00100000  exit
002418  00100000  exit
00241c  00100000  exit
002420  00100000  exit
002424  00100000  exit
002428  00100000  exit
00242c  00100000  exit
002430  00100000  exit
002434  00100000  exit
002438  00100000  exit
00243c  00100000  exit
002440  00100000  exit
002444  00100000  exit
002448  00100000  exit
00244c  00100000  exit
002450  00100000  exit
002454  00100000  exit
002458  00100000  exit
00245c  00100000  exit
002460  00100000  exit
002464  00100000  exit
002468  00100000  exit
00246c  00100000  exit
002470  00100000  exit
002474  00100000  exit
002478  00100000  exit
00247c  00100000  exit
002480  00100000  exit
002484  00100000  exit
002488  00100000  exit
00248c  00100000  exit
002490  00100000  exit
002494  00100000  exit
002498  00100000  exit
00249c  00100000  exit
0024a0  00100000  exit
0024a4  00100000  exit
0024a8  00100000  exit
0024ac  00100000  exit
0024b0  00100000  exit
0024b4  00100000  exit
0024b8  00100000  exit
0024bc  00100000  exit
0024c0  00100000  exit
0024c4  00100000  exit
0024c8  00100000  exit
0024cc  00100000  exit
0024d0  00100000  exit
0024d4  00100000  exit
0024d8  00100000  exit
0024dc  00100000  exit
