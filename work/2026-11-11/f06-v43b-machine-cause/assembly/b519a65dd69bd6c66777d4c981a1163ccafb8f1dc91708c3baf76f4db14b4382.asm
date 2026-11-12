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
0000b4  9f8e7ef8  addli sp, sp, -968
0000b8  1f110000  addli r2, zero, 1
0000bc  80300002  core_id r1
0000c0  1f8f1e07  addli r30, sp, 904
0000c4  7d400100  xsignal_mode_cfg r2
0000c8  b7900000  beq r1, zero, 36
0000cc  abf1ffff  lui r3, 1048575
0000d0  7d100100  xwait r2, 0
0000d4  7d100100  xwait r2, 0
0000d8  7d100000  xwait zero, 0
0000dc  1b91f1ff  ori r2, r3, 4095
0000e0  80210104  csr_set csr3, r2
0000e4  00d00100  sync_group
0000e8  5b790000  j 968
0000ec  9f220000  addli r5, zero, 2
0000f0  7d510100  uni_sram_cfg r2, r2
0000f4  1f430000  addli r6, zero, 4
0000f8  eb510f02  load.d r[4:5], 32(r30)
0000fc  9f030020  addli r7, zero, 4096
000100  1d800200  lock zero, r5
000104  0d010020  ew_cfg r2, zero, zero, 16
000108  1d900200  unlock r5
00010c  1d000300  lock zero, r6
000110  15000000  dma_cfg zero, zero, zero, 0
000114  15000204  dma_cfg zero, r4, zero, 2
000118  15807106  dma_cfg zero, r3, r7, 3
00011c  9f014000  addli r3, zero, 32
000120  1f020008  addli r4, zero, 1024
000124  15002008  dma_cfg zero, zero, r2, 4
000128  35000000  dma_run zero
00012c  1d100300  unlock r6
000130  7d000100  xsignal r2, 0
000134  7d100100  xwait r2, 0
000138  1d000000  lock zero, zero
00013c  81020000  ds_cfg r5, zero, 0
000140  01000002  ds_cfg zero, zero, 1
000144  01000016  ds_cfg zero, zero, 11
000148  8101001a  ds_cfg r3, zero, 13
00014c  9f510000  addli r3, zero, 5
000150  0102001c  ds_cfg r4, zero, 14
000154  a1134008  shuffle_batch r7, zero, r4, 4
000158  1f320000  addli r4, zero, 3
00015c  1d100000  unlock zero
000160  7d000100  xsignal r2, 0
000164  7d100100  xwait r2, 0
000168  1d800200  lock zero, r5
00016c  2b110100  lui r2, 17
000170  0da00300  ewtable_cfg r7, 0
000174  0d200102  ewtable_cfg r2, 1
000178  2bf1ffff  lui r2, 1048575
00017c  1d900200  unlock r5
000180  7d000000  xsignal zero, 0
000184  7d100000  xwait zero, 0
000188  1b11f1ff  ori r2, r2, 4095
00018c  80210104  csr_set csr3, r2
000190  1f311000  addli r2, zero, 11
000194  00d00100  sync_group
000198  7d000100  xsignal r2, 0
00019c  7d000100  xsignal r2, 0
0001a0  7d000100  xsignal r2, 0
0001a4  7d800100  xsignal r3, 0
0001a8  7d800100  xsignal r3, 0
0001ac  7d800100  xsignal r3, 0
0001b0  7d800100  xsignal r3, 0
0001b4  7d800100  xsignal r3, 0
0001b8  7d800100  xsignal r3, 0
0001bc  7d800100  xsignal r3, 0
0001c0  7d800100  xsignal r3, 0
0001c4  7d800100  xsignal r3, 0
0001c8  7d800100  xsignal r3, 0
0001cc  7d800100  xsignal r3, 0
0001d0  7d800100  xsignal r3, 0
0001d4  7d800100  xsignal r3, 0
0001d8  7d800100  xsignal r3, 0
0001dc  7d800100  xsignal r3, 0
0001e0  7d800100  xsignal r3, 0
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
000264  1f111000  addli r2, zero, 9
000268  9f710000  addli r3, zero, 7
00026c  7d000200  xsignal r4, 0
000270  7d000200  xsignal r4, 0
000274  7d000200  xsignal r4, 0
000278  7d000200  xsignal r4, 0
00027c  7d000200  xsignal r4, 0
000280  7d000200  xsignal r4, 0
000284  7d000200  xsignal r4, 0
000288  7d000200  xsignal r4, 0
00028c  7d000200  xsignal r4, 0
000290  7d000200  xsignal r4, 0
000294  7d000200  xsignal r4, 0
000298  7d000200  xsignal r4, 0
00029c  7d000200  xsignal r4, 0
0002a0  7d000200  xsignal r4, 0
0002a4  7d000200  xsignal r4, 0
0002a8  7d000200  xsignal r4, 0
0002ac  7d000200  xsignal r4, 0
0002b0  7d000200  xsignal r4, 0
0002b4  7d000200  xsignal r4, 0
0002b8  7d000200  xsignal r4, 0
0002bc  7d000200  xsignal r4, 0
0002c0  7d000200  xsignal r4, 0
0002c4  7d000200  xsignal r4, 0
0002c8  7d000200  xsignal r4, 0
0002cc  7d000200  xsignal r4, 0
0002d0  7d000100  xsignal r2, 0
0002d4  7d000100  xsignal r2, 0
0002d8  7d000100  xsignal r2, 0
0002dc  7d000100  xsignal r2, 0
0002e0  7d000100  xsignal r2, 0
0002e4  7d000100  xsignal r2, 0
0002e8  7d000100  xsignal r2, 0
0002ec  7d000100  xsignal r2, 0
0002f0  7d000100  xsignal r2, 0
0002f4  7d000100  xsignal r2, 0
0002f8  7d000100  xsignal r2, 0
0002fc  7d000100  xsignal r2, 0
000300  7d000100  xsignal r2, 0
000304  7d000100  xsignal r2, 0
000308  7d000100  xsignal r2, 0
00030c  7d000100  xsignal r2, 0
000310  7d000100  xsignal r2, 0
000314  7d000100  xsignal r2, 0
000318  7d000100  xsignal r2, 0
00031c  7d000100  xsignal r2, 0
000320  7d000100  xsignal r2, 0
000324  7d000100  xsignal r2, 0
000328  7d000100  xsignal r2, 0
00032c  7d000100  xsignal r2, 0
000330  7d000100  xsignal r2, 0
000334  7d000100  xsignal r2, 0
000338  7d000100  xsignal r2, 0
00033c  7d000100  xsignal r2, 0
000340  7d000100  xsignal r2, 0
000344  7d000100  xsignal r2, 0
000348  7d000100  xsignal r2, 0
00034c  7d000100  xsignal r2, 0
000350  7d000100  xsignal r2, 0
000354  7d000100  xsignal r2, 0
000358  7d000100  xsignal r2, 0
00035c  7d000100  xsignal r2, 0
000360  7d000100  xsignal r2, 0
000364  7d000100  xsignal r2, 0
000368  7d000100  xsignal r2, 0
00036c  7d000100  xsignal r2, 0
000370  7d000100  xsignal r2, 0
000374  7d000100  xsignal r2, 0
000378  7d000100  xsignal r2, 0
00037c  7d000100  xsignal r2, 0
000380  7d000100  xsignal r2, 0
000384  7d000100  xsignal r2, 0
000388  7d000100  xsignal r2, 0
00038c  7d000100  xsignal r2, 0
000390  7d000100  xsignal r2, 0
000394  7d000100  xsignal r2, 0
000398  7d000100  xsignal r2, 0
00039c  7d000100  xsignal r2, 0
0003a0  7d000100  xsignal r2, 0
0003a4  7d000100  xsignal r2, 0
0003a8  7d000100  xsignal r2, 0
0003ac  7d000100  xsignal r2, 0
0003b0  7d000100  xsignal r2, 0
0003b4  7d000100  xsignal r2, 0
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
000410  7d800100  xsignal r3, 0
000414  7d800100  xsignal r3, 0
000418  7d800100  xsignal r3, 0
00041c  7d800100  xsignal r3, 0
000420  7d800100  xsignal r3, 0
000424  7d800100  xsignal r3, 0
000428  7d800100  xsignal r3, 0
00042c  7d800100  xsignal r3, 0
000430  7d800100  xsignal r3, 0
000434  7d800100  xsignal r3, 0
000438  7d800100  xsignal r3, 0
00043c  7d800100  xsignal r3, 0
000440  7d800100  xsignal r3, 0
000444  7d800100  xsignal r3, 0
000448  7d800100  xsignal r3, 0
00044c  7d800100  xsignal r3, 0
000450  7d800100  xsignal r3, 0
000454  7d800100  xsignal r3, 0
000458  7d800100  xsignal r3, 0
00045c  7d800100  xsignal r3, 0
000460  7d800100  xsignal r3, 0
000464  7d800100  xsignal r3, 0
000468  7d800100  xsignal r3, 0
00046c  7d800100  xsignal r3, 0
000470  1f511000  addli r2, zero, 13
000474  9f711000  addli r3, zero, 15
000478  7d000100  xsignal r2, 0
00047c  7d000100  xsignal r2, 0
000480  7d000100  xsignal r2, 0
000484  7d800100  xsignal r3, 0
000488  7d800100  xsignal r3, 0
00048c  7d800100  xsignal r3, 0
000490  1f312000  addli r2, zero, 19
000494  9f412000  addli r3, zero, 20
000498  7d000100  xsignal r2, 0
00049c  7d000100  xsignal r2, 0
0004a0  7d000100  xsignal r2, 0
0004a4  7d800100  xsignal r3, 0
0004a8  7d800100  xsignal r3, 0
0004ac  7d800100  xsignal r3, 0
0004b0  63015f00  loadli.w r2,  40(r30)
0004b4  e3415f00  loadli.w r3,  44(r30)
0004b8  00d20002  load_param_i r4, 1
0004bc  e3026f00  loadli.w r5,  48(r30)
0004c0  80530002  load_param_i r7, 0
0004c4  2bf3ffff  lui r6, 1048575
0004c8  670f0ffe  storeli.w zero, -16(r30)
0004cc  670e0ffe  storeli.w zero, -32(r30)
0004d0  670d0ffe  storeli.w zero, -48(r30)
0004d4  670c0ffe  storeli.w zero, -64(r30)
0004d8  e7450ffe  storeli.w zero, -164(r30)
0004dc  e7010ffc  storeli.w zero, -488(r30)
0004e0  670b0ffa  storeli.w zero, -592(r30)
0004e4  e74e0ff8  storeli.w zero, -788(r30)
0004e8  0b912120  mul.s r2, r3, r2
0004ec  9f010200  addli r3, r4, 0
0004f0  8b115150  fmac.s r3, r2, r5
0004f4  8b125120  mul.s r5, r2, r5
0004f8  9ff1f1ff  addli r3, r3, -1
0004fc  8b914130  div.s r3, r3, r4
000500  1b12f3ff  ori r4, r6, 4095
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
0007f8  0b917120  mul.s r2, r3, r7
0007fc  8b917150  fmac.s r3, r3, r7
000800  8b915140  min.s r3, r3, r5
000804  cb9e2102  ble.s r3, r2, 1956
000808  b3910128  sext_int2long r[4:5], r3
00080c  b3160128  sext_int2long r[14:15], r2
000810  e304efff  loadli.w r9,  -16(r30)
000814  6345bffe  loadli.w r10,  -164(r30)
000818  e3056ffb  loadli.w r11,  -592(r30)
00081c  6346dff9  loadli.w r12,  -788(r30)
000820  e3073ffc  loadli.w r15,  -488(r30)
000824  1f080001  addli r16, zero, 128
000828  1f091000  addli r18, zero, 8
00082c  9f3d0000  addli r27, zero, 3
000830  9f4a0000  addli r21, zero, 4
000834  9f2b0000  addli r23, zero, 2
000838  1f046000  addli r8, zero, 48
00083c  1f1e3000  addli r28, zero, 25
000840  1f5b0000  addli r22, zero, 5
000844  9f084000  addli r17, zero, 32
000848  1f0d8000  addli r26, zero, 64
00084c  9f620000  addli r5, zero, 6
000850  1f0a0000  addli r20, zero, 0
000854  733c3fc8  store.d r[4:5], -872(r30)
000858  e301cfff  loadli.w r3,  -32(r30)
00085c  1f02a000  addli r4, zero, 80
000860  670d3ff8  storeli.w r3, -816(r30)
000864  e301afff  loadli.w r3,  -48(r30)
000868  e74c3ff8  storeli.w r3, -820(r30)
00086c  e3018fff  loadli.w r3,  -64(r30)
000870  674d3ff8  storeli.w r3, -812(r30)
000874  9f71f01f  addli r3, zero, 4095
000878  2b01feff  lui r2, 1048544
00087c  73382fc8  store.d r[3:4], -880(r30)
000880  2b411200  lui r2, 292
000884  ab411500  lui r3, 340
000888  1b110160  ori r2, r2, 1536
00088c  e7482ff8  storeli.w r2, -884(r30)
000890  2b810d00  lui r2, 216
000894  1b11d1b4  ori r2, r2, 2893
000898  e7082ff8  storeli.w r2, -888(r30)
00089c  1b910160  ori r2, r3, 1536
0008a0  abf17f7f  lui r3, 522239
0008a4  67482ff8  storeli.w r2, -892(r30)
0008a8  2bf17fff  lui r2, 1046527
0008ac  1b11f1ff  ori r2, r2, 4095
0008b0  67082ff8  storeli.w r2, -896(r30)
0008b4  1b91f1ff  ori r2, r3, 4095
0008b8  e7472ff8  storeli.w r2, -900(r30)
0008bc  5b130000  j 152
0008c0  6b510f01  load.d r[3:4], 16(r30)
0008c4  6b530fcb  load.d r[7:8], -848(r30)
0008c8  1f521000  addli r4, zero, 13
0008cc  7d100200  xwait r4, 0
0008d0  1d800a00  lock zero, r21
0008d4  1bb22600  slli r4, r13, 2
0008d8  0b216110  add.ul r[3:4], r[3:4], r[7:8]
0008dc  15000000  dma_cfg zero, zero, zero, 0
0008e0  15800104  dma_cfg zero, r3, zero, 2
0008e4  95024106  dma_cfg r5, r2, r4, 3
0008e8  1f110000  addli r2, zero, 1
0008ec  9f010004  addli r3, zero, 512
0008f0  95812108  dma_cfg r3, r3, r2, 4
0008f4  35000000  dma_run zero
0008f8  1d900a00  unlock r21
0008fc  63419ff9  loadli.w r2,  -820(r30)
000900  1f110100  addli r2, r2, 1
000904  e74c2ff8  storeli.w r2, -820(r30)
000908  1f411000  addli r2, zero, 12
00090c  7d000100  xsignal r2, 0
000910  e3049ff9  loadli.w r9,  -824(r30)
000914  eb560fcc  load.d r[14:15], -832(r30)
000918  634a7ff9  loadli.w r20,  -836(r30)
00091c  1f091000  addli r18, zero, 8
000920  6b518fc9  load.d r[3:4], -872(r30)
000924  a7960600  addli.d r[14:15], r[14:15], 1
000928  9f940400  addli r9, r9, 1
00092c  1f02a000  addli r4, zero, 80
000930  9f620000  addli r5, zero, 6
000934  13b12604  setlt.sl r2, r[14:15], r[3:4]
000938  e341aff9  loadli.w r3,  -812(r30)
00093c  9f910100  addli r3, r3, 1
000940  674d3ff8  storeli.w r3, -812(r30)
000944  e301aff9  loadli.w r3,  -816(r30)
000948  9f910100  addli r3, r3, 1
00094c  670d3ff8  storeli.w r3, -816(r30)
000950  37590102  beq r2, zero, 1620
000954  e70c9ff8  storeli.w r9, -824(r30)
000958  3bb05001  bneq r1, r21, 12
00095c  1f311000  addli r2, zero, 11
000960  7d100100  xwait r2, 0
000964  63016f00  loadli.w r2,  48(r30)
000968  e3415f00  loadli.w r3,  44(r30)
00096c  7330dfcc  store.d r[14:15], -832(r30)
000970  0b912630  div.s r2, r13, r2
000974  8b133130  div.s r7, r2, r3
000978  9f012000  addli r3, zero, 16
00097c  8b940331  div.s r9, r7, r16
000980  1bb13400  slli r2, r9, 3
000984  8b912118  sub.s r3, r3, r2
000988  0b992141  min.s r18, r3, r18
00098c  8b912339  mod.s r3, r7, r18
000990  0b133110  add.s r6, r2, r3
000994  1f711000  addli r2, zero, 15
000998  9f511000  addli r3, zero, 13
00099c  13016104  setlt.u r2, r2, r6
0009a0  b3060328  zext_int2long r[14:15], r6
0009a4  7334dfca  store.d r[14:15], -856(r30)
0009a8  97b63602  sll.d r[14:15], r[14:15], r3
0009ac  3b300100  bneq r2, zero, 12
0009b0  33010028  zext_int2long r[3:4], zero
0009b4  db010000  j 12
0009b8  6b510fc9  load.d r[3:4], -880(r30)
0009bc  17812602  and.d r[3:4], r[14:15], r[3:4]
0009c0  73302fce  store.d r[3:4], -800(r30)
0009c4  1bb17400  slli r2, r9, 7
0009c8  8b11ba39  mod.s r3, r20, r27
0009cc  1b337300  slli r6, r6, 7
0009d0  9f740000  addli r9, zero, 7
0009d4  1f1a0a00  addli r20, r20, 1
0009d8  9f090000  addli r19, zero, 0
0009dc  0b912318  sub.s r2, r7, r2
0009e0  674a6ff8  storeli.w r6, -860(r30)
0009e4  e74b4ff9  storeli.w r20, -836(r30)
0009e8  0b112131  div.s r2, r2, r18
0009ec  1f090000  addli r18, zero, 0
0009f0  33030128  zext_int2long r[7:8], r2
0009f4  1b317100  slli r2, r2, 7
0009f8  173c9302  sll.d r[25:26], r[7:8], r9
0009fc  1bb30101  slli r6, r3, 16
000a00  e70b2ff8  storeli.w r2, -840(r30)
000a04  6b518f00  load.d r[3:4], 8(r30)
000a08  9f130000  addli r7, zero, 1
000a0c  173c7c03  sll.d r[25:26], r[25:26], r23
000a10  0b218111  add.ul r[3:4], r[3:4], r[25:26]
000a14  73388fcb  store.d r[25:26], -848(r30)
000a18  9f0c1000  addli r25, zero, 8
000a1c  733c2fcc  store.d r[3:4], -808(r30)
000a20  5b030000  j 24
000a24  1b811300  andi r2, r7, 1
000a28  37790100  beq r2, zero, 604
000a2c  1f190900  addli r18, r18, 1
000a30  9f190000  addli r19, zero, 1
000a34  9f030000  addli r7, zero, 0
000a38  0b91c539  mod.s r2, r11, r28
000a3c  8b118638  mod.s r3, r12, r8
000a40  1f160600  addli r12, r12, 1
000a44  9f950500  addli r11, r11, 1
000a48  9bb4e100  slli r9, r3, 14
000a4c  1b31e100  slli r2, r2, 14
000a50  ab010300  lui r3, 48
000a54  0b1c3110  add.s r24, r2, r3
000a58  37a27001  beq r1, r23, 136
000a5c  33810928  zext_int2long r[3:4], r19
000a60  3bf55000  bneq r1, r5, 348
000a64  17316103  sll.d r[3:4], r[3:4], r22
000a68  6b520fce  load.d r[5:6], -800(r30)
000a6c  b3090d28  zext_int2long r[20:21], r26
000a70  1f340000  addli r8, zero, 3
000a74  1711d102  or.d r[3:4], r[3:4], r[14:15]
000a78  7d100400  xwait r8, 0
000a7c  1d800a00  lock zero, r21
000a80  1f046000  addli r8, zero, 48
000a84  15000000  dma_cfg zero, zero, zero, 0
000a88  8b3d4118  sub.sl r[28:29], r[3:4], r[5:6]
000a8c  1f02000f  addli r4, zero, 1920
000a90  17317103  sll.d r[3:4], r[3:4], r23
000a94  8f993d61  div.sl r[20:21], r[28:29], r[20:21]
000a98  b30d0228  zext_int2long r[28:29], r4
000a9c  6b520f00  load.d r[5:6], 0(r30)
000aa0  0b212210  add.ul r[3:4], r[5:6], r[3:4]
000aa4  9f620000  addli r5, zero, 6
000aa8  1f02a000  addli r4, zero, 80
000aac  15800104  dma_cfg zero, r3, zero, 2
000ab0  150c0107  dma_cfg r24, r2, r16, 3
000ab4  1f010002  addli r2, zero, 256
000ab8  8bbdb941  min.sl r[28:29], r[20:21], r[28:29]
000abc  8bb93d19  sub.sl r[20:21], r[28:29], r[20:21]
000ac0  1f1e3000  addli r28, zero, 25
000ac4  9f3d0000  addli r27, zero, 3
000ac8  9f890901  addli r19, r19, 128
000acc  15083109  dma_cfg r16, r2, r19, 4
000ad0  35000000  dma_run zero
000ad4  1d900a00  unlock r21
000ad8  7d800b00  xsignal r23, 0
000adc  5b060000  j 48
000ae0  7d900b00  xwait r23, 0
000ae4  7d100b00  xwait r22, 0
000ae8  1d000000  lock zero, zero
000aec  810b0000  ds_cfg r23, zero, 0
000af0  81080002  ds_cfg r17, zero, 1
000af4  8108001c  ds_cfg r17, zero, 14
000af8  0108001a  ds_cfg r16, zero, 13
000afc  a1141c03  shuffle_batch r9, r24, r17, 1
000b00  1d100000  unlock zero
000b04  7d800d00  xsignal r27, 0
000b08  7d800a00  xsignal r21, 0
000b0c  0b914738  mod.s r2, r15, r4
000b10  9f970700  addli r15, r15, 1
000b14  1f150500  addli r10, r10, 1
000b18  9b39e100  slli r19, r2, 14
000b1c  3bac50ff  bneq r1, r21, -248
000b20  1f1c0000  addli r24, zero, 1
000b24  1f110000  addli r2, zero, 1
000b28  9f010000  addli r3, zero, 0
000b2c  7d900a00  xwait r21, 0
000b30  7d900c00  xwait r25, 0
000b34  b7700900  beq r18, zero, 60
000b38  1bbad100  slli r20, r3, 13
000b3c  9bb18100  slli r3, r3, 8
000b40  1d000c00  lock zero, r24
000b44  098d0801  mm_cfg r26, r17, r16, 0
000b48  171a3a01  or r20, r20, r19
000b4c  97916100  or r3, r3, r6
000b50  898b8a05  mm_cfg r23, r21, r24, 2
000b54  a9914411  mm_acc r3, r9, r20, 8
000b58  1b0a1100  andi r20, r2, 1
000b5c  9f110000  addli r3, zero, 1
000b60  1f010000  addli r2, zero, 0
000b64  1d100c00  unlock r24
000b68  3b4f0afe  bneq r20, zero, -48
000b6c  5b070000  j 56
000b70  1bbad100  slli r20, r3, 13
000b74  9bb18100  slli r3, r3, 8
000b78  1d000c00  lock zero, r24
000b7c  098d0801  mm_cfg r26, r17, r16, 0
000b80  171a3a01  or r20, r20, r19
000b84  97916100  or r3, r3, r6
000b88  898b8a05  mm_cfg r23, r21, r24, 2
000b8c  a9814411  mm r3, r9, r20, 8
000b90  1b0a1100  andi r20, r2, 1
000b94  9f110000  addli r3, zero, 1
000b98  1f010000  addli r2, zero, 0
000b9c  1d100c00  unlock r24
000ba0  3b4f0afe  bneq r20, zero, -48
000ba4  1b811300  andi r2, r7, 1
000ba8  9f111000  addli r3, zero, 9
000bac  7d000b00  xsignal r22, 0
000bb0  7d800100  xsignal r3, 0
000bb4  bb6901fe  bneq r2, zero, -392
000bb8  db180000  j 196
000bbc  9f093000  addli r19, zero, 24
000bc0  0b9a4738  mod.s r20, r15, r4
000bc4  9f970700  addli r15, r15, 1
000bc8  8b193539  mod.s r19, r10, r19
000bcc  1f150500  addli r10, r10, 1
000bd0  1bbce900  slli r24, r19, 14
000bd4  9b39ea00  slli r19, r20, 14
000bd8  2b4a0900  lui r20, 148
000bdc  0b1c4c11  add.s r24, r24, r20
000be0  1f7a0000  addli r20, zero, 7
000be4  37e14001  beq r1, r20, 88
000be8  1f1a0000  addli r20, zero, 1
000bec  bbcc40ff  bneq r1, r20, -208
000bf0  9f242000  addli r9, zero, 18
000bf4  17319102  sll.d r[3:4], r[3:4], r9
000bf8  9f740000  addli r9, zero, 7
000bfc  7d900400  xwait r9, 0
000c00  eb598fcd  load.d r[20:21], -808(r30)
000c04  1d800a00  lock zero, r21
000c08  9f040004  addli r9, zero, 512
000c0c  15000000  dma_cfg zero, zero, zero, 0
000c10  0ba12910  add.ul r[3:4], r[20:21], r[3:4]
000c14  15800104  dma_cfg zero, r3, zero, 2
000c18  150c9106  dma_cfg r24, r2, r9, 3
000c1c  1f010040  addli r2, zero, 8192
000c20  95041109  dma_cfg r9, r2, r17, 4
000c24  35000000  dma_run zero
000c28  1d900a00  unlock r21
000c2c  7d800200  xsignal r5, 0
000c30  1b811300  andi r2, r7, 1
000c34  bb6701fe  bneq r2, zero, -520
000c38  5b080000  j 64
000c3c  1f111000  addli r2, zero, 9
000c40  7d900200  xwait r5, 0
000c44  7d100100  xwait r2, 0
000c48  1d000000  lock zero, zero
000c4c  1f710000  addli r2, zero, 7
000c50  810b0000  ds_cfg r23, zero, 0
000c54  01080002  ds_cfg r16, zero, 1
000c58  8108001c  ds_cfg r17, zero, 14
000c5c  0108001a  ds_cfg r16, zero, 13
000c60  c1091c05  shuffle_coa r19, r24, r17, 2
000c64  1d100000  unlock zero
000c68  7d000100  xsignal r2, 0
000c6c  7d800c00  xsignal r25, 0
000c70  1b811300  andi r2, r7, 1
000c74  bb6601fe  bneq r2, zero, -584
000c78  3bb05001  bneq r1, r21, 12
000c7c  1f211000  addli r2, zero, 10
000c80  7d000100  xsignal r2, 0
000c84  1f01000f  addli r2, zero, 1920
000c88  e343aff9  loadli.w r7,  -812(r30)
000c8c  330c0828  zext_int2long r[25:26], r16
000c90  9f640000  addli r9, zero, 6
000c94  33090128  zext_int2long r[19:20], r2
000c98  63017ff9  loadli.w r2,  -840(r30)
000c9c  8b93b339  mod.s r7, r7, r27
000ca0  33010128  zext_int2long r[3:4], r2
000ca4  0b222141  min.ul r[5:6], r[3:4], r[19:20]
000ca8  27020201  addli.d r[5:6], r[5:6], 128
000cac  0b222248  max.ul r[5:6], r[5:6], r[3:4]
000cb0  0b312218  sub.sl r[3:4], r[5:6], r[3:4]
000cb4  1bb29300  slli r4, r7, 9
000cb8  8b268141  min.ul r[14:15], r[3:4], r[25:26]
000cbc  2b410f00  lui r2, 244
000cc0  8b122210  add.s r5, r4, r2
000cc4  b7ff90fc  beq r1, r9, -1028
000cc8  e3439ff9  loadli.w r7,  -820(r30)
000ccc  ab410f00  lui r3, 244
000cd0  9b910160  ori r3, r3, 1536
000cd4  0b91b339  mod.s r2, r7, r27
000cd8  9f930300  addli r7, r7, 1
000cdc  e74c7ff8  storeli.w r7, -820(r30)
000ce0  1b310101  slli r2, r2, 16
000ce4  0b123110  add.s r4, r2, r3
000ce8  3be2b001  bneq r1, r27, 152
000cec  1f211000  addli r2, zero, 10
000cf0  9f030000  addli r7, zero, 0
000cf4  ab040100  lui r9, 16
000cf8  7d100100  xwait r2, 0
000cfc  1f411000  addli r2, zero, 12
000d00  7d100100  xwait r2, 0
000d04  1f711000  addli r2, zero, 15
000d08  7d100100  xwait r2, 0
000d0c  1d800b00  lock zero, r23
000d10  2b01803f  lui r2, 260096
000d14  0d000002  ew_cfg zero, zero, zero, 1
000d18  0d110100  ewcoeff_cfg r2, r2, zero, 0
000d1c  1f71f000  addli r2, zero, 127
000d20  0d000104  ew_cfg zero, r2, zero, 2
000d24  1f110000  addli r2, zero, 1
000d28  0d010006  ew_cfg r2, zero, zero, 3
000d2c  634a7ff9  loadli.w r20,  -836(r30)
000d30  0b117210  add.s r2, r4, r7
000d34  8b117310  add.s r3, r6, r7
000d38  9f830304  addli r7, r7, 512
000d3c  2d815100  dsmadd r2, r3, r5, 0
000d40  bbcf93fe  bneq r7, r9, -16
000d44  1f311000  addli r2, zero, 11
000d48  1d900b00  unlock r23
000d4c  1f091000  addli r18, zero, 8
000d50  7d000100  xsignal r2, 0
000d54  1f511000  addli r2, zero, 13
000d58  7d000100  xsignal r2, 0
000d5c  1f012000  addli r2, zero, 16
000d60  7d000100  xsignal r2, 0
000d64  1f112000  addli r2, zero, 17
000d68  7d000100  xsignal r2, 0
000d6c  1f611000  addli r2, zero, 14
000d70  7d000100  xsignal r2, 0
000d74  e3049ff9  loadli.w r9,  -824(r30)
000d78  eb560fcc  load.d r[14:15], -832(r30)
000d7c  db74ffff  j -1116
000d80  6301aff9  loadli.w r2,  -816(r30)
000d84  e3411ff9  loadli.w r3,  -884(r30)
000d88  0b11b139  mod.s r2, r2, r27
000d8c  1b310101  slli r2, r2, 16
000d90  8b123110  add.s r5, r2, r3
000d94  3b966001  bneq r1, r22, 388
000d98  1f611000  addli r2, zero, 14
000d9c  9f160000  addli r13, zero, 1
000da0  2b0300c1  lui r6, 790528
000da4  9f030000  addli r7, zero, 0
000da8  1f091000  addli r18, zero, 8
000dac  ab090100  lui r19, 16
000db0  7d100100  xwait r2, 0
000db4  1f312000  addli r2, zero, 19
000db8  7d100100  xwait r2, 0
000dbc  1d800b00  lock zero, r23
000dc0  0d000002  ew_cfg zero, zero, zero, 1
000dc4  6b510fc9  load.d r[3:4], -880(r30)
000dc8  0d800104  ew_cfg zero, r3, zero, 2
000dcc  1f511000  addli r2, zero, 13
000dd0  ab81ff40  lui r3, 266232
000dd4  8d0a0006  ew_cfg r21, zero, zero, 3
000dd8  8d8a0a26  ew_cfg r21, r21, zero, 19
000ddc  0d010014  ew_cfg r2, zero, zero, 10
000de0  63011ff9  loadli.w r2,  -888(r30)
000de4  8d8b2616  ew_cfg r23, r13, r2, 11
000de8  0d00b01b  ew_cfg zero, zero, r27, 13
000dec  e3049ff9  loadli.w r9,  -824(r30)
000df0  0d833a1c  ew_cfg r6, r21, r3, 14
000df4  ab01803f  lui r3, 260096
000df8  0d80011e  ew_cfg zero, r3, zero, 15
000dfc  0b91b439  mod.s r2, r9, r27
000e00  cd220200  sslut r5, r4, 0
000e04  0d000014  ew_cfg zero, zero, zero, 10
000e08  0d000026  ew_cfg zero, zero, zero, 19
000e0c  1d900b00  unlock r23
000e10  e3410ff9  loadli.w r3,  -892(r30)
000e14  1b310101  slli r2, r2, 16
000e18  0b133110  add.s r6, r2, r3
000e1c  1f012000  addli r2, zero, 16
000e20  7d100100  xwait r2, 0
000e24  1f412000  addli r2, zero, 20
000e28  7d100100  xwait r2, 0
000e2c  1d800b00  lock zero, r23
000e30  1f71f000  addli r2, zero, 127
000e34  0d000002  ew_cfg zero, zero, zero, 1
000e38  0d000104  ew_cfg zero, r2, zero, 2
000e3c  8d060006  ew_cfg r13, zero, zero, 3
000e40  63010ff9  loadli.w r2,  -896(r30)
000e44  0d110000  ewcoeff_cfg r2, zero, zero, 0
000e48  eb560fcc  load.d r[14:15], -832(r30)
000e4c  0b117310  add.s r2, r6, r7
000e50  8b117210  add.s r3, r4, r7
000e54  9f830304  addli r7, r7, 512
000e58  2da13100  dscmpnsel r2, r3, r3, 0
000e5c  bbcf33ff  bneq r7, r19, -16
000e60  1d900b00  unlock r23
000e64  9f71f000  addli r3, zero, 127
000e68  1f010000  addli r2, zero, 0
000e6c  1d800b00  lock zero, r23
000e70  0d000002  ew_cfg zero, zero, zero, 1
000e74  0d800104  ew_cfg zero, r3, zero, 2
000e78  9f110000  addli r3, zero, 1
000e7c  8d010006  ew_cfg r3, zero, zero, 3
000e80  e341fff8  loadli.w r3,  -900(r30)
000e84  8d110000  ewcoeff_cfg r3, zero, zero, 0
000e88  634a7ff9  loadli.w r20,  -836(r30)
000e8c  8b112310  add.s r3, r6, r2
000e90  1f010104  addli r2, r2, 512
000e94  ada13108  dscmpnsel r3, r3, r3, 4
000e98  bb5f31ff  bneq r2, r19, -12
000e9c  1f112000  addli r2, zero, 17
000ea0  1d900b00  unlock r23
000ea4  ab03803f  lui r7, 260096
000ea8  7d100100  xwait r2, 0
000eac  1d800b00  lock zero, r23
000eb0  2b0180bf  lui r2, 784384
000eb4  0d000002  ew_cfg zero, zero, zero, 1
000eb8  8d130100  ewcoeff_cfg r7, r2, zero, 0
000ebc  6b510fc9  load.d r[3:4], -880(r30)
000ec0  0d800104  ew_cfg zero, r3, zero, 2
000ec4  8d0a0006  ew_cfg r21, zero, zero, 3
000ec8  8d8a5a27  ew_cfg r21, r21, r21, 19
000ecc  2d026200  dsmadd r4, r4, r6, 0
000ed0  1f432000  addli r6, zero, 20
000ed4  0d000026  ew_cfg zero, zero, zero, 19
000ed8  1d900b00  unlock r23
000edc  7d000300  xsignal r6, 0
000ee0  1d800b00  lock zero, r23
000ee4  0d000002  ew_cfg zero, zero, zero, 1
000ee8  8d930300  ewcoeff_cfg r7, r7, zero, 0
000eec  0d800104  ew_cfg zero, r3, zero, 2
000ef0  1f711000  addli r2, zero, 15
000ef4  8d0a0006  ew_cfg r21, zero, zero, 3
000ef8  8d8a5a27  ew_cfg r21, r21, r21, 19
000efc  ad824200  dsmadd r5, r5, r4, 0
000f00  0d000026  ew_cfg zero, zero, zero, 19
000f04  1d900b00  unlock r23
000f08  7d000100  xsignal r2, 0
000f0c  1f212000  addli r2, zero, 18
000f10  7d000100  xsignal r2, 0
000f14  db41ffff  j -1524
000f18  bbe700fc  bneq r1, zero, -1544
000f1c  63414ff9  loadli.w r2,  -860(r30)
000f20  6b538fca  load.d r[7:8], -856(r30)
000f24  1f422000  addli r4, zero, 20
000f28  33110128  sext_int2long r[3:4], r2
000f2c  17334302  sll.d r[7:8], r[7:8], r4
000f30  1f222000  addli r4, zero, 18
000f34  0b392141  min.sl r[19:20], r[3:4], r[19:20]
000f38  73306fce  store.d r[7:8], -800(r30)
000f3c  7d100200  xwait r4, 0
000f40  1d000b00  lock zero, r22
000f44  1f120000  addli r4, zero, 1
000f48  27090901  addli.d r[19:20], r[19:20], 128
000f4c  0b332948  max.sl r[7:8], r[19:20], r[3:4]
000f50  6b590fce  load.d r[19:20], -800(r30)
000f54  733c6fcc  store.d r[7:8], -808(r30)
000f58  6b538f01  load.d r[7:8], 24(r30)
000f5c  0b232311  add.ul r[7:8], r[7:8], r[19:20]
000f60  6b598fcd  load.d r[19:20], -808(r30)
000f64  0b312918  sub.sl r[3:4], r[19:20], r[3:4]
000f68  6b590fcb  load.d r[19:20], -848(r30)
000f6c  15000000  dma_cfg zero, zero, zero, 0
000f70  15000202  dma_cfg zero, r4, zero, 1
000f74  1bb22600  slli r4, r13, 2
000f78  0b318141  min.sl r[3:4], r[3:4], r[25:26]
000f7c  0b232311  add.ul r[7:8], r[7:8], r[19:20]
000f80  95030004  dma_cfg r7, zero, zero, 2
000f84  15834206  dma_cfg r6, r5, r4, 3
000f88  1f020004  addli r4, zero, 512
000f8c  9f020040  addli r5, zero, 8192
000f90  95022208  dma_cfg r5, r4, r2, 4
000f94  1f312000  addli r2, zero, 19
000f98  35000000  dma_run zero
000f9c  1d100b00  unlock r22
000fa0  db2dffff  j -1684
000fa4  e701fffc  storeli.w r15, -488(r30)
000fa8  7d000000  xsignal zero, 0
000fac  bbe00000  bneq r1, zero, 56
000fb0  9f200000  addli r1, zero, 2
000fb4  7d100000  xwait zero, 0
000fb8  7d100000  xwait zero, 0
000fbc  7d100000  xwait zero, 0
000fc0  7d100000  xwait zero, 0
000fc4  7d100000  xwait zero, 0
000fc8  7d100000  xwait zero, 0
000fcc  7d100000  xwait zero, 0
000fd0  7d100000  xwait zero, 0
000fd4  1d800000  lock zero, r1
000fd8  0d000020  ew_cfg zero, zero, zero, 16
000fdc  1d900000  unlock r1
000fe0  7d400000  xsignal_mode_cfg zero
000fe4  9f8e1e07  addli sp, sp, 904
000fe8  00a00300  mfence { lm, sm, gm }
000fec  00100000  exit
000ff0  00100000  exit
000ff4  00100000  exit
000ff8  00100000  exit
000ffc  00100000  exit
001000  00100000  exit
001004  00100000  exit
001008  00100000  exit
00100c  00100000  exit
001010  00100000  exit
001014  00100000  exit
001018  00100000  exit
00101c  00100000  exit
001020  00100000  exit
001024  00100000  exit
001028  00100000  exit
00102c  00100000  exit
001030  00100000  exit
001034  00100000  exit
001038  00100000  exit
00103c  00100000  exit
001040  00100000  exit
001044  00100000  exit
001048  00100000  exit
00104c  00100000  exit
001050  00100000  exit
001054  00100000  exit
001058  00100000  exit
00105c  00100000  exit
001060  00100000  exit
001064  00100000  exit
001068  00100000  exit
00106c  00100000  exit
001070  00100000  exit
001074  00100000  exit
001078  00100000  exit
00107c  00100000  exit
001080  00100000  exit
001084  00100000  exit
001088  00100000  exit
00108c  00100000  exit
001090  00100000  exit
001094  00100000  exit
001098  00100000  exit
00109c  00100000  exit
0010a0  00100000  exit
0010a4  00100000  exit
0010a8  00100000  exit
0010ac  00100000  exit
0010b0  00100000  exit
0010b4  00100000  exit
0010b8  00100000  exit
0010bc  00100000  exit
0010c0  00100000  exit
0010c4  00100000  exit
0010c8  00100000  exit
0010cc  00100000  exit
0010d0  00100000  exit
0010d4  00100000  exit
0010d8  00100000  exit
0010dc  00100000  exit
0010e0  00100000  exit
0010e4  00100000  exit
0010e8  00100000  exit
0010ec  00100000  exit
0010f0  00100000  exit
0010f4  00100000  exit
0010f8  00100000  exit
0010fc  00100000  exit
001100  00100000  exit
001104  00100000  exit
001108  00100000  exit
00110c  00100000  exit
001110  00100000  exit
001114  00100000  exit
001118  00100000  exit
00111c  00100000  exit
001120  00100000  exit
001124  00100000  exit
001128  00100000  exit
00112c  00100000  exit
001130  00100000  exit
001134  00100000  exit
001138  00100000  exit
00113c  00100000  exit
001140  00100000  exit
001144  00100000  exit
001148  00100000  exit
00114c  00100000  exit
001150  00100000  exit
001154  00100000  exit
001158  00100000  exit
00115c  00100000  exit
001160  00100000  exit
001164  00100000  exit
001168  00100000  exit
00116c  00100000  exit
001170  00100000  exit
001174  00100000  exit
001178  00100000  exit
00117c  00100000  exit
001180  00100000  exit
001184  00100000  exit
001188  00100000  exit
00118c  00100000  exit
001190  00100000  exit
001194  00100000  exit
001198  00100000  exit
00119c  00100000  exit
0011a0  00100000  exit
0011a4  00100000  exit
0011a8  00100000  exit
0011ac  00100000  exit
0011b0  00100000  exit
0011b4  00100000  exit
0011b8  00100000  exit
0011bc  00100000  exit
0011c0  00100000  exit
0011c4  00100000  exit
0011c8  00100000  exit
0011cc  00100000  exit
0011d0  00100000  exit
0011d4  00100000  exit
0011d8  00100000  exit
0011dc  00100000  exit
0011e0  00100000  exit
0011e4  00100000  exit
0011e8  00100000  exit
0011ec  00100000  exit
0011f0  00100000  exit
0011f4  00100000  exit
0011f8  00100000  exit
0011fc  00100000  exit
001200  00100000  exit
001204  00100000  exit
001208  00100000  exit
00120c  00100000  exit
001210  00100000  exit
001214  00100000  exit
001218  00100000  exit
00121c  00100000  exit
001220  00100000  exit
001224  00100000  exit
001228  00100000  exit
00122c  00100000  exit
