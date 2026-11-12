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
00005c  9f495000  addli r19, zero, 44
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
0000b4  9f8e9ef7  addli sp, sp, -1080
0000b8  9f100000  addli r1, zero, 1
0000bc  80350002  core_id r11
0000c0  1f8ffe07  addli r30, sp, 1016
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  37e00500  beq r11, zero, 24
0000cc  abf0ffff  lui r1, 1048575
0000d0  9b90f0ff  ori r1, r1, 4095
0000d4  80a10004  csr_set csr3, r1
0000d8  00d00100  sync_group
0000dc  db710000  j 908
0000e0  1f210000  addli r2, zero, 2
0000e4  fdd00000  uni_sram_cfg r1, r1
0000e8  abf1ffff  lui r3, 1048575
0000ec  1d000100  lock zero, r2
0000f0  8d000020  ew_cfg r1, zero, zero, 16
0000f4  9b90f1ff  ori r1, r3, 4095
0000f8  9f310000  addli r3, zero, 3
0000fc  1d100100  unlock r2
000100  1f510000  addli r2, zero, 5
000104  80a10004  csr_set csr3, r1
000108  9f501000  addli r1, zero, 13
00010c  00d00100  sync_group
000110  7d800000  xsignal r1, 0
000114  7d800000  xsignal r1, 0
000118  7d800000  xsignal r1, 0
00011c  7d000100  xsignal r2, 0
000120  7d000100  xsignal r2, 0
000124  7d000100  xsignal r2, 0
000128  7d000100  xsignal r2, 0
00012c  7d000100  xsignal r2, 0
000130  7d000100  xsignal r2, 0
000134  7d000100  xsignal r2, 0
000138  7d000100  xsignal r2, 0
00013c  7d000100  xsignal r2, 0
000140  7d000100  xsignal r2, 0
000144  7d000100  xsignal r2, 0
000148  7d000100  xsignal r2, 0
00014c  7d000100  xsignal r2, 0
000150  7d000100  xsignal r2, 0
000154  7d000100  xsignal r2, 0
000158  7d000100  xsignal r2, 0
00015c  7d000100  xsignal r2, 0
000160  7d000100  xsignal r2, 0
000164  7d000100  xsignal r2, 0
000168  7d000100  xsignal r2, 0
00016c  7d000100  xsignal r2, 0
000170  7d000100  xsignal r2, 0
000174  7d000100  xsignal r2, 0
000178  7d000100  xsignal r2, 0
00017c  7d000100  xsignal r2, 0
000180  7d000100  xsignal r2, 0
000184  7d000100  xsignal r2, 0
000188  7d000100  xsignal r2, 0
00018c  7d000100  xsignal r2, 0
000190  7d000100  xsignal r2, 0
000194  7d000100  xsignal r2, 0
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d000100  xsignal r2, 0
0001a8  7d000100  xsignal r2, 0
0001ac  7d000100  xsignal r2, 0
0001b0  7d000100  xsignal r2, 0
0001b4  7d000100  xsignal r2, 0
0001b8  7d000100  xsignal r2, 0
0001bc  7d000100  xsignal r2, 0
0001c0  7d000100  xsignal r2, 0
0001c4  7d000100  xsignal r2, 0
0001c8  7d000100  xsignal r2, 0
0001cc  7d000100  xsignal r2, 0
0001d0  7d000100  xsignal r2, 0
0001d4  7d000100  xsignal r2, 0
0001d8  7d000100  xsignal r2, 0
0001dc  9f101000  addli r1, zero, 9
0001e0  1f710000  addli r2, zero, 7
0001e4  7d800100  xsignal r3, 0
0001e8  7d800100  xsignal r3, 0
0001ec  7d800100  xsignal r3, 0
0001f0  7d800100  xsignal r3, 0
0001f4  7d800100  xsignal r3, 0
0001f8  7d800100  xsignal r3, 0
0001fc  7d800100  xsignal r3, 0
000200  7d800100  xsignal r3, 0
000204  7d800100  xsignal r3, 0
000208  7d800100  xsignal r3, 0
00020c  7d800100  xsignal r3, 0
000210  7d800100  xsignal r3, 0
000214  7d800100  xsignal r3, 0
000218  7d800100  xsignal r3, 0
00021c  7d800100  xsignal r3, 0
000220  7d800100  xsignal r3, 0
000224  7d800100  xsignal r3, 0
000228  7d800100  xsignal r3, 0
00022c  7d800100  xsignal r3, 0
000230  7d800100  xsignal r3, 0
000234  7d800100  xsignal r3, 0
000238  7d800100  xsignal r3, 0
00023c  7d800100  xsignal r3, 0
000240  7d800100  xsignal r3, 0
000244  7d800100  xsignal r3, 0
000248  7d800100  xsignal r3, 0
00024c  7d800100  xsignal r3, 0
000250  7d800100  xsignal r3, 0
000254  7d800100  xsignal r3, 0
000258  7d800100  xsignal r3, 0
00025c  7d800100  xsignal r3, 0
000260  7d800100  xsignal r3, 0
000264  7d800100  xsignal r3, 0
000268  7d800100  xsignal r3, 0
00026c  7d800100  xsignal r3, 0
000270  7d800100  xsignal r3, 0
000274  7d800100  xsignal r3, 0
000278  7d800000  xsignal r1, 0
00027c  7d800000  xsignal r1, 0
000280  7d800000  xsignal r1, 0
000284  7d800000  xsignal r1, 0
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
0003b8  7d000100  xsignal r2, 0
0003bc  7d000100  xsignal r2, 0
0003c0  7d000100  xsignal r2, 0
0003c4  7d000100  xsignal r2, 0
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
000448  9f202000  addli r1, zero, 18
00044c  1f012000  addli r2, zero, 16
000450  7d800000  xsignal r1, 0
000454  7d800000  xsignal r1, 0
000458  7d800000  xsignal r1, 0
00045c  7d000100  xsignal r2, 0
000460  7d000100  xsignal r2, 0
000464  7d000100  xsignal r2, 0
000468  e3004f00  loadli.w r1,  32(r30)
00046c  63414f00  loadli.w r2,  36(r30)
000470  00d20002  load_param_i r4, 1
000474  e3015f00  loadli.w r3,  40(r30)
000478  00530002  load_param_i r6, 0
00047c  abf2ffff  lui r5, 1048575
000480  670f0ffe  storeli.w zero, -16(r30)
000484  670e0ffe  storeli.w zero, -32(r30)
000488  e7440ffe  storeli.w zero, -180(r30)
00048c  e7000ffc  storeli.w zero, -504(r30)
000490  67070ffa  storeli.w zero, -656(r30)
000494  e74a0ff8  storeli.w zero, -852(r30)
000498  8b101120  mul.s r1, r2, r1
00049c  1f010200  addli r2, r4, 0
0004a0  0b913050  fmac.s r2, r1, r3
0004a4  8b913020  mul.s r3, r1, r3
0004a8  1f71f1ff  addli r2, r2, -1
0004ac  0b114130  div.s r2, r2, r4
0004b0  1b92f2ff  ori r4, r5, 4095
0004b4  674f4ffe  storeli.w r4, -12(r30)
0004b8  e70f4ffe  storeli.w r4, -8(r30)
0004bc  e74f4ffe  storeli.w r4, -4(r30)
0004c0  674e4ffe  storeli.w r4, -28(r30)
0004c4  e70e4ffe  storeli.w r4, -24(r30)
0004c8  e74e4ffe  storeli.w r4, -20(r30)
0004cc  67054ffe  storeli.w r4, -176(r30)
0004d0  67454ffe  storeli.w r4, -172(r30)
0004d4  e7054ffe  storeli.w r4, -168(r30)
0004d8  e7454ffe  storeli.w r4, -164(r30)
0004dc  67064ffe  storeli.w r4, -160(r30)
0004e0  67464ffe  storeli.w r4, -156(r30)
0004e4  e7064ffe  storeli.w r4, -152(r30)
0004e8  e7464ffe  storeli.w r4, -148(r30)
0004ec  67074ffe  storeli.w r4, -144(r30)
0004f0  67474ffe  storeli.w r4, -140(r30)
0004f4  e7074ffe  storeli.w r4, -136(r30)
0004f8  e7474ffe  storeli.w r4, -132(r30)
0004fc  67084ffe  storeli.w r4, -128(r30)
000500  67484ffe  storeli.w r4, -124(r30)
000504  e7084ffe  storeli.w r4, -120(r30)
000508  e7484ffe  storeli.w r4, -116(r30)
00050c  67094ffe  storeli.w r4, -112(r30)
000510  67494ffe  storeli.w r4, -108(r30)
000514  e7094ffe  storeli.w r4, -104(r30)
000518  e7494ffe  storeli.w r4, -100(r30)
00051c  670a4ffe  storeli.w r4, -96(r30)
000520  674a4ffe  storeli.w r4, -92(r30)
000524  e70a4ffe  storeli.w r4, -88(r30)
000528  e74a4ffe  storeli.w r4, -84(r30)
00052c  670b4ffe  storeli.w r4, -80(r30)
000530  674b4ffe  storeli.w r4, -76(r30)
000534  e70b4ffe  storeli.w r4, -72(r30)
000538  e74b4ffe  storeli.w r4, -68(r30)
00053c  670c4ffe  storeli.w r4, -64(r30)
000540  674c4ffe  storeli.w r4, -60(r30)
000544  e70c4ffe  storeli.w r4, -56(r30)
000548  e74c4ffe  storeli.w r4, -52(r30)
00054c  670d4ffe  storeli.w r4, -48(r30)
000550  674d4ffe  storeli.w r4, -44(r30)
000554  e70d4ffe  storeli.w r4, -40(r30)
000558  e74d4ffe  storeli.w r4, -36(r30)
00055c  e7404ffc  storeli.w r4, -500(r30)
000560  67014ffc  storeli.w r4, -496(r30)
000564  67414ffc  storeli.w r4, -492(r30)
000568  e7014ffc  storeli.w r4, -488(r30)
00056c  e7414ffc  storeli.w r4, -484(r30)
000570  67024ffc  storeli.w r4, -480(r30)
000574  67424ffc  storeli.w r4, -476(r30)
000578  e7024ffc  storeli.w r4, -472(r30)
00057c  e7424ffc  storeli.w r4, -468(r30)
000580  67034ffc  storeli.w r4, -464(r30)
000584  67434ffc  storeli.w r4, -460(r30)
000588  e7034ffc  storeli.w r4, -456(r30)
00058c  e7434ffc  storeli.w r4, -452(r30)
000590  67044ffc  storeli.w r4, -448(r30)
000594  67444ffc  storeli.w r4, -444(r30)
000598  e7044ffc  storeli.w r4, -440(r30)
00059c  e7444ffc  storeli.w r4, -436(r30)
0005a0  67054ffc  storeli.w r4, -432(r30)
0005a4  67454ffc  storeli.w r4, -428(r30)
0005a8  e7054ffc  storeli.w r4, -424(r30)
0005ac  e7454ffc  storeli.w r4, -420(r30)
0005b0  67064ffc  storeli.w r4, -416(r30)
0005b4  67464ffc  storeli.w r4, -412(r30)
0005b8  e7064ffc  storeli.w r4, -408(r30)
0005bc  e7464ffc  storeli.w r4, -404(r30)
0005c0  67074ffc  storeli.w r4, -400(r30)
0005c4  67474ffc  storeli.w r4, -396(r30)
0005c8  e7074ffc  storeli.w r4, -392(r30)
0005cc  e7474ffc  storeli.w r4, -388(r30)
0005d0  67084ffc  storeli.w r4, -384(r30)
0005d4  67484ffc  storeli.w r4, -380(r30)
0005d8  e7084ffc  storeli.w r4, -376(r30)
0005dc  e7484ffc  storeli.w r4, -372(r30)
0005e0  67094ffc  storeli.w r4, -368(r30)
0005e4  67494ffc  storeli.w r4, -364(r30)
0005e8  e7094ffc  storeli.w r4, -360(r30)
0005ec  e7494ffc  storeli.w r4, -356(r30)
0005f0  670a4ffc  storeli.w r4, -352(r30)
0005f4  674a4ffc  storeli.w r4, -348(r30)
0005f8  e70a4ffc  storeli.w r4, -344(r30)
0005fc  e74a4ffc  storeli.w r4, -340(r30)
000600  670b4ffc  storeli.w r4, -336(r30)
000604  674b4ffc  storeli.w r4, -332(r30)
000608  e70b4ffc  storeli.w r4, -328(r30)
00060c  e74b4ffc  storeli.w r4, -324(r30)
000610  670c4ffc  storeli.w r4, -320(r30)
000614  674c4ffc  storeli.w r4, -316(r30)
000618  e70c4ffc  storeli.w r4, -312(r30)
00061c  e74c4ffc  storeli.w r4, -308(r30)
000620  670d4ffc  storeli.w r4, -304(r30)
000624  674d4ffc  storeli.w r4, -300(r30)
000628  e70d4ffc  storeli.w r4, -296(r30)
00062c  e74d4ffc  storeli.w r4, -292(r30)
000630  670e4ffc  storeli.w r4, -288(r30)
000634  674e4ffc  storeli.w r4, -284(r30)
000638  e70e4ffc  storeli.w r4, -280(r30)
00063c  e74e4ffc  storeli.w r4, -276(r30)
000640  670f4ffc  storeli.w r4, -272(r30)
000644  674f4ffc  storeli.w r4, -268(r30)
000648  e70f4ffc  storeli.w r4, -264(r30)
00064c  e74f4ffc  storeli.w r4, -260(r30)
000650  67004ffe  storeli.w r4, -256(r30)
000654  67404ffe  storeli.w r4, -252(r30)
000658  e7004ffe  storeli.w r4, -248(r30)
00065c  e7404ffe  storeli.w r4, -244(r30)
000660  67014ffe  storeli.w r4, -240(r30)
000664  67414ffe  storeli.w r4, -236(r30)
000668  e7014ffe  storeli.w r4, -232(r30)
00066c  e7414ffe  storeli.w r4, -228(r30)
000670  67024ffe  storeli.w r4, -224(r30)
000674  67424ffe  storeli.w r4, -220(r30)
000678  e7024ffe  storeli.w r4, -216(r30)
00067c  e7424ffe  storeli.w r4, -212(r30)
000680  67034ffe  storeli.w r4, -208(r30)
000684  67434ffe  storeli.w r4, -204(r30)
000688  e7034ffe  storeli.w r4, -200(r30)
00068c  e7434ffe  storeli.w r4, -196(r30)
000690  67044ffe  storeli.w r4, -192(r30)
000694  67444ffe  storeli.w r4, -188(r30)
000698  e7044ffe  storeli.w r4, -184(r30)
00069c  67474ffa  storeli.w r4, -652(r30)
0006a0  e7074ffa  storeli.w r4, -648(r30)
0006a4  e7474ffa  storeli.w r4, -644(r30)
0006a8  67084ffa  storeli.w r4, -640(r30)
0006ac  67484ffa  storeli.w r4, -636(r30)
0006b0  e7084ffa  storeli.w r4, -632(r30)
0006b4  e7484ffa  storeli.w r4, -628(r30)
0006b8  67094ffa  storeli.w r4, -624(r30)
0006bc  67494ffa  storeli.w r4, -620(r30)
0006c0  e7094ffa  storeli.w r4, -616(r30)
0006c4  e7494ffa  storeli.w r4, -612(r30)
0006c8  670a4ffa  storeli.w r4, -608(r30)
0006cc  674a4ffa  storeli.w r4, -604(r30)
0006d0  e70a4ffa  storeli.w r4, -600(r30)
0006d4  e74a4ffa  storeli.w r4, -596(r30)
0006d8  670b4ffa  storeli.w r4, -592(r30)
0006dc  674b4ffa  storeli.w r4, -588(r30)
0006e0  e70b4ffa  storeli.w r4, -584(r30)
0006e4  e74b4ffa  storeli.w r4, -580(r30)
0006e8  670c4ffa  storeli.w r4, -576(r30)
0006ec  674c4ffa  storeli.w r4, -572(r30)
0006f0  e70c4ffa  storeli.w r4, -568(r30)
0006f4  e74c4ffa  storeli.w r4, -564(r30)
0006f8  670d4ffa  storeli.w r4, -560(r30)
0006fc  674d4ffa  storeli.w r4, -556(r30)
000700  e70d4ffa  storeli.w r4, -552(r30)
000704  e74d4ffa  storeli.w r4, -548(r30)
000708  670e4ffa  storeli.w r4, -544(r30)
00070c  674e4ffa  storeli.w r4, -540(r30)
000710  e70e4ffa  storeli.w r4, -536(r30)
000714  e74e4ffa  storeli.w r4, -532(r30)
000718  670f4ffa  storeli.w r4, -528(r30)
00071c  674f4ffa  storeli.w r4, -524(r30)
000720  e70f4ffa  storeli.w r4, -520(r30)
000724  e74f4ffa  storeli.w r4, -516(r30)
000728  67004ffc  storeli.w r4, -512(r30)
00072c  67404ffc  storeli.w r4, -508(r30)
000730  670b4ff8  storeli.w r4, -848(r30)
000734  674b4ff8  storeli.w r4, -844(r30)
000738  e70b4ff8  storeli.w r4, -840(r30)
00073c  e74b4ff8  storeli.w r4, -836(r30)
000740  670c4ff8  storeli.w r4, -832(r30)
000744  674c4ff8  storeli.w r4, -828(r30)
000748  e70c4ff8  storeli.w r4, -824(r30)
00074c  e74c4ff8  storeli.w r4, -820(r30)
000750  670d4ff8  storeli.w r4, -816(r30)
000754  674d4ff8  storeli.w r4, -812(r30)
000758  e70d4ff8  storeli.w r4, -808(r30)
00075c  e74d4ff8  storeli.w r4, -804(r30)
000760  670e4ff8  storeli.w r4, -800(r30)
000764  674e4ff8  storeli.w r4, -796(r30)
000768  e70e4ff8  storeli.w r4, -792(r30)
00076c  e74e4ff8  storeli.w r4, -788(r30)
000770  670f4ff8  storeli.w r4, -784(r30)
000774  674f4ff8  storeli.w r4, -780(r30)
000778  e70f4ff8  storeli.w r4, -776(r30)
00077c  e74f4ff8  storeli.w r4, -772(r30)
000780  67004ffa  storeli.w r4, -768(r30)
000784  67404ffa  storeli.w r4, -764(r30)
000788  e7004ffa  storeli.w r4, -760(r30)
00078c  e7404ffa  storeli.w r4, -756(r30)
000790  67014ffa  storeli.w r4, -752(r30)
000794  67414ffa  storeli.w r4, -748(r30)
000798  e7014ffa  storeli.w r4, -744(r30)
00079c  e7414ffa  storeli.w r4, -740(r30)
0007a0  67024ffa  storeli.w r4, -736(r30)
0007a4  67424ffa  storeli.w r4, -732(r30)
0007a8  e7024ffa  storeli.w r4, -728(r30)
0007ac  e7424ffa  storeli.w r4, -724(r30)
0007b0  67034ffa  storeli.w r4, -720(r30)
0007b4  67434ffa  storeli.w r4, -716(r30)
0007b8  e7034ffa  storeli.w r4, -712(r30)
0007bc  e7434ffa  storeli.w r4, -708(r30)
0007c0  67044ffa  storeli.w r4, -704(r30)
0007c4  67444ffa  storeli.w r4, -700(r30)
0007c8  e7044ffa  storeli.w r4, -696(r30)
0007cc  e7444ffa  storeli.w r4, -692(r30)
0007d0  67054ffa  storeli.w r4, -688(r30)
0007d4  67454ffa  storeli.w r4, -684(r30)
0007d8  e7054ffa  storeli.w r4, -680(r30)
0007dc  e7454ffa  storeli.w r4, -676(r30)
0007e0  67064ffa  storeli.w r4, -672(r30)
0007e4  67464ffa  storeli.w r4, -668(r30)
0007e8  e7064ffa  storeli.w r4, -664(r30)
0007ec  e7464ffa  storeli.w r4, -660(r30)
0007f0  8b106120  mul.s r1, r2, r6
0007f4  0b116150  fmac.s r2, r2, r6
0007f8  8b113140  min.s r3, r2, r3
0007fc  cbfa1112  ble.s r3, r1, 9916
000800  33910128  sext_int2long r[3:4], r3
000804  33930028  sext_int2long r[7:8], r1
000808  9f0a8000  addli r21, zero, 64
00080c  9f440000  addli r9, zero, 4
000810  1f790000  addli r18, zero, 7
000814  2b024000  lui r4, 1024
000818  ab02807f  lui r5, 522240
00081c  2b0effff  lui r28, 1048560
000820  9f060000  addli r13, zero, 0
000824  73382fc0  store.d r[3:4], -1008(r30)
000828  1f71f01f  addli r2, zero, 4095
00082c  ab80ffff  lui r1, 1048568
000830  73341fc0  store.d r[2:3], -1016(r30)
000834  abf0ff7f  lui r1, 524287
000838  2bf17f7f  lui r2, 522239
00083c  1b97f0ff  ori r14, r1, 4095
000840  ab700000  lui r1, 7
000844  9b97f0ff  ori r15, r1, 4095
000848  9b10f1ff  ori r1, r2, 4095
00084c  db060000  j 52
000850  1f411000  addli r2, zero, 12
000854  7d000100  xsignal r2, 0
000858  1f012000  addli r2, zero, 16
00085c  7d000100  xsignal r2, 0
000860  6b530fc4  load.d r[7:8], -960(r30)
000864  6b510fc1  load.d r[3:4], -1008(r30)
000868  e3467ff8  loadli.w r13,  -964(r30)
00086c  9f0a8000  addli r21, zero, 64
000870  1f790000  addli r18, zero, 7
000874  27130300  addli.d r[7:8], r[7:8], 1
000878  13312304  setlt.sl r2, r[7:8], r[3:4]
00087c  b7780112  beq r2, zero, 9788
000880  1f3b0000  addli r22, zero, 3
000884  3bb09500  bneq r11, r9, 12
000888  1f511000  addli r2, zero, 13
00088c  7d100100  xwait r2, 0
000890  63015f00  loadli.w r2,  40(r30)
000894  e3414f00  loadli.w r3,  36(r30)
000898  73306fc4  store.d r[7:8], -960(r30)
00089c  1f561000  addli r12, zero, 13
0008a0  0b112330  div.s r2, r6, r2
0008a4  1f031000  addli r6, zero, 8
0008a8  8b133130  div.s r7, r2, r3
0008ac  0b945331  div.s r8, r7, r21
0008b0  1b313400  slli r2, r8, 3
0008b4  8b912418  sub.s r3, r9, r2
0008b8  8b946140  min.s r9, r3, r6
0008bc  8b919338  mod.s r3, r7, r9
0008c0  0b133110  add.s r6, r2, r3
0008c4  e3415ff9  loadli.w r3,  -852(r30)
0008c8  6301effa  loadli.w r2,  -656(r30)
0008cc  13056b04  setlt.u r10, r22, r6
0008d0  33080328  zext_int2long r[17:18], r6
0008d4  9739c802  sll.d r[20:21], r[17:18], r12
0008d8  73300fc3  store.d r[17:18], -992(r30)
0008dc  3b300500  bneq r10, zero, 12
0008e0  33080028  zext_int2long r[17:18], zero
0008e4  db010000  j 12
0008e8  6b588fc0  load.d r[17:18], -1016(r30)
0008ec  17880903  and.d r[17:18], r[20:21], r[17:18]
0008f0  1b346400  slli r8, r8, 6
0008f4  1b337300  slli r6, r6, 7
0008f8  73340fc9  store.d r[17:18], -888(r30)
0008fc  9f0c0000  addli r25, zero, 0
000900  73383fc9  store.d r[20:21], -880(r30)
000904  8b938318  sub.s r7, r7, r8
000908  0b946639  mod.s r8, r13, r22
00090c  9f960600  addli r13, r13, 1
000910  e7416ff8  storeli.w r6, -996(r30)
000914  8b939330  div.s r7, r7, r9
000918  e743dff8  storeli.w r13, -964(r30)
00091c  6b568f00  load.d r[13:14], 8(r30)
000920  b3840328  zext_int2long r[10:11], r7
000924  1bb37300  slli r6, r7, 7
000928  9b330401  slli r7, r8, 16
00092c  17b82403  sll.d r[17:18], r[10:11], r18
000930  1f150000  addli r10, zero, 1
000934  e7046ff8  storeli.w r6, -952(r30)
000938  1734a802  sll.d r[9:10], r[17:18], r10
00093c  73380fc3  store.d r[17:18], -976(r30)
000940  0b248610  add.ul r[9:10], r[13:14], r[9:10]
000944  73308fc8  store.d r[9:10], -896(r30)
000948  1f040000  addli r8, zero, 0
00094c  db040000  j 36
000950  1b011500  andi r2, r10, 1
000954  80350002  core_id r11
000958  9f0a8000  addli r21, zero, 64
00095c  b71f0102  beq r2, zero, 2020
000960  1f050000  addli r10, zero, 0
000964  9f9c0c00  addli r25, r25, 1
000968  1f140000  addli r8, zero, 1
00096c  1f010300  addli r2, r6, 0
000970  9f544000  addli r9, zero, 37
000974  1f036000  addli r6, zero, 48
000978  33860a28  zext_int2long r[13:14], r21
00097c  1f080003  addli r16, zero, 384
000980  1f0c8000  addli r24, zero, 64
000984  8b149138  mod.s r9, r2, r9
000988  0b936138  mod.s r6, r3, r6
00098c  7330cfca  store.d r[13:14], -864(r30)
000990  9f910100  addli r3, r3, 1
000994  33060828  zext_int2long r[13:14], r16
000998  733ccfc8  store.d r[13:14], -872(r30)
00099c  e74a3ff8  storeli.w r3, -852(r30)
0009a0  1bb9e400  slli r18, r9, 14
0009a4  ab040300  lui r9, 48
0009a8  1b3de300  slli r26, r6, 14
0009ac  1f130100  addli r6, r2, 1
0009b0  8b1d9910  add.s r27, r18, r9
0009b4  9f240000  addli r9, zero, 2
0009b8  67076ffa  storeli.w r6, -656(r30)
0009bc  b7eb9500  beq r11, r9, 760
0009c0  1f260000  addli r12, zero, 2
0009c4  33040428  zext_int2long r[9:10], r8
0009c8  80390002  core_id r19
0009cc  9f650000  addli r11, zero, 6
0009d0  3bc0b902  bneq r19, r11, 1040
0009d4  1f580000  addli r16, zero, 5
0009d8  eb590fc9  load.d r[20:21], -880(r30)
0009dc  eb5a0fca  load.d r[22:23], -864(r30)
0009e0  9f180000  addli r17, zero, 1
0009e4  803b0002  core_id r23
0009e8  9f464000  addli r13, zero, 36
0009ec  17340403  sll.d r[9:10], r[9:10], r16
0009f0  17143403  or.d r[9:10], r[9:10], r[20:21]
0009f4  eb598fc8  load.d r[20:21], -888(r30)
0009f8  8b393419  sub.sl r[20:21], r[9:10], r[20:21]
0009fc  17341403  sll.d r[9:10], r[9:10], r17
000a00  8f995961  div.sl r[20:21], r[20:21], r[22:23]
000a04  eb5a8fc9  load.d r[22:23], -872(r30)
000a08  8bba5941  min.sl r[22:23], r[20:21], r[22:23]
000a0c  8bba3a19  sub.sl r[22:23], r[22:23], r[20:21]
000a10  eb590f00  load.d r[20:21], 0(r30)
000a14  9f850a01  addli r11, r21, 128
000a18  8ba98910  add.ul r[20:21], r[20:21], r[9:10]
000a1c  1f340000  addli r8, zero, 3
000a20  9f440000  addli r9, zero, 4
000a24  7d100400  xwait r8, 0
000a28  bf842600  blt.s r13, r2, 288
000a2c  1d000800  lock zero, r16
000a30  1f610000  addli r2, zero, 6
000a34  15000014  dma_cfg zero, zero, zero, 10
000a38  15001015  dma_cfg zero, zero, r17, 10
000a3c  1500c014  dma_cfg zero, zero, r12, 10
000a40  15008014  dma_cfg zero, zero, r8, 10
000a44  15009014  dma_cfg zero, zero, r9, 10
000a48  15000015  dma_cfg zero, zero, r16, 10
000a4c  15002014  dma_cfg zero, zero, r2, 10
000a50  1f710000  addli r2, zero, 7
000a54  15002014  dma_cfg zero, zero, r2, 10
000a58  1f011000  addli r2, zero, 8
000a5c  15002014  dma_cfg zero, zero, r2, 10
000a60  1f111000  addli r2, zero, 9
000a64  15002014  dma_cfg zero, zero, r2, 10
000a68  1f211000  addli r2, zero, 10
000a6c  15002014  dma_cfg zero, zero, r2, 10
000a70  1f311000  addli r2, zero, 11
000a74  15002014  dma_cfg zero, zero, r2, 10
000a78  1f411000  addli r2, zero, 12
000a7c  15002014  dma_cfg zero, zero, r2, 10
000a80  1f511000  addli r2, zero, 13
000a84  15002014  dma_cfg zero, zero, r2, 10
000a88  1f611000  addli r2, zero, 14
000a8c  15002014  dma_cfg zero, zero, r2, 10
000a90  1f711000  addli r2, zero, 15
000a94  15002014  dma_cfg zero, zero, r2, 10
000a98  1f012000  addli r2, zero, 16
000a9c  15002014  dma_cfg zero, zero, r2, 10
000aa0  1f112000  addli r2, zero, 17
000aa4  15002014  dma_cfg zero, zero, r2, 10
000aa8  1f212000  addli r2, zero, 18
000aac  15002014  dma_cfg zero, zero, r2, 10
000ab0  1f312000  addli r2, zero, 19
000ab4  15002014  dma_cfg zero, zero, r2, 10
000ab8  1f412000  addli r2, zero, 20
000abc  15002014  dma_cfg zero, zero, r2, 10
000ac0  1f512000  addli r2, zero, 21
000ac4  15002014  dma_cfg zero, zero, r2, 10
000ac8  1f612000  addli r2, zero, 22
000acc  15002014  dma_cfg zero, zero, r2, 10
000ad0  1f712000  addli r2, zero, 23
000ad4  15002014  dma_cfg zero, zero, r2, 10
000ad8  1f013000  addli r2, zero, 24
000adc  15002014  dma_cfg zero, zero, r2, 10
000ae0  1f113000  addli r2, zero, 25
000ae4  15002014  dma_cfg zero, zero, r2, 10
000ae8  1f213000  addli r2, zero, 26
000aec  15002014  dma_cfg zero, zero, r2, 10
000af0  1f313000  addli r2, zero, 27
000af4  15002014  dma_cfg zero, zero, r2, 10
000af8  1f413000  addli r2, zero, 28
000afc  15002014  dma_cfg zero, zero, r2, 10
000b00  1f513000  addli r2, zero, 29
000b04  15002014  dma_cfg zero, zero, r2, 10
000b08  1f613000  addli r2, zero, 30
000b0c  15002014  dma_cfg zero, zero, r2, 10
000b10  1f713000  addli r2, zero, 31
000b14  15002014  dma_cfg zero, zero, r2, 10
000b18  1f010001  addli r2, zero, 128
000b1c  95880800  dma_cfg r17, r17, zero, 0
000b20  95080002  dma_cfg r17, zero, zero, 1
000b24  15000004  dma_cfg zero, zero, zero, 2
000b28  950d8007  dma_cfg r27, zero, r24, 3
000b2c  15011009  dma_cfg r2, zero, r17, 4
000b30  1501200a  dma_cfg r2, zero, r2, 5
000b34  15000010  dma_cfg zero, zero, zero, 8
000b38  35000000  dma_run zero
000b3c  1500100b  dma_cfg zero, zero, r17, 5
000b40  15000010  dma_cfg zero, zero, zero, 8
000b44  1d100800  unlock r16
000b48  2b010300  lui r2, 48
000b4c  1d800400  lock zero, r9
000b50  1f048000  addli r8, zero, 64
000b54  9f060001  addli r13, zero, 128
000b58  1f260000  addli r12, zero, 2
000b5c  1f3b0000  addli r22, zero, 3
000b60  95880800  dma_cfg r17, r17, zero, 0
000b64  1b110104  ori r2, r2, 64
000b68  15000a04  dma_cfg zero, r20, zero, 2
000b6c  0b112910  add.s r2, r18, r2
000b70  1f390000  addli r18, zero, 3
000b74  15818906  dma_cfg r2, r19, r8, 3
000b78  1f610000  addli r2, zero, 6
000b7c  95061409  dma_cfg r13, r8, r17, 4
000b80  9586b60a  dma_cfg r13, r13, r11, 5
000b84  15000010  dma_cfg zero, zero, zero, 8
000b88  35000000  dma_run zero
000b8c  1500100b  dma_cfg zero, zero, r17, 5
000b90  15000010  dma_cfg zero, zero, zero, 8
000b94  1d900400  unlock r9
000b98  1d000800  lock zero, r16
000b9c  15000014  dma_cfg zero, zero, zero, 10
000ba0  15001015  dma_cfg zero, zero, r17, 10
000ba4  1500c014  dma_cfg zero, zero, r12, 10
000ba8  15002015  dma_cfg zero, zero, r18, 10
000bac  15009014  dma_cfg zero, zero, r9, 10
000bb0  15000015  dma_cfg zero, zero, r16, 10
000bb4  15002014  dma_cfg zero, zero, r2, 10
000bb8  1f710000  addli r2, zero, 7
000bbc  15002014  dma_cfg zero, zero, r2, 10
000bc0  1f011000  addli r2, zero, 8
000bc4  15002014  dma_cfg zero, zero, r2, 10
000bc8  1f111000  addli r2, zero, 9
000bcc  15002014  dma_cfg zero, zero, r2, 10
000bd0  1f211000  addli r2, zero, 10
000bd4  15002014  dma_cfg zero, zero, r2, 10
000bd8  1f311000  addli r2, zero, 11
000bdc  15002014  dma_cfg zero, zero, r2, 10
000be0  1f411000  addli r2, zero, 12
000be4  15002014  dma_cfg zero, zero, r2, 10
000be8  1f511000  addli r2, zero, 13
000bec  15002014  dma_cfg zero, zero, r2, 10
000bf0  1f611000  addli r2, zero, 14
000bf4  15002014  dma_cfg zero, zero, r2, 10
000bf8  1f711000  addli r2, zero, 15
000bfc  15002014  dma_cfg zero, zero, r2, 10
000c00  1f012000  addli r2, zero, 16
000c04  15002014  dma_cfg zero, zero, r2, 10
000c08  1f112000  addli r2, zero, 17
000c0c  15002014  dma_cfg zero, zero, r2, 10
000c10  1f212000  addli r2, zero, 18
000c14  15002014  dma_cfg zero, zero, r2, 10
000c18  1f312000  addli r2, zero, 19
000c1c  15002014  dma_cfg zero, zero, r2, 10
000c20  1f412000  addli r2, zero, 20
000c24  15002014  dma_cfg zero, zero, r2, 10
000c28  1f512000  addli r2, zero, 21
000c2c  15002014  dma_cfg zero, zero, r2, 10
000c30  1f612000  addli r2, zero, 22
000c34  15002014  dma_cfg zero, zero, r2, 10
000c38  1f712000  addli r2, zero, 23
000c3c  15002014  dma_cfg zero, zero, r2, 10
000c40  1f013000  addli r2, zero, 24
000c44  15002014  dma_cfg zero, zero, r2, 10
000c48  1f113000  addli r2, zero, 25
000c4c  15002014  dma_cfg zero, zero, r2, 10
000c50  1f213000  addli r2, zero, 26
000c54  15002014  dma_cfg zero, zero, r2, 10
000c58  1f313000  addli r2, zero, 27
000c5c  15002014  dma_cfg zero, zero, r2, 10
000c60  1f413000  addli r2, zero, 28
000c64  15002014  dma_cfg zero, zero, r2, 10
000c68  1f513000  addli r2, zero, 29
000c6c  15002014  dma_cfg zero, zero, r2, 10
000c70  1f613000  addli r2, zero, 30
000c74  15002014  dma_cfg zero, zero, r2, 10
000c78  1f713000  addli r2, zero, 31
000c7c  15002014  dma_cfg zero, zero, r2, 10
000c80  95880800  dma_cfg r17, r17, zero, 0
000c84  95080002  dma_cfg r17, zero, zero, 1
000c88  15000004  dma_cfg zero, zero, zero, 2
000c8c  950d8006  dma_cfg r27, zero, r8, 3
000c90  95061009  dma_cfg r13, zero, r17, 4
000c94  9506b00a  dma_cfg r13, zero, r11, 5
000c98  15000010  dma_cfg zero, zero, zero, 8
000c9c  35000000  dma_run zero
000ca0  1500100b  dma_cfg zero, zero, r17, 5
000ca4  15000010  dma_cfg zero, zero, zero, 8
000ca8  1d100800  unlock r16
000cac  7d000600  xsignal r12, 0
000cb0  db080000  j 68
000cb4  1f510000  addli r2, zero, 5
000cb8  7d900400  xwait r9, 0
000cbc  1f040001  addli r8, zero, 128
000cc0  803b0002  core_id r23
000cc4  7d100100  xwait r2, 0
000cc8  1d000000  lock zero, zero
000ccc  1f014000  addli r2, zero, 32
000cd0  81040000  ds_cfg r9, zero, 0
000cd4  01010002  ds_cfg r2, zero, 1
000cd8  0101001c  ds_cfg r2, zero, 14
000cdc  0104001a  ds_cfg r8, zero, 13
000ce0  219d2d02  shuffle_batch r26, r27, r2, 1
000ce4  1f410000  addli r2, zero, 4
000ce8  1d100000  unlock zero
000cec  7d000b00  xsignal r22, 0
000cf0  7d000100  xsignal r2, 0
000cf4  63011ffc  loadli.w r2,  -504(r30)
000cf8  1f04a000  addli r8, zero, 80
000cfc  e3449ffe  loadli.w r9,  -180(r30)
000d00  0b148138  mod.s r8, r2, r8
000d04  1f110100  addli r2, r2, 1
000d08  9f940400  addli r9, r9, 1
000d0c  e7002ffc  storeli.w r2, -504(r30)
000d10  e7449ffe  storeli.w r9, -180(r30)
000d14  9b35e400  slli r11, r8, 14
000d18  1f410000  addli r2, zero, 4
000d1c  bbd02bfe  bneq r23, r2, -972
000d20  7d100100  xwait r2, 0
000d24  1f011000  addli r2, zero, 8
000d28  1f140000  addli r8, zero, 1
000d2c  9f040000  addli r9, zero, 0
000d30  9f098000  addli r19, zero, 64
000d34  1f4a0000  addli r20, zero, 4
000d38  1f260000  addli r12, zero, 2
000d3c  9f064000  addli r13, zero, 32
000d40  1f080001  addli r16, zero, 128
000d44  7d100100  xwait r2, 0
000d48  1f110000  addli r2, zero, 1
000d4c  b7f00c00  beq r25, zero, 60
000d50  1bb9d400  slli r18, r9, 13
000d54  9bb48400  slli r9, r9, 8
000d58  1d000100  lock zero, r2
000d5c  89890601  mm_cfg r19, r13, r16, 0
000d60  1719b900  or r18, r18, r11
000d64  97947400  or r9, r9, r7
000d68  09062a04  mm_cfg r12, r20, r2, 2
000d6c  a9142d11  mm_acc r9, r26, r18, 8
000d70  1b091400  andi r18, r8, 1
000d74  9f140000  addli r9, zero, 1
000d78  1f040000  addli r8, zero, 0
000d7c  1d100100  unlock r2
000d80  3b4f09fe  bneq r18, zero, -48
000d84  5b070000  j 56
000d88  1bb9d400  slli r18, r9, 13
000d8c  9bb48400  slli r9, r9, 8
000d90  1d000100  lock zero, r2
000d94  89890601  mm_cfg r19, r13, r16, 0
000d98  1719b900  or r18, r18, r11
000d9c  97947400  or r9, r9, r7
000da0  09062a04  mm_cfg r12, r20, r2, 2
000da4  a9042d11  mm r9, r26, r18, 8
000da8  1b091400  andi r18, r8, 1
000dac  9f140000  addli r9, zero, 1
000db0  1f040000  addli r8, zero, 0
000db4  1d100100  unlock r2
000db8  3b4f09fe  bneq r18, zero, -48
000dbc  1f540000  addli r8, zero, 5
000dc0  1b011500  andi r2, r10, 1
000dc4  80350002  core_id r11
000dc8  9f0a8000  addli r21, zero, 64
000dcc  7d000400  xsignal r8, 0
000dd0  1f141000  addli r8, zero, 9
000dd4  7d000400  xsignal r8, 0
000dd8  3b2e01fc  bneq r2, zero, -1144
000ddc  db6b0000  j 860
000de0  634a9ffe  loadli.w r20,  -180(r30)
000de4  9f464000  addli r13, zero, 36
000de8  63011ffc  loadli.w r2,  -504(r30)
000dec  9f05a000  addli r11, zero, 80
000df0  0b19da38  mod.s r18, r20, r13
000df4  8b15b138  mod.s r11, r2, r11
000df8  1f110100  addli r2, r2, 1
000dfc  ab460c00  lui r13, 196
000e00  e7002ffc  storeli.w r2, -504(r30)
000e04  1b31e900  slli r2, r18, 14
000e08  1f190a00  addli r18, r20, 1
000e0c  9bb5e500  slli r11, r11, 14
000e10  e7442fff  storeli.w r18, -180(r30)
000e14  8b1dd110  add.s r27, r2, r13
000e18  1f790000  addli r18, zero, 7
000e1c  378b2901  beq r19, r18, 704
000e20  803b0002  core_id r23
000e24  1f180000  addli r16, zero, 1
000e28  bbcb09ff  bneq r19, r16, -272
000e2c  1f0c2000  addli r24, zero, 16
000e30  6b580fc8  load.d r[17:18], -896(r30)
000e34  9f750000  addli r11, zero, 7
000e38  9f0a8000  addli r21, zero, 64
000e3c  9f064000  addli r13, zero, 32
000e40  9f0b0001  addli r23, zero, 128
000e44  1f2d2000  addli r26, zero, 18
000e48  17348403  sll.d r[9:10], r[9:10], r24
000e4c  7d900500  xwait r11, 0
000e50  0b298810  add.ul r[19:20], r[17:18], r[9:10]
000e54  9f440000  addli r9, zero, 4
000e58  9f180000  addli r17, zero, 1
000e5c  1f344000  addli r8, zero, 35
000e60  3f644401  blt.s r8, r20, 280
000e64  1f580000  addli r16, zero, 5
000e68  1f640000  addli r8, zero, 6
000e6c  1d000800  lock zero, r16
000e70  15000014  dma_cfg zero, zero, zero, 10
000e74  15001015  dma_cfg zero, zero, r17, 10
000e78  1500c014  dma_cfg zero, zero, r12, 10
000e7c  15006015  dma_cfg zero, zero, r22, 10
000e80  15009014  dma_cfg zero, zero, r9, 10
000e84  15000015  dma_cfg zero, zero, r16, 10
000e88  15008014  dma_cfg zero, zero, r8, 10
000e8c  1f041000  addli r8, zero, 8
000e90  1500b014  dma_cfg zero, zero, r11, 10
000e94  15008014  dma_cfg zero, zero, r8, 10
000e98  1f141000  addli r8, zero, 9
000e9c  15008014  dma_cfg zero, zero, r8, 10
000ea0  1f241000  addli r8, zero, 10
000ea4  15008014  dma_cfg zero, zero, r8, 10
000ea8  1f341000  addli r8, zero, 11
000eac  15008014  dma_cfg zero, zero, r8, 10
000eb0  1f441000  addli r8, zero, 12
000eb4  15008014  dma_cfg zero, zero, r8, 10
000eb8  1f541000  addli r8, zero, 13
000ebc  15008014  dma_cfg zero, zero, r8, 10
000ec0  1f641000  addli r8, zero, 14
000ec4  15008014  dma_cfg zero, zero, r8, 10
000ec8  1f741000  addli r8, zero, 15
000ecc  15008014  dma_cfg zero, zero, r8, 10
000ed0  1f142000  addli r8, zero, 17
000ed4  15008015  dma_cfg zero, zero, r24, 10
000ed8  15008014  dma_cfg zero, zero, r8, 10
000edc  1f342000  addli r8, zero, 19
000ee0  1500a015  dma_cfg zero, zero, r26, 10
000ee4  15008014  dma_cfg zero, zero, r8, 10
000ee8  1f442000  addli r8, zero, 20
000eec  15008014  dma_cfg zero, zero, r8, 10
000ef0  1f542000  addli r8, zero, 21
000ef4  15008014  dma_cfg zero, zero, r8, 10
000ef8  1f642000  addli r8, zero, 22
000efc  15008014  dma_cfg zero, zero, r8, 10
000f00  1f742000  addli r8, zero, 23
000f04  15008014  dma_cfg zero, zero, r8, 10
000f08  1f043000  addli r8, zero, 24
000f0c  15008014  dma_cfg zero, zero, r8, 10
000f10  1f143000  addli r8, zero, 25
000f14  15008014  dma_cfg zero, zero, r8, 10
000f18  1f243000  addli r8, zero, 26
000f1c  15008014  dma_cfg zero, zero, r8, 10
000f20  1f343000  addli r8, zero, 27
000f24  15008014  dma_cfg zero, zero, r8, 10
000f28  1f443000  addli r8, zero, 28
000f2c  15008014  dma_cfg zero, zero, r8, 10
000f30  1f543000  addli r8, zero, 29
000f34  15008014  dma_cfg zero, zero, r8, 10
000f38  1f643000  addli r8, zero, 30
000f3c  15008014  dma_cfg zero, zero, r8, 10
000f40  1f743000  addli r8, zero, 31
000f44  15008014  dma_cfg zero, zero, r8, 10
000f48  1f040004  addli r8, zero, 512
000f4c  95880800  dma_cfg r17, r17, zero, 0
000f50  95080002  dma_cfg r17, zero, zero, 1
000f54  15000004  dma_cfg zero, zero, zero, 2
000f58  950d5007  dma_cfg r27, zero, r21, 3
000f5c  950b9008  dma_cfg r23, zero, r9, 4
000f60  1504d00a  dma_cfg r8, zero, r13, 5
000f64  15000010  dma_cfg zero, zero, zero, 8
000f68  35000000  dma_run zero
000f6c  1500100b  dma_cfg zero, zero, r17, 5
000f70  15000010  dma_cfg zero, zero, zero, 8
000f74  1d100800  unlock r16
000f78  2b440c00  lui r8, 196
000f7c  1d800400  lock zero, r9
000f80  1f080004  addli r16, zero, 512
000f84  95880800  dma_cfg r17, r17, zero, 0
000f88  1b140404  ori r8, r8, 64
000f8c  15800904  dma_cfg zero, r19, zero, 2
000f90  0b118110  add.s r2, r2, r8
000f94  1f540000  addli r8, zero, 5
000f98  15015907  dma_cfg r2, r18, r21, 3
000f9c  1f010010  addli r2, zero, 2048
000fa0  958b9a08  dma_cfg r23, r21, r9, 4
000fa4  1508d10a  dma_cfg r16, r2, r13, 5
000fa8  1f011000  addli r2, zero, 8
000fac  15000010  dma_cfg zero, zero, zero, 8
000fb0  35000000  dma_run zero
000fb4  1500100b  dma_cfg zero, zero, r17, 5
000fb8  15000010  dma_cfg zero, zero, zero, 8
000fbc  1d900400  unlock r9
000fc0  1d000400  lock zero, r8
000fc4  15000014  dma_cfg zero, zero, zero, 10
000fc8  15001015  dma_cfg zero, zero, r17, 10
000fcc  1500c014  dma_cfg zero, zero, r12, 10
000fd0  1f660000  addli r12, zero, 6
000fd4  15006015  dma_cfg zero, zero, r22, 10
000fd8  15009014  dma_cfg zero, zero, r9, 10
000fdc  15008014  dma_cfg zero, zero, r8, 10
000fe0  1500c014  dma_cfg zero, zero, r12, 10
000fe4  1500b014  dma_cfg zero, zero, r11, 10
000fe8  80350002  core_id r11
000fec  15002014  dma_cfg zero, zero, r2, 10
000ff0  1f111000  addli r2, zero, 9
000ff4  15002014  dma_cfg zero, zero, r2, 10
000ff8  1f211000  addli r2, zero, 10
000ffc  15002014  dma_cfg zero, zero, r2, 10
001000  1f311000  addli r2, zero, 11
001004  15002014  dma_cfg zero, zero, r2, 10
001008  1f411000  addli r2, zero, 12
00100c  15002014  dma_cfg zero, zero, r2, 10
001010  1f511000  addli r2, zero, 13
001014  15002014  dma_cfg zero, zero, r2, 10
001018  1f611000  addli r2, zero, 14
00101c  15002014  dma_cfg zero, zero, r2, 10
001020  1f711000  addli r2, zero, 15
001024  15002014  dma_cfg zero, zero, r2, 10
001028  1f112000  addli r2, zero, 17
00102c  15008015  dma_cfg zero, zero, r24, 10
001030  15002014  dma_cfg zero, zero, r2, 10
001034  1f312000  addli r2, zero, 19
001038  1500a015  dma_cfg zero, zero, r26, 10
00103c  15002014  dma_cfg zero, zero, r2, 10
001040  1f412000  addli r2, zero, 20
001044  15002014  dma_cfg zero, zero, r2, 10
001048  1f512000  addli r2, zero, 21
00104c  15002014  dma_cfg zero, zero, r2, 10
001050  1f612000  addli r2, zero, 22
001054  15002014  dma_cfg zero, zero, r2, 10
001058  1f712000  addli r2, zero, 23
00105c  15002014  dma_cfg zero, zero, r2, 10
001060  1f013000  addli r2, zero, 24
001064  15002014  dma_cfg zero, zero, r2, 10
001068  1f113000  addli r2, zero, 25
00106c  15002014  dma_cfg zero, zero, r2, 10
001070  1f213000  addli r2, zero, 26
001074  15002014  dma_cfg zero, zero, r2, 10
001078  1f313000  addli r2, zero, 27
00107c  15002014  dma_cfg zero, zero, r2, 10
001080  1f413000  addli r2, zero, 28
001084  15002014  dma_cfg zero, zero, r2, 10
001088  1f513000  addli r2, zero, 29
00108c  15002014  dma_cfg zero, zero, r2, 10
001090  1f613000  addli r2, zero, 30
001094  15002014  dma_cfg zero, zero, r2, 10
001098  1f713000  addli r2, zero, 31
00109c  15002014  dma_cfg zero, zero, r2, 10
0010a0  95880800  dma_cfg r17, r17, zero, 0
0010a4  95080002  dma_cfg r17, zero, zero, 1
0010a8  15000004  dma_cfg zero, zero, zero, 2
0010ac  950d5007  dma_cfg r27, zero, r21, 3
0010b0  950b9008  dma_cfg r23, zero, r9, 4
0010b4  1508d00a  dma_cfg r16, zero, r13, 5
0010b8  15000010  dma_cfg zero, zero, zero, 8
0010bc  35000000  dma_run zero
0010c0  1500100b  dma_cfg zero, zero, r17, 5
0010c4  15000010  dma_cfg zero, zero, zero, 8
0010c8  1d100400  unlock r8
0010cc  7d000600  xsignal r12, 0
0010d0  1b011500  andi r2, r10, 1
0010d4  3b3201fc  bneq r2, zero, -1908
0010d8  5b0b0000  j 88
0010dc  1f610000  addli r2, zero, 6
0010e0  1f040001  addli r8, zero, 128
0010e4  9f0a8000  addli r21, zero, 64
0010e8  7d100100  xwait r2, 0
0010ec  1f111000  addli r2, zero, 9
0010f0  7d100100  xwait r2, 0
0010f4  1d000000  lock zero, zero
0010f8  1f014000  addli r2, zero, 32
0010fc  01060000  ds_cfg r12, zero, 0
001100  01040002  ds_cfg r8, zero, 1
001104  0101001c  ds_cfg r2, zero, 14
001108  0104001a  ds_cfg r8, zero, 13
00110c  c1852d04  shuffle_coa r11, r27, r2, 2
001110  1f710000  addli r2, zero, 7
001114  80350002  core_id r11
001118  1d100000  unlock zero
00111c  7d000100  xsignal r2, 0
001120  1f011000  addli r2, zero, 8
001124  7d000100  xsignal r2, 0
001128  1b011500  andi r2, r10, 1
00112c  bb5001fc  bneq r2, zero, -1996
001130  1f410000  addli r2, zero, 4
001134  3bb02500  bneq r11, r2, 12
001138  1f211000  addli r2, zero, 10
00113c  7d000100  xsignal r2, 0
001140  6301efff  loadli.w r2,  -16(r30)
001144  e301cfff  loadli.w r3,  -32(r30)
001148  1f130100  addli r6, r2, 1
00114c  e7033ff8  storeli.w r3, -968(r30)
001150  9f910100  addli r3, r3, 1
001154  670f6ffe  storeli.w r6, -16(r30)
001158  1f330000  addli r6, zero, 3
00115c  670e3ffe  storeli.w r3, -32(r30)
001160  3bd06500  bneq r11, r6, 20
001164  9f211000  addli r3, zero, 10
001168  7d900100  xwait r3, 0
00116c  9f012000  addli r3, zero, 16
001170  7d900100  xwait r3, 0
001174  0b116138  mod.s r2, r2, r6
001178  9f010001  addli r3, zero, 128
00117c  1f74f001  addli r8, zero, 255
001180  3d000000  xfence
001184  00a00300  mfence { lm, sm, gm }
001188  b38c0128  zext_int2long r[26:27], r3
00118c  ab411500  lui r3, 340
001190  80220404  csr_set csr5, r8
001194  9b910160  ori r3, r3, 1536
001198  1b310101  slli r2, r2, 16
00119c  8b113110  add.s r3, r2, r3
0011a0  1f711000  addli r2, zero, 15
0011a4  33040128  zext_int2long r[9:10], r2
0011a8  73388fc4  store.d r[9:10], -944(r30)
0011ac  1f240000  addli r8, zero, 2
0011b0  00e00200  sync_core
0011b4  bbf50500  bneq r11, zero, 380
0011b8  3d000000  xfence
0011bc  33040028  zext_int2long r[9:10], zero
0011c0  00a00300  mfence { lm, sm, gm }
0011c4  73348fc8  store.d r[9:10], -888(r30)
0011c8  5b030000  j 24
0011cc  6b540fc5  load.d r[9:10], -944(r30)
0011d0  6b550fc9  load.d r[11:12], -880(r30)
0011d4  13218504  setlt.ul r2, r[11:12], r[9:10]
0011d8  27140500  addli.d r[9:10], r[11:12], 1
0011dc  37150100  beq r2, zero, 324
0011e0  1f710000  addli r2, zero, 7
0011e4  6b568fc8  load.d r[13:14], -888(r30)
0011e8  73388fc8  store.d r[9:10], -880(r30)
0011ec  17352402  sll.d r[11:12], r[9:10], r2
0011f0  db040000  j 36
0011f4  27460600  addli.d r[13:14], r[13:14], 4
0011f8  0b936110  add.s r6, r3, r6
0011fc  93249603  setneq.d r9, r[13:14], r[26:27]
001200  73662300  stores.w r2, 12(r6)
001204  73647301  stores.w r23, 8(r6)
001208  73628300  stores.w r8, 4(r6)
00120c  73602301  stores.w r18, 0(r6)
001210  b7fe04fe  beq r9, zero, -68
001214  0b24a610  add.ul r[9:10], r[13:14], r[11:12]
001218  1b332400  slli r6, r8, 2
00121c  0b916310  add.s r2, r7, r6
001220  ef4dc100  loads.w r27, 12(r2)
001224  6f4b0100  loads.w r22, 0(r2)
001228  6f4c4100  loads.w r24, 4(r2)
00122c  ef4a8100  loads.w r21, 8(r2)
001230  178aed00  and r20, r27, r14
001234  13814205  setlt.u r2, r5, r20
001238  3b300100  bneq r2, zero, 12
00123c  1f810d00  addli r2, r27, 0
001240  5b010000  j 8
001244  17914d00  or r2, r27, r4
001248  9784ea00  and r9, r21, r14
00124c  13849204  setlt.u r8, r5, r9
001250  3b300400  bneq r8, zero, 12
001254  9f8b0a00  addli r23, r21, 0
001258  5b010000  j 8
00125c  979b4a00  or r23, r21, r4
001260  9709ec00  and r19, r24, r14
001264  13843205  setlt.u r8, r5, r19
001268  3b300400  bneq r8, zero, 12
00126c  1f040c00  addli r8, r24, 0
001270  5b010000  j 8
001274  17144c00  or r8, r24, r4
001278  1708eb00  and r16, r22, r14
00127c  93880205  setlt.u r17, r5, r16
001280  3bd00800  bneq r17, zero, 20
001284  1f090b00  addli r18, r22, 0
001288  13880005  setlt.u r16, r1, r16
00128c  37500800  beq r16, zero, 20
001290  db040000  j 36
001294  17194b00  or r18, r22, r4
001298  13880005  setlt.u r16, r1, r16
00129c  3b600800  bneq r16, zero, 24
0012a0  1b480b01  srli r16, r22, 16
0012a4  1b081800  andi r16, r16, 1
0012a8  0b180b11  add.s r16, r22, r16
0012ac  0b18f810  add.s r16, r16, r15
0012b0  1709c801  and r18, r16, r28
0012b4  13883005  setlt.u r16, r1, r19
0012b8  37600800  beq r16, zero, 24
0012bc  93849004  setlt.u r9, r1, r9
0012c0  b7b00400  beq r9, zero, 44
0012c4  93844005  setlt.u r9, r1, r20
0012c8  bbbc04fe  bneq r9, zero, -212
0012cc  db070000  j 60
0012d0  1b440c01  srli r8, r24, 16
0012d4  1b041400  andi r8, r8, 1
0012d8  0b148c10  add.s r8, r24, r8
0012dc  0b14f410  add.s r8, r8, r15
0012e0  1704c401  and r8, r8, r28
0012e4  93849004  setlt.u r9, r1, r9
0012e8  3bff04fe  bneq r9, zero, -36
0012ec  9bc40a01  srli r9, r21, 16
0012f0  9b841400  andi r9, r9, 1
0012f4  8b949a10  add.s r9, r21, r9
0012f8  8b94f410  add.s r9, r9, r15
0012fc  978bc401  and r23, r9, r28
001300  93844005  setlt.u r9, r1, r20
001304  bbcb04fe  bneq r9, zero, -272
001308  1bc10d01  srli r2, r27, 16
00130c  1b011100  andi r2, r2, 1
001310  0b912d10  add.s r2, r27, r2
001314  0b11f110  add.s r2, r2, r15
001318  1701c101  and r2, r2, r28
00131c  5bdbffff  j -296
001320  80350002  core_id r11
001324  1f330000  addli r6, zero, 3
001328  1f240000  addli r8, zero, 2
00132c  00200100  mfence { sm }
001330  1f713000  addli r2, zero, 31
001334  b3040128  zext_int2long r[10:11], r2
001338  1f110000  addli r2, zero, 1
00133c  73389fc8  store.d r[10:11], -880(r30)
001340  bbf52500  bneq r11, r2, 380
001344  1f012000  addli r2, zero, 16
001348  3d000000  xfence
00134c  00a00300  mfence { lm, sm, gm }
001350  33040128  zext_int2long r[9:10], r2
001354  5b030000  j 24
001358  6b540fc9  load.d r[9:10], -880(r30)
00135c  6b558fc8  load.d r[11:12], -888(r30)
001360  13218504  setlt.ul r2, r[11:12], r[9:10]
001364  27140500  addli.d r[9:10], r[11:12], 1
001368  37150100  beq r2, zero, 324
00136c  1f710000  addli r2, zero, 7
001370  33050028  zext_int2long r[11:12], zero
001374  73348fc8  store.d r[9:10], -888(r30)
001378  17382402  sll.d r[17:18], r[9:10], r2
00137c  db040000  j 36
001380  27450500  addli.d r[11:12], r[11:12], 4
001384  0b936110  add.s r6, r3, r6
001388  13249503  setneq.d r8, r[11:12], r[26:27]
00138c  73662300  stores.w r2, 12(r6)
001390  73644301  stores.w r20, 8(r6)
001394  73627301  stores.w r23, 4(r6)
001398  73606301  stores.w r22, 0(r6)
00139c  b77e04fe  beq r8, zero, -68
0013a0  0b240511  add.ul r[9:10], r[11:12], r[17:18]
0013a4  1b332400  slli r6, r8, 2
0013a8  0b916310  add.s r2, r7, r6
0013ac  6f49c100  loads.w r18, 12(r2)
0013b0  6f4c0100  loads.w r24, 0(r2)
0013b4  6f444100  loads.w r8, 4(r2)
0013b8  ef4a8100  loads.w r21, 8(r2)
0013bc  9709e900  and r19, r18, r14
0013c0  13813205  setlt.u r2, r5, r19
0013c4  3b300100  bneq r2, zero, 12
0013c8  1f010900  addli r2, r18, 0
0013cc  5b010000  j 8
0013d0  17114900  or r2, r18, r4
0013d4  9784ea00  and r9, r21, r14
0013d8  13869204  setlt.u r12, r5, r9
0013dc  3b300600  bneq r12, zero, 12
0013e0  1f8a0a00  addli r20, r21, 0
0013e4  5b010000  j 8
0013e8  179a4a00  or r20, r21, r4
0013ec  970de400  and r27, r8, r14
0013f0  1386b205  setlt.u r12, r5, r27
0013f4  3b300600  bneq r12, zero, 12
0013f8  9f0b0400  addli r23, r8, 0
0013fc  5b010000  j 8
001400  971b4400  or r23, r8, r4
001404  1706ec00  and r12, r24, r14
001408  9386c204  setlt.u r13, r5, r12
00140c  3bd00600  bneq r13, zero, 20
001410  1f0b0c00  addli r22, r24, 0
001414  1386c004  setlt.u r12, r1, r12
001418  37500600  beq r12, zero, 20
00141c  db040000  j 36
001420  171b4c00  or r22, r24, r4
001424  1386c004  setlt.u r12, r1, r12
001428  3b600600  bneq r12, zero, 24
00142c  1b460c01  srli r12, r24, 16
001430  1b061600  andi r12, r12, 1
001434  0b16cc10  add.s r12, r24, r12
001438  0b16f610  add.s r12, r12, r15
00143c  170bc601  and r22, r12, r28
001440  1386b005  setlt.u r12, r1, r27
001444  37600600  beq r12, zero, 24
001448  13849004  setlt.u r8, r1, r9
00144c  b7300400  beq r8, zero, 44
001450  13843005  setlt.u r8, r1, r19
001454  bb3c04fe  bneq r8, zero, -212
001458  db070000  j 60
00145c  1b460401  srli r12, r8, 16
001460  1b061600  andi r12, r12, 1
001464  0b14c410  add.s r8, r8, r12
001468  0b14f410  add.s r8, r8, r15
00146c  970bc401  and r23, r8, r28
001470  13849004  setlt.u r8, r1, r9
001474  3b7f04fe  bneq r8, zero, -36
001478  1bc40a01  srli r8, r21, 16
00147c  1b041400  andi r8, r8, 1
001480  0b948a10  add.s r8, r21, r8
001484  0b14f410  add.s r8, r8, r15
001488  170ac401  and r20, r8, r28
00148c  13843005  setlt.u r8, r1, r19
001490  bb4b04fe  bneq r8, zero, -272
001494  1b410901  srli r2, r18, 16
001498  1b011100  andi r2, r2, 1
00149c  0b112910  add.s r2, r18, r2
0014a0  0b11f110  add.s r2, r2, r15
0014a4  1701c101  and r2, r2, r28
0014a8  5bdbffff  j -296
0014ac  80350002  core_id r11
0014b0  1f330000  addli r6, zero, 3
0014b4  1f240000  addli r8, zero, 2
0014b8  00200100  mfence { sm }
0014bc  1f715000  addli r2, zero, 47
0014c0  b3040128  zext_int2long r[10:11], r2
0014c4  73349fc8  store.d r[10:11], -888(r30)
0014c8  bbe58500  bneq r11, r8, 376
0014cc  1f014000  addli r2, zero, 32
0014d0  3d000000  xfence
0014d4  00a00300  mfence { lm, sm, gm }
0014d8  33040128  zext_int2long r[9:10], r2
0014dc  5b030000  j 24
0014e0  6b548fc8  load.d r[9:10], -888(r30)
0014e4  6b550fc8  load.d r[11:12], -896(r30)
0014e8  13218504  setlt.ul r2, r[11:12], r[9:10]
0014ec  27140500  addli.d r[9:10], r[11:12], 1
0014f0  37150100  beq r2, zero, 324
0014f4  1f710000  addli r2, zero, 7
0014f8  33050028  zext_int2long r[11:12], zero
0014fc  73308fc8  store.d r[9:10], -896(r30)
001500  17382402  sll.d r[17:18], r[9:10], r2
001504  db040000  j 36
001508  27450500  addli.d r[11:12], r[11:12], 4
00150c  0b936110  add.s r6, r3, r6
001510  13249503  setneq.d r8, r[11:12], r[26:27]
001514  73662300  stores.w r2, 12(r6)
001518  73644301  stores.w r20, 8(r6)
00151c  73627301  stores.w r23, 4(r6)
001520  73606301  stores.w r22, 0(r6)
001524  b77e04fe  beq r8, zero, -68
001528  0b240511  add.ul r[9:10], r[11:12], r[17:18]
00152c  1b332400  slli r6, r8, 2
001530  0b916310  add.s r2, r7, r6
001534  6f49c100  loads.w r18, 12(r2)
001538  6f4c0100  loads.w r24, 0(r2)
00153c  6f444100  loads.w r8, 4(r2)
001540  ef4a8100  loads.w r21, 8(r2)
001544  9709e900  and r19, r18, r14
001548  13813205  setlt.u r2, r5, r19
00154c  3b300100  bneq r2, zero, 12
001550  1f010900  addli r2, r18, 0
001554  5b010000  j 8
001558  17114900  or r2, r18, r4
00155c  9784ea00  and r9, r21, r14
001560  13869204  setlt.u r12, r5, r9
001564  3b300600  bneq r12, zero, 12
001568  1f8a0a00  addli r20, r21, 0
00156c  5b010000  j 8
001570  179a4a00  or r20, r21, r4
001574  970de400  and r27, r8, r14
001578  1386b205  setlt.u r12, r5, r27
00157c  3b300600  bneq r12, zero, 12
001580  9f0b0400  addli r23, r8, 0
001584  5b010000  j 8
001588  971b4400  or r23, r8, r4
00158c  1706ec00  and r12, r24, r14
001590  9386c204  setlt.u r13, r5, r12
001594  3bd00600  bneq r13, zero, 20
001598  1f0b0c00  addli r22, r24, 0
00159c  1386c004  setlt.u r12, r1, r12
0015a0  37500600  beq r12, zero, 20
0015a4  db040000  j 36
0015a8  171b4c00  or r22, r24, r4
0015ac  1386c004  setlt.u r12, r1, r12
0015b0  3b600600  bneq r12, zero, 24
0015b4  1b460c01  srli r12, r24, 16
0015b8  1b061600  andi r12, r12, 1
0015bc  0b16cc10  add.s r12, r24, r12
0015c0  0b16f610  add.s r12, r12, r15
0015c4  170bc601  and r22, r12, r28
0015c8  1386b005  setlt.u r12, r1, r27
0015cc  37600600  beq r12, zero, 24
0015d0  13849004  setlt.u r8, r1, r9
0015d4  b7300400  beq r8, zero, 44
0015d8  13843005  setlt.u r8, r1, r19
0015dc  bb3c04fe  bneq r8, zero, -212
0015e0  db070000  j 60
0015e4  1b460401  srli r12, r8, 16
0015e8  1b061600  andi r12, r12, 1
0015ec  0b14c410  add.s r8, r8, r12
0015f0  0b14f410  add.s r8, r8, r15
0015f4  970bc401  and r23, r8, r28
0015f8  13849004  setlt.u r8, r1, r9
0015fc  3b7f04fe  bneq r8, zero, -36
001600  1bc40a01  srli r8, r21, 16
001604  1b041400  andi r8, r8, 1
001608  0b948a10  add.s r8, r21, r8
00160c  0b14f410  add.s r8, r8, r15
001610  170ac401  and r20, r8, r28
001614  13843005  setlt.u r8, r1, r19
001618  bb4b04fe  bneq r8, zero, -272
00161c  1b410901  srli r2, r18, 16
001620  1b011100  andi r2, r2, 1
001624  0b112910  add.s r2, r18, r2
001628  0b11f110  add.s r2, r2, r15
00162c  1701c101  and r2, r2, r28
001630  5bdbffff  j -296
001634  80350002  core_id r11
001638  1f330000  addli r6, zero, 3
00163c  00200100  mfence { sm }
001640  1f717000  addli r2, zero, 63
001644  33040128  zext_int2long r[9:10], r2
001648  73308fc8  store.d r[9:10], -896(r30)
00164c  bbd56500  bneq r11, r6, 372
001650  1f016000  addli r2, zero, 48
001654  3d000000  xfence
001658  00a00300  mfence { lm, sm, gm }
00165c  33040128  zext_int2long r[9:10], r2
001660  5b030000  j 24
001664  6b540fc8  load.d r[9:10], -896(r30)
001668  6b558fc7  load.d r[11:12], -904(r30)
00166c  13218504  setlt.ul r2, r[11:12], r[9:10]
001670  27140500  addli.d r[9:10], r[11:12], 1
001674  37150100  beq r2, zero, 324
001678  1f710000  addli r2, zero, 7
00167c  33050028  zext_int2long r[11:12], zero
001680  733c8fc6  store.d r[9:10], -904(r30)
001684  17382402  sll.d r[17:18], r[9:10], r2
001688  db040000  j 36
00168c  27450500  addli.d r[11:12], r[11:12], 4
001690  0b936110  add.s r6, r3, r6
001694  13249503  setneq.d r8, r[11:12], r[26:27]
001698  73662300  stores.w r2, 12(r6)
00169c  73644301  stores.w r20, 8(r6)
0016a0  73627301  stores.w r23, 4(r6)
0016a4  73606301  stores.w r22, 0(r6)
0016a8  b77e04fe  beq r8, zero, -68
0016ac  0b240511  add.ul r[9:10], r[11:12], r[17:18]
0016b0  1b332400  slli r6, r8, 2
0016b4  0b916310  add.s r2, r7, r6
0016b8  6f49c100  loads.w r18, 12(r2)
0016bc  6f4c0100  loads.w r24, 0(r2)
0016c0  6f444100  loads.w r8, 4(r2)
0016c4  ef4a8100  loads.w r21, 8(r2)
0016c8  9709e900  and r19, r18, r14
0016cc  13813205  setlt.u r2, r5, r19
0016d0  3b300100  bneq r2, zero, 12
0016d4  1f010900  addli r2, r18, 0
0016d8  5b010000  j 8
0016dc  17114900  or r2, r18, r4
0016e0  9784ea00  and r9, r21, r14
0016e4  13869204  setlt.u r12, r5, r9
0016e8  3b300600  bneq r12, zero, 12
0016ec  1f8a0a00  addli r20, r21, 0
0016f0  5b010000  j 8
0016f4  179a4a00  or r20, r21, r4
0016f8  970de400  and r27, r8, r14
0016fc  1386b205  setlt.u r12, r5, r27
001700  3b300600  bneq r12, zero, 12
001704  9f0b0400  addli r23, r8, 0
001708  5b010000  j 8
00170c  971b4400  or r23, r8, r4
001710  1706ec00  and r12, r24, r14
001714  9386c204  setlt.u r13, r5, r12
001718  3bd00600  bneq r13, zero, 20
00171c  1f0b0c00  addli r22, r24, 0
001720  1386c004  setlt.u r12, r1, r12
001724  37500600  beq r12, zero, 20
001728  db040000  j 36
00172c  171b4c00  or r22, r24, r4
001730  1386c004  setlt.u r12, r1, r12
001734  3b600600  bneq r12, zero, 24
001738  1b460c01  srli r12, r24, 16
00173c  1b061600  andi r12, r12, 1
001740  0b16cc10  add.s r12, r24, r12
001744  0b16f610  add.s r12, r12, r15
001748  170bc601  and r22, r12, r28
00174c  1386b005  setlt.u r12, r1, r27
001750  37600600  beq r12, zero, 24
001754  13849004  setlt.u r8, r1, r9
001758  b7300400  beq r8, zero, 44
00175c  13843005  setlt.u r8, r1, r19
001760  bb3c04fe  bneq r8, zero, -212
001764  db070000  j 60
001768  1b460401  srli r12, r8, 16
00176c  1b061600  andi r12, r12, 1
001770  0b14c410  add.s r8, r8, r12
001774  0b14f410  add.s r8, r8, r15
001778  970bc401  and r23, r8, r28
00177c  13849004  setlt.u r8, r1, r9
001780  3b7f04fe  bneq r8, zero, -36
001784  1bc40a01  srli r8, r21, 16
001788  1b041400  andi r8, r8, 1
00178c  0b948a10  add.s r8, r21, r8
001790  0b14f410  add.s r8, r8, r15
001794  170ac401  and r20, r8, r28
001798  13843005  setlt.u r8, r1, r19
00179c  bb4b04fe  bneq r8, zero, -272
0017a0  1b410901  srli r2, r18, 16
0017a4  1b011100  andi r2, r2, 1
0017a8  0b112910  add.s r2, r18, r2
0017ac  0b11f110  add.s r2, r2, r15
0017b0  1701c101  and r2, r2, r28
0017b4  5bdbffff  j -296
0017b8  80350002  core_id r11
0017bc  00200100  mfence { sm }
0017c0  1f719000  addli r2, zero, 79
0017c4  33040128  zext_int2long r[9:10], r2
0017c8  1f410000  addli r2, zero, 4
0017cc  733c8fc6  store.d r[9:10], -904(r30)
0017d0  bbd52500  bneq r11, r2, 372
0017d4  1f018000  addli r2, zero, 64
0017d8  3d000000  xfence
0017dc  00a00300  mfence { lm, sm, gm }
0017e0  33040128  zext_int2long r[9:10], r2
0017e4  5b030000  j 24
0017e8  6b548fc7  load.d r[9:10], -904(r30)
0017ec  6b550fc7  load.d r[11:12], -912(r30)
0017f0  13218504  setlt.ul r2, r[11:12], r[9:10]
0017f4  27140500  addli.d r[9:10], r[11:12], 1
0017f8  37150100  beq r2, zero, 324
0017fc  1f710000  addli r2, zero, 7
001800  33050028  zext_int2long r[11:12], zero
001804  73388fc6  store.d r[9:10], -912(r30)
001808  17382402  sll.d r[17:18], r[9:10], r2
00180c  db040000  j 36
001810  27450500  addli.d r[11:12], r[11:12], 4
001814  0b936110  add.s r6, r3, r6
001818  13249503  setneq.d r8, r[11:12], r[26:27]
00181c  73662300  stores.w r2, 12(r6)
001820  73644301  stores.w r20, 8(r6)
001824  73627301  stores.w r23, 4(r6)
001828  73606301  stores.w r22, 0(r6)
00182c  b77e04fe  beq r8, zero, -68
001830  0b240511  add.ul r[9:10], r[11:12], r[17:18]
001834  1b332400  slli r6, r8, 2
001838  0b916310  add.s r2, r7, r6
00183c  6f49c100  loads.w r18, 12(r2)
001840  6f4c0100  loads.w r24, 0(r2)
001844  6f444100  loads.w r8, 4(r2)
001848  ef4a8100  loads.w r21, 8(r2)
00184c  9709e900  and r19, r18, r14
001850  13813205  setlt.u r2, r5, r19
001854  3b300100  bneq r2, zero, 12
001858  1f010900  addli r2, r18, 0
00185c  5b010000  j 8
001860  17114900  or r2, r18, r4
001864  9784ea00  and r9, r21, r14
001868  13869204  setlt.u r12, r5, r9
00186c  3b300600  bneq r12, zero, 12
001870  1f8a0a00  addli r20, r21, 0
001874  5b010000  j 8
001878  179a4a00  or r20, r21, r4
00187c  970de400  and r27, r8, r14
001880  1386b205  setlt.u r12, r5, r27
001884  3b300600  bneq r12, zero, 12
001888  9f0b0400  addli r23, r8, 0
00188c  5b010000  j 8
001890  971b4400  or r23, r8, r4
001894  1706ec00  and r12, r24, r14
001898  9386c204  setlt.u r13, r5, r12
00189c  3bd00600  bneq r13, zero, 20
0018a0  1f0b0c00  addli r22, r24, 0
0018a4  1386c004  setlt.u r12, r1, r12
0018a8  37500600  beq r12, zero, 20
0018ac  db040000  j 36
0018b0  171b4c00  or r22, r24, r4
0018b4  1386c004  setlt.u r12, r1, r12
0018b8  3b600600  bneq r12, zero, 24
0018bc  1b460c01  srli r12, r24, 16
0018c0  1b061600  andi r12, r12, 1
0018c4  0b16cc10  add.s r12, r24, r12
0018c8  0b16f610  add.s r12, r12, r15
0018cc  170bc601  and r22, r12, r28
0018d0  1386b005  setlt.u r12, r1, r27
0018d4  37600600  beq r12, zero, 24
0018d8  13849004  setlt.u r8, r1, r9
0018dc  b7300400  beq r8, zero, 44
0018e0  13843005  setlt.u r8, r1, r19
0018e4  bb3c04fe  bneq r8, zero, -212
0018e8  db070000  j 60
0018ec  1b460401  srli r12, r8, 16
0018f0  1b061600  andi r12, r12, 1
0018f4  0b14c410  add.s r8, r8, r12
0018f8  0b14f410  add.s r8, r8, r15
0018fc  970bc401  and r23, r8, r28
001900  13849004  setlt.u r8, r1, r9
001904  3b7f04fe  bneq r8, zero, -36
001908  1bc40a01  srli r8, r21, 16
00190c  1b041400  andi r8, r8, 1
001910  0b948a10  add.s r8, r21, r8
001914  0b14f410  add.s r8, r8, r15
001918  170ac401  and r20, r8, r28
00191c  13843005  setlt.u r8, r1, r19
001920  bb4b04fe  bneq r8, zero, -272
001924  1b410901  srli r2, r18, 16
001928  1b011100  andi r2, r2, 1
00192c  0b112910  add.s r2, r18, r2
001930  0b11f110  add.s r2, r2, r15
001934  1701c101  and r2, r2, r28
001938  5bdbffff  j -296
00193c  80350002  core_id r11
001940  00200100  mfence { sm }
001944  1f71b000  addli r2, zero, 95
001948  33040128  zext_int2long r[9:10], r2
00194c  1f510000  addli r2, zero, 5
001950  73388fc6  store.d r[9:10], -912(r30)
001954  bbd52500  bneq r11, r2, 372
001958  1f01a000  addli r2, zero, 80
00195c  3d000000  xfence
001960  00a00300  mfence { lm, sm, gm }
001964  33040128  zext_int2long r[9:10], r2
001968  5b030000  j 24
00196c  6b540fc7  load.d r[9:10], -912(r30)
001970  6b558fc6  load.d r[11:12], -920(r30)
001974  13218504  setlt.ul r2, r[11:12], r[9:10]
001978  27140500  addli.d r[9:10], r[11:12], 1
00197c  37150100  beq r2, zero, 324
001980  1f710000  addli r2, zero, 7
001984  33050028  zext_int2long r[11:12], zero
001988  73348fc6  store.d r[9:10], -920(r30)
00198c  17382402  sll.d r[17:18], r[9:10], r2
001990  db040000  j 36
001994  27450500  addli.d r[11:12], r[11:12], 4
001998  0b936110  add.s r6, r3, r6
00199c  13249503  setneq.d r8, r[11:12], r[26:27]
0019a0  73662300  stores.w r2, 12(r6)
0019a4  73644301  stores.w r20, 8(r6)
0019a8  73627301  stores.w r23, 4(r6)
0019ac  73606301  stores.w r22, 0(r6)
0019b0  b77e04fe  beq r8, zero, -68
0019b4  0b240511  add.ul r[9:10], r[11:12], r[17:18]
0019b8  1b332400  slli r6, r8, 2
0019bc  0b916310  add.s r2, r7, r6
0019c0  6f49c100  loads.w r18, 12(r2)
0019c4  6f4c0100  loads.w r24, 0(r2)
0019c8  6f444100  loads.w r8, 4(r2)
0019cc  ef4a8100  loads.w r21, 8(r2)
0019d0  9709e900  and r19, r18, r14
0019d4  13813205  setlt.u r2, r5, r19
0019d8  3b300100  bneq r2, zero, 12
0019dc  1f010900  addli r2, r18, 0
0019e0  5b010000  j 8
0019e4  17114900  or r2, r18, r4
0019e8  9784ea00  and r9, r21, r14
0019ec  13869204  setlt.u r12, r5, r9
0019f0  3b300600  bneq r12, zero, 12
0019f4  1f8a0a00  addli r20, r21, 0
0019f8  5b010000  j 8
0019fc  179a4a00  or r20, r21, r4
001a00  970de400  and r27, r8, r14
001a04  1386b205  setlt.u r12, r5, r27
001a08  3b300600  bneq r12, zero, 12
001a0c  9f0b0400  addli r23, r8, 0
001a10  5b010000  j 8
001a14  971b4400  or r23, r8, r4
001a18  1706ec00  and r12, r24, r14
001a1c  9386c204  setlt.u r13, r5, r12
001a20  3bd00600  bneq r13, zero, 20
001a24  1f0b0c00  addli r22, r24, 0
001a28  1386c004  setlt.u r12, r1, r12
001a2c  37500600  beq r12, zero, 20
001a30  db040000  j 36
001a34  171b4c00  or r22, r24, r4
001a38  1386c004  setlt.u r12, r1, r12
001a3c  3b600600  bneq r12, zero, 24
001a40  1b460c01  srli r12, r24, 16
001a44  1b061600  andi r12, r12, 1
001a48  0b16cc10  add.s r12, r24, r12
001a4c  0b16f610  add.s r12, r12, r15
001a50  170bc601  and r22, r12, r28
001a54  1386b005  setlt.u r12, r1, r27
001a58  37600600  beq r12, zero, 24
001a5c  13849004  setlt.u r8, r1, r9
001a60  b7300400  beq r8, zero, 44
001a64  13843005  setlt.u r8, r1, r19
001a68  bb3c04fe  bneq r8, zero, -212
001a6c  db070000  j 60
001a70  1b460401  srli r12, r8, 16
001a74  1b061600  andi r12, r12, 1
001a78  0b14c410  add.s r8, r8, r12
001a7c  0b14f410  add.s r8, r8, r15
001a80  970bc401  and r23, r8, r28
001a84  13849004  setlt.u r8, r1, r9
001a88  3b7f04fe  bneq r8, zero, -36
001a8c  1bc40a01  srli r8, r21, 16
001a90  1b041400  andi r8, r8, 1
001a94  0b948a10  add.s r8, r21, r8
001a98  0b14f410  add.s r8, r8, r15
001a9c  170ac401  and r20, r8, r28
001aa0  13843005  setlt.u r8, r1, r19
001aa4  bb4b04fe  bneq r8, zero, -272
001aa8  1b410901  srli r2, r18, 16
001aac  1b011100  andi r2, r2, 1
001ab0  0b112910  add.s r2, r18, r2
001ab4  0b11f110  add.s r2, r2, r15
001ab8  1701c101  and r2, r2, r28
001abc  5bdbffff  j -296
001ac0  80350002  core_id r11
001ac4  00200100  mfence { sm }
001ac8  1f71d000  addli r2, zero, 111
001acc  33040128  zext_int2long r[9:10], r2
001ad0  1f610000  addli r2, zero, 6
001ad4  73348fc6  store.d r[9:10], -920(r30)
001ad8  bbd52500  bneq r11, r2, 372
001adc  1f01c000  addli r2, zero, 96
001ae0  3d000000  xfence
001ae4  00a00300  mfence { lm, sm, gm }
001ae8  33040128  zext_int2long r[9:10], r2
001aec  5b030000  j 24
001af0  6b548fc6  load.d r[9:10], -920(r30)
001af4  6b550fc6  load.d r[11:12], -928(r30)
001af8  13218504  setlt.ul r2, r[11:12], r[9:10]
001afc  27140500  addli.d r[9:10], r[11:12], 1
001b00  37150100  beq r2, zero, 324
001b04  1f710000  addli r2, zero, 7
001b08  33050028  zext_int2long r[11:12], zero
001b0c  73308fc6  store.d r[9:10], -928(r30)
001b10  17382402  sll.d r[17:18], r[9:10], r2
001b14  db040000  j 36
001b18  27450500  addli.d r[11:12], r[11:12], 4
001b1c  0b936110  add.s r6, r3, r6
001b20  13249503  setneq.d r8, r[11:12], r[26:27]
001b24  73662300  stores.w r2, 12(r6)
001b28  73644301  stores.w r20, 8(r6)
001b2c  73627301  stores.w r23, 4(r6)
001b30  73606301  stores.w r22, 0(r6)
001b34  b77e04fe  beq r8, zero, -68
001b38  0b240511  add.ul r[9:10], r[11:12], r[17:18]
001b3c  1b332400  slli r6, r8, 2
001b40  0b916310  add.s r2, r7, r6
001b44  6f49c100  loads.w r18, 12(r2)
001b48  6f4c0100  loads.w r24, 0(r2)
001b4c  6f444100  loads.w r8, 4(r2)
001b50  ef4a8100  loads.w r21, 8(r2)
001b54  9709e900  and r19, r18, r14
001b58  13813205  setlt.u r2, r5, r19
001b5c  3b300100  bneq r2, zero, 12
001b60  1f010900  addli r2, r18, 0
001b64  5b010000  j 8
001b68  17114900  or r2, r18, r4
001b6c  9784ea00  and r9, r21, r14
001b70  13869204  setlt.u r12, r5, r9
001b74  3b300600  bneq r12, zero, 12
001b78  1f8a0a00  addli r20, r21, 0
001b7c  5b010000  j 8
001b80  179a4a00  or r20, r21, r4
001b84  970de400  and r27, r8, r14
001b88  1386b205  setlt.u r12, r5, r27
001b8c  3b300600  bneq r12, zero, 12
001b90  9f0b0400  addli r23, r8, 0
001b94  5b010000  j 8
001b98  971b4400  or r23, r8, r4
001b9c  1706ec00  and r12, r24, r14
001ba0  9386c204  setlt.u r13, r5, r12
001ba4  3bd00600  bneq r13, zero, 20
001ba8  1f0b0c00  addli r22, r24, 0
001bac  1386c004  setlt.u r12, r1, r12
001bb0  37500600  beq r12, zero, 20
001bb4  db040000  j 36
001bb8  171b4c00  or r22, r24, r4
001bbc  1386c004  setlt.u r12, r1, r12
001bc0  3b600600  bneq r12, zero, 24
001bc4  1b460c01  srli r12, r24, 16
001bc8  1b061600  andi r12, r12, 1
001bcc  0b16cc10  add.s r12, r24, r12
001bd0  0b16f610  add.s r12, r12, r15
001bd4  170bc601  and r22, r12, r28
001bd8  1386b005  setlt.u r12, r1, r27
001bdc  37600600  beq r12, zero, 24
001be0  13849004  setlt.u r8, r1, r9
001be4  b7300400  beq r8, zero, 44
001be8  13843005  setlt.u r8, r1, r19
001bec  bb3c04fe  bneq r8, zero, -212
001bf0  db070000  j 60
001bf4  1b460401  srli r12, r8, 16
001bf8  1b061600  andi r12, r12, 1
001bfc  0b14c410  add.s r8, r8, r12
001c00  0b14f410  add.s r8, r8, r15
001c04  970bc401  and r23, r8, r28
001c08  13849004  setlt.u r8, r1, r9
001c0c  3b7f04fe  bneq r8, zero, -36
001c10  1bc40a01  srli r8, r21, 16
001c14  1b041400  andi r8, r8, 1
001c18  0b948a10  add.s r8, r21, r8
001c1c  0b14f410  add.s r8, r8, r15
001c20  170ac401  and r20, r8, r28
001c24  13843005  setlt.u r8, r1, r19
001c28  bb4b04fe  bneq r8, zero, -272
001c2c  1b410901  srli r2, r18, 16
001c30  1b011100  andi r2, r2, 1
001c34  0b112910  add.s r2, r18, r2
001c38  0b11f110  add.s r2, r2, r15
001c3c  1701c101  and r2, r2, r28
001c40  5bdbffff  j -296
001c44  80350002  core_id r11
001c48  00200100  mfence { sm }
001c4c  1f71f000  addli r2, zero, 127
001c50  33040128  zext_int2long r[9:10], r2
001c54  1f710000  addli r2, zero, 7
001c58  73308fc6  store.d r[9:10], -928(r30)
001c5c  bbc52500  bneq r11, r2, 368
001c60  1f01e000  addli r2, zero, 112
001c64  3d000000  xfence
001c68  00a00300  mfence { lm, sm, gm }
001c6c  33040128  zext_int2long r[9:10], r2
001c70  5b030000  j 24
001c74  6b540fc6  load.d r[9:10], -928(r30)
001c78  6b558fc5  load.d r[11:12], -936(r30)
001c7c  13218504  setlt.ul r2, r[11:12], r[9:10]
001c80  27140500  addli.d r[9:10], r[11:12], 1
001c84  37150100  beq r2, zero, 324
001c88  1f710000  addli r2, zero, 7
001c8c  33050028  zext_int2long r[11:12], zero
001c90  733c8fc4  store.d r[9:10], -936(r30)
001c94  17382402  sll.d r[17:18], r[9:10], r2
001c98  db040000  j 36
001c9c  27450500  addli.d r[11:12], r[11:12], 4
001ca0  0b936110  add.s r6, r3, r6
001ca4  13249503  setneq.d r8, r[11:12], r[26:27]
001ca8  73662300  stores.w r2, 12(r6)
001cac  73644301  stores.w r20, 8(r6)
001cb0  73627301  stores.w r23, 4(r6)
001cb4  73606301  stores.w r22, 0(r6)
001cb8  b77e04fe  beq r8, zero, -68
001cbc  0b240511  add.ul r[9:10], r[11:12], r[17:18]
001cc0  1b332400  slli r6, r8, 2
001cc4  0b916310  add.s r2, r7, r6
001cc8  6f49c100  loads.w r18, 12(r2)
001ccc  6f4c0100  loads.w r24, 0(r2)
001cd0  6f444100  loads.w r8, 4(r2)
001cd4  ef4a8100  loads.w r21, 8(r2)
001cd8  9709e900  and r19, r18, r14
001cdc  13813205  setlt.u r2, r5, r19
001ce0  3b300100  bneq r2, zero, 12
001ce4  1f010900  addli r2, r18, 0
001ce8  5b010000  j 8
001cec  17114900  or r2, r18, r4
001cf0  9784ea00  and r9, r21, r14
001cf4  13869204  setlt.u r12, r5, r9
001cf8  3b300600  bneq r12, zero, 12
001cfc  1f8a0a00  addli r20, r21, 0
001d00  5b010000  j 8
001d04  179a4a00  or r20, r21, r4
001d08  970de400  and r27, r8, r14
001d0c  1386b205  setlt.u r12, r5, r27
001d10  3b300600  bneq r12, zero, 12
001d14  9f0b0400  addli r23, r8, 0
001d18  5b010000  j 8
001d1c  971b4400  or r23, r8, r4
001d20  1706ec00  and r12, r24, r14
001d24  9386c204  setlt.u r13, r5, r12
001d28  3bd00600  bneq r13, zero, 20
001d2c  1f0b0c00  addli r22, r24, 0
001d30  1386c004  setlt.u r12, r1, r12
001d34  37500600  beq r12, zero, 20
001d38  db040000  j 36
001d3c  171b4c00  or r22, r24, r4
001d40  1386c004  setlt.u r12, r1, r12
001d44  3b600600  bneq r12, zero, 24
001d48  1b460c01  srli r12, r24, 16
001d4c  1b061600  andi r12, r12, 1
001d50  0b16cc10  add.s r12, r24, r12
001d54  0b16f610  add.s r12, r12, r15
001d58  170bc601  and r22, r12, r28
001d5c  1386b005  setlt.u r12, r1, r27
001d60  37600600  beq r12, zero, 24
001d64  13849004  setlt.u r8, r1, r9
001d68  b7300400  beq r8, zero, 44
001d6c  13843005  setlt.u r8, r1, r19
001d70  bb3c04fe  bneq r8, zero, -212
001d74  db070000  j 60
001d78  1b460401  srli r12, r8, 16
001d7c  1b061600  andi r12, r12, 1
001d80  0b14c410  add.s r8, r8, r12
001d84  0b14f410  add.s r8, r8, r15
001d88  970bc401  and r23, r8, r28
001d8c  13849004  setlt.u r8, r1, r9
001d90  3b7f04fe  bneq r8, zero, -36
001d94  1bc40a01  srli r8, r21, 16
001d98  1b041400  andi r8, r8, 1
001d9c  0b948a10  add.s r8, r21, r8
001da0  0b14f410  add.s r8, r8, r15
001da4  170ac401  and r20, r8, r28
001da8  13843005  setlt.u r8, r1, r19
001dac  bb4b04fe  bneq r8, zero, -272
001db0  1b410901  srli r2, r18, 16
001db4  1b011100  andi r2, r2, 1
001db8  0b112910  add.s r2, r18, r2
001dbc  0b11f110  add.s r2, r2, r15
001dc0  1701c101  and r2, r2, r28
001dc4  5bdbffff  j -296
001dc8  00200100  mfence { sm }
001dcc  63019ff8  loadli.w r2,  -952(r30)
001dd0  33040128  zext_int2long r[9:10], r2
001dd4  1f010007  addli r2, zero, 896
001dd8  33050128  zext_int2long r[11:12], r2
001ddc  1f71f001  addli r2, zero, 255
001de0  0b25a440  min.ul r[11:12], r[9:10], r[11:12]
001de4  27050501  addli.d r[11:12], r[11:12], 128
001de8  0b258548  max.ul r[11:12], r[11:12], r[9:10]
001dec  0b348518  sub.sl r[9:10], r[11:12], r[9:10]
001df0  80350002  core_id r11
001df4  0b249441  min.ul r[9:10], r[9:10], r[26:27]
001df8  73348fc2  store.d r[9:10], -984(r30)
001dfc  1f340000  addli r8, zero, 3
001e00  80220104  csr_set csr5, r2
001e04  00e00200  sync_core
001e08  bba08500  bneq r11, r8, 40
001e0c  1f311000  addli r2, zero, 11
001e10  1f631000  addli r6, zero, 14
001e14  9f440000  addli r9, zero, 4
001e18  7d000100  xsignal r2, 0
001e1c  7d000300  xsignal r6, 0
001e20  7d100100  xwait r2, 0
001e24  1f711000  addli r2, zero, 15
001e28  7d100100  xwait r2, 0
001e2c  5b700000  j 896
001e30  63057ff8  loadli.w r10,  -968(r30)
001e34  2b431500  lui r6, 340
001e38  9f640000  addli r9, zero, 6
001e3c  0b118538  mod.s r2, r10, r8
001e40  1b319100  slli r2, r2, 9
001e44  0b136110  add.s r6, r2, r6
001e48  bbab9500  bneq r11, r9, 744
001e4c  6b540fc3  load.d r[9:10], -976(r30)
001e50  1f180000  addli r16, zero, 1
001e54  9f060500  addli r13, r10, 0
001e58  6b550f01  load.d r[11:12], 16(r30)
001e5c  1f292000  addli r18, zero, 18
001e60  1f360000  addli r12, zero, 3
001e64  9f280000  addli r17, zero, 2
001e68  7d100900  xwait r18, 0
001e6c  17340403  sll.d r[9:10], r[9:10], r16
001e70  0b258510  add.ul r[11:12], r[11:12], r[9:10]
001e74  9f440000  addli r9, zero, 4
001e78  bfa4d800  blt.s r17, r13, 296
001e7c  9f560000  addli r13, zero, 5
001e80  1f640000  addli r8, zero, 6
001e84  1d800600  lock zero, r13
001e88  15000014  dma_cfg zero, zero, zero, 10
001e8c  15000015  dma_cfg zero, zero, r16, 10
001e90  15001015  dma_cfg zero, zero, r17, 10
001e94  1500c014  dma_cfg zero, zero, r12, 10
001e98  15009014  dma_cfg zero, zero, r9, 10
001e9c  1500d014  dma_cfg zero, zero, r13, 10
001ea0  15008014  dma_cfg zero, zero, r8, 10
001ea4  1f740000  addli r8, zero, 7
001ea8  15008014  dma_cfg zero, zero, r8, 10
001eac  1f041000  addli r8, zero, 8
001eb0  15008014  dma_cfg zero, zero, r8, 10
001eb4  1f141000  addli r8, zero, 9
001eb8  15008014  dma_cfg zero, zero, r8, 10
001ebc  1f241000  addli r8, zero, 10
001ec0  15008014  dma_cfg zero, zero, r8, 10
001ec4  1f341000  addli r8, zero, 11
001ec8  15008014  dma_cfg zero, zero, r8, 10
001ecc  1f441000  addli r8, zero, 12
001ed0  15008014  dma_cfg zero, zero, r8, 10
001ed4  1f541000  addli r8, zero, 13
001ed8  15008014  dma_cfg zero, zero, r8, 10
001edc  1f641000  addli r8, zero, 14
001ee0  15008014  dma_cfg zero, zero, r8, 10
001ee4  1f741000  addli r8, zero, 15
001ee8  15008014  dma_cfg zero, zero, r8, 10
001eec  1f042000  addli r8, zero, 16
001ef0  15008014  dma_cfg zero, zero, r8, 10
001ef4  1f142000  addli r8, zero, 17
001ef8  15008014  dma_cfg zero, zero, r8, 10
001efc  1f342000  addli r8, zero, 19
001f00  15002015  dma_cfg zero, zero, r18, 10
001f04  15008014  dma_cfg zero, zero, r8, 10
001f08  1f442000  addli r8, zero, 20
001f0c  15008014  dma_cfg zero, zero, r8, 10
001f10  1f542000  addli r8, zero, 21
001f14  15008014  dma_cfg zero, zero, r8, 10
001f18  1f642000  addli r8, zero, 22
001f1c  15008014  dma_cfg zero, zero, r8, 10
001f20  1f742000  addli r8, zero, 23
001f24  15008014  dma_cfg zero, zero, r8, 10
001f28  1f043000  addli r8, zero, 24
001f2c  15008014  dma_cfg zero, zero, r8, 10
001f30  1f143000  addli r8, zero, 25
001f34  15008014  dma_cfg zero, zero, r8, 10
001f38  1f243000  addli r8, zero, 26
001f3c  15008014  dma_cfg zero, zero, r8, 10
001f40  1f343000  addli r8, zero, 27
001f44  15008014  dma_cfg zero, zero, r8, 10
001f48  1f443000  addli r8, zero, 28
001f4c  15008014  dma_cfg zero, zero, r8, 10
001f50  1f543000  addli r8, zero, 29
001f54  15008014  dma_cfg zero, zero, r8, 10
001f58  1f643000  addli r8, zero, 30
001f5c  15008014  dma_cfg zero, zero, r8, 10
001f60  1f743000  addli r8, zero, 31
001f64  15008014  dma_cfg zero, zero, r8, 10
001f68  1f048000  addli r8, zero, 64
001f6c  15080800  dma_cfg r16, r16, zero, 0
001f70  15080002  dma_cfg r16, zero, zero, 1
001f74  15000004  dma_cfg zero, zero, zero, 2
001f78  15038006  dma_cfg r6, zero, r8, 3
001f7c  1f040001  addli r8, zero, 128
001f80  15049008  dma_cfg r8, zero, r9, 4
001f84  1f040004  addli r8, zero, 512
001f88  1504000b  dma_cfg r8, zero, r16, 5
001f8c  15000010  dma_cfg zero, zero, zero, 8
001f90  35000000  dma_run zero
001f94  1500000b  dma_cfg zero, zero, r16, 5
001f98  15000010  dma_cfg zero, zero, zero, 8
001f9c  1d900600  unlock r13
001fa0  1d800400  lock zero, r9
001fa4  2b441500  lui r8, 340
001fa8  9f048000  addli r9, zero, 64
001fac  9f060001  addli r13, zero, 128
001fb0  1f460000  addli r12, zero, 4
001fb4  15080800  dma_cfg r16, r16, zero, 0
001fb8  15800504  dma_cfg zero, r11, zero, 2
001fbc  1b140404  ori r8, r8, 64
001fc0  eb598fc2  load.d r[20:21], -984(r30)
001fc4  0b118110  add.s r2, r2, r8
001fc8  1ff43900  addli r8, r19, 31
001fcc  15019506  dma_cfg r2, r10, r9, 3
001fd0  1f050002  addli r10, zero, 256
001fd4  9f550000  addli r11, zero, 5
001fd8  1b415400  srli r2, r8, 5
001fdc  1bb41900  slli r8, r19, 1
001fe0  9f090004  addli r19, zero, 512
001fe4  95862408  dma_cfg r13, r9, r2, 4
001fe8  1b04e403  andi r8, r8, 62
001fec  9509050b  dma_cfg r19, r10, r16, 5
001ff0  1f350000  addli r10, zero, 3
001ff4  15008010  dma_cfg zero, zero, r8, 8
001ff8  35000000  dma_run zero
001ffc  1500000b  dma_cfg zero, zero, r16, 5
002000  15000010  dma_cfg zero, zero, zero, 8
002004  1d100600  unlock r12
002008  1d800500  lock zero, r11
00200c  15000014  dma_cfg zero, zero, zero, 10
002010  15000015  dma_cfg zero, zero, r16, 10
002014  15001015  dma_cfg zero, zero, r17, 10
002018  1500a014  dma_cfg zero, zero, r10, 10
00201c  1f650000  addli r10, zero, 6
002020  1500c014  dma_cfg zero, zero, r12, 10
002024  1f162000  addli r12, zero, 17
002028  1500b014  dma_cfg zero, zero, r11, 10
00202c  1500a014  dma_cfg zero, zero, r10, 10
002030  1f750000  addli r10, zero, 7
002034  1500a014  dma_cfg zero, zero, r10, 10
002038  1f051000  addli r10, zero, 8
00203c  1500a014  dma_cfg zero, zero, r10, 10
002040  1f151000  addli r10, zero, 9
002044  1500a014  dma_cfg zero, zero, r10, 10
002048  1f251000  addli r10, zero, 10
00204c  1500a014  dma_cfg zero, zero, r10, 10
002050  1f351000  addli r10, zero, 11
002054  1500a014  dma_cfg zero, zero, r10, 10
002058  1f451000  addli r10, zero, 12
00205c  1500a014  dma_cfg zero, zero, r10, 10
002060  1f551000  addli r10, zero, 13
002064  1500a014  dma_cfg zero, zero, r10, 10
002068  1f651000  addli r10, zero, 14
00206c  1500a014  dma_cfg zero, zero, r10, 10
002070  1f751000  addli r10, zero, 15
002074  1500a014  dma_cfg zero, zero, r10, 10
002078  1f052000  addli r10, zero, 16
00207c  1500a014  dma_cfg zero, zero, r10, 10
002080  1f352000  addli r10, zero, 19
002084  1500c014  dma_cfg zero, zero, r12, 10
002088  15002015  dma_cfg zero, zero, r18, 10
00208c  1500a014  dma_cfg zero, zero, r10, 10
002090  1f452000  addli r10, zero, 20
002094  1500a014  dma_cfg zero, zero, r10, 10
002098  1f552000  addli r10, zero, 21
00209c  1500a014  dma_cfg zero, zero, r10, 10
0020a0  1f652000  addli r10, zero, 22
0020a4  1500a014  dma_cfg zero, zero, r10, 10
0020a8  1f752000  addli r10, zero, 23
0020ac  1500a014  dma_cfg zero, zero, r10, 10
0020b0  1f053000  addli r10, zero, 24
0020b4  1500a014  dma_cfg zero, zero, r10, 10
0020b8  1f153000  addli r10, zero, 25
0020bc  1500a014  dma_cfg zero, zero, r10, 10
0020c0  1f253000  addli r10, zero, 26
0020c4  1500a014  dma_cfg zero, zero, r10, 10
0020c8  1f353000  addli r10, zero, 27
0020cc  1500a014  dma_cfg zero, zero, r10, 10
0020d0  1f453000  addli r10, zero, 28
0020d4  1500a014  dma_cfg zero, zero, r10, 10
0020d8  1f553000  addli r10, zero, 29
0020dc  1500a014  dma_cfg zero, zero, r10, 10
0020e0  1f653000  addli r10, zero, 30
0020e4  1500a014  dma_cfg zero, zero, r10, 10
0020e8  1f753000  addli r10, zero, 31
0020ec  1500a014  dma_cfg zero, zero, r10, 10
0020f0  15080800  dma_cfg r16, r16, zero, 0
0020f4  15080002  dma_cfg r16, zero, zero, 1
0020f8  15000004  dma_cfg zero, zero, zero, 2
0020fc  15039006  dma_cfg r6, zero, r9, 3
002100  9f440000  addli r9, zero, 4
002104  95062008  dma_cfg r13, zero, r2, 4
002108  9509000b  dma_cfg r19, zero, r16, 5
00210c  15008010  dma_cfg zero, zero, r8, 8
002110  35000000  dma_run zero
002114  1500000b  dma_cfg zero, zero, r16, 5
002118  1f340000  addli r8, zero, 3
00211c  15000010  dma_cfg zero, zero, zero, 8
002120  1d900500  unlock r11
002124  7d000600  xsignal r12, 0
002128  80350002  core_id r11
00212c  5b100000  j 128
002130  1f510000  addli r2, zero, 5
002134  bbd12500  bneq r11, r2, 116
002138  1f641000  addli r8, zero, 14
00213c  1f010000  addli r2, zero, 0
002140  9f440000  addli r9, zero, 4
002144  2b050100  lui r10, 16
002148  7d100400  xwait r8, 0
00214c  1f142000  addli r8, zero, 17
002150  7d100400  xwait r8, 0
002154  1f240000  addli r8, zero, 2
002158  1d000400  lock zero, r8
00215c  2b04803f  lui r8, 260096
002160  0d000002  ew_cfg zero, zero, zero, 1
002164  0d140400  ewcoeff_cfg r8, r8, zero, 0
002168  1f74f000  addli r8, zero, 127
00216c  0d000404  ew_cfg zero, r8, zero, 2
002170  1f140000  addli r8, zero, 1
002174  0d040006  ew_cfg r8, zero, zero, 3
002178  0b942110  add.s r8, r3, r2
00217c  1f010104  addli r2, r2, 512
002180  2d046400  dsmadd r8, r8, r6, 0
002184  bb5fa1fe  bneq r2, r10, -12
002188  1f210000  addli r2, zero, 2
00218c  1f340000  addli r8, zero, 3
002190  1d100100  unlock r2
002194  1f711000  addli r2, zero, 15
002198  7d000100  xsignal r2, 0
00219c  1f212000  addli r2, zero, 18
0021a0  7d000100  xsignal r2, 0
0021a4  5b010000  j 8
0021a8  9f440000  addli r9, zero, 4
0021ac  3d000000  xfence
0021b0  1f71f001  addli r2, zero, 255
0021b4  00a00300  mfence { lm, sm, gm }
0021b8  80220104  csr_set csr5, r2
0021bc  00e00200  sync_core
0021c0  b7e00500  beq r11, zero, 56
0021c4  1f110000  addli r2, zero, 1
0021c8  b7c62500  beq r11, r2, 432
0021cc  1f210000  addli r2, zero, 2
0021d0  b7ac2500  beq r11, r2, 808
0021d4  b7828502  beq r11, r8, 1184
0021d8  37e89502  beq r11, r9, 1560
0021dc  1f510000  addli r2, zero, 5
0021e0  37be2502  beq r11, r2, 1932
0021e4  1f610000  addli r2, zero, 6
0021e8  37942504  beq r11, r2, 2308
0021ec  1f710000  addli r2, zero, 7
0021f0  b7f92504  beq r11, r2, 2684
0021f4  5b7f0100  j 3064
0021f8  3d000000  xfence
0021fc  33040028  zext_int2long r[9:10], zero
002200  00a00300  mfence { lm, sm, gm }
002204  73348fc4  store.d r[9:10], -952(r30)
002208  5b030000  j 24
00220c  6b540fc5  load.d r[9:10], -944(r30)
002210  6b558fc5  load.d r[11:12], -936(r30)
002214  13218504  setlt.ul r2, r[11:12], r[9:10]
002218  27140500  addli.d r[9:10], r[11:12], 1
00221c  37150100  beq r2, zero, 324
002220  1f710000  addli r2, zero, 7
002224  6b598fc4  load.d r[19:20], -952(r30)
002228  733c8fc4  store.d r[9:10], -936(r30)
00222c  17352402  sll.d r[11:12], r[9:10], r2
002230  db040000  j 36
002234  27490900  addli.d r[19:20], r[19:20], 4
002238  0b936310  add.s r6, r7, r6
00223c  13249903  setneq.d r8, r[19:20], r[26:27]
002240  73662300  stores.w r2, 12(r6)
002244  73645301  stores.w r21, 8(r6)
002248  73628301  stores.w r24, 4(r6)
00224c  73600301  stores.w r16, 0(r6)
002250  b77e04fe  beq r8, zero, -68
002254  0b24a910  add.ul r[9:10], r[19:20], r[11:12]
002258  1b332400  slli r6, r8, 2
00225c  0b916110  add.s r2, r3, r6
002260  ef4dc100  loads.w r27, 12(r2)
002264  6f4b0100  loads.w r22, 0(r2)
002268  6f444100  loads.w r8, 4(r2)
00226c  ef4b8100  loads.w r23, 8(r2)
002270  178aed00  and r20, r27, r14
002274  13814205  setlt.u r2, r5, r20
002278  3b300100  bneq r2, zero, 12
00227c  1f810d00  addli r2, r27, 0
002280  5b010000  j 8
002284  17914d00  or r2, r27, r4
002288  9784eb00  and r9, r23, r14
00228c  13869204  setlt.u r12, r5, r9
002290  3b300600  bneq r12, zero, 12
002294  9f8a0b00  addli r21, r23, 0
002298  5b010000  j 8
00229c  979a4b00  or r21, r23, r4
0022a0  9708e400  and r17, r8, r14
0022a4  13861205  setlt.u r12, r5, r17
0022a8  3b300600  bneq r12, zero, 12
0022ac  1f0c0400  addli r24, r8, 0
0022b0  5b010000  j 8
0022b4  171c4400  or r24, r8, r4
0022b8  1706eb00  and r12, r22, r14
0022bc  9386c204  setlt.u r13, r5, r12
0022c0  3bd00600  bneq r13, zero, 20
0022c4  1f080b00  addli r16, r22, 0
0022c8  1386c004  setlt.u r12, r1, r12
0022cc  37500600  beq r12, zero, 20
0022d0  db040000  j 36
0022d4  17184b00  or r16, r22, r4
0022d8  1386c004  setlt.u r12, r1, r12
0022dc  3b600600  bneq r12, zero, 24
0022e0  1b460b01  srli r12, r22, 16
0022e4  1b061600  andi r12, r12, 1
0022e8  0b16cb10  add.s r12, r22, r12
0022ec  0b16f610  add.s r12, r12, r15
0022f0  1708c601  and r16, r12, r28
0022f4  13861005  setlt.u r12, r1, r17
0022f8  37600600  beq r12, zero, 24
0022fc  13849004  setlt.u r8, r1, r9
002300  b7300400  beq r8, zero, 44
002304  13844005  setlt.u r8, r1, r20
002308  bb3c04fe  bneq r8, zero, -212
00230c  db070000  j 60
002310  1b460401  srli r12, r8, 16
002314  1b061600  andi r12, r12, 1
002318  0b14c410  add.s r8, r8, r12
00231c  0b14f410  add.s r8, r8, r15
002320  170cc401  and r24, r8, r28
002324  13849004  setlt.u r8, r1, r9
002328  3b7f04fe  bneq r8, zero, -36
00232c  1bc40b01  srli r8, r23, 16
002330  1b041400  andi r8, r8, 1
002334  0b948b10  add.s r8, r23, r8
002338  0b14f410  add.s r8, r8, r15
00233c  970ac401  and r21, r8, r28
002340  13844005  setlt.u r8, r1, r20
002344  bb4b04fe  bneq r8, zero, -272
002348  1bc10d01  srli r2, r27, 16
00234c  1b011100  andi r2, r2, 1
002350  0b912d10  add.s r2, r27, r2
002354  0b11f110  add.s r2, r2, r15
002358  1701c101  and r2, r2, r28
00235c  5bdbffff  j -296
002360  80350002  core_id r11
002364  9f440000  addli r9, zero, 4
002368  1f340000  addli r8, zero, 3
00236c  00200100  mfence { sm }
002370  1f110000  addli r2, zero, 1
002374  3be925fe  bneq r11, r2, -424
002378  1f012000  addli r2, zero, 16
00237c  3d000000  xfence
002380  00a00300  mfence { lm, sm, gm }
002384  33040128  zext_int2long r[9:10], r2
002388  5b030000  j 24
00238c  6b540fc9  load.d r[9:10], -880(r30)
002390  6b558fc5  load.d r[11:12], -936(r30)
002394  13218504  setlt.ul r2, r[11:12], r[9:10]
002398  27140500  addli.d r[9:10], r[11:12], 1
00239c  37150100  beq r2, zero, 324
0023a0  1f710000  addli r2, zero, 7
0023a4  33050028  zext_int2long r[11:12], zero
0023a8  733c8fc4  store.d r[9:10], -936(r30)
0023ac  17382402  sll.d r[17:18], r[9:10], r2
0023b0  db040000  j 36
0023b4  27450500  addli.d r[11:12], r[11:12], 4
0023b8  0b936310  add.s r6, r7, r6
0023bc  13249503  setneq.d r8, r[11:12], r[26:27]
0023c0  73662300  stores.w r2, 12(r6)
0023c4  73644301  stores.w r20, 8(r6)
0023c8  73627301  stores.w r23, 4(r6)
0023cc  73606301  stores.w r22, 0(r6)
0023d0  b77e04fe  beq r8, zero, -68
0023d4  0b240511  add.ul r[9:10], r[11:12], r[17:18]
0023d8  1b332400  slli r6, r8, 2
0023dc  0b916110  add.s r2, r3, r6
0023e0  6f49c100  loads.w r18, 12(r2)
0023e4  6f4c0100  loads.w r24, 0(r2)
0023e8  6f444100  loads.w r8, 4(r2)
0023ec  ef4a8100  loads.w r21, 8(r2)
0023f0  9709e900  and r19, r18, r14
0023f4  13813205  setlt.u r2, r5, r19
0023f8  3b300100  bneq r2, zero, 12
0023fc  1f010900  addli r2, r18, 0
002400  5b010000  j 8
002404  17114900  or r2, r18, r4
002408  9784ea00  and r9, r21, r14
00240c  13869204  setlt.u r12, r5, r9
002410  3b300600  bneq r12, zero, 12
002414  1f8a0a00  addli r20, r21, 0
002418  5b010000  j 8
00241c  179a4a00  or r20, r21, r4
002420  970de400  and r27, r8, r14
002424  1386b205  setlt.u r12, r5, r27
002428  3b300600  bneq r12, zero, 12
00242c  9f0b0400  addli r23, r8, 0
002430  5b010000  j 8
002434  971b4400  or r23, r8, r4
002438  1706ec00  and r12, r24, r14
00243c  9386c204  setlt.u r13, r5, r12
002440  3bd00600  bneq r13, zero, 20
002444  1f0b0c00  addli r22, r24, 0
002448  1386c004  setlt.u r12, r1, r12
00244c  37500600  beq r12, zero, 20
002450  db040000  j 36
002454  171b4c00  or r22, r24, r4
002458  1386c004  setlt.u r12, r1, r12
00245c  3b600600  bneq r12, zero, 24
002460  1b460c01  srli r12, r24, 16
002464  1b061600  andi r12, r12, 1
002468  0b16cc10  add.s r12, r24, r12
00246c  0b16f610  add.s r12, r12, r15
002470  170bc601  and r22, r12, r28
002474  1386b005  setlt.u r12, r1, r27
002478  37600600  beq r12, zero, 24
00247c  13849004  setlt.u r8, r1, r9
002480  b7300400  beq r8, zero, 44
002484  13843005  setlt.u r8, r1, r19
002488  bb3c04fe  bneq r8, zero, -212
00248c  db070000  j 60
002490  1b460401  srli r12, r8, 16
002494  1b061600  andi r12, r12, 1
002498  0b14c410  add.s r8, r8, r12
00249c  0b14f410  add.s r8, r8, r15
0024a0  970bc401  and r23, r8, r28
0024a4  13849004  setlt.u r8, r1, r9
0024a8  3b7f04fe  bneq r8, zero, -36
0024ac  1bc40a01  srli r8, r21, 16
0024b0  1b041400  andi r8, r8, 1
0024b4  0b948a10  add.s r8, r21, r8
0024b8  0b14f410  add.s r8, r8, r15
0024bc  170ac401  and r20, r8, r28
0024c0  13843005  setlt.u r8, r1, r19
0024c4  bb4b04fe  bneq r8, zero, -272
0024c8  1b410901  srli r2, r18, 16
0024cc  1b011100  andi r2, r2, 1
0024d0  0b112910  add.s r2, r18, r2
0024d4  0b11f110  add.s r2, r2, r15
0024d8  1701c101  and r2, r2, r28
0024dc  5bdbffff  j -296
0024e0  80350002  core_id r11
0024e4  9f440000  addli r9, zero, 4
0024e8  1f340000  addli r8, zero, 3
0024ec  00200100  mfence { sm }
0024f0  1f210000  addli r2, zero, 2
0024f4  bb8325fe  bneq r11, r2, -800
0024f8  1f014000  addli r2, zero, 32
0024fc  3d000000  xfence
002500  00a00300  mfence { lm, sm, gm }
002504  33040128  zext_int2long r[9:10], r2
002508  5b030000  j 24
00250c  6b548fc8  load.d r[9:10], -888(r30)
002510  6b550fc9  load.d r[11:12], -880(r30)
002514  13218504  setlt.ul r2, r[11:12], r[9:10]
002518  27140500  addli.d r[9:10], r[11:12], 1
00251c  37150100  beq r2, zero, 324
002520  1f710000  addli r2, zero, 7
002524  33050028  zext_int2long r[11:12], zero
002528  73388fc8  store.d r[9:10], -880(r30)
00252c  17382402  sll.d r[17:18], r[9:10], r2
002530  db040000  j 36
002534  27450500  addli.d r[11:12], r[11:12], 4
002538  0b936310  add.s r6, r7, r6
00253c  13249503  setneq.d r8, r[11:12], r[26:27]
002540  73662300  stores.w r2, 12(r6)
002544  73644301  stores.w r20, 8(r6)
002548  73627301  stores.w r23, 4(r6)
00254c  73606301  stores.w r22, 0(r6)
002550  b77e04fe  beq r8, zero, -68
002554  0b240511  add.ul r[9:10], r[11:12], r[17:18]
002558  1b332400  slli r6, r8, 2
00255c  0b916110  add.s r2, r3, r6
002560  6f49c100  loads.w r18, 12(r2)
002564  6f4c0100  loads.w r24, 0(r2)
002568  6f444100  loads.w r8, 4(r2)
00256c  ef4a8100  loads.w r21, 8(r2)
002570  9709e900  and r19, r18, r14
002574  13813205  setlt.u r2, r5, r19
002578  3b300100  bneq r2, zero, 12
00257c  1f010900  addli r2, r18, 0
002580  5b010000  j 8
002584  17114900  or r2, r18, r4
002588  9784ea00  and r9, r21, r14
00258c  13869204  setlt.u r12, r5, r9
002590  3b300600  bneq r12, zero, 12
002594  1f8a0a00  addli r20, r21, 0
002598  5b010000  j 8
00259c  179a4a00  or r20, r21, r4
0025a0  970de400  and r27, r8, r14
0025a4  1386b205  setlt.u r12, r5, r27
0025a8  3b300600  bneq r12, zero, 12
0025ac  9f0b0400  addli r23, r8, 0
0025b0  5b010000  j 8
0025b4  971b4400  or r23, r8, r4
0025b8  1706ec00  and r12, r24, r14
0025bc  9386c204  setlt.u r13, r5, r12
0025c0  3bd00600  bneq r13, zero, 20
0025c4  1f0b0c00  addli r22, r24, 0
0025c8  1386c004  setlt.u r12, r1, r12
0025cc  37500600  beq r12, zero, 20
0025d0  db040000  j 36
0025d4  171b4c00  or r22, r24, r4
0025d8  1386c004  setlt.u r12, r1, r12
0025dc  3b600600  bneq r12, zero, 24
0025e0  1b460c01  srli r12, r24, 16
0025e4  1b061600  andi r12, r12, 1
0025e8  0b16cc10  add.s r12, r24, r12
0025ec  0b16f610  add.s r12, r12, r15
0025f0  170bc601  and r22, r12, r28
0025f4  1386b005  setlt.u r12, r1, r27
0025f8  37600600  beq r12, zero, 24
0025fc  13849004  setlt.u r8, r1, r9
002600  b7300400  beq r8, zero, 44
002604  13843005  setlt.u r8, r1, r19
002608  bb3c04fe  bneq r8, zero, -212
00260c  db070000  j 60
002610  1b460401  srli r12, r8, 16
002614  1b061600  andi r12, r12, 1
002618  0b14c410  add.s r8, r8, r12
00261c  0b14f410  add.s r8, r8, r15
002620  970bc401  and r23, r8, r28
002624  13849004  setlt.u r8, r1, r9
002628  3b7f04fe  bneq r8, zero, -36
00262c  1bc40a01  srli r8, r21, 16
002630  1b041400  andi r8, r8, 1
002634  0b948a10  add.s r8, r21, r8
002638  0b14f410  add.s r8, r8, r15
00263c  170ac401  and r20, r8, r28
002640  13843005  setlt.u r8, r1, r19
002644  bb4b04fe  bneq r8, zero, -272
002648  1b410901  srli r2, r18, 16
00264c  1b011100  andi r2, r2, 1
002650  0b112910  add.s r2, r18, r2
002654  0b11f110  add.s r2, r2, r15
002658  1701c101  and r2, r2, r28
00265c  5bdbffff  j -296
002660  80350002  core_id r11
002664  9f440000  addli r9, zero, 4
002668  1f340000  addli r8, zero, 3
00266c  00200100  mfence { sm }
002670  bbad85fc  bneq r11, r8, -1176
002674  1f016000  addli r2, zero, 48
002678  3d000000  xfence
00267c  00a00300  mfence { lm, sm, gm }
002680  33040128  zext_int2long r[9:10], r2
002684  5b030000  j 24
002688  6b540fc8  load.d r[9:10], -896(r30)
00268c  6b550fc9  load.d r[11:12], -880(r30)
002690  13218504  setlt.ul r2, r[11:12], r[9:10]
002694  27140500  addli.d r[9:10], r[11:12], 1
002698  37150100  beq r2, zero, 324
00269c  1f710000  addli r2, zero, 7
0026a0  33050028  zext_int2long r[11:12], zero
0026a4  73388fc8  store.d r[9:10], -880(r30)
0026a8  17382402  sll.d r[17:18], r[9:10], r2
0026ac  db040000  j 36
0026b0  27450500  addli.d r[11:12], r[11:12], 4
0026b4  0b936310  add.s r6, r7, r6
0026b8  13249503  setneq.d r8, r[11:12], r[26:27]
0026bc  73662300  stores.w r2, 12(r6)
0026c0  73644301  stores.w r20, 8(r6)
0026c4  73627301  stores.w r23, 4(r6)
0026c8  73606301  stores.w r22, 0(r6)
0026cc  b77e04fe  beq r8, zero, -68
0026d0  0b240511  add.ul r[9:10], r[11:12], r[17:18]
0026d4  1b332400  slli r6, r8, 2
0026d8  0b916110  add.s r2, r3, r6
0026dc  6f49c100  loads.w r18, 12(r2)
0026e0  6f4c0100  loads.w r24, 0(r2)
0026e4  6f444100  loads.w r8, 4(r2)
0026e8  ef4a8100  loads.w r21, 8(r2)
0026ec  9709e900  and r19, r18, r14
0026f0  13813205  setlt.u r2, r5, r19
0026f4  3b300100  bneq r2, zero, 12
0026f8  1f010900  addli r2, r18, 0
0026fc  5b010000  j 8
002700  17114900  or r2, r18, r4
002704  9784ea00  and r9, r21, r14
002708  13869204  setlt.u r12, r5, r9
00270c  3b300600  bneq r12, zero, 12
002710  1f8a0a00  addli r20, r21, 0
002714  5b010000  j 8
002718  179a4a00  or r20, r21, r4
00271c  970de400  and r27, r8, r14
002720  1386b205  setlt.u r12, r5, r27
002724  3b300600  bneq r12, zero, 12
002728  9f0b0400  addli r23, r8, 0
00272c  5b010000  j 8
002730  971b4400  or r23, r8, r4
002734  1706ec00  and r12, r24, r14
002738  9386c204  setlt.u r13, r5, r12
00273c  3bd00600  bneq r13, zero, 20
002740  1f0b0c00  addli r22, r24, 0
002744  1386c004  setlt.u r12, r1, r12
002748  37500600  beq r12, zero, 20
00274c  db040000  j 36
002750  171b4c00  or r22, r24, r4
002754  1386c004  setlt.u r12, r1, r12
002758  3b600600  bneq r12, zero, 24
00275c  1b460c01  srli r12, r24, 16
002760  1b061600  andi r12, r12, 1
002764  0b16cc10  add.s r12, r24, r12
002768  0b16f610  add.s r12, r12, r15
00276c  170bc601  and r22, r12, r28
002770  1386b005  setlt.u r12, r1, r27
002774  37600600  beq r12, zero, 24
002778  13849004  setlt.u r8, r1, r9
00277c  b7300400  beq r8, zero, 44
002780  13843005  setlt.u r8, r1, r19
002784  bb3c04fe  bneq r8, zero, -212
002788  db070000  j 60
00278c  1b460401  srli r12, r8, 16
002790  1b061600  andi r12, r12, 1
002794  0b14c410  add.s r8, r8, r12
002798  0b14f410  add.s r8, r8, r15
00279c  970bc401  and r23, r8, r28
0027a0  13849004  setlt.u r8, r1, r9
0027a4  3b7f04fe  bneq r8, zero, -36
0027a8  1bc40a01  srli r8, r21, 16
0027ac  1b041400  andi r8, r8, 1
0027b0  0b948a10  add.s r8, r21, r8
0027b4  0b14f410  add.s r8, r8, r15
0027b8  170ac401  and r20, r8, r28
0027bc  13843005  setlt.u r8, r1, r19
0027c0  bb4b04fe  bneq r8, zero, -272
0027c4  1b410901  srli r2, r18, 16
0027c8  1b011100  andi r2, r2, 1
0027cc  0b112910  add.s r2, r18, r2
0027d0  0b11f110  add.s r2, r2, r15
0027d4  1701c101  and r2, r2, r28
0027d8  5bdbffff  j -296
0027dc  80350002  core_id r11
0027e0  9f440000  addli r9, zero, 4
0027e4  1f340000  addli r8, zero, 3
0027e8  00200100  mfence { sm }
0027ec  bbc795fc  bneq r11, r9, -1552
0027f0  3d000000  xfence
0027f4  00a00300  mfence { lm, sm, gm }
0027f8  6b540fca  load.d r[9:10], -864(r30)
0027fc  5b030000  j 24
002800  6b540fca  load.d r[9:10], -864(r30)
002804  6b558fc7  load.d r[11:12], -904(r30)
002808  1321a404  setlt.ul r2, r[9:10], r[11:12]
00280c  27140400  addli.d r[9:10], r[9:10], 1
002810  37150100  beq r2, zero, 324
002814  1f710000  addli r2, zero, 7
002818  33050028  zext_int2long r[11:12], zero
00281c  73308fca  store.d r[9:10], -864(r30)
002820  17362402  sll.d r[13:14], r[9:10], r2
002824  db040000  j 36
002828  27450500  addli.d r[11:12], r[11:12], 4
00282c  0b936310  add.s r6, r7, r6
002830  13249503  setneq.d r8, r[11:12], r[26:27]
002834  73662300  stores.w r2, 12(r6)
002838  73642301  stores.w r18, 8(r6)
00283c  73624301  stores.w r20, 4(r6)
002840  73605301  stores.w r21, 0(r6)
002844  b77e04fe  beq r8, zero, -68
002848  0b24c510  add.ul r[9:10], r[11:12], r[13:14]
00284c  1b332400  slli r6, r8, 2
002850  0b916110  add.s r2, r3, r6
002854  6f48c100  loads.w r16, 12(r2)
002858  6f4b0100  loads.w r22, 0(r2)
00285c  6f444100  loads.w r8, 4(r2)
002860  ef498100  loads.w r19, 8(r2)
002864  9708e800  and r17, r16, r14
002868  13811205  setlt.u r2, r5, r17
00286c  3b300100  bneq r2, zero, 12
002870  1f010800  addli r2, r16, 0
002874  5b010000  j 8
002878  17114800  or r2, r16, r4
00287c  9784e900  and r9, r19, r14
002880  13899204  setlt.u r18, r5, r9
002884  3b300900  bneq r18, zero, 12
002888  1f890900  addli r18, r19, 0
00288c  5b010000  j 8
002890  17994900  or r18, r19, r4
002894  970be400  and r23, r8, r14
002898  138a7205  setlt.u r20, r5, r23
00289c  3b300a00  bneq r20, zero, 12
0028a0  1f0a0400  addli r20, r8, 0
0028a4  5b010000  j 8
0028a8  171a4400  or r20, r8, r4
0028ac  170ceb00  and r24, r22, r14
0028b0  938a8205  setlt.u r21, r5, r24
0028b4  3bd00a00  bneq r21, zero, 20
0028b8  9f0a0b00  addli r21, r22, 0
0028bc  138c8005  setlt.u r24, r1, r24
0028c0  37500c00  beq r24, zero, 20
0028c4  db040000  j 36
0028c8  971a4b00  or r21, r22, r4
0028cc  138c8005  setlt.u r24, r1, r24
0028d0  3b600c00  bneq r24, zero, 24
0028d4  9b4a0b01  srli r21, r22, 16
0028d8  9b8a1a00  andi r21, r21, 1
0028dc  8b1a5b11  add.s r21, r22, r21
0028e0  8b9afa10  add.s r21, r21, r15
0028e4  978aca01  and r21, r21, r28
0028e8  138b7005  setlt.u r22, r1, r23
0028ec  37600b00  beq r22, zero, 24
0028f0  13849004  setlt.u r8, r1, r9
0028f4  b7300400  beq r8, zero, 44
0028f8  13841005  setlt.u r8, r1, r17
0028fc  bb3c04fe  bneq r8, zero, -212
002900  db070000  j 60
002904  1b4a0401  srli r20, r8, 16
002908  1b0a1a00  andi r20, r20, 1
00290c  0b144411  add.s r8, r8, r20
002910  0b14f410  add.s r8, r8, r15
002914  170ac401  and r20, r8, r28
002918  13849004  setlt.u r8, r1, r9
00291c  3b7f04fe  bneq r8, zero, -36
002920  1bc40901  srli r8, r19, 16
002924  1b041400  andi r8, r8, 1
002928  0b948910  add.s r8, r19, r8
00292c  0b14f410  add.s r8, r8, r15
002930  1709c401  and r18, r8, r28
002934  13841005  setlt.u r8, r1, r17
002938  bb4b04fe  bneq r8, zero, -272
00293c  1b410801  srli r2, r16, 16
002940  1b011100  andi r2, r2, 1
002944  0b112810  add.s r2, r16, r2
002948  0b11f110  add.s r2, r2, r15
00294c  1701c101  and r2, r2, r28
002950  5bdbffff  j -296
002954  80350002  core_id r11
002958  9f440000  addli r9, zero, 4
00295c  1f340000  addli r8, zero, 3
002960  00200100  mfence { sm }
002964  1f510000  addli r2, zero, 5
002968  bbf125fc  bneq r11, r2, -1924
00296c  1f01a000  addli r2, zero, 80
002970  3d000000  xfence
002974  00a00300  mfence { lm, sm, gm }
002978  33040128  zext_int2long r[9:10], r2
00297c  5b030000  j 24
002980  6b540fc7  load.d r[9:10], -912(r30)
002984  6b550fca  load.d r[11:12], -864(r30)
002988  13218504  setlt.ul r2, r[11:12], r[9:10]
00298c  27140500  addli.d r[9:10], r[11:12], 1
002990  37150100  beq r2, zero, 324
002994  1f710000  addli r2, zero, 7
002998  33050028  zext_int2long r[11:12], zero
00299c  73308fca  store.d r[9:10], -864(r30)
0029a0  17382402  sll.d r[17:18], r[9:10], r2
0029a4  db040000  j 36
0029a8  27450500  addli.d r[11:12], r[11:12], 4
0029ac  0b936310  add.s r6, r7, r6
0029b0  13249503  setneq.d r8, r[11:12], r[26:27]
0029b4  73662300  stores.w r2, 12(r6)
0029b8  73644301  stores.w r20, 8(r6)
0029bc  73627301  stores.w r23, 4(r6)
0029c0  73606301  stores.w r22, 0(r6)
0029c4  b77e04fe  beq r8, zero, -68
0029c8  0b240511  add.ul r[9:10], r[11:12], r[17:18]
0029cc  1b332400  slli r6, r8, 2
0029d0  0b916110  add.s r2, r3, r6
0029d4  6f49c100  loads.w r18, 12(r2)
0029d8  6f4c0100  loads.w r24, 0(r2)
0029dc  6f444100  loads.w r8, 4(r2)
0029e0  ef4a8100  loads.w r21, 8(r2)
0029e4  9709e900  and r19, r18, r14
0029e8  13813205  setlt.u r2, r5, r19
0029ec  3b300100  bneq r2, zero, 12
0029f0  1f010900  addli r2, r18, 0
0029f4  5b010000  j 8
0029f8  17114900  or r2, r18, r4
0029fc  9784ea00  and r9, r21, r14
002a00  13869204  setlt.u r12, r5, r9
002a04  3b300600  bneq r12, zero, 12
002a08  1f8a0a00  addli r20, r21, 0
002a0c  5b010000  j 8
002a10  179a4a00  or r20, r21, r4
002a14  970de400  and r27, r8, r14
002a18  1386b205  setlt.u r12, r5, r27
002a1c  3b300600  bneq r12, zero, 12
002a20  9f0b0400  addli r23, r8, 0
002a24  5b010000  j 8
002a28  971b4400  or r23, r8, r4
002a2c  1706ec00  and r12, r24, r14
002a30  9386c204  setlt.u r13, r5, r12
002a34  3bd00600  bneq r13, zero, 20
002a38  1f0b0c00  addli r22, r24, 0
002a3c  1386c004  setlt.u r12, r1, r12
002a40  37500600  beq r12, zero, 20
002a44  db040000  j 36
002a48  171b4c00  or r22, r24, r4
002a4c  1386c004  setlt.u r12, r1, r12
002a50  3b600600  bneq r12, zero, 24
002a54  1b460c01  srli r12, r24, 16
002a58  1b061600  andi r12, r12, 1
002a5c  0b16cc10  add.s r12, r24, r12
002a60  0b16f610  add.s r12, r12, r15
002a64  170bc601  and r22, r12, r28
002a68  1386b005  setlt.u r12, r1, r27
002a6c  37600600  beq r12, zero, 24
002a70  13849004  setlt.u r8, r1, r9
002a74  b7300400  beq r8, zero, 44
002a78  13843005  setlt.u r8, r1, r19
002a7c  bb3c04fe  bneq r8, zero, -212
002a80  db070000  j 60
002a84  1b460401  srli r12, r8, 16
002a88  1b061600  andi r12, r12, 1
002a8c  0b14c410  add.s r8, r8, r12
002a90  0b14f410  add.s r8, r8, r15
002a94  970bc401  and r23, r8, r28
002a98  13849004  setlt.u r8, r1, r9
002a9c  3b7f04fe  bneq r8, zero, -36
002aa0  1bc40a01  srli r8, r21, 16
002aa4  1b041400  andi r8, r8, 1
002aa8  0b948a10  add.s r8, r21, r8
002aac  0b14f410  add.s r8, r8, r15
002ab0  170ac401  and r20, r8, r28
002ab4  13843005  setlt.u r8, r1, r19
002ab8  bb4b04fe  bneq r8, zero, -272
002abc  1b410901  srli r2, r18, 16
002ac0  1b011100  andi r2, r2, 1
002ac4  0b112910  add.s r2, r18, r2
002ac8  0b11f110  add.s r2, r2, r15
002acc  1701c101  and r2, r2, r28
002ad0  5bdbffff  j -296
002ad4  80350002  core_id r11
002ad8  9f440000  addli r9, zero, 4
002adc  1f340000  addli r8, zero, 3
002ae0  00200100  mfence { sm }
002ae4  1f610000  addli r2, zero, 6
002ae8  3b9c25fa  bneq r11, r2, -2300
002aec  1f01c000  addli r2, zero, 96
002af0  3d000000  xfence
002af4  00a00300  mfence { lm, sm, gm }
002af8  33040128  zext_int2long r[9:10], r2
002afc  5b030000  j 24
002b00  6b548fc6  load.d r[9:10], -920(r30)
002b04  6b550fca  load.d r[11:12], -864(r30)
002b08  13218504  setlt.ul r2, r[11:12], r[9:10]
002b0c  27140500  addli.d r[9:10], r[11:12], 1
002b10  37150100  beq r2, zero, 324
002b14  1f710000  addli r2, zero, 7
002b18  33050028  zext_int2long r[11:12], zero
002b1c  73308fca  store.d r[9:10], -864(r30)
002b20  17382402  sll.d r[17:18], r[9:10], r2
002b24  db040000  j 36
002b28  27450500  addli.d r[11:12], r[11:12], 4
002b2c  0b936310  add.s r6, r7, r6
002b30  13249503  setneq.d r8, r[11:12], r[26:27]
002b34  73662300  stores.w r2, 12(r6)
002b38  73644301  stores.w r20, 8(r6)
002b3c  73627301  stores.w r23, 4(r6)
002b40  73606301  stores.w r22, 0(r6)
002b44  b77e04fe  beq r8, zero, -68
002b48  0b240511  add.ul r[9:10], r[11:12], r[17:18]
002b4c  1b332400  slli r6, r8, 2
002b50  0b916110  add.s r2, r3, r6
002b54  6f49c100  loads.w r18, 12(r2)
002b58  6f4c0100  loads.w r24, 0(r2)
002b5c  6f444100  loads.w r8, 4(r2)
002b60  ef4a8100  loads.w r21, 8(r2)
002b64  9709e900  and r19, r18, r14
002b68  13813205  setlt.u r2, r5, r19
002b6c  3b300100  bneq r2, zero, 12
002b70  1f010900  addli r2, r18, 0
002b74  5b010000  j 8
002b78  17114900  or r2, r18, r4
002b7c  9784ea00  and r9, r21, r14
002b80  13869204  setlt.u r12, r5, r9
002b84  3b300600  bneq r12, zero, 12
002b88  1f8a0a00  addli r20, r21, 0
002b8c  5b010000  j 8
002b90  179a4a00  or r20, r21, r4
002b94  970de400  and r27, r8, r14
002b98  1386b205  setlt.u r12, r5, r27
002b9c  3b300600  bneq r12, zero, 12
002ba0  9f0b0400  addli r23, r8, 0
002ba4  5b010000  j 8
002ba8  971b4400  or r23, r8, r4
002bac  1706ec00  and r12, r24, r14
002bb0  9386c204  setlt.u r13, r5, r12
002bb4  3bd00600  bneq r13, zero, 20
002bb8  1f0b0c00  addli r22, r24, 0
002bbc  1386c004  setlt.u r12, r1, r12
002bc0  37500600  beq r12, zero, 20
002bc4  db040000  j 36
002bc8  171b4c00  or r22, r24, r4
002bcc  1386c004  setlt.u r12, r1, r12
002bd0  3b600600  bneq r12, zero, 24
002bd4  1b460c01  srli r12, r24, 16
002bd8  1b061600  andi r12, r12, 1
002bdc  0b16cc10  add.s r12, r24, r12
002be0  0b16f610  add.s r12, r12, r15
002be4  170bc601  and r22, r12, r28
002be8  1386b005  setlt.u r12, r1, r27
002bec  37600600  beq r12, zero, 24
002bf0  13849004  setlt.u r8, r1, r9
002bf4  b7300400  beq r8, zero, 44
002bf8  13843005  setlt.u r8, r1, r19
002bfc  bb3c04fe  bneq r8, zero, -212
002c00  db070000  j 60
002c04  1b460401  srli r12, r8, 16
002c08  1b061600  andi r12, r12, 1
002c0c  0b14c410  add.s r8, r8, r12
002c10  0b14f410  add.s r8, r8, r15
002c14  970bc401  and r23, r8, r28
002c18  13849004  setlt.u r8, r1, r9
002c1c  3b7f04fe  bneq r8, zero, -36
002c20  1bc40a01  srli r8, r21, 16
002c24  1b041400  andi r8, r8, 1
002c28  0b948a10  add.s r8, r21, r8
002c2c  0b14f410  add.s r8, r8, r15
002c30  170ac401  and r20, r8, r28
002c34  13843005  setlt.u r8, r1, r19
002c38  bb4b04fe  bneq r8, zero, -272
002c3c  1b410901  srli r2, r18, 16
002c40  1b011100  andi r2, r2, 1
002c44  0b112910  add.s r2, r18, r2
002c48  0b11f110  add.s r2, r2, r15
002c4c  1701c101  and r2, r2, r28
002c50  5bdbffff  j -296
002c54  80350002  core_id r11
002c58  9f440000  addli r9, zero, 4
002c5c  1f340000  addli r8, zero, 3
002c60  00200100  mfence { sm }
002c64  1f710000  addli r2, zero, 7
002c68  3b962500  bneq r11, r2, 388
002c6c  33040028  zext_int2long r[9:10], zero
002c70  1f01e000  addli r2, zero, 112
002c74  73388fc8  store.d r[9:10], -880(r30)
002c78  33040128  zext_int2long r[9:10], r2
002c7c  3d000000  xfence
002c80  00a00300  mfence { lm, sm, gm }
002c84  5b030000  j 24
002c88  6b540fc6  load.d r[9:10], -928(r30)
002c8c  6b550fca  load.d r[11:12], -864(r30)
002c90  13218504  setlt.ul r2, r[11:12], r[9:10]
002c94  27140500  addli.d r[9:10], r[11:12], 1
002c98  37150100  beq r2, zero, 324
002c9c  1f710000  addli r2, zero, 7
002ca0  6b580fc9  load.d r[17:18], -880(r30)
002ca4  73308fca  store.d r[9:10], -864(r30)
002ca8  17352402  sll.d r[11:12], r[9:10], r2
002cac  db040000  j 36
002cb0  27480800  addli.d r[17:18], r[17:18], 4
002cb4  0b936310  add.s r6, r7, r6
002cb8  13249803  setneq.d r8, r[17:18], r[26:27]
002cbc  73662300  stores.w r2, 12(r6)
002cc0  7364b301  stores.w r27, 8(r6)
002cc4  73628301  stores.w r24, 4(r6)
002cc8  7360c300  stores.w r12, 0(r6)
002ccc  b77e04fe  beq r8, zero, -68
002cd0  0b24a810  add.ul r[9:10], r[17:18], r[11:12]
002cd4  1b332400  slli r6, r8, 2
002cd8  0b916110  add.s r2, r3, r6
002cdc  6f49c100  loads.w r18, 12(r2)
002ce0  6f4b0100  loads.w r22, 0(r2)
002ce4  6f444100  loads.w r8, 4(r2)
002ce8  ef4b8100  loads.w r23, 8(r2)
002cec  970ae900  and r21, r18, r14
002cf0  13815205  setlt.u r2, r5, r21
002cf4  3b300100  bneq r2, zero, 12
002cf8  1f010900  addli r2, r18, 0
002cfc  5b010000  j 8
002d00  17114900  or r2, r18, r4
002d04  9784eb00  and r9, r23, r14
002d08  13869204  setlt.u r12, r5, r9
002d0c  3b300600  bneq r12, zero, 12
002d10  9f8d0b00  addli r27, r23, 0
002d14  5b010000  j 8
002d18  979d4b00  or r27, r23, r4
002d1c  9706e400  and r13, r8, r14
002d20  1386d204  setlt.u r12, r5, r13
002d24  3b300600  bneq r12, zero, 12
002d28  1f0c0400  addli r24, r8, 0
002d2c  5b010000  j 8
002d30  171c4400  or r24, r8, r4
002d34  9709eb00  and r19, r22, r14
002d38  13863205  setlt.u r12, r5, r19
002d3c  3b500600  bneq r12, zero, 20
002d40  1f060b00  addli r12, r22, 0
002d44  93893005  setlt.u r19, r1, r19
002d48  37d00900  beq r19, zero, 20
002d4c  db040000  j 36
002d50  17164b00  or r12, r22, r4
002d54  93893005  setlt.u r19, r1, r19
002d58  3be00900  bneq r19, zero, 24
002d5c  1b460b01  srli r12, r22, 16
002d60  1b061600  andi r12, r12, 1
002d64  0b16cb10  add.s r12, r22, r12
002d68  0b16f610  add.s r12, r12, r15
002d6c  1706c601  and r12, r12, r28
002d70  9386d004  setlt.u r13, r1, r13
002d74  37e00600  beq r13, zero, 24
002d78  13849004  setlt.u r8, r1, r9
002d7c  b7300400  beq r8, zero, 44
002d80  13845005  setlt.u r8, r1, r21
002d84  bb3c04fe  bneq r8, zero, -212
002d88  db070000  j 60
002d8c  9b460401  srli r13, r8, 16
002d90  9b861600  andi r13, r13, 1
002d94  0b14d410  add.s r8, r8, r13
002d98  0b14f410  add.s r8, r8, r15
002d9c  170cc401  and r24, r8, r28
002da0  13849004  setlt.u r8, r1, r9
002da4  3b7f04fe  bneq r8, zero, -36
002da8  1bc40b01  srli r8, r23, 16
002dac  1b041400  andi r8, r8, 1
002db0  0b948b10  add.s r8, r23, r8
002db4  0b14f410  add.s r8, r8, r15
002db8  970dc401  and r27, r8, r28
002dbc  13845005  setlt.u r8, r1, r21
002dc0  bb4b04fe  bneq r8, zero, -272
002dc4  1b410901  srli r2, r18, 16
002dc8  1b011100  andi r2, r2, 1
002dcc  0b112910  add.s r2, r18, r2
002dd0  0b11f110  add.s r2, r2, r15
002dd4  1701c101  and r2, r2, r28
002dd8  5bdbffff  j -296
002ddc  80350002  core_id r11
002de0  9f440000  addli r9, zero, 4
002de4  1f340000  addli r8, zero, 3
002de8  00200100  mfence { sm }
002dec  1f71f001  addli r2, zero, 255
002df0  80220104  csr_set csr5, r2
002df4  00e00200  sync_core
002df8  37e985ec  beq r11, r8, -9640
002dfc  bb9905ec  bneq r11, zero, -9628
002e00  63413ff8  loadli.w r2,  -996(r30)
002e04  6b540fc2  load.d r[9:10], -992(r30)
002e08  1f232000  addli r6, zero, 18
002e0c  6b558fc9  load.d r[11:12], -872(r30)
002e10  6b560fc3  load.d r[13:14], -976(r30)
002e14  eb588f01  load.d r[18:19], 24(r30)
002e18  1f180000  addli r16, zero, 1
002e1c  17346402  sll.d r[9:10], r[9:10], r6
002e20  33110128  sext_int2long r[3:4], r2
002e24  17360603  sll.d r[13:14], r[13:14], r16
002e28  1f431000  addli r6, zero, 12
002e2c  0b35a140  min.sl r[11:12], r[3:4], r[11:12]
002e30  0ba48810  add.ul r[9:10], r[18:19], r[9:10]
002e34  7d100300  xwait r6, 0
002e38  1b930304  ori r6, r7, 64
002e3c  27050501  addli.d r[11:12], r[11:12], 128
002e40  0b24c410  add.ul r[9:10], r[9:10], r[13:14]
002e44  1f560000  addli r12, zero, 5
002e48  0b352548  max.sl r[11:12], r[11:12], r[3:4]
002e4c  1d000600  lock zero, r12
002e50  15080800  dma_cfg r16, r16, zero, 0
002e54  0b312518  sub.sl r[3:4], r[11:12], r[3:4]
002e58  15000802  dma_cfg zero, r16, zero, 1
002e5c  1f058000  addli r10, zero, 64
002e60  80350002  core_id r11
002e64  95040004  dma_cfg r9, zero, zero, 2
002e68  1504a306  dma_cfg r8, r6, r10, 3
002e6c  0b319141  min.sl r[3:4], r[3:4], r[26:27]
002e70  9f440000  addli r9, zero, 4
002e74  eb538fc2  load.d r[8:9], -984(r30)
002e78  1ff33300  addli r6, r7, 31
002e7c  9bb31300  slli r7, r7, 1
002e80  1f040001  addli r8, zero, 128
002e84  1b435300  srli r6, r6, 5
002e88  15056408  dma_cfg r10, r8, r6, 4
002e8c  1b83e303  andi r6, r7, 62
002e90  9f030004  addli r7, zero, 512
002e94  1f040010  addli r8, zero, 2048
002e98  1584230a  dma_cfg r8, r7, r2, 5
002e9c  1f511000  addli r2, zero, 13
002ea0  15006010  dma_cfg zero, zero, r6, 8
002ea4  35000000  dma_run zero
002ea8  1500000b  dma_cfg zero, zero, r16, 5
002eac  15000010  dma_cfg zero, zero, zero, 8
002eb0  1d100600  unlock r12
002eb4  5b35fbff  j -9816
002eb8  7d000000  xsignal zero, 0
002ebc  bbe00500  bneq r11, zero, 56
002ec0  9f200000  addli r1, zero, 2
002ec4  7d100000  xwait zero, 0
002ec8  7d100000  xwait zero, 0
002ecc  7d100000  xwait zero, 0
002ed0  7d100000  xwait zero, 0
002ed4  7d100000  xwait zero, 0
002ed8  7d100000  xwait zero, 0
002edc  7d100000  xwait zero, 0
002ee0  7d100000  xwait zero, 0
002ee4  1d800000  lock zero, r1
002ee8  0d000020  ew_cfg zero, zero, zero, 16
002eec  1d900000  unlock r1
002ef0  7d400000  xsignal_mode_cfg zero
002ef4  9f8efe07  addli sp, sp, 1016
002ef8  00a00300  mfence { lm, sm, gm }
002efc  00100000  exit
002f00  00100000  exit
002f04  00100000  exit
002f08  00100000  exit
002f0c  00100000  exit
002f10  00100000  exit
002f14  00100000  exit
002f18  00100000  exit
002f1c  00100000  exit
002f20  00100000  exit
002f24  00100000  exit
002f28  00100000  exit
002f2c  00100000  exit
002f30  00100000  exit
002f34  00100000  exit
002f38  00100000  exit
002f3c  00100000  exit
002f40  00100000  exit
002f44  00100000  exit
002f48  00100000  exit
002f4c  00100000  exit
002f50  00100000  exit
002f54  00100000  exit
002f58  00100000  exit
002f5c  00100000  exit
002f60  00100000  exit
002f64  00100000  exit
002f68  00100000  exit
002f6c  00100000  exit
002f70  00100000  exit
002f74  00100000  exit
002f78  00100000  exit
002f7c  00100000  exit
002f80  00100000  exit
002f84  00100000  exit
002f88  00100000  exit
002f8c  00100000  exit
002f90  00100000  exit
002f94  00100000  exit
002f98  00100000  exit
002f9c  00100000  exit
002fa0  00100000  exit
002fa4  00100000  exit
002fa8  00100000  exit
002fac  00100000  exit
002fb0  00100000  exit
002fb4  00100000  exit
002fb8  00100000  exit
002fbc  00100000  exit
002fc0  00100000  exit
002fc4  00100000  exit
002fc8  00100000  exit
002fcc  00100000  exit
002fd0  00100000  exit
002fd4  00100000  exit
002fd8  00100000  exit
002fdc  00100000  exit
002fe0  00100000  exit
002fe4  00100000  exit
002fe8  00100000  exit
002fec  00100000  exit
002ff0  00100000  exit
002ff4  00100000  exit
002ff8  00100000  exit
002ffc  00100000  exit
003000  00100000  exit
003004  00100000  exit
003008  00100000  exit
00300c  00100000  exit
003010  00100000  exit
003014  00100000  exit
003018  00100000  exit
00301c  00100000  exit
003020  00100000  exit
003024  00100000  exit
003028  00100000  exit
00302c  00100000  exit
003030  00100000  exit
003034  00100000  exit
003038  00100000  exit
00303c  00100000  exit
003040  00100000  exit
003044  00100000  exit
003048  00100000  exit
00304c  00100000  exit
003050  00100000  exit
003054  00100000  exit
003058  00100000  exit
00305c  00100000  exit
003060  00100000  exit
003064  00100000  exit
003068  00100000  exit
00306c  00100000  exit
003070  00100000  exit
003074  00100000  exit
003078  00100000  exit
00307c  00100000  exit
003080  00100000  exit
003084  00100000  exit
003088  00100000  exit
00308c  00100000  exit
003090  00100000  exit
003094  00100000  exit
003098  00100000  exit
00309c  00100000  exit
0030a0  00100000  exit
0030a4  00100000  exit
0030a8  00100000  exit
0030ac  00100000  exit
0030b0  00100000  exit
0030b4  00100000  exit
0030b8  00100000  exit
0030bc  00100000  exit
0030c0  00100000  exit
0030c4  00100000  exit
0030c8  00100000  exit
0030cc  00100000  exit
0030d0  00100000  exit
0030d4  00100000  exit
0030d8  00100000  exit
0030dc  00100000  exit
0030e0  00100000  exit
0030e4  00100000  exit
0030e8  00100000  exit
0030ec  00100000  exit
0030f0  00100000  exit
0030f4  00100000  exit
0030f8  00100000  exit
0030fc  00100000  exit
003100  00100000  exit
003104  00100000  exit
003108  00100000  exit
00310c  00100000  exit
003110  00100000  exit
003114  00100000  exit
003118  00100000  exit
00311c  00100000  exit
003120  00100000  exit
003124  00100000  exit
003128  00100000  exit
00312c  00100000  exit
003130  00100000  exit
003134  00100000  exit
003138  00100000  exit
00313c  00100000  exit
