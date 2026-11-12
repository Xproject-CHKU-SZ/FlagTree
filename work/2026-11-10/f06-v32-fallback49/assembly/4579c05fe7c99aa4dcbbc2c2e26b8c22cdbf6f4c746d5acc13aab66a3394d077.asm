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
00005c  9f496000  addli r19, zero, 52
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
0000b4  9f8eeef7  addli sp, sp, -1040
0000b8  9f100000  addli r1, zero, 1
0000bc  80390002  core_id r19
0000c0  1f8fae07  addli r30, sp, 976
0000c4  7dc00000  xsignal_mode_cfg r1
0000c8  b7900900  beq r19, zero, 36
0000cc  2bf1ffff  lui r2, 1048575
0000d0  7d900000  xwait r1, 0
0000d4  7d900000  xwait r1, 0
0000d8  7d100000  xwait zero, 0
0000dc  9b10f1ff  ori r1, r2, 4095
0000e0  80a10004  csr_set csr3, r1
0000e4  00d00100  sync_group
0000e8  5b790000  j 968
0000ec  1f220000  addli r4, zero, 2
0000f0  fdd00000  uni_sram_cfg r1, r1
0000f4  9f420000  addli r5, zero, 4
0000f8  6b510f02  load.d r[3:4], 32(r30)
0000fc  1f030020  addli r6, zero, 4096
000100  1d000200  lock zero, r4
000104  8d000020  ew_cfg r1, zero, zero, 16
000108  1d100200  unlock r4
00010c  1d800200  lock zero, r5
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15800104  dma_cfg zero, r3, zero, 2
000118  15006106  dma_cfg zero, r2, r6, 3
00011c  1f014000  addli r2, zero, 32
000120  9f010008  addli r3, zero, 1024
000124  15001008  dma_cfg zero, zero, r1, 4
000128  35000000  dma_run zero
00012c  1d900200  unlock r5
000130  7d800000  xsignal r1, 0
000134  7d900000  xwait r1, 0
000138  1d000000  lock zero, zero
00013c  01020000  ds_cfg r4, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  0101001a  ds_cfg r2, zero, 13
00014c  1f510000  addli r2, zero, 5
000150  8101001c  ds_cfg r3, zero, 14
000154  21133008  shuffle_batch r6, zero, r3, 4
000158  9f310000  addli r3, zero, 3
00015c  1d100000  unlock zero
000160  7d800000  xsignal r1, 0
000164  7d900000  xwait r1, 0
000168  1d000200  lock zero, r4
00016c  ab100100  lui r1, 17
000170  0d200300  ewtable_cfg r6, 0
000174  0da00002  ewtable_cfg r1, 1
000178  abf0ffff  lui r1, 1048575
00017c  1d100200  unlock r4
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  9b90f0ff  ori r1, r1, 4095
00018c  80a10004  csr_set csr3, r1
000190  9f102000  addli r1, zero, 17
000194  00d00100  sync_group
000198  7d800000  xsignal r1, 0
00019c  7d800000  xsignal r1, 0
0001a0  7d800000  xsignal r1, 0
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
0001dc  7d000100  xsignal r2, 0
0001e0  7d000100  xsignal r2, 0
0001e4  7d000100  xsignal r2, 0
0001e8  7d000100  xsignal r2, 0
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
000264  9f101000  addli r1, zero, 9
000268  1f710000  addli r2, zero, 7
00026c  7d800100  xsignal r3, 0
000270  7d800100  xsignal r3, 0
000274  7d800100  xsignal r3, 0
000278  7d800100  xsignal r3, 0
00027c  7d800100  xsignal r3, 0
000280  7d800100  xsignal r3, 0
000284  7d800100  xsignal r3, 0
000288  7d800100  xsignal r3, 0
00028c  7d800100  xsignal r3, 0
000290  7d800100  xsignal r3, 0
000294  7d800100  xsignal r3, 0
000298  7d800100  xsignal r3, 0
00029c  7d800100  xsignal r3, 0
0002a0  7d800100  xsignal r3, 0
0002a4  7d800100  xsignal r3, 0
0002a8  7d800100  xsignal r3, 0
0002ac  7d800100  xsignal r3, 0
0002b0  7d800100  xsignal r3, 0
0002b4  7d800100  xsignal r3, 0
0002b8  7d800100  xsignal r3, 0
0002bc  7d800100  xsignal r3, 0
0002c0  7d800100  xsignal r3, 0
0002c4  7d800100  xsignal r3, 0
0002c8  7d800100  xsignal r3, 0
0002cc  7d800100  xsignal r3, 0
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
0003c8  7d800000  xsignal r1, 0
0003cc  7d800000  xsignal r1, 0
0003d0  7d800000  xsignal r1, 0
0003d4  7d800000  xsignal r1, 0
0003d8  7d800000  xsignal r1, 0
0003dc  7d800000  xsignal r1, 0
0003e0  7d800000  xsignal r1, 0
0003e4  7d800000  xsignal r1, 0
0003e8  7d800000  xsignal r1, 0
0003ec  7d800000  xsignal r1, 0
0003f0  7d800000  xsignal r1, 0
0003f4  7d800000  xsignal r1, 0
0003f8  7d800000  xsignal r1, 0
0003fc  7d800000  xsignal r1, 0
000400  7d800000  xsignal r1, 0
000404  7d800000  xsignal r1, 0
000408  7d800000  xsignal r1, 0
00040c  7d800000  xsignal r1, 0
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
00045c  7d000100  xsignal r2, 0
000460  7d000100  xsignal r2, 0
000464  7d000100  xsignal r2, 0
000468  7d000100  xsignal r2, 0
00046c  7d000100  xsignal r2, 0
000470  9f602000  addli r1, zero, 22
000474  1f412000  addli r2, zero, 20
000478  7d800000  xsignal r1, 0
00047c  7d800000  xsignal r1, 0
000480  7d800000  xsignal r1, 0
000484  7d000100  xsignal r2, 0
000488  7d000100  xsignal r2, 0
00048c  7d000100  xsignal r2, 0
000490  9f003000  addli r1, zero, 24
000494  1f113000  addli r2, zero, 25
000498  7d800000  xsignal r1, 0
00049c  7d800000  xsignal r1, 0
0004a0  7d800000  xsignal r1, 0
0004a4  7d000100  xsignal r2, 0
0004a8  7d000100  xsignal r2, 0
0004ac  7d000100  xsignal r2, 0
0004b0  e3005f00  loadli.w r1,  40(r30)
0004b4  63415f00  loadli.w r2,  44(r30)
0004b8  00d20002  load_param_i r4, 1
0004bc  e3016f00  loadli.w r3,  48(r30)
0004c0  00530002  load_param_i r6, 0
0004c4  abf2ffff  lui r5, 1048575
0004c8  670f0ffe  storeli.w zero, -16(r30)
0004cc  670e0ffe  storeli.w zero, -32(r30)
0004d0  670d0ffe  storeli.w zero, -48(r30)
0004d4  670c0ffe  storeli.w zero, -64(r30)
0004d8  e7450ffe  storeli.w zero, -164(r30)
0004dc  e7010ffc  storeli.w zero, -488(r30)
0004e0  670b0ffa  storeli.w zero, -592(r30)
0004e4  e74e0ff8  storeli.w zero, -788(r30)
0004e8  8b101120  mul.s r1, r2, r1
0004ec  1f010200  addli r2, r4, 0
0004f0  0b913050  fmac.s r2, r1, r3
0004f4  8b913020  mul.s r3, r1, r3
0004f8  1f71f1ff  addli r2, r2, -1
0004fc  0b114130  div.s r2, r2, r4
000500  1b92f2ff  ori r4, r5, 4095
000504  674f4ffe  storeli.w r4, -12(r30)
000508  e70f4ffe  storeli.w r4, -8(r30)
00050c  e74f4ffe  storeli.w r4, -4(r30)
000510  674e4ffe  storeli.w r4, -28(r30)
000514  e70e4ffe  storeli.w r4, -24(r30)
000518  e74e4ffe  storeli.w r4, -20(r30)
00051c  674d4ffe  storeli.w r4, -44(r30)
000520  e70d4ffe  storeli.w r4, -40(r30)
000524  e74d4ffe  storeli.w r4, -36(r30)
000528  674c4ffe  storeli.w r4, -60(r30)
00052c  e70c4ffe  storeli.w r4, -56(r30)
000530  e74c4ffe  storeli.w r4, -52(r30)
000534  67064ffe  storeli.w r4, -160(r30)
000538  67464ffe  storeli.w r4, -156(r30)
00053c  e7064ffe  storeli.w r4, -152(r30)
000540  e7464ffe  storeli.w r4, -148(r30)
000544  67074ffe  storeli.w r4, -144(r30)
000548  67474ffe  storeli.w r4, -140(r30)
00054c  e7074ffe  storeli.w r4, -136(r30)
000550  e7474ffe  storeli.w r4, -132(r30)
000554  67084ffe  storeli.w r4, -128(r30)
000558  67484ffe  storeli.w r4, -124(r30)
00055c  e7084ffe  storeli.w r4, -120(r30)
000560  e7484ffe  storeli.w r4, -116(r30)
000564  67094ffe  storeli.w r4, -112(r30)
000568  67494ffe  storeli.w r4, -108(r30)
00056c  e7094ffe  storeli.w r4, -104(r30)
000570  e7494ffe  storeli.w r4, -100(r30)
000574  670a4ffe  storeli.w r4, -96(r30)
000578  674a4ffe  storeli.w r4, -92(r30)
00057c  e70a4ffe  storeli.w r4, -88(r30)
000580  e74a4ffe  storeli.w r4, -84(r30)
000584  670b4ffe  storeli.w r4, -80(r30)
000588  674b4ffe  storeli.w r4, -76(r30)
00058c  e70b4ffe  storeli.w r4, -72(r30)
000590  e74b4ffe  storeli.w r4, -68(r30)
000594  e7414ffc  storeli.w r4, -484(r30)
000598  67024ffc  storeli.w r4, -480(r30)
00059c  67424ffc  storeli.w r4, -476(r30)
0005a0  e7024ffc  storeli.w r4, -472(r30)
0005a4  e7424ffc  storeli.w r4, -468(r30)
0005a8  67034ffc  storeli.w r4, -464(r30)
0005ac  67434ffc  storeli.w r4, -460(r30)
0005b0  e7034ffc  storeli.w r4, -456(r30)
0005b4  e7434ffc  storeli.w r4, -452(r30)
0005b8  67044ffc  storeli.w r4, -448(r30)
0005bc  67444ffc  storeli.w r4, -444(r30)
0005c0  e7044ffc  storeli.w r4, -440(r30)
0005c4  e7444ffc  storeli.w r4, -436(r30)
0005c8  67054ffc  storeli.w r4, -432(r30)
0005cc  67454ffc  storeli.w r4, -428(r30)
0005d0  e7054ffc  storeli.w r4, -424(r30)
0005d4  e7454ffc  storeli.w r4, -420(r30)
0005d8  67064ffc  storeli.w r4, -416(r30)
0005dc  67464ffc  storeli.w r4, -412(r30)
0005e0  e7064ffc  storeli.w r4, -408(r30)
0005e4  e7464ffc  storeli.w r4, -404(r30)
0005e8  67074ffc  storeli.w r4, -400(r30)
0005ec  67474ffc  storeli.w r4, -396(r30)
0005f0  e7074ffc  storeli.w r4, -392(r30)
0005f4  e7474ffc  storeli.w r4, -388(r30)
0005f8  67084ffc  storeli.w r4, -384(r30)
0005fc  67484ffc  storeli.w r4, -380(r30)
000600  e7084ffc  storeli.w r4, -376(r30)
000604  e7484ffc  storeli.w r4, -372(r30)
000608  67094ffc  storeli.w r4, -368(r30)
00060c  67494ffc  storeli.w r4, -364(r30)
000610  e7094ffc  storeli.w r4, -360(r30)
000614  e7494ffc  storeli.w r4, -356(r30)
000618  670a4ffc  storeli.w r4, -352(r30)
00061c  674a4ffc  storeli.w r4, -348(r30)
000620  e70a4ffc  storeli.w r4, -344(r30)
000624  e74a4ffc  storeli.w r4, -340(r30)
000628  670b4ffc  storeli.w r4, -336(r30)
00062c  674b4ffc  storeli.w r4, -332(r30)
000630  e70b4ffc  storeli.w r4, -328(r30)
000634  e74b4ffc  storeli.w r4, -324(r30)
000638  670c4ffc  storeli.w r4, -320(r30)
00063c  674c4ffc  storeli.w r4, -316(r30)
000640  e70c4ffc  storeli.w r4, -312(r30)
000644  e74c4ffc  storeli.w r4, -308(r30)
000648  670d4ffc  storeli.w r4, -304(r30)
00064c  674d4ffc  storeli.w r4, -300(r30)
000650  e70d4ffc  storeli.w r4, -296(r30)
000654  e74d4ffc  storeli.w r4, -292(r30)
000658  670e4ffc  storeli.w r4, -288(r30)
00065c  674e4ffc  storeli.w r4, -284(r30)
000660  e70e4ffc  storeli.w r4, -280(r30)
000664  e74e4ffc  storeli.w r4, -276(r30)
000668  670f4ffc  storeli.w r4, -272(r30)
00066c  674f4ffc  storeli.w r4, -268(r30)
000670  e70f4ffc  storeli.w r4, -264(r30)
000674  e74f4ffc  storeli.w r4, -260(r30)
000678  67004ffe  storeli.w r4, -256(r30)
00067c  67404ffe  storeli.w r4, -252(r30)
000680  e7004ffe  storeli.w r4, -248(r30)
000684  e7404ffe  storeli.w r4, -244(r30)
000688  67014ffe  storeli.w r4, -240(r30)
00068c  67414ffe  storeli.w r4, -236(r30)
000690  e7014ffe  storeli.w r4, -232(r30)
000694  e7414ffe  storeli.w r4, -228(r30)
000698  67024ffe  storeli.w r4, -224(r30)
00069c  67424ffe  storeli.w r4, -220(r30)
0006a0  e7024ffe  storeli.w r4, -216(r30)
0006a4  e7424ffe  storeli.w r4, -212(r30)
0006a8  67034ffe  storeli.w r4, -208(r30)
0006ac  67434ffe  storeli.w r4, -204(r30)
0006b0  e7034ffe  storeli.w r4, -200(r30)
0006b4  e7434ffe  storeli.w r4, -196(r30)
0006b8  67044ffe  storeli.w r4, -192(r30)
0006bc  67444ffe  storeli.w r4, -188(r30)
0006c0  e7044ffe  storeli.w r4, -184(r30)
0006c4  e7444ffe  storeli.w r4, -180(r30)
0006c8  67054ffe  storeli.w r4, -176(r30)
0006cc  67454ffe  storeli.w r4, -172(r30)
0006d0  e7054ffe  storeli.w r4, -168(r30)
0006d4  674b4ffa  storeli.w r4, -588(r30)
0006d8  e70b4ffa  storeli.w r4, -584(r30)
0006dc  e74b4ffa  storeli.w r4, -580(r30)
0006e0  670c4ffa  storeli.w r4, -576(r30)
0006e4  674c4ffa  storeli.w r4, -572(r30)
0006e8  e70c4ffa  storeli.w r4, -568(r30)
0006ec  e74c4ffa  storeli.w r4, -564(r30)
0006f0  670d4ffa  storeli.w r4, -560(r30)
0006f4  674d4ffa  storeli.w r4, -556(r30)
0006f8  e70d4ffa  storeli.w r4, -552(r30)
0006fc  e74d4ffa  storeli.w r4, -548(r30)
000700  670e4ffa  storeli.w r4, -544(r30)
000704  674e4ffa  storeli.w r4, -540(r30)
000708  e70e4ffa  storeli.w r4, -536(r30)
00070c  e74e4ffa  storeli.w r4, -532(r30)
000710  670f4ffa  storeli.w r4, -528(r30)
000714  674f4ffa  storeli.w r4, -524(r30)
000718  e70f4ffa  storeli.w r4, -520(r30)
00071c  e74f4ffa  storeli.w r4, -516(r30)
000720  67004ffc  storeli.w r4, -512(r30)
000724  67404ffc  storeli.w r4, -508(r30)
000728  e7004ffc  storeli.w r4, -504(r30)
00072c  e7404ffc  storeli.w r4, -500(r30)
000730  67014ffc  storeli.w r4, -496(r30)
000734  67414ffc  storeli.w r4, -492(r30)
000738  670f4ff8  storeli.w r4, -784(r30)
00073c  674f4ff8  storeli.w r4, -780(r30)
000740  e70f4ff8  storeli.w r4, -776(r30)
000744  e74f4ff8  storeli.w r4, -772(r30)
000748  67004ffa  storeli.w r4, -768(r30)
00074c  67404ffa  storeli.w r4, -764(r30)
000750  e7004ffa  storeli.w r4, -760(r30)
000754  e7404ffa  storeli.w r4, -756(r30)
000758  67014ffa  storeli.w r4, -752(r30)
00075c  67414ffa  storeli.w r4, -748(r30)
000760  e7014ffa  storeli.w r4, -744(r30)
000764  e7414ffa  storeli.w r4, -740(r30)
000768  67024ffa  storeli.w r4, -736(r30)
00076c  67424ffa  storeli.w r4, -732(r30)
000770  e7024ffa  storeli.w r4, -728(r30)
000774  e7424ffa  storeli.w r4, -724(r30)
000778  67034ffa  storeli.w r4, -720(r30)
00077c  67434ffa  storeli.w r4, -716(r30)
000780  e7034ffa  storeli.w r4, -712(r30)
000784  e7434ffa  storeli.w r4, -708(r30)
000788  67044ffa  storeli.w r4, -704(r30)
00078c  67444ffa  storeli.w r4, -700(r30)
000790  e7044ffa  storeli.w r4, -696(r30)
000794  e7444ffa  storeli.w r4, -692(r30)
000798  67054ffa  storeli.w r4, -688(r30)
00079c  67454ffa  storeli.w r4, -684(r30)
0007a0  e7054ffa  storeli.w r4, -680(r30)
0007a4  e7454ffa  storeli.w r4, -676(r30)
0007a8  67064ffa  storeli.w r4, -672(r30)
0007ac  67464ffa  storeli.w r4, -668(r30)
0007b0  e7064ffa  storeli.w r4, -664(r30)
0007b4  e7464ffa  storeli.w r4, -660(r30)
0007b8  67074ffa  storeli.w r4, -656(r30)
0007bc  67474ffa  storeli.w r4, -652(r30)
0007c0  e7074ffa  storeli.w r4, -648(r30)
0007c4  e7474ffa  storeli.w r4, -644(r30)
0007c8  67084ffa  storeli.w r4, -640(r30)
0007cc  67484ffa  storeli.w r4, -636(r30)
0007d0  e7084ffa  storeli.w r4, -632(r30)
0007d4  e7484ffa  storeli.w r4, -628(r30)
0007d8  67094ffa  storeli.w r4, -624(r30)
0007dc  67494ffa  storeli.w r4, -620(r30)
0007e0  e7094ffa  storeli.w r4, -616(r30)
0007e4  e7494ffa  storeli.w r4, -612(r30)
0007e8  670a4ffa  storeli.w r4, -608(r30)
0007ec  674a4ffa  storeli.w r4, -604(r30)
0007f0  e70a4ffa  storeli.w r4, -600(r30)
0007f4  e74a4ffa  storeli.w r4, -596(r30)
0007f8  8b106120  mul.s r1, r2, r6
0007fc  0b116150  fmac.s r2, r2, r6
000800  8b113140  min.s r3, r2, r3
000804  4b94111c  ble.s r3, r1, 14596
000808  33910128  sext_int2long r[3:4], r3
00080c  b3930028  sext_int2long r[8:9], r1
000810  2b820d00  lui r4, 216
000814  9f0d8000  addli r27, zero, 64
000818  9f450000  addli r11, zero, 4
00081c  1f350000  addli r10, zero, 3
000820  ab074000  lui r15, 1024
000824  2b08807f  lui r16, 522240
000828  2b03ffff  lui r6, 1048560
00082c  9f0a3000  addli r21, zero, 24
000830  1f070000  addli r14, zero, 0
000834  73342fc4  store.d r[3:4], -952(r30)
000838  1f71f01f  addli r2, zero, 4095
00083c  ab80ffff  lui r1, 1048568
000840  73301fc4  store.d r[2:3], -960(r30)
000844  2bf17f7f  lui r2, 522239
000848  abf0ff7f  lui r1, 524287
00084c  9b11f1ff  ori r3, r2, 4095
000850  2b411200  lui r2, 292
000854  1b9ef0ff  ori r28, r1, 4095
000858  ab700000  lui r1, 7
00085c  1b110160  ori r2, r2, 1536
000860  9b90f0ff  ori r1, r1, 4095
000864  e7432ff8  storeli.w r2, -964(r30)
000868  1b11d2b4  ori r2, r4, 2893
00086c  2bf27fff  lui r4, 1046527
000870  e7032ff8  storeli.w r2, -968(r30)
000874  2b411500  lui r2, 340
000878  1b110160  ori r2, r2, 1536
00087c  67432ff8  storeli.w r2, -972(r30)
000880  1b11f2ff  ori r2, r4, 4095
000884  67032ff8  storeli.w r2, -976(r30)
000888  db060000  j 52
00088c  1f012000  addli r2, zero, 16
000890  9f0a3000  addli r21, zero, 24
000894  7d000100  xsignal r2, 0
000898  7d800a00  xsignal r21, 0
00089c  eb538fc7  load.d r[8:9], -904(r30)
0008a0  6b528fc4  load.d r[5:6], -952(r30)
0008a4  6347eff8  loadli.w r14,  -908(r30)
0008a8  80390002  core_id r19
0008ac  9f0d8000  addli r27, zero, 64
0008b0  a7930300  addli.d r[8:9], r[8:9], 1
0008b4  13b14304  setlt.sl r2, r[8:9], r[5:6]
0008b8  3741011c  beq r2, zero, 14416
0008bc  3bb0b900  bneq r19, r11, 12
0008c0  1f112000  addli r2, zero, 17
0008c4  7d100100  xwait r2, 0
0008c8  63016f00  loadli.w r2,  48(r30)
0008cc  63425f00  loadli.w r4,  44(r30)
0008d0  733c7fc6  store.d r[8:9], -904(r30)
0008d4  9f021000  addli r5, zero, 8
0008d8  1f561000  addli r12, zero, 13
0008dc  1f4a0000  addli r20, zero, 4
0008e0  0b912330  div.s r2, r7, r2
0008e4  8b134130  div.s r7, r2, r4
0008e8  0b94b331  div.s r8, r7, r27
0008ec  1b313400  slli r2, r8, 3
0008f0  0b922518  sub.s r4, r11, r2
0008f4  e3056ffb  loadli.w r11,  -592(r30)
0008f8  8b145240  min.s r9, r4, r5
0008fc  0b929338  mod.s r4, r7, r9
000900  0b114110  add.s r2, r2, r4
000904  6342dff9  loadli.w r4,  -788(r30)
000908  93022504  setlt.u r5, r10, r2
00090c  b3080128  zext_int2long r[18:19], r2
000910  733c1fc5  store.d r[18:19], -936(r30)
000914  97b8c802  sll.d r[18:19], r[18:19], r12
000918  73301fcf  store.d r[18:19], -800(r30)
00091c  3bb00200  bneq r5, zero, 12
000920  33060028  zext_int2long r[13:14], zero
000924  db010000  j 12
000928  6b560fc4  load.d r[13:14], -960(r30)
00092c  1786c802  and.d r[13:14], r[18:19], r[13:14]
000930  1b346400  slli r8, r8, 6
000934  1b317100  slli r2, r2, 7
000938  7338cfcc  store.d r[13:14], -816(r30)
00093c  9f020000  addli r5, zero, 0
000940  1f3c0000  addli r24, zero, 3
000944  8b938318  sub.s r7, r7, r8
000948  0b14a738  mod.s r8, r14, r10
00094c  67452ff8  storeli.w r2, -940(r30)
000950  1f170700  addli r14, r14, 1
000954  8b939330  div.s r7, r7, r9
000958  6747eff8  storeli.w r14, -908(r30)
00095c  1bb17300  slli r2, r7, 7
000960  b3840328  zext_int2long r[10:11], r7
000964  9b330401  slli r7, r8, 16
000968  e7082ff8  storeli.w r2, -888(r30)
00096c  1f710000  addli r2, zero, 7
000970  17b62402  sll.d r[13:14], r[10:11], r2
000974  1f150000  addli r10, zero, 1
000978  1f010000  addli r2, zero, 0
00097c  7334cfc6  store.d r[13:14], -920(r30)
000980  1734a602  sll.d r[9:10], r[13:14], r10
000984  6b568f00  load.d r[13:14], 8(r30)
000988  0b248610  add.ul r[9:10], r[13:14], r[9:10]
00098c  73348fcc  store.d r[9:10], -824(r30)
000990  5b040000  j 32
000994  1f4a0000  addli r20, zero, 4
000998  1b011500  andi r2, r10, 1
00099c  b71e0102  beq r2, zero, 1956
0009a0  1f050000  addli r10, zero, 0
0009a4  9f920200  addli r5, r5, 1
0009a8  1f110000  addli r2, zero, 1
0009ac  9f050600  addli r11, r12, 0
0009b0  1f046000  addli r8, zero, 48
0009b4  9f143000  addli r9, zero, 25
0009b8  33860d28  zext_int2long r[13:14], r27
0009bc  0b148238  mod.s r8, r4, r8
0009c0  8b949538  mod.s r9, r11, r9
0009c4  733ccfcc  store.d r[13:14], -808(r30)
0009c8  1f060003  addli r12, zero, 384
0009cc  1f120200  addli r4, r4, 1
0009d0  33060628  zext_int2long r[13:14], r12
0009d4  e74e4ff8  storeli.w r4, -788(r30)
0009d8  7330cfca  store.d r[13:14], -864(r30)
0009dc  1f960500  addli r12, r11, 1
0009e0  1b3de400  slli r26, r8, 14
0009e4  1bb7e400  slli r14, r9, 14
0009e8  2b040300  lui r8, 48
0009ec  670bcffa  storeli.w r12, -592(r30)
0009f0  8b168710  add.s r13, r14, r8
0009f4  1f240000  addli r8, zero, 2
0009f8  37fb8900  beq r19, r8, 732
0009fc  330b0128  zext_int2long r[23:24], r2
000a00  1f610000  addli r2, zero, 6
000a04  bbcf2900  bneq r19, r2, 1008
000a08  9f580000  addli r17, zero, 5
000a0c  6b5c8fcd  load.d r[25:26], -808(r30)
000a10  1f190000  addli r18, zero, 1
000a14  17341b03  sll.d r[9:10], r[23:24], r17
000a18  6b5b0fce  load.d r[23:24], -800(r30)
000a1c  17146403  or.d r[9:10], r[9:10], r[23:24]
000a20  6b5b0fcd  load.d r[23:24], -816(r30)
000a24  0b3b6419  sub.sl r[23:24], r[9:10], r[23:24]
000a28  17342403  sll.d r[9:10], r[9:10], r18
000a2c  0f1b8b61  div.sl r[23:24], r[23:24], r[25:26]
000a30  6b5c0fca  load.d r[25:26], -864(r30)
000a34  0b3c8b41  min.sl r[25:26], r[23:24], r[25:26]
000a38  0b3b6c19  sub.sl r[23:24], r[25:26], r[23:24]
000a3c  6b5c0f00  load.d r[25:26], 0(r30)
000a40  1f010b01  addli r2, r22, 128
000a44  1f3b0000  addli r22, zero, 3
000a48  0b248c10  add.ul r[9:10], r[25:26], r[9:10]
000a4c  7d100b00  xwait r22, 0
000a50  bf84ba00  blt.s r21, r11, 288
000a54  1d800800  lock zero, r17
000a58  9f250000  addli r11, zero, 2
000a5c  15000014  dma_cfg zero, zero, zero, 10
000a60  15002015  dma_cfg zero, zero, r18, 10
000a64  1500b014  dma_cfg zero, zero, r11, 10
000a68  9f650000  addli r11, zero, 6
000a6c  15006015  dma_cfg zero, zero, r22, 10
000a70  15004015  dma_cfg zero, zero, r20, 10
000a74  15001015  dma_cfg zero, zero, r17, 10
000a78  1500b014  dma_cfg zero, zero, r11, 10
000a7c  9f750000  addli r11, zero, 7
000a80  1500b014  dma_cfg zero, zero, r11, 10
000a84  9f051000  addli r11, zero, 8
000a88  1500b014  dma_cfg zero, zero, r11, 10
000a8c  9f151000  addli r11, zero, 9
000a90  1500b014  dma_cfg zero, zero, r11, 10
000a94  9f251000  addli r11, zero, 10
000a98  1500b014  dma_cfg zero, zero, r11, 10
000a9c  9f351000  addli r11, zero, 11
000aa0  1500b014  dma_cfg zero, zero, r11, 10
000aa4  9f451000  addli r11, zero, 12
000aa8  1500b014  dma_cfg zero, zero, r11, 10
000aac  9f551000  addli r11, zero, 13
000ab0  1500b014  dma_cfg zero, zero, r11, 10
000ab4  9f651000  addli r11, zero, 14
000ab8  1500b014  dma_cfg zero, zero, r11, 10
000abc  9f751000  addli r11, zero, 15
000ac0  1500b014  dma_cfg zero, zero, r11, 10
000ac4  9f052000  addli r11, zero, 16
000ac8  1500b014  dma_cfg zero, zero, r11, 10
000acc  9f152000  addli r11, zero, 17
000ad0  1500b014  dma_cfg zero, zero, r11, 10
000ad4  9f252000  addli r11, zero, 18
000ad8  1500b014  dma_cfg zero, zero, r11, 10
000adc  9f352000  addli r11, zero, 19
000ae0  1500b014  dma_cfg zero, zero, r11, 10
000ae4  9f452000  addli r11, zero, 20
000ae8  1500b014  dma_cfg zero, zero, r11, 10
000aec  9f552000  addli r11, zero, 21
000af0  1500b014  dma_cfg zero, zero, r11, 10
000af4  9f652000  addli r11, zero, 22
000af8  1500b014  dma_cfg zero, zero, r11, 10
000afc  9f752000  addli r11, zero, 23
000b00  1500b014  dma_cfg zero, zero, r11, 10
000b04  9f153000  addli r11, zero, 25
000b08  15005015  dma_cfg zero, zero, r21, 10
000b0c  1500b014  dma_cfg zero, zero, r11, 10
000b10  9f253000  addli r11, zero, 26
000b14  1500b014  dma_cfg zero, zero, r11, 10
000b18  9f353000  addli r11, zero, 27
000b1c  1500b014  dma_cfg zero, zero, r11, 10
000b20  9f453000  addli r11, zero, 28
000b24  1500b014  dma_cfg zero, zero, r11, 10
000b28  9f553000  addli r11, zero, 29
000b2c  1500b014  dma_cfg zero, zero, r11, 10
000b30  9f653000  addli r11, zero, 30
000b34  1500b014  dma_cfg zero, zero, r11, 10
000b38  9f753000  addli r11, zero, 31
000b3c  1500b014  dma_cfg zero, zero, r11, 10
000b40  9f050001  addli r11, zero, 128
000b44  15090900  dma_cfg r18, r18, zero, 0
000b48  15090002  dma_cfg r18, zero, zero, 1
000b4c  15000004  dma_cfg zero, zero, zero, 2
000b50  9506b007  dma_cfg r13, zero, r27, 3
000b54  95052009  dma_cfg r11, zero, r18, 4
000b58  9505b00a  dma_cfg r11, zero, r11, 5
000b5c  15000010  dma_cfg zero, zero, zero, 8
000b60  35000000  dma_run zero
000b64  1500200b  dma_cfg zero, zero, r18, 5
000b68  15000010  dma_cfg zero, zero, zero, 8
000b6c  1d900800  unlock r17
000b70  ab050300  lui r11, 48
000b74  1f3c0000  addli r24, zero, 3
000b78  9b950504  ori r11, r11, 64
000b7c  8b15b710  add.s r11, r14, r11
000b80  1f470000  addli r14, zero, 4
000b84  1d000700  lock zero, r14
000b88  15090900  dma_cfg r18, r18, zero, 0
000b8c  15800404  dma_cfg zero, r9, zero, 2
000b90  9505b407  dma_cfg r11, r8, r27, 3
000b94  9f050001  addli r11, zero, 128
000b98  9f240000  addli r9, zero, 2
000b9c  1f640000  addli r8, zero, 6
000ba0  95852d09  dma_cfg r11, r27, r18, 4
000ba4  9585250a  dma_cfg r11, r11, r2, 5
000ba8  15000010  dma_cfg zero, zero, zero, 8
000bac  35000000  dma_run zero
000bb0  1500200b  dma_cfg zero, zero, r18, 5
000bb4  15000010  dma_cfg zero, zero, zero, 8
000bb8  1d100700  unlock r14
000bbc  1d800800  lock zero, r17
000bc0  15000014  dma_cfg zero, zero, zero, 10
000bc4  15002015  dma_cfg zero, zero, r18, 10
000bc8  15009014  dma_cfg zero, zero, r9, 10
000bcc  15006015  dma_cfg zero, zero, r22, 10
000bd0  1500e014  dma_cfg zero, zero, r14, 10
000bd4  15001015  dma_cfg zero, zero, r17, 10
000bd8  15008014  dma_cfg zero, zero, r8, 10
000bdc  1f740000  addli r8, zero, 7
000be0  15008014  dma_cfg zero, zero, r8, 10
000be4  1f041000  addli r8, zero, 8
000be8  15008014  dma_cfg zero, zero, r8, 10
000bec  1f141000  addli r8, zero, 9
000bf0  15008014  dma_cfg zero, zero, r8, 10
000bf4  1f241000  addli r8, zero, 10
000bf8  15008014  dma_cfg zero, zero, r8, 10
000bfc  1f341000  addli r8, zero, 11
000c00  15008014  dma_cfg zero, zero, r8, 10
000c04  1f441000  addli r8, zero, 12
000c08  15008014  dma_cfg zero, zero, r8, 10
000c0c  1f541000  addli r8, zero, 13
000c10  15008014  dma_cfg zero, zero, r8, 10
000c14  1f641000  addli r8, zero, 14
000c18  15008014  dma_cfg zero, zero, r8, 10
000c1c  1f741000  addli r8, zero, 15
000c20  15008014  dma_cfg zero, zero, r8, 10
000c24  1f042000  addli r8, zero, 16
000c28  15008014  dma_cfg zero, zero, r8, 10
000c2c  1f142000  addli r8, zero, 17
000c30  15008014  dma_cfg zero, zero, r8, 10
000c34  1f242000  addli r8, zero, 18
000c38  15008014  dma_cfg zero, zero, r8, 10
000c3c  1f342000  addli r8, zero, 19
000c40  15008014  dma_cfg zero, zero, r8, 10
000c44  1f442000  addli r8, zero, 20
000c48  15008014  dma_cfg zero, zero, r8, 10
000c4c  1f542000  addli r8, zero, 21
000c50  15008014  dma_cfg zero, zero, r8, 10
000c54  1f642000  addli r8, zero, 22
000c58  15008014  dma_cfg zero, zero, r8, 10
000c5c  1f742000  addli r8, zero, 23
000c60  15008014  dma_cfg zero, zero, r8, 10
000c64  1f143000  addli r8, zero, 25
000c68  15005015  dma_cfg zero, zero, r21, 10
000c6c  15008014  dma_cfg zero, zero, r8, 10
000c70  1f243000  addli r8, zero, 26
000c74  15008014  dma_cfg zero, zero, r8, 10
000c78  1f343000  addli r8, zero, 27
000c7c  15008014  dma_cfg zero, zero, r8, 10
000c80  1f443000  addli r8, zero, 28
000c84  15008014  dma_cfg zero, zero, r8, 10
000c88  1f543000  addli r8, zero, 29
000c8c  15008014  dma_cfg zero, zero, r8, 10
000c90  1f643000  addli r8, zero, 30
000c94  15008014  dma_cfg zero, zero, r8, 10
000c98  1f743000  addli r8, zero, 31
000c9c  15008014  dma_cfg zero, zero, r8, 10
000ca0  15090900  dma_cfg r18, r18, zero, 0
000ca4  15090002  dma_cfg r18, zero, zero, 1
000ca8  15000004  dma_cfg zero, zero, zero, 2
000cac  9506b007  dma_cfg r13, zero, r27, 3
000cb0  95052009  dma_cfg r11, zero, r18, 4
000cb4  9505200a  dma_cfg r11, zero, r2, 5
000cb8  15000010  dma_cfg zero, zero, zero, 8
000cbc  35000000  dma_run zero
000cc0  1500200b  dma_cfg zero, zero, r18, 5
000cc4  15000010  dma_cfg zero, zero, zero, 8
000cc8  1d900800  unlock r17
000ccc  7d800400  xsignal r9, 0
000cd0  5b080000  j 64
000cd4  1f240000  addli r8, zero, 2
000cd8  1f510000  addli r2, zero, 5
000cdc  7d100400  xwait r8, 0
000ce0  7d100100  xwait r2, 0
000ce4  1d000000  lock zero, zero
000ce8  1f014000  addli r2, zero, 32
000cec  01040000  ds_cfg r8, zero, 0
000cf0  1f040001  addli r8, zero, 128
000cf4  01010002  ds_cfg r2, zero, 1
000cf8  0101001c  ds_cfg r2, zero, 14
000cfc  0104001a  ds_cfg r8, zero, 13
000d00  219d2602  shuffle_batch r26, r13, r2, 1
000d04  1d100000  unlock zero
000d08  7d000c00  xsignal r24, 0
000d0c  7d000a00  xsignal r20, 0
000d10  63013ffc  loadli.w r2,  -488(r30)
000d14  1f04a000  addli r8, zero, 80
000d18  e344bffe  loadli.w r9,  -164(r30)
000d1c  0b148138  mod.s r8, r2, r8
000d20  9f150100  addli r11, r2, 1
000d24  9f940400  addli r9, r9, 1
000d28  e701bffc  storeli.w r11, -488(r30)
000d2c  e7459ffe  storeli.w r9, -164(r30)
000d30  1b31e400  slli r2, r8, 14
000d34  1f440000  addli r8, zero, 4
000d38  3bf189fe  bneq r19, r8, -932
000d3c  7d100400  xwait r8, 0
000d40  1f041000  addli r8, zero, 8
000d44  9f140000  addli r9, zero, 1
000d48  9f050000  addli r11, zero, 0
000d4c  1f470000  addli r14, zero, 4
000d50  9f280000  addli r17, zero, 2
000d54  1f094000  addli r18, zero, 32
000d58  1f0a0001  addli r20, zero, 128
000d5c  7d100400  xwait r8, 0
000d60  1f140000  addli r8, zero, 1
000d64  b7f00200  beq r5, zero, 60
000d68  9bb6d500  slli r13, r11, 13
000d6c  9bb58500  slli r11, r11, 8
000d70  1d000400  lock zero, r8
000d74  890d4901  mm_cfg r27, r18, r20, 0
000d78  97962600  or r13, r13, r2
000d7c  97957500  or r11, r11, r7
000d80  89088704  mm_cfg r17, r14, r8, 2
000d84  a915dd10  mm_acc r11, r26, r13, 8
000d88  9b861400  andi r13, r9, 1
000d8c  9f150000  addli r11, zero, 1
000d90  9f040000  addli r9, zero, 0
000d94  1d100400  unlock r8
000d98  3bcf06fe  bneq r13, zero, -48
000d9c  5b070000  j 56
000da0  9bb6d500  slli r13, r11, 13
000da4  9bb58500  slli r11, r11, 8
000da8  1d000400  lock zero, r8
000dac  890d4901  mm_cfg r27, r18, r20, 0
000db0  97962600  or r13, r13, r2
000db4  97957500  or r11, r11, r7
000db8  89088704  mm_cfg r17, r14, r8, 2
000dbc  a905dd10  mm r11, r26, r13, 8
000dc0  9b861400  andi r13, r9, 1
000dc4  9f150000  addli r11, zero, 1
000dc8  9f040000  addli r9, zero, 0
000dcc  1d100400  unlock r8
000dd0  3bcf06fe  bneq r13, zero, -48
000dd4  1f540000  addli r8, zero, 5
000dd8  1f4a0000  addli r20, zero, 4
000ddc  1b011500  andi r2, r10, 1
000de0  7d000400  xsignal r8, 0
000de4  1f141000  addli r8, zero, 9
000de8  7d000400  xsignal r8, 0
000dec  bb5e01fc  bneq r2, zero, -1100
000df0  5b690000  j 840
000df4  e344bffe  loadli.w r9,  -164(r30)
000df8  63013ffc  loadli.w r2,  -488(r30)
000dfc  1f04a000  addli r8, zero, 80
000e00  ab460900  lui r13, 148
000e04  0b148138  mod.s r8, r2, r8
000e08  8b955439  mod.s r11, r9, r21
000e0c  1f110100  addli r2, r2, 1
000e10  e7012ffc  storeli.w r2, -488(r30)
000e14  1b31e400  slli r2, r8, 14
000e18  1bb4e500  slli r8, r11, 14
000e1c  9f950400  addli r11, r9, 1
000e20  e745bffe  storeli.w r11, -164(r30)
000e24  8b16d410  add.s r13, r8, r13
000e28  9f750000  addli r11, zero, 7
000e2c  b7eab900  beq r19, r11, 696
000e30  9f150000  addli r11, zero, 1
000e34  3b8cb9fe  bneq r19, r11, -256
000e38  1f0a2000  addli r20, zero, 16
000e3c  eb588fcc  load.d r[18:19], -824(r30)
000e40  1f770000  addli r14, zero, 7
000e44  9f450000  addli r11, zero, 4
000e48  9f0c4000  addli r25, zero, 32
000e4c  1f0d0001  addli r26, zero, 128
000e50  9f7a2000  addli r21, zero, 23
000e54  173b4b03  sll.d r[23:24], r[23:24], r20
000e58  7d100700  xwait r14, 0
000e5c  0bab6811  add.ul r[23:24], r[18:19], r[23:24]
000e60  9f180000  addli r17, zero, 1
000e64  1f290000  addli r18, zero, 2
000e68  3fe49a00  blt.s r21, r9, 280
000e6c  9f540000  addli r9, zero, 5
000e70  1f610000  addli r2, zero, 6
000e74  1d800400  lock zero, r9
000e78  15000014  dma_cfg zero, zero, zero, 10
000e7c  15001015  dma_cfg zero, zero, r17, 10
000e80  15002015  dma_cfg zero, zero, r18, 10
000e84  15008015  dma_cfg zero, zero, r24, 10
000e88  1500b014  dma_cfg zero, zero, r11, 10
000e8c  15009014  dma_cfg zero, zero, r9, 10
000e90  15002014  dma_cfg zero, zero, r2, 10
000e94  1f011000  addli r2, zero, 8
000e98  1500e014  dma_cfg zero, zero, r14, 10
000e9c  15002014  dma_cfg zero, zero, r2, 10
000ea0  1f111000  addli r2, zero, 9
000ea4  15002014  dma_cfg zero, zero, r2, 10
000ea8  1f211000  addli r2, zero, 10
000eac  15002014  dma_cfg zero, zero, r2, 10
000eb0  1f311000  addli r2, zero, 11
000eb4  15002014  dma_cfg zero, zero, r2, 10
000eb8  1f411000  addli r2, zero, 12
000ebc  15002014  dma_cfg zero, zero, r2, 10
000ec0  1f511000  addli r2, zero, 13
000ec4  15002014  dma_cfg zero, zero, r2, 10
000ec8  1f611000  addli r2, zero, 14
000ecc  15002014  dma_cfg zero, zero, r2, 10
000ed0  1f711000  addli r2, zero, 15
000ed4  15002014  dma_cfg zero, zero, r2, 10
000ed8  1f112000  addli r2, zero, 17
000edc  15004015  dma_cfg zero, zero, r20, 10
000ee0  15002014  dma_cfg zero, zero, r2, 10
000ee4  1f212000  addli r2, zero, 18
000ee8  15002014  dma_cfg zero, zero, r2, 10
000eec  1f312000  addli r2, zero, 19
000ef0  15002014  dma_cfg zero, zero, r2, 10
000ef4  1f412000  addli r2, zero, 20
000ef8  15002014  dma_cfg zero, zero, r2, 10
000efc  1f512000  addli r2, zero, 21
000f00  15002014  dma_cfg zero, zero, r2, 10
000f04  1f612000  addli r2, zero, 22
000f08  15002014  dma_cfg zero, zero, r2, 10
000f0c  1f013000  addli r2, zero, 24
000f10  15005015  dma_cfg zero, zero, r21, 10
000f14  15002014  dma_cfg zero, zero, r2, 10
000f18  1f113000  addli r2, zero, 25
000f1c  15002014  dma_cfg zero, zero, r2, 10
000f20  1f213000  addli r2, zero, 26
000f24  15002014  dma_cfg zero, zero, r2, 10
000f28  1f313000  addli r2, zero, 27
000f2c  15002014  dma_cfg zero, zero, r2, 10
000f30  1f413000  addli r2, zero, 28
000f34  15002014  dma_cfg zero, zero, r2, 10
000f38  1f513000  addli r2, zero, 29
000f3c  15002014  dma_cfg zero, zero, r2, 10
000f40  1f613000  addli r2, zero, 30
000f44  15002014  dma_cfg zero, zero, r2, 10
000f48  1f713000  addli r2, zero, 31
000f4c  15002014  dma_cfg zero, zero, r2, 10
000f50  1f010004  addli r2, zero, 512
000f54  95880800  dma_cfg r17, r17, zero, 0
000f58  95080002  dma_cfg r17, zero, zero, 1
000f5c  15000004  dma_cfg zero, zero, zero, 2
000f60  9506b007  dma_cfg r13, zero, r27, 3
000f64  150db008  dma_cfg r26, zero, r11, 4
000f68  1501900b  dma_cfg r2, zero, r25, 5
000f6c  15000010  dma_cfg zero, zero, zero, 8
000f70  35000000  dma_run zero
000f74  1500100b  dma_cfg zero, zero, r17, 5
000f78  15000010  dma_cfg zero, zero, zero, 8
000f7c  1d900400  unlock r9
000f80  2b410900  lui r2, 148
000f84  1d800500  lock zero, r11
000f88  9f640000  addli r9, zero, 6
000f8c  95880800  dma_cfg r17, r17, zero, 0
000f90  1b110104  ori r2, r2, 64
000f94  15800b04  dma_cfg zero, r23, zero, 2
000f98  0b112410  add.s r2, r8, r2
000f9c  1f540000  addli r8, zero, 5
000fa0  1501bb07  dma_cfg r2, r22, r27, 3
000fa4  1f0b0004  addli r22, zero, 512
000fa8  1f010010  addli r2, zero, 2048
000fac  158dbd08  dma_cfg r26, r27, r11, 4
000fb0  150b910b  dma_cfg r22, r2, r25, 5
000fb4  1f011000  addli r2, zero, 8
000fb8  15000010  dma_cfg zero, zero, zero, 8
000fbc  35000000  dma_run zero
000fc0  1500100b  dma_cfg zero, zero, r17, 5
000fc4  15000010  dma_cfg zero, zero, zero, 8
000fc8  1d900500  unlock r11
000fcc  1d000400  lock zero, r8
000fd0  15000014  dma_cfg zero, zero, zero, 10
000fd4  15001015  dma_cfg zero, zero, r17, 10
000fd8  15002015  dma_cfg zero, zero, r18, 10
000fdc  15008015  dma_cfg zero, zero, r24, 10
000fe0  1500b014  dma_cfg zero, zero, r11, 10
000fe4  15008014  dma_cfg zero, zero, r8, 10
000fe8  15009014  dma_cfg zero, zero, r9, 10
000fec  1500e014  dma_cfg zero, zero, r14, 10
000ff0  15002014  dma_cfg zero, zero, r2, 10
000ff4  1f111000  addli r2, zero, 9
000ff8  15002014  dma_cfg zero, zero, r2, 10
000ffc  1f211000  addli r2, zero, 10
001000  15002014  dma_cfg zero, zero, r2, 10
001004  1f311000  addli r2, zero, 11
001008  15002014  dma_cfg zero, zero, r2, 10
00100c  1f411000  addli r2, zero, 12
001010  15002014  dma_cfg zero, zero, r2, 10
001014  1f511000  addli r2, zero, 13
001018  15002014  dma_cfg zero, zero, r2, 10
00101c  1f611000  addli r2, zero, 14
001020  15002014  dma_cfg zero, zero, r2, 10
001024  1f711000  addli r2, zero, 15
001028  15002014  dma_cfg zero, zero, r2, 10
00102c  1f112000  addli r2, zero, 17
001030  15004015  dma_cfg zero, zero, r20, 10
001034  1f4a0000  addli r20, zero, 4
001038  15002014  dma_cfg zero, zero, r2, 10
00103c  1f212000  addli r2, zero, 18
001040  15002014  dma_cfg zero, zero, r2, 10
001044  1f312000  addli r2, zero, 19
001048  15002014  dma_cfg zero, zero, r2, 10
00104c  1f412000  addli r2, zero, 20
001050  15002014  dma_cfg zero, zero, r2, 10
001054  1f512000  addli r2, zero, 21
001058  15002014  dma_cfg zero, zero, r2, 10
00105c  1f612000  addli r2, zero, 22
001060  15002014  dma_cfg zero, zero, r2, 10
001064  1f113000  addli r2, zero, 25
001068  15005015  dma_cfg zero, zero, r21, 10
00106c  9f0a3000  addli r21, zero, 24
001070  15005015  dma_cfg zero, zero, r21, 10
001074  15002014  dma_cfg zero, zero, r2, 10
001078  1f213000  addli r2, zero, 26
00107c  15002014  dma_cfg zero, zero, r2, 10
001080  1f313000  addli r2, zero, 27
001084  15002014  dma_cfg zero, zero, r2, 10
001088  1f413000  addli r2, zero, 28
00108c  15002014  dma_cfg zero, zero, r2, 10
001090  1f513000  addli r2, zero, 29
001094  15002014  dma_cfg zero, zero, r2, 10
001098  1f613000  addli r2, zero, 30
00109c  15002014  dma_cfg zero, zero, r2, 10
0010a0  1f713000  addli r2, zero, 31
0010a4  15002014  dma_cfg zero, zero, r2, 10
0010a8  95880800  dma_cfg r17, r17, zero, 0
0010ac  95080002  dma_cfg r17, zero, zero, 1
0010b0  15000004  dma_cfg zero, zero, zero, 2
0010b4  9506b007  dma_cfg r13, zero, r27, 3
0010b8  150db008  dma_cfg r26, zero, r11, 4
0010bc  150b900b  dma_cfg r22, zero, r25, 5
0010c0  15000010  dma_cfg zero, zero, zero, 8
0010c4  35000000  dma_run zero
0010c8  1500100b  dma_cfg zero, zero, r17, 5
0010cc  15000010  dma_cfg zero, zero, zero, 8
0010d0  1d100400  unlock r8
0010d4  7d800400  xsignal r9, 0
0010d8  1b011500  andi r2, r10, 1
0010dc  3b1301fc  bneq r2, zero, -1852
0010e0  db0a0000  j 84
0010e4  1f640000  addli r8, zero, 6
0010e8  9f040001  addli r9, zero, 128
0010ec  7d100400  xwait r8, 0
0010f0  1f141000  addli r8, zero, 9
0010f4  7d100400  xwait r8, 0
0010f8  1f240000  addli r8, zero, 2
0010fc  1d000000  lock zero, zero
001100  01040000  ds_cfg r8, zero, 0
001104  1f044000  addli r8, zero, 32
001108  81040002  ds_cfg r9, zero, 1
00110c  0104001c  ds_cfg r8, zero, 14
001110  8104001a  ds_cfg r9, zero, 13
001114  41818604  shuffle_coa r2, r13, r8, 2
001118  1f710000  addli r2, zero, 7
00111c  1d100000  unlock zero
001120  7d000100  xsignal r2, 0
001124  1f011000  addli r2, zero, 8
001128  7d000100  xsignal r2, 0
00112c  1b011500  andi r2, r10, 1
001130  bb4101fc  bneq r2, zero, -1936
001134  3bb04901  bneq r19, r20, 12
001138  1f211000  addli r2, zero, 10
00113c  7d000100  xsignal r2, 0
001140  63028fff  loadli.w r4,  -64(r30)
001144  6301afff  loadli.w r2,  -48(r30)
001148  67484ff8  storeli.w r4, -892(r30)
00114c  1f120200  addli r4, r4, 1
001150  9f120100  addli r5, r2, 1
001154  670c4ffe  storeli.w r4, -64(r30)
001158  1f320000  addli r4, zero, 3
00115c  670d5ffe  storeli.w r5, -48(r30)
001160  3bd04900  bneq r19, r4, 20
001164  9f221000  addli r5, zero, 10
001168  7d900200  xwait r5, 0
00116c  9f422000  addli r5, zero, 20
001170  7d900200  xwait r5, 0
001174  0b114138  mod.s r2, r2, r4
001178  1f020001  addli r4, zero, 128
00117c  9f72f001  addli r5, zero, 255
001180  3d000000  xfence
001184  00a00300  mfence { lm, sm, gm }
001188  330d0228  zext_int2long r[27:28], r4
00118c  2b420f00  lui r4, 244
001190  80a20204  csr_set csr5, r5
001194  1b120260  ori r4, r4, 1536
001198  1b310101  slli r2, r2, 16
00119c  0b154110  add.s r10, r2, r4
0011a0  1f711000  addli r2, zero, 15
0011a4  33020128  zext_int2long r[5:6], r2
0011a8  00310002  core_id r2
0011ac  733c4fc8  store.d r[5:6], -872(r30)
0011b0  00e00200  sync_core
0011b4  bb650100  bneq r2, zero, 376
0011b8  3d000000  xfence
0011bc  33020028  zext_int2long r[5:6], zero
0011c0  00a00300  mfence { lm, sm, gm }
0011c4  73384fcc  store.d r[5:6], -816(r30)
0011c8  5b030000  j 24
0011cc  6b528fc9  load.d r[5:6], -872(r30)
0011d0  6b540fce  load.d r[9:10], -800(r30)
0011d4  13214404  setlt.ul r2, r[9:10], r[5:6]
0011d8  27120400  addli.d r[5:6], r[9:10], 1
0011dc  37150100  beq r2, zero, 324
0011e0  1f710000  addli r2, zero, 7
0011e4  6b5a0fcd  load.d r[21:22], -816(r30)
0011e8  73304fce  store.d r[5:6], -800(r30)
0011ec  97382202  sll.d r[18:19], r[5:6], r2
0011f0  db040000  j 36
0011f4  274a0a00  addli.d r[21:22], r[21:22], 4
0011f8  8b128511  add.s r5, r10, r24
0011fc  1321aa03  setneq.d r2, r[21:22], r[27:28]
001200  73e66201  stores.w r22, 12(r5)
001204  73e4e200  stores.w r14, 8(r5)
001208  73e28200  stores.w r8, 4(r5)
00120c  73e04200  stores.w r4, 0(r5)
001210  b77e01fe  beq r2, zero, -68
001214  0b221a11  add.ul r[5:6], r[21:22], r[18:19]
001218  1b3c2200  slli r24, r4, 2
00121c  0b928311  add.s r4, r7, r24
001220  6f41c200  loads.w r2, 12(r4)
001224  ef440200  loads.w r9, 0(r4)
001228  ef4b4200  loads.w r23, 4(r4)
00122c  ef498200  loads.w r19, 8(r4)
001230  9705c101  and r11, r2, r28
001234  1302b804  setlt.u r4, r16, r11
001238  3b300200  bneq r4, zero, 12
00123c  1f0b0100  addli r22, r2, 0
001240  5b010000  j 8
001244  171bf100  or r22, r2, r15
001248  978cc901  and r25, r19, r28
00124c  13029805  setlt.u r4, r16, r25
001250  3b300200  bneq r4, zero, 12
001254  1f870900  addli r14, r19, 0
001258  5b010000  j 8
00125c  1797f900  or r14, r19, r15
001260  9782cb01  and r5, r23, r28
001264  13025804  setlt.u r4, r16, r5
001268  3b300200  bneq r4, zero, 12
00126c  1f840b00  addli r8, r23, 0
001270  5b010000  j 8
001274  1794fb00  or r8, r23, r15
001278  1786c401  and r12, r9, r28
00127c  1302c804  setlt.u r4, r16, r12
001280  3b500200  bneq r4, zero, 20
001284  1f820400  addli r4, r9, 0
001288  1386c104  setlt.u r12, r3, r12
00128c  37500600  beq r12, zero, 20
001290  db040000  j 36
001294  1792f400  or r4, r9, r15
001298  1386c104  setlt.u r12, r3, r12
00129c  3b600600  bneq r12, zero, 24
0012a0  1bc20401  srli r4, r9, 16
0012a4  1b021200  andi r4, r4, 1
0012a8  0b924410  add.s r4, r9, r4
0012ac  0b121210  add.s r4, r4, r1
0012b0  17026200  and r4, r4, r6
0012b4  93825104  setlt.u r5, r3, r5
0012b8  37e00200  beq r5, zero, 24
0012bc  93829105  setlt.u r5, r3, r25
0012c0  b7b00200  beq r5, zero, 44
0012c4  9382b104  setlt.u r5, r3, r11
0012c8  bbbc02fe  bneq r5, zero, -212
0012cc  db070000  j 60
0012d0  9bc20b01  srli r5, r23, 16
0012d4  9b821200  andi r5, r5, 1
0012d8  8b925b10  add.s r5, r23, r5
0012dc  8b921210  add.s r5, r5, r1
0012e0  17846200  and r8, r5, r6
0012e4  93829105  setlt.u r5, r3, r25
0012e8  3bff02fe  bneq r5, zero, -36
0012ec  9bc20901  srli r5, r19, 16
0012f0  9b821200  andi r5, r5, 1
0012f4  8b925910  add.s r5, r19, r5
0012f8  8b921210  add.s r5, r5, r1
0012fc  17876200  and r14, r5, r6
001300  9382b104  setlt.u r5, r3, r11
001304  bbcb02fe  bneq r5, zero, -272
001308  9b420101  srli r5, r2, 16
00130c  9b821200  andi r5, r5, 1
001310  0b115110  add.s r2, r2, r5
001314  0b111110  add.s r2, r2, r1
001318  170b6100  and r22, r2, r6
00131c  5bdbffff  j -296
001320  00310002  core_id r2
001324  9f0a3000  addli r21, zero, 24
001328  00200100  mfence { sm }
00132c  1f723000  addli r4, zero, 31
001330  33020228  zext_int2long r[5:6], r4
001334  73344fca  store.d r[5:6], -856(r30)
001338  1f120000  addli r4, zero, 1
00133c  bb554100  bneq r2, r4, 372
001340  1f012000  addli r2, zero, 16
001344  3d000000  xfence
001348  00a00300  mfence { lm, sm, gm }
00134c  33020128  zext_int2long r[5:6], r2
001350  5b030000  j 24
001354  6b528fca  load.d r[5:6], -856(r30)
001358  6b540fce  load.d r[9:10], -800(r30)
00135c  13214404  setlt.ul r2, r[9:10], r[5:6]
001360  27120400  addli.d r[5:6], r[9:10], 1
001364  37150100  beq r2, zero, 324
001368  1f710000  addli r2, zero, 7
00136c  b3080028  zext_int2long r[18:19], zero
001370  73304fce  store.d r[5:6], -800(r30)
001374  17362202  sll.d r[13:14], r[5:6], r2
001378  db040000  j 36
00137c  a7c80800  addli.d r[18:19], r[18:19], 4
001380  0b124511  add.s r4, r10, r20
001384  13a1a803  setneq.d r2, r[18:19], r[27:28]
001388  73665201  stores.w r21, 12(r4)
00138c  7364e200  stores.w r14, 8(r4)
001390  73628200  stores.w r8, 4(r4)
001394  73609200  stores.w r9, 0(r4)
001398  b77e01fe  beq r2, zero, -68
00139c  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
0013a0  1b3a2200  slli r20, r4, 2
0013a4  0b924311  add.s r4, r7, r20
0013a8  6f41c200  loads.w r2, 12(r4)
0013ac  6f4c0200  loads.w r24, 0(r4)
0013b0  6f4b4200  loads.w r22, 4(r4)
0013b4  ef498200  loads.w r19, 8(r4)
0013b8  9705c101  and r11, r2, r28
0013bc  1302b804  setlt.u r4, r16, r11
0013c0  3b300200  bneq r4, zero, 12
0013c4  9f0a0100  addli r21, r2, 0
0013c8  5b010000  j 8
0013cc  971af100  or r21, r2, r15
0013d0  978bc901  and r23, r19, r28
0013d4  13027805  setlt.u r4, r16, r23
0013d8  3b300200  bneq r4, zero, 12
0013dc  1f870900  addli r14, r19, 0
0013e0  5b010000  j 8
0013e4  1797f900  or r14, r19, r15
0013e8  970ccb01  and r25, r22, r28
0013ec  13029805  setlt.u r4, r16, r25
0013f0  3b300200  bneq r4, zero, 12
0013f4  1f040b00  addli r8, r22, 0
0013f8  5b010000  j 8
0013fc  1714fb00  or r8, r22, r15
001400  1702cc01  and r4, r24, r28
001404  93024804  setlt.u r5, r16, r4
001408  3bd00200  bneq r5, zero, 20
00140c  9f040c00  addli r9, r24, 0
001410  13824104  setlt.u r4, r3, r4
001414  37500200  beq r4, zero, 20
001418  db040000  j 36
00141c  9714fc00  or r9, r24, r15
001420  13824104  setlt.u r4, r3, r4
001424  3b600200  bneq r4, zero, 24
001428  1b420c01  srli r4, r24, 16
00142c  1b021200  andi r4, r4, 1
001430  0b124c10  add.s r4, r24, r4
001434  0b121210  add.s r4, r4, r1
001438  97046200  and r9, r4, r6
00143c  13829105  setlt.u r4, r3, r25
001440  37600200  beq r4, zero, 24
001444  13827105  setlt.u r4, r3, r23
001448  b7300200  beq r4, zero, 44
00144c  1382b104  setlt.u r4, r3, r11
001450  bb3c02fe  bneq r4, zero, -212
001454  db070000  j 60
001458  1b420b01  srli r4, r22, 16
00145c  1b021200  andi r4, r4, 1
001460  0b124b10  add.s r4, r22, r4
001464  0b121210  add.s r4, r4, r1
001468  17046200  and r8, r4, r6
00146c  13827105  setlt.u r4, r3, r23
001470  3b7f02fe  bneq r4, zero, -36
001474  1bc20901  srli r4, r19, 16
001478  1b021200  andi r4, r4, 1
00147c  0b924910  add.s r4, r19, r4
001480  0b121210  add.s r4, r4, r1
001484  17076200  and r14, r4, r6
001488  1382b104  setlt.u r4, r3, r11
00148c  bb4b02fe  bneq r4, zero, -272
001490  1b420101  srli r4, r2, 16
001494  1b021200  andi r4, r4, 1
001498  0b114110  add.s r2, r2, r4
00149c  0b111110  add.s r2, r2, r1
0014a0  970a6100  and r21, r2, r6
0014a4  5bdbffff  j -296
0014a8  9f0a3000  addli r21, zero, 24
0014ac  00200100  mfence { sm }
0014b0  1f715000  addli r2, zero, 47
0014b4  33020128  zext_int2long r[5:6], r2
0014b8  00310002  core_id r2
0014bc  73384fca  store.d r[5:6], -848(r30)
0014c0  1f220000  addli r4, zero, 2
0014c4  bb554100  bneq r2, r4, 372
0014c8  1f014000  addli r2, zero, 32
0014cc  3d000000  xfence
0014d0  00a00300  mfence { lm, sm, gm }
0014d4  33020128  zext_int2long r[5:6], r2
0014d8  5b030000  j 24
0014dc  6b520fcb  load.d r[5:6], -848(r30)
0014e0  6b540fce  load.d r[9:10], -800(r30)
0014e4  13214404  setlt.ul r2, r[9:10], r[5:6]
0014e8  27120400  addli.d r[5:6], r[9:10], 1
0014ec  37150100  beq r2, zero, 324
0014f0  1f710000  addli r2, zero, 7
0014f4  b3080028  zext_int2long r[18:19], zero
0014f8  73304fce  store.d r[5:6], -800(r30)
0014fc  17362202  sll.d r[13:14], r[5:6], r2
001500  db040000  j 36
001504  a7c80800  addli.d r[18:19], r[18:19], 4
001508  0b124511  add.s r4, r10, r20
00150c  13a1a803  setneq.d r2, r[18:19], r[27:28]
001510  73665201  stores.w r21, 12(r4)
001514  7364e200  stores.w r14, 8(r4)
001518  73628200  stores.w r8, 4(r4)
00151c  73609200  stores.w r9, 0(r4)
001520  b77e01fe  beq r2, zero, -68
001524  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
001528  1b3a2200  slli r20, r4, 2
00152c  0b924311  add.s r4, r7, r20
001530  6f41c200  loads.w r2, 12(r4)
001534  6f4c0200  loads.w r24, 0(r4)
001538  6f4b4200  loads.w r22, 4(r4)
00153c  ef498200  loads.w r19, 8(r4)
001540  9705c101  and r11, r2, r28
001544  1302b804  setlt.u r4, r16, r11
001548  3b300200  bneq r4, zero, 12
00154c  9f0a0100  addli r21, r2, 0
001550  5b010000  j 8
001554  971af100  or r21, r2, r15
001558  978bc901  and r23, r19, r28
00155c  13027805  setlt.u r4, r16, r23
001560  3b300200  bneq r4, zero, 12
001564  1f870900  addli r14, r19, 0
001568  5b010000  j 8
00156c  1797f900  or r14, r19, r15
001570  970ccb01  and r25, r22, r28
001574  13029805  setlt.u r4, r16, r25
001578  3b300200  bneq r4, zero, 12
00157c  1f040b00  addli r8, r22, 0
001580  5b010000  j 8
001584  1714fb00  or r8, r22, r15
001588  1702cc01  and r4, r24, r28
00158c  93024804  setlt.u r5, r16, r4
001590  3bd00200  bneq r5, zero, 20
001594  9f040c00  addli r9, r24, 0
001598  13824104  setlt.u r4, r3, r4
00159c  37500200  beq r4, zero, 20
0015a0  db040000  j 36
0015a4  9714fc00  or r9, r24, r15
0015a8  13824104  setlt.u r4, r3, r4
0015ac  3b600200  bneq r4, zero, 24
0015b0  1b420c01  srli r4, r24, 16
0015b4  1b021200  andi r4, r4, 1
0015b8  0b124c10  add.s r4, r24, r4
0015bc  0b121210  add.s r4, r4, r1
0015c0  97046200  and r9, r4, r6
0015c4  13829105  setlt.u r4, r3, r25
0015c8  37600200  beq r4, zero, 24
0015cc  13827105  setlt.u r4, r3, r23
0015d0  b7300200  beq r4, zero, 44
0015d4  1382b104  setlt.u r4, r3, r11
0015d8  bb3c02fe  bneq r4, zero, -212
0015dc  db070000  j 60
0015e0  1b420b01  srli r4, r22, 16
0015e4  1b021200  andi r4, r4, 1
0015e8  0b124b10  add.s r4, r22, r4
0015ec  0b121210  add.s r4, r4, r1
0015f0  17046200  and r8, r4, r6
0015f4  13827105  setlt.u r4, r3, r23
0015f8  3b7f02fe  bneq r4, zero, -36
0015fc  1bc20901  srli r4, r19, 16
001600  1b021200  andi r4, r4, 1
001604  0b924910  add.s r4, r19, r4
001608  0b121210  add.s r4, r4, r1
00160c  17076200  and r14, r4, r6
001610  1382b104  setlt.u r4, r3, r11
001614  bb4b02fe  bneq r4, zero, -272
001618  1b420101  srli r4, r2, 16
00161c  1b021200  andi r4, r4, 1
001620  0b114110  add.s r2, r2, r4
001624  0b111110  add.s r2, r2, r1
001628  970a6100  and r21, r2, r6
00162c  5bdbffff  j -296
001630  9f0a3000  addli r21, zero, 24
001634  00200100  mfence { sm }
001638  1f717000  addli r2, zero, 63
00163c  33020128  zext_int2long r[5:6], r2
001640  00310002  core_id r2
001644  733c4fca  store.d r[5:6], -840(r30)
001648  1f320000  addli r4, zero, 3
00164c  bb554100  bneq r2, r4, 372
001650  1f016000  addli r2, zero, 48
001654  3d000000  xfence
001658  00a00300  mfence { lm, sm, gm }
00165c  33020128  zext_int2long r[5:6], r2
001660  5b030000  j 24
001664  6b528fcb  load.d r[5:6], -840(r30)
001668  6b540fce  load.d r[9:10], -800(r30)
00166c  13214404  setlt.ul r2, r[9:10], r[5:6]
001670  27120400  addli.d r[5:6], r[9:10], 1
001674  37150100  beq r2, zero, 324
001678  1f710000  addli r2, zero, 7
00167c  b3080028  zext_int2long r[18:19], zero
001680  73304fce  store.d r[5:6], -800(r30)
001684  17362202  sll.d r[13:14], r[5:6], r2
001688  db040000  j 36
00168c  a7c80800  addli.d r[18:19], r[18:19], 4
001690  0b124511  add.s r4, r10, r20
001694  13a1a803  setneq.d r2, r[18:19], r[27:28]
001698  73665201  stores.w r21, 12(r4)
00169c  7364e200  stores.w r14, 8(r4)
0016a0  73628200  stores.w r8, 4(r4)
0016a4  73609200  stores.w r9, 0(r4)
0016a8  b77e01fe  beq r2, zero, -68
0016ac  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
0016b0  1b3a2200  slli r20, r4, 2
0016b4  0b924311  add.s r4, r7, r20
0016b8  6f41c200  loads.w r2, 12(r4)
0016bc  6f4c0200  loads.w r24, 0(r4)
0016c0  6f4b4200  loads.w r22, 4(r4)
0016c4  ef498200  loads.w r19, 8(r4)
0016c8  9705c101  and r11, r2, r28
0016cc  1302b804  setlt.u r4, r16, r11
0016d0  3b300200  bneq r4, zero, 12
0016d4  9f0a0100  addli r21, r2, 0
0016d8  5b010000  j 8
0016dc  971af100  or r21, r2, r15
0016e0  978bc901  and r23, r19, r28
0016e4  13027805  setlt.u r4, r16, r23
0016e8  3b300200  bneq r4, zero, 12
0016ec  1f870900  addli r14, r19, 0
0016f0  5b010000  j 8
0016f4  1797f900  or r14, r19, r15
0016f8  970ccb01  and r25, r22, r28
0016fc  13029805  setlt.u r4, r16, r25
001700  3b300200  bneq r4, zero, 12
001704  1f040b00  addli r8, r22, 0
001708  5b010000  j 8
00170c  1714fb00  or r8, r22, r15
001710  1702cc01  and r4, r24, r28
001714  93024804  setlt.u r5, r16, r4
001718  3bd00200  bneq r5, zero, 20
00171c  9f040c00  addli r9, r24, 0
001720  13824104  setlt.u r4, r3, r4
001724  37500200  beq r4, zero, 20
001728  db040000  j 36
00172c  9714fc00  or r9, r24, r15
001730  13824104  setlt.u r4, r3, r4
001734  3b600200  bneq r4, zero, 24
001738  1b420c01  srli r4, r24, 16
00173c  1b021200  andi r4, r4, 1
001740  0b124c10  add.s r4, r24, r4
001744  0b121210  add.s r4, r4, r1
001748  97046200  and r9, r4, r6
00174c  13829105  setlt.u r4, r3, r25
001750  37600200  beq r4, zero, 24
001754  13827105  setlt.u r4, r3, r23
001758  b7300200  beq r4, zero, 44
00175c  1382b104  setlt.u r4, r3, r11
001760  bb3c02fe  bneq r4, zero, -212
001764  db070000  j 60
001768  1b420b01  srli r4, r22, 16
00176c  1b021200  andi r4, r4, 1
001770  0b124b10  add.s r4, r22, r4
001774  0b121210  add.s r4, r4, r1
001778  17046200  and r8, r4, r6
00177c  13827105  setlt.u r4, r3, r23
001780  3b7f02fe  bneq r4, zero, -36
001784  1bc20901  srli r4, r19, 16
001788  1b021200  andi r4, r4, 1
00178c  0b924910  add.s r4, r19, r4
001790  0b121210  add.s r4, r4, r1
001794  17076200  and r14, r4, r6
001798  1382b104  setlt.u r4, r3, r11
00179c  bb4b02fe  bneq r4, zero, -272
0017a0  1b420101  srli r4, r2, 16
0017a4  1b021200  andi r4, r4, 1
0017a8  0b114110  add.s r2, r2, r4
0017ac  0b111110  add.s r2, r2, r1
0017b0  970a6100  and r21, r2, r6
0017b4  5bdbffff  j -296
0017b8  9f0a3000  addli r21, zero, 24
0017bc  00200100  mfence { sm }
0017c0  1f719000  addli r2, zero, 79
0017c4  9f450000  addli r11, zero, 4
0017c8  33020128  zext_int2long r[5:6], r2
0017cc  00310002  core_id r2
0017d0  73304fcc  store.d r[5:6], -832(r30)
0017d4  bb65b100  bneq r2, r11, 376
0017d8  1f018000  addli r2, zero, 64
0017dc  3d000000  xfence
0017e0  00a00300  mfence { lm, sm, gm }
0017e4  33020128  zext_int2long r[5:6], r2
0017e8  5b030000  j 24
0017ec  6b520fcc  load.d r[5:6], -832(r30)
0017f0  6b540fce  load.d r[9:10], -800(r30)
0017f4  13214404  setlt.ul r2, r[9:10], r[5:6]
0017f8  27120400  addli.d r[5:6], r[9:10], 1
0017fc  37150100  beq r2, zero, 324
001800  1f710000  addli r2, zero, 7
001804  b3080028  zext_int2long r[18:19], zero
001808  73304fce  store.d r[5:6], -800(r30)
00180c  17362202  sll.d r[13:14], r[5:6], r2
001810  db040000  j 36
001814  a7c80800  addli.d r[18:19], r[18:19], 4
001818  0b124511  add.s r4, r10, r20
00181c  13a1a803  setneq.d r2, r[18:19], r[27:28]
001820  73665201  stores.w r21, 12(r4)
001824  7364e200  stores.w r14, 8(r4)
001828  73628200  stores.w r8, 4(r4)
00182c  73609200  stores.w r9, 0(r4)
001830  b77e01fe  beq r2, zero, -68
001834  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
001838  1b3a2200  slli r20, r4, 2
00183c  0b924311  add.s r4, r7, r20
001840  6f41c200  loads.w r2, 12(r4)
001844  6f4c0200  loads.w r24, 0(r4)
001848  6f4b4200  loads.w r22, 4(r4)
00184c  ef498200  loads.w r19, 8(r4)
001850  9705c101  and r11, r2, r28
001854  1302b804  setlt.u r4, r16, r11
001858  3b300200  bneq r4, zero, 12
00185c  9f0a0100  addli r21, r2, 0
001860  5b010000  j 8
001864  971af100  or r21, r2, r15
001868  978bc901  and r23, r19, r28
00186c  13027805  setlt.u r4, r16, r23
001870  3b300200  bneq r4, zero, 12
001874  1f870900  addli r14, r19, 0
001878  5b010000  j 8
00187c  1797f900  or r14, r19, r15
001880  970ccb01  and r25, r22, r28
001884  13029805  setlt.u r4, r16, r25
001888  3b300200  bneq r4, zero, 12
00188c  1f040b00  addli r8, r22, 0
001890  5b010000  j 8
001894  1714fb00  or r8, r22, r15
001898  1702cc01  and r4, r24, r28
00189c  93024804  setlt.u r5, r16, r4
0018a0  3bd00200  bneq r5, zero, 20
0018a4  9f040c00  addli r9, r24, 0
0018a8  13824104  setlt.u r4, r3, r4
0018ac  37500200  beq r4, zero, 20
0018b0  db040000  j 36
0018b4  9714fc00  or r9, r24, r15
0018b8  13824104  setlt.u r4, r3, r4
0018bc  3b600200  bneq r4, zero, 24
0018c0  1b420c01  srli r4, r24, 16
0018c4  1b021200  andi r4, r4, 1
0018c8  0b124c10  add.s r4, r24, r4
0018cc  0b121210  add.s r4, r4, r1
0018d0  97046200  and r9, r4, r6
0018d4  13829105  setlt.u r4, r3, r25
0018d8  37600200  beq r4, zero, 24
0018dc  13827105  setlt.u r4, r3, r23
0018e0  b7300200  beq r4, zero, 44
0018e4  1382b104  setlt.u r4, r3, r11
0018e8  bb3c02fe  bneq r4, zero, -212
0018ec  db070000  j 60
0018f0  1b420b01  srli r4, r22, 16
0018f4  1b021200  andi r4, r4, 1
0018f8  0b124b10  add.s r4, r22, r4
0018fc  0b121210  add.s r4, r4, r1
001900  17046200  and r8, r4, r6
001904  13827105  setlt.u r4, r3, r23
001908  3b7f02fe  bneq r4, zero, -36
00190c  1bc20901  srli r4, r19, 16
001910  1b021200  andi r4, r4, 1
001914  0b924910  add.s r4, r19, r4
001918  0b121210  add.s r4, r4, r1
00191c  17076200  and r14, r4, r6
001920  1382b104  setlt.u r4, r3, r11
001924  bb4b02fe  bneq r4, zero, -272
001928  1b420101  srli r4, r2, 16
00192c  1b021200  andi r4, r4, 1
001930  0b114110  add.s r2, r2, r4
001934  0b111110  add.s r2, r2, r1
001938  970a6100  and r21, r2, r6
00193c  5bdbffff  j -296
001940  9f450000  addli r11, zero, 4
001944  9f0a3000  addli r21, zero, 24
001948  00200100  mfence { sm }
00194c  1f71b000  addli r2, zero, 95
001950  33020128  zext_int2long r[5:6], r2
001954  00310002  core_id r2
001958  73344fcc  store.d r[5:6], -824(r30)
00195c  1f520000  addli r4, zero, 5
001960  bb654100  bneq r2, r4, 376
001964  1f01a000  addli r2, zero, 80
001968  3d000000  xfence
00196c  00a00300  mfence { lm, sm, gm }
001970  33020128  zext_int2long r[5:6], r2
001974  5b030000  j 24
001978  6b528fcc  load.d r[5:6], -824(r30)
00197c  6b540fce  load.d r[9:10], -800(r30)
001980  13214404  setlt.ul r2, r[9:10], r[5:6]
001984  27120400  addli.d r[5:6], r[9:10], 1
001988  37150100  beq r2, zero, 324
00198c  1f710000  addli r2, zero, 7
001990  b3080028  zext_int2long r[18:19], zero
001994  73304fce  store.d r[5:6], -800(r30)
001998  17362202  sll.d r[13:14], r[5:6], r2
00199c  db040000  j 36
0019a0  a7c80800  addli.d r[18:19], r[18:19], 4
0019a4  0b124511  add.s r4, r10, r20
0019a8  13a1a803  setneq.d r2, r[18:19], r[27:28]
0019ac  73665201  stores.w r21, 12(r4)
0019b0  7364e200  stores.w r14, 8(r4)
0019b4  73628200  stores.w r8, 4(r4)
0019b8  73609200  stores.w r9, 0(r4)
0019bc  b77e01fe  beq r2, zero, -68
0019c0  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
0019c4  1b3a2200  slli r20, r4, 2
0019c8  0b924311  add.s r4, r7, r20
0019cc  6f41c200  loads.w r2, 12(r4)
0019d0  6f4c0200  loads.w r24, 0(r4)
0019d4  6f4b4200  loads.w r22, 4(r4)
0019d8  ef498200  loads.w r19, 8(r4)
0019dc  9705c101  and r11, r2, r28
0019e0  1302b804  setlt.u r4, r16, r11
0019e4  3b300200  bneq r4, zero, 12
0019e8  9f0a0100  addli r21, r2, 0
0019ec  5b010000  j 8
0019f0  971af100  or r21, r2, r15
0019f4  978bc901  and r23, r19, r28
0019f8  13027805  setlt.u r4, r16, r23
0019fc  3b300200  bneq r4, zero, 12
001a00  1f870900  addli r14, r19, 0
001a04  5b010000  j 8
001a08  1797f900  or r14, r19, r15
001a0c  970ccb01  and r25, r22, r28
001a10  13029805  setlt.u r4, r16, r25
001a14  3b300200  bneq r4, zero, 12
001a18  1f040b00  addli r8, r22, 0
001a1c  5b010000  j 8
001a20  1714fb00  or r8, r22, r15
001a24  1702cc01  and r4, r24, r28
001a28  93024804  setlt.u r5, r16, r4
001a2c  3bd00200  bneq r5, zero, 20
001a30  9f040c00  addli r9, r24, 0
001a34  13824104  setlt.u r4, r3, r4
001a38  37500200  beq r4, zero, 20
001a3c  db040000  j 36
001a40  9714fc00  or r9, r24, r15
001a44  13824104  setlt.u r4, r3, r4
001a48  3b600200  bneq r4, zero, 24
001a4c  1b420c01  srli r4, r24, 16
001a50  1b021200  andi r4, r4, 1
001a54  0b124c10  add.s r4, r24, r4
001a58  0b121210  add.s r4, r4, r1
001a5c  97046200  and r9, r4, r6
001a60  13829105  setlt.u r4, r3, r25
001a64  37600200  beq r4, zero, 24
001a68  13827105  setlt.u r4, r3, r23
001a6c  b7300200  beq r4, zero, 44
001a70  1382b104  setlt.u r4, r3, r11
001a74  bb3c02fe  bneq r4, zero, -212
001a78  db070000  j 60
001a7c  1b420b01  srli r4, r22, 16
001a80  1b021200  andi r4, r4, 1
001a84  0b124b10  add.s r4, r22, r4
001a88  0b121210  add.s r4, r4, r1
001a8c  17046200  and r8, r4, r6
001a90  13827105  setlt.u r4, r3, r23
001a94  3b7f02fe  bneq r4, zero, -36
001a98  1bc20901  srli r4, r19, 16
001a9c  1b021200  andi r4, r4, 1
001aa0  0b924910  add.s r4, r19, r4
001aa4  0b121210  add.s r4, r4, r1
001aa8  17076200  and r14, r4, r6
001aac  1382b104  setlt.u r4, r3, r11
001ab0  bb4b02fe  bneq r4, zero, -272
001ab4  1b420101  srli r4, r2, 16
001ab8  1b021200  andi r4, r4, 1
001abc  0b114110  add.s r2, r2, r4
001ac0  0b111110  add.s r2, r2, r1
001ac4  970a6100  and r21, r2, r6
001ac8  5bdbffff  j -296
001acc  9f450000  addli r11, zero, 4
001ad0  9f0a3000  addli r21, zero, 24
001ad4  00200100  mfence { sm }
001ad8  1f71d000  addli r2, zero, 111
001adc  33020128  zext_int2long r[5:6], r2
001ae0  00310002  core_id r2
001ae4  73384fcc  store.d r[5:6], -816(r30)
001ae8  1f620000  addli r4, zero, 6
001aec  bb654100  bneq r2, r4, 376
001af0  1f01c000  addli r2, zero, 96
001af4  3d000000  xfence
001af8  00a00300  mfence { lm, sm, gm }
001afc  33020128  zext_int2long r[5:6], r2
001b00  5b030000  j 24
001b04  6b520fcd  load.d r[5:6], -816(r30)
001b08  6b540fce  load.d r[9:10], -800(r30)
001b0c  13214404  setlt.ul r2, r[9:10], r[5:6]
001b10  27120400  addli.d r[5:6], r[9:10], 1
001b14  37150100  beq r2, zero, 324
001b18  1f710000  addli r2, zero, 7
001b1c  b3080028  zext_int2long r[18:19], zero
001b20  73304fce  store.d r[5:6], -800(r30)
001b24  17362202  sll.d r[13:14], r[5:6], r2
001b28  db040000  j 36
001b2c  a7c80800  addli.d r[18:19], r[18:19], 4
001b30  0b124511  add.s r4, r10, r20
001b34  13a1a803  setneq.d r2, r[18:19], r[27:28]
001b38  73665201  stores.w r21, 12(r4)
001b3c  7364e200  stores.w r14, 8(r4)
001b40  73628200  stores.w r8, 4(r4)
001b44  73609200  stores.w r9, 0(r4)
001b48  b77e01fe  beq r2, zero, -68
001b4c  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
001b50  1b3a2200  slli r20, r4, 2
001b54  0b924311  add.s r4, r7, r20
001b58  6f41c200  loads.w r2, 12(r4)
001b5c  6f4c0200  loads.w r24, 0(r4)
001b60  6f4b4200  loads.w r22, 4(r4)
001b64  ef498200  loads.w r19, 8(r4)
001b68  9705c101  and r11, r2, r28
001b6c  1302b804  setlt.u r4, r16, r11
001b70  3b300200  bneq r4, zero, 12
001b74  9f0a0100  addli r21, r2, 0
001b78  5b010000  j 8
001b7c  971af100  or r21, r2, r15
001b80  978bc901  and r23, r19, r28
001b84  13027805  setlt.u r4, r16, r23
001b88  3b300200  bneq r4, zero, 12
001b8c  1f870900  addli r14, r19, 0
001b90  5b010000  j 8
001b94  1797f900  or r14, r19, r15
001b98  970ccb01  and r25, r22, r28
001b9c  13029805  setlt.u r4, r16, r25
001ba0  3b300200  bneq r4, zero, 12
001ba4  1f040b00  addli r8, r22, 0
001ba8  5b010000  j 8
001bac  1714fb00  or r8, r22, r15
001bb0  1702cc01  and r4, r24, r28
001bb4  93024804  setlt.u r5, r16, r4
001bb8  3bd00200  bneq r5, zero, 20
001bbc  9f040c00  addli r9, r24, 0
001bc0  13824104  setlt.u r4, r3, r4
001bc4  37500200  beq r4, zero, 20
001bc8  db040000  j 36
001bcc  9714fc00  or r9, r24, r15
001bd0  13824104  setlt.u r4, r3, r4
001bd4  3b600200  bneq r4, zero, 24
001bd8  1b420c01  srli r4, r24, 16
001bdc  1b021200  andi r4, r4, 1
001be0  0b124c10  add.s r4, r24, r4
001be4  0b121210  add.s r4, r4, r1
001be8  97046200  and r9, r4, r6
001bec  13829105  setlt.u r4, r3, r25
001bf0  37600200  beq r4, zero, 24
001bf4  13827105  setlt.u r4, r3, r23
001bf8  b7300200  beq r4, zero, 44
001bfc  1382b104  setlt.u r4, r3, r11
001c00  bb3c02fe  bneq r4, zero, -212
001c04  db070000  j 60
001c08  1b420b01  srli r4, r22, 16
001c0c  1b021200  andi r4, r4, 1
001c10  0b124b10  add.s r4, r22, r4
001c14  0b121210  add.s r4, r4, r1
001c18  17046200  and r8, r4, r6
001c1c  13827105  setlt.u r4, r3, r23
001c20  3b7f02fe  bneq r4, zero, -36
001c24  1bc20901  srli r4, r19, 16
001c28  1b021200  andi r4, r4, 1
001c2c  0b924910  add.s r4, r19, r4
001c30  0b121210  add.s r4, r4, r1
001c34  17076200  and r14, r4, r6
001c38  1382b104  setlt.u r4, r3, r11
001c3c  bb4b02fe  bneq r4, zero, -272
001c40  1b420101  srli r4, r2, 16
001c44  1b021200  andi r4, r4, 1
001c48  0b114110  add.s r2, r2, r4
001c4c  0b111110  add.s r2, r2, r1
001c50  970a6100  and r21, r2, r6
001c54  5bdbffff  j -296
001c58  9f450000  addli r11, zero, 4
001c5c  9f0a3000  addli r21, zero, 24
001c60  00200100  mfence { sm }
001c64  1f71f000  addli r2, zero, 127
001c68  33020128  zext_int2long r[5:6], r2
001c6c  00310002  core_id r2
001c70  73304fce  store.d r[5:6], -800(r30)
001c74  1f720000  addli r4, zero, 7
001c78  bb554100  bneq r2, r4, 372
001c7c  1f01e000  addli r2, zero, 112
001c80  3d000000  xfence
001c84  00a00300  mfence { lm, sm, gm }
001c88  33020128  zext_int2long r[5:6], r2
001c8c  5b030000  j 24
001c90  6b520fce  load.d r[5:6], -800(r30)
001c94  6b540fc9  load.d r[9:10], -880(r30)
001c98  13214404  setlt.ul r2, r[9:10], r[5:6]
001c9c  27120400  addli.d r[5:6], r[9:10], 1
001ca0  37150100  beq r2, zero, 324
001ca4  1f710000  addli r2, zero, 7
001ca8  b3080028  zext_int2long r[18:19], zero
001cac  73384fc8  store.d r[5:6], -880(r30)
001cb0  17362202  sll.d r[13:14], r[5:6], r2
001cb4  db040000  j 36
001cb8  a7c80800  addli.d r[18:19], r[18:19], 4
001cbc  8b128511  add.s r5, r10, r24
001cc0  13a1a803  setneq.d r2, r[18:19], r[27:28]
001cc4  73e66201  stores.w r22, 12(r5)
001cc8  73e4e200  stores.w r14, 8(r5)
001ccc  73e28200  stores.w r8, 4(r5)
001cd0  73e04200  stores.w r4, 0(r5)
001cd4  b77e01fe  beq r2, zero, -68
001cd8  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
001cdc  1b3c2200  slli r24, r4, 2
001ce0  0b928311  add.s r4, r7, r24
001ce4  6f41c200  loads.w r2, 12(r4)
001ce8  ef440200  loads.w r9, 0(r4)
001cec  ef4b4200  loads.w r23, 4(r4)
001cf0  ef498200  loads.w r19, 8(r4)
001cf4  9705c101  and r11, r2, r28
001cf8  1302b804  setlt.u r4, r16, r11
001cfc  3b300200  bneq r4, zero, 12
001d00  1f0b0100  addli r22, r2, 0
001d04  5b010000  j 8
001d08  171bf100  or r22, r2, r15
001d0c  978cc901  and r25, r19, r28
001d10  13029805  setlt.u r4, r16, r25
001d14  3b300200  bneq r4, zero, 12
001d18  1f870900  addli r14, r19, 0
001d1c  5b010000  j 8
001d20  1797f900  or r14, r19, r15
001d24  9782cb01  and r5, r23, r28
001d28  13025804  setlt.u r4, r16, r5
001d2c  3b300200  bneq r4, zero, 12
001d30  1f840b00  addli r8, r23, 0
001d34  5b010000  j 8
001d38  1794fb00  or r8, r23, r15
001d3c  178ac401  and r20, r9, r28
001d40  13024805  setlt.u r4, r16, r20
001d44  3b500200  bneq r4, zero, 20
001d48  1f820400  addli r4, r9, 0
001d4c  138a4105  setlt.u r20, r3, r20
001d50  37500a00  beq r20, zero, 20
001d54  db040000  j 36
001d58  1792f400  or r4, r9, r15
001d5c  138a4105  setlt.u r20, r3, r20
001d60  3b600a00  bneq r20, zero, 24
001d64  1bc20401  srli r4, r9, 16
001d68  1b021200  andi r4, r4, 1
001d6c  0b924410  add.s r4, r9, r4
001d70  0b121210  add.s r4, r4, r1
001d74  17026200  and r4, r4, r6
001d78  93825104  setlt.u r5, r3, r5
001d7c  37e00200  beq r5, zero, 24
001d80  93829105  setlt.u r5, r3, r25
001d84  b7b00200  beq r5, zero, 44
001d88  9382b104  setlt.u r5, r3, r11
001d8c  bbbc02fe  bneq r5, zero, -212
001d90  db070000  j 60
001d94  9bc20b01  srli r5, r23, 16
001d98  9b821200  andi r5, r5, 1
001d9c  8b925b10  add.s r5, r23, r5
001da0  8b921210  add.s r5, r5, r1
001da4  17846200  and r8, r5, r6
001da8  93829105  setlt.u r5, r3, r25
001dac  3bff02fe  bneq r5, zero, -36
001db0  9bc20901  srli r5, r19, 16
001db4  9b821200  andi r5, r5, 1
001db8  8b925910  add.s r5, r19, r5
001dbc  8b921210  add.s r5, r5, r1
001dc0  17876200  and r14, r5, r6
001dc4  9382b104  setlt.u r5, r3, r11
001dc8  bbcb02fe  bneq r5, zero, -272
001dcc  9b420101  srli r5, r2, 16
001dd0  9b821200  andi r5, r5, 1
001dd4  0b115110  add.s r2, r2, r5
001dd8  0b111110  add.s r2, r2, r1
001ddc  170b6100  and r22, r2, r6
001de0  5bdbffff  j -296
001de4  9f450000  addli r11, zero, 4
001de8  00200100  mfence { sm }
001dec  63011ff9  loadli.w r2,  -888(r30)
001df0  33020128  zext_int2long r[5:6], r2
001df4  1f010007  addli r2, zero, 896
001df8  33040128  zext_int2long r[9:10], r2
001dfc  1f71f001  addli r2, zero, 255
001e00  0b248240  min.ul r[9:10], r[5:6], r[9:10]
001e04  27040401  addli.d r[9:10], r[9:10], 128
001e08  0b244448  max.ul r[9:10], r[9:10], r[5:6]
001e0c  0b324418  sub.sl r[5:6], r[9:10], r[5:6]
001e10  0b22a241  min.ul r[5:6], r[5:6], r[27:28]
001e14  73304fc6  store.d r[5:6], -928(r30)
001e18  80220104  csr_set csr5, r2
001e1c  80320002  core_id r5
001e20  1f310000  addli r2, zero, 3
001e24  00e00200  sync_core
001e28  bba02200  bneq r5, r2, 40
001e2c  1f311000  addli r2, zero, 11
001e30  1f222000  addli r4, zero, 18
001e34  9f7a0000  addli r21, zero, 7
001e38  7d000100  xsignal r2, 0
001e3c  7d000200  xsignal r4, 0
001e40  7d100100  xwait r2, 0
001e44  1f312000  addli r2, zero, 19
001e48  7d100100  xwait r2, 0
001e4c  db6c0000  j 868
001e50  63460ff9  loadli.w r12,  -892(r30)
001e54  2b420f00  lui r4, 244
001e58  1f640000  addli r8, zero, 6
001e5c  0b112638  mod.s r2, r12, r2
001e60  1b319100  slli r2, r2, 9
001e64  0b124110  add.s r4, r2, r4
001e68  3beb8200  bneq r5, r8, 728
001e6c  6b548fc6  load.d r[9:10], -920(r30)
001e70  9f160000  addli r13, zero, 1
001e74  eb580f01  load.d r[18:19], 16(r30)
001e78  9f692000  addli r19, zero, 22
001e7c  1f270000  addli r14, zero, 2
001e80  7d900900  xwait r19, 0
001e84  1734d402  sll.d r[9:10], r[9:10], r13
001e88  0ba48810  add.ul r[9:10], r[18:19], r[9:10]
001e8c  bf24c700  blt.s r14, r12, 296
001e90  1f560000  addli r12, zero, 5
001e94  9f320000  addli r5, zero, 3
001e98  1d000600  lock zero, r12
001e9c  15000014  dma_cfg zero, zero, zero, 10
001ea0  1500d014  dma_cfg zero, zero, r13, 10
001ea4  1500e014  dma_cfg zero, zero, r14, 10
001ea8  15005014  dma_cfg zero, zero, r5, 10
001eac  9f620000  addli r5, zero, 6
001eb0  1500b014  dma_cfg zero, zero, r11, 10
001eb4  1500c014  dma_cfg zero, zero, r12, 10
001eb8  15005014  dma_cfg zero, zero, r5, 10
001ebc  9f720000  addli r5, zero, 7
001ec0  15005014  dma_cfg zero, zero, r5, 10
001ec4  9f021000  addli r5, zero, 8
001ec8  15005014  dma_cfg zero, zero, r5, 10
001ecc  9f121000  addli r5, zero, 9
001ed0  15005014  dma_cfg zero, zero, r5, 10
001ed4  9f221000  addli r5, zero, 10
001ed8  15005014  dma_cfg zero, zero, r5, 10
001edc  9f321000  addli r5, zero, 11
001ee0  15005014  dma_cfg zero, zero, r5, 10
001ee4  9f421000  addli r5, zero, 12
001ee8  15005014  dma_cfg zero, zero, r5, 10
001eec  9f521000  addli r5, zero, 13
001ef0  15005014  dma_cfg zero, zero, r5, 10
001ef4  9f621000  addli r5, zero, 14
001ef8  15005014  dma_cfg zero, zero, r5, 10
001efc  9f721000  addli r5, zero, 15
001f00  15005014  dma_cfg zero, zero, r5, 10
001f04  9f022000  addli r5, zero, 16
001f08  15005014  dma_cfg zero, zero, r5, 10
001f0c  9f122000  addli r5, zero, 17
001f10  15005014  dma_cfg zero, zero, r5, 10
001f14  9f222000  addli r5, zero, 18
001f18  15005014  dma_cfg zero, zero, r5, 10
001f1c  9f322000  addli r5, zero, 19
001f20  15005014  dma_cfg zero, zero, r5, 10
001f24  9f422000  addli r5, zero, 20
001f28  15005014  dma_cfg zero, zero, r5, 10
001f2c  9f522000  addli r5, zero, 21
001f30  15005014  dma_cfg zero, zero, r5, 10
001f34  9f722000  addli r5, zero, 23
001f38  15003015  dma_cfg zero, zero, r19, 10
001f3c  15005014  dma_cfg zero, zero, r5, 10
001f40  9f123000  addli r5, zero, 25
001f44  15005015  dma_cfg zero, zero, r21, 10
001f48  15005014  dma_cfg zero, zero, r5, 10
001f4c  9f223000  addli r5, zero, 26
001f50  15005014  dma_cfg zero, zero, r5, 10
001f54  9f323000  addli r5, zero, 27
001f58  15005014  dma_cfg zero, zero, r5, 10
001f5c  9f423000  addli r5, zero, 28
001f60  15005014  dma_cfg zero, zero, r5, 10
001f64  9f523000  addli r5, zero, 29
001f68  15005014  dma_cfg zero, zero, r5, 10
001f6c  9f623000  addli r5, zero, 30
001f70  15005014  dma_cfg zero, zero, r5, 10
001f74  9f723000  addli r5, zero, 31
001f78  15005014  dma_cfg zero, zero, r5, 10
001f7c  9f028000  addli r5, zero, 64
001f80  95860600  dma_cfg r13, r13, zero, 0
001f84  95060002  dma_cfg r13, zero, zero, 1
001f88  15000004  dma_cfg zero, zero, zero, 2
001f8c  15025006  dma_cfg r4, zero, r5, 3
001f90  9f020001  addli r5, zero, 128
001f94  9502b008  dma_cfg r5, zero, r11, 4
001f98  9f020004  addli r5, zero, 512
001f9c  9502d00a  dma_cfg r5, zero, r13, 5
001fa0  15000010  dma_cfg zero, zero, zero, 8
001fa4  35000000  dma_run zero
001fa8  1500d00a  dma_cfg zero, zero, r13, 5
001fac  15000010  dma_cfg zero, zero, zero, 8
001fb0  1d100600  unlock r12
001fb4  1d800500  lock zero, r11
001fb8  ab420f00  lui r5, 244
001fbc  9f058000  addli r11, zero, 64
001fc0  1f460000  addli r12, zero, 4
001fc4  9f7a0000  addli r21, zero, 7
001fc8  95860600  dma_cfg r13, r13, zero, 0
001fcc  15800404  dma_cfg zero, r9, zero, 2
001fd0  9b920204  ori r5, r5, 64
001fd4  eb580fc6  load.d r[18:19], -928(r30)
001fd8  0b115110  add.s r2, r2, r5
001fdc  9ff23800  addli r5, r17, 31
001fe0  1501b406  dma_cfg r2, r8, r11, 3
001fe4  1f040002  addli r8, zero, 256
001fe8  9f540000  addli r9, zero, 5
001fec  1bc15200  srli r2, r5, 5
001ff0  9bb21800  slli r5, r17, 1
001ff4  9f080001  addli r17, zero, 128
001ff8  1f090004  addli r18, zero, 512
001ffc  95882508  dma_cfg r17, r11, r2, 4
002000  9b82e203  andi r5, r5, 62
002004  1509d40a  dma_cfg r18, r8, r13, 5
002008  1f340000  addli r8, zero, 3
00200c  15005010  dma_cfg zero, zero, r5, 8
002010  35000000  dma_run zero
002014  1500d00a  dma_cfg zero, zero, r13, 5
002018  15000010  dma_cfg zero, zero, zero, 8
00201c  1d100600  unlock r12
002020  1d800400  lock zero, r9
002024  15000014  dma_cfg zero, zero, zero, 10
002028  1500d014  dma_cfg zero, zero, r13, 10
00202c  1500e014  dma_cfg zero, zero, r14, 10
002030  1f572000  addli r14, zero, 21
002034  15008014  dma_cfg zero, zero, r8, 10
002038  1f640000  addli r8, zero, 6
00203c  1500c014  dma_cfg zero, zero, r12, 10
002040  1f063000  addli r12, zero, 24
002044  15009014  dma_cfg zero, zero, r9, 10
002048  15008014  dma_cfg zero, zero, r8, 10
00204c  1f740000  addli r8, zero, 7
002050  15008014  dma_cfg zero, zero, r8, 10
002054  1f041000  addli r8, zero, 8
002058  15008014  dma_cfg zero, zero, r8, 10
00205c  1f141000  addli r8, zero, 9
002060  15008014  dma_cfg zero, zero, r8, 10
002064  1f241000  addli r8, zero, 10
002068  15008014  dma_cfg zero, zero, r8, 10
00206c  1f341000  addli r8, zero, 11
002070  15008014  dma_cfg zero, zero, r8, 10
002074  1f441000  addli r8, zero, 12
002078  15008014  dma_cfg zero, zero, r8, 10
00207c  1f541000  addli r8, zero, 13
002080  15008014  dma_cfg zero, zero, r8, 10
002084  1f641000  addli r8, zero, 14
002088  15008014  dma_cfg zero, zero, r8, 10
00208c  1f741000  addli r8, zero, 15
002090  15008014  dma_cfg zero, zero, r8, 10
002094  1f042000  addli r8, zero, 16
002098  15008014  dma_cfg zero, zero, r8, 10
00209c  1f142000  addli r8, zero, 17
0020a0  15008014  dma_cfg zero, zero, r8, 10
0020a4  1f242000  addli r8, zero, 18
0020a8  15008014  dma_cfg zero, zero, r8, 10
0020ac  1f342000  addli r8, zero, 19
0020b0  15008014  dma_cfg zero, zero, r8, 10
0020b4  1f442000  addli r8, zero, 20
0020b8  15008014  dma_cfg zero, zero, r8, 10
0020bc  1f742000  addli r8, zero, 23
0020c0  1500e014  dma_cfg zero, zero, r14, 10
0020c4  15003015  dma_cfg zero, zero, r19, 10
0020c8  15008014  dma_cfg zero, zero, r8, 10
0020cc  1f143000  addli r8, zero, 25
0020d0  1500c014  dma_cfg zero, zero, r12, 10
0020d4  15008014  dma_cfg zero, zero, r8, 10
0020d8  1f243000  addli r8, zero, 26
0020dc  15008014  dma_cfg zero, zero, r8, 10
0020e0  1f343000  addli r8, zero, 27
0020e4  15008014  dma_cfg zero, zero, r8, 10
0020e8  1f443000  addli r8, zero, 28
0020ec  15008014  dma_cfg zero, zero, r8, 10
0020f0  1f543000  addli r8, zero, 29
0020f4  15008014  dma_cfg zero, zero, r8, 10
0020f8  1f643000  addli r8, zero, 30
0020fc  15008014  dma_cfg zero, zero, r8, 10
002100  1f743000  addli r8, zero, 31
002104  15008014  dma_cfg zero, zero, r8, 10
002108  95860600  dma_cfg r13, r13, zero, 0
00210c  95060002  dma_cfg r13, zero, zero, 1
002110  15000004  dma_cfg zero, zero, zero, 2
002114  1502b006  dma_cfg r4, zero, r11, 3
002118  9f450000  addli r11, zero, 4
00211c  95082008  dma_cfg r17, zero, r2, 4
002120  1509d00a  dma_cfg r18, zero, r13, 5
002124  15005010  dma_cfg zero, zero, r5, 8
002128  35000000  dma_run zero
00212c  1500d00a  dma_cfg zero, zero, r13, 5
002130  15000010  dma_cfg zero, zero, zero, 8
002134  1d900400  unlock r9
002138  7d000700  xsignal r14, 0
00213c  db0e0000  j 116
002140  9f7a0000  addli r21, zero, 7
002144  1f510000  addli r2, zero, 5
002148  bba12200  bneq r5, r2, 104
00214c  9f222000  addli r5, zero, 18
002150  1f010000  addli r2, zero, 0
002154  2b040100  lui r8, 16
002158  7d900200  xwait r5, 0
00215c  9f522000  addli r5, zero, 21
002160  7d900200  xwait r5, 0
002164  9f220000  addli r5, zero, 2
002168  1d800200  lock zero, r5
00216c  ab02803f  lui r5, 260096
002170  0d000002  ew_cfg zero, zero, zero, 1
002174  8d920200  ewcoeff_cfg r5, r5, zero, 0
002178  9f72f000  addli r5, zero, 127
00217c  0d800204  ew_cfg zero, r5, zero, 2
002180  9f120000  addli r5, zero, 1
002184  8d020006  ew_cfg r5, zero, zero, 3
002188  8b122510  add.s r5, r10, r2
00218c  1f010104  addli r2, r2, 512
002190  ad824200  dsmadd r5, r5, r4, 0
002194  bb5f81fe  bneq r2, r8, -12
002198  1f210000  addli r2, zero, 2
00219c  1d100100  unlock r2
0021a0  1f312000  addli r2, zero, 19
0021a4  7d000100  xsignal r2, 0
0021a8  1f612000  addli r2, zero, 22
0021ac  7d000100  xsignal r2, 0
0021b0  1f71f001  addli r2, zero, 255
0021b4  3d000000  xfence
0021b8  00a00300  mfence { lm, sm, gm }
0021bc  80220104  csr_set csr5, r2
0021c0  00310002  core_id r2
0021c4  00e00200  sync_core
0021c8  bb550100  bneq r2, zero, 372
0021cc  3d000000  xfence
0021d0  33020028  zext_int2long r[5:6], zero
0021d4  00a00300  mfence { lm, sm, gm }
0021d8  73344fc8  store.d r[5:6], -888(r30)
0021dc  5b030000  j 24
0021e0  6b528fc9  load.d r[5:6], -872(r30)
0021e4  6b540fc9  load.d r[9:10], -880(r30)
0021e8  13214404  setlt.ul r2, r[9:10], r[5:6]
0021ec  27120400  addli.d r[5:6], r[9:10], 1
0021f0  37050100  beq r2, zero, 320
0021f4  73384fc8  store.d r[5:6], -880(r30)
0021f8  97385203  sll.d r[18:19], r[5:6], r21
0021fc  6b528fc8  load.d r[5:6], -888(r30)
002200  db040000  j 36
002204  27420200  addli.d r[5:6], r[5:6], 4
002208  0b912310  add.s r2, r7, r2
00220c  9326a203  setneq.d r13, r[5:6], r[27:28]
002210  7366b100  stores.w r11, 12(r2)
002214  73648100  stores.w r8, 8(r2)
002218  73629100  stores.w r9, 4(r2)
00221c  7360c100  stores.w r12, 0(r2)
002220  378f06fe  beq r13, zero, -64
002224  0b241211  add.ul r[9:10], r[5:6], r[18:19]
002228  1b312400  slli r2, r8, 2
00222c  0b142510  add.s r8, r10, r2
002230  6f4bc400  loads.w r22, 12(r8)
002234  6f4c0400  loads.w r24, 0(r8)
002238  ef4b4400  loads.w r23, 4(r8)
00223c  ef498400  loads.w r19, 8(r8)
002240  1707cb01  and r14, r22, r28
002244  1304e804  setlt.u r8, r16, r14
002248  3b300400  bneq r8, zero, 12
00224c  9f050b00  addli r11, r22, 0
002250  5b010000  j 8
002254  9715fb00  or r11, r22, r15
002258  978cc901  and r25, r19, r28
00225c  13049805  setlt.u r8, r16, r25
002260  3b300400  bneq r8, zero, 12
002264  1f840900  addli r8, r19, 0
002268  5b010000  j 8
00226c  1794f900  or r8, r19, r15
002270  9786cb01  and r13, r23, r28
002274  9304d804  setlt.u r9, r16, r13
002278  3bb00400  bneq r9, zero, 12
00227c  9f840b00  addli r9, r23, 0
002280  5b010000  j 8
002284  9794fb00  or r9, r23, r15
002288  170acc01  and r20, r24, r28
00228c  13064805  setlt.u r12, r16, r20
002290  3b500600  bneq r12, zero, 20
002294  1f060c00  addli r12, r24, 0
002298  138a4105  setlt.u r20, r3, r20
00229c  37500a00  beq r20, zero, 20
0022a0  db040000  j 36
0022a4  1716fc00  or r12, r24, r15
0022a8  138a4105  setlt.u r20, r3, r20
0022ac  3b600a00  bneq r20, zero, 24
0022b0  1b460c01  srli r12, r24, 16
0022b4  1b061600  andi r12, r12, 1
0022b8  0b16cc10  add.s r12, r24, r12
0022bc  0b161610  add.s r12, r12, r1
0022c0  17066600  and r12, r12, r6
0022c4  9386d104  setlt.u r13, r3, r13
0022c8  37e00600  beq r13, zero, 24
0022cc  93869105  setlt.u r13, r3, r25
0022d0  b7b00600  beq r13, zero, 44
0022d4  9386e104  setlt.u r13, r3, r14
0022d8  bbbc06fe  bneq r13, zero, -212
0022dc  db070000  j 60
0022e0  9bc40b01  srli r9, r23, 16
0022e4  9b841400  andi r9, r9, 1
0022e8  8b949b10  add.s r9, r23, r9
0022ec  8b941410  add.s r9, r9, r1
0022f0  97846400  and r9, r9, r6
0022f4  93869105  setlt.u r13, r3, r25
0022f8  3bff06fe  bneq r13, zero, -36
0022fc  1bc40901  srli r8, r19, 16
002300  1b041400  andi r8, r8, 1
002304  0b948910  add.s r8, r19, r8
002308  0b141410  add.s r8, r8, r1
00230c  17046400  and r8, r8, r6
002310  9386e104  setlt.u r13, r3, r14
002314  bbcb06fe  bneq r13, zero, -272
002318  9b450b01  srli r11, r22, 16
00231c  9b851500  andi r11, r11, 1
002320  8b15bb10  add.s r11, r22, r11
002324  8b951510  add.s r11, r11, r1
002328  97856500  and r11, r11, r6
00232c  5bdbffff  j -296
002330  00310002  core_id r2
002334  9f450000  addli r11, zero, 4
002338  00200100  mfence { sm }
00233c  803a0002  core_id r21
002340  1f120000  addli r4, zero, 1
002344  b7504100  beq r2, r4, 52
002348  1f210000  addli r2, zero, 2
00234c  b7962a00  beq r21, r2, 420
002350  1f310000  addli r2, zero, 3
002354  37dc2a00  beq r21, r2, 788
002358  3792ba02  beq r21, r11, 1156
00235c  1f510000  addli r2, zero, 5
002360  b7d72a02  beq r21, r2, 1524
002364  1f610000  addli r2, zero, 6
002368  b79d2a02  beq r21, r2, 1892
00236c  1f710000  addli r2, zero, 7
002370  37d32a04  beq r21, r2, 2260
002374  5b480100  j 2624
002378  1f012000  addli r2, zero, 16
00237c  3d000000  xfence
002380  00a00300  mfence { lm, sm, gm }
002384  33020128  zext_int2long r[5:6], r2
002388  5b030000  j 24
00238c  6b528fca  load.d r[5:6], -856(r30)
002390  6b540fc9  load.d r[9:10], -880(r30)
002394  13214404  setlt.ul r2, r[9:10], r[5:6]
002398  27120400  addli.d r[5:6], r[9:10], 1
00239c  37150100  beq r2, zero, 324
0023a0  1f710000  addli r2, zero, 7
0023a4  b3080028  zext_int2long r[18:19], zero
0023a8  73384fc8  store.d r[5:6], -880(r30)
0023ac  17362202  sll.d r[13:14], r[5:6], r2
0023b0  db040000  j 36
0023b4  a7c80800  addli.d r[18:19], r[18:19], 4
0023b8  0b912310  add.s r2, r7, r2
0023bc  93a2a803  setneq.d r5, r[18:19], r[27:28]
0023c0  7366b100  stores.w r11, 12(r2)
0023c4  73643101  stores.w r19, 8(r2)
0023c8  73627101  stores.w r23, 4(r2)
0023cc  73604100  stores.w r4, 0(r2)
0023d0  b7fe02fe  beq r5, zero, -68
0023d4  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
0023d8  1b312200  slli r2, r4, 2
0023dc  0b122510  add.s r4, r10, r2
0023e0  6f4bc200  loads.w r22, 12(r4)
0023e4  6f4c0200  loads.w r24, 0(r4)
0023e8  ef444200  loads.w r9, 4(r4)
0023ec  6f448200  loads.w r8, 8(r4)
0023f0  1707cb01  and r14, r22, r28
0023f4  1302e804  setlt.u r4, r16, r14
0023f8  3b300200  bneq r4, zero, 12
0023fc  9f050b00  addli r11, r22, 0
002400  5b010000  j 8
002404  9715fb00  or r11, r22, r15
002408  970cc401  and r25, r8, r28
00240c  13029805  setlt.u r4, r16, r25
002410  3b300200  bneq r4, zero, 12
002414  9f090400  addli r19, r8, 0
002418  5b010000  j 8
00241c  9719f400  or r19, r8, r15
002420  9782c401  and r5, r9, r28
002424  13025804  setlt.u r4, r16, r5
002428  3b300200  bneq r4, zero, 12
00242c  9f8b0400  addli r23, r9, 0
002430  5b010000  j 8
002434  979bf400  or r23, r9, r15
002438  170acc01  and r20, r24, r28
00243c  13024805  setlt.u r4, r16, r20
002440  3b500200  bneq r4, zero, 20
002444  1f020c00  addli r4, r24, 0
002448  138a4105  setlt.u r20, r3, r20
00244c  37500a00  beq r20, zero, 20
002450  db040000  j 36
002454  1712fc00  or r4, r24, r15
002458  138a4105  setlt.u r20, r3, r20
00245c  3b600a00  bneq r20, zero, 24
002460  1b420c01  srli r4, r24, 16
002464  1b021200  andi r4, r4, 1
002468  0b124c10  add.s r4, r24, r4
00246c  0b121210  add.s r4, r4, r1
002470  17026200  and r4, r4, r6
002474  93825104  setlt.u r5, r3, r5
002478  37e00200  beq r5, zero, 24
00247c  93829105  setlt.u r5, r3, r25
002480  b7b00200  beq r5, zero, 44
002484  9382e104  setlt.u r5, r3, r14
002488  bbbc02fe  bneq r5, zero, -212
00248c  db070000  j 60
002490  9bc20401  srli r5, r9, 16
002494  9b821200  andi r5, r5, 1
002498  8b925410  add.s r5, r9, r5
00249c  8b921210  add.s r5, r5, r1
0024a0  978b6200  and r23, r5, r6
0024a4  93829105  setlt.u r5, r3, r25
0024a8  3bff02fe  bneq r5, zero, -36
0024ac  9b420401  srli r5, r8, 16
0024b0  9b821200  andi r5, r5, 1
0024b4  8b125410  add.s r5, r8, r5
0024b8  8b921210  add.s r5, r5, r1
0024bc  97896200  and r19, r5, r6
0024c0  9382e104  setlt.u r5, r3, r14
0024c4  bbcb02fe  bneq r5, zero, -272
0024c8  9b420b01  srli r5, r22, 16
0024cc  9b821200  andi r5, r5, 1
0024d0  8b125b10  add.s r5, r22, r5
0024d4  8b921210  add.s r5, r5, r1
0024d8  97856200  and r11, r5, r6
0024dc  5bdbffff  j -296
0024e0  9f450000  addli r11, zero, 4
0024e4  00200100  mfence { sm }
0024e8  1f210000  addli r2, zero, 2
0024ec  bb992afe  bneq r21, r2, -412
0024f0  1f014000  addli r2, zero, 32
0024f4  3d000000  xfence
0024f8  00a00300  mfence { lm, sm, gm }
0024fc  33020128  zext_int2long r[5:6], r2
002500  5b030000  j 24
002504  6b520fcb  load.d r[5:6], -848(r30)
002508  6b540fc9  load.d r[9:10], -880(r30)
00250c  13214404  setlt.ul r2, r[9:10], r[5:6]
002510  27120400  addli.d r[5:6], r[9:10], 1
002514  37150100  beq r2, zero, 324
002518  1f710000  addli r2, zero, 7
00251c  b3080028  zext_int2long r[18:19], zero
002520  73384fc8  store.d r[5:6], -880(r30)
002524  17362202  sll.d r[13:14], r[5:6], r2
002528  db040000  j 36
00252c  a7c80800  addli.d r[18:19], r[18:19], 4
002530  0b912310  add.s r2, r7, r2
002534  93a2a803  setneq.d r5, r[18:19], r[27:28]
002538  7366b100  stores.w r11, 12(r2)
00253c  73643101  stores.w r19, 8(r2)
002540  73627101  stores.w r23, 4(r2)
002544  73604100  stores.w r4, 0(r2)
002548  b7fe02fe  beq r5, zero, -68
00254c  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
002550  1b312200  slli r2, r4, 2
002554  0b122510  add.s r4, r10, r2
002558  6f4bc200  loads.w r22, 12(r4)
00255c  6f4c0200  loads.w r24, 0(r4)
002560  ef444200  loads.w r9, 4(r4)
002564  6f448200  loads.w r8, 8(r4)
002568  1707cb01  and r14, r22, r28
00256c  1302e804  setlt.u r4, r16, r14
002570  3b300200  bneq r4, zero, 12
002574  9f050b00  addli r11, r22, 0
002578  5b010000  j 8
00257c  9715fb00  or r11, r22, r15
002580  970cc401  and r25, r8, r28
002584  13029805  setlt.u r4, r16, r25
002588  3b300200  bneq r4, zero, 12
00258c  9f090400  addli r19, r8, 0
002590  5b010000  j 8
002594  9719f400  or r19, r8, r15
002598  9782c401  and r5, r9, r28
00259c  13025804  setlt.u r4, r16, r5
0025a0  3b300200  bneq r4, zero, 12
0025a4  9f8b0400  addli r23, r9, 0
0025a8  5b010000  j 8
0025ac  979bf400  or r23, r9, r15
0025b0  170acc01  and r20, r24, r28
0025b4  13024805  setlt.u r4, r16, r20
0025b8  3b500200  bneq r4, zero, 20
0025bc  1f020c00  addli r4, r24, 0
0025c0  138a4105  setlt.u r20, r3, r20
0025c4  37500a00  beq r20, zero, 20
0025c8  db040000  j 36
0025cc  1712fc00  or r4, r24, r15
0025d0  138a4105  setlt.u r20, r3, r20
0025d4  3b600a00  bneq r20, zero, 24
0025d8  1b420c01  srli r4, r24, 16
0025dc  1b021200  andi r4, r4, 1
0025e0  0b124c10  add.s r4, r24, r4
0025e4  0b121210  add.s r4, r4, r1
0025e8  17026200  and r4, r4, r6
0025ec  93825104  setlt.u r5, r3, r5
0025f0  37e00200  beq r5, zero, 24
0025f4  93829105  setlt.u r5, r3, r25
0025f8  b7b00200  beq r5, zero, 44
0025fc  9382e104  setlt.u r5, r3, r14
002600  bbbc02fe  bneq r5, zero, -212
002604  db070000  j 60
002608  9bc20401  srli r5, r9, 16
00260c  9b821200  andi r5, r5, 1
002610  8b925410  add.s r5, r9, r5
002614  8b921210  add.s r5, r5, r1
002618  978b6200  and r23, r5, r6
00261c  93829105  setlt.u r5, r3, r25
002620  3bff02fe  bneq r5, zero, -36
002624  9b420401  srli r5, r8, 16
002628  9b821200  andi r5, r5, 1
00262c  8b125410  add.s r5, r8, r5
002630  8b921210  add.s r5, r5, r1
002634  97896200  and r19, r5, r6
002638  9382e104  setlt.u r5, r3, r14
00263c  bbcb02fe  bneq r5, zero, -272
002640  9b420b01  srli r5, r22, 16
002644  9b821200  andi r5, r5, 1
002648  8b125b10  add.s r5, r22, r5
00264c  8b921210  add.s r5, r5, r1
002650  97856200  and r11, r5, r6
002654  5bdbffff  j -296
002658  9f450000  addli r11, zero, 4
00265c  00200100  mfence { sm }
002660  1f310000  addli r2, zero, 3
002664  bbd32afe  bneq r21, r2, -780
002668  1f016000  addli r2, zero, 48
00266c  3d000000  xfence
002670  00a00300  mfence { lm, sm, gm }
002674  33020128  zext_int2long r[5:6], r2
002678  5b030000  j 24
00267c  6b528fcb  load.d r[5:6], -840(r30)
002680  6b540fc9  load.d r[9:10], -880(r30)
002684  13214404  setlt.ul r2, r[9:10], r[5:6]
002688  27120400  addli.d r[5:6], r[9:10], 1
00268c  37150100  beq r2, zero, 324
002690  1f710000  addli r2, zero, 7
002694  b3080028  zext_int2long r[18:19], zero
002698  73384fc8  store.d r[5:6], -880(r30)
00269c  17362202  sll.d r[13:14], r[5:6], r2
0026a0  db040000  j 36
0026a4  a7c80800  addli.d r[18:19], r[18:19], 4
0026a8  0b912310  add.s r2, r7, r2
0026ac  93a2a803  setneq.d r5, r[18:19], r[27:28]
0026b0  7366b100  stores.w r11, 12(r2)
0026b4  73643101  stores.w r19, 8(r2)
0026b8  73627101  stores.w r23, 4(r2)
0026bc  73604100  stores.w r4, 0(r2)
0026c0  b7fe02fe  beq r5, zero, -68
0026c4  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
0026c8  1b312200  slli r2, r4, 2
0026cc  0b122510  add.s r4, r10, r2
0026d0  6f4bc200  loads.w r22, 12(r4)
0026d4  6f4c0200  loads.w r24, 0(r4)
0026d8  ef444200  loads.w r9, 4(r4)
0026dc  6f448200  loads.w r8, 8(r4)
0026e0  1707cb01  and r14, r22, r28
0026e4  1302e804  setlt.u r4, r16, r14
0026e8  3b300200  bneq r4, zero, 12
0026ec  9f050b00  addli r11, r22, 0
0026f0  5b010000  j 8
0026f4  9715fb00  or r11, r22, r15
0026f8  970cc401  and r25, r8, r28
0026fc  13029805  setlt.u r4, r16, r25
002700  3b300200  bneq r4, zero, 12
002704  9f090400  addli r19, r8, 0
002708  5b010000  j 8
00270c  9719f400  or r19, r8, r15
002710  9782c401  and r5, r9, r28
002714  13025804  setlt.u r4, r16, r5
002718  3b300200  bneq r4, zero, 12
00271c  9f8b0400  addli r23, r9, 0
002720  5b010000  j 8
002724  979bf400  or r23, r9, r15
002728  170acc01  and r20, r24, r28
00272c  13024805  setlt.u r4, r16, r20
002730  3b500200  bneq r4, zero, 20
002734  1f020c00  addli r4, r24, 0
002738  138a4105  setlt.u r20, r3, r20
00273c  37500a00  beq r20, zero, 20
002740  db040000  j 36
002744  1712fc00  or r4, r24, r15
002748  138a4105  setlt.u r20, r3, r20
00274c  3b600a00  bneq r20, zero, 24
002750  1b420c01  srli r4, r24, 16
002754  1b021200  andi r4, r4, 1
002758  0b124c10  add.s r4, r24, r4
00275c  0b121210  add.s r4, r4, r1
002760  17026200  and r4, r4, r6
002764  93825104  setlt.u r5, r3, r5
002768  37e00200  beq r5, zero, 24
00276c  93829105  setlt.u r5, r3, r25
002770  b7b00200  beq r5, zero, 44
002774  9382e104  setlt.u r5, r3, r14
002778  bbbc02fe  bneq r5, zero, -212
00277c  db070000  j 60
002780  9bc20401  srli r5, r9, 16
002784  9b821200  andi r5, r5, 1
002788  8b925410  add.s r5, r9, r5
00278c  8b921210  add.s r5, r5, r1
002790  978b6200  and r23, r5, r6
002794  93829105  setlt.u r5, r3, r25
002798  3bff02fe  bneq r5, zero, -36
00279c  9b420401  srli r5, r8, 16
0027a0  9b821200  andi r5, r5, 1
0027a4  8b125410  add.s r5, r8, r5
0027a8  8b921210  add.s r5, r5, r1
0027ac  97896200  and r19, r5, r6
0027b0  9382e104  setlt.u r5, r3, r14
0027b4  bbcb02fe  bneq r5, zero, -272
0027b8  9b420b01  srli r5, r22, 16
0027bc  9b821200  andi r5, r5, 1
0027c0  8b125b10  add.s r5, r22, r5
0027c4  8b921210  add.s r5, r5, r1
0027c8  97856200  and r11, r5, r6
0027cc  5bdbffff  j -296
0027d0  9f450000  addli r11, zero, 4
0027d4  00200100  mfence { sm }
0027d8  3b9ebafc  bneq r21, r11, -1148
0027dc  1f018000  addli r2, zero, 64
0027e0  3d000000  xfence
0027e4  00a00300  mfence { lm, sm, gm }
0027e8  33020128  zext_int2long r[5:6], r2
0027ec  5b030000  j 24
0027f0  6b520fcc  load.d r[5:6], -832(r30)
0027f4  6b540fc9  load.d r[9:10], -880(r30)
0027f8  13214404  setlt.ul r2, r[9:10], r[5:6]
0027fc  27120400  addli.d r[5:6], r[9:10], 1
002800  37150100  beq r2, zero, 324
002804  1f710000  addli r2, zero, 7
002808  b3080028  zext_int2long r[18:19], zero
00280c  73384fc8  store.d r[5:6], -880(r30)
002810  17362202  sll.d r[13:14], r[5:6], r2
002814  db040000  j 36
002818  a7c80800  addli.d r[18:19], r[18:19], 4
00281c  0b912310  add.s r2, r7, r2
002820  93a2a803  setneq.d r5, r[18:19], r[27:28]
002824  7366b100  stores.w r11, 12(r2)
002828  73643101  stores.w r19, 8(r2)
00282c  73627101  stores.w r23, 4(r2)
002830  73604100  stores.w r4, 0(r2)
002834  b7fe02fe  beq r5, zero, -68
002838  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
00283c  1b312200  slli r2, r4, 2
002840  0b122510  add.s r4, r10, r2
002844  6f4bc200  loads.w r22, 12(r4)
002848  6f4c0200  loads.w r24, 0(r4)
00284c  ef444200  loads.w r9, 4(r4)
002850  6f448200  loads.w r8, 8(r4)
002854  1707cb01  and r14, r22, r28
002858  1302e804  setlt.u r4, r16, r14
00285c  3b300200  bneq r4, zero, 12
002860  9f050b00  addli r11, r22, 0
002864  5b010000  j 8
002868  9715fb00  or r11, r22, r15
00286c  970cc401  and r25, r8, r28
002870  13029805  setlt.u r4, r16, r25
002874  3b300200  bneq r4, zero, 12
002878  9f090400  addli r19, r8, 0
00287c  5b010000  j 8
002880  9719f400  or r19, r8, r15
002884  9782c401  and r5, r9, r28
002888  13025804  setlt.u r4, r16, r5
00288c  3b300200  bneq r4, zero, 12
002890  9f8b0400  addli r23, r9, 0
002894  5b010000  j 8
002898  979bf400  or r23, r9, r15
00289c  170acc01  and r20, r24, r28
0028a0  13024805  setlt.u r4, r16, r20
0028a4  3b500200  bneq r4, zero, 20
0028a8  1f020c00  addli r4, r24, 0
0028ac  138a4105  setlt.u r20, r3, r20
0028b0  37500a00  beq r20, zero, 20
0028b4  db040000  j 36
0028b8  1712fc00  or r4, r24, r15
0028bc  138a4105  setlt.u r20, r3, r20
0028c0  3b600a00  bneq r20, zero, 24
0028c4  1b420c01  srli r4, r24, 16
0028c8  1b021200  andi r4, r4, 1
0028cc  0b124c10  add.s r4, r24, r4
0028d0  0b121210  add.s r4, r4, r1
0028d4  17026200  and r4, r4, r6
0028d8  93825104  setlt.u r5, r3, r5
0028dc  37e00200  beq r5, zero, 24
0028e0  93829105  setlt.u r5, r3, r25
0028e4  b7b00200  beq r5, zero, 44
0028e8  9382e104  setlt.u r5, r3, r14
0028ec  bbbc02fe  bneq r5, zero, -212
0028f0  db070000  j 60
0028f4  9bc20401  srli r5, r9, 16
0028f8  9b821200  andi r5, r5, 1
0028fc  8b925410  add.s r5, r9, r5
002900  8b921210  add.s r5, r5, r1
002904  978b6200  and r23, r5, r6
002908  93829105  setlt.u r5, r3, r25
00290c  3bff02fe  bneq r5, zero, -36
002910  9b420401  srli r5, r8, 16
002914  9b821200  andi r5, r5, 1
002918  8b125410  add.s r5, r8, r5
00291c  8b921210  add.s r5, r5, r1
002920  97896200  and r19, r5, r6
002924  9382e104  setlt.u r5, r3, r14
002928  bbcb02fe  bneq r5, zero, -272
00292c  9b420b01  srli r5, r22, 16
002930  9b821200  andi r5, r5, 1
002934  8b125b10  add.s r5, r22, r5
002938  8b921210  add.s r5, r5, r1
00293c  97856200  and r11, r5, r6
002940  5bdbffff  j -296
002944  9f450000  addli r11, zero, 4
002948  00200100  mfence { sm }
00294c  1f510000  addli r2, zero, 5
002950  3bd82afc  bneq r21, r2, -1516
002954  1f01a000  addli r2, zero, 80
002958  3d000000  xfence
00295c  00a00300  mfence { lm, sm, gm }
002960  33020128  zext_int2long r[5:6], r2
002964  5b030000  j 24
002968  6b528fcc  load.d r[5:6], -824(r30)
00296c  6b540fc9  load.d r[9:10], -880(r30)
002970  13214404  setlt.ul r2, r[9:10], r[5:6]
002974  27120400  addli.d r[5:6], r[9:10], 1
002978  37150100  beq r2, zero, 324
00297c  1f710000  addli r2, zero, 7
002980  b3080028  zext_int2long r[18:19], zero
002984  73384fc8  store.d r[5:6], -880(r30)
002988  17362202  sll.d r[13:14], r[5:6], r2
00298c  db040000  j 36
002990  a7c80800  addli.d r[18:19], r[18:19], 4
002994  0b912310  add.s r2, r7, r2
002998  93a2a803  setneq.d r5, r[18:19], r[27:28]
00299c  7366b100  stores.w r11, 12(r2)
0029a0  73643101  stores.w r19, 8(r2)
0029a4  73627101  stores.w r23, 4(r2)
0029a8  73604100  stores.w r4, 0(r2)
0029ac  b7fe02fe  beq r5, zero, -68
0029b0  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
0029b4  1b312200  slli r2, r4, 2
0029b8  0b122510  add.s r4, r10, r2
0029bc  6f4bc200  loads.w r22, 12(r4)
0029c0  6f4c0200  loads.w r24, 0(r4)
0029c4  ef444200  loads.w r9, 4(r4)
0029c8  6f448200  loads.w r8, 8(r4)
0029cc  1707cb01  and r14, r22, r28
0029d0  1302e804  setlt.u r4, r16, r14
0029d4  3b300200  bneq r4, zero, 12
0029d8  9f050b00  addli r11, r22, 0
0029dc  5b010000  j 8
0029e0  9715fb00  or r11, r22, r15
0029e4  970cc401  and r25, r8, r28
0029e8  13029805  setlt.u r4, r16, r25
0029ec  3b300200  bneq r4, zero, 12
0029f0  9f090400  addli r19, r8, 0
0029f4  5b010000  j 8
0029f8  9719f400  or r19, r8, r15
0029fc  9782c401  and r5, r9, r28
002a00  13025804  setlt.u r4, r16, r5
002a04  3b300200  bneq r4, zero, 12
002a08  9f8b0400  addli r23, r9, 0
002a0c  5b010000  j 8
002a10  979bf400  or r23, r9, r15
002a14  170acc01  and r20, r24, r28
002a18  13024805  setlt.u r4, r16, r20
002a1c  3b500200  bneq r4, zero, 20
002a20  1f020c00  addli r4, r24, 0
002a24  138a4105  setlt.u r20, r3, r20
002a28  37500a00  beq r20, zero, 20
002a2c  db040000  j 36
002a30  1712fc00  or r4, r24, r15
002a34  138a4105  setlt.u r20, r3, r20
002a38  3b600a00  bneq r20, zero, 24
002a3c  1b420c01  srli r4, r24, 16
002a40  1b021200  andi r4, r4, 1
002a44  0b124c10  add.s r4, r24, r4
002a48  0b121210  add.s r4, r4, r1
002a4c  17026200  and r4, r4, r6
002a50  93825104  setlt.u r5, r3, r5
002a54  37e00200  beq r5, zero, 24
002a58  93829105  setlt.u r5, r3, r25
002a5c  b7b00200  beq r5, zero, 44
002a60  9382e104  setlt.u r5, r3, r14
002a64  bbbc02fe  bneq r5, zero, -212
002a68  db070000  j 60
002a6c  9bc20401  srli r5, r9, 16
002a70  9b821200  andi r5, r5, 1
002a74  8b925410  add.s r5, r9, r5
002a78  8b921210  add.s r5, r5, r1
002a7c  978b6200  and r23, r5, r6
002a80  93829105  setlt.u r5, r3, r25
002a84  3bff02fe  bneq r5, zero, -36
002a88  9b420401  srli r5, r8, 16
002a8c  9b821200  andi r5, r5, 1
002a90  8b125410  add.s r5, r8, r5
002a94  8b921210  add.s r5, r5, r1
002a98  97896200  and r19, r5, r6
002a9c  9382e104  setlt.u r5, r3, r14
002aa0  bbcb02fe  bneq r5, zero, -272
002aa4  9b420b01  srli r5, r22, 16
002aa8  9b821200  andi r5, r5, 1
002aac  8b125b10  add.s r5, r22, r5
002ab0  8b921210  add.s r5, r5, r1
002ab4  97856200  and r11, r5, r6
002ab8  5bdbffff  j -296
002abc  9f450000  addli r11, zero, 4
002ac0  00200100  mfence { sm }
002ac4  1f610000  addli r2, zero, 6
002ac8  bb922afc  bneq r21, r2, -1884
002acc  1f01c000  addli r2, zero, 96
002ad0  3d000000  xfence
002ad4  00a00300  mfence { lm, sm, gm }
002ad8  33020128  zext_int2long r[5:6], r2
002adc  5b030000  j 24
002ae0  6b520fcd  load.d r[5:6], -816(r30)
002ae4  6b540fc9  load.d r[9:10], -880(r30)
002ae8  13214404  setlt.ul r2, r[9:10], r[5:6]
002aec  27120400  addli.d r[5:6], r[9:10], 1
002af0  37150100  beq r2, zero, 324
002af4  1f710000  addli r2, zero, 7
002af8  b3080028  zext_int2long r[18:19], zero
002afc  73384fc8  store.d r[5:6], -880(r30)
002b00  17362202  sll.d r[13:14], r[5:6], r2
002b04  db040000  j 36
002b08  a7c80800  addli.d r[18:19], r[18:19], 4
002b0c  0b912310  add.s r2, r7, r2
002b10  93a2a803  setneq.d r5, r[18:19], r[27:28]
002b14  7366b100  stores.w r11, 12(r2)
002b18  73643101  stores.w r19, 8(r2)
002b1c  73627101  stores.w r23, 4(r2)
002b20  73604100  stores.w r4, 0(r2)
002b24  b7fe02fe  beq r5, zero, -68
002b28  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
002b2c  1b312200  slli r2, r4, 2
002b30  0b122510  add.s r4, r10, r2
002b34  6f4bc200  loads.w r22, 12(r4)
002b38  6f4c0200  loads.w r24, 0(r4)
002b3c  ef444200  loads.w r9, 4(r4)
002b40  6f448200  loads.w r8, 8(r4)
002b44  1707cb01  and r14, r22, r28
002b48  1302e804  setlt.u r4, r16, r14
002b4c  3b300200  bneq r4, zero, 12
002b50  9f050b00  addli r11, r22, 0
002b54  5b010000  j 8
002b58  9715fb00  or r11, r22, r15
002b5c  970cc401  and r25, r8, r28
002b60  13029805  setlt.u r4, r16, r25
002b64  3b300200  bneq r4, zero, 12
002b68  9f090400  addli r19, r8, 0
002b6c  5b010000  j 8
002b70  9719f400  or r19, r8, r15
002b74  9782c401  and r5, r9, r28
002b78  13025804  setlt.u r4, r16, r5
002b7c  3b300200  bneq r4, zero, 12
002b80  9f8b0400  addli r23, r9, 0
002b84  5b010000  j 8
002b88  979bf400  or r23, r9, r15
002b8c  170acc01  and r20, r24, r28
002b90  13024805  setlt.u r4, r16, r20
002b94  3b500200  bneq r4, zero, 20
002b98  1f020c00  addli r4, r24, 0
002b9c  138a4105  setlt.u r20, r3, r20
002ba0  37500a00  beq r20, zero, 20
002ba4  db040000  j 36
002ba8  1712fc00  or r4, r24, r15
002bac  138a4105  setlt.u r20, r3, r20
002bb0  3b600a00  bneq r20, zero, 24
002bb4  1b420c01  srli r4, r24, 16
002bb8  1b021200  andi r4, r4, 1
002bbc  0b124c10  add.s r4, r24, r4
002bc0  0b121210  add.s r4, r4, r1
002bc4  17026200  and r4, r4, r6
002bc8  93825104  setlt.u r5, r3, r5
002bcc  37e00200  beq r5, zero, 24
002bd0  93829105  setlt.u r5, r3, r25
002bd4  b7b00200  beq r5, zero, 44
002bd8  9382e104  setlt.u r5, r3, r14
002bdc  bbbc02fe  bneq r5, zero, -212
002be0  db070000  j 60
002be4  9bc20401  srli r5, r9, 16
002be8  9b821200  andi r5, r5, 1
002bec  8b925410  add.s r5, r9, r5
002bf0  8b921210  add.s r5, r5, r1
002bf4  978b6200  and r23, r5, r6
002bf8  93829105  setlt.u r5, r3, r25
002bfc  3bff02fe  bneq r5, zero, -36
002c00  9b420401  srli r5, r8, 16
002c04  9b821200  andi r5, r5, 1
002c08  8b125410  add.s r5, r8, r5
002c0c  8b921210  add.s r5, r5, r1
002c10  97896200  and r19, r5, r6
002c14  9382e104  setlt.u r5, r3, r14
002c18  bbcb02fe  bneq r5, zero, -272
002c1c  9b420b01  srli r5, r22, 16
002c20  9b821200  andi r5, r5, 1
002c24  8b125b10  add.s r5, r22, r5
002c28  8b921210  add.s r5, r5, r1
002c2c  97856200  and r11, r5, r6
002c30  5bdbffff  j -296
002c34  9f450000  addli r11, zero, 4
002c38  00200100  mfence { sm }
002c3c  1f710000  addli r2, zero, 7
002c40  bbd52a00  bneq r21, r2, 372
002c44  1f01e000  addli r2, zero, 112
002c48  3d000000  xfence
002c4c  9f7a0000  addli r21, zero, 7
002c50  00a00300  mfence { lm, sm, gm }
002c54  33020128  zext_int2long r[5:6], r2
002c58  5b030000  j 24
002c5c  6b520fce  load.d r[5:6], -800(r30)
002c60  6b540fc9  load.d r[9:10], -880(r30)
002c64  13214404  setlt.ul r2, r[9:10], r[5:6]
002c68  27120400  addli.d r[5:6], r[9:10], 1
002c6c  37050100  beq r2, zero, 320
002c70  17365203  sll.d r[13:14], r[5:6], r21
002c74  b3080028  zext_int2long r[18:19], zero
002c78  73384fc8  store.d r[5:6], -880(r30)
002c7c  db040000  j 36
002c80  a7c80800  addli.d r[18:19], r[18:19], 4
002c84  0b912310  add.s r2, r7, r2
002c88  93a2a803  setneq.d r5, r[18:19], r[27:28]
002c8c  7366b100  stores.w r11, 12(r2)
002c90  73643101  stores.w r19, 8(r2)
002c94  73627101  stores.w r23, 4(r2)
002c98  73604100  stores.w r4, 0(r2)
002c9c  378f02fe  beq r5, zero, -64
002ca0  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
002ca4  1b312200  slli r2, r4, 2
002ca8  0b122510  add.s r4, r10, r2
002cac  6f4bc200  loads.w r22, 12(r4)
002cb0  6f4c0200  loads.w r24, 0(r4)
002cb4  ef444200  loads.w r9, 4(r4)
002cb8  6f448200  loads.w r8, 8(r4)
002cbc  1707cb01  and r14, r22, r28
002cc0  1302e804  setlt.u r4, r16, r14
002cc4  3b300200  bneq r4, zero, 12
002cc8  9f050b00  addli r11, r22, 0
002ccc  5b010000  j 8
002cd0  9715fb00  or r11, r22, r15
002cd4  970cc401  and r25, r8, r28
002cd8  13029805  setlt.u r4, r16, r25
002cdc  3b300200  bneq r4, zero, 12
002ce0  9f090400  addli r19, r8, 0
002ce4  5b010000  j 8
002ce8  9719f400  or r19, r8, r15
002cec  9782c401  and r5, r9, r28
002cf0  13025804  setlt.u r4, r16, r5
002cf4  3b300200  bneq r4, zero, 12
002cf8  9f8b0400  addli r23, r9, 0
002cfc  5b010000  j 8
002d00  979bf400  or r23, r9, r15
002d04  170acc01  and r20, r24, r28
002d08  13024805  setlt.u r4, r16, r20
002d0c  3b500200  bneq r4, zero, 20
002d10  1f020c00  addli r4, r24, 0
002d14  138a4105  setlt.u r20, r3, r20
002d18  37500a00  beq r20, zero, 20
002d1c  db040000  j 36
002d20  1712fc00  or r4, r24, r15
002d24  138a4105  setlt.u r20, r3, r20
002d28  3b600a00  bneq r20, zero, 24
002d2c  1b420c01  srli r4, r24, 16
002d30  1b021200  andi r4, r4, 1
002d34  0b124c10  add.s r4, r24, r4
002d38  0b121210  add.s r4, r4, r1
002d3c  17026200  and r4, r4, r6
002d40  93825104  setlt.u r5, r3, r5
002d44  37e00200  beq r5, zero, 24
002d48  93829105  setlt.u r5, r3, r25
002d4c  b7b00200  beq r5, zero, 44
002d50  9382e104  setlt.u r5, r3, r14
002d54  bbbc02fe  bneq r5, zero, -212
002d58  db070000  j 60
002d5c  9bc20401  srli r5, r9, 16
002d60  9b821200  andi r5, r5, 1
002d64  8b925410  add.s r5, r9, r5
002d68  8b921210  add.s r5, r5, r1
002d6c  978b6200  and r23, r5, r6
002d70  93829105  setlt.u r5, r3, r25
002d74  3bff02fe  bneq r5, zero, -36
002d78  9b420401  srli r5, r8, 16
002d7c  9b821200  andi r5, r5, 1
002d80  8b125410  add.s r5, r8, r5
002d84  8b921210  add.s r5, r5, r1
002d88  97896200  and r19, r5, r6
002d8c  9382e104  setlt.u r5, r3, r14
002d90  bbcb02fe  bneq r5, zero, -272
002d94  9b420b01  srli r5, r22, 16
002d98  9b821200  andi r5, r5, 1
002d9c  8b125b10  add.s r5, r22, r5
002da0  8b921210  add.s r5, r5, r1
002da4  97856200  and r11, r5, r6
002da8  5bdbffff  j -296
002dac  9f450000  addli r11, zero, 4
002db0  00200100  mfence { sm }
002db4  1f71f001  addli r2, zero, 255
002db8  80320002  core_id r5
002dbc  1f320000  addli r4, zero, 3
002dc0  80220104  csr_set csr5, r2
002dc4  00e00200  sync_core
002dc8  bb814200  bneq r5, r4, 96
002dcc  1f611000  addli r2, zero, 14
002dd0  7d000100  xsignal r2, 0
002dd4  1f711000  addli r2, zero, 15
002dd8  7d000100  xsignal r2, 0
002ddc  1f411000  addli r2, zero, 12
002de0  7d000100  xsignal r2, 0
002de4  1f412000  addli r2, zero, 20
002de8  7d000100  xsignal r2, 0
002dec  6301cfff  loadli.w r2,  -32(r30)
002df0  e302efff  loadli.w r5,  -16(r30)
002df4  0b124138  mod.s r4, r2, r4
002df8  1f110100  addli r2, r2, 1
002dfc  670e2ffe  storeli.w r2, -32(r30)
002e00  1b310201  slli r2, r4, 16
002e04  1f920200  addli r4, r5, 1
002e08  e3427ff8  loadli.w r5,  -964(r30)
002e0c  670f4ffe  storeli.w r4, -16(r30)
002e10  0b155110  add.s r10, r2, r5
002e14  1f511000  addli r2, zero, 13
002e18  7d100100  xwait r2, 0
002e1c  1f712000  addli r2, zero, 23
002e20  7d100100  xwait r2, 0
002e24  db370000  j 444
002e28  6301cfff  loadli.w r2,  -32(r30)
002e2c  e3447ff8  loadli.w r9,  -964(r30)
002e30  1f340000  addli r8, zero, 3
002e34  9f782000  addli r17, zero, 23
002e38  0b124138  mod.s r4, r2, r4
002e3c  1f110100  addli r2, r2, 1
002e40  670e2ffe  storeli.w r2, -32(r30)
002e44  1f510000  addli r2, zero, 5
002e48  1b320201  slli r4, r4, 16
002e4c  0b159210  add.s r10, r4, r9
002e50  3b962200  bneq r5, r2, 388
002e54  1f411000  addli r2, zero, 12
002e58  1f270000  addli r14, zero, 2
002e5c  9f140000  addli r9, zero, 1
002e60  ab0200c1  lui r5, 790528
002e64  1f020000  addli r4, zero, 0
002e68  7d100100  xwait r2, 0
002e6c  1f013000  addli r2, zero, 24
002e70  7d100100  xwait r2, 0
002e74  1d000700  lock zero, r14
002e78  1f511000  addli r2, zero, 13
002e7c  0d000002  ew_cfg zero, zero, zero, 1
002e80  6b560fc4  load.d r[13:14], -960(r30)
002e84  0d800604  ew_cfg zero, r13, zero, 2
002e88  8d050006  ew_cfg r11, zero, zero, 3
002e8c  8d850526  ew_cfg r11, r11, zero, 19
002e90  0d010014  ew_cfg r2, zero, zero, 10
002e94  63017ff8  loadli.w r2,  -968(r30)
002e98  0d872416  ew_cfg r14, r9, r2, 11
002e9c  2b81ff40  lui r2, 266232
002ea0  0d00801a  ew_cfg zero, zero, r8, 13
002ea4  8d82251c  ew_cfg r5, r11, r2, 14
002ea8  2b01803f  lui r2, 260096
002eac  0d00011e  ew_cfg zero, r2, zero, 15
002eb0  4da50300  sslut r10, r7, 0
002eb4  0d000014  ew_cfg zero, zero, zero, 10
002eb8  0d000026  ew_cfg zero, zero, zero, 19
002ebc  1d100700  unlock r14
002ec0  6301efff  loadli.w r2,  -16(r30)
002ec4  8b128138  mod.s r5, r2, r8
002ec8  1f110100  addli r2, r2, 1
002ecc  670f2ffe  storeli.w r2, -16(r30)
002ed0  1f611000  addli r2, zero, 14
002ed4  7d100100  xwait r2, 0
002ed8  1f113000  addli r2, zero, 25
002edc  7d100100  xwait r2, 0
002ee0  1d000700  lock zero, r14
002ee4  1bb10201  slli r2, r5, 16
002ee8  0d000002  ew_cfg zero, zero, zero, 1
002eec  e3426ff8  loadli.w r5,  -972(r30)
002ef0  0b115110  add.s r2, r2, r5
002ef4  9f72f000  addli r5, zero, 127
002ef8  0d800204  ew_cfg zero, r5, zero, 2
002efc  8d040006  ew_cfg r9, zero, zero, 3
002f00  ab040100  lui r9, 16
002f04  e3026ff8  loadli.w r5,  -976(r30)
002f08  8d120000  ewcoeff_cfg r5, zero, zero, 0
002f0c  8b124110  add.s r5, r2, r4
002f10  0b944310  add.s r8, r7, r4
002f14  1f020204  addli r4, r4, 512
002f18  ad228400  dscmpnsel r5, r8, r8, 0
002f1c  bb4f92fe  bneq r4, r9, -16
002f20  9f220000  addli r5, zero, 2
002f24  1f020000  addli r4, zero, 0
002f28  1d900200  unlock r5
002f2c  1d800200  lock zero, r5
002f30  9f72f000  addli r5, zero, 127
002f34  0d000002  ew_cfg zero, zero, zero, 1
002f38  0d800204  ew_cfg zero, r5, zero, 2
002f3c  9f120000  addli r5, zero, 1
002f40  8d020006  ew_cfg r5, zero, zero, 3
002f44  8d110000  ewcoeff_cfg r3, zero, zero, 0
002f48  8b124110  add.s r5, r2, r4
002f4c  1f020204  addli r4, r4, 512
002f50  ada25208  dscmpnsel r5, r5, r5, 4
002f54  bb5f92fe  bneq r4, r9, -12
002f58  1f240000  addli r8, zero, 2
002f5c  1f721000  addli r4, zero, 15
002f60  ab04803f  lui r9, 260096
002f64  1d100400  unlock r8
002f68  7d100200  xwait r4, 0
002f6c  1d000400  lock zero, r8
002f70  2b0280bf  lui r4, 784384
002f74  0d000002  ew_cfg zero, zero, zero, 1
002f78  8d140200  ewcoeff_cfg r9, r4, zero, 0
002f7c  6b520fc4  load.d r[5:6], -960(r30)
002f80  0d800204  ew_cfg zero, r5, zero, 2
002f84  8d050006  ew_cfg r11, zero, zero, 3
002f88  8d85b526  ew_cfg r11, r11, r11, 19
002f8c  ad832300  dsmadd r7, r7, r2, 0
002f90  1f113000  addli r2, zero, 25
002f94  0d000026  ew_cfg zero, zero, zero, 19
002f98  1d100400  unlock r8
002f9c  7d000100  xsignal r2, 0
002fa0  1d000400  lock zero, r8
002fa4  1f511000  addli r2, zero, 13
002fa8  0d000002  ew_cfg zero, zero, zero, 1
002fac  8d940400  ewcoeff_cfg r9, r9, zero, 0
002fb0  0d800204  ew_cfg zero, r5, zero, 2
002fb4  8d050006  ew_cfg r11, zero, zero, 3
002fb8  8d85b526  ew_cfg r11, r11, r11, 19
002fbc  2d057500  dsmadd r10, r10, r7, 0
002fc0  0d000026  ew_cfg zero, zero, zero, 19
002fc4  1d100400  unlock r8
002fc8  7d000100  xsignal r2, 0
002fcc  7d800800  xsignal r17, 0
002fd0  5b020000  j 16
002fd4  6301efff  loadli.w r2,  -16(r30)
002fd8  1f110100  addli r2, r2, 1
002fdc  670f2ffe  storeli.w r2, -16(r30)
002fe0  1f71f001  addli r2, zero, 255
002fe4  3d000000  xfence
002fe8  00a00300  mfence { lm, sm, gm }
002fec  80220104  csr_set csr5, r2
002ff0  0b91a318  sub.s r2, r7, r10
002ff4  67482ff8  storeli.w r2, -892(r30)
002ff8  00310002  core_id r2
002ffc  00e00200  sync_core
003000  bb770100  bneq r2, zero, 508
003004  63420ff9  loadli.w r4,  -892(r30)
003008  1f012000  addli r2, zero, 16
00300c  9f7a0000  addli r21, zero, 7
003010  13012204  setlt.u r2, r4, r2
003014  33020028  zext_int2long r[5:6], zero
003018  e7082ff8  storeli.w r2, -888(r30)
00301c  3d000000  xfence
003020  00a00300  mfence { lm, sm, gm }
003024  5b030000  j 24
003028  6b528fc9  load.d r[5:6], -872(r30)
00302c  6b540fc9  load.d r[9:10], -880(r30)
003030  13214404  setlt.ul r2, r[9:10], r[5:6]
003034  27120400  addli.d r[5:6], r[9:10], 1
003038  b7660100  beq r2, zero, 440
00303c  63011ff9  loadli.w r2,  -888(r30)
003040  97385203  sll.d r[18:19], r[5:6], r21
003044  73384fc8  store.d r[5:6], -880(r30)
003048  b7510100  beq r2, zero, 116
00304c  33040028  zext_int2long r[9:10], zero
003050  db030000  j 28
003054  eb550fce  load.d r[12:13], -800(r30)
003058  0b912310  add.s r2, r7, r2
00305c  73604100  stores.w r4, 0(r2)
003060  9322b404  setlt.ul r5, r[9:10], r[12:13]
003064  27140400  addli.d r[9:10], r[9:10], 1
003068  378f02fe  beq r5, zero, -64
00306c  0b221411  add.ul r[5:6], r[9:10], r[18:19]
003070  1b312200  slli r2, r4, 2
003074  0b122510  add.s r4, r10, r2
003078  ef420200  loads.w r5, 0(r4)
00307c  9785c201  and r11, r5, r28
003080  1302b804  setlt.u r4, r16, r11
003084  3b500200  bneq r4, zero, 20
003088  1f820200  addli r4, r5, 0
00308c  9385b104  setlt.u r11, r3, r11
003090  3b9f05fe  bneq r11, zero, -60
003094  5b020000  j 16
003098  1792f200  or r4, r5, r15
00309c  9385b104  setlt.u r11, r3, r11
0030a0  bbde05fe  bneq r11, zero, -76
0030a4  1bc20201  srli r4, r5, 16
0030a8  1b021200  andi r4, r4, 1
0030ac  0b924210  add.s r4, r5, r4
0030b0  0b121210  add.s r4, r4, r1
0030b4  17026200  and r4, r4, r6
0030b8  dbf3ffff  j -100
0030bc  330c0028  zext_int2long r[25:26], zero
0030c0  db040000  j 36
0030c4  274c0c00  addli.d r[25:26], r[25:26], 4
0030c8  0b912310  add.s r2, r7, r2
0030cc  1322ac01  seteq.d r4, r[25:26], r[27:28]
0030d0  7366d100  stores.w r13, 12(r2)
0030d4  7364e100  stores.w r14, 8(r2)
0030d8  7362c100  stores.w r12, 4(r2)
0030dc  73609100  stores.w r9, 0(r2)
0030e0  3b2d02fe  bneq r4, zero, -184
0030e4  0b221c11  add.ul r[5:6], r[25:26], r[18:19]
0030e8  1b312200  slli r2, r4, 2
0030ec  8b142510  add.s r9, r10, r2
0030f0  6fcbc400  loads.w r22, 12(r9)
0030f4  9705cb01  and r11, r22, r28
0030f8  1302b804  setlt.u r4, r16, r11
0030fc  3b300200  bneq r4, zero, 12
003100  9f060b00  addli r13, r22, 0
003104  5b010000  j 8
003108  9716fb00  or r13, r22, r15
00310c  efc98400  loads.w r19, 8(r9)
003110  978bc901  and r23, r19, r28
003114  13027805  setlt.u r4, r16, r23
003118  3b300200  bneq r4, zero, 12
00311c  1f870900  addli r14, r19, 0
003120  5b010000  j 8
003124  1797f900  or r14, r19, r15
003128  6fc44400  loads.w r8, 4(r9)
00312c  1702c401  and r4, r8, r28
003130  93024804  setlt.u r5, r16, r4
003134  3bb00200  bneq r5, zero, 12
003138  1f060400  addli r12, r8, 0
00313c  5b010000  j 8
003140  1716f400  or r12, r8, r15
003144  efc20400  loads.w r5, 0(r9)
003148  178ac201  and r20, r5, r28
00314c  93044805  setlt.u r9, r16, r20
003150  3bd00400  bneq r9, zero, 20
003154  9f840200  addli r9, r5, 0
003158  138a4105  setlt.u r20, r3, r20
00315c  37500a00  beq r20, zero, 20
003160  db040000  j 36
003164  9794f200  or r9, r5, r15
003168  138a4105  setlt.u r20, r3, r20
00316c  3b600a00  bneq r20, zero, 24
003170  9bc40201  srli r9, r5, 16
003174  9b841400  andi r9, r9, 1
003178  8b929210  add.s r5, r5, r9
00317c  8b921210  add.s r5, r5, r1
003180  97846200  and r9, r5, r6
003184  13824104  setlt.u r4, r3, r4
003188  37600200  beq r4, zero, 24
00318c  13827105  setlt.u r4, r3, r23
003190  b7300200  beq r4, zero, 44
003194  1382b104  setlt.u r4, r3, r11
003198  bb3c02fe  bneq r4, zero, -212
00319c  db070000  j 60
0031a0  1b420401  srli r4, r8, 16
0031a4  1b021200  andi r4, r4, 1
0031a8  0b124410  add.s r4, r8, r4
0031ac  0b121210  add.s r4, r4, r1
0031b0  17066200  and r12, r4, r6
0031b4  13827105  setlt.u r4, r3, r23
0031b8  3b7f02fe  bneq r4, zero, -36
0031bc  1bc20901  srli r4, r19, 16
0031c0  1b021200  andi r4, r4, 1
0031c4  0b924910  add.s r4, r19, r4
0031c8  0b121210  add.s r4, r4, r1
0031cc  17076200  and r14, r4, r6
0031d0  1382b104  setlt.u r4, r3, r11
0031d4  bb4b02fe  bneq r4, zero, -272
0031d8  1b420b01  srli r4, r22, 16
0031dc  1b021200  andi r4, r4, 1
0031e0  0b124b10  add.s r4, r22, r4
0031e4  0b121210  add.s r4, r4, r1
0031e8  97066200  and r13, r4, r6
0031ec  5bdbffff  j -296
0031f0  00310002  core_id r2
0031f4  9f450000  addli r11, zero, 4
0031f8  00200100  mfence { sm }
0031fc  803a0002  core_id r21
003200  1f120000  addli r4, zero, 1
003204  b7504100  beq r2, r4, 52
003208  1f210000  addli r2, zero, 2
00320c  b7a82a00  beq r21, r2, 552
003210  1f310000  addli r2, zero, 3
003214  b7802a02  beq r21, r2, 1056
003218  37e8ba02  beq r21, r11, 1560
00321c  1f510000  addli r2, zero, 5
003220  37b02a04  beq r21, r2, 2060
003224  1f610000  addli r2, zero, 6
003228  37982a04  beq r21, r2, 2564
00322c  1f710000  addli r2, zero, 7
003230  b7ff2a04  beq r21, r2, 3068
003234  5bbf0100  j 3576
003238  63420ff9  loadli.w r4,  -892(r30)
00323c  1f012000  addli r2, zero, 16
003240  13022204  setlt.u r4, r4, r2
003244  67094ff8  storeli.w r4, -880(r30)
003248  33020128  zext_int2long r[5:6], r2
00324c  3d000000  xfence
003250  00a00300  mfence { lm, sm, gm }
003254  5b030000  j 24
003258  6b528fca  load.d r[5:6], -856(r30)
00325c  6b548fc9  load.d r[9:10], -872(r30)
003260  13214404  setlt.ul r2, r[9:10], r[5:6]
003264  27120400  addli.d r[5:6], r[9:10], 1
003268  b7760100  beq r2, zero, 444
00326c  1f710000  addli r2, zero, 7
003270  733c4fc8  store.d r[5:6], -872(r30)
003274  97382202  sll.d r[18:19], r[5:6], r2
003278  63012ff9  loadli.w r2,  -880(r30)
00327c  b7510100  beq r2, zero, 116
003280  33040028  zext_int2long r[9:10], zero
003284  db030000  j 28
003288  eb550fce  load.d r[12:13], -800(r30)
00328c  0b912310  add.s r2, r7, r2
003290  73604100  stores.w r4, 0(r2)
003294  9322b404  setlt.ul r5, r[9:10], r[12:13]
003298  27140400  addli.d r[9:10], r[9:10], 1
00329c  b7fe02fe  beq r5, zero, -68
0032a0  0b221411  add.ul r[5:6], r[9:10], r[18:19]
0032a4  1b312200  slli r2, r4, 2
0032a8  0b122510  add.s r4, r10, r2
0032ac  ef420200  loads.w r5, 0(r4)
0032b0  9785c201  and r11, r5, r28
0032b4  1302b804  setlt.u r4, r16, r11
0032b8  3b500200  bneq r4, zero, 20
0032bc  1f820200  addli r4, r5, 0
0032c0  9385b104  setlt.u r11, r3, r11
0032c4  3b9f05fe  bneq r11, zero, -60
0032c8  5b020000  j 16
0032cc  1792f200  or r4, r5, r15
0032d0  9385b104  setlt.u r11, r3, r11
0032d4  bbde05fe  bneq r11, zero, -76
0032d8  1bc20201  srli r4, r5, 16
0032dc  1b021200  andi r4, r4, 1
0032e0  0b924210  add.s r4, r5, r4
0032e4  0b121210  add.s r4, r4, r1
0032e8  17026200  and r4, r4, r6
0032ec  dbf3ffff  j -100
0032f0  330c0028  zext_int2long r[25:26], zero
0032f4  db040000  j 36
0032f8  274c0c00  addli.d r[25:26], r[25:26], 4
0032fc  0b912310  add.s r2, r7, r2
003300  1322ac01  seteq.d r4, r[25:26], r[27:28]
003304  7366d100  stores.w r13, 12(r2)
003308  7364e100  stores.w r14, 8(r2)
00330c  7362c100  stores.w r12, 4(r2)
003310  73609100  stores.w r9, 0(r2)
003314  3b1d02fe  bneq r4, zero, -188
003318  0b221c11  add.ul r[5:6], r[25:26], r[18:19]
00331c  1b312200  slli r2, r4, 2
003320  8b142510  add.s r9, r10, r2
003324  6fcbc400  loads.w r22, 12(r9)
003328  9705cb01  and r11, r22, r28
00332c  1302b804  setlt.u r4, r16, r11
003330  3b300200  bneq r4, zero, 12
003334  9f060b00  addli r13, r22, 0
003338  5b010000  j 8
00333c  9716fb00  or r13, r22, r15
003340  efc98400  loads.w r19, 8(r9)
003344  978bc901  and r23, r19, r28
003348  13027805  setlt.u r4, r16, r23
00334c  3b300200  bneq r4, zero, 12
003350  1f870900  addli r14, r19, 0
003354  5b010000  j 8
003358  1797f900  or r14, r19, r15
00335c  6fc44400  loads.w r8, 4(r9)
003360  1702c401  and r4, r8, r28
003364  93024804  setlt.u r5, r16, r4
003368  3bb00200  bneq r5, zero, 12
00336c  1f060400  addli r12, r8, 0
003370  5b010000  j 8
003374  1716f400  or r12, r8, r15
003378  efc20400  loads.w r5, 0(r9)
00337c  178ac201  and r20, r5, r28
003380  93044805  setlt.u r9, r16, r20
003384  3bd00400  bneq r9, zero, 20
003388  9f840200  addli r9, r5, 0
00338c  138a4105  setlt.u r20, r3, r20
003390  37500a00  beq r20, zero, 20
003394  db040000  j 36
003398  9794f200  or r9, r5, r15
00339c  138a4105  setlt.u r20, r3, r20
0033a0  3b600a00  bneq r20, zero, 24
0033a4  9bc40201  srli r9, r5, 16
0033a8  9b841400  andi r9, r9, 1
0033ac  8b929210  add.s r5, r5, r9
0033b0  8b921210  add.s r5, r5, r1
0033b4  97846200  and r9, r5, r6
0033b8  13824104  setlt.u r4, r3, r4
0033bc  37600200  beq r4, zero, 24
0033c0  13827105  setlt.u r4, r3, r23
0033c4  b7300200  beq r4, zero, 44
0033c8  1382b104  setlt.u r4, r3, r11
0033cc  bb3c02fe  bneq r4, zero, -212
0033d0  db070000  j 60
0033d4  1b420401  srli r4, r8, 16
0033d8  1b021200  andi r4, r4, 1
0033dc  0b124410  add.s r4, r8, r4
0033e0  0b121210  add.s r4, r4, r1
0033e4  17066200  and r12, r4, r6
0033e8  13827105  setlt.u r4, r3, r23
0033ec  3b7f02fe  bneq r4, zero, -36
0033f0  1bc20901  srli r4, r19, 16
0033f4  1b021200  andi r4, r4, 1
0033f8  0b924910  add.s r4, r19, r4
0033fc  0b121210  add.s r4, r4, r1
003400  17076200  and r14, r4, r6
003404  1382b104  setlt.u r4, r3, r11
003408  bb4b02fe  bneq r4, zero, -272
00340c  1b420b01  srli r4, r22, 16
003410  1b021200  andi r4, r4, 1
003414  0b124b10  add.s r4, r22, r4
003418  0b121210  add.s r4, r4, r1
00341c  97066200  and r13, r4, r6
003420  5bdbffff  j -296
003424  9f450000  addli r11, zero, 4
003428  00200100  mfence { sm }
00342c  1f210000  addli r2, zero, 2
003430  bb872afe  bneq r21, r2, -544
003434  63420ff9  loadli.w r4,  -892(r30)
003438  1f012000  addli r2, zero, 16
00343c  13012204  setlt.u r2, r4, r2
003440  e7092ff8  storeli.w r2, -872(r30)
003444  1f014000  addli r2, zero, 32
003448  3d000000  xfence
00344c  33020128  zext_int2long r[5:6], r2
003450  00a00300  mfence { lm, sm, gm }
003454  5b030000  j 24
003458  6b520fcb  load.d r[5:6], -848(r30)
00345c  6b548fca  load.d r[9:10], -856(r30)
003460  13214404  setlt.ul r2, r[9:10], r[5:6]
003464  27120400  addli.d r[5:6], r[9:10], 1
003468  b7760100  beq r2, zero, 444
00346c  1f710000  addli r2, zero, 7
003470  73344fca  store.d r[5:6], -856(r30)
003474  97382202  sll.d r[18:19], r[5:6], r2
003478  63013ff9  loadli.w r2,  -872(r30)
00347c  b7510100  beq r2, zero, 116
003480  33040028  zext_int2long r[9:10], zero
003484  db030000  j 28
003488  eb550fce  load.d r[12:13], -800(r30)
00348c  0b912310  add.s r2, r7, r2
003490  73604100  stores.w r4, 0(r2)
003494  9322b404  setlt.ul r5, r[9:10], r[12:13]
003498  27140400  addli.d r[9:10], r[9:10], 1
00349c  b7fe02fe  beq r5, zero, -68
0034a0  0b221411  add.ul r[5:6], r[9:10], r[18:19]
0034a4  1b312200  slli r2, r4, 2
0034a8  0b122510  add.s r4, r10, r2
0034ac  ef420200  loads.w r5, 0(r4)
0034b0  9785c201  and r11, r5, r28
0034b4  1302b804  setlt.u r4, r16, r11
0034b8  3b500200  bneq r4, zero, 20
0034bc  1f820200  addli r4, r5, 0
0034c0  9385b104  setlt.u r11, r3, r11
0034c4  3b9f05fe  bneq r11, zero, -60
0034c8  5b020000  j 16
0034cc  1792f200  or r4, r5, r15
0034d0  9385b104  setlt.u r11, r3, r11
0034d4  bbde05fe  bneq r11, zero, -76
0034d8  1bc20201  srli r4, r5, 16
0034dc  1b021200  andi r4, r4, 1
0034e0  0b924210  add.s r4, r5, r4
0034e4  0b121210  add.s r4, r4, r1
0034e8  17026200  and r4, r4, r6
0034ec  dbf3ffff  j -100
0034f0  330c0028  zext_int2long r[25:26], zero
0034f4  db040000  j 36
0034f8  274c0c00  addli.d r[25:26], r[25:26], 4
0034fc  0b912310  add.s r2, r7, r2
003500  1322ac01  seteq.d r4, r[25:26], r[27:28]
003504  7366d100  stores.w r13, 12(r2)
003508  7364e100  stores.w r14, 8(r2)
00350c  7362c100  stores.w r12, 4(r2)
003510  73609100  stores.w r9, 0(r2)
003514  3b1d02fe  bneq r4, zero, -188
003518  0b221c11  add.ul r[5:6], r[25:26], r[18:19]
00351c  1b312200  slli r2, r4, 2
003520  8b142510  add.s r9, r10, r2
003524  6fcbc400  loads.w r22, 12(r9)
003528  9705cb01  and r11, r22, r28
00352c  1302b804  setlt.u r4, r16, r11
003530  3b300200  bneq r4, zero, 12
003534  9f060b00  addli r13, r22, 0
003538  5b010000  j 8
00353c  9716fb00  or r13, r22, r15
003540  efc98400  loads.w r19, 8(r9)
003544  978bc901  and r23, r19, r28
003548  13027805  setlt.u r4, r16, r23
00354c  3b300200  bneq r4, zero, 12
003550  1f870900  addli r14, r19, 0
003554  5b010000  j 8
003558  1797f900  or r14, r19, r15
00355c  6fc44400  loads.w r8, 4(r9)
003560  1702c401  and r4, r8, r28
003564  93024804  setlt.u r5, r16, r4
003568  3bb00200  bneq r5, zero, 12
00356c  1f060400  addli r12, r8, 0
003570  5b010000  j 8
003574  1716f400  or r12, r8, r15
003578  efc20400  loads.w r5, 0(r9)
00357c  178ac201  and r20, r5, r28
003580  93044805  setlt.u r9, r16, r20
003584  3bd00400  bneq r9, zero, 20
003588  9f840200  addli r9, r5, 0
00358c  138a4105  setlt.u r20, r3, r20
003590  37500a00  beq r20, zero, 20
003594  db040000  j 36
003598  9794f200  or r9, r5, r15
00359c  138a4105  setlt.u r20, r3, r20
0035a0  3b600a00  bneq r20, zero, 24
0035a4  9bc40201  srli r9, r5, 16
0035a8  9b841400  andi r9, r9, 1
0035ac  8b929210  add.s r5, r5, r9
0035b0  8b921210  add.s r5, r5, r1
0035b4  97846200  and r9, r5, r6
0035b8  13824104  setlt.u r4, r3, r4
0035bc  37600200  beq r4, zero, 24
0035c0  13827105  setlt.u r4, r3, r23
0035c4  b7300200  beq r4, zero, 44
0035c8  1382b104  setlt.u r4, r3, r11
0035cc  bb3c02fe  bneq r4, zero, -212
0035d0  db070000  j 60
0035d4  1b420401  srli r4, r8, 16
0035d8  1b021200  andi r4, r4, 1
0035dc  0b124410  add.s r4, r8, r4
0035e0  0b121210  add.s r4, r4, r1
0035e4  17066200  and r12, r4, r6
0035e8  13827105  setlt.u r4, r3, r23
0035ec  3b7f02fe  bneq r4, zero, -36
0035f0  1bc20901  srli r4, r19, 16
0035f4  1b021200  andi r4, r4, 1
0035f8  0b924910  add.s r4, r19, r4
0035fc  0b121210  add.s r4, r4, r1
003600  17076200  and r14, r4, r6
003604  1382b104  setlt.u r4, r3, r11
003608  bb4b02fe  bneq r4, zero, -272
00360c  1b420b01  srli r4, r22, 16
003610  1b021200  andi r4, r4, 1
003614  0b124b10  add.s r4, r22, r4
003618  0b121210  add.s r4, r4, r1
00361c  97066200  and r13, r4, r6
003620  5bdbffff  j -296
003624  9f450000  addli r11, zero, 4
003628  00200100  mfence { sm }
00362c  1f310000  addli r2, zero, 3
003630  bbaf2afc  bneq r21, r2, -1048
003634  63420ff9  loadli.w r4,  -892(r30)
003638  1f012000  addli r2, zero, 16
00363c  13012204  setlt.u r2, r4, r2
003640  e70a2ff8  storeli.w r2, -856(r30)
003644  1f016000  addli r2, zero, 48
003648  3d000000  xfence
00364c  33020128  zext_int2long r[5:6], r2
003650  00a00300  mfence { lm, sm, gm }
003654  5b030000  j 24
003658  6b528fcb  load.d r[5:6], -840(r30)
00365c  6b540fcb  load.d r[9:10], -848(r30)
003660  13214404  setlt.ul r2, r[9:10], r[5:6]
003664  27120400  addli.d r[5:6], r[9:10], 1
003668  b7760100  beq r2, zero, 444
00366c  1f710000  addli r2, zero, 7
003670  73384fca  store.d r[5:6], -848(r30)
003674  17362202  sll.d r[13:14], r[5:6], r2
003678  63015ff9  loadli.w r2,  -856(r30)
00367c  b7510100  beq r2, zero, 116
003680  33020028  zext_int2long r[5:6], zero
003684  db030000  j 28
003688  eb580fce  load.d r[18:19], -800(r30)
00368c  0b912310  add.s r2, r7, r2
003690  73608100  stores.w r8, 0(r2)
003694  93241205  setlt.ul r9, r[5:6], r[18:19]
003698  27120200  addli.d r[5:6], r[5:6], 1
00369c  b7fe04fe  beq r9, zero, -68
0036a0  0b24c210  add.ul r[9:10], r[5:6], r[13:14]
0036a4  1b312400  slli r2, r8, 2
0036a8  0b142510  add.s r8, r10, r2
0036ac  ef440400  loads.w r9, 0(r8)
0036b0  9785c401  and r11, r9, r28
0036b4  1304b804  setlt.u r8, r16, r11
0036b8  3b500400  bneq r8, zero, 20
0036bc  1f840400  addli r8, r9, 0
0036c0  9385b104  setlt.u r11, r3, r11
0036c4  3b9f05fe  bneq r11, zero, -60
0036c8  5b020000  j 16
0036cc  1794f400  or r8, r9, r15
0036d0  9385b104  setlt.u r11, r3, r11
0036d4  bbde05fe  bneq r11, zero, -76
0036d8  1bc40401  srli r8, r9, 16
0036dc  1b041400  andi r8, r8, 1
0036e0  0b948410  add.s r8, r9, r8
0036e4  0b141410  add.s r8, r8, r1
0036e8  17046400  and r8, r8, r6
0036ec  dbf3ffff  j -100
0036f0  330c0028  zext_int2long r[25:26], zero
0036f4  db040000  j 36
0036f8  274c0c00  addli.d r[25:26], r[25:26], 4
0036fc  0b912310  add.s r2, r7, r2
003700  1324ac01  seteq.d r8, r[25:26], r[27:28]
003704  73665100  stores.w r5, 12(r2)
003708  7364e100  stores.w r14, 8(r2)
00370c  73624100  stores.w r4, 4(r2)
003710  73609100  stores.w r9, 0(r2)
003714  3b1d04fe  bneq r8, zero, -188
003718  0b22cc10  add.ul r[5:6], r[25:26], r[13:14]
00371c  1b312200  slli r2, r4, 2
003720  8b142510  add.s r9, r10, r2
003724  6fcbc400  loads.w r22, 12(r9)
003728  9705cb01  and r11, r22, r28
00372c  1302b804  setlt.u r4, r16, r11
003730  3b300200  bneq r4, zero, 12
003734  9f020b00  addli r5, r22, 0
003738  5b010000  j 8
00373c  9712fb00  or r5, r22, r15
003740  efc98400  loads.w r19, 8(r9)
003744  978bc901  and r23, r19, r28
003748  13027805  setlt.u r4, r16, r23
00374c  3b300200  bneq r4, zero, 12
003750  1f870900  addli r14, r19, 0
003754  5b010000  j 8
003758  1797f900  or r14, r19, r15
00375c  6fc44400  loads.w r8, 4(r9)
003760  9708c401  and r17, r8, r28
003764  13021805  setlt.u r4, r16, r17
003768  3b300200  bneq r4, zero, 12
00376c  1f020400  addli r4, r8, 0
003770  5b010000  j 8
003774  1712f400  or r4, r8, r15
003778  6fc90400  loads.w r18, 0(r9)
00377c  170ac901  and r20, r18, r28
003780  93044805  setlt.u r9, r16, r20
003784  3bd00400  bneq r9, zero, 20
003788  9f040900  addli r9, r18, 0
00378c  138a4105  setlt.u r20, r3, r20
003790  37500a00  beq r20, zero, 20
003794  db040000  j 36
003798  9714f900  or r9, r18, r15
00379c  138a4105  setlt.u r20, r3, r20
0037a0  3b600a00  bneq r20, zero, 24
0037a4  9b440901  srli r9, r18, 16
0037a8  9b841400  andi r9, r9, 1
0037ac  8b149910  add.s r9, r18, r9
0037b0  8b941410  add.s r9, r9, r1
0037b4  97846400  and r9, r9, r6
0037b8  93881105  setlt.u r17, r3, r17
0037bc  37e00800  beq r17, zero, 24
0037c0  13847105  setlt.u r8, r3, r23
0037c4  b7300400  beq r8, zero, 44
0037c8  1384b104  setlt.u r8, r3, r11
0037cc  bb3c04fe  bneq r8, zero, -212
0037d0  db070000  j 60
0037d4  1b420401  srli r4, r8, 16
0037d8  1b021200  andi r4, r4, 1
0037dc  0b124410  add.s r4, r8, r4
0037e0  0b121210  add.s r4, r4, r1
0037e4  17026200  and r4, r4, r6
0037e8  13847105  setlt.u r8, r3, r23
0037ec  3b7f04fe  bneq r8, zero, -36
0037f0  1bc40901  srli r8, r19, 16
0037f4  1b041400  andi r8, r8, 1
0037f8  0b948910  add.s r8, r19, r8
0037fc  0b141410  add.s r8, r8, r1
003800  17076400  and r14, r8, r6
003804  1384b104  setlt.u r8, r3, r11
003808  bb4b04fe  bneq r8, zero, -272
00380c  9b420b01  srli r5, r22, 16
003810  9b821200  andi r5, r5, 1
003814  8b125b10  add.s r5, r22, r5
003818  8b921210  add.s r5, r5, r1
00381c  97826200  and r5, r5, r6
003820  5bdbffff  j -296
003824  9f450000  addli r11, zero, 4
003828  00200100  mfence { sm }
00382c  bbc7bafc  bneq r21, r11, -1552
003830  63420ff9  loadli.w r4,  -892(r30)
003834  1f012000  addli r2, zero, 16
003838  13012204  setlt.u r2, r4, r2
00383c  e70b2ff8  storeli.w r2, -840(r30)
003840  3d000000  xfence
003844  00a00300  mfence { lm, sm, gm }
003848  6b528fcd  load.d r[5:6], -808(r30)
00384c  5b030000  j 24
003850  6b528fcd  load.d r[5:6], -808(r30)
003854  6b540fcc  load.d r[9:10], -832(r30)
003858  13218204  setlt.ul r2, r[5:6], r[9:10]
00385c  27120200  addli.d r[5:6], r[5:6], 1
003860  b7760100  beq r2, zero, 444
003864  1f710000  addli r2, zero, 7
003868  733c4fcc  store.d r[5:6], -808(r30)
00386c  17362202  sll.d r[13:14], r[5:6], r2
003870  63017ff9  loadli.w r2,  -840(r30)
003874  b7510100  beq r2, zero, 116
003878  33040028  zext_int2long r[9:10], zero
00387c  db030000  j 28
003880  eb580fce  load.d r[18:19], -800(r30)
003884  0b912310  add.s r2, r7, r2
003888  73605100  stores.w r5, 0(r2)
00388c  13221405  setlt.ul r4, r[9:10], r[18:19]
003890  27140400  addli.d r[9:10], r[9:10], 1
003894  b77e02fe  beq r4, zero, -68
003898  0b22c410  add.ul r[5:6], r[9:10], r[13:14]
00389c  1b312200  slli r2, r4, 2
0038a0  0b122510  add.s r4, r10, r2
0038a4  6f420200  loads.w r4, 0(r4)
0038a8  9705c201  and r11, r4, r28
0038ac  9302b804  setlt.u r5, r16, r11
0038b0  3bd00200  bneq r5, zero, 20
0038b4  9f020200  addli r5, r4, 0
0038b8  9385b104  setlt.u r11, r3, r11
0038bc  3b9f05fe  bneq r11, zero, -60
0038c0  5b020000  j 16
0038c4  9712f200  or r5, r4, r15
0038c8  9385b104  setlt.u r11, r3, r11
0038cc  bbde05fe  bneq r11, zero, -76
0038d0  9b420201  srli r5, r4, 16
0038d4  9b821200  andi r5, r5, 1
0038d8  0b125210  add.s r4, r4, r5
0038dc  0b121210  add.s r4, r4, r1
0038e0  97026200  and r5, r4, r6
0038e4  dbf3ffff  j -100
0038e8  b3080028  zext_int2long r[18:19], zero
0038ec  db040000  j 36
0038f0  a7c80800  addli.d r[18:19], r[18:19], 4
0038f4  0b912310  add.s r2, r7, r2
0038f8  93a4a801  seteq.d r9, r[18:19], r[27:28]
0038fc  73665100  stores.w r5, 12(r2)
003900  7364e100  stores.w r14, 8(r2)
003904  73628100  stores.w r8, 4(r2)
003908  73604100  stores.w r4, 0(r2)
00390c  3b9d04fe  bneq r9, zero, -188
003910  0ba2c810  add.ul r[5:6], r[18:19], r[13:14]
003914  1b312200  slli r2, r4, 2
003918  8b142510  add.s r9, r10, r2
00391c  6fcbc400  loads.w r22, 12(r9)
003920  9705cb01  and r11, r22, r28
003924  1302b804  setlt.u r4, r16, r11
003928  3b300200  bneq r4, zero, 12
00392c  9f020b00  addli r5, r22, 0
003930  5b010000  j 8
003934  9712fb00  or r5, r22, r15
003938  efc98400  loads.w r19, 8(r9)
00393c  978bc901  and r23, r19, r28
003940  13027805  setlt.u r4, r16, r23
003944  3b300200  bneq r4, zero, 12
003948  1f870900  addli r14, r19, 0
00394c  5b010000  j 8
003950  1797f900  or r14, r19, r15
003954  6fcc4400  loads.w r24, 4(r9)
003958  970ccc01  and r25, r24, r28
00395c  13029805  setlt.u r4, r16, r25
003960  3b300200  bneq r4, zero, 12
003964  1f040c00  addli r8, r24, 0
003968  5b010000  j 8
00396c  1714fc00  or r8, r24, r15
003970  efc40400  loads.w r9, 0(r9)
003974  178ac401  and r20, r9, r28
003978  13024805  setlt.u r4, r16, r20
00397c  3b500200  bneq r4, zero, 20
003980  1f820400  addli r4, r9, 0
003984  138a4105  setlt.u r20, r3, r20
003988  37500a00  beq r20, zero, 20
00398c  db040000  j 36
003990  1792f400  or r4, r9, r15
003994  138a4105  setlt.u r20, r3, r20
003998  3b600a00  bneq r20, zero, 24
00399c  1bc20401  srli r4, r9, 16
0039a0  1b021200  andi r4, r4, 1
0039a4  0b924410  add.s r4, r9, r4
0039a8  0b121210  add.s r4, r4, r1
0039ac  17026200  and r4, r4, r6
0039b0  93849105  setlt.u r9, r3, r25
0039b4  37e00400  beq r9, zero, 24
0039b8  93847105  setlt.u r9, r3, r23
0039bc  b7b00400  beq r9, zero, 44
0039c0  9384b104  setlt.u r9, r3, r11
0039c4  bbbc04fe  bneq r9, zero, -212
0039c8  db070000  j 60
0039cc  1b440c01  srli r8, r24, 16
0039d0  1b041400  andi r8, r8, 1
0039d4  0b148c10  add.s r8, r24, r8
0039d8  0b141410  add.s r8, r8, r1
0039dc  17046400  and r8, r8, r6
0039e0  93847105  setlt.u r9, r3, r23
0039e4  3bff04fe  bneq r9, zero, -36
0039e8  9bc40901  srli r9, r19, 16
0039ec  9b841400  andi r9, r9, 1
0039f0  8b949910  add.s r9, r19, r9
0039f4  8b941410  add.s r9, r9, r1
0039f8  17876400  and r14, r9, r6
0039fc  9384b104  setlt.u r9, r3, r11
003a00  bbcb04fe  bneq r9, zero, -272
003a04  9b420b01  srli r5, r22, 16
003a08  9b821200  andi r5, r5, 1
003a0c  8b125b10  add.s r5, r22, r5
003a10  8b921210  add.s r5, r5, r1
003a14  97826200  and r5, r5, r6
003a18  5bdbffff  j -296
003a1c  9f450000  addli r11, zero, 4
003a20  00200100  mfence { sm }
003a24  1f510000  addli r2, zero, 5
003a28  bbff2afa  bneq r21, r2, -2052
003a2c  63420ff9  loadli.w r4,  -892(r30)
003a30  1f012000  addli r2, zero, 16
003a34  13012204  setlt.u r2, r4, r2
003a38  670c2ff8  storeli.w r2, -832(r30)
003a3c  1f01a000  addli r2, zero, 80
003a40  3d000000  xfence
003a44  33020128  zext_int2long r[5:6], r2
003a48  00a00300  mfence { lm, sm, gm }
003a4c  5b030000  j 24
003a50  6b528fcc  load.d r[5:6], -824(r30)
003a54  6b548fcd  load.d r[9:10], -808(r30)
003a58  13214404  setlt.ul r2, r[9:10], r[5:6]
003a5c  27120400  addli.d r[5:6], r[9:10], 1
003a60  b7760100  beq r2, zero, 444
003a64  1f710000  addli r2, zero, 7
003a68  733c4fcc  store.d r[5:6], -808(r30)
003a6c  97382202  sll.d r[18:19], r[5:6], r2
003a70  63018ff9  loadli.w r2,  -832(r30)
003a74  b7510100  beq r2, zero, 116
003a78  33020028  zext_int2long r[5:6], zero
003a7c  db030000  j 28
003a80  eb550fce  load.d r[12:13], -800(r30)
003a84  0b912310  add.s r2, r7, r2
003a88  73608100  stores.w r8, 0(r2)
003a8c  9324b204  setlt.ul r9, r[5:6], r[12:13]
003a90  27120200  addli.d r[5:6], r[5:6], 1
003a94  b7fe04fe  beq r9, zero, -68
003a98  0b241211  add.ul r[9:10], r[5:6], r[18:19]
003a9c  1b312400  slli r2, r8, 2
003aa0  0b142510  add.s r8, r10, r2
003aa4  ef440400  loads.w r9, 0(r8)
003aa8  9785c401  and r11, r9, r28
003aac  1304b804  setlt.u r8, r16, r11
003ab0  3b500400  bneq r8, zero, 20
003ab4  1f840400  addli r8, r9, 0
003ab8  9385b104  setlt.u r11, r3, r11
003abc  3b9f05fe  bneq r11, zero, -60
003ac0  5b020000  j 16
003ac4  1794f400  or r8, r9, r15
003ac8  9385b104  setlt.u r11, r3, r11
003acc  bbde05fe  bneq r11, zero, -76
003ad0  1bc40401  srli r8, r9, 16
003ad4  1b041400  andi r8, r8, 1
003ad8  0b948410  add.s r8, r9, r8
003adc  0b141410  add.s r8, r8, r1
003ae0  17046400  and r8, r8, r6
003ae4  dbf3ffff  j -100
003ae8  330c0028  zext_int2long r[25:26], zero
003aec  db040000  j 36
003af0  274c0c00  addli.d r[25:26], r[25:26], 4
003af4  0b912310  add.s r2, r7, r2
003af8  1324ac01  seteq.d r8, r[25:26], r[27:28]
003afc  73665100  stores.w r5, 12(r2)
003b00  7364e100  stores.w r14, 8(r2)
003b04  73624100  stores.w r4, 4(r2)
003b08  73609100  stores.w r9, 0(r2)
003b0c  3b1d04fe  bneq r8, zero, -188
003b10  0b221c11  add.ul r[5:6], r[25:26], r[18:19]
003b14  1b312200  slli r2, r4, 2
003b18  8b142510  add.s r9, r10, r2
003b1c  6fcbc400  loads.w r22, 12(r9)
003b20  9705cb01  and r11, r22, r28
003b24  1302b804  setlt.u r4, r16, r11
003b28  3b300200  bneq r4, zero, 12
003b2c  9f020b00  addli r5, r22, 0
003b30  5b010000  j 8
003b34  9712fb00  or r5, r22, r15
003b38  efc98400  loads.w r19, 8(r9)
003b3c  978bc901  and r23, r19, r28
003b40  13027805  setlt.u r4, r16, r23
003b44  3b300200  bneq r4, zero, 12
003b48  1f870900  addli r14, r19, 0
003b4c  5b010000  j 8
003b50  1797f900  or r14, r19, r15
003b54  6fc44400  loads.w r8, 4(r9)
003b58  1706c401  and r12, r8, r28
003b5c  1302c804  setlt.u r4, r16, r12
003b60  3b300200  bneq r4, zero, 12
003b64  1f020400  addli r4, r8, 0
003b68  5b010000  j 8
003b6c  1712f400  or r4, r8, r15
003b70  efc60400  loads.w r13, 0(r9)
003b74  178ac601  and r20, r13, r28
003b78  93044805  setlt.u r9, r16, r20
003b7c  3bd00400  bneq r9, zero, 20
003b80  9f840600  addli r9, r13, 0
003b84  138a4105  setlt.u r20, r3, r20
003b88  37500a00  beq r20, zero, 20
003b8c  db040000  j 36
003b90  9794f600  or r9, r13, r15
003b94  138a4105  setlt.u r20, r3, r20
003b98  3b600a00  bneq r20, zero, 24
003b9c  9bc40601  srli r9, r13, 16
003ba0  9b841400  andi r9, r9, 1
003ba4  8b949610  add.s r9, r13, r9
003ba8  8b941410  add.s r9, r9, r1
003bac  97846400  and r9, r9, r6
003bb0  1386c104  setlt.u r12, r3, r12
003bb4  37600600  beq r12, zero, 24
003bb8  13847105  setlt.u r8, r3, r23
003bbc  b7300400  beq r8, zero, 44
003bc0  1384b104  setlt.u r8, r3, r11
003bc4  bb3c04fe  bneq r8, zero, -212
003bc8  db070000  j 60
003bcc  1b420401  srli r4, r8, 16
003bd0  1b021200  andi r4, r4, 1
003bd4  0b124410  add.s r4, r8, r4
003bd8  0b121210  add.s r4, r4, r1
003bdc  17026200  and r4, r4, r6
003be0  13847105  setlt.u r8, r3, r23
003be4  3b7f04fe  bneq r8, zero, -36
003be8  1bc40901  srli r8, r19, 16
003bec  1b041400  andi r8, r8, 1
003bf0  0b948910  add.s r8, r19, r8
003bf4  0b141410  add.s r8, r8, r1
003bf8  17076400  and r14, r8, r6
003bfc  1384b104  setlt.u r8, r3, r11
003c00  bb4b04fe  bneq r8, zero, -272
003c04  9b420b01  srli r5, r22, 16
003c08  9b821200  andi r5, r5, 1
003c0c  8b125b10  add.s r5, r22, r5
003c10  8b921210  add.s r5, r5, r1
003c14  97826200  and r5, r5, r6
003c18  5bdbffff  j -296
003c1c  9f450000  addli r11, zero, 4
003c20  00200100  mfence { sm }
003c24  1f610000  addli r2, zero, 6
003c28  3b982afa  bneq r21, r2, -2556
003c2c  63420ff9  loadli.w r4,  -892(r30)
003c30  1f012000  addli r2, zero, 16
003c34  13012204  setlt.u r2, r4, r2
003c38  e70c2ff8  storeli.w r2, -824(r30)
003c3c  1f01c000  addli r2, zero, 96
003c40  3d000000  xfence
003c44  33020128  zext_int2long r[5:6], r2
003c48  00a00300  mfence { lm, sm, gm }
003c4c  5b030000  j 24
003c50  6b520fcd  load.d r[5:6], -816(r30)
003c54  6b548fcd  load.d r[9:10], -808(r30)
003c58  13214404  setlt.ul r2, r[9:10], r[5:6]
003c5c  27120400  addli.d r[5:6], r[9:10], 1
003c60  b7760100  beq r2, zero, 444
003c64  1f710000  addli r2, zero, 7
003c68  733c4fcc  store.d r[5:6], -808(r30)
003c6c  97382202  sll.d r[18:19], r[5:6], r2
003c70  63019ff9  loadli.w r2,  -824(r30)
003c74  b7510100  beq r2, zero, 116
003c78  33020028  zext_int2long r[5:6], zero
003c7c  db030000  j 28
003c80  eb550fce  load.d r[12:13], -800(r30)
003c84  0b912310  add.s r2, r7, r2
003c88  73608100  stores.w r8, 0(r2)
003c8c  9324b204  setlt.ul r9, r[5:6], r[12:13]
003c90  27120200  addli.d r[5:6], r[5:6], 1
003c94  b7fe04fe  beq r9, zero, -68
003c98  0b241211  add.ul r[9:10], r[5:6], r[18:19]
003c9c  1b312400  slli r2, r8, 2
003ca0  0b142510  add.s r8, r10, r2
003ca4  ef440400  loads.w r9, 0(r8)
003ca8  9785c401  and r11, r9, r28
003cac  1304b804  setlt.u r8, r16, r11
003cb0  3b500400  bneq r8, zero, 20
003cb4  1f840400  addli r8, r9, 0
003cb8  9385b104  setlt.u r11, r3, r11
003cbc  3b9f05fe  bneq r11, zero, -60
003cc0  5b020000  j 16
003cc4  1794f400  or r8, r9, r15
003cc8  9385b104  setlt.u r11, r3, r11
003ccc  bbde05fe  bneq r11, zero, -76
003cd0  1bc40401  srli r8, r9, 16
003cd4  1b041400  andi r8, r8, 1
003cd8  0b948410  add.s r8, r9, r8
003cdc  0b141410  add.s r8, r8, r1
003ce0  17046400  and r8, r8, r6
003ce4  dbf3ffff  j -100
003ce8  330c0028  zext_int2long r[25:26], zero
003cec  db040000  j 36
003cf0  274c0c00  addli.d r[25:26], r[25:26], 4
003cf4  0b912310  add.s r2, r7, r2
003cf8  1324ac01  seteq.d r8, r[25:26], r[27:28]
003cfc  73665100  stores.w r5, 12(r2)
003d00  7364e100  stores.w r14, 8(r2)
003d04  73624100  stores.w r4, 4(r2)
003d08  73609100  stores.w r9, 0(r2)
003d0c  3b1d04fe  bneq r8, zero, -188
003d10  0b221c11  add.ul r[5:6], r[25:26], r[18:19]
003d14  1b312200  slli r2, r4, 2
003d18  8b142510  add.s r9, r10, r2
003d1c  6fcbc400  loads.w r22, 12(r9)
003d20  9705cb01  and r11, r22, r28
003d24  1302b804  setlt.u r4, r16, r11
003d28  3b300200  bneq r4, zero, 12
003d2c  9f020b00  addli r5, r22, 0
003d30  5b010000  j 8
003d34  9712fb00  or r5, r22, r15
003d38  efc98400  loads.w r19, 8(r9)
003d3c  978bc901  and r23, r19, r28
003d40  13027805  setlt.u r4, r16, r23
003d44  3b300200  bneq r4, zero, 12
003d48  1f870900  addli r14, r19, 0
003d4c  5b010000  j 8
003d50  1797f900  or r14, r19, r15
003d54  6fc44400  loads.w r8, 4(r9)
003d58  1706c401  and r12, r8, r28
003d5c  1302c804  setlt.u r4, r16, r12
003d60  3b300200  bneq r4, zero, 12
003d64  1f020400  addli r4, r8, 0
003d68  5b010000  j 8
003d6c  1712f400  or r4, r8, r15
003d70  efc60400  loads.w r13, 0(r9)
003d74  178ac601  and r20, r13, r28
003d78  93044805  setlt.u r9, r16, r20
003d7c  3bd00400  bneq r9, zero, 20
003d80  9f840600  addli r9, r13, 0
003d84  138a4105  setlt.u r20, r3, r20
003d88  37500a00  beq r20, zero, 20
003d8c  db040000  j 36
003d90  9794f600  or r9, r13, r15
003d94  138a4105  setlt.u r20, r3, r20
003d98  3b600a00  bneq r20, zero, 24
003d9c  9bc40601  srli r9, r13, 16
003da0  9b841400  andi r9, r9, 1
003da4  8b949610  add.s r9, r13, r9
003da8  8b941410  add.s r9, r9, r1
003dac  97846400  and r9, r9, r6
003db0  1386c104  setlt.u r12, r3, r12
003db4  37600600  beq r12, zero, 24
003db8  13847105  setlt.u r8, r3, r23
003dbc  b7300400  beq r8, zero, 44
003dc0  1384b104  setlt.u r8, r3, r11
003dc4  bb3c04fe  bneq r8, zero, -212
003dc8  db070000  j 60
003dcc  1b420401  srli r4, r8, 16
003dd0  1b021200  andi r4, r4, 1
003dd4  0b124410  add.s r4, r8, r4
003dd8  0b121210  add.s r4, r4, r1
003ddc  17026200  and r4, r4, r6
003de0  13847105  setlt.u r8, r3, r23
003de4  3b7f04fe  bneq r8, zero, -36
003de8  1bc40901  srli r8, r19, 16
003dec  1b041400  andi r8, r8, 1
003df0  0b948910  add.s r8, r19, r8
003df4  0b141410  add.s r8, r8, r1
003df8  17076400  and r14, r8, r6
003dfc  1384b104  setlt.u r8, r3, r11
003e00  bb4b04fe  bneq r8, zero, -272
003e04  9b420b01  srli r5, r22, 16
003e08  9b821200  andi r5, r5, 1
003e0c  8b125b10  add.s r5, r22, r5
003e10  8b921210  add.s r5, r5, r1
003e14  97826200  and r5, r5, r6
003e18  5bdbffff  j -296
003e1c  9f450000  addli r11, zero, 4
003e20  00200100  mfence { sm }
003e24  1f710000  addli r2, zero, 7
003e28  3b982a00  bneq r21, r2, 516
003e2c  63420ff9  loadli.w r4,  -892(r30)
003e30  1f012000  addli r2, zero, 16
003e34  9f7a0000  addli r21, zero, 7
003e38  13012204  setlt.u r2, r4, r2
003e3c  33020028  zext_int2long r[5:6], zero
003e40  73344fcc  store.d r[5:6], -824(r30)
003e44  670d2ff8  storeli.w r2, -816(r30)
003e48  1f01e000  addli r2, zero, 112
003e4c  3d000000  xfence
003e50  33020128  zext_int2long r[5:6], r2
003e54  00a00300  mfence { lm, sm, gm }
003e58  5b030000  j 24
003e5c  6b520fce  load.d r[5:6], -800(r30)
003e60  6b548fcd  load.d r[9:10], -808(r30)
003e64  13214404  setlt.ul r2, r[9:10], r[5:6]
003e68  27120400  addli.d r[5:6], r[9:10], 1
003e6c  b7660100  beq r2, zero, 440
003e70  6301aff9  loadli.w r2,  -816(r30)
003e74  17365203  sll.d r[13:14], r[5:6], r21
003e78  733c4fcc  store.d r[5:6], -808(r30)
003e7c  b7510100  beq r2, zero, 116
003e80  33020028  zext_int2long r[5:6], zero
003e84  db030000  j 28
003e88  eb580fce  load.d r[18:19], -800(r30)
003e8c  0b912310  add.s r2, r7, r2
003e90  73608100  stores.w r8, 0(r2)
003e94  93241205  setlt.ul r9, r[5:6], r[18:19]
003e98  27120200  addli.d r[5:6], r[5:6], 1
003e9c  378f04fe  beq r9, zero, -64
003ea0  0b24c210  add.ul r[9:10], r[5:6], r[13:14]
003ea4  1b312400  slli r2, r8, 2
003ea8  0b142510  add.s r8, r10, r2
003eac  ef440400  loads.w r9, 0(r8)
003eb0  9785c401  and r11, r9, r28
003eb4  1304b804  setlt.u r8, r16, r11
003eb8  3b500400  bneq r8, zero, 20
003ebc  1f840400  addli r8, r9, 0
003ec0  9385b104  setlt.u r11, r3, r11
003ec4  3b9f05fe  bneq r11, zero, -60
003ec8  5b020000  j 16
003ecc  1794f400  or r8, r9, r15
003ed0  9385b104  setlt.u r11, r3, r11
003ed4  bbde05fe  bneq r11, zero, -76
003ed8  1bc40401  srli r8, r9, 16
003edc  1b041400  andi r8, r8, 1
003ee0  0b948410  add.s r8, r9, r8
003ee4  0b141410  add.s r8, r8, r1
003ee8  17046400  and r8, r8, r6
003eec  dbf3ffff  j -100
003ef0  6b5c8fcc  load.d r[25:26], -824(r30)
003ef4  db040000  j 36
003ef8  274c0c00  addli.d r[25:26], r[25:26], 4
003efc  0b912310  add.s r2, r7, r2
003f00  1324ac01  seteq.d r8, r[25:26], r[27:28]
003f04  73665100  stores.w r5, 12(r2)
003f08  7364e100  stores.w r14, 8(r2)
003f0c  73624100  stores.w r4, 4(r2)
003f10  73609100  stores.w r9, 0(r2)
003f14  3b2d04fe  bneq r8, zero, -184
003f18  0b22cc10  add.ul r[5:6], r[25:26], r[13:14]
003f1c  1b312200  slli r2, r4, 2
003f20  8b142510  add.s r9, r10, r2
003f24  6fcbc400  loads.w r22, 12(r9)
003f28  9705cb01  and r11, r22, r28
003f2c  1302b804  setlt.u r4, r16, r11
003f30  3b300200  bneq r4, zero, 12
003f34  9f020b00  addli r5, r22, 0
003f38  5b010000  j 8
003f3c  9712fb00  or r5, r22, r15
003f40  efc98400  loads.w r19, 8(r9)
003f44  978bc901  and r23, r19, r28
003f48  13027805  setlt.u r4, r16, r23
003f4c  3b300200  bneq r4, zero, 12
003f50  1f870900  addli r14, r19, 0
003f54  5b010000  j 8
003f58  1797f900  or r14, r19, r15
003f5c  6fc44400  loads.w r8, 4(r9)
003f60  9708c401  and r17, r8, r28
003f64  13021805  setlt.u r4, r16, r17
003f68  3b300200  bneq r4, zero, 12
003f6c  1f020400  addli r4, r8, 0
003f70  5b010000  j 8
003f74  1712f400  or r4, r8, r15
003f78  6fc90400  loads.w r18, 0(r9)
003f7c  170ac901  and r20, r18, r28
003f80  93044805  setlt.u r9, r16, r20
003f84  3bd00400  bneq r9, zero, 20
003f88  9f040900  addli r9, r18, 0
003f8c  138a4105  setlt.u r20, r3, r20
003f90  37500a00  beq r20, zero, 20
003f94  db040000  j 36
003f98  9714f900  or r9, r18, r15
003f9c  138a4105  setlt.u r20, r3, r20
003fa0  3b600a00  bneq r20, zero, 24
003fa4  9b440901  srli r9, r18, 16
003fa8  9b841400  andi r9, r9, 1
003fac  8b149910  add.s r9, r18, r9
003fb0  8b941410  add.s r9, r9, r1
003fb4  97846400  and r9, r9, r6
003fb8  93881105  setlt.u r17, r3, r17
003fbc  37e00800  beq r17, zero, 24
003fc0  13847105  setlt.u r8, r3, r23
003fc4  b7300400  beq r8, zero, 44
003fc8  1384b104  setlt.u r8, r3, r11
003fcc  bb3c04fe  bneq r8, zero, -212
003fd0  db070000  j 60
003fd4  1b420401  srli r4, r8, 16
003fd8  1b021200  andi r4, r4, 1
003fdc  0b124410  add.s r4, r8, r4
003fe0  0b121210  add.s r4, r4, r1
003fe4  17026200  and r4, r4, r6
003fe8  13847105  setlt.u r8, r3, r23
003fec  3b7f04fe  bneq r8, zero, -36
003ff0  1bc40901  srli r8, r19, 16
003ff4  1b041400  andi r8, r8, 1
003ff8  0b948910  add.s r8, r19, r8
003ffc  0b141410  add.s r8, r8, r1
004000  17076400  and r14, r8, r6
004004  1384b104  setlt.u r8, r3, r11
004008  bb4b04fe  bneq r8, zero, -272
00400c  9b420b01  srli r5, r22, 16
004010  9b821200  andi r5, r5, 1
004014  8b125b10  add.s r5, r22, r5
004018  8b921210  add.s r5, r5, r1
00401c  97826200  and r5, r5, r6
004020  5bdbffff  j -296
004024  9f450000  addli r11, zero, 4
004028  00200100  mfence { sm }
00402c  1f71f001  addli r2, zero, 255
004030  1f350000  addli r10, zero, 3
004034  80220104  csr_set csr5, r2
004038  00310002  core_id r2
00403c  00e00200  sync_core
004040  3731a1e4  beq r2, r10, -14260
004044  9f0a3000  addli r21, zero, 24
004048  3b5101e4  bneq r2, zero, -14252
00404c  6341aff8  loadli.w r2,  -940(r30)
004050  6b548fc5  load.d r[9:10], -936(r30)
004054  6b550fca  load.d r[11:12], -864(r30)
004058  6b568fc6  load.d r[13:14], -920(r30)
00405c  eb588f01  load.d r[18:19], 24(r30)
004060  1f170000  addli r14, zero, 1
004064  33120128  sext_int2long r[5:6], r2
004068  1f212000  addli r2, zero, 18
00406c  1736e602  sll.d r[13:14], r[13:14], r14
004070  17342402  sll.d r[9:10], r[9:10], r2
004074  0b35a240  min.sl r[11:12], r[5:6], r[11:12]
004078  1f012000  addli r2, zero, 16
00407c  0ba48810  add.ul r[9:10], r[18:19], r[9:10]
004080  27050501  addli.d r[11:12], r[11:12], 128
004084  7d100100  xwait r2, 0
004088  1b910304  ori r2, r7, 64
00408c  0b24c410  add.ul r[9:10], r[9:10], r[13:14]
004090  1f560000  addli r12, zero, 5
004094  0b354548  max.sl r[11:12], r[11:12], r[5:6]
004098  1d000600  lock zero, r12
00409c  0b324518  sub.sl r[5:6], r[11:12], r[5:6]
0040a0  1f058000  addli r10, zero, 64
0040a4  9f450000  addli r11, zero, 4
0040a8  15070700  dma_cfg r14, r14, zero, 0
0040ac  15000702  dma_cfg zero, r14, zero, 1
0040b0  0b32a241  min.sl r[5:6], r[5:6], r[27:28]
0040b4  95040004  dma_cfg r9, zero, zero, 2
0040b8  1504a106  dma_cfg r8, r2, r10, 3
0040bc  eb530fc6  load.d r[8:9], -928(r30)
0040c0  1ff13300  addli r2, r7, 31
0040c4  9bb31300  slli r7, r7, 1
0040c8  1f040001  addli r8, zero, 128
0040cc  1b415100  srli r2, r2, 5
0040d0  15052408  dma_cfg r10, r8, r2, 4
0040d4  1b81e303  andi r2, r7, 62
0040d8  9f030004  addli r7, zero, 512
0040dc  1f040010  addli r8, zero, 2048
0040e0  1f350000  addli r10, zero, 3
0040e4  1584430a  dma_cfg r8, r7, r4, 5
0040e8  15002010  dma_cfg zero, zero, r2, 8
0040ec  35000000  dma_run zero
0040f0  1500e00a  dma_cfg zero, zero, r14, 5
0040f4  1f112000  addli r2, zero, 17
0040f8  15000010  dma_cfg zero, zero, zero, 8
0040fc  1d100600  unlock r12
004100  7d000100  xsignal r2, 0
004104  5bf3f8ff  j -14440
004108  7d000000  xsignal zero, 0
00410c  bbe00900  bneq r19, zero, 56
004110  9f200000  addli r1, zero, 2
004114  7d100000  xwait zero, 0
004118  7d100000  xwait zero, 0
00411c  7d100000  xwait zero, 0
004120  7d100000  xwait zero, 0
004124  7d100000  xwait zero, 0
004128  7d100000  xwait zero, 0
00412c  7d100000  xwait zero, 0
004130  7d100000  xwait zero, 0
004134  1d800000  lock zero, r1
004138  0d000020  ew_cfg zero, zero, zero, 16
00413c  1d900000  unlock r1
004140  7d400000  xsignal_mode_cfg zero
004144  9f8eae07  addli sp, sp, 976
004148  00a00300  mfence { lm, sm, gm }
00414c  00100000  exit
004150  00100000  exit
004154  00100000  exit
004158  00100000  exit
00415c  00100000  exit
004160  00100000  exit
004164  00100000  exit
004168  00100000  exit
00416c  00100000  exit
004170  00100000  exit
004174  00100000  exit
004178  00100000  exit
00417c  00100000  exit
004180  00100000  exit
004184  00100000  exit
004188  00100000  exit
00418c  00100000  exit
004190  00100000  exit
004194  00100000  exit
004198  00100000  exit
00419c  00100000  exit
0041a0  00100000  exit
0041a4  00100000  exit
0041a8  00100000  exit
0041ac  00100000  exit
0041b0  00100000  exit
0041b4  00100000  exit
0041b8  00100000  exit
0041bc  00100000  exit
0041c0  00100000  exit
0041c4  00100000  exit
0041c8  00100000  exit
0041cc  00100000  exit
0041d0  00100000  exit
0041d4  00100000  exit
0041d8  00100000  exit
0041dc  00100000  exit
0041e0  00100000  exit
0041e4  00100000  exit
0041e8  00100000  exit
0041ec  00100000  exit
0041f0  00100000  exit
0041f4  00100000  exit
0041f8  00100000  exit
0041fc  00100000  exit
004200  00100000  exit
004204  00100000  exit
004208  00100000  exit
00420c  00100000  exit
004210  00100000  exit
004214  00100000  exit
004218  00100000  exit
00421c  00100000  exit
004220  00100000  exit
004224  00100000  exit
004228  00100000  exit
00422c  00100000  exit
004230  00100000  exit
004234  00100000  exit
004238  00100000  exit
00423c  00100000  exit
004240  00100000  exit
004244  00100000  exit
004248  00100000  exit
00424c  00100000  exit
004250  00100000  exit
004254  00100000  exit
004258  00100000  exit
00425c  00100000  exit
004260  00100000  exit
004264  00100000  exit
004268  00100000  exit
00426c  00100000  exit
004270  00100000  exit
004274  00100000  exit
004278  00100000  exit
00427c  00100000  exit
004280  00100000  exit
004284  00100000  exit
004288  00100000  exit
00428c  00100000  exit
004290  00100000  exit
004294  00100000  exit
004298  00100000  exit
00429c  00100000  exit
0042a0  00100000  exit
0042a4  00100000  exit
0042a8  00100000  exit
0042ac  00100000  exit
0042b0  00100000  exit
0042b4  00100000  exit
0042b8  00100000  exit
0042bc  00100000  exit
0042c0  00100000  exit
0042c4  00100000  exit
0042c8  00100000  exit
0042cc  00100000  exit
0042d0  00100000  exit
0042d4  00100000  exit
0042d8  00100000  exit
0042dc  00100000  exit
0042e0  00100000  exit
0042e4  00100000  exit
0042e8  00100000  exit
0042ec  00100000  exit
0042f0  00100000  exit
0042f4  00100000  exit
0042f8  00100000  exit
0042fc  00100000  exit
004300  00100000  exit
004304  00100000  exit
004308  00100000  exit
00430c  00100000  exit
004310  00100000  exit
004314  00100000  exit
004318  00100000  exit
00431c  00100000  exit
004320  00100000  exit
004324  00100000  exit
004328  00100000  exit
00432c  00100000  exit
004330  00100000  exit
004334  00100000  exit
004338  00100000  exit
00433c  00100000  exit
004340  00100000  exit
004344  00100000  exit
004348  00100000  exit
00434c  00100000  exit
004350  00100000  exit
004354  00100000  exit
004358  00100000  exit
00435c  00100000  exit
004360  00100000  exit
004364  00100000  exit
004368  00100000  exit
00436c  00100000  exit
004370  00100000  exit
004374  00100000  exit
004378  00100000  exit
00437c  00100000  exit
004380  00100000  exit
004384  00100000  exit
004388  00100000  exit
00438c  00100000  exit
