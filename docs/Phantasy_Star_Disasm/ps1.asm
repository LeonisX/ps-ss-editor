; Source code created by SMS Examine V1.2a
; Size: 524288 bytes

.MEMORYMAP
SLOTSIZE $4000
SLOT 0 $0000
SLOT 1 $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME

.ROMBANKMAP
BANKSTOTAL 32
BANKSIZE $4000
BANKS 32
.ENDRO

.EMPTYFILL $FF

.BANK 0 SLOT 0
.ORG $0000

_START:
	di
	im   1
	ld   sp, $CB00
	jr   MainSetup

_RST_08H:
	ld   a, e
	out  ($BF), a
	ld   a, d
	out  ($BF), a
	ret

.db $FF

_RST_10H:
.db	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

_RST_18H:
.db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

_RST_20H:
.db	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

_RST_28H:
.db	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

_RST_30H:
.db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; Vertical Interrupt
_RST_38H:
_IRQ_HANDLER:
	push af
	in   a, ($BF)
	jp   VBlank


LABEL_3E:
	ld	a, ($C201)
	and	$BF
	jr	+

LABEL_45:
	ld	a, ($C201)
	or	$40
+
	ld	($C201), a
	ld	e, a
	ld	d, $81
	rst	$08
	ret

_LABEL_52_31:
	ld   ($C208), a
-
	ld   a, ($C208)
	or   a
	jr   nz, -
	ret


; Data from 5C to 65 (10 bytes)
.db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; We get here after the pause button is pressed
_NMI_HANDLER:
	push af
	ld   a, ($C202)
	cp   $05
	jr   z, _LABEL_7A_333
	cp   $09
	jr   z, _LABEL_7A_333
	cp   $0B
	jr   z, _LABEL_7A_333
	cp   $0D
	jr   nz, _LABEL_81_334
_LABEL_7A_333:
	ld   a, ($C212)
	cpl
	ld   ($C212), a
_LABEL_81_334:
	pop  af
	retn

MainSetup:
	di
	ld   sp, $CB00
	ld   hl, $FFFC
	ld   (hl), $80	; Enable ROM write
	inc  hl
	ld   (hl), $00	; Page 0 - ROM bank 0
	inc  hl
	ld   (hl), $01	; Page 1 - ROM bank 1
	inc  hl
	ld   (hl), $02	; Page 2 - ROM bank 2

; Clear work RAM
	ld   hl, $C000
	ld   de, $C001
	ld   bc, $1FFF
	ld   (hl), l	; clear byte in $C000
	ldir			; then do the rest (until bc = 0)

	call _LABEL_2ED_3
	call _LABEL_3A4_320
	call _LABEL_318_321
	call _LABEL_7DA_325
	ei

MainGameLoop:
	ld   hl, $C202
	ld   a, (hl)
	and  $1F
	ld   hl, LABEL_BE
	call _LABEL_E6_122
	jp   MainGameLoop


LABEL_BE:
.dw	LABEL_5D0
.dw	LABEL_5D0
.dw	LABEL_74D
.dw	LABEL_5D6
.dw	LABEL_A5C
.dw	LABEL_86F
.dw	LABEL_B07
.dw	LABEL_B07
.dw LABEL_B6A
.dw	LABEL_B08
.dw	LABEL_F7D
.dw	LABEL_F3C
.dw	LABEL_3C52
.dw	LABEL_3B9C
.dw	LABEL_ED7
.dw	LABEL_E8B
.dw LABEL_4034
.dw	LABEL_3EB9
.dw	LABEL_467C
.dw	LABEL_467C


_LABEL_E6_122:
	add  a, a
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	jp   (hl)


LABEL_F1:
	call	_LABEL_2F5_13
-
	ld	a, ($C212)
	or	a
	ret	z
	jr	-

VBlank:
	push bc
	push de
	push hl
	push ix
	push iy
	ld   a, ($FFFC)
	push af
	ld   a, ($FFFF)
	push af
	ld   a, $80
	ld   ($FFFC), a
	in   a, ($DD)
	and  $10
	ld   hl, $C20B
	ld   c, (hl)
	ld   (hl), a
	xor  c
	and  c
	jp   nz, MainSetup
	ld   a, ($C20A)
	or   a
	jp   nz, _LABEL_12A_9
	ld   b, $00
_LABEL_126_10:
	djnz _LABEL_126_10
_LABEL_128_11:
	djnz _LABEL_128_11
_LABEL_12A_9:
	ld   a, ($C212)
	or   a
	jp   nz, _LABEL_2DF_12
	ld   a, ($C208)
	and  $1F
	ld   hl, LABEL_18F
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	jp   (hl)


LABEL_143:
	xor	a
	ld	($C208), a
_LABEL_147_174:
	pop  af
	ld   ($FFFF), a
	pop  af
	ld   ($FFFC), a
	pop  iy
	pop  ix
	pop  hl
	pop  de
	pop  bc
	pop  af
	ei
	ret


LABEL_159:
	call	LABEL_45
	jp	LABEL_143

LABEL_15F:
	ld	a, ($C300)
	out ($BF), a
	ld	a, $88
	out	($BF), a
	ld	a, ($C304)
	out	($BF), a
	ld	a, $89
	out	($BF), a
	call	LABEL_588B
	call	LABEL_7B40
	call	LABEL_7BEE
	ld	hl, $C220
	ld	de, $C000
	rst	$08
	ld	c, $BE
	call	LABEL_595E
	call	LABEL_63A5
	call	LABEL_2E5
	jp	LABEL_143

LABEL_18F:
.dw	LABEL_1A7
.dw	LABEL_1A7
.dw	LABEL_1A7
.dw	LABEL_1A7
.dw	LABEL_1AD
.dw LABEL_1D1
.dw LABEL_1EF
.dw LABEL_235
.dw LABEL_25F
.dw LABEL_29F
.dw LABEL_159
.dw LABEL_15F

LABEL_1A7:
	call	LABEL_2E5
	jp	LABEL_143

LABEL_1AD:
	ld	a, ($C300)
	out	($BF), a
	ld	a, $88
	out	($BF), a
	ld	a, ($C304)
	out	($BF), a
	ld	a, $89
	out	($BF), a
	call	LABEL_588B
	call	LABEL_63A5
	call	LABEL_339
	call	LABEL_2E62
	call	LABEL_2E5
	jp	LABEL_143

LABEL_1D1:
	ld	a, ($C300)
	out	($BF), a
	ld	a, $88
	out	($BF), a
	ld	a, ($C304)
	out	($BF), a
	ld	a, $89
	out	($BF), a
	call	LABEL_588B
	call	LABEL_63A5
	call	LABEL_2E5
	jp	LABEL_143

LABEL_1EF:
	ld	a, ($C300)
	out	($BF), a
	ld	a, $88
	out	($BF), a
	ld	a, ($C304)
	out	($BF), a
	ld	a, $89
	out	($BF), a
	ld	hl, $D000
	xor a
	out	($BF), a
	ld	a, $78
	out	($BF), a
	ld	c, $BE
	call	LABEL_589E
	call	LABEL_589E
	call	LABEL_589E
	call	LABEL_589E
	call	LABEL_589E
	call	LABEL_589E
	call	LABEL_589E
	ld	a, $03
	ld	b, $80
LABEL_226:
	outi
	jp	nz, LABEL_226
	dec	a
	jp	nz, LABEL_226
	call	LABEL_2E5
	jp	LABEL_143

LABEL_235:
	ld	a, ($C300)
	out	($BF), a
	ld	a, $88
	out	($BF), a
	ld	a, ($C304)
	out	($BF), a
	ld	a, $89
	out	($BF), a
	call	LABEL_588B
	call	LABEL_7C18
	call	LABEL_61F5
	call	LABEL_73D0
	call	LABEL_62BC
	call	LABEL_339
	call	LABEL_2E5
	jp	LABEL_143

LABEL_25F:
	ld	a, ($C300)
	out	($BF), a
	ld	a, $88
	out	($BF), a
	ld	a, ($C304)
	out	($BF), a
	ld	a, $89
	out	($BF), a
	call	LABEL_588B
	ld	hl, $C220
	ld	de, $C000
	rst	$08
	ld	c, $BE
	call	LABEL_595E
	ld	hl, $D000
	xor	a
	out	($BF), a
	ld	a, $78
	out	($BF), a
	ld	c, $BE
	ld	a, $06
	ld	b, 0
LABEL_290:
	outi
	jp	nz, LABEL_290
	dec	a
	jp	nz, LABEL_290
	call	LABEL_2E5
	jp	LABEL_143

LABEL_29F:
	ld	a, ($C300)
	out	($BF), a
	ld	a, $88
	out	($BF), a
	ld	a, ($C304)
	out	($BF), a
	ld	a, $89
	out	($BF), a
	call	LABEL_588B
	ld	hl, $C220
	ld	de, $C000
	rst	$08
	ld	c, $BE
	call	LABEL_595E
	ld	hl, $D000
	xor	a
	out	($BF), a
	ld	a, $78
	out	($BF), a
	ld	c, $BE
	ld	a, $07
	ld	b, 0
LABEL_2D0:
	outi
	jp	nz, LABEL_2D0
	dec	a
	jp	nz, LABEL_2D0
	call	LABEL_2E5
	jp	LABEL_143

_LABEL_2DF_12:
	call _LABEL_2F5_13
	jp   _LABEL_147_174


LABEL_2E5:
	ld	hl, $FFFF
	ld	(hl), :Bank12
	jp	LABEL_B12_8043

_LABEL_2ED_3:
	ld   hl, $FFFF
	ld   (hl), :Bank12
	jp   LABEL_B12_8000

_LABEL_2F5_13:
	ld   hl, $FFFF
	ld   (hl), :Bank12
	jp   LABEL_B12_801F


LABEL_2FD:
	ld	hl, $C900
	ld	de, $C901
	ld	bc, $40
	ld	(hl), $E0
	ldir
	ld	c, $BF
	ld	(hl), 0
	ldir
	ld	a, $14
	call	_LABEL_52_31
	jp	_LABEL_7B20_303

_LABEL_318_321:
	ld   hl, $0000
_LABEL_31B_322:
	in   a, ($BF)
	or   a
	jp   p, _LABEL_31B_322
_LABEL_321_323:
	in   a, ($BF)
	or   a
	jp   p, _LABEL_321_323
_LABEL_327_324:
	inc  hl
	in   a, ($BF)
	or   a
	jp   p, _LABEL_327_324
	xor  a
	ld   de, $0800
	sbc  hl, de
	sbc  a, a
	ld   ($C20A), a
	ret


LABEL_339:
	in	a, ($DC)
	ld	hl, $C204
	cpl
	ld	b, a
	xor	(hl)
	ld	(hl), b
	inc	hl
	and	b
	ld	(hl), a
	ret

_LABEL_346_209:
	rst  $08
	ld   a, c
	or   a
	jr   z, _LABEL_34C_210
	inc  b
_LABEL_34C_210:
	ld   a, b
	ld   b, c
	ld   c, $BE
_LABEL_350_211:
	outi
	jp   nz, _LABEL_350_211
	dec  a
	jp   nz, _LABEL_350_211
	ret


LABEL_35A:
	ld	de, $7800
	ld	bc, $380
	ld	hl, 0

_LABEL_363_170:
	rst  $08
	ld   a, c
	or   a
	jr   z, _LABEL_369_171
	inc  b
_LABEL_369_171:
	ld   a, l
	out  ($BE), a
	push af
	pop  af
	ld   a, h
	out  ($BE), a
	dec  c
	jr   nz, _LABEL_369_171
	djnz _LABEL_369_171
	ret


; Data from 377 to 38F (25 bytes)
.db $C5, $CF, $41, $0E, $BE, $ED, $A3, $3A, $10, $C2, $00, $ED, $79, $20, $F6, $EB
.db $01, $40, $00, $09, $EB, $C1, $10, $E8, $C9

_LABEL_390_168:
	push bc
	rst  $08
	ld   b, c
	ld   c, $BE
_LABEL_395_169:
	outi
	jp   nz, _LABEL_395_169
	ex   de, hl
	ld   bc, $40
	add  hl, bc
	ex   de, hl
	pop  bc
	djnz _LABEL_390_168
	ret

_LABEL_3A4_320:
	ld   hl, LABEL_3B9
	ld   bc, $14BF
	otir
	ld   a, (LABEL_3B9)
	ld   ($C200), a
	ld   a, (LABEL_3B9+2)
	ld   ($C201), a
	ret


LABEL_3B9:
.db $06, $80, $A0, $81, $FF, $82, $FF, $83, $FF, $84, $FF, $85, $FF, $86, $00, $87
.db $00, $88, $00, $89

LABEL_3CD:
	ld	b, $04
-
	push	bc
	push	de
	call	LABEL_3DA
	pop	de
	inc	de
	pop	bc
	djnz	-
	ret

LABEL_3DA:
	ld	a, (hl)
	inc	hl
	or	a
	ret	z
	ld	c, a
	and	$7F
	ld	b, a
	ld	a, c
	and	$80
-
	rst	$08
	ld	a, (hl)
	out	($BE), a
	jp	z, +
	inc	hl
+
	inc	de
	inc	de
	inc	de
	inc	de
	djnz	-
	jp	nz, LABEL_3DA
	inc	hl
	jp	LABEL_3DA


_LABEL_3FA_163:
	ld   b, $04
_LABEL_3FC_167:
	push bc
	push de
	call _LABEL_407_164
	pop  de
	inc  de
	pop  bc
	djnz _LABEL_3FC_167
	ret

_LABEL_407_164:
	ld   a, (hl)
	inc  hl
	or   a
	ret  z

	ld   c, a
	and  $7F
	ld   b, a
	ld   a, c
	and  $80
_LABEL_412_166:
	di
	rst  $08
	ld   a, (hl)
	out  ($BE), a
	ei
	jp   z, _LABEL_41C_165
	inc  hl
_LABEL_41C_165:
	inc  de
	inc  de
	inc  de
	inc  de
	djnz _LABEL_412_166
	jp   nz, _LABEL_407_164
	inc  hl
	jp   _LABEL_407_164


; Data from 429 to 44B (35 bytes)
.db $16, $00, $6A, $29, $30, $01, $19, $29, $30, $01, $19, $29, $30, $01, $19, $29
.db $30, $01, $19, $29, $30, $01, $19, $29, $30, $01, $19, $29, $30, $01, $19, $29
.db $D0, $19, $C9

_LABEL_44C_245:
	or   a
	ld   hl, $0000
	rl   e
	rl   d
	jr   nc, _LABEL_45A_246
	add  hl, bc
	jr   nc, _LABEL_45A_246
	inc  de
_LABEL_45A_246:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_465_247
	add  hl, bc
	jr   nc, _LABEL_465_247
	inc  de
_LABEL_465_247:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_470_248
	add  hl, bc
	jr   nc, _LABEL_470_248
	inc  de
_LABEL_470_248:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_47B_249
	add  hl, bc
	jr   nc, _LABEL_47B_249
	inc  de
_LABEL_47B_249:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_486_250
	add  hl, bc
	jr   nc, _LABEL_486_250
	inc  de
_LABEL_486_250:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_491_251
	add  hl, bc
	jr   nc, _LABEL_491_251
	inc  de
_LABEL_491_251:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_49C_252
	add  hl, bc
	jr   nc, _LABEL_49C_252
	inc  de
_LABEL_49C_252:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_4A7_253
	add  hl, bc
	jr   nc, _LABEL_4A7_253
	inc  de
_LABEL_4A7_253:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_4B2_254
	add  hl, bc
	jr   nc, _LABEL_4B2_254
	inc  de
_LABEL_4B2_254:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_4BD_255
	add  hl, bc
	jr   nc, _LABEL_4BD_255
	inc  de
_LABEL_4BD_255:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_4C8_256
	add  hl, bc
	jr   nc, _LABEL_4C8_256
	inc  de
_LABEL_4C8_256:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_4D3_257
	add  hl, bc
	jr   nc, _LABEL_4D3_257
	inc  de
_LABEL_4D3_257:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_4DE_258
	add  hl, bc
	jr   nc, _LABEL_4DE_258
	inc  de
_LABEL_4DE_258:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_4E9_259
	add  hl, bc
	jr   nc, _LABEL_4E9_259
	inc  de
_LABEL_4E9_259:
	add  hl, hl
	rl   e
	rl   d
	jr   nc, _LABEL_4F4_260
	add  hl, bc
	jr   nc, _LABEL_4F4_260
	inc  de
_LABEL_4F4_260:
	add  hl, hl
	rl   e
	rl   d
	ret  nc

	add  hl, bc
	ret  nc

	inc  de
	ret


; Data from 4FE to 5B0 (179 bytes)
.db $AF, $29, $8F, $38, $03, $BB, $38, $02, $93, $B7, $3F, $ED, $6A, $8F, $38, $03
.db $BB, $38, $02, $93, $B7, $3F, $ED, $6A, $8F, $38, $03, $BB, $38, $02, $93, $B7
.db $3F, $ED, $6A, $8F, $38, $03, $BB, $38, $02, $93, $B7, $3F, $ED, $6A, $8F, $38
.db $03, $BB, $38, $02, $93, $B7, $3F, $ED, $6A, $8F, $38, $03, $BB, $38, $02, $93
.db $B7, $3F, $ED, $6A, $8F, $38, $03, $BB, $38, $02, $93, $B7, $3F, $ED, $6A, $8F
.db $38, $03, $BB, $38, $02, $93, $B7, $3F, $ED, $6A, $8F, $38, $03, $BB, $38, $02
.db $93, $B7, $3F, $ED, $6A, $8F, $38, $03, $BB, $38, $02, $93, $B7, $3F, $ED, $6A
.db $8F, $38, $03, $BB, $38, $02, $93, $B7, $3F, $ED, $6A, $8F, $38, $03, $BB, $38
.db $02, $93, $B7, $3F, $ED, $6A, $8F, $38, $03, $BB, $38, $02, $93, $B7, $3F, $ED
.db $6A, $8F, $38, $03, $BB, $38, $02, $93, $B7, $3F, $ED, $6A, $8F, $38, $03, $BB
.db $38, $02, $93, $B7, $3F, $ED, $6A, $8F, $38, $03, $BB, $38, $02, $93, $B7, $3F
.db $ED, $6A, $C9

_LABEL_5B1_242:
	push hl
	ld   hl, ($C20C)
	ld   a, h
	rrca
	rrca
	xor  h
	rrca
	xor  l
	rrca
	rrca
	rrca
	rrca
	xor  l
	rra
	adc  hl, hl
	jr   nz, _LABEL_5C8_243
	ld   hl, $733C
_LABEL_5C8_243:
	ld   a, r
	xor  l
	ld   ($C20C), hl
	pop  hl
	ret


LABEL_5D0:
	ld	hl, $C202
	ld	(hl), $02
	ret

LABEL_5D6:
	ld	hl, $7C12
	ld	($C269), hl
	ld	a, $01
	ld	($C26E), a
	call	_LABEL_2D51_33
	or	a
	jp	nz, LABEL_634
	
LABEL_5E8:
	ld	hl, $C300
	ld	de, $C301
	ld	bc, $3FF
	ld	(hl), l
	ldir
	ld	iy, $C400
	ld	(iy+$0A), $02
	ld	(iy+$0B), $10
	call	LABEL_16F1
	ld	hl, $C600
	ld	(hl), $FF
	ld	hl, $C604
	ld	(hl), $FF
	ld	hl, $404
	ld	($C308), hl
	ld	hl, $610
	ld	($C301), hl
	ld	($C313), hl
	ld	hl, $100
	ld	($C305), hl
	ld	($C311), hl
	ld	hl, 0
	ld	($C4E0), hl
	call	LABEL_42AC
	ld	hl, $C202
	ld	(hl), $08
	ret

LABEL_634:
	ld	a, $08
	ld	($FFFC), a
	ld	hl, $8201
	ld	b, $05
LABEL_63E:
	ld	a, (hl)
	or	a
	jr	nz, LABEL_64D
	inc	hl
	djnz	LABEL_63E
	ld	a, $80
	ld	($FFFC), a
	jp	LABEL_5E8

LABEL_64D:
	ld	a, $80
	ld	($FFFC), a
	call	_LABEL_7B05_295
	di
	call	LABEL_35A
	ei
	ld	hl, $C202
	ld	(hl), $08
	ld	hl, $FFFF
	ld	(hl), :Bank16
	ld	hl, LABEL_B16_BAD8
	ld	de, $5800
	call	_LABEL_3FA_163
	ld	hl, LABEL_B16_BD58
	ld	de, $7E00
	call	_LABEL_3FA_163
	call	LABEL_2FD
LABEL_678:
	ld	hl, LABEL_B12_BE45
	call	_LABEL_31CF_41
	call	LABEL_2D19
	jr	nz, LABEL_6C5
	ld	hl, LABEL_B12_BE1B
	call	_LABEL_31CF_41
-
	push	bc
	call	LABEL_39B1
	pop	bc
	call	LABEL_73A
	jr	z, -
	ld	hl, LABEL_BE35
	call	_LABEL_31CF_41
	call	_LABEL_3464_79
	ld	a, $08
	ld	($FFFC), a
	ld	a, ($C2C5)
	ld	h, a
	ld	l, 0
	add	hl, hl
	add	hl, hl
	set	7, h
	ld	de, $C300
	ld	bc, $400
	ldir
	ld	a, $80
	ld	($FFFC), a
	ld	a, ($C316)
	cp	$0B
	ret	nz
	ld	hl, $C202
	ld	(hl), $0A
	ret

LABEL_6C5:
	ld	hl, LABEL_BE5E
	call	_LABEL_31CF_41
	call	LABEL_2D19
	jr	nz, LABEL_678
--
	ld	hl, LABEL_BE6F
	call	_LABEL_31CF_41
-
	push	bc
	call	LABEL_39B1
	bit	4, c
	pop	bc
	jr	nz, LABEL_6C5
	call	LABEL_73A
	jr	z, -
	ld	hl, LABEL_BA82
	call	_LABEL_31CF_41
	call	LABEL_2D19
	jr	nz, --
	ld	hl, LABEL_BE82
	call	_LABEL_31CF_41
	ld	a, $08
	ld	($FFFC), a
	ld	a, ($C2C5)
	ld	h, $82
	ld	l, a
	ld	(hl), 0
	dec	a
	add	a, a
	ld	e, a
	add	a, a
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	add	a, $18
	ld	e, a
	ld	d, $81
	ld	hl, LABEL_730
	ld	bc, $0A
	ldir
	ex	de, hl
	ld	bc, $08
	add	hl, bc
	ex	de, hl
	ld	hl, LABEL_730
	ld	bc, $0A
	ldir
	ld	a, $80
	ld	($FFFC), a
	ld	hl, $C202
	ld	(hl), $02
	ret

LABEL_730:
.db $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10

LABEL_73A:
	ld	a, $08
	ld	($FFFC), a
	ld	a, ($C2C5)
	ld	l, a
	ld	h, $82
	ld	a, (hl)
	or	a
	ld	a, $80
	ld	($FFFC), a
	ret

LABEL_74D:
	call	_LABEL_7B05_295
	di
	call	LABEL_3E
	call	_LABEL_2ED_3
	call	LABEL_35A
	ld	hl, $C202
	inc	(hl)
	ld	hl, $258
	ld	($C20E), hl
	ld	hl, LABEL_7BA
	ld	de, $C240
	ld	bc, $20
	ldir
	ld	hl, $C260
	ld	de, $C261
	ld	bc, $9F
	ld	(hl), 0
	ldir
	ld	hl, $C800
	ld	de, $C801
	ld	bc, $FF
	ld	(hl), l
	ldir
	ld	hl, $FFFF
	ld	(hl), :Bank31
	ld	hl, $A8BD
	ld	de, $4000
	call	LABEL_3CD
	ld	hl, $FFFF
	ld	(hl), :Bank14
	ld	hl, $BC68
	call	_LABEL_6B62_137
	xor	a
	ld	($C304), a
	ld	($C300), a
	ld	a, $81
	ld	($C004), a
	ld	de, $8006
	rst	$08
	ei
	ld	a, $0C
	call	_LABEL_52_31
	jp	LABEL_2FD

LABEL_7BA:
.db	$00, $00, $3F, $0F, $0B, $06
.db $2B, $2A, $25, $27, $3B, $01, $3C, $34, $2F, $3C, $00, $00, $3C, $0F, $0B, $06
.db $2B, $2A, $25, $27, $3B, $01, $3C, $34, $2F, $3C

_LABEL_7DA_325:
	ld   a, $08
	ld   ($FFFC), a
	ld   bc, $1000
_LABEL_7E2_328:
	push bc
	ld   hl, $8001
	ld   de, LABEL_807+1
	ld   bc, $20
_LABEL_7EC_327:
	ld   a, (de)
	inc  de
	cpi
	jr   nz, _LABEL_803_326
	jp   pe, _LABEL_7EC_327
	pop  bc
_LABEL_7F6_330:
	djnz _LABEL_7E2_328
	ld   a, c
	cp   $08
	jr   nc, _LABEL_847_329
	ld   a, $80
	ld   ($FFFC), a
	ret

_LABEL_803_326:
	pop  bc
	inc  c
	jr   _LABEL_7F6_330


LABEL_807:
.db "PHANTASY STAR         "
.db	"BACKUP RAM"
.db	"PROGRAMMED BY          "
.db	"NAKA YUJI"

_LABEL_847_329:
	ld   hl, $8000
	ld   de, $8001
	ld   bc, $1FFB
	ld   (hl), l
	ldir
	ld   hl, LABEL_3AC4
	ld   de, $8100
	ld   bc, $D8
	ldir
	ld   hl, LABEL_807
	ld   de, $8000
	ld   bc, $40
	ldir
	ld   a, $80
	ld   ($FFFC), a
	ret


LABEL_86F:
	ld	hl, $2009
	ld	($C21B), hl
-
	ld	a, ($C212)
	or	a
	call	nz, LABEL_F1
	ld	a, $0E
	call	_LABEL_52_31
	ld	a, ($C205)
	and	$30
	jr	nz, _f
	call	LABEL_998
	ld	hl, ($C2F2)
	ld	de, $08
	add	hl, de
	ld	($C2F2), hl
	ld	a, h
	cp	$08
	jr	c, -
__
	ld	a, $16
	call	_LABEL_52_31
	ld	a, ($C21B)
	or	a
	jr	nz, _b
	jr	+
+
	ld	hl, $FFFF
	ld	(hl), :Bank23
	ld	hl, LABEL_B23_B767
	ld	de, $C240
	ld	bc, $11
	ldir
	call	LABEL_A31
	ld	hl, LABEL_B23_B778
	ld	de, $4000
	call	_LABEL_3FA_163
	ld	hl, $FFFF
	ld	(hl), :Bank28
	ld	hl, LABEL_B28_BE88
	call	_LABEL_6B62_137
	ld	hl, $D000
	ld	de, $D300
	ld	bc, $300
	ldir
	ld	hl, $D000
	ld	bc, $100
	ldir
	ld	hl, LABEL_B28_BE00
	call	_LABEL_6B62_137
	xor	a
	ld	($C300), a
	ld	($C304), a
	ld	hl, $D000
	ld	de, $7800
	ld	bc, $700
	di
	call	_LABEL_346_209
	ei
	ld	hl, $D000
	ld	de, $D300
	ld	bc, $300
	ldir
	ld	a, $8F
	ld	($C004), a
	call	_LABEL_7B20_303
	ld	hl, 0
	ld	($C2F2), hl
	ld	a, $08
	ld	($C307), a
-
	ld	a, ($C212)
	or	a
	call	nz, LABEL_F1
	ld	a, $0E
	call	_LABEL_52_31
	ld	a, ($C205)
	and	$30
	jr	nz, +
	call	LABEL_9E9
	ld	a, ($C307)
	or	a
	jr	nz, -
+
	ld	hl, $C202
	ld	(hl), $04
	call	LABEL_A74
	ld	hl, $800
	ld	($C2F2), hl
-
	ld	a, ($C212)
	or	a
	call	nz, LABEL_F1
	ld	a, $0E
	call	_LABEL_52_31
	ld	a, ($C205)
	and	$30
	jr	nz, +
	call	LABEL_998
	ld	hl, ($C2F2)
	ld	de, $08
	or	a
	sbc	hl, de
	ld	($C2F2), hl
	jr	nc, -
+
	ld	hl, 0
	ld	($C2F2), hl
	ld	hl, $C202
	ld	(hl), $08
	ld	a, ($C2E9)
	and	$7F
	ld	l, a
	add	a, a
	add	a, a
	add	a, a
	add	a, l
	ld	l, a
	ld	h, 0
	ld	de, $ABC
	add	hl, de
	xor	a
	ld	($C265), a
	ld	($C264), a
	ld	($C2E9), a
	ld	($C30E), a
	ld	($C307), a
	call	LABEL_787B
	ret

LABEL_998:
	ld	de, ($C2F2)
	ld	a, ($C304)
	ld	h, a
	ld	b, a
	ld	a, ($C307)
	ld	l, a
	or	a
	sbc	hl, de
	ld	a, h
	cp	$E0
	jr	c, +
	sub	$20
+
	ld	h, a
	ld	($C304), a
	ld	a, l
	ld	($C307), a
	ld	a, b
	sub	h
	and $0F
	ret	z
	ld	e, a
	ld	d, 0
	ld	hl, ($C305)
	ld	b, h
	ld	a, l
	sub	e
	cp	$C0
	jr	c, +
	sub	$40
	dec	h
+
	ld	l, a
	ld	a, h
	and	$07
	ld	h, a
	ld	($C305), hl
	cp	b
	call	nz, LABEL_723D
	call	LABEL_733A
	ld	a, ($C2F3)
	cp	$07
	ret	nz
	ld	a, ($C21B)
	or	a
	call	nz, LABEL_7B40
	ret

LABEL_9E9:
	ld	de, $02
	ld	a, ($C304)
	sub	e
	cp	$E0
	jr	c, +
	ld	d, $01
	sub	$20
+
	ld	($C304), a
	ld	a, ($C307)
	sub	d
	ld	($C307), a
	cp	$01
	ret	nz
	ld	a, d
	or a
	ret	z
	ld	a, ($C2E9)
	and	$7F
	ld	l, a
	add	a, a
	add	a, a
	add	a, a
	add	a, l
	ld	l, a
	ld	h, 0
	ld	de, $AB9
	add	hl, de
	ld	a, (hl)
	ld	($C308), a
	call	LABEL_A31
	ld	hl, $C240
	ld	de, $C220
	ld	bc, $20
	ldir
	ld	hl, LABEL_B28_BD00
	jp	_LABEL_6B62_137

LABEL_A31:
	ld	a, ($C308)
	and	$03
	add	a, a
	ld	l, a
	add	a, a
	add	a, l
	ld	d, 0
	ld	e, a
	ld	hl, LABEL_A4A
	add	hl, de
	ld	de, $C242
	ld	bc, $06
	ldir
	ret

LABEL_A4A:
.db	$3E, $38, $34, $30, $20
.db $04, $2F, $1F, $0B, $06, $01, $06, $3F
.db $3F, $3E, $3C, $39, $38


LABEL_A5C:
	ld	a, ($C2E9)
	and	$7F
	ld	l, a
	add	a, a
	add	a, a
	add	a, a
	add	a, l
	ld	l, a
	ld	h, 0
	ld	de, $AB6
	add	hl, de
	ld	de, LABEL_A8C
	push	de
	call	LABEL_787B

LABEL_A74:
	ld	a, ($C2E9)
	and	$7F
	ld	l, a
	add	a, a
	add	a, a
	add	a, a
	add	a, l
	ld	l, a
	ld	h, 0
	ld	de, $AB9
	add	hl, de
	ld	de, LABEL_A8C
	push	de
	call	LABEL_787B
	
LABEL_A8C:
	xor	a
	ld	($C204), a
	ld	($C264), a
	ld	a, ($C2E9)
	cp	$83
	ld	a, $10
	jr	c, +
	inc a
+
	ld	($C30E), a
	ld	hl, 0
	ld	($C2F2), hl
	call	LABEL_B6A
	ld	hl, $C26F
	ld	de, $C270
	ld	bc, $17
	ld	(hl), 0
	ldir
	call	_LABEL_576A_120
	ld	a, $01
	ld	($C264), a
	ret

.db $00, $39, $43, $01, $8B, $69, $10, $53
.db $17, $01, $37, $69, $00, $91, $43, $05
.db $17, $17, $00, $47, $35, $01, $27, $74
.db $0F, $20, $58, $00, $47, $35, $02, $33
.db $2D, $13, $18, $1B, $01, $53, $74, $00
.db $1B, $35, $07, $25, $13, $01, $53, $74
.db $02, $33, $2D, $13, $18, $1B, $02, $5B
.db $2D, $00, $1B, $35, $07, $25, $13, $02
.db $5B, $2D, $01, $27, $74, $0F, $20, $58

LABEL_B07:
	ret

LABEL_B08:
	ld	a, ($C212)
	or	a
	call	nz, LABEL_F1
	ld	a, $0E
	call	_LABEL_52_31
	call	_LABEL_576A_120
	call	LABEL_77AC
	ld	a, ($C265)
	or	a
	jr	nz, +
	ld	a, ($C2D2)
	or	a
	jr	z, +
	xor	a
	ld	($C2D2), a
	call	LABEL_5F63
	or	a
	jr	z, +
	ld	a, $FF
	jp	LABEL_B41
+
	ld	a, ($C204)
	and	$30
	ret	z
	ld	a, ($C265)
	or	a
	ret	nz
	xor	a

LABEL_B41:
	ld	($C29D), a
	ld	hl, $C202
	ld	(hl), $0C
	ld	a, ($C810)
	ld	($C2D7), a
	ld	hl, $C26F
	ld	de, $C270
	ld	bc, $17
	ld	(hl), 0
	ldir
	ld	hl, $C800
	ld	de, $C801
	ld	bc, $FF
	ld	(hl), 0
	ldir
	ret

LABEL_B6A:
	call	_LABEL_7B05_295
	di
	call	LABEL_3E
	ei
	ld	hl, $C202
	inc	(hl)
	xor	a
	ld	($C2D6), a
	ld	($C315), a
	inc	a
	ld	($C2D5), a
	ld	a, ($C308)
	cp	$04
	jr	nc, +
	ld	hl, $FFFF
	ld	(hl), :Bank29
	ld	hl, LABEL_B29_87B8
	ld	de, $4000
	call	_LABEL_3FA_163
	jr	++
+
	ld	hl, $FFFF
	ld	(hl), :Bank22
	ld	hl, LABEL_B22_8570
	ld	de, $4000
	call	_LABEL_3FA_163
++
	call	LABEL_CA6
	call	_LABEL_576A_120
	ld	b, $04
-
	push	bc
	ld	a, $0A
	call	_LABEL_52_31
	di
	call	LABEL_61F5
	ei
	pop	bc
	djnz	-
	ld	a, ($C301)
	neg
	ld	($C300), a
	ld	a, ($C305)
	ld	($C304), a
	ld	a, ($C309)
	ld	e, a
	ld	d, 0
	ld	hl, LABEL_DC1
	add	hl, de
	ld	a, (hl)
	ld	($C308), a
	add	a, a
	ld	h, a
	add	a, a
	ld	l, a
	add	a, a
	add	a, l
	add	a, h
	ld	l, a
	ld	h, 0
	ld	de, $DF1
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	hl
	ld	($C260), de
	ld	a, (hl)
	ld	($C262), a
	inc	hl
	ld	e, (hl)
	ld	d, $1F
	ld	($C26F), de
	inc	hl
	ld	e, (hl)
	ld	d, $0F
	ld	($C273), de
	inc	hl
	ld	e, (hl)
	ld	d, $0F
	ld	($C277), de
	inc	hl
	ld	e, (hl)
	ld	d, $03
	ld	($C27B), de
	inc	hl
	ld	e, (hl)
	ld	d, $0F
	ld	($C27F), de
	inc	hl
	ld	e, (hl)
	ld	d, $07
	ld	($C283), de
	inc	hl
	ld	a, (hl)
	ld	($C263), a
	inc	hl
	ld	a, (hl)
	inc	hl
	push	hl
	ld	h, (hl)
	ld	l, a
	ld	de, $C240
	ld	bc, $11
	ldir
	ld	a, ($C30E)
	or	a
	jr	nz, +
	push	hl
	ld	hl, LABEL_DA3
	ld	bc, $0D
	ldir
	pop	hl
	ldi
	ldi
	jp	LABEL_C54
+
	ld	hl, LABEL_DB2
	ld	bc, $0F
	ldir

LABEL_C54:
	pop	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	($C2D9), hl
	call	LABEL_723D
	call	LABEL_744B
	ld	a, $14
	call	LABEL_7764
	rrca
	rrca
	rrca
	rrca
	and	$0F
	ld	($C29E), a
	ld	a, ($C30E)
	cp	$10
	ld	c, $B8
	jr	nc, +
	or	a
	ld	c, $8F
	jr	nz, +
	ld	a, ($C309)
	ld	e, a
	ld	d, 0
	ld	hl, LABEL_DD9
	add	hl, de
	ld	c, (hl)
+
	ld	a, c
	call	LABEL_C97
	ld	de, $8026
	di
	rst	$08
	ei
	jp	LABEL_2FD

LABEL_C97:
	push	hl
	ld	hl, $C2F4
	cp	(hl)
	jr	nz, +
	pop	hl
	ret
+
	ld	($C004), a
	ld	(hl), a
	pop	hl
	ret

LABEL_CA6:
	ld	hl, $C800
	ld	de, $C801
	ld	bc, $FF
	ld	(hl), 0
	ldir
	ld	a, ($C30E)
	or	a
	jp	z, LABEL_CC0
	ld	hl, $C800
	ld	(hl), $09
	ret

LABEL_CC0:
	ld	de, $C800
	ld	bc, $20
	ld	hl, $C400
	ld	a, $01
	call	LABEL_CE3
	ld	hl, $C430
	ld	a, $03
	call	LABEL_CE3
	ld	hl, $C420
	ld	a, $05
	call	LABEL_CE3
	ld	hl, $C410
	ld	a, $07

LABEL_CE3:
	bit 0, (hl)
	ret	z
	ld	(de), a
	ex	de, hl
	add	hl, bc
	ex	de, hl
	ret


.db	$08, $00, $3F, $01
.db $03, $0B, $0F, $2F, $06, $38, $3C, $25
.db $2A, $04, $30, $0C, $08, $08, $00, $3F
.db $01, $03, $0B, $0F, $2F, $06, $38, $3C
.db $25, $2A, $04, $30, $0C, $2F, $3F, $00
.db $3F, $24, $03, $3C, $0F, $3F, $28, $38
.db $3C, $25, $2A, $04, $30, $0C, $3F, $09
.db $00, $3F, $06, $2F, $0B, $0C, $04, $2A
.db $25, $3C, $38, $30, $03, $02, $08, $09
.db $08, $0C, $08, $00, $3F, $06, $2F, $0B
.db $0C, $04, $2A, $25, $3C, $38, $30, $03
.db $02, $08, $08, $0C, $04, $2A, $00, $3F
.db $06, $2F, $0B, $0C, $04, $2A, $25, $3C
.db $38, $30, $03, $02, $08, $2A, $2A, $2A
.db $2F, $00, $3F, $06, $2F, $0B, $0C, $04
.db $2A, $25, $3C, $38, $30, $03, $02, $08
.db $2F, $0B, $06, $3F, $00, $3F, $06, $2F
.db $0B, $0C, $04, $2A, $25, $3C, $38, $30
.db $03, $02, $3F, $3F, $3C, $38, $00, $00
.db $3F, $06, $2F, $0B, $0C, $04, $2A, $25
.db $3C, $38, $30, $03, $02, $08, $00, $00
.db $00, $3C, $00, $3F, $06, $2F, $0B, $0C
.db $04, $2A, $25, $3C, $38, $30, $03, $02
.db $08, $3C, $3C, $3C

LABEL_DA3:
.db	$00, $3F, $2B, $0B
.db $2F, $37, $0F, $38, $34, $06, $01, $2A
.db $25, $00, $00

LABEL_DB2:
.db	$00, $3F, $02, $03, $0B
.db $0F, $20, $38, $34, $2F, $2A, $25, $2F
.db $2A, $25

LABEL_DC1:
.db	$00, $01, $02, $03, $04, $04
.db $04, $05, $05, $05, $05, $05, $06, $06
.db $07, $07, $07, $07, $07, $08, $08, $09
.db $09, $0A

LABEL_DD9:
.db	$82, $83, $84, $84, $87, $87
.db $87, $88, $88, $88, $88, $88, $87, $87
.db $87, $88, $87, $88, $88, $84, $84, $88
.db $88, $85, $00, $80, $0D, $01, $01, $00
.db $01, $01, $00, $1D, $EB, $0C, $35, $A9
.db $76, $A2, $0D, $00, $00, $01, $01, $00
.db $01, $1D, $FC, $0C, $B9, $A9, $00, $80
.db $0E, $00, $00, $00, $00, $00, $00, $1D
.db $0D, $0D, $E3, $A9, $00, $80, $0E, $00
.db $00, $00, $00, $00, $00, $1D, $0D, $0D
.db $49, $AA, $00, $80, $18, $00, $00, $00
.db $00, $00, $00, $16, $1E, $0D, $4A, $AA
.db $62, $87, $18, $00, $00, $00, $00, $00
.db $00, $16, $31, $0D, $70, $AB, $42, $8F
.db $18, $00, $00, $00, $00, $00, $00, $16
.db $44, $0D, $8B, $AC, $D9, $93, $18, $00
.db $00, $00, $00, $00, $00, $16, $57, $0D
.db $F7, $AC, $07, $9C, $18, $00, $00, $00
.db $00, $00, $00, $16, $6A, $0D, $5F, $AE
.db $8B, $9D, $18, $00, $00, $00, $00, $00
.db $00, $16, $7D, $0D, $71, $AE, $50, $A2
.db $18, $00, $00, $00, $00, $00, $00, $16
.db $90, $0D, $37, $AF

LABEL_E8B:
	ld	a, ($C212)
	or	a
	call	nz, LABEL_F1
	ld	a, $0E
	call	_LABEL_52_31
	ld	a, ($C205)
	and	$30
	jr	nz, +
	ld	a, ($C2EA)
	ld	($C204), a
	call	_LABEL_576A_120
	ld	a, ($C265)
	or	a
	ret	nz
	ld	a, ($C2EB)
	dec	a
	ld	($C2EB), a
	ret	nz
+
	ld	hl, $C202
	ld	(hl), $08
	ld	a, ($C2E9)
	add	a, a
	add	a, a
	add	a, a
	ld	l, a
	ld	h, $00
	ld	de, LABEL_F09
	add	hl, de
	xor	a
	ld	($C265), a
	ld	($C2E9), a
	ld	($C2EA), a
	ld	($C2EB), a
	call	LABEL_787B
	ret

LABEL_ED7:
.db $3A, $E9, $C2, $87, $87, $87, $6F, $26
.db $00, $11, $04, $0F, $19, $7E, $32, $EA
.db $C2, $23, $7E, $32, $EB, $C2, $23, $11
.db $F5, $0E, $D5, $CD, $7B, $78, $CD, $6A
.db $0B, $21, $6F, $C2, $11, $70, $C2, $01
.db $17, $00, $36, $00, $ED, $B0, $21, $01
.db $00, $22

LABEL_F09:
.db	$7B, $C2, $C9, $04, $0C, $00
.db $38, $51, $05, $21, $2C, $01, $0B, $00
.db $46, $46, $05, $27, $21, $01, $04, $01
.db $33, $64, $0E, $2A, $20, $08, $0C, $00
.db $38, $48, $04, $21, $53, $02, $0B, $00
.db $3A, $46, $06, $54, $20, $02, $04, $01
.db $2B, $64, $10, $43, $1E

LABEL_F3C:
.db	$3A, $12, $C2
.db $B7, $C4, $F1, $00, $3E, $08, $CD, $52
.db $00, $CD, $EE, $65, $3A, $D2, $C2, $B7
.db $C8, $AF, $32, $D2, $C2, $3A, $E3, $C2
.db $47, $CD, $B1, $05, $B8, $D0, $06, $01
.db $CD, $CA, $6B, $C0, $AF, $32, $D2, $C2
.db $3A, $E4, $C2, $CD, $D8, $5F, $B7, $C8
.db $CD, $FE, $5F, $CD, $0F, $10, $3A, $00
.db $C8, $B7, $C4, $E1, $1B, $C9

LABEL_F7D:
.db	$CD, $05
.db $7B, $CD, $E2, $6D, $21, $02, $C2, $34
.db $21, $FF, $FF, $36, $10, $21, $D8, $BA
.db $11, $00, $58, $CD, $FA, $03, $21, $58
.db $BD, $11, $00, $7E, $CD, $FA, $03, $3E
.db $39, $CD, $2E, $28, $20, $05, $3E, $FF
.db $32, $15, $C3, $CD, $F3, $0F, $AF, $32
.db $04, $C3, $32, $00, $C3, $32, $D5, $C2
.db $32, $D6, $C2, $32, $D3, $C2, $11, $06
.db $80, $F3, $CF, $FB, $CD, $FD, $02, $06
.db $01, $CD, $63, $69, $3A, $15, $C3, $B7
.db $C0, $21, $92, $B3, $CD, $CF, $31, $CD
.db $64, $34, $CD, $E1, $1B, $3A, $15, $C3
.db $B7, $28, $0B, $3E, $FF, $32, $15, $C3
.db $CD, $7F, $6D, $C3, $20, $7B, $21, $02
.db $C2, $36, $08, $C9, $21, $00, $C8, $11
.db $01, $C8, $01, $FF, $00, $36, $00, $ED
.db $B0, $3E, $D0, $32, $00, $C9, $CD, $56
.db $6D, $AF, $32, $9E, $C2, $C3, $E5, $6A

_LABEL_100F_261:
	ld   a, ($C2E6)
	cp   $48
	ld   c, $92
	jr   z, _LABEL_101E_262
	cp   $49
	jr   z, _LABEL_1022_263
	ld   c, $89
_LABEL_101E_262:
	ld   a, c
	ld   ($C004), a
_LABEL_1022_263:
	ld   hl, $C2AB
	ld   b, $0C
_LABEL_1027_264:
	ld   a, b
	dec  a
	ld   (hl), a
	dec  hl
	djnz _LABEL_1027_264
	xor  a
	ld   ($C2EF), a
	call _LABEL_30ED_265
	ld   b, $04
_LABEL_1036_271:
	ld   a, b
	dec  a
	call _LABEL_187D_40
	jp   nz, _LABEL_1043_270
	djnz _LABEL_1036_271
	jp   _LABEL_1656_272

_LABEL_1043_270:
	ld   b, $04
_LABEL_1045_279:
	ld   a, b
	dec  a
	call _LABEL_187D_40
	inc  hl
	ld   a, (hl)
	or   a
	jp   nz, _LABEL_1055_278
	djnz _LABEL_1045_279
	jp   _LABEL_1656_272

_LABEL_1055_278:
	ld   hl, $C2AC
	ld   de, $C2AD
	ld   bc, $000F
	ld   (hl), $00
	ldir
	ld   a, $FF
	ld   ($C29D), a
	xor  a
	ld   ($C267), a
	ld   ($C2D4), a
	call _LABEL_30C3_280

; Data from 1071 to 15D8 (1384 bytes)
.db $CD, $D9, $2E, $CD, $7A, $18, $CA, $80
.db $10, $23, $7E, $B7, $C2, $8A, $10, $3A
.db $67, $C2, $3C, $32, $67, $C2, $C3, $B7
.db $10, $11, $0C, $00, $19, $7E, $B7, $20
.db $EE, $CD, $05, $31, $CD, $D5, $30, $CD
.db $AC, $2E, $21, $82, $78, $22, $69, $C2
.db $3E, $04, $32, $6E, $C2, $CD, $51, $2D
.db $CB, $61, $C2, $21, $11, $21, $12, $19
.db $CD, $E6, $00, $CD, $CD, $2E, $3A, $67
.db $C2, $FE, $04, $DA, $74, $10, $FE, $05
.db $D2, $3E, $16, $AF, $32, $67, $C2, $CD
.db $B7, $30, $CD, $E1, $30, $CD, $F2, $18
.db $21, $A0, $C2, $06, $0C, $C5, $E5, $7E
.db $FE, $04, $D2, $E4, $10, $CD, $48, $11
.db $C3, $E7, $10, $CD, $8C, $12, $21, $41
.db $C4, $11, $10, $00, $06, $08, $7E, $B7
.db $C2, $FC, $10, $19, $10, $F8, $E1, $C1
.db $C3, $56, $16, $21, $00, $C4, $11, $10
.db $00, $06, $04, $7E, $B7, $C2, $11, $11
.db $19, $10, $F8, $E1, $C1, $C3, $02, $16
.db $E1, $C1, $23, $3A, $67, $C2, $FE, $05
.db $CA, $3E, $16, $10, $B8, $C3, $43, $10
.db $CD, $CD, $2E, $3A, $67, $C2, $B7, $28
.db $01, $3D, $32, $67, $C2, $CA, $74, $10
.db $CD, $7A, $18, $CA, $24, $11, $23, $7E
.db $B7, $CA, $24, $11, $11, $0C, $00, $19
.db $7E, $B7, $20, $DF, $C3, $74, $10, $32
.db $67, $C2, $CD, $7A, $18, $C8, $3A, $D4
.db $C2, $B7, $C0, $E5, $FD, $E1, $FD, $7E
.db $01, $B7, $C8, $FD, $7E, $0D, $B7, $28
.db $26, $3A, $67, $C2, $32, $C2, $C2, $CD
.db $B1, $05, $E6, $01, $3C, $47, $FD, $7E
.db $0D, $90, $30, $01, $AF, $FD, $77, $0D
.db $B7, $21, $0A, $B2, $28, $03, $21, $FC
.db $B1, $CD, $CF, $31, $C3, $64, $34, $CD
.db $AC, $2E, $CD, $CE, $1B, $FE, $01, $C2
.db $DC, $11, $3A, $67, $C2, $32, $C2, $C2
.db $87, $87, $87, $87, $21, $0A, $C4, $85
.db $6F, $8C, $95, $67, $7E, $FE, $09, $28
.db $21, $FE, $0B, $28, $21, $FE, $0D, $28
.db $21, $CD, $A9, $18, $CD, $B1, $05, $E6
.db $07, $C6, $04, $CD, $7D, $18, $CA, $B5
.db $11, $E5, $DD, $E1, $CD, $1D, $12, $C3
.db $0B, $12, $16, $FB, $18, $06, $16, $F6
.db $18, $02, $16, $EC, $5F, $CD, $EE, $1E
.db $C3, $0B, $12, $FE, $03, $C2, $F1, $11
.db $79, $32, $C2, $C2, $78, $E6, $1F, $21
.db $8A, $1A, $CD, $E6, $00, $C3, $0B, $12
.db $FE, $04, $C2, $0B, $12, $3A, $67, $C2
.db $32, $C2, $C2, $78, $32, $C4, $C2, $CD
.db $2E, $28, $20, $0D, $22, $9B, $C2, $CD
.db $01, $22, $CD, $05, $31, $CD, $CD, $2E
.db $C9, $21, $A1, $BE, $CD, $CF, $31, $CD
.db $64, $34, $18, $EE, $FD, $7E, $08, $FD
.db $CB, $00, $7E, $28, $09, $4F, $0F, $E6
.db $7F, $81, $30, $02, $3E, $FF, $CD, $79
.db $12, $4F, $DD, $7E, $09, $CD, $79, $12
.db $91, $38, $22, $FE, $10, $38, $11, $0F
.db $38, $0E, $3E, $BB, $32, $04, $C0, $21
.db $08, $B1, $CD, $CF, $31, $C3, $64, $34
.db $CD, $B1, $05, $E6, $1F, $FD, $BE, $05
.db $28, $02, $30, $F4, $2F, $F5, $3E, $AD
.db $32, $04, $C0, $CD, $AC, $7B, $F1, $DD
.db $86, $01, $38, $01, $AF, $DD, $77, $01
.db $C0, $DD, $77, $00, $DD, $77, $0D, $C9
.db $0F, $E6, $7F, $47, $0F, $E6, $3F, $5F
.db $CD, $B1, $05, $67, $CD, $29, $04, $7B
.db $80, $84, $C9, $CD, $7D, $18, $C8, $E5
.db $FD, $E1, $FD, $7E, $0D, $B7, $28, $20
.db $CD, $B1, $05, $E6, $01, $3C, $47, $FD
.db $7E, $0D, $90, $30, $01, $AF, $FD, $77
.db $0D, $B7, $21, $1D, $B2, $28, $03, $21
.db $03, $B2, $CD, $CF, $31, $C3, $64, $34
.db $3A, $E8, $C2, $E6, $07, $21, $C4, $12
.db $C3, $E6, $00, $05, $13, $86, $13, $CC
.db $13, $FF, $13, $21, $14, $9D, $14, $1A
.db $15, $61, $15, $3A, $E8, $C2, $E6, $10
.db $28, $1D, $CD, $B1, $05, $E6, $03, $4F
.db $3A, $EF, $C2, $47, $E6, $7F, $91, $30
.db $01, $AF, $B7, $28, $0A, $CB, $78, $28
.db $02, $F6, $80, $32, $EF, $C2, $C9, $AF
.db $32, $EF, $C2, $21, $C1, $B1, $CD, $CF
.db $31, $C3, $64, $34, $3A, $EF, $C2, $B7
.db $C4, $D4, $12, $CD, $B1, $05, $E6, $03
.db $CD, $7D, $18, $CA, $0C, $13, $32, $C2
.db $C2, $E5, $DD, $E1, $F5, $32, $EE, $C2
.db $CD, $93, $2F, $CD, $73, $15, $3A, $ED
.db $C2, $B7, $F5, $CD, $CE, $18, $F1, $20
.db $12, $3A, $EF, $C2, $B7, $21, $A3, $B1
.db $20, $03, $21, $18, $B1, $CD, $CF, $31
.db $CD, $64, $34, $F1, $CD, $7D, $18, $20
.db $2F, $21, $28, $B7, $CD, $CF, $31, $3A
.db $E6, $C2, $FE, $46, $20, $1F, $3A, $C2
.db $C2, $FE, $01, $20, $18, $21, $00, $C4
.db $11, $10, $00, $AF, $06, $04, $B6, $36
.db $00, $19, $10, $FA, $B7, $28, $06, $21
.db $3B, $BF, $CD, $CF, $31, $CD, $64, $34
.db $06, $04, $3E, $08, $CD, $52, $00, $10
.db $F9, $CD, $B7, $30, $C9, $CD, $B1, $05
.db $E6, $03, $C2, $05, $13, $3A, $EF, $C2
.db $E6, $80, $C4, $D4, $12, $3A, $EF, $C2
.db $E6, $80, $28, $09, $21, $B2, $B1, $CD
.db $CF, $31, $C3, $64, $34, $CD, $B1, $05
.db $E6, $03, $CD, $7D, $18, $28, $F6, $32
.db $C2, $C2, $3E, $0D, $85, $6F, $7E, $B7
.db $C2, $05, $13, $36, $03, $3E, $A1, $32
.db $04, $C0, $21, $EE, $B1, $CD, $CF, $31
.db $C3, $64, $34, $FD, $7E, $01, $FE, $1E
.db $38, $08, $CD, $B1, $05, $E6, $07, $C2
.db $05, $13, $FD, $46, $06, $FD, $7E, $01
.db $C6, $50, $30, $02, $3E, $FF, $B8, $38
.db $01, $78, $FD, $77, $01, $3E, $A1, $32
.db $04, $C0, $CD, $05, $31, $21, $D8, $B1
.db $CD, $CF, $31, $C3, $64, $34, $CD, $B1
.db $05, $E6, $0F, $C2, $05, $13, $FD, $7E
.db $00, $E6, $80, $C2, $05, $13, $FD, $CB
.db $00, $FE, $3E, $A1, $32, $04, $C0, $21
.db $C2, $BC, $CD, $CF, $31, $C3, $64, $34
.db $CD, $B1, $05, $E6, $03, $C2, $05, $13
.db $CD, $2C, $14, $3A, $EF, $C2, $E6, $80
.db $C4, $D4, $12, $06, $04, $78, $D6, $04
.db $ED, $44, $CD, $7D, $18, $20, $03, $10
.db $F4, $C9, $CD, $B1, $05, $E6, $03, $CD
.db $7D, $18, $CA, $43, $14, $32, $C2, $C2
.db $32, $EE, $C2, $CD, $93, $2F, $CD, $B1
.db $05, $E6, $03, $C6, $F6, $47, $3A, $EF
.db $C2, $E6, $80, $78, $CC, $C2, $15, $3E
.db $80, $32, $8A, $C8, $CD, $CE, $18, $3A
.db $EF, $C2, $E6, $80, $28, $09, $21, $B2
.db $B1, $CD, $CF, $31, $CD, $64, $34, $3A
.db $C2, $C2, $CD, $7D, $18, $20, $09, $21
.db $28, $B7, $CD, $CF, $31, $CD, $64, $34
.db $06, $04, $3E, $08, $CD, $52, $00, $10
.db $F9, $C3, $B7, $30, $CD, $B1, $05, $E6
.db $03, $C2, $05, $13, $0E, $D8, $06, $04
.db $C5, $3A, $EF, $C2, $E6, $80, $C4, $D4
.db $12, $C1, $C5, $78, $D6, $04, $ED, $44
.db $CD, $7D, $18, $28, $43, $32, $C2, $C2
.db $32, $EE, $C2, $C5, $CD, $93, $2F, $C1
.db $CD, $05, $15, $3E, $C0, $32, $8A, $C8
.db $CD, $CE, $18, $3A, $EF, $C2, $E6, $80
.db $28, $09, $21, $B2, $B1, $CD, $CF, $31
.db $CD, $64, $34, $3A, $C2, $C2, $CD, $7D
.db $18, $20, $09, $21, $28, $B7, $CD, $CF
.db $31, $CD, $64, $34, $06, $04, $3E, $08
.db $CD, $52, $00, $10, $F9, $CD, $B7, $30
.db $C1, $10, $A5, $C9, $79, $FE, $FF, $CA
.db $79, $15, $3A, $EF, $C2, $E6, $80, $C0
.db $CD, $B1, $05, $E6, $0F, $81, $C3, $C2
.db $15, $3A, $20, $C4, $B7, $28, $08, $3A
.db $2C, $C4, $FE, $1F, $CA, $05, $13, $3A
.db $EF, $C2, $B7, $C4, $D4, $12, $CD, $B1
.db $05, $E6, $03, $CD, $7D, $18, $CA, $2F
.db $15, $32, $C2, $C2, $32, $EE, $C2, $E5
.db $CD, $93, $2F, $E1, $AF, $77, $23, $77
.db $CD, $CE, $18, $21, $93, $BE, $CD, $CF
.db $31, $CD, $64, $34, $06, $04, $3E, $08
.db $CD, $52, $00, $10, $F9, $C3, $B7, $30
.db $3E, $3C, $32, $C4, $C2, $CD, $2E, $28
.db $0E, $01, $C2, $A7, $14, $0E, $FF, $C3
.db $A7, $14, $3A, $EF, $C2, $B7, $20, $34
.db $FD, $7E, $08, $FD, $CB, $00, $7E, $28
.db $09, $4F, $0F, $E6, $7F, $81, $30, $02
.db $3E, $FF, $FD, $CB, $00, $76, $28, $08
.db $4F, $0F, $0F, $E6, $3F, $47, $79, $90
.db $CD, $79, $12, $4F, $DD, $7E, $09, $CD
.db $79, $12, $91, $38, $1C, $FE, $10, $38
.db $08, $0F, $38, $05, $AF, $32, $ED, $C2
.db $C9, $CD, $B1, $05, $E6, $1F, $DD, $BE
.db $05, $28, $02, $30, $F4, $0F, $E6, $7F
.db $2F, $DD, $86, $01, $38, $01, $AF, $DD
.db $77, $01, $20, $06, $DD, $77, $00, $DD
.db $77, $0D, $3E, $FF, $32, $ED, $C2, $C9

_LABEL_15D9_276:
	call _LABEL_319E_277
_LABEL_15DC_119:
	ld   hl, $C800
	ld   de, $C801
	ld   bc, $00FF
	ld   (hl), $00
	ldir
	call _LABEL_576A_120
	ld   a, ($C29E)
	or   a
	jp   nz, _LABEL_15F9_133
	call _LABEL_6B3A_134
	jp   _LABEL_15FC_158

_LABEL_15F9_133:
	call _LABEL_3D36_159
_LABEL_15FC_158:
	ld   a, $10
	call _LABEL_52_31
	ret


; Data from 1602 to 1655 (84 bytes)
.db $3A, $E6, $C2, $FE, $31, $28, $04, $FE, $4A, $20, $06, $3E, $D8, $32, $04, $C0
.db $C9, $FE, $46, $20, $0A, $21, $30, $C2, $06, $10, $36, $30, $23, $10, $FB, $3E
.db $94, $32, $04, $C0, $3A, $F0, $C4, $B7, $21, $17, $BD, $C4, $CF, $31, $21, $23
.db $BD, $CD, $CF, $31, $21, $02, $C2, $36, $02, $C3, $64, $34, $F5, $CD, $D9, $15
.db $CD, $BA, $17, $3E, $D8, $32, $04, $C0, $F1, $FE, $05, $C0, $3A, $9E, $C2, $B7
.db $C0, $C3, $8C, $68

_LABEL_1656_272:
	ld   a, ($C2E6)
	cp   $31
	jr   nz, _LABEL_1663_273
	ld   a, $D8
	ld   ($C004), a
	ret

_LABEL_1663_273:
	cp   $46
	jr   nz, _LABEL_1671_274
	ld   hl, $C230
	ld   b, $10
_LABEL_166C_275:
	ld   (hl), $30
	inc  hl
	djnz _LABEL_166C_275
_LABEL_1671_274:
	ld   a, $AF
	ld   ($C004), a
	call _LABEL_15D9_276

; Data from 1679 to 16B1 (57 bytes)
.db $3A, $E6, $C2, $FE, $48, $28, $04, $FE, $49, $20, $05, $06, $B4, $CD, $49, $2D
.db $3E, $D8, $32, $04, $C0, $21, $1B, $B7, $CD, $CF, $31, $CD, $0D, $17, $CD, $BA
.db $17, $2A, $DD, $C2, $3A, $DF, $C2, $B5, $B4, $C8, $21, $E1, $BC, $CD, $CF, $31
.db $CD, $B2, $16, $CD, $25, $2D, $C3, $DB, $28

_LABEL_16B2_222:
	ld   hl, $FFFF
	ld   (hl), :Bank20
	ld   hl, $8000
	ld   de, $C258
	ld   bc, $0008
	ldir
	ld   hl, $C240
	ld   de, $C220
	ld   bc, $0020
	ldir
	ld   hl, $8008
	ld   de, $6000
	call _LABEL_3FA_163
	ld   hl, $C800
	ld   de, $C801
	ld   bc, $00FF
	ld   (hl), $00
	ldir
	ld   a, $0D
	ld   ($C800), a
	call _LABEL_576A_120
	ld   a, $16
	call _LABEL_52_31
	ret


; Data from 16F1 to 187C (396 bytes)
LABEL_16F1:
.db $FD, $36, $00, $01, $FD, $36, $05, $01, $FD, $E5, $CD, $BA, $17, $FD, $E1, $FD
.db $7E, $06, $FD, $77, $01, $FD, $7E, $07, $FD, $77, $02, $C9, $2A, $D0, $C2, $22
.db $C5, $C2, $7D, $B4, $C8, $21, $04, $B6, $CD, $CF, $31, $FD, $21, $00, $C4, $11
.db $AF, $B8, $AF, $32, $C2, $C2, $CD, $54, $17, $FD, $21, $10, $C4, $11, $9F, $B9
.db $3E, $01, $32, $C2, $C2, $CD, $54, $17, $FD, $21, $20, $C4, $11, $8F, $BA, $3E
.db $02, $32, $C2, $C2, $CD, $54, $17, $FD, $21, $30, $C4, $11, $7F, $BB, $3E, $03
.db $32, $C2, $C2, $FD, $CB, $00, $46, $C8, $21, $FF, $FF, $36, $03, $FD, $6E, $05
.db $26, $00, $29, $29, $29, $19, $E5, $DD, $E1, $FD, $5E, $03, $FD, $56, $04, $2A
.db $D0, $C2, $19, $30, $03, $21, $FF, $FF, $FD, $75, $03, $FD, $74, $04, $D8, $FD
.db $7E, $05, $FE, $1E, $C8, $7C, $DD, $96, $05, $D8, $20, $05, $7D, $DD, $96, $04
.db $D8, $3E, $BA, $32, $04, $C0, $21, $21, $B6, $CD, $CF, $31, $21, $FF, $FF, $36
.db $03, $FD, $34, $05, $DD, $7E, $06, $FD, $BE, $0E, $20, $07, $DD, $7E, $07, $FD
.db $BE, $0F, $C8, $21, $35, $B6, $C3, $CF, $31, $21, $FF, $FF, $36, $03, $FD, $21
.db $00, $C4, $11, $A7, $B8, $CD, $E4, $17, $FD, $21, $10, $C4, $11, $97, $B9, $CD
.db $E4, $17, $FD, $21, $20, $C4, $11, $87, $BA, $CD, $E4, $17, $FD, $21, $30, $C4
.db $11, $77, $BB, $FD, $CB, $00, $46, $C8, $FD, $36, $00, $01, $FD, $36, $0D, $00
.db $FD, $6E, $05, $26, $00, $29, $29, $29, $19, $E5, $DD, $E1, $DD, $7E, $00, $FD
.db $77, $06, $FD, $6E, $0A, $26, $00, $11, $3A, $18, $19, $7E, $DD, $86, $01, $FD
.db $77, $08, $FD, $6E, $0B, $26, $00, $19, $7E, $FD, $6E, $0C, $26, $00, $19, $86
.db $DD, $86, $02, $FD, $77, $09, $DD, $7E, $03, $FD, $77, $07, $DD, $7E, $06, $FD
.db $77, $0E, $DD, $7E, $07, $FD, $77, $0F, $C9, $00, $03, $04, $0C, $0A, $0A, $0A
.db $15, $1F, $12, $1E, $1E, $2E, $32, $3C, $50, $05, $05, $0F, $14, $1E, $1E, $3C
.db $50, $28, $03, $08, $0F, $17, $28, $1E, $28, $32, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00, $00, $3A, $67, $C2

_LABEL_187D_40:
	push af
	add  a, a
	add  a, a
	add  a, a
	add  a, a
	ld   hl, $C400
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	pop  af
	bit  0, (hl)
	ret

_LABEL_188E_39:
	push hl
	call _LABEL_187D_40
	pop  hl
	ret  nz

	push af
	push bc
	push de
	push hl
	ld   ($C2C2), a
	ld   hl, $B730
	call _LABEL_31CF_41
	call _LABEL_3464_79
	pop  hl
	pop  de
	pop  bc
	pop  af
	ret


; Data from 18A9 to 1BE0 (824 bytes)
.db $FD, $E5, $32, $0A, $C8, $3E, $0B, $32, $00, $C8, $CD, $B9, $18, $FD, $E1, $C9
.db $3E, $08, $CD, $52, $00, $CD, $6A, $57, $3A, $00, $C8, $B7, $C2, $B9, $18, $3E
.db $08, $CD, $52, $00, $C9, $FD, $E5, $3E, $FF, $32, $9F, $C2, $3A, $F1, $C2, $32
.db $04, $C0, $3E, $08, $CD, $52, $00, $CD, $6A, $57, $3A, $9F, $C2, $B7, $C2, $DB
.db $18, $3E, $08, $CD, $52, $00, $FD, $E1, $C9, $21, $A0, $C2, $06, $0C, $CD, $B1
.db $05, $E6, $0F, $FE, $0C, $30, $F7, $C6, $A0, $5F, $3E, $C2, $CE, $00, $57, $4E
.db $1A, $EB, $71, $12, $EB, $23, $10, $E6, $C9, $1C, $19, $DE, $19, $9E, $1B, $2B
.db $19, $9C, $19, $01, $01, $00, $AF, $CD, $B9, $1B, $3A, $67, $C2, $3C, $32, $67
.db $C2, $C9, $CD, $CD, $2E, $CD, $B7, $30, $CD, $E1, $30, $3A, $67, $C2, $32, $C2
.db $C2, $21, $28, $B1, $CD, $CF, $31, $3A, $E8, $C2, $E6, $80, $28, $0A, $3A, $48
.db $C4, $47, $3A, $08, $C4, $B8, $30, $13, $3E, $04, $32, $67, $C2, $3E, $FF, $32
.db $D4, $C2, $21, $3D, $B1, $CD, $CF, $31, $C3, $64, $34, $21, $32, $B1, $CD, $CF
.db $31, $CD, $B1, $05, $E6, $0F, $FE, $09, $30, $F7, $6F, $26, $00, $29, $11, $8A
.db $19, $19, $7E, $23, $66, $6F, $CD, $CF, $31, $3E, $06, $32, $67, $C2, $C3, $64
.db $34, $AE, $BA, $D0, $BA, $E6, $BA, $F4, $BA, $06, $BB, $0D, $BB, $20, $BB, $3D
.db $BB, $45, $BB, $CD, $CD, $2E, $CD, $B7, $30, $CD, $E1, $30, $3A, $E7, $C2, $47
.db $CD, $B1, $05, $B8, $30, $16, $3A, $9E, $C2, $B7, $20, $05, $CD, $7A, $68, $20
.db $0B, $3E, $BC, $32, $04, $C0, $3E, $05, $32, $67, $C2, $C9, $3A, $67, $C2, $32
.db $C2, $C2, $21, $5E, $B1, $CD, $CF, $31, $3E, $04, $32, $67, $C2, $3E, $FF, $32
.db $D4, $C2, $C3, $64, $34, $3A, $67, $C2, $32, $C2, $C2, $FE, $02, $C2, $F2, $19
.db $21, $BA, $B5, $CD, $CF, $31, $C3, $64, $34, $4F, $87, $87, $87, $87, $21, $0E
.db $C4, $85, $6F, $7E, $B7, $CA, $42, $1A, $47, $79, $FE, $03, $20, $01, $3D, $F5
.db $E5, $CD, $78, $34, $21, $8C, $7A, $22, $69, $C2, $E1, $7E, $3D, $32, $6E, $C2
.db $CD, $51, $2D, $E1, $CB, $61, $C2, $3F, $1A, $6F, $7C, $87, $87, $84, $85, $6F
.db $26, $00, $11, $57, $1A, $19, $7E, $E6, $1F, $47, $CD, $87, $1B, $38, $13, $78
.db $21, $66, $1A, $CD, $E6, $00, $C3, $C9, $34, $21, $C8, $B5, $CD, $CF, $31, $C3
.db $64, $34, $21, $F7, $B6, $CD, $CF, $31, $CD, $64, $34, $C3, $C9, $34, $01, $09
.db $10, $05, $08, $02, $0B, $03, $0A, $00, $05, $11, $07, $04, $06, $AE, $1A, $B1
.db $1A, $B1, $1A, $FD, $1A, $FD, $1A, $D0, $1A, $D0, $1A, $D0, $1A, $D0, $1A, $FD
.db $1A, $DE, $1A, $FD, $1A, $FD, $1A, $FD, $1A, $FD, $1A, $FD, $1A, $0D, $1B, $31
.db $1B, $24, $1E, $46, $1E, $4A, $1E, $8A, $1E, $8E, $1E, $A7, $1E, $E6, $1E, $25
.db $1F, $36, $1F, $80, $1F, $C0, $1F, $DF, $1F, $1C, $20, $64, $20, $91, $20, $BF
.db $20, $0D, $1B, $31, $1B, $C3, $AE, $1A, $C5, $CD, $82, $36, $D1, $CB, $61, $20
.db $12, $CD, $8E, $18, $28, $0D, $0E, $03, $42, $CD, $B9, $1B, $3A, $67, $C2, $3C
.db $32, $67, $C2, $CD, $CC, $36, $C9, $0E, $03, $AF, $CD, $B9, $1B, $3A, $67, $C2
.db $3C, $32, $67, $C2, $C9, $C5, $CD, $82, $36, $D1, $CB, $61, $20, $12, $CD, $8E
.db $18, $28, $0D, $0E, $03, $42, $CD, $B9, $1B, $3A, $67, $C2, $3C, $32, $67, $C2
.db $CD, $CC, $36, $C9, $0E, $03, $3A, $C2, $C2, $CD, $B9, $1B, $3A, $67, $C2, $3C
.db $32, $67, $C2, $C9, $78, $CD, $87, $1B, $12, $3E, $AB, $32, $04, $C0, $3A, $E8
.db $C2, $E6, $C0, $CA, $51, $19, $E6, $40, $CA, $64, $19, $3A, $48, $C4, $47, $3A
.db $08, $C4, $B8, $30, $15, $C3, $51, $19, $78, $CD, $87, $1B, $12, $3A, $E8, $C2
.db $E6, $C0, $CA, $51, $19, $E6, $40, $CA, $64, $19, $3E, $AC, $32, $04, $C0, $21
.db $32, $B1, $CD, $CF, $31, $CD, $B1, $05, $E6, $0F, $FE, $0A, $30, $F7, $6F, $26
.db $00, $29, $11, $73, $1B, $19, $7E, $23, $66, $6F, $CD, $CF, $31, $3E, $06, $32
.db $67, $C2, $3E, $D5, $32, $04, $C0, $C3, $64, $34, $5C, $BB, $8D, $BB, $BF, $BB
.db $D2, $BB, $F0, $BB, $1A, $BC, $42, $BC, $5B, $BC, $89, $BC, $AA, $BC, $21, $DC
.db $1D, $85, $6F, $8C, $95, $67, $3A, $67, $C2, $87, $87, $87, $87, $11, $02, $C4
.db $83, $5F, $1A, $96, $C9, $CD, $D5, $34, $CD, $56, $36, $CB, $61, $C0, $3A, $C4
.db $C2, $47, $0E, $04, $AF, $CD, $B9, $1B, $3A, $67, $C2, $3C, $32, $67, $C2, $C9
.db $F5, $3A, $67, $C2, $87, $87, $21, $AC, $C2, $85, $6F, $8C, $95, $67, $F1, $71
.db $23, $70, $23, $77, $C9, $3A, $67, $C2, $87, $87, $21, $AC, $C2, $85, $6F, $8C
.db $95, $67, $7E, $23, $46, $23, $4E, $C9

_LABEL_1BE1_117:
	xor  a
	ld   ($C29D), a
	ld   ($C2D8), a
	call _LABEL_36DD_162

; Data from 1BEB to 1C82 (152 bytes)
.db $CD, $D9, $2E, $3A, $D8, $C2, $B7, $20, $21, $21, $82, $78, $22, $69, $C2, $3E
.db $04, $32, $6E, $C2, $CD, $51, $2D, $CB, $61, $C2, $13, $1C, $21, $97, $1C, $CD
.db $E6, $00, $CD, $EF, $36, $C3, $EE, $1B, $3E, $FF, $F5, $FE, $05, $28, $09, $AF
.db $32, $00, $C8, $3E, $D0, $32, $00, $C9, $CD, $B7, $30, $CD, $FB, $36, $F1, $FE
.db $FF, $C8, $FE, $03, $D8, $FE, $05, $30, $04, $4F, $C3, $1B, $68, $FE, $06, $30
.db $09, $CD, $85, $7C, $CD, $25, $2D, $C3, $14, $44, $FE, $07, $30, $10, $3E, $85
.db $CD, $97, $0C, $CD, $BB, $7C, $3E, $FF, $32, $DC, $C2, $C3, $E1, $1B, $FE, $08
.db $DA, $97, $44, $3E, $BF, $32, $04, $C0, $21, $02, $C2, $36, $08, $AF, $32, $0E
.db $C3, $3A, $17, $C3, $6F, $87, $85, $26, $00, $6F, $11, $7C, $1C, $19, $C3, $7B
.db $78, $04, $16, $69, $04, $27, $6B, $07

_LABEL_1C83_5:
	add  hl, hl
	ld   hl, ($1909)
	ld   h, (hl)
	ld   c, $29
	add  hl, de
	rrca
	dec  d
	ld   b, e
	ld   de, $5253
	ld   d, $15
	inc  l
	dec  d
	jr   z, _LABEL_1CF8_20
	and  c
	inc  e
	ld   c, l
	dec  e
	ld   l, b
	ld   hl, $2839
	rst  $18
	inc  e
	call _LABEL_3665_22
	bit  4, c
	jr   nz, _LABEL_1CDC_38
	call _LABEL_188E_39
	jr   z, _LABEL_1CDC_38
	push af
	call _LABEL_3707_80
	call _LABEL_37CF_84

; Data from 1CB4 to 1CDB (40 bytes)
.db $CD, $25, $2D, $F1, $4F, $87, $87, $87, $87, $21, $0E, $C4, $85, $6F, $7E, $B7
.db $28, $10, $47, $79, $FE, $03, $20, $01, $3D, $CD, $78, $34, $CD, $25, $2D, $CD
.db $C9, $34, $CD, $C1, $38, $CD, $4D, $37

_LABEL_1CDC_38:
	jp   _LABEL_36BB_107


; Data from 1CDF to 1CF7 (25 bytes)
.db $21, $62, $BA, $CD, $CF, $31, $CD, $A5, $39, $21, $82, $BA, $CD, $CF, $31, $CD
.db $19, $2D, $20, $48, $3A, $02, $C2, $32, $16

_LABEL_1CF8_20:
	jp   _LABEL_9321_108


; Data from 1CFB to 20B8 (958 bytes)
.db $BA, $CD, $CF, $31, $C5, $3A, $C5, $C2, $67, $2E, $00, $29, $29, $CB, $FC, $EB
.db $CD, $3A, $07, $F5, $E5, $3E, $08, $32, $FC, $FF, $36, $00, $21, $00, $C3, $01
.db $00, $04, $ED, $B0, $3E, $80, $32, $FC, $FF, $E1, $F1, $3E, $08, $32, $FC, $FF
.db $36, $01, $3E, $80, $32, $FC, $FF, $C1, $28, $0C, $21, $A3, $BA, $CD, $CF, $31
.db $CD, $DD, $39, $C3, $64, $34, $AF, $32, $80, $C7, $21, $02, $C2, $36, $10, $E1
.db $E1, $C9, $CD, $65, $36, $CB, $61, $C2, $BA, $1D, $CD, $8E, $18, $CA, $BA, $1D
.db $FE, $02, $CA, $C5, $1D, $4F, $32, $C2, $C2, $32, $67, $C2, $87, $87, $87, $87
.db $21, $0F, $C4, $85, $6F, $7E, $B7, $CA, $C0, $1D, $47, $79, $FE, $03, $20, $01
.db $3D, $4F, $C6, $03, $C5, $E5, $CD, $78, $34, $21, $8C, $7A, $22, $69, $C2, $E1
.db $7E, $3D, $32, $6E, $C2, $CD, $51, $2D, $E1, $CB, $61, $C2, $B7, $1D, $67, $7D
.db $87, $87, $85, $84, $6F, $26, $00, $11, $EF, $1D, $19, $7E, $E6, $1F, $47, $CD
.db $87, $1B, $DA, $D1, $1D, $78, $21, $FE, $1D, $CD, $E6, $00, $CD, $C9, $34, $CD
.db $BB, $36, $C3, $3C, $2F, $21, $C8, $B5, $18, $03, $21, $BA, $B5, $CD, $CF, $31
.db $CD, $64, $34, $C3, $BB, $36, $21, $F7, $B6, $CD, $CF, $31, $CD, $64, $34, $18
.db $DB, $00, $02, $06, $06, $0A, $04, $10, $0C, $04, $02, $0A, $02, $02, $04, $04
.db $0C, $02, $04, $08, $01, $12, $00, $00, $00, $02, $0C, $0D, $00, $00, $02, $0D
.db $11, $0E, $0F, $24, $1E, $27, $1E, $2B, $1E, $8A, $1E, $8E, $1E, $A7, $1E, $E6
.db $1E, $25, $1F, $36, $1F, $80, $1F, $C0, $1F, $DF, $1F, $1C, $20, $64, $20, $91
.db $20, $BF, $20, $F8, $20, $F8, $20, $40, $21, $C3, $24, $1E, $16, $14, $18, $02
.db $16, $50, $C5, $D5, $CD, $82, $36, $D1, $CB, $61, $C1, $20, $0B, $32, $C2, $C2
.db $CD, $8E, $18, $28, $03, $CD, $53, $1E, $C3, $CC, $36, $16, $14, $18, $02, $16
.db $50, $3A, $C2, $C2, $CD, $8E, $18, $C8, $D5, $78, $CD, $87, $1B, $12, $3E, $AB
.db $32, $04, $C0, $D1, $D5, $21, $D0, $B1, $CD, $CF, $31, $D1, $3E, $C1, $32, $04
.db $C0, $3A, $C2, $C2, $CD, $7D, $18, $E5, $DD, $E1, $DD, $46, $06, $DD, $7E, $01
.db $82, $30, $02, $3E, $FF, $B8, $38, $01, $78, $DD, $77, $01, $C3, $64, $34, $0E
.db $06, $18, $02, $0E, $86, $78, $CD, $87, $1B, $12, $3E, $AB, $32, $04, $C0, $79
.db $32, $EF, $C2, $21, $8B, $B1, $CD, $CF, $31, $C3, $64, $34, $78, $CD, $87, $1B
.db $12, $11, $10, $F6, $CD, $B2, $1E, $06, $08, $78, $D6, $0C, $ED, $44, $CD, $7D
.db $18, $20, $03, $10, $F4, $C9, $D5, $7B, $CD, $A9, $18, $CD, $B1, $05, $E6, $07
.db $C6, $04, $CD, $7D, $18, $CA, $C6, $1E, $E5, $DD, $E1, $D1, $D5, $CD, $B1, $05
.db $E6, $03, $82, $CD, $5E, $12, $CD, $05, $31, $D1, $C9, $78, $CD, $87, $1B, $12
.db $11, $11, $D8, $06, $08, $C5, $78, $D6, $0C, $ED, $44, $CD, $7D, $18, $CA, $1F
.db $1F, $E5, $DD, $E1, $D5, $7B, $CD, $A9, $18, $D1, $D5, $7A, $FE, $D8, $20, $06
.db $CD, $B1, $05, $E6, $0F, $82, $CD, $5E, $12, $CD, $05, $31, $D1, $3A, $E6, $C2
.db $FE, $49, $28, $04, $C1, $10, $CE, $C9, $C1, $C9, $78, $CD, $87, $1B, $12, $11
.db $12, $F4, $CD, $B2, $1E, $CD, $B2, $1E, $C3, $B2, $1E, $78, $CD, $87, $1B, $12
.db $3E, $AB, $32, $04, $C0, $3A, $E8, $C2, $E6, $20, $28, $2A, $3A, $48, $C4, $47
.db $3A, $08, $C4, $B8, $0E, $03, $30, $08, $CD, $B1, $05, $E6, $03, $28, $17, $4F
.db $11, $0D, $00, $06, $08, $78, $D6, $0C, $ED, $44, $CD, $7D, $18, $28, $05, $19
.db $7E, $B7, $28, $07, $10, $EF, $21, $72, $B1, $18, $04, $71, $21, $E0, $B1, $CD
.db $CF, $31, $C3, $64, $34, $78, $CD, $87, $1B, $12, $AF, $32, $C4, $C2, $3A, $E7
.db $C2, $B7, $28, $0B, $3A, $9E, $C2, $B7, $20, $17, $CD, $7A, $68, $28, $12, $3A
.db $C4, $C2, $B7, $21, $72, $B1, $28, $03, $21, $CD, $B2, $CD, $CF, $31, $C3, $64
.db $34, $3E, $BC, $32, $04, $C0, $21, $5F, $B2, $CD, $CF, $31, $CD, $64, $34, $3E
.db $05, $32, $67, $C2, $C9, $78, $CD, $87, $1B, $12, $3E, $AB, $32, $04, $C0, $3A
.db $C2, $C2, $CD, $8E, $18, $C8, $CD, $7D, $18, $CB, $FE, $21, $2F, $B2, $CD, $CF
.db $31, $C3, $64, $34, $78, $CD, $87, $1B, $12, $3E, $AB, $32, $04, $C0, $3A, $48
.db $C4, $47, $3A, $08, $C4, $B8, $38, $19, $CD, $B1, $05, $FE, $B2, $30, $12, $06
.db $08, $78, $D6, $0C, $ED, $44, $CD, $7D, $18, $28, $04, $CB, $76, $28, $07, $10
.db $F0, $21, $72, $B1, $18, $05, $CB, $F6, $21, $4C, $B2, $CD, $CF, $31, $C3, $64
.db $34, $78, $CD, $87, $1B, $12, $3E, $AB, $32, $04, $C0, $3A, $00, $C8, $FE, $0E
.db $28, $1F, $3A, $9E, $C2, $B7, $21, $69, $B5, $20, $10, $CD, $4A, $68, $21, $69
.db $B5, $28, $08, $69, $26, $CB, $36, $00, $21, $8E, $B2, $CD, $CF, $31, $C3, $64
.db $34, $3A, $0F, $C8, $FE, $3D, $21, $7F, $B2, $28, $03, $21, $8E, $B2, $CD, $CF
.db $31, $3E, $3D, $32, $0F, $C8, $C3, $EE, $28, $78, $CD, $87, $1B, $12, $3A, $9E
.db $C2, $B7, $28, $09, $21, $72, $B1, $CD, $CF, $31, $C3, $64, $34, $3E, $BF, $32
.db $04, $C0, $21, $9C, $B5, $CD, $CF, $31, $CD, $64, $34, $3E, $FF, $32, $D8, $C2
.db $21, $02, $C2, $36, $08, $C9, $78, $CD, $87, $1B, $12, $3E, $AB, $32, $04, $C0
.db $3A, $9E, $C2, $B7, $28, $09, $21, $72, $B1, $CD, $CF, $31, $C3, $64, $34, $06
.db $01, $CD, $E9, $6B, $E6, $07, $FE, $06, $20, $EC, $CB, $7E, $20, $E8

_LABEL_20B9_181:
	ld   a, $04
	ld   ($C2D8), a
	ret


; Data from 20BF to 28DA (2076 bytes)
.db $78, $CD, $87, $1B, $12, $CD, $82, $36
.db $CB, $61, $20, $2A, $F5, $3E, $AB, $32
.db $04, $C0, $F1, $32, $C2, $C2, $CD, $7D
.db $18, $28, $05, $21, $09, $B7, $18, $10
.db $36, $01, $3E, $06, $85, $5F, $54, $EB
.db $13, $ED, $A0, $ED, $A0, $21, $B0, $B5
.db $CD, $CF, $31, $CD, $64, $34, $C3, $CC
.db $36, $78, $CD, $87, $1B, $12, $3E, $AC
.db $32, $04, $C0, $3A, $00, $C8, $FE, $0E
.db $28, $1F, $3A, $9E, $C2, $B7, $21, $24
.db $B4, $20, $0B, $CD, $4A, $68, $21, $24
.db $B4, $28, $03, $21, $04, $B4, $CD, $CF
.db $31, $3E, $D5, $32, $04, $C0, $C3, $64
.db $34, $3A, $0F, $C8, $FE, $3D, $21, $24
.db $B4, $28, $03, $21, $04, $B4, $CD, $CF
.db $31, $3E, $D5, $32, $04, $C0, $C3, $DB
.db $28, $78, $CD, $87, $1B, $12, $3E, $AB
.db $32, $04, $C0, $3A, $9E, $C2, $B7, $20
.db $09, $21, $72, $B1, $CD, $CF, $31, $C3
.db $64, $34, $21, $9C, $B5, $CD, $CF, $31
.db $CD, $64, $34, $3E, $08, $32, $D8, $C2
.db $C9, $3A, $E2, $C4, $B7, $C2, $75, $21
.db $CD, $D5, $34, $C3, $56, $36, $CD, $D5
.db $34, $CB, $61, $C2, $F5, $21, $3A, $C4
.db $C2, $FE, $21, $38, $3D, $FE, $24, $30
.db $39, $D6, $21, $87, $87, $C6, $04, $47
.db $3A, $0E, $C3, $B7, $28, $2C, $B8, $20
.db $29, $FE, $08, $28, $07, $C5, $CD, $56
.db $76, $C1, $18, $05, $C5, $CD, $32, $77
.db $C1, $21, $FB, $B2, $20, $0B, $AF, $32
.db $0E, $C3, $3D, $32, $D8, $C2, $21, $0A
.db $B3, $CD, $CF, $31, $CD, $64, $34, $C3
.db $F5, $21, $06, $04, $78, $D6, $04, $ED
.db $44, $CD, $7D, $18, $C2, $D3, $21, $10
.db $F3, $C3, $F5, $21, $32, $C2, $C2, $CD
.db $59, $37, $21, $72, $7A, $22, $69, $C2
.db $3E, $02, $32, $6E, $C2, $CD, $51, $2D
.db $CB, $61, $C2, $F2, $21, $21, $FB, $21
.db $CD, $E6, $00, $CD, $6B, $37, $CD, $56
.db $36, $C3, $3C, $2F, $01, $22, $C8, $26
.db $52, $27, $3A, $C4, $C2, $21, $0A, $22
.db $C3, $E6, $00, $8A, $22, $8A, $22, $8A
.db $22, $8A, $22, $99, $22, $8A, $22, $8A
.db $22, $8A, $22, $8A, $22, $8A, $22, $8A
.db $22, $8A, $22, $8A, $22, $8A, $22, $8A
.db $22, $8A, $22, $8A, $22, $8A, $22, $8A
.db $22, $8A, $22, $8A, $22, $8A, $22, $8A
.db $22, $8A, $22, $8A, $22, $8A, $22, $8A
.db $22, $8A, $22, $8A, $22, $8A, $22, $8A
.db $22, $8A, $22, $8A, $22, $AF, $22, $E5
.db $22, $1A, $23, $33, $23, $37, $23, $69
.db $23, $9D, $23, $E2, $23, $EC, $23, $16
.db $24, $2F, $24, $91, $24, $E9, $24, $24
.db $25, $37, $25, $89, $25, $C3, $25, $13
.db $26, $B0, $26, $B0, $26, $31, $26, $B0
.db $26, $B0, $26, $B0, $26, $B0, $26, $B0
.db $26, $B0, $26, $B0, $26, $B0, $26, $7C
.db $26, $B0, $26, $21, $AC, $B2, $CD, $CF
.db $31, $21, $CD, $B2, $CD, $CF, $31, $C3
.db $64, $34, $21, $AC, $B2, $CD, $CF, $31
.db $3A, $9D, $C2, $B7, $C2, $89, $1F, $21
.db $12, $B3, $CD, $CF, $31, $C3, $64, $34
.db $21, $AC, $B2, $CD, $CF, $31, $1E, $04
.db $3A, $08, $C3, $FE, $04, $21, $E3, $B2
.db $30, $1E, $3A, $9E, $C2, $B7, $28, $18
.db $C5, $D5, $CD, $56, $76, $D1, $C1, $21
.db $E3, $B2, $20, $0C, $7B, $32, $0E, $C3
.db $3E, $FF, $32, $D8, $C2, $21, $05, $B3
.db $CD, $CF, $31, $C3, $64, $34, $21, $AC
.db $B2, $CD, $CF, $31, $3A, $08, $C3, $FE
.db $04, $21, $E3, $B2, $30, $1F, $3A, $9E
.db $C2, $B7, $28, $19, $C5, $D5, $CD, $C1
.db $76, $D1, $C1, $21, $E3, $B2, $20, $0D
.db $3E, $08, $32, $0E, $C3, $3E, $FF, $32
.db $D8, $C2, $21, $05, $B3, $CD, $CF, $31
.db $C3, $64, $34, $21, $AC, $B2, $CD, $CF
.db $31, $3A, $08, $C3, $FE, $02, $1E, $0C
.db $CA, $B7, $22, $21, $E3, $B2, $CD, $CF
.db $31, $C3, $64, $34, $16, $0A, $18, $02
.db $16, $28, $3A, $9D, $C2, $B7, $3A, $67
.db $C2, $20, $09, $D5, $CD, $65, $36, $D1
.db $CB, $61, $20, $16, $32, $C2, $C2, $CD
.db $8E, $18, $28, $0E, $D5, $21, $AC, $B2
.db $CD, $CF, $31, $D1, $CD, $5F, $1E, $CD
.db $7C, $27, $3A, $9D, $C2, $B7, $C0, $C3
.db $BB, $36, $21, $AC, $B2, $CD, $CF, $31
.db $3E, $C2, $32, $04, $C0, $3A, $9D, $C2
.db $B7, $20, $15, $21, $C4, $BF, $CD, $CF
.db $31, $3E, $D5, $32, $04, $C0, $3A, $9E
.db $C2, $B7, $CA, $78, $20, $C3, $64, $34
.db $21, $22, $B3, $CD, $CF, $31, $3E, $D5
.db $32, $04, $C0, $C3, $64, $34, $3A, $9D
.db $C2, $B7, $28, $0F, $21, $66, $B3, $CD
.db $CF, $31, $21, $5C, $B3, $CD, $CF, $31
.db $C3, $64, $34, $3A, $9E, $C2, $B7, $28
.db $0F, $21, $66, $B3, $CD, $CF, $31, $21
.db $75, $B3, $CD, $CF, $31, $C3, $64, $34
.db $3A, $15, $C3, $B7, $20, $EB, $21, $AC
.db $B2, $CD, $CF, $31, $CD, $64, $34, $CD
.db $7C, $27, $3E, $FF, $32, $15, $C3, $32
.db $D8, $C2, $C9, $3A, $9D, $C2, $B7, $C4
.db $7C, $27, $C3, $99, $22, $21, $AC, $B2
.db $CD, $CF, $31, $3A, $9D, $C2, $B7, $28
.db $09, $21, $CD, $B2, $CD, $CF, $31, $C3
.db $64, $34, $3A, $9E, $C2, $B7, $F5, $C4
.db $7C, $27, $F1, $C2, $59, $21, $21, $12
.db $B3, $CD, $CF, $31, $C3, $64, $34, $CD
.db $7C, $27, $21, $AC, $B2, $CD, $CF, $31
.db $3A, $9D, $C2, $B7, $C2, $17, $1B, $21
.db $CD, $B2, $CD, $CF, $31, $C3, $64, $34
.db $21, $66, $B3, $CD, $CF, $31, $3A, $9D
.db $C2, $B7, $28, $09, $21, $5C, $B3, $CD
.db $CF, $31, $C3, $64, $34, $3A, $DB, $C2
.db $FE, $A3, $28, $11, $CD, $BE, $24, $21
.db $69, $B5, $20, $03, $21, $E3, $B3, $CD
.db $CF, $31, $C3, $64, $34, $CD, $BE, $24
.db $28, $F2, $21, $B1, $B3, $CD, $CF, $31
.db $CD, $64, $34, $CD, $7C, $27, $FD, $21
.db $20, $C4, $FD, $36, $0A, $06, $FD, $36
.db $0B, $13, $CD, $F1, $16, $3E, $02, $32
.db $F0, $C4, $21, $00, $C6, $36, $00, $21
.db $0A, $C5, $36, $FF, $3E, $05, $32, $D8
.db $C2, $C9, $21, $66, $B3, $CD, $CF, $31
.db $3A, $9D, $C2, $B7, $28, $09, $21, $5C
.db $B3, $CD, $CF, $31, $C3, $64, $34, $3A
.db $DB, $C2, $FE, $A1, $28, $1F, $CD, $BE
.db $24, $21, $E3, $B3, $28, $03, $21, $F9
.db $B3, $CD, $CF, $31, $C3, $64, $34, $3A
.db $00, $C4, $57, $3A, $20, $C4, $5F, $3A
.db $30, $C4, $B2, $B3, $C9, $CD, $BE, $24
.db $20, $09, $21, $E3, $B3, $CD, $CF, $31
.db $C3, $64, $34, $21, $B1, $B3, $CD, $CF
.db $31, $CD, $7C, $27, $CD, $46, $55, $C3
.db $64, $34, $3A, $9E, $C2, $B7, $28, $0F
.db $21, $66, $B3, $CD, $CF, $31, $21, $69
.db $B5, $CD, $CF, $31, $C3, $64, $34, $21
.db $AC, $B2, $CD, $CF, $31, $06, $01, $CD
.db $E9, $6B, $E6, $07, $FE, $05, $20, $0C
.db $CB, $7E, $20, $08, $3E, $03, $32, $D8
.db $C2, $C3, $64, $34, $21, $CD, $B2, $CD
.db $CF, $31, $C3, $64, $34, $CD, $7C, $27
.db $21, $AC, $B2, $CD, $CF, $31, $3A, $9D
.db $C2, $B7, $C2, $36, $1B, $C3, $02, $21
.db $21, $58, $B4, $CD, $CF, $31, $3A, $9D
.db $C2, $B7, $28, $09, $21, $31, $B4, $CD
.db $CF, $31, $C3, $64, $34, $3A, $DB, $C2
.db $FE, $AF, $28, $09, $21, $12, $B3, $CD
.db $CF, $31, $C3, $64, $34, $C5, $CD, $A6
.db $7C, $C1, $3E, $38, $CD, $2E, $28, $28
.db $09, $21, $9A, $B4, $CD, $CF, $31, $C3
.db $64, $34, $CD, $7C, $27, $21, $71, $B4
.db $CD, $CF, $31, $CD, $64, $34, $3E, $31
.db $32, $C4, $C2, $CD, $2E, $28, $C8, $C3
.db $9F, $27, $21, $58, $B4, $CD, $CF, $31
.db $3A, $9D, $C2, $B7, $28, $09, $21, $5C
.db $B3, $CD, $CF, $31, $C3, $64, $34, $3A
.db $DB, $C2, $FE, $B0, $28, $09, $21, $12
.db $B3, $CD, $CF, $31, $C3, $64, $34, $3A
.db $DC, $C2, $FE, $FF, $28, $F0, $21, $D5
.db $B4, $CD, $CF, $31, $3E, $06, $32, $D8
.db $C2, $C3, $64, $34, $3A, $10, $C4, $B7
.db $28, $0E, $3A, $09, $C3, $FE, $17, $28
.db $35, $3A, $DB, $C2, $FE, $B0, $28, $18
.db $21, $66, $B3, $CD, $CF, $31, $3A, $9D
.db $C2, $B7, $21, $00, $B5, $28, $03, $21
.db $5C, $B3, $CD, $CF, $31, $C3, $64, $34
.db $3A, $DC, $C2, $FE, $FF, $20, $E1, $21
.db $43, $B7, $CD, $CF, $31, $CD, $64, $34
.db $3E, $07, $32, $D8, $C2, $C9, $3A, $9E
.db $C2, $B7, $28, $CC, $3A, $9D, $C2, $B7
.db $20, $C6, $18, $E3, $3A, $9D, $C2, $B7
.db $28, $0F, $21, $AC, $B2, $CD, $CF, $31
.db $21, $2C, $B5, $CD, $CF, $31, $C3, $64
.db $34, $21, $44, $B5, $CD, $CF, $31, $C3
.db $64, $34, $3A, $9E, $C2, $B7, $28, $18
.db $21, $66, $B3, $CD, $CF, $31, $3A, $9D
.db $C2, $B7, $21, $75, $B3, $28, $03, $21
.db $5C, $B3, $CD, $CF, $31, $C3, $64, $34
.db $3A, $9D, $C2, $B7, $20, $E2, $21, $AC
.db $B2, $CD, $CF, $31, $3A, $0A, $C3, $E6
.db $03, $21, $01, $BD, $28, $11, $FE, $01
.db $21, $ED, $BC, $28, $0A, $FE, $02, $21
.db $0C, $BD, $28, $03, $21, $F7, $BC, $CD
.db $CF, $31, $C3, $64, $34, $3A, $9E, $C2
.db $B7, $C2, $EF, $24, $21, $AC, $B2, $CD
.db $CF, $31, $06, $01, $CD, $E9, $6B, $CB
.db $7E, $20, $15, $E6, $07, $FE, $05, $06
.db $03, $28, $06, $FE, $06, $20, $09, $06
.db $04, $78, $32, $D8, $C2, $C3, $64, $34
.db $21, $CD, $B2, $CD, $CF, $31, $C3, $64
.db $34, $21, $AC, $B2, $CD, $CF, $31, $3A
.db $9D, $C2, $B7, $21, $12, $B3, $20, $03
.db $21, $55, $B5, $CD, $CF, $31, $C3, $64
.db $34, $21, $FF, $FF, $36, $02, $3A, $C4
.db $C2, $21, $AB, $7F, $85, $6F, $8C, $95
.db $67, $7E, $0F, $0F, $0F, $0F, $E6, $0F
.db $C2, $EB, $26, $21, $F0, $B5, $CD, $CF
.db $31, $C3, $64, $34, $57, $D5, $E5, $CD
.db $65, $36, $E1, $D1, $CB, $61, $C2, $41
.db $27, $CD, $8E, $18, $CA, $41, $27, $32
.db $C2, $C2, $4F, $3C, $47, $7A, $0F, $10
.db $FD, $D2, $47, $27, $79, $87, $87, $87
.db $87, $11, $0A, $C4, $83, $5F, $8A, $93
.db $57, $7E, $E6, $03, $83, $5F, $1A, $2A
.db $9B, $C2, $77, $F5, $3A, $C4, $C2, $12
.db $21, $B6, $B2, $CD, $CF, $31, $3A, $C2
.db $C2, $CD, $07, $37, $CD, $25, $2D, $CD
.db $4D, $37, $CD, $64, $34, $F1, $B7, $CC
.db $7C, $27, $CD, $BA, $17, $C3, $BB, $36
.db $21, $DE, $B5, $CD, $CF, $31, $CD, $64
.db $34, $18, $EF, $21, $FF, $FF, $36, $02
.db $3A, $C4, $C2, $21, $AB, $7F, $85, $6F
.db $8C, $95, $67, $7E, $E6, $04, $28, $09
.db $21, $DE, $B6, $CD, $CF, $31, $C3, $64
.db $34, $21, $C2, $B2, $CD, $CF, $31, $CD
.db $7C, $27, $C3, $64, $34, $2A, $9B, $C2
.db $C5, $5D, $54, $23, $3E, $D7, $93, $E6
.db $1F, $28, $05, $4F, $06, $00, $ED, $B0
.db $21, $C0, $C4, $3A, $E2, $C4, $3D, $32
.db $E2, $C4, $85, $6F, $36, $00, $C1, $C9
.db $3A, $E2, $C4, $FE, $18, $30, $16, $21
.db $C0, $C4, $85, $6F, $3A, $C4, $C2, $77
.db $3A, $E2, $C4, $3C, $32, $E2, $C4, $3E
.db $B3, $32, $04, $C0, $C9, $21, $71, $B6
.db $CD, $CF, $31, $CD, $19, $2D, $28, $11
.db $21, $C1, $B6, $CD, $CF, $31, $CD, $19
.db $2D, $20, $06, $21, $D0, $B6, $C3, $CF
.db $31, $3A, $C4, $C2, $F5, $21, $8C, $B6
.db $CD, $CF, $31, $CD, $D5, $34, $CD, $56
.db $36, $CB, $61, $20, $3B, $21, $FF, $FF
.db $36, $02, $3A, $C4, $C2, $21, $AB, $7F
.db $85, $6F, $8C, $95, $67, $7E, $E6, $04
.db $28, $0D, $21, $DE, $B6, $CD, $CF, $31
.db $F1, $32, $C4, $C2, $C3, $D8, $27, $21
.db $9E, $B6, $CD, $CF, $31, $F1, $32, $C4
.db $C2, $2A, $9B, $C2, $77, $3E, $B3, $32
.db $04, $C0, $21, $AD, $B6, $C3, $CF, $31
.db $F1, $32, $C4, $C2, $C3, $BC, $27, $21
.db $C0, $C4, $06, $18, $BE, $C8, $23, $10
.db $FB, $C9, $3A, $00, $C8, $FE, $0E, $20
.db $0F, $CD, $B7, $30, $21, $69, $B5, $CD
.db $CF, $31, $CD, $DB, $28, $C3, $D9, $2E
.db $2A, $05, $C3, $7D, $C6, $60, $38, $04
.db $FE, $C0, $38, $03, $C6, $40, $24, $6F
.db $29, $29, $29, $29, $7C, $2A, $01, $C3
.db $01, $80, $00, $09, $29, $29, $29, $29
.db $6F, $3A, $09, $C3, $FE, $07, $20, $1D
.db $7D, $FE, $28, $20, $49, $7C, $FE, $1E
.db $20, $44, $3A, $07, $C5, $B7, $28, $3E
.db $FE, $FF, $28, $3A, $3E, $FF, $32, $07
.db $C5, $3E, $26, $18, $1D, $FE, $01, $20
.db $2D, $7D, $FE, $30, $20, $28, $7C, $FE
.db $48, $20, $23, $3A, $09, $C5, $B7, $28
.db $1D, $3A, $2C, $C4, $47, $3E, $1F, $B8
.db $28, $14, $32, $C4, $C2, $CD, $2E, $28
.db $28, $0C, $21, $92, $B5, $CD, $CF, $31
.db $CD, $9F, $27, $C3, $64, $34, $3A, $DB
.db $C2, $FE, $A2, $CA, $66, $55, $FE, $A3
.db $CA, $8C, $55, $21, $69, $B5, $CD, $CF
.db $31, $C3, $64, $34

_LABEL_28DB_223:
	ld   hl, $B656
	call _LABEL_31CF_41
	call _LABEL_37A3_224
	push af
	call _LABEL_37C3_225

; Data from 28E8 to 2D24 (1085 bytes)
.db $CD, $64, $34, $F1, $B7, $C0, $3E, $B0
.db $32, $04, $C0, $2A, $E1, $C2, $36, $FF
.db $3E, $01, $32, $0A, $C8, $C5, $CD, $B9
.db $18, $C1, $3A, $0F, $C8, $FE, $3D, $C4
.db $50, $29, $2A, $DD, $C2, $7C, $B5, $20
.db $14, $3A, $DF, $C2, $B7, $20, $0E, $21
.db $65, $B6, $CD, $CF, $31, $3E, $D0, $32
.db $00, $C9, $C3, $64, $34, $2A, $DD, $C2
.db $22, $C5, $C2, $CD, $7A, $29, $7C, $B5
.db $21, $48, $B6, $C4, $CF, $31, $3A, $DF
.db $C2, $32, $C4, $C2, $B7, $28, $09, $21
.db $92, $B5, $CD, $CF, $31, $CD, $9F, $27
.db $3E, $D0, $32, $00, $C9, $C3, $64, $34
.db $3A, $0F, $C8, $FE, $3E, $20, $0A, $06
.db $04, $78, $3D, $CD, $66, $29, $10, $F9
.db $C9, $CD, $B1, $05, $E6, $03, $CD, $7D
.db $18, $C8, $23, $E5, $66, $2E, $00, $1E
.db $03, $CD, $FE, $04, $D1, $EB, $7E, $92
.db $77, $C9, $EB, $2A, $E0, $C4, $19, $30
.db $03, $21, $FF, $FF, $22, $E0, $C4, $EB
.db $C9, $CD, $25, $2D, $C9, $21, $C8, $B8
.db $CD, $CF, $31, $CD, $19, $2D, $C2, $55
.db $2A, $3A, $F0, $C4, $B7, $21, $25, $B9
.db $C4, $CF, $31, $CD, $65, $36, $CB, $61
.db $C2, $52, $2A, $32, $C2, $C2, $CD, $7D
.db $18, $20, $09, $21, $30, $B7, $CD, $CF
.db $31, $C3, $48, $2A, $E5, $FD, $E1, $FD
.db $7E, $01, $FD, $BE, $06, $20, $1D, $FD
.db $7E, $02, $FD, $BE, $07, $20, $15, $21
.db $6B, $B9, $CD, $CF, $31, $3A, $F0, $C4
.db $B7, $20, $6D, $21, $64, $B9, $CD, $CF
.db $31, $C3, $64, $34, $FD, $7E, $06, $FD
.db $96, $01, $47, $FD, $7E, $07, $FD, $96
.db $02, $80, $6F, $26, $00, $22, $C5, $C2
.db $21, $E0, $B8, $CD, $CF, $31, $CD, $E9
.db $39, $CD, $19, $2D, $F5, $C4, $12, $3A
.db $F1, $20, $3D, $ED, $5B, $C5, $C2, $2A
.db $E0, $C4, $B7, $ED, $52, $38, $47, $22
.db $E0, $C4, $CD, $F7, $39, $3E, $C1, $32
.db $04, $C0, $FD, $7E, $06, $FD, $77, $01
.db $FD, $7E, $07, $FD, $77, $02, $21, $38
.db $B9, $CD, $CF, $31, $CD, $12, $3A, $3A
.db $F0, $C4, $B7, $28, $2D, $21, $0A, $B9
.db $CD, $CF, $31, $CD, $19, $2D, $20, $0A
.db $CD, $BB, $36, $3A, $F0, $C4, $B7, $C2
.db $99, $29, $CD, $BB, $36, $21, $51, $B9
.db $CD, $CF, $31, $C3, $64, $34, $CD, $12
.db $3A, $CD, $BB, $36, $21, $57, $BD, $CD
.db $CF, $31, $C3, $64, $34, $01, $FF, $04
.db $78, $3D, $CD, $7D, $18, $28, $0B, $3E
.db $06, $85, $5F, $54, $EB, $13, $ED, $A0
.db $ED, $A0, $10, $EC, $C9, $3A, $DB, $C2
.db $32, $17, $C3, $21, $7F, $B9, $CD, $CF
.db $31, $CD, $19, $2D, $B7, $C2, $46, $2B
.db $3A, $F0, $C4, $B7, $CA, $31, $2B, $21
.db $D3, $B9, $CD, $CF, $31, $CD, $65, $36
.db $CB, $61, $C2, $43, $2B, $CD, $7D, $18
.db $20, $7F, $32, $C2, $C2, $E5, $FD, $E1
.db $FD, $7E, $05, $87, $87, $6F, $26, $00
.db $5D, $54, $29, $29, $19, $22, $C5, $C2
.db $21, $EE, $B9, $CD, $CF, $31, $CD, $E9
.db $39, $CD, $19, $2D, $F5, $C4, $12, $3A
.db $F1, $20, $3A, $21, $B0, $B9, $CD, $CF
.db $31, $ED, $5B, $C5, $C2, $2A, $E0, $C4
.db $B7, $ED, $52, $DA, $26, $2B, $22, $E0
.db $C4, $CD, $F7, $39, $FD, $36, $00, $01
.db $FD, $7E, $06, $FD, $77, $01, $FD, $7E
.db $07, $FD, $77, $02, $21, $C4, $B9, $CD
.db $CF, $31, $3E, $C5, $32, $04, $C0, $CD
.db $33, $2D, $CD, $12, $3A, $21, $E5, $B9
.db $CD, $CF, $31, $CD, $19, $2D, $20, $23
.db $CD, $BB, $36, $C3, $98, $2A, $21, $9F
.db $BD, $CD, $CF, $31, $CD, $12, $3A, $18
.db $E4, $32, $C2, $C2, $21, $56, $BA, $CD
.db $CF, $31, $3A, $F0, $C4, $B7, $20, $D5
.db $CD, $25, $2D, $CD, $BB, $36, $21, $3C
.db $BA, $CD, $CF, $31, $21, $04, $BA, $CD
.db $CF, $31, $CD, $58, $2B, $C3, $64, $34
.db $FD, $21, $00, $C4, $11, $AF, $B8, $AF
.db $CD, $84, $2B, $FD, $21, $10, $C4, $11
.db $9F, $B9, $3E, $01, $CD, $84, $2B, $FD
.db $21, $20, $C4, $11, $8F, $BA, $3E, $02
.db $CD, $84, $2B, $FD, $21, $30, $C4, $11
.db $7F, $BB, $3E, $03, $32, $C2, $C2, $FD
.db $CB, $00, $46, $C8, $FD, $7E, $05, $FE
.db $1E, $38, $06, $21, $FF, $BD, $C3, $CF
.db $31, $21, $FF, $FF, $36, $03, $6F, $26
.db $00, $29, $29, $29, $19, $E5, $DD, $E1
.db $FD, $5E, $03, $FD, $56, $04, $DD, $6E
.db $04, $DD, $66, $05, $B7, $ED, $52, $22
.db $C5, $C2, $21, $1F, $BA, $C3, $CF, $31
.db $21, $C7, $B7, $CD, $CF, $31, $CD, $19
.db $2D, $28, $09, $21, $E3, $B7, $CD, $CF
.db $31, $C3, $64, $34, $C5, $CD, $CD, $38
.db $CD, $E9, $39, $C1, $21, $F5, $B7, $CD
.db $CF, $31, $C5, $CD, $D9, $38, $CB, $61
.db $C1, $20, $42, $3A, $E2, $C4, $FE, $18
.db $30, $4A, $7E, $32, $C4, $C2, $23, $5E
.db $23, $56, $2A, $E0, $C4, $B7, $ED, $52
.db $38, $3F, $3A, $C4, $C2, $FE, $40, $30
.db $3D, $22, $E0, $C4, $CD, $F7, $39, $3A
.db $C4, $C2, $FE, $21, $38, $09, $FE, $24
.db $30, $05, $CD, $2E, $28, $28, $03, $CD
.db $9F, $27, $21, $07, $B8, $CD, $CF, $31
.db $CD, $19, $2D, $28, $AF, $21, $E3, $B7
.db $CD, $CF, $31, $CD, $12, $3A, $CD, $99
.db $39, $C3, $64, $34, $21, $13, $B8, $18
.db $EF, $21, $57, $BD, $18, $EA, $3A, $EC
.db $C2, $FE, $02, $30, $1A, $FE, $01, $21
.db $42, $01, $38, $03, $21, $44, $01, $3C
.db $32, $EC, $C2, $CD, $5A, $57, $CD, $12
.db $3A, $CD, $99, $39, $C3, $64, $34, $AF
.db $32, $EC, $C2, $E5, $3E, $33, $32, $C4
.db $C2, $CD, $2E, $28, $E1, $28, $CF, $22
.db $E0, $C4, $CD, $F7, $39, $CD, $9F, $27
.db $21, $46, $01, $CD, $5A, $57, $CD, $12
.db $3A, $CD, $99, $39, $C3, $64, $34, $21
.db $32, $B8, $CD, $CF, $31, $C3, $C6, $2B
.db $21, $5D, $B8, $CD, $CF, $31, $CD, $77
.db $37, $F5, $C5, $CD, $97, $37, $C1, $F1
.db $CB, $61, $C2, $EA, $2C, $B7, $CA, $D4
.db $2B, $21, $82, $B8, $CD, $CF, $31, $CD
.db $D5, $34, $CB, $61, $F5, $CD, $56, $36
.db $F1, $C2, $EA, $2C, $21, $FF, $FF, $36
.db $03, $3A, $C4, $C2, $E6, $3F, $87, $21
.db $2F, $B8, $85, $6F, $8C, $95, $67, $7E
.db $23, $66, $6F, $22, $C5, $C2, $B4, $20
.db $12, $21, $7E, $BD, $CD, $CF, $31, $C3
.db $B1, $2C, $21, $E3, $B7, $CD, $CF, $31
.db $C3, $64, $34, $21, $9A, $B8, $CD, $CF
.db $31, $CD, $19, $2D, $28, $03, $C3, $B1
.db $2C, $CD, $7C, $27, $2A, $C5, $C2, $CD
.db $7A, $29, $21, $BC, $B8, $CD, $CF, $31
.db $CD, $19, $2D, $CA, $B1, $2C, $C3, $EA
.db $2C

LABEL_2D19:
	push	bc
	call	_LABEL_37A3_224
	push	af
	call	_LABEL_37C3_225
	pop	af
	pop	bc
	or	a
	ret

_LABEL_2D25_44:
	ld   a, $08
	call _LABEL_52_31
	ld   a, ($C205)
	and  $30
	jp   z, _LABEL_2D25_44
	ret

_LABEL_2D33_45:
	ld   b, $1E
	jr   _LABEL_2D39_75


; Data from 2D37 to 2D38 (2 bytes)
.db $06, $B4

_LABEL_2D39_75:
	ld   a, $08
	call _LABEL_52_31
	ld   a, ($C205)
	and  $30
	ret  nz

	djnz _LABEL_2D39_75
	ret

_LABEL_2D47_46:
	ld   b, $D0
_LABEL_2D49_74:
	ld   a, $08
	call _LABEL_52_31
	djnz _LABEL_2D49_74
	ret

_LABEL_2D51_33:
	ld   a, $FF
	ld   ($C268), a
	ld   hl, $0000
	ld   ($C26B), hl
	xor  a
	ld   ($C26D), a
_LABEL_2D60_37:
	ld   a, $08
	call _LABEL_52_31
	ld   a, ($C205)
	and  $03
	jp   z, _LABEL_2D8B_34
	ld   c, a
	ld   hl, $C26E
	ld   a, ($C26B)
	bit  0, c
	jr   z, _LABEL_2D7D_35
	sub  $01
	jr   nc, _LABEL_2D7D_35
	ld   a, (hl)
_LABEL_2D7D_35:
	bit  1, c
	jr   z, _LABEL_2D88_36
	inc  a
	cp   (hl)
	jr   c, _LABEL_2D88_36
	jr   z, _LABEL_2D88_36
	xor  a
_LABEL_2D88_36:
	ld   ($C26B), a
_LABEL_2D8B_34:
	ld   a, ($C205)
	and  $30
	jp   z, _LABEL_2D60_37
	ld   c, a
	xor  a
	ld   ($C26D), a
	ld   a, $08
	call _LABEL_52_31
	xor  a
	ld   ($C268), a
	ld   a, ($C26B)
	ret


; Data from 2DA5 to 2FD7 (563 bytes)
.db $3E, $FF, $32, $68, $C2, $3E, $08, $CD, $52, $00, $3A, $05, $C2, $4F, $E6, $03
.db $CA, $D9, $2D, $4F, $21, $6E, $C2, $3A, $6B, $C2, $CB, $41, $28, $05, $D6, $01
.db $30, $01, $7E, $CB, $49, $28, $07, $3C, $BE, $38, $03, $28, $01, $AF, $32, $6B
.db $C2, $C3, $FE, $2D, $2A, $99, $C2, $7C, $B7, $28, $1E, $CB, $51, $28, $08, $7D
.db $D6, $08, $30, $10, $7C, $18, $0D, $CB, $59, $28, $0E, $7D, $C6, $08, $BC, $38
.db $03, $28, $01, $AF, $32, $99, $C2, $18, $32, $79, $E6, $30, $28, $A7, $AF, $32
.db $6D, $C2, $3E, $08, $CD, $52, $00, $AF, $32, $68, $C2, $CB, $61, $C0, $3A, $E2
.db $C4, $FE, $09, $3A, $6B, $C2, $D8, $B7, $28, $02, $3D, $C9, $2A, $99, $C2, $7D
.db $C6, $08, $BC, $38, $03, $28, $01, $AF, $32, $99, $C2, $AF, $32, $68, $C2, $CD
.db $2D, $35, $3A, $99, $C2, $6F, $3A, $E2, $C4, $3D, $FE, $08, $26, $00, $38, $02
.db $26, $01, $95, $FE, $08, $38, $02, $3E, $07, $E6, $07, $84, $32, $6E, $C2, $2A
.db $6B, $C2, $BD, $30, $01, $6F, $65, $22, $6B, $C2, $C3, $A5, $2D

LABEL_2E62:
.db	$3A, $68, $C2
.db $B7, $C8, $3A, $02, $C2, $FE, $03, $01, $F3, $F0, $20, $03, $01, $00, $FF, $2A
.db $69, $C2, $3A, $6C, $C2, $CB, $3F, $1E, $00, $CB, $1B, $57, $19, $EB, $CF, $79
.db $D3, $BE, $2A, $69, $C2, $3A, $6B, $C2, $32, $6C, $C2, $CB, $3F, $1E, $00, $CB
.db $1B, $57, $19, $EB, $CF, $3A, $6D, $C2, $3D, $E6, $0F, $32, $6D, $C2, $CB, $5F
.db $78, $20, $01, $79, $D3, $BE, $C9, $21, $00, $D7, $11, $02, $7B, $01, $0C, $03
.db $CD, $A6, $3A, $3A, $67, $C2, $87, $87, $6F, $87, $87, $87, $85, $21, $0B, $B4
.db $85, $6F, $8C, $95, $67, $C3, $57, $3A, $21, $00, $D7, $11, $02, $7B, $01, $0C
.db $03, $C3, $57, $3A, $21, $24, $D7, $11, $80, $7C, $01, $40, $06, $CD, $A6, $3A
.db $21, $AB, $B4, $11, $80, $7C, $DD, $21, $00, $C4, $CD, $16, $2F, $21, $DB, $B4
.db $11, $90, $7C, $DD, $21, $10, $C4, $CD, $16, $2F, $21, $0B, $B5, $11, $A0, $7C
.db $DD, $21, $20, $C4, $CD, $16, $2F, $21, $3B, $B5, $11, $B0, $7C, $DD, $21, $30
.db $C4, $DD, $CB, $00, $46, $C8, $01, $10, $03, $CD, $57, $3A, $21, $A7, $30, $DD
.db $7E, $01, $CD, $E1, $2F, $21, $AF, $30, $DD, $7E, $02, $CD, $E1, $2F, $21, $9B
.db $B4, $01, $10, $01, $C3, $57, $3A, $21, $AB, $B4, $11, $80, $7C, $DD, $21, $00
.db $C4, $CD, $6D, $2F, $21, $DB, $B4, $11, $90, $7C, $DD, $21, $10, $C4, $CD, $6D
.db $2F, $21, $0B, $B5, $11, $A0, $7C, $DD, $21, $20, $C4, $CD, $6D, $2F, $21, $3B
.db $B5, $11, $B0, $7C, $DD, $21, $30, $C4, $DD, $CB, $00, $46, $C8, $01, $10, $03
.db $CD, $83, $3A, $21, $A7, $30, $DD, $7E, $01, $CD, $E1, $2F, $21, $AF, $30, $DD
.db $7E, $02, $CD, $E1, $2F, $21, $9B, $B4, $01, $10, $01, $C3, $83, $3A, $F5, $21
.db $24, $D7, $11, $80, $7C, $01, $40, $06, $CD, $A6, $3A, $F1, $21, $AB, $B4, $11
.db $80, $7C, $DD, $21, $00, $C4, $B7, $CA, $1B, $2F, $21, $DB, $B4, $11, $90, $7C
.db $DD, $21, $10, $C4, $3D, $CA, $1B, $2F, $21, $0B, $B5, $11, $A0, $7C, $DD, $21
.db $20, $C4, $3D, $CA, $1B, $2F, $21, $3B, $B5, $11, $B0, $7C, $DD, $21, $30, $C4
.db $C3, $1B, $2F

_LABEL_2FD8_85:
	di
	push de
	push af
	rst  $08
	ld   b, $10
	jp   _LABEL_2FE7_86

_LABEL_2FE1_268:
	di
	push de
	push af
	rst  $08
	ld   b, $08
_LABEL_2FE7_86:
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	djnz _LABEL_2FE7_86
	pop  af
	ld   bc, $C010
	ld   d, $FF
_LABEL_2FF3_87:
	sub  $64
	inc  d
	jr   nc, _LABEL_2FF3_87
	add  a, $64
	ld   l, a
	ld   a, d
	call _LABEL_3645_88
	ld   d, $FF
	ld   a, l
_LABEL_3002_90:
	sub  $0A
	inc  d
	jr   nc, _LABEL_3002_90
	add  a, $0A
	ld   l, a
	ld   a, d
	call _LABEL_3645_88
	ld   d, $FF
	ld   a, l
_LABEL_3011_91:
	sub  $01
	inc  d
	jr   nc, _LABEL_3011_91
	ld   a, d
	ld   bc, $C110
	call _LABEL_3645_88
	push af
	pop  af
	ld   a, $F3
	out  ($BE), a
	push af
	pop  af
	ld   a, $13
	out  ($BE), a
	pop  de
	ld   hl, $0040
	add  hl, de
	ex   de, hl
	ei
	ld   a, $0A
	call _LABEL_52_31
	ret

_LABEL_3036_92:
	di
	push de
	push bc
	rst  $08
	ld   b, $0C
_LABEL_303C_93:
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	djnz _LABEL_303C_93
	pop  hl
	ld   bc, $C010
	ld   de, $2710
	xor  a
	dec  a
_LABEL_304B_94:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_304B_94
	add  hl, de
	call _LABEL_3645_88
	ld   de, $03E8
	ld   a, $FF
_LABEL_3059_95:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_3059_95
	add  hl, de
	call _LABEL_3645_88
	ld   de, $0064
	ld   a, $FF
_LABEL_3067_96:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_3067_96
	add  hl, de
	call _LABEL_3645_88
	ld   d, $FF
	ld   a, l
_LABEL_3073_97:
	sub  $0A
	inc  d
	jr   nc, _LABEL_3073_97
	add  a, $0A
	ld   l, a
	ld   a, d
	call _LABEL_3645_88
	ld   d, $FF
	ld   a, l
_LABEL_3082_98:
	sub  $01
	inc  d
	jr   nc, _LABEL_3082_98
	ld   a, d
	ld   bc, $C110
	call _LABEL_3645_88
	push af
	pop  af
	ld   a, $F3
	out  ($BE), a
	push af
	pop  af
	ld   a, $13
	out  ($BE), a
	pop  de
	ld   hl, $0040
	add  hl, de
	ex   de, hl
	ei
	ld   a, $0A
	call _LABEL_52_31
	ret


; Data from 30A7 to 30C2 (28 bytes)
.db $F3, $11, $F4, $11, $F5, $11, $C0, $10, $F3, $11, $F6, $11, $F5, $11, $C0, $10
.db $21, $24, $D7, $11, $80, $7C, $01, $40, $06, $C3, $57, $3A

_LABEL_30C3_280:
	ld   hl, $D8A4
	ld   de, $7842
	ld   bc, $0B0C
	call _LABEL_3AA6_23
	ld   hl, $B56B
	jp   _LABEL_3A57_28


; Data from 30D5 to 30EC (24 bytes)
.db $21, $6B, $B5, $11, $42, $78, $01, $0C, $0B, $C3, $83, $3A, $21, $A4, $D8, $11
.db $42, $78, $01, $0C, $0B, $C3, $57, $3A

_LABEL_30ED_265:
	ld   hl, $D928
	ld   de, $781C
	ld   bc, $0414
	call _LABEL_3AA6_23
	ld   hl, $D978
	ld   de, $7830
	ld   bc, $0A10
	call _LABEL_3AA6_23
	ld   hl, $BACF
	ld   de, $781C
	ld   bc, $0114
	call _LABEL_3A83_51
	ld   hl, $C2C8
	ld   c, $00
	call _LABEL_315C_266
	ld   c, $01
	call _LABEL_315C_266
	ld   hl, $BAE3
	ld   bc, $0114
	call _LABEL_3A83_51
	ld   a, ($C2E6)
	cp   $49
	ret  z

	ld   hl, $B4AB
	ld   de, $7830
	ld   bc, $0110
	call _LABEL_3A57_28
	ld   ix, $C440
	ld   a, ($C2C7)
	ld   b, a
_LABEL_3141_269:
	push bc
	ld   hl, $30A7
	ld   a, (ix+1)
	call _LABEL_2FE1_268
	ld   bc, $0010
	add  ix, bc
	pop  bc
	djnz _LABEL_3141_269
	ld   hl, $B49B
	ld   bc, $0110
	jp   _LABEL_3A57_28

_LABEL_315C_266:
	di
	push bc
	push hl
	push de
	rst  $08
	push af
	pop  af
	ld   a, $F3
	out  ($BE), a
	push af
	pop  af
	ld   a, $11
	out  ($BE), a
	ld   b, $08
_LABEL_316F_267:
	ld   a, (hl)
	sub  $20
	add  a, a
	add  a, c
	ld   de, $7D17
	add  a, e
	ld   e, a
	adc  a, d
	sub  e
	ld   d, a
	ld   a, (de)
	out  ($BE), a
	push af
	pop  af
	ld   a, $10
	out  ($BE), a
	inc  hl
	djnz _LABEL_316F_267
	push af
	pop  af
	ld   a, $F3
	out  ($BE), a
	push af
	pop  af
	ld   a, $13
	out  ($BE), a
	pop  de
	ld   hl, $0040
	add  hl, de
	ex   de, hl
	pop  hl
	pop  bc
	ei
	ret

_LABEL_319E_277:
	ld   hl, $D978
	ld   de, $7830
	ld   bc, $0A10
	ld   a, ($C2E6)
	cp   $49
	call nz, _LABEL_3A57_28
	ld   hl, $D928
	ld   de, $781C
	ld   bc, $0414
	jp   _LABEL_3A57_28


LABEL_31BB:
.db "ALIS"
.db	"MYAU"
.db	"ODIN"
.db	"NOAH"

_LABEL_31CB_42:
	dec  hl
	jp   _LABEL_3235_48

_LABEL_31CF_41:
	ld   a, :Bank12
	ld   ($FFFF), a
	ld   a, ($C2D3)
	or   a
	jp   nz, _LABEL_31CB_42
	ld   a, $FF
	ld   ($C2D3), a
	push hl
	ld   hl, $DA18
	ld   de, $7C8C
	ld   bc, $0628
	call _LABEL_3AA6_23
	ld   hl, $B5EF
	call _LABEL_3A57_28
	pop  hl
_LABEL_31F4_57:
	ld   de, $7CCE
	ld   bc, $1200
_LABEL_31FA_55:
	ld   a, (hl)
	or   a
	jp   m, _LABEL_3332_43
	cp   $65
	jp   nc, _LABEL_2D25_44
	cp   $62
	ret  z

	cp   $63
	jp   z, _LABEL_2D33_45
	cp   $64
	jp   z, _LABEL_2D47_46
	cp   $61
	jr   nz, _LABEL_321B_47
	call _LABEL_2D25_44
	jp   _LABEL_3235_48

_LABEL_321B_47:
	cp   $5F
	jr   nz, _LABEL_3231_56
	push hl
	ld   hl, $B5EF
	ld   de, $7C8C
	ld   bc, $0628
	call _LABEL_3A83_51
	pop  hl
	inc  hl
	jp   _LABEL_31F4_57

_LABEL_3231_56:
	cp   $60
	jr   nz, _LABEL_3244_58
_LABEL_3235_48:
	ld   a, c
	or   a
	call nz, _LABEL_342C_49
	ld   de, $7D4E
	ld   bc, $1201
	inc  hl
	jp   _LABEL_31FA_55

_LABEL_3244_58:
	cp   $5B
	jr   nz, _LABEL_3262_59
	push hl
	ld   a, ($C2C2)
	and  $03
	add  a, a
	add  a, a
	ld   hl, LABEL_31BB
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   a, $04
	call _LABEL_336C_60
	pop  hl
	inc  hl
	jp   _LABEL_31FA_55

_LABEL_3262_59:
	cp   $5C
	jr   nz, _LABEL_3274_64
	push hl
	ld   hl, $C2C8
	ld   a, $08
	call _LABEL_336C_60
	pop  hl
	inc  hl
	jp   _LABEL_31FA_55

_LABEL_3274_64:
	cp   $5D
	jr   nz, _LABEL_3292_65
	push hl
	ld   a, ($C2C4)
	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	push bc
	ld   bc, $7DA3
	add  hl, bc
	pop  bc
	ld   a, $08
	call _LABEL_336C_60
	pop  hl
	inc  hl
	jp   _LABEL_31FA_55

_LABEL_3292_65:
	cp   $5E
	jr   nz, _LABEL_32F5_66
	push hl
	push bc
	push de
	ld   hl, ($C2C5)
	ld   de, $2710
	xor  a
	ld   c, a
	dec  a
_LABEL_32A2_67:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_32A2_67
	add  hl, de
	pop  de
	call _LABEL_32FB_68
	push de
	ld   de, $03E8
	ld   a, $FF
_LABEL_32B2_70:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_32B2_70
	add  hl, de
	pop  de
	call _LABEL_32FB_68
	push de
	ld   de, $0064
	ld   a, $FF
_LABEL_32C2_71:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_32C2_71
	add  hl, de
	pop  de
	call _LABEL_32FB_68
	push de
	ld   d, $FF
	ld   a, l
_LABEL_32D0_72:
	sub  $0A
	inc  d
	jr   nc, _LABEL_32D0_72
	add  a, $0A
	ld   l, a
	ld   a, d
	pop  de
	call _LABEL_32FB_68
	push de
	ld   d, $FF
	ld   a, l
_LABEL_32E1_73:
	sub  $01
	inc  d
	jr   nc, _LABEL_32E1_73
	ld   a, d
	ld   c, $01
	pop  de
	call _LABEL_32FB_68
	ld   a, b
	pop  bc
	ld   b, a
	pop  hl
	inc  hl
	jp   _LABEL_31FA_55

_LABEL_32F5_66:
	call _LABEL_33D6_61
	jp   _LABEL_31FA_55

_LABEL_32FB_68:
	or   a
	jp   nz, _LABEL_3302_69
	bit  0, c
	ret  z

_LABEL_3302_69:
	ld   c, $01
	di
	push de
	push af
	rst  $08
	push af
	pop  af
	ld   a, $C0
	out  ($BE), a
	push af
	pop  af
	ld   a, $10
	out  ($BE), a
	ld   a, $40
	add  a, e
	ld   e, a
	adc  a, d
	sub  e
	ld   d, a
	rst  $08
	pop  af
	add  a, $C1
	out  ($BE), a
	push af
	pop  af
	ld   a, $10
	out  ($BE), a
	pop  de
	inc  de
	inc  de
	ei
	ld   a, $0A
	call _LABEL_52_31
	dec  b
	ret

_LABEL_3332_43:
	call _LABEL_333E_76
	jp   _LABEL_31FA_55


; Data from 3338 to 333D (6 bytes)
.db $CD, ">3", $C3, $89, "3"

_LABEL_333E_76:
	push hl
	and  $7F
	add  a, a
	ld   hl, $BA81
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   a, ($FFFF)
	push af
	ld   a, :Bank02
	ld   ($FFFF), a
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
_LABEL_3357_77:
	call _LABEL_33D6_61
	ld   a, (hl)
	cp   $65
	jr   nz, _LABEL_3357_77
	pop  af
	ld   ($FFFF), a
	pop  hl
	inc  hl
	ld   a, b
	or   a
	ret  nz

	ld   a, (hl)
	jp   _LABEL_3419_78

_LABEL_336C_60:
	push af
	call _LABEL_33D6_61
	ld   a, (hl)
	cp   $65
	jr   z, _LABEL_337B_63
	pop  af
	dec  a
	jp   nz, _LABEL_336C_60
	ret

_LABEL_337B_63:
	pop  af
	ret


; Data from 337D to 33D5 (89 bytes)
.db $3E, $02, $32, $FF, $FF, $11, $0C, $7C, $01, $00, $00, $D5, $7E, $B7, $FA, $38
.db $33, $FE, $63, $28, $3F, $FE, $65, $28, $36, $FE, $61, $28, $18, $FE, $5F, $28
.db $14, $FE, $60, $20, $0B, $23, $EB, $E1, $01, $80, $00, $09, $EB, $C3, $88, $33
.db $CD, $D6, $33, $18, $D7, $D1, $E5, $FE, $5F, $C4, $25, $2D, $11, $00, $7C, $01
.db $00, $01, $21, $00, $08, $F3, $CD, $63, $03, $FB, $E1, $23, $C3, $7D, $33, $CD
.db $25, $2D, $D1, $C9, $CD, $47, $2D, $D1, $C9

_LABEL_33D6_61:
	di
	push bc
	push de
	rst  $08
	ld   a, (hl)
	sub  $20
	add  a, a
	ld   bc, $7D17
	add  a, c
	ld   c, a
	adc  a, b
	sub  c
	ld   b, a
	ld   a, (bc)
	out  ($BE), a
	push af
	pop  af
	ld   a, $10
	out  ($BE), a
	ex   de, hl
	ld   bc, $0040
	add  hl, bc
	ex   de, hl
	rst  $08
	ld   a, (hl)
	sub  $20
	add  a, a
	ld   bc, $7D18
	add  a, c
	ld   c, a
	adc  a, b
	sub  c
	ld   b, a
	ld   a, (bc)
	out  ($BE), a
	push af
	pop  af
	ld   a, $10
	out  ($BE), a
	inc  hl
	pop  de
	inc  de
	inc  de
	pop  bc
	ei
	ld   a, $0A
	call _LABEL_52_31
	dec  b
	ret  nz

	ld   a, (hl)
_LABEL_3419_78:
	or   a
	jp   m, _LABEL_3420_62
	cp   $5F
	ret  nc

_LABEL_3420_62:
	ld   a, c
	or   a
	call nz, _LABEL_342C_49
	ld   de, $7D4E
	ld   bc, $1201
	ret

_LABEL_342C_49:
	push bc
	push de
	push hl
	call _LABEL_3439_50
	call _LABEL_3439_50
	pop  hl
	pop  de
	pop  bc
	ret

_LABEL_3439_50:
	ld   hl, $DB08
	ld   de, $7D0E
	ld   bc, $0324
	call _LABEL_3AA6_23
	ld   hl, $DB08
	ld   de, $7CCE
	ld   bc, $0324
	call _LABEL_3A83_51
	ld   hl, $B619
	ld   bc, $0124
	call _LABEL_3A83_51
	ld   b, $04
_LABEL_345C_54:
	ld   a, $0A
	call _LABEL_52_31
	djnz _LABEL_345C_54
	ret

_LABEL_3464_79:
	ld   hl, $C2D3
	ld   a, (hl)
	or   a
	ret  z

	ld   (hl), $00
	ld   hl, $DA18
	ld   de, $7C8C
	ld   bc, $0628
	jp   _LABEL_3A57_28


; Data from 3478 to 356A (243 bytes)
.db $F5, $C5, $21, $74, $DB, $11, $0C, $7A, $01, $0C, $0C, $CD, $A6, $3A, $C1, $F1
.db $87, $87, $87, $6F, $26, $00, $5D, $54, $29, $29, $29, $19, $29, $11, $DF, $B6
.db $19, $11, $0C, $7A, $78, $B7, $CA, $C0, $34, $87, $3C, $47, $0E, $0C, $C5, $CD
.db $57, $3A, $C1, $78, $87, $6F, $87, $85, $87, $21, $3F, $BA, $85, $6F, $8C, $95
.db $67, $3E, $0C, $90, $47, $C3, $57, $3A, $21, $3F, $BA, $01, $0C, $0C, $C3, $57
.db $3A, $21, $74, $DB, $11, $0C, $7A, $01, $0C, $0C, $C3, $57, $3A, $3A, $E2, $C4
.db $3D, $E6, $18, $67, $2E, $00, $22, $99, $C2, $CD, $21, $35, $3A, $E2, $C4, $B7
.db $CA, $25, $2D, $3D, $FE, $08, $2E, $00, $38, $04, $2E, $01, $3E, $07, $E6, $07
.db $85, $32, $6E, $C2, $21, $6C, $79, $22, $69, $C2, $21, $00, $00, $22, $6B, $C2
.db $AF, $32, $6D, $C2, $CD, $A5, $2D, $6F, $3A, $99, $C2, $85, $21, $C0, $C4, $85
.db $6F, $22, $9B, $C2, $7E, $32, $C4, $C2, $C9, $21, $04, $DC, $11, $AC, $78, $01
.db $14, $15, $CD, $A6, $3A, $21, $CF, $BA, $11, $AC, $78, $01, $14, $01, $CD, $57
.db $3A, $CD, $C4, $35, $3A, $E2, $C4, $FE, $09, $21, $F7, $BA, $01, $14, $02, $D4
.db $57, $3A, $3A, $99, $C2, $21, $C0, $C4, $85, $6F, $06, $08, $0E, $00, $CD, $6B
.db $35, $0E, $01, $CD, $6B, $35, $23, $10, $F3, $21, $E3, $BA, $01, $14, $01, $CD
.db $57, $3A, $C9

_LABEL_356B_81:
	di
	push bc
	push hl
	push de
	rst  $08
	ld   l, (hl)
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   de, $7DA3
	add  hl, de
	push af
	pop  af
	ld   a, $F3
	out  ($BE), a
	push af
	pop  af
	ld   a, $11
	out  ($BE), a
	ld   b, $08
_LABEL_3588_82:
	ld   a, (hl)
	sub  $20
	add  a, a
	add  a, c
	ld   de, $7D17
	add  a, e
	ld   e, a
	adc  a, d
	sub  e
	ld   d, a
	ld   a, (de)
	out  ($BE), a
	push af
	pop  af
	ld   a, $10
	out  ($BE), a
	inc  hl
	djnz _LABEL_3588_82
	push af
	pop  af
	ld   a, $F3
	out  ($BE), a
	push af
	pop  af
	ld   a, $13
	out  ($BE), a
	pop  de
	ld   hl, $0040
	add  hl, de
	ex   de, hl
	pop  hl
	pop  bc
	ei
	ld   a, $0A
	call _LABEL_52_31
	ret

_LABEL_35BC_99:
	di
	push de
	rst  $08
	ld   b, $0C
	jp   _LABEL_35C9_100


; Data from 35C4 to 35C8 (5 bytes)
.db $F3, $D5, $CF, $06, $08

_LABEL_35C9_100:
	ld   hl, $3639
_LABEL_35CC_101:
	ld   a, (hl)
	out  ($BE), a
	inc  hl
	djnz _LABEL_35CC_101
	ld   hl, ($C4E0)
	ld   bc, $C010
	ld   de, $2710
	xor  a
	cpl
_LABEL_35DD_102:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_35DD_102
	add  hl, de
	call _LABEL_3645_88
	ld   de, $03E8
	xor  a
	cpl
_LABEL_35EB_103:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_35EB_103
	add  hl, de
	call _LABEL_3645_88
	ld   de, $0064
	xor  a
	cpl
_LABEL_35F9_104:
	sbc  hl, de
	inc  a
	jr   nc, _LABEL_35F9_104
	add  hl, de
	call _LABEL_3645_88
	ld   d, $FF
	ld   a, l
_LABEL_3605_105:
	sub  $0A
	inc  d
	jr   nc, _LABEL_3605_105
	add  a, $0A
	ld   l, a
	ld   a, d
	call _LABEL_3645_88
	ld   d, $FF
	ld   a, l
_LABEL_3614_106:
	sub  $01
	inc  d
	jr   nc, _LABEL_3614_106
	ld   a, d
	ld   bc, $C110
	call _LABEL_3645_88
	push af
	pop  af
	ld   a, $F3
	out  ($BE), a
	push af
	pop  af
	ld   a, $13
	out  ($BE), a
	pop  de
	ld   hl, $0040
	add  hl, de
	ex   de, hl
	ei
	ld   a, $0A
	call _LABEL_52_31
	ret


; Data from 3639 to 3644 (12 bytes)
.db $F3, $11, $D7, $10, $DD, $10, $DE, $10, $C0, $10, $C0, $10

_LABEL_3645_88:
	and  $0F
	jp   z, _LABEL_364D_89
	ld   bc, $C110
_LABEL_364D_89:
	add  a, b
	out  ($BE), a
	push af
	pop  af
	ld   a, c
	out  ($BE), a
	ret


; Data from 3656 to 3664 (15 bytes)
.db $C5, $21, $04, $DC, $11, $AC, $78, $01, $14, $15, $CD, $57, $3A, $C1, $C9

_LABEL_3665_22:
	ld   a, ($C4F0)
	or   a
	ret  z

	ld   hl, $DDA8
	ld   de, $7A44
	ld   bc, $090C
	call _LABEL_3AA6_23
	call _LABEL_369F_27
	ld   hl, $7A84
	ld   ($C269), hl
	jp   _LABEL_2D51_33


; Data from 3682 to 369E (29 bytes)
.db $3A, $F0, $C4, $B7, $C8, $21, $14, $DE, $11, $54, $7A, $01, $0C, $09, $CD, $A6
.db $3A, $CD, $9F, $36, $21, $94, $7A, $22, $69, $C2, $C3, $51, $2D

_LABEL_369F_27:
	ld   a, ($C4F0)
	or   a
	ret  z

	ld   ($C26E), a
	inc  a
	add  a, a
	ld   b, a
	ld   c, $0C
	ld   hl, $BB1F
	call _LABEL_3A57_28
	ld   hl, $BB7F
	ld   bc, $010C
	jp   _LABEL_3A57_28

_LABEL_36BB_107:
	ld   a, ($C4F0)
	or   a
	ret  z

	ld   hl, $DDA8
	ld   de, $7A44
	ld   bc, $090C
	jp   _LABEL_3A57_28


; Data from 36CC to 36DC (17 bytes)
.db $3A, $F0, $C4, $B7, $C8, $21, $14, $DE, $11, $54, $7A, $01, $0C, $09, $C3, $57
.db $3A

_LABEL_36DD_162:
	ld   hl, $D8A4
	ld   de, $7842
	ld   bc, $0B0C
	call _LABEL_3AA6_23
	ld   hl, $BB8B
	jp   _LABEL_3A57_28


; Data from 36EF to 3706 (24 bytes)
.db $21, $8B, $BB, $11, $42, $78, $01, $0C, $0B, $C3, $83, $3A, $21, $A4, $D8, $11
.db $42, $78, $01, $0C, $0B, $C3, $57, $3A

_LABEL_3707_80:
	push af
	ld   hl, $D928
	ld   de, $7A8C
	ld   bc, $0814
	call _LABEL_3AA6_23
	ld   hl, $BACF
	ld   de, $7A8C
	ld   bc, $0114
	call _LABEL_3A57_28
	pop  af
	push af
	add  a, a
	add  a, a
	add  a, a
	add  a, a
	ld   hl, $FFFF
	ld   (hl), :Bank02
	ld   hl, $C40A
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   b, $03
_LABEL_3735_83:
	ld   c, $00
	call _LABEL_356B_81
	ld   c, $01
	call _LABEL_356B_81
	inc  hl
	djnz _LABEL_3735_83
	ld   hl, $BAE3
	ld   bc, $0114
	call _LABEL_3A57_28
	pop  af
	ret


; Data from 374D to 37A2 (86 bytes)
.db $21, $28, $D9, $11, $8C, $7A, $01, $14, $08, $C3, $57, $3A, $21, $14, $DE, $11
.db $32, $7A, $01, $0A, $07, $CD, $A6, $3A, $21, $0F, $BC, $C3, $57, $3A, $21, $14
.db $DE, $11, $32, $7A, $01, $0A, $07, $C3, $57, $3A, $21, $14, $DE, $11, $48, $7B
.db $01, $0C, $05, $CD, $A6, $3A, $21, $55, $BC, $CD, $57, $3A, $21, $88, $7B, $22
.db $69, $C2, $3E, $01, $32, $6E, $C2, $C3, $51, $2D, $21, $14, $DE, $11, $48, $7B
.db $01, $0C, $05, $C3, $57, $3A

_LABEL_37A3_224:
	ld   hl, $DE64
	ld   de, $7B6A
	ld   bc, $050A
	call _LABEL_3AA6_23
	ld   hl, $BC91
	call _LABEL_3A57_28
	ld   hl, $7BAA
	ld   ($C269), hl
	ld   a, $01
	ld   ($C26E), a
	jp   _LABEL_2D51_33

_LABEL_37C3_225:
	ld   hl, $DE64
	ld   de, $7B6A
	ld   bc, $050A
	jp   _LABEL_3A57_28

_LABEL_37CF_84:
	add  a, a
	add  a, a
	add  a, a
	add  a, a
	ld   hl, $C400
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	push hl
	pop  ix
	ld   hl, $DC04
	ld   de, $7920
	ld   bc, $0E18
	call _LABEL_3AA6_23
	ld   hl, $BCC3
	ld   bc, $0118
	call _LABEL_3A57_28
	ld   hl, $3865
	ld   a, (ix+5)
	call _LABEL_2FD8_85
	ld   hl, $3875
	ld   c, (ix+3)
	ld   b, (ix+4)
	call _LABEL_3036_92
	ld   hl, $BCDB
	ld   bc, $0118
	call _LABEL_3A57_28
	ld   hl, $3881
	ld   a, (ix+8)
	call _LABEL_2FD8_85
	ld   hl, $BCDB
	ld   bc, $0118
	call _LABEL_3A57_28
	ld   hl, $3891
	ld   a, (ix+9)
	call _LABEL_2FD8_85
	ld   hl, $BCDB
	ld   bc, $0118
	call _LABEL_3A57_28
	ld   hl, $38A1
	ld   a, (ix+6)
	call _LABEL_2FD8_85
	ld   hl, $BCDB
	ld   bc, $0118
	call _LABEL_3A57_28
	ld   hl, $38B1
	ld   a, (ix+7)
	call _LABEL_2FD8_85
	ld   hl, $BCF3
	ld   bc, $0118
	call _LABEL_3A57_28
	call _LABEL_35BC_99
	ld   hl, $BD0B
	ld   bc, $0118
	jp   _LABEL_3A57_28


; Data from 3865 to 3A56 (498 bytes)
.db $F3, $11, $FA, $11, $FB, $11, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10
.db $F3, $11, $F7, $11, $F5, $11, $C0, $10, $C0, $10, $C0, $10, $F3, $11, $CB, $10
.db $DE, $10, $DE, $10, $CB, $10, $CD, $10, $D5, $10, $C0, $10, $F3, $11, $CE, $10
.db $CF, $10, $D0, $10, $CF, $10, $D8, $10, $DD, $10, $CF, $10, $F3, $11, $D7, $10
.db $CB, $10, $E2, $10, $C0, $10, $D2, $10, $DA, $10, $C0, $10, $F3, $11, $D7, $10
.db $CB, $10, $E2, $10, $C0, $10, $D7, $10, $DA, $10, $C0, $10, $21, $04, $DC, $11
.db $20, $79, $01, $18, $0E, $C3, $57, $3A, $21, $A4, $D8, $11, $0C, $78, $01, $20
.db $08, $C3, $A6, $3A, $21, $23, $BD, $11, $0C, $78, $01, $20, $01, $CD, $57, $3A
.db $21, $FF, $FF, $36, $03, $3A, $DB, $C2, $E6, $1F, $6F, $26, $00, $29, $4D, $44
.db $29, $29, $09, $01, $0D, $B7, $09, $7E, $32, $6E, $C2, $23, $E5, $06, $03, $C5
.db $0E, $00, $E5, $CD, $3A, $39, $E1, $0E, $01, $E5, $CD, $3A, $39, $E1, $23, $23
.db $23, $C1, $10, $EB, $21, $43, $BD, $01, $20, $01, $CD, $57, $3A, $21, $8C, $78
.db $22, $69, $C2, $CD, $51, $2D, $21, $FF, $FF, $36, $03, $E1, $47, $87, $80, $85
.db $6F, $8C, $95, $67, $C9, $F3, $D5, $E5, $CF, $7E, $B7, $20, $02, $0E, $00, $6F
.db $26, $00, $29, $29, $29, $11, $A3, $7D, $19, $F5, $F1, $3E, $F3, $D3, $BE, $F5
.db $F1, $3E, $11, $D3, $BE, $06, $08, $7E, $D6, $20, $87, $81, $11, $17, $7D, $83

.db $5F, $8A, $93, $57, $1A, $D3, $BE, $F5, $F1, $3E, $10, $D3, $BE, $23, $10, $E7
.db $79, $B7, $06, $01, $20, $02, $06, $06, $F5, $F1, $3E, $C0, $D3, $BE, $F5, $F1
.db $3E, $10, $D3, $BE, $10, $F2, $E1, $23, $7E, $23, $66, $6F, $79, $B7, $C2, $D5
.db $35, $C3, $20, $36, $21, $A4, $D8, $11, $0C, $78, $01, $20, $08, $C3, $57, $3A
.db $21, $28, $D9, $11, $6E, $78, $01, $12, $0C, $CD, $A6, $3A

LABEL_39B1:
.db	$3E, $08, $32, $FC
.db $FF, $21, $00, $81, $11, $6E, $78, $01, $12, $0C, $CD, $68, $3A, $3E, $80, $32
.db $FC, $FF, $21, $EE, $78, $22, $69, $C2, $3E, $04, $32, $6E, $C2, $CD, $51, $2D
.db $6F, $2C, $26, $00, $22, $C5, $C2, $C9, $21, $28, $D9, $11, $6E, $78, $01, $12
.db $0C, $C3, $57, $3A, $C5, $21, $00, $D7, $11, $2C, $78, $01, $14, $03, $CD, $A6
.db $3A, $C1, $C5, $21, $CF, $BA, $11, $2C, $78, $01, $14, $01, $CD, $57, $3A, $CD
.db $C4, $35, $21, $E3, $BA, $01, $14, $01, $CD, $57, $3A, $C1, $C9, $C5, $21, $00
.db $D7, $11, $2C, $78, $01, $14, $03, $CD, $57, $3A, $C1, $C9, $21, $14, $DE, $11
.db $E4, $7A, $01, $10, $07, $CD, $A6, $3A, $3E, $12, $32, $FF, $FF, $21, $84, $BE
.db $CD, $68, $3A, $21, $24, $7B, $22, $69, $C2, $3E, $02, $32, $6E, $C2, $CD, $51
.db $2D, $F5, $C5, $21, $14, $DE, $11, $E4, $7A, $01, $10, $07, $CD, $57, $3A, $C1
.db $F1, $C9

_LABEL_3A57_28:
	ld   a, ($FFFF)
	push af
	ld   a, :Bank27
	ld   ($FFFF), a
	call _LABEL_3A68_29
	pop  af
	ld   ($FFFF), a
	ret

_LABEL_3A68_29:
	push bc
	di
	rst  $08
	ld   b, c
	ld   c, $BE
_LABEL_3A6E_30:
	outi
	jp   nz, _LABEL_3A6E_30
	ex   de, hl
	ld   bc, $0040
	add  hl, bc
	ex   de, hl
	ei
	ld   a, $0A
	call _LABEL_52_31
	pop  bc
	djnz _LABEL_3A68_29
	ret

_LABEL_3A83_51:
	ld   a, ($FFFF)
	push af
	ld   a, :Bank27
	ld   ($FFFF), a
	di
_LABEL_3A8D_53:
	push bc
	rst  $08
	ld   b, c
	ld   c, $BE
_LABEL_3A92_52:
	outi
	jp   nz, _LABEL_3A92_52
	ex   de, hl
	ld   bc, $0040
	add  hl, bc
	ex   de, hl
	pop  bc
	djnz _LABEL_3A8D_53
	ei
	pop  af
	ld   ($FFFF), a
	ret

_LABEL_3AA6_23:
	di
	push bc
	push de
	res  6, d
_LABEL_3AAB_26:
	push bc
	rst  $08
	ld   b, c
	ld   c, $BE
_LABEL_3AB0_25:
	ini
	push af
	pop  af
	jp   nz, _LABEL_3AB0_25
	ex   de, hl
	ld   bc, $0040
	add  hl, bc
	ex   de, hl
	pop  bc
	djnz _LABEL_3AAB_26
	pop  de
	pop  bc
	ei
	ret


LABEL_3AC4:
.db $F1, $11, $F2, $11, $F2, $11, $F2, $11, $F2, $11, $F2, $11, $F2, $11, $F2, $11
.db $F1, $13, $F3, $11, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10
.db $C0, $10, $F3, $13, $F3, $11, $C2, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10
.db $C0, $10, $C0, $10, $F3, $13, $F3, $11, $C0, $10, $C0, $10, $C0, $10, $C0, $10
.db $C0, $10, $C0, $10, $C0, $10, $F3, $13, $F3, $11, $C3, $10, $C0, $10, $C0, $10
.db $C0, $10, $C0, $10, $C0, $10, $C0, $10, $F3, $13, $F3, $11, $C0, $10, $C0, $10
.db $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $F3, $13, $F3, $11, $C4, $10
.db $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $F3, $13, $F3, $11
.db $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $F3, $13
.db $F3, $11, $C5, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10
.db $F3, $13, $F3, $11, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10
.db $C0, $10, $F3, $13, $F3, $11, $C6, $10, $C0, $10, $C0, $10, $C0, $10, $C0, $10
.db $C0, $10, $C0, $10, $F3, $13, $F1, $15, $F2, $15, $F2, $15, $F2, $15, $F2, $15
.db $F2, $15, $F2, $15, $F2, $15, $F1, $17

LABEL_3B9C:
.db	$3A, $12, $C2, $B7, $C4, $F1, $00, $3E
.db $08, $CD, $52, $00, $3A, $9D, $C2, $B7, $C2, $1A, $3C, $3A, $DC, $C2, $CD, $7D
.db $61, $3A, $9E, $C2, $D6, $10, $30, $01, $AF, $E6, $0F, $21, $2A, $3C, $CD, $E6
.db $00, $3A, $9E, $C2, $D6, $0F, $30, $01, $AF, $E6, $0F, $6F, $26, $00, $11, $25
.db $3D, $19, $7E, $B7, $28, $05, $3E, $D8, $32, $04, $C0, $AF, $32, $9D, $C2, $32
.db $9E, $C2, $32, $D5, $C2, $21, $00, $00, $22, $DB, $C2, $21, $00, $C8, $11, $01
.db $C8, $01, $FF, $00, $36, $00, $ED, $B0, $3A, $02, $C2, $FE, $0D, $C0, $3A, $E9
.db $C2, $CB, $7F, $28, $06, $3E, $04, $32, $02, $C2, $C9, $B7, $3E, $08, $28, $02
.db $3E, $0E, $32, $02, $C2, $C9, $CD, $FE, $5F, $CD, $0F, $10, $3A, $00, $C8, $B7
.db $C4, $E1, $1B, $C3, $C5, $3B, $4B, $47, $4B, $47, $8D, $29, $8D, $29, $85, $2A
.db $85, $2A, $C0, $2B, $C0, $2B, $8F, $2C, $8F, $2C, $98, $2C, $98, $2C, $4B, $47
.db $4B, $47, $4B, $47, $4B, $47, $4B, $47, $4B, $47, $4B, $47, $4B, $47

LABEL_3C52:
.db	$3E, $D6
.db $32, $04, $C0, $CD, $05, $7B, $3A, $08, $C3, $B7, $20, $0E, $3A, $9E, $C2, $FE
.db $05, $20, $46, $3E, $04, $32, $9E, $C2, $18, $3F, $FE, $01, $20, $0E, $3A, $9E
.db $C2, $FE, $01, $20, $34, $3E, $05, $32, $9E, $C2, $18, $2D, $FE, $07, $20, $0E
.db $3A, $9E, $C2, $FE, $01, $20, $22, $3E, $05, $32, $9E, $C2, $18, $1B, $FE, $08
.db $20, $07, $3E, $06, $32, $9E, $C2, $18, $10, $FE, $0A, $20, $0C, $3A, $9E, $C2
.db $FE, $09, $20, $05, $3E, $08, $32, $9E, $C2, $3A, $9E, $C2, $B7, $20, $04, $3C
.db $32, $9E, $C2, $CD, $47, $3D, $21, $FF, $FF, $36, $10, $21, $D8, $BA, $11, $00
.db $58, $CD, $FA, $03, $21, $58, $BD, $11, $00, $7E, $CD, $FA, $03, $AF, $32, $04
.db $C3, $32, $00, $C3, $32, $00, $C8, $32, $E9, $C2, $3D, $32, $D6, $C2, $21, $00
.db $00, $22, $13, $C2, $21, $00, $FF, $22, $BC, $C2, $F3, $CD, $A5, $63, $FB, $3A
.db $9E, $C2, $D6, $0F, $30, $01, $AF, $E6, $0F, $6F, $26, $00, $11, $25, $3D, $19
.db $7E, $B7, $28, $03, $32, $04, $C0, $21, $02, $C2, $34, $F3, $11, $06, $80, $CF
.db $FB, $3E, $0C, $CD, $52, $00, $C3, $FD, $02, $00, $00, $3F, $30, $38, $03, $0B
.db $0F, $00, $00, $00, $00, $00, $8D, $8D, $8E, $8E, $8E, $8E, $8E, $8E, $00, $00
.db $00, $00

_LABEL_3D36_159:
	cp   $20
	jr   nc, _LABEL_3D4E_160
	add  a, a
	add  a, a
	add  a, a
	ld   l, a
	ld   h, $00
	ld   de, $3DA3
	add  hl, de
	jp   _LABEL_3D96_161

_LABEL_3D47_306:
	ld   a, ($C29E)
	cp   $20
	jr   c, _LABEL_3D64_307
_LABEL_3D4E_160:
	ld   hl, $D000
	ld   de, $D002
	ld   bc, $05FE
	ld   (hl), $00
	inc  hl
	ld   (hl), $08
	dec  hl
	ldir
	xor  a
	ld   ($C2D3), a
	ret

_LABEL_3D64_307:
	add  a, a
	add  a, a
	add  a, a
	ld   l, a
	ld   h, $00
	ld   de, $3D9E
	add  hl, de
	ld   a, (hl)
	ld   ($FFFF), a
	inc  hl
	ld   a, (hl)
	inc  hl
	push hl
	ld   h, (hl)
	ld   l, a
	ld   de, $C240
	ld   bc, $0010
	ldir
	ld   hl, $3D1D
	ld   c, $08
	ldir
	pop  hl
	inc  hl
	ld   a, (hl)
	inc  hl
	push hl
	ld   h, (hl)
	ld   l, a
	ld   de, $4000
	call _LABEL_3FA_163
	pop  hl
	inc  hl
_LABEL_3D96_161:
	xor  a
	ld   ($C2D3), a
	ld   a, (hl)
	ld   ($FFFF), a
	inc  hl
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	jp   _LABEL_6B62_137


; Data from 3DA6 to 3FFF (602 bytes)
.db $10, $00, $80, $20, $80, $0F, $00, $80, $10, $16, $8F, $36, $8F, $0F, $33, $83
.db $10, $72, $9C, $82, $9C, $0F, $E9, $86, $10, $72, $9C, $82, $9C, $0F, $A0, $89
.db $10, $F6, $B3, $06, $B4, $0F, $80, $8C, $10, $10, $80, $20, $80, $0F, $46, $8E
.db $10, $00, $80, $20, $80, $0F, $16, $91, $11, $40, $86, $50, $86, $0F, $7B, $94
.db $11, $C4, $97, $D4, $97, $0F, $0A, $97, $11, $B1, $A4, $C1, $A4, $0F, $2C, $9A
.db $11, $58, $AF, $68, $AF, $0F, $11, $9C, $10, $26, $8F, $36, $8F, $0F, $33, $83
.db $16, $7D, $AC, $8D, $AC, $16, $32, $BC, $0B, $00, $80, $10, $80, $16, $2A, $BE
.db $16, $9E, $3E, $8D, $AC, $16, $32, $BC, $17, $9F, $AA, $6F, $AB, $17, $00, $80
.db $17, $AF, $AA, $6F, $AB, $17, $1E, $83, $17, $BF, $AA, $6F, $AB, $17, $54, $86
.db $17, $CF, $AA, $6F, $AB, $17, $DD, $88, $17, $DF, $AA, $6F, $AB, $17, $A6, $8B
.db $17, $EF, $AA, $6F, $AB, $17, $8E, $8F, $17, $FF, $AA, $6F, $AB, $17, $ED, $92
.db $17, $0F, $AB, $6F, $AB, $17, $1B, $96, $17, $1F, $AB, $6F, $AB, $17, $49, $99
.db $17, $2F, $AB, $6F, $AB, $17, $A3, $9C, $17, $3F, $AB, $6F, $AB, $17, $E3, $9F
.db $17, $4F, $AB, $6F, $AB, $17, $10, $A3, $17, $5F, $AB, $6F, $AB, $17, $4C, $A6
.db $09, $14, $BB, $24, $BB, $09, $8B, $B7, $14, $DA, $A4, $EA, $A4, $1B, $63, $BD
.db $13, $00, $80, $10, $80, $0D, $B1, $BD, $30, $00, $3F, $0B, $06, $1A, $2F, $2A
.db $08, $15, $15, $0B, $06, $1A, $2F, $28, $A6, $8B, $17, $EF, $AA, $6F, $AB, $17
.db $8E, $8F, $17

LABEL_3EB9:
.db	$3A, $12, $C2, $B7, $C4, $F1, $00, $DD, $21, $84, $C7, $3E, $08
.db $CD, $52, $00, $CD, $C5, $40, $3A, $05, $C2, $E6, $30, $CA, $73, $3F, $E6, $10
.db $C2, $11, $3F, $3A, $88, $C7, $FE, $5C, $28, $12, $30, $19, $ED, $5B, $81, $C7
.db $16, $C7, $12, $CD, $17, $41, $1A, $F3, $CD, $4F, $41, $FB, $21, $81, $C7, $7E
.db $FE, $25, $C8, $34, $C9, $FE, $5E, $28, $27, $3A, $80, $C7, $0E, $00, $1F, $38
.db $02, $0E, $21, $21, $81, $C7, $7E, $B9, $C8, $35, $C9, $ED, $5B, $81, $C7, $16
.db $C7, $3E, $20, $12, $CD, $17, $41, $1A, $F3, $CD, $4F, $41, $FB, $C3, $FF, $3E
.db $21, $21, $C7, $11, $78, $C7, $01, $05, $00, $ED, $B0, $2A, $C5, $C2, $29, $11
.db $67, $3F, $19, $5E, $23, $56, $21, $9A, $D1, $01, $0A, $00, $3E, $08, $32, $FC
.db $FF, $ED, $B0, $0E, $08, $EB, $09, $EB, $0E, $36, $09, $0E, $0A, $ED, $B0, $3E
.db $80, $32, $FC, $FF, $3A, $16, $C3, $FE, $0B, $3E, $0A, $28, $02, $3E, $0C, $32
.db $02, $C2, $C9, $18, $81, $3C, $81, $60, $81, $84, $81, $A8, $81, $3A, $05, $C2
.db $1F, $38, $3E, $1F, $38, $52, $1F, $38, $6C, $1F, $38, $1E, $3A, $04, $C2, $1F
.db $38, $1F, $1F, $38, $33, $1F, $38, $47, $1F, $D0, $CD, $2C, $40, $C0, $01, $08
.db $C8, $11, $02, $00, $FD, $21, $84, $C7, $18, $52, $3E, $18, $32, $89, $C7, $18
.db $ED, $CD, $2C, $40, $C0, $01, $F0, $60, $11, $80, $FF, $FD, $21, $85, $C7, $18
.db $3B, $3E, $18, $32, $89, $C7, $18, $ED, $CD, $2C, $40, $C0, $01, $10, $90, $11
.db $80, $00, $FD, $21, $85, $C7, $18, $24, $3E, $18, $32, $89, $C7, $18, $ED, $CD
.db $2C, $40, $C0, $01, $F8, $28, $3A, $88, $C7, $FE, $5C, $C8, $11, $FE, $FF, $FD
.db $21, $84, $C7, $18, $07, $3E, $18, $32, $89, $C7, $18, $E7, $FD, $7E, $00, $B8
.db $C8, $81, $FD, $77, $00, $2A, $86, $C7, $19, $22


.BANK 1 SLOT 1
.ORG $0000


; Data from 4000 to 46DF (1760 bytes)
.db $86, $C7, $7E, $B7, $28, $EC, $DD, $BE
.db $04, $28, $E7, $32, $88, $C7, $FE, $5C
.db $D8, $0E, $88, $21, $A2, $D4, $28, $0C
.db $FE, $5D, $2E, $AA, $0E, $A8, $28, $04
.db $0E, $C8, $2E, $B2, $22, $86, $C7, $79
.db $32, $84, $C7, $C9, $21, $89, $C7, $35
.db $C0, $36, $05, $C9

LABEL_4034:
.db	$CD, $05, $7B, $11
.db $00, $78, $01, $00, $03, $21, $00, $00
.db $F3, $CD, $63, $03, $FB, $21, $02, $C2
.db $34, $21, $81, $C7, $36, $00, $11, $82
.db $C7, $01, $7E, $00, $ED, $B0, $21, $00
.db $D0, $11, $01, $D0, $01, $00, $06, $36
.db $00, $ED, $B0, $CD, $66, $41, $21, $00
.db $C7, $11, $01, $C7, $01, $37, $00, $36
.db $00, $ED, $B0, $3E, $21, $32, $81, $C7
.db $11, $C0, $78, $21, $C0, $D0, $01, $40
.db $05, $F3, $CD, $46, $03, $FB, $CD, $DB
.db $41, $21, $FC, $41, $11, $40, $C2, $01
.db $20, $00, $ED, $B0, $11, $00, $60, $21
.db $1C, $42, $01, $20, $00, $F3, $CD, $46
.db $03, $FB, $11, $84, $C7, $21, $C0, $40
.db $01, $05, $00, $ED, $B0, $AF, $32, $04
.db $C3, $32, $00, $C3, $32, $D3, $C2, $11
.db $06, $80, $F3, $CF, $FB, $C3, $FD, $02
.db $28, $60, $0A, $D3, $41, $CD, $17, $41
.db $11, $40, $30, $19, $29, $29, $11, $00
.db $C9, $7C, $87, $87, $87, $12, $3A, $88
.db $C7, $FE, $5C, $3A, $85, $C7, $13, $12
.db $38, $04, $1C, $12, $1C, $12, $1C, $3E
.db $D0, $12, $1E, $80, $EB, $7B, $01, $00
.db $03, $77, $2C, $71, $3A, $84, $C7, $2C
.db $77, $2C, $71, $D6, $08, $10, $F8, $C9
.db $21, $81, $C7, $36, $38, $16, $C7, $35
.db $F8, $5E, $E5, $CD, $17, $41, $1A, $D5
.db $CD, $3A, $41, $D1, $E1, $18, $F0, $3A
.db $81, $C7, $21, $46, $D1, $D6, $18, $38
.db $0B, $2E, $C6, $D6, $18, $38, $05, $21
.db $46, $D2, $D6, $18, $C6, $18, $4F, $87
.db $85, $6F, $79, $1F, $1F, $E6, $06, $85

.db $6F, $C9, $E5, $EB, $21, $D7, $7C, $4F
.db $06, $00, $09, $09, $4E, $23, $7E, $12
.db $21, $C0, $FF, $19, $71, $E1, $C9, $CD
.db $3A, $41, $47, $7C, $D6, $58, $67, $EB
.db $CF, $78, $D3, $BE, $21, $C0, $FF, $19
.db $EB, $CF, $79, $D3, $BE, $C9, $21, $3C
.db $42, $11, $00, $D1, $7E, $23, $B7, $28
.db $31, $F2, $98, $41, $CB, $77, $20, $13
.db $E6, $3F, $47, $7E, $12, $13, $13, $EB
.db $36, $C0, $EB, $13, $13, $3C, $10, $F4
.db $23, $18, $E1, $E6, $3F, $4F, $06, $00
.db $ED, $A0, $13, $EA, $90, $41, $18, $D4
.db $47, $7E, $12, $13, $13, $10, $FB, $23
.db $18, $CA, $21, $46, $D1, $11, $01, $F3
.db $CD, $C8, $41, $23, $01, $05, $18, $CD
.db $D5, $41, $36, $07, $21, $37, $D1, $36
.db $03, $21, $07, $D1, $01, $01, $18, $CD
.db $D5, $41, $21, $76, $D1, $11, $03, $F3
.db $3E, $0D, $01, $3F, $00, $72, $2C, $73
.db $09, $3D, $20, $F9, $C9, $71, $2C, $2C
.db $10, $FB, $C9, $21, $80, $42, $11, $0A
.db $D3, $3E, $04, $01, $0B, $00, $ED, $A0
.db $13, $EB, $36, $00, $EB, $13, $13, $EA
.db $E6, $41, $EB, $01, $54, $00, $09, $EB
.db $3D, $20, $E8, $C9, $00, $00, $3F, $00
.db $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $3C, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $FF, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00
.db $00, $00, $00, $00, $00, $00, $00, $00

.db $00, $00, $00, $00, $03, $C0, $01, $F1
.db $17, $F2, $01, $F1, $0C, $C0, $D0, $D3
.db $D8, $DA, $DF, $DE, $C0, $E3, $D9, $DF
.db $DC, $C0, $D8, $CB, $D7, $CF, $E7, $58
.db $C0, $55, $C0, $8B, $CB, $2A, $C0, $8B
.db $D6, $1E, $C0, $01, $EB, $0B, $C0, $8A
.db $E1, $36, $C0, $CB, $CB, $CE, $E0, $C0
.db $DC, $DF, $CC, $C0, $CF, $D8, $CE, $09
.db $C0, $01, $F1, $17, $F2, $01, $F1, $00
.db $41, $42, $43, $44, $45, $46, $47, $48
.db $49, $4A, $4B, $4C, $4D, $4E, $4F, $50
.db $51, $52, $53, $54, $55, $56, $57, $58
.db $59, $5A, $2C, $3B, $2E, $21, $3F, $2D
.db $22, $5C, $5C, $5C, $5C, $5C, $5C, $5C
.db $5D, $5D, $5E, $5E

LABEL_42AC:
.db	$3E, $D7, $32, $04
.db $C0, $CD, $05, $7B, $21, $FF, $FF, $36
.db $17, $21, $67, $B7, $11, $40, $C2, $01
.db $11, $00, $ED, $B0, $21, $78, $B7, $11
.db $00, $40, $CD, $FA, $03, $21, $FF, $FF
.db $36, $1C, $21, $00, $BE, $CD, $62, $6B
.db $21, $00, $D0, $11, $00, $D3, $01, $00
.db $03, $ED, $B0, $21, $00, $D0, $01, $00
.db $01, $ED, $B0, $AF, $32, $00, $C3, $3E
.db $80, $32, $04, $C3, $21, $00, $D0, $11
.db $00, $78, $01, $00, $07, $F3, $CD, $46
.db $03, $FB, $3E, $8C, $32, $04, $C0, $CD
.db $20, $7B, $3E, $02, $32, $64, $C2, $3E
.db $02, $32, $07, $C3, $3E, $0E, $CD, $52
.db $00, $3A, $05, $C2, $E6, $30, $20, $14
.db $CD, $AA, $43, $3A, $07, $C3, $FE, $01
.db $20, $EA, $3A, $04, $C3, $FE, $80, $20
.db $E3, $CD, $37, $2D, $AF, $32, $64, $C2
.db $32, $07, $C3, $CD, $05, $7B, $3E, $08
.db $32, $9E, $C2, $CD, $47, $3D, $21, $FF
.db $FF, $36, $10, $21, $D8, $BA, $11, $00
.db $58, $CD, $FA, $03, $21, $58, $BD, $11
.db $00, $7E, $CD, $FA, $03, $AF, $32, $04
.db $C3, $32, $00, $C3, $3E, $0C, $CD, $52
.db $00, $CD, $20, $7B, $21, $FF, $FF, $36
.db $12, $21, $F4, $BE, $11, $86, $78, $01
.db $28, $05, $CD, $68, $3A, $CD, $37, $2D
.db $CD, $7C, $46, $3E, $00, $CD, $D1, $46
.db $21, $9B, $B4, $CD, $7D, $33, $3E, $01
.db $CD, $D1, $46, $21, $FC, $B4, $CD, $7D
.db $33, $3E, $02, $CD, $D1, $46, $21, $D5
.db $B5, $CD, $7D, $33, $3E, $D7, $32, $04
.db $C0, $C9, $11, $01, $00, $3A, $04, $C3
.db $83, $FE, $E0, $38, $04, $16, $01, $C6
.db $20, $32, $04, $C3, $3A, $07, $C3, $92
.db $32, $07, $C3, $FE, $01, $C0, $7A, $B7
.db $C8, $21, $88, $BE, $C3, $62, $6B, $CD
.db $7C, $46, $3E, $8A, $32, $04, $C0, $3E
.db $03, $CD, $D1, $46, $21, $17, $B6, $CD
.db $7D, $33, $3E, $04, $CD, $D1, $46, $21
.db $46, $B6, $CD, $7D, $33, $3E, $03, $CD
.db $D1, $46, $21, $4D, $B6, $CD, $7D, $33
.db $3E, $04, $CD, $D1, $46, $21, $6E, $B6
.db $CD, $7D, $33, $3E, $03, $CD, $D1, $46
.db $21, $C1, $B6, $CD, $7D, $33, $3E, $D8
.db $32, $04, $C0, $C9, $CD, $7C, $46, $3E
.db $8A, $32, $04, $C0, $3E, $05, $CD, $D1
.db $46, $21, $F3, $B6, $CD, $7D, $33, $3E
.db $03, $CD, $D1, $46, $21, $46, $B7, $CD
.db $7D, $33, $3E, $05, $CD, $D1, $46, $21
.db $86, $B7, $CD, $7D, $33, $3E, $03, $CD
.db $D1, $46, $21, $B9, $B7, $CD, $7D, $33
.db $3E, $05, $CD, $D1, $46, $21, $D1, $B7
.db $CD, $7D, $33, $CD, $05, $7B, $CD, $F3
.db $0F, $3E, $D8, $32, $04, $C0, $C3, $20
.db $7B, $CD, $7C, $46, $3E, $8A, $32, $04
.db $C0, $3E, $03, $21, $00, $C4, $CB, $46
.db $20, $0B, $3E, $05, $21, $20, $C4, $CB
.db $46, $20, $02, $3E, $04, $CD, $D1, $46
.db $21, $5C, $B8, $CD, $7D, $33, $3E, $06
.db $CD, $D1, $46, $21, $84, $B8, $CD, $7D
.db $33, $3E, $D8, $32, $04, $C0, $C9, $3A
.db $09, $C3, $FE, $17, $20, $09, $CD, $17
.db $45, $21, $14, $45, $C3, $09, $45, $CD
.db $7C, $46, $3E, $8A, $32, $04, $C0, $3E
.db $07, $CD, $D1, $46, $21, $29, $B9, $CD
.db $7D, $33, $3E, $08, $CD, $D1, $46, $21
.db $7C, $B9, $CD, $7D, $33, $CD, $17, $45
.db $3E, $0E, $32, $9E, $C2, $CD, $47, $3D
.db $3E, $0C, $CD, $52, $00, $21, $50, $C2
.db $06, $10, $36, $30, $23, $10, $FB, $CD
.db $20, $7B, $CD, $33, $2D, $21, $FF, $FF
.db $36, $0B, $21, $00, $80, $11, $50, $C2
.db $01, $08, $00, $ED, $B0, $3E, $46, $32
.db $E6, $C2, $CD, $FE, $5F, $CD, $0F, $10
.db $3A, $02, $C2, $FE, $02, $C8, $21, $11
.db $45, $3E, $08, $32, $02, $C2, $C3, $7B
.db $78, $17, $28, $1F, $00, $40, $4C, $CD
.db $05, $7B, $3E, $0F, $32, $9E, $C2, $CD
.db $47, $3D, $21, $FF, $FF, $36, $16, $21
.db $D8, $B9, $11, $51, $C2, $01, $0F, $00
.db $ED, $B0, $21, $E7, $B9, $11, $00, $60
.db $CD, $FA, $03, $3E, $0C, $CD, $52, $00
.db $CD, $20, $7B, $3E, $15, $32, $00, $C8
.db $CD, $B9, $18, $C3, $05, $7B, $CD, $05
.db $7B, $3E, $D0, $32, $00, $C9, $3E, $8B
.db $32, $04, $C0, $3E, $0D, $32, $9E, $C2
.db $CD, $47, $3D, $3E, $0C, $CD, $52, $00
.db $CD, $20, $7B, $06, $80, $CD, $49, $2D
.db $CD, $E4, $7C, $21, $B6, $BE, $CD, $CF
.db $31, $21, $D0, $BE, $CD, $CF, $31, $21
.db $E8, $BE, $CD, $CF, $31, $21, $FD, $BE
.db $CD, $CF, $31, $21, $09, $BF, $CD, $CF
.db $31, $21, $21, $BF, $CD, $CF, $31, $CD
.db $64, $34, $CD, $7C, $46, $3E, $03, $CD
.db $D1, $46, $21, $E8, $B9, $CD, $7D, $33
.db $3E, $05, $CD, $D1, $46, $21, $F0, $B9
.db $CD, $7D, $33, $3E, $06, $CD, $D1, $46
.db $21, $FB, $B9, $CD, $7D, $33, $3E, $04
.db $CD, $D1, $46, $21, $06, $BA, $CD, $7D
.db $33, $3E, $03, $CD, $D1, $46, $21, $12
.db $BA, $CD, $7D, $33, $21, $54, $BA, $CD
.db $7D, $33, $CD, $05, $7B, $21, $FF, $FF
.db $36, $1F, $21, $76, $96, $11, $40, $C2
.db $01, $11, $00, $ED, $B0, $21, $87, $96
.db $11, $00, $40, $CD, $FA, $03, $21, $FF
.db $FF, $36, $18, $21, $00, $D0, $11, $01
.db $D0, $01, $00, $06, $36, $00, $ED, $B0
.db $21, $E0, $A5, $11, $D4, $D0, $01, $16
.db $13, $CD, $64, $6E, $3E, $0C, $CD, $52
.db $00, $CD, $20, $7B, $CD, $47, $2D, $21
.db $F7, $3D, $22, $0C, $C3, $AF, $32, $0A
.db $C3, $CD, $1C, $66, $21, $FF, $FF, $36
.db $0F, $21, $EE, $BD, $11, $20, $58, $CD
.db $FA, $03, $3E, $01, $32, $F5, $C2, $3E
.db $91, $32, $04, $C0, $21, $80, $BF, $3E
.db $0F, $32, $FF, $FF, $7E, $FE, $FF, $28
.db $17, $FE, $0F, $20, $08, $06, $B4, $CD
.db $49, $2D, $23, $18, $EA, $E5, $32, $04
.db $C2, $CD, $EE, $65, $E1, $23, $18, $DF
.db $3E, $D7, $32, $04, $C0, $AF, $32, $F5
.db $C2, $06, $B4, $CD, $49, $2D, $3E, $02
.db $32, $02, $C2, $C9

LABEL_467C:
.db	$CD, $05, $7B, $21
.db $FF, $FF, $36, $10, $21, $D8, $BA, $11
.db $00, $58, $CD, $FA, $03, $21, $58, $BD
.db $11, $00, $7E, $CD, $FA, $03, $21, $FF
.db $FF, $36, $18, $21, $40, $C2, $11, $41
.db $C2, $36, $00, $01, $0F, $00, $ED, $B0
.db $21, $7A, $A5, $01, $10, $00, $ED, $B0
.db $21, $8A, $A5, $11, $00, $40, $CD, $FA
.db $03, $21, $84, $A4, $CD, $62, $6B, $AF
.db $32, $04, $C3, $32, $00, $C3, $32, $D3
.db $C2, $3E, $0C, $CD, $52, $00, $C3, $FD
.db $02, $F5, $CD, $FD, $7A, $F1, $6F, $87
.db $87, $85, $6F, $26, $00, $11, $1E, $47

_LABEL_46E0_115:
	add  hl, de
	ld   a, (hl)
	ld   ($FFFF), a
	inc  hl
	ld   e, (hl)
_LABEL_46E7_116:
	inc  hl
	ld   d, (hl)
	inc  hl
	push hl
	ex   de, hl
	ld   de, $C240
	ld   bc, $0010
	ldir
	ld   de, $6000
	call _LABEL_3FA_163
	ld   hl, $FFFF
	ld   (hl), :Bank24
	pop  hl
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	ld   de, $78CC
	ld   bc, $0C28
	di
	call _LABEL_390_168
	ld   de, $7C00
	ld   bc, $0100
	ld   hl, $0800
	call _LABEL_363_170
	ei
	jp   _LABEL_7B18_172


; Data from 471E to 471F (2 bytes)
.db $1F, $00

_LABEL_4720_114:
	add  a, b
	sub  b
	xor  b
	ld   e, $00
	add  a, b
	ld   (hl), b
	xor  d
	ld   e, $62
	adc  a, a
	ld   d, b
	xor  h
	ld   e, $2B
	sbc  a, h
	jr   nc, _LABEL_46E0_115
	rra
	in   a, ($8A)
	djnz _LABEL_46E7_116
	dec  e
	ld   hl, ($F0B6)
	or   c
	ld   (de), a
	adc  a, b
	or   e
	ret  nc

	or   e
	ld   e, $4E
	xor  d
	or   b
	or   l
	ld   e, $0C
	or   e
	sub  b
	or   a
_LABEL_474B_286:
	ld   a, ($C2DB)
	or   a
	jp   z, _LABEL_1BE1_117
	ld   de, $4771
	call _LABEL_4769_118
	ld   a, ($C29E)
	or   a
	jp   nz, _LABEL_3464_79
	call _LABEL_3464_79
	jp   _LABEL_15DC_119


; Data from 4765 to 4768 (4 bytes)
.db $E1, $C3, "%-"

_LABEL_4769_118:
	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, de
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	jp   (hl)


; Data from 4773 to 5769 (4087 bytes)
.db $DF, $48, $FC, $48, $22, $49, $28, $49
.db $2E, $49, $34, $49, $3A, $49, $40, $49
.db $5A, $49, $60, $49, $66, $49, $73, $49
.db $91, $49, $97, $49, $9D, $49, $A3, $49
.db $A9, $49, $AF, $49, $B5, $49, $B5, $49
.db $E0, $49, $E6, $49, $3E, $4A, $44, $4A
.db $4A, $4A, $50, $4A, $A9, $4A, $BE, $4A
.db $D3, $4A, $43, $4B, $52, $4B, $61, $4B
.db $67, $4B, $6D, $4B, $73, $4B, $79, $4B
.db $7F, $4B, $85, $4B, $8B, $4B, $91, $4B
.db $97, $4B, $9D, $4B, $BD, $4B, $D1, $4B
.db $D7, $4B, $DD, $4B, $E3, $4B, $E9, $4B
.db $EF, $4B, $F5, $4B, $FB, $4B, $01, $4C
.db $07, $4C, $0D, $4C, $70, $4C, $74, $4D
.db $7A, $4D, $9F, $4D, $A5, $4D, $AB, $4D
.db $D4, $4D, $FB, $4D, $9C, $4E, $B3, $4E
.db $B9, $4E, $BF, $4E, $C5, $4E, $D9, $4E
.db $DF, $4E, $E5, $4E, $EB, $4E, $F1, $4E
.db $F7, $4E, $FD, $4E, $03, $4F, $09, $4F
.db $0F, $4F, $15, $4F, $34, $4F, $3A, $4F
.db $40, $4F, $46, $4F, $4C, $4F, $52, $4F
.db $58, $4F, $71, $4F, $77, $4F, $7D, $4F
.db $83, $4F, $89, $4F, $8F, $4F, $95, $4F
.db $9B, $4F, $D8, $4F, $DE, $4F, $E4, $4F
.db $EA, $4F, $F0, $4F, $F6, $4F, $FC, $4F
.db $02, $50, $08, $50, $0E, $50, $14, $50
.db $1A, $50, $20, $50, $26, $50, $2C, $50
.db $40, $50, $46, $50, $4C, $50, $58, $50
.db $5E, $50, $64, $50, $6A, $50, $70, $50
.db $A6, $50, $BA, $50, $C0, $50, $C6, $50
.db $DA, $50, $01, $51, $07, $51, $0D, $51
.db $57, $51, $6F, $51, $B1, $51, $D6, $51
.db $DC, $51, $1D, $52, $49, $52, $70, $52
.db $84, $52, $8A, $52, $90, $52, $A4, $52
.db $B2, $52, $B8, $52, $BE, $52, $C4, $52
.db $CA, $52, $D0, $52, $37, $53, $8F, $4F
.db $95, $4F, $9B, $4F, $4B, $53, $95, $53
.db $9B, $53, $A1, $53, $A7, $53, $AD, $53
.db $B3, $53, $B9, $53, $BF, $53, $01, $54
.db $30, $54, $D0, $54, $FB, $54, $2F, $55
.db $35, $55, $35, $55, $38, $55, $95, $55
.db $A3, $55, $A9, $55, $BB, $55, $CD, $55
.db $E1, $55, $EF, $55, $19, $56, $66, $56
.db $9C, $56, $A2, $56, $35, $55, $35, $55
.db $CD, $56, $D3, $56, $D9, $56, $E9, $56
.db $F9, $56, $35, $55, $21, $01, $C5, $7E
.db $B7, $20, $08, $36, $01, $21, $02, $00
.db $CD, $5A, $57, $21, $06, $00, $CD, $5A
.db $57, $3E, $C1, $32, $04, $C0, $C3, $6D
.db $2A, $3A, $02, $C5, $B7, $20, $1A, $21
.db $08, $00, $CD, $5A, $57, $3E, $38, $32
.db $C4, $C2, $CD, $9F, $27, $3E, $38, $CD
.db $2E, $28, $20, $05, $3E, $01, $32, $02
.db $C5, $21, $10, $00, $C3, $5A, $57, $21
.db $12, $00, $C3, $5A, $57, $21, $14, $00
.db $C3, $5A, $57, $21, $16, $00, $C3, $5A
.db $57, $21, $18, $00, $C3, $5A, $57, $21
.db $1A, $00, $C3, $5A, $57, $21, $62, $00
.db $CD, $5A, $57, $CD, $19, $2D, $21, $60
.db $00, $28, $09, $21, $03, $00, $22, $C5
.db $C2, $21, $64, $00, $C3, $5A, $57, $21
.db $1C, $00, $C3, $5A, $57, $21, $1E, $00
.db $C3, $5A, $57, $3E, $33, $CD, $2E, $28
.db $28, $13, $21, $20, $00, $C3, $5A, $57
.db $3E, $33, $CD, $2E, $28, $28, $06, $21
.db $22, $00, $C3, $5A, $57, $21, $24, $00
.db $CD, $5A, $57, $3A, $09, $C3, $0F, $3D
.db $E6, $03, $32, $E9, $C2, $C9, $21, $26
.db $00, $C3, $5A, $57, $21, $28, $00, $C3
.db $5A, $57, $21, $2A, $00, $C3, $5A, $57
.db $21, $2E, $00, $C3, $5A, $57, $21, $30
.db $00, $C3, $5A, $57, $21, $32, $00, $C3
.db $5A, $57, $3A, $04, $C5, $FE, $07, $D2
.db $8C, $4A, $21, $70, $00, $CD, $5A, $57
.db $CD, $19, $2D, $21, $20, $00, $20, $12
.db $3E, $34, $CD, $2E, $28, $21, $CE, $00
.db $20, $08, $3E, $06, $32, $E9, $C2, $21
.db $24, $00, $C3, $5A, $57, $21, $86, $02
.db $C3, $5A, $57, $3E, $47, $32, $E6, $C2
.db $CD, $FE, $5F, $3A, $10, $C4, $B7, $28
.db $26, $21, $96, $02, $CD, $5A, $57, $CD
.db $19, $2D, $20, $1B, $3E, $AE, $32, $04
.db $C0, $3E, $01, $32, $C2, $C2, $21, $28
.db $B7, $CD, $CF, $31, $21, $00, $00, $22
.db $10, $C4, $21, $98, $02, $18, $03, $21
.db $9A, $02, $CD, $5A, $57, $CD, $64, $34
.db $3A, $F0, $C4, $B7, $28, $12, $3E, $38
.db $CD, $2E, $28, $28, $0B, $21, $18, $C5
.db $22, $E1, $C2, $3E, $38, $32, $DF, $C2
.db $C3, $89, $53, $21, $6A, $00, $C3, $5A
.db $57, $21, $6C, $00, $C3, $5A, $57, $21
.db $6E, $00, $C3, $5A, $57, $3A, $04, $C5
.db $FE, $07, $30, $35, $21, $70, $00, $CD
.db $5A, $57, $CD, $19, $2D, $28, $06, $21
.db $20, $00, $C3, $5A, $57, $3E, $34, $CD
.db $2E, $28, $28, $06, $21, $CE, $00, $C3
.db $5A, $57, $21, $24, $00, $CD, $5A, $57
.db $3A, $05, $C3, $FE, $60, $21, $A3, $4A
.db $20, $03, $21, $A6, $4A, $CD, $7B, $78
.db $C9, $21, $9E, $01, $CD, $5A, $57, $3E
.db $34, $CD, $2E, $28, $C0, $C5, $CD, $7F
.db $27, $C1, $21, $A0, $01, $C3, $5A, $57
.db $05, $20, $17, $05, $21, $15, $3E, $33
.db $CD, $2E, $28, $21, $20, $00, $20, $08
.db $3E, $04, $32, $E9, $C2, $21, $24, $00
.db $C3, $5A, $57, $3E, $33, $CD, $2E, $28
.db $21, $22, $00, $20, $08, $3E, $05, $32
.db $E9, $C2, $21, $24, $00, $C3, $5A, $57
.db $21, $72, $00, $CD, $5A, $57, $CD, $19
.db $2D, $28, $06, $21, $7C, $00, $C3, $5A
.db $57, $21, $74, $00, $CD, $5A, $57, $CD
.db $19, $2D, $20, $06, $21, $7E, $00, $C3
.db $5A, $57, $21, $76, $00, $CD, $5A, $57
.db $CD, $19, $2D, $20, $06, $21, $7E, $00
.db $C3, $5A, $57, $21, $64, $00, $22, $C5
.db $C2, $21, $78, $00, $CD, $5A, $57, $CD
.db $19, $2D, $28, $06, $21, $7C, $00, $C3
.db $5A, $57, $11, $64, $00, $2A, $E0, $C4
.db $B7, $ED, $52, $30, $06, $21, $57, $BD
.db $C3, $CF, $31, $22, $E0, $C4, $21, $7A
.db $00, $CD, $5A, $57, $3E, $34, $32, $C4
.db $C2, $CD, $2E, $28, $C8, $C3, $9F, $27
.db $3A, $F0, $C4, $B7, $21, $34, $00, $28
.db $03, $21, $3A, $00, $C3, $5A, $57, $3A
.db $F0, $C4, $B7, $21, $3C, $00, $28, $03
.db $21, $40, $00, $C3, $5A, $57, $21, $42
.db $00, $C3, $5A, $57, $21, $44, $00, $C3
.db $5A, $57, $21, $46, $00, $C3, $5A, $57
.db $21, $48, $00, $C3, $5A, $57, $21, $4A
.db $00, $C3, $5A, $57, $21, $4C, $00, $C3
.db $5A, $57, $21, $4E, $00, $C3, $5A, $57
.db $21, $50, $00, $C3, $5A, $57, $21, $52
.db $00, $C3, $5A, $57, $21, $54, $00, $C3
.db $5A, $57, $21, $56, $00, $CD, $5A, $57
.db $CD, $19, $2D, $21, $60, $00, $20, $0F
.db $3E, $2D, $CD, $2E, $28, $28, $05, $21
.db $04, $C6, $36, $00, $21, $58, $00, $C3
.db $5A, $57, $21, $5C, $00, $CD, $5A, $57
.db $CD, $19, $2D, $21, $60, $00, $28, $03
.db $21, $5E, $00, $C3, $5A, $57, $21, $80
.db $00, $C3, $5A, $57, $21, $82, $00, $C3
.db $5A, $57, $21, $84, $00, $C3, $5A, $57
.db $21, $86, $00, $C3, $5A, $57, $21, $88
.db $00, $C3, $5A, $57, $21, $8A, $00, $C3
.db $5A, $57, $21, $8C, $00, $C3, $5A, $57
.db $21, $8E, $00, $C3, $5A, $57, $21, $90
.db $00, $C3, $5A, $57, $21, $88, $02, $C3
.db $5A, $57, $3A, $F0, $C4, $B7, $28, $06
.db $21, $8A, $02, $C3, $5A, $57, $21, $0A
.db $00, $22, $C5, $C2, $21, $92, $00, $CD
.db $5A, $57, $CD, $19, $2D, $20, $06, $21
.db $94, $00, $C3, $5A, $57, $3E, $38, $CD
.db $2E, $28, $20, $33, $E5, $21, $96, $00
.db $CD, $5A, $57, $CD, $19, $2D, $E1, $20
.db $26, $C5, $CD, $7F, $27, $C1, $21, $9A
.db $00, $CD, $5A, $57, $CD, $64, $34, $E1
.db $FD, $21, $10, $C4, $CD, $F1, $16, $3E
.db $01, $32, $F0, $C4, $3E, $2B, $32, $C4
.db $C2, $CD, $9F, $27, $C3, $CF, $43, $21
.db $7C, $00, $C3, $5A, $57, $3A, $16, $C5
.db $B7, $28, $21, $21, $A6, $02, $CD, $5A
.db $57, $CD, $64, $34, $E1, $21, $E6, $22
.db $22, $0C, $C3, $AF, $32, $0A, $C3, $21
.db $02, $C2, $36, $0B, $CD, $1C, $66, $3E
.db $85, $C3, $97, $0C, $3E, $35, $CD, $7D
.db $61, $CD, $6A, $57, $3A, $F0, $C4, $FE
.db $03, $30, $07, $3E, $37, $CD, $2E, $28
.db $20, $0C, $21, $9E, $02, $CD, $5A, $57
.db $21, $AA, $00, $C3, $5A, $57, $21, $A4
.db $00, $CD, $5A, $57, $C5, $3E, $37, $32
.db $C4, $C2, $CD, $9F, $27, $C1, $3E, $37
.db $CD, $2E, $28, $C0, $21, $9C, $02, $CD
.db $5A, $57, $CD, $05, $7B, $CD, $64, $34
.db $3E, $20, $32, $9E, $C2, $CD, $47, $3D
.db $3E, $D0, $32, $00, $C9, $3E, $0C, $CD
.db $52, $00, $21, $6C, $4D, $11, $40, $C2
.db $01, $08, $00, $ED, $B0, $CD, $20, $7B
.db $21, $A0, $02, $CD, $5A, $57, $CD, $64
.db $34, $3E, $A0, $32, $04, $C0, $CD, $47
.db $2D, $3E, $4A, $32, $E6, $C2, $CD, $FE
.db $5F, $3A, $00, $C4, $F5, $3A, $10, $C4
.db $F5, $3A, $20, $C4, $F5, $CD, $0F, $10
.db $F1, $32, $20, $C4, $F1, $32, $10, $C4
.db $F1, $32, $00, $C4, $CD, $05, $7B, $CD
.db $47, $3D, $3E, $D0, $32, $00, $C9, $3E
.db $0C, $CD, $52, $00, $CD, $20, $7B, $21
.db $A2, $02, $CD, $5A, $57, $CD, $05, $7B
.db $3E, $1D, $32, $9E, $C2, $CD, $47, $3D
.db $CD, $6D, $2A, $3E, $0C, $CD, $52, $00
.db $CD, $20, $7B, $3E, $35, $CD, $7D, $61
.db $CD, $6A, $57, $21, $AA, $00, $C3, $5A
.db $57, $00, $00, $3F, $00, $00, $00, $00
.db $00, $21, $B4, $00, $C3, $5A, $57, $21
.db $B6, $00, $CD, $5A, $57, $CD, $05, $7B
.db $CD, $64, $34, $3E, $A0, $32, $04, $C0
.db $CD, $47, $2D, $CD, $6D, $2A, $3E, $C1
.db $32, $04, $C0, $CD, $20, $7B, $21, $B8
.db $00, $C3, $5A, $57, $21, $02, $01, $C3
.db $5A, $57, $21, $06, $01, $C3, $5A, $57
.db $21, $BA, $00, $CD, $5A, $57, $CD, $19
.db $2D, $28, $06, $21, $C2, $00, $C3, $5A
.db $57, $3E, $24, $CD, $2E, $28, $20, $0B
.db $C5, $CD, $7F, $27, $C1, $21, $BC, $00
.db $C3, $5A, $57, $21, $0E, $02, $C3, $5A
.db $57, $21, $BA, $00, $CD, $5A, $57, $CD
.db $19, $2D, $28, $06, $21, $C2, $00, $C3
.db $5A, $57, $3E, $24, $CD, $2E, $28, $20
.db $09, $CD, $7F, $27, $21, $C4, $00, $C3
.db $5A, $57, $21, $0E, $02, $C3, $5A, $57
.db $3A, $04, $C5, $B7, $CA, $65, $47, $3E
.db $34, $CD, $7D, $61, $CD, $6A, $57, $3A
.db $04, $C5, $FE, $07, $38, $06, $21, $D8
.db $00, $C3, $5A, $57, $FE, $02, $30, $06
.db $21, $CA, $00, $C3, $5A, $57, $FE, $03
.db $30, $36, $21, $B0, $04, $22, $C5, $C2
.db $21, $8C, $02, $CD, $5A, $57, $CD, $19
.db $2D, $28, $06, $21, $DA, $00, $C3, $5A
.db $57, $11, $B0, $04, $2A, $E0, $C4, $B7
.db $ED, $52, $30, $06, $21, $D0, $00, $C3
.db $5A, $57, $22, $E0, $C4, $3E, $03, $32
.db $04, $C5, $21, $90, $02, $C3, $5A, $57
.db $FE, $05, $30, $0A, $3C, $32, $04, $C5
.db $21, $92, $02, $C3, $5A, $57, $FE, $06
.db $30, $17, $3C, $32, $04, $C5, $21, $D2
.db $00, $CD, $5A, $57, $3E, $32, $CD, $2E
.db $28, $28, $13, $21, $D6, $00, $CD, $5A
.db $57, $3E, $32, $CD, $2E, $28, $28, $06
.db $21, $04, $01, $C3, $5A, $57, $3E, $07
.db $32, $04, $C5, $21, $94, $02, $C3, $5A
.db $57, $21, $04, $C5, $7E, $FE, $02, $DA
.db $65, $47, $3E, $10, $CD, $7D, $61, $CD
.db $6A, $57, $21, $DC, $00, $C3, $5A, $57
.db $21, $18, $01, $C3, $5A, $57, $21, $0E
.db $01, $C3, $5A, $57, $21, $12, $01, $C3
.db $5A, $57, $21, $14, $01, $CD, $5A, $57
.db $CD, $19, $2D, $21, $16, $01, $20, $03
.db $21, $3C, $01, $C3, $5A, $57, $21, $0C
.db $01, $C3, $5A, $57, $21, $1C, $01, $C3
.db $5A, $57, $21, $1E, $01, $C3, $5A, $57
.db $21, $20, $01, $C3, $5A, $57, $21, $26
.db $01, $C3, $5A, $57, $21, $28, $01, $C3
.db $5A, $57, $21, $2E, $01, $C3, $5A, $57
.db $21, $30, $01, $C3, $5A, $57, $21, $32
.db $01, $C3, $5A, $57, $21, $34, $01, $C3
.db $5A, $57, $21, $3A, $01, $CD, $5A, $57
.db $CD, $19, $2D, $21, $3C, $01, $28, $0E
.db $3A, $07, $C5, $B7, $20, $05, $3E, $01
.db $32, $07, $C5, $21, $3E, $01, $C3, $5A
.db $57, $21, $36, $01, $C3, $5A, $57, $21
.db $66, $01, $C3, $5A, $57, $21, $68, $01
.db $C3, $5A, $57, $21, $6A, $01, $C3, $5A
.db $57, $21, $6C, $01, $C3, $5A, $57, $21
.db $70, $01, $C3, $5A, $57, $21, $72, $01
.db $CD, $5A, $57, $CD, $19, $2D, $21, $7C
.db $01, $20, $08, $3E, $01, $32, $08, $C5
.db $21, $74, $01, $C3, $5A, $57, $21, $7E
.db $01, $C3, $5A, $57, $21, $80, $01, $C3
.db $5A, $57, $21, $84, $01, $C3, $5A, $57
.db $21, $86, $01, $C3, $5A, $57, $21, $88
.db $01, $C3, $5A, $57, $21, $8C, $01, $C3
.db $5A, $57, $21, $90, $01, $C3, $5A, $57
.db $21, $E8, $03, $22, $C5, $C2, $21, $94
.db $01, $CD, $5A, $57, $CD, $19, $2D, $28
.db $06, $21, $9C, $01, $C3, $5A, $57, $11
.db $E8, $03, $2A, $E0, $C4, $B7, $ED, $52
.db $30, $06, $21, $9A, $01, $C3, $5A, $57
.db $22, $E0, $C4, $21, $98, $01, $CD, $5A
.db $57, $3E, $3B, $32, $C4, $C2, $CD, $2E
.db $28, $C8, $C3, $9F, $27, $21, $A2, $01
.db $C3, $5A, $57, $21, $A4, $01, $C3, $5A
.db $57, $21, $A6, $01, $C3, $5A, $57, $21
.db $AA, $01, $C3, $5A, $57, $21, $B2, $01
.db $C3, $5A, $57, $21, $B8, $01, $C3, $5A
.db $57, $21, $BA, $01, $C3, $5A, $57, $21
.db $BC, $01, $C3, $5A, $57, $21, $BE, $01
.db $C3, $5A, $57, $21, $C4, $01, $C3, $5A
.db $57, $21, $C8, $01, $C3, $5A, $57, $21
.db $CA, $01, $C3, $5A, $57, $21, $CC, $01
.db $C3, $5A, $57, $21, $D0, $01, $C3, $5A
.db $57, $21, $D6, $01, $CD, $5A, $57, $CD
.db $19, $2D, $21, $DA, $01, $28, $03, $21
.db $D8, $01, $C3, $5A, $57, $21, $DC, $01
.db $C3, $5A, $57, $21, $DE, $01, $C3, $5A
.db $57, $21, $0A, $00, $22, $C5, $C2, $21
.db $E0, $01, $C3, $5A, $57, $21, $E2, $01
.db $C3, $5A, $57, $21, $E4, $01, $C3, $5A
.db $57, $21, $E6, $01, $C3, $5A, $57, $21
.db $E8, $01, $C3, $5A, $57, $21, $90, $01
.db $22, $C5, $C2, $21, $EA, $01, $CD, $5A
.db $57, $CD, $19, $2D, $28, $06, $21, $F0
.db $01, $C3, $5A, $57, $11, $90, $01, $2A
.db $E0, $C4, $B7, $ED, $52, $30, $06, $21
.db $F2, $01, $C3, $5A, $57, $22, $E0, $C4
.db $3E, $01, $32, $09, $C5, $21, $F4, $01
.db $C3, $5A, $57, $21, $FA, $01, $CD, $5A
.db $57, $CD, $19, $2D, $21, $FC, $01, $28
.db $03, $21, $FE, $01, $C3, $5A, $57, $21
.db $00, $02, $C3, $5A, $57, $21, $02, $02
.db $C3, $5A, $57, $21, $04, $02, $CD, $5A
.db $57, $CD, $19, $2D, $21, $06, $02, $28
.db $03, $21, $08, $02, $C3, $5A, $57, $21
.db $BA, $00, $CD, $5A, $57, $CD, $19, $2D
.db $28, $06, $21, $0C, $02, $C3, $5A, $57
.db $3E, $24, $CD, $2E, $28, $20, $09, $CD
.db $7F, $27, $21, $0A, $02, $C3, $5A, $57
.db $21, $0E, $02, $C3, $5A, $57, $21, $10
.db $02, $C3, $5A, $57, $21, $6A, $02, $C3
.db $5A, $57, $21, $18, $01, $22, $C5, $C2
.db $21, $4A, $02, $CD, $5A, $57, $CD, $19
.db $2D, $28, $06, $21, $E3, $B7, $C3, $CF
.db $31, $11, $18, $01, $2A, $E0, $C4, $B7
.db $ED, $52, $30, $06, $21, $57, $BD, $C3
.db $CF, $31, $3A, $E2, $C4, $FE, $18, $38
.db $06, $21, $13, $B8, $C3, $CF, $31, $22
.db $E0, $C4, $21, $0A, $02, $CD, $5A, $57
.db $3E, $36, $32, $C4, $C2, $CD, $2E, $28
.db $C8, $C3, $9F, $27, $3E, $08, $32, $E6
.db $C2, $CD, $FE, $5F, $3A, $F0, $C4, $FE
.db $03, $21, $AC, $00, $20, $03, $21, $B2
.db $00, $C3, $5A, $57, $3A, $F0, $C4, $FE
.db $03, $D2, $65, $47, $3E, $3B, $CD, $7D
.db $61, $CD, $6A, $57, $21, $AE, $00, $CD
.db $5A, $57, $3E, $37, $CD, $2E, $28, $C0
.db $CD, $7F, $27, $E1, $CD, $64, $34, $CD
.db $25, $2D, $3E, $01, $32, $06, $C5, $FD
.db $21, $30, $C4, $FD, $36, $0A, $01, $FD
.db $36, $0B, $11, $CD, $F1, $16, $3E, $03
.db $32, $F0, $C4, $C3, $61, $44, $21, $04
.db $C5, $7E, $FE, $02, $D2, $65, $47, $3E
.db $10, $CD, $7D, $61, $CD, $6A, $57, $21
.db $04, $C5, $7E, $FE, $01, $11, $DC, $00
.db $20, $05, $36, $02, $11, $F6, $00, $EB
.db $C3, $5A, $57, $21, $F8, $00, $C3, $5A
.db $57, $3A, $04, $C5, $B7, $C2, $65, $47
.db $3E, $34, $CD, $7D, $61, $CD, $6A, $57
.db $21, $03, $C5, $7E, $B7, $20, $07, $34
.db $21, $DE, $00, $C3, $5A, $57, $FE, $01
.db $20, $07, $34, $21, $E0, $00, $C3, $5A
.db $57, $21, $E2, $00, $CD, $5A, $57, $CD
.db $19, $2D, $21, $D4, $00, $20, $08, $21
.db $04, $C5, $36, $01, $21, $E4, $00, $C3
.db $5A, $57, $3E, $2E, $32, $E6, $C2, $CD
.db $FE, $5F, $21, $E6, $00, $CD, $5A, $57
.db $CD, $19, $2D, $20, $0D, $3E, $33, $CD
.db $2E, $28, $20, $06, $21, $24, $00, $C3
.db $5A, $57, $21, $E8, $00, $CD, $5A, $57
.db $CD, $64, $34, $C3, $89, $53, $21, $BA
.db $00, $CD, $5A, $57, $CD, $19, $2D, $28
.db $06, $21, $C2, $00, $C3, $5A, $57, $3E
.db $24, $CD, $2E, $28, $20, $09, $CD, $7F
.db $27, $21, $EA, $00, $C3, $5A, $57, $21
.db $CE, $00, $C3, $5A, $57, $21, $EC, $00
.db $CD, $5A, $57, $CD, $19, $2D, $21, $3C
.db $01, $28, $03, $21, $24, $01, $C3, $5A
.db $57, $21, $EE, $00, $C3, $5A, $57, $21
.db $F0, $00, $C3, $5A, $57, $21, $F2, $00
.db $CD, $5A, $57, $CD, $19, $2D, $21, $4C
.db $01, $28, $03, $21, $3C, $01, $C3, $5A
.db $57, $3E, $16, $32, $E6, $C2, $CD, $FE
.db $5F, $21, $F4, $00, $C3, $5A, $57, $21
.db $FC, $00, $C3, $5A, $57, $21, $FE, $00
.db $C3, $5A, $57, $21, $00, $01, $C3, $5A
.db $57, $21, $0A, $01, $C3, $5A, $57, $21
.db $1A, $02, $C3, $5A, $57, $21, $48, $01
.db $CD, $5A, $57, $CD, $19, $2D, $28, $06
.db $21, $52, $01, $C3, $5A, $57, $21, $4E
.db $01, $CD, $5A, $57, $21, $50, $01, $CD
.db $5A, $57, $CD, $19, $2D, $20, $E9, $21
.db $4E, $01, $CD, $5A, $57, $21, $54, $01
.db $CD, $5A, $57, $CD, $19, $2D, $20, $D8
.db $21, $4E, $01, $CD, $5A, $57, $21, $56
.db $01, $CD, $5A, $57, $CD, $19, $2D, $20
.db $06, $21, $58, $01, $C3, $5A, $57, $21
.db $5A, $01, $CD, $5A, $57, $CD, $19, $2D
.db $28, $B6, $21, $5C, $01, $CD, $5A, $57
.db $3E, $3C, $32, $C4, $C2, $CD, $2E, $28
.db $C8, $C3, $9F, $27, $21, $60, $01, $CD
.db $5A, $57, $CD, $19, $2D, $21, $62, $01
.db $28, $03, $21, $64, $01, $C3, $5A, $57
.db $3E, $2E, $32, $E6, $C2, $CD, $FE, $5F
.db $21, $1C, $02, $CD, $5A, $57, $CD, $19
.db $2D, $20, $22, $3E, $33, $CD, $2E, $28
.db $20, $1B, $21, $1E, $02, $CD, $5A, $57
.db $CD, $64, $34, $E1, $21, $9C, $15, $22
.db $0C, $C3, $3E, $01, $32, $0A, $C3, $21
.db $02, $C2, $36, $0A, $C9, $21, $E8, $00
.db $CD, $5A, $57, $CD, $64, $34, $CD, $0F
.db $10, $3A, $00, $C8, $B7, $C4, $E1, $1B
.db $E1, $C9, $21, $22, $02, $C3, $5A, $57
.db $21, $24, $02, $C3, $5A, $57, $21, $26
.db $02, $C3, $5A, $57, $21, $2E, $02, $C3
.db $5A, $57, $21, $32, $02, $C3, $5A, $57
.db $21, $18, $02, $C3, $5A, $57, $21, $14
.db $02, $C3, $5A, $57, $3E, $2E, $32, $E6
.db $C2, $CD, $FE, $5F, $21, $9C, $00, $CD
.db $5A, $57, $CD, $19, $2D, $28, $08, $21
.db $A2, $00, $CD, $5A, $57, $18, $1D, $3E
.db $36, $CD, $2E, $28, $20, $10, $C5, $CD
.db $7F, $27, $C1, $3E, $FF, $32, $11, $C5
.db $21, $9E, $00, $C3, $5A, $57, $21, $A0
.db $00, $CD, $5A, $57, $E1, $CD, $64, $34
.db $CD, $DC, $15, $C3, $8C, $68, $21, $3E
.db $02, $CD, $5A, $57, $CD, $19, $2D, $28
.db $06, $21, $46, $02, $C3, $5A, $57, $3E
.db $3A, $CD, $2E, $28, $20, $11, $CD, $7F
.db $27, $3E, $2F, $32, $C4, $C2, $CD, $9F
.db $27, $21, $44, $02, $C3, $5A, $57, $21
.db $48, $02, $C3, $5A, $57, $3E, $31, $32
.db $E6, $C2, $CD, $FE, $5F, $3A, $3B, $C4
.db $47, $3E, $18, $B8, $28, $05, $CD, $2E
.db $28, $20, $06, $21, $58, $02, $C3, $5A
.db $57, $3A, $F0, $C4, $FE, $03, $30, $14
.db $21, $5A, $02, $CD, $5A, $57, $CD, $19
.db $2D, $21, $5E, $02, $28, $03, $21, $60
.db $02, $C3, $5A, $57, $21, $4C, $02, $CD
.db $5A, $57, $3A, $30, $C4, $B7, $20, $06
.db $21, $A8, $02, $C3, $5A, $57, $21, $4E
.db $02, $CD, $5A, $57, $CD, $64, $34, $3A
.db $31, $C4, $F5, $3A, $00, $C4, $F5, $3A
.db $10, $C4, $F5, $3A, $20, $C4, $F5, $AF
.db $32, $00, $C4, $32, $10, $C4, $32, $20
.db $C4, $CD, $0F, $10, $F1, $32, $20, $C4
.db $F1, $32, $10, $C4, $F1, $32, $00, $C4
.db $F1, $47, $3A, $31, $C4, $B7, $20, $0F
.db $78, $32, $31, $C4, $3E, $01, $32, $30
.db $C4, $21, $56, $02, $C3, $5A, $57, $21
.db $50, $02, $CD, $5A, $57, $3E, $18, $32
.db $C4, $C2, $C3, $9F, $27, $3E, $3E, $32
.db $E6, $C2, $CD, $FE, $5F, $21, $62, $02
.db $CD, $5A, $57, $CD, $64, $34, $CD, $EF
.db $54, $3E, $FF, $32, $17, $C5, $21, $66
.db $02, $C3, $5A, $57, $CD, $0F, $10, $3A
.db $02, $C2, $FE, $02, $C0, $E1, $E1, $C9
.db $3A, $16, $C5, $B7, $C2, $65, $47, $3E
.db $48, $32, $E6, $C2, $CD, $FE, $5F, $21
.db $6C, $02, $CD, $5A, $57, $CD, $19, $2D
.db $21, $6E, $02, $28, $03, $21, $70, $02
.db $CD, $5A, $57, $CD, $64, $34, $CD, $EF
.db $54, $3E, $01, $32, $16, $C5, $21, $AA
.db $02, $C3, $5A, $57, $21, $AA, $B7, $C3
.db $CF, $31, $CD, $25, $2D, $CD, $E1, $1B
.db $E1, $C9, $21, $69, $B5, $CD, $CF, $31
.db $C3, $64, $34, $3E, $32, $32, $C4, $C2
.db $CD, $2E, $28, $28, $ED, $CD, $64, $34
.db $21, $01, $C8, $34, $CD, $6A, $57, $CD
.db $25, $2D, $21, $2C, $01, $CD, $5A, $57
.db $C3, $9F, $27, $3A, $08, $C5, $B7, $28
.db $D1, $3E, $32, $32, $C4, $C2, $CD, $2E
.db $28, $20, $C7, $3E, $22, $32, $C4, $C2
.db $CD, $2E, $28, $28, $BD, $21, $78, $01
.db $CD, $5A, $57, $CD, $64, $34, $C3, $9F
.db $27, $21, $FA, $00, $CD, $5A, $57, $C3
.db $64, $34, $3E, $2B, $32, $E6, $C2, $CD
.db $FE, $5F, $21, $34, $02, $C3, $5A, $57
.db $21, $34, $02, $C3, $5A, $57, $3E, $1B
.db $32, $E6, $C2, $CD, $FE, $5F, $AF, $32
.db $C3, $CB, $21, $38, $02, $C3, $5A, $57
.db $3E, $26, $32, $E6, $C2, $CD, $FE, $5F
.db $E1, $21, $00, $00, $22, $DD, $C2, $C3
.db $0F, $10, $21, $28, $02, $CD, $5A, $57
.db $CD, $19, $2D, $21, $2C, $02, $28, $03
.db $21, $2A, $02, $C3, $5A, $57, $3E, $08
.db $32, $E6, $C2, $CD, $FE, $5F, $21, $12
.db $02, $C3, $5A, $57, $3A, $04, $C5, $FE
.db $07, $30, $06, $21, $82, $02, $C3, $5A
.db $57, $21, $84, $02, $CD, $5A, $57, $3A
.db $01, $C3, $FE, $40, $21, $13, $56, $30
.db $03, $21, $16, $56, $CD, $7B, $78, $C9
.db $07, $1B, $1B, $07, $1B, $1D, $3E, $93
.db $32, $04, $C0, $CD, $47, $2D, $3E, $1F
.db $32, $9E, $C2, $CD, $47, $3D, $21, $FF
.db $FF, $36, $13, $21, $00, $80, $11, $50
.db $C2, $01, $10, $00, $ED, $B0, $3E, $0C
.db $CD, $52, $00, $CD, $20, $7B, $3E, $49
.db $32, $E6, $C2, $CD, $FE, $5F, $CD, $33
.db $2D, $3E, $20, $32, $9E, $C2, $CD, $EF
.db $54, $CD, $64, $34, $3A, $00, $C4, $B7
.db $20, $09, $21, $64, $BF, $CD, $CF, $31
.db $CD, $64, $34, $CD, $05, $7B, $3E, $1D
.db $32, $9E, $C2, $CD, $47, $3D, $3E, $0C
.db $CD, $52, $00, $CD, $20, $7B, $3E, $35
.db $CD, $7D, $61, $CD, $6A, $57, $21, $72
.db $02, $CD, $5A, $57, $CD, $19, $2D, $21
.db $12, $02, $28, $03, $21, $30, $02, $CD
.db $5A, $57, $CD, $64, $34, $E1, $C3, $4E
.db $45, $21, $A4, $02, $C3, $5A, $57, $3A
.db $F0, $C2, $57, $1E, $00, $7B, $32, $C2
.db $C2, $CB, $1A, $D5, $21, $28, $B7, $DC
.db $CF, $31, $D1, $1C, $7B, $FE, $04, $20
.db $EC, $06, $04, $78, $3D, $CD, $7D, $18
.db $20, $05, $10, $F7, $C3, $02, $16, $C3
.db $64, $34, $21, $3A, $02, $C3, $5A, $57
.db $21, $7A, $02, $C3, $5A, $57, $21, $CE
.db $BD, $CD, $CF, $31, $CD, $19, $2D, $C0
.db $3E, $81, $32, $E9, $C2, $C9, $21, $E6
.db $BD, $CD, $CF, $31, $CD, $19, $2D, $C0
.db $3E, $82, $32, $E9, $C2, $C9, $21, $54
.db $B7, $CD, $CF, $31, $C5, $CD, $21, $3A
.db $CB, $61, $C1, $C0, $57, $3A, $09, $C3
.db $0F, $0F, $0F, $E6, $03, $5F, $BA, $20
.db $14, $B7, $21, $99, $B7, $28, $09, $3D
.db $21, $90, $B7, $28, $03, $21, $85, $B7
.db $CD, $CF, $31, $18, $D1, $7A, $B7, $21
.db $7B, $B7, $28, $09, $3D, $21, $6F, $B7
.db $28, $03, $21, $61, $B7, $D5, $CD, $CF
.db $31, $CD, $19, $2D, $D1, $20, $B7, $7B
.db $87, $83, $82, $16, $00, $5F, $21, $52
.db $57, $19, $7E, $32, $E9, $C2, $C9, $81
.db $83, $84, $85, $82, $86, $87, $88, $3E
.db $02, $32, $FF, $FF, $11, $FE, $7F, $19
.db $7E, $23, $66, $6F, $C3, $D4, $31

_LABEL_576A_120:
	ld   hl, $C289
	ld   ($C287), hl
	ld   de, $C28B
	ld   bc, $000E
	ld   (hl), $00
	inc  hl
	ld   (hl), $FF
	dec  hl
	ldir
	ld   hl, $C900
	ld   ($C217), hl
	ld   hl, $C980
	ld   ($C219), hl
	ld   iy, $C800
	ld   bc, $0800
_LABEL_5791_123:
	ld   a, (iy+0)
	and  $7F
	jr   z, _LABEL_57B1_121
	push bc
	ld   hl, $5825
	call _LABEL_E6_122
	pop  bc
	or   a
	jp   z, _LABEL_57B1_121
	ld   hl, ($C287)
	ld   a, (iy+2)
	ld   (hl), a
	inc  hl
	ld   (hl), c
	inc  hl
	ld   ($C287), hl
_LABEL_57B1_121:
	ld   de, $0020
	add  iy, de
	inc  c
	djnz _LABEL_5791_123
	ld   de, $C289
	ld   b, $03
_LABEL_57BE_126:
	push bc
	ld   l, e
	ld   h, d
	inc  hl
	inc  hl
_LABEL_57C3_125:
	ld   a, (de)
	cp   (hl)
	jr   nc, _LABEL_57D4_124
	ld   c, a
	ld   a, (hl)
	ld   (hl), c
	ld   (de), a
	inc  hl
	inc  de
	ld   a, (de)
	ld   c, a
	ld   a, (hl)
	ld   (hl), c
	ld   (de), a
	dec  hl
	dec  de
_LABEL_57D4_124:
	inc  hl
	inc  hl
	djnz _LABEL_57C3_125
	inc  de
	inc  de
	pop  bc
	djnz _LABEL_57BE_126
	ld   hl, $C28A
	ld   b, $08
_LABEL_57E2_132:
	ld   a, (hl)
	cp   $FF
	jr   z, _LABEL_580E_127
	push bc
	push hl
	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   de, $C800
	add  hl, de
	push hl
	pop  iy
	cp   $04
	ld   a, $03
	ld   bc, $96F4
	jr   c, _LABEL_5806_128
	ld   a, $15
	ld   bc, $8000
_LABEL_5806_128:
	ld   ($FFFF), a
	call _LABEL_5853_129
	pop  hl
	pop  bc
_LABEL_580E_127:
	inc  hl
	inc  hl
	djnz _LABEL_57E2_132
	ld   hl, ($C217)
	ld   (hl), $D0
	ret


; Data from 5818 to 5852 (59 bytes)
.db $FD, $E5, $E1, $23, $5D, $54, $13, $AF, $77, $01, $1E, $00, $ED, $B0, $C9, $9F
.db $59, $D4, $59, $E0, $59, $E5, $59, $F1, $59, $F6, $59, $02, $5A, $07, $5A, $4F
.db $5A, $70, $5A, $87, $5B, $CE, $5B, $63, $5C, $99, $5C, $A0, $5D, $2B, $5E, $2E
.db $5E, $72, $5E, $AE, $5E, $EA, $5E, $30, $5D, $5B, $5D

_LABEL_5853_129:
	ld   l, (iy+1)
	ld   h, $00
	add  hl, hl
	add  hl, bc
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	ld   b, (hl)
	push bc
	inc  hl
	ld   de, ($C217)
	ld   c, (iy+2)
_LABEL_5868_130:
	ld   a, (hl)
	add  a, c
	ld   (de), a
	inc  de
	inc  hl
	djnz _LABEL_5868_130
	ld   ($C217), de
	pop  bc
	ld   de, ($C219)
	ld   c, (iy+4)
_LABEL_587B_131:
	ld   a, (hl)
	add  a, c
	ld   (de), a
	inc  de
	inc  hl
	ld   a, (hl)
	ld   (de), a
	inc  hl
	inc  de
	djnz _LABEL_587B_131
	ld   ($C219), de
	ret


; Data from 588B to 5FFD (1907 bytes)
LABEL_588B:
	ld	hl, $C900
	ld	de, $7F00
	rst	$08
	ld	c, $BE
	call	LABEL_591E
	ld	hl, $C980
	ld	de, $7F80
	rst	$08
	
LABEL_589E:
.REPEAT 64
	outi
.ENDR

LABEL_591E:
.REPEAT 32
	outi
.ENDR

LABEL_595E:
.REPEAT 32
	outi
.ENDR
	ret

	
.db	$06, $01, $C5, $CD
.db $18, $58, $FD, $34, $00, $C1, $FD, $36
.db $02, $60, $3A, $EA, $C2, $E6, $03, $3E
.db $84, $20, $02, $3E, $80, $FD, $77, $04
.db $FD, $36, $12, $01, $FD, $70, $01, $FD
.db $36, $11, $01, $79, $B7, $3E, $00, $20
.db $02, $3E, $03, $FD, $77, $0A, $3E, $FF
.db $C9, $11, $13, $5A, $21, $17, $5A, $CD
.db $98, $5A, $3E, $FF, $C9, $06, $02, $C3
.db $A1, $59, $11, $27, $5A, $21, $2B, $5A
.db $CD, $98, $5A, $3E, $FF, $C9, $06, $03
.db $C3, $A1, $59, $11, $13, $5A, $21, $17
.db $5A, $CD, $98, $5A, $3E, $FF, $C9, $06
.db $04, $C3, $A1, $59, $11, $3B, $5A, $21
.db $3F, $5A, $CD, $98, $5A, $3E, $FF, $C9
.db $01, $00, $09, $0C, $05, $06, $07, $06
.db $02, $03, $04, $03, $08, $09, $0A, $09
.db $0B, $0C, $0D, $0C, $05, $00, $08, $0B
.db $04, $05, $06, $05, $01, $02, $03, $02
.db $07, $08, $09, $08, $0A, $0B, $0C, $0B
.db $01, $00, $0E, $0F, $05, $06, $07, $06
.db $02, $03, $04, $03, $08, $09, $0A, $0A
.db $0B, $0C, $0D, $0D, $CD, $18, $58, $FD
.db $34, $00, $FD, $36, $02, $60, $FD, $36
.db $04, $80, $FD, $36, $01, $05, $3A, $0E
.db $C3, $D6, $04, $FD, $77, $10, $FD, $36
.db $11, $01, $3E, $FF, $C9, $CD, $76, $5A
.db $3E, $FF, $C9, $CD, $43, $71, $3A, $64
.db $C2, $E6, $0F, $C8, $0E, $FF, $0F, $0C
.db $D2, $81, $5A, $21, $94, $5A, $06, $00
.db $09, $3A, $0E, $C3, $86, $FD, $77, $10
.db $C9, $FC, $FE, $FF, $FD, $79, $B7, $CC
.db $43, $71, $3A, $65, $C2, $B7, $CA, $FC
.db $5A, $FE, $0F, $C2, $30, $5B, $79, $B7
.db $C2, $C9, $5A, $FD, $7E, $12, $FD, $77
.db $13, $3A, $64, $C2, $E6, $0F, $CA, $FC
.db $5A, $06, $FF, $0F, $04, $D2, $BE, $5A
.db $FD, $70, $12, $C3, $30, $5B, $FD, $CB
.db $0A, $46, $28, $04, $FD, $CB, $0A, $CE
.db $FD, $7E, $E4, $FD, $BE, $04, $20, $08
.db $FD, $7E, $E2, $FD, $BE, $02, $28, $0A
.db $FD, $CB, $EA, $4E, $28, $04, $FD, $CB
.db $0A, $C6, $FD, $7E, $12, $FD, $77, $13
.db $FD, $7E, $F3, $FD, $77, $12, $C3, $30
.db $5B, $3A, $64, $C2, $E6, $0F, $C2, $30
.db $5B, $FD, $7E, $12, $FD, $77, $13, $79
.db $B7, $20, $10, $3A, $04, $C2, $E6, $0F
.db $28, $09, $2E, $FF, $0F, $2C, $D2, $17
.db $5B, $18, $0A, $79, $B7, $FD, $6E, $12
.db $28, $03, $FD, $6E, $F3, $26, $00, $19
.db $7E, $FD, $77, $10, $C9, $79, $B7, $C4
.db $5C, $5B, $3A, $E9, $C2, $B7, $20, $C9
.db $FD, $35, $0E, $F0, $FD, $36, $0E, $07
.db $FD, $7E, $12, $87, $87, $47, $FD, $7E
.db $0D, $3C, $E6, $03, $FD, $77, $0D, $80
.db $5F, $16, $00, $19, $7E, $FD, $77, $10
.db $C9, $FD, $CB, $0A, $46, $FD, $7E, $12
.db $C4, $6B, $5B, $3A, $12, $C8, $EE, $01
.db $FE, $02, $D2, $7B, $5B, $B7, $20, $01
.db $3D, $FD, $86, $02, $FD, $77, $02, $C9
.db $D6, $02, $20, $01, $3D, $FD, $86, $04
.db $FD, $77, $04, $C9, $FD, $7E, $0A, $F5
.db $CD, $18, $58, $F1, $FD, $34, $00, $21
.db $FF, $FF, $36, $12, $87, $5F, $87, $83
.db $5F, $16, $00, $21, $F1, $5B, $19, $7E
.db $32, $04, $C0, $23, $7E, $FD, $77, $18
.db $23, $7E, $FD, $77, $01, $23, $7E, $FD
.db $77, $0F, $23, $3A, $94, $C8, $FD, $77
.db $02, $3A, $95, $C8, $FD, $77, $04, $7E
.db $23, $66, $6F, $11, $00, $74, $CD, $FA
.db $03, $AF, $C9, $CD, $D4, $5B, $3E, $FF
.db $C9, $FD, $35, $0E, $F0, $FD, $7E, $18
.db $FD, $77, $0E, $FD, $7E, $01, $3C, $FD
.db $BE, $0F, $30, $04, $FD, $77, $01, $C9
.db $AF, $FD, $77, $00, $E1, $C9, $A2, $03
.db $66, $6B, $2A, $AD, $A2, $03, $05, $0A
.db $00, $9C, $A2, $03, $05, $0A, $00, $9C
.db $A2, $03, $05, $0A, $00, $9C, $A2, $03
.db $05, $0A, $00, $9C, $A2, $03, $6A, $72
.db $91, $AF, $A2, $03, $71, $76, $77, $B1
.db $A2, $03, $05, $0A, $00, $9C, $A2, $03
.db $05, $0A, $00, $9C, $A7, $03, $18, $21
.db $70, $A2, $A2, $03, $6A, $72, $91, $AF
.db $A6, $03, $11, $19, $36, $A0, $A3, $03
.db $5E, $63, $C0, $AA, $A5, $03, $09, $12
.db $D7, $9D, $A4, $03, $62, $67, $9D, $AB
.db $A4, $03, $75, $7A, $44, $B2, $A8, $03
.db $20, $29, $BC, $A3, $A9, $03, $28, $32
.db $E0, $A5, $AA, $03, $31, $3A, $FD, $A7
.db $CD, $18, $58, $FD, $34, $00, $FD, $36
.db $02, $58, $FD, $36, $04, $60, $FD, $36
.db $01, $3A, $FD, $36, $0E, $07, $CD, $B1
.db $05, $47, $0E, $3D, $3A, $E0, $C2, $B7
.db $28, $0E, $FE, $F0, $30, $03, $B8, $38
.db $07, $0F, $0E, $3E, $30, $02, $0E, $43
.db $FD, $71, $0F, $3E, $FF, $C9, $CD, $9F
.db $5C, $3E, $FF, $C9, $FD, $CB, $0A, $46
.db $C8, $FD, $CB, $0A, $4E, $20, $1B, $FD
.db $35, $0E, $F0, $FD, $36, $0E, $07, $FD
.db $7E, $01, $3C, $FD, $77, $01, $FE, $3D
.db $C0, $FD, $36, $0E, $17, $FD, $CB, $0A
.db $CE, $C9, $FD, $CB, $0A, $56, $20, $26
.db $FD, $35, $0E, $F0, $FD, $36, $0E, $03
.db $FD, $7E, $0F, $FD, $77, $01, $FD, $CB
.db $0A, $D6, $FE, $3D, $20, $05, $FD, $36
.db $00, $00, $C9, $FE, $3E, $3E, $B1, $28
.db $01, $3C, $32, $04, $C0, $C9, $FD, $35
.db $0E, $F0, $FD, $36, $0E, $03, $FD, $7E
.db $0F, $FE, $3E, $20, $1A, $FD, $7E, $01
.db $3C, $FD, $77, $01, $F5, $FE, $42, $CC
.db $C4, $7B, $F1, $FE, $43, $D8, $FD, $36
.db $01, $3D, $FD, $36, $00, $00, $C9, $FD
.db $7E, $01, $3C, $FD, $77, $01, $FE, $47
.db $D8, $CD, $C4, $7B, $FD, $36, $01, $3D
.db $FD, $36, $00, $00, $C9, $CD, $18, $58
.db $FD, $34, $00, $3A, $09, $C3, $FE, $17
.db $3E, $84, $11, $D0, $88, $20, $05, $3E
.db $88, $11, $50, $30, $FD, $72, $02, $FD
.db $73, $04, $FD, $77, $01, $FD, $77, $0F
.db $3E, $B9, $32, $04, $C0, $3E, $FF, $C9
.db $CD, $61, $5D, $3E, $FF, $C9, $FD, $35
.db $0E, $F0, $FD, $36, $0E, $07, $FD, $7E
.db $0D, $FD, $34, $0D, $E6, $03, $FD, $86
.db $0F, $FD, $77, $01, $3A, $09, $C3, $FE
.db $17, $28, $11, $FD, $35, $04, $FD, $35
.db $02, $FD, $7E, $04, $FE, $90, $C0, $FD
.db $36, $00, $00, $C9, $FD, $34, $02, $FD
.db $7E, $02, $FE, $78, $28, $F1, $E6, $07
.db $C0, $FD, $35, $04, $C9, $CD, $A7, $5D
.db $FD, $7E, $01, $C9, $3A, $9F, $C2, $B7
.db $C8, $3A, $00, $C8, $B7, $C0, $FD, $35
.db $0E, $F0, $FD, $7E, $18, $FD, $77, $0E
.db $21, $FF, $FF, $36, $03, $FD, $4E, $0D
.db $69, $26, $00, $FD, $CB, $0A, $7E, $FD
.db $5E, $1B, $FD, $56, $1C, $20, $06, $FD
.db $5E, $19, $FD, $56, $1A, $19, $7E, $B7
.db $20, $11, $FD, $CB, $0A, $46, $28, $13
.db $32, $9F, $C2, $FD, $77, $0A, $32, $ED
.db $C2, $4F, $1A, $0C, $FD, $71, $0D, $FD
.db $77, $01, $C9, $FD, $CB, $0A, $C6, $0C
.db $FD, $71, $0D, $FD, $CB, $0A, $7E, $28
.db $0D, $3A, $E6, $C2, $FE, $48, $28, $12
.db $3E, $11, $32, $00, $C8, $C9, $3A, $ED
.db $C2, $B7, $20, $06, $3E, $BB, $32, $04
.db $C0, $C9, $3E, $AE, $32, $04, $C0, $CD
.db $C4, $7B, $3A, $EE, $C2, $C3, $A1, $2F
.db $3E, $FF, $C9, $CD, $18, $58, $FD, $34
.db $00, $21, $FF, $FF, $36, $0B, $3A, $8A
.db $C8, $CB, $77, $21, $A2, $5E, $28, $03
.db $21, $A8, $5E, $7E, $32, $04, $C0, $23
.db $7E, $FD, $77, $18, $23, $7E, $FD, $77
.db $01, $23, $7E, $FD, $77, $0F, $23, $3A
.db $96, $C8, $FD, $77, $02, $3A, $97, $C8
.db $FD, $77, $04, $7E, $23, $66, $6F, $11
.db $00, $74, $CD, $FA, $03, $AF, $C9, $CD
.db $78, $5E, $3E, $FF, $C9, $FD, $35, $0E
.db $F0, $FD, $7E, $18, $FD, $77, $0E, $FD
.db $7E, $01, $3C, $FD, $BE, $0F, $30, $04
.db $FD, $77, $01, $C9, $AF, $FD, $77, $00
.db $E1, $3A, $EF, $C2, $E6, $80, $CA, $1D
.db $5E, $3E, $BB, $32, $04, $C0, $C9, $A8
.db $03, $46, $4F, $01, $99, $A9, $03, $79
.db $82, $F0, $9A, $CD, $B5, $5E, $FD, $7E
.db $01, $C9, $3A, $9F, $C2, $B7, $C8, $FD
.db $35, $0E, $F0, $FD, $7E, $18, $FD, $77
.db $0E, $21, $FF, $FF, $36, $03, $3A, $EE
.db $C2, $B7, $11, $F6, $94, $28, $0F, $3D
.db $11, $06, $95, $28, $09, $3D, $11, $11
.db $95, $28, $03, $11, $1C, $95, $FD, $4E
.db $0D, $69, $26, $00, $C3, $D8, $5D, $CD
.db $F1, $5E, $FD, $7E, $01, $C9, $3A, $9F
.db $C2, $B7, $C8, $FD, $7E, $0C, $FE, $02
.db $30, $25, $FD, $35, $0B, $F0, $FD, $36
.db $0B, $07, $FD, $34, $0C, $B7, $21, $50
.db $BF, $28, $03, $21, $80, $BF, $3E, $18
.db $32, $FF, $FF, $11, $5C, $7A, $01, $08
.db $06, $F3, $CD, $90, $03, $FB, $C9, $FE
.db $03, $30, $1F, $CD, $B1, $5D, $FD, $7E
.db $0D, $FE, $13, $20, $04, $FD, $36, $02
.db $47, $3A, $9F, $C2, $B7, $C0, $3D, $32
.db $9F, $C2, $FD, $34, $0C, $FD, $36, $02
.db $4F, $C9, $FD, $35, $0B, $F0, $FD, $36
.db $0B, $07, $FD, $34, $0C, $FE, $04, $21
.db $50, $BF, $20, $BA, $AF, $FD, $77, $0C
.db $32, $9F, $C2, $21, $20, $BF, $18, $AE

LABEL_5F63:
.db $21, $FF, $FF, $36, $03, $3A, $08, $C3
.db $FE, $03, $D2, $F9, $5F, $67, $2E, $00
.db $CB, $3C, $CB, $1D, $11, $00, $80, $19
.db $ED, $5B, $05, $C3, $7B, $C6, $60, $38
.db $03, $FE, $C0, $3F, $3E, $00, $8A, $E6
.db $07, $87, $87, $87, $4F, $ED, $5B, $01
.db $C3, $7B, $C6, $80, $3E, $00, $8A, $E6
.db $07, $81, $87, $16, $00, $5F, $19, $46
.db $3A, $0E, $C3, $B7, $28, $04, $CB, $38
.db $CB, $38, $CD, $B1, $05, $B8, $D2, $F9
.db $5F, $23, $06, $00, $4E, $3A, $E5, $C2
.db $6F, $26, $00, $11, $A0, $85, $19, $3A
.db $08, $C3, $B7, $28, $02, $3E, $0A, $86
.db $6F, $26, $00, $29, $29, $29, $29, $11
.db $70, $84, $19, $09, $7E, $B7, $C8, $21
.db $FF, $FF, $36, $03, $6F, $26, $00, $29
.db $29, $29, $11, $78, $81, $19, $CD, $B1
.db $05, $E6, $07, $5F, $16, $00, $19, $7E
.db $32, $E6, $C2, $3E, $FF, $C9, $AF, $32
.db $9D, $C2, $C9

_LABEL_5FFE_234:
	ld   hl, $FFFF
	ld   (hl), :Bank03
	ld   hl, $C800
	ld   de, $C801
	ld   bc, $00FF
	ld   (hl), $00
	ldir
	ld   hl, $C440
	ld   de, $C441
	ld   bc, $007F
	ld   (hl), $00
	ldir
	ld   a, ($C2E6)
	ld   a, a
	and  $7F
	ret  z

	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   de, $867F
	add  hl, de
	ld   de, $C2C8
	ld   bc, $0008
	ldir
	ld   de, $C258
	ld   bc, $0008
	ldir
	ld   b, (hl)
	inc  hl
	ld   a, (hl)
	inc  hl
	push hl
	ld   h, (hl)
	ld   l, a
	ld   a, b
	ld   ($FFFF), a
	ld   de, $6000
	call _LABEL_3FA_163
	pop  hl
	inc  hl
	ld   a, :Bank03
	ld   ($FFFF), a
	ld   a, (hl)
	push hl
	call _LABEL_60FD_235
	pop  hl
	inc  hl
	ld   a, :Bank03
	ld   ($FFFF), a
	ld   a, (hl)
	bit  7, a
	jr   nz, _LABEL_607F_240
	and  $0F
	ld   b, a
	ld   a, ($C4F0)
	inc  a
	add  a, a
	cp   b
	jr   nc, _LABEL_6075_241
	ld   b, a
_LABEL_6075_241:
	call _LABEL_5B1_242
	and  $07
	cp   b
	jp   nc, _LABEL_6075_241
	inc  a
_LABEL_607F_240:
	and  $0F
	ld   b, a
	ld   ($C2C7), a
	inc  hl
	ld   a, (hl)
	inc  hl
	ld   d, (hl)
	inc  hl
	ld   e, (hl)
	inc  hl
	push hl
	ex   de, hl
	ld   ix, $C440
	ld   de, $0010
_LABEL_6095_244:
	ld   (ix+0), $01
	ld   (ix+1), a
	ld   (ix+6), a
	ld   (ix+8), h
	ld   (ix+9), l
	add  ix, de
	djnz _LABEL_6095_244
	pop  hl
	ld   a, (hl)
	ld   ($C2DF), a
	inc  hl
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	push hl
	ld   a, ($C2C7)
	ld   c, a
	ld   b, $00
	call _LABEL_44C_245
	ld   ($C2DD), hl
	pop  hl
	inc  hl
	ld   a, (hl)
	ld   ($C2E0), a
	inc  hl
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	push hl
	ld   a, ($C2C7)
	ld   c, a
	ld   b, $00
	call _LABEL_44C_245
	ld   ($C2D0), hl
	pop  hl
	inc  hl
	ld   a, (hl)
	ld   ($C2E8), a
	inc  hl
	ld   a, (hl)
	ld   ($C2E7), a
	ld   hl, $C500
	ld   ($C2E1), hl
	call _LABEL_576A_120
	call _LABEL_576A_120
	ld   hl, $C240
	ld   de, $C220
	ld   bc, $0020
	ldir
	ld   a, $10
	jp   _LABEL_52_31

_LABEL_60FD_235:
	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   e, l
	ld   d, h
	add  hl, hl
	add  hl, de
	ld   de, $8FC7
	add  hl, de
	ld   de, $C880
	ld   bc, $0003
	ldir
	inc  de
	ldi
	ld   de, $C894
	ld   bc, $0009
	ldir
	ld   a, ($C898)
	ld   ($C88E), a
	ld   a, $01
	ld   ($C88D), a
	ld   c, (hl)
	inc  hl
	ld   b, (hl)
	inc  hl
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	inc  hl
	ld   a, (hl)
	inc  hl
	push hl
	ld   h, (hl)
	ld   l, c
	ld   c, a
	ld   a, h
	ld   h, b
	ld   b, a
	or   c
	ld   a, :Bank24
	ld   ($FFFF), a
	call nz, _LABEL_615A_236
	pop  hl
	inc  hl
	ld   a, :Bank03
	ld   ($FFFF), a
	ld   de, $C8A0
	ld   bc, $0003
	ldir
	inc  de
	ldi
	ld   a, (hl)
	ld   ($C2F1), a
	ret

_LABEL_615A_236:
	push bc
	push de
	ld   c, $FF
_LABEL_615E_238:
	ld   a, (hl)
	or   a
	jp   z, _LABEL_6176_237
	ldi
	ldi
_LABEL_6167_239:
	djnz _LABEL_615E_238
	pop  de
	ex   de, hl
	ld   bc, $0040
	add  hl, bc
	ex   de, hl
	pop  bc
	dec  c
	jp   nz, _LABEL_615A_236
	ret

_LABEL_6176_237:
	inc  hl
	inc  de
	inc  hl
	inc  de
	jp   _LABEL_6167_239

_LABEL_617D_285:
	or   a
	ret  z

	ld   hl, $FFFF
	ld   (hl), :Bank03
	ld   hl, $C800
	ld   de, $C801
	ld   bc, $00FF
	ld   (hl), $00
	ldir
	ld   hl, $C440
	ld   de, $C441
	ld   bc, $007F
	ld   (hl), $00
	ldir
	ld   l, a
	ld   h, $00
	add  hl, hl
	ld   de, $9540
	add  hl, de
	ld   a, (hl)
	push hl
	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   de, $95BC
	add  hl, de
	push hl
	ld   de, $C258
	ld   bc, $0008
	ldir
	pop  hl
	ld   de, $C238
	ld   bc, $0008
	ldir
	pop  hl
	inc  hl
	ld   a, (hl)
	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   de, $966C
	add  hl, de
	ld   de, $C800
	ld   bc, $0003
	ldir
	inc  de
	ldi
	inc  hl
	ld   b, (hl)
	inc  hl
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	ld   a, b
	ld   ($FFFF), a
	ld   de, $6000
	call _LABEL_3FA_163
	call _LABEL_576A_120
	ld   a, $16
	jp   _LABEL_52_31


; Data from 61F5 to 652D (825 bytes)
LABEL_61F5:
.db $21, $FF, $FF, $36, $1C, $DD, $21, $00, $C8, $06, $04, $DD, $7E, $10, $DD, $BE
.db $11, $CA, $17, $62, $DD, $77, $11, $57, $DD, $7E, $01, $B7, $21, $1D, $62, $C2
.db $E6, $00, $11, $20, $00, $DD, $19, $10, $E2, $C9, $29, $62, $46, $62, $63, $62
.db $80, $62, $93, $62, $1E, $00, $CB, $3A, $CB, $1B, $6B, $62, $CB, $3A, $CB, $1B
.db $19, $11, $00, $80, $19, $11, $40, $75, $CF, $0E, $BE, $CD, $9E, $58, $C3, $1E
.db $59, $1E, $00, $CB, $3A, $CB, $1B, $6B, $62, $CB, $3A, $CB, $1B, $19, $11, $80
.db $8A, $19, $11, $00, $76, $CF, $0E, $BE, $CD, $9E, $58, $C3, $1E, $59, $1E, $00
.db $CB, $3A, $CB, $1B, $6B, $62, $CB, $3A, $CB, $1B, $19, $11, $40, $94, $19, $11
.db $C0, $76, $CF, $0E, $BE, $CD, $9E, $58, $C3, $1E, $59, $1E, $00, $CB, $3A, $CB
.db $1B, $21, $C0, $9E, $19, $11, $80, $77, $CF, $0E, $BE, $C3, $9E, $58, $3A, $02
.db $C2, $FE, $05, $28, $03, $FE, $09, $C0, $21, $FF, $FF, $36, $12, $2E, $00, $62
.db $29, $11, $00, $80, $19, $11, $40, $75, $CF, $0E, $BE, $CD, $9E, $58, $CD, $9E
.db $58, $CD, $9E, $58, $C3, $9E, $58

LABEL_62BC:
.db	$21, $FF, $FF, $36, $0E, $21, $6F, $C2, $11
.db $45, $63, $01, $10, $0C, $CD, $0A, $63, $21, $73, $C2, $11, $55, $63, $01, $40
.db $03, $CD, $0A, $63, $21, $77, $C2, $11, $65, $63, $01, $4C, $04, $CD, $0A, $63
.db $21, $7B, $C2, $11, $75, $63, $01, $5C, $06, $CD, $0A, $63, $21, $7F, $C2, $11
.db $85, $63, $01, $74, $08, $CD, $0A, $63, $21, $83, $C2, $11, $95, $63, $01, $94
.db $10, $CD, $0A, $63, $C9, $7E, $B7, $C8, $23, $7E, $23, $35, $F0, $77, $23, $3A
.db $E9, $C2, $FE, $04, $38, $03, $35, $18, $01, $34, $7E, $E6, $07, $6F, $26, $00
.db $29, $19, $7E, $23, $66, $6F, $EB, $69, $26, $08, $29, $29, $29, $EB, $CF, $0E
.db $BE, $78, $06, $20, $ED, $A3, $00, $C2, $39, $63, $3D, $C2, $37, $63, $E1, $C9
.db $E8, $A3, $E8, $A3, $68, $A5, $E8, $A6, $E8, $A6, $68, $A5, $68, $A8, $E8, $A9
.db $68, $AB, $68, $AB, $C8, $AB, $C8, $AB, $28, $AC, $28, $AC, $88, $AC, $88, $AC
.db $E8, $BA, $E8, $BA, $68, $BB, $68, $BB, $E8, $BB, $E8, $BB, $68, $BB, $68, $BB
.db $E8, $AC, $E8, $AC, $A8, $AD, $A8, $AD, $68, $AE, $68, $AE, $28, $AF, $28, $AF
.db $E8, $AF, $E8, $AF, $E8, $B0, $E8, $B0, $E8, $B1, $E8, $B1, $E8, $B0, $E8, $B0
.db $E8, $B4, $E8, $B4, $E8, $B4, $E8, $B4, $E8, $B4, $E8, $B6, $E8, $B8, $E8, $B2

LABEL_63A5:
.db $3A, $D6, $C2, $B7, $C8, $3A, $9E, $C2, $B7, $C8, $FE, $0C, $D0, $21, $B6, $63
.db $C3, $E6, $00, $CE, $63, $CE, $63, $CF, $63, $F6, $63, $CE, $63, $CE, $63, $42
.db $64, $CE, $63, $CE, $63, $CE, $63, $CF, $64, $C9, $CD, $A3, $64, $21, $BC, $C2
.db $35, $F0, $36, $0B, $23, $7E, $3C, $FE, $09, $38, $01, $AF, $77, $21, $FF, $FF
.db $36, $10, $21, $06, $65, $87, $87, $87, $5F, $16, $00, $19, $06, $04, $C3, $1B
.db $64, $CD, $A3, $64, $21, $BC, $C2, $35, $F0, $36, $0F, $23, $7E, $3C, $FE, $0E
.db $38, $01, $AF, $77, $21, $FF, $FF, $36, $10, $21, $4E, $65, $87, $5F, $87, $83
.db $5F, $16, $00, $19, $06, $03, $C5, $5E, $16, $02, $EB, $29, $29, $29, $29, $29
.db $EB, $CF, $23, $56, $23, $E5, $1E, $00, $CB, $3A, $CB, $1B, $21, $F6, $A8, $19
.db $01, $BE, $80, $ED, $A3, $C2, $38, $64, $E1, $C1, $10, $DA, $C9, $21, $BC, $C2
.db $35, $F0, $36, $0F, $23, $7E, $3C, $FE, $06, $38, $01, $AF, $77, $21, $FF, $FF
.db $36, $11, $87, $47, $87, $80, $5F, $16, $00, $21, $A2, $65, $19, $11, $20, $40
.db $CF, $06, $04, $C5, $56, $23, $1E, $00, $CB, $3A, $CB, $1B, $01, $00, $80, $EB
.db $09, $01, $BE, $80, $ED, $A3, $C2, $79, $64, $C1, $EB, $10, $E6, $06, $02, $C5
.db $56, $23, $1E, $00, $CB, $3A, $CB, $1B, $CB, $3A, $CB, $1B, $01, $00, $80, $EB
.db $09, $01, $BE, $40, $ED, $A3, $C2, $99, $64, $C1, $EB, $10, $E2, $C9, $3A, $1B
.db $C2, $B7, $C0, $3A, $02, $C2, $FE, $0D, $C0, $21, $13, $C2, $35, $F0, $36, $1F
.db $11, $0D, $C0, $CF, $23, $7E, $3C, $E6, $03, $77, $5F, $16, $00, $21, $C6, $65
.db $19, $01, $BE, $03, $ED, $A3, $C2, $C9, $64, $C9, $3A, $1B, $C2, $B7, $C0, $3A
.db $02, $C2, $FE, $0D, $C0, $21, $13, $C2, $35, $F0, $36, $07, $11, $08, $C0, $CF
.db $23, $7E, $3D, $E6, $0F, $77, $5F, $16, $00, $21, $CE, $65, $19, $01, $BE, $04
.db $ED, $A3, $C2, $F5, $64, $21, $D6, $65, $19, $06, $04, $ED, $A3, $C2, $00, $65
.db $C9, $01, $15, $25, $09, $29, $0A, $29, $0A, $01, $00, $05, $0B, $01, $00, $05
.db $0B, $05, $01, $09, $0D, $05, $01, $09, $0D, $09, $02, $0D, $0D, $09, $02, $0D
.db $0D, $0D, $03, $11, $0E, $0D, $03, $11, $0E

_LABEL_652E_188:
	ld   de, $1504
	ld   c, $11
	inc  b
	dec  d
	ld   c, $15
	dec  b
	add  hl, de
	rrca
	dec  d
	dec  b
	add  hl, de
	rrca
	add  hl, de
	ld   b, $21
	rrca
	add  hl, de
	ld   b, $21
	rrca
	ld   hl, $0108
	djnz _LABEL_6570_189
	inc  c
	add  hl, hl
	ld   de, $0925
	add  hl, hl
	ld   a, (bc)
	add  hl, hl
	ld   a, (bc)
	dec  h
	add  hl, bc
	add  hl, hl
	ld   a, (bc)
	add  hl, hl
	ld   a, (bc)
	dec  h
	add  hl, bc
	add  hl, hl
	inc  c
	add  hl, hl
	inc  c
	ld   hl, $2508
	rrca
	add  hl, hl
	inc  d
	ld   hl, $250F
	inc  de
	add  hl, hl
	inc  d
	add  hl, de
	ld   b, $1D
	rrca
_LABEL_6570_189:
	ld   hl, $1512
	dec  b
	add  hl, de
	ld   c, $1D
	ld   (de), a
	dec  d
	ld   c, $19
	ld   (de), a
	add  hl, de
	ld   (de), a
	dec  d
	ld   c, $19
	ld   (de), a
	add  hl, de
	ld   (de), a
	dec  d
	dec  b
	add  hl, de
	ld   c, $1D
	ld   (de), a
	add  hl, de
	ld   b, $1D
	rrca
	ld   hl, $1D12
	rlca
	ld   hl, $250F
	inc  de
	ld   hl, $2508
	inc  c
	add  hl, hl
	ld   de, $0925
	add  hl, hl
	inc  c
	add  hl, hl
	inc  c
	nop
	ld   (bc), a
	dec  b
	ex   af, af'
	dec  d
	jr   _LABEL_65A9_190

_LABEL_65A9_190:
	inc  bc
	ld   b, $09
	ld   d, $14
	ld   bc, $0704
	dec  b
	rla
	inc  d
	ld   (bc), a
	nop
	ex   af, af'
	dec  b
	jr   _LABEL_65CF_191


; Data from 65BA to 65CE (21 bytes)
.db $03, $00, $09, $06, $14, $16, $04, $01, $05, $07, $14, $17, $3F, $3C, $38, $38
.db $3F, $3C, $38, $38, $06

_LABEL_65CF_191:
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   b, $25
	ld   hl, ($3F3E)
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   b, $06
	ld   a, ($C30C)
	ld   l, a
	ld   h, $CB
	ld   a, (hl)
	cp   $08
	jp   nz, _LABEL_66E1_192
	ld   c, l
	ld   a, ($C30D)
	ld   b, a
	ld   hl, $FFFF
	ld   (hl), $03
	ld   hl, $AF5C
	ld   de, $0006
_LABEL_660A_195:
	ld   a, (hl)
	cp   $FF
	jr   z, _LABEL_661C_193
	inc  hl
	cp   b
	jr   nz, _LABEL_6618_194
	ld   a, (hl)
	cp   c
	jp   z, _LABEL_66E1_192
_LABEL_6618_194:
	add  hl, de
	jp   _LABEL_660A_195

_LABEL_661C_193:
	ld   de, $7E00
	ld   hl, $00C0
	ld   bc, $0080
	di
	call _LABEL_363_170
	ei
	ld   a, $C0
	ld   ($C004), a
	xor  a
	ld   ($C304), a
	ld   b, $0C
_LABEL_6635_196:
	push bc
	ld   a, ($C304)
	add  a, $10
	ld   ($C304), a
	ld   a, $08
	call _LABEL_52_31
	ld   a, b
	sub  $0C
	neg
	ld   c, $00
	ld   b, a
	srl  b
	rr   c
	ld   hl, $7800
	add  hl, bc
	ex   de, hl
	ld   hl, $00C0
	ld   bc, $0040
	di
	call _LABEL_363_170
	ei
	pop  bc
	djnz _LABEL_6635_196
	ld   a, ($C30D)
	sub  $01
	jr   nc, _LABEL_666A_197
	xor  a
_LABEL_666A_197:
	ld   ($C30D), a
	call _LABEL_6D56_198
	xor  a
	call _LABEL_6AED_201
	ld   hl, $C240
	ld   de, $C220
	ld   bc, $0020
	ldir
	ld   a, $16
	call _LABEL_52_31
	ld   a, $10
	ld   ($C304), a
	ld   b, $0C
_LABEL_668B_212:
	push bc
	ld   a, ($C304)
	add  a, $10
	ld   ($C304), a
	ld   a, $08
	call _LABEL_52_31
	ld   a, b
	sub  $0C
	neg
	ld   c, $00
	ld   b, a
	srl  b
	rr   c
	ld   hl, $7800
	add  hl, bc
	ex   de, hl
	ld   hl, $D000
	add  hl, bc
	ld   bc, $0080
	di
	call _LABEL_346_209
	ei
	pop  bc
	djnz _LABEL_668B_212
	ld   b, $05
_LABEL_66BB_214:
	ld   a, ($C304)
	or   a
	ld   a, $D8
	jr   z, _LABEL_66C4_213
	xor  a
_LABEL_66C4_213:
	ld   ($C304), a
	ld   a, $08
	call _LABEL_52_31
	djnz _LABEL_66BB_214
	ld   hl, $FFFF
	ld   (hl), :Bank16
	ld   hl, $BD58
	ld   de, $7E00
	call _LABEL_3FA_163
	ld   b, $01
	jp   _LABEL_6963_215

_LABEL_66E1_192:
	ld   a, ($C204)
	and  $0F
	jp   z, _LABEL_6802_287
	ld   c, a
	bit  0, c
	jp   z, _LABEL_677A_288
	ld   b, $01
	call _LABEL_6BE9_152
	ld   b, a
	and  $07
	jp   z, _LABEL_6758_289
	sub  $02
	jp   c, _LABEL_677A_288
	cp   $05
	jp   z, _LABEL_6755_290
	cp   $02
	jp   nc, _LABEL_6729_291
	ld   c, a
	ld   a, $C3
	ld   ($C004), a
	ld   a, c
	bit  3, b
	jp   nz, _LABEL_68BC_292
	or   a
	ld   b, $01
	jr   z, _LABEL_671C_293
	ld   b, $FF
_LABEL_671C_293:
	ld   a, ($C30D)
	add  a, b
	ld   ($C30D), a
	call _LABEL_6D56_198
	jp   _LABEL_6731_294

_LABEL_6729_291:
	bit  7, (hl)
	ret  z

	bit  3, b
	jp   nz, _LABEL_68BC_292
_LABEL_6731_294:
	call _LABEL_7B05_295
	ld   a, ($C30A)
	and  $03
	ld   hl, $6ADF
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   a, ($C30C)
	add  a, (hl)
	add  a, (hl)
	ld   ($C30C), a
	xor  a
	call _LABEL_6AE5_233

; Data from 674D to 6754 (8 bytes)
.db $CD, $20, $7B, $06, $01, $C3, $63, $69

_LABEL_6755_290:
	call _LABEL_6758_289
_LABEL_6758_289:
	ld   a, $00
	call _LABEL_6A58_232
	ld   a, ($C30A)
	and  $03
	ld   hl, $6ADF
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   a, ($C30C)
	add  a, (hl)
	ld   ($C30C), a
	xor  a
	call _LABEL_6AE5_233

; Data from 6775 to 6779 (5 bytes)
.db $06, $01, $C3, $63, $69

_LABEL_677A_288:
	bit  1, c
	jr   z, _LABEL_67AB_312
	ld   b, $0B
	call _LABEL_6BCA_135
	jr   nz, _LABEL_67AB_312
	call _LABEL_6792_313

; Data from 6788 to 6791 (10 bytes)
.db $06, $01, $CD, $63, $69, $06, $0B, $C3, $63, $69

_LABEL_6792_313:
	ld   a, ($C30A)
	and  $03
	ld   hl, $6AE1
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   a, ($C30C)
	add  a, (hl)
	ld   ($C30C), a
	ld   a, $01
	jp   _LABEL_6A58_232

_LABEL_67AB_312:
	bit  2, c
	jr   z, _LABEL_67D7_314
	call _LABEL_67B7_229

; Data from 67B2 to 67B6 (5 bytes)
.db $06, $01, $C3, $63, $69

_LABEL_67B7_229:
	ld   a, ($C30A)
	dec  a
	and  $03
	ld   ($C30A), a
	ld   h, $02
	ld   b, $0D
	call _LABEL_6BCA_135
	jr   z, _LABEL_67CB_230
	inc  h
	inc  h
_LABEL_67CB_230:
	ld   b, $01
	call _LABEL_6BCA_135
	jr   z, _LABEL_67D3_231
	inc  h
_LABEL_67D3_231:
	ld   a, h
	jp   _LABEL_6A58_232

_LABEL_67D7_314:
	bit  3, c
	ret  z

	call _LABEL_67E2_282

; Data from 67DD to 67E1 (5 bytes)
.db $06, $01, $C3, $63, $69

_LABEL_67E2_282:
	ld   a, ($C30A)
	inc  a
	and  $03
	ld   ($C30A), a
	ld   h, $06
	ld   b, $0C
	call _LABEL_6BCA_135
	jr   z, _LABEL_67F6_283
	inc  h
	inc  h
_LABEL_67F6_283:
	ld   b, $01
	call _LABEL_6BCA_135
	jr   z, _LABEL_67FE_284
	inc  h
_LABEL_67FE_284:
	ld   a, h
	jp   _LABEL_6A58_232

_LABEL_6802_287:
	ld   a, ($C205)
	and  $30
	ret  z

	ld   b, $01
	call _LABEL_6BCA_135
	cp   $04
	jr   nz, _LABEL_6817_315
	ld   c, $02
	call _LABEL_681B_316
	ret  z

_LABEL_6817_315:
	call _LABEL_1BE1_117

; Data from 681A to 681A (1 bytes)
.db $C9

_LABEL_681B_316:
	ld   b, $01
	call _LABEL_6BE9_152
	bit  7, (hl)
	ret  nz

	set  7, (hl)
	ld   a, $BD
	ld   ($C004), a
	ld   h, c
	ld   l, $00
	ld   b, $03
_LABEL_682F_318:
	push bc
_LABEL_6830_317:
	push hl
	ld   a, h
	call _LABEL_6E4C_154
	ld   a, $0C
	call _LABEL_52_31
	pop  hl
	ld   a, h
	ld   bc, $0040
	add  hl, bc
	cp   h
	jr   z, _LABEL_6830_317
	inc  h
	inc  h
	pop  bc
	djnz _LABEL_682F_318
	xor  a
	ret


; Data from 684A to 68BB (114 bytes)
.db $06, $01, $CD, $E9, $6B, $FE, $08, $20, $21, $4D, $3A, $0D, $C3, $47, $21, $FF
.db $FF, $36, $03, $21, $5C, $AF, $11, $06, $00, $7E, $FE, $FF, $28, $0E, $23, $B8
.db $20, $04, $7E, $B9, $28, $04, $19, $C3, $63, $68, $AF, $C9, $3E, $FF, $B7, $C9
.db $06, $0B, $CD, $CA, $6B, $C8, $06, $0C, $CD, $CA, $6B, $C8, $06, $0D, $CD, $CA
.db $6B, $C9, $06, $0B, $CD, $CA, $6B, $28, $1C, $06, $0C, $CD, $CA, $6B, $20, $12
.db $06, $0D, $CD, $CA, $6B, $20, $06, $CD, $B1, $05, $0F, $30, $05, $CD, $E2, $67
.db $18, $03, $CD, $B7, $67, $CD, $92, $67, $06, $01, $CD, $63, $69, $06, $0B, $C3
.db $63, $69

_LABEL_68BC_292:
	ld   b, $01
	call _LABEL_6BE9_152
	and  $08
	ret  z

	ld   c, l
	ld   a, ($C30D)
	ld   b, a
	ld   hl, $FFFF
	ld   (hl), :Bank03
	ld   hl, $B473
	ld   de, $0004
_LABEL_68D4_300:
	ld   a, (hl)
	cp   $FF
	jr   z, _LABEL_68E6_297
	inc  hl
	cp   b
	jr   nz, _LABEL_68E1_298
	ld   a, (hl)
	cp   c
	jr   z, _LABEL_68EC_299
_LABEL_68E1_298:
	add  hl, de
	jp   _LABEL_68D4_300


; Data from 68E5 to 68E5 (1 bytes)
.db $C9

_LABEL_68E6_297:
	ld   hl, $C202
	ld   (hl), $08
	ret

_LABEL_68EC_299:
	inc  hl
	ld   a, (hl)
	ld   d, a
	dec  hl
	cp   $80
	ld   a, $08
	jp   c, _LABEL_7877_301
	ld   a, d
	cp   $FF
	jr   nz, _LABEL_6947_302
	push hl
	call _LABEL_7B05_295
	ld   hl, $FFFF
	ld   (hl), :Bank09
	ld   hl, $B471
	ld   de, $4000
	call _LABEL_3FA_163
	ld   hl, $B130
	call _LABEL_6B62_137
	ld   a, $0F
	ld   ($C29E), a
	xor  a
	ld   ($C250), a
_LABEL_691D_308:
	ld   a, $0C
	call _LABEL_52_31
	call _LABEL_7B20_303
_LABEL_6925_305:
	ld   hl, $FFFF
	ld   (hl), :Bank03
	pop  hl
	inc  hl
	inc  hl
	call _LABEL_6A2F_281
	ld   a, ($C202)
	cp   $0B
	ret  nz

	call _LABEL_7B05_295
	xor  a
	call _LABEL_6AE5_233

; Data from 693D to 6946 (10 bytes)
.db $CD, "m", $CD, $E2, "m", $CD, " {", $C9

_LABEL_6947_302:
	push hl
	push af
	call _LABEL_7B05_295
	pop  af
	ld   c, $0D
	cp   $FE
	jr   z, _LABEL_6959_304
	ld   c, $1E
	cp   $FD
	jr   nz, _LABEL_6925_305
_LABEL_6959_304:
	ld   a, c
	ld   ($C29E), a
	call _LABEL_3D47_306
	jp   _LABEL_691D_308

_LABEL_6963_215:
	call _LABEL_6BE9_152
	cp   $08
	ret  nz

	ld   c, l
	push bc
	ld   a, ($C30D)
	ld   b, a
	ld   hl, $FFFF
	ld   (hl), :Bank03
	ld   hl, $AF5C
	ld   de, $0006
_LABEL_697A_219:
	ld   a, (hl)
	cp   $FF
	jp   z, _LABEL_698C_216
	inc  hl
	cp   b
	jr   nz, _LABEL_6988_217
	ld   a, (hl)
	cp   c
	jr   z, _LABEL_698E_218
_LABEL_6988_217:
	add  hl, de
	jp   _LABEL_697A_219

_LABEL_698C_216:
	pop  bc
	ret

_LABEL_698E_218:
	pop  bc
	inc  hl
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	ld   a, (de)
	cp   $FF
	ret  z

	ld   ($C2E1), de
	ld   a, $FF
	ld   ($C2D2), a
	inc  hl
	ld   a, (hl)
	inc  hl
	or   a
	jr   nz, _LABEL_69B8_220
	ld   a, (hl)
	ld   ($C2DF), a
	inc  hl
	ld   a, (hl)
	ld   ($C2E0), a
	ld   hl, $0000
	ld   ($C2DD), hl
	jp   _LABEL_69C7_221

_LABEL_69B8_220:
	cp   $01
	jr   nz, _LABEL_69E1_226
	xor  a
	ld   ($C2DF), a
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	ld   ($C2DD), hl
_LABEL_69C7_221:
	ld   a, b
	cp   $01
	ret  nz

	ld   hl, $BD97
	call _LABEL_31CF_41
	push bc
	call _LABEL_16B2_222
	pop  bc
	call _LABEL_28DB_223

; Data from 69D9 to 69E0 (8 bytes)
.db $3A, $00, $C8, $B7, $C8, $C3, $E1, $1B

_LABEL_69E1_226:
	cp   $02
	jr   nz, _LABEL_6A1A_227
	ld   a, b
	cp   $01
	jr   z, _LABEL_69F7_228
	push hl
	call _LABEL_67B7_229
	call _LABEL_67B7_229
	ld   hl, $FFFF
	ld   (hl), :Bank03
	pop  hl
_LABEL_69F7_228:
	ld   a, (hl)
	ld   ($C2E6), a
	or   a
	ret  z

	inc  hl
	ld   a, (hl)
	push af
	ld   hl, ($C2E1)
	push hl
	call _LABEL_5FFE_234
	pop  hl
	ld   ($C2E1), hl
	pop  af
	ld   ($C2DF), a
	call _LABEL_100F_261
	ld   a, ($C800)
	or   a
	ret  z

	jp   _LABEL_1BE1_117

_LABEL_6A1A_227:
	cp   $03
	ret  nz

	ld   a, b
	cp   $01
	jr   z, _LABEL_6A2F_281
	push hl
	call _LABEL_67E2_282
	call _LABEL_67E2_282
	ld   hl, $FFFF
	ld   (hl), :Bank03
	pop  hl
_LABEL_6A2F_281:
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	ld   ($C2DB), hl
	ld   a, ($C2DC)
	call _LABEL_617D_285
	call _LABEL_474B_286
	ld   a, $D0
	ld   ($C900), a
	xor  a
	ld   ($C800), a
	ld   ($C29D), a
	ld   ($C29E), a
	ld   ($C2D5), a
	ld   hl, $0000
	ld   ($C2DB), hl
	ret

_LABEL_6A58_232:
	ld   l, a
	ld   h, $00
	add  hl, hl
	ld   de, $6A76
	add  hl, de
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	ld   a, $FF
	ld   ($C2D2), a
	ld   a, (hl)
	cp   $FF
	ret  z

	push hl
	call _LABEL_6AE5_233

; Data from 6A71 to 6AE4 (116 bytes)
.db $E1, $23, $C3, $69, $6A, $8A, $6A, $90, $6A, $97, $6A, $A0, $6A, $A9, $6A, $B2
.db $6A, $BB, $6A, $C4, $6A, $CD, $6A, $D6, $6A, $01, $02, $03, $04, $05, $FF, $05
.db $04, $03, $02, $01, $00, $FF, $07, $08, $09, $0A, $0B, $0C, $0D, $00, $FF, $17
.db $18, $19, $1A, $1B, $1C, $1D, $00, $FF, $1F, $20, $21, $22, $23, $24, $25, $00
.db $FF, $0F, $10, $11, $12, $13, $14, $15, $00, $FF, $0D, $0C, $0B, $0A, $09, $08
.db $07, $00, $FF, $25, $24, $23, $22, $21, $20, $1F, $00, $FF, $1D, $1C, $1B, $1A
.db $19, $18, $17, $00, $FF, $15, $14, $13, $12, $11, $10, $0F, $00, $FF, $F0, $01
.db $10, $FF, $F0, $01

_LABEL_6AE5_233:
	call _LABEL_6AED_201
	ld   a, $0C
	jp   _LABEL_52_31

_LABEL_6AED_201:
	and  $3F
	jr   nz, _LABEL_6AFC_202
	ld   b, $01
	call _LABEL_6BCA_135
	ld   a, $00
	jr   z, _LABEL_6AFC_202
	ld   a, $06
_LABEL_6AFC_202:
	ld   c, a
	add  a, a
	ld   b, a
	add  a, a
	add  a, b
	ld   hl, $705F
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	push bc
	ld   a, (hl)
	ld   ($FFFF), a
	inc  hl
	ld   a, (hl)
	inc  hl
	push hl
	ld   h, (hl)
	ld   l, a
	rr   c
	ld   d, $40
	jr   nc, _LABEL_6B1C_203
	ld   d, $60
_LABEL_6B1C_203:
	di
	xor  a
	out  ($BF), a
	ld   a, d
	out  ($BF), a
	ei
	call _LABEL_6B8E_204
	pop  hl
	inc  hl
	ld   a, (hl)
	ld   ($FFFF), a
	inc  hl
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	call _LABEL_6B62_137
	pop  bc
	call _LABEL_6C46_142
	ret

_LABEL_6B3A_134:
	ld   b, $01
	call _LABEL_6BCA_135
	ld   a, $00
	jr   z, _LABEL_6B45_136
	ld   a, $06
_LABEL_6B45_136:
	ld   c, a
	add  a, a
	ld   e, a
	add  a, a
	add  a, e
	ld   e, a
	ld   d, $00
	ld   hl, $7062
	add  hl, de
	push bc
	ld   a, (hl)
	ld   ($FFFF), a
	inc  hl
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	call _LABEL_6B62_137
	pop  bc
	jp   _LABEL_6C46_142

_LABEL_6B62_137:
	ld   b, $00
	ld   de, $D000
	call _LABEL_6B6E_138
	inc  hl
	ld   de, $D001
_LABEL_6B6E_138:
	ld   a, (hl)
	or   a
	ret  z

	jp   m, _LABEL_6B81_139
	ld   c, a
	inc  hl
_LABEL_6B76_140:
	ldi
	dec  hl
	inc  de
	jp   pe, _LABEL_6B76_140
	inc  hl
	jp   _LABEL_6B6E_138

_LABEL_6B81_139:
	and  $7F
	ld   c, a
	inc  hl
_LABEL_6B85_141:
	ldi
	inc  de
	jp   pe, _LABEL_6B85_141
	jp   _LABEL_6B6E_138

_LABEL_6B8E_204:
	ld   c, $BE
_LABEL_6B90_207:
	ld   a, (hl)
	or   a
	ret  z

	jp   m, _LABEL_6BB1_205
	ld   b, a
	inc  hl
_LABEL_6B98_206:
	ld   a, (hl)
	outi
	inc  b
	or   (hl)
	outi
	inc  b
	or   (hl)
	outi
	dec  hl
	dec  hl
	dec  hl
	out  ($BE), a
	jp   nz, _LABEL_6B98_206
	inc  hl
	inc  hl
	inc  hl
	jp   _LABEL_6B90_207

_LABEL_6BB1_205:
	and  $7F
	ld   b, a
	inc  hl
_LABEL_6BB5_208:
	ld   a, (hl)
	outi
	inc  b
	or   (hl)
	outi
	inc  b
	or   (hl)
	outi
	push af
	pop  af
	out  ($BE), a
	jp   nz, _LABEL_6BB5_208
	jp   _LABEL_6B90_207

_LABEL_6BCA_135:
	push hl
	ld   a, ($C30A)
	and  $03
	add  a, a
	add  a, a
	add  a, a
	add  a, a
	ld   e, a
	ld   d, $00
	ld   hl, $6C06
	add  hl, de
	ld   e, b
	add  hl, de
	ld   a, ($C30C)
	add  a, (hl)
	ld   h, $CB
	ld   l, a
	ld   a, (hl)
	and  $07
	pop  hl
	ret

_LABEL_6BE9_152:
	ld   a, ($C30A)
	and  $03
	add  a, a
	add  a, a
	add  a, a
	add  a, a
	ld   e, a
	ld   d, $00
	ld   hl, $6C06
	add  hl, de
	ld   e, b
	add  hl, de
	ld   a, ($C30C)
	add  a, (hl)
	ld   h, $CB
	ld   l, a
	ld   a, (hl)
	and  $7F
	ret


; Data from 6C06 to 6C45 (64 bytes)
.db $00, $F0, $EF, $F1, $E0, $DF, $E1, $D0, $CF, $D1, $C0, $10, $FF, $01, $00, $00
.db $00, $01, $F1, $11, $02, $F2, $12, $03, $F3, $13, $04, $FF, $F0, $10, $00, $00
.db $00, $10, $11, $0F, $20, $21, $1F, $30, $31, $2F, $40, $F0, $01, $FF, $00, $00
.db $00, $FF, $0F, $EF, $FE, $0E, $EE, $FD, $0D, $ED, $FC, $01, $10, $F0, $00, $00

_LABEL_6C46_142:
	ld   a, c
	cp   $06
	jp   z, _LABEL_6E38_143
	ret  nc

	ld   hl, $FFFF
	ld   (hl), :Bank06
	add  a, a
	ld   l, a
	add  a, a
	add  a, a
	ld   h, a
	add  a, a
	add  a, h
	add  a, l
	ld   l, a
	ld   h, $00
	ld   e, l
	ld   d, h
	add  hl, hl
	add  hl, de
	ld   de, $6E8B
	add  hl, de
	ld   b, $04
	call _LABEL_6BCA_135
	jr   z, _LABEL_6C85_144
	call _LABEL_6D13_145
	ld   b, $02
	call _LABEL_6BCA_135
	ld   b, (hl)
	inc  hl
	ld   c, (hl)
	inc  hl
	push bc
	call _LABEL_6D34_148
	ld   b, $03
	call _LABEL_6BCA_135
	pop  bc
	jp   _LABEL_6D34_148

_LABEL_6C85_144:
	ld   de, $000C
	add  hl, de
	ld   b, $02
	call _LABEL_6BCA_135
	ld   b, (hl)
	inc  hl
	ld   c, (hl)
	inc  hl
	push bc
	call _LABEL_6D45_149
	ld   b, $03
	call _LABEL_6BCA_135
	pop  bc
	call _LABEL_6D45_149
	ld   b, $07
	call _LABEL_6BCA_135
	jr   z, _LABEL_6CBF_150
	call _LABEL_6D13_145
	ld   b, $05
	call _LABEL_6BCA_135
	ld   b, (hl)
	inc  hl
	ld   c, (hl)
	inc  hl
	push bc
	call _LABEL_6D34_148
	ld   b, $06
	call _LABEL_6BCA_135
	pop  bc
	jp   _LABEL_6D34_148

_LABEL_6CBF_150:
	ld   de, $000C
	add  hl, de
	ld   b, $05
	call _LABEL_6BCA_135
	ld   b, (hl)
	inc  hl
	ld   c, (hl)
	inc  hl
	push bc
	call _LABEL_6D45_149
	ld   b, $06
	call _LABEL_6BCA_135
	pop  bc
	call _LABEL_6D45_149
	ld   b, $0A
	call _LABEL_6BCA_135
	jr   z, _LABEL_6CF9_151
	call _LABEL_6D13_145
	ld   b, $08
	call _LABEL_6BCA_135
	ld   b, (hl)
	inc  hl
	ld   c, (hl)
	inc  hl
	push bc
	call _LABEL_6D34_148
	ld   b, $09
	call _LABEL_6BCA_135
	pop  bc
	jp   _LABEL_6D34_148

_LABEL_6CF9_151:
	ld   de, $000C
	add  hl, de
	ld   b, $08
	call _LABEL_6BCA_135
	ld   b, (hl)
	inc  hl
	ld   c, (hl)
	inc  hl
	push bc
	call _LABEL_6D45_149
	ld   b, $09
	call _LABEL_6BCA_135
	pop  bc
	jp   _LABEL_6D45_149

_LABEL_6D13_145:
	push af
	call _LABEL_6D21_146
	pop  af
	cp   $07
	jr   z, _LABEL_6D21_146
	cp   $01
	jr   nc, _LABEL_6D21_146
	xor  a
_LABEL_6D21_146:
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	inc  hl
	ld   b, (hl)
	inc  hl
	ld   c, (hl)
	inc  hl
	ld   a, (hl)
	inc  hl
	push hl
	ld   h, (hl)
	ld   l, a
	call nz, _LABEL_6E64_147
	pop  hl
	inc  hl
	ret

_LABEL_6D34_148:
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	inc  hl
	inc  hl
	inc  hl
	ld   a, (hl)
	inc  hl
	push hl
	ld   h, (hl)
	ld   l, a
	call z, _LABEL_6E64_147
	pop  hl
	inc  hl
	ret

_LABEL_6D45_149:
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	inc  hl
	ld   a, (hl)
	inc  hl
	push hl
	ld   h, (hl)
	ld   l, a
	call z, _LABEL_6E64_147
	pop  hl
	inc  hl
	inc  hl
	inc  hl
	ret

_LABEL_6D56_198:
	ld   hl, $FFFF
	ld   (hl), :Bank15
	ld   a, ($C30D)
	ld   h, a
	ld   l, $00
	srl  h
	rr   l
	ld   de, $9F6E
	add  hl, de
	ld   de, $CB00
	ld   b, $80
_LABEL_6D6E_199:
	ld   a, (hl)
	rrca
	rrca
	rrca
	rrca
	and  $0F
	ld   (de), a
	inc  de
	ld   a, (hl)
	and  $0F
	ld   (de), a
	inc  de
	inc  hl
	djnz _LABEL_6D6E_199
	ld   hl, $FFFF
	ld   (hl), :Bank03
	ld   hl, $6DF7
	ld   de, $C251
	ld   bc, $0007
	ldir
	ld   a, ($C30D)
	add  a, a
	add  a, a
	ld   l, a
	ld   h, $00
	ld   de, $B619
	add  hl, de
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	ld   ($C2E3), de
	inc  hl
	ld   a, ($C315)
	or   a
	ld   a, (hl)
	jr   nz, _LABEL_6DBB_200
	ld   e, a
	ld   a, ($C30D)
	ld   hl, $6DFE
	ld   bc, $0006
	cpir
	ld   a, e
	jr   z, _LABEL_6DBB_200
	ld   a, $FF
_LABEL_6DBB_200:
	inc  a
	ld   ($C315), a
	add  a, a
	add  a, a
	add  a, a
	ld   l, a
	ld   h, $00
	ld   de, $B5B9
	add  hl, de
	ld   a, (hl)
	ld   ($C240), a
	ld   de, $C248
	ld   bc, $0008
	ldir
	ld   a, ($C249)
	ld   ($C248), a
	ld   a, ($C24D)
	ld   ($C250), a
	ret


; Data from 6DE2 to 6E03 (34 bytes)
.db $21, $FF, $FF, $36, $03, $3A, $0D, $C3, $87, $87, $6F, $26, $00, $11, $1C, $B6
.db $19, $7E, $C3, $97, $0C, $00, $3F, $30, $38, $03, $0B, $0F, $01, $02, $14, $15
.db $16, $21

_LABEL_6E04_153:
	ld   a, ($C2F5)
	or   a
	ret  z

	inc  a
	ld   ($C2F5), a
	ld   hl, $FFFF
	ld   (hl), :Bank20
	ld   h, $00
	ld   l, a
	add  hl, hl
	ld   de, $BDB8
	add  hl, de
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	ld   b, (hl)
	inc  hl
_LABEL_6E20_157:
	push bc
	ld   e, (hl)
	inc  hl
	ld   d, (hl)
	inc  hl
	ld   b, (hl)
	inc  hl
_LABEL_6E27_156:
	ld   a, (hl)
	add  a, $80
	cp   $C0
	jr   c, _LABEL_6E2F_155
	ld   (de), a
_LABEL_6E2F_155:
	inc  de
	inc  de
	inc  hl
	djnz _LABEL_6E27_156
	pop  bc
	djnz _LABEL_6E20_157
	ret

_LABEL_6E38_143:
	ld   b, $01
	call _LABEL_6BE9_152
	and  $07
	cp   $07
	jr   z, _LABEL_6E04_153
	sub  $02
	ret  c

	bit  7, (hl)
	jr   z, _LABEL_6E4C_154
	add  a, $06
_LABEL_6E4C_154:
	ld   hl, $FFFF
	ld   (hl), :Bank06
	add  a, a
	ld   hl, $6E75
	add  a, l
	ld   l, a
	adc  a, h
	sub  l
	ld   h, a
	ld   a, (hl)
	inc  hl
	ld   h, (hl)
	ld   l, a
	ld   de, $D114
	ld   bc, $1218
_LABEL_6E64_147:
	push bc
	push de
	ld   b, $00
	ldir
	ex   de, hl
	pop  hl
	ld   bc, $0040
	add  hl, bc
	ex   de, hl
	pop  bc
	djnz _LABEL_6E64_147
	ret


; Data from 6E75 to 7876 (2562 bytes)
.db $50, $AC, $00, $AE, $B0, $AF, $60, $B1
.db $70, $B6, $10, $B3, $10, $B3, $20, $B8
.db $C0, $B4, $C0, $B4, $D0, $B9, $D4, $D1
.db $08, $18, $90, $80, $1C, $D2, $07, $08
.db $F4, $82, $0C, $06, $50, $D1, $A0, $81
.db $30, $82, $6A, $D1, $E8, $81, $78, $82
.db $18, $D2, $06, $10, $30, $80, $5C, $D2
.db $05, $08, $CC, $82, $06, $02, $18, $D2
.db $70, $81, $88, $81, $26, $D2, $7C, $81
.db $94, $81, $5A, $D2, $04, $0C, $00, $80
.db $9E, $D2, $03, $04, $C0, $82, $04, $02
.db $5A, $D2, $50, $81, $60, $81, $64, $D2
.db $58, $81, $68, $81, $94, $D1, $0A, $18
.db $BC, $83, $1A, $D2, $08, $0C, $B0, $87
.db $0E, $0A, $0C, $D1, $4C, $85, $64, $86
.db $2A, $D1, $D8, $85, $F0, $86, $18, $D2
.db $06, $10, $5C, $83, $5C, $D2, $05, $08
.db $88, $87, $08, $04, $D6, $D1, $CC, $84
.db $0C, $85, $E6, $D1, $EC, $84, $2C, $85
.db $5A, $D2, $04, $0C, $2C, $83, $9E, $D2
.db $03, $04, $7C, $87, $04, $02, $5A, $D2
.db $AC, $84, $BC, $84, $64, $D2, $B4, $84
.db $C4, $84, $92, $D1, $0A, $1C, $A0, $88
.db $1A, $D2, $08, $0C, $EC, $8D, $12, $0C
.db $88, $D0, $58, $8A, $08, $8C, $AC, $D0
.db $30, $8B, $E0, $8C, $18, $D2, $06, $10
.db $40, $88, $5C, $D2, $05, $08, $C4, $8D
.db $08, $04, $D6, $D1, $D8, $89, $18, $8A
.db $E6, $D1, $F8, $89, $38, $8A, $5A, $D2
.db $04, $0C, $10, $88, $9E, $D2, $03, $04
.db $B8, $8D, $04, $02, $5A, $D2, $B8, $89
.db $C8, $89, $64, $D2, $C0, $89, $D0, $89

.db $50, $D1, $0C, $20, $DC, $8E, $DA, $D1
.db $0A, $0C, $E0, $97, $16, $12, $00, $D0
.db $7C, $91, $20, $96, $2E, $D0, $08, $93
.db $94, $94, $18, $D2, $06, $10, $7C, $8E
.db $5C, $D2, $05, $08, $B8, $97, $08, $06
.db $D4, $D1, $BC, $90, $1C, $91, $E6, $D1
.db $EC, $90, $4C, $91, $5A, $D2, $04, $0C
.db $4C, $8E, $9E, $D2, $03, $04, $AC, $97
.db $06, $04, $18, $D2, $5C, $90, $8C, $90
.db $24, $D2, $74, $90, $A4, $90, $0C, $D1
.db $0E, $28, $00, $99, $D8, $D1, $0B, $10
.db $28, $A1, $16, $0E, $00, $D0, $10, $9C
.db $78, $9E, $32, $D0, $44, $9D, $AC, $9F
.db $16, $D2, $06, $14, $88, $98, $5C, $D2
.db $05, $08, $00, $A1, $08, $04, $D4, $D1
.db $90, $9B, $D0, $9B, $E8, $D1, $B0, $9B
.db $F0, $9B, $5A, $D2, $04, $0C, $58, $98
.db $5C, $D2, $04, $08, $E0, $A0, $06, $04
.db $18, $D2, $30, $9B, $60, $9B, $24, $D2
.db $48, $9B, $78, $9B, $88, $D0, $12, $30
.db $C0, $A2, $96, $D1, $0E, $14, $38, $AB
.db $16, $0A, $00, $D0, $70, $A7, $28, $A9
.db $36, $D0, $4C, $A8, $04, $AA, $D6, $D1
.db $08, $14, $20, $A2, $5C, $D2, $06, $08
.db $08, $AB, $0A, $06, $92, $D1, $80, $A6
.db $F8, $A6, $A8, $D1, $BC, $A6, $34, $A7
.db $1A, $D2, $06, $0C, $D8, $A1, $5C, $D2
.db $05, $08, $E0, $AA, $06, $04, $18, $D2
.db $20, $A6, $50, $A6, $24, $D2, $38, $A6
.db $68, $A6, $07, $00, $80, $04, $0F, $8B
.db $07, $4B, $8A, $04, $D4, $8E, $07, $1E
.db $95, $04, $A4, $92, $07, $6B, $9F, $04

.db $73, $96, $07, $13, $AA, $04, $34, $9A
.db $08, $00, $80, $04, $02, $9E, $08, $ED
.db $89, $04, $06, $89, $08, $23, $A4, $04
.db $D3, $A1, $09, $D1, $83, $04, $35, $A5
.db $07, $22, $B4, $04, $80, $A8, $05, $AF
.db $B1, $04, $A6, $AB, $07, $22, $B4, $04
.db $5B, $AF, $09, $D1, $83, $04, $3D, $B3
.db $08, $23, $A4, $04, $6C, $B7, $08, $ED
.db $89, $04, $06, $89, $08, $3F, $96, $1C
.db $C0, $A6, $08, $06, $9D, $1C, $35, $A9
.db $05, $27, $AA, $1C, $D0, $AB, $09, $00
.db $80, $1C, $C9, $AE, $05, $27, $AA, $1C
.db $0C, $B2, $08, $06, $9D, $1C, $C2, $B5
.db $08, $3F, $96, $1C, $5A, $B9, $08, $ED
.db $89, $04, $06, $89, $09, $4A, $8F, $05
.db $00, $80, $09, $BD, $9A, $05, $67, $83
.db $09, $0D, $A6, $05, $95, $86, $08, $75
.db $AF, $05, $7A, $89, $04, $00, $80, $05
.db $62, $8C, $05, $30, $B8, $05, $18, $8F
.db $08, $26, $B9, $05, $8F, $91, $08, $ED
.db $89, $04, $06, $89, $08, $26, $B9, $05
.db $C6, $93, $05, $30, $B8, $05, $2E, $97
.db $04, $00, $80, $05, $AD, $9A, $08, $75
.db $AF, $05, $7E, $9E, $09, $0D, $A6, $05
.db $48, $A2, $09, $BD, $9A, $05, $12, $A6
.db $09, $4A, $8F, $04, $BE, $BB, $C5, $D5
.db $E5, $CD, $4D, $71, $E1, $D1, $C1, $C9
.db $21, $65, $C2, $7E, $35, $FA, $5C, $71
.db $3A, $64, $C2, $4F, $C3, $73, $71, $36
.db $00, $3A, $04, $C2, $E6, $0F, $F6, $80
.db $4F, $3A, $0E, $C3, $B7, $3E, $0F, $28
.db $02, $3E, $07, $32, $65, $C2, $11, $01

.db $00, $3A, $0E, $C3, $B7, $28, $01, $1C
.db $3A, $04, $C3, $57, $2A, $05, $C3, $44
.db $CB, $41, $28, $21, $3E, $02, $CB, $79
.db $C4, $E4, $74, $20, $18, $7A, $93, $FE
.db $E0, $38, $02, $D6, $20, $57, $7D, $93
.db $FE, $C0, $38, $03, $D6, $40, $25, $6F
.db $3E, $01, $C3, $CC, $71, $CB, $49, $28
.db $38, $3E, $04, $CB, $79, $C4, $E4, $74
.db $20, $2F, $7A, $83, $FE, $E0, $38, $02
.db $C6, $20, $57, $7D, $83, $FE, $C0, $38
.db $03, $C6, $40, $24, $6F, $3E, $02, $32
.db $64, $C2, $3E, $FF, $32, $D2, $C2, $7A
.db $32, $04, $C3, $7C, $E6, $07, $67, $22
.db $05, $C3, $B8, $C4, $3D, $72, $C3, $3A
.db $73, $16, $00, $2A, $01, $C3, $44, $CB
.db $51, $28, $11, $3E, $06, $CB, $79, $C4
.db $E4, $74, $20, $08, $B7, $ED, $52, $3E
.db $04, $C3, $11, $72, $CB, $59, $28, $28
.db $3E, $08, $CB, $79, $C4, $E4, $74, $20
.db $1F, $19, $3E, $08, $32, $64, $C2, $3E
.db $FF, $32, $D2, $C2, $7D, $ED, $44, $32
.db $00, $C3, $7C, $E6, $07, $67, $22, $01
.db $C3, $B8, $C2, $3D, $72, $C3, $A6, $72
.db $3E, $D6, $32, $04, $C0, $AF, $32, $D2
.db $C2, $32, $64, $C2, $32, $65, $C2, $C9

LABEL_723D:
.db $3A, $62, $C2, $32, $FF, $FF, $3A, $06
.db $C3, $87, $5F, $87, $87, $87, $83, $5F
.db $3A, $02, $C3, $87, $83, $5F, $16, $00
.db $2A, $60, $C2, $19, $7E, $23, $E5, $66
.db $6F, $11, $00, $CC, $CD, $8A, $72, $E1
.db $E5, $23, $7E, $23, $66, $6F, $11, $00
.db $CD, $CD, $8A, $72, $E1, $11, $11, $00

.db $19, $7E, $23, $E5, $66, $6F, $11, $00
.db $CE, $CD, $8A, $72, $E1, $23, $7E, $23
.db $66, $6F, $11, $00, $CF, $06, $00, $7E
.db $B7, $C8, $FA, $9D, $72, $47, $23, $7E
.db $12, $13, $10, $FC, $23, $C3, $8C, $72
.db $E6, $7F, $4F, $23, $ED, $B0, $C3, $8C
.db $72, $3A, $64, $C2, $E6, $0C, $C8, $47
.db $3A, $63, $C2, $32, $FF, $FF, $0E, $00
.db $3A, $01, $C3, $E6, $07, $28, $07, $78
.db $E6, $08, $20, $02, $0E, $08, $3A, $04
.db $C3, $E6, $F0, $6F, $26, $00, $29, $29
.db $29, $3A, $01, $C3, $81, $0F, $0F, $E6
.db $3C, $85, $5F, $7C, $C6, $D0, $57, $26
.db $CC, $3A, $05, $C3, $E6, $F0, $6F, $3A
.db $01, $C3, $81, $30, $01, $24, $0F, $0F
.db $0F, $0F, $E6, $0F, $85, $6F, $78, $E6
.db $08, $28, $01, $24, $06, $0E, $C5, $E5
.db $6E, $26, $10, $29, $29, $29, $ED, $A0
.db $ED, $A0, $ED, $A0, $ED, $A0, $3E, $3C
.db $83, $5F, $8A, $93, $57, $ED, $A0, $ED
.db $A0, $ED, $A0, $ED, $A0, $E1, $3E, $10
.db $85, $FE, $C0, $38, $04, $D6, $C0, $24
.db $24, $6F, $3E, $3C, $83, $5F, $8A, $93
.db $D6, $D7, $30, $02, $C6, $07, $C6, $D0
.db $57, $C1, $10, $C2, $C9

LABEL_733A:
.db	$3A, $64, $C2
.db $E6, $03, $C8, $47, $E6, $01, $3A, $63
.db $C2, $32, $FF, $FF, $3A, $04, $C3, $06
.db $00, $20, $09, $FE, $20, $38, $02, $C6
.db $20, $06, $C0, $80, $E6, $F0, $6F, $26
.db $00, $29, $29, $29, $3A, $01, $C3, $0F
.db $0F, $E6, $3C, $85, $5F, $7C, $C6, $D0
.db $57, $3A, $05, $C3, $E6, $F0, $80, $6F

.db $CE, $00, $95, $67, $3A, $01, $C3, $0F
.db $0F, $0F, $0F, $E6, $0F, $85, $6F, $01
.db $C0, $00, $B7, $ED, $42, $3E, $CE, $30
.db $03, $09, $3E, $CC, $67, $06, $10, $C5
.db $E5, $6E, $26, $10, $29, $29, $29, $ED
.db $A0, $ED, $A0, $ED, $A0, $ED, $A0, $D5
.db $3E, $3C, $83, $5F, $8A, $93, $57, $ED
.db $A0, $ED, $A0, $ED, $A0, $ED, $A0, $D1
.db $7B, $E6, $3F, $20, $04, $7B, $D6, $40
.db $5F, $E1, $7D, $E6, $F0, $47, $2C, $7D
.db $E6, $F0, $B8, $28, $02, $24, $68, $C1
.db $10, $C5, $C9

LABEL_73D0:
.db	$3A, $64, $C2, $E6, $0F
.db $C8, $47, $E6, $03, $3A, $63, $C2, $32
.db $FF, $FF, $C2, $1C, $74, $0E, $00, $3A
.db $01, $C3, $E6, $07, $28, $07, $78, $E6
.db $08, $20, $02, $0E, $08, $3A, $01, $C3
.db $81, $0F, $0F, $E6, $3E, $5F, $6F, $16
.db $78, $26, $D0, $01, $BE, $1C, $C5, $CF
.db $00, $00, $00, $ED, $A3, $00, $00, $00
.db $ED, $A3, $01, $3E, $00, $09, $EB, $0E
.db $40, $09, $EB, $C1, $10, $E8, $C9, $78
.db $E6, $01, $3A, $04, $C3, $06, $00, $20
.db $09, $FE, $20, $38, $02, $C6, $20, $06
.db $C0, $80, $E6, $F8, $6F, $26, $00, $29
.db $29, $29, $7C, $C6, $78, $57, $5D, $CF
.db $7C, $C6, $D0, $67, $01, $BE, $40, $ED
.db $A3, $00, $C2, $44, $74, $C9

LABEL_744B:
.db	$CD, $02
.db $76, $3A, $63, $C2, $32, $FF, $FF, $3A
.db $04, $C3, $E6, $F0, $6F, $26, $00, $29
.db $29, $29, $3A, $01, $C3, $0F, $0F, $E6
.db $3C, $85, $5F, $7C, $C6, $D0, $57, $3A
.db $05, $C3, $E6, $F0, $6F, $3A, $01, $C3
.db $0F, $0F, $0F, $0F, $E6, $0F, $85, $6F
.db $26, $CC, $06, $0C, $C5, $E5, $06, $10
.db $C5, $E5, $6E, $26, $10, $29, $29, $29
.db $ED, $A0, $ED, $A0, $ED, $A0, $ED, $A0
.db $D5, $3E, $3C, $83, $5F, $8A, $93, $57
.db $ED, $A0, $ED, $A0, $ED, $A0, $ED, $A0
.db $D1, $7B, $E6, $3F, $20, $04, $7B, $D6
.db $40, $5F, $E1, $7D, $E6, $F0, $47, $2C
.db $7D, $E6, $F0, $B8, $28, $02, $24, $68
.db $C1, $10, $C5, $3E, $80, $83, $5F, $8A
.db $93, $D6, $D7, $30, $02, $C6, $07, $C6
.db $D0, $57, $E1, $3E, $10, $85, $FE, $C0

.db $38, $04, $D6, $C0, $24, $24, $6F, $C1
.db $10, $A2, $3E, $12, $C3, $52, $00, $C5
.db $E5, $4F, $3A, $E9, $C2, $B7, $20, $15
.db $3A, $0E, $C3, $B7, $20, $13, $06, $00
.db $21, $21, $7A, $09, $7E, $CD, $64, $77
.db $E6, $01, $E1, $C1, $C9, $AF, $E1, $C1
.db $C9, $FE, $04, $20, $1B, $D5, $06, $00
.db $21, $2B, $7A, $09, $EB, $1A, $CD, $64
.db $77, $E6, $01, $20, $07, $13, $1A, $CD
.db $64, $77, $E6, $01, $D1, $E1, $C1, $C9
.db $FE, $08, $20, $1B, $D5, $06, $00, $21
.db $2B, $7A, $09, $EB, $1A, $CD, $64, $77
.db $E6, $0A, $20, $07, $13, $1A, $CD, $64
.db $77, $E6, $0A, $D1, $E1, $C1, $C9, $D5
.db $06, $00, $21, $2B, $7A, $09, $58, $7E
.db $23, $56, $CD, $6C, $75, $E6, $01, $4F
.db $7A, $51, $CD, $6C, $75, $E6, $01, $B2
.db $F5, $7B, $B7, $28, $05, $3E, $B7, $32
.db $04, $C0, $F1, $D1, $E1, $C1, $C9, $21
.db $8D, $7A, $85, $6F, $8C, $95, $67, $4E
.db $23, $46, $26, $CC, $3A, $05, $C3, $81
.db $38, $04, $FE, $C0, $38, $04, $C6, $40
.db $24, $24, $E6, $F0, $6F, $3A, $01, $C3
.db $80, $30, $01, $24, $0F, $0F, $0F, $0F
.db $E6, $0F, $85, $6F, $7E, $FE, $D8, $38
.db $4A, $FE, $E0, $30, $46, $36, $D7, $D5
.db $3A, $04, $C3, $81, $30, $02, $C6, $20
.db $FE, $E0, $38, $02, $C6, $20, $E6, $F0
.db $6F, $26, $00, $29, $29, $29, $3A, $01
.db $C3, $80, $0F, $0F, $E6, $3C, $85, $5F
.db $7C, $C6, $78, $57, $21, $B9, $7A, $F3
.db $01, $BE, $02, $C5, $CF, $06, $04, $ED

.db $A3, $00, $C2, $D4, $75, $EB, $01, $40
.db $00, $09, $EB, $C1, $10, $ED, $FB, $D1
.db $3E, $D7, $5F, $32, $E5, $C2, $21, $FF
.db $FF, $36, $03, $21, $6F, $BC, $85, $6F
.db $8C, $95, $67, $3A, $08, $C3, $FE, $04
.db $38, $01, $24, $7E, $C9, $3A, $08, $C3
.db $FE, $02, $C0, $3A, $0E, $C3, $FE, $0C
.db $C0, $3E, $0A, $CD, $1F, $76, $3E, $0C
.db $CD, $1F, $76, $3E, $12, $CD, $1F, $76
.db $3E, $14, $21, $8D, $7A, $85, $6F, $8C
.db $95, $67, $4E, $23, $46, $26, $CC, $3A
.db $05, $C3, $81, $38, $04, $FE, $C0, $38
.db $04, $C6, $40, $24, $24, $E6, $F0, $6F
.db $3A, $01, $C3, $80, $30, $01, $24, $0F
.db $0F, $0F, $0F, $E6, $0F, $85, $6F, $7E
.db $FE, $D8, $D8, $FE, $E0, $D0, $36, $D7
.db $C9, $01, $00, $04, $C5, $06, $00, $21
.db $35, $7A, $09, $EB, $1A, $CD, $64, $77
.db $E6, $0D, $20, $1B, $13, $1A, $CD, $64
.db $77, $E6, $0D, $20, $12, $13, $1A, $CD
.db $64, $77, $E6, $0D, $20, $09, $13, $1A
.db $CD, $64, $77, $E6, $0D, $28, $0B, $C1
.db $79, $C6, $04, $4F, $10, $CE, $3E, $FF
.db $B7, $C9, $C1, $79, $B7, $C8, $11, $10
.db $00, $FE, $04, $28, $1B, $FE, $08, $20
.db $03, $11, $00, $00, $2A, $05, $C3, $7D
.db $C6, $10, $FE, $C0, $38, $03, $C6, $40
.db $24, $6F, $22, $05, $C3, $22, $11, $C3
.db $2A, $01, $C3, $19, $22, $01, $C3, $22
.db $13, $C3, $AF, $C9, $01, $00, $08, $C5
.db $06, $00, $21, $45, $7A, $09, $EB, $1A
.db $CD, $64, $77, $E6, $0A, $20, $1B, $13

.db $1A, $CD, $64, $77, $E6, $0A, $20, $12
.db $13, $1A, $CD, $64, $77, $E6, $0A, $20
.db $09, $13, $1A, $CD, $64, $77, $E6, $0A
.db $28, $0B, $C1, $79, $C6, $06, $4F, $10
.db $CE, $3E, $FF, $B7, $C9, $21, $49, $7A
.db $C1, $06, $00, $09, $ED, $5B, $05, $C3
.db $7B, $86, $FE, $C0, $38, $0C, $CB, $7E
.db $20, $05, $C6, $40, $14, $18, $03, $D6
.db $40, $15, $5F, $ED, $53, $05, $C3, $ED
.db $53, $11, $C3, $23, $7E, $5F, $07, $9F
.db $57, $2A, $01, $C3, $19, $22, $01, $C3
.db $22, $13, $C3, $AF, $C9, $3A, $D7, $C2
.db $E6, $03, $4F, $87, $81, $87, $4F, $06
.db $08, $C5, $06, $00, $21, $75, $7A, $09
.db $7E, $CD, $64, $77, $E6, $0D, $28, $11
.db $C1, $79, $C6, $03, $FE, $18, $38, $02
.db $D6, $18, $4F, $10, $E4, $3E, $FF, $B7
.db $C9, $21, $76, $7A, $C3, $FD, $76

LABEL_7764:
.db	$21
.db $8D, $7A, $85, $6F, $8C, $95, $67, $4E
.db $23, $46, $26, $CC, $3A, $05, $C3, $81
.db $38, $04, $FE, $C0, $38, $04, $C6, $40
.db $24, $24, $E6, $F0, $6F, $3A, $01, $C3
.db $80, $30, $01, $24, $0F, $0F, $0F, $0F
.db $E6, $0F, $85, $6F, $7E, $32, $E5, $C2
.db $21, $FF, $FF, $36, $03, $21, $6F, $BC
.db $85, $6F, $8C, $95, $67, $3A, $08, $C3
.db $FE, $04, $38, $01, $24, $7E, $C9

LABEL_77AC:
.db	$21
.db $D5, $C2, $3A, $65, $C2, $B7, $CA, $B9
.db $77, $36, $00, $C9, $7E, $B7, $C0, $36
.db $FF, $3E, $14, $5F, $CD, $64, $77, $47
.db $0F, $0F, $0F, $0F, $E6, $0F, $32, $9E
.db $C2, $78, $E6, $08, $20, $3D, $78, $E6
.db $04, $C2, $2A, $79, $3A, $0E, $C3, $B7
.db $28, $24, $3E, $12, $5F, $CD, $64, $77
.db $E6, $08, $20, $27, $3E, $0A, $5F, $CD
.db $64, $77, $E6, $08, $20, $1D, $3E, $0C
.db $5F, $CD, $64, $77, $E6, $08, $20, $13
.db $3E, $14, $5F, $CD, $64, $77, $2A, $05
.db $C3, $22, $11, $C3, $2A, $01, $C3, $22
.db $13, $C3, $C9, $7B, $21, $8D, $7A, $85
.db $6F, $8C, $95, $67, $ED, $5B, $05, $C3
.db $7B, $86, $38, $04, $FE, $C0, $38, $03
.db $C6, $40, $14, $5F, $EB, $29, $29, $29
.db $29, $EB, $23, $4E, $06, $00, $2A, $01
.db $C3, $09, $29, $29, $29, $29, $5C, $21
.db $FF, $FF, $36, $03, $2A, $D9, $C2, $7E
.db $FE, $FF, $C8, $E5, $7E, $BA, $28, $10
.db $3C, $47, $E6, $0F, $FE, $0C, $78, $38
.db $04, $C6, $10, $E6, $70, $BA, $20, $09
.db $23, $7E, $BB, $28, $0C, $3C, $BB, $28
.db $08, $E1, $01, $06, $00, $09, $C3, $44
.db $78, $E1, $23, $23, $7E, $FE, $08, $C2
.db $BD, $78

_LABEL_7877_301:
	ld   ($C202), a
	inc  hl
LABEL_787B:
	ld   a, (hl)
	ld   ($C308), a
	ld   ($C309), a
	inc  hl
	ld   e, (hl)
	ld   d, $00
	ex   de, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   a, l
	sub  $60
	jr   c, _LABEL_7894_309
	cp   $C0
	jr   c, _LABEL_7897_310
_LABEL_7894_309:
	sub  $40
	dec  h
_LABEL_7897_310:
	ld   l, a
	ld   a, h
	and  $07
	ld   h, a
	ld   ($C305), hl
	ld   ($C311), hl
	ex   de, hl
	inc  hl
	ld   a, (hl)
	sub  $08
	and  $7F
	ld   l, a
	ld   h, $00
	add  hl, hl
	add  hl, hl
	add  hl, hl
	add  hl, hl
	ld   ($C301), hl
	ld   ($C313), hl
	xor  a
	ld   ($C30E), a
	jp   _LABEL_7908_311


; Data from 78BD to 7907 (75 bytes)
.db $FE, $0A, $C2, $E5, $78, $32, $02, $C2, $23, $56, $23, $5E, $ED, $53, $0C, $C3
.db $23, $7E, $32, $0A, $C3, $2A, $11, $C3, $22, $05, $C3, $2A, $13, $C3, $22, $01
.db $C3, $AF, $32, $0E, $C3, $C3, $08, $79, $FE, $0C, $C0, $32, $02, $C2, $23, $7E
.db $32, $9E, $C2, $23, $7E, $23, $66, $6F, $22, $DB, $C2, $AF, $32, $9D, $C2, $2A
.db $11, $C3, $22, $05, $C3, $2A, $13, $C3, $22, $01, $C3

_LABEL_7908_311:
	ld   a, ($C810)
	ld   ($C2D7), a
	ld   hl, $C26F
	ld   de, $C270
	ld   bc, $0017
	ld   (hl), $00
	ldir
	ld   hl, $C800
	ld   de, $C801
	ld   bc, $00FF
	ld   (hl), $00
	ldir
	pop  hl
	ret


; Data from 792A to 7B04 (475 bytes)
.db $3A, $E5, $C2, $FE, $4C, $C2, $5C, $79, $3A, $09, $C3, $FE, $05, $C0, $3A, $06
.db $C5, $B7, $C8, $3E, $0A, $32, $02, $C2, $21, $DE, $00, $22, $0C, $C3, $3E, $00
.db $32, $0A, $C3, $2A, $11, $C3, $22, $05, $C3, $2A, $13, $C3, $22, $01, $C3, $C3
.db $08, $79, $FE, $5E, $C2, $86, $79, $3A, $0E, $C3, $B7, $C0, $3E, $35, $CD, $2E
.db $28, $C8, $21, $A0, $00, $22, $DB, $C2, $3E, $0C, $32, $02, $C2, $2A, $11, $C3
.db $22, $05, $C3, $2A, $13, $C3, $22, $01, $C3, $C3, $08, $79, $FE, $5F, $D8, $FE
.db $64, $D2, $9C, $79, $3A, $0E, $C3, $FE, $08, $C8, $CD, $C4, $7B, $0E, $02, $C3
.db $E2, $79, $FE, $AD, $C2, $B7, $79, $3A, $09, $C3, $D6, $04, $D8, $6F, $26, $00
.db $5D, $54, $29, $19, $11, $C0, $7A, $19, $3E, $08, $C3, $77, $78, $FE, $C3, $D8
.db $FE, $C7, $D2, $D1, $79, $3A, $0E, $C3, $B7, $C0, $3E, $FF, $32, $9D, $C2, $3E
.db $19, $32, $E6, $C2, $C3, $72, $79, $FE, $C7, $D8, $FE, $D2, $D0, $3E, $3B, $CD
.db $2E, $28, $C8, $CD, $C4, $7B, $0E, $1E, $06, $00, $3E, $03, $CD, $0C, $7A, $3E
.db $02, $CD, $0C, $7A, $3E, $01, $CD, $0C, $7A, $3E, $00, $CD, $0C, $7A, $78, $B7
.db $C8, $32, $F0, $C2, $21, $AE, $00, $22, $DB, $C2, $3E, $0C, $32, $02, $C2, $C3
.db $08, $79, $CD, $7D, $18, $28, $0D, $23, $7E, $91, $30, $01, $AF, $77, $20, $04
.db $2B, $77, $D6, $01, $CB, $10, $C9, $14, $14, $0C, $0C, $1C, $1C, $12, $12, $16
.db $16, $0A, $14, $02, $04, $1A, $1C, $08, $10, $0E, $16, $0A, $0C, $12, $14, $0C
.db $0E, $14, $16, $12, $14, $1A, $1C, $14, $16, $1C, $1E, $02, $04, $0A, $0C, $F0
.db $00, $04, $06, $0C, $0E, $F0, $10, $0E, $26, $16, $28, $00, $20, $16, $28, $1E
.db $2A, $10, $20, $1C, $1E, $22, $24, $20, $10, $1A, $1C, $20, $22, $20, $00, $10
.db $12, $18, $1A, $10, $F0, $08, $0A, $10, $12, $00, $F0, $02, $E0, $F0, $04, $E0
.db $00, $0E, $F0, $10, $16, $00, $10, $1C, $10, $00, $1A, $10, $F0, $10, $00, $E0
.db $08, $F0, $E0, $40, $60, $40, $70, $40, $80, $40, $90, $50, $60, $50, $70, $50
.db $80, $50, $90, $60, $60, $60, $70, $60, $80, $60, $90, $70, $60, $70, $70, $70
.db $80, $70, $90, $80, $70, $80, $80, $80, $90, $50, $A0, $60, $A0, $70, $A0, $91
.db $01, $92, $01, $93, $01, $94, $01, $00, $39, $55, $00, $39, $55, $00, $48, $49
.db $00, $47, $38, $00, $66, $55, $00, $25, $42, $00, $14, $0F, $00, $41, $1A, $00
.db $66, $75, $00, $38, $66, $01, $27, $64, $01, $53, $73, $01, $27, $64, $01, $71
.db $5A, $01, $26, $29, $02, $5B, $2C, $02, $38, $49, $02, $5B, $2C, $02, $38, $49
.db $00, $16, $6A, $21, $09, $10, $22, $1B, $C2, $18, $06

_LABEL_7B05_295:
	ld   hl, $2009
	ld   ($C21B), hl
_LABEL_7B0B_296:
	ld   a, $16
	call _LABEL_52_31
	ld   a, ($C21B)
	or   a
	jp   nz, _LABEL_7B0B_296
	ret

_LABEL_7B18_172:
	ld   hl, $1089
	ld   ($C21B), hl
	jr   _LABEL_7B33_173

_LABEL_7B20_303:
	ld   hl, $2089
	ld   ($C21B), hl
	ld   hl, $C220
	ld   de, $C221
	ld   bc, $001F
	ld   (hl), $00
	ldir
_LABEL_7B33_173:
	ld   a, $16
	call _LABEL_52_31
	ld   a, ($C21B)
	or   a
	jp   nz, _LABEL_7B33_173
	ret


; Data from 7B40 to 7FA8 (1129 bytes)
LABEL_7B40:
.db $21, $1D, $C2, $35, $F0, $36, $03, $21
.db $1B, $C2, $7E, $CB, $7F, $C2, $7A, $7B
.db $B7, $C8, $35, $23, $46, $21, $20, $C2
.db $CD, $5F, $7B, $23, $10, $FA, $C9, $7E
.db $B7, $C8, $E6, $03, $28, $02, $35, $C9
.db $7E, $E6, $0C, $28, $05, $7E, $D6, $04
.db $77, $C9, $7E, $E6, $30, $C8, $D6, $10
.db $77, $C9, $FE, $80, $20, $03, $36, $00
.db $C9, $35, $23, $46, $21, $40, $C2, $11
.db $20, $C2, $CD, $92, $7B, $23, $13, $10
.db $F9, $C9, $1A, $BE, $C8, $C6, $10, $BE
.db $28, $02, $30, $02, $12, $C9, $1A, $C6
.db $04, $BE, $28, $02, $30, $02, $12, $C9
.db $EB, $34, $EB, $C9, $3E, $0A, $32, $BE
.db $C2, $21, $13, $0D, $22, $C0, $C2, $3E
.db $16, $CD, $52, $00, $3A, $BE, $C2, $B7
.db $C2, $B7, $7B, $C9, $3E, $0A, $32, $BE
.db $C2, $21, $03, $0E, $3A, $E6, $C2, $FE
.db $46, $28, $0B, $FE, $49, $28, $07, $FE
.db $4A, $28, $03, $21, $03, $0D, $22, $C0
.db $C2, $3E, $16, $CD, $52, $00, $3A, $BE
.db $C2, $B7, $C2, $E1, $7B, $C9

LABEL_7BEE:
.db	$3A, $BE
.db $C2, $B7, $C8, $3D, $32, $BE, $C2, $0F
.db $DA, $07, $7C, $21, $40, $C2, $11, $20
.db $C2, $01, $20, $00, $ED, $B0, $C9, $2A
.db $C0, $C2, $44, $7D, $21, $20, $C2, $85
.db $6F, $3E, $3F, $77, $23, $10, $FC, $C9

LABEL_7C18:
.db $3A, $0E, $C3, $B7, $C8, $FE, $10, $CA
.db $79, $7C, $FE, $11, $CA, $79, $7C, $FE
.db $0E, $D0, $47, $0E, $D1, $FE, $08, $CA
.db $39, $7C, $0E, $D0, $3A, $65, $C2, $B7
.db $C8, $21, $10, $C3, $35, $F0, $36, $03
.db $2B, $79, $32, $04, $C0, $7E, $3C, $FE
.db $03, $38, $01, $AF, $77, $4F, $78, $FE
.db $08, $21, $6D, $7C, $11, $1D, $C0, $C2
.db $60, $7C, $21, $73, $7C, $11, $17, $C0
.db $06, $00, $09, $CF, $01, $BE, $03, $ED
.db $A3, $C2, $67, $7C, $C9, $2F, $2A, $25
.db $2F, $2A, $25, $3C, $2F, $2A, $3C, $2F
.db $2A, $21, $20, $C2, $11, $00, $C0, $CF
.db $0E, $BE, $C3, $5E, $59, $21, $FF, $FF
.db $36, $03, $21, $1D, $BE, $3E, $6F, $F5
.db $E6, $0F, $11, $38, $C2, $01, $08, $00
.db $20, $02, $ED, $B0, $3E, $16, $CD, $52
.db $00, $F1, $3D, $20, $EA, $C9, $21, $FF
.db $FF, $36, $03, $21, $4D, $BE, $11, $3B
.db $C2, $01, $05, $00, $ED, $B0, $3E, $16
.db $C3, $52, $00, $21, $FF, $FF, $36, $03
.db $CD, $F1, $7C, $CD, $F1, $7C, $CD, $F1
.db $7C, $21, $82, $BE, $06, $0D, $C5, $11
.db $2A, $C2, $01, $06, $00, $ED, $B0, $06
.db $08, $3E, $16, $CD, $52, $00, $10, $F9
.db $C1, $10, $EB, $C9, $21, $FF, $FF, $36
.db $03, $21, $D0, $BE, $01, $18, $09, $18
.db $06, $21, $52, $BE, $01, $03, $18, $C5
.db $7E, $32, $20, $C2, $06, $06, $11, $2A
.db $C2, $12, $13, $10, $FC, $23, $7E, $32
.db $27, $C2, $23, $41, $3E, $16, $CD, $52
.db $00, $10, $F9, $C1, $10, $E1, $C9, $C0
.db $C0, $C0, $E8, $EB, $C0, $C0, $C0, $C0
.db $C0, $C0, $C0, $C0, $C0, $E5, $C0, $C0
.db $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0
.db $E5, $C0, $EA, $C0, $E7, $C0, $C0, $C0
.db $C1, $C0, $C2, $C0, $C3, $C0, $C4, $C0
.db $C5, $C0, $C6, $C0, $C7, $C0, $C8, $C0
.db $C9, $C0, $CA, $C0, $C0, $C0, $E6, $C0
.db $C0, $C0, $C0, $C0, $C0, $C0, $E9, $E5
.db $C0, $C0, $CB, $C0, $CC, $C0, $CD, $C0
.db $CE, $C0, $CF, $C0, $D0, $C0, $D1, $C0
.db $D2, $C0, $D3, $C0, $D4, $C0, $D5, $C0
.db $D6, $C0, $D7, $C0, $D8, $C0, $D9, $C0
.db $DA, $C0, $DB, $C0, $DC, $C0, $DD, $C0
.db $DE, $C0, $DF, $C0, $E0, $C0, $E1, $C0
.db $E2, $C0, $E3, $C0, $E4, $C0, $C0, $C0
.db $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0
.db $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0
.db $C0, $C0, $C0, $20, $20, $20, $20, $20
.db $20, $20, $20, $57, $4F, $4F, $44, $43
.db $41, $4E, $45, $53, $48, $54, $2E, $20
.db $53, $57, $44, $49, $52, $4E, $2E, $20
.db $53, $57, $44, $57, $41, $4E, $44, $65
.db $20, $20, $20, $49, $52, $4E, $2E, $46
.db $41, $4E, $47, $49, $52, $4E, $2E, $20
.db $41, $58, $45, $54, $49, $54, $2E, $20
.db $53, $57, $44, $43, $52, $43, $2E, $20
.db $53, $57, $44, $4E, $45, $45, $44, $4C
.db $47, $55, $4E, $53, $49, $4C, $2E, $46
.db $41, $4E, $47, $48, $45, $41, $54, $2E
.db $47, $55, $4E, $4C, $47, $54, $2E, $53
.db $41, $42, $52, $4C, $41, $53, $52, $2E
.db $47, $55, $4E, $4C, $41, $43, $2E, $20
.db $53, $57, $44, $4C, $41, $43, $2E, $20
.db $41, $58, $45, $4C, $54, $48, $2E, $41
.db $52, $4D, $52, $57, $48, $54, $2E, $4D
.db $41, $4E, $54, $4C, $47, $54, $2E, $53
.db $55, $49, $54, $49, $52, $4E, $2E, $41
.db $52, $4D, $52, $54, $48, $43, $4B, $2E
.db $46, $55, $52, $5A, $49, $52, $2E, $41
.db $52, $4D, $52, $44, $4D, $44, $2E, $41
.db $52, $4D, $52, $4C, $41, $43, $2E, $41
.db $52, $4D, $52, $46, $52, $44, $2E, $4D
.db $41, $4E, $54, $4C, $54, $48, $2E, $20
.db $53, $4C, $44, $42, $52, $4E, $5A, $2E
.db $53, $4C, $44, $49, $52, $4E, $2E, $20
.db $53, $4C, $44, $43, $52, $43, $2E, $20
.db $53, $4C, $44, $47, $4C, $4F, $56, $45
.db $65, $20, $20, $4C, $41, $53, $52, $2E
.db $53, $4C, $44, $4D, $49, $52, $52, $2E
.db $53, $4C, $44, $4C, $41, $43, $2E, $20
.db $53, $4C, $44, $4C, $41, $4E, $44, $52
.db $4F, $56, $52, $48, $4F, $56, $52, $43
.db $52, $46, $54, $49, $43, $45, $20, $44
.db $49, $47, $52, $43, $4F, $4C, $41, $65
.db $20, $20, $20, $42, $55, $52, $47, $45
.db $52, $65, $20, $46, $4C, $55, $54, $45
.db $65, $20, $20, $46, $4C, $41, $53, $48
.db $65, $20, $20, $45, $53, $43, $41, $50
.db $45, $52, $65, $54, $52, $41, $4E, $53
.db $45, $52, $65, $4D, $41, $47, $43, $20
.db $48, $41, $54, $41, $4C, $53, $55, $4C
.db $49, $4E, $65, $50, $4F, $4C, $59, $4D
.db $54, $52, $4C, $44, $55, $47, $4E, $20
.db $4B, $45, $59, $53, $50, $48, $45, $52
.db $45, $65, $20, $54, $4F, $52, $43, $48
.db $65, $20, $20, $50, $52, $49, $53, $4D
.db $65, $20, $20, $4E, $55, $54, $53, $65
.db $20, $20, $20, $48, $41, $50, $53, $42
.db $59, $65, $20, $52, $4F, $41, $44, $50
.db $41, $53, $53, $50, $41, $53, $53, $50
.db $4F, $52, $54, $43, $4F, $4D, $50, $41
.db $53, $53, $65, $43, $41, $4B, $45, $65
.db $20, $20, $20, $4C, $45, $54, $54, $45
.db $52, $65, $20, $4C, $41, $43, $2E, $20
.db $50, $4F, $54, $4D, $41, $47, $2E, $4C
.db $41, $4D, $50, $41, $4D, $42, $52, $20
.db $45, $59, $45, $47, $41, $53, $2E, $20
.db $53, $4C, $44, $43, $52, $59, $53, $54
.db $41, $4C, $65, $4D, $20, $53, $59, $53
.db $54, $45, $4D, $4D, $52, $43, $4C, $20
.db $4B, $45, $59, $5A, $49, $4C, $4C, $49
.db $4F, $4E, $65, $53, $45, $43, $52, $45
.db $54

_LABEL_7FA9_15:
	ld   d, e
	ld   h, l
	nop
	ret  nc

	ret  nc

	ld   d, b
	ret  nc

.db	$20, $40
	ld   d, b
	ld   d, b
	ld   b, b
.db	$20, $40
	ld   d, b
	ld   b, b
	ld   d, b
	ld   b, b
	ld   d, c
	add  a, c
	ld   d, c
	ld   b, c
	ld   hl, $5151
	ld   b, c
	add  a, c
	ld   d, d
	ld   b, d
	ld   d, d
	ld   d, d
	ld   ($46D2), hl
	ld   d, d
	inc  b
	inc  b
	inc  b
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	inc  b
	nop
	inc  b
	nop
	inc  b
	inc  b
	inc  b
	inc  b
	inc  b
	nop
	inc  b
	nop
	inc  b
	inc  b
	nop
	inc  b
	nop
	nop
	nop
	inc  b
	nop
	rst  $38
	rst  $38
	rst  $38
	rst  $38
	rst  $38
	

RomHeader:
.db	"TMR SEGA"
.db	$FF, $FF	; Reserved
.dw	$EAD8		; Checksum
.dw	$9500		; Product Code
.db	$03			; Version
.db	$40			; Region Code (SMS Export)


.BANK 2 SLOT 2
.ORG $0000
Bank02:

_LABEL_8000_4:
	xor  d
	add  a, d
	ret  p

	add  a, d
	ld   h, $83
	add  hl, sp
	add  a, e
	ld   d, l
	add  a, e
	sub  l
	add  a, e
	xor  b
	add  a, e
	ret  nc

	add  a, e
	jp   m, _LABEL_1C83_5
	add  a, h
	ld   b, b
	add  a, h
	ld   l, h
	add  a, h
	adc  a, c
	add  a, h
	cp   c
	add  a, h
	pop  de
	add  a, h
	rst  $30
_LABEL_801F_14:
	add  a, h
	nop
	add  a, l
	djnz _LABEL_7FA9_15
	ld   e, $85
	dec  l
	add  a, l
	ld   b, (hl)
	add  a, l
	add  a, b
	add  a, l
	adc  a, l
	add  a, l
	xor  (hl)
	add  a, l
	ret


; Data from 8031 to 8047 (23 bytes)
.db $85, $FE, $85, $19, $86, $52, $86, $8B, $86, $BB, $86, $EF, $86, $22, $87, $56
.db $87, $92, $87, $C0, $87, $DF, $87, $0D

; Data from 8049 to 92F7 (4783 bytes)
.db $88, $43, $88, $73, $88, $93, $88, $A4
.db $88, $CF, $88, $D9, $88, $F0, $88, $0B
.db $89, $33, $89, $63, $89, $8D, $89, $9C
.db $89, $B5, $89, $CB, $89, $01, $8A, $1D
.db $8A, $47, $8A, $69, $8A, $8B, $8A, $92
.db $8A, $AF, $8A, $C6, $8A, $DF, $8A, $FF
.db $8A, $0F, $8B, $1E, $8B, $45, $8B, $59
.db $8B, $7A, $8B, $A4, $8B, $CF, $8B, $F1
.db $8B, $09, $8C, $37, $8C, $4E, $8C, $6F
.db $8C, $A3, $8C, $AD, $8C, $BA, $8C, $D9
.db $8C, $F4, $8C, $09, $8D, $24, $8D, $43
.db $8D, $5A, $8D, $88, $8D, $B9, $8D, $ED
.db $8D, $1A, $8E, $4A, $8E, $65, $8E, $86
.db $8E, $8D, $8E, $9A, $8E, $AA, $8E, $C4
.db $8E, $E2, $8E, $F8, $8E, $15, $8F, $40
.db $8F, $64, $8F, $7E, $8F, $A9, $8F, $DE
.db $8F, $FE, $8F, $2E, $90, $30, $90, $67
.db $90, $82, $90, $9C, $90, $AC, $90, $C3
.db $90, $E8, $90, $02, $91, $3A, $91, $82
.db $91, $CA, $91, $19, $92, $20, $92, $31
.db $92, $5D, $92, $6A, $92, $B8, $92, $DB
.db $92, $0B, $93, $3E, $93, $82, $93, $CD
.db $93, $26, $94, $3E, $94, $5B, $94, $79
.db $94, $A8, $94, $CB, $94, $E1, $94, $16
.db $95, $38, $95, $70, $95, $97, $95, $B2
.db $95, $E1, $95, $F2, $95, $1C, $96, $48
.db $96, $75, $96, $80, $96, $95, $96, $C9
.db $96, $F4, $96, $39, $97, $5B, $97, $A1
.db $97, $B9, $97, $E9, $97, $FB, $97, $43
.db $98, $66, $98, $AC, $98, $D7, $98, $FE
.db $98, $11, $99, $21, $99, $52, $99, $67
.db $99, $93, $99, $CB, $99, $12, $9A, $23

.db $9A, $3F, $9A, $97, $9A, $9D, $9A, $B6
.db $9A, $D2, $9A, $EF, $9A, $0C, $9B, $22
.db $9B, $3A, $9B, $66, $9B, $86, $9B, $AD
.db $9B, $D0, $9B, $EF, $9B, $03, $9C, $3F
.db $9C, $6F, $9C, $A1, $9C, $D3, $9C, $1D
.db $9D, $44, $9D, $82, $9D, $AB, $9D, $D4
.db $9D, $E3, $9D, $0E, $9E, $31, $9E, $51
.db $9E, $75, $9E, $9F, $9E, $CA, $9E, $FD
.db $9E, $0B, $9F, $43, $9F, $50, $9F, $73
.db $9F, $B0, $9F, $E7, $9F, $1A, $A0, $2A
.db $A0, $3F, $A0, $5A, $A0, $68, $A0, $7C
.db $A0, $AD, $A0, $C9, $A0, $E2, $A0, $22
.db $A1, $3C, $A1, $6D, $A1, $87, $A1, $9C
.db $A1, $C0, $A1, $FA, $A1, $12, $A2, $23
.db $A2, $6A, $A2, $94, $A2, $CD, $A2, $FF
.db $A2, $20, $A3, $49, $A3, $5A, $A3, $89
.db $A3, $C9, $A3, $F1, $A3, $20, $A4, $3B
.db $A4, $8B, $A4, $A2, $A4, $BA, $A4, $D2
.db $A4, $E8, $A4, $FC, $A4, $26, $A5, $51
.db $A5, $88, $A5, $D2, $A5, $F2, $A5, $21
.db $A6, $32, $A6, $7A, $A6, $8A, $A6, $A5
.db $A6, $BC, $A6, $D9, $A6, $0B, $A7, $2E
.db $A7, $4C, $A7, $66, $A7, $A9, $A7, $D7
.db $A7, $06, $A8, $33, $A8, $51, $A8, $84
.db $A8, $93, $A8, $9E, $A8, $A0, $A8, $AB
.db $A8, $EC, $A8, $01, $A9, $2A, $A9, $3D
.db $A9, $67, $A9, $6E, $A9, $7A, $A9, $A9
.db $A9, $C9, $A9, $E7, $A9, $05, $AA, $22
.db $AA, $4D, $AA, $5F, $AA, $89, $AA, $B5
.db $AA, $E8, $AA, $0D, $AB, $23, $AB, $53
.db $AB, $80, $AB, $B2, $AB, $F3, $AB, $26
.db $AC, $34, $AC, $4D, $AC, $6A, $AC, $91
.db $AC, $D5, $AC, $05, $AD, $28, $AD, $42
.db $AD, $53, $AD, $8D, $AD, $BC, $AD, $D3
.db $AD, $FA, $AD, $06, $AE, $29, $AE, $58
.db $AE, $71, $AE, $85, $AE, $9E, $AE, $CB
.db $AE, $DF, $AE, $3F, $AF, $79, $AF, $A7
.db $AF, $BC, $AF, $DC, $AF, $0F, $B0, $BF
.db $B0, $0A, $B1, $23, $B1, $50, $B1, $66
.db $B1, $80, $B1, $AB, $B1, $FA, $B1, $20
.db $B2, $42, $B2, $7B, $B2, $A0, $B2, $CA
.db $B2, $F7, $B2, $1B, $B3, $34, $B3, $4D
.db $B3, $67, $B3, $8F, $B3, $C5, $B3, $DE
.db $B3, $F0, $B3, $01, $B4, $21, $B4, $4E
.db $B4, $49, $40, $4D, $20, $53, $55, $45
.db $4C, $4F, $2E, $20, $49, $20, $BE, $60
.db $48, $4F, $57, $20, $CE, $20, $46, $45
.db $45, $4C, $2C, $61, $44, $45, $41, $52
.db $2C, $4E, $4F, $20, $FD, $20, $43, $41
.db $4E, $60, $53, $54, $4F, $50, $20, $E1
.db $FE, $61, $44, $4F, $49, $4E, $47, $20
.db $57, $48, $41, $54, $20, $E1, $60, $BE
.db $20, $CE, $20, $44, $4F, $2E, $61, $42
.db $55, $54, $20, $49, $46, $20, $E1, $53
.db $48, $4F, $55, $4C, $44, $60, $45, $56
.db $45, $52, $20, $42, $45, $20, $57, $4F
.db $55, $4E, $44, $45, $44, $61, $49, $4E
.db $20, $42, $41, $54, $54, $4C, $45, $2C
.db $43, $4F, $4D, $45, $60, $D2, $20, $54
.db $4F, $20, $BF, $2E, $65, $C9, $BF, $60
.db $A9, $2E, $61, $E1, $EC, $E0, $60, $D2
.db $20, $41, $54, $20, $F6, $9F, $2E, $65
.db $49, $40, $4D, $20, $4E, $45, $4B, $49
.db $53, $45, $2E, $20, $FD, $60, $48, $45
.db $41, $52, $53, $20, $4C, $4F, $54, $53
.db $20, $4F, $46, $61, $53, $54, $4F, $52
.db $49, $45, $53, $2C, $20, $E1, $BE, $2C
.db $42, $55, $54, $20, $D5, $20, $53, $41
.db $59, $20, $DC, $61, $41, $20, $46, $49
.db $47, $48, $54, $45, $52, $20, $E7, $60
.db $4F, $44, $49, $4E, $20, $4C, $49, $56
.db $45, $53, $20, $49, $4E, $20, $41, $61
.db $B9, $20, $43, $41, $4C, $4C, $45, $44
.db $20, $96, $2E, $60, $41, $4C, $53, $4F
.db $2C, $20, $49, $20, $E3, $41, $61, $A6
.db $20, $47, $49, $56, $45, $4E, $60, $42
.db $59, $20, $B2, $2E, $20, $DC, $61, $57
.db $4F, $55, $4C, $44, $20, $42, $45, $20
.db $48, $45, $4C, $50, $46, $55, $4C, $60
.db $54, $4F, $20, $E1, $49, $4E, $20, $E2
.db $61, $54, $41, $53, $4B, $2E, $65, $49
.db $20, $97, $20, $49, $20, $43, $4F, $55
.db $4C, $44, $60, $CA, $20, $E1, $4D, $4F
.db $52, $45, $2E, $61, $49, $20, $50, $52
.db $41, $59, $20, $46, $4F, $52, $20, $E2
.db $60, $53, $41, $46, $45, $54, $59, $2E
.db $65, $DE, $43, $41, $4D, $49, $4E, $45
.db $45, $54, $60, $D6, $61, $49, $53, $20
.db $55, $4E, $44, $45, $52, $60, $4D, $41
.db $52, $54, $49, $41, $4C, $20, $4C, $41
.db $57, $2E, $65, $E1, $4E, $45, $45, $44
.db $20, $41, $60, $D8, $20, $4B, $45, $59
.db $20, $54, $4F, $61, $4F, $50, $45, $4E
.db $20, $4C, $4F, $43, $4B, $45, $44, $20
.db $44, $4F, $4F, $52, $53, $2E, $65, $49
.db $4E, $20, $D5, $20, $D8, $53, $60, $CB
.db $20, $F8, $47, $45, $54, $61, $46, $41
.db $52, $20, $57, $49, $54, $48, $4F, $55
.db $54, $20, $D5, $60, $53, $4F, $52, $54
.db $20, $4F, $46, $20, $4C, $49, $47, $48
.db $54, $2E, $65, $DA, $20, $41, $60, $98
.db $20, $54, $4F, $20, $DE, $61, $57, $45
.db $53, $54, $20, $4F, $46, $20, $43, $41
.db $4D, $49, $4E, $45, $45, $54, $2E, $65
.db $49, $46, $20, $E1, $F9, $54, $4F, $60
.db $4D, $41, $4B, $45, $20, $41, $20, $44
.db $45, $41, $4C, $2C, $20, $E1, $61, $53
.db $48, $4F, $55, $4C, $44, $20, $48, $45
.db $41, $44, $20, $46, $4F, $52, $60, $DE
.db $50, $4F, $52, $54, $20, $B9, $2E, $65
.db $E1, $48, $41, $44, $20, $42, $45, $54
.db $54, $45, $52, $60, $F8, $4C, $45, $41
.db $56, $45, $20, $DE, $61, $D6, $2E, $65
.db $55, $4E, $4C, $45, $53, $53, $20, $E1
.db $48, $4F, $50, $45, $20, $54, $4F, $44
.db $49, $45, $2C, $20, $E1, $48, $41, $44
.db $20, $42, $45, $53, $54, $61, $53, $54
.db $41, $59, $20, $D2, $2E, $65, $E1, $4D
.db $41, $59, $20, $F8, $A2, $2E, $65, $E1
.db $88, $20, $A2, $60, $57, $49, $54, $48
.db $4F, $55, $54, $20, $A0, $2E, $65, $E1
.db $4D, $41, $59, $20, $50, $52, $4F, $43
.db $45, $45, $44, $2E, $65, $E4, $49, $53
.db $20, $50, $41, $52, $4F, $4C, $49, $54
.db $60, $D6, $2E, $65, $DE, $C4, $20, $49
.db $53, $20, $41, $60, $44, $41, $4E, $47
.db $45, $52, $4F, $55, $53, $20, $50, $4C
.db $41, $43, $45, $2E, $65, $EA, $20, $48
.db $41, $53, $20, $42, $45, $45, $4E, $60
.db $52, $45, $42, $4F, $52, $4E, $20, $41
.db $4E, $44, $20, $4C, $49, $56, $45, $53
.db $61, $49, $4E, $20, $41, $20, $43, $41
.db $56, $45, $20, $54, $4F, $20, $DE, $60
.db $53, $4F, $55, $54, $48, $2E, $20, $49
.db $46, $20, $E1, $53, $45, $45, $61, $48
.db $45, $52, $2C, $20, $CB, $20, $42, $45
.db $60, $91, $2E, $65, $54, $4F, $20, $DE
.db $45, $41, $53, $54, $20, $4C, $49, $45
.db $53, $60, $41, $20, $50, $4F, $52, $54
.db $20, $B9, $61, $43, $41, $4C, $4C, $45
.db $44, $20, $96, $2E, $65, $FE, $DE, $98
.db $60, $E1, $43, $41, $4E, $20, $47, $4F
.db $20, $54, $4F, $61, $50, $41, $53, $45
.db $4F, $20, $4F, $4E, $20, $94, $2E, $65
.db $DA, $20, $41, $4E, $60, $55, $4E, $44
.db $45, $52, $47, $52, $4F, $55, $4E, $44
.db $61, $BA, $20, $54, $4F, $20, $DE, $60
.db $95, $20, $C4, $61, $D5, $D0, $20, $54
.db $4F, $20, $DE, $60, $57, $45, $53, $54
.db $20, $4F, $46, $20, $50, $41, $52, $4F
.db $4C, $49, $54, $2E, $65, $4F, $44, $49
.db $4E, $20, $53, $45, $54, $20, $4F, $46
.db $46, $20, $54, $4F, $60, $4B, $49, $4C
.db $4C, $20, $EA, $2E, $20, $48, $45, $61
.db $57, $45, $4E, $54, $20, $57, $49, $54
.db $48, $20, $41, $4E, $60, $41, $4E, $49
.db $4D, $41, $4C, $20, $DC, $20, $43, $41
.db $4E, $61, $53, $50, $45, $41, $4B, $21
.db $20, $DE, $41, $4E, $49, $4D, $41, $4C
.db $60, $48, $41, $44, $20, $41, $20, $42
.db $4F, $54, $54, $4C, $45, $20, $4F, $46
.db $61, $4D, $45, $44, $49, $43, $49, $4E
.db $45, $20, $48, $41, $4E, $47, $49, $4E
.db $47, $60, $FE, $49, $54, $53, $20, $4E
.db $45, $43, $4B, $2C, $20, $42, $55, $54
.db $61, $49, $20, $44, $4F, $4E, $40, $54
.db $20, $BE, $20, $57, $48, $41, $54, $60
.db $DC, $20, $49, $53, $20, $46, $4F, $52
.db $2E, $65, $49, $20, $48, $45, $41, $52
.db $20, $E1, $EC, $60, $47, $4F, $49, $4E
.db $47, $20, $54, $4F, $20, $54, $52, $59
.db $61, $54, $4F, $20, $4B, $49, $4C, $4C
.db $20, $D4, $2E, $60, $42, $45, $53, $54
.db $20, $4F, $46, $20, $4C, $55, $43, $4B
.db $21, $65, $49, $20, $52, $45, $43, $45
.db $4E, $54, $4C, $59, $20, $46, $4F, $55
.db $4E, $44, $20, $41, $54, $41, $4C, $4B
.db $49, $4E, $47, $20, $42, $45, $41, $53
.db $54, $20, $49, $4E, $61, $DE, $43, $41
.db $56, $45, $20, $D0, $60, $EA, $20, $4C
.db $49, $56, $45, $53, $2E, $61, $49, $20
.db $53, $4F, $4C, $44, $20, $48, $49, $4D
.db $20, $46, $4F, $52, $20, $41, $60, $47
.db $4F, $4F, $44, $20, $50, $52, $49, $43
.db $45, $20, $54, $4F, $20, $41, $61, $4D
.db $45, $52, $43, $48, $41, $4E, $54, $20
.db $FE, $60, $50, $41, $53, $45, $4F, $21
.db $65, $54, $49, $4D, $45, $53, $20, $EC
.db $48, $41, $52, $44, $2E, $60, $D1, $20
.db $44, $4F, $45, $53, $4E, $40, $54, $20
.db $53, $45, $45, $4D, $61, $54, $4F, $20
.db $42, $45, $20, $F6, $57, $41, $59, $20
.db $54, $4F, $60, $4D, $41, $4B, $45, $20
.db $4D, $FD, $59, $2E, $65, $41, $20, $43
.db $41, $56, $45, $20, $43, $41, $4C, $4C
.db $45, $44, $20, $49, $41, $4C, $41, $43
.db $41, $4E, $20, $42, $45, $20, $46, $4F
.db $55, $4E, $44, $20, $4F, $4E, $61, $DE
.db $50, $45, $4E, $49, $4E, $53, $55, $4C
.db $41, $20, $54, $4F, $60, $DE, $53, $4F
.db $55, $54, $48, $20, $4F, $46, $20, $96
.db $65, $E4, $49, $53, $20, $DE, $50, $4F
.db $52, $54, $60, $B9, $20, $96, $2E, $61
.db $4C, $4F, $4E, $47, $20, $41, $47, $4F
.db $2C, $20, $57, $45, $60, $54, $48, $52
.db $49, $56, $45, $44, $20, $4F, $4E, $20
.db $54, $52, $41, $44, $45, $2E, $65, $E1
.db $4E, $45, $45, $44, $20, $41, $20, $43
.db $4F, $4D, $50, $41, $53, $53, $54, $4F
.db $20, $A2, $20, $DD, $61, $DE, $45, $50
.db $50, $49, $20, $C4, $2E, $65, $41, $20
.db $44, $4F, $4F, $52, $20, $4C, $4F, $43
.db $4B, $45, $44, $20, $57, $49, $54, $48
.db $84, $43, $41, $4E, $20, $4F, $4E, $4C
.db $59, $20, $42, $45, $61, $4F, $50, $45
.db $4E, $45, $44, $20, $57, $49, $54, $48
.db $20, $EF, $2E, $65, $DA, $20, $41, $20
.db $AB, $60, $E7, $C2, $61, $54, $4F, $20
.db $DE, $4E, $4F, $52, $54, $48, $20, $4F
.db $46, $60, $E4, $B9, $2E, $61, $42, $55
.db $54, $20, $4E, $FD, $20, $4F, $46, $20
.db $55, $53, $60, $44, $EC, $41, $50, $50
.db $52, $4F, $41, $43, $48, $20, $49, $54
.db $2E, $65, $41, $20, $43, $41, $56, $45
.db $20, $43, $41, $4C, $4C, $45, $44, $60
.db $4E, $41, $55, $4C, $41, $20, $4C, $49
.db $45, $53, $20, $4F, $4E, $20, $DE, $61
.db $4E, $4F, $52, $54, $48, $20, $43, $4F
.db $41, $53, $54, $20, $4F, $46, $60, $C2
.db $2E, $65, $DE, $AA, $20, $4F, $46, $60
.db $94, $20, $4D, $49, $47, $48, $54, $61
.db $50, $4F, $53, $53, $49, $42, $4C, $59
.db $20, $CA, $20, $E1, $57, $45, $4C, $4C
.db $2E, $65, $4E, $4F, $41, $48, $20, $4C
.db $49, $56, $45, $53, $20, $4F, $4E, $60
.db $94, $2E, $65, $44, $52, $2E, $AD, $20
.db $48, $41, $44, $20, $41, $60, $BD, $20
.db $49, $4E, $20, $DE, $61, $95, $20, $C4
.db $20, $4C, $4F, $4E, $47, $41, $47, $4F
.db $2C, $20, $49, $54, $20, $49, $53, $20
.db $53, $41, $49, $44, $2E, $65, $E0, $54
.db $4F, $20, $45, $50, $50, $49, $2E, $65
.db $EC, $E1, $4C, $4F, $4F, $4B, $49, $4E
.db $47, $60, $46, $4F, $52, $20, $41, $20
.db $D8, $20, $4B, $45, $59, $3F, $62, $49
.db $40, $56, $45, $20, $48, $49, $44, $44
.db $45, $4E, $20, $41, $60, $D8, $20, $4B
.db $45, $59, $20, $49, $4E, $20, $54, $48
.db $45, $61, $57, $41, $52, $45, $48, $4F
.db $55, $53, $45, $20, $49, $4E, $20, $DE
.db $60, $4F, $55, $54, $53, $4B, $49, $52
.db $54, $53, $20, $4F, $46, $20, $DE, $61
.db $43, $41, $4D, $49, $4E, $45, $45, $54
.db $2E, $65, $C3, $20, $57, $48, $41, $54
.db $60, $DE, $48, $41, $52, $44, $45, $53
.db $54, $2C, $61, $53, $54, $52, $4F, $4E
.db $47, $45, $53, $54, $20, $4D, $41, $54
.db $45, $52, $49, $41, $4C, $49, $4E, $20
.db $4F, $55, $52, $20, $B5, $20, $49, $53
.db $3F, $62, $49, $54, $40, $53, $20, $BC
.db $21, $60, $41, $52, $4D, $53, $20, $4D
.db $41, $44, $45, $20, $57, $49, $54, $48
.db $61, $BC, $20, $EC, $DE, $60, $42, $45
.db $53, $54, $20, $54, $4F, $20, $48, $41
.db $56, $45, $2E, $65, $4F, $2E, $4B, $2E
.db $20, $47, $4F, $4F, $44, $20, $44, $41
.db $59, $2E, $65, $C3, $20, $41, $42, $4F
.db $55, $54, $60, $DE, $B8, $20, $4F, $46
.db $61, $DE, $9B, $20, $53, $54, $41, $52
.db $60, $9C, $3F, $62, $DB, $20, $54, $48
.db $52, $45, $45, $60, $B8, $3B, $20, $CF
.db $61, $94, $20, $41, $4E, $44, $60, $93
.db $2E, $61, $CF, $20, $49, $53, $20, $41
.db $20, $B5, $60, $4F, $46, $20, $47, $52
.db $45, $45, $4E, $2E, $61, $94, $20, $49
.db $53, $20, $41, $20, $B5, $60, $4F, $46
.db $20, $53, $41, $4E, $44, $2E, $61, $93
.db $20, $49, $53, $20, $41, $20, $B5, $60
.db $4F, $46, $20, $49, $43, $45, $2E, $61
.db $DE, $9B, $20, $53, $54, $41, $52, $60
.db $9C, $20, $49, $53, $61, $90, $20, $FB
.db $60, $41, $20, $E6, $43, $52, $49, $53
.db $49, $53, $2E, $65, $E4, $49, $53, $20
.db $50, $41, $4C, $4D, $41, $40, $53, $60
.db $98, $2E, $61, $FE, $DE, $98, $60, $E1
.db $43, $41, $4E, $20, $47, $4F, $20, $54
.db $4F, $61, $50, $41, $53, $45, $4F, $20
.db $4F, $4E, $20, $94, $2E, $65, $DE, $AA
.db $20, $49, $53, $20, $49, $4E, $50, $41
.db $53, $45, $4F, $2E, $20, $48, $45, $20
.db $52, $55, $4C, $45, $53, $61, $41, $4C
.db $4C, $20, $4F, $46, $20, $94, $2E, $65
.db $4C, $4F, $4E, $47, $20, $41, $47, $4F
.db $2C, $20, $41, $60, $E8, $20, $57, $41
.db $53, $61, $42, $55, $49, $4C, $54, $20
.db $49, $4E, $20, $DE, $60, $95, $20, $BD
.db $2E, $65, $C5, $20, $E2, $60, $99, $3F
.db $62, $E1, $43, $41, $4E, $20, $46, $49
.db $4C, $45, $20, $46, $4F, $52, $20, $41
.db $60, $99, $20, $D2, $2E, $61, $C6, $20
.db $F9, $41, $60, $99, $3F, $62, $E3, $E1
.db $45, $56, $45, $52, $20, $44, $FD, $60
.db $F6, $F7, $20, $49, $4C, $4C, $45, $47
.db $41, $4C, $3F, $20, $62, $C6, $20, $43
.db $55, $52, $52, $45, $4E, $54, $4C, $59
.db $60, $E3, $41, $4E, $20, $49, $4C, $4C
.db $4E, $45, $53, $53, $3F, $62, $DE, $99
.db $20, $46, $45, $45, $60, $49, $53, $20
.db $31, $30, $30, $20, $A1, $2E, $61, $57
.db $4F, $55, $4C, $44, $20, $E1, $50, $41
.db $59, $20, $49, $54, $3F, $62, $E2, $99
.db $20, $49, $53, $60, $52, $45, $41, $44
.db $59, $2C, $20, $D2, $2E, $65, $B7, $2E
.db $20, $E3, $41, $20, $47, $4F, $4F, $44
.db $44, $41, $59, $2E, $65, $DC, $40, $53
.db $20, $F8, $47, $4F, $4F, $44, $2E, $60
.db $59, $4F, $55, $40, $4C, $4C, $20, $E3
.db $54, $4F, $61, $43, $4F, $4D, $45, $20
.db $42, $41, $43, $4B, $20, $4C, $41, $54
.db $45, $52, $2E, $65, $E0, $54, $4F, $20
.db $DE, $60, $50, $41, $53, $45, $4F, $20
.db $98, $61, $4F, $4E, $20, $94, $2E, $65
.db $49, $54, $20, $49, $53, $20, $53, $41
.db $49, $44, $20, $DC, $60, $A3, $53, $20
.db $52, $4F, $41, $4D, $61, $49, $4E, $20
.db $DE, $44, $45, $53, $45, $52, $54, $2E
.db $65, $DA, $20, $41, $20, $43, $41, $4B
.db $45, $60, $53, $48, $4F, $50, $20, $49
.db $4E, $20, $DE, $43, $41, $56, $45, $61
.db $43, $41, $4C, $4C, $45, $44, $20, $4E
.db $41, $55, $4C, $41, $20, $4F, $4E, $60
.db $CF, $21, $65, $94, $40, $53, $20, $AA
.db $41, $4E, $44, $20, $D4, $20, $EC, $4E
.db $4F, $54, $61, $4F, $4E, $20, $47, $4F
.db $4F, $44, $20, $54, $45, $52, $4D, $53
.db $2C, $20, $49, $54, $60, $49, $53, $20
.db $53, $41, $49, $44, $2E, $65, $41, $20
.db $47, $49, $46, $54, $20, $49, $53, $20
.db $4E, $45, $45, $44, $45, $44, $60, $49
.db $46, $20, $E1, $97, $20, $54, $4F, $20
.db $53, $45, $45, $61, $DE, $AA, $2E, $65
.db $DE, $AA, $20, $4C, $4F, $56, $45, $53
.db $53, $57, $45, $45, $54, $53, $2C, $20
.db $49, $20, $48, $45, $41, $52, $2E, $65
.db $DA, $20, $41, $20, $43, $41, $56, $45
.db $60, $43, $41, $4C, $4C, $45, $44, $20
.db $A7, $20, $49, $4E, $61, $41, $20, $E5
.db $20, $54, $4F, $20, $DE, $60, $4E, $4F
.db $52, $54, $48, $20, $4F, $46, $20, $50
.db $41, $53, $45, $4F, $2E, $65, $E4, $49
.db $53, $20, $50, $41, $53, $45, $4F, $60
.db $94, $40, $53, $20, $43, $41, $50, $49
.db $54, $41, $4C, $2E, $65, $49, $54, $40
.db $53, $20, $F8, $50, $4F, $53, $53, $49
.db $42, $4C, $45, $60, $54, $4F, $20, $A2
.db $20, $DD, $61, $A3, $20, $4F, $4E, $20
.db $46, $4F, $4F, $54, $2E, $65, $49, $20
.db $E3, $41, $4E, $20, $52, $41, $52, $45
.db $60, $41, $4E, $49, $4D, $41, $4C, $20
.db $D2, $2E, $20, $57, $4F, $55, $4C, $44
.db $61, $E1, $50, $41, $59, $20, $31, $20
.db $42, $49, $4C, $4C, $49, $4F, $4E, $60
.db $A1, $20, $46, $4F, $52, $20, $49, $54
.db $3F, $62, $E1, $EC, $41, $20, $4C, $49
.db $41, $52, $21, $65, $B7, $20, $E1, $E3
.db $41, $60, $AC, $20, $50, $4F, $54, $2E
.db $61, $53, $48, $41, $4C, $4C, $20, $49
.db $20, $54, $52, $41, $44, $45, $20, $DE
.db $60, $41, $4E, $49, $4D, $41, $4C, $20
.db $46, $4F, $52, $20, $49, $54, $3F, $62
.db $41, $4C, $4C, $20, $52, $49, $47, $48
.db $54, $2C, $20, $D1, $60, $E1, $47, $4F
.db $20, $57, $49, $54, $48, $20, $48, $49
.db $4D, $2E, $65, $C5, $20, $41, $60, $DF
.db $20, $54, $4F, $20, $47, $49, $56, $45
.db $20, $54, $4F, $61, $DE, $AA, $3F, $62
.db $49, $40, $4C, $4C, $20, $54, $41, $4B
.db $45, $20, $DE, $60, $53, $48, $4F, $52
.db $54, $43, $41, $4B, $45, $20, $4E, $4F
.db $57, $2E, $65, $49, $20, $44, $4F, $4E
.db $40, $54, $20, $54, $48, $49, $4E, $4B
.db $20, $E1, $60, $E3, $41, $20, $53, $55
.db $49, $54, $41, $42, $4C, $45, $61, $DF
.db $2E, $65, $47, $4F, $20, $42, $41, $43
.db $4B, $20, $54, $4F, $20, $E2, $60, $48
.db $4F, $4D, $45, $20, $4E, $4F, $57, $2E
.db $65, $49, $40, $4D, $20, $DE, $AA, $2E
.db $60, $49, $40, $4D, $20, $54, $4F, $4C
.db $44, $20, $DC, $20, $E1, $61, $49, $4E
.db $54, $45, $4E, $44, $20, $54, $4F, $20
.db $54, $52, $59, $20, $54, $4F, $60, $4B
.db $49, $4C, $4C, $20, $D4, $2E, $61, $49
.db $20, $41, $44, $4D, $49, $52, $45, $20
.db $E2, $60, $43, $4F, $55, $52, $41, $47
.db $45, $2E, $20, $49, $4E, $20, $DE, $61
.db $A7, $20, $43, $41, $56, $45, $20, $4C
.db $49, $56, $45, $53, $60, $41, $4E, $20
.db $45, $53, $50, $41, $52, $20, $E7, $61
.db $4E, $4F, $41, $48, $2E, $20, $CC, $20
.db $47, $49, $56, $45, $60, $E1, $41, $20
.db $4C, $45, $54, $54, $45, $52, $20, $4F
.db $46, $61, $49, $4E, $54, $52, $4F, $44
.db $55, $43, $54, $49, $4F, $4E, $20, $54
.db $4F, $60, $DF, $20, $54, $4F, $20, $48
.db $45, $52, $2E, $61, $49, $20, $E3, $46
.db $41, $49, $54, $48, $20, $DC, $60, $CB
.db $20, $4B, $49, $4C, $4C, $61, $D4, $20
.db $41, $4E, $44, $20, $52, $45, $54, $55
.db $52, $4E, $60, $D2, $20, $45, $56, $45
.db $4E, $54, $55, $41, $4C, $4C, $59, $2E
.db $65, $49, $46, $20, $DE, $AA, $60, $4F
.db $52, $44, $45, $52, $53, $20, $4E, $4F
.db $41, $48, $20, $54, $4F, $20, $44, $4F
.db $61, $D5, $F7, $2C, $48, $45, $20, $57
.db $49, $4C, $4C, $60, $4C, $49, $4B, $45
.db $4C, $59, $20, $4F, $42, $45, $59, $2E
.db $65, $57, $48, $4F, $20, $EC, $59, $4F
.db $55, $3F, $20, $49, $40, $4D, $60, $42
.db $55, $53, $59, $20, $57, $49, $54, $48
.db $20, $4D, $59, $61, $54, $52, $41, $49
.db $4E, $49, $4E, $47, $20, $4E, $4F, $57
.db $21, $20, $44, $4F, $60, $F8, $42, $45
.db $20, $41, $20, $4E, $55, $49, $53, $41
.db $4E, $43, $45, $21, $65, $48, $45, $4C
.db $4C, $4F, $21, $65, $5A, $5A, $5A, $2E
.db $2E, $2E, $5A, $5A, $5A, $2E, $2E, $2E
.db $65, $C9, $BF, $20, $E2, $60, $57, $45
.db $41, $52, $59, $20, $42, $FD, $53, $2E
.db $65, $49, $20, $41, $4D, $20, $50, $52
.db $41, $59, $49, $4E, $47, $20, $46, $4F
.db $52, $60, $E2, $53, $41, $46, $45, $54
.db $59, $2E, $65, $43, $4F, $55, $4C, $44
.db $20, $59, $41, $20, $53, $50, $EC, $4D
.db $45, $60, $41, $20, $43, $55, $50, $20
.db $4F, $46, $20, $43, $4F, $4C, $41, $3F
.db $62, $B3, $21, $20, $E4, $57, $41, $53
.db $60, $4F, $4E, $43, $45, $20, $DE, $4C
.db $41, $42, $2E, $20, $4F, $46, $61, $44
.db $52, $2E, $AD, $2E, $20, $48, $45, $20
.db $57, $45, $4E, $54, $42, $4F, $4E, $4B
.db $45, $52, $53, $2C, $20, $54, $48, $4F
.db $55, $47, $48, $61, $41, $4E, $44, $20
.db $42, $45, $20, $49, $4E, $50, $52, $49
.db $53, $FD, $44, $60, $49, $4E, $20, $54
.db $52, $49, $41, $44, $41, $20, $54, $4F
.db $20, $DE, $61, $53, $4F, $55, $54, $48
.db $20, $4F, $46, $20, $D2, $2E, $65, $49
.db $20, $47, $4F, $54, $20, $4E, $4F, $54
.db $48, $49, $4E, $40, $20, $54, $4F, $60
.db $53, $41, $59, $20, $54, $40, $59, $41
.db $21, $47, $45, $54, $20, $4C, $4F, $53
.db $54, $21, $65, $44, $4F, $4E, $40, $54
.db $20, $47, $4F, $20, $4E, $45, $41, $52
.db $20, $DE, $60, $9D, $20, $41, $54, $20
.db $DE, $46, $41, $52, $61, $45, $4E, $44
.db $20, $4F, $46, $20, $DE, $4E, $41, $52
.db $52, $4F, $57, $60, $52, $4F, $41, $44
.db $20, $57, $48, $49, $43, $48, $20, $47
.db $4F, $45, $53, $61, $FE, $DE, $95, $60
.db $C4, $20, $DD, $20, $54, $48, $45, $61
.db $E5, $53, $2E, $20, $41, $20, $EF, $42
.db $45, $41, $53, $54, $20, $4C, $49, $56
.db $45, $53, $20, $D1, $2E, $61, $4C, $4F
.db $4F, $4B, $20, $41, $54, $20, $49, $54
.db $20, $41, $4E, $44, $20, $59, $41, $60
.db $54, $55, $52, $4E, $20, $54, $4F, $20
.db $53, $54, $FD, $2E, $65, $41, $48, $2C
.db $20, $49, $54, $40, $53, $20, $47, $45
.db $54, $54, $49, $4E, $47, $60, $4C, $41
.db $54, $45, $21, $20, $46, $45, $54, $43
.db $48, $20, $4D, $59, $61, $41, $53, $53
.db $49, $53, $54, $41, $4E, $54, $2E, $20
.db $48, $45, $40, $53, $60, $4C, $49, $4B
.db $45, $4C, $59, $20, $48, $49, $44, $49
.db $4E, $47, $61, $49, $4E, $20, $DE, $55
.db $4E, $44, $45, $52, $47, $52, $4F, $55
.db $4E, $44, $BA, $2E, $65, $EB, $65, $E1
.db $44, $4F, $4E, $40, $54, $20, $E3, $60
.db $45, $4E, $4F, $55, $47, $48, $2E, $20
.db $43, $4F, $4D, $45, $20, $42, $41, $43
.db $4B, $61, $41, $47, $41, $49, $4E, $20
.db $57, $48, $45, $4E, $20, $E1, $60, $E3
.db $45, $4E, $4F, $55, $47, $48, $20, $46
.db $55, $4E, $44, $53, $2E, $65, $53, $55
.db $43, $43, $45, $53, $53, $21, $20, $49
.db $20, $DF, $41, $20, $53, $55, $50, $45
.db $52, $42, $20, $E8, $61, $DE, $AD, $2E
.db $65, $49, $46, $20, $E1, $44, $4F, $4E
.db $40, $54, $20, $4F, $42, $45, $59, $60
.db $4D, $45, $2C, $20, $49, $20, $88, $20
.db $CA, $2E, $65, $42, $55, $54, $20, $E1
.db $88, $20, $46, $4C, $59, $60, $41, $20
.db $E8, $2E, $65, $48, $4F, $57, $20, $49
.db $53, $20, $DE, $AD, $3F, $55, $53, $45
.db $20, $49, $54, $20, $57, $45, $4C, $4C
.db $2E, $65, $DC, $40, $53, $20, $54, $4F
.db $4F, $20, $42, $41, $44, $2E, $60, $41
.db $4E, $44, $20, $E1, $E3, $43, $4F, $4D
.db $45, $61, $53, $4F, $20, $46, $41, $52
.db $2C, $20, $54, $4F, $4F, $2E, $65, $49
.db $40, $4D, $20, $42, $55, $53, $59, $2E
.db $44, $4F, $4E, $40, $54, $60, $42, $4F
.db $54, $48, $45, $52, $20, $4D, $45, $2E
.db $65, $49, $40, $4D, $20, $AD, $2E, $20
.db $49, $46, $60, $59, $4F, $55, $40, $56
.db $45, $20, $43, $4F, $4D, $45, $20, $46
.db $4F, $52, $61, $CA, $2C, $20, $E1, $48
.db $41, $44, $20, $42, $45, $53, $54, $46
.db $4F, $52, $47, $45, $54, $20, $49, $54
.db $2E, $20, $4C, $45, $41, $56, $45, $21
.db $65, $E1, $F9, $4D, $45, $20, $54, $4F
.db $60, $42, $55, $49, $4C, $44, $20, $41
.db $20, $E8, $61, $46, $4F, $52, $20, $E1
.db $3F, $20, $F8, $41, $60, $43, $48, $41
.db $4E, $43, $45, $21, $20, $49, $20, $43
.db $41, $4E, $40, $54, $61, $41, $43, $43
.db $45, $50, $54, $20, $53, $55, $43, $48
.db $60, $52, $45, $53, $50, $4F, $4E, $53
.db $49, $42, $49, $4C, $49, $54, $59, $2E
.db $65, $E1, $EC, $43, $45, $52, $54, $41
.db $49, $4E, $4C, $59, $60, $50, $45, $52
.db $53, $49, $53, $49, $54, $45, $4E, $54
.db $2E, $20, $57, $45, $4C, $4C, $2C, $61
.db $49, $46, $20, $CB, $20, $44, $4F, $20
.db $41, $53, $60, $49, $20, $53, $41, $59
.db $2C, $20, $CC, $20, $CA, $61, $59, $4F
.db $55, $2E, $20, $49, $53, $20, $49, $54
.db $20, $41, $20, $44, $45, $41, $4C, $3F
.db $62, $4F, $2E, $4B, $2E, $20, $CC, $20
.db $47, $4F, $20, $54, $4F, $60, $95, $20
.db $9E, $61, $4E, $45, $41, $52, $42, $59
.db $20, $54, $4F, $20, $4D, $41, $4B, $45
.db $60, $50, $52, $45, $50, $41, $52, $41
.db $54, $49, $4F, $4E, $53, $2E, $20, $43
.db $4F, $4D, $45, $61, $54, $48, $45, $4E
.db $2E, $20, $44, $4F, $20, $F8, $57, $41
.db $53, $54, $45, $57, $4F, $52, $52, $59
.db $20, $4F, $4E, $20, $4D, $45, $2E, $65
.db $C5, $20, $E2, $60, $A0, $3F, $62, $E1
.db $EC, $41, $20, $46, $4F, $4F, $4C, $21
.db $60, $CB, $20, $44, $49, $45, $21, $65
.db $53, $50, $49, $44, $45, $52, $20, $4D
.db $4F, $4E, $53, $54, $45, $52, $53, $60
.db $EC, $41, $43, $54, $55, $41, $4C, $4C
.db $59, $61, $56, $45, $52, $59, $20, $49
.db $4E, $54, $45, $4C, $4C, $49, $47, $45
.db $4E, $54, $2E, $65, $C3, $20, $DE, $60
.db $52, $4F, $42, $4F, $54, $20, $8A, $3F
.db $62, $4F, $4E, $20, $DE, $46, $41, $52
.db $20, $53, $49, $44, $45, $20, $4F, $46
.db $DE, $E5, $53, $20, $4C, $49, $45, $53
.db $61, $41, $20, $50, $4F, $4F, $4C, $20
.db $4F, $46, $20, $4D, $4F, $4C, $54, $45
.db $4E, $60, $4C, $41, $56, $41, $20, $43
.db $52, $45, $41, $54, $45, $44, $20, $42
.db $59, $20, $41, $61, $56, $4F, $4C, $43
.db $41, $4E, $49, $43, $20, $45, $52, $55
.db $50, $54, $49, $4F, $4E, $2E, $65, $DE
.db $9D, $20, $44, $45, $45, $50, $20, $49
.db $4E, $60, $DE, $95, $61, $E5, $53, $20
.db $49, $53, $20, $4B, $4E, $4F, $57, $4E
.db $41, $53, $20, $EA, $40, $53, $20, $9D
.db $2E, $65, $49, $20, $48, $41, $56, $45
.db $4E, $40, $54, $20, $53, $45, $45, $4E
.db $60, $F6, $FD, $20, $46, $4F, $52, $20
.db $41, $20, $4C, $4F, $4E, $47, $61

_LABEL_92F8_111:
	sbc  a, a

; Data from 92F9 to 9320 (40 bytes)
.db ". ", $CD, "`TALK WITH ME?bPOLYMETERAL ", $C7, "`DISSOLVE"

_LABEL_9321_108:
	jr   nz, _LABEL_9364_109
	ld   c, h
	ld   c, h
	ld   h, c
	ld   c, l
	ld   b, c
	ld   d, h
	ld   b, l
	ld   d, d
	ld   c, c
	ld   b, c
	ld   c, h
	ld   d, e
	jr   nz, _LABEL_9376_110
	ld   e, b
	ld   b, e
	ld   b, l
	ld   d, b
	ld   d, h
	ld   h, b
	ld   b, (hl)
	ld   c, a
	ld   d, d
	jr   nz, _LABEL_92F8_111
	ld   l, $65
	ld   d, a
	ld   c, b
	ld   b, c
	ld   d, h
	ccf
	jr   nz, _LABEL_9389_112
	ld   d, d
	ld   l, $AD
	ld   h, b
	ld   c, b
	ld   b, c
	ld   d, e
	jr   nz, _LABEL_93A0_113
	ld   b, l
	ld   d, h
	ld   d, l
	ld   d, d
	ld   c, (hl)
	ld   b, l
	ld   b, h
	ccf
	ld   h, c
	ld   c, b
	ld   b, l
	jr   nz, -57

; Data from 935B to 9363 (9 bytes)
.db " BUILD`AN"

_LABEL_9364_109:
	ld   c, a

; Data from 9365 to 9375 (17 bytes)
.db "THER ", $E8, "?aI ", $C7, " BE ", $D1, "`"

_LABEL_9376_110:
	ld   d, d

; Data from 9377 to 9388 (18 bytes)
.db "IGHT AWAY.eNO MAN "

_LABEL_9389_112:
	call c, _LABEL_4720_114
	ld   c, a

; Data from 938D to 939F (19 bytes)
.db "ES`INTO ", $DE, "ROOM INa", $DE, "F"

_LABEL_93A0_113:
	ld   b, c

; Data from 93A1 to 94E5 (325 bytes)
.db "R CORNER HASEVER COME OUTaALIVE! AHA-HA-HA!eIT SEEMS TO BE "
.db	"A`MAN WHO HAS BEENa"
.db $91, "!`I WONDER IF HE CANaBE RETURNED TO HISORIGINAL FORM?e"
.db	$CB, " SOON FIND`"
.db "OUT ", $DE, "TRUTH!eHALT! GO BACK!`", $E2, "LAST CHANCE!e"
.db	"HOW BRAVE! BUT BE`", $ED, ""
.db " OF TRAPS!e", $A8, " IS MY`TURF. DON@T YAaMESS @ROUND "
.db	$D2, ",`NOW GIT!e", $CE, ""
.db " FIND A`ROBOT ", $E7, "a", $8A, ". HE CAN FLYA ", $E8
.db	".eIN ", $E4, "PILE OF`J"
.db "UNK, ", $D5, $D0, ",a", $DA, " S@P"

_LABEL_94E6_175:
	ld   d, b

; Data from 94E7 to 94FF (25 bytes)
.db "OSED`T@BE A USABLEaROBOT,"


	ld   b, d
	ld   d, l
	ld   d, h
	jr   nz, _LABEL_94E6_175
	cp   (hl)
	ld   h, b
	ld   c, b
	ld   c, a
	ld   d, a
	jr   nz, _LABEL_955E_176
	ld   d, l
	ld   c, l
	ld   c, a
	ld   d, d
	ld   d, e
	jr   nz, _LABEL_9555_177
_LABEL_9513_185:
	ld   b, l
	ld   l, $65
	ld   d, b
	ld   c, a
	ld   c, h
	ld   e, c
	ld   c, l
	ld   b, l
	ld   d, h
	ld   b, l
	ld   d, d
	ld   b, c
	ld   c, h
	jr   nz, _LABEL_956C_178
	ld   d, e
	jr   nz, _LABEL_956C_178
	ld   c, a
	ld   d, d
	ld   h, b
	ld   d, e
	ld   b, c
	ld   c, h
	ld   b, l
.db	$20, $49
	ld   c, (hl)
	jr   nz, _LABEL_9573_180
_LABEL_9532_183:
	ld   b, d
	ld   c, c
	ld   c, a
	ld   c, (hl)
	ld   l, $65
	call po, _LABEL_20B9_181
	ld   c, c
	ld   d, e
	ld   h, b
	ld   b, e
	ld   b, c
	ld   c, h
	ld   c, h
	ld   b, l
	ld   b, h
	jr   nz, _LABEL_9592_182
	ld   c, a
	ld   b, c
	ld   d, d
	ld   l, $61
	ld   d, a
	ld   b, l
	jr   nz, _LABEL_9532_183
	ld   b, d
	ld   b, l
	ld   b, l
	ld   c, (hl)
	jr   nz, _LABEL_959E_184
_LABEL_9555_177:
	ld   c, (hl)
	ld   h, b
	ld   b, h
	ld   b, l
	ld   b, e
	ld   c, h
	ld   c, c
	ld   c, (hl)
	ld   b, l
_LABEL_955E_176:
	jr   nz, _LABEL_9513_185
	jr   nz, _LABEL_95B6_186
	ld   c, a
	ld   h, c
	sbc  a, $57
	ld   c, a
	ld   d, d
	ld   c, e
	jr   nz, _LABEL_95BA_187
	ld   b, (hl)
_LABEL_956C_178:
	ld   h, b
	call nc, _LABEL_652E_188
	ex   (sp), hl
	pop  hl
	ld   c, b
_LABEL_9573_180:
	ld   b, l
	ld   b, c
	ld   d, d
	ld   b, h
	jr   nz, _LABEL_95C8_319

; Data from 9579 to 9591 (25 bytes)
.db "F`A GEM CALLED ", $22, $DE, "aAMBER E"

_LABEL_9592_182:
	ld   e, c

; Data from 9593 to 959D (11 bytes)
.db "E", $22, "?`", $D5, " SAY ", $DE

_LABEL_959E_184:
	ld   b, e

; Data from 959F to 95B5 (23 bytes)
.db "ASBAaDRAGON HAS ", $FD, ".e", $DA, " A "

_LABEL_95B6_186:
	sbc  a, (hl)

; Data from 95B7 to 95B9 (3 bytes)
.db "CAL"

_LABEL_95BA_187:
	ld   c, h

; Data from 95BB to 95C7 (13 bytes)
.db "ED ABION ONa", $DE

_LABEL_95C8_319:
	ld   d, a

; Data from 95C9 to BFFF (10807 bytes)
.db $45, $53, $54, $45, $52, $4E, $20, $45
.db $44, $47, $45, $60, $4F, $4E, $20, $E4
.db $49, $53, $4C, $41, $4E, $44, $2E, $65
.db $C3, $20, $41, $42, $4F, $55, $54, $60
.db $D7, $20, $54, $52, $45, $45, $53, $3F
.db $62, $54, $48, $45, $59, $20, $47, $52
.db $4F, $57, $20, $4F, $4E, $20, $DE, $60
.db $41, $4C, $54, $49, $50, $4C, $41, $4E
.db $4F, $20, $50, $4C, $41, $54, $45, $41
.db $55, $61, $4F, $4E, $20, $DE, $9A, $60
.db $93, $2E, $65, $E1, $EC, $47, $4F, $49
.db $4E, $47, $20, $54, $4F, $60, $54, $52
.db $59, $20, $54, $4F, $20, $4B, $49, $4C
.db $4C, $20, $D4, $61, $49, $20, $48, $45
.db $41, $52, $2E, $20, $DC, $40, $53, $60
.db $47, $52, $45, $41, $54, $21, $61, $49
.db $20, $E3, $48, $45, $41, $52, $44, $20
.db $DC, $60, $41, $20, $43, $45, $52, $54
.db $41, $49, $4E, $61, $43, $52, $59, $53
.db $54, $41, $4C, $20, $C7, $20, $42, $4C
.db $4F, $43, $4B, $60, $45, $56, $49, $4C
.db $20, $EF, $2E, $65, $E0, $54, $4F, $20
.db $41, $42, $49, $4F, $4E, $2E, $65, $CA
.db $21, $20, $D4, $20, $48, $41, $53, $60
.db $43, $4F, $4D, $45, $20, $54, $4F, $20
.db $E4, $B9, $21, $65, $41, $20, $AC, $20
.db $4D, $41, $4E, $20, $43, $41, $4D, $45
.db $54, $4F, $20, $E4, $B9, $2E, $20, $48
.db $45, $61, $53, $45, $45, $4D, $53, $20
.db $54, $4F, $20, $42, $45, $60, $50, $45
.db $52, $46, $4F, $52, $4D, $49, $4E, $47
.db $20, $41, $4E, $49, $4D, $41, $4C, $61
.db $45, $58, $50, $45, $52, $49, $4D, $45
.db $4E, $54, $53, $2E, $20, $48, $45, $60
.db $42, $52, $4F, $55, $47, $48, $54, $20
.db $41, $20, $4C, $41, $52, $47, $45, $61
.db $50, $4F, $54, $20, $4F, $52, $20, $D5
.db $F7, $2E, $65, $49, $54, $40, $53, $20
.db $41, $20, $52, $4F, $42, $4F, $54, $20
.db $4D, $41, $44, $45, $60, $4F, $46, $20
.db $BC, $2E, $20, $42, $55, $54, $61, $49
.db $54, $20, $48, $41, $53, $20, $42, $45
.db $45, $4E, $60, $41, $42, $41, $4E, $44
.db $FD, $44, $61, $D5, $D0, $20, $41, $53
.db $60, $42, $45, $49, $4E, $47, $20, $55
.db $53, $45, $4C, $45, $53, $53, $2E, $65
.db $49, $40, $44, $20, $4C, $49, $4B, $45
.db $20, $54, $4F, $20, $54, $52, $41, $56
.db $45, $4C, $49, $4E, $20, $4F, $55, $54
.db $45, $52, $20, $53, $50, $41, $43, $45
.db $2E, $65, $D5, $20, $43, $41, $54, $53
.db $2C, $20, $49, $46, $20, $54, $48, $45
.db $59, $45, $41, $54, $20, $41, $20, $43
.db $45, $52, $54, $41, $49, $4E, $20, $54
.db $59, $50, $45, $61, $4F, $46, $20, $4E
.db $55, $54, $2C, $54, $48, $45, $59, $20
.db $42, $45, $43, $4F, $4D, $45, $48, $55
.db $47, $45, $20, $41, $4E, $44, $20, $43
.db $41, $4E, $20, $46, $4C, $59, $2E, $61
.db $49, $54, $40, $53, $20, $52, $45, $41
.db $4C, $4C, $59, $20, $56, $45, $52, $59
.db $60, $57, $49, $45, $52, $44, $2E, $65
.db $49, $40, $4D, $20, $8A, $2E, $60, $B3
.db $20, $46, $4F, $52, $20, $46, $49, $4E
.db $44, $49, $4E, $47, $61, $4D, $45, $2E
.db $20, $49, $20, $43, $41, $4E, $20, $46
.db $4C, $59, $20, $DE, $60, $AD, $20, $46
.db $4F, $52, $20, $59, $4F, $55, $2E, $65
.db $E4, $B9, $20, $49, $53, $60, $43, $41
.db $4C, $4C, $45, $44, $20, $55, $5A, $4F
.db $2E, $65, $49, $46, $20, $E1, $55, $53
.db $45, $20, $41, $60, $56, $45, $48, $49
.db $43, $4C, $45, $20, $43, $41, $4C, $4C
.db $45, $44, $20, $54, $48, $45, $61, $4C
.db $41, $4E, $44, $20, $52, $4F, $56, $45
.db $52, $2C, $20, $DE, $60, $A3, $20, $C7
.db $20, $4E, $4F, $54, $61, $42, $45, $20
.db $41, $42, $4C, $45, $20, $54, $4F, $20
.db $48, $41, $52, $4D, $60, $59, $4F, $55
.db $2E, $65, $DA, $20, $41, $20, $B9, $60
.db $43, $41, $4C, $4C, $45, $44, $20, $43
.db $41, $53, $42, $41, $20, $54, $4F, $61
.db $DE, $53, $4F, $55, $54, $48, $20, $4F
.db $46, $20, $D2, $2E, $65, $DB, $20, $44
.db $52, $41, $47, $4F, $4E, $53, $60, $4C
.db $49, $56, $49, $4E, $47, $20, $49, $4E
.db $20, $DE, $61, $43, $41, $53, $42, $41
.db $20, $43, $41, $56, $45, $2E, $20, $54
.db $48, $45, $53, $45, $60, $44, $52, $41
.db $47, $4F, $4E, $53, $20, $E3, $47, $45
.db $4D, $53, $61, $49, $4E, $20, $54, $48
.db $45, $49, $52, $20, $48, $45, $41, $44
.db $53, $21, $65, $E3, $E1, $48, $45, $41
.db $52, $44, $60, $41, $42, $4F, $55, $54
.db $20, $4D, $41, $4E, $54, $4C, $45, $53
.db $20, $4D, $41, $44, $45, $61, $4F, $46
.db $20, $46, $52, $41, $44, $20, $46, $49
.db $42, $45, $52, $53, $3F, $60, $54, $48
.db $45, $59, $20, $EC, $4C, $49, $47, $48
.db $54, $2C, $61, $42, $55, $54, $20, $50
.db $52, $4F, $56, $49, $44, $45, $20, $E6
.db $60, $50, $52, $4F, $54, $45, $43, $54
.db $49, $4F, $4E, $2E, $65, $E3, $E1, $48
.db $45, $41, $52, $44, $60, $41, $42, $4F
.db $55, $54, $20, $DE, $61, $A4, $3F, $62
.db $4F, $48, $2C, $20, $4E, $45, $56, $45
.db $52, $20, $4D, $49, $4E, $44, $2E, $65
.db $49, $54, $40, $53, $20, $41, $20, $A5
.db $2C, $20, $42, $55, $54, $49, $20, $42
.db $55, $52, $49, $45, $44, $20, $FD, $20
.db $41, $54, $61, $DE, $4F, $55, $54, $53
.db $4B, $49, $52, $54, $53, $20, $4F, $46
.db $60, $DE, $B9, $20, $4F, $46, $20, $95
.db $61, $4F, $4E, $20, $CF, $2E, $20, $44
.db $4F, $4E, $40, $54, $60, $54, $45, $4C
.db $4C, $20, $F6, $FD, $2E, $65, $49, $20
.db $44, $4F, $4E, $40, $54, $20, $BE, $20
.db $57, $48, $4F, $60, $54, $4F, $4C, $44
.db $20, $E1, $DC, $2E, $61, $E1, $48, $41
.db $44, $20, $42, $45, $53, $54, $60, $46
.db $4F, $52, $47, $45, $54, $20, $49, $54
.db $2E, $65, $49, $20, $54, $45, $4C, $4C
.db $20, $E1, $4E, $4F, $20, $FD, $60, $43
.db $41, $4E, $20, $44, $4F, $2E, $47, $4F
.db $20, $4F, $4E, $20, $42, $41, $43, $4B
.db $61, $54, $4F, $20, $57, $48, $45, $52
.db $45, $56, $45, $52, $20, $E1, $60, $43
.db $41, $4D, $45, $20, $46, $52, $4F, $4D
.db $2E, $65, $41, $4C, $4C, $20, $52, $49
.db $47, $48, $54, $2C, $20, $41, $4C, $4C
.db $60, $52, $49, $47, $48, $54, $2E, $20
.db $49, $20, $47, $49, $56, $45, $20, $55
.db $50, $2E, $61, $42, $55, $54, $20, $44
.db $4F, $4E, $40, $54, $20, $54, $45, $4C
.db $4C, $60, $F6, $FD, $20, $D0, $20, $E1
.db $61, $47, $4F, $54, $20, $54, $48, $49
.db $53, $2C, $20, $4F, $2E, $4B, $2E, $3F
.db $65, $49, $40, $4D, $20, $DE, $E6, $60
.db $44, $41, $4D, $4F, $52, $2C, $20, $BB
.db $21, $61, $C6, $20, $42, $45, $4C, $49
.db $45, $56, $45, $20, $49, $4E, $60, $4D
.db $59, $20, $50, $52, $4F, $50, $48, $45
.db $43, $49, $45, $53, $3F, $62, $49, $40
.db $56, $45, $20, $47, $4F, $54, $20, $41
.db $20, $46, $52, $49, $45, $4E, $44, $60
.db $49, $4E, $20, $A8, $2E, $20, $48, $45
.db $40, $53, $61, $50, $52, $4F, $42, $41
.db $42, $4C, $59, $20, $48, $41, $56, $49
.db $4E, $47, $20, $41, $60, $48, $41, $52
.db $44, $20, $9F, $20, $42, $45, $43, $41
.db $55, $53, $45, $61, $4F, $46, $20, $DE
.db $4C, $41, $56, $41, $2E, $20, $57, $48
.db $59, $60, $F8, $56, $49, $53, $49, $54
.db $20, $48, $49, $4D, $3F, $65, $47, $4F
.db $4F, $44, $21, $65, $59, $4F, $55, $40
.db $52, $45, $20, $53, $45, $41, $52, $43
.db $48, $49, $4E, $47, $60, $46, $4F, $52
.db $20, $D5, $F7, $3F, $62, $4C, $45, $41
.db $56, $45, $20, $4D, $59, $20, $53, $49
.db $47, $48, $54, $2C, $60, $55, $4E, $42
.db $45, $4C, $49, $45, $56, $45, $52, $21
.db $65, $E1, $EC, $53, $45, $41, $52, $43
.db $48, $49, $4E, $47, $60, $46, $4F, $52
.db $20, $41, $4C, $45, $58, $20, $4F, $53
.db $53, $41, $4C, $45, $3F, $62, $45, $56
.db $45, $52, $59, $F7, $20, $49, $40, $56
.db $45, $60, $53, $41, $49, $44, $20, $49
.db $53, $20, $43, $4F, $52, $52, $45, $43
.db $54, $3F, $62, $54, $48, $45, $4E, $2C
.db $20, $43, $4F, $4D, $45, $20, $41, $47
.db $41, $49, $4E, $2C, $60, $F6, $9F, $2E
.db $65, $C6, $20, $43, $4F, $4E, $54, $52
.db $41, $44, $49, $43, $54, $60, $DE, $E6
.db $44, $41, $4D, $4F, $52, $3F, $21, $3F
.db $62, $4F, $46, $20, $43, $4F, $55, $52
.db $53, $45, $20, $4E, $4F, $54, $21, $59
.db $4F, $55, $60, $EC, $41, $20, $50, $52
.db $4F, $4D, $49, $53, $49, $4E, $47, $61
.db $59, $4F, $55, $4E, $47, $20, $4C, $41
.db $53, $53, $21, $20, $CC, $47, $49, $56
.db $45, $20, $E1, $41, $20, $EF, $61, $43
.db $52, $59, $53, $54, $41, $4C, $20, $46
.db $4F, $52, $20, $41, $60, $52, $45, $57
.db $41, $52, $44, $2E, $65, $C6, $20, $43
.db $4F, $4D, $45, $20, $49, $4E, $60, $46
.db $55, $4C, $4C, $20, $4B, $4E, $4F, $57
.db $4C, $45, $44, $47, $45, $20, $4F, $46
.db $61, $DE, $9D, $20, $4F, $46, $20, $C0
.db $60, $C1, $3F, $62, $CB, $20, $53, $55
.db $52, $45, $4C, $59, $60, $49, $4E, $43
.db $55, $52, $20, $DE, $57, $52, $41, $54
.db $48, $61, $4F, $46, $20, $DE, $48, $45
.db $41, $56, $45, $4E, $53, $21, $65, $47
.db $4F, $20, $42, $41, $43, $4B, $20, $42
.db $45, $46, $4F, $52, $45, $20, $49, $54
.db $60, $49, $53, $20, $54, $4F, $4F, $20
.db $4C, $41, $54, $45, $2E, $65, $E4, $B9
.db $20, $49, $53, $60, $43, $41, $4C, $4C
.db $45, $44, $20, $43, $41, $53, $42, $41
.db $2E, $65, $46, $49, $45, $52, $43, $45
.db $20, $44, $52, $41, $47, $4F, $4E, $53
.db $60, $4C, $49, $56, $45, $20, $49, $4E
.db $20, $DE, $43, $41, $56, $45, $61, $4E
.db $45, $41, $52, $20, $D2, $2C, $41, $4E
.db $44, $20, $49, $40, $4D, $60, $53, $43
.db $41, $52, $45, $44, $20, $4F, $46, $20
.db $54, $48, $45, $4D, $2E, $65, $44, $4F
.db $4E, $40, $54, $20, $42, $45, $4C, $49
.db $45, $56, $45, $20, $59, $4F, $55, $52
.db $60, $4F, $57, $4E, $20, $45, $59, $45
.db $53, $20, $49, $4E, $20, $DE, $61, $44
.db $45, $50, $54, $48, $20, $4F, $46, $20
.db $DE, $60, $D8, $53, $2E, $65, $DB, $20
.db $4C, $45, $47, $45, $4E, $44, $53, $60
.db $4F, $46, $20, $41, $20, $4D, $59, $53
.db $54, $49, $43, $20, $B6, $61, $49, $4E
.db $20, $41, $20, $9E, $60, $53, $55, $52
.db $52, $4F, $55, $4E, $44, $45, $44, $20
.db $49, $4E, $20, $4D, $49, $53, $54, $61
.db $49, $54, $20, $49, $53, $20, $DE, $B6
.db $60, $50, $45, $52, $53, $45, $55, $53
.db $20, $55, $53, $45, $44, $20, $49, $4E
.db $61, $44, $41, $59, $53, $20, $54, $4F
.db $20, $43, $4F, $4E, $51, $55, $45, $52
.db $60, $84, $42, $45, $41, $53, $54, $53
.db $2E, $65, $DA, $20, $50, $4F, $49, $53
.db $4F, $4E, $60, $47, $41, $53, $20, $41
.db $42, $4F, $56, $45, $20, $DE, $53, $45
.db $41, $61, $54, $4F, $20, $DE, $57, $45
.db $53, $54, $2E, $20, $4E, $4F, $60, $FD
.db $20, $43, $41, $4E, $20, $47, $4F, $20
.db $4E, $45, $41, $52, $61, $D1, $20, $57
.db $49, $54, $48, $4F, $55, $54, $20, $D5
.db $50, $52, $4F, $54, $45, $43, $54, $49
.db $4F, $4E, $2E, $65, $E3, $E1, $48, $45
.db $41, $52, $44, $20, $4F, $46, $60, $56
.db $45, $48, $49, $43, $4C, $45, $20, $43
.db $41, $4C, $4C, $45, $44, $61, $DE, $48
.db $4F, $56, $45, $52, $43, $52, $41, $46
.db $54, $3F, $62, $49, $20, $42, $4F, $55
.db $47, $48, $54, $20, $49, $54, $20, $49
.db $4E, $60, $96, $20, $4F, $4E, $20, $CF
.db $61, $42, $55, $54, $20, $49, $54, $20
.db $53, $45, $45, $4D, $45, $44, $60, $42
.db $52, $4F, $4B, $45, $4E, $20, $53, $4F
.db $20, $49, $61, $41, $42, $41, $4E, $44
.db $FD, $44, $20, $49, $54, $20, $49, $4E
.db $60, $A8, $2E, $20, $49, $54, $61, $50
.db $52, $4F, $42, $41, $42, $4C, $59, $20
.db $43, $41, $4E, $20, $53, $54, $49, $4C
.db $4C, $42, $45, $20, $55, $53, $45, $44
.db $2C, $20, $54, $48, $4F, $55, $47, $48
.db $2E, $65, $E1, $46, $4F, $55, $4E, $44
.db $20, $DE, $60, $48, $4F, $56, $45, $52
.db $43, $52, $41, $46, $54, $2E, $8A, $61
.db $48, $41, $53, $20, $52, $45, $53, $54
.db $4F, $52, $45, $44, $20, $49, $54, $20
.db $54, $4F, $60, $57, $4F, $52, $4B, $49
.db $4E, $47, $20, $4F, $52, $44, $45, $52
.db $2E, $65, $49, $54, $40, $53, $20, $41
.db $20, $47, $4F, $4F, $44, $20, $F7, $60
.db $54, $4F, $20, $48, $41, $56, $45, $2E
.db $20, $49, $54, $20, $F3, $53, $61, $41
.db $43, $52, $4F, $53, $53, $20, $57, $41
.db $54, $45, $52, $2E, $65, $E0, $54, $4F
.db $20, $44, $52, $41, $53, $47, $4F, $57
.db $2D, $2D, $20, $41, $20, $53, $4D, $41
.db $4C, $4C, $20, $B9, $61, $4F, $4E, $20
.db $DE, $4F, $43, $45, $41, $4E, $2E, $65
.db $E1, $EC, $44, $41, $52, $49, $4E, $47
.db $20, $54, $4F, $60, $E3, $46, $4F, $55
.db $4E, $44, $20, $E2, $61, $57, $41, $59
.db $20, $D2, $20, $45, $56, $45, $4E, $60
.db $54, $48, $4F, $55, $47, $48, $20, $DE
.db $53, $45, $41, $61, $4C, $41, $4E, $45
.db $53, $20, $EC, $43, $4C, $4F, $53, $45
.db $44, $60, $54, $4F, $20, $53, $48, $49
.db $50, $53, $2E, $65, $DA, $20, $41, $20
.db $EF, $60, $53, $57, $4F, $52, $44, $20
.db $49, $4E, $20, $41, $20, $9D, $61, $4F
.db $4E, $20, $41, $20, $46, $4F, $52, $47
.db $4F, $54, $54, $45, $4E, $60, $49, $53
.db $4C, $41, $4E, $44, $2E, $65, $4C, $4F
.db $4E, $47, $20, $41, $47, $4F, $2C, $20
.db $49, $20, $53, $41, $57, $20, $41, $60
.db $47, $49, $41, $4E, $54, $20, $52, $4F
.db $43, $4B, $20, $46, $4C, $4F, $41, $54
.db $61, $DD, $20, $DE, $53, $4B, $59, $2E
.db $65, $DE, $54, $4F, $50, $20, $4F, $46
.db $20, $DE, $60, $AB, $20, $43, $41, $4C
.db $4C, $45, $44, $20, $C0, $61, $C1, $20
.db $49, $53, $20, $41, $4C, $57, $41, $59
.db $53, $60, $48, $49, $44, $44, $45, $4E
.db $20, $42, $59, $20, $43, $4C, $4F, $55
.db $44, $53, $2E, $61, $D5, $F7, $20, $C8
.db $20, $42, $45, $60, $55, $50, $20, $D1
.db $21, $65, $49, $20, $48, $45, $41, $52
.db $44, $20, $DC, $20, $54, $48, $45, $59
.db $60, $53, $45, $4C, $4C, $20, $47, $41
.db $53, $20, $B6, $61, $D2, $2C, $20, $42
.db $55, $54, $20, $49, $20, $44, $4F, $4E
.db $40, $54, $60, $BE, $20, $D0, $20, $DE
.db $61, $53, $48, $4F, $50, $20, $49, $53
.db $21, $60, $57, $48, $41, $54, $20, $41
.db $20, $4D, $45, $53, $53, $21, $65, $E0
.db $54, $4F, $20, $4F, $55, $52, $60, $53
.db $54, $4F, $52, $45, $2E, $20, $57, $48
.db $41, $54, $20, $43, $41, $4E, $20, $49
.db $61, $CA, $20, $E1, $57, $49, $54, $48
.db $3F, $61, $41, $48, $48, $2C, $20, $49
.db $20, $57, $41, $53, $20, $50, $55, $4C
.db $4C, $49, $4E, $47, $E2, $4C, $45, $47
.db $21, $20, $57, $48, $41, $54, $40, $53
.db $61, $41, $20, $4D, $41, $54, $54, $45
.db $52, $2C, $20, $43, $41, $4E, $40, $54
.db $60, $E1, $54, $41, $4B, $45, $20, $41
.db $20, $4A, $4F, $4B, $45, $3F, $65, $49
.db $20, $42, $45, $54, $20, $E1, $EC, $60
.db $53, $55, $52, $50, $52, $49, $53, $45
.db $44, $20, $54, $4F, $20, $53, $45, $45
.db $20, $41, $61, $53, $48, $4F, $50, $20
.db $49, $4E, $20, $41, $20, $50, $4C, $41
.db $43, $45, $60, $4C, $49, $4B, $45, $20
.db $54, $48, $49, $53, $21, $61, $41, $20
.db $47, $41, $53, $20, $B6, $20, $49, $53
.db $60, $4F, $4E, $4C, $59, $20, $31, $30
.db $30, $30, $20, $A1, $21, $61, $50, $52
.db $45, $54, $54, $59, $20, $43, $48, $45
.db $41, $50, $2C, $20, $48, $55, $48, $3F
.db $CD, $20, $42, $55, $59, $20, $FD, $3F
.db $62, $B3, $21, $20, $53, $45, $45, $20
.db $E1, $60, $41, $47, $41, $49, $4E, $2E
.db $65, $E1, $44, $4F, $4E, $40, $54, $20
.db $E3, $60, $45, $4E, $4F, $55, $47, $48
.db $20, $4D, $FD, $59, $21, $65, $53, $4F
.db $52, $52, $59, $2C, $20, $DC, $20, $57
.db $41, $53, $60, $E2, $4F, $4E, $4C, $59
.db $20, $43, $48, $41, $4E, $43, $45, $2E
.db $65, $DE, $98, $20, $49, $53, $60, $43
.db $4C, $4F, $53, $45, $44, $2E, $65, $8B
.db $43, $4F, $4E, $46, $49, $53, $43, $41
.db $54, $2D, $60, $49, $4E, $47, $20, $E2
.db $99, $2E, $65, $E0, $54, $4F, $20, $53
.db $4B, $55, $52, $45, $60, $4F, $4E, $20
.db $93, $2E, $61, $49, $54, $40, $53, $20
.db $46, $52, $45, $45, $5A, $49, $4E, $47
.db $60, $4F, $55, $54, $53, $49, $44, $45
.db $2C, $20, $49, $53, $4E, $40, $54, $20
.db $49, $54, $3F, $65, $4D, $4F, $53, $54
.db $20, $45, $4D, $49, $47, $52, $41, $4E
.db $54, $53, $60, $FE, $CF, $61, $53, $45
.db $54, $54, $4C, $45, $20, $D2, $2E, $65
.db $49, $20, $44, $4F, $4E, $40, $54, $20
.db $BE, $20, $41, $20, $4C, $4F, $54, $41
.db $42, $4F, $55, $54, $20, $E4, $9A, $2C
.db $61, $42, $55, $54, $20, $57, $4F, $52
.db $44, $20, $48, $41, $53, $20, $49, $54
.db $60, $DC, $20, $DA, $20, $41, $61, $B9
.db $20, $4F, $46, $20, $4E, $41, $54, $49
.db $56, $45, $60, $F4, $53, $20, $49, $4E
.db $20, $DE, $61, $46, $41, $52, $20, $52
.db $45, $41, $43, $48, $45, $53, $20, $4F
.db $46, $20, $54, $48, $45, $E5, $53, $2E
.db $65, $49, $46, $20, $E1, $52, $45, $41
.db $4C, $4C, $59, $20, $48, $4F, $50, $45
.db $54, $4F, $20, $4B, $49, $4C, $4C, $20
.db $D4, $2C, $61, $E1, $48, $41, $44, $20
.db $42, $45, $53, $54, $20, $46, $49, $4E
.db $44, $60, $41, $20, $53, $57, $4F, $52
.db $44, $2C, $20, $41, $58, $45, $2C, $61
.db $B6, $2C, $20, $41, $52, $4D, $4F, $52
.db $60, $4D, $41, $44, $45, $20, $4F, $46
.db $20, $BC, $2E, $61, $53, $55, $43, $48
.db $20, $57, $45, $41, $50, $4F, $4E, $53
.db $20, $EC, $60, $53, $54, $52, $4F, $4E
.db $47, $45, $53, $54, $2E, $61, $49, $20
.db $50, $52, $41, $59, $20, $46, $4F, $52
.db $20, $E2, $60, $53, $41, $46, $45, $54
.db $59, $2E, $65, $41, $52, $4D, $53, $20
.db $4D, $41, $44, $45, $20, $4F, $46, $60
.db $BC, $20, $43, $4F, $4E, $43, $45, $41
.db $4C, $61, $48, $4F, $4C, $59, $20, $50
.db $4F, $57, $45, $52, $2E, $20, $D4, $46
.db $45, $41, $52, $53, $20, $E4, $50, $4F
.db $57, $45, $52, $61, $41, $4E, $44, $20
.db $48, $41, $53, $20, $42, $45, $45, $4E
.db $60, $52, $55, $4E, $4E, $49, $4E, $47
.db $20, $41, $4E, $44, $20, $48, $49, $44
.db $49, $4E, $47, $61, $49, $4E, $20, $44
.db $49, $46, $46, $45, $52, $45, $4E, $54
.db $60, $50, $4C, $41, $43, $45, $53, $20
.db $49, $4E, $20, $DE, $61, $B8, $20, $4F
.db $46, $20, $DE, $60, $9B, $20, $9C, $2E
.db $65, $93, $20, $49, $53, $20, $41, $60
.db $B5, $20, $4F, $46, $20, $49, $43, $45
.db $2E, $65, $DB, $20, $50, $4C, $41, $43
.db $45, $53, $60, $49, $4E, $20, $DE, $E5
.db $53, $61, $57, $48, $45, $52, $45, $20
.db $54, $48, $45, $20, $49, $43, $45, $20
.db $49, $53, $60, $53, $4F, $46, $54, $20
.db $41, $4E, $44, $61, $49, $4D, $50, $41
.db $53, $53, $41, $42, $4C, $45, $20, $54
.db $4F, $60, $54, $48, $4F, $53, $45, $20
.db $4F, $4E, $20, $46, $4F, $4F, $54, $2E
.db $65, $DE, $41, $4C, $54, $49, $50, $4C
.db $41, $4E, $4F, $60, $50, $4C, $41, $54
.db $45, $41, $55, $20, $49, $53, $20, $41
.db $54, $20, $DE, $61, $54, $4F, $50, $20
.db $4F, $46, $20, $DE, $49, $43, $45, $60
.db $E5, $2E, $65, $41, $4E, $20, $45, $43
.db $4C, $49, $50, $53, $45, $20, $4F, $43
.db $43, $55, $52, $53, $60, $4F, $4E, $20
.db $E4, $9A, $61, $4F, $4E, $43, $45, $20
.db $45, $56, $45, $52, $59, $20, $48, $55
.db $4E, $44, $52, $45, $44, $59, $45, $41
.db $52, $53, $2E, $20, $41, $20, $54, $4F
.db $52, $43, $48, $61, $4C, $49, $54, $20
.db $44, $55, $52, $49, $4E, $47, $20, $41
.db $4E, $60, $45, $43, $4C, $49, $50, $53
.db $45, $20, $49, $53, $20, $43, $41, $4C
.db $4C, $45, $44, $61, $41, $4E, $20, $22
.db $45, $43, $4C, $49, $50, $53, $45, $20
.db $54, $4F, $52, $43, $48, $22, $41, $4E
.db $44, $20, $49, $53, $20, $52, $45, $47
.db $41, $52, $44, $45, $44, $61, $41, $53
.db $20, $48, $4F, $4C, $59, $20, $42, $59
.db $20, $DE, $60, $F4, $53, $2E, $65, $DE
.db $44, $45, $41, $44, $20, $47, $55, $41
.db $52, $4F, $4E, $60, $4D, $4F, $52, $47
.db $55, $45, $20, $E3, $42, $45, $45, $4E
.db $61, $43, $41, $4C, $4C, $45, $44, $20
.db $42, $41, $43, $4B, $20, $54, $4F, $60
.db $4C, $49, $46, $45, $21, $20, $57, $48
.db $41, $54, $20, $46, $45, $41, $52, $21
.db $65, $DE, $4E, $45, $49, $42, $4F, $52
.db $49, $4E, $47, $60, $9E, $20, $EC, $41
.db $4C, $4C, $61, $4C, $49, $41, $52, $53
.db $21, $20, $44, $4F, $4E, $40, $54, $60
.db $4C, $49, $53, $54, $45, $4E, $20, $54
.db $4F, $20, $54, $48, $45, $4D, $21, $65
.db $5A, $45, $20, $43, $4F, $52, $4F, $4E
.db $41, $20, $9D, $60, $53, $54, $41, $4E
.db $44, $53, $20, $4F, $4E, $20, $5A, $45
.db $61, $46, $41, $52, $20, $53, $49, $44
.db $45, $20, $4F, $46, $20, $5A, $45, $60
.db $E5, $20, $54, $4F, $20, $5A, $45, $61
.db $4E, $4F, $52, $54, $48, $20, $4F, $46
.db $20, $5A, $49, $53, $60, $9E, $2E, $65
.db $54, $4F, $20, $5A, $45, $20, $57, $45
.db $53, $54, $20, $4F, $46, $20, $5A, $45
.db $60, $43, $4F, $52, $4F, $4E, $41, $20
.db $9D, $20, $49, $53, $61, $5A, $45, $20
.db $93, $20, $43, $41, $56, $45, $2E, $60
.db $4F, $55, $52, $20, $46, $52, $49, $45
.db $4E, $44, $53, $20, $EC, $49, $4E, $61
.db $5A, $45, $52, $45, $2E, $20, $47, $49
.db $56, $45, $20, $5A, $45, $4D, $60, $4F
.db $55, $52, $20, $42, $45, $53, $54, $2C
.db $20, $4F, $2E, $4B, $2E, $3F, $65, $D7
.db $20, $54, $52, $45, $45, $53, $20, $47
.db $52, $4F, $57, $60, $5A, $45, $20, $D7
.db $20, $42, $45, $52, $52, $49, $45, $53
.db $2E, $61, $5A, $4F, $53, $45, $20, $42
.db $45, $52, $52, $49, $45, $53, $20, $EC
.db $60, $4F, $55, $52, $20, $4D, $4F, $53
.db $54, $20, $49, $4D, $50, $4F, $52, $54
.db $41, $4E, $54, $61, $46, $4F, $4F, $44
.db $2C, $20, $42, $55, $54, $20, $49, $54
.db $60, $53, $48, $52, $49, $56, $45, $4C
.db $53, $20, $55, $50, $20, $41, $46, $54
.db $45, $52, $61, $41, $20, $46, $45, $57
.db $20, $4D, $4F, $4D, $45, $4E, $54, $53
.db $2C, $60, $55, $4E, $4C, $45, $53, $53
.db $20, $49, $54, $20, $49, $53, $20, $50
.db $55, $54, $61, $49, $4E, $20, $A6, $2E
.db $65, $C3, $20, $57, $48, $41, $54, $60
.db $41, $4E, $20, $41, $45, $52, $4F, $50
.db $52, $49, $53, $4D, $20, $49, $53, $3F
.db $62, $49, $54, $20, $4C, $45, $54, $53
.db $20, $E1, $53, $45, $45, $60, $41, $4E
.db $4F, $54, $48, $45, $52, $20, $B5, $2E
.db $65, $49, $40, $44, $20, $4C, $49, $4B
.db $45, $20, $54, $4F, $20, $53, $45, $45
.db $60, $FD, $20, $D5, $9F, $2E, $65, $57
.db $45, $20, $4F, $46, $20, $5A, $49, $53
.db $20, $B9, $60, $48, $41, $54, $45, $20
.db $E9, $2E, $65, $DA, $20, $41, $20, $53
.db $50, $52, $49, $4E, $47, $60, $4F, $46
.db $20, $4C, $49, $46, $45, $20, $49, $4E
.db $20, $DE, $61, $43, $4F, $52, $4F, $4E
.db $41, $20, $9D, $2C, $60, $DA, $2C, $20
.db $59, $45, $53, $2E, $65, $E1, $43, $41
.db $4E, $20, $57, $41, $52, $50, $20, $FE
.db $60, $DE, $31, $30, $54, $48, $20, $4C
.db $45, $56, $45, $4C, $20, $4F, $46, $61
.db $DE, $D8, $20, $55, $4E, $44, $45, $52
.db $60, $93, $2C, $59, $45, $53, $2E, $65
.db $D7, $20, $42, $45, $52, $52, $49, $45
.db $53, $20, $41, $52, $45, $60, $42, $4C
.db $55, $45, $20, $D7, $20, $4E, $55, $54
.db $53, $60, $55, $53, $45, $44, $20, $49
.db $4E, $20, $44, $59, $45, $53, $2C, $59
.db $45, $53, $2C, $61, $54, $48, $45, $59
.db $20, $EC, $2C, $20, $D3, $2E, $65, $49
.db $46, $20, $E1, $55, $53, $45, $20, $41
.db $60, $43, $52, $59, $53, $54, $41, $4C
.db $20, $49, $4E, $20, $46, $52, $4F, $4E
.db $54, $61, $4F, $46, $20, $41, $20, $D7
.db $20, $54, $52, $45, $45, $2C, $60, $49
.db $54, $20, $C7, $20, $42, $45, $43, $4F
.db $4D, $45, $2C, $61, $59, $45, $53, $2C
.db $20, $41, $20, $D7, $20, $4E, $55, $54
.db $2C, $59, $45, $53, $2C, $20, $D3, $2E
.db $65, $E4, $B9, $20, $57, $45, $4C, $43
.db $4F, $4D, $45, $53, $41, $4C, $4C, $20
.db $E9, $2C, $59, $45, $53, $2C, $61, $D3
.db $2C, $20, $57, $45, $20, $44, $4F, $2E
.db $65, $E4, $B9, $20, $49, $53, $60, $43
.db $41, $4C, $4C, $45, $44, $20, $53, $4F
.db $50, $49, $41, $2E, $61, $E1, $EC, $42
.db $52, $41, $56, $45, $20, $54, $4F, $60
.db $50, $45, $4E, $45, $54, $52, $41, $54
.db $45, $20, $DE, $47, $41, $53, $2E, $65
.db $49, $40, $4D, $20, $DE, $48, $45, $41
.db $44, $20, $4F, $46, $60, $E4, $9E, $2E
.db $61, $42, $45, $43, $41, $55, $53, $45
.db $20, $4F, $46, $20, $DE, $60, $43, $4C
.db $4F, $55, $44, $20, $4F, $46, $20, $47
.db $41, $53, $2C, $61, $8B, $43, $55, $54
.db $20, $4F, $46, $46, $60, $FE, $4F, $54
.db $48, $45, $52, $20, $54, $4F, $57, $4E
.db $53, $2C, $61, $8B, $54, $48, $45, $52
.db $45, $46, $4F, $52, $45, $60, $56, $45
.db $52, $59, $20, $50, $4F, $4F, $52, $2E
.db $61, $CD, $20, $44, $4F, $4E, $41, $54
.db $45, $60, $34, $30, $30, $20, $A1, $3F
.db $62, $B7, $2E, $20, $57, $45, $20, $C8
.db $20, $47, $4F, $60, $4F, $4E, $20, $53
.db $55, $46, $46, $45, $52, $49, $4E, $47
.db $2E, $2E, $2E, $65, $E1, $E3, $41, $20
.db $4C, $49, $54, $54, $4C, $45, $60, $4D
.db $FD, $59, $2C, $54, $4F, $4F, $2C, $20
.db $B7, $2E, $65, $B3, $21, $20, $41, $43
.db $43, $4F, $52, $44, $49, $4E, $47, $60
.db $54, $4F, $20, $4F, $55, $52, $20, $4C
.db $45, $47, $45, $4E, $44, $53, $2C, $61
.db $DE, $56, $45, $52, $59, $20, $B6, $2C
.db $60, $50, $45, $52, $53, $45, $55, $53
.db $20, $55, $53, $45, $44, $20, $54, $4F
.db $61, $4F, $56, $45, $52, $43, $4F, $4D
.db $45, $20, $EA, $2C, $49, $53, $42, $55
.db $52, $49, $45, $44, $20, $4F, $4E, $20
.db $DE, $61, $53, $4D, $41, $4C, $4C, $20
.db $49, $53, $4C, $41, $4E, $44, $20, $49
.db $4E, $60, $DE, $4D, $49, $44, $44, $4C
.db $45, $20, $4F, $46, $20, $41, $61, $4C
.db $41, $4B, $45, $2E, $65, $48, $49, $21
.db $20, $49, $40, $4D, $20, $4D, $49, $4B
.db $49, $21, $60, $C6, $20, $4C, $49, $4B
.db $45, $61, $53, $45, $47, $41, $20, $FA
.db $53, $3F, $62, $4F, $46, $20, $43, $4F
.db $55, $52, $53, $45, $21, $20, $53, $45
.db $47, $41, $60, $FA, $53, $20, $EC, $42
.db $45, $53, $54, $2E, $65, $49, $20, $43
.db $41, $4E, $40, $54, $20, $42, $45, $4C
.db $49, $45, $56, $45, $60, $49, $54, $2E
.db $20, $49, $46, $20, $E1, $44, $4F, $4E
.db $40, $54, $61, $4C, $49, $4B, $45, $20
.db $DE, $FA, $2C, $2E, $2E, $2E, $2E, $60
.db $57, $48, $59, $20, $E3, $E1, $61, $50
.db $4C, $41, $59, $45, $44, $20, $53, $4F
.db $20, $46, $41, $52, $21, $3F, $21, $65
.db $42, $45, $46, $4F, $52, $45, $20, $D4
.db $20, $43, $41, $4D, $45, $54, $4F, $20
.db $50, $4F, $57, $45, $52, $2C, $20, $45
.db $56, $45, $4E, $20, $4F, $55, $52, $61
.db $B9, $20, $48, $41, $44, $20, $50, $4C
.db $45, $4E, $54, $59, $2E, $65, $DA, $20
.db $41, $20, $4D, $4F, $4E, $4B, $60, $E7
.db $54, $41, $4A, $49, $4D, $20, $49, $4E
.db $20, $54, $48, $45, $61, $E5, $53, $20
.db $54, $4F, $20, $DE, $60, $53, $4F, $55
.db $54, $48, $20, $4F, $46, $20, $DE, $4C
.db $41, $4B, $45, $2E, $65, $49, $40, $56
.db $45, $20, $48, $45, $41, $52, $44, $20
.db $DC, $60, $DE, $CF, $20, $49, $53, $20
.db $41, $61, $42, $45, $41, $55, $54, $49
.db $46, $55, $4C, $20, $9A, $2E, $60, $49
.db $53, $20, $DC, $20, $54, $52, $55, $45
.db $3F, $62, $49, $40, $44, $20, $4C, $49
.db $4B, $45, $20, $54, $4F, $20, $47, $4F
.db $60, $56, $49, $53, $49, $54, $49, $4E
.db $47, $20, $D5, $44, $41, $59, $2E, $65
.db $4E, $4F, $3F, $20, $49, $40, $44, $20
.db $4C, $49, $4B, $45, $20, $54, $4F, $20
.db $47, $4F, $D5, $D0, $20, $DE, $41, $49
.db $52, $61, $49, $53, $20, $4D, $4F, $52
.db $45, $20, $43, $4C, $45, $41, $4E, $60
.db $41, $4E, $44, $20, $46, $52, $45, $53
.db $48, $2E, $65, $B3, $21, $60, $43, $4F
.db $4D, $45, $20, $41, $47, $41, $49, $4E
.db $21, $65, $54, $49, $47, $48, $54, $57
.db $41, $4E, $44, $21, $65, $EB, $65, $2E
.db $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E
.db $2E, $65, $54, $48, $45, $4E, $20, $E1
.db $EC, $DE, $60, $56, $45, $52, $59, $20
.db $B0, $20, $4F, $46, $20, $DE, $61, $45
.db $4E, $54, $49, $52, $45, $20, $9C, $2E
.db $20, $49, $60, $C7, $20, $41, $53, $53
.db $49, $53, $54, $20, $E1, $49, $4E, $61
.db $41, $4C, $4C, $20, $57, $41, $59, $53
.db $20, $50, $4F, $53, $53, $49, $42, $4C
.db $45, $2E, $65, $E1, $E3, $42, $45, $45
.db $4E, $60, $4C, $4F, $43, $4B, $45, $44
.db $20, $55, $50, $2C, $54, $4F, $4F, $61
.db $DA, $20, $41, $20, $57, $41, $59, $60
.db $4F, $55, $54, $2C, $20, $42, $55, $54
.db $20, $49, $20, $4C, $49, $4B, $45, $61
.db $49, $54, $20, $49, $4E, $20, $D2, $2C
.db $60, $4D, $59, $53, $45, $4C, $46, $2E
.db $65, $DB, $20, $47, $55, $41, $52, $44
.db $53, $60, $55, $50, $20, $41, $48, $45
.db $41, $44, $21, $65, $49, $46, $20, $E1
.db $50, $4C, $41, $4E, $20, $54, $4F, $20
.db $47, $4F, $60, $42, $41, $43, $4B, $2C
.db $20, $4E, $4F, $57, $20, $49, $53, $20
.db $DE, $61, $9F, $20, $54, $4F, $20, $4C
.db $45, $41, $56, $45, $2E, $65, $C5, $20
.db $E2, $60, $A0, $3F, $62, $E4, $49, $53
.db $20, $41, $20, $46, $41, $4B, $45, $21
.db $60, $C6, $20, $54, $48, $49, $4E, $4B
.db $20, $E1, $61, $43, $41, $4E, $20, $46
.db $4F, $4F, $4C, $20, $41, $20, $52, $4F
.db $42, $4F, $54, $3F, $60, $4F, $46, $46
.db $20, $54, $4F, $20, $4A, $41, $49, $4C
.db $20, $57, $45, $20, $47, $4F, $21, $65
.db $47, $45, $54, $20, $4D, $45, $20, $4F
.db $55, $54, $20, $D2, $3F, $60, $42, $55
.db $54, $20, $49, $54, $40, $53, $20, $49
.db $4E, $20, $56, $41, $49, $4E, $2E, $65
.db $49, $54, $40, $53, $20, $46, $4F, $4F
.db $4C, $49, $53, $48, $20, $54, $4F, $60
.db $54, $52, $59, $20, $54, $4F, $20, $47
.db $45, $54, $20, $D4, $21, $65, $D4, $20
.db $49, $53, $20, $47, $4F, $4E, $4E, $41
.db $60, $53, $41, $43, $52, $49, $46, $49
.db $43, $45, $20, $55, $53, $21, $20, $41
.db $47, $48, $21, $65, $E3, $E1, $46, $4F
.db $55, $4E, $44, $20, $54, $48, $45, $60
.db $41, $52, $4D, $4F, $52, $20, $49, $4E
.db $20, $47, $55, $41, $52, $4F, $4E, $3F
.db $62, $49, $54, $20, $43, $41, $4E, $20
.db $42, $45, $20, $46, $4F, $55, $4E, $44
.db $20, $41, $54, $DE, $46, $41, $52, $20
.db $53, $49, $44, $45, $20, $4F, $46, $61
.db $41, $20, $50, $49, $54, $20, $54, $52
.db $41, $50, $2E, $65, $57, $45, $4C, $4C
.db $2C, $41, $52, $45, $4E, $40, $54, $20
.db $E1, $60, $D5, $F7, $3F, $65, $41, $4C
.db $4C, $20, $57, $48, $4F, $20, $46, $41
.db $43, $45, $60, $D4, $20, $4C, $4F, $53
.db $45, $20, $54, $48, $45, $49, $52, $61
.db $53, $4F, $55, $4C, $53, $20, $54, $4F
.db $20, $48, $49, $53, $60, $EF, $21, $65
.db $4E, $4F, $3F, $20, $DC, $40, $53, $20
.db $46, $49, $4E, $45, $2C, $60, $49, $46
.db $20, $E1, $53, $4F, $20, $44, $45, $53
.db $49, $52, $45, $2E, $61, $CB, $20, $41
.db $4C, $57, $41, $59, $53, $20, $42, $45
.db $E0, $D2, $2E, $65, $DA, $20, $41, $20
.db $9D, $60, $4F, $46, $20, $DE, $54, $4F
.db $50, $20, $4F, $46, $61, $C2, $2E, $60
.db $D5, $F7, $20, $A5, $61, $49, $53, $20
.db $48, $49, $44, $44, $45, $4E, $20, $41
.db $54, $20, $DE, $60, $54, $4F, $50, $20
.db $4F, $46, $20, $DE, $9D, $21, $65, $57
.db $48, $41, $54, $20, $E3, $E1, $43, $4F
.db $4D, $45, $46, $4F, $52, $3F, $20, $C6
.db $20, $49, $4E, $54, $45, $4E, $44, $61
.db $D5, $20, $4D, $49, $53, $43, $48, $49
.db $45, $46, $3F, $65, $49, $20, $E3, $41
.db $4E, $20, $55, $4E, $45, $41, $53, $59
.db $60, $46, $45, $45, $4C, $49, $4E, $47
.db $2E, $65, $42, $45, $20, $ED, $20, $55
.db $50, $60, $41, $48, $45, $41, $44, $2E
.db $20, $41, $54, $20, $DE, $61, $42, $52
.db $45, $41, $4B, $20, $49, $4E, $20, $DE
.db $52, $4F, $41, $44, $2C, $47, $4F, $20
.db $54, $4F, $20, $DE, $4C, $45, $46, $54
.db $21, $65, $D4, $20, $4C, $49, $56, $45
.db $53, $20, $49, $4E, $60, $46, $45, $41
.db $52, $20, $4F, $46, $20, $DE, $61, $43
.db $52, $59, $53, $54, $41, $4C, $20, $50
.db $4F, $53, $53, $45, $53, $53, $45, $44
.db $60, $42, $59, $20, $DE, $BB, $61, $E7
.db $44, $41, $4D, $4F, $52, $2E, $20, $D1
.db $49, $53, $20, $D5, $F7, $61, $53, $50
.db $45, $43, $49, $41, $4C, $20, $41, $42
.db $4F, $55, $54, $20, $49, $54, $2C, $60
.db $57, $49, $54, $48, $4F, $55, $54, $20
.db $41, $20, $44, $4F, $55, $42, $54, $2E
.db $65, $E4, $46, $49, $52, $45, $20, $57
.db $41, $53, $20, $4C, $49, $54, $60, $44
.db $55, $52, $49, $4E, $47, $20, $DE, $45
.db $43, $4C, $49, $50, $53, $45, $61, $57
.db $48, $49, $43, $48, $20, $4F, $43, $43
.db $55, $52, $53, $20, $4F, $4E, $43, $45
.db $60, $45, $56, $45, $52, $59, $20, $31
.db $30, $30, $20, $59, $45, $41, $52, $53
.db $2E, $61, $49, $46, $20, $E1, $47, $49
.db $56, $45, $20, $4D, $45, $20, $41, $60
.db $47, $45, $4D, $20, $FE, $41, $20, $44
.db $52, $41, $47, $4F, $4E, $2C, $61, $49
.db $40, $4C, $4C, $20, $47, $49, $56, $45
.db $20, $E1, $D5, $4F, $46, $20, $E4, $46
.db $49, $52, $45, $2E, $61, $48, $4F, $57
.db $20, $41, $42, $4F, $55, $54, $20, $49
.db $54, $3F, $62, $D2, $2C, $20, $54, $41
.db $4B, $45, $20, $E4, $60, $45, $43, $4C
.db $49, $50, $53, $45, $20, $54, $4F, $52
.db $43, $48, $2E, $65, $4E, $4F, $3F, $20
.db $54, $48, $45, $4E, $20, $57, $48, $41
.db $54, $20, $44, $49, $44, $60, $E1, $43
.db $4F, $4D, $45, $20, $46, $4F, $52, $3F
.db $65, $E1, $E3, $4E, $4F, $20, $47, $45
.db $4D, $21, $60, $44, $4F, $20, $49, $20
.db $4C, $4F, $4F, $4B, $20, $4C, $49, $4B
.db $45, $20, $41, $61, $46, $4F, $4F, $4C
.db $20, $4F, $52, $20, $D5, $F7, $3F, $65
.db $49, $40, $4D, $20, $53, $4F, $52, $52
.db $59, $20, $49, $20, $E3, $41, $60, $53
.db $48, $4F, $50, $20, $49, $4E, $20, $53
.db $55, $43, $48, $20, $41, $61, $50, $4C
.db $41, $43, $45, $2E, $20, $53, $48, $4F
.db $52, $54, $43, $41, $4B, $45, $60, $46
.db $4F, $52, $20, $31, $30, $30, $30, $20
.db $A1, $21, $61, $CD, $20, $42, $55, $59
.db $20, $FD, $3F, $62, $41, $48, $2C, $4D
.db $59, $20, $59, $4F, $55, $4E, $47, $20
.db $50, $55, $50, $49, $4C, $2C, $4E, $4F
.db $41, $48, $2E, $20, $E1, $EC, $61, $50
.db $52, $45, $50, $41, $52, $49, $4E, $47
.db $20, $54, $4F, $20, $46, $41, $43, $45
.db $60, $D4, $3F, $65, $43, $4F, $4D, $45
.db $2C, $CE, $20, $A2, $60, $E2, $46, $49
.db $4E, $41, $4C, $20, $54, $45, $53, $54
.db $2D, $2D, $2D, $61, $57, $45, $20, $C7
.db $20, $44, $55, $45, $4C, $21, $65, $E1
.db $E3, $42, $45, $43, $4F, $4D, $45, $60
.db $4D, $55, $43, $48, $20, $53, $54, $52
.db $4F, $4E, $47, $45, $52, $2E, $2E, $2E
.db $61, $E1, $EC, $57, $45, $4C, $4C, $60
.db $50, $52, $45, $50, $41, $52, $45, $44
.db $2E, $61, $49, $40, $4C, $4C, $20, $47
.db $49, $56, $45, $20, $E1, $41, $60, $46
.db $52, $41, $44, $20, $4D, $41, $4E, $54
.db $4C, $45, $20, $41, $53, $20, $41, $61
.db $47, $49, $46, $54, $2E, $20, $49, $54
.db $20, $50, $52, $4F, $54, $45, $43, $54
.db $53, $60, $E1, $FE, $44, $41, $4E, $47
.db $45, $52, $21, $65, $E1, $EC, $F8, $59
.db $45, $54, $60, $52, $45, $41, $44, $59
.db $21, $20, $CE, $20, $47, $4F, $61, $53
.db $54, $49, $4C, $4C, $20, $55, $4E, $44
.db $45, $52, $47, $4F, $20, $4D, $4F, $52
.db $45, $54, $52, $41, $49, $4E, $49, $4E
.db $47, $2E, $65, $49, $20, $E3, $4E, $4F
.db $F7, $20, $54, $4F, $60, $54, $45, $41
.db $43, $48, $20, $E1, $4D, $4F, $52, $45
.db $2E, $65, $41, $4E, $44, $20, $57, $48
.db $4F, $20, $EC, $59, $4F, $55, $3F, $60
.db $46, $49, $4E, $44, $20, $4D, $59, $20
.db $50, $55, $50, $49, $4C, $20, $4E, $4F
.db $41, $48, $61, $49, $4E, $20, $DE, $A7
.db $60, $43, $41, $56, $45, $2E, $C3, $61
.db $48, $49, $4D, $3F, $62, $49, $40, $56
.db $45, $20, $D5, $F7, $60, $49, $20, $C8
.db $20, $54, $45, $4C, $4C, $20, $48, $49
.db $4D, $2E, $61, $42, $52, $49, $4E, $47
.db $20, $48, $49, $4D, $20, $D2, $2E, $65
.db $49, $4E, $20, $DC, $20, $43, $41, $53
.db $45, $2C, $60, $DA, $20, $4E, $4F, $20
.db $50, $4F, $49, $4E, $54, $61, $49, $4E
.db $20, $46, $55, $52, $54, $48, $45, $52
.db $60, $43, $4F, $4E, $56, $45, $52, $53
.db $41, $54, $49, $4F, $4E, $2E, $65, $49
.db $20, $E3, $57, $41, $54, $43, $48, $45
.db $44, $60, $41, $4C, $4C, $20, $E2, $41
.db $43, $54, $49, $4F, $4E, $53, $2E, $61
.db $82, $20, $4D, $45, $20, $4E, $4F, $57
.db $2C, $20, $49, $46, $60, $E1, $44, $41
.db $52, $45, $2E, $65, $49, $40, $4D, $20
.db $42, $55, $54, $20, $4F, $4E, $4C, $59
.db $60, $D4, $40, $53, $20, $53, $48, $41
.db $44, $4F, $57, $21, $61, $45, $56, $45
.db $4E, $20, $49, $46, $20, $E1, $44, $45
.db $46, $45, $41, $54, $4D, $45, $2C, $20
.db $59, $4F, $55, $40, $56, $45, $20, $47
.db $41, $49, $4E, $45, $44, $61, $4E, $4F
.db $F7, $20, $41, $54, $20, $41, $4C, $4C
.db $21, $65, $44, $4F, $4E, $40, $54, $20
.db $47, $4F, $20, $41, $47, $41, $49, $4E
.db $53, $54, $60, $D4, $21, $65, $41, $48
.db $2C, $20, $4D, $59, $20, $43, $48, $49
.db $4C, $44, $52, $45, $4E, $2C, $60, $E1
.db $E3, $44, $FD, $20, $56, $45, $52, $59
.db $61, $57, $45, $4C, $4C, $20, $54, $4F
.db $20, $43, $4F, $4D, $45, $20, $E4, $60
.db $46, $41, $52, $2E, $20, $E1, $EC, $56
.db $45, $52, $59, $61, $4C, $55, $43, $4B
.db $59, $20, $D3, $2E, $20, $44, $4F, $60
.db $E1, $52, $45, $41, $4C, $4C, $59, $20
.db $97, $20, $54, $4F, $61, $4B, $49, $4C
.db $4C, $20, $41, $4E, $20, $4F, $4C, $44
.db $20, $4D, $41, $4E, $3F, $62, $41, $4C
.db $4C, $20, $52, $49, $47, $48, $54, $21
.db $20, $54, $48, $45, $4E, $60, $57, $45
.db $20, $C7, $20, $46, $4F, $52, $47, $45
.db $54, $61, $E4, $41, $53, $20, $41, $4E
.db $20, $55, $4E, $46, $4F, $52, $2D, $60
.db $54, $55, $4E, $41, $54, $45, $20, $4D
.db $49, $53, $54, $41, $4B, $45, $2E, $65
.db $45, $56, $45, $4E, $20, $4E, $4F, $57
.db $20, $E1, $54, $52, $59, $60, $54, $4F
.db $20, $46, $4F, $4F, $4C, $20, $57, $49
.db $54, $48, $20, $4D, $45, $3F, $61, $E1
.db $53, $48, $41, $4C, $4C, $20, $52, $45
.db $50, $45, $4E, $54, $21, $65, $49, $40
.db $4D, $20, $53, $4F, $52, $52, $59, $2C
.db $20, $49, $20, $C8, $60, $E3, $42, $45
.db $45, $4E, $61, $50, $4F, $53, $53, $45
.db $53, $53, $45, $44, $20, $42, $4F, $44
.db $59, $20, $41, $4E, $44, $53, $4F, $55
.db $4C, $20, $42, $59, $20, $45, $56, $49
.db $4C, $2E, $61, $E1, $52, $45, $53, $43
.db $55, $45, $44, $20, $4F, $55, $52, $60
.db $B5, $20, $4A, $55, $53, $54, $20, $49
.db $4E, $20, $DE, $61, $4E, $49, $43, $4B
.db $20, $4F, $46, $20, $9F, $21, $20, $49
.db $46, $60, $E1, $48, $41, $44, $20, $43
.db $4F, $4D, $45, $20, $F6, $61, $4C, $41
.db $54, $45, $52, $2C, $20, $49, $54, $20
.db $4D, $49, $47, $48, $54, $60, $E3, $42
.db $45, $45, $4E, $20, $54, $4F, $4F, $20
.db $4C, $41, $54, $45, $61, $57, $45, $20
.db $41, $4C, $4C, $20, $B4, $60, $FE, $DE
.db $42, $4F, $54, $54, $4F, $4D, $61, $4F
.db $46, $20, $4F, $55, $52, $20, $48, $45
.db $41, $52, $54, $53, $2E, $60, $80, $2C
.db $20, $E2, $B1, $61, $57, $41, $53, $20
.db $4F, $4E, $43, $45, $20, $AF, $20, $4F
.db $46, $60, $9B, $2E, $20, $DE, $44, $41
.db $52, $4B, $61, $89, $20, $48, $41, $53
.db $20, $42, $45, $45, $4E, $60, $44, $45
.db $53, $54, $52, $4F, $59, $45, $44, $2C
.db $20, $D4, $61, $4B, $49, $4C, $4C, $45
.db $44, $2E, $2E, $2E, $20, $C6, $2C, $60
.db $80, $2C, $97, $20, $54, $4F, $61, $41
.db $53, $43, $45, $4E, $44, $20, $E2, $60
.db $B1, $40, $53, $20, $54, $48, $52, $FD
.db $61, $41, $4E, $44, $20, $42, $45, $43
.db $4F, $4D, $45, $20, $DE, $60, $B0, $20
.db $4F, $46, $20, $9B, $3F, $62, $52, $41
.db $49, $53, $45, $20, $DE, $60, $41, $45
.db $52, $4F, $50, $52, $49, $53, $4D, $20
.db $54, $4F, $57, $41, $52, $44, $53, $61
.db $DE, $48, $45, $41, $56, $45, $4E, $53
.db $2D, $20, $E1, $60, $53, $48, $4F, $55
.db $4C, $44, $20, $54, $48, $45, $4E, $20
.db $42, $45, $61, $41, $42, $4C, $45, $20
.db $54, $4F, $20, $53, $45, $45, $20, $DE
.db $60, $44, $41, $52, $4B, $20, $89, $2E
.db $65, $41, $4C, $52, $49, $47, $48, $54
.db $21, $20, $E1, $53, $41, $56, $45, $44
.db $41, $4C, $4C, $20, $4F, $46, $20, $9B
.db $21, $65, $8B, $20, $41, $4C, $4C, $60
.db $54, $48, $41, $4E, $4B, $46, $55, $4C
.db $20, $46, $4F, $52, $20, $E2, $61, $42
.db $52, $41, $56, $45, $20, $44, $45, $45
.db $44, $53, $21, $20, $57, $45, $60, $4C
.db $4F, $56, $45, $20, $E1, $21, $65, $52
.db $45, $50, $4F, $52, $54, $20, $51, $55
.db $49, $43, $4B, $4C, $59, $20, $54, $4F
.db $60, $DE, $AA, $21, $65, $E1, $88, $20
.db $43, $4F, $4D, $45, $60, $DD, $20, $D2
.db $2E, $61, $E4, $49, $53, $20, $4D, $59
.db $20, $41, $52, $45, $41, $2E, $65, $57
.db $45, $4C, $4C, $2C, $49, $46, $20, $44
.db $52, $2E, $AD, $60, $53, $45, $4E, $54
.db $20, $E1, $2C, $49, $20, $47, $55, $45
.db $53, $53, $61, $49, $20, $E3, $54, $4F
.db $20, $4C, $45, $54, $20, $E1, $60, $DD
.db $2E, $65, $54, $48, $45, $59, $20, $53
.db $41, $59, $20, $DC, $60, $DB, $20, $94
.db $4E, $61, $4C, $49, $56, $49, $4E, $47
.db $20, $4F, $4E, $20, $94, $60, $41, $4E
.db $44, $20, $F4, $4E, $20, $4F, $4E, $61
.db $93, $2E, $20, $49, $40, $44, $20, $53
.db $55, $52, $45, $60, $4C, $49, $4B, $45
.db $20, $41, $20, $43, $48, $41, $4E, $43
.db $45, $20, $54, $4F, $61, $54, $41, $4C
.db $4B, $20, $54, $4F, $20, $D5, $FD, $2E
.db $65, $D5, $20, $49, $4E, $54, $45, $4C
.db $4C, $49, $47, $45, $4E, $54, $60, $4D
.db $4F, $4E, $53, $54, $45, $52, $53, $20
.db $E3, $61, $54, $48, $45, $49, $52, $20
.db $4F, $57, $4E, $60, $D9, $2E, $65, $49
.db $20, $53, $4F, $4C, $44, $20, $DC, $60
.db $A6, $20, $46, $4F, $52, $61, $41, $20
.db $E6, $44, $45, $41, $4C, $20, $4F, $46
.db $60, $4D, $FD, $59, $2E, $20, $B3, $2E
.db $65, $4E, $4F, $57, $20, $DC, $20, $4D
.db $59, $20, $53, $54, $41, $46, $46, $60
.db $49, $53, $20, $41, $53, $53, $45, $4D
.db $42, $4C, $45, $44, $61, $49, $20, $43
.db $41, $4E, $20, $42, $45, $47, $49, $4E
.db $2E, $D1, $60, $49, $53, $20, $48, $4F
.db $57, $45, $52, $56, $45, $52, $2C, $20
.db $41, $61, $53, $4C, $49, $47, $48, $54
.db $20, $46, $45, $45, $20, $4F, $46, $20
.db $31, $32, $30, $30, $A1, $20, $49, $4E
.db $56, $4F, $4C, $56, $45, $44, $2E, $61
.db $CD, $20, $50, $41, $59, $3F, $62, $B4
.db $2E, $20, $49, $20, $43, $41, $4E, $60
.db $4E, $4F, $57, $20, $47, $45, $54, $20
.db $54, $4F, $20, $57, $4F, $52, $4B, $2E
.db $61, $C9, $57, $41, $49, $54, $20, $FD
.db $60, $4D, $4F, $4D, $45, $4E, $54, $2E
.db $65, $49, $54, $20, $88, $20, $42, $45
.db $60, $48, $55, $52, $52, $49, $45, $44
.db $21, $20, $C9, $61, $53, $48, $4F, $57
.db $20, $41, $20, $42, $49, $54, $20, $4D
.db $4F, $52, $45, $60, $50, $41, $54, $49
.db $45, $4E, $43, $45, $21, $65, $57, $45
.db $20, $43, $41, $4E, $20, $42, $4F, $41
.db $52, $44, $20, $DE, $60, $AD, $20, $41
.db $4E, $44, $20, $42, $45, $20, $4F, $4E
.db $61, $4F, $55, $52, $20, $57, $41, $59
.db $21, $65, $48, $45, $59, $2C, $20, $42
.db $52, $49, $4E, $47, $20, $DC, $60, $43
.db $41, $54, $20, $4F, $56, $45, $52, $20
.db $D2, $21, $62, $4F, $4F, $48, $48, $2C
.db $48, $41, $2C, $48, $41, $21, $20, $DE
.db $60, $43, $41, $54, $20, $C7, $20, $44
.db $49, $45, $21, $65, $49, $20, $C7, $20
.db $4B, $49, $4C, $4C, $20, $F6, $60, $57
.db $48, $4F, $20, $49, $4E, $54, $45, $52
.db $46, $45, $52, $45, $21, $65, $E1, $53
.db $48, $4F, $55, $4C, $44, $20, $BF, $60
.db $D2, $20, $41, $57, $48, $49, $4C, $45
.db $20, $41, $46, $54, $45, $52, $61, $E2
.db $4C, $4F, $4E, $47, $20, $4A, $4F, $55
.db $52, $4E, $45, $59, $2E, $65, $DC, $20
.db $57, $41, $53, $20, $51, $55, $49, $43
.db $4B, $2D, $4F, $48, $2C, $60, $B7, $2C
.db $E1, $EC, $F8, $61, $DD, $20, $57, $49
.db $54, $48, $60, $D4, $2E, $20, $E1, $48
.db $41, $44, $61, $42, $45, $53, $54, $20
.db $BF, $20, $41, $54, $20, $DE, $60, $49
.db $4E, $4E, $2E, $65, $E1, $46, $45, $4C
.db $4C, $20, $49, $4E, $54, $4F, $20, $41
.db $60, $44, $45, $45, $50, $20, $53, $4C
.db $45, $45, $50, $2E, $63, $E1, $48, $41
.db $44, $20, $41, $20, $42, $41, $44, $60
.db $44, $52, $45, $41, $4D, $2E, $65, $D2
.db $20, $49, $53, $20, $DE, $48, $4F, $4D
.db $45, $60, $4F, $46, $20, $80, $2E, $65
.db $49, $54, $20, $48, $41, $53, $20, $D5
.db $F7, $60, $AC, $2E, $61, $D0, $20, $49
.db $53, $20, $DE, $60, $AA, $2C, $49, $20
.db $57, $4F, $4E, $44, $45, $52, $3F, $65
.db $E1, $E3, $47, $4F, $54, $54, $45, $4E
.db $60, $A9, $20, $4B, $49, $4C, $4C, $45
.db $44, $3F, $61, $43, $4F, $4D, $45, $2C
.db $20, $4C, $45, $54, $40, $53, $20, $54
.db $52, $59, $60, $FD, $20, $4D, $4F, $52
.db $45, $20, $9F, $2E, $65, $D4, $20, $48
.db $41, $53, $20, $44, $49, $45, $44, $2E
.db $60, $80, $20, $41, $43, $43, $4F, $4D
.db $50, $4C, $49, $53, $48, $45, $44, $61
.db $48, $45, $52, $20, $97, $2E, $20, $B2
.db $20, $49, $53, $60, $53, $41, $54, $49
.db $53, $46, $49, $45, $44, $20, $4E, $4F
.db $57, $20, $49, $4E, $61, $48, $45, $41
.db $56, $45, $4E, $2E, $20, $48, $55, $52
.db $52, $59, $20, $54, $4F, $60, $DE, $AA
.db $21, $65, $53, $43, $55, $4D, $21, $20
.db $44, $4F, $20, $4E, $4F, $54, $20, $53
.db $4E, $49, $46, $46, $60, $41, $52, $4F
.db $55, $4E, $44, $20, $49, $4E, $20, $D4
.db $40, $53, $60, $41, $46, $46, $41, $49
.db $52, $53, $21, $20, $4C, $45, $41, $52
.db $4E, $60, $54, $48, $49, $53, $20, $4C
.db $45, $53, $53, $4F, $4E, $20, $57, $45
.db $4C, $4C, $21, $61, $B2, $21, $20, $57
.db $48, $41, $54, $20, $48, $41, $50, $50
.db $2D, $60, $45, $4E, $45, $44, $21, $20
.db $44, $4F, $4E, $40, $54, $20, $44, $49
.db $45, $21, $65, $80, $2C, $4C, $49, $53
.db $54, $45, $4E, $21, $60, $D4, $20, $49
.db $53, $20, $4C, $45, $41, $44, $49, $4E
.db $47, $60, $4F, $55, $52, $20, $B5, $20
.db $54, $4F, $60, $44, $45, $53, $54, $52
.db $55, $43, $54, $49, $4F, $4E, $2E, $20
.db $49, $61, $54, $52, $49, $45, $44, $20
.db $54, $4F, $20, $44, $49, $53, $43, $4F
.db $56, $45, $52, $60, $48, $49, $53, $20
.db $50, $4C, $41, $4E, $53, $2C, $20, $42
.db $55, $54, $20, $49, $60, $43, $FF, $20
.db $4E, $4F, $54, $20, $44, $4F, $20, $4D
.db $55, $43, $48, $60, $42, $59, $20, $4D
.db $59, $53, $45, $4C, $46, $2E, $61, $49
.db $20, $E3, $48, $45, $41, $52, $44, $20
.db $4F, $46, $20, $41, $60, $4D, $41, $4E
.db $20, $57, $49, $54, $48, $20, $E6, $60
.db $53, $54, $52, $45, $4E, $47, $54, $48
.db $20, $E7, $60, $22, $4F, $44, $49, $4E
.db $2E, $22, $20, $4D, $41, $59, $42, $45
.db $20, $54, $48, $45, $61, $54, $57, $4F
.db $20, $4F, $46, $20, $E1, $43, $41, $4E
.db $60, $53, $54, $4F, $50, $20, $D4, $2E
.db $60, $80, $2C, $49, $54, $40, $53, $20
.db $54, $4F, $4F, $20, $4C, $41, $54, $45
.db $60, $46, $4F, $52, $20, $4D, $45, $2E
.db $20, $42, $45, $20, $53, $54, $52, $4F
.db $4E, $47, $2E, $65, $49, $20, $C7, $20
.db $4D, $41, $4B, $45, $20, $53, $55, $52
.db $45, $60, $DC, $20, $92, $60, $44, $49
.db $45, $44, $20, $4E, $4F, $54, $20, $49
.db $4E, $20, $56, $41, $49, $4E, $21, $60
.db $57, $41, $54, $43, $48, $20, $4F, $56
.db $45, $52, $20, $41, $4E, $44, $61, $50
.db $52, $4F, $54, $45, $43, $54, $20, $4D
.db $45, $2C, $20, $B2, $21, $65, $57, $45
.db $20, $C7, $20, $42, $45, $20, $46, $45
.db $4C, $4C, $4F, $57, $60, $54, $52, $41
.db $56, $45, $4C, $45, $52, $53, $2E, $60
.db $49, $40, $4D, $20, $80, $3B, $20, $57
.db $48, $41, $54, $40, $53, $60, $E2, $4E
.db $41, $4D, $45, $3F, $65, $49, $40, $4D
.db $20, $81, $2E, $65, $81, $2C, $20, $E3
.db $E1, $60, $45, $56, $45, $52, $20, $48
.db $45, $41, $52, $44, $20, $4F, $46, $20
.db $41, $60, $4D, $41, $4E, $20, $E7, $4F
.db $44, $49, $4E, $3F, $65, $59, $45, $53
.db $2C, $20, $42, $55, $54, $20, $48, $45
.db $20, $49, $53, $60, $91, $21, $60, $49
.db $46, $20, $48, $45, $20, $44, $52, $49
.db $4E, $4B, $53, $20, $54, $48, $49, $53
.db $60, $4D, $45, $44, $49, $43, $49, $4E
.db $45, $2C, $20, $48, $45, $40, $4C, $4C
.db $20, $42, $45, $61, $4F, $2E, $4B, $2E
.db $2C, $20, $42, $55, $54, $20, $49, $20
.db $88, $60, $4F, $50, $45, $4E, $20, $DE
.db $42, $4F, $54, $54, $4C, $45, $2E, $65
.db $57, $45, $4C, $4C, $2C, $20, $54, $48
.db $45, $4E, $2C, $20, $57, $45, $40, $44
.db $60, $42, $45, $54, $54, $45, $52, $20
.db $47, $4F, $20, $8F, $60, $4F, $44, $49
.db $4E, $20, $54, $4F, $47, $45, $54, $48
.db $45, $52, $2C, $60, $4F, $2E, $4B, $2E
.db $3F, $65, $B3, $20, $46, $4F, $52, $20
.db $53, $41, $56, $49, $4E, $47, $60, $4D
.db $45, $2E, $20, $49, $20, $47, $55, $45
.db $53, $53, $20, $49, $46, $60, $EA, $20
.db $43, $41, $4E, $20, $53, $54, $4F, $50
.db $60, $4D, $45, $2C, $20, $49, $20, $44
.db $4F, $4E, $40, $54, $20, $E3, $61, $4D
.db $55, $43, $48, $20, $48, $4F, $50, $45
.db $20, $4F, $46, $60, $4B, $49, $4C, $4C
.db $49, $4E, $47, $20, $D4, $2C, $60, $44
.db $4F, $20, $49, $3F, $65, $92, $20, $44
.db $49, $45, $44, $60, $54, $52, $59, $49
.db $4E, $47, $20, $54, $4F, $20, $4B, $49
.db $4C, $4C, $60, $D4, $2E, $20, $42, $45
.db $46, $4F, $52, $45, $20, $48, $45, $60
.db $44, $49, $45, $44, $2C, $20, $48, $45
.db $20, $54, $4F, $4C, $44, $20, $4D, $45
.db $61, $54, $4F, $20, $53, $45, $45, $4B
.db $20, $E2, $CA, $2E, $65, $49, $53, $20
.db $DC, $20, $53, $4F, $3F, $20, $57, $45
.db $4C, $4C, $2C, $60, $49, $20, $C8, $20
.db $4E, $4F, $54, $20, $4C, $45, $54, $60
.db $E2, $42, $52, $4F, $54, $48, $45, $52
.db $20, $44, $49, $45, $60, $55, $4E, $41
.db $56, $45, $4E, $47, $45, $44, $2E, $65
.db $57, $48, $59, $20, $44, $49, $44, $20
.db $E1, $54, $52, $59, $20, $54, $4F, $60
.db $4B, $49, $4C, $4C, $20, $EA, $3F, $65
.db $42, $45, $43, $41, $55, $53, $45, $20
.db $EA, $20, $48, $41, $53, $60, $41, $20
.db $4D, $59, $53, $54, $49, $43, $20, $41
.db $58, $45, $2E, $60, $55, $4E, $46, $4F
.db $52, $54, $55, $4E, $41, $54, $45, $4C
.db $59, $2C, $20, $53, $48, $45, $60, $47
.db $4F, $54, $20, $41, $57, $41, $59, $20
.db $FE, $4D, $45, $2E, $61, $41, $4E, $59
.db $48, $4F, $57, $2C, $20, $49, $20, $E3
.db $60, $53, $54, $41, $53, $48, $45, $44
.db $20, $41, $20, $43, $4F, $4D, $50, $41
.db $53, $53, $60, $49, $4E, $20, $4F, $4E
.db $45, $20, $4F, $46, $20, $54, $48, $45
.db $60, $BA, $53, $20, $4F, $46, $20, $E4
.db $61, $43, $41, $56, $45, $2E, $20, $4C
.db $45, $54, $40, $53, $20, $47, $4F, $20
.db $41, $4E, $44, $60, $47, $45, $54, $20
.db $49, $54, $65, $49, $40, $56, $45, $20
.db $52, $45, $43, $45, $49, $56, $45, $44
.db $20, $41, $60, $4C, $45, $54, $54, $45
.db $52, $20, $FE, $DE, $60, $AA, $2E, $20
.db $C9, $60, $52, $45, $41, $44, $20, $49
.db $54, $2E, $65, $4C, $45, $54, $20, $4D
.db $45, $20, $53, $45, $45, $20, $49, $54
.db $2E, $2E, $2E, $2E, $2E, $60, $4F, $55
.db $52, $20, $44, $55, $54, $59, $20, $49
.db $53, $20, $43, $4C, $45, $41, $52, $3B
.db $60, $57, $45, $20, $C8, $20, $50, $52
.db $4F, $54, $45, $43, $54, $60, $DE, $B8
.db $20, $4F, $46, $20, $54, $48, $45, $61
.db $9B, $20, $9C, $20, $FE, $60, $45, $56
.db $49, $4C, $2E, $60, $57, $45, $20, $C8
.db $20, $46, $49, $52, $53, $54, $20, $47
.db $4F, $60, $54, $4F, $20, $DE, $95, $61
.db $46, $4F, $52, $45, $53, $54, $53, $20
.db $41, $4E, $44, $20, $46, $49, $4E, $44
.db $60, $44, $52, $2E, $AD, $2E, $20, $57
.db $45, $20, $43, $41, $4E, $60, $55, $53
.db $45, $20, $41, $4E, $20, $55, $4E, $44
.db $45, $52, $47, $52, $4F, $55, $4E, $44
.db $60, $BA, $20, $FE, $41, $61, $4D, $41
.db $4E, $48, $4F, $4C, $45, $20, $49, $4E
.db $20, $54, $48, $45, $60, $98, $2E, $65
.db $57, $48, $45, $4E, $20, $81, $20, $45
.db $41, $54, $53, $20, $54, $48, $45, $60
.db $4E, $55, $54, $53, $20, $4F, $46, $20
.db $D7, $2C, $20, $48, $45, $60, $42, $45
.db $43, $4F, $4D, $45, $53, $20, $43, $4C
.db $4F, $54, $48, $45, $44, $20, $49, $4E
.db $60, $46, $4C, $41, $4D, $45, $20, $41
.db $4E, $44, $20, $45, $4D, $49, $54, $53
.db $20, $41, $61, $42, $4C, $49, $4E, $44
.db $49, $4E, $47, $20, $4C, $49, $47, $48
.db $54, $2E, $65, $57, $48, $45, $4E, $20
.db $48, $45, $20, $49, $53, $20, $56, $49
.db $53, $49, $42, $4C, $45, $60, $41, $47
.db $41, $49, $4E, $2C, $20, $48, $45, $20
.db $48, $41, $53, $20, $42, $45, $45, $4E
.db $60, $54, $52, $41, $4E, $53, $46, $4F
.db $52, $4D, $45, $44, $20, $49, $4E, $54
.db $4F, $61, $41, $20, $42, $45, $41, $55
.db $54, $49, $46, $55, $4C, $60, $57, $49
.db $4E, $47, $45, $44, $20, $42, $45, $41
.db $53, $54, $2E, $60, $81, $20, $46, $4C
.db $41, $50, $53, $20, $48, $49, $53, $60
.db $57, $49, $4E, $47, $53, $20, $50, $4C
.db $4F, $55, $44, $4C, $59, $2E, $65, $60
.db $20, $20, $20, $20, $20, $80, $63, $60
.db $20, $20, $20, $20, $20, $4F, $44, $49
.db $4E, $63, $60, $20, $20, $20, $20, $20
.db $4E, $4F, $41, $48, $63, $60, $20, $20
.db $20, $20, $20, $41, $4E, $44, $20, $81
.db $63, $45, $56, $45, $4E, $20, $54, $48
.db $4F, $55, $47, $48, $20, $54, $48, $45
.db $60, $4D, $45, $4D, $4F, $52, $49, $45
.db $53, $20, $4F, $46, $20, $45, $56, $49
.db $4C, $60, $46, $41, $44, $45, $20, $41
.db $57, $41, $59, $2C, $20, $54, $48, $45
.db $49, $52, $60, $4E, $41, $4D, $45, $53
.db $20, $C7, $20, $42, $45, $20, $4B, $45
.db $50, $54, $63, $5F, $49, $4E, $20, $DE
.db $48, $45, $41, $52, $54, $53, $20, $4F
.db $46, $60, $DE, $50, $45, $4F, $50, $4C
.db $45, $20, $4F, $46, $20, $DE, $60, $41
.db $4C, $47, $4F, $4C, $20, $46, $4F, $52
.db $45, $56, $45, $52, $21, $21, $21, $63
.db $81

LABEL_BA82:
.db	$BB, $86, $BB, $8B, $BB, $92, $BB
.db $9C, $BB, $A3, $BB, $A8, $BB, $AF, $BB
.db $B8, $BB, $BF, $BB, $C6, $BB, $CD, $BB
.db $D5, $BB, $E1, $BB, $E7, $BB, $F1, $BB
.db $F6, $BB, $00, $BC, $10, $BC, $1B, $BC
.db $23, $BC, $2B, $BC, $32, $BC, $38, $BC
.db $3D, $BC, $47, $BC, $50, $BC, $57, $BC
.db $5D, $BC, $64, $BC, $6A, $BC, $72, $BC
.db $77, $BC, $80, $BC, $88, $BC, $8D, $BC
.db $96, $BC, $A5, $BC, $AC, $BC, $B9, $BC
.db $C0, $BC, $C8, $BC, $D1, $BC, $DA, $BC
.db $DF, $BC, $E7, $BC, $EE, $BC, $F6, $BC
.db $FB, $BC, $01, $BD, $08, $BD, $0D, $BD
.db $14, $BD, $1E, $BD, $24, $BD, $2B, $BD
.db $31, $BD, $39, $BD, $3E, $BD, $46, $BD
.db $51, $BD, $59, $BD, $64, $BD, $69, $BD
.db $6E, $BD, $73, $BD, $79, $BD, $84, $BD
.db $90, $BD, $97, $BD, $A3, $BD, $AA, $BD
.db $AF, $BD, $B4, $BD, $BC, $BD, $C1, $BD
.db $CA, $BD, $D1, $BD, $DA, $BD, $E3, $BD
.db $E9, $BD, $EF, $BD, $F5, $BD, $FA, $BD
.db $01, $BE, $08, $BE, $0D, $BE, $1E, $BE
.db $25, $BE, $2D, $BE, $36, $BE, $3F, $BE
.db $49, $BE, $4E, $BE, $56, $BE, $5B, $BE
.db $63, $BE, $6C, $BE, $71, $BE, $77, $BE
.db $7D, $BE, $83, $BE, $8C, $BE, $93, $BE
.db $9A, $BE, $A4, $BE, $AC, $BE, $B3, $BE
.db $C4, $BE, $C9, $BE, $D1, $BE, $D8, $BE
.db $DE, $BE, $EC, $BE, $F6, $BE, $FC, $BE
.db $01, $BF, $0A, $BF, $11, $BF, $15, $BF
.db $1B, $BF, $20, $BF, $26, $BF, $2B, $BF
.db $33, $BF, $3A, $BF, $3E, $BF, $44, $BF
.db $41, $4C, $49, $53, $65, $4D, $59, $41
.db $55, $65, $41, $54, $54, $41, $43, $4B
.db $65, $45, $46, $46, $45, $43, $54, $49
.db $56, $45, $65, $4D, $41, $47, $49, $43
.db $20, $65, $57, $41, $4C, $4C, $65, $48
.db $45, $41, $4C, $45, $44, $65, $44, $45
.db $46, $4C, $45, $43, $54, $53, $65, $43
.db $41, $4E, $4E, $4F, $54, $65, $43, $41
.db $53, $54, $4C, $45, $65, $48, $41, $50
.db $53, $42, $59, $65, $57, $45, $20, $41
.db $52, $45, $20, $65, $48, $45, $41, $44

.db $49, $4E, $47, $20, $46, $4F, $52, $65
.db $43, $41, $52, $52, $59, $65, $52, $45
.db $53, $55, $52, $52, $45, $43, $54, $65
.db $53, $41, $56, $45, $65, $43, $55, $52
.db $52, $45, $4E, $54, $4C, $59, $65, $54
.db $55, $52, $4E, $45, $44, $20, $54, $4F
.db $20, $53, $54, $4F, $4E, $45, $65, $4D
.db $59, $20, $42, $52, $4F, $54, $48, $45
.db $52, $65, $44, $45, $5A, $4F, $52, $49
.db $53, $65, $4D, $4F, $54, $41, $56, $49
.db $41, $65, $47, $4F, $54, $48, $49, $43
.db $65, $53, $43, $49, $4F, $4E, $65, $57
.db $49, $53, $48, $65, $53, $50, $41, $43
.db $45, $50, $4F, $52, $54, $65, $50, $41
.db $53, $53, $50, $4F, $52, $54, $65, $50
.db $4C, $41, $4E, $45, $54, $65, $41, $4C
.db $47, $4F, $4C, $65, $53, $59, $53, $54
.db $45, $4D, $65, $54, $4F, $57, $45, $52
.db $65, $56, $49, $4C, $4C, $41, $47, $45
.db $65, $54, $49, $4D, $45, $65, $52, $4F
.db $41, $44, $50, $41, $53, $53, $65, $4D
.db $45, $53, $45, $54, $41, $53, $65, $50
.db $41, $53, $53, $65, $41, $4E, $54, $20
.db $4C, $49, $4F, $4E, $65, $53, $4F, $4F
.db $54, $48, $49, $4E, $47, $20, $46, $4C
.db $55, $54, $45, $65, $53, $45, $43, $52
.db $45, $54, $65, $4C, $41, $43, $4F, $4E
.db $49, $41, $4E, $20, $50, $4F, $54, $65
.db $4D, $41, $48, $41, $52, $55, $65, $42
.db $4F, $52, $54, $45, $56, $4F, $65, $59
.db $4F, $55, $52, $53, $45, $4C, $46, $65
.db $47, $4F, $56, $45, $52, $4E, $4F, $52

.db $65, $48, $49, $4C, $4C, $65, $53, $54
.db $52, $41, $4E, $47, $45, $65, $4C, $55
.db $56, $45, $4E, $4F, $65, $48, $4F, $57
.db $45, $56, $45, $52, $65, $4B, $49, $4E
.db $47, $65, $51, $55, $45, $45, $4E, $65
.db $46, $41, $54, $48, $45, $52, $65, $4E
.db $45, $52, $4F, $65, $54, $48, $41, $4E
.db $4B, $53, $65, $54, $48, $41, $4E, $4B
.db $20, $59, $4F, $55, $65, $57, $4F, $52
.db $4C, $44, $65, $53, $48, $49, $45, $4C
.db $44, $65, $49, $20, $53, $45, $45, $65
.db $50, $4C, $41, $4E, $45, $54, $53, $65
.db $54, $4F, $57, $4E, $65, $50, $41, $53
.db $53, $41, $47, $45, $65, $53, $4F, $4F
.db $54, $48, $53, $41, $59, $45, $52, $65
.db $4C, $41, $43, $4F, $4E, $49, $41

LABEL_BD58:
.db	$65
.db $4C, $41, $42, $4F, $52, $41, $54, $4F
.db $52, $59, $65, $4B, $4E, $4F, $57, $65
.db $52, $45, $53, $54, $65, $42, $41, $59
.db $41, $65, $4D, $41, $4C, $41, $59, $65
.db $42, $41, $59, $41, $20, $4D, $41, $4C
.db $41, $59, $65, $44, $4F, $20, $59, $4F
.db $55, $20, $4B, $4E, $4F, $57, $65, $46
.db $4F, $52, $45, $53, $54, $65, $44, $4F
.db $20, $59, $4F, $55, $20, $48, $41, $56
.db $45, $65, $44, $4F, $20, $59, $4F, $55
.db $65, $57, $49, $4C, $4C, $65, $4D, $55
.db $53, $54, $65, $50, $4C, $45, $41, $53
.db $45, $20, $65, $48, $45, $4C, $50, $65
.db $59, $4F, $55, $20, $57, $49, $4C, $4C
.db $65, $49, $20, $57, $49, $4C, $4C, $65
.db $57, $49, $4C, $4C, $20, $59, $4F, $55
.db $65, $59, $4F, $55, $20, $4D, $55, $53
.db $54, $65, $50, $41, $4C, $4D, $41, $65
.db $57, $48, $45, $52, $45, $65, $54, $48
.db $45, $52, $45, $65, $48, $45, $52, $45
.db $65, $49, $4E, $44, $45, $45, $44, $65
.db $4C, $41, $53, $53, $49, $43, $65, $53
.db $4F, $4D, $45, $65, $52, $45, $53, $49
.db $44, $45, $4E, $54, $49, $41, $4C, $20
.db $41, $52

LABEL_BE1B:
.db	$45, $41, $65, $4C, $41, $45
.db $52, $4D, $41, $65, $44, $55, $4E, $47
.db $45, $4F, $4E, $65, $4C, $41, $4E, $47
.db $55, $41, $47, $45

LABEL_BE35:
.db	$65, $54, $48, $45
.db $52, $45, $20, $49, $53, $65, $54, $48
.db $45, $52, $45, $20

LABEL_BE45:
.db	$41, $52, $45, $65
.db $54, $48, $41, $54, $65, $54, $48, $52
.db $4F, $55, $47, $48, $65, $54, $48, $45
.db $20, $65, $50, $52, $45

LABEL_BE5E:
.db	$53, $45, $4E
.db $54, $65, $57, $45, $4C, $43, $4F, $4D
.db $45, $20, $65, $59, $4F, $55

LABEL_BE6F:
.db	$20, $65
.db $59, $4F, $55, $52, $20, $65, $48, $41
.db $56, $45, $20, $65, $54, $48, $49, $53
.db $20

LABEL_BE82:
.db	$65, $4D, $4F, $55, $4E, $54, $41
.db $49, $4E, $65, $47, $52, $45, $41, $54
.db $20, $65, $4E, $41, $4D, $45, $44, $20
.db $65, $53, $50, $41, $43, $45, $53, $48
.db $49, $50, $65, $50, $41, $4C, $4D, $41
.db $4E, $53, $65, $4D, $45, $44, $55, $53
.db $41, $65, $44, $4F, $4E, $40, $54, $20
.db $42, $45, $20, $41, $20, $46, $4F, $4F
.db $4C, $21, $65, $41, $52, $45, $20, $65
.db $43, $41, $52, $45, $46, $55, $4C, $65
.db $44, $45, $4C, $45, $54, $45, $65, $4D
.db $41, $47, $49, $43, $65, $53, $41, $42
.db $52, $55, $53, $20, $43, $41, $42, $52
.db $55, $53, $65, $54, $52, $45, $41, $53
.db $55, $52, $45, $20, $65, $43, $48, $45
.db $53, $54, $65, $4D, $4F, $56, $45, $65
.db $44, $45, $5A, $4F, $52, $49, $41, $4E
.db $65, $45, $4D, $42, $41, $52, $4B, $65
.db $41, $4E, $59, $65, $54, $48, $49, $4E
.db $47, $65, $4E, $4F, $54, $20, $65, $57
.db $41, $4E, $54, $20, $65, $47, $41, $4D
.db $45, $65, $46, $41, $43, $49, $4E, $47
.db $20, $65, $53, $45, $4C, $45, $43, $54
.db $65, $4F, $4E, $45, $65, $46, $52, $4F
.db $4D, $20, $65, $4F, $55, $4C, $44, $65


.BANK 3
.ORG $0000
Bank03:

; Data from C000 to FFFF (16384 bytes)
.include "banks\bank03.asm"


.BANK 4
.ORG $0000
Bank04:

; Data from 10000 to 13FFF (16384 bytes)
.include "banks\bank04.asm"


.BANK 5
.ORG $0000
Bank05:

; Data from 14000 to 17FFF (16384 bytes)
.include "banks\bank05.asm"


.BANK 6
.ORG $0000
Bank06:

; Data from 18000 to 1BFFF (16384 bytes)
.include "banks\bank06.asm"


.BANK 7
.ORG $0000
Bank07:

; Data from 1C000 to 1FFFF (16384 bytes)
.include "banks\bank07.asm"


.BANK 8
.ORG $0000
Bank08:

; Data from 20000 to 23FFF (16384 bytes)
.include "banks\bank08.asm"


.BANK 9
.ORG $0000
Bank09:

; Data from 24000 to 27FFF (16384 bytes)
.include "banks\bank09.asm"


.BANK 10
.ORG $0000
Bank10:

; Data from 28000 to 2BFFF (16384 bytes)
.include "banks\bank10.asm"


.BANK 11
.ORG $0000
Bank11:

; Data from 2C000 to 2FFFF (16384 bytes)
.include "banks\bank11.asm"


.BANK 12
.ORG $0000
Bank12:

; Data from 30000 to 33FFF (16384 bytes)
.include "banks\bank12.asm"


.BANK 13
.ORG $0000
Bank13:

; Data from 34000 to 37FFF (16384 bytes)
.include "banks\bank13.asm"


.BANK 14
.ORG $0000
Bank14:

; Data from 38000 to 3BFFF (16384 bytes)
.include "banks\bank14.asm"


.BANK 15
.ORG $0000
Bank15:

; Data from 3C000 to 3FFFF (16384 bytes)
.include "banks\bank15.asm"


.BANK 16
.ORG $0000
Bank16:

; Data from 40000 to 43FFF (16384 bytes)
.include "banks\bank16.asm"


.BANK 17
.ORG $0000
Bank17:

; Data from 44000 to 47FFF (16384 bytes)
.include "banks\bank17.asm"


.BANK 18
.ORG $0000
Bank18:

; Data from 48000 to 4BFFF (16384 bytes)
.include "banks\bank18.asm"


.BANK 19
.ORG $0000
Bank19:

; Data from 4C000 to 4FFFF (16384 bytes)
.include "banks\bank19.asm"


.BANK 20
.ORG $0000
Bank20:

; Data from 50000 to 53FFF (16384 bytes)
.include "banks\bank20.asm"


.BANK 21
.ORG $0000
Bank21:

; Data from 54000 to 57FFF (16384 bytes)
.include "banks\bank21.asm"


.BANK 22
.ORG $0000
Bank22:

; Data from 58000 to 5BFFF (16384 bytes)
.include "banks\bank22.asm"


.BANK 23
.ORG $0000
Bank23:

; Data from 5C000 to 5FFFF (16384 bytes)
.include "banks\bank23.asm"


.BANK 24
.ORG $0000
Bank24:

; Data from 60000 to 63FFF (16384 bytes)
.include "banks\bank24.asm"


.BANK 25
.ORG $0000
Bank25:

; Data from 64000 to 67FFF (16384 bytes)
.include "banks\bank25.asm"


.BANK 26
.ORG $0000
Bank26:

; Data from 68000 to 6BFFF (16384 bytes)
.include "banks\bank26.asm"


.BANK 27
.ORG $0000
Bank27:

; Data from 6C000 to 6FFFF (16384 bytes)
.include "banks\bank27.asm"


.BANK 28
.ORG $0000
Bank28:

; Data from 70000 to 73FFF (16384 bytes)
.include "banks\bank28.asm"


.BANK 29
.ORG $0000
Bank29:

; Data from 74000 to 77FFF (16384 bytes)
.include "banks\bank29.asm"


.BANK 30
.ORG $0000
Bank30:

; Data from 78000 to 7BFFF (16384 bytes)
.include "banks\bank30.asm"


.BANK 31
.ORG $0000
Bank31:

; Data from 7C000 to 7FFFF (16384 bytes)
.include "banks\bank31.asm"

