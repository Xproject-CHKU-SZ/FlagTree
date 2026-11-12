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
0000bc  00340002  core_id r8
0000c0  1f8f3e07  addli r30, sp, 920
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37600400  beq r8, zero, 24
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
000464  00d20002  load_param_i r4, 1
000468  e3014f00  loadli.w r3,  32(r30)
00046c  00530002  load_param_i r6, 0
000470  abf2ffff  lui r5, 1048575
000474  e7060ffe  storeli.w zero, -152(r30)
000478  67420ffc  storeli.w zero, -476(r30)
00047c  e7480ffa  storeli.w zero, -628(r30)
000480  e70c0ff8  storeli.w zero, -824(r30)
000484  8b101120  mul.s r1, r2, r1
000488  1f010200  addli r2, r4, 0
00048c  0b913050  fmac.s r2, r1, r3
000490  8b913020  mul.s r3, r1, r3
000494  1f71f1ff  addli r2, r2, -1
000498  0b114130  div.s r2, r2, r4
00049c  1b92f2ff  ori r4, r5, 4095
0004a0  e7464ffe  storeli.w r4, -148(r30)
0004a4  67074ffe  storeli.w r4, -144(r30)
0004a8  67474ffe  storeli.w r4, -140(r30)
0004ac  e7074ffe  storeli.w r4, -136(r30)
0004b0  e7474ffe  storeli.w r4, -132(r30)
0004b4  67084ffe  storeli.w r4, -128(r30)
0004b8  67484ffe  storeli.w r4, -124(r30)
0004bc  e7084ffe  storeli.w r4, -120(r30)
0004c0  e7484ffe  storeli.w r4, -116(r30)
0004c4  67094ffe  storeli.w r4, -112(r30)
0004c8  67494ffe  storeli.w r4, -108(r30)
0004cc  e7094ffe  storeli.w r4, -104(r30)
0004d0  e7494ffe  storeli.w r4, -100(r30)
0004d4  670a4ffe  storeli.w r4, -96(r30)
0004d8  674a4ffe  storeli.w r4, -92(r30)
0004dc  e70a4ffe  storeli.w r4, -88(r30)
0004e0  e74a4ffe  storeli.w r4, -84(r30)
0004e4  670b4ffe  storeli.w r4, -80(r30)
0004e8  674b4ffe  storeli.w r4, -76(r30)
0004ec  e70b4ffe  storeli.w r4, -72(r30)
0004f0  e74b4ffe  storeli.w r4, -68(r30)
0004f4  670c4ffe  storeli.w r4, -64(r30)
0004f8  674c4ffe  storeli.w r4, -60(r30)
0004fc  e70c4ffe  storeli.w r4, -56(r30)
000500  e74c4ffe  storeli.w r4, -52(r30)
000504  670d4ffe  storeli.w r4, -48(r30)
000508  674d4ffe  storeli.w r4, -44(r30)
00050c  e70d4ffe  storeli.w r4, -40(r30)
000510  e74d4ffe  storeli.w r4, -36(r30)
000514  670e4ffe  storeli.w r4, -32(r30)
000518  674e4ffe  storeli.w r4, -28(r30)
00051c  e70e4ffe  storeli.w r4, -24(r30)
000520  e74e4ffe  storeli.w r4, -20(r30)
000524  670f4ffe  storeli.w r4, -16(r30)
000528  674f4ffe  storeli.w r4, -12(r30)
00052c  e70f4ffe  storeli.w r4, -8(r30)
000530  e74f4ffe  storeli.w r4, -4(r30)
000534  e7024ffc  storeli.w r4, -472(r30)
000538  e7424ffc  storeli.w r4, -468(r30)
00053c  67034ffc  storeli.w r4, -464(r30)
000540  67434ffc  storeli.w r4, -460(r30)
000544  e7034ffc  storeli.w r4, -456(r30)
000548  e7434ffc  storeli.w r4, -452(r30)
00054c  67044ffc  storeli.w r4, -448(r30)
000550  67444ffc  storeli.w r4, -444(r30)
000554  e7044ffc  storeli.w r4, -440(r30)
000558  e7444ffc  storeli.w r4, -436(r30)
00055c  67054ffc  storeli.w r4, -432(r30)
000560  67454ffc  storeli.w r4, -428(r30)
000564  e7054ffc  storeli.w r4, -424(r30)
000568  e7454ffc  storeli.w r4, -420(r30)
00056c  67064ffc  storeli.w r4, -416(r30)
000570  67464ffc  storeli.w r4, -412(r30)
000574  e7064ffc  storeli.w r4, -408(r30)
000578  e7464ffc  storeli.w r4, -404(r30)
00057c  67074ffc  storeli.w r4, -400(r30)
000580  67474ffc  storeli.w r4, -396(r30)
000584  e7074ffc  storeli.w r4, -392(r30)
000588  e7474ffc  storeli.w r4, -388(r30)
00058c  67084ffc  storeli.w r4, -384(r30)
000590  67484ffc  storeli.w r4, -380(r30)
000594  e7084ffc  storeli.w r4, -376(r30)
000598  e7484ffc  storeli.w r4, -372(r30)
00059c  67094ffc  storeli.w r4, -368(r30)
0005a0  67494ffc  storeli.w r4, -364(r30)
0005a4  e7094ffc  storeli.w r4, -360(r30)
0005a8  e7494ffc  storeli.w r4, -356(r30)
0005ac  670a4ffc  storeli.w r4, -352(r30)
0005b0  674a4ffc  storeli.w r4, -348(r30)
0005b4  e70a4ffc  storeli.w r4, -344(r30)
0005b8  e74a4ffc  storeli.w r4, -340(r30)
0005bc  670b4ffc  storeli.w r4, -336(r30)
0005c0  674b4ffc  storeli.w r4, -332(r30)
0005c4  e70b4ffc  storeli.w r4, -328(r30)
0005c8  e74b4ffc  storeli.w r4, -324(r30)
0005cc  670c4ffc  storeli.w r4, -320(r30)
0005d0  674c4ffc  storeli.w r4, -316(r30)
0005d4  e70c4ffc  storeli.w r4, -312(r30)
0005d8  e74c4ffc  storeli.w r4, -308(r30)
0005dc  670d4ffc  storeli.w r4, -304(r30)
0005e0  674d4ffc  storeli.w r4, -300(r30)
0005e4  e70d4ffc  storeli.w r4, -296(r30)
0005e8  e74d4ffc  storeli.w r4, -292(r30)
0005ec  670e4ffc  storeli.w r4, -288(r30)
0005f0  674e4ffc  storeli.w r4, -284(r30)
0005f4  e70e4ffc  storeli.w r4, -280(r30)
0005f8  e74e4ffc  storeli.w r4, -276(r30)
0005fc  670f4ffc  storeli.w r4, -272(r30)
000600  674f4ffc  storeli.w r4, -268(r30)
000604  e70f4ffc  storeli.w r4, -264(r30)
000608  e74f4ffc  storeli.w r4, -260(r30)
00060c  67004ffe  storeli.w r4, -256(r30)
000610  67404ffe  storeli.w r4, -252(r30)
000614  e7004ffe  storeli.w r4, -248(r30)
000618  e7404ffe  storeli.w r4, -244(r30)
00061c  67014ffe  storeli.w r4, -240(r30)
000620  67414ffe  storeli.w r4, -236(r30)
000624  e7014ffe  storeli.w r4, -232(r30)
000628  e7414ffe  storeli.w r4, -228(r30)
00062c  67024ffe  storeli.w r4, -224(r30)
000630  67424ffe  storeli.w r4, -220(r30)
000634  e7024ffe  storeli.w r4, -216(r30)
000638  e7424ffe  storeli.w r4, -212(r30)
00063c  67034ffe  storeli.w r4, -208(r30)
000640  67434ffe  storeli.w r4, -204(r30)
000644  e7034ffe  storeli.w r4, -200(r30)
000648  e7434ffe  storeli.w r4, -196(r30)
00064c  67044ffe  storeli.w r4, -192(r30)
000650  67444ffe  storeli.w r4, -188(r30)
000654  e7044ffe  storeli.w r4, -184(r30)
000658  e7444ffe  storeli.w r4, -180(r30)
00065c  67054ffe  storeli.w r4, -176(r30)
000660  67454ffe  storeli.w r4, -172(r30)
000664  e7054ffe  storeli.w r4, -168(r30)
000668  e7454ffe  storeli.w r4, -164(r30)
00066c  67064ffe  storeli.w r4, -160(r30)
000670  67464ffe  storeli.w r4, -156(r30)
000674  67094ffa  storeli.w r4, -624(r30)
000678  67494ffa  storeli.w r4, -620(r30)
00067c  e7094ffa  storeli.w r4, -616(r30)
000680  e7494ffa  storeli.w r4, -612(r30)
000684  670a4ffa  storeli.w r4, -608(r30)
000688  674a4ffa  storeli.w r4, -604(r30)
00068c  e70a4ffa  storeli.w r4, -600(r30)
000690  e74a4ffa  storeli.w r4, -596(r30)
000694  670b4ffa  storeli.w r4, -592(r30)
000698  674b4ffa  storeli.w r4, -588(r30)
00069c  e70b4ffa  storeli.w r4, -584(r30)
0006a0  e74b4ffa  storeli.w r4, -580(r30)
0006a4  670c4ffa  storeli.w r4, -576(r30)
0006a8  674c4ffa  storeli.w r4, -572(r30)
0006ac  e70c4ffa  storeli.w r4, -568(r30)
0006b0  e74c4ffa  storeli.w r4, -564(r30)
0006b4  670d4ffa  storeli.w r4, -560(r30)
0006b8  674d4ffa  storeli.w r4, -556(r30)
0006bc  e70d4ffa  storeli.w r4, -552(r30)
0006c0  e74d4ffa  storeli.w r4, -548(r30)
0006c4  670e4ffa  storeli.w r4, -544(r30)
0006c8  674e4ffa  storeli.w r4, -540(r30)
0006cc  e70e4ffa  storeli.w r4, -536(r30)
0006d0  e74e4ffa  storeli.w r4, -532(r30)
0006d4  670f4ffa  storeli.w r4, -528(r30)
0006d8  674f4ffa  storeli.w r4, -524(r30)
0006dc  e70f4ffa  storeli.w r4, -520(r30)
0006e0  e74f4ffa  storeli.w r4, -516(r30)
0006e4  67004ffc  storeli.w r4, -512(r30)
0006e8  67404ffc  storeli.w r4, -508(r30)
0006ec  e7004ffc  storeli.w r4, -504(r30)
0006f0  e7404ffc  storeli.w r4, -500(r30)
0006f4  67014ffc  storeli.w r4, -496(r30)
0006f8  67414ffc  storeli.w r4, -492(r30)
0006fc  e7014ffc  storeli.w r4, -488(r30)
000700  e7414ffc  storeli.w r4, -484(r30)
000704  67024ffc  storeli.w r4, -480(r30)
000708  e74c4ff8  storeli.w r4, -820(r30)
00070c  670d4ff8  storeli.w r4, -816(r30)
000710  674d4ff8  storeli.w r4, -812(r30)
000714  e70d4ff8  storeli.w r4, -808(r30)
000718  e74d4ff8  storeli.w r4, -804(r30)
00071c  670e4ff8  storeli.w r4, -800(r30)
000720  674e4ff8  storeli.w r4, -796(r30)
000724  e70e4ff8  storeli.w r4, -792(r30)
000728  e74e4ff8  storeli.w r4, -788(r30)
00072c  670f4ff8  storeli.w r4, -784(r30)
000730  674f4ff8  storeli.w r4, -780(r30)
000734  e70f4ff8  storeli.w r4, -776(r30)
000738  e74f4ff8  storeli.w r4, -772(r30)
00073c  67004ffa  storeli.w r4, -768(r30)
000740  67404ffa  storeli.w r4, -764(r30)
000744  e7004ffa  storeli.w r4, -760(r30)
000748  e7404ffa  storeli.w r4, -756(r30)
00074c  67014ffa  storeli.w r4, -752(r30)
000750  67414ffa  storeli.w r4, -748(r30)
000754  e7014ffa  storeli.w r4, -744(r30)
000758  e7414ffa  storeli.w r4, -740(r30)
00075c  67024ffa  storeli.w r4, -736(r30)
000760  67424ffa  storeli.w r4, -732(r30)
000764  e7024ffa  storeli.w r4, -728(r30)
000768  e7424ffa  storeli.w r4, -724(r30)
00076c  67034ffa  storeli.w r4, -720(r30)
000770  67434ffa  storeli.w r4, -716(r30)
000774  e7034ffa  storeli.w r4, -712(r30)
000778  e7434ffa  storeli.w r4, -708(r30)
00077c  67044ffa  storeli.w r4, -704(r30)
000780  67444ffa  storeli.w r4, -700(r30)
000784  e7044ffa  storeli.w r4, -696(r30)
000788  e7444ffa  storeli.w r4, -692(r30)
00078c  67054ffa  storeli.w r4, -688(r30)
000790  67454ffa  storeli.w r4, -684(r30)
000794  e7054ffa  storeli.w r4, -680(r30)
000798  e7454ffa  storeli.w r4, -676(r30)
00079c  67064ffa  storeli.w r4, -672(r30)
0007a0  67464ffa  storeli.w r4, -668(r30)
0007a4  e7064ffa  storeli.w r4, -664(r30)
0007a8  e7464ffa  storeli.w r4, -660(r30)
0007ac  67074ffa  storeli.w r4, -656(r30)
0007b0  67474ffa  storeli.w r4, -652(r30)
0007b4  e7074ffa  storeli.w r4, -648(r30)
0007b8  e7474ffa  storeli.w r4, -644(r30)
0007bc  67084ffa  storeli.w r4, -640(r30)
0007c0  67484ffa  storeli.w r4, -636(r30)
0007c4  e7084ffa  storeli.w r4, -632(r30)
0007c8  8b106120  mul.s r1, r2, r6
0007cc  0b116150  fmac.s r2, r2, r6
0007d0  8b113140  min.s r3, r2, r3
0007d4  4bb9110c  ble.s r3, r1, 6732
0007d8  33910128  sext_int2long r[3:4], r3
0007dc  33920028  sext_int2long r[5:6], r1
0007e0  1f460000  addli r12, zero, 4
0007e4  9f7a0000  addli r21, zero, 7
0007e8  1f3b0000  addli r22, zero, 3
0007ec  9f240000  addli r9, zero, 2
0007f0  ab06807f  lui r13, 522240
0007f4  ab08ffff  lui r17, 1048560
0007f8  e7490ff8  storeli.w zero, -868(r30)
0007fc  73382fc6  store.d r[3:4], -912(r30)
000800  1f71f01f  addli r2, zero, 4095
000804  ab80ffff  lui r1, 1048568
000808  73341fc6  store.d r[2:3], -920(r30)
00080c  2b710000  lui r2, 7
000810  abf0ff7f  lui r1, 524287
000814  1b18f1ff  ori r16, r2, 4095
000818  2bf17f7f  lui r2, 522239
00081c  9b90f0ff  ori r1, r1, 4095
000820  1b1ef1ff  ori r28, r2, 4095
000824  db060000  j 52
000828  1f311000  addli r2, zero, 11
00082c  9f7a0000  addli r21, zero, 7
000830  1f460000  addli r12, zero, 4
000834  1f3b0000  addli r22, zero, 3
000838  7d000100  xsignal r2, 0
00083c  1f411000  addli r2, zero, 12
000840  7d000100  xsignal r2, 0
000844  6b520fc9  load.d r[5:6], -880(r30)
000848  6b510fc7  load.d r[3:4], -912(r30)
00084c  27120200  addli.d r[5:6], r[5:6], 1
000850  13312204  setlt.sl r2, r[5:6], r[3:4]
000854  3737010c  beq r2, zero, 6604
000858  3b30c400  bneq r8, r12, 12
00085c  1f311000  addli r2, zero, 11
000860  7d100100  xwait r2, 0
000864  63014f00  loadli.w r2,  32(r30)
000868  e3413f00  loadli.w r3,  28(r30)
00086c  73384fc8  store.d r[5:6], -880(r30)
000870  1f541000  addli r8, zero, 13
000874  0b112230  div.s r2, r4, r2
000878  1f021000  addli r4, zero, 8
00087c  0b133130  div.s r6, r2, r3
000880  1f018000  addli r2, zero, 64
000884  8b132330  div.s r7, r6, r2
000888  9bb13300  slli r3, r7, 3
00088c  0b113618  sub.s r2, r12, r3
000890  63461ffb  loadli.w r12,  -628(r30)
000894  0b114140  min.s r2, r2, r4
000898  0b122338  mod.s r4, r6, r2
00089c  8b924110  add.s r5, r3, r4
0008a0  63029ff9  loadli.w r4,  -824(r30)
0008a4  93015b04  setlt.u r3, r22, r5
0008a8  33850228  zext_int2long r[11:12], r5
0008ac  17378502  sll.d r[15:16], r[11:12], r8
0008b0  7334afc8  store.d r[11:12], -888(r30)
0008b4  7338efca  store.d r[15:16], -848(r30)
0008b8  3bb00100  bneq r3, zero, 12
0008bc  33050028  zext_int2long r[11:12], zero
0008c0  db010000  j 12
0008c4  6b558fc6  load.d r[11:12], -920(r30)
0008c8  1705a702  and.d r[11:12], r[15:16], r[11:12]
0008cc  9bb16300  slli r3, r7, 6
0008d0  7334afca  store.d r[11:12], -856(r30)
0008d4  63453ff9  loadli.w r10,  -868(r30)
0008d8  9f1d0000  addli r27, zero, 1
0008dc  1f044000  addli r8, zero, 32
0008e0  1f070000  addli r14, zero, 0
0008e4  8b113318  sub.s r3, r6, r3
0008e8  0b136539  mod.s r6, r10, r22
0008ec  1f150500  addli r10, r10, 1
0008f0  0b912130  div.s r2, r3, r2
0008f4  9bb17200  slli r3, r5, 7
0008f8  e749aff8  storeli.w r10, -868(r30)
0008fc  e7473ff8  storeli.w r3, -900(r30)
000900  9b330301  slli r7, r6, 16
000904  b3020128  zext_int2long r[6:7], r2
000908  1b317100  slli r2, r2, 7
00090c  e7072ff8  storeli.w r2, -904(r30)
000910  17b15203  sll.d r[3:4], r[6:7], r21
000914  ab020300  lui r5, 48
000918  8b975310  add.s r15, r7, r5
00091c  eb528f00  load.d r[6:7], 8(r30)
000920  73302fc8  store.d r[3:4], -896(r30)
000924  1731b103  sll.d r[3:4], r[3:4], r27
000928  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
00092c  73302fca  store.d r[3:4], -864(r30)
000930  1f010000  addli r2, zero, 0
000934  5b320000  j 400
000938  2b010600  lui r2, 96
00093c  1f060001  addli r12, zero, 128
000940  1b110104  ori r2, r2, 64
000944  0b112310  add.s r2, r6, r2
000948  1f430000  addli r6, zero, 4
00094c  1d000300  lock zero, r6
000950  15040400  dma_cfg r8, r8, zero, 0
000954  15800c04  dma_cfg zero, r25, zero, 2
000958  15013c06  dma_cfg r2, r24, r3, 3
00095c  1f610000  addli r2, zero, 6
000960  15868108  dma_cfg r12, r3, r8, 4
000964  1506560a  dma_cfg r12, r12, r5, 5
000968  15000010  dma_cfg zero, zero, zero, 8
00096c  35000000  dma_run zero
000970  1500800a  dma_cfg zero, zero, r8, 5
000974  15000010  dma_cfg zero, zero, zero, 8
000978  1d100300  unlock r6
00097c  1d000a00  lock zero, r20
000980  15000014  dma_cfg zero, zero, zero, 10
000984  15008014  dma_cfg zero, zero, r8, 10
000988  15009014  dma_cfg zero, zero, r9, 10
00098c  15006015  dma_cfg zero, zero, r22, 10
000990  15006014  dma_cfg zero, zero, r6, 10
000994  15004015  dma_cfg zero, zero, r20, 10
000998  15002014  dma_cfg zero, zero, r2, 10
00099c  1f011000  addli r2, zero, 8
0009a0  15005015  dma_cfg zero, zero, r21, 10
0009a4  15002014  dma_cfg zero, zero, r2, 10
0009a8  1f111000  addli r2, zero, 9
0009ac  15002014  dma_cfg zero, zero, r2, 10
0009b0  1f211000  addli r2, zero, 10
0009b4  15002014  dma_cfg zero, zero, r2, 10
0009b8  1f311000  addli r2, zero, 11
0009bc  15002014  dma_cfg zero, zero, r2, 10
0009c0  1f411000  addli r2, zero, 12
0009c4  15002014  dma_cfg zero, zero, r2, 10
0009c8  1f511000  addli r2, zero, 13
0009cc  15002014  dma_cfg zero, zero, r2, 10
0009d0  1f611000  addli r2, zero, 14
0009d4  15002014  dma_cfg zero, zero, r2, 10
0009d8  1f711000  addli r2, zero, 15
0009dc  15002014  dma_cfg zero, zero, r2, 10
0009e0  1f012000  addli r2, zero, 16
0009e4  15002014  dma_cfg zero, zero, r2, 10
0009e8  1f112000  addli r2, zero, 17
0009ec  15002014  dma_cfg zero, zero, r2, 10
0009f0  1f212000  addli r2, zero, 18
0009f4  15002014  dma_cfg zero, zero, r2, 10
0009f8  1f312000  addli r2, zero, 19
0009fc  15002014  dma_cfg zero, zero, r2, 10
000a00  1f412000  addli r2, zero, 20
000a04  15002014  dma_cfg zero, zero, r2, 10
000a08  1f512000  addli r2, zero, 21
000a0c  15002014  dma_cfg zero, zero, r2, 10
000a10  1f612000  addli r2, zero, 22
000a14  15002014  dma_cfg zero, zero, r2, 10
000a18  1f712000  addli r2, zero, 23
000a1c  15002014  dma_cfg zero, zero, r2, 10
000a20  1f013000  addli r2, zero, 24
000a24  15002014  dma_cfg zero, zero, r2, 10
000a28  1f113000  addli r2, zero, 25
000a2c  15002014  dma_cfg zero, zero, r2, 10
000a30  1f213000  addli r2, zero, 26
000a34  15002014  dma_cfg zero, zero, r2, 10
000a38  1f313000  addli r2, zero, 27
000a3c  15002014  dma_cfg zero, zero, r2, 10
000a40  1f413000  addli r2, zero, 28
000a44  15002014  dma_cfg zero, zero, r2, 10
000a48  1f513000  addli r2, zero, 29
000a4c  15002014  dma_cfg zero, zero, r2, 10
000a50  1f613000  addli r2, zero, 30
000a54  15002014  dma_cfg zero, zero, r2, 10
000a58  1f713000  addli r2, zero, 31
000a5c  15002014  dma_cfg zero, zero, r2, 10
000a60  15040400  dma_cfg r8, r8, zero, 0
000a64  15040002  dma_cfg r8, zero, zero, 1
000a68  15000004  dma_cfg zero, zero, zero, 2
000a6c  95053006  dma_cfg r11, zero, r3, 3
000a70  15068008  dma_cfg r12, zero, r8, 4
000a74  1506500a  dma_cfg r12, zero, r5, 5
000a78  15000010  dma_cfg zero, zero, zero, 8
000a7c  35000000  dma_run zero
000a80  1500800a  dma_cfg zero, zero, r8, 5
000a84  1f044000  addli r8, zero, 32
000a88  15000010  dma_cfg zero, zero, zero, 8
000a8c  1d100a00  unlock r20
000a90  7d800400  xsignal r9, 0
000a94  63414ffc  loadli.w r2,  -476(r30)
000a98  e301dffe  loadli.w r3,  -152(r30)
000a9c  1f110100  addli r2, r2, 1
000aa0  9f910100  addli r3, r3, 1
000aa4  67422ffc  storeli.w r2, -476(r30)
000aa8  e7063ffe  storeli.w r3, -152(r30)
000aac  1b811d00  andi r2, r27, 1
000ab0  37290102  beq r2, zero, 1608
000ab4  9f0d0000  addli r27, zero, 0
000ab8  1f170700  addli r14, r14, 1
000abc  1f110000  addli r2, zero, 1
000ac0  1f060500  addli r12, r10, 0
000ac4  9f016000  addli r3, zero, 48
000ac8  9f524000  addli r5, zero, 37
000acc  803b0002  core_id r23
000ad0  0b135638  mod.s r6, r12, r5
000ad4  8b113238  mod.s r3, r4, r3
000ad8  9f028000  addli r5, zero, 64
000adc  1f120200  addli r4, r4, 1
000ae0  33850228  zext_int2long r[11:12], r5
000ae4  9f020003  addli r5, zero, 384
000ae8  e70c4ff8  storeli.w r4, -824(r30)
000aec  7330afcc  store.d r[11:12], -832(r30)
000af0  33850228  zext_int2long r[11:12], r5
000af4  9bb2e100  slli r5, r3, 14
000af8  1b33e300  slli r6, r6, 14
000afc  ab010600  lui r3, 96
000b00  733cafca  store.d r[11:12], -840(r30)
000b04  1f150600  addli r10, r12, 1
000b08  8b153310  add.s r11, r6, r3
000b0c  e748affa  storeli.w r10, -628(r30)
000b10  37969b00  beq r23, r9, 388
000b14  1f0c4000  addli r24, zero, 32
000b18  33090128  zext_int2long r[19:20], r2
000b1c  1f140000  addli r8, zero, 1
000b20  bbd68b00  bneq r23, r8, 436
000b24  1f5a0000  addli r20, zero, 5
000b28  eb5b0fcc  load.d r[24:25], -832(r30)
000b2c  003d0002  core_id r26
000b30  17314903  sll.d r[3:4], r[19:20], r20
000b34  6b590fcb  load.d r[19:20], -848(r30)
000b38  17112103  or.d r[3:4], r[3:4], r[19:20]
000b3c  6b598fca  load.d r[19:20], -856(r30)
000b40  0b392119  sub.sl r[19:20], r[3:4], r[19:20]
000b44  17318102  sll.d r[3:4], r[3:4], r8
000b48  0f197961  div.sl r[19:20], r[19:20], r[24:25]
000b4c  eb5b8fcb  load.d r[24:25], -840(r30)
000b50  7d100b00  xwait r22, 0
000b54  8b3b7941  min.sl r[24:25], r[19:20], r[24:25]
000b58  0bb92b19  sub.sl r[19:20], r[24:25], r[19:20]
000b5c  eb5b0f00  load.d r[24:25], 0(r30)
000b60  9f020901  addli r5, r18, 128
000b64  0bac2b10  add.ul r[25:26], r[24:25], r[3:4]
000b68  9f018000  addli r3, zero, 64
000b6c  1f414000  addli r2, zero, 36
000b70  3f27c1fe  blt.s r2, r12, -568
000b74  1d000a00  lock zero, r20
000b78  1f410000  addli r2, zero, 4
000b7c  15000014  dma_cfg zero, zero, zero, 10
000b80  15008014  dma_cfg zero, zero, r8, 10
000b84  15009014  dma_cfg zero, zero, r9, 10
000b88  15006015  dma_cfg zero, zero, r22, 10
000b8c  15002014  dma_cfg zero, zero, r2, 10
000b90  1f610000  addli r2, zero, 6
000b94  15004015  dma_cfg zero, zero, r20, 10
000b98  15002014  dma_cfg zero, zero, r2, 10
000b9c  1f011000  addli r2, zero, 8
000ba0  15005015  dma_cfg zero, zero, r21, 10
000ba4  15002014  dma_cfg zero, zero, r2, 10
000ba8  1f111000  addli r2, zero, 9
000bac  15002014  dma_cfg zero, zero, r2, 10
000bb0  1f211000  addli r2, zero, 10
000bb4  15002014  dma_cfg zero, zero, r2, 10
000bb8  1f311000  addli r2, zero, 11
000bbc  15002014  dma_cfg zero, zero, r2, 10
000bc0  1f411000  addli r2, zero, 12
000bc4  15002014  dma_cfg zero, zero, r2, 10
000bc8  1f511000  addli r2, zero, 13
000bcc  15002014  dma_cfg zero, zero, r2, 10
000bd0  1f611000  addli r2, zero, 14
000bd4  15002014  dma_cfg zero, zero, r2, 10
000bd8  1f711000  addli r2, zero, 15
000bdc  15002014  dma_cfg zero, zero, r2, 10
000be0  1f012000  addli r2, zero, 16
000be4  15002014  dma_cfg zero, zero, r2, 10
000be8  1f112000  addli r2, zero, 17
000bec  15002014  dma_cfg zero, zero, r2, 10
000bf0  1f212000  addli r2, zero, 18
000bf4  15002014  dma_cfg zero, zero, r2, 10
000bf8  1f312000  addli r2, zero, 19
000bfc  15002014  dma_cfg zero, zero, r2, 10
000c00  1f412000  addli r2, zero, 20
000c04  15002014  dma_cfg zero, zero, r2, 10
000c08  1f512000  addli r2, zero, 21
000c0c  15002014  dma_cfg zero, zero, r2, 10
000c10  1f612000  addli r2, zero, 22
000c14  15002014  dma_cfg zero, zero, r2, 10
000c18  1f712000  addli r2, zero, 23
000c1c  15002014  dma_cfg zero, zero, r2, 10
000c20  1f013000  addli r2, zero, 24
000c24  15002014  dma_cfg zero, zero, r2, 10
000c28  1f113000  addli r2, zero, 25
000c2c  15002014  dma_cfg zero, zero, r2, 10
000c30  1f213000  addli r2, zero, 26
000c34  15002014  dma_cfg zero, zero, r2, 10
000c38  1f313000  addli r2, zero, 27
000c3c  15002014  dma_cfg zero, zero, r2, 10
000c40  1f413000  addli r2, zero, 28
000c44  15002014  dma_cfg zero, zero, r2, 10
000c48  1f513000  addli r2, zero, 29
000c4c  15002014  dma_cfg zero, zero, r2, 10
000c50  1f613000  addli r2, zero, 30
000c54  15002014  dma_cfg zero, zero, r2, 10
000c58  1f713000  addli r2, zero, 31
000c5c  15002014  dma_cfg zero, zero, r2, 10
000c60  1f010001  addli r2, zero, 128
000c64  15040400  dma_cfg r8, r8, zero, 0
000c68  15040002  dma_cfg r8, zero, zero, 1
000c6c  15000004  dma_cfg zero, zero, zero, 2
000c70  95053006  dma_cfg r11, zero, r3, 3
000c74  15018008  dma_cfg r2, zero, r8, 4
000c78  1501200a  dma_cfg r2, zero, r2, 5
000c7c  15000010  dma_cfg zero, zero, zero, 8
000c80  35000000  dma_run zero
000c84  1500800a  dma_cfg zero, zero, r8, 5
000c88  15000010  dma_cfg zero, zero, zero, 8
000c8c  1d100a00  unlock r20
000c90  5b95ffff  j -856
000c94  1f510000  addli r2, zero, 5
000c98  7d900400  xwait r9, 0
000c9c  003d0002  core_id r26
000ca0  7d100100  xwait r2, 0
000ca4  1d000000  lock zero, zero
000ca8  1f010001  addli r2, zero, 128
000cac  81040000  ds_cfg r9, zero, 0
000cb0  01040002  ds_cfg r8, zero, 1
000cb4  0104001c  ds_cfg r8, zero, 14
000cb8  0101001a  ds_cfg r2, zero, 13
000cbc  1f410000  addli r2, zero, 4
000cc0  a1928502  shuffle_batch r5, r11, r8, 1
000cc4  1d100000  unlock zero
000cc8  7d000b00  xsignal r22, 0
000ccc  7d000100  xsignal r2, 0
000cd0  dbb8ffff  j -572
000cd4  63414ffc  loadli.w r2,  -476(r30)
000cd8  630adffe  loadli.w r20,  -152(r30)
000cdc  9f01a000  addli r3, zero, 80
000ce0  1f534000  addli r6, zero, 37
000ce4  8b113138  mod.s r3, r2, r3
000ce8  0b136a38  mod.s r6, r20, r6
000cec  1f110100  addli r2, r2, 1
000cf0  67422ffc  storeli.w r2, -476(r30)
000cf4  1bb6e100  slli r12, r3, 14
000cf8  1b31e300  slli r2, r6, 14
000cfc  9f110a00  addli r3, r20, 1
000d00  2b430f00  lui r6, 244
000d04  e7063ffe  storeli.w r3, -152(r30)
000d08  8b156110  add.s r11, r2, r6
000d0c  9f710000  addli r3, zero, 7
000d10  37db3b00  beq r23, r3, 724
000d14  1f630000  addli r6, zero, 6
000d18  3bec6b00  bneq r23, r6, 792
000d1c  9f0a2000  addli r21, zero, 16
000d20  003d0002  core_id r26
000d24  1f140000  addli r8, zero, 1
000d28  97325903  sll.d r[6:7], r[19:20], r21
000d2c  6b590fca  load.d r[19:20], -864(r30)
000d30  7d900100  xwait r3, 0
000d34  9f414000  addli r3, zero, 36
000d38  8b225910  add.ul r[6:7], r[19:20], r[6:7]
000d3c  1f790000  addli r18, zero, 7
000d40  9f590000  addli r19, zero, 5
000d44  bf944101  blt.s r3, r20, 292
000d48  1d800900  lock zero, r19
000d4c  1f460000  addli r12, zero, 4
000d50  9f610000  addli r3, zero, 6
000d54  15000014  dma_cfg zero, zero, zero, 10
000d58  15008014  dma_cfg zero, zero, r8, 10
000d5c  15009014  dma_cfg zero, zero, r9, 10
000d60  15006015  dma_cfg zero, zero, r22, 10
000d64  1500c014  dma_cfg zero, zero, r12, 10
000d68  15003015  dma_cfg zero, zero, r19, 10
000d6c  15003014  dma_cfg zero, zero, r3, 10
000d70  9f011000  addli r3, zero, 8
000d74  15002015  dma_cfg zero, zero, r18, 10
000d78  15003014  dma_cfg zero, zero, r3, 10
000d7c  9f111000  addli r3, zero, 9
000d80  15003014  dma_cfg zero, zero, r3, 10
000d84  9f211000  addli r3, zero, 10
000d88  15003014  dma_cfg zero, zero, r3, 10
000d8c  9f311000  addli r3, zero, 11
000d90  15003014  dma_cfg zero, zero, r3, 10
000d94  9f411000  addli r3, zero, 12
000d98  15003014  dma_cfg zero, zero, r3, 10
000d9c  9f511000  addli r3, zero, 13
000da0  15003014  dma_cfg zero, zero, r3, 10
000da4  9f611000  addli r3, zero, 14
000da8  15003014  dma_cfg zero, zero, r3, 10
000dac  9f711000  addli r3, zero, 15
000db0  15003014  dma_cfg zero, zero, r3, 10
000db4  9f112000  addli r3, zero, 17
000db8  15005015  dma_cfg zero, zero, r21, 10
000dbc  15003014  dma_cfg zero, zero, r3, 10
000dc0  9f212000  addli r3, zero, 18
000dc4  15003014  dma_cfg zero, zero, r3, 10
000dc8  9f312000  addli r3, zero, 19
000dcc  15003014  dma_cfg zero, zero, r3, 10
000dd0  9f412000  addli r3, zero, 20
000dd4  15003014  dma_cfg zero, zero, r3, 10
000dd8  9f512000  addli r3, zero, 21
000ddc  15003014  dma_cfg zero, zero, r3, 10
000de0  9f612000  addli r3, zero, 22
000de4  15003014  dma_cfg zero, zero, r3, 10
000de8  9f712000  addli r3, zero, 23
000dec  15003014  dma_cfg zero, zero, r3, 10
000df0  9f013000  addli r3, zero, 24
000df4  15003014  dma_cfg zero, zero, r3, 10
000df8  9f113000  addli r3, zero, 25
000dfc  15003014  dma_cfg zero, zero, r3, 10
000e00  9f213000  addli r3, zero, 26
000e04  15003014  dma_cfg zero, zero, r3, 10
000e08  9f313000  addli r3, zero, 27
000e0c  15003014  dma_cfg zero, zero, r3, 10
000e10  9f413000  addli r3, zero, 28
000e14  15003014  dma_cfg zero, zero, r3, 10
000e18  9f513000  addli r3, zero, 29
000e1c  15003014  dma_cfg zero, zero, r3, 10
000e20  9f613000  addli r3, zero, 30
000e24  15003014  dma_cfg zero, zero, r3, 10
000e28  9f713000  addli r3, zero, 31
000e2c  15003014  dma_cfg zero, zero, r3, 10
000e30  9f018000  addli r3, zero, 64
000e34  15040400  dma_cfg r8, r8, zero, 0
000e38  15040002  dma_cfg r8, zero, zero, 1
000e3c  15000004  dma_cfg zero, zero, zero, 2
000e40  95053006  dma_cfg r11, zero, r3, 3
000e44  9f010001  addli r3, zero, 128
000e48  9501c008  dma_cfg r3, zero, r12, 4
000e4c  9f010004  addli r3, zero, 512
000e50  9501800b  dma_cfg r3, zero, r24, 5
000e54  15000010  dma_cfg zero, zero, zero, 8
000e58  35000000  dma_run zero
000e5c  1500800a  dma_cfg zero, zero, r8, 5
000e60  15000010  dma_cfg zero, zero, zero, 8
000e64  1d900900  unlock r19
000e68  ab410f00  lui r3, 244
000e6c  1f460000  addli r12, zero, 4
000e70  1f0a0001  addli r20, zero, 128
000e74  9f0b0004  addli r23, zero, 512
000e78  1f0c2000  addli r24, zero, 16
000e7c  9f7a0000  addli r21, zero, 7
000e80  9b910104  ori r3, r3, 64
000e84  1d000600  lock zero, r12
000e88  15040400  dma_cfg r8, r8, zero, 0
000e8c  0b113110  add.s r2, r2, r3
000e90  9f018000  addli r3, zero, 64
000e94  15000304  dma_cfg zero, r6, zero, 2
000e98  15813206  dma_cfg r2, r5, r3, 3
000e9c  1f014000  addli r2, zero, 32
000ea0  9f020010  addli r5, zero, 2048
000ea4  1f130000  addli r6, zero, 1
000ea8  158ac108  dma_cfg r20, r3, r12, 4
000eac  958b220a  dma_cfg r23, r5, r2, 5
000eb0  1f011000  addli r2, zero, 8
000eb4  9f520000  addli r5, zero, 5
000eb8  15000010  dma_cfg zero, zero, zero, 8
000ebc  35000000  dma_run zero
000ec0  1500800a  dma_cfg zero, zero, r8, 5
000ec4  15000010  dma_cfg zero, zero, zero, 8
000ec8  1d100600  unlock r12
000ecc  1d800900  lock zero, r19
000ed0  15000014  dma_cfg zero, zero, zero, 10
000ed4  15008014  dma_cfg zero, zero, r8, 10
000ed8  1f044000  addli r8, zero, 32
000edc  15009014  dma_cfg zero, zero, r9, 10
000ee0  15006015  dma_cfg zero, zero, r22, 10
000ee4  1500c014  dma_cfg zero, zero, r12, 10
000ee8  15003015  dma_cfg zero, zero, r19, 10
000eec  9f690000  addli r19, zero, 6
000ef0  15003015  dma_cfg zero, zero, r19, 10
000ef4  15002015  dma_cfg zero, zero, r18, 10
000ef8  15002014  dma_cfg zero, zero, r2, 10
000efc  1f111000  addli r2, zero, 9
000f00  15002014  dma_cfg zero, zero, r2, 10
000f04  1f211000  addli r2, zero, 10
000f08  15002014  dma_cfg zero, zero, r2, 10
000f0c  1f311000  addli r2, zero, 11
000f10  15002014  dma_cfg zero, zero, r2, 10
000f14  1f411000  addli r2, zero, 12
000f18  15002014  dma_cfg zero, zero, r2, 10
000f1c  1f511000  addli r2, zero, 13
000f20  15002014  dma_cfg zero, zero, r2, 10
000f24  1f611000  addli r2, zero, 14
000f28  15002014  dma_cfg zero, zero, r2, 10
000f2c  1f711000  addli r2, zero, 15
000f30  15002014  dma_cfg zero, zero, r2, 10
000f34  1f112000  addli r2, zero, 17
000f38  15008015  dma_cfg zero, zero, r24, 10
000f3c  15002014  dma_cfg zero, zero, r2, 10
000f40  1f212000  addli r2, zero, 18
000f44  15002014  dma_cfg zero, zero, r2, 10
000f48  1f312000  addli r2, zero, 19
000f4c  15002014  dma_cfg zero, zero, r2, 10
000f50  1f412000  addli r2, zero, 20
000f54  15002014  dma_cfg zero, zero, r2, 10
000f58  1f512000  addli r2, zero, 21
000f5c  15002014  dma_cfg zero, zero, r2, 10
000f60  1f612000  addli r2, zero, 22
000f64  15002014  dma_cfg zero, zero, r2, 10
000f68  1f712000  addli r2, zero, 23
000f6c  15002014  dma_cfg zero, zero, r2, 10
000f70  1f013000  addli r2, zero, 24
000f74  15002014  dma_cfg zero, zero, r2, 10
000f78  1f113000  addli r2, zero, 25
000f7c  15002014  dma_cfg zero, zero, r2, 10
000f80  1f213000  addli r2, zero, 26
000f84  15002014  dma_cfg zero, zero, r2, 10
000f88  1f313000  addli r2, zero, 27
000f8c  15002014  dma_cfg zero, zero, r2, 10
000f90  1f413000  addli r2, zero, 28
000f94  15002014  dma_cfg zero, zero, r2, 10
000f98  1f513000  addli r2, zero, 29
000f9c  15002014  dma_cfg zero, zero, r2, 10
000fa0  1f613000  addli r2, zero, 30
000fa4  15002014  dma_cfg zero, zero, r2, 10
000fa8  1f713000  addli r2, zero, 31
000fac  15002014  dma_cfg zero, zero, r2, 10
000fb0  15030300  dma_cfg r6, r6, zero, 0
000fb4  15030002  dma_cfg r6, zero, zero, 1
000fb8  15000004  dma_cfg zero, zero, zero, 2
000fbc  95053006  dma_cfg r11, zero, r3, 3
000fc0  150ac008  dma_cfg r20, zero, r12, 4
000fc4  950b800a  dma_cfg r23, zero, r8, 5
000fc8  15000010  dma_cfg zero, zero, zero, 8
000fcc  35000000  dma_run zero
000fd0  1500600a  dma_cfg zero, zero, r6, 5
000fd4  15000010  dma_cfg zero, zero, zero, 8
000fd8  1d900200  unlock r5
000fdc  7d800900  xsignal r19, 0
000fe0  db59ffff  j -1332
000fe4  1f610000  addli r2, zero, 6
000fe8  1f044000  addli r8, zero, 32
000fec  003d0002  core_id r26
000ff0  9f7a0000  addli r21, zero, 7
000ff4  7d100100  xwait r2, 0
000ff8  1f111000  addli r2, zero, 9
000ffc  7d100100  xwait r2, 0
001000  1d000000  lock zero, zero
001004  1f010001  addli r2, zero, 128
001008  81040000  ds_cfg r9, zero, 0
00100c  01010002  ds_cfg r2, zero, 1
001010  0104001c  ds_cfg r8, zero, 14
001014  0101001a  ds_cfg r2, zero, 13
001018  1f011000  addli r2, zero, 8
00101c  41868504  shuffle_coa r12, r11, r8, 2
001020  1d100000  unlock zero
001024  7d800100  xsignal r3, 0
001028  7d000100  xsignal r2, 0
00102c  5b50ffff  j -1408
001030  9f7a0000  addli r21, zero, 7
001034  1b811d00  andi r2, r27, 1
001038  9f410000  addli r3, zero, 4
00103c  1f044000  addli r8, zero, 32
001040  bbc23b00  bneq r23, r3, 176
001044  7d900100  xwait r3, 0
001048  9f011000  addli r3, zero, 8
00104c  1f130000  addli r6, zero, 1
001050  9f150000  addli r11, zero, 1
001054  9f098000  addli r19, zero, 64
001058  1f4a0000  addli r20, zero, 4
00105c  9f0b0001  addli r23, zero, 128
001060  7d900100  xwait r3, 0
001064  9f010000  addli r3, zero, 0
001068  b7700700  beq r14, zero, 60
00106c  1bb9d100  slli r18, r3, 13
001070  9bb18100  slli r3, r3, 8
001074  1d000300  lock zero, r6
001078  89097401  mm_cfg r19, r8, r23, 0
00107c  1719c900  or r18, r18, r12
001080  9791f100  or r3, r3, r15
001084  89046a04  mm_cfg r9, r20, r6, 2
001088  a9912211  mm_acc r3, r5, r18, 8
00108c  1b891500  andi r18, r11, 1
001090  9f110000  addli r3, zero, 1
001094  9f050000  addli r11, zero, 0
001098  1d100300  unlock r6
00109c  3b4f09fe  bneq r18, zero, -48
0010a0  5b070000  j 56
0010a4  1bb9d100  slli r18, r3, 13
0010a8  9bb18100  slli r3, r3, 8
0010ac  1d000300  lock zero, r6
0010b0  89097401  mm_cfg r19, r8, r23, 0
0010b4  1719c900  or r18, r18, r12
0010b8  9791f100  or r3, r3, r15
0010bc  89046a04  mm_cfg r9, r20, r6, 2
0010c0  a9812211  mm r3, r5, r18, 8
0010c4  1b891500  andi r18, r11, 1
0010c8  9f110000  addli r3, zero, 1
0010cc  9f050000  addli r11, zero, 0
0010d0  1d100300  unlock r6
0010d4  3b4f09fe  bneq r18, zero, -48
0010d8  9f510000  addli r3, zero, 5
0010dc  7d800100  xsignal r3, 0
0010e0  9f111000  addli r3, zero, 9
0010e4  7d800100  xsignal r3, 0
0010e8  3b3701fc  bneq r2, zero, -1588
0010ec  db020000  j 20
0010f0  3b1701fc  bneq r2, zero, -1596
0010f4  5b040000  j 32
0010f8  1f410000  addli r2, zero, 4
0010fc  3b602d00  bneq r26, r2, 24
001100  1f211000  addli r2, zero, 10
001104  670a0ff8  storeli.w zero, -864(r30)
001108  00340002  core_id r8
00110c  7d000100  xsignal r2, 0
001110  db050000  j 44
001114  00340002  core_id r8
001118  bb006401  bneq r8, r22, 32
00111c  1f211000  addli r2, zero, 10
001120  7d100100  xwait r2, 0
001124  1f110000  addli r2, zero, 1
001128  670a2ff8  storeli.w r2, -864(r30)
00112c  1f511000  addli r2, zero, 13
001130  7d100100  xwait r2, 0
001134  5b010000  j 8
001138  670a0ff8  storeli.w zero, -864(r30)
00113c  1f71f001  addli r2, zero, 255
001140  3d000000  xfence
001144  9f710000  addli r3, zero, 7
001148  00a00300  mfence { lm, sm, gm }
00114c  80220104  csr_set csr5, r2
001150  1f010001  addli r2, zero, 128
001154  00e00200  sync_core
001158  33020128  zext_int2long r[5:6], r2
00115c  1f71f000  addli r2, zero, 127
001160  b30a0128  zext_int2long r[22:23], r2
001164  37280400  beq r8, zero, 520
001168  b76f9400  beq r8, r9, 1016
00116c  1f110000  addli r2, zero, 1
001170  bb172402  bneq r8, r2, 1508
001174  33040028  zext_int2long r[9:10], zero
001178  1f012000  addli r2, zero, 16
00117c  73348fca  store.d r[9:10], -856(r30)
001180  33040128  zext_int2long r[9:10], r2
001184  3d000000  xfence
001188  00a00300  mfence { lm, sm, gm }
00118c  5b040000  j 32
001190  1f713000  addli r2, zero, 31
001194  6b540fcb  load.d r[9:10], -848(r30)
001198  33010128  zext_int2long r[3:4], r2
00119c  13212404  setlt.ul r2, r[9:10], r[3:4]
0011a0  27140400  addli.d r[9:10], r[9:10], 1
0011a4  9f710000  addli r3, zero, 7
0011a8  b7060102  beq r2, zero, 1440
0011ac  973c3402  sll.d r[26:27], r[9:10], r3
0011b0  73388fca  store.d r[9:10], -848(r30)
0011b4  bbd1f300  bneq r7, r15, 116
0011b8  33040028  zext_int2long r[9:10], zero
0011bc  db050000  j 44
0011c0  9b410501  srli r3, r10, 16
0011c4  9b811100  andi r3, r3, 1
0011c8  8b113510  add.s r3, r10, r3
0011cc  8b910111  add.s r3, r3, r16
0011d0  17831101  and r6, r3, r17
0011d4  93215405  setlt.ul r3, r[9:10], r[22:23]
0011d8  0b912310  add.s r2, r7, r2
0011dc  27140400  addli.d r[9:10], r[9:10], 1
0011e0  73606100  stores.w r6, 0(r2)
0011e4  b7be01fe  beq r3, zero, -84
0011e8  0b219411  add.ul r[3:4], r[9:10], r[26:27]
0011ec  1b312100  slli r2, r2, 2
0011f0  8b912710  add.s r3, r15, r2
0011f4  6fc50100  loads.w r10, 0(r3)
0011f8  97011500  and r3, r10, r1
0011fc  13833604  setlt.u r6, r13, r3
001200  3b500300  bneq r6, zero, 20
001204  1f030500  addli r6, r10, 0
001208  93013e04  setlt.u r3, r28, r3
00120c  3baf01fe  bneq r3, zero, -56
001210  5bf6ffff  j -80
001214  2b034000  lui r6, 1024
001218  17136500  or r6, r10, r6
00121c  93013e04  setlt.u r3, r28, r3
001220  bbde01fe  bneq r3, zero, -76
001224  dbf3ffff  j -100
001228  6b548fca  load.d r[9:10], -856(r30)
00122c  db040000  j 36
001230  27440400  addli.d r[9:10], r[9:10], 4
001234  0b93e310  add.s r6, r7, r14
001238  93214400  seteq.d r3, r[9:10], r[5:6]
00123c  7366b301  stores.w r27, 12(r6)
001240  73644301  stores.w r20, 8(r6)
001244  73622300  stores.w r2, 4(r6)
001248  73607301  stores.w r23, 0(r6)
00124c  3b9d01fe  bneq r3, zero, -188
001250  0b219411  add.ul r[3:4], r[9:10], r[26:27]
001254  1b372100  slli r14, r2, 2
001258  8b9be710  add.s r23, r15, r14
00125c  6fc6cb00  loads.w r12, 12(r23)
001260  17031600  and r6, r12, r1
001264  13816604  setlt.u r2, r13, r6
001268  3b300100  bneq r2, zero, 12
00126c  9f0d0600  addli r27, r12, 0
001270  db010000  j 12
001274  2b014000  lui r2, 1024
001278  971d2600  or r27, r12, r2
00127c  6fcc8b00  loads.w r24, 8(r23)
001280  17091c00  and r18, r24, r1
001284  13812605  setlt.u r2, r13, r18
001288  3b300100  bneq r2, zero, 12
00128c  1f0a0c00  addli r20, r24, 0
001290  db010000  j 12
001294  2b014000  lui r2, 1024
001298  171a2c00  or r20, r24, r2
00129c  efc94b00  loads.w r19, 4(r23)
0012a0  17851900  and r10, r19, r1
0012a4  1381a604  setlt.u r2, r13, r10
0012a8  3b300100  bneq r2, zero, 12
0012ac  1f810900  addli r2, r19, 0
0012b0  db010000  j 12
0012b4  2b014000  lui r2, 1024
0012b8  17912900  or r2, r19, r2
0012bc  efc50b00  loads.w r11, 0(r23)
0012c0  97811500  and r3, r11, r1
0012c4  938b3604  setlt.u r23, r13, r3
0012c8  3bd00b00  bneq r23, zero, 20
0012cc  9f8b0500  addli r23, r11, 0
0012d0  93013e04  setlt.u r3, r28, r3
0012d4  37e00100  beq r3, zero, 24
0012d8  5b050000  j 40
0012dc  ab0b4000  lui r23, 1024
0012e0  979b7501  or r23, r11, r23
0012e4  93013e04  setlt.u r3, r28, r3
0012e8  3be00100  bneq r3, zero, 24
0012ec  9bc10501  srli r3, r11, 16
0012f0  9b811100  andi r3, r3, 1
0012f4  8b913510  add.s r3, r11, r3
0012f8  8b910111  add.s r3, r3, r16
0012fc  978b1101  and r23, r3, r17
001300  9301ae04  setlt.u r3, r28, r10
001304  bbb00100  bneq r3, zero, 44
001308  1bc10901  srli r2, r19, 16
00130c  1b011100  andi r2, r2, 1
001310  0b912910  add.s r2, r19, r2
001314  0b110111  add.s r2, r2, r16
001318  17011101  and r2, r2, r17
00131c  93012e05  setlt.u r3, r28, r18
001320  37e00100  beq r3, zero, 24
001324  93016e04  setlt.u r3, r28, r6
001328  3bac01fe  bneq r3, zero, -248
00132c  5b050000  j 40
001330  93012e05  setlt.u r3, r28, r18
001334  bbcf01fe  bneq r3, zero, -16
001338  9b410c01  srli r3, r24, 16
00133c  9b811100  andi r3, r3, 1
001340  8b113c10  add.s r3, r24, r3
001344  8b910111  add.s r3, r3, r16
001348  178a1101  and r20, r3, r17
00134c  93016e04  setlt.u r3, r28, r6
001350  bb8b01fe  bneq r3, zero, -288
001354  9b410601  srli r3, r12, 16
001358  9b811100  andi r3, r3, 1
00135c  8b113610  add.s r3, r12, r3
001360  8b910111  add.s r3, r3, r16
001364  978d1101  and r27, r3, r17
001368  5bd9ffff  j -312
00136c  3d000000  xfence
001370  33040028  zext_int2long r[9:10], zero
001374  00a00300  mfence { lm, sm, gm }
001378  5b040000  j 32
00137c  1f711000  addli r2, zero, 15
001380  6b540fcb  load.d r[9:10], -848(r30)
001384  33010128  zext_int2long r[3:4], r2
001388  13212404  setlt.ul r2, r[9:10], r[3:4]
00138c  27140400  addli.d r[9:10], r[9:10], 1
001390  9f710000  addli r3, zero, 7
001394  b7760100  beq r2, zero, 444
001398  73388fca  store.d r[9:10], -848(r30)
00139c  973c3402  sll.d r[26:27], r[9:10], r3
0013a0  33040028  zext_int2long r[9:10], zero
0013a4  b7b5f300  beq r7, r15, 364
0013a8  db040000  j 36
0013ac  27440400  addli.d r[9:10], r[9:10], 4
0013b0  0b93e310  add.s r6, r7, r14
0013b4  93214400  seteq.d r3, r[9:10], r[5:6]
0013b8  7366c300  stores.w r12, 12(r6)
0013bc  73648301  stores.w r24, 8(r6)
0013c0  73622300  stores.w r2, 4(r6)
0013c4  73607301  stores.w r23, 0(r6)
0013c8  bbde01fe  bneq r3, zero, -76
0013cc  0b219411  add.ul r[3:4], r[9:10], r[26:27]
0013d0  1b372100  slli r14, r2, 2
0013d4  8b9be710  add.s r23, r15, r14
0013d8  efcdcb00  loads.w r27, 12(r23)
0013dc  17831d00  and r6, r27, r1
0013e0  13816604  setlt.u r2, r13, r6
0013e4  3b300100  bneq r2, zero, 12
0013e8  1f860d00  addli r12, r27, 0
0013ec  db010000  j 12
0013f0  2b014000  lui r2, 1024
0013f4  17962d00  or r12, r27, r2
0013f8  6fca8b00  loads.w r20, 8(r23)
0013fc  17091a00  and r18, r20, r1
001400  13812605  setlt.u r2, r13, r18
001404  3b300100  bneq r2, zero, 12
001408  1f0c0a00  addli r24, r20, 0
00140c  db010000  j 12
001410  2b014000  lui r2, 1024
001414  171c2a00  or r24, r20, r2
001418  efc94b00  loads.w r19, 4(r23)
00141c  17851900  and r10, r19, r1
001420  1381a604  setlt.u r2, r13, r10
001424  3b300100  bneq r2, zero, 12
001428  1f810900  addli r2, r19, 0
00142c  db010000  j 12
001430  2b014000  lui r2, 1024
001434  17912900  or r2, r19, r2
001438  efc50b00  loads.w r11, 0(r23)
00143c  97811500  and r3, r11, r1
001440  938b3604  setlt.u r23, r13, r3
001444  3bd00b00  bneq r23, zero, 20
001448  9f8b0500  addli r23, r11, 0
00144c  93013e04  setlt.u r3, r28, r3
001450  37e00100  beq r3, zero, 24
001454  5b050000  j 40
001458  ab0b4000  lui r23, 1024
00145c  979b7501  or r23, r11, r23
001460  93013e04  setlt.u r3, r28, r3
001464  3be00100  bneq r3, zero, 24
001468  9bc10501  srli r3, r11, 16
00146c  9b811100  andi r3, r3, 1
001470  8b913510  add.s r3, r11, r3
001474  8b910111  add.s r3, r3, r16
001478  978b1101  and r23, r3, r17
00147c  9301ae04  setlt.u r3, r28, r10
001480  bbb00100  bneq r3, zero, 44
001484  1bc10901  srli r2, r19, 16
001488  1b011100  andi r2, r2, 1
00148c  0b912910  add.s r2, r19, r2
001490  0b110111  add.s r2, r2, r16
001494  17011101  and r2, r2, r17
001498  93012e05  setlt.u r3, r28, r18
00149c  37e00100  beq r3, zero, 24
0014a0  93016e04  setlt.u r3, r28, r6
0014a4  3bac01fe  bneq r3, zero, -248
0014a8  5b050000  j 40
0014ac  93012e05  setlt.u r3, r28, r18
0014b0  bbcf01fe  bneq r3, zero, -16
0014b4  9b410a01  srli r3, r20, 16
0014b8  9b811100  andi r3, r3, 1
0014bc  8b113a10  add.s r3, r20, r3
0014c0  8b910111  add.s r3, r3, r16
0014c4  178c1101  and r24, r3, r17
0014c8  93016e04  setlt.u r3, r28, r6
0014cc  bb8b01fe  bneq r3, zero, -288
0014d0  9bc10d01  srli r3, r27, 16
0014d4  9b811100  andi r3, r3, 1
0014d8  8b913d10  add.s r3, r27, r3
0014dc  8b910111  add.s r3, r3, r16
0014e0  17861101  and r12, r3, r17
0014e4  5bd9ffff  j -312
0014e8  9b410501  srli r3, r10, 16
0014ec  9b811100  andi r3, r3, 1
0014f0  8b113510  add.s r3, r10, r3
0014f4  8b910111  add.s r3, r3, r16
0014f8  17831101  and r6, r3, r17
0014fc  93215405  setlt.ul r3, r[9:10], r[22:23]
001500  0b912310  add.s r2, r7, r2
001504  27140400  addli.d r[9:10], r[9:10], 1
001508  73606100  stores.w r6, 0(r2)
00150c  b7c901fe  beq r3, zero, -400
001510  0b219411  add.ul r[3:4], r[9:10], r[26:27]
001514  1b312100  slli r2, r2, 2
001518  8b912710  add.s r3, r15, r2
00151c  6fc50100  loads.w r10, 0(r3)
001520  97011500  and r3, r10, r1
001524  13833604  setlt.u r6, r13, r3
001528  3b500300  bneq r6, zero, 20
00152c  1f030500  addli r6, r10, 0
001530  93013e04  setlt.u r3, r28, r3
001534  3baf01fe  bneq r3, zero, -56
001538  5bf6ffff  j -80
00153c  2b034000  lui r6, 1024
001540  17136500  or r6, r10, r6
001544  93013e04  setlt.u r3, r28, r3
001548  bbde01fe  bneq r3, zero, -76
00154c  dbf3ffff  j -100
001550  00340002  core_id r8
001554  9f240000  addli r9, zero, 2
001558  00200100  mfence { sm }
00155c  3b4094fe  bneq r8, r9, -1008
001560  1f014000  addli r2, zero, 32
001564  3d000000  xfence
001568  00a00300  mfence { lm, sm, gm }
00156c  33040128  zext_int2long r[9:10], r2
001570  5b040000  j 32
001574  1f715000  addli r2, zero, 47
001578  6b540fcb  load.d r[9:10], -848(r30)
00157c  33010128  zext_int2long r[3:4], r2
001580  13212404  setlt.ul r2, r[9:10], r[3:4]
001584  27140400  addli.d r[9:10], r[9:10], 1
001588  9f710000  addli r3, zero, 7
00158c  b7760100  beq r2, zero, 444
001590  73388fca  store.d r[9:10], -848(r30)
001594  973c3402  sll.d r[26:27], r[9:10], r3
001598  33040028  zext_int2long r[9:10], zero
00159c  b7b5f300  beq r7, r15, 364
0015a0  db040000  j 36
0015a4  27440400  addli.d r[9:10], r[9:10], 4
0015a8  0b93e310  add.s r6, r7, r14
0015ac  93214400  seteq.d r3, r[9:10], r[5:6]
0015b0  7366b301  stores.w r27, 12(r6)
0015b4  73644301  stores.w r20, 8(r6)
0015b8  73622300  stores.w r2, 4(r6)
0015bc  73607301  stores.w r23, 0(r6)
0015c0  bbde01fe  bneq r3, zero, -76
0015c4  0b219411  add.ul r[3:4], r[9:10], r[26:27]
0015c8  1b372100  slli r14, r2, 2
0015cc  8b9be710  add.s r23, r15, r14
0015d0  6fc6cb00  loads.w r12, 12(r23)
0015d4  17031600  and r6, r12, r1
0015d8  13816604  setlt.u r2, r13, r6
0015dc  3b300100  bneq r2, zero, 12
0015e0  9f0d0600  addli r27, r12, 0
0015e4  db010000  j 12
0015e8  2b014000  lui r2, 1024
0015ec  971d2600  or r27, r12, r2
0015f0  6fcc8b00  loads.w r24, 8(r23)
0015f4  17091c00  and r18, r24, r1
0015f8  13812605  setlt.u r2, r13, r18
0015fc  3b300100  bneq r2, zero, 12
001600  1f0a0c00  addli r20, r24, 0
001604  db010000  j 12
001608  2b014000  lui r2, 1024
00160c  171a2c00  or r20, r24, r2
001610  efc94b00  loads.w r19, 4(r23)
001614  17851900  and r10, r19, r1
001618  1381a604  setlt.u r2, r13, r10
00161c  3b300100  bneq r2, zero, 12
001620  1f810900  addli r2, r19, 0
001624  db010000  j 12
001628  2b014000  lui r2, 1024
00162c  17912900  or r2, r19, r2
001630  efc50b00  loads.w r11, 0(r23)
001634  97811500  and r3, r11, r1
001638  938b3604  setlt.u r23, r13, r3
00163c  3bd00b00  bneq r23, zero, 20
001640  9f8b0500  addli r23, r11, 0
001644  93013e04  setlt.u r3, r28, r3
001648  37e00100  beq r3, zero, 24
00164c  5b050000  j 40
001650  ab0b4000  lui r23, 1024
001654  979b7501  or r23, r11, r23
001658  93013e04  setlt.u r3, r28, r3
00165c  3be00100  bneq r3, zero, 24
001660  9bc10501  srli r3, r11, 16
001664  9b811100  andi r3, r3, 1
001668  8b913510  add.s r3, r11, r3
00166c  8b910111  add.s r3, r3, r16
001670  978b1101  and r23, r3, r17
001674  9301ae04  setlt.u r3, r28, r10
001678  bbb00100  bneq r3, zero, 44
00167c  1bc10901  srli r2, r19, 16
001680  1b011100  andi r2, r2, 1
001684  0b912910  add.s r2, r19, r2
001688  0b110111  add.s r2, r2, r16
00168c  17011101  and r2, r2, r17
001690  93012e05  setlt.u r3, r28, r18
001694  37e00100  beq r3, zero, 24
001698  93016e04  setlt.u r3, r28, r6
00169c  3bac01fe  bneq r3, zero, -248
0016a0  5b050000  j 40
0016a4  93012e05  setlt.u r3, r28, r18
0016a8  bbcf01fe  bneq r3, zero, -16
0016ac  9b410c01  srli r3, r24, 16
0016b0  9b811100  andi r3, r3, 1
0016b4  8b113c10  add.s r3, r24, r3
0016b8  8b910111  add.s r3, r3, r16
0016bc  178a1101  and r20, r3, r17
0016c0  93016e04  setlt.u r3, r28, r6
0016c4  bb8b01fe  bneq r3, zero, -288
0016c8  9b410601  srli r3, r12, 16
0016cc  9b811100  andi r3, r3, 1
0016d0  8b113610  add.s r3, r12, r3
0016d4  8b910111  add.s r3, r3, r16
0016d8  978d1101  and r27, r3, r17
0016dc  5bd9ffff  j -312
0016e0  9b410501  srli r3, r10, 16
0016e4  9b811100  andi r3, r3, 1
0016e8  8b113510  add.s r3, r10, r3
0016ec  8b910111  add.s r3, r3, r16
0016f0  17831101  and r6, r3, r17
0016f4  93215405  setlt.ul r3, r[9:10], r[22:23]
0016f8  0b912310  add.s r2, r7, r2
0016fc  27140400  addli.d r[9:10], r[9:10], 1
001700  73606100  stores.w r6, 0(r2)
001704  b7c901fe  beq r3, zero, -400
001708  0b219411  add.ul r[3:4], r[9:10], r[26:27]
00170c  1b312100  slli r2, r2, 2
001710  8b912710  add.s r3, r15, r2
001714  6fc50100  loads.w r10, 0(r3)
001718  97011500  and r3, r10, r1
00171c  13833604  setlt.u r6, r13, r3
001720  3b500300  bneq r6, zero, 20
001724  1f030500  addli r6, r10, 0
001728  93013e04  setlt.u r3, r28, r3
00172c  3baf01fe  bneq r3, zero, -56
001730  5bf6ffff  j -80
001734  2b034000  lui r6, 1024
001738  17136500  or r6, r10, r6
00173c  93013e04  setlt.u r3, r28, r3
001740  bbde01fe  bneq r3, zero, -76
001744  dbf3ffff  j -100
001748  00340002  core_id r8
00174c  9f240000  addli r9, zero, 2
001750  00200100  mfence { sm }
001754  63014ff9  loadli.w r2,  -864(r30)
001758  b7370100  beq r2, zero, 492
00175c  1f016000  addli r2, zero, 48
001760  3d000000  xfence
001764  00a00300  mfence { lm, sm, gm }
001768  33040128  zext_int2long r[9:10], r2
00176c  5b040000  j 32
001770  1f717000  addli r2, zero, 63
001774  6b540fcb  load.d r[9:10], -848(r30)
001778  33010128  zext_int2long r[3:4], r2
00177c  13212404  setlt.ul r2, r[9:10], r[3:4]
001780  27140400  addli.d r[9:10], r[9:10], 1
001784  9f710000  addli r3, zero, 7
001788  b72e0100  beq r2, zero, 936
00178c  73388fca  store.d r[9:10], -848(r30)
001790  973c3402  sll.d r[26:27], r[9:10], r3
001794  33040028  zext_int2long r[9:10], zero
001798  b7b5f300  beq r7, r15, 364
00179c  db040000  j 36
0017a0  27440400  addli.d r[9:10], r[9:10], 4
0017a4  0b93e310  add.s r6, r7, r14
0017a8  93214400  seteq.d r3, r[9:10], r[5:6]
0017ac  7366b301  stores.w r27, 12(r6)
0017b0  73644301  stores.w r20, 8(r6)
0017b4  73622300  stores.w r2, 4(r6)
0017b8  73607301  stores.w r23, 0(r6)
0017bc  bbde01fe  bneq r3, zero, -76
0017c0  0b219411  add.ul r[3:4], r[9:10], r[26:27]
0017c4  1b372100  slli r14, r2, 2
0017c8  8b9be710  add.s r23, r15, r14
0017cc  6fc6cb00  loads.w r12, 12(r23)
0017d0  17031600  and r6, r12, r1
0017d4  13816604  setlt.u r2, r13, r6
0017d8  3b300100  bneq r2, zero, 12
0017dc  9f0d0600  addli r27, r12, 0
0017e0  db010000  j 12
0017e4  2b014000  lui r2, 1024
0017e8  971d2600  or r27, r12, r2
0017ec  6fcc8b00  loads.w r24, 8(r23)
0017f0  17091c00  and r18, r24, r1
0017f4  13812605  setlt.u r2, r13, r18
0017f8  3b300100  bneq r2, zero, 12
0017fc  1f0a0c00  addli r20, r24, 0
001800  db010000  j 12
001804  2b014000  lui r2, 1024
001808  171a2c00  or r20, r24, r2
00180c  efc94b00  loads.w r19, 4(r23)
001810  17851900  and r10, r19, r1
001814  1381a604  setlt.u r2, r13, r10
001818  3b300100  bneq r2, zero, 12
00181c  1f810900  addli r2, r19, 0
001820  db010000  j 12
001824  2b014000  lui r2, 1024
001828  17912900  or r2, r19, r2
00182c  efc50b00  loads.w r11, 0(r23)
001830  97811500  and r3, r11, r1
001834  938b3604  setlt.u r23, r13, r3
001838  3bc20b00  bneq r23, zero, 144
00183c  9f8b0500  addli r23, r11, 0
001840  93013e04  setlt.u r3, r28, r3
001844  3be00100  bneq r3, zero, 24
001848  9bc10501  srli r3, r11, 16
00184c  9b811100  andi r3, r3, 1
001850  8b913510  add.s r3, r11, r3
001854  8b910111  add.s r3, r3, r16
001858  978b1101  and r23, r3, r17
00185c  9301ae04  setlt.u r3, r28, r10
001860  bbb00100  bneq r3, zero, 44
001864  1bc10901  srli r2, r19, 16
001868  1b011100  andi r2, r2, 1
00186c  0b912910  add.s r2, r19, r2
001870  0b110111  add.s r2, r2, r16
001874  17011101  and r2, r2, r17
001878  93012e05  setlt.u r3, r28, r18
00187c  37e00100  beq r3, zero, 24
001880  93016e04  setlt.u r3, r28, r6
001884  3bfc01fe  bneq r3, zero, -228
001888  5b050000  j 40
00188c  93012e05  setlt.u r3, r28, r18
001890  bbcf01fe  bneq r3, zero, -16
001894  9b410c01  srli r3, r24, 16
001898  9b811100  andi r3, r3, 1
00189c  8b113c10  add.s r3, r24, r3
0018a0  8b910111  add.s r3, r3, r16
0018a4  178a1101  and r20, r3, r17
0018a8  93016e04  setlt.u r3, r28, r6
0018ac  bbdb01fe  bneq r3, zero, -268
0018b0  9b410601  srli r3, r12, 16
0018b4  9b811100  andi r3, r3, 1
0018b8  8b113610  add.s r3, r12, r3
0018bc  8b910111  add.s r3, r3, r16
0018c0  978d1101  and r27, r3, r17
0018c4  dbdbffff  j -292
0018c8  ab0b4000  lui r23, 1024
0018cc  979b7501  or r23, r11, r23
0018d0  93013e04  setlt.u r3, r28, r3
0018d4  b7dd01fe  beq r3, zero, -140
0018d8  dbf0ffff  j -124
0018dc  9b410501  srli r3, r10, 16
0018e0  9b811100  andi r3, r3, 1
0018e4  8b113510  add.s r3, r10, r3
0018e8  8b910111  add.s r3, r3, r16
0018ec  17831101  and r6, r3, r17
0018f0  93215405  setlt.ul r3, r[9:10], r[22:23]
0018f4  0b912310  add.s r2, r7, r2
0018f8  27140400  addli.d r[9:10], r[9:10], 1
0018fc  73606100  stores.w r6, 0(r2)
001900  b7c901fe  beq r3, zero, -400
001904  0b219411  add.ul r[3:4], r[9:10], r[26:27]
001908  1b312100  slli r2, r2, 2
00190c  8b912710  add.s r3, r15, r2
001910  6fc50100  loads.w r10, 0(r3)
001914  97011500  and r3, r10, r1
001918  13833604  setlt.u r6, r13, r3
00191c  3b500300  bneq r6, zero, 20
001920  1f030500  addli r6, r10, 0
001924  93013e04  setlt.u r3, r28, r3
001928  3baf01fe  bneq r3, zero, -56
00192c  5bf6ffff  j -80
001930  2b034000  lui r6, 1024
001934  17136500  or r6, r10, r6
001938  93013e04  setlt.u r3, r28, r3
00193c  bbde01fe  bneq r3, zero, -76
001940  dbf3ffff  j -100
001944  1f410000  addli r2, zero, 4
001948  bb772400  bneq r8, r2, 508
00194c  3d000000  xfence
001950  00a00300  mfence { lm, sm, gm }
001954  6b540fcc  load.d r[9:10], -832(r30)
001958  5b040000  j 32
00195c  1f719000  addli r2, zero, 79
001960  6b540fcc  load.d r[9:10], -832(r30)
001964  33010128  zext_int2long r[3:4], r2
001968  13212404  setlt.ul r2, r[9:10], r[3:4]
00196c  27140400  addli.d r[9:10], r[9:10], 1
001970  9f710000  addli r3, zero, 7
001974  373f0100  beq r2, zero, 972
001978  73308fcc  store.d r[9:10], -832(r30)
00197c  17353402  sll.d r[11:12], r[9:10], r3
001980  33040028  zext_int2long r[9:10], zero
001984  b7b5f300  beq r7, r15, 364
001988  db040000  j 36
00198c  27440400  addli.d r[9:10], r[9:10], 4
001990  0b93e310  add.s r6, r7, r14
001994  93214400  seteq.d r3, r[9:10], r[5:6]
001998  73669301  stores.w r25, 12(r6)
00199c  73644301  stores.w r20, 8(r6)
0019a0  73622300  stores.w r2, 4(r6)
0019a4  73607301  stores.w r23, 0(r6)
0019a8  bbde01fe  bneq r3, zero, -76
0019ac  0b21a410  add.ul r[3:4], r[9:10], r[11:12]
0019b0  1b372100  slli r14, r2, 2
0019b4  8b9be710  add.s r23, r15, r14
0019b8  6fc6cb00  loads.w r12, 12(r23)
0019bc  17031600  and r6, r12, r1
0019c0  13816604  setlt.u r2, r13, r6
0019c4  3b300100  bneq r2, zero, 12
0019c8  9f0c0600  addli r25, r12, 0
0019cc  db010000  j 12
0019d0  2b014000  lui r2, 1024
0019d4  971c2600  or r25, r12, r2
0019d8  6fcc8b00  loads.w r24, 8(r23)
0019dc  17091c00  and r18, r24, r1
0019e0  13812605  setlt.u r2, r13, r18
0019e4  3b300100  bneq r2, zero, 12
0019e8  1f0a0c00  addli r20, r24, 0
0019ec  db010000  j 12
0019f0  2b014000  lui r2, 1024
0019f4  171a2c00  or r20, r24, r2
0019f8  efc94b00  loads.w r19, 4(r23)
0019fc  178d1900  and r26, r19, r1
001a00  1381a605  setlt.u r2, r13, r26
001a04  3b300100  bneq r2, zero, 12
001a08  1f810900  addli r2, r19, 0
001a0c  db010000  j 12
001a10  2b014000  lui r2, 1024
001a14  17912900  or r2, r19, r2
001a18  efcd0b00  loads.w r27, 0(r23)
001a1c  97811d00  and r3, r27, r1
001a20  938b3604  setlt.u r23, r13, r3
001a24  3bc20b00  bneq r23, zero, 144
001a28  9f8b0d00  addli r23, r27, 0
001a2c  93013e04  setlt.u r3, r28, r3
001a30  3be00100  bneq r3, zero, 24
001a34  9bc10d01  srli r3, r27, 16
001a38  9b811100  andi r3, r3, 1
001a3c  8b913d10  add.s r3, r27, r3
001a40  8b910111  add.s r3, r3, r16
001a44  978b1101  and r23, r3, r17
001a48  9301ae05  setlt.u r3, r28, r26
001a4c  bbb00100  bneq r3, zero, 44
001a50  1bc10901  srli r2, r19, 16
001a54  1b011100  andi r2, r2, 1
001a58  0b912910  add.s r2, r19, r2
001a5c  0b110111  add.s r2, r2, r16
001a60  17011101  and r2, r2, r17
001a64  93012e05  setlt.u r3, r28, r18
001a68  37e00100  beq r3, zero, 24
001a6c  93016e04  setlt.u r3, r28, r6
001a70  3bfc01fe  bneq r3, zero, -228
001a74  5b050000  j 40
001a78  93012e05  setlt.u r3, r28, r18
001a7c  bbcf01fe  bneq r3, zero, -16
001a80  9b410c01  srli r3, r24, 16
001a84  9b811100  andi r3, r3, 1
001a88  8b113c10  add.s r3, r24, r3
001a8c  8b910111  add.s r3, r3, r16
001a90  178a1101  and r20, r3, r17
001a94  93016e04  setlt.u r3, r28, r6
001a98  bbdb01fe  bneq r3, zero, -268
001a9c  9b410601  srli r3, r12, 16
001aa0  9b811100  andi r3, r3, 1
001aa4  8b113610  add.s r3, r12, r3
001aa8  8b910111  add.s r3, r3, r16
001aac  978c1101  and r25, r3, r17
001ab0  dbdbffff  j -292
001ab4  ab0b4000  lui r23, 1024
001ab8  979b7d01  or r23, r27, r23
001abc  93013e04  setlt.u r3, r28, r3
001ac0  b7dd01fe  beq r3, zero, -140
001ac4  dbf0ffff  j -124
001ac8  9b410601  srli r3, r12, 16
001acc  9b811100  andi r3, r3, 1
001ad0  8b113610  add.s r3, r12, r3
001ad4  8b910111  add.s r3, r3, r16
001ad8  17831101  and r6, r3, r17
001adc  93215405  setlt.ul r3, r[9:10], r[22:23]
001ae0  0b912310  add.s r2, r7, r2
001ae4  27140400  addli.d r[9:10], r[9:10], 1
001ae8  73606100  stores.w r6, 0(r2)
001aec  b7c901fe  beq r3, zero, -400
001af0  0b21a410  add.ul r[3:4], r[9:10], r[11:12]
001af4  1b312100  slli r2, r2, 2
001af8  8b912710  add.s r3, r15, r2
001afc  6fc60100  loads.w r12, 0(r3)
001b00  97011600  and r3, r12, r1
001b04  13833604  setlt.u r6, r13, r3
001b08  3b500300  bneq r6, zero, 20
001b0c  1f030600  addli r6, r12, 0
001b10  93013e04  setlt.u r3, r28, r3
001b14  3baf01fe  bneq r3, zero, -56
001b18  5bf6ffff  j -80
001b1c  2b034000  lui r6, 1024
001b20  17136600  or r6, r12, r6
001b24  93013e04  setlt.u r3, r28, r3
001b28  bbde01fe  bneq r3, zero, -76
001b2c  dbf3ffff  j -100
001b30  00340002  core_id r8
001b34  9f240000  addli r9, zero, 2
001b38  00200100  mfence { sm }
001b3c  1f410000  addli r2, zero, 4
001b40  373824fe  beq r8, r2, -500
001b44  37383400  beq r8, r3, 524
001b48  1f610000  addli r2, zero, 6
001b4c  b71f2400  beq r8, r2, 996
001b50  1f510000  addli r2, zero, 5
001b54  3b472402  bneq r8, r2, 1488
001b58  1f01a000  addli r2, zero, 80
001b5c  3d000000  xfence
001b60  00a00300  mfence { lm, sm, gm }
001b64  33040128  zext_int2long r[9:10], r2
001b68  5b040000  j 32
001b6c  1f71b000  addli r2, zero, 95
001b70  6b540fcc  load.d r[9:10], -832(r30)
001b74  33010128  zext_int2long r[3:4], r2
001b78  13212404  setlt.ul r2, r[9:10], r[3:4]
001b7c  27140400  addli.d r[9:10], r[9:10], 1
001b80  9f710000  addli r3, zero, 7
001b84  37560102  beq r2, zero, 1428
001b88  73308fcc  store.d r[9:10], -832(r30)
001b8c  17393402  sll.d r[19:20], r[9:10], r3
001b90  33040028  zext_int2long r[9:10], zero
001b94  b7b5f300  beq r7, r15, 364
001b98  db040000  j 36
001b9c  27440400  addli.d r[9:10], r[9:10], 4
001ba0  0b93e310  add.s r6, r7, r14
001ba4  93214400  seteq.d r3, r[9:10], r[5:6]
001ba8  73669301  stores.w r25, 12(r6)
001bac  73644301  stores.w r20, 8(r6)
001bb0  73622300  stores.w r2, 4(r6)
001bb4  73607301  stores.w r23, 0(r6)
001bb8  bbde01fe  bneq r3, zero, -76
001bbc  0b212411  add.ul r[3:4], r[9:10], r[19:20]
001bc0  1b372100  slli r14, r2, 2
001bc4  8b9be710  add.s r23, r15, r14
001bc8  6fc6cb00  loads.w r12, 12(r23)
001bcc  17031600  and r6, r12, r1
001bd0  13816604  setlt.u r2, r13, r6
001bd4  3b300100  bneq r2, zero, 12
001bd8  9f0c0600  addli r25, r12, 0
001bdc  db010000  j 12
001be0  2b014000  lui r2, 1024
001be4  971c2600  or r25, r12, r2
001be8  6fcc8b00  loads.w r24, 8(r23)
001bec  170d1c00  and r26, r24, r1
001bf0  1381a605  setlt.u r2, r13, r26
001bf4  3b300100  bneq r2, zero, 12
001bf8  1f0a0c00  addli r20, r24, 0
001bfc  db010000  j 12
001c00  2b014000  lui r2, 1024
001c04  171a2c00  or r20, r24, r2
001c08  efcd4b00  loads.w r27, 4(r23)
001c0c  17851d00  and r10, r27, r1
001c10  1381a604  setlt.u r2, r13, r10
001c14  3b300100  bneq r2, zero, 12
001c18  1f810d00  addli r2, r27, 0
001c1c  db010000  j 12
001c20  2b014000  lui r2, 1024
001c24  17912d00  or r2, r27, r2
001c28  efc50b00  loads.w r11, 0(r23)
001c2c  97811500  and r3, r11, r1
001c30  938b3604  setlt.u r23, r13, r3
001c34  3bc20b00  bneq r23, zero, 144
001c38  9f8b0500  addli r23, r11, 0
001c3c  93013e04  setlt.u r3, r28, r3
001c40  3be00100  bneq r3, zero, 24
001c44  9bc10501  srli r3, r11, 16
001c48  9b811100  andi r3, r3, 1
001c4c  8b913510  add.s r3, r11, r3
001c50  8b910111  add.s r3, r3, r16
001c54  978b1101  and r23, r3, r17
001c58  9301ae04  setlt.u r3, r28, r10
001c5c  bbb00100  bneq r3, zero, 44
001c60  1bc10d01  srli r2, r27, 16
001c64  1b011100  andi r2, r2, 1
001c68  0b912d10  add.s r2, r27, r2
001c6c  0b110111  add.s r2, r2, r16
001c70  17011101  and r2, r2, r17
001c74  9301ae05  setlt.u r3, r28, r26
001c78  37e00100  beq r3, zero, 24
001c7c  93016e04  setlt.u r3, r28, r6
001c80  3bfc01fe  bneq r3, zero, -228
001c84  5b050000  j 40
001c88  9301ae05  setlt.u r3, r28, r26
001c8c  bbcf01fe  bneq r3, zero, -16
001c90  9b410c01  srli r3, r24, 16
001c94  9b811100  andi r3, r3, 1
001c98  8b113c10  add.s r3, r24, r3
001c9c  8b910111  add.s r3, r3, r16
001ca0  178a1101  and r20, r3, r17
001ca4  93016e04  setlt.u r3, r28, r6
001ca8  bbdb01fe  bneq r3, zero, -268
001cac  9b410601  srli r3, r12, 16
001cb0  9b811100  andi r3, r3, 1
001cb4  8b113610  add.s r3, r12, r3
001cb8  8b910111  add.s r3, r3, r16
001cbc  978c1101  and r25, r3, r17
001cc0  dbdbffff  j -292
001cc4  ab0b4000  lui r23, 1024
001cc8  979b7501  or r23, r11, r23
001ccc  93013e04  setlt.u r3, r28, r3
001cd0  b7dd01fe  beq r3, zero, -140
001cd4  dbf0ffff  j -124
001cd8  9b410501  srli r3, r10, 16
001cdc  9b811100  andi r3, r3, 1
001ce0  8b113510  add.s r3, r10, r3
001ce4  8b910111  add.s r3, r3, r16
001ce8  17831101  and r6, r3, r17
001cec  93215405  setlt.ul r3, r[9:10], r[22:23]
001cf0  0b912310  add.s r2, r7, r2
001cf4  27140400  addli.d r[9:10], r[9:10], 1
001cf8  73606100  stores.w r6, 0(r2)
001cfc  b7c901fe  beq r3, zero, -400
001d00  0b212411  add.ul r[3:4], r[9:10], r[19:20]
001d04  1b312100  slli r2, r2, 2
001d08  8b912710  add.s r3, r15, r2
001d0c  6fc50100  loads.w r10, 0(r3)
001d10  97011500  and r3, r10, r1
001d14  13833604  setlt.u r6, r13, r3
001d18  3b500300  bneq r6, zero, 20
001d1c  1f030500  addli r6, r10, 0
001d20  93013e04  setlt.u r3, r28, r3
001d24  3baf01fe  bneq r3, zero, -56
001d28  5bf6ffff  j -80
001d2c  2b034000  lui r6, 1024
001d30  17136500  or r6, r10, r6
001d34  93013e04  setlt.u r3, r28, r3
001d38  bbde01fe  bneq r3, zero, -76
001d3c  dbf3ffff  j -100
001d40  00340002  core_id r8
001d44  9f240000  addli r9, zero, 2
001d48  00200100  mfence { sm }
001d4c  bb7734fe  bneq r8, r3, -516
001d50  1f01e000  addli r2, zero, 112
001d54  3d000000  xfence
001d58  00a00300  mfence { lm, sm, gm }
001d5c  33040128  zext_int2long r[9:10], r2
001d60  5b030000  j 24
001d64  6b540fcc  load.d r[9:10], -832(r30)
001d68  9f710000  addli r3, zero, 7
001d6c  13215405  setlt.ul r2, r[9:10], r[22:23]
001d70  27140400  addli.d r[9:10], r[9:10], 1
001d74  b71e0100  beq r2, zero, 932
001d78  73308fcc  store.d r[9:10], -832(r30)
001d7c  17393402  sll.d r[19:20], r[9:10], r3
001d80  33040028  zext_int2long r[9:10], zero
001d84  b7b5f300  beq r7, r15, 364
001d88  db040000  j 36
001d8c  27440400  addli.d r[9:10], r[9:10], 4
001d90  0b93e310  add.s r6, r7, r14
001d94  93214400  seteq.d r3, r[9:10], r[5:6]
001d98  73669301  stores.w r25, 12(r6)
001d9c  73644301  stores.w r20, 8(r6)
001da0  73622300  stores.w r2, 4(r6)
001da4  73607301  stores.w r23, 0(r6)
001da8  bbfe01fe  bneq r3, zero, -68
001dac  0b212411  add.ul r[3:4], r[9:10], r[19:20]
001db0  1b372100  slli r14, r2, 2
001db4  8b9be710  add.s r23, r15, r14
001db8  6fc6cb00  loads.w r12, 12(r23)
001dbc  17031600  and r6, r12, r1
001dc0  13816604  setlt.u r2, r13, r6
001dc4  3b300100  bneq r2, zero, 12
001dc8  9f0c0600  addli r25, r12, 0
001dcc  db010000  j 12
001dd0  2b014000  lui r2, 1024
001dd4  971c2600  or r25, r12, r2
001dd8  6fcc8b00  loads.w r24, 8(r23)
001ddc  170d1c00  and r26, r24, r1
001de0  1381a605  setlt.u r2, r13, r26
001de4  3b300100  bneq r2, zero, 12
001de8  1f0a0c00  addli r20, r24, 0
001dec  db010000  j 12
001df0  2b014000  lui r2, 1024
001df4  171a2c00  or r20, r24, r2
001df8  efcd4b00  loads.w r27, 4(r23)
001dfc  17851d00  and r10, r27, r1
001e00  1381a604  setlt.u r2, r13, r10
001e04  3b300100  bneq r2, zero, 12
001e08  1f810d00  addli r2, r27, 0
001e0c  db010000  j 12
001e10  2b014000  lui r2, 1024
001e14  17912d00  or r2, r27, r2
001e18  efc50b00  loads.w r11, 0(r23)
001e1c  97811500  and r3, r11, r1
001e20  938b3604  setlt.u r23, r13, r3
001e24  3bd00b00  bneq r23, zero, 20
001e28  9f8b0500  addli r23, r11, 0
001e2c  93013e04  setlt.u r3, r28, r3
001e30  37e00100  beq r3, zero, 24
001e34  5b050000  j 40
001e38  ab0b4000  lui r23, 1024
001e3c  979b7501  or r23, r11, r23
001e40  93013e04  setlt.u r3, r28, r3
001e44  3be00100  bneq r3, zero, 24
001e48  9bc10501  srli r3, r11, 16
001e4c  9b811100  andi r3, r3, 1
001e50  8b913510  add.s r3, r11, r3
001e54  8b910111  add.s r3, r3, r16
001e58  978b1101  and r23, r3, r17
001e5c  9301ae04  setlt.u r3, r28, r10
001e60  bbb00100  bneq r3, zero, 44
001e64  1bc10d01  srli r2, r27, 16
001e68  1b011100  andi r2, r2, 1
001e6c  0b912d10  add.s r2, r27, r2
001e70  0b110111  add.s r2, r2, r16
001e74  17011101  and r2, r2, r17
001e78  9301ae05  setlt.u r3, r28, r26
001e7c  37e00100  beq r3, zero, 24
001e80  93016e04  setlt.u r3, r28, r6
001e84  3bac01fe  bneq r3, zero, -248
001e88  5b050000  j 40
001e8c  9301ae05  setlt.u r3, r28, r26
001e90  bbcf01fe  bneq r3, zero, -16
001e94  9b410c01  srli r3, r24, 16
001e98  9b811100  andi r3, r3, 1
001e9c  8b113c10  add.s r3, r24, r3
001ea0  8b910111  add.s r3, r3, r16
001ea4  178a1101  and r20, r3, r17
001ea8  93016e04  setlt.u r3, r28, r6
001eac  bb8b01fe  bneq r3, zero, -288
001eb0  9b410601  srli r3, r12, 16
001eb4  9b811100  andi r3, r3, 1
001eb8  8b113610  add.s r3, r12, r3
001ebc  8b910111  add.s r3, r3, r16
001ec0  978c1101  and r25, r3, r17
001ec4  5bd9ffff  j -312
001ec8  9b410501  srli r3, r10, 16
001ecc  9b811100  andi r3, r3, 1
001ed0  8b113510  add.s r3, r10, r3
001ed4  8b910111  add.s r3, r3, r16
001ed8  17831101  and r6, r3, r17
001edc  93215405  setlt.ul r3, r[9:10], r[22:23]
001ee0  0b912310  add.s r2, r7, r2
001ee4  27140400  addli.d r[9:10], r[9:10], 1
001ee8  73606100  stores.w r6, 0(r2)
001eec  b7e901fe  beq r3, zero, -392
001ef0  0b212411  add.ul r[3:4], r[9:10], r[19:20]
001ef4  1b312100  slli r2, r2, 2
001ef8  8b912710  add.s r3, r15, r2
001efc  6fc50100  loads.w r10, 0(r3)
001f00  97011500  and r3, r10, r1
001f04  13833604  setlt.u r6, r13, r3
001f08  3b500300  bneq r6, zero, 20
001f0c  1f030500  addli r6, r10, 0
001f10  93013e04  setlt.u r3, r28, r3
001f14  3baf01fe  bneq r3, zero, -56
001f18  5bf6ffff  j -80
001f1c  2b034000  lui r6, 1024
001f20  17136500  or r6, r10, r6
001f24  93013e04  setlt.u r3, r28, r3
001f28  bbde01fe  bneq r3, zero, -76
001f2c  dbf3ffff  j -100
001f30  1f01c000  addli r2, zero, 96
001f34  3d000000  xfence
001f38  00a00300  mfence { lm, sm, gm }
001f3c  33040128  zext_int2long r[9:10], r2
001f40  5b040000  j 32
001f44  1f71d000  addli r2, zero, 111
001f48  6b540fcc  load.d r[9:10], -832(r30)
001f4c  33010128  zext_int2long r[3:4], r2
001f50  13212404  setlt.ul r2, r[9:10], r[3:4]
001f54  27140400  addli.d r[9:10], r[9:10], 1
001f58  9f710000  addli r3, zero, 7
001f5c  b7760100  beq r2, zero, 444
001f60  73308fcc  store.d r[9:10], -832(r30)
001f64  17393402  sll.d r[19:20], r[9:10], r3
001f68  33040028  zext_int2long r[9:10], zero
001f6c  b7b5f300  beq r7, r15, 364
001f70  db040000  j 36
001f74  27440400  addli.d r[9:10], r[9:10], 4
001f78  0b93e310  add.s r6, r7, r14
001f7c  93214400  seteq.d r3, r[9:10], r[5:6]
001f80  73669301  stores.w r25, 12(r6)
001f84  73644301  stores.w r20, 8(r6)
001f88  73622300  stores.w r2, 4(r6)
001f8c  73607301  stores.w r23, 0(r6)
001f90  bbde01fe  bneq r3, zero, -76
001f94  0b212411  add.ul r[3:4], r[9:10], r[19:20]
001f98  1b372100  slli r14, r2, 2
001f9c  8b9be710  add.s r23, r15, r14
001fa0  6fc6cb00  loads.w r12, 12(r23)
001fa4  17031600  and r6, r12, r1
001fa8  13816604  setlt.u r2, r13, r6
001fac  3b300100  bneq r2, zero, 12
001fb0  9f0c0600  addli r25, r12, 0
001fb4  db010000  j 12
001fb8  2b014000  lui r2, 1024
001fbc  971c2600  or r25, r12, r2
001fc0  6fcc8b00  loads.w r24, 8(r23)
001fc4  170d1c00  and r26, r24, r1
001fc8  1381a605  setlt.u r2, r13, r26
001fcc  3b300100  bneq r2, zero, 12
001fd0  1f0a0c00  addli r20, r24, 0
001fd4  db010000  j 12
001fd8  2b014000  lui r2, 1024
001fdc  171a2c00  or r20, r24, r2
001fe0  efcd4b00  loads.w r27, 4(r23)
001fe4  17851d00  and r10, r27, r1
001fe8  1381a604  setlt.u r2, r13, r10
001fec  3b300100  bneq r2, zero, 12
001ff0  1f810d00  addli r2, r27, 0
001ff4  db010000  j 12
001ff8  2b014000  lui r2, 1024
001ffc  17912d00  or r2, r27, r2
002000  efc50b00  loads.w r11, 0(r23)
002004  97811500  and r3, r11, r1
002008  938b3604  setlt.u r23, r13, r3
00200c  3bd00b00  bneq r23, zero, 20
002010  9f8b0500  addli r23, r11, 0
002014  93013e04  setlt.u r3, r28, r3
002018  37e00100  beq r3, zero, 24
00201c  5b050000  j 40
002020  ab0b4000  lui r23, 1024
002024  979b7501  or r23, r11, r23
002028  93013e04  setlt.u r3, r28, r3
00202c  3be00100  bneq r3, zero, 24
002030  9bc10501  srli r3, r11, 16
002034  9b811100  andi r3, r3, 1
002038  8b913510  add.s r3, r11, r3
00203c  8b910111  add.s r3, r3, r16
002040  978b1101  and r23, r3, r17
002044  9301ae04  setlt.u r3, r28, r10
002048  bbb00100  bneq r3, zero, 44
00204c  1bc10d01  srli r2, r27, 16
002050  1b011100  andi r2, r2, 1
002054  0b912d10  add.s r2, r27, r2
002058  0b110111  add.s r2, r2, r16
00205c  17011101  and r2, r2, r17
002060  9301ae05  setlt.u r3, r28, r26
002064  37e00100  beq r3, zero, 24
002068  93016e04  setlt.u r3, r28, r6
00206c  3bac01fe  bneq r3, zero, -248
002070  5b050000  j 40
002074  9301ae05  setlt.u r3, r28, r26
002078  bbcf01fe  bneq r3, zero, -16
00207c  9b410c01  srli r3, r24, 16
002080  9b811100  andi r3, r3, 1
002084  8b113c10  add.s r3, r24, r3
002088  8b910111  add.s r3, r3, r16
00208c  178a1101  and r20, r3, r17
002090  93016e04  setlt.u r3, r28, r6
002094  bb8b01fe  bneq r3, zero, -288
002098  9b410601  srli r3, r12, 16
00209c  9b811100  andi r3, r3, 1
0020a0  8b113610  add.s r3, r12, r3
0020a4  8b910111  add.s r3, r3, r16
0020a8  978c1101  and r25, r3, r17
0020ac  5bd9ffff  j -312
0020b0  9b410501  srli r3, r10, 16
0020b4  9b811100  andi r3, r3, 1
0020b8  8b113510  add.s r3, r10, r3
0020bc  8b910111  add.s r3, r3, r16
0020c0  17831101  and r6, r3, r17
0020c4  93215405  setlt.ul r3, r[9:10], r[22:23]
0020c8  0b912310  add.s r2, r7, r2
0020cc  27140400  addli.d r[9:10], r[9:10], 1
0020d0  73606100  stores.w r6, 0(r2)
0020d4  b7c901fe  beq r3, zero, -400
0020d8  0b212411  add.ul r[3:4], r[9:10], r[19:20]
0020dc  1b312100  slli r2, r2, 2
0020e0  8b912710  add.s r3, r15, r2
0020e4  6fc50100  loads.w r10, 0(r3)
0020e8  97011500  and r3, r10, r1
0020ec  13833604  setlt.u r6, r13, r3
0020f0  3b500300  bneq r6, zero, 20
0020f4  1f030500  addli r6, r10, 0
0020f8  93013e04  setlt.u r3, r28, r3
0020fc  3baf01fe  bneq r3, zero, -56
002100  5bf6ffff  j -80
002104  2b034000  lui r6, 1024
002108  17136500  or r6, r10, r6
00210c  93013e04  setlt.u r3, r28, r3
002110  bbde01fe  bneq r3, zero, -76
002114  dbf3ffff  j -100
002118  00340002  core_id r8
00211c  9f240000  addli r9, zero, 2
002120  00200100  mfence { sm }
002124  1f71f001  addli r2, zero, 255
002128  80220104  csr_set csr5, r2
00212c  00e00200  sync_core
002130  63014ff9  loadli.w r2,  -864(r30)
002134  bb5b01f2  bneq r2, zero, -6412
002138  9f7a0000  addli r21, zero, 7
00213c  1f460000  addli r12, zero, 4
002140  1f3b0000  addli r22, zero, 3
002144  3b0c04f2  bneq r8, zero, -6400
002148  6301fff8  loadli.w r2,  -904(r30)
00214c  1f030007  addli r6, zero, 896
002150  6b578fc8  load.d r[15:16], -888(r30)
002154  6b590f01  load.d r[19:20], 16(r30)
002158  1f1a0000  addli r20, zero, 1
00215c  33040328  zext_int2long r[9:10], r6
002160  6343fff8  loadli.w r6,  -900(r30)
002164  33010128  zext_int2long r[3:4], r2
002168  0b248140  min.ul r[9:10], r[3:4], r[9:10]
00216c  33150328  sext_int2long r[11:12], r6
002170  1f232000  addli r6, zero, 18
002174  27040401  addli.d r[9:10], r[9:10], 128
002178  17376702  sll.d r[15:16], r[15:16], r6
00217c  1f431000  addli r6, zero, 12
002180  0b242448  max.ul r[9:10], r[9:10], r[3:4]
002184  0b27e910  add.ul r[15:16], r[19:20], r[15:16]
002188  6b590fc8  load.d r[19:20], -896(r30)
00218c  0b312418  sub.sl r[3:4], r[9:10], r[3:4]
002190  6b548fcb  load.d r[9:10], -840(r30)
002194  7d100300  xwait r6, 0
002198  1b930304  ori r6, r7, 64
00219c  9f038000  addli r7, zero, 64
0021a0  17394903  sll.d r[19:20], r[19:20], r20
0021a4  0b214140  min.ul r[3:4], r[3:4], r[5:6]
0021a8  0b348540  min.sl r[9:10], r[11:12], r[9:10]
0021ac  27040401  addli.d r[9:10], r[9:10], 128
0021b0  0b34a448  max.sl r[9:10], r[9:10], r[11:12]
0021b4  0b34a418  sub.sl r[9:10], r[9:10], r[11:12]
0021b8  0b252711  add.ul r[11:12], r[15:16], r[19:20]
0021bc  1f570000  addli r14, zero, 5
0021c0  1d000700  lock zero, r14
0021c4  0b324440  min.sl r[5:6], r[9:10], r[5:6]
0021c8  9f240000  addli r9, zero, 2
0021cc  00340002  core_id r8
0021d0  150a0a00  dma_cfg r20, r20, zero, 0
0021d4  15000a02  dma_cfg zero, r20, zero, 1
0021d8  95050004  dma_cfg r11, zero, zero, 2
0021dc  15057306  dma_cfg r10, r6, r7, 3
0021e0  1f733100  addli r6, r2, 31
0021e4  1b311100  slli r2, r2, 1
0021e8  9f010001  addli r3, zero, 128
0021ec  1b435300  srli r6, r6, 5
0021f0  1b01e103  andi r2, r2, 62
0021f4  95836108  dma_cfg r7, r3, r6, 4
0021f8  9f010004  addli r3, zero, 512
0021fc  1f030010  addli r6, zero, 2048
002200  1583410a  dma_cfg r6, r3, r4, 5
002204  15002010  dma_cfg zero, zero, r2, 8
002208  35000000  dma_run zero
00220c  1500400b  dma_cfg zero, zero, r20, 5
002210  1f511000  addli r2, zero, 13
002214  15000010  dma_cfg zero, zero, zero, 8
002218  1d100700  unlock r14
00221c  dbc4fcff  j -6620
002220  7d000000  xsignal zero, 0
002224  bb600400  bneq r8, zero, 56
002228  9f200000  addli r1, zero, 2
00222c  7d100000  xwait zero, 0
002230  7d100000  xwait zero, 0
002234  7d100000  xwait zero, 0
002238  7d100000  xwait zero, 0
00223c  7d100000  xwait zero, 0
002240  7d100000  xwait zero, 0
002244  7d100000  xwait zero, 0
002248  7d100000  xwait zero, 0
00224c  1d800000  lock zero, r1
002250  0d000020  ew_cfg zero, zero, zero, 16
002254  1d900000  unlock r1
002258  7d400000  xsignal_mode_cfg zero
00225c  9f8e3e07  addli sp, sp, 920
002260  00a00300  mfence { lm, sm, gm }
002264  00100000  exit
002268  00100000  exit
00226c  00100000  exit
002270  00100000  exit
002274  00100000  exit
002278  00100000  exit
00227c  00100000  exit
002280  00100000  exit
002284  00100000  exit
002288  00100000  exit
00228c  00100000  exit
002290  00100000  exit
002294  00100000  exit
002298  00100000  exit
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
