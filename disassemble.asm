
montador:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000100002260 <_hash_key>:
100002260: ff 43 00 d1 	sub	sp, sp, #16
100002264: e0 07 00 f9 	str	x0, [sp, #8]
100002268: ff 07 00 b9 	str	wzr, [sp, #4]
10000226c: ff 03 00 b9 	str	wzr, [sp]
100002270: 01 00 00 14 	b	0x100002274 <_hash_key+0x14>
100002274: e8 07 40 f9 	ldr	x8, [sp, #8]
100002278: e9 03 80 b9 	ldrsw	x9, [sp]
10000227c: 08 69 e9 38 	ldrsb	w8, [x8, x9]
100002280: 08 01 00 71 	subs	w8, w8, #0
100002284: e8 17 9f 1a 	cset	w8, eq
100002288: e8 01 00 37 	tbnz	w8, #0, 0x1000022c4 <_hash_key+0x64>
10000228c: 01 00 00 14 	b	0x100002290 <_hash_key+0x30>
100002290: e8 07 40 f9 	ldr	x8, [sp, #8]
100002294: e9 03 80 b9 	ldrsw	x9, [sp]
100002298: 08 69 e9 38 	ldrsb	w8, [x8, x9]
10000229c: e9 07 40 b9 	ldr	w9, [sp, #4]
1000022a0: 08 15 09 0b 	add	w8, w8, w9, lsl #5
1000022a4: e9 07 40 b9 	ldr	w9, [sp, #4]
1000022a8: 08 01 09 6b 	subs	w8, w8, w9
1000022ac: e8 07 00 b9 	str	w8, [sp, #4]
1000022b0: 01 00 00 14 	b	0x1000022b4 <_hash_key+0x54>
1000022b4: e8 03 40 b9 	ldr	w8, [sp]
1000022b8: 08 05 00 11 	add	w8, w8, #1
1000022bc: e8 03 00 b9 	str	w8, [sp]
1000022c0: ed ff ff 17 	b	0x100002274 <_hash_key+0x14>
1000022c4: e8 07 40 b9 	ldr	w8, [sp, #4]
1000022c8: 0a 04 80 52 	mov	w10, #32
1000022cc: 09 09 ca 1a 	udiv	w9, w8, w10
1000022d0: 29 7d 0a 1b 	mul	w9, w9, w10
1000022d4: 00 01 09 6b 	subs	w0, w8, w9
1000022d8: ff 43 00 91 	add	sp, sp, #16
1000022dc: c0 03 5f d6 	ret

00000001000022e0 <_instruction_table_put>:
1000022e0: ff 03 01 d1 	sub	sp, sp, #64
1000022e4: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
1000022e8: fd c3 00 91 	add	x29, sp, #48
1000022ec: a0 83 1f f8 	stur	x0, [x29, #-8]
1000022f0: a1 03 1f f8 	stur	x1, [x29, #-16]
1000022f4: a2 c3 1e b8 	stur	w2, [x29, #-20]
1000022f8: e3 1b 00 b9 	str	w3, [sp, #24]
1000022fc: a0 03 5f f8 	ldur	x0, [x29, #-16]
100002300: d8 ff ff 97 	bl	0x100002260 <_hash_key>
100002304: e0 17 00 b9 	str	w0, [sp, #20]
100002308: a8 83 5f f8 	ldur	x8, [x29, #-8]
10000230c: 08 01 40 f9 	ldr	x8, [x8]
100002310: e9 17 40 b9 	ldr	w9, [sp, #20]
100002314: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
100002318: e8 07 00 f9 	str	x8, [sp, #8]
10000231c: 01 00 00 14 	b	0x100002320 <_instruction_table_put+0x40>
100002320: e8 07 40 f9 	ldr	x8, [sp, #8]
100002324: 08 01 00 f1 	subs	x8, x8, #0
100002328: e8 17 9f 1a 	cset	w8, eq
10000232c: a8 02 00 37 	tbnz	w8, #0, 0x100002380 <_instruction_table_put+0xa0>
100002330: 01 00 00 14 	b	0x100002334 <_instruction_table_put+0x54>
100002334: e8 07 40 f9 	ldr	x8, [sp, #8]
100002338: 00 01 40 f9 	ldr	x0, [x8]
10000233c: a1 03 5f f8 	ldur	x1, [x29, #-16]
100002340: 79 06 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100002344: 08 00 00 71 	subs	w8, w0, #0
100002348: e8 07 9f 1a 	cset	w8, ne
10000234c: 28 01 00 37 	tbnz	w8, #0, 0x100002370 <_instruction_table_put+0x90>
100002350: 01 00 00 14 	b	0x100002354 <_instruction_table_put+0x74>
100002354: a8 c3 5e b8 	ldur	w8, [x29, #-20]
100002358: e9 07 40 f9 	ldr	x9, [sp, #8]
10000235c: 28 09 00 b9 	str	w8, [x9, #8]
100002360: e8 1b 40 b9 	ldr	w8, [sp, #24]
100002364: e9 07 40 f9 	ldr	x9, [sp, #8]
100002368: 28 0d 00 b9 	str	w8, [x9, #12]
10000236c: 1e 00 00 14 	b	0x1000023e4 <_instruction_table_put+0x104>
100002370: e8 07 40 f9 	ldr	x8, [sp, #8]
100002374: 08 09 40 f9 	ldr	x8, [x8, #16]
100002378: e8 07 00 f9 	str	x8, [sp, #8]
10000237c: e9 ff ff 17 	b	0x100002320 <_instruction_table_put+0x40>
100002380: 00 03 80 d2 	mov	x0, #24
100002384: 5f 06 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
100002388: e0 03 00 f9 	str	x0, [sp]
10000238c: a0 03 5f f8 	ldur	x0, [x29, #-16]
100002390: 68 06 00 94 	bl	0x100003d30 <_tolower+0x100003d30>
100002394: e8 03 40 f9 	ldr	x8, [sp]
100002398: 00 01 00 f9 	str	x0, [x8]
10000239c: a8 c3 5e b8 	ldur	w8, [x29, #-20]
1000023a0: e9 03 40 f9 	ldr	x9, [sp]
1000023a4: 28 09 00 b9 	str	w8, [x9, #8]
1000023a8: e8 1b 40 b9 	ldr	w8, [sp, #24]
1000023ac: e9 03 40 f9 	ldr	x9, [sp]
1000023b0: 28 0d 00 b9 	str	w8, [x9, #12]
1000023b4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000023b8: 08 01 40 f9 	ldr	x8, [x8]
1000023bc: e9 17 40 b9 	ldr	w9, [sp, #20]
1000023c0: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
1000023c4: e9 03 40 f9 	ldr	x9, [sp]
1000023c8: 28 09 00 f9 	str	x8, [x9, #16]
1000023cc: e8 03 40 f9 	ldr	x8, [sp]
1000023d0: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000023d4: 29 01 40 f9 	ldr	x9, [x9]
1000023d8: ea 17 40 b9 	ldr	w10, [sp, #20]
1000023dc: 28 79 2a f8 	str	x8, [x9, x10, lsl #3]
1000023e0: 01 00 00 14 	b	0x1000023e4 <_instruction_table_put+0x104>
1000023e4: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
1000023e8: ff 03 01 91 	add	sp, sp, #64
1000023ec: c0 03 5f d6 	ret

00000001000023f0 <_instruction_table_create>:
1000023f0: ff c3 01 d1 	sub	sp, sp, #112
1000023f4: fd 7b 06 a9 	stp	x29, x30, [sp, #96]
1000023f8: fd 83 01 91 	add	x29, sp, #96
1000023fc: 08 00 00 d0 	adrp	x8, 0x100004000 <_instruction_table_create+0x14>
100002400: 08 09 40 f9 	ldr	x8, [x8, #16]
100002404: 08 01 40 f9 	ldr	x8, [x8]
100002408: a8 83 1f f8 	stur	x8, [x29, #-8]
10000240c: 00 01 80 d2 	mov	x0, #8
100002410: e0 17 00 f9 	str	x0, [sp, #40]
100002414: 3b 06 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
100002418: e1 17 40 f9 	ldr	x1, [sp, #40]
10000241c: a0 03 1e f8 	stur	x0, [x29, #-32]
100002420: 00 04 80 d2 	mov	x0, #32
100002424: 16 06 00 94 	bl	0x100003c7c <_tolower+0x100003c7c>
100002428: a8 03 5e f8 	ldur	x8, [x29, #-32]
10000242c: 00 01 00 f9 	str	x0, [x8]
100002430: 00 00 00 b0 	adrp	x0, 0x100003000 <_instruction_table_create+0x44>
100002434: 00 80 35 91 	add	x0, x0, #3424
100002438: 01 00 00 b0 	adrp	x1, 0x100003000 <_instruction_table_create+0x4c>
10000243c: 21 c4 35 91 	add	x1, x1, #3441
100002440: 18 06 00 94 	bl	0x100003ca0 <_tolower+0x100003ca0>
100002444: e0 1b 00 f9 	str	x0, [sp, #48]
100002448: 01 00 00 14 	b	0x10000244c <_instruction_table_create+0x5c>
10000244c: e0 1b 40 f9 	ldr	x0, [sp, #48]
100002450: e9 03 00 91 	mov	x9, sp
100002454: a8 4b 00 d1 	sub	x8, x29, #18
100002458: 28 01 00 f9 	str	x8, [x9]
10000245c: a8 93 00 d1 	sub	x8, x29, #36
100002460: 28 05 00 f9 	str	x8, [x9, #8]
100002464: a8 a3 00 d1 	sub	x8, x29, #40
100002468: 28 09 00 f9 	str	x8, [x9, #16]
10000246c: 01 00 00 b0 	adrp	x1, 0x100003000 <_instruction_table_create+0x80>
100002470: 21 cc 35 91 	add	x1, x1, #3443
100002474: 17 06 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
100002478: 08 04 00 31 	adds	w8, w0, #1
10000247c: e8 17 9f 1a 	cset	w8, eq
100002480: 08 01 00 37 	tbnz	w8, #0, 0x1000024a0 <_instruction_table_create+0xb0>
100002484: 01 00 00 14 	b	0x100002488 <_instruction_table_create+0x98>
100002488: a0 03 5e f8 	ldur	x0, [x29, #-32]
10000248c: a2 c3 5d b8 	ldur	w2, [x29, #-36]
100002490: a3 83 5d b8 	ldur	w3, [x29, #-40]
100002494: a1 4b 00 d1 	sub	x1, x29, #18
100002498: 92 ff ff 97 	bl	0x1000022e0 <_instruction_table_put>
10000249c: ec ff ff 17 	b	0x10000244c <_instruction_table_create+0x5c>
1000024a0: a8 03 5e f8 	ldur	x8, [x29, #-32]
1000024a4: e8 13 00 f9 	str	x8, [sp, #32]
1000024a8: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000024ac: 08 00 00 d0 	adrp	x8, 0x100004000 <_instruction_table_create+0xc4>
1000024b0: 08 09 40 f9 	ldr	x8, [x8, #16]
1000024b4: 08 01 40 f9 	ldr	x8, [x8]
1000024b8: 08 01 09 eb 	subs	x8, x8, x9
1000024bc: e8 17 9f 1a 	cset	w8, eq
1000024c0: 68 00 00 37 	tbnz	w8, #0, 0x1000024cc <_instruction_table_create+0xdc>
1000024c4: 01 00 00 14 	b	0x1000024c8 <_instruction_table_create+0xd8>
1000024c8: e7 05 00 94 	bl	0x100003c64 <_tolower+0x100003c64>
1000024cc: e0 13 40 f9 	ldr	x0, [sp, #32]
1000024d0: fd 7b 46 a9 	ldp	x29, x30, [sp, #96]
1000024d4: ff c3 01 91 	add	sp, sp, #112
1000024d8: c0 03 5f d6 	ret

00000001000024dc <_instruction_table_get>:
1000024dc: ff 03 01 d1 	sub	sp, sp, #64
1000024e0: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
1000024e4: fd c3 00 91 	add	x29, sp, #48
1000024e8: a0 03 1f f8 	stur	x0, [x29, #-16]
1000024ec: e1 0f 00 f9 	str	x1, [sp, #24]
1000024f0: e0 0f 40 f9 	ldr	x0, [sp, #24]
1000024f4: 5b ff ff 97 	bl	0x100002260 <_hash_key>
1000024f8: e0 17 00 b9 	str	w0, [sp, #20]
1000024fc: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002500: 08 01 40 f9 	ldr	x8, [x8]
100002504: e9 17 40 b9 	ldr	w9, [sp, #20]
100002508: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
10000250c: e8 07 00 f9 	str	x8, [sp, #8]
100002510: 01 00 00 14 	b	0x100002514 <_instruction_table_get+0x38>
100002514: e8 07 40 f9 	ldr	x8, [sp, #8]
100002518: 08 01 00 f1 	subs	x8, x8, #0
10000251c: e8 17 9f 1a 	cset	w8, eq
100002520: 28 02 00 37 	tbnz	w8, #0, 0x100002564 <_instruction_table_get+0x88>
100002524: 01 00 00 14 	b	0x100002528 <_instruction_table_get+0x4c>
100002528: e8 07 40 f9 	ldr	x8, [sp, #8]
10000252c: 00 01 40 f9 	ldr	x0, [x8]
100002530: e1 0f 40 f9 	ldr	x1, [sp, #24]
100002534: fc 05 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100002538: 08 00 00 71 	subs	w8, w0, #0
10000253c: e8 07 9f 1a 	cset	w8, ne
100002540: a8 00 00 37 	tbnz	w8, #0, 0x100002554 <_instruction_table_get+0x78>
100002544: 01 00 00 14 	b	0x100002548 <_instruction_table_get+0x6c>
100002548: e8 07 40 f9 	ldr	x8, [sp, #8]
10000254c: a8 83 1f f8 	stur	x8, [x29, #-8]
100002550: 07 00 00 14 	b	0x10000256c <_instruction_table_get+0x90>
100002554: e8 07 40 f9 	ldr	x8, [sp, #8]
100002558: 08 09 40 f9 	ldr	x8, [x8, #16]
10000255c: e8 07 00 f9 	str	x8, [sp, #8]
100002560: ed ff ff 17 	b	0x100002514 <_instruction_table_get+0x38>
100002564: bf 83 1f f8 	stur	xzr, [x29, #-8]
100002568: 01 00 00 14 	b	0x10000256c <_instruction_table_get+0x90>
10000256c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002570: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100002574: ff 03 01 91 	add	sp, sp, #64
100002578: c0 03 5f d6 	ret

000000010000257c <_symbol_table_put>:
10000257c: ff 43 01 d1 	sub	sp, sp, #80
100002580: fd 7b 04 a9 	stp	x29, x30, [sp, #64]
100002584: fd 03 01 91 	add	x29, sp, #64
100002588: a0 83 1f f8 	stur	x0, [x29, #-8]
10000258c: a1 03 1f f8 	stur	x1, [x29, #-16]
100002590: a2 c3 1e b8 	stur	w2, [x29, #-20]
100002594: e3 13 00 f9 	str	x3, [sp, #32]
100002598: a0 03 5f f8 	ldur	x0, [x29, #-16]
10000259c: 31 ff ff 97 	bl	0x100002260 <_hash_key>
1000025a0: e0 1f 00 b9 	str	w0, [sp, #28]
1000025a4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000025a8: 08 01 40 f9 	ldr	x8, [x8]
1000025ac: e9 1f 40 b9 	ldr	w9, [sp, #28]
1000025b0: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
1000025b4: e8 0b 00 f9 	str	x8, [sp, #16]
1000025b8: 01 00 00 14 	b	0x1000025bc <_symbol_table_put+0x40>
1000025bc: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000025c0: 08 01 00 f1 	subs	x8, x8, #0
1000025c4: e8 17 9f 1a 	cset	w8, eq
1000025c8: 28 03 00 37 	tbnz	w8, #0, 0x10000262c <_symbol_table_put+0xb0>
1000025cc: 01 00 00 14 	b	0x1000025d0 <_symbol_table_put+0x54>
1000025d0: e8 0b 40 f9 	ldr	x8, [sp, #16]
1000025d4: 00 01 40 f9 	ldr	x0, [x8]
1000025d8: a1 03 5f f8 	ldur	x1, [x29, #-16]
1000025dc: d2 05 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
1000025e0: 08 00 00 71 	subs	w8, w0, #0
1000025e4: e8 07 9f 1a 	cset	w8, ne
1000025e8: a8 01 00 37 	tbnz	w8, #0, 0x10000261c <_symbol_table_put+0xa0>
1000025ec: 01 00 00 14 	b	0x1000025f0 <_symbol_table_put+0x74>
1000025f0: a8 c3 5e b8 	ldur	w8, [x29, #-20]
1000025f4: e9 0b 40 f9 	ldr	x9, [sp, #16]
1000025f8: 28 09 00 b9 	str	w8, [x9, #8]
1000025fc: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002600: 00 09 40 f9 	ldr	x0, [x8, #16]
100002604: b0 05 00 94 	bl	0x100003cc4 <_tolower+0x100003cc4>
100002608: e0 13 40 f9 	ldr	x0, [sp, #32]
10000260c: c9 05 00 94 	bl	0x100003d30 <_tolower+0x100003d30>
100002610: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002614: 00 09 00 f9 	str	x0, [x8, #16]
100002618: 35 00 00 14 	b	0x1000026ec <_symbol_table_put+0x170>
10000261c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002620: 08 0d 40 f9 	ldr	x8, [x8, #24]
100002624: e8 0b 00 f9 	str	x8, [sp, #16]
100002628: e5 ff ff 17 	b	0x1000025bc <_symbol_table_put+0x40>
10000262c: 00 04 80 d2 	mov	x0, #32
100002630: b4 05 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
100002634: e0 07 00 f9 	str	x0, [sp, #8]
100002638: a0 03 5f f8 	ldur	x0, [x29, #-16]
10000263c: bd 05 00 94 	bl	0x100003d30 <_tolower+0x100003d30>
100002640: e8 07 40 f9 	ldr	x8, [sp, #8]
100002644: 00 01 00 f9 	str	x0, [x8]
100002648: a8 c3 5e b8 	ldur	w8, [x29, #-20]
10000264c: e9 07 40 f9 	ldr	x9, [sp, #8]
100002650: 28 09 00 b9 	str	w8, [x9, #8]
100002654: e0 13 40 f9 	ldr	x0, [sp, #32]
100002658: b6 05 00 94 	bl	0x100003d30 <_tolower+0x100003d30>
10000265c: e8 07 40 f9 	ldr	x8, [sp, #8]
100002660: 00 09 00 f9 	str	x0, [x8, #16]
100002664: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002668: 08 01 40 f9 	ldr	x8, [x8]
10000266c: e9 1f 40 b9 	ldr	w9, [sp, #28]
100002670: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
100002674: e9 07 40 f9 	ldr	x9, [sp, #8]
100002678: 28 0d 00 f9 	str	x8, [x9, #24]
10000267c: e8 07 40 f9 	ldr	x8, [sp, #8]
100002680: a9 83 5f f8 	ldur	x9, [x29, #-8]
100002684: 29 01 40 f9 	ldr	x9, [x9]
100002688: ea 1f 40 b9 	ldr	w10, [sp, #28]
10000268c: 28 79 2a f8 	str	x8, [x9, x10, lsl #3]
100002690: a0 03 5f f8 	ldur	x0, [x29, #-16]
100002694: aa 05 00 94 	bl	0x100003d3c <_tolower+0x100003d3c>
100002698: 08 04 00 91 	add	x8, x0, #1
10000269c: 00 fd 40 d3 	lsr	x0, x8, #0
1000026a0: 98 05 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
1000026a4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000026a8: 08 05 40 f9 	ldr	x8, [x8, #8]
1000026ac: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000026b0: 29 11 80 b9 	ldrsw	x9, [x9, #16]
1000026b4: 00 79 29 f8 	str	x0, [x8, x9, lsl #3]
1000026b8: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000026bc: 08 05 40 f9 	ldr	x8, [x8, #8]
1000026c0: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000026c4: 29 11 80 b9 	ldrsw	x9, [x9, #16]
1000026c8: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
1000026cc: a1 03 5f f8 	ldur	x1, [x29, #-16]
1000026d0: 02 00 80 92 	mov	x2, #-1
1000026d4: 67 05 00 94 	bl	0x100003c70 <_tolower+0x100003c70>
1000026d8: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000026dc: 28 11 40 b9 	ldr	w8, [x9, #16]
1000026e0: 08 05 00 11 	add	w8, w8, #1
1000026e4: 28 11 00 b9 	str	w8, [x9, #16]
1000026e8: 01 00 00 14 	b	0x1000026ec <_symbol_table_put+0x170>
1000026ec: fd 7b 44 a9 	ldp	x29, x30, [sp, #64]
1000026f0: ff 43 01 91 	add	sp, sp, #80
1000026f4: c0 03 5f d6 	ret

00000001000026f8 <_symbol_table_create>:
1000026f8: ff 83 00 d1 	sub	sp, sp, #32
1000026fc: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002700: fd 43 00 91 	add	x29, sp, #16
100002704: 00 03 80 d2 	mov	x0, #24
100002708: 7e 05 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
10000270c: e0 07 00 f9 	str	x0, [sp, #8]
100002710: 00 04 80 d2 	mov	x0, #32
100002714: 01 01 80 d2 	mov	x1, #8
100002718: 59 05 00 94 	bl	0x100003c7c <_tolower+0x100003c7c>
10000271c: e8 07 40 f9 	ldr	x8, [sp, #8]
100002720: 00 01 00 f9 	str	x0, [x8]
100002724: e8 07 40 f9 	ldr	x8, [sp, #8]
100002728: 1f 11 00 b9 	str	wzr, [x8, #16]
10000272c: 00 20 80 d2 	mov	x0, #256
100002730: 74 05 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
100002734: e8 07 40 f9 	ldr	x8, [sp, #8]
100002738: 00 05 00 f9 	str	x0, [x8, #8]
10000273c: e0 07 40 f9 	ldr	x0, [sp, #8]
100002740: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002744: ff 83 00 91 	add	sp, sp, #32
100002748: c0 03 5f d6 	ret

000000010000274c <_symbol_table_get>:
10000274c: ff 03 01 d1 	sub	sp, sp, #64
100002750: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
100002754: fd c3 00 91 	add	x29, sp, #48
100002758: a0 03 1f f8 	stur	x0, [x29, #-16]
10000275c: e1 0f 00 f9 	str	x1, [sp, #24]
100002760: e0 0f 40 f9 	ldr	x0, [sp, #24]
100002764: bf fe ff 97 	bl	0x100002260 <_hash_key>
100002768: e0 17 00 b9 	str	w0, [sp, #20]
10000276c: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002770: 08 01 40 f9 	ldr	x8, [x8]
100002774: e9 17 40 b9 	ldr	w9, [sp, #20]
100002778: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
10000277c: e8 07 00 f9 	str	x8, [sp, #8]
100002780: 01 00 00 14 	b	0x100002784 <_symbol_table_get+0x38>
100002784: e8 07 40 f9 	ldr	x8, [sp, #8]
100002788: 08 01 00 f1 	subs	x8, x8, #0
10000278c: e8 17 9f 1a 	cset	w8, eq
100002790: 28 02 00 37 	tbnz	w8, #0, 0x1000027d4 <_symbol_table_get+0x88>
100002794: 01 00 00 14 	b	0x100002798 <_symbol_table_get+0x4c>
100002798: e8 07 40 f9 	ldr	x8, [sp, #8]
10000279c: 00 01 40 f9 	ldr	x0, [x8]
1000027a0: e1 0f 40 f9 	ldr	x1, [sp, #24]
1000027a4: 60 05 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
1000027a8: 08 00 00 71 	subs	w8, w0, #0
1000027ac: e8 07 9f 1a 	cset	w8, ne
1000027b0: a8 00 00 37 	tbnz	w8, #0, 0x1000027c4 <_symbol_table_get+0x78>
1000027b4: 01 00 00 14 	b	0x1000027b8 <_symbol_table_get+0x6c>
1000027b8: e8 07 40 f9 	ldr	x8, [sp, #8]
1000027bc: a8 83 1f f8 	stur	x8, [x29, #-8]
1000027c0: 07 00 00 14 	b	0x1000027dc <_symbol_table_get+0x90>
1000027c4: e8 07 40 f9 	ldr	x8, [sp, #8]
1000027c8: 08 0d 40 f9 	ldr	x8, [x8, #24]
1000027cc: e8 07 00 f9 	str	x8, [sp, #8]
1000027d0: ed ff ff 17 	b	0x100002784 <_symbol_table_get+0x38>
1000027d4: bf 83 1f f8 	stur	xzr, [x29, #-8]
1000027d8: 01 00 00 14 	b	0x1000027dc <_symbol_table_get+0x90>
1000027dc: a0 83 5f f8 	ldur	x0, [x29, #-8]
1000027e0: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
1000027e4: ff 03 01 91 	add	sp, sp, #64
1000027e8: c0 03 5f d6 	ret

00000001000027ec <_definition_table_put>:
1000027ec: ff 03 01 d1 	sub	sp, sp, #64
1000027f0: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
1000027f4: fd c3 00 91 	add	x29, sp, #48
1000027f8: a0 83 1f f8 	stur	x0, [x29, #-8]
1000027fc: a1 03 1f f8 	stur	x1, [x29, #-16]
100002800: a2 c3 1e b8 	stur	w2, [x29, #-20]
100002804: a0 03 5f f8 	ldur	x0, [x29, #-16]
100002808: 96 fe ff 97 	bl	0x100002260 <_hash_key>
10000280c: e0 1b 00 b9 	str	w0, [sp, #24]
100002810: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002814: 08 01 40 f9 	ldr	x8, [x8]
100002818: e9 1b 40 b9 	ldr	w9, [sp, #24]
10000281c: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
100002820: e8 0b 00 f9 	str	x8, [sp, #16]
100002824: 01 00 00 14 	b	0x100002828 <_definition_table_put+0x3c>
100002828: e8 0b 40 f9 	ldr	x8, [sp, #16]
10000282c: 08 01 00 f1 	subs	x8, x8, #0
100002830: e8 17 9f 1a 	cset	w8, eq
100002834: 48 02 00 37 	tbnz	w8, #0, 0x10000287c <_definition_table_put+0x90>
100002838: 01 00 00 14 	b	0x10000283c <_definition_table_put+0x50>
10000283c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002840: 00 01 40 f9 	ldr	x0, [x8]
100002844: a1 03 5f f8 	ldur	x1, [x29, #-16]
100002848: 37 05 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
10000284c: 08 00 00 71 	subs	w8, w0, #0
100002850: e8 07 9f 1a 	cset	w8, ne
100002854: c8 00 00 37 	tbnz	w8, #0, 0x10000286c <_definition_table_put+0x80>
100002858: 01 00 00 14 	b	0x10000285c <_definition_table_put+0x70>
10000285c: a8 c3 5e b8 	ldur	w8, [x29, #-20]
100002860: e9 0b 40 f9 	ldr	x9, [sp, #16]
100002864: 28 09 00 b9 	str	w8, [x9, #8]
100002868: 31 00 00 14 	b	0x10000292c <_definition_table_put+0x140>
10000286c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002870: 08 09 40 f9 	ldr	x8, [x8, #16]
100002874: e8 0b 00 f9 	str	x8, [sp, #16]
100002878: ec ff ff 17 	b	0x100002828 <_definition_table_put+0x3c>
10000287c: 00 03 80 d2 	mov	x0, #24
100002880: 20 05 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
100002884: e0 07 00 f9 	str	x0, [sp, #8]
100002888: a0 03 5f f8 	ldur	x0, [x29, #-16]
10000288c: 29 05 00 94 	bl	0x100003d30 <_tolower+0x100003d30>
100002890: e8 07 40 f9 	ldr	x8, [sp, #8]
100002894: 00 01 00 f9 	str	x0, [x8]
100002898: a8 c3 5e b8 	ldur	w8, [x29, #-20]
10000289c: e9 07 40 f9 	ldr	x9, [sp, #8]
1000028a0: 28 09 00 b9 	str	w8, [x9, #8]
1000028a4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000028a8: 08 01 40 f9 	ldr	x8, [x8]
1000028ac: e9 1b 40 b9 	ldr	w9, [sp, #24]
1000028b0: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
1000028b4: e9 07 40 f9 	ldr	x9, [sp, #8]
1000028b8: 28 09 00 f9 	str	x8, [x9, #16]
1000028bc: e8 07 40 f9 	ldr	x8, [sp, #8]
1000028c0: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000028c4: 29 01 40 f9 	ldr	x9, [x9]
1000028c8: ea 1b 40 b9 	ldr	w10, [sp, #24]
1000028cc: 28 79 2a f8 	str	x8, [x9, x10, lsl #3]
1000028d0: a0 03 5f f8 	ldur	x0, [x29, #-16]
1000028d4: 1a 05 00 94 	bl	0x100003d3c <_tolower+0x100003d3c>
1000028d8: 08 04 00 91 	add	x8, x0, #1
1000028dc: 00 fd 40 d3 	lsr	x0, x8, #0
1000028e0: 08 05 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
1000028e4: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000028e8: 08 05 40 f9 	ldr	x8, [x8, #8]
1000028ec: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000028f0: 29 11 80 b9 	ldrsw	x9, [x9, #16]
1000028f4: 00 79 29 f8 	str	x0, [x8, x9, lsl #3]
1000028f8: a8 83 5f f8 	ldur	x8, [x29, #-8]
1000028fc: 08 05 40 f9 	ldr	x8, [x8, #8]
100002900: a9 83 5f f8 	ldur	x9, [x29, #-8]
100002904: 29 11 80 b9 	ldrsw	x9, [x9, #16]
100002908: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
10000290c: a1 03 5f f8 	ldur	x1, [x29, #-16]
100002910: 02 00 80 92 	mov	x2, #-1
100002914: d7 04 00 94 	bl	0x100003c70 <_tolower+0x100003c70>
100002918: a9 83 5f f8 	ldur	x9, [x29, #-8]
10000291c: 28 11 40 b9 	ldr	w8, [x9, #16]
100002920: 08 05 00 11 	add	w8, w8, #1
100002924: 28 11 00 b9 	str	w8, [x9, #16]
100002928: 01 00 00 14 	b	0x10000292c <_definition_table_put+0x140>
10000292c: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100002930: ff 03 01 91 	add	sp, sp, #64
100002934: c0 03 5f d6 	ret

0000000100002938 <_definition_table_create>:
100002938: ff 83 00 d1 	sub	sp, sp, #32
10000293c: fd 7b 01 a9 	stp	x29, x30, [sp, #16]
100002940: fd 43 00 91 	add	x29, sp, #16
100002944: 00 03 80 d2 	mov	x0, #24
100002948: ee 04 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
10000294c: e0 07 00 f9 	str	x0, [sp, #8]
100002950: 00 04 80 d2 	mov	x0, #32
100002954: 01 01 80 d2 	mov	x1, #8
100002958: c9 04 00 94 	bl	0x100003c7c <_tolower+0x100003c7c>
10000295c: e8 07 40 f9 	ldr	x8, [sp, #8]
100002960: 00 01 00 f9 	str	x0, [x8]
100002964: e8 07 40 f9 	ldr	x8, [sp, #8]
100002968: 1f 11 00 b9 	str	wzr, [x8, #16]
10000296c: 00 20 80 d2 	mov	x0, #256
100002970: e4 04 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
100002974: e8 07 40 f9 	ldr	x8, [sp, #8]
100002978: 00 05 00 f9 	str	x0, [x8, #8]
10000297c: e0 07 40 f9 	ldr	x0, [sp, #8]
100002980: fd 7b 41 a9 	ldp	x29, x30, [sp, #16]
100002984: ff 83 00 91 	add	sp, sp, #32
100002988: c0 03 5f d6 	ret

000000010000298c <_definition_table_get>:
10000298c: ff 03 01 d1 	sub	sp, sp, #64
100002990: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
100002994: fd c3 00 91 	add	x29, sp, #48
100002998: a0 03 1f f8 	stur	x0, [x29, #-16]
10000299c: e1 0f 00 f9 	str	x1, [sp, #24]
1000029a0: e0 0f 40 f9 	ldr	x0, [sp, #24]
1000029a4: 2f fe ff 97 	bl	0x100002260 <_hash_key>
1000029a8: e0 17 00 b9 	str	w0, [sp, #20]
1000029ac: a8 03 5f f8 	ldur	x8, [x29, #-16]
1000029b0: 08 01 40 f9 	ldr	x8, [x8]
1000029b4: e9 17 40 b9 	ldr	w9, [sp, #20]
1000029b8: 08 79 69 f8 	ldr	x8, [x8, x9, lsl #3]
1000029bc: e8 07 00 f9 	str	x8, [sp, #8]
1000029c0: 01 00 00 14 	b	0x1000029c4 <_definition_table_get+0x38>
1000029c4: e8 07 40 f9 	ldr	x8, [sp, #8]
1000029c8: 08 01 00 f1 	subs	x8, x8, #0
1000029cc: e8 17 9f 1a 	cset	w8, eq
1000029d0: 28 02 00 37 	tbnz	w8, #0, 0x100002a14 <_definition_table_get+0x88>
1000029d4: 01 00 00 14 	b	0x1000029d8 <_definition_table_get+0x4c>
1000029d8: e8 07 40 f9 	ldr	x8, [sp, #8]
1000029dc: 00 01 40 f9 	ldr	x0, [x8]
1000029e0: e1 0f 40 f9 	ldr	x1, [sp, #24]
1000029e4: d0 04 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
1000029e8: 08 00 00 71 	subs	w8, w0, #0
1000029ec: e8 07 9f 1a 	cset	w8, ne
1000029f0: a8 00 00 37 	tbnz	w8, #0, 0x100002a04 <_definition_table_get+0x78>
1000029f4: 01 00 00 14 	b	0x1000029f8 <_definition_table_get+0x6c>
1000029f8: e8 07 40 f9 	ldr	x8, [sp, #8]
1000029fc: a8 83 1f f8 	stur	x8, [x29, #-8]
100002a00: 07 00 00 14 	b	0x100002a1c <_definition_table_get+0x90>
100002a04: e8 07 40 f9 	ldr	x8, [sp, #8]
100002a08: 08 09 40 f9 	ldr	x8, [x8, #16]
100002a0c: e8 07 00 f9 	str	x8, [sp, #8]
100002a10: ed ff ff 17 	b	0x1000029c4 <_definition_table_get+0x38>
100002a14: bf 83 1f f8 	stur	xzr, [x29, #-8]
100002a18: 01 00 00 14 	b	0x100002a1c <_definition_table_get+0x90>
100002a1c: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002a20: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100002a24: ff 03 01 91 	add	sp, sp, #64
100002a28: c0 03 5f d6 	ret

0000000100002a2c <_check_label>:
100002a2c: ff 83 00 d1 	sub	sp, sp, #32
100002a30: e0 0b 00 f9 	str	x0, [sp, #16]
100002a34: ff 0f 00 b9 	str	wzr, [sp, #12]
100002a38: 01 00 00 14 	b	0x100002a3c <_check_label+0x10>
100002a3c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002a40: e9 0f 80 b9 	ldrsw	x9, [sp, #12]
100002a44: 08 69 e9 38 	ldrsb	w8, [x8, x9]
100002a48: 08 c1 00 71 	subs	w8, w8, #48
100002a4c: e8 17 9f 1a 	cset	w8, eq
100002a50: 08 02 00 37 	tbnz	w8, #0, 0x100002a90 <_check_label+0x64>
100002a54: 01 00 00 14 	b	0x100002a58 <_check_label+0x2c>
100002a58: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002a5c: e9 0f 80 b9 	ldrsw	x9, [sp, #12]
100002a60: 08 69 e9 38 	ldrsb	w8, [x8, x9]
100002a64: 08 e9 00 71 	subs	w8, w8, #58
100002a68: e8 07 9f 1a 	cset	w8, ne
100002a6c: a8 00 00 37 	tbnz	w8, #0, 0x100002a80 <_check_label+0x54>
100002a70: 01 00 00 14 	b	0x100002a74 <_check_label+0x48>
100002a74: 28 00 80 52 	mov	w8, #1
100002a78: e8 1f 00 b9 	str	w8, [sp, #28]
100002a7c: 07 00 00 14 	b	0x100002a98 <_check_label+0x6c>
100002a80: e8 0f 40 b9 	ldr	w8, [sp, #12]
100002a84: 08 05 00 11 	add	w8, w8, #1
100002a88: e8 0f 00 b9 	str	w8, [sp, #12]
100002a8c: ec ff ff 17 	b	0x100002a3c <_check_label+0x10>
100002a90: ff 1f 00 b9 	str	wzr, [sp, #28]
100002a94: 01 00 00 14 	b	0x100002a98 <_check_label+0x6c>
100002a98: e0 1f 40 b9 	ldr	w0, [sp, #28]
100002a9c: ff 83 00 91 	add	sp, sp, #32
100002aa0: c0 03 5f d6 	ret

0000000100002aa4 <_scanner>:
100002aa4: ff c3 00 d1 	sub	sp, sp, #48
100002aa8: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100002aac: fd 83 00 91 	add	x29, sp, #32
100002ab0: e0 0b 00 f9 	str	x0, [sp, #16]
100002ab4: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002ab8: 00 01 c0 39 	ldrsb	w0, [x8]
100002abc: 8b 04 00 94 	bl	0x100003ce8 <_tolower+0x100003ce8>
100002ac0: 08 00 00 71 	subs	w8, w0, #0
100002ac4: e8 17 9f 1a 	cset	w8, eq
100002ac8: a8 00 00 37 	tbnz	w8, #0, 0x100002adc <_scanner+0x38>
100002acc: 01 00 00 14 	b	0x100002ad0 <_scanner+0x2c>
100002ad0: 28 00 80 52 	mov	w8, #1
100002ad4: a8 c3 1f b8 	stur	w8, [x29, #-4]
100002ad8: 26 00 00 14 	b	0x100002b70 <_scanner+0xcc>
100002adc: 28 00 80 52 	mov	w8, #1
100002ae0: e8 0f 00 b9 	str	w8, [sp, #12]
100002ae4: 01 00 00 14 	b	0x100002ae8 <_scanner+0x44>
100002ae8: e8 0f 80 b9 	ldrsw	x8, [sp, #12]
100002aec: e8 03 00 f9 	str	x8, [sp]
100002af0: e0 0b 40 f9 	ldr	x0, [sp, #16]
100002af4: 92 04 00 94 	bl	0x100003d3c <_tolower+0x100003d3c>
100002af8: e8 03 40 f9 	ldr	x8, [sp]
100002afc: 08 01 00 eb 	subs	x8, x8, x0
100002b00: e8 37 9f 1a 	cset	w8, hs
100002b04: 28 03 00 37 	tbnz	w8, #0, 0x100002b68 <_scanner+0xc4>
100002b08: 01 00 00 14 	b	0x100002b0c <_scanner+0x68>
100002b0c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002b10: e9 0f 80 b9 	ldrsw	x9, [sp, #12]
100002b14: 00 69 e9 38 	ldrsb	w0, [x8, x9]
100002b18: 71 04 00 94 	bl	0x100003cdc <_tolower+0x100003cdc>
100002b1c: 08 00 00 71 	subs	w8, w0, #0
100002b20: e8 07 9f 1a 	cset	w8, ne
100002b24: 88 01 00 37 	tbnz	w8, #0, 0x100002b54 <_scanner+0xb0>
100002b28: 01 00 00 14 	b	0x100002b2c <_scanner+0x88>
100002b2c: e8 0b 40 f9 	ldr	x8, [sp, #16]
100002b30: e9 0f 80 b9 	ldrsw	x9, [sp, #12]
100002b34: 08 69 e9 38 	ldrsb	w8, [x8, x9]
100002b38: 08 7d 01 71 	subs	w8, w8, #95
100002b3c: e8 17 9f 1a 	cset	w8, eq
100002b40: a8 00 00 37 	tbnz	w8, #0, 0x100002b54 <_scanner+0xb0>
100002b44: 01 00 00 14 	b	0x100002b48 <_scanner+0xa4>
100002b48: 28 00 80 52 	mov	w8, #1
100002b4c: a8 c3 1f b8 	stur	w8, [x29, #-4]
100002b50: 08 00 00 14 	b	0x100002b70 <_scanner+0xcc>
100002b54: 01 00 00 14 	b	0x100002b58 <_scanner+0xb4>
100002b58: e8 0f 40 b9 	ldr	w8, [sp, #12]
100002b5c: 08 05 00 11 	add	w8, w8, #1
100002b60: e8 0f 00 b9 	str	w8, [sp, #12]
100002b64: e1 ff ff 17 	b	0x100002ae8 <_scanner+0x44>
100002b68: bf c3 1f b8 	stur	wzr, [x29, #-4]
100002b6c: 01 00 00 14 	b	0x100002b70 <_scanner+0xcc>
100002b70: a0 c3 5f b8 	ldur	w0, [x29, #-4]
100002b74: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100002b78: ff c3 00 91 	add	sp, sp, #48
100002b7c: c0 03 5f d6 	ret

0000000100002b80 <_convert_string_to_int>:
100002b80: ff 03 01 d1 	sub	sp, sp, #64
100002b84: fd 7b 03 a9 	stp	x29, x30, [sp, #48]
100002b88: fd c3 00 91 	add	x29, sp, #48
100002b8c: a0 83 1f f8 	stur	x0, [x29, #-8]
100002b90: a1 43 1f b8 	stur	w1, [x29, #-12]
100002b94: bf 03 1f b8 	stur	wzr, [x29, #-16]
100002b98: 28 00 80 52 	mov	w8, #1
100002b9c: a8 c3 1e b8 	stur	w8, [x29, #-20]
100002ba0: 48 01 80 52 	mov	w8, #10
100002ba4: e8 1b 00 b9 	str	w8, [sp, #24]
100002ba8: ff 17 00 b9 	str	wzr, [sp, #20]
100002bac: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002bb0: 08 01 c0 39 	ldrsb	w8, [x8]
100002bb4: 08 b5 00 71 	subs	w8, w8, #45
100002bb8: e8 07 9f 1a 	cset	w8, ne
100002bbc: 08 01 00 37 	tbnz	w8, #0, 0x100002bdc <_convert_string_to_int+0x5c>
100002bc0: 01 00 00 14 	b	0x100002bc4 <_convert_string_to_int+0x44>
100002bc4: 08 00 80 12 	mov	w8, #-1
100002bc8: a8 c3 1e b8 	stur	w8, [x29, #-20]
100002bcc: e8 17 40 b9 	ldr	w8, [sp, #20]
100002bd0: 08 05 00 11 	add	w8, w8, #1
100002bd4: e8 17 00 b9 	str	w8, [sp, #20]
100002bd8: 01 00 00 14 	b	0x100002bdc <_convert_string_to_int+0x5c>
100002bdc: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002be0: e9 17 80 b9 	ldrsw	x9, [sp, #20]
100002be4: 08 69 e9 38 	ldrsb	w8, [x8, x9]
100002be8: 08 c1 00 71 	subs	w8, w8, #48
100002bec: e8 07 9f 1a 	cset	w8, ne
100002bf0: 08 02 00 37 	tbnz	w8, #0, 0x100002c30 <_convert_string_to_int+0xb0>
100002bf4: 01 00 00 14 	b	0x100002bf8 <_convert_string_to_int+0x78>
100002bf8: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002bfc: e9 17 40 b9 	ldr	w9, [sp, #20]
100002c00: 29 05 00 11 	add	w9, w9, #1
100002c04: 08 c9 e9 38 	ldrsb	w8, [x8, w9, sxtw]
100002c08: 08 61 01 71 	subs	w8, w8, #88
100002c0c: e8 07 9f 1a 	cset	w8, ne
100002c10: 08 01 00 37 	tbnz	w8, #0, 0x100002c30 <_convert_string_to_int+0xb0>
100002c14: 01 00 00 14 	b	0x100002c18 <_convert_string_to_int+0x98>
100002c18: 08 02 80 52 	mov	w8, #16
100002c1c: e8 1b 00 b9 	str	w8, [sp, #24]
100002c20: e8 17 40 b9 	ldr	w8, [sp, #20]
100002c24: 08 09 00 11 	add	w8, w8, #2
100002c28: e8 17 00 b9 	str	w8, [sp, #20]
100002c2c: 01 00 00 14 	b	0x100002c30 <_convert_string_to_int+0xb0>
100002c30: 01 00 00 14 	b	0x100002c34 <_convert_string_to_int+0xb4>
100002c34: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002c38: e9 17 80 b9 	ldrsw	x9, [sp, #20]
100002c3c: 08 69 e9 38 	ldrsb	w8, [x8, x9]
100002c40: 08 01 00 71 	subs	w8, w8, #0
100002c44: e8 17 9f 1a 	cset	w8, eq
100002c48: c8 07 00 37 	tbnz	w8, #0, 0x100002d40 <_convert_string_to_int+0x1c0>
100002c4c: 01 00 00 14 	b	0x100002c50 <_convert_string_to_int+0xd0>
100002c50: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002c54: e9 17 80 b9 	ldrsw	x9, [sp, #20]
100002c58: 00 69 e9 38 	ldrsb	w0, [x8, x9]
100002c5c: 23 04 00 94 	bl	0x100003ce8 <_tolower+0x100003ce8>
100002c60: 08 00 00 71 	subs	w8, w0, #0
100002c64: e8 17 9f 1a 	cset	w8, eq
100002c68: 88 01 00 37 	tbnz	w8, #0, 0x100002c98 <_convert_string_to_int+0x118>
100002c6c: 01 00 00 14 	b	0x100002c70 <_convert_string_to_int+0xf0>
100002c70: a8 03 5f b8 	ldur	w8, [x29, #-16]
100002c74: e9 1b 40 b9 	ldr	w9, [sp, #24]
100002c78: 08 7d 09 1b 	mul	w8, w8, w9
100002c7c: a9 83 5f f8 	ldur	x9, [x29, #-8]
100002c80: ea 17 80 b9 	ldrsw	x10, [sp, #20]
100002c84: 29 69 ea 38 	ldrsb	w9, [x9, x10]
100002c88: 29 c1 00 71 	subs	w9, w9, #48
100002c8c: 08 01 09 0b 	add	w8, w8, w9
100002c90: a8 03 1f b8 	stur	w8, [x29, #-16]
100002c94: 26 00 00 14 	b	0x100002d2c <_convert_string_to_int+0x1ac>
100002c98: e8 1b 40 b9 	ldr	w8, [sp, #24]
100002c9c: 08 41 00 71 	subs	w8, w8, #16
100002ca0: e8 07 9f 1a 	cset	w8, ne
100002ca4: c8 02 00 37 	tbnz	w8, #0, 0x100002cfc <_convert_string_to_int+0x17c>
100002ca8: 01 00 00 14 	b	0x100002cac <_convert_string_to_int+0x12c>
100002cac: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002cb0: e9 17 80 b9 	ldrsw	x9, [sp, #20]
100002cb4: 00 69 e9 38 	ldrsb	w0, [x8, x9]
100002cb8: 0f 04 00 94 	bl	0x100003cf4 <_tolower+0x100003cf4>
100002cbc: 08 00 00 71 	subs	w8, w0, #0
100002cc0: e8 17 9f 1a 	cset	w8, eq
100002cc4: c8 01 00 37 	tbnz	w8, #0, 0x100002cfc <_convert_string_to_int+0x17c>
100002cc8: 01 00 00 14 	b	0x100002ccc <_convert_string_to_int+0x14c>
100002ccc: a8 03 5f b8 	ldur	w8, [x29, #-16]
100002cd0: e8 13 00 b9 	str	w8, [sp, #16]
100002cd4: a8 83 5f f8 	ldur	x8, [x29, #-8]
100002cd8: e9 17 80 b9 	ldrsw	x9, [sp, #20]
100002cdc: 00 69 e9 38 	ldrsb	w0, [x8, x9]
100002ce0: 1d 04 00 94 	bl	0x100003d54 <_tolower+0x100003d54>
100002ce4: e9 13 40 b9 	ldr	w9, [sp, #16]
100002ce8: 08 84 01 71 	subs	w8, w0, #97
100002cec: 08 29 00 11 	add	w8, w8, #10
100002cf0: 08 11 09 0b 	add	w8, w8, w9, lsl #4
100002cf4: a8 03 1f b8 	stur	w8, [x29, #-16]
100002cf8: 0c 00 00 14 	b	0x100002d28 <_convert_string_to_int+0x1a8>
100002cfc: a9 43 5f b8 	ldur	w9, [x29, #-12]
100002d00: e8 03 09 aa 	mov	x8, x9
100002d04: e9 03 00 91 	mov	x9, sp
100002d08: 0a 00 00 b0 	adrp	x10, 0x100003000 <_convert_string_to_int+0x18c>
100002d0c: 4a 0d 36 91 	add	x10, x10, #3459
100002d10: 2a 01 00 f9 	str	x10, [x9]
100002d14: 28 05 00 f9 	str	x8, [x9, #8]
100002d18: 00 00 00 b0 	adrp	x0, 0x100003000 <_convert_string_to_int+0x19c>
100002d1c: 00 f0 35 91 	add	x0, x0, #3452
100002d20: fb 03 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100002d24: 01 00 00 14 	b	0x100002d28 <_convert_string_to_int+0x1a8>
100002d28: 01 00 00 14 	b	0x100002d2c <_convert_string_to_int+0x1ac>
100002d2c: 01 00 00 14 	b	0x100002d30 <_convert_string_to_int+0x1b0>
100002d30: e8 17 40 b9 	ldr	w8, [sp, #20]
100002d34: 08 05 00 11 	add	w8, w8, #1
100002d38: e8 17 00 b9 	str	w8, [sp, #20]
100002d3c: be ff ff 17 	b	0x100002c34 <_convert_string_to_int+0xb4>
100002d40: a8 c3 5e b8 	ldur	w8, [x29, #-20]
100002d44: a9 03 5f b8 	ldur	w9, [x29, #-16]
100002d48: 00 7d 09 1b 	mul	w0, w8, w9
100002d4c: fd 7b 43 a9 	ldp	x29, x30, [sp, #48]
100002d50: ff 03 01 91 	add	sp, sp, #64
100002d54: c0 03 5f d6 	ret

0000000100002d58 <_handle_symbol>:
100002d58: ff 83 01 d1 	sub	sp, sp, #96
100002d5c: fd 7b 05 a9 	stp	x29, x30, [sp, #80]
100002d60: fd 43 01 91 	add	x29, sp, #80
100002d64: a0 83 1f f8 	stur	x0, [x29, #-8]
100002d68: a1 03 1f f8 	stur	x1, [x29, #-16]
100002d6c: a2 83 1e f8 	stur	x2, [x29, #-24]
100002d70: a3 03 1e f8 	stur	x3, [x29, #-32]
100002d74: a4 c3 1d b8 	stur	w4, [x29, #-36]
100002d78: e5 2b 00 b9 	str	w5, [sp, #40]
100002d7c: a0 83 5e f8 	ldur	x0, [x29, #-24]
100002d80: a1 83 5f f8 	ldur	x1, [x29, #-8]
100002d84: d6 fd ff 97 	bl	0x1000024dc <_instruction_table_get>
100002d88: 08 00 00 f1 	subs	x8, x0, #0
100002d8c: e8 17 9f 1a 	cset	w8, eq
100002d90: a8 01 00 37 	tbnz	w8, #0, 0x100002dc4 <_handle_symbol+0x6c>
100002d94: 01 00 00 14 	b	0x100002d98 <_handle_symbol+0x40>
100002d98: e9 2b 40 b9 	ldr	w9, [sp, #40]
100002d9c: e8 03 09 aa 	mov	x8, x9
100002da0: e9 03 00 91 	mov	x9, sp
100002da4: 0a 00 00 b0 	adrp	x10, 0x100003000 <_handle_symbol+0x50>
100002da8: 4a 61 36 91 	add	x10, x10, #3480
100002dac: 2a 01 00 f9 	str	x10, [x9]
100002db0: 28 05 00 f9 	str	x8, [x9, #8]
100002db4: 00 00 00 b0 	adrp	x0, 0x100003000 <_handle_symbol+0x60>
100002db8: 00 f0 35 91 	add	x0, x0, #3452
100002dbc: d4 03 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100002dc0: 01 00 00 14 	b	0x100002dc4 <_handle_symbol+0x6c>
100002dc4: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002dc8: 01 00 00 b0 	adrp	x1, 0x100003000 <_handle_symbol+0x74>
100002dcc: 21 08 37 91 	add	x1, x1, #3522
100002dd0: de 03 00 94 	bl	0x100003d48 <_tolower+0x100003d48>
100002dd4: e0 13 00 f9 	str	x0, [sp, #32]
100002dd8: e0 13 40 f9 	ldr	x0, [sp, #32]
100002ddc: 32 ff ff 97 	bl	0x100002aa4 <_scanner>
100002de0: 08 00 00 71 	subs	w8, w0, #0
100002de4: e8 17 9f 1a 	cset	w8, eq
100002de8: a8 01 00 37 	tbnz	w8, #0, 0x100002e1c <_handle_symbol+0xc4>
100002dec: 01 00 00 14 	b	0x100002df0 <_handle_symbol+0x98>
100002df0: e9 2b 40 b9 	ldr	w9, [sp, #40]
100002df4: e8 03 09 aa 	mov	x8, x9
100002df8: e9 03 00 91 	mov	x9, sp
100002dfc: 0a 00 00 b0 	adrp	x10, 0x100003000 <_handle_symbol+0xa8>
100002e00: 4a 11 37 91 	add	x10, x10, #3524
100002e04: 2a 01 00 f9 	str	x10, [x9]
100002e08: 28 05 00 f9 	str	x8, [x9, #8]
100002e0c: 00 00 00 b0 	adrp	x0, 0x100003000 <_handle_symbol+0xb8>
100002e10: 00 f0 35 91 	add	x0, x0, #3452
100002e14: be 03 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100002e18: 01 00 00 14 	b	0x100002e1c <_handle_symbol+0xc4>
100002e1c: a0 03 5e f8 	ldur	x0, [x29, #-32]
100002e20: e1 13 40 f9 	ldr	x1, [sp, #32]
100002e24: 4a fe ff 97 	bl	0x10000274c <_symbol_table_get>
100002e28: e0 0f 00 f9 	str	x0, [sp, #24]
100002e2c: e8 0f 40 f9 	ldr	x8, [sp, #24]
100002e30: 08 01 00 f1 	subs	x8, x8, #0
100002e34: e8 07 9f 1a 	cset	w8, ne
100002e38: a8 01 00 37 	tbnz	w8, #0, 0x100002e6c <_handle_symbol+0x114>
100002e3c: 01 00 00 14 	b	0x100002e40 <_handle_symbol+0xe8>
100002e40: a0 03 5e f8 	ldur	x0, [x29, #-32]
100002e44: e1 13 40 f9 	ldr	x1, [sp, #32]
100002e48: 02 00 80 12 	mov	w2, #-1
100002e4c: 03 00 00 b0 	adrp	x3, 0x100003000 <_handle_symbol+0xf8>
100002e50: 63 b4 37 91 	add	x3, x3, #3565
100002e54: ca fd ff 97 	bl	0x10000257c <_symbol_table_put>
100002e58: a0 03 5e f8 	ldur	x0, [x29, #-32]
100002e5c: e1 13 40 f9 	ldr	x1, [sp, #32]
100002e60: 3b fe ff 97 	bl	0x10000274c <_symbol_table_get>
100002e64: e0 0f 00 f9 	str	x0, [sp, #24]
100002e68: 01 00 00 14 	b	0x100002e6c <_handle_symbol+0x114>
100002e6c: e8 0f 40 f9 	ldr	x8, [sp, #24]
100002e70: 08 09 40 b9 	ldr	w8, [x8, #8]
100002e74: a9 03 5f f8 	ldur	x9, [x29, #-16]
100002e78: aa c3 9d b8 	ldursw	x10, [x29, #-36]
100002e7c: 28 79 2a b8 	str	w8, [x9, x10, lsl #2]
100002e80: e8 0f 40 f9 	ldr	x8, [sp, #24]
100002e84: 00 09 40 f9 	ldr	x0, [x8, #16]
100002e88: 01 00 00 b0 	adrp	x1, 0x100003000 <_handle_symbol+0x134>
100002e8c: 21 b4 37 91 	add	x1, x1, #3565
100002e90: a5 03 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100002e94: 08 00 00 71 	subs	w8, w0, #0
100002e98: e8 07 9f 1a 	cset	w8, ne
100002e9c: c8 00 00 37 	tbnz	w8, #0, 0x100002eb4 <_handle_symbol+0x15c>
100002ea0: 01 00 00 14 	b	0x100002ea4 <_handle_symbol+0x14c>
100002ea4: a8 c3 5d b8 	ldur	w8, [x29, #-36]
100002ea8: e9 0f 40 f9 	ldr	x9, [sp, #24]
100002eac: 28 09 00 b9 	str	w8, [x9, #8]
100002eb0: 01 00 00 14 	b	0x100002eb4 <_handle_symbol+0x15c>
100002eb4: fd 7b 45 a9 	ldp	x29, x30, [sp, #80]
100002eb8: ff 83 01 91 	add	sp, sp, #96
100002ebc: c0 03 5f d6 	ret

0000000100002ec0 <_define_symbol>:
100002ec0: ff c3 01 d1 	sub	sp, sp, #112
100002ec4: fd 7b 06 a9 	stp	x29, x30, [sp, #96]
100002ec8: fd 83 01 91 	add	x29, sp, #96
100002ecc: a0 83 1f f8 	stur	x0, [x29, #-8]
100002ed0: a1 03 1f f8 	stur	x1, [x29, #-16]
100002ed4: a2 83 1e f8 	stur	x2, [x29, #-24]
100002ed8: a3 03 1e f8 	stur	x3, [x29, #-32]
100002edc: a4 83 1d f8 	stur	x4, [x29, #-40]
100002ee0: a5 43 1d b8 	stur	w5, [x29, #-44]
100002ee4: e6 33 00 b9 	str	w6, [sp, #48]
100002ee8: a0 83 5f f8 	ldur	x0, [x29, #-8]
100002eec: 01 00 00 b0 	adrp	x1, 0x100003000 <_define_symbol+0x30>
100002ef0: 21 08 37 91 	add	x1, x1, #3522
100002ef4: 95 03 00 94 	bl	0x100003d48 <_tolower+0x100003d48>
100002ef8: e0 17 00 f9 	str	x0, [sp, #40]
100002efc: e0 17 40 f9 	ldr	x0, [sp, #40]
100002f00: e9 fe ff 97 	bl	0x100002aa4 <_scanner>
100002f04: 08 00 00 71 	subs	w8, w0, #0
100002f08: e8 17 9f 1a 	cset	w8, eq
100002f0c: a8 01 00 37 	tbnz	w8, #0, 0x100002f40 <_define_symbol+0x80>
100002f10: 01 00 00 14 	b	0x100002f14 <_define_symbol+0x54>
100002f14: e9 33 40 b9 	ldr	w9, [sp, #48]
100002f18: e8 03 09 aa 	mov	x8, x9
100002f1c: e9 03 00 91 	mov	x9, sp
100002f20: 0a 00 00 b0 	adrp	x10, 0x100003000 <_define_symbol+0x64>
100002f24: 4a 11 37 91 	add	x10, x10, #3524
100002f28: 2a 01 00 f9 	str	x10, [x9]
100002f2c: 28 05 00 f9 	str	x8, [x9, #8]
100002f30: 00 00 00 b0 	adrp	x0, 0x100003000 <_define_symbol+0x74>
100002f34: 00 f0 35 91 	add	x0, x0, #3452
100002f38: 75 03 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100002f3c: 01 00 00 14 	b	0x100002f40 <_define_symbol+0x80>
100002f40: a0 03 5e f8 	ldur	x0, [x29, #-32]
100002f44: e1 17 40 f9 	ldr	x1, [sp, #40]
100002f48: 01 fe ff 97 	bl	0x10000274c <_symbol_table_get>
100002f4c: e0 13 00 f9 	str	x0, [sp, #32]
100002f50: e8 13 40 f9 	ldr	x8, [sp, #32]
100002f54: 08 01 00 f1 	subs	x8, x8, #0
100002f58: e8 07 9f 1a 	cset	w8, ne
100002f5c: a8 01 00 37 	tbnz	w8, #0, 0x100002f90 <_define_symbol+0xd0>
100002f60: 01 00 00 14 	b	0x100002f64 <_define_symbol+0xa4>
100002f64: a0 03 5e f8 	ldur	x0, [x29, #-32]
100002f68: e1 17 40 f9 	ldr	x1, [sp, #40]
100002f6c: 02 00 80 12 	mov	w2, #-1
100002f70: 03 00 00 b0 	adrp	x3, 0x100003000 <_define_symbol+0xb4>
100002f74: 63 cc 37 91 	add	x3, x3, #3571
100002f78: 81 fd ff 97 	bl	0x10000257c <_symbol_table_put>
100002f7c: a0 03 5e f8 	ldur	x0, [x29, #-32]
100002f80: e1 17 40 f9 	ldr	x1, [sp, #40]
100002f84: f2 fd ff 97 	bl	0x10000274c <_symbol_table_get>
100002f88: e0 13 00 f9 	str	x0, [sp, #32]
100002f8c: 01 00 00 14 	b	0x100002f90 <_define_symbol+0xd0>
100002f90: e8 13 40 f9 	ldr	x8, [sp, #32]
100002f94: 08 09 40 b9 	ldr	w8, [x8, #8]
100002f98: e8 1f 00 b9 	str	w8, [sp, #28]
100002f9c: 01 00 00 14 	b	0x100002fa0 <_define_symbol+0xe0>
100002fa0: e8 1f 40 b9 	ldr	w8, [sp, #28]
100002fa4: 08 01 00 71 	subs	w8, w8, #0
100002fa8: e8 c7 9f 1a 	cset	w8, le
100002fac: a8 01 00 37 	tbnz	w8, #0, 0x100002fe0 <_define_symbol+0x120>
100002fb0: 01 00 00 14 	b	0x100002fb4 <_define_symbol+0xf4>
100002fb4: a8 03 5f f8 	ldur	x8, [x29, #-16]
100002fb8: e9 1f 80 b9 	ldrsw	x9, [sp, #28]
100002fbc: 08 79 69 b8 	ldr	w8, [x8, x9, lsl #2]
100002fc0: e8 1b 00 b9 	str	w8, [sp, #24]
100002fc4: a8 43 5d b8 	ldur	w8, [x29, #-44]
100002fc8: a9 03 5f f8 	ldur	x9, [x29, #-16]
100002fcc: ea 1f 80 b9 	ldrsw	x10, [sp, #28]
100002fd0: 28 79 2a b8 	str	w8, [x9, x10, lsl #2]
100002fd4: e8 1b 40 b9 	ldr	w8, [sp, #24]
100002fd8: e8 1f 00 b9 	str	w8, [sp, #28]
100002fdc: f1 ff ff 17 	b	0x100002fa0 <_define_symbol+0xe0>
100002fe0: a8 43 5d b8 	ldur	w8, [x29, #-44]
100002fe4: e9 13 40 f9 	ldr	x9, [sp, #32]
100002fe8: 28 09 00 b9 	str	w8, [x9, #8]
100002fec: a0 83 5d f8 	ldur	x0, [x29, #-40]
100002ff0: e1 17 40 f9 	ldr	x1, [sp, #40]
100002ff4: 66 fe ff 97 	bl	0x10000298c <_definition_table_get>
100002ff8: e0 0b 00 f9 	str	x0, [sp, #16]
100002ffc: e8 0b 40 f9 	ldr	x8, [sp, #16]
100003000: 08 01 00 f1 	subs	x8, x8, #0
100003004: e8 17 9f 1a 	cset	w8, eq
100003008: c8 00 00 37 	tbnz	w8, #0, 0x100003020 <_define_symbol+0x160>
10000300c: 01 00 00 14 	b	0x100003010 <_define_symbol+0x150>
100003010: a8 43 5d b8 	ldur	w8, [x29, #-44]
100003014: e9 0b 40 f9 	ldr	x9, [sp, #16]
100003018: 28 09 00 b9 	str	w8, [x9, #8]
10000301c: 01 00 00 14 	b	0x100003020 <_define_symbol+0x160>
100003020: fd 7b 46 a9 	ldp	x29, x30, [sp, #96]
100003024: ff c3 01 91 	add	sp, sp, #112
100003028: c0 03 5f d6 	ret

000000010000302c <_read_file_header>:
10000302c: ff c3 02 d1 	sub	sp, sp, #176
100003030: fd 7b 0a a9 	stp	x29, x30, [sp, #160]
100003034: fd 83 02 91 	add	x29, sp, #160
100003038: 08 00 00 b0 	adrp	x8, 0x100004000 <_read_file_header+0x10>
10000303c: 08 09 40 f9 	ldr	x8, [x8, #16]
100003040: 08 01 40 f9 	ldr	x8, [x8]
100003044: a8 83 1f f8 	stur	x8, [x29, #-8]
100003048: a0 03 1c f8 	stur	x0, [x29, #-64]
10000304c: a1 83 1b f8 	stur	x1, [x29, #-72]
100003050: e2 2b 00 f9 	str	x2, [sp, #80]
100003054: e3 27 00 f9 	str	x3, [sp, #72]
100003058: e4 23 00 f9 	str	x4, [sp, #64]
10000305c: e5 3f 00 b9 	str	w5, [sp, #60]
100003060: e6 3b 00 b9 	str	w6, [sp, #56]
100003064: a0 83 5b f8 	ldur	x0, [x29, #-72]
100003068: e9 03 00 91 	mov	x9, sp
10000306c: a8 83 00 d1 	sub	x8, x29, #32
100003070: e8 1b 00 f9 	str	x8, [sp, #48]
100003074: 28 01 00 f9 	str	x8, [x9]
100003078: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0x4c>
10000307c: 21 e0 37 91 	add	x1, x1, #3576
100003080: 14 03 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
100003084: e0 1b 40 f9 	ldr	x0, [sp, #48]
100003088: 69 fe ff 97 	bl	0x100002a2c <_check_label>
10000308c: 08 00 00 71 	subs	w8, w0, #0
100003090: e8 07 9f 1a 	cset	w8, ne
100003094: 48 01 00 37 	tbnz	w8, #0, 0x1000030bc <_read_file_header+0x90>
100003098: 01 00 00 14 	b	0x10000309c <_read_file_header+0x70>
10000309c: e9 03 00 91 	mov	x9, sp
1000030a0: 08 00 00 90 	adrp	x8, 0x100003000 <_read_file_header+0x74>
1000030a4: 08 ed 37 91 	add	x8, x8, #3579
1000030a8: 28 01 00 f9 	str	x8, [x9]
1000030ac: 00 00 00 90 	adrp	x0, 0x100003000 <_read_file_header+0x80>
1000030b0: 00 e0 37 91 	add	x0, x0, #3576
1000030b4: 16 03 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
1000030b8: 01 00 00 14 	b	0x1000030bc <_read_file_header+0x90>
1000030bc: a1 03 5c f8 	ldur	x1, [x29, #-64]
1000030c0: e2 2b 40 f9 	ldr	x2, [sp, #80]
1000030c4: e3 27 40 f9 	ldr	x3, [sp, #72]
1000030c8: e4 23 40 f9 	ldr	x4, [sp, #64]
1000030cc: e5 3f 40 b9 	ldr	w5, [sp, #60]
1000030d0: e6 3b 40 b9 	ldr	w6, [sp, #56]
1000030d4: a0 83 00 d1 	sub	x0, x29, #32
1000030d8: e0 17 00 f9 	str	x0, [sp, #40]
1000030dc: 79 ff ff 97 	bl	0x100002ec0 <_define_symbol>
1000030e0: e8 17 40 f9 	ldr	x8, [sp, #40]
1000030e4: bf 03 1e f8 	stur	xzr, [x29, #-32]
1000030e8: bf 83 1e f8 	stur	xzr, [x29, #-24]
1000030ec: bf 03 1f b8 	stur	wzr, [x29, #-16]
1000030f0: a0 83 5b f8 	ldur	x0, [x29, #-72]
1000030f4: e9 03 00 91 	mov	x9, sp
1000030f8: 28 01 00 f9 	str	x8, [x9]
1000030fc: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0xd0>
100003100: 21 e0 37 91 	add	x1, x1, #3576
100003104: f3 02 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
100003108: e0 17 40 f9 	ldr	x0, [sp, #40]
10000310c: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0xe0>
100003110: 21 5c 38 91 	add	x1, x1, #3607
100003114: 04 03 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100003118: 08 00 00 71 	subs	w8, w0, #0
10000311c: e8 17 9f 1a 	cset	w8, eq
100003120: 48 01 00 37 	tbnz	w8, #0, 0x100003148 <_read_file_header+0x11c>
100003124: 01 00 00 14 	b	0x100003128 <_read_file_header+0xfc>
100003128: e9 03 00 91 	mov	x9, sp
10000312c: 08 00 00 90 	adrp	x8, 0x100003000 <_read_file_header+0x100>
100003130: 08 75 38 91 	add	x8, x8, #3613
100003134: 28 01 00 f9 	str	x8, [x9]
100003138: 00 00 00 90 	adrp	x0, 0x100003000 <_read_file_header+0x10c>
10000313c: 00 e0 37 91 	add	x0, x0, #3576
100003140: f3 02 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100003144: 01 00 00 14 	b	0x100003148 <_read_file_header+0x11c>
100003148: bf 03 1e f8 	stur	xzr, [x29, #-32]
10000314c: bf 83 1e f8 	stur	xzr, [x29, #-24]
100003150: bf 03 1f b8 	stur	wzr, [x29, #-16]
100003154: 01 00 00 14 	b	0x100003158 <_read_file_header+0x12c>
100003158: a0 83 5b f8 	ldur	x0, [x29, #-72]
10000315c: e9 03 00 91 	mov	x9, sp
100003160: a8 83 00 d1 	sub	x8, x29, #32
100003164: e8 13 00 f9 	str	x8, [sp, #32]
100003168: 28 01 00 f9 	str	x8, [x9]
10000316c: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0x140>
100003170: 21 e0 37 91 	add	x1, x1, #3576
100003174: d7 02 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
100003178: e0 13 40 f9 	ldr	x0, [sp, #32]
10000317c: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0x150>
100003180: 21 d4 38 91 	add	x1, x1, #3637
100003184: e8 02 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100003188: 08 00 00 71 	subs	w8, w0, #0
10000318c: e8 07 9f 1a 	cset	w8, ne
100003190: 68 00 00 37 	tbnz	w8, #0, 0x10000319c <_read_file_header+0x170>
100003194: 01 00 00 14 	b	0x100003198 <_read_file_header+0x16c>
100003198: 50 00 00 14 	b	0x1000032d8 <_read_file_header+0x2ac>
10000319c: a0 83 00 d1 	sub	x0, x29, #32
1000031a0: 23 fe ff 97 	bl	0x100002a2c <_check_label>
1000031a4: 08 00 00 71 	subs	w8, w0, #0
1000031a8: e8 17 9f 1a 	cset	w8, eq
1000031ac: 28 05 00 37 	tbnz	w8, #0, 0x100003250 <_read_file_header+0x224>
1000031b0: 01 00 00 14 	b	0x1000031b4 <_read_file_header+0x188>
1000031b4: a0 83 5b f8 	ldur	x0, [x29, #-72]
1000031b8: e9 03 00 91 	mov	x9, sp
1000031bc: a8 e3 00 d1 	sub	x8, x29, #56
1000031c0: e8 0f 00 f9 	str	x8, [sp, #24]
1000031c4: 28 01 00 f9 	str	x8, [x9]
1000031c8: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0x19c>
1000031cc: 21 e0 37 91 	add	x1, x1, #3576
1000031d0: c0 02 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
1000031d4: e0 0f 40 f9 	ldr	x0, [sp, #24]
1000031d8: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0x1ac>
1000031dc: 21 f4 38 91 	add	x1, x1, #3645
1000031e0: d1 02 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
1000031e4: 08 00 00 71 	subs	w8, w0, #0
1000031e8: e8 17 9f 1a 	cset	w8, eq
1000031ec: 48 01 00 37 	tbnz	w8, #0, 0x100003214 <_read_file_header+0x1e8>
1000031f0: 01 00 00 14 	b	0x1000031f4 <_read_file_header+0x1c8>
1000031f4: e9 03 00 91 	mov	x9, sp
1000031f8: 08 00 00 90 	adrp	x8, 0x100003000 <_read_file_header+0x1cc>
1000031fc: 08 11 39 91 	add	x8, x8, #3652
100003200: 28 01 00 f9 	str	x8, [x9]
100003204: 00 00 00 90 	adrp	x0, 0x100003000 <_read_file_header+0x1d8>
100003208: 00 e0 37 91 	add	x0, x0, #3576
10000320c: c0 02 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100003210: 01 00 00 14 	b	0x100003214 <_read_file_header+0x1e8>
100003214: bf 83 1c f8 	stur	xzr, [x29, #-56]
100003218: bf 03 1d f8 	stur	xzr, [x29, #-48]
10000321c: bf 83 1d b8 	stur	wzr, [x29, #-40]
100003220: a1 03 5c f8 	ldur	x1, [x29, #-64]
100003224: e2 2b 40 f9 	ldr	x2, [sp, #80]
100003228: e3 27 40 f9 	ldr	x3, [sp, #72]
10000322c: e4 23 40 f9 	ldr	x4, [sp, #64]
100003230: e5 3f 40 b9 	ldr	w5, [sp, #60]
100003234: e6 3b 40 b9 	ldr	w6, [sp, #56]
100003238: a0 83 00 d1 	sub	x0, x29, #32
10000323c: 21 ff ff 97 	bl	0x100002ec0 <_define_symbol>
100003240: bf 03 1e f8 	stur	xzr, [x29, #-32]
100003244: bf 83 1e f8 	stur	xzr, [x29, #-24]
100003248: bf 03 1f b8 	stur	wzr, [x29, #-16]
10000324c: 21 00 00 14 	b	0x1000032d0 <_read_file_header+0x2a4>
100003250: a0 83 00 d1 	sub	x0, x29, #32
100003254: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0x228>
100003258: 21 74 39 91 	add	x1, x1, #3677
10000325c: b2 02 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100003260: 08 00 00 71 	subs	w8, w0, #0
100003264: e8 17 9f 1a 	cset	w8, eq
100003268: 48 01 00 37 	tbnz	w8, #0, 0x100003290 <_read_file_header+0x264>
10000326c: 01 00 00 14 	b	0x100003270 <_read_file_header+0x244>
100003270: e9 03 00 91 	mov	x9, sp
100003274: 08 00 00 90 	adrp	x8, 0x100003000 <_read_file_header+0x248>
100003278: 08 91 39 91 	add	x8, x8, #3684
10000327c: 28 01 00 f9 	str	x8, [x9]
100003280: 00 00 00 90 	adrp	x0, 0x100003000 <_read_file_header+0x254>
100003284: 00 e0 37 91 	add	x0, x0, #3576
100003288: a1 02 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
10000328c: 01 00 00 14 	b	0x100003290 <_read_file_header+0x264>
100003290: a8 83 00 d1 	sub	x8, x29, #32
100003294: e8 0b 00 f9 	str	x8, [sp, #16]
100003298: bf 03 1e f8 	stur	xzr, [x29, #-32]
10000329c: bf 83 1e f8 	stur	xzr, [x29, #-24]
1000032a0: bf 03 1f b8 	stur	wzr, [x29, #-16]
1000032a4: a0 83 5b f8 	ldur	x0, [x29, #-72]
1000032a8: e9 03 00 91 	mov	x9, sp
1000032ac: 28 01 00 f9 	str	x8, [x9]
1000032b0: 01 00 00 90 	adrp	x1, 0x100003000 <_read_file_header+0x284>
1000032b4: 21 e0 37 91 	add	x1, x1, #3576
1000032b8: 86 02 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
1000032bc: e1 0b 40 f9 	ldr	x1, [sp, #16]
1000032c0: e0 23 40 f9 	ldr	x0, [sp, #64]
1000032c4: 02 00 80 52 	mov	w2, #0
1000032c8: 49 fd ff 97 	bl	0x1000027ec <_definition_table_put>
1000032cc: 01 00 00 14 	b	0x1000032d0 <_read_file_header+0x2a4>
1000032d0: 01 00 00 14 	b	0x1000032d4 <_read_file_header+0x2a8>
1000032d4: a1 ff ff 17 	b	0x100003158 <_read_file_header+0x12c>
1000032d8: a9 83 5f f8 	ldur	x9, [x29, #-8]
1000032dc: 08 00 00 b0 	adrp	x8, 0x100004000 <_read_file_header+0x2b4>
1000032e0: 08 09 40 f9 	ldr	x8, [x8, #16]
1000032e4: 08 01 40 f9 	ldr	x8, [x8]
1000032e8: 08 01 09 eb 	subs	x8, x8, x9
1000032ec: e8 17 9f 1a 	cset	w8, eq
1000032f0: 68 00 00 37 	tbnz	w8, #0, 0x1000032fc <_read_file_header+0x2d0>
1000032f4: 01 00 00 14 	b	0x1000032f8 <_read_file_header+0x2cc>
1000032f8: 5b 02 00 94 	bl	0x100003c64 <_tolower+0x100003c64>
1000032fc: fd 7b 4a a9 	ldp	x29, x30, [sp, #160]
100003300: ff c3 02 91 	add	sp, sp, #176
100003304: c0 03 5f d6 	ret

0000000100003308 <_single_pass>:
100003308: ff 03 05 d1 	sub	sp, sp, #320
10000330c: fc 6f 12 a9 	stp	x28, x27, [sp, #288]
100003310: fd 7b 13 a9 	stp	x29, x30, [sp, #304]
100003314: fd c3 04 91 	add	x29, sp, #304
100003318: 08 00 00 b0 	adrp	x8, 0x100004000 <_single_pass+0x14>
10000331c: 08 09 40 f9 	ldr	x8, [x8, #16]
100003320: 08 01 40 f9 	ldr	x8, [x8]
100003324: a8 83 1e f8 	stur	x8, [x29, #-24]
100003328: a0 c3 1b b8 	stur	w0, [x29, #-68]
10000332c: a1 03 1b f8 	stur	x1, [x29, #-80]
100003330: bf c3 1a b8 	stur	wzr, [x29, #-84]
100003334: bf 83 1a b8 	stur	wzr, [x29, #-88]
100003338: bf 43 1a b8 	stur	wzr, [x29, #-92]
10000333c: bf 03 1a b8 	stur	wzr, [x29, #-96]
100003340: 2c fc ff 97 	bl	0x1000023f0 <_instruction_table_create>
100003344: a0 83 19 f8 	stur	x0, [x29, #-104]
100003348: ec fc ff 97 	bl	0x1000026f8 <_symbol_table_create>
10000334c: a0 03 19 f8 	stur	x0, [x29, #-112]
100003350: 7a fd ff 97 	bl	0x100002938 <_definition_table_create>
100003354: a0 83 18 f8 	stur	x0, [x29, #-120]
100003358: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x50>
10000335c: 00 f4 39 91 	add	x0, x0, #3709
100003360: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x58>
100003364: 21 c4 35 91 	add	x1, x1, #3441
100003368: 4e 02 00 94 	bl	0x100003ca0 <_tolower+0x100003ca0>
10000336c: a0 03 18 f8 	stur	x0, [x29, #-128]
100003370: 00 40 80 d2 	mov	x0, #512
100003374: e0 3b 00 f9 	str	x0, [sp, #112]
100003378: 62 02 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
10000337c: a0 83 17 f8 	stur	x0, [x29, #-136]
100003380: 00 04 80 d2 	mov	x0, #32
100003384: 5f 02 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
100003388: e8 03 00 aa 	mov	x8, x0
10000338c: e0 3b 40 f9 	ldr	x0, [sp, #112]
100003390: a8 03 17 f8 	stur	x8, [x29, #-144]
100003394: 5b 02 00 94 	bl	0x100003d00 <_tolower+0x100003d00>
100003398: e0 4f 00 f9 	str	x0, [sp, #152]
10000339c: a8 c3 5b b8 	ldur	w8, [x29, #-68]
1000033a0: 08 01 00 71 	subs	w8, w8, #0
1000033a4: e8 17 9f 1a 	cset	w8, eq
1000033a8: 68 01 00 37 	tbnz	w8, #0, 0x1000033d4 <_single_pass+0xcc>
1000033ac: 01 00 00 14 	b	0x1000033b0 <_single_pass+0xa8>
1000033b0: a0 83 57 f8 	ldur	x0, [x29, #-136]
1000033b4: a1 03 58 f8 	ldur	x1, [x29, #-128]
1000033b8: a2 83 59 f8 	ldur	x2, [x29, #-104]
1000033bc: a3 03 59 f8 	ldur	x3, [x29, #-112]
1000033c0: a4 83 58 f8 	ldur	x4, [x29, #-120]
1000033c4: a5 c3 5a b8 	ldur	w5, [x29, #-84]
1000033c8: a6 43 5a b8 	ldur	w6, [x29, #-92]
1000033cc: 18 ff ff 97 	bl	0x10000302c <_read_file_header>
1000033d0: 01 00 00 14 	b	0x1000033d4 <_single_pass+0xcc>
1000033d4: a0 03 58 f8 	ldur	x0, [x29, #-128]
1000033d8: e9 03 00 91 	mov	x9, sp
1000033dc: a8 c3 00 d1 	sub	x8, x29, #48
1000033e0: e8 37 00 f9 	str	x8, [sp, #104]
1000033e4: 28 01 00 f9 	str	x8, [x9]
1000033e8: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0xe0>
1000033ec: 21 e0 37 91 	add	x1, x1, #3576
1000033f0: 38 02 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
1000033f4: e0 37 40 f9 	ldr	x0, [sp, #104]
1000033f8: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0xf0>
1000033fc: 21 38 3a 91 	add	x1, x1, #3726
100003400: 49 02 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100003404: 08 00 00 71 	subs	w8, w0, #0
100003408: e8 17 9f 1a 	cset	w8, eq
10000340c: 08 02 00 37 	tbnz	w8, #0, 0x10000344c <_single_pass+0x144>
100003410: 01 00 00 14 	b	0x100003414 <_single_pass+0x10c>
100003414: e9 03 00 91 	mov	x9, sp
100003418: a8 c3 00 d1 	sub	x8, x29, #48
10000341c: 28 01 00 f9 	str	x8, [x9]
100003420: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x118>
100003424: 00 e0 37 91 	add	x0, x0, #3576
100003428: e0 33 00 f9 	str	x0, [sp, #96]
10000342c: 38 02 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100003430: e0 33 40 f9 	ldr	x0, [sp, #96]
100003434: e9 03 00 91 	mov	x9, sp
100003438: 08 00 00 90 	adrp	x8, 0x100003000 <_single_pass+0x130>
10000343c: 08 4d 3a 91 	add	x8, x8, #3731
100003440: 28 01 00 f9 	str	x8, [x9]
100003444: 32 02 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100003448: 01 00 00 14 	b	0x10000344c <_single_pass+0x144>
10000344c: bf 03 1d f8 	stur	xzr, [x29, #-48]
100003450: bf 83 1d f8 	stur	xzr, [x29, #-40]
100003454: bf 03 1e b8 	stur	wzr, [x29, #-32]
100003458: 01 00 00 14 	b	0x10000345c <_single_pass+0x154>
10000345c: a0 03 58 f8 	ldur	x0, [x29, #-128]
100003460: e9 03 00 91 	mov	x9, sp
100003464: a8 c3 00 d1 	sub	x8, x29, #48
100003468: e8 2f 00 f9 	str	x8, [sp, #88]
10000346c: 28 01 00 f9 	str	x8, [x9]
100003470: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x168>
100003474: 21 e0 37 91 	add	x1, x1, #3576
100003478: 16 02 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
10000347c: e0 2f 40 f9 	ldr	x0, [sp, #88]
100003480: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x178>
100003484: 21 d4 38 91 	add	x1, x1, #3637
100003488: 27 02 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
10000348c: 08 00 00 71 	subs	w8, w0, #0
100003490: e8 07 9f 1a 	cset	w8, ne
100003494: 68 00 00 37 	tbnz	w8, #0, 0x1000034a0 <_single_pass+0x198>
100003498: 01 00 00 14 	b	0x10000349c <_single_pass+0x194>
10000349c: a8 00 00 14 	b	0x10000373c <_single_pass+0x434>
1000034a0: a0 c3 00 d1 	sub	x0, x29, #48
1000034a4: 62 fd ff 97 	bl	0x100002a2c <_check_label>
1000034a8: 08 04 00 71 	subs	w8, w0, #1
1000034ac: e8 07 9f 1a 	cset	w8, ne
1000034b0: e8 03 00 37 	tbnz	w8, #0, 0x10000352c <_single_pass+0x224>
1000034b4: 01 00 00 14 	b	0x1000034b8 <_single_pass+0x1b0>
1000034b8: a1 83 57 f8 	ldur	x1, [x29, #-136]
1000034bc: a2 83 59 f8 	ldur	x2, [x29, #-104]
1000034c0: a3 03 59 f8 	ldur	x3, [x29, #-112]
1000034c4: a4 83 58 f8 	ldur	x4, [x29, #-120]
1000034c8: a5 c3 5a b8 	ldur	w5, [x29, #-84]
1000034cc: a6 43 5a b8 	ldur	w6, [x29, #-92]
1000034d0: a0 c3 00 d1 	sub	x0, x29, #48
1000034d4: e0 2b 00 f9 	str	x0, [sp, #80]
1000034d8: 7a fe ff 97 	bl	0x100002ec0 <_define_symbol>
1000034dc: e8 2b 40 f9 	ldr	x8, [sp, #80]
1000034e0: bf 03 1d f8 	stur	xzr, [x29, #-48]
1000034e4: bf 83 1d f8 	stur	xzr, [x29, #-40]
1000034e8: bf 03 1e b8 	stur	wzr, [x29, #-32]
1000034ec: a0 03 58 f8 	ldur	x0, [x29, #-128]
1000034f0: e9 03 00 91 	mov	x9, sp
1000034f4: 28 01 00 f9 	str	x8, [x9]
1000034f8: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x1f0>
1000034fc: 21 e0 37 91 	add	x1, x1, #3576
100003500: f4 01 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
100003504: e0 2b 40 f9 	ldr	x0, [sp, #80]
100003508: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x200>
10000350c: 21 b0 3a 91 	add	x1, x1, #3756
100003510: 05 02 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100003514: 08 00 00 71 	subs	w8, w0, #0
100003518: e8 07 9f 1a 	cset	w8, ne
10000351c: 68 00 00 37 	tbnz	w8, #0, 0x100003528 <_single_pass+0x220>
100003520: 01 00 00 14 	b	0x100003524 <_single_pass+0x21c>
100003524: 86 00 00 14 	b	0x10000373c <_single_pass+0x434>
100003528: 01 00 00 14 	b	0x10000352c <_single_pass+0x224>
10000352c: 01 00 00 14 	b	0x100003530 <_single_pass+0x228>
100003530: a0 83 59 f8 	ldur	x0, [x29, #-104]
100003534: a1 c3 00 d1 	sub	x1, x29, #48
100003538: e9 fb ff 97 	bl	0x1000024dc <_instruction_table_get>
10000353c: e0 4b 00 f9 	str	x0, [sp, #144]
100003540: e8 4b 40 f9 	ldr	x8, [sp, #144]
100003544: 08 01 00 f1 	subs	x8, x8, #0
100003548: e8 17 9f 1a 	cset	w8, eq
10000354c: a8 0a 00 37 	tbnz	w8, #0, 0x1000036a0 <_single_pass+0x398>
100003550: 01 00 00 14 	b	0x100003554 <_single_pass+0x24c>
100003554: e8 4b 40 f9 	ldr	x8, [sp, #144]
100003558: 08 09 40 b9 	ldr	w8, [x8, #8]
10000355c: a9 83 57 f8 	ldur	x9, [x29, #-136]
100003560: aa c3 9a b8 	ldursw	x10, [x29, #-84]
100003564: 28 79 2a b8 	str	w8, [x9, x10, lsl #2]
100003568: a8 c3 5a b8 	ldur	w8, [x29, #-84]
10000356c: 08 05 00 11 	add	w8, w8, #1
100003570: a8 c3 1a b8 	stur	w8, [x29, #-84]
100003574: ff 8f 00 b9 	str	wzr, [sp, #140]
100003578: 01 00 00 14 	b	0x10000357c <_single_pass+0x274>
10000357c: e8 8f 40 b9 	ldr	w8, [sp, #140]
100003580: e9 4b 40 f9 	ldr	x9, [sp, #144]
100003584: 29 0d 40 b9 	ldr	w9, [x9, #12]
100003588: 29 05 00 71 	subs	w9, w9, #1
10000358c: 08 01 09 6b 	subs	w8, w8, w9
100003590: e8 b7 9f 1a 	cset	w8, ge
100003594: 48 08 00 37 	tbnz	w8, #0, 0x10000369c <_single_pass+0x394>
100003598: 01 00 00 14 	b	0x10000359c <_single_pass+0x294>
10000359c: a0 03 58 f8 	ldur	x0, [x29, #-128]
1000035a0: bd 01 00 94 	bl	0x100003c94 <_tolower+0x100003c94>
1000035a4: 08 28 00 71 	subs	w8, w0, #10
1000035a8: e8 07 9f 1a 	cset	w8, ne
1000035ac: a8 01 00 37 	tbnz	w8, #0, 0x1000035e0 <_single_pass+0x2d8>
1000035b0: 01 00 00 14 	b	0x1000035b4 <_single_pass+0x2ac>
1000035b4: a9 43 5a b8 	ldur	w9, [x29, #-92]
1000035b8: e8 03 09 aa 	mov	x8, x9
1000035bc: e9 03 00 91 	mov	x9, sp
1000035c0: 0a 00 00 90 	adrp	x10, 0x100003000 <_single_pass+0x2b8>
1000035c4: 4a c5 3a 91 	add	x10, x10, #3761
1000035c8: 2a 01 00 f9 	str	x10, [x9]
1000035cc: 28 05 00 f9 	str	x8, [x9, #8]
1000035d0: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x2c8>
1000035d4: 00 f0 35 91 	add	x0, x0, #3452
1000035d8: cd 01 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
1000035dc: 01 00 00 14 	b	0x1000035e0 <_single_pass+0x2d8>
1000035e0: a0 03 58 f8 	ldur	x0, [x29, #-128]
1000035e4: e9 03 00 91 	mov	x9, sp
1000035e8: a8 c3 00 d1 	sub	x8, x29, #48
1000035ec: e8 27 00 f9 	str	x8, [sp, #72]
1000035f0: 28 01 00 f9 	str	x8, [x9]
1000035f4: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x2ec>
1000035f8: 21 e0 37 91 	add	x1, x1, #3576
1000035fc: b5 01 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
100003600: e0 27 40 f9 	ldr	x0, [sp, #72]
100003604: 0a fd ff 97 	bl	0x100002a2c <_check_label>
100003608: 08 04 00 71 	subs	w8, w0, #1
10000360c: e8 07 9f 1a 	cset	w8, ne
100003610: a8 01 00 37 	tbnz	w8, #0, 0x100003644 <_single_pass+0x33c>
100003614: 01 00 00 14 	b	0x100003618 <_single_pass+0x310>
100003618: a9 43 5a b8 	ldur	w9, [x29, #-92]
10000361c: e8 03 09 aa 	mov	x8, x9
100003620: e9 03 00 91 	mov	x9, sp
100003624: 0a 00 00 90 	adrp	x10, 0x100003000 <_single_pass+0x31c>
100003628: 4a f9 3b 91 	add	x10, x10, #3838
10000362c: 2a 01 00 f9 	str	x10, [x9]
100003630: 28 05 00 f9 	str	x8, [x9, #8]
100003634: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x32c>
100003638: 00 f0 35 91 	add	x0, x0, #3452
10000363c: b4 01 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100003640: 01 00 00 14 	b	0x100003644 <_single_pass+0x33c>
100003644: a8 c3 5a b8 	ldur	w8, [x29, #-84]
100003648: e9 4f 40 f9 	ldr	x9, [sp, #152]
10000364c: aa 83 9a b8 	ldursw	x10, [x29, #-88]
100003650: 28 79 2a b8 	str	w8, [x9, x10, lsl #2]
100003654: a8 83 5a b8 	ldur	w8, [x29, #-88]
100003658: 08 05 00 11 	add	w8, w8, #1
10000365c: a8 83 1a b8 	stur	w8, [x29, #-88]
100003660: a1 83 57 f8 	ldur	x1, [x29, #-136]
100003664: a2 83 59 f8 	ldur	x2, [x29, #-104]
100003668: a3 03 59 f8 	ldur	x3, [x29, #-112]
10000366c: a4 c3 5a b8 	ldur	w4, [x29, #-84]
100003670: a5 43 5a b8 	ldur	w5, [x29, #-92]
100003674: a0 c3 00 d1 	sub	x0, x29, #48
100003678: b8 fd ff 97 	bl	0x100002d58 <_handle_symbol>
10000367c: a8 c3 5a b8 	ldur	w8, [x29, #-84]
100003680: 08 05 00 11 	add	w8, w8, #1
100003684: a8 c3 1a b8 	stur	w8, [x29, #-84]
100003688: 01 00 00 14 	b	0x10000368c <_single_pass+0x384>
10000368c: e8 8f 40 b9 	ldr	w8, [sp, #140]
100003690: 08 05 00 11 	add	w8, w8, #1
100003694: e8 8f 00 b9 	str	w8, [sp, #140]
100003698: b9 ff ff 17 	b	0x10000357c <_single_pass+0x274>
10000369c: 10 00 00 14 	b	0x1000036dc <_single_pass+0x3d4>
1000036a0: a9 43 5a b8 	ldur	w9, [x29, #-92]
1000036a4: e8 03 09 aa 	mov	x8, x9
1000036a8: a9 c3 5a b8 	ldur	w9, [x29, #-84]
1000036ac: 4b 00 80 52 	mov	w11, #2
1000036b0: 2a 0d cb 1a 	sdiv	w10, w9, w11
1000036b4: 4a 7d 0b 1b 	mul	w10, w10, w11
1000036b8: 2a 01 0a 6b 	subs	w10, w9, w10
1000036bc: e9 03 00 91 	mov	x9, sp
1000036c0: 28 01 00 f9 	str	x8, [x9]
1000036c4: e8 03 0a aa 	mov	x8, x10
1000036c8: 28 05 00 f9 	str	x8, [x9, #8]
1000036cc: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x3c4>
1000036d0: 00 78 3c 91 	add	x0, x0, #3870
1000036d4: 8e 01 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
1000036d8: 01 00 00 14 	b	0x1000036dc <_single_pass+0x3d4>
1000036dc: a0 03 58 f8 	ldur	x0, [x29, #-128]
1000036e0: 6d 01 00 94 	bl	0x100003c94 <_tolower+0x100003c94>
1000036e4: 08 28 00 71 	subs	w8, w0, #10
1000036e8: e8 17 9f 1a 	cset	w8, eq
1000036ec: a8 01 00 37 	tbnz	w8, #0, 0x100003720 <_single_pass+0x418>
1000036f0: 01 00 00 14 	b	0x1000036f4 <_single_pass+0x3ec>
1000036f4: a9 43 5a b8 	ldur	w9, [x29, #-92]
1000036f8: e8 03 09 aa 	mov	x8, x9
1000036fc: e9 03 00 91 	mov	x9, sp
100003700: 0a 00 00 90 	adrp	x10, 0x100003000 <_single_pass+0x3f8>
100003704: 4a c5 3a 91 	add	x10, x10, #3761
100003708: 2a 01 00 f9 	str	x10, [x9]
10000370c: 28 05 00 f9 	str	x8, [x9, #8]
100003710: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x408>
100003714: 00 f0 35 91 	add	x0, x0, #3452
100003718: 7d 01 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
10000371c: 01 00 00 14 	b	0x100003720 <_single_pass+0x418>
100003720: bf 03 1d f8 	stur	xzr, [x29, #-48]
100003724: bf 83 1d f8 	stur	xzr, [x29, #-40]
100003728: bf 03 1e b8 	stur	wzr, [x29, #-32]
10000372c: a8 43 5a b8 	ldur	w8, [x29, #-92]
100003730: 08 05 00 11 	add	w8, w8, #1
100003734: a8 43 1a b8 	stur	w8, [x29, #-92]
100003738: 49 ff ff 17 	b	0x10000345c <_single_pass+0x154>
10000373c: 01 00 00 14 	b	0x100003740 <_single_pass+0x438>
100003740: a0 03 58 f8 	ldur	x0, [x29, #-128]
100003744: e9 03 00 91 	mov	x9, sp
100003748: a8 c3 00 d1 	sub	x8, x29, #48
10000374c: 28 01 00 f9 	str	x8, [x9]
100003750: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x448>
100003754: 21 e0 37 91 	add	x1, x1, #3576
100003758: 5e 01 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
10000375c: 08 04 00 31 	adds	w8, w0, #1
100003760: e8 17 9f 1a 	cset	w8, eq
100003764: 68 09 00 37 	tbnz	w8, #0, 0x100003890 <_single_pass+0x588>
100003768: 01 00 00 14 	b	0x10000376c <_single_pass+0x464>
10000376c: a0 c3 00 d1 	sub	x0, x29, #48
100003770: af fc ff 97 	bl	0x100002a2c <_check_label>
100003774: 08 04 00 71 	subs	w8, w0, #1
100003778: e8 07 9f 1a 	cset	w8, ne
10000377c: c8 01 00 37 	tbnz	w8, #0, 0x1000037b4 <_single_pass+0x4ac>
100003780: 01 00 00 14 	b	0x100003784 <_single_pass+0x47c>
100003784: a1 83 57 f8 	ldur	x1, [x29, #-136]
100003788: a2 83 59 f8 	ldur	x2, [x29, #-104]
10000378c: a3 03 59 f8 	ldur	x3, [x29, #-112]
100003790: a4 83 58 f8 	ldur	x4, [x29, #-120]
100003794: a5 c3 5a b8 	ldur	w5, [x29, #-84]
100003798: a6 43 5a b8 	ldur	w6, [x29, #-92]
10000379c: a0 c3 00 d1 	sub	x0, x29, #48
1000037a0: c8 fd ff 97 	bl	0x100002ec0 <_define_symbol>
1000037a4: bf 03 1d f8 	stur	xzr, [x29, #-48]
1000037a8: bf 83 1d f8 	stur	xzr, [x29, #-40]
1000037ac: bf 03 1e b8 	stur	wzr, [x29, #-32]
1000037b0: e4 ff ff 17 	b	0x100003740 <_single_pass+0x438>
1000037b4: a0 c3 00 d1 	sub	x0, x29, #48
1000037b8: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x4b0>
1000037bc: 21 70 3d 91 	add	x1, x1, #3932
1000037c0: 59 01 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
1000037c4: 08 00 00 71 	subs	w8, w0, #0
1000037c8: e8 07 9f 1a 	cset	w8, ne
1000037cc: e8 02 00 37 	tbnz	w8, #0, 0x100003828 <_single_pass+0x520>
1000037d0: 01 00 00 14 	b	0x1000037d4 <_single_pass+0x4cc>
1000037d4: a8 c3 00 d1 	sub	x8, x29, #48
1000037d8: e8 23 00 f9 	str	x8, [sp, #64]
1000037dc: bf 03 1d f8 	stur	xzr, [x29, #-48]
1000037e0: bf 83 1d f8 	stur	xzr, [x29, #-40]
1000037e4: bf 03 1e b8 	stur	wzr, [x29, #-32]
1000037e8: a0 03 58 f8 	ldur	x0, [x29, #-128]
1000037ec: e9 03 00 91 	mov	x9, sp
1000037f0: 28 01 00 f9 	str	x8, [x9]
1000037f4: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x4ec>
1000037f8: 21 e0 37 91 	add	x1, x1, #3576
1000037fc: 35 01 00 94 	bl	0x100003cd0 <_tolower+0x100003cd0>
100003800: e0 23 40 f9 	ldr	x0, [sp, #64]
100003804: a1 43 5a b8 	ldur	w1, [x29, #-92]
100003808: de fc ff 97 	bl	0x100002b80 <_convert_string_to_int>
10000380c: a8 83 57 f8 	ldur	x8, [x29, #-136]
100003810: a9 c3 9a b8 	ldursw	x9, [x29, #-84]
100003814: 00 79 29 b8 	str	w0, [x8, x9, lsl #2]
100003818: a8 c3 5a b8 	ldur	w8, [x29, #-84]
10000381c: 08 05 00 11 	add	w8, w8, #1
100003820: a8 c3 1a b8 	stur	w8, [x29, #-84]
100003824: 16 00 00 14 	b	0x10000387c <_single_pass+0x574>
100003828: a0 c3 00 d1 	sub	x0, x29, #48
10000382c: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x524>
100003830: 21 88 3d 91 	add	x1, x1, #3938
100003834: 3c 01 00 94 	bl	0x100003d24 <_tolower+0x100003d24>
100003838: 08 00 00 71 	subs	w8, w0, #0
10000383c: e8 07 9f 1a 	cset	w8, ne
100003840: 48 01 00 37 	tbnz	w8, #0, 0x100003868 <_single_pass+0x560>
100003844: 01 00 00 14 	b	0x100003848 <_single_pass+0x540>
100003848: a9 83 57 f8 	ldur	x9, [x29, #-136]
10000384c: aa c3 9a b8 	ldursw	x10, [x29, #-84]
100003850: 08 00 80 52 	mov	w8, #0
100003854: 28 79 2a b8 	str	w8, [x9, x10, lsl #2]
100003858: a8 c3 5a b8 	ldur	w8, [x29, #-84]
10000385c: 08 05 00 11 	add	w8, w8, #1
100003860: a8 c3 1a b8 	stur	w8, [x29, #-84]
100003864: 05 00 00 14 	b	0x100003878 <_single_pass+0x570>
100003868: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x560>
10000386c: 00 a0 3d 91 	add	x0, x0, #3944
100003870: 27 01 00 94 	bl	0x100003d0c <_tolower+0x100003d0c>
100003874: 01 00 00 14 	b	0x100003878 <_single_pass+0x570>
100003878: 01 00 00 14 	b	0x10000387c <_single_pass+0x574>
10000387c: 01 00 00 14 	b	0x100003880 <_single_pass+0x578>
100003880: bf 03 1d f8 	stur	xzr, [x29, #-48]
100003884: bf 83 1d f8 	stur	xzr, [x29, #-40]
100003888: bf 03 1e b8 	stur	wzr, [x29, #-32]
10000388c: ad ff ff 17 	b	0x100003740 <_single_pass+0x438>
100003890: a0 03 58 f8 	ldur	x0, [x29, #-128]
100003894: fd 00 00 94 	bl	0x100003c88 <_tolower+0x100003c88>
100003898: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x590>
10000389c: 00 bc 3d 91 	add	x0, x0, #3951
1000038a0: 01 00 00 90 	adrp	x1, 0x100003000 <_single_pass+0x598>
1000038a4: 21 dc 3d 91 	add	x1, x1, #3959
1000038a8: fe 00 00 94 	bl	0x100003ca0 <_tolower+0x100003ca0>
1000038ac: a0 03 18 f8 	stur	x0, [x29, #-128]
1000038b0: a1 03 58 f8 	ldur	x1, [x29, #-128]
1000038b4: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x5ac>
1000038b8: 00 e4 3d 91 	add	x0, x0, #3961
1000038bc: ff 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
1000038c0: a1 03 58 f8 	ldur	x1, [x29, #-128]
1000038c4: 40 01 80 52 	mov	w0, #10
1000038c8: f9 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
1000038cc: ff 87 00 b9 	str	wzr, [sp, #132]
1000038d0: 01 00 00 14 	b	0x1000038d4 <_single_pass+0x5cc>
1000038d4: e8 87 40 b9 	ldr	w8, [sp, #132]
1000038d8: a9 83 58 f8 	ldur	x9, [x29, #-120]
1000038dc: 29 11 40 b9 	ldr	w9, [x9, #16]
1000038e0: 08 01 09 6b 	subs	w8, w8, w9
1000038e4: e8 b7 9f 1a 	cset	w8, ge
1000038e8: e8 04 00 37 	tbnz	w8, #0, 0x100003984 <_single_pass+0x67c>
1000038ec: 01 00 00 14 	b	0x1000038f0 <_single_pass+0x5e8>
1000038f0: a8 83 58 f8 	ldur	x8, [x29, #-120]
1000038f4: 08 05 40 f9 	ldr	x8, [x8, #8]
1000038f8: e9 87 80 b9 	ldrsw	x9, [sp, #132]
1000038fc: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
100003900: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003904: ed 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
100003908: a1 03 58 f8 	ldur	x1, [x29, #-128]
10000390c: 00 04 80 52 	mov	w0, #32
100003910: e7 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
100003914: a0 83 58 f8 	ldur	x0, [x29, #-120]
100003918: a8 83 58 f8 	ldur	x8, [x29, #-120]
10000391c: 08 05 40 f9 	ldr	x8, [x8, #8]
100003920: e9 87 80 b9 	ldrsw	x9, [sp, #132]
100003924: 01 79 69 f8 	ldr	x1, [x8, x9, lsl #3]
100003928: 19 fc ff 97 	bl	0x10000298c <_definition_table_get>
10000392c: 09 08 40 b9 	ldr	w9, [x0, #8]
100003930: e8 03 09 aa 	mov	x8, x9
100003934: e9 03 00 91 	mov	x9, sp
100003938: 28 01 00 f9 	str	x8, [x9]
10000393c: a0 03 01 d1 	sub	x0, x29, #64
100003940: e0 1f 00 f9 	str	x0, [sp, #56]
100003944: 01 00 80 52 	mov	w1, #0
100003948: 02 02 80 d2 	mov	x2, #16
10000394c: 03 00 00 90 	adrp	x3, 0x100003000 <_single_pass+0x644>
100003950: 63 f4 3d 91 	add	x3, x3, #3965
100003954: c1 00 00 94 	bl	0x100003c58 <_tolower+0x100003c58>
100003958: e0 1f 40 f9 	ldr	x0, [sp, #56]
10000395c: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003960: d6 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
100003964: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003968: 40 01 80 52 	mov	w0, #10
10000396c: d0 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
100003970: 01 00 00 14 	b	0x100003974 <_single_pass+0x66c>
100003974: e8 87 40 b9 	ldr	w8, [sp, #132]
100003978: 08 05 00 11 	add	w8, w8, #1
10000397c: e8 87 00 b9 	str	w8, [sp, #132]
100003980: d5 ff ff 17 	b	0x1000038d4 <_single_pass+0x5cc>
100003984: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003988: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x680>
10000398c: 00 00 3e 91 	add	x0, x0, #3968
100003990: ca 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
100003994: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003998: 40 01 80 52 	mov	w0, #10
10000399c: c4 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
1000039a0: ff 83 00 b9 	str	wzr, [sp, #128]
1000039a4: 01 00 00 14 	b	0x1000039a8 <_single_pass+0x6a0>
1000039a8: e8 83 40 b9 	ldr	w8, [sp, #128]
1000039ac: a9 03 59 f8 	ldur	x9, [x29, #-112]
1000039b0: 29 11 40 b9 	ldr	w9, [x9, #16]
1000039b4: 08 01 09 6b 	subs	w8, w8, w9
1000039b8: e8 b7 9f 1a 	cset	w8, ge
1000039bc: e8 04 00 37 	tbnz	w8, #0, 0x100003a58 <_single_pass+0x750>
1000039c0: 01 00 00 14 	b	0x1000039c4 <_single_pass+0x6bc>
1000039c4: a8 03 59 f8 	ldur	x8, [x29, #-112]
1000039c8: 08 05 40 f9 	ldr	x8, [x8, #8]
1000039cc: e9 83 80 b9 	ldrsw	x9, [sp, #128]
1000039d0: 00 79 69 f8 	ldr	x0, [x8, x9, lsl #3]
1000039d4: a1 03 58 f8 	ldur	x1, [x29, #-128]
1000039d8: b8 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
1000039dc: a1 03 58 f8 	ldur	x1, [x29, #-128]
1000039e0: 00 04 80 52 	mov	w0, #32
1000039e4: b2 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
1000039e8: a0 03 59 f8 	ldur	x0, [x29, #-112]
1000039ec: a8 03 59 f8 	ldur	x8, [x29, #-112]
1000039f0: 08 05 40 f9 	ldr	x8, [x8, #8]
1000039f4: e9 83 80 b9 	ldrsw	x9, [sp, #128]
1000039f8: 01 79 69 f8 	ldr	x1, [x8, x9, lsl #3]
1000039fc: 54 fb ff 97 	bl	0x10000274c <_symbol_table_get>
100003a00: 09 08 40 b9 	ldr	w9, [x0, #8]
100003a04: e8 03 09 aa 	mov	x8, x9
100003a08: e9 03 00 91 	mov	x9, sp
100003a0c: 28 01 00 f9 	str	x8, [x9]
100003a10: a0 03 01 d1 	sub	x0, x29, #64
100003a14: e0 1b 00 f9 	str	x0, [sp, #48]
100003a18: 01 00 80 52 	mov	w1, #0
100003a1c: 02 02 80 d2 	mov	x2, #16
100003a20: 03 00 00 90 	adrp	x3, 0x100003000 <_single_pass+0x718>
100003a24: 63 f4 3d 91 	add	x3, x3, #3965
100003a28: 8c 00 00 94 	bl	0x100003c58 <_tolower+0x100003c58>
100003a2c: e0 1b 40 f9 	ldr	x0, [sp, #48]
100003a30: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003a34: a1 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
100003a38: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003a3c: 40 01 80 52 	mov	w0, #10
100003a40: 9b 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
100003a44: 01 00 00 14 	b	0x100003a48 <_single_pass+0x740>
100003a48: e8 83 40 b9 	ldr	w8, [sp, #128]
100003a4c: 08 05 00 11 	add	w8, w8, #1
100003a50: e8 83 00 b9 	str	w8, [sp, #128]
100003a54: d5 ff ff 17 	b	0x1000039a8 <_single_pass+0x6a0>
100003a58: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003a5c: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x754>
100003a60: 00 20 3e 91 	add	x0, x0, #3976
100003a64: 95 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
100003a68: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003a6c: 40 01 80 52 	mov	w0, #10
100003a70: aa 00 00 94 	bl	0x100003d18 <_tolower+0x100003d18>
100003a74: ff 7f 00 b9 	str	wzr, [sp, #124]
100003a78: 01 00 00 14 	b	0x100003a7c <_single_pass+0x774>
100003a7c: e8 7f 40 b9 	ldr	w8, [sp, #124]
100003a80: a9 83 5a b8 	ldur	w9, [x29, #-88]
100003a84: 08 01 09 6b 	subs	w8, w8, w9
100003a88: e8 b7 9f 1a 	cset	w8, ge
100003a8c: 48 03 00 37 	tbnz	w8, #0, 0x100003af4 <_single_pass+0x7ec>
100003a90: 01 00 00 14 	b	0x100003a94 <_single_pass+0x78c>
100003a94: e8 4f 40 f9 	ldr	x8, [sp, #152]
100003a98: e9 7f 80 b9 	ldrsw	x9, [sp, #124]
100003a9c: 09 79 69 b8 	ldr	w9, [x8, x9, lsl #2]
100003aa0: e8 03 09 aa 	mov	x8, x9
100003aa4: e9 03 00 91 	mov	x9, sp
100003aa8: 28 01 00 f9 	str	x8, [x9]
100003aac: a0 03 01 d1 	sub	x0, x29, #64
100003ab0: e0 17 00 f9 	str	x0, [sp, #40]
100003ab4: 01 00 80 52 	mov	w1, #0
100003ab8: 02 02 80 d2 	mov	x2, #16
100003abc: 03 00 00 90 	adrp	x3, 0x100003000 <_single_pass+0x7b4>
100003ac0: 63 f4 3d 91 	add	x3, x3, #3965
100003ac4: 65 00 00 94 	bl	0x100003c58 <_tolower+0x100003c58>
100003ac8: e0 17 40 f9 	ldr	x0, [sp, #40]
100003acc: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003ad0: 7a 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
100003ad4: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003ad8: 00 04 80 52 	mov	w0, #32
100003adc: 74 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
100003ae0: 01 00 00 14 	b	0x100003ae4 <_single_pass+0x7dc>
100003ae4: e8 7f 40 b9 	ldr	w8, [sp, #124]
100003ae8: 08 05 00 11 	add	w8, w8, #1
100003aec: e8 7f 00 b9 	str	w8, [sp, #124]
100003af0: e3 ff ff 17 	b	0x100003a7c <_single_pass+0x774>
100003af4: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003af8: 40 01 80 52 	mov	w0, #10
100003afc: e0 27 00 b9 	str	w0, [sp, #36]
100003b00: 6b 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
100003b04: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003b08: 00 00 00 90 	adrp	x0, 0x100003000 <_single_pass+0x800>
100003b0c: 00 48 3e 91 	add	x0, x0, #3986
100003b10: 6a 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
100003b14: e0 27 40 b9 	ldr	w0, [sp, #36]
100003b18: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003b1c: 64 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
100003b20: ff 7b 00 b9 	str	wzr, [sp, #120]
100003b24: 01 00 00 14 	b	0x100003b28 <_single_pass+0x820>
100003b28: e8 7b 40 b9 	ldr	w8, [sp, #120]
100003b2c: a9 c3 5a b8 	ldur	w9, [x29, #-84]
100003b30: 08 01 09 6b 	subs	w8, w8, w9
100003b34: e8 b7 9f 1a 	cset	w8, ge
100003b38: 48 03 00 37 	tbnz	w8, #0, 0x100003ba0 <_single_pass+0x898>
100003b3c: 01 00 00 14 	b	0x100003b40 <_single_pass+0x838>
100003b40: a8 83 57 f8 	ldur	x8, [x29, #-136]
100003b44: e9 7b 80 b9 	ldrsw	x9, [sp, #120]
100003b48: 09 79 69 b8 	ldr	w9, [x8, x9, lsl #2]
100003b4c: e8 03 09 aa 	mov	x8, x9
100003b50: e9 03 00 91 	mov	x9, sp
100003b54: 28 01 00 f9 	str	x8, [x9]
100003b58: a0 03 01 d1 	sub	x0, x29, #64
100003b5c: e0 0f 00 f9 	str	x0, [sp, #24]
100003b60: 01 00 80 52 	mov	w1, #0
100003b64: 02 02 80 d2 	mov	x2, #16
100003b68: 03 00 00 90 	adrp	x3, 0x100003000 <_single_pass+0x860>
100003b6c: 63 f4 3d 91 	add	x3, x3, #3965
100003b70: 3a 00 00 94 	bl	0x100003c58 <_tolower+0x100003c58>
100003b74: e0 0f 40 f9 	ldr	x0, [sp, #24]
100003b78: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003b7c: 4f 00 00 94 	bl	0x100003cb8 <_tolower+0x100003cb8>
100003b80: a1 03 58 f8 	ldur	x1, [x29, #-128]
100003b84: 00 04 80 52 	mov	w0, #32
100003b88: 49 00 00 94 	bl	0x100003cac <_tolower+0x100003cac>
100003b8c: 01 00 00 14 	b	0x100003b90 <_single_pass+0x888>
100003b90: e8 7b 40 b9 	ldr	w8, [sp, #120]
100003b94: 08 05 00 11 	add	w8, w8, #1
100003b98: e8 7b 00 b9 	str	w8, [sp, #120]
100003b9c: e3 ff ff 17 	b	0x100003b28 <_single_pass+0x820>
100003ba0: a0 83 57 f8 	ldur	x0, [x29, #-136]
100003ba4: 48 00 00 94 	bl	0x100003cc4 <_tolower+0x100003cc4>
100003ba8: a0 03 58 f8 	ldur	x0, [x29, #-128]
100003bac: 37 00 00 94 	bl	0x100003c88 <_tolower+0x100003c88>
100003bb0: a9 83 5e f8 	ldur	x9, [x29, #-24]
100003bb4: 08 00 00 b0 	adrp	x8, 0x100004000 <_single_pass+0x8b0>
100003bb8: 08 09 40 f9 	ldr	x8, [x8, #16]
100003bbc: 08 01 40 f9 	ldr	x8, [x8]
100003bc0: 08 01 09 eb 	subs	x8, x8, x9
100003bc4: e8 17 9f 1a 	cset	w8, eq
100003bc8: 68 00 00 37 	tbnz	w8, #0, 0x100003bd4 <_single_pass+0x8cc>
100003bcc: 01 00 00 14 	b	0x100003bd0 <_single_pass+0x8c8>
100003bd0: 25 00 00 94 	bl	0x100003c64 <_tolower+0x100003c64>
100003bd4: fd 7b 53 a9 	ldp	x29, x30, [sp, #304]
100003bd8: fc 6f 52 a9 	ldp	x28, x27, [sp, #288]
100003bdc: ff 03 05 91 	add	sp, sp, #320
100003be0: c0 03 5f d6 	ret

0000000100003be4 <_main>:
100003be4: ff c3 00 d1 	sub	sp, sp, #48
100003be8: fd 7b 02 a9 	stp	x29, x30, [sp, #32]
100003bec: fd 83 00 91 	add	x29, sp, #32
100003bf0: 08 00 00 b0 	adrp	x8, 0x100004000 <_main+0x10>
100003bf4: 08 09 40 f9 	ldr	x8, [x8, #16]
100003bf8: 08 01 40 f9 	ldr	x8, [x8]
100003bfc: a8 83 1f f8 	stur	x8, [x29, #-8]
100003c00: ff 0f 00 b9 	str	wzr, [sp, #12]
100003c04: e0 0b 00 b9 	str	w0, [sp, #8]
100003c08: e1 03 00 f9 	str	x1, [sp]
100003c0c: 08 00 00 b0 	adrp	x8, 0x100004000 <_main+0x2c>
100003c10: 08 5d 40 f9 	ldr	x8, [x8, #184]
100003c14: e1 43 00 91 	add	x1, sp, #16
100003c18: e8 0b 00 f9 	str	x8, [sp, #16]
100003c1c: e0 0b 40 b9 	ldr	w0, [sp, #8]
100003c20: ba fd ff 97 	bl	0x100003308 <_single_pass>
100003c24: a9 83 5f f8 	ldur	x9, [x29, #-8]
100003c28: 08 00 00 b0 	adrp	x8, 0x100004000 <_main+0x48>
100003c2c: 08 09 40 f9 	ldr	x8, [x8, #16]
100003c30: 08 01 40 f9 	ldr	x8, [x8]
100003c34: 08 01 09 eb 	subs	x8, x8, x9
100003c38: e8 17 9f 1a 	cset	w8, eq
100003c3c: 68 00 00 37 	tbnz	w8, #0, 0x100003c48 <_main+0x64>
100003c40: 01 00 00 14 	b	0x100003c44 <_main+0x60>
100003c44: 08 00 00 94 	bl	0x100003c64 <_tolower+0x100003c64>
100003c48: 00 00 80 52 	mov	w0, #0
100003c4c: fd 7b 42 a9 	ldp	x29, x30, [sp, #32]
100003c50: ff c3 00 91 	add	sp, sp, #48
100003c54: c0 03 5f d6 	ret

Disassembly of section __TEXT,__stubs:

0000000100003c58 <__stubs>:
100003c58: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4>
100003c5c: 10 02 40 f9 	ldr	x16, [x16]
100003c60: 00 02 1f d6 	br	x16
100003c64: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x10>
100003c68: 10 06 40 f9 	ldr	x16, [x16, #8]
100003c6c: 00 02 1f d6 	br	x16
100003c70: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x1c>
100003c74: 10 0e 40 f9 	ldr	x16, [x16, #24]
100003c78: 00 02 1f d6 	br	x16
100003c7c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x28>
100003c80: 10 12 40 f9 	ldr	x16, [x16, #32]
100003c84: 00 02 1f d6 	br	x16
100003c88: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x34>
100003c8c: 10 16 40 f9 	ldr	x16, [x16, #40]
100003c90: 00 02 1f d6 	br	x16
100003c94: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x40>
100003c98: 10 1a 40 f9 	ldr	x16, [x16, #48]
100003c9c: 00 02 1f d6 	br	x16
100003ca0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x4c>
100003ca4: 10 1e 40 f9 	ldr	x16, [x16, #56]
100003ca8: 00 02 1f d6 	br	x16
100003cac: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x58>
100003cb0: 10 22 40 f9 	ldr	x16, [x16, #64]
100003cb4: 00 02 1f d6 	br	x16
100003cb8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x64>
100003cbc: 10 26 40 f9 	ldr	x16, [x16, #72]
100003cc0: 00 02 1f d6 	br	x16
100003cc4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x70>
100003cc8: 10 2a 40 f9 	ldr	x16, [x16, #80]
100003ccc: 00 02 1f d6 	br	x16
100003cd0: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x7c>
100003cd4: 10 2e 40 f9 	ldr	x16, [x16, #88]
100003cd8: 00 02 1f d6 	br	x16
100003cdc: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x88>
100003ce0: 10 32 40 f9 	ldr	x16, [x16, #96]
100003ce4: 00 02 1f d6 	br	x16
100003ce8: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x94>
100003cec: 10 36 40 f9 	ldr	x16, [x16, #104]
100003cf0: 00 02 1f d6 	br	x16
100003cf4: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xa0>
100003cf8: 10 3a 40 f9 	ldr	x16, [x16, #112]
100003cfc: 00 02 1f d6 	br	x16
100003d00: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xac>
100003d04: 10 3e 40 f9 	ldr	x16, [x16, #120]
100003d08: 00 02 1f d6 	br	x16
100003d0c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xb8>
100003d10: 10 42 40 f9 	ldr	x16, [x16, #128]
100003d14: 00 02 1f d6 	br	x16
100003d18: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xc4>
100003d1c: 10 46 40 f9 	ldr	x16, [x16, #136]
100003d20: 00 02 1f d6 	br	x16
100003d24: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xd0>
100003d28: 10 4a 40 f9 	ldr	x16, [x16, #144]
100003d2c: 00 02 1f d6 	br	x16
100003d30: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xdc>
100003d34: 10 4e 40 f9 	ldr	x16, [x16, #152]
100003d38: 00 02 1f d6 	br	x16
100003d3c: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xe8>
100003d40: 10 52 40 f9 	ldr	x16, [x16, #160]
100003d44: 00 02 1f d6 	br	x16
100003d48: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0xf4>
100003d4c: 10 56 40 f9 	ldr	x16, [x16, #168]
100003d50: 00 02 1f d6 	br	x16
100003d54: 10 00 00 b0 	adrp	x16, 0x100004000 <__stubs+0x100>
100003d58: 10 5a 40 f9 	ldr	x16, [x16, #176]
100003d5c: 00 02 1f d6 	br	x16
