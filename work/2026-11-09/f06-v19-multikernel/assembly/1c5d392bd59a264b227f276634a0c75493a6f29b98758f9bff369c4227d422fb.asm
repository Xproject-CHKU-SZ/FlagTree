; SHA-256 1c5d392bd59a264b227f276634a0c75493a6f29b98758f9bff369c4227d422fb
; P800 Cluster · XTDK LLVM 19 · 1732 / 1732 words decoded
; bound names: triton_red_fused__softmax_add_exp_prepare_softmax_online_sub_0
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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8ecee2  addli sp, sp, -3744
0000e0  1f8fce1c  addli r30, sp, 3680
0000e4  80560002  load_param_i r13, 0
0000e8  63474f00  loadli.w r14,  36(r30)
0000ec  e3004f00  loadli.w r1,  32(r30)
0000f0  e3055f00  loadli.w r11,  40(r30)
0000f4  8b101720  mul.s r1, r14, r1
0000f8  0b98b020  mul.s r16, r1, r11
0000fc  4b2fd80a  ble.s r16, r13, 6088
000100  eb5c8f00  load.d r[26:27], 8(r30)
000104  80d80002  load_param_i r17, 1
000108  003a0002  core_id r20
00010c  1f7cf00f  addli r24, zero, 2047
000110  9f0d0fec  addli r27, r30, -2560
000114  ab0780ff  lui r15, 1046528
000118  1f090ff4  addli r18, r30, -1536
00011c  9f090004  addli r19, zero, 512
000120  9f0a0ff8  addli r21, r30, -1024
000124  1f0e0ffc  addli r28, r30, -512
000128  674a0fe3  storeli.w r16, -3676(r30)
00012c  670a1fe3  storeli.w r17, -3680(r30)
000130  5b020000  j 16
000134  8b961611  add.s r13, r13, r17
000138  3fa00601  blt.s r13, r16, 8
00013c  5bf10200  j 6024
000140  8b90b630  div.s r1, r13, r11
000144  8b90e030  div.s r1, r1, r14
000148  9bb06000  slli r1, r1, 6
00014c  8b101a10  add.s r1, r20, r1
000150  bf1f1cfe  blt.s r24, r1, -28
000154  1f010000  addli r2, zero, 0
000158  1f020008  addli r4, zero, 1024
00015c  8b912d10  add.s r3, r27, r2
000160  1f011100  addli r2, r2, 8
000164  6780f100  storeli.w r15, 0(r3)
000168  67c0f100  storeli.w r15, 4(r3)
00016c  00a00000  mfence { lm }
000170  bb3f41fe  bneq r2, r4, -20
000174  1f010000  addli r2, zero, 0
000178  1f070fe4  addli r14, r30, -3584
00017c  8b112710  add.s r3, r14, r2
000180  1f011100  addli r2, r2, 8
000184  67800100  storeli.w zero, 0(r3)
000188  67c00100  storeli.w zero, 4(r3)
00018c  00a00000  mfence { lm }
000190  bb3f41fe  bneq r2, r4, -20
000194  9bb0b000  slli r1, r1, 11
000198  e70bdfe2  storeli.w r13, -3656(r30)
00019c  670e1fe2  storeli.w r1, -3616(r30)
0001a0  9f000000  addli r1, zero, 0
0001a4  db020000  j 20
0001a8  1f01000e  addli r2, zero, 1792
0001ac  13812004  setlt.u r2, r1, r2
0001b0  9f800002  addli r1, r1, 256
0001b4  372b0100  beq r2, zero, 712
0001b8  1f010000  addli r2, zero, 0
0001bc  8b112910  add.s r3, r18, r2
0001c0  1f410100  addli r2, r2, 4
0001c4  73900100  store.h zero, 0(r3)
0001c8  73910100  store.h zero, 2(r3)
0001cc  00a00000  mfence { lm }
0001d0  bb3f31ff  bneq r2, r19, -20
0001d4  6301cfe3  loadli.w r2,  -3616(r30)
0001d8  1f120000  addli r4, zero, 1
0001dc  eb520f00  load.d r[6:7], 0(r30)
0001e0  17912000  or r2, r1, r2
0001e4  33110128  sext_int2long r[3:4], r2
0001e8  17314102  sll.d r[3:4], r[3:4], r4
0001ec  2b0200f0  lui r4, 983040
0001f0  0ba12210  add.ul r[3:4], r[6:7], r[3:4]
0001f4  17924900  or r4, r19, r4
0001f8  7f222101  l_gm2lm r4, r18, 0(r[3:4])
0001fc  1f010000  addli r2, zero, 0
000200  8b912a10  add.s r3, r21, r2
000204  1f410100  addli r2, r2, 4
000208  73900100  store.h zero, 0(r3)
00020c  73910100  store.h zero, 2(r3)
000210  00a00000  mfence { lm }
000214  bb3f31ff  bneq r2, r19, -20
000218  33810028  zext_int2long r[3:4], r1
00021c  1f120000  addli r4, zero, 1
000220  17314102  sll.d r[3:4], r[3:4], r4
000224  2b0200f0  lui r4, 983040
000228  0ba12c10  add.ul r[3:4], r[26:27], r[3:4]
00022c  17924900  or r4, r19, r4
000230  7f225101  l_gm2lm r4, r21, 0(r[3:4])
000234  1f410000  addli r2, zero, 4
000238  9f010000  addli r3, zero, 0
00023c  db070000  j 60
000240  0b631321  mul.f.rn r6, r6, r17
000244  8be3a320  mul.f.rn r7, r7, r10
000248  e7cfb2fe  storeli.w r11, -4(r5)
00024c  6780d200  storeli.w r13, 0(r5)
000250  1f011100  addli r2, r2, 8
000254  9fc10100  addli r3, r3, 4
000258  00a00000  mfence { lm }
00025c  0b636410  add.f.rn r6, r8, r6
000260  8b637810  add.f.rn r7, r16, r7
000264  e74f62fe  storeli.w r6, -4(r4)
000268  67007200  storeli.w r7, 0(r4)
00026c  1f420008  addli r4, zero, 1028
000270  00a00000  mfence { lm }
000274  b75c41fe  beq r2, r4, -204
000278  0b122710  add.s r4, r14, r2
00027c  8b922d10  add.s r5, r27, r2
000280  8b143910  add.s r9, r18, r3
000284  8b963a10  add.s r13, r21, r3
000288  63c5f2ff  loadli.w r10,  -4(r5)
00028c  6343f2ff  loadli.w r6,  -4(r4)
000290  e3030200  loadli.w r7,  0(r4)
000294  63840200  loadli.w r8,  0(r5)
000298  00a00000  mfence { lm }
00029c  ebb50400  load.hu r11, 0(r9)
0002a0  6bb62400  load.hu r12, 2(r9)
0002a4  00a00000  mfence { lm }
0002a8  ebb40600  load.hu r9, 0(r13)
0002ac  ebb62600  load.hu r13, 2(r13)
0002b0  1f080500  addli r16, r10, 0
0002b4  8bd49510  add.hf.rn r9, r11, r9
0002b8  b3940420  hfloat2float.rn r9, r9
0002bc  93e5a404  setlt.f r11, r9, r10
0002c0  3ba00500  bneq r11, zero, 8
0002c4  1f880400  addli r16, r9, 0
0002c8  9b359500  slli r11, r10, 9
0002cc  9bb89400  slli r17, r9, 9
0002d0  1b4a7501  srli r20, r10, 23
0002d4  1bcb7401  srli r22, r9, 23
0002d8  93850500  seteq r11, r11, zero
0002dc  93880800  seteq r17, r17, zero
0002e0  1b0afa0f  andi r20, r20, 255
0002e4  1b0bfb0f  andi r22, r22, 255
0002e8  1b7afa0f  setlti r20, r20, 255
0002ec  1b7bfb0f  setlti r22, r22, 255
0002f0  9715ba00  or r11, r20, r11
0002f4  97181b01  or r17, r22, r17
0002f8  97851501  and r11, r11, r17
0002fc  b7840500  beq r11, zero, 288
000300  9f080500  addli r17, r10, 0
000304  bb140500  bneq r10, zero, 292
000308  9f850400  addli r11, r9, 0
00030c  37a00400  beq r9, zero, 8
000310  9f850800  addli r11, r17, 0
000314  93680007  setle.f r17, zero, r16
000318  136a0806  setle.f r20, r16, zero
00031c  97081a01  and r17, r20, r17
000320  3ba00800  bneq r17, zero, 8
000324  9f050800  addli r11, r16, 0
000328  0b56d610  add.hf.rn r12, r12, r13
00032c  1f080400  addli r16, r8, 0
000330  33160620  hfloat2float.rn r12, r12
000334  93668604  setlt.f r13, r12, r8
000338  3ba00600  bneq r13, zero, 8
00033c  1f080600  addli r16, r12, 0
000340  9b369400  slli r13, r8, 9
000344  9b389600  slli r17, r12, 9
000348  1b4a7401  srli r20, r8, 23
00034c  1b4b7601  srli r22, r12, 23
000350  93860600  seteq r13, r13, zero
000354  93880800  seteq r17, r17, zero
000358  1b0afa0f  andi r20, r20, 255
00035c  1b0bfb0f  andi r22, r22, 255
000360  1b7afa0f  setlti r20, r20, 255
000364  1b7bfb0f  setlti r22, r22, 255
000368  9716da00  or r13, r20, r13
00036c  97181b01  or r17, r22, r17
000370  97861601  and r13, r13, r17
000374  37930600  beq r13, zero, 196
000378  9f080400  addli r17, r8, 0
00037c  3b230400  bneq r8, zero, 200
000380  9f060600  addli r13, r12, 0
000384  37200600  beq r12, zero, 8
000388  9f860800  addli r13, r17, 0
00038c  93680007  setle.f r17, zero, r16
000390  136a0806  setle.f r20, r16, zero
000394  97081a01  and r17, r20, r17
000398  3ba00800  bneq r17, zero, 8
00039c  9f060800  addli r13, r16, 0
0003a0  1bb89500  slli r16, r11, 9
0003a4  93e8b706  setle.f r17, r15, r11
0003a8  13eaf506  setle.f r20, r11, r15
0003ac  1bcb7501  srli r22, r11, 23
0003b0  13080800  seteq r16, r16, zero
0003b4  1b0bfb0f  andi r22, r22, 255
0003b8  1b7bfb0f  setlti r22, r22, 255
0003bc  97081a01  and r17, r20, r17
0003c0  17180b01  or r16, r22, r16
0003c4  178a0801  and r20, r17, r16
0003c8  2b08803f  lui r16, 260096
0003cc  ab08803f  lui r17, 260096
0003d0  3b300a00  bneq r20, zero, 12
0003d4  0b65b518  sub.f.rn r10, r10, r11
0003d8  8f080500  exp.f.rn r17, r10
0003dc  1bb59600  slli r10, r13, 9
0003e0  93ebd706  setle.f r23, r15, r13
0003e4  13ecf606  setle.f r24, r13, r15
0003e8  1bcb7601  srli r22, r13, 23
0003ec  13050500  seteq r10, r10, zero
0003f0  1b0bfb0f  andi r22, r22, 255
0003f4  1b7bfb0f  setlti r22, r22, 255
0003f8  1715ab00  or r10, r22, r10
0003fc  170b7c01  and r22, r24, r23
000400  170bab00  and r22, r22, r10
000404  2b05803f  lui r10, 260096
000408  37310b00  beq r22, zero, 76
00040c  2b04803f  lui r8, 260096
000410  37510a00  beq r20, zero, 84
000414  bb380bfe  bneq r22, zero, -468
000418  5b0b0000  j 88
00041c  2b08c07f  lui r16, 523264
000420  9f080500  addli r17, r10, 0
000424  b71b05fe  beq r10, zero, -284
000428  9f080800  addli r17, r16, 0
00042c  9f850400  addli r11, r9, 0
000430  bb8b04fe  bneq r9, zero, -288
000434  5bdcffff  j -288
000438  2b08c07f  lui r16, 523264
00043c  9f080400  addli r17, r8, 0
000440  370d04fe  beq r8, zero, -192
000444  9f080800  addli r17, r16, 0
000448  9f060600  addli r13, r12, 0
00044c  bb7c06fe  bneq r12, zero, -196
000450  dbe7ffff  j -196
000454  0b64d418  sub.f.rn r8, r8, r13
000458  0f050400  exp.f.rn r10, r8
00045c  2b04803f  lui r8, 260096
000460  bb5e0afe  bneq r20, zero, -76
000464  0be4b418  sub.f.rn r8, r9, r11
000468  0f040400  exp.f.rn r8, r8
00046c  3b570bfe  bneq r22, zero, -556
000470  8b64d618  sub.f.rn r9, r12, r13
000474  0f880400  exp.f.rn r16, r9
000478  5bb9ffff  j -568
00047c  e3000fe4  loadli.w r1,  -3584(r30)
000480  63010fec  loadli.w r2,  -2560(r30)
000484  63460fec  loadli.w r12,  -2556(r30)
000488  9f010000  addli r3, zero, 0
00048c  674b1fe2  storeli.w r1, -3660(r30)
000490  e3400fe4  loadli.w r1,  -3580(r30)
000494  9f060600  addli r13, r12, 0
000498  1f070600  addli r14, r12, 0
00049c  1f050600  addli r10, r12, 0
0004a0  1f030600  addli r6, r12, 0
0004a4  1f040600  addli r8, r12, 0
0004a8  9f030600  addli r7, r12, 0
0004ac  9f040100  addli r9, r2, 0
0004b0  1f0c0100  addli r24, r2, 0
0004b4  9f0b0100  addli r23, r2, 0
0004b8  1f0b0100  addli r22, r2, 0
0004bc  9f080100  addli r17, r2, 0
0004c0  e74ecfe2  storeli.w r12, -3604(r30)
0004c4  e74acfe2  storeli.w r12, -3668(r30)
0004c8  674e2fe2  storeli.w r2, -3612(r30)
0004cc  e70f2fe2  storeli.w r2, -3592(r30)
0004d0  e70a2fe2  storeli.w r2, -3672(r30)
0004d4  e70e2fe2  storeli.w r2, -3608(r30)
0004d8  670b1fe2  storeli.w r1, -3664(r30)
0004dc  db030000  j 28
0004e0  e3019fe3  loadli.w r3,  -3640(r30)
0004e4  e344ffe3  loadli.w r9,  -3588(r30)
0004e8  9f008007  addli r1, zero, 960
0004ec  e70f0fe3  storeli.w r16, -3592(r30)
0004f0  9f818100  addli r3, r3, 64
0004f4  b7831104  beq r3, r1, 2272
0004f8  0b913d10  add.s r2, r27, r3
0004fc  e74c1fe3  storeli.w r17, -3636(r30)
000500  e70c3fe2  storeli.w r3, -3640(r30)
000504  674fefe2  storeli.w r14, -3596(r30)
000508  670fafe2  storeli.w r10, -3600(r30)
00050c  670ddfe2  storeli.w r13, -3632(r30)
000510  674d6fe2  storeli.w r6, -3628(r30)
000514  e70d8fe2  storeli.w r8, -3624(r30)
000518  e74d7fe2  storeli.w r7, -3620(r30)
00051c  1f880400  addli r16, r9, 0
000520  1f020b00  addli r4, r22, 0
000524  9f830b00  addli r7, r23, 0
000528  e3083100  loadli.w r17,  24(r2)
00052c  e3418100  loadli.w r3,  68(r2)
000530  63434100  loadli.w r6,  36(r2)
000534  e3401100  loadli.w r1,  12(r2)
000538  e3462100  loadli.w r13,  20(r2)
00053c  e3423100  loadli.w r5,  28(r2)
000540  e30d4100  loadli.w r27,  32(r2)
000544  63041100  loadli.w r8,  8(r2)
000548  63052100  loadli.w r10,  16(r2)
00054c  634a7100  loadli.w r20,  60(r2)
000550  e3058100  loadli.w r11,  64(r2)
000554  e30c5100  loadli.w r25,  40(r2)
000558  630d6100  loadli.w r26,  48(r2)
00055c  13e77805  setlt.f r14, r17, r23
000560  674c3fe2  storeli.w r3, -3644(r30)
000564  e3415100  loadli.w r3,  44(r2)
000568  670c3fe2  storeli.w r3, -3648(r30)
00056c  e3416100  loadli.w r3,  52(r2)
000570  63017100  loadli.w r2,  56(r2)
000574  e74b3fe2  storeli.w r3, -3652(r30)
000578  3b200700  bneq r14, zero, 8
00057c  9f830800  addli r7, r17, 0
000580  1bb79800  slli r14, r17, 9
000584  1bbb9b00  slli r22, r23, 9
000588  9bc17801  srli r3, r17, 23
00058c  9f840b00  addli r9, r23, 0
000590  9bcb7b01  srli r23, r23, 23
000594  13070700  seteq r14, r14, zero
000598  130b0b00  seteq r22, r22, zero
00059c  9b81f10f  andi r3, r3, 255
0005a0  9b8bfb0f  andi r23, r23, 255
0005a4  9bf1f10f  setlti r3, r3, 255
0005a8  9bfbfb0f  setlti r23, r23, 255
0005ac  9791e100  or r3, r3, r14
0005b0  17976b01  or r14, r23, r22
0005b4  97013700  and r3, r14, r3
0005b8  37eb0102  beq r3, zero, 1752
0005bc  3bfb0402  bneq r9, zero, 1756
0005c0  37a00800  beq r17, zero, 8
0005c4  9f880400  addli r17, r9, 0
0005c8  93617006  setle.f r3, zero, r7
0005cc  13e70306  setle.f r14, r7, zero
0005d0  9f8b0800  addli r23, r17, 0
0005d4  97013700  and r3, r14, r3
0005d8  3ba00100  bneq r3, zero, 8
0005dc  9f8b0300  addli r23, r7, 0
0005e0  9f030c00  addli r7, r24, 0
0005e4  9f040800  addli r9, r16, 0
0005e8  93617504  setlt.f r3, r10, r7
0005ec  3ba00100  bneq r3, zero, 8
0005f0  9f030500  addli r7, r10, 0
0005f4  9b319500  slli r3, r10, 9
0005f8  1b379c00  slli r14, r24, 9
0005fc  9b487501  srli r17, r10, 23
000600  1b4b7c01  srli r22, r24, 23
000604  93810100  seteq r3, r3, zero
000608  13070700  seteq r14, r14, zero
00060c  9b88f80f  andi r17, r17, 255
000610  1b0bfb0f  andi r22, r22, 255
000614  9bf8f80f  setlti r17, r17, 255
000618  1b7bfb0f  setlti r22, r22, 255
00061c  97913800  or r3, r17, r3
000620  1717eb00  or r14, r22, r14
000624  97013700  and r3, r14, r3
000628  b7f90102  beq r3, zero, 1660
00062c  1f0b0200  addli r22, r4, 0
000630  3b0a0c02  bneq r24, zero, 1664
000634  37200500  beq r10, zero, 8
000638  1f050c00  addli r10, r24, 0
00063c  93617006  setle.f r3, zero, r7
000640  13e70306  setle.f r14, r7, zero
000644  1f0c0500  addli r24, r10, 0
000648  97013700  and r3, r14, r3
00064c  3ba00100  bneq r3, zero, 8
000650  1f8c0300  addli r24, r7, 0
000654  93619404  setlt.f r3, r8, r9
000658  9f830400  addli r7, r9, 0
00065c  3ba00100  bneq r3, zero, 8
000660  9f030400  addli r7, r8, 0
000664  9b319400  slli r3, r8, 9
000668  1bb59400  slli r10, r9, 9
00066c  1b477401  srli r14, r8, 23
000670  9bc87401  srli r17, r9, 23
000674  93810100  seteq r3, r3, zero
000678  13050500  seteq r10, r10, zero
00067c  1b07f70f  andi r14, r14, 255
000680  9b88f80f  andi r17, r17, 255
000684  1b77f70f  setlti r14, r14, 255
000688  9bf8f80f  setlti r17, r17, 255
00068c  97113700  or r3, r14, r3
000690  1795a800  or r10, r17, r10
000694  97013500  and r3, r10, r3
000698  3ba00100  bneq r3, zero, 8
00069c  ab03c07f  lui r7, 523264
0006a0  e3489fe3  loadli.w r17,  -3636(r30)
0006a4  37a00400  beq r9, zero, 8
0006a8  9f840300  addli r9, r7, 0
0006ac  6302ffe3  loadli.w r4,  -3592(r30)
0006b0  6348cfe3  loadli.w r16,  -3612(r30)
0006b4  37200400  beq r8, zero, 8
0006b8  1f840400  addli r8, r9, 0
0006bc  93617006  setle.f r3, zero, r7
0006c0  13e50306  setle.f r10, r7, zero
0006c4  e304dfe3  loadli.w r9,  -3608(r30)
0006c8  e74f8fe2  storeli.w r8, -3588(r30)
0006cc  97013500  and r3, r10, r3
0006d0  3ba00100  bneq r3, zero, 8
0006d4  e74f7fe2  storeli.w r7, -3588(r30)
0006d8  93e10d05  setlt.f r3, r27, r16
0006dc  9f030800  addli r7, r16, 0
0006e0  3ba00100  bneq r3, zero, 8
0006e4  9f830d00  addli r7, r27, 0
0006e8  9bb19d00  slli r3, r27, 9
0006ec  1b349800  slli r8, r16, 9
0006f0  1bc57d01  srli r10, r27, 23
0006f4  1b477801  srli r14, r16, 23
0006f8  93810100  seteq r3, r3, zero
0006fc  13040400  seteq r8, r8, zero
000700  1b05f50f  andi r10, r10, 255
000704  1b07f70f  andi r14, r14, 255
000708  1b75f50f  setlti r10, r10, 255
00070c  1b77f70f  setlti r14, r14, 255
000710  97113500  or r3, r10, r3
000714  17148700  or r8, r14, r8
000718  97013400  and r3, r8, r3
00071c  b7860102  beq r3, zero, 1440
000720  bb160802  bneq r16, zero, 1444
000724  37a00d00  beq r27, zero, 8
000728  9f0d0800  addli r27, r16, 0
00072c  93617006  setle.f r3, zero, r7
000730  13e40306  setle.f r8, r7, zero
000734  1f880d00  addli r16, r27, 0
000738  97013400  and r3, r8, r3
00073c  3ba00100  bneq r3, zero, 8
000740  1f880300  addli r16, r7, 0
000744  93611105  setlt.f r3, r2, r17
000748  9f830800  addli r7, r17, 0
00074c  9f0d0fec  addli r27, r30, -2560
000750  3ba00100  bneq r3, zero, 8
000754  9f030100  addli r7, r2, 0
000758  9b319100  slli r3, r2, 9
00075c  1bb49800  slli r8, r17, 9
000760  1b457101  srli r10, r2, 23
000764  1bc77801  srli r14, r17, 23
000768  93810100  seteq r3, r3, zero
00076c  13040400  seteq r8, r8, zero
000770  1b05f50f  andi r10, r10, 255
000774  1b07f70f  andi r14, r14, 255
000778  1b75f50f  setlti r10, r10, 255
00077c  1b77f70f  setlti r14, r14, 255
000780  97113500  or r3, r10, r3
000784  17148700  or r8, r14, r8
000788  97013400  and r3, r8, r3
00078c  37950102  beq r3, zero, 1348
000790  6347efe3  loadli.w r14,  -3596(r30)
000794  3ba50802  bneq r17, zero, 1352
000798  37200100  beq r2, zero, 8
00079c  1f810800  addli r2, r17, 0
0007a0  93617006  setle.f r3, zero, r7
0007a4  13e40306  setle.f r8, r7, zero
0007a8  9f080100  addli r17, r2, 0
0007ac  97013400  and r3, r8, r3
0007b0  3ba00100  bneq r3, zero, 8
0007b4  9f880300  addli r17, r7, 0
0007b8  93616d05  setlt.f r3, r26, r22
0007bc  1f010b00  addli r2, r22, 0
0007c0  3ba00100  bneq r3, zero, 8
0007c4  1f010d00  addli r2, r26, 0
0007c8  9b319d00  slli r3, r26, 9
0007cc  9b339b00  slli r7, r22, 9
0007d0  1b447d01  srli r8, r26, 23
0007d4  1b457b01  srli r10, r22, 23
0007d8  93810100  seteq r3, r3, zero
0007dc  93830300  seteq r7, r7, zero
0007e0  1b04f40f  andi r8, r8, 255
0007e4  1b05f50f  andi r10, r10, 255
0007e8  1b74f40f  setlti r8, r8, 255
0007ec  1b75f50f  setlti r10, r10, 255
0007f0  97113400  or r3, r8, r3
0007f4  97137500  or r7, r10, r7
0007f8  97813300  and r3, r7, r3
0007fc  b7b30102  beq r3, zero, 1260
000800  bb430b02  bneq r22, zero, 1264
000804  37200d00  beq r26, zero, 8
000808  1f0d0b00  addli r26, r22, 0
00080c  93612006  setle.f r3, zero, r2
000810  93630106  setle.f r7, r2, zero
000814  1f0b0d00  addli r22, r26, 0
000818  97813300  and r3, r7, r3
00081c  3ba00100  bneq r3, zero, 8
000820  1f0b0100  addli r22, r2, 0
000824  93e14c04  setlt.f r3, r25, r4
000828  1f010200  addli r2, r4, 0
00082c  3ba00100  bneq r3, zero, 8
000830  1f810c00  addli r2, r25, 0
000834  9bb19c00  slli r3, r25, 9
000838  9b339200  slli r7, r4, 9
00083c  1bc47c01  srli r8, r25, 23
000840  1b457201  srli r10, r4, 23
000844  93810100  seteq r3, r3, zero
000848  93830300  seteq r7, r7, zero
00084c  1b04f40f  andi r8, r8, 255
000850  1b05f50f  andi r10, r10, 255
000854  1b74f40f  setlti r8, r8, 255
000858  1b75f50f  setlti r10, r10, 255
00085c  97113400  or r3, r8, r3
000860  97137500  or r7, r10, r7
000864  97813300  and r3, r7, r3
000868  37d20102  beq r3, zero, 1172
00086c  3b620202  bneq r4, zero, 1176
000870  674e0fe3  storeli.w r16, -3612(r30)
000874  37a00c00  beq r25, zero, 8
000878  9f0c0200  addli r25, r4, 0
00087c  93612006  setle.f r3, zero, r2
000880  93630106  setle.f r7, r2, zero
000884  1f880c00  addli r16, r25, 0
000888  97813300  and r3, r7, r3
00088c  3ba00100  bneq r3, zero, 8
000890  1f080100  addli r16, r2, 0
000894  93e19504  setlt.f r3, r11, r9
000898  eb5c8f00  load.d r[26:27], 8(r30)
00089c  63028fe3  loadli.w r4,  -3648(r30)
0008a0  1f810400  addli r2, r9, 0
0008a4  3ba00100  bneq r3, zero, 8
0008a8  1f810500  addli r2, r11, 0
0008ac  9bb19500  slli r3, r11, 9
0008b0  9bb39400  slli r7, r9, 9
0008b4  1bc47501  srli r8, r11, 23
0008b8  1bc57401  srli r10, r9, 23
0008bc  93810100  seteq r3, r3, zero
0008c0  93830300  seteq r7, r7, zero
0008c4  1b04f40f  andi r8, r8, 255
0008c8  1b05f50f  andi r10, r10, 255
0008cc  1b74f40f  setlti r8, r8, 255
0008d0  1b75f50f  setlti r10, r10, 255
0008d4  97113400  or r3, r8, r3
0008d8  97137500  or r7, r10, r7
0008dc  97813300  and r3, r7, r3
0008e0  b7d00102  beq r3, zero, 1076
0008e4  bbe00402  bneq r9, zero, 1080
0008e8  37a00500  beq r11, zero, 8
0008ec  9f850400  addli r11, r9, 0
0008f0  93612006  setle.f r3, zero, r2
0008f4  93630106  setle.f r7, r2, zero
0008f8  9f840500  addli r9, r11, 0
0008fc  97813300  and r3, r7, r3
000900  3ba00100  bneq r3, zero, 8
000904  9f040100  addli r9, r2, 0
000908  93e1e204  setlt.f r3, r5, r14
00090c  e345afe3  loadli.w r11,  -3628(r30)
000910  1f010700  addli r2, r14, 0
000914  3ba00100  bneq r3, zero, 8
000918  1f810200  addli r2, r5, 0
00091c  9bb19200  slli r3, r5, 9
000920  9b339700  slli r7, r14, 9
000924  1bc47201  srli r8, r5, 23
000928  1b457701  srli r10, r14, 23
00092c  93810100  seteq r3, r3, zero
000930  93830300  seteq r7, r7, zero
000934  1b04f40f  andi r8, r8, 255
000938  1b05f50f  andi r10, r10, 255
00093c  1b74f40f  setlti r8, r8, 255
000940  1b75f50f  setlti r10, r10, 255
000944  97113400  or r3, r8, r3
000948  97137500  or r7, r10, r7
00094c  97813300  and r3, r7, r3
000950  37ef0100  beq r3, zero, 984
000954  6345dfe3  loadli.w r10,  -3604(r30)
000958  3b7f0700  bneq r14, zero, 988
00095c  37a00200  beq r5, zero, 8
000960  9f020700  addli r5, r14, 0
000964  93612006  setle.f r3, zero, r2
000968  93630106  setle.f r7, r2, zero
00096c  1f870200  addli r14, r5, 0
000970  97813300  and r3, r7, r3
000974  3ba00100  bneq r3, zero, 8
000978  1f070100  addli r14, r2, 0
00097c  93e1a604  setlt.f r3, r13, r10
000980  1f010500  addli r2, r10, 0
000984  3ba00100  bneq r3, zero, 8
000988  1f810600  addli r2, r13, 0
00098c  9bb19600  slli r3, r13, 9
000990  9b329500  slli r5, r10, 9
000994  9bc37601  srli r7, r13, 23
000998  1b447501  srli r8, r10, 23
00099c  93810100  seteq r3, r3, zero
0009a0  93820200  seteq r5, r5, zero
0009a4  9b83f30f  andi r7, r7, 255
0009a8  1b04f40f  andi r8, r8, 255
0009ac  9bf3f30f  setlti r7, r7, 255
0009b0  1b74f40f  setlti r8, r8, 255
0009b4  97913300  or r3, r7, r3
0009b8  97125400  or r5, r8, r5
0009bc  97813200  and r3, r5, r3
0009c0  378e0100  beq r3, zero, 896
0009c4  3b1e0500  bneq r10, zero, 900
0009c8  37a00600  beq r13, zero, 8
0009cc  9f060500  addli r13, r10, 0
0009d0  93612006  setle.f r3, zero, r2
0009d4  93620106  setle.f r5, r2, zero
0009d8  97813200  and r3, r5, r3
0009dc  3ba00100  bneq r3, zero, 8
0009e0  9f060100  addli r13, r2, 0
0009e4  6305afe3  loadli.w r10,  -3632(r30)
0009e8  e74edfe2  storeli.w r13, -3604(r30)
0009ec  93e1a004  setlt.f r3, r1, r10
0009f0  1f010500  addli r2, r10, 0
0009f4  3ba00100  bneq r3, zero, 8
0009f8  1f810000  addli r2, r1, 0
0009fc  9bb19000  slli r3, r1, 9
000a00  9b329500  slli r5, r10, 9
000a04  9bc37001  srli r7, r1, 23
000a08  1b447501  srli r8, r10, 23
000a0c  93810100  seteq r3, r3, zero
000a10  93820200  seteq r5, r5, zero
000a14  9b83f30f  andi r7, r7, 255
000a18  1b04f40f  andi r8, r8, 255
000a1c  9bf3f30f  setlti r7, r7, 255
000a20  1b74f40f  setlti r8, r8, 255
000a24  97913300  or r3, r7, r3
000a28  97125400  or r5, r8, r5
000a2c  97813200  and r3, r5, r3
000a30  b79c0100  beq r3, zero, 804
000a34  6304bfe3  loadli.w r8,  -3624(r30)
000a38  bb2c0500  bneq r10, zero, 808
000a3c  37a00000  beq r1, zero, 8
000a40  9f000500  addli r1, r10, 0
000a44  93612006  setle.f r3, zero, r2
000a48  93620106  setle.f r5, r2, zero
000a4c  9f860000  addli r13, r1, 0
000a50  97813200  and r3, r5, r3
000a54  3ba00100  bneq r3, zero, 8
000a58  9f060100  addli r13, r2, 0
000a5c  6305efe3  loadli.w r10,  -3600(r30)
000a60  1361a304  setlt.f r2, r6, r10
000a64  9f000500  addli r1, r10, 0
000a68  3b200100  bneq r2, zero, 8
000a6c  9f000300  addli r1, r6, 0
000a70  1b319300  slli r2, r6, 9
000a74  9b319500  slli r3, r10, 9
000a78  9b427301  srli r5, r6, 23
000a7c  9b437501  srli r7, r10, 23
000a80  13010100  seteq r2, r2, zero
000a84  93810100  seteq r3, r3, zero
000a88  9b82f20f  andi r5, r5, 255
000a8c  9b83f30f  andi r7, r7, 255
000a90  9bf2f20f  setlti r5, r5, 255
000a94  9bf3f30f  setlti r7, r7, 255
000a98  17912200  or r2, r5, r2
000a9c  97913300  or r3, r7, r3
000aa0  17812100  and r2, r3, r2
000aa4  372b0100  beq r2, zero, 712
000aa8  e343bfe3  loadli.w r7,  -3620(r30)
000aac  3b3b0500  bneq r10, zero, 716
000ab0  37200300  beq r6, zero, 8
000ab4  1f030500  addli r6, r10, 0
000ab8  13611006  setle.f r2, zero, r1
000abc  93e10006  setle.f r3, r1, zero
000ac0  1f050300  addli r10, r6, 0
000ac4  17812100  and r2, r3, r2
000ac8  3b200100  bneq r2, zero, 8
000acc  1f850000  addli r10, r1, 0
000ad0  13617a04  setlt.f r2, r20, r7
000ad4  9f800300  addli r1, r7, 0
000ad8  3b200100  bneq r2, zero, 8
000adc  9f000a00  addli r1, r20, 0
000ae0  1b319a00  slli r2, r20, 9
000ae4  9bb19300  slli r3, r7, 9
000ae8  9b427a01  srli r5, r20, 23
000aec  1bc37301  srli r6, r7, 23
000af0  13010100  seteq r2, r2, zero
000af4  93810100  seteq r3, r3, zero
000af8  9b82f20f  andi r5, r5, 255
000afc  1b03f30f  andi r6, r6, 255
000b00  9bf2f20f  setlti r5, r5, 255
000b04  1b73f30f  setlti r6, r6, 255
000b08  17912200  or r2, r5, r2
000b0c  97113300  or r3, r6, r3
000b10  17812100  and r2, r3, r2
000b14  b7490100  beq r2, zero, 624
000b18  bbd90300  bneq r7, zero, 628
000b1c  37200a00  beq r20, zero, 8
000b20  1f8a0300  addli r20, r7, 0
000b24  13611006  setle.f r2, zero, r1
000b28  93e10006  setle.f r3, r1, zero
000b2c  9f030a00  addli r7, r20, 0
000b30  17812100  and r2, r3, r2
000b34  3b200100  bneq r2, zero, 8
000b38  9f830000  addli r7, r1, 0
000b3c  634a7fe3  loadli.w r20,  -3652(r30)
000b40  9f000400  addli r1, r8, 0
000b44  13618a04  setlt.f r2, r20, r8
000b48  3b200100  bneq r2, zero, 8
000b4c  9f000a00  addli r1, r20, 0
000b50  1b319a00  slli r2, r20, 9
000b54  9b319400  slli r3, r8, 9
000b58  9b427a01  srli r5, r20, 23
000b5c  1b437401  srli r6, r8, 23
000b60  13010100  seteq r2, r2, zero
000b64  93810100  seteq r3, r3, zero
000b68  9b82f20f  andi r5, r5, 255
000b6c  1b03f30f  andi r6, r6, 255
000b70  9bf2f20f  setlti r5, r5, 255
000b74  1b73f30f  setlti r6, r6, 255
000b78  17912200  or r2, r5, r2
000b7c  97113300  or r3, r6, r3
000b80  17812100  and r2, r3, r2
000b84  37580100  beq r2, zero, 532
000b88  3b680400  bneq r8, zero, 536
000b8c  37200a00  beq r20, zero, 8
000b90  1f0a0400  addli r20, r8, 0
000b94  13611006  setle.f r2, zero, r1
000b98  93e10006  setle.f r3, r1, zero
000b9c  1f040a00  addli r8, r20, 0
000ba0  17812100  and r2, r3, r2
000ba4  3b200100  bneq r2, zero, 8
000ba8  1f840000  addli r8, r1, 0
000bac  1361b204  setlt.f r2, r4, r11
000bb0  9f800500  addli r1, r11, 0
000bb4  3b200100  bneq r2, zero, 8
000bb8  9f000200  addli r1, r4, 0
000bbc  1b319200  slli r2, r4, 9
000bc0  9bb19500  slli r3, r11, 9
000bc4  9b427201  srli r5, r4, 23
000bc8  1bc37501  srli r6, r11, 23
000bcc  13010100  seteq r2, r2, zero
000bd0  93810100  seteq r3, r3, zero
000bd4  9b82f20f  andi r5, r5, 255
000bd8  1b03f30f  andi r6, r6, 255
000bdc  9bf2f20f  setlti r5, r5, 255
000be0  1b73f30f  setlti r6, r6, 255
000be4  17912200  or r2, r5, r2
000be8  97113300  or r3, r6, r3
000bec  17812100  and r2, r3, r2
000bf0  b7760100  beq r2, zero, 444
000bf4  3b870500  bneq r11, zero, 448
000bf8  37200200  beq r4, zero, 8
000bfc  1f820500  addli r4, r11, 0
000c00  13611006  setle.f r2, zero, r1
000c04  93e10006  setle.f r3, r1, zero
000c08  1f030200  addli r6, r4, 0
000c0c  17812100  and r2, r3, r2
000c10  3b200100  bneq r2, zero, 8
000c14  1f830000  addli r6, r1, 0
000c18  e3458fe3  loadli.w r11,  -3644(r30)
000c1c  9f000600  addli r1, r12, 0
000c20  13e1c504  setlt.f r2, r11, r12
000c24  3b200100  bneq r2, zero, 8
000c28  9f800500  addli r1, r11, 0
000c2c  1bb19500  slli r2, r11, 9
000c30  9b319600  slli r3, r12, 9
000c34  1bc27501  srli r4, r11, 23
000c38  9b427601  srli r5, r12, 23
000c3c  13010100  seteq r2, r2, zero
000c40  93810100  seteq r3, r3, zero
000c44  1b02f20f  andi r4, r4, 255
000c48  9b82f20f  andi r5, r5, 255
000c4c  1b72f20f  setlti r4, r4, 255
000c50  9bf2f20f  setlti r5, r5, 255
000c54  17112200  or r2, r4, r2
000c58  97913200  or r3, r5, r3
000c5c  17812100  and r2, r3, r2
000c60  b7050100  beq r2, zero, 352
000c64  bb150600  bneq r12, zero, 356
000c68  37a00500  beq r11, zero, 8
000c6c  9f050600  addli r11, r12, 0
000c70  13611006  setle.f r2, zero, r1
000c74  93e10006  setle.f r3, r1, zero
000c78  1f860500  addli r12, r11, 0
000c7c  e70e9fe2  storeli.w r9, -3608(r30)
000c80  17812100  and r2, r3, r2
000c84  3b7101fc  bneq r2, zero, -1956
000c88  1f860000  addli r12, r1, 0
000c8c  db0affff  j -1964
000c90  ab03c07f  lui r7, 523264
000c94  b7b404fc  beq r9, zero, -1748
000c98  9f840300  addli r9, r7, 0
000c9c  bba408fc  bneq r17, zero, -1752
000ca0  5b25ffff  j -1752
000ca4  ab03c07f  lui r7, 523264
000ca8  1f0b0200  addli r22, r4, 0
000cac  37260cfc  beq r24, zero, -1656
000cb0  1f8c0300  addli r24, r7, 0
000cb4  3b1605fc  bneq r10, zero, -1660
000cb8  db30ffff  j -1660
000cbc  ab03c07f  lui r7, 523264
000cc0  b71908fc  beq r16, zero, -1436
000cc4  1f880300  addli r16, r7, 0
000cc8  bb890dfc  bneq r27, zero, -1440
000ccc  5b4cffff  j -1440
000cd0  ab03c07f  lui r7, 523264
000cd4  6347efe3  loadli.w r14,  -3596(r30)
000cd8  378b08fc  beq r17, zero, -1344
000cdc  9f880300  addli r17, r7, 0
000ce0  bb7a01fc  bneq r2, zero, -1348
000ce4  db57ffff  j -1348
000ce8  2b01c07f  lui r2, 523264
000cec  376c0bfc  beq r22, zero, -1256
000cf0  1f0b0100  addli r22, r2, 0
000cf4  3b5c0dfc  bneq r26, zero, -1260
000cf8  db62ffff  j -1260
000cfc  2b01c07f  lui r2, 523264
000d00  b74d02fc  beq r4, zero, -1168
000d04  1f020100  addli r4, r2, 0
000d08  674e0fe3  storeli.w r16, -3612(r30)
000d0c  bbbd0cfc  bneq r25, zero, -1172
000d10  db6dffff  j -1172
000d14  2b01c07f  lui r2, 523264
000d18  37cf04fc  beq r9, zero, -1072
000d1c  9f040100  addli r9, r2, 0
000d20  3bbf05fc  bneq r11, zero, -1076
000d24  db79ffff  j -1076
000d28  2b01c07f  lui r2, 523264
000d2c  6345dfe3  loadli.w r10,  -3604(r30)
000d30  b73007fe  beq r14, zero, -980
000d34  1f070100  addli r14, r2, 0
000d38  bba002fe  bneq r5, zero, -984
000d3c  5b85ffff  j -984
000d40  2b01c07f  lui r2, 523264
000d44  371205fe  beq r10, zero, -892
000d48  1f050100  addli r10, r2, 0
000d4c  3b8206fe  bneq r13, zero, -896
000d50  5b90ffff  j -896
000d54  2b01c07f  lui r2, 523264
000d58  6304bfe3  loadli.w r8,  -3624(r30)
000d5c  b70305fe  beq r10, zero, -800
000d60  1f050100  addli r10, r2, 0
000d64  3bf300fe  bneq r1, zero, -804
000d68  db9bffff  j -804
000d6c  ab00c07f  lui r1, 523264
000d70  e343bfe3  loadli.w r7,  -3620(r30)
000d74  b77405fe  beq r10, zero, -708
000d78  1f850000  addli r10, r1, 0
000d7c  bb6403fe  bneq r6, zero, -712
000d80  5ba7ffff  j -712
000d84  ab00c07f  lui r1, 523264
000d88  37d603fe  beq r7, zero, -620
000d8c  9f830000  addli r7, r1, 0
000d90  3b460afe  bneq r20, zero, -624
000d94  5bb2ffff  j -624
000d98  ab00c07f  lui r1, 523264
000d9c  b74704fe  beq r8, zero, -528
000da0  1f840000  addli r8, r1, 0
000da4  bb370afe  bneq r20, zero, -532
000da8  dbbdffff  j -532
000dac  ab00c07f  lui r1, 523264
000db0  37a905fe  beq r11, zero, -440
000db4  9f850000  addli r11, r1, 0
000db8  3b1902fe  bneq r4, zero, -444
000dbc  dbc8ffff  j -444
000dc0  ab00c07f  lui r1, 523264
000dc4  b71a06fe  beq r12, zero, -348
000dc8  1f860000  addli r12, r1, 0
000dcc  bb8a05fe  bneq r11, zero, -352
000dd0  5bd4ffff  j -352
000dd4  13618b05  setlt.f r2, r22, r24
000dd8  9f000c00  addli r1, r24, 0
000ddc  670fafe2  storeli.w r10, -3600(r30)
000de0  3b200100  bneq r2, zero, 8
000de4  9f000b00  addli r1, r22, 0
000de8  1b319b00  slli r2, r22, 9
000dec  9b319c00  slli r3, r24, 9
000df0  1b427b01  srli r4, r22, 23
000df4  9b427c01  srli r5, r24, 23
000df8  1f080c00  addli r16, r24, 0
000dfc  1f057000  addli r10, zero, 56
000e00  13010100  seteq r2, r2, zero
000e04  93810100  seteq r3, r3, zero
000e08  1b02f20f  andi r4, r4, 255
000e0c  9b82f20f  andi r5, r5, 255
000e10  1b72f20f  setlti r4, r4, 255
000e14  9bf2f20f  setlti r5, r5, 255
000e18  17112200  or r2, r4, r2
000e1c  97913200  or r3, r5, r3
000e20  17812100  and r2, r3, r2
000e24  3b200100  bneq r2, zero, 8
000e28  ab00c07f  lui r1, 523264
000e2c  9f850b00  addli r11, r23, 0
000e30  1f0c0b00  addli r24, r22, 0
000e34  1f0a0fe4  addli r20, r30, -3584
000e38  674fefe2  storeli.w r14, -3596(r30)
000e3c  37200800  beq r16, zero, 8
000e40  1f880000  addli r16, r1, 0
000e44  6b5b0f01  load.d r[23:24], 16(r30)
000e48  63074fe3  loadli.w r14,  -3680(r30)
000e4c  37200c00  beq r24, zero, 8
000e50  1f0c0800  addli r24, r16, 0
000e54  13611006  setle.f r2, zero, r1
000e58  93e10006  setle.f r3, r1, zero
000e5c  17812100  and r2, r3, r2
000e60  3b200100  bneq r2, zero, 8
000e64  1f8c0000  addli r24, r1, 0
000e68  6302dfe3  loadli.w r4,  -3608(r30)
000e6c  e340cfe3  loadli.w r1,  -3612(r30)
000e70  13611204  setlt.f r2, r4, r1
000e74  3b200100  bneq r2, zero, 8
000e78  9f000200  addli r1, r4, 0
000e7c  e342cfe3  loadli.w r5,  -3612(r30)
000e80  1b319200  slli r2, r4, 9
000e84  1b427201  srli r4, r4, 23
000e88  13010100  seteq r2, r2, zero
000e8c  1b02f20f  andi r4, r4, 255
000e90  9bb19200  slli r3, r5, 9
000e94  9bc27201  srli r5, r5, 23
000e98  1b72f20f  setlti r4, r4, 255
000e9c  93810100  seteq r3, r3, zero
000ea0  9b82f20f  andi r5, r5, 255
000ea4  9bf2f20f  setlti r5, r5, 255
000ea8  17112200  or r2, r4, r2
000eac  97913200  or r3, r5, r3
000eb0  17812100  and r2, r3, r2
000eb4  37730104  beq r2, zero, 2268
000eb8  6341cfe3  loadli.w r2,  -3612(r30)
000ebc  bb030104  bneq r2, zero, 2272
000ec0  6301dfe3  loadli.w r2,  -3608(r30)
000ec4  37300100  beq r2, zero, 12
000ec8  6341cfe3  loadli.w r2,  -3612(r30)
000ecc  e70e2fe2  storeli.w r2, -3608(r30)
000ed0  13611006  setle.f r2, zero, r1
000ed4  93e10006  setle.f r3, r1, zero
000ed8  17812100  and r2, r3, r2
000edc  3b200100  bneq r2, zero, 8
000ee0  e70e1fe2  storeli.w r1, -3608(r30)
000ee4  6302ffe3  loadli.w r4,  -3592(r30)
000ee8  9f800400  addli r1, r9, 0
000eec  13619204  setlt.f r2, r4, r9
000ef0  3b200100  bneq r2, zero, 8
000ef4  9f000200  addli r1, r4, 0
000ef8  1b319200  slli r2, r4, 9
000efc  9bb19400  slli r3, r9, 9
000f00  1b427201  srli r4, r4, 23
000f04  9bc27401  srli r5, r9, 23
000f08  13010100  seteq r2, r2, zero
000f0c  93810100  seteq r3, r3, zero
000f10  1b02f20f  andi r4, r4, 255
000f14  9b82f20f  andi r5, r5, 255
000f18  1b72f20f  setlti r4, r4, 255
000f1c  9bf2f20f  setlti r5, r5, 255
000f20  17112200  or r2, r4, r2
000f24  97913200  or r3, r5, r3
000f28  17812100  and r2, r3, r2
000f2c  37020104  beq r2, zero, 2176
000f30  3b920404  bneq r9, zero, 2180
000f34  6301ffe3  loadli.w r2,  -3592(r30)
000f38  37200100  beq r2, zero, 8
000f3c  e70f9fe2  storeli.w r9, -3592(r30)
000f40  13611006  setle.f r2, zero, r1
000f44  93e10006  setle.f r3, r1, zero
000f48  17812100  and r2, r3, r2
000f4c  3b200100  bneq r2, zero, 8
000f50  e70f1fe2  storeli.w r1, -3592(r30)
000f54  1f820800  addli r4, r17, 0
000f58  9f800500  addli r1, r11, 0
000f5c  13611204  setlt.f r2, r4, r1
000f60  3b200100  bneq r2, zero, 8
000f64  9f000200  addli r1, r4, 0
000f68  9f820500  addli r5, r11, 0
000f6c  1b319200  slli r2, r4, 9
000f70  1b427201  srli r4, r4, 23
000f74  9bb19200  slli r3, r5, 9
000f78  13010100  seteq r2, r2, zero
000f7c  9bc27201  srli r5, r5, 23
000f80  1b02f20f  andi r4, r4, 255
000f84  93810100  seteq r3, r3, zero
000f88  9b82f20f  andi r5, r5, 255
000f8c  1b72f20f  setlti r4, r4, 255
000f90  9bf2f20f  setlti r5, r5, 255
000f94  17112200  or r2, r4, r2
000f98  97913200  or r3, r5, r3
000f9c  17812100  and r2, r3, r2
000fa0  b7100104  beq r2, zero, 2084
000fa4  bba00504  bneq r11, zero, 2088
000fa8  37a00800  beq r17, zero, 8
000fac  9f880500  addli r17, r11, 0
000fb0  13611006  setle.f r2, zero, r1
000fb4  93e10006  setle.f r3, r1, zero
000fb8  17812100  and r2, r3, r2
000fbc  3b200100  bneq r2, zero, 8
000fc0  9f880000  addli r17, r1, 0
000fc4  e300ffe3  loadli.w r1,  -3592(r30)
000fc8  9f820800  addli r5, r17, 0
000fcc  13e11204  setlt.f r2, r5, r1
000fd0  3b200100  bneq r2, zero, 8
000fd4  9f800200  addli r1, r5, 0
000fd8  6302ffe3  loadli.w r4,  -3592(r30)
000fdc  9bb19200  slli r3, r5, 9
000fe0  9bc27201  srli r5, r5, 23
000fe4  93810100  seteq r3, r3, zero
000fe8  9b82f20f  andi r5, r5, 255
000fec  1b319200  slli r2, r4, 9
000ff0  1b427201  srli r4, r4, 23
000ff4  9bf2f20f  setlti r5, r5, 255
000ff8  13010100  seteq r2, r2, zero
000ffc  1b02f20f  andi r4, r4, 255
001000  1b72f20f  setlti r4, r4, 255
001004  97913200  or r3, r5, r3
001008  17112200  or r2, r4, r2
00100c  17013100  and r2, r2, r3
001010  372f0102  beq r2, zero, 1992
001014  6301ffe3  loadli.w r2,  -3592(r30)
001018  3b3f0102  bneq r2, zero, 1996
00101c  37a00800  beq r17, zero, 8
001020  e308ffe3  loadli.w r17,  -3592(r30)
001024  13611006  setle.f r2, zero, r1
001028  93e10006  setle.f r3, r1, zero
00102c  17812100  and r2, r3, r2
001030  3b200100  bneq r2, zero, 8
001034  9f880000  addli r17, r1, 0
001038  e304dfe3  loadli.w r9,  -3608(r30)
00103c  9f000c00  addli r1, r24, 0
001040  13e11404  setlt.f r2, r9, r1
001044  3b200100  bneq r2, zero, 8
001048  9f800400  addli r1, r9, 0
00104c  1f020c00  addli r4, r24, 0
001050  9bb19400  slli r3, r9, 9
001054  9bc27401  srli r5, r9, 23
001058  1b319200  slli r2, r4, 9
00105c  93810100  seteq r3, r3, zero
001060  1b427201  srli r4, r4, 23
001064  9b82f20f  andi r5, r5, 255
001068  13010100  seteq r2, r2, zero
00106c  1b02f20f  andi r4, r4, 255
001070  9bf2f20f  setlti r5, r5, 255
001074  1b72f20f  setlti r4, r4, 255
001078  97913200  or r3, r5, r3
00107c  17112200  or r2, r4, r2
001080  17013100  and r2, r2, r3
001084  b73d0102  beq r2, zero, 1900
001088  bb4d0c02  bneq r24, zero, 1904
00108c  37a00400  beq r9, zero, 8
001090  9f040c00  addli r9, r24, 0
001094  13611006  setle.f r2, zero, r1
001098  93e10006  setle.f r3, r1, zero
00109c  17812100  and r2, r3, r2
0010a0  3b200100  bneq r2, zero, 8
0010a4  9f840000  addli r9, r1, 0
0010a8  9f800800  addli r1, r17, 0
0010ac  1f7cf00f  addli r24, zero, 2047
0010b0  13e11404  setlt.f r2, r9, r1
0010b4  3b200100  bneq r2, zero, 8
0010b8  9f800400  addli r1, r9, 0
0010bc  1f820800  addli r4, r17, 0
0010c0  9bb19400  slli r3, r9, 9
0010c4  9bc27401  srli r5, r9, 23
0010c8  1b319200  slli r2, r4, 9
0010cc  93810100  seteq r3, r3, zero
0010d0  1b427201  srli r4, r4, 23
0010d4  9b82f20f  andi r5, r5, 255
0010d8  13010100  seteq r2, r2, zero
0010dc  1b02f20f  andi r4, r4, 255
0010e0  9bf2f20f  setlti r5, r5, 255
0010e4  1b72f20f  setlti r4, r4, 255
0010e8  97913200  or r3, r5, r3
0010ec  17112200  or r2, r4, r2
0010f0  17013100  and r2, r2, r3
0010f4  374c0102  beq r2, zero, 1808
0010f8  3bdc0802  bneq r17, zero, 1812
0010fc  37a00400  beq r9, zero, 8
001100  9f840800  addli r9, r17, 0
001104  13611006  setle.f r2, zero, r1
001108  93e10006  setle.f r3, r1, zero
00110c  17812100  and r2, r3, r2
001110  3b200100  bneq r2, zero, 8
001114  9f840000  addli r9, r1, 0
001118  e340dfe3  loadli.w r1,  -3604(r30)
00111c  9f080700  addli r17, r14, 0
001120  13611404  setlt.f r2, r8, r1
001124  3b200100  bneq r2, zero, 8
001128  9f000400  addli r1, r8, 0
00112c  e342dfe3  loadli.w r5,  -3604(r30)
001130  1b319400  slli r2, r8, 9
001134  1b427401  srli r4, r8, 23
001138  63474f00  loadli.w r14,  36(r30)
00113c  13010100  seteq r2, r2, zero
001140  1b02f20f  andi r4, r4, 255
001144  9bb19200  slli r3, r5, 9
001148  9bc27201  srli r5, r5, 23
00114c  1b72f20f  setlti r4, r4, 255
001150  93810100  seteq r3, r3, zero
001154  9b82f20f  andi r5, r5, 255
001158  9bf2f20f  setlti r5, r5, 255
00115c  17112200  or r2, r4, r2
001160  97913200  or r3, r5, r3
001164  17812100  and r2, r3, r2
001168  b74a0102  beq r2, zero, 1712
00116c  6341dfe3  loadli.w r2,  -3604(r30)
001170  bb5a0102  bneq r2, zero, 1716
001174  37200400  beq r8, zero, 8
001178  6344dfe3  loadli.w r8,  -3604(r30)
00117c  13611006  setle.f r2, zero, r1
001180  93e10006  setle.f r3, r1, zero
001184  17812100  and r2, r3, r2
001188  3b200100  bneq r2, zero, 8
00118c  1f840000  addli r8, r1, 0
001190  e300efe3  loadli.w r1,  -3600(r30)
001194  13611604  setlt.f r2, r12, r1
001198  3b200100  bneq r2, zero, 8
00119c  9f000600  addli r1, r12, 0
0011a0  e302efe3  loadli.w r5,  -3600(r30)
0011a4  1b319600  slli r2, r12, 9
0011a8  1b427601  srli r4, r12, 23
0011ac  13010100  seteq r2, r2, zero
0011b0  1b02f20f  andi r4, r4, 255
0011b4  9bb19200  slli r3, r5, 9
0011b8  9bc27201  srli r5, r5, 23
0011bc  1b72f20f  setlti r4, r4, 255
0011c0  93810100  seteq r3, r3, zero
0011c4  9b82f20f  andi r5, r5, 255
0011c8  9bf2f20f  setlti r5, r5, 255
0011cc  17112200  or r2, r4, r2
0011d0  97913200  or r3, r5, r3
0011d4  17812100  and r2, r3, r2
0011d8  37690102  beq r2, zero, 1624
0011dc  6301efe3  loadli.w r2,  -3600(r30)
0011e0  3b790102  bneq r2, zero, 1628
0011e4  37200600  beq r12, zero, 8
0011e8  6306efe3  loadli.w r12,  -3600(r30)
0011ec  13611006  setle.f r2, zero, r1
0011f0  93e10006  setle.f r3, r1, zero
0011f4  17812100  and r2, r3, r2
0011f8  3b200100  bneq r2, zero, 8
0011fc  1f860000  addli r12, r1, 0
001200  1361d304  setlt.f r2, r6, r13
001204  9f800600  addli r1, r13, 0
001208  3b200100  bneq r2, zero, 8
00120c  9f000300  addli r1, r6, 0
001210  1b319300  slli r2, r6, 9
001214  9bb19600  slli r3, r13, 9
001218  1b427301  srli r4, r6, 23
00121c  9bc27601  srli r5, r13, 23
001220  13010100  seteq r2, r2, zero
001224  93810100  seteq r3, r3, zero
001228  1b02f20f  andi r4, r4, 255
00122c  9b82f20f  andi r5, r5, 255
001230  1b72f20f  setlti r4, r4, 255
001234  9bf2f20f  setlti r5, r5, 255
001238  17112200  or r2, r4, r2
00123c  97913200  or r3, r5, r3
001240  17812100  and r2, r3, r2
001244  37180102  beq r2, zero, 1540
001248  3ba80602  bneq r13, zero, 1544
00124c  37200300  beq r6, zero, 8
001250  1f830600  addli r6, r13, 0
001254  13611006  setle.f r2, zero, r1
001258  93e10006  setle.f r3, r1, zero
00125c  17812100  and r2, r3, r2
001260  3b200100  bneq r2, zero, 8
001264  1f830000  addli r6, r1, 0
001268  e340efe3  loadli.w r1,  -3596(r30)
00126c  13e11304  setlt.f r2, r7, r1
001270  3b200100  bneq r2, zero, 8
001274  9f800300  addli r1, r7, 0
001278  e342efe3  loadli.w r5,  -3596(r30)
00127c  1bb19300  slli r2, r7, 9
001280  1bc27301  srli r4, r7, 23
001284  13010100  seteq r2, r2, zero
001288  1b02f20f  andi r4, r4, 255
00128c  9bb19200  slli r3, r5, 9
001290  9bc27201  srli r5, r5, 23
001294  1b72f20f  setlti r4, r4, 255
001298  93810100  seteq r3, r3, zero
00129c  9b82f20f  andi r5, r5, 255
0012a0  9bf2f20f  setlti r5, r5, 255
0012a4  17112200  or r2, r4, r2
0012a8  97913200  or r3, r5, r3
0012ac  17812100  and r2, r3, r2
0012b0  b7360102  beq r2, zero, 1452
0012b4  6341efe3  loadli.w r2,  -3596(r30)
0012b8  bb460102  bneq r2, zero, 1456
0012bc  37a00300  beq r7, zero, 8
0012c0  e343efe3  loadli.w r7,  -3596(r30)
0012c4  13611006  setle.f r2, zero, r1
0012c8  93e10006  setle.f r3, r1, zero
0012cc  17812100  and r2, r3, r2
0012d0  3b200100  bneq r2, zero, 8
0012d4  9f830000  addli r7, r1, 0
0012d8  13e16304  setlt.f r2, r7, r6
0012dc  9f000300  addli r1, r6, 0
0012e0  3b200100  bneq r2, zero, 8
0012e4  9f800300  addli r1, r7, 0
0012e8  1b319300  slli r2, r6, 9
0012ec  9bb19300  slli r3, r7, 9
0012f0  1b427301  srli r4, r6, 23
0012f4  9bc27301  srli r5, r7, 23
0012f8  13010100  seteq r2, r2, zero
0012fc  93810100  seteq r3, r3, zero
001300  1b02f20f  andi r4, r4, 255
001304  9b82f20f  andi r5, r5, 255
001308  1b72f20f  setlti r4, r4, 255
00130c  9bf2f20f  setlti r5, r5, 255
001310  17112200  or r2, r4, r2
001314  97913200  or r3, r5, r3
001318  17013100  and r2, r2, r3
00131c  37650102  beq r2, zero, 1368
001320  3b750302  bneq r6, zero, 1372
001324  37a00300  beq r7, zero, 8
001328  9f030300  addli r7, r6, 0
00132c  13611006  setle.f r2, zero, r1
001330  93e10006  setle.f r3, r1, zero
001334  17812100  and r2, r3, r2
001338  3b200100  bneq r2, zero, 8
00133c  9f830000  addli r7, r1, 0
001340  13618604  setlt.f r2, r12, r8
001344  9f000400  addli r1, r8, 0
001348  3b200100  bneq r2, zero, 8
00134c  9f000600  addli r1, r12, 0
001350  1b319400  slli r2, r8, 9
001354  9b319600  slli r3, r12, 9
001358  1b427401  srli r4, r8, 23
00135c  9b427601  srli r5, r12, 23
001360  13010100  seteq r2, r2, zero
001364  93810100  seteq r3, r3, zero
001368  1b02f20f  andi r4, r4, 255
00136c  9b82f20f  andi r5, r5, 255
001370  1b72f20f  setlti r4, r4, 255
001374  9bf2f20f  setlti r5, r5, 255
001378  17112200  or r2, r4, r2
00137c  97913200  or r3, r5, r3
001380  17013100  and r2, r2, r3
001384  37140102  beq r2, zero, 1284
001388  3b240402  bneq r8, zero, 1288
00138c  37200600  beq r12, zero, 8
001390  1f060400  addli r12, r8, 0
001394  13611006  setle.f r2, zero, r1
001398  93e10006  setle.f r3, r1, zero
00139c  17812100  and r2, r3, r2
0013a0  3b200100  bneq r2, zero, 8
0013a4  1f860000  addli r12, r1, 0
0013a8  13617604  setlt.f r2, r12, r7
0013ac  9f800300  addli r1, r7, 0
0013b0  3b200100  bneq r2, zero, 8
0013b4  9f000600  addli r1, r12, 0
0013b8  1bb19300  slli r2, r7, 9
0013bc  9b319600  slli r3, r12, 9
0013c0  1bc27301  srli r4, r7, 23
0013c4  9b427601  srli r5, r12, 23
0013c8  13010100  seteq r2, r2, zero
0013cc  93810100  seteq r3, r3, zero
0013d0  1b02f20f  andi r4, r4, 255
0013d4  9b82f20f  andi r5, r5, 255
0013d8  1b72f20f  setlti r4, r4, 255
0013dc  9bf2f20f  setlti r5, r5, 255
0013e0  17112200  or r2, r4, r2
0013e4  97913200  or r3, r5, r3
0013e8  17013100  and r2, r2, r3
0013ec  b7420102  beq r2, zero, 1200
0013f0  bbd20302  bneq r7, zero, 1204
0013f4  37200600  beq r12, zero, 8
0013f8  1f860300  addli r12, r7, 0
0013fc  13611006  setle.f r2, zero, r1
001400  93e10006  setle.f r3, r1, zero
001404  17812100  and r2, r3, r2
001408  3b200100  bneq r2, zero, 8
00140c  1f860000  addli r12, r1, 0
001410  9f000000  addli r1, zero, 0
001414  db010000  j 12
001418  9f801000  addli r1, r1, 8
00141c  37d4a000  beq r1, r10, 276
001420  0b911d10  add.s r2, r27, r1
001424  1f820400  addli r4, r9, 0
001428  e3019107  loadli.w r3,  968(r2)
00142c  63419107  loadli.w r2,  972(r2)
001430  93e29104  setlt.f r5, r3, r9
001434  3ba00200  bneq r5, zero, 8
001438  1f820100  addli r4, r3, 0
00143c  9bb29100  slli r5, r3, 9
001440  1bb39400  slli r6, r9, 9
001444  9bc37101  srli r7, r3, 23
001448  1bc47401  srli r8, r9, 23
00144c  93820200  seteq r5, r5, zero
001450  13030300  seteq r6, r6, zero
001454  9b83f30f  andi r7, r7, 255
001458  1b04f40f  andi r8, r8, 255
00145c  9bf3f30f  setlti r7, r7, 255
001460  1b74f40f  setlti r8, r8, 255
001464  97925300  or r5, r7, r5
001468  17136400  or r6, r8, r6
00146c  97025300  and r5, r6, r5
001470  37e20200  beq r5, zero, 152
001474  3bf20400  bneq r9, zero, 156
001478  37a00100  beq r3, zero, 8
00147c  9f810400  addli r3, r9, 0
001480  93624006  setle.f r5, zero, r4
001484  13630206  setle.f r6, r4, zero
001488  9f840100  addli r9, r3, 0
00148c  97025300  and r5, r6, r5
001490  3ba00200  bneq r5, zero, 8
001494  9f040200  addli r9, r4, 0
001498  1362c104  setlt.f r4, r2, r12
00149c  9f010600  addli r3, r12, 0
0014a0  3b200200  bneq r4, zero, 8
0014a4  9f010100  addli r3, r2, 0
0014a8  1b329100  slli r4, r2, 9
0014ac  9b329600  slli r5, r12, 9
0014b0  1b437101  srli r6, r2, 23
0014b4  9b437601  srli r7, r12, 23
0014b8  13020200  seteq r4, r4, zero
0014bc  93820200  seteq r5, r5, zero
0014c0  1b03f30f  andi r6, r6, 255
0014c4  9b83f30f  andi r7, r7, 255
0014c8  1b73f30f  setlti r6, r6, 255
0014cc  9bf3f30f  setlti r7, r7, 255
0014d0  17124300  or r4, r6, r4
0014d4  97925300  or r5, r7, r5
0014d8  17824200  and r4, r5, r4
0014dc  37010200  beq r4, zero, 64
0014e0  3b110600  bneq r12, zero, 68
0014e4  37200100  beq r2, zero, 8
0014e8  1f010600  addli r2, r12, 0
0014ec  13623006  setle.f r4, zero, r3
0014f0  93e20106  setle.f r5, r3, zero
0014f4  1f060100  addli r12, r2, 0
0014f8  17824200  and r4, r5, r4
0014fc  3b7c02fe  bneq r4, zero, -228
001500  1f860100  addli r12, r3, 0
001504  dbe2ffff  j -236
001508  2b02c07f  lui r4, 523264
00150c  b7bd04fe  beq r9, zero, -148
001510  9f040200  addli r9, r4, 0
001514  bbad01fe  bneq r3, zero, -152
001518  5bedffff  j -152
00151c  ab01c07f  lui r3, 523264
001520  371f06fe  beq r12, zero, -60
001524  1f860100  addli r12, r3, 0
001528  3b0f01fe  bneq r2, zero, -64
00152c  5bf8ffff  j -64
001530  13619604  setlt.f r2, r12, r9
001534  9f800400  addli r1, r9, 0
001538  3b200100  bneq r2, zero, 8
00153c  9f000600  addli r1, r12, 0
001540  1b319600  slli r2, r12, 9
001544  9bb19400  slli r3, r9, 9
001548  1b427601  srli r4, r12, 23
00154c  9bc27401  srli r5, r9, 23
001550  13010100  seteq r2, r2, zero
001554  93810100  seteq r3, r3, zero
001558  1b02f20f  andi r4, r4, 255
00155c  9b82f20f  andi r5, r5, 255
001560  1b72f20f  setlti r4, r4, 255
001564  9bf2f20f  setlti r5, r5, 255
001568  17112200  or r2, r4, r2
00156c  97913200  or r3, r5, r3
001570  17812100  and r2, r3, r2
001574  b77c0100  beq r2, zero, 828
001578  3b8d0400  bneq r9, zero, 832
00157c  37200600  beq r12, zero, 8
001580  1f860400  addli r12, r9, 0
001584  13611006  setle.f r2, zero, r1
001588  93e10006  setle.f r3, r1, zero
00158c  17812100  and r2, r3, r2
001590  3b200100  bneq r2, zero, 8
001594  1f860000  addli r12, r1, 0
001598  9b309600  slli r1, r12, 9
00159c  93e1c706  setle.f r3, r15, r12
0015a0  1362f606  setle.f r4, r12, r15
0015a4  1b417601  srli r2, r12, 23
0015a8  93820000  seteq r5, r1, zero
0015ac  1b01f10f  andi r2, r2, 255
0015b0  1b71f10f  setlti r2, r2, 255
0015b4  97013200  and r3, r4, r3
0015b8  17125100  or r4, r2, r5
0015bc  ab02803f  lui r5, 260096
0015c0  17834100  and r6, r3, r4
0015c4  2b02803f  lui r4, 260096
0015c8  3b400300  bneq r6, zero, 16
0015cc  63025fe3  loadli.w r4,  -3672(r30)
0015d0  0b62c218  sub.f.rn r4, r4, r12
0015d4  0f020200  exp.f.rn r4, r4
0015d8  3b400300  bneq r6, zero, 16
0015dc  e3425fe3  loadli.w r5,  -3668(r30)
0015e0  8be2c218  sub.f.rn r5, r5, r12
0015e4  8f820200  exp.f.rn r5, r5
0015e8  63436fe3  loadli.w r6,  -3660(r30)
0015ec  0b624320  mul.f.rn r4, r6, r4
0015f0  63036fe3  loadli.w r6,  -3664(r30)
0015f4  8b625320  mul.f.rn r5, r6, r5
0015f8  1f030000  addli r6, zero, 0
0015fc  5b040000  j 32
001600  8be3b320  mul.f.rn r7, r7, r11
001604  0b649420  mul.f.rn r8, r8, r9
001608  1f031300  addli r6, r6, 8
00160c  0b627210  add.f.rn r4, r4, r7
001610  8be28210  add.f.rn r5, r5, r8
001614  9f03f007  addli r7, zero, 1016
001618  37317300  beq r6, r7, 76
00161c  93840000  seteq r9, r1, zero
001620  0b146a10  add.s r8, r20, r6
001624  0b986d10  add.s r16, r27, r6
001628  ab05803f  lui r11, 260096
00162c  e3031400  loadli.w r7,  8(r8)
001630  63441400  loadli.w r8,  12(r8)
001634  63451800  loadli.w r10,  12(r16)
001638  97149100  or r9, r2, r9
00163c  97869100  and r13, r3, r9
001640  ab04803f  lui r9, 260096
001644  3bc00600  bneq r13, zero, 16
001648  e3051800  loadli.w r11,  8(r16)
00164c  8be5c518  sub.f.rn r11, r11, r12
001650  8f850500  exp.f.rn r11, r11
001654  bbbe06fe  bneq r13, zero, -84
001658  8b64c518  sub.f.rn r9, r10, r12
00165c  8f840400  exp.f.rn r9, r9
001660  5bf4ffff  j -96
001664  8b605210  add.f.rn r1, r4, r5
001668  2b01803f  lui r2, 260096
00166c  e3055f00  loadli.w r11,  40(r30)
001670  e3067fe3  loadli.w r13,  -3656(r30)
001674  63484fe3  loadli.w r16,  -3676(r30)
001678  003a0002  core_id r20
00167c  8f001118  div.f.rn r1, r2, r1
001680  1f010000  addli r2, zero, 0
001684  9f010000  addli r3, zero, 0
001688  0b123910  add.s r4, r18, r3
00168c  9fc10100  addli r3, r3, 4
001690  73100200  store.h zero, 0(r4)
001694  73110200  store.h zero, 2(r4)
001698  00a00000  mfence { lm }
00169c  bbbf31ff  bneq r3, r19, -20
0016a0  e301cfe3  loadli.w r3,  -3616(r30)
0016a4  9f120000  addli r5, zero, 1
0016a8  6b530f00  load.d r[7:8], 0(r30)
0016ac  97113100  or r3, r2, r3
0016b0  b3910128  sext_int2long r[4:5], r3
0016b4  97b15102  sll.d r[4:5], r[4:5], r5
0016b8  ab0200f0  lui r5, 983040
0016bc  0b233310  add.ul r[7:8], r[7:8], r[4:5]
0016c0  97925900  or r5, r19, r5
0016c4  ff222301  l_gm2lm r5, r18, 0(r[7:8])
0016c8  9f020000  addli r5, zero, 0
0016cc  0b135e10  add.s r6, r28, r5
0016d0  9fc20200  addli r5, r5, 4
0016d4  73100300  store.h zero, 0(r6)
0016d8  73110300  store.h zero, 2(r6)
0016dc  00a00000  mfence { lm }
0016e0  bbbf32ff  bneq r5, r19, -20
0016e4  b3020128  zext_int2long r[6:7], r2
0016e8  9f130000  addli r7, zero, 1
0016ec  97b27202  sll.d r[6:7], r[6:7], r7
0016f0  ab0300f0  lui r7, 983040
0016f4  8ba25c10  add.ul r[6:7], r[26:27], r[6:7]
0016f8  97937900  or r7, r19, r7
0016fc  ffa3c201  l_gm2lm r7, r28, 0(r[6:7])
001700  9f020000  addli r5, zero, 0
001704  00a00000  mfence { lm }
001708  0b135910  add.s r6, r18, r5
00170c  8b145e10  add.s r9, r28, r5
001710  9fc20200  addli r5, r5, 4
001714  eb330300  load.hu r7, 0(r6)
001718  6b342300  load.hu r8, 2(r6)
00171c  00a00000  mfence { lm }
001720  6bb50400  load.hu r10, 0(r9)
001724  ebb42400  load.hu r9, 2(r9)
001728  8bd3a310  add.hf.rn r7, r7, r10
00172c  0b549410  add.hf.rn r8, r8, r9
001730  b3930320  hfloat2float.rn r7, r7
001734  33140420  hfloat2float.rn r8, r8
001738  8be3c318  sub.f.rn r7, r7, r12
00173c  0b64c418  sub.f.rn r8, r8, r12
001740  8f830300  exp.f.rn r7, r7
001744  0f040400  exp.f.rn r8, r8
001748  8be37020  mul.f.rn r7, r1, r7
00174c  0be48020  mul.f.rn r8, r1, r8
001750  b3a30300  float2hfloat.rn r7, r7
001754  33240400  float2hfloat.rn r8, r8
001758  73107300  store.h r7, 0(r6)
00175c  73118300  store.h r8, 2(r6)
001760  00a00000  mfence { lm }
001764  bb9e32ff  bneq r5, r19, -92
001768  1f03000e  addli r6, zero, 1792
00176c  ab0200f0  lui r5, 983040
001770  8b213b10  add.ul r[4:5], r[23:24], r[4:5]
001774  13036104  setlt.u r6, r2, r6
001778  97925900  or r5, r19, r5
00177c  1f010102  addli r2, r2, 256
001780  ffb22101  s_lm2gm r5, r18, 0(r[4:5])
001784  00a00000  mfence { lm }
001788  bb7b03fe  bneq r6, zero, -260
00178c  5b35fdff  j -5720
001790  ab00c07f  lui r1, 523264
001794  6341cfe3  loadli.w r2,  -3612(r30)
001798  b72c01fa  beq r2, zero, -2264
00179c  674e1fe2  storeli.w r1, -3612(r30)
0017a0  6301dfe3  loadli.w r2,  -3608(r30)
0017a4  bb1c01fa  bneq r2, zero, -2268
0017a8  5be5feff  j -2264
0017ac  ab00c07f  lui r1, 523264
0017b0  379e04fa  beq r9, zero, -2172
0017b4  9f840000  addli r9, r1, 0
0017b8  6301ffe3  loadli.w r2,  -3592(r30)
0017bc  3b0e01fa  bneq r2, zero, -2176
0017c0  5bf0feff  j -2176
0017c4  ab00c07f  lui r1, 523264
0017c8  b78f05fa  beq r11, zero, -2080
0017cc  9f850000  addli r11, r1, 0
0017d0  3bff08fa  bneq r17, zero, -2084
0017d4  dbfbfeff  j -2084
0017d8  ab00c07f  lui r1, 523264
0017dc  6301ffe3  loadli.w r2,  -3592(r30)
0017e0  b77001fc  beq r2, zero, -1988
0017e4  e70f1fe2  storeli.w r1, -3592(r30)
0017e8  bbe008fc  bneq r17, zero, -1992
0017ec  5b07ffff  j -1992
0017f0  ab00c07f  lui r1, 523264
0017f4  37620cfc  beq r24, zero, -1896
0017f8  1f8c0000  addli r24, r1, 0
0017fc  3bd204fc  bneq r9, zero, -1900
001800  db12ffff  j -1900
001804  ab00c07f  lui r1, 523264
001808  b7d308fc  beq r17, zero, -1804
00180c  9f880000  addli r17, r1, 0
001810  bbc304fc  bneq r9, zero, -1808
001814  5b1effff  j -1808
001818  ab00c07f  lui r1, 523264
00181c  6341dfe3  loadli.w r2,  -3604(r30)
001820  375501fc  beq r2, zero, -1708
001824  e74e1fe2  storeli.w r1, -3604(r30)
001828  3b4504fc  bneq r8, zero, -1712
00182c  5b2affff  j -1712
001830  ab00c07f  lui r1, 523264
001834  6301efe3  loadli.w r2,  -3600(r30)
001838  b73601fc  beq r2, zero, -1620
00183c  670f1fe2  storeli.w r1, -3600(r30)
001840  bb2606fc  bneq r12, zero, -1624
001844  5b35ffff  j -1624
001848  ab00c07f  lui r1, 523264
00184c  378806fc  beq r13, zero, -1536
001850  9f860000  addli r13, r1, 0
001854  bb7703fc  bneq r6, zero, -1540
001858  db3fffff  j -1540
00185c  ab00c07f  lui r1, 523264
001860  6341efe3  loadli.w r2,  -3596(r30)
001864  376901fc  beq r2, zero, -1448
001868  674f1fe2  storeli.w r1, -3596(r30)
00186c  3bd903fc  bneq r7, zero, -1452
001870  db4affff  j -1452
001874  ab00c07f  lui r1, 523264
001878  b73a03fc  beq r6, zero, -1364
00187c  1f830000  addli r6, r1, 0
001880  bbaa03fc  bneq r7, zero, -1368
001884  5b55ffff  j -1368
001888  ab00c07f  lui r1, 523264
00188c  370c04fc  beq r8, zero, -1280
001890  1f840000  addli r8, r1, 0
001894  bb7b06fc  bneq r12, zero, -1284
001898  db5fffff  j -1284
00189c  ab00c07f  lui r1, 523264
0018a0  37dd03fc  beq r7, zero, -1196
0018a4  9f830000  addli r7, r1, 0
0018a8  3b4d06fc  bneq r12, zero, -1200
0018ac  5b6affff  j -1200
0018b0  ab00c07f  lui r1, 523264
0018b4  37a304fe  beq r9, zero, -824
0018b8  9f840000  addli r9, r1, 0
0018bc  3b1306fe  bneq r12, zero, -828
0018c0  db98ffff  j -828
0018c4  9f8ece1c  addli sp, sp, 3680
0018c8  00a00300  mfence { lm, sm, gm }
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
001b0c  00100000  exit
