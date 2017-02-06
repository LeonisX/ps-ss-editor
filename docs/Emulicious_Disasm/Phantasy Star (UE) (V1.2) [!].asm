; This disassembly was created using Emulicious (http://www.emulicious.net)
.MEMORYMAP
SLOTSIZE $7FF0
SLOT 0 $0000
SLOTSIZE $10
SLOT 1 $7FF0
SLOTSIZE $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME
.ROMBANKMAP
BANKSTOTAL 32
BANKSIZE $7FF0
BANKS 1
BANKSIZE $10
BANKS 1
BANKSIZE $4000
BANKS 30
.ENDRO

.enum $C000 export
_RAM_C000_ db
_RAM_C001_ db
_RAM_C002_ db
_RAM_C003_ db
_RAM_C004_ db
_RAM_C005_ db
_RAM_C006_ db
.ende

.enum $C008 export
_RAM_C008_ db
_RAM_C009_ db
_RAM_C00A_ db
_RAM_C00B_ db
_RAM_C00C_ db
.ende

.enum $C00E export
_RAM_C00E_ db
.ende

.enum $C018 export
_RAM_C018_ db
.ende

.enum $C06E export
_RAM_C06E_ dsb $9
.ende

.enum $C08E export
_RAM_C08E_ db
_RAM_C08F_ db
.ende

.enum $C09C export
_RAM_C09C_ db
.ende

.enum $C0AE export
_RAM_C0AE_ db
_RAM_C0AF_ db
.ende

.enum $C0BC export
_RAM_C0BC_ db
.ende

.enum $C0CE export
_RAM_C0CE_ db
.ende

.enum $C0EE export
_RAM_C0EE_ db
.ende

.enum $C10E export
_RAM_C10E_ db
.ende

.enum $C12E export
_RAM_C12E_ db
.ende

.enum $C14E export
_RAM_C14E_ dsb $9
.ende

.enum $C158 export
_RAM_C158_ db
.ende

.enum $C16E export
_RAM_C16E_ dsb $9
.ende

.enum $C18E export
_RAM_C18E_ db
.ende

.enum $C1AE export
_RAM_C1AE_ db
.ende

.enum $C1CE export
_RAM_C1CE_ db
.ende

.enum $C200 export
_RAM_C200_ db
_RAM_C201_ db
_RAM_C202_ db
.ende

.enum $C204 export
_RAM_C204_ db
_RAM_C205_ db
.ende

.enum $C208 export
_RAM_C208_ db
.ende

.enum $C20A export
_RAM_C20A_ db
_RAM_C20B_ db
_RAM_C20C_ dw
_RAM_C20E_ dw
.ende

.enum $C212 export
_RAM_C212_ db
_RAM_C213_ dw
.ende

.enum $C217 export
_RAM_C217_ dw
_RAM_C219_ dw
_RAM_C21B_ dw
_RAM_C21D_ db
.ende

.enum $C220 export
_RAM_C220_ dsb $7
_RAM_C227_ db
.ende

.enum $C22A export
_RAM_C22A_ dsb $6
_RAM_C230_ db
.ende

.enum $C238 export
_RAM_C238_ dsb $3
_RAM_C23B_ dsb $5
_RAM_C240_ dw
_RAM_C242_ db
.ende

.enum $C248 export
_RAM_C248_ db
_RAM_C249_ db
.ende

.enum $C24D export
_RAM_C24D_ db
.ende

.enum $C250 export
_RAM_C250_ db
_RAM_C251_ dsb $7
_RAM_C258_ dsb $8
_RAM_C260_ dw
_RAM_C262_ db
_RAM_C263_ db
_RAM_C264_ db
_RAM_C265_ db
.ende

.enum $C267 export
_RAM_C267_ db
_RAM_C268_ db
_RAM_C269_ dw
_RAM_C26B_ db
_RAM_C26C_ db
_RAM_C26D_ db
_RAM_C26E_ db
_RAM_C26F_ dsb $4
_RAM_C273_ dw
.ende

.enum $C277 export
_RAM_C277_ dw
.ende

.enum $C27B export
_RAM_C27B_ dw
.ende

.enum $C27F export
_RAM_C27F_ dw
.ende

.enum $C283 export
_RAM_C283_ dw
.ende

.enum $C287 export
_RAM_C287_ dw
_RAM_C289_ db
_RAM_C28A_ db
.ende

.enum $C299 export
_RAM_C299_ dw
_RAM_C29B_ dw
_RAM_C29D_ db
_RAM_C29E_ db
_RAM_C29F_ db
_RAM_C2A0_ db
.ende

.enum $C2AB export
_RAM_C2AB_ db
_RAM_C2AC_ dsb $10
_RAM_C2BC_ dw
_RAM_C2BE_ db
.ende

.enum $C2C0 export
_RAM_C2C0_ dw
_RAM_C2C2_ db
.ende

.enum $C2C4 export
_RAM_C2C4_ db
_RAM_C2C5_ dw
_RAM_C2C7_ db
_RAM_C2C8_ db
.ende

.enum $C2D0 export
_RAM_C2D0_ dw
_RAM_C2D2_ db
_RAM_C2D3_ db
_RAM_C2D4_ db
_RAM_C2D5_ db
_RAM_C2D6_ db
_RAM_C2D7_ db
_RAM_C2D8_ db
_RAM_C2D9_ dw
_RAM_C2DB_ db
_RAM_C2DC_ db
_RAM_C2DD_ dw
_RAM_C2DF_ db
_RAM_C2E0_ db
_RAM_C2E1_ dw
_RAM_C2E3_ db
_RAM_C2E4_ db
_RAM_C2E5_ db
_RAM_C2E6_ db
_RAM_C2E7_ db
_RAM_C2E8_ db
_RAM_C2E9_ db
_RAM_C2EA_ db
_RAM_C2EB_ db
_RAM_C2EC_ db
_RAM_C2ED_ db
_RAM_C2EE_ db
_RAM_C2EF_ db
_RAM_C2F0_ db
_RAM_C2F1_ db
_RAM_C2F2_ db
_RAM_C2F3_ db
_RAM_C2F4_ db
_RAM_C2F5_ db
.ende

.enum $C300 export
_RAM_C300_ db
_RAM_C301_ db
_RAM_C302_ db
.ende

.enum $C304 export
_RAM_C304_ db
_RAM_C305_ db
_RAM_C306_ db
_RAM_C307_ db
_RAM_C308_ db
_RAM_C309_ db
_RAM_C30A_ db
.ende

.enum $C30C export
_RAM_C30C_ db
_RAM_C30D_ db
_RAM_C30E_ db
.ende

.enum $C310 export
_RAM_C310_ db
_RAM_C311_ dw
_RAM_C313_ dw
_RAM_C315_ db
_RAM_C316_ db
_RAM_C317_ db
.ende

.enum $C400 export
_RAM_C400_ db
.ende

.enum $C402 export
_RAM_C402_ db
.ende

.enum $C408 export
_RAM_C408_ db
.ende

.enum $C40A export
_RAM_C40A_ db
.ende

.enum $C40E export
_RAM_C40E_ db
_RAM_C40F_ db
_RAM_C410_ dw
.ende

.enum $C420 export
_RAM_C420_ db
.ende

.enum $C42C export
_RAM_C42C_ db
.ende

.enum $C430 export
_RAM_C430_ db
_RAM_C431_ db
.ende

.enum $C43B export
_RAM_C43B_ db
.ende

.enum $C440 export
_RAM_C440_ db
_RAM_C441_ db
.ende

.enum $C448 export
_RAM_C448_ db
.ende

.enum $C4C0 export
_RAM_C4C0_ db
_RAM_C4C1_ db
_RAM_C4C2_ dsb $16
.ende

.enum $C4E0 export
_RAM_C4E0_ dw
_RAM_C4E2_ db
.ende

.enum $C4F0 export
_RAM_C4F0_ db
.ende

.enum $C501 export
_RAM_C501_ db
_RAM_C502_ db
_RAM_C503_ db
_RAM_C504_ db
.ende

.enum $C506 export
_RAM_C506_ db
_RAM_C507_ db
_RAM_C508_ db
_RAM_C509_ db
_RAM_C50A_ db
.ende

.enum $C511 export
_RAM_C511_ db
.ende

.enum $C516 export
_RAM_C516_ db
_RAM_C517_ db
.ende

.enum $C600 export
_RAM_C600_ db
.ende

.enum $C604 export
_RAM_C604_ db
.ende

.enum $C700 export
_RAM_C700_ dsb $21
_RAM_C721_ dsb $5
.ende

.enum $C778 export
_RAM_C778_ dsb $5
.ende

.enum $C780 export
_RAM_C780_ db
_RAM_C781_ dsb $3
_RAM_C784_ db
_RAM_C785_ db
_RAM_C786_ dw
_RAM_C788_ db
_RAM_C789_ db
.ende

.enum $C800 export
_RAM_C800_ db
_RAM_C801_ dsb $9
_RAM_C80A_ db
.ende

.enum $C80F export
_RAM_C80F_ db
_RAM_C810_ db
.ende

.enum $C812 export
_RAM_C812_ db
.ende

.enum $C880 export
_RAM_C880_ db
.ende

.enum $C88A export
_RAM_C88A_ db
.ende

.enum $C88D export
_RAM_C88D_ db
_RAM_C88E_ db
.ende

.enum $C894 export
_RAM_C894_ db
_RAM_C895_ db
_RAM_C896_ db
_RAM_C897_ db
_RAM_C898_ db
.ende

.enum $C8A0 export
_RAM_C8A0_ db
.ende

.enum $C900 export
_RAM_C900_ dsb $40
_RAM_C940_ dsb $40
_RAM_C980_ db
.ende

.enum $CB00 export
_RAM_CB00_ db
.ende

.enum $CBC3 export
_RAM_CBC3_ db
.ende

.enum $CC00 export
_RAM_CC00_ db
.ende

.enum $CD00 export
_RAM_CD00_ db
.ende

.enum $CE00 export
_RAM_CE00_ db
.ende

.enum $CF00 export
_RAM_CF00_ db
.ende

.enum $D000 export
_RAM_D000_ db
_RAM_D001_ db
.ende

.enum $D0C0 export
_RAM_D0C0_ db
.ende

.enum $D0D4 export
_RAM_D0D4_ dsb $16
.ende

.enum $D100 export
_RAM_D100_ db
.ende

.enum $D107 export
_RAM_D107_ db
.ende

.enum $D114 export
_RAM_D114_ db
.ende

.enum $D137 export
_RAM_D137_ db
.ende

.enum $D146 export
_RAM_D146_ db
.ende

.enum $D150 export
_RAM_D150_ dsb $6
.ende

.enum $D16A export
_RAM_D16A_ dsb $6
.ende

.enum $D176 export
_RAM_D176_ db
.ende

.enum $D19A export
_RAM_D19A_ db
.ende

.enum $D1D4 export
_RAM_D1D4_ dsb $18
.ende

.enum $D21C export
_RAM_D21C_ dsb $8
.ende

.enum $D300 export
_RAM_D300_ dsb $a
_RAM_D30A_ db
.ende

.enum $D700 export
_RAM_D700_ db
.ende

.enum $D724 export
_RAM_D724_ db
.ende

.enum $D8A4 export
_RAM_D8A4_ db
.ende

.enum $D928 export
_RAM_D928_ db
.ende

.enum $D978 export
_RAM_D978_ db
.ende

.enum $DA18 export
_RAM_DA18_ db
.ende

.enum $DB08 export
_RAM_DB08_ db
.ende

.enum $DB74 export
_RAM_DB74_ db
.ende

.enum $DC04 export
_RAM_DC04_ db
.ende

.enum $DDA8 export
_RAM_DDA8_ db
.ende

.enum $DE14 export
_RAM_DE14_ db
.ende

.enum $DE64 export
_RAM_DE64_ db
.ende

.enum $FF80 export
_RAM_FF80_ db
.ende

.enum $FFFC export
_RAM_FFFC_ db
.ende

.enum $FFFE export
_RAM_FFFE_ db
_RAM_FFFF_ db
.ende

; Ports
.define Port_PSG $7F
.define Port_VDPData $BE
.define Port_VDPAddress $BF

; Input Ports
.define Port_VDPStatus $BF
.define Port_IOPort1 $DC
.define Port_IOPort2 $DD

.BANK 0 SLOT 0
.ORG $0000

_LABEL_0_:			; Start
	di			; Disables the Interrupts (both mode 1 and mode 2).
	im 1			; Set the interrupt mode 1
	ld sp, $CB00		; Set stack address
	jr _LABEL_84_		; Relative jumps to _LABEL_84_ (MainSetup)

_LABEL_8_:
	ld a, e
	out (Port_VDPAddress), a
	ld a, d
	out (Port_VDPAddress), a
	ret

; Data from F to 10 (2 bytes)
.db $FF $FF

; Data from 11 to 12 (2 bytes)
_DATA_11_:
.db $FF $FF

; Data from 13 to 37 (37 bytes)
_DATA_13_:
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF

; Explait of these data:
; _RST_10H:
; .db	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
; _RST_18H:
; .db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
; _RST_20H:
; .db	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
; _RST_28H:
; .db	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
; _RST_30H:
; .db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; Vertical Interrupt
; _RST_38H:
; _IRQ_HANDLER:
_LABEL_38_:
	push af
	in a, (Port_VDPStatus)
	jp _LABEL_FB_

_LABEL_3E_:
	ld a, (_RAM_C201_)
	and $BF
	jr +

_LABEL_45_:
	ld a, (_RAM_C201_)
	or $40
+:
	ld (_RAM_C201_), a
	ld e, a
	ld d, $81
	rst $08	; _LABEL_8_
	ret

_LABEL_52_:
	ld (_RAM_C208_), a
-:
	ld a, (_RAM_C208_)
	or a
	jr nz, -
	ret

; Data from 5C to 63 (8 bytes)
.db $FF $FF $FF $FF $FF $FF $FF $FF

; Data from 64 to 65 (2 bytes)
_DATA_64_:
.db $FF $FF

; We get here after the pause button is pressed
; _NMI_HANDLER:
_LABEL_66_:
	push af
	ld a, (_RAM_C202_)
	cp $05
	jr z, +
	cp $09
	jr z, +
	cp $0B
	jr z, +
	cp $0D
	jr nz, ++
+:
	ld a, (_RAM_C212_)
	cpl
	ld (_RAM_C212_), a
++:
	pop af
	retn

; MainSetup
_LABEL_84_:
	di			; Disable Interrupts (both mode 1 and mode 2).
	ld sp, $CB00		; Set stack address
	ld hl, _RAM_FFFC_	; Address of Memory Control Register
	ld (hl), $80		; Enable ROM banking for ROM bank 2 (Slot 3)
	inc hl
	ld (hl), $00		; Page 0 - ROM bank 0
	inc hl
	ld (hl), $01		; Page 1 - ROM bank 1
	inc hl
	ld (hl), $02		; Page 2 - ROM bank 2
; Clear work RAM
	ld hl, _RAM_C000_
	ld de, _RAM_C000_ + 1
	ld bc, $1FFF
	ld (hl), l		; clear byte in $C000
	ldir			; then do the rest (until bc = 0)
	call _LABEL_2ED_
	call _LABEL_3A4_
	call _LABEL_318_
	call _LABEL_7DA_
	ei			; Enable Interrupts
; MainGameLoop:
-:
	ld hl, _RAM_C202_
	ld a, (hl)
	and $1F
	ld hl, _DATA_BE_
	call _LABEL_E6_
	jp -		; jp MainGameLoop

; Jump Table from BE to E5 (20 entries, indexed by _RAM_C202_)
_DATA_BE_:
.dw _LABEL_5D0_ _LABEL_5D0_ _LABEL_74D_ _LABEL_5D6_ _LABEL_A5C_ _LABEL_86F_ _LABEL_B07_ _LABEL_B07_
.dw _LABEL_B6A_ _LABEL_B08_ _LABEL_F7D_ _LABEL_F3C_ _LABEL_3C52_ _LABEL_3B9C_ _LABEL_ED7_ _LABEL_E8B_
.dw _LABEL_4034_ _LABEL_3EB9_ _LABEL_467C_ _LABEL_467C_

_LABEL_E6_:
	add a, a
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

_LABEL_F1_:
	call _LABEL_2F5_
-:
	ld a, (_RAM_C212_)
	or a
	ret z
	jr -

; VBlank:
_LABEL_FB_:
	push bc
	push de
	push hl
	push ix
	push iy
	ld a, (_RAM_FFFC_)
	push af
	ld a, (_RAM_FFFF_)
	push af
	ld a, $80
	ld (_RAM_FFFC_), a
	in a, (Port_IOPort2)
	and $10
	ld hl, _RAM_C20B_
	ld c, (hl)
	ld (hl), a
	xor c
	and c
	jp nz, _LABEL_84_	; jp nz, MainSetup
	ld a, (_RAM_C20A_)
	or a
	jp nz, +
	ld b, $00
-:
	djnz -
-:
	djnz -
+:
	ld a, (_RAM_C212_)
	or a
	jp nz, _LABEL_2DF_
	ld a, (_RAM_C208_)
	and $1F
	ld hl, _DATA_18F_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

_LABEL_143_:
	xor a
	ld (_RAM_C208_), a
_LABEL_147_:
	pop af
	ld (_RAM_FFFF_), a
	pop af
	ld (_RAM_FFFC_), a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret

; 11th entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_159_:
	call _LABEL_45_
	jp _LABEL_143_

; 12th entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_15F_:
	ld a, (_RAM_C300_)
	out (Port_VDPAddress), a
	ld a, $88
	out (Port_VDPAddress), a
	ld a, (_RAM_C304_)
	out (Port_VDPAddress), a
	ld a, $89
	out (Port_VDPAddress), a
	call _LABEL_588B_
	call _LABEL_7B40_
	call _LABEL_7BEE_
	ld hl, _RAM_C220_
	ld de, $C000
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	call _LABEL_595E_
	call _LABEL_63A5_
	call _LABEL_2E5_
	jp _LABEL_143_

; Jump Table from 18F to 1A6 (12 entries, indexed by _RAM_C208_)
_DATA_18F_:
.dw _LABEL_1A7_ _LABEL_1A7_ _LABEL_1A7_ _LABEL_1A7_ _LABEL_1AD_ _LABEL_1D1_ _LABEL_1EF_ _LABEL_235_
.dw _LABEL_25F_ _LABEL_29F_ _LABEL_159_ _LABEL_15F_

; 1st entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_1A7_:
	call _LABEL_2E5_
	jp _LABEL_143_

; 5th entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_1AD_:
	ld a, (_RAM_C300_)
	out (Port_VDPAddress), a
	ld a, $88
	out (Port_VDPAddress), a
	ld a, (_RAM_C304_)
	out (Port_VDPAddress), a
	ld a, $89
	out (Port_VDPAddress), a
	call _LABEL_588B_
	call _LABEL_63A5_
	call _LABEL_339_
	call _LABEL_2E62_
	call _LABEL_2E5_
	jp _LABEL_143_

; 6th entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_1D1_:
	ld a, (_RAM_C300_)
	out (Port_VDPAddress), a
	ld a, $88
	out (Port_VDPAddress), a
	ld a, (_RAM_C304_)
	out (Port_VDPAddress), a
	ld a, $89
	out (Port_VDPAddress), a
	call _LABEL_588B_
	call _LABEL_63A5_
	call _LABEL_2E5_
	jp _LABEL_143_

; 7th entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_1EF_:
	ld a, (_RAM_C300_)
	out (Port_VDPAddress), a
	ld a, $88
	out (Port_VDPAddress), a
	ld a, (_RAM_C304_)
	out (Port_VDPAddress), a
	ld a, $89
	out (Port_VDPAddress), a
	ld hl, _RAM_D000_
	xor a
	out (Port_VDPAddress), a
	ld a, $78
	out (Port_VDPAddress), a
	ld c, Port_VDPData
	call _LABEL_589E_
	call _LABEL_589E_
	call _LABEL_589E_
	call _LABEL_589E_
	call _LABEL_589E_
	call _LABEL_589E_
	call _LABEL_589E_
	ld a, $03
	ld b, $80
-:
	outi
	jp nz, -
	dec a
	jp nz, -
	call _LABEL_2E5_
	jp _LABEL_143_

; 8th entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_235_:
	ld a, (_RAM_C300_)
	out (Port_VDPAddress), a
	ld a, $88
	out (Port_VDPAddress), a
	ld a, (_RAM_C304_)
	out (Port_VDPAddress), a
	ld a, $89
	out (Port_VDPAddress), a
	call _LABEL_588B_
	call _LABEL_7C18_
	call _LABEL_61F5_
	call _LABEL_73D0_
	call _LABEL_62BC_
	call _LABEL_339_
	call _LABEL_2E5_
	jp _LABEL_143_

; 9th entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_25F_:
	ld a, (_RAM_C300_)
	out (Port_VDPAddress), a
	ld a, $88
	out (Port_VDPAddress), a
	ld a, (_RAM_C304_)
	out (Port_VDPAddress), a
	ld a, $89
	out (Port_VDPAddress), a
	call _LABEL_588B_
	ld hl, _RAM_C220_
	ld de, $C000
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	call _LABEL_595E_
	ld hl, _RAM_D000_
	xor a
	out (Port_VDPAddress), a
	ld a, $78
	out (Port_VDPAddress), a
	ld c, Port_VDPData
	ld a, $06
	ld b, $00
-:
	outi
	jp nz, -
	dec a
	jp nz, -
	call _LABEL_2E5_
	jp _LABEL_143_

; 10th entry of Jump Table from 18F (indexed by _RAM_C208_)
_LABEL_29F_:
	ld a, (_RAM_C300_)
	out (Port_VDPAddress), a
	ld a, $88
	out (Port_VDPAddress), a
	ld a, (_RAM_C304_)
	out (Port_VDPAddress), a
	ld a, $89
	out (Port_VDPAddress), a
	call _LABEL_588B_
	ld hl, _RAM_C220_
	ld de, $C000
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	call _LABEL_595E_
	ld hl, _RAM_D000_
	xor a
	out (Port_VDPAddress), a
	ld a, $78
	out (Port_VDPAddress), a
	ld c, Port_VDPData
	ld a, $07
	ld b, $00
-:
	outi
	jp nz, -
	dec a
	jp nz, -
	call _LABEL_2E5_
	jp _LABEL_143_

_LABEL_2DF_:
	call _LABEL_2F5_
	jp _LABEL_147_

_LABEL_2E5_:
	ld hl, _RAM_FFFF_
	ld (hl), $0C
	jp _LABEL_30043_

_LABEL_2ED_:
	ld hl, _RAM_FFFF_
	ld (hl), $0C
	jp _LABEL_30000_

_LABEL_2F5_:
	ld hl, _RAM_FFFF_
	ld (hl), $0C
	jp _LABEL_3001F_

_LABEL_2FD_:
	ld hl, _RAM_C900_
	ld de, _RAM_C900_ + 1
	ld bc, $0040
	ld (hl), $E0
	ldir
	ld c, $BF
	ld (hl), $00
	ldir
	ld a, $14
	call _LABEL_52_
	jp _LABEL_7B20_

_LABEL_318_:
	ld hl, $0000
-:
	in a, (Port_VDPStatus)
	or a
	jp p, -
-:
	in a, (Port_VDPStatus)
	or a
	jp p, -
-:
	inc hl
	in a, (Port_VDPStatus)
	or a
	jp p, -
	xor a
	ld de, $0800
	sbc hl, de
	sbc a, a
	ld (_RAM_C20A_), a
	ret

_LABEL_339_:
	in a, (Port_IOPort1)
	ld hl, _RAM_C204_
	cpl
	ld b, a
	xor (hl)
	ld (hl), b
	inc hl
	and b
	ld (hl), a
	ret

_LABEL_346_:
	rst $08	; _LABEL_8_
	ld a, c
	or a
	jr z, +
	inc b
+:
	ld a, b
	ld b, c
	ld c, Port_VDPData
-:
	outi
	jp nz, -
	dec a
	jp nz, -
	ret

_LABEL_35A_:
	ld de, $7800
	ld bc, $0380
	ld hl, $0000
_LABEL_363_:
	rst $08	; _LABEL_8_
	ld a, c
	or a
	jr z, _LABEL_369_
	inc b
_LABEL_369_:
	ld a, l
	out (Port_VDPData), a
	push af
	pop af
	ld a, h
	out (Port_VDPData), a
	dec c
	jr nz, _LABEL_369_
	djnz _LABEL_369_
	ret

; Data from 377 to 38F (25 bytes)
.db $C5 $CF $41 $0E $BE $ED $A3 $3A $10 $C2 $00 $ED $79 $20 $F6 $EB
.db $01 $40 $00 $09 $EB $C1 $10 $E8 $C9

_LABEL_390_:
	push bc
	rst $08	; _LABEL_8_
	ld b, c
	ld c, Port_VDPData
-:
	outi
	jp nz, -
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop bc
	djnz _LABEL_390_
	ret

_LABEL_3A4_:
	ld hl, _DATA_3B9_
	ld bc,  $1400 | Port_VDPAddress
	otir
	ld a, (_DATA_3B9_)
	ld (_RAM_C200_), a
	ld a, (_DATA_3BB_)
	ld (_RAM_C201_), a
	ret

; Data from 3B9 to 3BA (2 bytes)
_DATA_3B9_:
.db $06 $80

; Data from 3BB to 3CC (18 bytes)
_DATA_3BB_:
.db $A0 $81 $FF $82 $FF $83 $FF $84 $FF $85 $FF $86 $00 $87 $00 $88
.db $00 $89

_LABEL_3CD_:
	ld b, $04
-:
	push bc
	push de
	call _LABEL_3DA_
	pop de
	inc de
	pop bc
	djnz -
	ret

_LABEL_3DA_:
	ld a, (hl)
	inc hl
	or a
	ret z
	ld c, a
	and $7F
	ld b, a
	ld a, c
	and $80
-:
	rst $08	; _LABEL_8_
	ld a, (hl)
	out (Port_VDPData), a
	jp z, +
	inc hl
+:
	inc de
	inc de
	inc de
	inc de
	djnz -
	jp nz, _LABEL_3DA_
	inc hl
	jp _LABEL_3DA_

_LABEL_3FA_:
	ld b, $04
-:
	push bc
	push de
	call _LABEL_407_
	pop de
	inc de
	pop bc
	djnz -
	ret

_LABEL_407_:
	ld a, (hl)
	inc hl
	or a
	ret z
	ld c, a
	and $7F
	ld b, a
	ld a, c
	and $80
-:
	di
	rst $08	; _LABEL_8_
	ld a, (hl)
	out (Port_VDPData), a
	ei
	jp z, +
	inc hl
+:
	inc de
	inc de
	inc de
	inc de
	djnz -
	jp nz, _LABEL_407_
	inc hl
	jp _LABEL_407_

_LABEL_429_:
	ld d, $00
	ld l, d
	add hl, hl
	jr nc, +
	add hl, de
+:
	add hl, hl
	jr nc, +
	add hl, de
+:
	add hl, hl
	jr nc, +
	add hl, de
+:
	add hl, hl
	jr nc, +
	add hl, de
+:
	add hl, hl
	jr nc, +
	add hl, de
+:
	add hl, hl
	jr nc, +
	add hl, de
+:
	add hl, hl
	jr nc, +
	add hl, de
+:
	add hl, hl
	ret nc
	add hl, de
	ret

_LABEL_44C_:
	or a
	ld hl, $0000
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	jr nc, +
	add hl, bc
	jr nc, +
	inc de
+:
	add hl, hl
	rl e
	rl d
	ret nc
	add hl, bc
	ret nc
	inc de
	ret

_LABEL_4FE_:
	xor a
	add hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	adc a, a
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	or a
++:
	ccf
	adc hl, hl
	ret

_LABEL_5B1_:
	push hl
	ld hl, (_RAM_C20C_)
	ld a, h
	rrca
	rrca
	xor h
	rrca
	xor l
	rrca
	rrca
	rrca
	rrca
	xor l
	rra
	adc hl, hl
	jr nz, +
	ld hl, $733C
+:
	ld a, r
	xor l
	ld (_RAM_C20C_), hl
	pop hl
	ret

; 1st entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_5D0_:
	ld hl, _RAM_C202_
	ld (hl), $02
	ret

; 4th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_5D6_:
	ld hl, $7C12
	ld (_RAM_C269_), hl
	ld a, $01
	ld (_RAM_C26E_), a
	call _LABEL_2D51_
	or a
	jp nz, _LABEL_634_
_LABEL_5E8_:
	ld hl, _RAM_C300_
	ld de, _RAM_C300_ + 1
	ld bc, $03FF
	ld (hl), l
	ldir
	ld iy, _RAM_C400_
	ld (iy+10), $02
	ld (iy+11), $10
	call _LABEL_16F1_
	ld hl, _RAM_C600_
	ld (hl), $FF
	ld hl, _RAM_C604_
	ld (hl), $FF
	ld hl, $0404
	ld (_RAM_C308_), hl
	ld hl, $0610
	ld (_RAM_C301_), hl
	ld (_RAM_C313_), hl
	ld hl, $0100
	ld (_RAM_C305_), hl
	ld (_RAM_C311_), hl
	ld hl, $0000
	ld (_RAM_C4E0_), hl
	call _LABEL_42AC_
	ld hl, _RAM_C202_
	ld (hl), $08
	ret

_LABEL_634_:
	ld a, $08
	ld (_RAM_FFFC_), a
	ld hl, $8201
	ld b, $05
-:
	ld a, (hl)
	or a
	jr nz, +
	inc hl
	djnz -
	ld a, $80
	ld (_RAM_FFFC_), a
	jp _LABEL_5E8_

+:
	ld a, $80
	ld (_RAM_FFFC_), a
	call _LABEL_7B05_
	di
	call _LABEL_35A_
	ei
	ld hl, _RAM_C202_
	ld (hl), $08
	ld hl, _RAM_FFFF_
	ld (hl), $10
	ld hl, _DATA_43AD8_
	ld de, $5800
	call _LABEL_3FA_
	ld hl, _DATA_43D58_
	ld de, $7E00
	call _LABEL_3FA_
	call _LABEL_2FD_
_LABEL_679_:
	ld hl, _DATA_33E45_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr nz, _LABEL_6C5_
	ld hl, _DATA_33E1B_
	call _LABEL_31CF_
-:
	push bc
	call _LABEL_39B1_
	pop bc
	call _LABEL_73A_
	jr z, -
	ld hl, _DATA_33E35_
	call _LABEL_31CF_
	call _LABEL_3464_
	ld a, $08
	ld (_RAM_FFFC_), a
	ld a, (_RAM_C2C5_)
	ld h, a
	ld l, $00
	add hl, hl
	add hl, hl
	set 7, h
	ld de, _RAM_C300_
	ld bc, $0400
	ldir
	ld a, $80
	ld (_RAM_FFFC_), a
	ld a, (_RAM_C316_)
	cp $0B
	ret nz
	ld hl, _RAM_C202_
	ld (hl), $0A
	ret

_LABEL_6C5_:
	ld hl, _DATA_33E5E_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr nz, _LABEL_679_
--:
	ld hl, _DATA_33E6F_
	call _LABEL_31CF_
-:
	push bc
	call _LABEL_39B1_
	bit 4, c
	pop bc
	jr nz, _LABEL_6C5_
	call _LABEL_73A_
	jr z, -
	ld hl, _DATA_33A82_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr nz, --
	ld hl, _DATA_33E82_
	call _LABEL_31CF_
	ld a, $08
	ld (_RAM_FFFC_), a
	ld a, (_RAM_C2C5_)
	ld h, $82
	ld l, a
	ld (hl), $00
	dec a
	add a, a
	ld e, a
	add a, a
	add a, a
	add a, a
	add a, e
	add a, a
	add a, $18
	ld e, a
	ld d, $81
	ld hl, _DATA_730_
	ld bc, $000A
	ldir
	ex de, hl
	ld bc, $0008
	add hl, bc
	ex de, hl
	ld hl, _DATA_730_
	ld bc, $000A
	ldir
	ld a, $80
	ld (_RAM_FFFC_), a
	ld hl, _RAM_C202_
	ld (hl), $02
	ret

; Data from 730 to 739 (10 bytes)
_DATA_730_:
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10

_LABEL_73A_:
	ld a, $08
	ld (_RAM_FFFC_), a
	ld a, (_RAM_C2C5_)
	ld l, a
	ld h, $82
	ld a, (hl)
	or a
	ld a, $80
	ld (_RAM_FFFC_), a
	ret

; 3rd entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_74D_:
	call _LABEL_7B05_
	di
	call _LABEL_3E_
	call _LABEL_2ED_
	call _LABEL_35A_
	ld hl, _RAM_C202_
	inc (hl)
	ld hl, $0258
	ld (_RAM_C20E_), hl
	ld hl, _DATA_7BA_
	ld de, _RAM_C240_
	ld bc, $0020
	ldir
	ld hl, _RAM_C260_
	ld de, _RAM_C260_ + 1
	ld bc, $009F
	ld (hl), $00
	ldir
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), l
	ldir
	ld hl, _RAM_FFFF_
	ld (hl), $1F
	ld hl, _DATA_7E8BD_
	ld de, $4000
	call _LABEL_3CD_
	ld hl, _RAM_FFFF_
	ld (hl), $0E
	ld hl, _DATA_3BC68_
	call _LABEL_6B62_
	xor a
	ld (_RAM_C304_), a
	ld (_RAM_C300_), a
	ld a, $81
	ld (_RAM_C004_), a
	ld de, $8006
	rst $08	; _LABEL_8_
	ei
	ld a, $0C
	call _LABEL_52_
	jp _LABEL_2FD_

; Data from 7BA to 7D9 (32 bytes)
_DATA_7BA_:
.db $00 $00 $3F $0F $0B $06 $2B $2A $25 $27 $3B $01 $3C $34 $2F $3C
.db $00 $00 $3C $0F $0B $06 $2B $2A $25 $27 $3B $01 $3C $34 $2F $3C

_LABEL_7DA_:
	ld a, $08
	ld (_RAM_FFFC_), a
	ld bc, $1000
--:
	push bc
	ld hl, $8001
	ld de, _DATA_808_
	ld bc, $0020
-:
	ld a, (de)
	inc de
	cpi
	jr nz, +
	jp pe, -
	pop bc
-:
	djnz --
	ld a, c
	cp $08
	jr nc, _LABEL_847_
	ld a, $80
	ld (_RAM_FFFC_), a
	ret

+:
	pop bc
	inc c
	jr -

; Data from 807 to 807 (1 bytes)
.db $50

; 1st entry of Pointer Table from C692 (indexed by _RAM_C2E6_)
; Data from 808 to 846 (63 bytes)
_DATA_808_:
.db $48 $41 $4E $54 $41 $53 $59 $20 $53 $54 $41 $52 $20 $20 $20 $20
.db $20 $20 $20 $20 $20 $42 $41 $43 $4B $55 $50 $20 $52 $41 $4D $50
.db $52 $4F $47 $52 $41 $4D $4D $45 $44 $20 $42 $59 $20 $20 $20 $20
.db $20 $20 $20 $20 $20 $20 $4E $41 $4B $41 $20 $59 $55 $4A $49

_LABEL_847_:
	ld hl, $8000
	ld de, $8001
	ld bc, $1FFB
	ld (hl), l
	ldir
	ld hl, _DATA_3AC4_
	ld de, $8100
	ld bc, $00D8
	ldir
	ld hl, _DATA_808_ - 1
	ld de, $8000
	ld bc, $0040
	ldir
	ld a, $80
	ld (_RAM_FFFC_), a
	ret

; 6th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_86F_:
	ld hl, $2009
	ld (_RAM_C21B_), hl
-:
	ld a, (_RAM_C212_)
	or a
	call nz, _LABEL_F1_
	ld a, $0E
	call _LABEL_52_
	ld a, (_RAM_C205_)
	and $30
	jr nz, _LABEL_89A_
	call _LABEL_998_
	ld hl, (_RAM_C2F2_)
	ld de, $0008
	add hl, de
	ld (_RAM_C2F2_), hl
	ld a, h
	cp $08
	jr c, -
_LABEL_89A_:
	ld a, $16
	call _LABEL_52_
	ld a, (_RAM_C21B_)
	or a
	jr nz, _LABEL_89A_
	jr +

+:
	ld hl, _RAM_FFFF_
	ld (hl), $17
	ld hl, _DATA_5F767_
	ld de, _RAM_C240_
	ld bc, $0011
	ldir
	call _LABEL_A31_
	ld hl, _DATA_5F778_
	ld de, $4000
	call _LABEL_3FA_
	ld hl, _RAM_FFFF_
	ld (hl), $1C
	ld hl, _DATA_73E88_
	call _LABEL_6B62_
	ld hl, _RAM_D000_
	ld de, _RAM_D300_
	ld bc, $0300
	ldir
	ld hl, _RAM_D000_
	ld bc, $0100
	ldir
	ld hl, _DATA_73E00_
	call _LABEL_6B62_
	xor a
	ld (_RAM_C300_), a
	ld (_RAM_C304_), a
	ld hl, _RAM_D000_
	ld de, $7800
	ld bc, $0700
	di
	call _LABEL_346_
	ei
	ld hl, _RAM_D000_
	ld de, _RAM_D300_
	ld bc, $0300
	ldir
	ld a, $8F
	ld (_RAM_C004_), a
	call _LABEL_7B20_
	ld hl, $0000
	ld (_RAM_C2F2_), hl
	ld a, $08
	ld (_RAM_C307_), a
-:
	ld a, (_RAM_C212_)
	or a
	call nz, _LABEL_F1_
	ld a, $0E
	call _LABEL_52_
	ld a, (_RAM_C205_)
	and $30
	jr nz, +
	call _LABEL_9E9_
	ld a, (_RAM_C307_)
	or a
	jr nz, -
+:
	ld hl, _RAM_C202_
	ld (hl), $04
	call _LABEL_A74_
	ld hl, $0800
	ld (_RAM_C2F2_), hl
-:
	ld a, (_RAM_C212_)
	or a
	call nz, _LABEL_F1_
	ld a, $0E
	call _LABEL_52_
	ld a, (_RAM_C205_)
	and $30
	jr nz, +
	call _LABEL_998_
	ld hl, (_RAM_C2F2_)
	ld de, $0008
	or a
	sbc hl, de
	ld (_RAM_C2F2_), hl
	jr nc, -
+:
	ld hl, $0000
	ld (_RAM_C2F2_), hl
	ld hl, _RAM_C202_
	ld (hl), $08
	ld a, (_RAM_C2E9_)
	and $7F
	ld l, a
	add a, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld h, $00
	ld de, $0ABC
	add hl, de
	xor a
	ld (_RAM_C265_), a
	ld (_RAM_C264_), a
	ld (_RAM_C2E9_), a
	ld (_RAM_C30E_), a
	ld (_RAM_C307_), a
	call _LABEL_787B_
	ret

_LABEL_998_:
	ld de, (_RAM_C2F2_)
	ld a, (_RAM_C304_)
	ld h, a
	ld b, a
	ld a, (_RAM_C307_)
	ld l, a
	or a
	sbc hl, de
	ld a, h
	cp $E0
	jr c, +
	sub $20
+:
	ld h, a
	ld (_RAM_C304_), a
	ld a, l
	ld (_RAM_C307_), a
	ld a, b
	sub h
	and $0F
	ret z
	ld e, a
	ld d, $00
	ld hl, (_RAM_C305_)
	ld b, h
	ld a, l
	sub e
	cp $C0
	jr c, +
	sub $40
	dec h
+:
	ld l, a
	ld a, h
	and $07
	ld h, a
	ld (_RAM_C305_), hl
	cp b
	call nz, _LABEL_723D_
	call _LABEL_733A_
	ld a, (_RAM_C2F3_)
	cp $07
	ret nz
	ld a, (_RAM_C21B_)
	or a
	call nz, _LABEL_7B40_
	ret

_LABEL_9E9_:
	ld de, $0002
	ld a, (_RAM_C304_)
	sub e
	cp $E0
	jr c, +
	ld d, $01
	sub $20
+:
	ld (_RAM_C304_), a
	ld a, (_RAM_C307_)
	sub d
	ld (_RAM_C307_), a
	cp $01
	ret nz
	ld a, d
	or a
	ret z
	ld a, (_RAM_C2E9_)
	and $7F
	ld l, a
	add a, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld h, $00
	ld de, $0AB9
	add hl, de
	ld a, (hl)
	ld (_RAM_C308_), a
	call _LABEL_A31_
	ld hl, _RAM_C240_
	ld de, _RAM_C220_
	ld bc, $0020
	ldir
	ld hl, _DATA_73D00_
	jp _LABEL_6B62_

_LABEL_A31_:
	ld a, (_RAM_C308_)
	and $03
	add a, a
	ld l, a
	add a, a
	add a, l
	ld d, $00
	ld e, a
	ld hl, _DATA_A4A_
	add hl, de
	ld de, _RAM_C242_
	ld bc, $0006
	ldir
	ret

; Data from A4A to A5B (18 bytes)
_DATA_A4A_:
.db $3E $38 $34 $30 $20 $04 $2F $1F $0B $06 $01 $06 $3F $3F $3E $3C
.db $39 $38

; 5th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_A5C_:
	ld a, (_RAM_C2E9_)
	and $7F
	ld l, a
	add a, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld h, $00
	ld de, $0AB6
	add hl, de
	ld de, $0A8C
	push de
	call _LABEL_787B_
_LABEL_A74_:
	ld a, (_RAM_C2E9_)
	and $7F
	ld l, a
	add a, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld h, $00
	ld de, $0AB9
	add hl, de
	ld de, $0A8C
	push de
	call _LABEL_787B_
	xor a
	ld (_RAM_C204_), a
	ld (_RAM_C264_), a
	ld a, (_RAM_C2E9_)
	cp $83
	ld a, $10
	jr c, +
	inc a
+:
	ld (_RAM_C30E_), a
	ld hl, $0000
	ld (_RAM_C2F2_), hl
	call _LABEL_B6A_
	ld hl, _RAM_C26F_
	ld de, _RAM_C26F_ + 1
	ld bc, $0017
	ld (hl), $00
	ldir
	call _LABEL_576A_
	ld a, $01
	ld (_RAM_C264_), a
	ret

; Data from ABF to AC1 (3 bytes)
.db $00 $39 $43

; Data from AC2 to AC4 (3 bytes)
_DATA_AC2_:
.db $01 $8B $69

; Data from AC5 to B06 (66 bytes)
_DATA_AC5_:
.db $10 $53 $17 $01 $37 $69 $00 $91 $43 $05 $17 $17 $00 $47 $35 $01
.db $27 $74 $0F $20 $58 $00 $47 $35 $02 $33 $2D $13 $18 $1B $01 $53
.db $74 $00 $1B $35 $07 $25 $13 $01 $53 $74 $02 $33 $2D $13 $18 $1B
.db $02 $5B $2D $00 $1B $35 $07 $25 $13 $02 $5B $2D $01 $27 $74 $0F
.db $20 $58

; 7th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_B07_:
	ret

; 10th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_B08_:
	ld a, (_RAM_C212_)
	or a
	call nz, _LABEL_F1_
	ld a, $0E
	call _LABEL_52_
	call _LABEL_576A_
	call _LABEL_77AC_
	ld a, (_RAM_C265_)
	or a
	jr nz, +
	ld a, (_RAM_C2D2_)
	or a
	jr z, +
	xor a
	ld (_RAM_C2D2_), a
	call _LABEL_5F63_
	or a
	jr z, +
	ld a, $FF
	jp ++

+:
	ld a, (_RAM_C204_)
	and $30
	ret z
	ld a, (_RAM_C265_)
	or a
	ret nz
	xor a
++:
	ld (_RAM_C29D_), a
	ld hl, _RAM_C202_
	ld (hl), $0C
	ld a, (_RAM_C810_)
	ld (_RAM_C2D7_), a
	ld hl, _RAM_C26F_
	ld de, _RAM_C26F_ + 1
	ld bc, $0017
	ld (hl), $00
	ldir
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	ret

; 9th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_B6A_:
	call _LABEL_7B05_
	di
	call _LABEL_3E_
	ei
	ld hl, _RAM_C202_
	inc (hl)
	xor a
	ld (_RAM_C2D6_), a
	ld (_RAM_C315_), a
	inc a
	ld (_RAM_C2D5_), a
	ld a, (_RAM_C308_)
	cp $04
	jr nc, +
	ld hl, _RAM_FFFF_
	ld (hl), $1D
	ld hl, _DATA_747B8_
	ld de, $4000
	call _LABEL_3FA_
	jr ++

+:
	ld hl, _RAM_FFFF_
	ld (hl), $16
	ld hl, _DATA_58570_
	ld de, $4000
	call _LABEL_3FA_
++:
	call _LABEL_CA6_
	call _LABEL_576A_
	ld b, $04
-:
	push bc
	ld a, $0A
	call _LABEL_52_
	di
	call _LABEL_61F5_
	ei
	pop bc
	djnz -
	ld a, (_RAM_C301_)
	neg
	ld (_RAM_C300_), a
	ld a, (_RAM_C305_)
	ld (_RAM_C304_), a
	ld a, (_RAM_C309_)
	ld e, a
	ld d, $00
	ld hl, _DATA_DC1_
	add hl, de
	ld a, (hl)
	ld (_RAM_C308_), a
	add a, a
	ld h, a
	add a, a
	ld l, a
	add a, a
	add a, l
	add a, h
	ld l, a
	ld h, $00
	ld de, _DATA_DF1_
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld (_RAM_C260_), de
	ld a, (hl)
	ld (_RAM_C262_), a
	inc hl
	ld e, (hl)
	ld d, $1F
	ld (_RAM_C26F_), de
	inc hl
	ld e, (hl)
	ld d, $0F
	ld (_RAM_C273_), de
	inc hl
	ld e, (hl)
	ld d, $0F
	ld (_RAM_C277_), de
	inc hl
	ld e, (hl)
	ld d, $03
	ld (_RAM_C27B_), de
	inc hl
	ld e, (hl)
	ld d, $0F
	ld (_RAM_C27F_), de
	inc hl
	ld e, (hl)
	ld d, $07
	ld (_RAM_C283_), de
	inc hl
	ld a, (hl)
	ld (_RAM_C263_), a
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_C240_
	ld bc, $0011
	ldir
	ld a, (_RAM_C30E_)
	or a
	jr nz, +
	push hl
	ld hl, _DATA_DA3_
	ld bc, $000D
	ldir
	pop hl
	ldi
	ldi
	jp ++

+:
	ld hl, _DATA_DB2_
	ld bc, $000F
	ldir
++:
	pop hl
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C2D9_), hl
	call _LABEL_723D_
	call _LABEL_744B_
	ld a, $14
	call _LABEL_7764_
	rrca
	rrca
	rrca
	rrca
	and $0F
	ld (_RAM_C29E_), a
	ld a, (_RAM_C30E_)
	cp $10
	ld c, $B8
	jr nc, +
	or a
	ld c, $8F
	jr nz, +
	ld a, (_RAM_C309_)
	ld e, a
	ld d, $00
	ld hl, _DATA_DD9_
	add hl, de
	ld c, (hl)
+:
	ld a, c
	call _LABEL_C97_
	ld de, $8026
	di
	rst $08	; _LABEL_8_
	ei
	jp _LABEL_2FD_

_LABEL_C97_:
	push hl
	ld hl, _RAM_C2F4_
	cp (hl)
	jr nz, +
	pop hl
	ret

+:
	ld (_RAM_C004_), a
	ld (hl), a
	pop hl
	ret

_LABEL_CA6_:
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	ld a, (_RAM_C30E_)
	or a
	jp z, +
	ld hl, _RAM_C800_
	ld (hl), $09
	ret

+:
	ld de, _RAM_C800_
	ld bc, $0020
	ld hl, _RAM_C400_
	ld a, $01
	call +
	ld hl, _RAM_C430_
	ld a, $03
	call +
	ld hl, _RAM_C420_
	ld a, $05
	call +
	ld hl, _RAM_C410_
	ld a, $07
+:
	bit 0, (hl)
	ret z
	ld (de), a
	ex de, hl
	add hl, bc
	ex de, hl
	ret

; Data from CEB to DA2 (184 bytes)
.db $08 $00 $3F $01 $03 $0B $0F $2F $06 $38 $3C $25 $2A $04 $30 $0C
.db $08 $08 $00 $3F $01 $03 $0B $0F $2F $06 $38 $3C $25 $2A $04 $30
.db $0C $2F $3F $00 $3F $24 $03 $3C $0F $3F $28 $38 $3C $25 $2A $04
.db $30 $0C $3F $09 $00 $3F $06 $2F $0B $0C $04 $2A $25 $3C $38 $30
.db $03 $02 $08 $09 $08 $0C $08 $00 $3F $06 $2F $0B $0C $04 $2A $25
.db $3C $38 $30 $03 $02 $08 $08 $0C $04 $2A $00 $3F $06 $2F $0B $0C
.db $04 $2A $25 $3C $38 $30 $03 $02 $08 $2A $2A $2A $2F $00 $3F $06
.db $2F $0B $0C $04 $2A $25 $3C $38 $30 $03 $02 $08 $2F $0B $06 $3F
.db $00 $3F $06 $2F $0B $0C $04 $2A $25 $3C $38 $30 $03 $02 $3F $3F
.db $3C $38 $00 $00 $3F $06 $2F $0B $0C $04 $2A $25 $3C $38 $30 $03
.db $02 $08 $00 $00 $00 $3C $00 $3F $06 $2F $0B $0C $04 $2A $25 $3C
.db $38 $30 $03 $02 $08 $3C $3C $3C

; Data from DA3 to DB1 (15 bytes)
_DATA_DA3_:
.db $00 $3F $2B $0B $2F $37 $0F $38 $34 $06 $01 $2A $25 $00 $00

; Data from DB2 to DC0 (15 bytes)
_DATA_DB2_:
.db $00 $3F $02 $03 $0B $0F $20 $38 $34 $2F $2A $25 $2F $2A $25

; Data from DC1 to DD8 (24 bytes)
_DATA_DC1_:
.db $00 $01 $02 $03 $04 $04 $04 $05 $05 $05 $05 $05 $06 $06 $07 $07
.db $07 $07 $07 $08 $08 $09 $09 $0A

; Data from DD9 to DF0 (24 bytes)
_DATA_DD9_:
.db $82 $83 $84 $84 $87 $87 $87 $88 $88 $88 $88 $88 $87 $87 $87 $88
.db $87 $88 $88 $84 $84 $88 $88 $85

; Pointer Table from DF1 to DF2 (1 entries, indexed by unknown)
_DATA_DF1_:
.dw _DATA_70000_

; Data from DF3 to DFC (10 bytes)
.db $0D $01 $01 $00 $01 $01 $00 $1D $EB $0C

; Pointer Table from DFD to E00 (2 entries, indexed by unknown)
_DATA_DFD_:
.dw _DATA_72935_ _DATA_72276_

; Data from E01 to E8A (138 bytes)
.db $0D $00 $00 $01 $01 $00 $01 $1D $FC $0C $B9 $A9 $00 $80 $0E $00
.db $00 $00 $00 $00 $00 $1D $0D $0D $E3 $A9 $00 $80 $0E $00 $00 $00
.db $00 $00 $00 $1D $0D $0D $49 $AA $00 $80 $18 $00 $00 $00 $00 $00
.db $00 $16 $1E $0D $4A $AA $62 $87 $18 $00 $00 $00 $00 $00 $00 $16
.db $31 $0D $70 $AB $42 $8F $18 $00 $00 $00 $00 $00 $00 $16 $44 $0D
.db $8B $AC $D9 $93 $18 $00 $00 $00 $00 $00 $00 $16 $57 $0D $F7 $AC
.db $07 $9C $18 $00 $00 $00 $00 $00 $00 $16 $6A $0D $5F $AE $8B $9D
.db $18 $00 $00 $00 $00 $00 $00 $16 $7D $0D $71 $AE $50 $A2 $18 $00
.db $00 $00 $00 $00 $00 $16 $90 $0D $37 $AF

; 16th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_E8B_:
	ld a, (_RAM_C212_)
	or a
	call nz, _LABEL_F1_
	ld a, $0E
	call _LABEL_52_
	ld a, (_RAM_C205_)
	and $30
	jr nz, +
	ld a, (_RAM_C2EA_)
	ld (_RAM_C204_), a
	call _LABEL_576A_
	ld a, (_RAM_C265_)
	or a
	ret nz
	ld a, (_RAM_C2EB_)
	dec a
	ld (_RAM_C2EB_), a
	ret nz
+:
	ld hl, _RAM_C202_
	ld (hl), $08
	ld a, (_RAM_C2E9_)
	add a, a
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld de, $0F09
	add hl, de
	xor a
	ld (_RAM_C265_), a
	ld (_RAM_C2E9_), a
	ld (_RAM_C2EA_), a
	ld (_RAM_C2EB_), a
	call _LABEL_787B_
	ret

; 15th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_ED7_:
	ld a, (_RAM_C2E9_)
	add a, a
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld de, $0F04
	add hl, de
	ld a, (hl)
	ld (_RAM_C2EA_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C2EB_), a
	inc hl
	ld de, $0EF5
	push de
	call _LABEL_787B_
	call _LABEL_B6A_
	ld hl, _RAM_C26F_
	ld de, _RAM_C26F_ + 1
	ld bc, $0017
	ld (hl), $00
	ldir
	ld hl, $0001
	ld (_RAM_C27B_), hl
	ret

; Data from F0C to F10 (5 bytes)
.db $04 $0C $00 $38 $51

; Data from F11 to F3B (43 bytes)
_DATA_F11_:
.db $05 $21 $2C $01 $0B $00 $46 $46 $05 $27 $21 $01 $04 $01 $33 $64
.db $0E $2A $20 $08 $0C $00 $38 $48 $04 $21 $53 $02 $0B $00 $3A $46
.db $06 $54 $20 $02 $04 $01 $2B $64 $10 $43 $1E

; 12th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_F3C_:
	ld a, (_RAM_C212_)
	or a
	call nz, _LABEL_F1_
	ld a, $08
	call _LABEL_52_
	call _LABEL_65EE_
	ld a, (_RAM_C2D2_)
	or a
	ret z
	xor a
	ld (_RAM_C2D2_), a
	ld a, (_RAM_C2E3_)
	ld b, a
	call _LABEL_5B1_
	cp b
	ret nc
	ld b, $01
	call _LABEL_6BCA_
	ret nz
	xor a
	ld (_RAM_C2D2_), a
	ld a, (_RAM_C2E4_)
	call _LABEL_5FD8_
	or a
	ret z
	call _LABEL_5FFE_
	call _LABEL_100F_
	ld a, (_RAM_C800_)
	or a
	call nz, _LABEL_1BE1_
	ret

; 11th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_F7D_:
	call _LABEL_7B05_
	call _LABEL_6DE2_
	ld hl, _RAM_C202_
	inc (hl)
	ld hl, _RAM_FFFF_
	ld (hl), $10
	ld hl, _DATA_43AD8_
	ld de, $5800
	call _LABEL_3FA_
	ld hl, _DATA_43D58_
	ld de, $7E00
	call _LABEL_3FA_
	ld a, $39
	call _LABEL_282E_
	jr nz, +
	ld a, $FF
	ld (_RAM_C315_), a
+:
	call _LABEL_FF3_
	xor a
	ld (_RAM_C304_), a
	ld (_RAM_C300_), a
	ld (_RAM_C2D5_), a
	ld (_RAM_C2D6_), a
	ld (_RAM_C2D3_), a
	ld de, $8006
	di
	rst $08	; _LABEL_8_
	ei
	call _LABEL_2FD_
	ld b, $01
	call _LABEL_6963_
	ld a, (_RAM_C315_)
	or a
	ret nz
	ld hl, _DATA_33392_
	call _LABEL_31CF_
	call _LABEL_3464_
	call _LABEL_1BE1_
	ld a, (_RAM_C315_)
	or a
	jr z, +
	ld a, $FF
	ld (_RAM_C315_), a
	call _LABEL_6D7F_
	jp _LABEL_7B20_

+:
	ld hl, _RAM_C202_
	ld (hl), $08
	ret

_LABEL_FF3_:
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	ld a, $D0
	ld (_RAM_C900_), a
	call _LABEL_6D56_
	xor a
	ld (_RAM_C29E_), a
	jp _LABEL_6AE5_

_LABEL_100F_:
	ld a, (_RAM_C2E6_)
	cp $48
	ld c, $92
	jr z, +
	cp $49
	jr z, ++
	ld c, $89
+:
	ld a, c
	ld (_RAM_C004_), a
++:
	ld hl, _RAM_C2AB_
	ld b, $0C
-:
	ld a, b
	dec a
	ld (hl), a
	dec hl
	djnz -
	xor a
	ld (_RAM_C2EF_), a
	call _LABEL_30ED_
	ld b, $04
-:
	ld a, b
	dec a
	call _LABEL_187D_
	jp nz, _LABEL_1043_
	djnz -
	jp _LABEL_1656_

_LABEL_1043_:
	ld b, $04
-:
	ld a, b
	dec a
	call _LABEL_187D_
	inc hl
	ld a, (hl)
	or a
	jp nz, +
	djnz -
	jp _LABEL_1656_

+:
	ld hl, _RAM_C2AC_
	ld de, _RAM_C2AC_ + 1
	ld bc, $000F
	ld (hl), $00
	ldir
	ld a, $FF
	ld (_RAM_C29D_), a
	xor a
	ld (_RAM_C267_), a
	ld (_RAM_C2D4_), a
	call _LABEL_30C3_
	call _LABEL_2ED9_
_LABEL_1074_:
	call _LABEL_187A_
	jp z, _LABEL_1080_
	inc hl
	ld a, (hl)
	or a
	jp nz, +
_LABEL_1080_:
	ld a, (_RAM_C267_)
	inc a
	ld (_RAM_C267_), a
	jp ++

+:
	ld de, $000C
	add hl, de
	ld a, (hl)
	or a
	jr nz, _LABEL_1080_
	call _LABEL_3105_
	call _LABEL_30D5_
	call _LABEL_2EAC_
	ld hl, $7882
	ld (_RAM_C269_), hl
	ld a, $04
	ld (_RAM_C26E_), a
	call _LABEL_2D51_
	bit 4, c
	jp nz, _LABEL_1121_
	ld hl, _DATA_1912_
	call _LABEL_E6_
	call _LABEL_2ECD_
++:
	ld a, (_RAM_C267_)
	cp $04
	jp c, _LABEL_1074_
	cp $05
	jp nc, _LABEL_163E_
	xor a
	ld (_RAM_C267_), a
	call _LABEL_30B7_
	call _LABEL_30E1_
	call _LABEL_18F2_
	ld hl, _RAM_C2A0_
	ld b, $0C
_LABEL_10D6_:
	push bc
	push hl
	ld a, (hl)
	cp $04
	jp nc, +
	call _LABEL_1148_
	jp ++

+:
	call _LABEL_128C_
++:
	ld hl, _RAM_C441_
	ld de, $0010
	ld b, $08
-:
	ld a, (hl)
	or a
	jp nz, +
	add hl, de
	djnz -
	pop hl
	pop bc
	jp _LABEL_1656_

+:
	ld hl, _RAM_C400_
	ld de, $0010
	ld b, $04
-:
	ld a, (hl)
	or a
	jp nz, +
	add hl, de
	djnz -
	pop hl
	pop bc
	jp _LABEL_1602_

+:
	pop hl
	pop bc
	inc hl
	ld a, (_RAM_C267_)
	cp $05
	jp z, _LABEL_163E_
	djnz _LABEL_10D6_
	jp _LABEL_1043_

_LABEL_1121_:
	call _LABEL_2ECD_
-:
	ld a, (_RAM_C267_)
	or a
	jr z, +
	dec a
+:
	ld (_RAM_C267_), a
	jp z, _LABEL_1074_
	call _LABEL_187A_
	jp z, -
	inc hl
	ld a, (hl)
	or a
	jp z, -
	ld de, $000C
	add hl, de
	ld a, (hl)
	or a
	jr nz, -
	jp _LABEL_1074_

_LABEL_1148_:
	ld (_RAM_C267_), a
	call _LABEL_187A_
	ret z
	ld a, (_RAM_C2D4_)
	or a
	ret nz
	push hl
	pop iy
	ld a, (iy+1)
	or a
	ret z
	ld a, (iy+13)
	or a
	jr z, ++
	ld a, (_RAM_C267_)
	ld (_RAM_C2C2_), a
	call _LABEL_5B1_
	and $01
	inc a
	ld b, a
	ld a, (iy+13)
	sub b
	jr nc, +
	xor a
+:
	ld (iy+13), a
	or a
	ld hl, _DATA_3320A_
	jr z, +
	ld hl, _DATA_331FC_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

++:
	call _LABEL_2EAC_
	call _LABEL_1BCE_
	cp $01
	jp nz, _LABEL_11DC_
	ld a, (_RAM_C267_)
	ld (_RAM_C2C2_), a
	add a, a
	add a, a
	add a, a
	add a, a
	ld hl, _RAM_C40A_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	cp $09
	jr z, +
	cp $0B
	jr z, ++
	cp $0D
	jr z, +++
	call _LABEL_18A9_
-:
	call _LABEL_5B1_
	and $07
	add a, $04
	call _LABEL_187D_
	jp z, -
	push hl
	pop ix
	call _LABEL_121D_
	jp _LABEL_120B_

+:
	ld d, $FB
	jr ++++

++:
	ld d, $F6
	jr ++++

+++:
	ld d, $EC
++++:
	ld e, a
	call _LABEL_1EEE_
	jp _LABEL_120B_

_LABEL_11DC_:
	cp $03
	jp nz, +
	ld a, c
	ld (_RAM_C2C2_), a
	ld a, b
	and $1F
	ld hl, _DATA_1A8A_
	call _LABEL_E6_
	jp _LABEL_120B_

+:
	cp $04
	jp nz, _LABEL_120B_
	ld a, (_RAM_C267_)
	ld (_RAM_C2C2_), a
	ld a, b
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	jr nz, +
	ld (_RAM_C29B_), hl
	call _LABEL_2201_
_LABEL_120B_:
	call _LABEL_3105_
	call _LABEL_2ECD_
	ret

+:
	ld hl, _DATA_33EA1_
	call _LABEL_31CF_
	call _LABEL_3464_
	jr _LABEL_120B_

_LABEL_121D_:
	ld a, (iy+8)
	bit 7, (iy+0)
	jr z, +
	ld c, a
	rrca
	and $7F
	add a, c
	jr nc, +
	ld a, $FF
+:
	call _LABEL_1279_
	ld c, a
	ld a, (ix+9)
	call _LABEL_1279_
	sub c
	jr c, _LABEL_125E_
	cp $10
	jr c, _LABEL_1251_
	rrca
	jr c, _LABEL_1251_
	ld a, $BB
	ld (_RAM_C004_), a
	ld hl, _DATA_33108_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_1251_:
	call _LABEL_5B1_
	and $1F
	cp (iy+5)
	jr z, +
	jr nc, _LABEL_1251_
+:
	cpl
_LABEL_125E_:
	push af
	ld a, $AD
	ld (_RAM_C004_), a
	call _LABEL_7BAC_
	pop af
	add a, (ix+1)
	jr c, +
	xor a
+:
	ld (ix+1), a
	ret nz
	ld (ix+0), a
	ld (ix+13), a
	ret

_LABEL_1279_:
	rrca
	and $7F
	ld b, a
	rrca
	and $3F
	ld e, a
	call _LABEL_5B1_
	ld h, a
	call _LABEL_429_
	ld a, e
	add a, b
	add a, h
	ret

_LABEL_128C_:
	call _LABEL_187D_
	ret z
	push hl
	pop iy
	ld a, (iy+13)
	or a
	jr z, ++
	call _LABEL_5B1_
	and $01
	inc a
	ld b, a
	ld a, (iy+13)
	sub b
	jr nc, +
	xor a
+:
	ld (iy+13), a
	or a
	ld hl, _DATA_3321D_
	jr z, +
	ld hl, _DATA_33203_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

++:
	ld a, (_RAM_C2E8_)
	and $07
	ld hl, _DATA_12C4_
	jp _LABEL_E6_

; Jump Table from 12C4 to 12D3 (8 entries, indexed by _RAM_C2E8_)
_DATA_12C4_:
.dw _LABEL_1305_ _LABEL_1386_ _LABEL_13CC_ _LABEL_13FF_ _LABEL_1421_ _LABEL_149D_ _LABEL_151A_ _LABEL_1561_

_LABEL_12D4_:
	ld a, (_RAM_C2E8_)
	and $10
	jr z, ++
	call _LABEL_5B1_
	and $03
	ld c, a
	ld a, (_RAM_C2EF_)
	ld b, a
	and $7F
	sub c
	jr nc, +
	xor a
+:
	or a
	jr z, ++
	bit 7, b
	jr z, +
	or $80
+:
	ld (_RAM_C2EF_), a
	ret

++:
	xor a
	ld (_RAM_C2EF_), a
	ld hl, _DATA_331C1_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 1st entry of Jump Table from 12C4 (indexed by _RAM_C2E8_)
_LABEL_1305_:
	ld a, (_RAM_C2EF_)
	or a
	call nz, _LABEL_12D4_
-:
	call _LABEL_5B1_
	and $03
	call _LABEL_187D_
	jp z, -
	ld (_RAM_C2C2_), a
	push hl
	pop ix
	push af
	ld (_RAM_C2EE_), a
	call _LABEL_2F93_
	call _LABEL_1573_
	ld a, (_RAM_C2ED_)
	or a
	push af
	call _LABEL_18CE_
	pop af
	jr nz, ++
	ld a, (_RAM_C2EF_)
	or a
	ld hl, _DATA_331A3_
	jr nz, +
	ld hl, _DATA_33118_
+:
	call _LABEL_31CF_
	call _LABEL_3464_
++:
	pop af
	call _LABEL_187D_
	jr nz, ++
	ld hl, _DATA_33728_
	call _LABEL_31CF_
	ld a, (_RAM_C2E6_)
	cp $46
	jr nz, +
	ld a, (_RAM_C2C2_)
	cp $01
	jr nz, +
	ld hl, _RAM_C400_
	ld de, $0010
	xor a
	ld b, $04
-:
	or (hl)
	ld (hl), $00
	add hl, de
	djnz -
	or a
	jr z, +
	ld hl, _DATA_33F3B_
	call _LABEL_31CF_
+:
	call _LABEL_3464_
++:
	ld b, $04
-:
	ld a, $08
	call _LABEL_52_
	djnz -
	call _LABEL_30B7_
	ret

; 2nd entry of Jump Table from 12C4 (indexed by _RAM_C2E8_)
_LABEL_1386_:
	call _LABEL_5B1_
	and $03
	jp nz, _LABEL_1305_
	ld a, (_RAM_C2EF_)
	and $80
	call nz, _LABEL_12D4_
	ld a, (_RAM_C2EF_)
	and $80
	jr z, _LABEL_13A6_
	ld hl, _DATA_331B2_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_13A6_:
	call _LABEL_5B1_
	and $03
	call _LABEL_187D_
	jr z, _LABEL_13A6_
	ld (_RAM_C2C2_), a
	ld a, $0D
	add a, l
	ld l, a
	ld a, (hl)
	or a
	jp nz, _LABEL_1305_
	ld (hl), $03
	ld a, $A1
	ld (_RAM_C004_), a
	ld hl, _DATA_331EE_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 3rd entry of Jump Table from 12C4 (indexed by _RAM_C2E8_)
_LABEL_13CC_:
	ld a, (iy+1)
	cp $1E
	jr c, +
	call _LABEL_5B1_
	and $07
	jp nz, _LABEL_1305_
+:
	ld b, (iy+6)
	ld a, (iy+1)
	add a, $50
	jr nc, +
	ld a, $FF
+:
	cp b
	jr c, +
	ld a, b
+:
	ld (iy+1), a
	ld a, $A1
	ld (_RAM_C004_), a
	call _LABEL_3105_
	ld hl, _DATA_331D8_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 4th entry of Jump Table from 12C4 (indexed by _RAM_C2E8_)
_LABEL_13FF_:
	call _LABEL_5B1_
	and $0F
	jp nz, _LABEL_1305_
	ld a, (iy+0)
	and $80
	jp nz, _LABEL_1305_
	set 7, (iy+0)
	ld a, $A1
	ld (_RAM_C004_), a
	ld hl, _DATA_33CC2_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 5th entry of Jump Table from 12C4 (indexed by _RAM_C2E8_)
_LABEL_1421_:
	call _LABEL_5B1_
	and $03
	jp nz, _LABEL_1305_
	call +
+:
	ld a, (_RAM_C2EF_)
	and $80
	call nz, _LABEL_12D4_
	ld b, $04
-:
	ld a, b
	sub $04
	neg
	call _LABEL_187D_
	jr nz, _LABEL_1443_
	djnz -
	ret

_LABEL_1443_:
	call _LABEL_5B1_
	and $03
	call _LABEL_187D_
	jp z, _LABEL_1443_
	ld (_RAM_C2C2_), a
	ld (_RAM_C2EE_), a
	call _LABEL_2F93_
	call _LABEL_5B1_
	and $03
	add a, $F6
	ld b, a
	ld a, (_RAM_C2EF_)
	and $80
	ld a, b
	call z, _LABEL_15C2_
	ld a, $80
	ld (_RAM_C88A_), a
	call _LABEL_18CE_
	ld a, (_RAM_C2EF_)
	and $80
	jr z, +
	ld hl, _DATA_331B2_
	call _LABEL_31CF_
	call _LABEL_3464_
+:
	ld a, (_RAM_C2C2_)
	call _LABEL_187D_
	jr nz, +
	ld hl, _DATA_33728_
	call _LABEL_31CF_
	call _LABEL_3464_
+:
	ld b, $04
-:
	ld a, $08
	call _LABEL_52_
	djnz -
	jp _LABEL_30B7_

; 6th entry of Jump Table from 12C4 (indexed by _RAM_C2E8_)
_LABEL_149D_:
	call _LABEL_5B1_
	and $03
	jp nz, _LABEL_1305_
	ld c, $D8
_LABEL_14A7_:
	ld b, $04
_LABEL_14A9_:
	push bc
	ld a, (_RAM_C2EF_)
	and $80
	call nz, _LABEL_12D4_
	pop bc
	push bc
	ld a, b
	sub $04
	neg
	call _LABEL_187D_
	jr z, _LABEL_1501_
	ld (_RAM_C2C2_), a
	ld (_RAM_C2EE_), a
	push bc
	call _LABEL_2F93_
	pop bc
	call ++
	ld a, $C0
	ld (_RAM_C88A_), a
	call _LABEL_18CE_
	ld a, (_RAM_C2EF_)
	and $80
	jr z, +
	ld hl, _DATA_331B2_
	call _LABEL_31CF_
	call _LABEL_3464_
+:
	ld a, (_RAM_C2C2_)
	call _LABEL_187D_
	jr nz, +
	ld hl, _DATA_33728_
	call _LABEL_31CF_
	call _LABEL_3464_
+:
	ld b, $04
-:
	ld a, $08
	call _LABEL_52_
	djnz -
	call _LABEL_30B7_
_LABEL_1501_:
	pop bc
	djnz _LABEL_14A9_
	ret

++:
	ld a, c
	cp $FF
	jp z, _LABEL_1579_
	ld a, (_RAM_C2EF_)
	and $80
	ret nz
	call _LABEL_5B1_
	and $0F
	add a, c
	jp _LABEL_15C2_

; 7th entry of Jump Table from 12C4 (indexed by _RAM_C2E8_)
_LABEL_151A_:
	ld a, (_RAM_C420_)
	or a
	jr z, +
	ld a, (_RAM_C42C_)
	cp $1F
	jp z, _LABEL_1305_
+:
	ld a, (_RAM_C2EF_)
	or a
	call nz, _LABEL_12D4_
-:
	call _LABEL_5B1_
	and $03
	call _LABEL_187D_
	jp z, -
	ld (_RAM_C2C2_), a
	ld (_RAM_C2EE_), a
	push hl
	call _LABEL_2F93_
	pop hl
	xor a
	ld (hl), a
	inc hl
	ld (hl), a
	call _LABEL_18CE_
	ld hl, _DATA_33E93_
	call _LABEL_31CF_
	call _LABEL_3464_
	ld b, $04
-:
	ld a, $08
	call _LABEL_52_
	djnz -
	jp _LABEL_30B7_

; 8th entry of Jump Table from 12C4 (indexed by _RAM_C2E8_)
_LABEL_1561_:
	ld a, $3C
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	ld c, $01
	jp nz, _LABEL_14A7_
	ld c, $FF
	jp _LABEL_14A7_

_LABEL_1573_:
	ld a, (_RAM_C2EF_)
	or a
	jr nz, ++
_LABEL_1579_:
	ld a, (iy+8)
	bit 7, (iy+0)
	jr z, +
	ld c, a
	rrca
	and $7F
	add a, c
	jr nc, +
	ld a, $FF
+:
	bit 6, (iy+0)
	jr z, +
	ld c, a
	rrca
	rrca
	and $3F
	ld b, a
	ld a, c
	sub b
+:
	call _LABEL_1279_
	ld c, a
	ld a, (ix+9)
	call _LABEL_1279_
	sub c
	jr c, _LABEL_15C2_
	cp $10
	jr c, _LABEL_15B2_
	rrca
	jr c, _LABEL_15B2_
++:
	xor a
	ld (_RAM_C2ED_), a
	ret

_LABEL_15B2_:
	call _LABEL_5B1_
	and $1F
	cp (ix+5)
	jr z, +
	jr nc, _LABEL_15B2_
+:
	rrca
	and $7F
	cpl
_LABEL_15C2_:
	add a, (ix+1)
	jr c, +
	xor a
+:
	ld (ix+1), a
	jr nz, +
	ld (ix+0), a
	ld (ix+13), a
+:
	ld a, $FF
	ld (_RAM_C2ED_), a
	ret

_LABEL_15D9_:
	call _LABEL_319E_
_LABEL_15DC_:
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	call _LABEL_576A_
	ld a, (_RAM_C29E_)
	or a
	jp nz, +
	call _LABEL_6B3A_
	jp ++

+:
	call _LABEL_3D36_
++:
	ld a, $10
	call _LABEL_52_
	ret

_LABEL_1602_:
	ld a, (_RAM_C2E6_)
	cp $31
	jr z, +
	cp $4A
	jr nz, ++
+:
	ld a, $D8
	ld (_RAM_C004_), a
	ret

++:
	cp $46
	jr nz, +
	ld hl, _RAM_C230_
	ld b, $10
-:
	ld (hl), $30
	inc hl
	djnz -
+:
	ld a, $94
	ld (_RAM_C004_), a
	ld a, (_RAM_C4F0_)
	or a
	ld hl, _DATA_33D17_
	call nz, _LABEL_31CF_
	ld hl, _DATA_33D23_
	call _LABEL_31CF_
	ld hl, _RAM_C202_
	ld (hl), $02
	jp _LABEL_3464_

_LABEL_163E_:
	push af
	call _LABEL_15D9_
	call _LABEL_17BA_
	ld a, $D8
	ld (_RAM_C004_), a
	pop af
	cp $05
	ret nz
	ld a, (_RAM_C29E_)
	or a
	ret nz
	jp _LABEL_688C_

_LABEL_1656_:
	ld a, (_RAM_C2E6_)
	cp $31
	jr nz, +
	ld a, $D8
	ld (_RAM_C004_), a
	ret

+:
	cp $46
	jr nz, +
	ld hl, _RAM_C230_
	ld b, $10
-:
	ld (hl), $30
	inc hl
	djnz -
+:
	ld a, $AF
	ld (_RAM_C004_), a
	call _LABEL_15D9_
	ld a, (_RAM_C2E6_)
	cp $48
	jr z, +
	cp $49
	jr nz, ++
+:
	ld b, $B4
	call _LABEL_2D49_
++:
	ld a, $D8
	ld (_RAM_C004_), a
	ld hl, _DATA_3371B_
	call _LABEL_31CF_
	call _LABEL_170D_
	call _LABEL_17BA_
	ld hl, (_RAM_C2DD_)
	ld a, (_RAM_C2DF_)
	or l
	or h
	ret z
	ld hl, _DATA_33CE1_
	call _LABEL_31CF_
	call _LABEL_16B2_
	call _LABEL_2D25_
	jp _LABEL_28DB_

_LABEL_16B2_:
	ld hl, _RAM_FFFF_
	ld (hl), $14
	ld hl, _DATA_50000_
	ld de, _RAM_C258_
	ld bc, $0008
	ldir
	ld hl, _RAM_C240_
	ld de, _RAM_C220_
	ld bc, $0020
	ldir
	ld hl, _DATA_50008_
	ld de, $6000
	call _LABEL_3FA_
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	ld a, $0D
	ld (_RAM_C800_), a
	call _LABEL_576A_
	ld a, $16
	call _LABEL_52_
	ret

_LABEL_16F1_:
	ld (iy+0), $01
	ld (iy+5), $01
	push iy
	call _LABEL_17BA_
	pop iy
	ld a, (iy+6)
	ld (iy+1), a
	ld a, (iy+7)
	ld (iy+2), a
	ret

_LABEL_170D_:
	ld hl, (_RAM_C2D0_)
	ld (_RAM_C2C5_), hl
	ld a, l
	or h
	ret z
	ld hl, _DATA_33604_
	call _LABEL_31CF_
	ld iy, _RAM_C400_
	ld de, _DATA_F8AF_
	xor a
	ld (_RAM_C2C2_), a
	call +
	ld iy, _RAM_C410_
	ld de, _DATA_F99F_
	ld a, $01
	ld (_RAM_C2C2_), a
	call +
	ld iy, _RAM_C420_
	ld de, _DATA_FA8F_
	ld a, $02
	ld (_RAM_C2C2_), a
	call +
	ld iy, _RAM_C430_
	ld de, _DATA_FB7F_
	ld a, $03
	ld (_RAM_C2C2_), a
+:
	bit 0, (iy+0)
	ret z
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld l, (iy+5)
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, de
	push hl
	pop ix
	ld e, (iy+3)
	ld d, (iy+4)
	ld hl, (_RAM_C2D0_)
	add hl, de
	jr nc, +
	ld hl, $FFFF
+:
	ld (iy+3), l
	ld (iy+4), h
	ret c
	ld a, (iy+5)
	cp $1E
	ret z
	ld a, h
	sub (ix+5)
	ret c
	jr nz, +
	ld a, l
	sub (ix+4)
	ret c
+:
	ld a, $BA
	ld (_RAM_C004_), a
	ld hl, _DATA_33621_
	call _LABEL_31CF_
	ld hl, _RAM_FFFF_
	ld (hl), $03
	inc (iy+5)
	ld a, (ix+6)
	cp (iy+14)
	jr nz, +
	ld a, (ix+7)
	cp (iy+15)
	ret z
+:
	ld hl, _DATA_33635_
	jp _LABEL_31CF_

_LABEL_17BA_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld iy, _RAM_C400_
	ld de, _DATA_F8A7_
	call +
	ld iy, _RAM_C410_
	ld de, _DATA_F997_
	call +
	ld iy, _RAM_C420_
	ld de, _DATA_FA87_
	call +
	ld iy, _RAM_C430_
	ld de, _DATA_FB77_
+:
	bit 0, (iy+0)
	ret z
	ld (iy+0), $01
	ld (iy+13), $00
	ld l, (iy+5)
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, de
	push hl
	pop ix
	ld a, (ix+0)
	ld (iy+6), a
	ld l, (iy+10)
	ld h, $00
	ld de, _DATA_183A_
	add hl, de
	ld a, (hl)
	add a, (ix+1)
	ld (iy+8), a
	ld l, (iy+11)
	ld h, $00
	add hl, de
	ld a, (hl)
	ld l, (iy+12)
	ld h, $00
	add hl, de
	add a, (hl)
	add a, (ix+2)
	ld (iy+9), a
	ld a, (ix+3)
	ld (iy+7), a
	ld a, (ix+6)
	ld (iy+14), a
	ld a, (ix+7)
	ld (iy+15), a
	ret

; Data from 183A to 1879 (64 bytes)
_DATA_183A_:
.db $00 $03 $04 $0C $0A $0A $0A $15 $1F $12 $1E $1E $2E $32 $3C $50
.db $05 $05 $0F $14 $1E $1E $3C $50 $28 $03 $08 $0F $17 $28 $1E $28
.db $32 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

_LABEL_187A_:
	ld a, (_RAM_C267_)
_LABEL_187D_:
	push af
	add a, a
	add a, a
	add a, a
	add a, a
	ld hl, _RAM_C400_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	pop af
	bit 0, (hl)
	ret

_LABEL_188E_:
	push hl
	call _LABEL_187D_
	pop hl
	ret nz
	push af
	push bc
	push de
	push hl
	ld (_RAM_C2C2_), a
	ld hl, _DATA_33730_
	call _LABEL_31CF_
	call _LABEL_3464_
	pop hl
	pop de
	pop bc
	pop af
	ret

_LABEL_18A9_:
	push iy
	ld (_RAM_C80A_), a
	ld a, $0B
	ld (_RAM_C800_), a
	call _LABEL_18B9_
	pop iy
	ret

_LABEL_18B9_:
	ld a, $08
	call _LABEL_52_
	call _LABEL_576A_
	ld a, (_RAM_C800_)
	or a
	jp nz, _LABEL_18B9_
	ld a, $08
	call _LABEL_52_
	ret

_LABEL_18CE_:
	push iy
	ld a, $FF
	ld (_RAM_C29F_), a
	ld a, (_RAM_C2F1_)
	ld (_RAM_C004_), a
-:
	ld a, $08
	call _LABEL_52_
	call _LABEL_576A_
	ld a, (_RAM_C29F_)
	or a
	jp nz, -
	ld a, $08
	call _LABEL_52_
	pop iy
	ret

_LABEL_18F2_:
	ld hl, _RAM_C2A0_
	ld b, $0C
-:
	call _LABEL_5B1_
	and $0F
	cp $0C
	jr nc, -
	add a, $A0
	ld e, a
	ld a, $C2
	adc a, $00
	ld d, a
	ld c, (hl)
	ld a, (de)
	ex de, hl
	ld (hl), c
	ld (de), a
	ex de, hl
	inc hl
	djnz -
	ret

; Jump Table from 1912 to 191B (5 entries, indexed by _RAM_C26B_)
_DATA_1912_:
.dw _LABEL_191C_ _LABEL_19DE_ _LABEL_1B9E_ _LABEL_192B_ _LABEL_199C_

; 1st entry of Jump Table from 1912 (indexed by _RAM_C26B_)
_LABEL_191C_:
	ld bc, $0001
	xor a
	call _LABEL_1BB9_
	ld a, (_RAM_C267_)
	inc a
	ld (_RAM_C267_), a
	ret

; 4th entry of Jump Table from 1912 (indexed by _RAM_C26B_)
_LABEL_192B_:
	call _LABEL_2ECD_
	call _LABEL_30B7_
	call _LABEL_30E1_
	ld a, (_RAM_C267_)
	ld (_RAM_C2C2_), a
	ld hl, _DATA_33128_
	call _LABEL_31CF_
	ld a, (_RAM_C2E8_)
	and $80
	jr z, _LABEL_1951_
	ld a, (_RAM_C448_)
	ld b, a
	ld a, (_RAM_C408_)
	cp b
	jr nc, _LABEL_1964_
_LABEL_1951_:
	ld a, $04
	ld (_RAM_C267_), a
	ld a, $FF
	ld (_RAM_C2D4_), a
	ld hl, _DATA_3313D_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_1964_:
	ld hl, _DATA_33132_
	call _LABEL_31CF_
-:
	call _LABEL_5B1_
	and $0F
	cp $09
	jr nc, -
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_198A_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	call _LABEL_31CF_
	ld a, $06
	ld (_RAM_C267_), a
	jp _LABEL_3464_

; Pointer Table from 198A to 199B (9 entries, indexed by unknown)
_DATA_198A_:
.dw _DATA_33AAE_ _DATA_33AD0_ _DATA_33AE6_ _DATA_33AF4_ _DATA_33B06_ _DATA_33B0D_ _DATA_33B20_ _DATA_33B3D_
.dw _DATA_33B45_

; 5th entry of Jump Table from 1912 (indexed by _RAM_C26B_)
_LABEL_199C_:
	call _LABEL_2ECD_
	call _LABEL_30B7_
	call _LABEL_30E1_
	ld a, (_RAM_C2E7_)
	ld b, a
	call _LABEL_5B1_
	cp b
	jr nc, ++
	ld a, (_RAM_C29E_)
	or a
	jr nz, +
	call _LABEL_687A_
	jr nz, ++
+:
	ld a, $BC
	ld (_RAM_C004_), a
	ld a, $05
	ld (_RAM_C267_), a
	ret

++:
	ld a, (_RAM_C267_)
	ld (_RAM_C2C2_), a
	ld hl, _DATA_3315E_
	call _LABEL_31CF_
	ld a, $04
	ld (_RAM_C267_), a
	ld a, $FF
	ld (_RAM_C2D4_), a
	jp _LABEL_3464_

; 2nd entry of Jump Table from 1912 (indexed by _RAM_C26B_)
_LABEL_19DE_:
	ld a, (_RAM_C267_)
	ld (_RAM_C2C2_), a
	cp $02
	jp nz, +
	ld hl, _DATA_335BA_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld c, a
	add a, a
	add a, a
	add a, a
	add a, a
	ld hl, _RAM_C40E_
	add a, l
	ld l, a
	ld a, (hl)
	or a
	jp z, _LABEL_1A42_
	ld b, a
	ld a, c
	cp $03
	jr nz, +
	dec a
+:
	push af
	push hl
	call _LABEL_3478_
	ld hl, $7A8C
	ld (_RAM_C269_), hl
	pop hl
	ld a, (hl)
	dec a
	ld (_RAM_C26E_), a
	call _LABEL_2D51_
	pop hl
	bit 4, c
	jp nz, +
	ld l, a
	ld a, h
	add a, a
	add a, a
	add a, h
	add a, l
	ld l, a
	ld h, $00
	ld de, _DATA_1A57_
	add hl, de
	ld a, (hl)
	and $1F
	ld b, a
	call _LABEL_1B87_
	jr c, ++
	ld a, b
	ld hl, _DATA_1A66_
	call _LABEL_E6_
+:
	jp _LABEL_34C9_

_LABEL_1A42_:
	ld hl, _DATA_335C8_
	call _LABEL_31CF_
	jp _LABEL_3464_

++:
	ld hl, _DATA_336F7_
	call _LABEL_31CF_
	call _LABEL_3464_
	jp _LABEL_34C9_

; Data from 1A57 to 1A65 (15 bytes)
_DATA_1A57_:
.db $01 $09 $10 $05 $08 $02 $0B $03 $0A $00 $05 $11 $07 $04 $06

; Jump Table from 1A66 to 1A89 (18 entries, indexed by unknown)
_DATA_1A66_:
.dw _LABEL_1AAE_ _LABEL_1AB1_ _LABEL_1AB1_ _LABEL_1AFD_ _LABEL_1AFD_ _LABEL_1AD0_ _LABEL_1AD0_ _LABEL_1AD0_
.dw _LABEL_1AD0_ _LABEL_1AFD_ _LABEL_1ADE_ _LABEL_1AFD_ _LABEL_1AFD_ _LABEL_1AFD_ _LABEL_1AFD_ _LABEL_1AFD_
.dw _LABEL_1B0D_ _LABEL_1B31_

; Jump Table from 1A8A to 1AAD (18 entries, indexed by _RAM_C2AD_)
_DATA_1A8A_:
.dw _LABEL_1E24_ _LABEL_1E46_ _LABEL_1E4A_ _LABEL_1E8A_ _LABEL_1E8E_ _LABEL_1EA7_ _LABEL_1EE6_ _LABEL_1F25_
.dw _LABEL_1F36_ _LABEL_1F80_ _LABEL_1FC0_ _LABEL_1FDF_ _LABEL_201C_ _LABEL_2064_ _LABEL_2091_ _LABEL_20BF_
.dw _LABEL_1B0D_ _LABEL_1B31_

; 1st entry of Jump Table from 1A66 (indexed by unknown)
_LABEL_1AAE_:
	jp _LABEL_1AAE_

; 2nd entry of Jump Table from 1A66 (indexed by unknown)
_LABEL_1AB1_:
	push bc
	call _LABEL_3682_
	pop de
	bit 4, c
	jr nz, +
	call _LABEL_188E_
	jr z, +
	ld c, $03
	ld b, d
	call _LABEL_1BB9_
	ld a, (_RAM_C267_)
	inc a
	ld (_RAM_C267_), a
+:
	call _LABEL_36CC_
	ret

; 6th entry of Jump Table from 1A66 (indexed by unknown)
_LABEL_1AD0_:
	ld c, $03
	xor a
	call _LABEL_1BB9_
	ld a, (_RAM_C267_)
	inc a
	ld (_RAM_C267_), a
	ret

; 11th entry of Jump Table from 1A66 (indexed by unknown)
_LABEL_1ADE_:
	push bc
	call _LABEL_3682_
	pop de
	bit 4, c
	jr nz, +
	call _LABEL_188E_
	jr z, +
	ld c, $03
	ld b, d
	call _LABEL_1BB9_
	ld a, (_RAM_C267_)
	inc a
	ld (_RAM_C267_), a
+:
	call _LABEL_36CC_
	ret

; 4th entry of Jump Table from 1A66 (indexed by unknown)
_LABEL_1AFD_:
	ld c, $03
	ld a, (_RAM_C2C2_)
	call _LABEL_1BB9_
	ld a, (_RAM_C267_)
	inc a
	ld (_RAM_C267_), a
	ret

; 17th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1B0D_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
_LABEL_1B17_:
	ld a, (_RAM_C2E8_)
	and $C0
	jp z, _LABEL_1951_
	and $40
	jp z, _LABEL_1964_
	ld a, (_RAM_C448_)
	ld b, a
	ld a, (_RAM_C408_)
	cp b
	jr nc, +
	jp _LABEL_1951_

; 18th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1B31_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
_LABEL_1B36_:
	ld a, (_RAM_C2E8_)
	and $C0
	jp z, _LABEL_1951_
	and $40
	jp z, _LABEL_1964_
+:
	ld a, $AC
	ld (_RAM_C004_), a
	ld hl, _DATA_33132_
	call _LABEL_31CF_
-:
	call _LABEL_5B1_
	and $0F
	cp $0A
	jr nc, -
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_1B73_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	call _LABEL_31CF_
	ld a, $06
	ld (_RAM_C267_), a
	ld a, $D5
	ld (_RAM_C004_), a
	jp _LABEL_3464_

; Pointer Table from 1B73 to 1B86 (10 entries, indexed by unknown)
_DATA_1B73_:
.dw _DATA_33B5C_ _DATA_33B8D_ _DATA_33BBF_ _DATA_33BD2_ _DATA_33BF0_ _DATA_33C1A_ _DATA_33C42_ _DATA_33C5B_
.dw _DATA_33C89_ _DATA_33CAA_

_LABEL_1B87_:
	ld hl, _DATA_1DDC_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (_RAM_C267_)
	add a, a
	add a, a
	add a, a
	add a, a
	ld de, _RAM_C402_
	add a, e
	ld e, a
	ld a, (de)
	sub (hl)
	ret

; 3rd entry of Jump Table from 1912 (indexed by _RAM_C26B_)
_LABEL_1B9E_:
	call _LABEL_34D5_
	call _LABEL_3656_
	bit 4, c
	ret nz
	ld a, (_RAM_C2C4_)
	ld b, a
	ld c, $04
	xor a
	call _LABEL_1BB9_
	ld a, (_RAM_C267_)
	inc a
	ld (_RAM_C267_), a
	ret

_LABEL_1BB9_:
	push af
	ld a, (_RAM_C267_)
	add a, a
	add a, a
	ld hl, $C2AC
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	pop af
	ld (hl), c
	inc hl
	ld (hl), b
	inc hl
	ld (hl), a
	ret

_LABEL_1BCE_:
	ld a, (_RAM_C267_)
	add a, a
	add a, a
	ld hl, _RAM_C2AC_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld c, (hl)
	ret

_LABEL_1BE1_:
	xor a
	ld (_RAM_C29D_), a
	ld (_RAM_C2D8_), a
	call _LABEL_36DD_
	call _LABEL_2ED9_
-:
	ld a, (_RAM_C2D8_)
	or a
	jr nz, ++
	ld hl, $7882
	ld (_RAM_C269_), hl
	ld a, $04
	ld (_RAM_C26E_), a
	call _LABEL_2D51_
	bit 4, c
	jp nz, +
	ld hl, _DATA_1C97_
	call _LABEL_E6_
	call _LABEL_36EF_
	jp -

+:
	ld a, $FF
++:
	push af
	cp $05
	jr z, +
	xor a
	ld (_RAM_C800_), a
	ld a, $D0
	ld (_RAM_C900_), a
+:
	call _LABEL_30B7_
	call _LABEL_36FB_
	pop af
	cp $FF
	ret z
	cp $03
	ret c
	cp $05
	jr nc, +
	ld c, a
	jp _LABEL_681B_

+:
	cp $06
	jr nc, +
	call _LABEL_7C85_
	call _LABEL_2D25_
	jp _LABEL_4414_

+:
	cp $07
	jr nc, +
	ld a, $85
	call _LABEL_C97_
	call _LABEL_7CBB_
	ld a, $FF
	ld (_RAM_C2DC_), a
	jp _LABEL_1BE1_

+:
	cp $08
	jp c, _LABEL_4497_
	ld a, $BF
	ld (_RAM_C004_), a
	ld hl, _RAM_C202_
	ld (hl), $08
	xor a
	ld (_RAM_C30E_), a
	ld a, (_RAM_C317_)
	ld l, a
	add a, a
	add a, l
	ld h, $00
	ld l, a
	ld de, _DATA_1C7C_
	add hl, de
	jp _LABEL_787B_

; Data from 1C7C to 1C96 (27 bytes)
_DATA_1C7C_:
.db $04 $16 $69 $04 $27 $6B $07 $29 $2A $09 $19 $66 $0E $29 $19 $0F
.db $15 $43 $11 $53 $52 $16 $15 $2C $15 $28 $61

; Jump Table from 1C97 to 1CA0 (5 entries, indexed by _RAM_C26B_)
_DATA_1C97_:
.dw _LABEL_1CA1_ _LABEL_1D4D_ _LABEL_2168_ _LABEL_2839_ _LABEL_1CDF_

; 1st entry of Jump Table from 1C97 (indexed by _RAM_C26B_)
_LABEL_1CA1_:
	call _LABEL_3665_
	bit 4, c
	jr nz, +++
	call _LABEL_188E_
	jr z, +++
	push af
	call _LABEL_3707_
	call _LABEL_37CF_
	call _LABEL_2D25_
	pop af
	ld c, a
	add a, a
	add a, a
	add a, a
	add a, a
	ld hl, _RAM_C40E_
	add a, l
	ld l, a
	ld a, (hl)
	or a
	jr z, ++
	ld b, a
	ld a, c
	cp $03
	jr nz, +
	dec a
+:
	call _LABEL_3478_
	call _LABEL_2D25_
	call _LABEL_34C9_
++:
	call _LABEL_38C1_
	call _LABEL_374D_
+++:
	jp _LABEL_36BB_

; 5th entry of Jump Table from 1C97 (indexed by _RAM_C26B_)
_LABEL_1CDF_:
	ld hl, _DATA_33A62_
	call _LABEL_31CF_
	call _LABEL_39A5_
	ld hl, _DATA_33A82_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr nz, _LABEL_1D3B_
	ld a, (_RAM_C202_)
	ld (_RAM_C316_), a
	ld hl, _DATA_33A93_
	call _LABEL_31CF_
	push bc
	ld a, (_RAM_C2C5_)
	ld h, a
	ld l, $00
	add hl, hl
	add hl, hl
	set 7, h
	ex de, hl
	call _LABEL_73A_
	push af
	push hl
	ld a, $08
	ld (_RAM_FFFC_), a
	ld (hl), $00
	ld hl, _RAM_C300_
	ld bc, $0400
	ldir
	ld a, $80
	ld (_RAM_FFFC_), a
	pop hl
	pop af
	ld a, $08
	ld (_RAM_FFFC_), a
	ld (hl), $01
	ld a, $80
	ld (_RAM_FFFC_), a
	pop bc
	jr z, +
	ld hl, _DATA_33AA3_
	call _LABEL_31CF_
_LABEL_1D3B_:
	call _LABEL_39DD_
	jp _LABEL_3464_

+:
	xor a
	ld (_RAM_C780_), a
	ld hl, _RAM_C202_
	ld (hl), $10
	pop hl
	pop hl
	ret

; 2nd entry of Jump Table from 1C97 (indexed by _RAM_C26B_)
_LABEL_1D4D_:
	call _LABEL_3665_
	bit 4, c
	jp nz, _LABEL_1DBA_
	call _LABEL_188E_
	jp z, _LABEL_1DBA_
	cp $02
	jp z, _LABEL_1DC5_
	ld c, a
	ld (_RAM_C2C2_), a
	ld (_RAM_C267_), a
	add a, a
	add a, a
	add a, a
	add a, a
	ld hl, _RAM_C40F_
	add a, l
	ld l, a
	ld a, (hl)
	or a
	jp z, _LABEL_1DC0_
	ld b, a
	ld a, c
	cp $03
	jr nz, +
	dec a
+:
	ld c, a
	add a, $03
	push bc
	push hl
	call _LABEL_3478_
	ld hl, $7A8C
	ld (_RAM_C269_), hl
	pop hl
	ld a, (hl)
	dec a
	ld (_RAM_C26E_), a
	call _LABEL_2D51_
	pop hl
	bit 4, c
	jp nz, _LABEL_1DB7_
	ld h, a
	ld a, l
	add a, a
	add a, a
	add a, l
	add a, h
	ld l, a
	ld h, $00
	ld de, _DATA_1DEF_
	add hl, de
	ld a, (hl)
	and $1F
	ld b, a
	call _LABEL_1B87_
	jp c, ++
	ld a, b
	ld hl, _DATA_1DFE_
	call _LABEL_E6_
_LABEL_1DB7_:
	call _LABEL_34C9_
_LABEL_1DBA_:
	call _LABEL_36BB_
	jp _LABEL_2F3C_

_LABEL_1DC0_:
	ld hl, _DATA_335C8_
	jr +

_LABEL_1DC5_:
	ld hl, _DATA_335BA_
+:
	call _LABEL_31CF_
	call _LABEL_3464_
	jp _LABEL_36BB_

++:
	ld hl, _DATA_336F7_
	call _LABEL_31CF_
	call _LABEL_3464_
	jr _LABEL_1DB7_

; Data from 1DDC to 1DEE (19 bytes)
_DATA_1DDC_:
.db $00 $02 $06 $06 $0A $04 $10 $0C $04 $02 $0A $02 $02 $04 $04 $0C
.db $02 $04 $08

; Data from 1DEF to 1DFD (15 bytes)
_DATA_1DEF_:
.db $01 $12 $00 $00 $00 $02 $0C $0D $00 $00 $02 $0D $11 $0E $0F

; Jump Table from 1DFE to 1E23 (19 entries, indexed by unknown)
_DATA_1DFE_:
.dw _LABEL_1E24_ _LABEL_1E27_ _LABEL_1E2B_ _LABEL_1E8A_ _LABEL_1E8E_ _LABEL_1EA7_ _LABEL_1EE6_ _LABEL_1F25_
.dw _LABEL_1F36_ _LABEL_1F80_ _LABEL_1FC0_ _LABEL_1FDF_ _LABEL_201C_ _LABEL_2064_ _LABEL_2091_ _LABEL_20BF_
.dw _LABEL_20F8_ _LABEL_20F8_ _LABEL_2140_

; 1st entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1E24_:
	jp _LABEL_1E24_

; 2nd entry of Jump Table from 1DFE (indexed by unknown)
_LABEL_1E27_:
	ld d, $14
	jr +

; 3rd entry of Jump Table from 1DFE (indexed by unknown)
_LABEL_1E2B_:
	ld d, $50
+:
	push bc
	push de
	call _LABEL_3682_
	pop de
	bit 4, c
	pop bc
	jr nz, +
	ld (_RAM_C2C2_), a
	call _LABEL_188E_
	jr z, +
	call ++
+:
	jp _LABEL_36CC_

; 2nd entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1E46_:
	ld d, $14
	jr +

; 3rd entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1E4A_:
	ld d, $50
+:
	ld a, (_RAM_C2C2_)
	call _LABEL_188E_
	ret z
++:
	push de
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
	pop de
_LABEL_1E5F_:
	push de
	ld hl, _DATA_331D0_
	call _LABEL_31CF_
	pop de
	ld a, $C1
	ld (_RAM_C004_), a
	ld a, (_RAM_C2C2_)
	call _LABEL_187D_
	push hl
	pop ix
	ld b, (ix+6)
	ld a, (ix+1)
	add a, d
	jr nc, +
	ld a, $FF
+:
	cp b
	jr c, +
	ld a, b
+:
	ld (ix+1), a
	jp _LABEL_3464_

; 4th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1E8A_:
	ld c, $06
	jr +

; 5th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1E8E_:
	ld c, $86
+:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
	ld a, c
	ld (_RAM_C2EF_), a
	ld hl, _DATA_3318B_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 6th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1EA7_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld de, $F610
	call _LABEL_1EB2_
_LABEL_1EB2_:
	ld b, $08
-:
	ld a, b
	sub $0C
	neg
	call _LABEL_187D_
	jr nz, +
	djnz -
	ret

+:
	push de
	ld a, e
	call _LABEL_18A9_
-:
	call _LABEL_5B1_
	and $07
	add a, $04
	call _LABEL_187D_
	jp z, -
	push hl
	pop ix
	pop de
	push de
	call _LABEL_5B1_
	and $03
	add a, d
	call _LABEL_125E_
	call _LABEL_3105_
	pop de
	ret

; 7th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1EE6_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld de, $D811
_LABEL_1EEE_:
	ld b, $08
-:
	push bc
	ld a, b
	sub $0C
	neg
	call _LABEL_187D_
	jp z, ++
	push hl
	pop ix
	push de
	ld a, e
	call _LABEL_18A9_
	pop de
	push de
	ld a, d
	cp $D8
	jr nz, +
	call _LABEL_5B1_
	and $0F
	add a, d
+:
	call _LABEL_125E_
	call _LABEL_3105_
	pop de
	ld a, (_RAM_C2E6_)
	cp $49
	jr z, +++
++:
	pop bc
	djnz -
	ret

+++:
	pop bc
	ret

; 8th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1F25_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld de, $F412
	call _LABEL_1EB2_
	call _LABEL_1EB2_
	jp _LABEL_1EB2_

; 9th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1F36_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
	ld a, (_RAM_C2E8_)
	and $20
	jr z, ++
	ld a, (_RAM_C448_)
	ld b, a
	ld a, (_RAM_C408_)
	cp b
	ld c, $03
	jr nc, +
	call _LABEL_5B1_
	and $03
	jr z, ++
	ld c, a
+:
	ld de, $000D
	ld b, $08
-:
	ld a, b
	sub $0C
	neg
	call _LABEL_187D_
	jr z, +
	add hl, de
	ld a, (hl)
	or a
	jr z, +++
+:
	djnz -
++:
	ld hl, _DATA_33172_
	jr ++++

+++:
	ld (hl), c
	ld hl, _DATA_331E0_
++++:
	call _LABEL_31CF_
	jp _LABEL_3464_

; 10th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1F80_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	xor a
	ld (_RAM_C2C4_), a
_LABEL_1F89_:
	ld a, (_RAM_C2E7_)
	or a
	jr z, +
	ld a, (_RAM_C29E_)
	or a
	jr nz, ++
	call _LABEL_687A_
	jr z, ++
+:
	ld a, (_RAM_C2C4_)
	or a
	ld hl, _DATA_33172_
	jr z, +
	ld hl, _DATA_332CD_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

++:
	ld a, $BC
	ld (_RAM_C004_), a
	ld hl, _DATA_3325F_
	call _LABEL_31CF_
	call _LABEL_3464_
	ld a, $05
	ld (_RAM_C267_), a
	ret

; 11th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1FC0_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
	ld a, (_RAM_C2C2_)
	call _LABEL_188E_
	ret z
	call _LABEL_187D_
	set 7, (hl)
	ld hl, _DATA_3322F_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 12th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_1FDF_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
	ld a, (_RAM_C448_)
	ld b, a
	ld a, (_RAM_C408_)
	cp b
	jr c, ++
	call _LABEL_5B1_
	cp $B2
	jr nc, ++
	ld b, $08
-:
	ld a, b
	sub $0C
	neg
	call _LABEL_187D_
	jr z, +
	bit 6, (hl)
	jr z, +++
+:
	djnz -
++:
	ld hl, _DATA_33172_
	jr ++++

+++:
	set 6, (hl)
	ld hl, _DATA_3324C_
++++:
	call _LABEL_31CF_
	jp _LABEL_3464_

; 13th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_201C_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
	ld a, (_RAM_C800_)
	cp $0E
	jr z, ++
	ld a, (_RAM_C29E_)
	or a
	ld hl, _DATA_33569_
	jr nz, +
	call _LABEL_684A_
	ld hl, _DATA_33569_
	jr z, +
	ld l, c
	ld h, $CB
	ld (hl), $00
	ld hl, _DATA_3328E_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

++:
	ld a, (_RAM_C80F_)
	cp $3D
	ld hl, _DATA_3327F_
	jr z, +
	ld hl, _DATA_3328E_
+:
	call _LABEL_31CF_
	ld a, $3D
	ld (_RAM_C80F_), a
	jp _LABEL_28EE_

; 14th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_2064_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, (_RAM_C29E_)
	or a
	jr z, _LABEL_2078_
	ld hl, _DATA_33172_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_2078_:
	ld a, $BF
	ld (_RAM_C004_), a
	ld hl, _DATA_3359C_
	call _LABEL_31CF_
	call _LABEL_3464_
	ld a, $FF
	ld (_RAM_C2D8_), a
	ld hl, _RAM_C202_
	ld (hl), $08
	ret

; 15th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_2091_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
	ld a, (_RAM_C29E_)
	or a
	jr z, +
-:
	ld hl, _DATA_33172_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld b, $01
	call _LABEL_6BE9_
	and $07
	cp $06
	jr nz, -
	bit 7, (hl)
	jr nz, -
	ld a, $04
	ld (_RAM_C2D8_), a
	ret

; 16th entry of Jump Table from 1A8A (indexed by _RAM_C2AD_)
_LABEL_20BF_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	call _LABEL_3682_
	bit 4, c
	jr nz, +++
	push af
	ld a, $AB
	ld (_RAM_C004_), a
	pop af
	ld (_RAM_C2C2_), a
	call _LABEL_187D_
	jr z, +
	ld hl, _DATA_33709_
	jr ++

+:
	ld (hl), $01
	ld a, $06
	add a, l
	ld e, a
	ld d, h
	ex de, hl
	inc de
	ldi
	ldi
	ld hl, _DATA_335B0_
++:
	call _LABEL_31CF_
	call _LABEL_3464_
+++:
	jp _LABEL_36CC_

; 17th entry of Jump Table from 1DFE (indexed by unknown)
_LABEL_20F8_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AC
	ld (_RAM_C004_), a
_LABEL_2102_:
	ld a, (_RAM_C800_)
	cp $0E
	jr z, ++
	ld a, (_RAM_C29E_)
	or a
	ld hl, _DATA_33424_
	jr nz, +
	call _LABEL_684A_
	ld hl, _DATA_33424_
	jr z, +
	ld hl, _DATA_33404_
+:
	call _LABEL_31CF_
	ld a, $D5
	ld (_RAM_C004_), a
	jp _LABEL_3464_

++:
	ld a, (_RAM_C80F_)
	cp $3D
	ld hl, _DATA_33424_
	jr z, +
	ld hl, _DATA_33404_
+:
	call _LABEL_31CF_
	ld a, $D5
	ld (_RAM_C004_), a
	jp _LABEL_28DB_

; 19th entry of Jump Table from 1DFE (indexed by unknown)
_LABEL_2140_:
	ld a, b
	call _LABEL_1B87_
	ld (de), a
	ld a, $AB
	ld (_RAM_C004_), a
	ld a, (_RAM_C29E_)
	or a
	jr nz, _LABEL_2159_
	ld hl, _DATA_33172_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_2159_:
	ld hl, _DATA_3359C_
	call _LABEL_31CF_
	call _LABEL_3464_
	ld a, $08
	ld (_RAM_C2D8_), a
	ret

; 3rd entry of Jump Table from 1C97 (indexed by _RAM_C26B_)
_LABEL_2168_:
	ld a, (_RAM_C4E2_)
	or a
	jp nz, +
	call _LABEL_34D5_
	jp _LABEL_3656_

+:
	call _LABEL_34D5_
	bit 4, c
	jp nz, _LABEL_21F5_
	ld a, (_RAM_C2C4_)
	cp $21
	jr c, +++
	cp $24
	jr nc, +++
	sub $21
	add a, a
	add a, a
	add a, $04
	ld b, a
	ld a, (_RAM_C30E_)
	or a
	jr z, +++
	cp b
	jr nz, +++
	cp $08
	jr z, +
	push bc
	call _LABEL_7656_
	pop bc
	jr ++

+:
	push bc
	call _LABEL_7732_
	pop bc
++:
	ld hl, _DATA_332FB_
	jr nz, +
	xor a
	ld (_RAM_C30E_), a
	dec a
	ld (_RAM_C2D8_), a
	ld hl, _DATA_3330A_
+:
	call _LABEL_31CF_
	call _LABEL_3464_
	jp _LABEL_21F5_

+++:
	ld b, $04
-:
	ld a, b
	sub $04
	neg
	call _LABEL_187D_
	jp nz, +
	djnz -
	jp _LABEL_21F5_

+:
	ld (_RAM_C2C2_), a
	call _LABEL_3759_
	ld hl, $7A72
	ld (_RAM_C269_), hl
	ld a, $02
	ld (_RAM_C26E_), a
	call _LABEL_2D51_
	bit 4, c
	jp nz, +
	ld hl, _DATA_21FB_
	call _LABEL_E6_
+:
	call _LABEL_376B_
_LABEL_21F5_:
	call _LABEL_3656_
	jp _LABEL_2F3C_

; Jump Table from 21FB to 2200 (3 entries, indexed by _RAM_C26B_)
_DATA_21FB_:
.dw _LABEL_2201_ _LABEL_26C8_ _LABEL_2752_

; 1st entry of Jump Table from 21FB (indexed by _RAM_C26B_)
_LABEL_2201_:
	ld a, (_RAM_C2C4_)
	ld hl, _DATA_220A_
	jp _LABEL_E6_

; Jump Table from 220A to 2289 (64 entries, indexed by _RAM_C2C4_)
_DATA_220A_:
.dw _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_2299_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_
.dw _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_
.dw _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_
.dw _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_ _LABEL_228A_
.dw _LABEL_228A_ _LABEL_22AF_ _LABEL_22E5_ _LABEL_231A_ _LABEL_2333_ _LABEL_2337_ _LABEL_2369_ _LABEL_239D_
.dw _LABEL_23E2_ _LABEL_23EC_ _LABEL_2416_ _LABEL_242F_ _LABEL_2491_ _LABEL_24E9_ _LABEL_2524_ _LABEL_2537_
.dw _LABEL_2589_ _LABEL_25C3_ _LABEL_2613_ _LABEL_26B0_ _LABEL_26B0_ _LABEL_2631_ _LABEL_26B0_ _LABEL_26B0_
.dw _LABEL_26B0_ _LABEL_26B0_ _LABEL_26B0_ _LABEL_26B0_ _LABEL_26B0_ _LABEL_26B0_ _LABEL_267C_ _LABEL_26B0_

; 1st entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_228A_:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld hl, _DATA_332CD_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 5th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2299_:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	jp nz, _LABEL_1F89_
	ld hl, _DATA_33312_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 34th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_22AF_:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld e, $04
_LABEL_22B7_:
	ld a, (_RAM_C308_)
	cp $04
	ld hl, _DATA_332E3_
	jr nc, +
	ld a, (_RAM_C29E_)
	or a
	jr z, +
	push bc
	push de
	call _LABEL_7656_
	pop de
	pop bc
	ld hl, _DATA_332E3_
	jr nz, +
	ld a, e
	ld (_RAM_C30E_), a
	ld a, $FF
	ld (_RAM_C2D8_), a
	ld hl, _DATA_33305_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

; 35th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_22E5_:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, (_RAM_C308_)
	cp $04
	ld hl, _DATA_332E3_
	jr nc, +
	ld a, (_RAM_C29E_)
	or a
	jr z, +
	push bc
	push de
	call _LABEL_76C1_
	pop de
	pop bc
	ld hl, _DATA_332E3_
	jr nz, +
	ld a, $08
	ld (_RAM_C30E_), a
	ld a, $FF
	ld (_RAM_C2D8_), a
	ld hl, _DATA_33305_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

; 36th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_231A_:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, (_RAM_C308_)
	cp $02
	ld e, $0C
	jp z, _LABEL_22B7_
	ld hl, _DATA_332E3_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 37th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2333_:
	ld d, $0A
	jr +

; 38th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2337_:
	ld d, $28
+:
	ld a, (_RAM_C29D_)
	or a
	ld a, (_RAM_C267_)
	jr nz, +
	push de
	call _LABEL_3665_
	pop de
	bit 4, c
	jr nz, ++
+:
	ld (_RAM_C2C2_), a
	call _LABEL_188E_
	jr z, ++
	push de
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	pop de
	call _LABEL_1E5F_
	call _LABEL_277C_
++:
	ld a, (_RAM_C29D_)
	or a
	ret nz
	jp _LABEL_36BB_

; 39th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2369_:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, $C2
	ld (_RAM_C004_), a
	ld a, (_RAM_C29D_)
	or a
	jr nz, +
	ld hl, _DATA_33FC4_
	call _LABEL_31CF_
	ld a, $D5
	ld (_RAM_C004_), a
	ld a, (_RAM_C29E_)
	or a
	jp z, _LABEL_2078_
	jp _LABEL_3464_

+:
	ld hl, _DATA_33322_
	call _LABEL_31CF_
	ld a, $D5
	ld (_RAM_C004_), a
	jp _LABEL_3464_

; 40th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_239D_:
	ld a, (_RAM_C29D_)
	or a
	jr z, +
	ld hl, _DATA_33366_
	call _LABEL_31CF_
	ld hl, _DATA_3335C_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (_RAM_C29E_)
	or a
	jr z, +
-:
	ld hl, _DATA_33366_
	call _LABEL_31CF_
	ld hl, _DATA_33375_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (_RAM_C315_)
	or a
	jr nz, -
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	call _LABEL_3464_
	call _LABEL_277C_
	ld a, $FF
	ld (_RAM_C315_), a
	ld (_RAM_C2D8_), a
	ret

; 41st entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_23E2_:
	ld a, (_RAM_C29D_)
	or a
	call nz, _LABEL_277C_
	jp _LABEL_2299_

; 42nd entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_23EC_:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	jr z, +
	ld hl, _DATA_332CD_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (_RAM_C29E_)
	or a
	push af
	call nz, _LABEL_277C_
	pop af
	jp nz, _LABEL_2159_
	ld hl, _DATA_33312_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 43rd entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2416_:
	call _LABEL_277C_
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	jp nz, _LABEL_1B17_
	ld hl, _DATA_332CD_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 44th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_242F_:
	ld hl, _DATA_33366_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	jr z, +
	ld hl, _DATA_3335C_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (_RAM_C2DB_)
	cp $A3
	jr z, ++
	call _LABEL_24BE_
	ld hl, _DATA_33569_
	jr nz, +
-:
	ld hl, _DATA_333E3_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

++:
	call _LABEL_24BE_
	jr z, -
	ld hl, _DATA_333B1_
	call _LABEL_31CF_
	call _LABEL_3464_
	call _LABEL_277C_
	ld iy, _RAM_C420_
	ld (iy+10), $06
	ld (iy+11), $13
	call _LABEL_16F1_
	ld a, $02
	ld (_RAM_C4F0_), a
	ld hl, _RAM_C600_
	ld (hl), $00
	ld hl, _RAM_C50A_
	ld (hl), $FF
	ld a, $05
	ld (_RAM_C2D8_), a
	ret

; 45th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2491_:
	ld hl, _DATA_33366_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	jr z, +
	ld hl, _DATA_3335C_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (_RAM_C2DB_)
	cp $A1
	jr z, ++
	call _LABEL_24BE_
	ld hl, _DATA_333E3_
	jr z, +
	ld hl, _DATA_333F9_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_24BE_:
	ld a, (_RAM_C400_)
	ld d, a
	ld a, (_RAM_C420_)
	ld e, a
	ld a, (_RAM_C430_)
	or d
	or e
	ret

++:
	call _LABEL_24BE_
	jr nz, +
	ld hl, _DATA_333E3_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld hl, _DATA_333B1_
	call _LABEL_31CF_
	call _LABEL_277C_
	call _LABEL_5546_
	jp _LABEL_3464_

; 46th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_24E9_:
	ld a, (_RAM_C29E_)
	or a
	jr z, +
_LABEL_24EF_:
	ld hl, _DATA_33366_
	call _LABEL_31CF_
	ld hl, _DATA_33569_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld b, $01
	call _LABEL_6BE9_
	and $07
	cp $05
	jr nz, +
	bit 7, (hl)
	jr nz, +
	ld a, $03
	ld (_RAM_C2D8_), a
	jp _LABEL_3464_

+:
	ld hl, _DATA_332CD_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 47th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2524_:
	call _LABEL_277C_
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	jp nz, _LABEL_1B36_
	jp _LABEL_2102_

; 48th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2537_:
	ld hl, _DATA_33458_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	jr z, +
	ld hl, _DATA_33431_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (_RAM_C2DB_)
	cp $AF
	jr z, +
	ld hl, _DATA_33312_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	push bc
	call _LABEL_7CA6_
	pop bc
	ld a, $38
	call _LABEL_282E_
	jr z, +
	ld hl, _DATA_3349A_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	call _LABEL_277C_
	ld hl, _DATA_33471_
	call _LABEL_31CF_
	call _LABEL_3464_
	ld a, $31
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	ret z
	jp _LABEL_279F_

; 49th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2589_:
	ld hl, _DATA_33458_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	jr z, +
	ld hl, _DATA_3335C_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (_RAM_C2DB_)
	cp $B0
	jr z, +
-:
	ld hl, _DATA_33312_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (_RAM_C2DC_)
	cp $FF
	jr z, -
	ld hl, _DATA_334D5_
	call _LABEL_31CF_
	ld a, $06
	ld (_RAM_C2D8_), a
	jp _LABEL_3464_

; 50th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_25C3_:
	ld a, (_RAM_C410_)
	or a
	jr z, _LABEL_25D7_
	ld a, (_RAM_C309_)
	cp $17
	jr z, +++
	ld a, (_RAM_C2DB_)
	cp $B0
	jr z, ++
_LABEL_25D7_:
	ld hl, _DATA_33366_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	ld hl, _DATA_33500_
	jr z, +
	ld hl, _DATA_3335C_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

++:
	ld a, (_RAM_C2DC_)
	cp $FF
	jr nz, _LABEL_25D7_
-:
	ld hl, _DATA_33743_
	call _LABEL_31CF_
	call _LABEL_3464_
	ld a, $07
	ld (_RAM_C2D8_), a
	ret

+++:
	ld a, (_RAM_C29E_)
	or a
	jr z, _LABEL_25D7_
	ld a, (_RAM_C29D_)
	or a
	jr nz, _LABEL_25D7_
	jr -

; 51st entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2613_:
	ld a, (_RAM_C29D_)
	or a
	jr z, +
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld hl, _DATA_3352C_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld hl, _DATA_33544_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 54th entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_2631_:
	ld a, (_RAM_C29E_)
	or a
	jr z, ++
-:
	ld hl, _DATA_33366_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	ld hl, _DATA_33375_
	jr z, +
	ld hl, _DATA_3335C_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

++:
	ld a, (_RAM_C29D_)
	or a
	jr nz, -
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, (_RAM_C30A_)
	and $03
	ld hl, _DATA_33D01_
	jr z, +
	cp $01
	ld hl, _DATA_33CED_
	jr z, +
	cp $02
	ld hl, _DATA_33D0C_
	jr z, +
	ld hl, _DATA_33CF7_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

; 63rd entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_267C_:
	ld a, (_RAM_C29E_)
	or a
	jp nz, _LABEL_24EF_
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld b, $01
	call _LABEL_6BE9_
	bit 7, (hl)
	jr nz, ++
	and $07
	cp $05
	ld b, $03
	jr z, +
	cp $06
	jr nz, ++
	ld b, $04
+:
	ld a, b
	ld (_RAM_C2D8_), a
	jp _LABEL_3464_

++:
	ld hl, _DATA_332CD_
	call _LABEL_31CF_
	jp _LABEL_3464_

; 52nd entry of Jump Table from 220A (indexed by _RAM_C2C4_)
_LABEL_26B0_:
	ld hl, _DATA_332AC_
	call _LABEL_31CF_
	ld a, (_RAM_C29D_)
	or a
	ld hl, _DATA_33312_
	jr nz, +
	ld hl, _DATA_33555_
+:
	call _LABEL_31CF_
	jp _LABEL_3464_

; 2nd entry of Jump Table from 21FB (indexed by _RAM_C26B_)
_LABEL_26C8_:
	ld hl, _RAM_FFFF_
	ld (hl), $02
	ld a, (_RAM_C2C4_)
	ld hl, _DATA_7FAB_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	rrca
	rrca
	rrca
	rrca
	and $0F
	jp nz, +
	ld hl, _DATA_335F0_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld d, a
	push de
	push hl
	call _LABEL_3665_
	pop hl
	pop de
	bit 4, c
	jp nz, _LABEL_2741_
	call _LABEL_188E_
	jp z, _LABEL_2741_
	ld (_RAM_C2C2_), a
	ld c, a
	inc a
	ld b, a
	ld a, d
-:
	rrca
	djnz -
	jp nc, +
	ld a, c
	add a, a
	add a, a
	add a, a
	add a, a
	ld de, _RAM_C40A_
	add a, e
	ld e, a
	adc a, d
	sub e
	ld d, a
	ld a, (hl)
	and $03
	add a, e
	ld e, a
	ld a, (de)
	ld hl, (_RAM_C29B_)
	ld (hl), a
	push af
	ld a, (_RAM_C2C4_)
	ld (de), a
	ld hl, _DATA_332B6_
	call _LABEL_31CF_
	ld a, (_RAM_C2C2_)
	call _LABEL_3707_
	call _LABEL_2D25_
	call _LABEL_374D_
	call _LABEL_3464_
	pop af
	or a
	call z, _LABEL_277C_
_LABEL_2741_:
	call _LABEL_17BA_
	jp _LABEL_36BB_

+:
	ld hl, _DATA_335DE_
	call _LABEL_31CF_
	call _LABEL_3464_
	jr _LABEL_2741_

; 3rd entry of Jump Table from 21FB (indexed by _RAM_C26B_)
_LABEL_2752_:
	ld hl, _RAM_FFFF_
	ld (hl), $02
	ld a, (_RAM_C2C4_)
	ld hl, _DATA_7FAB_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	and $04
	jr z, +
	ld hl, _DATA_336DE_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld hl, _DATA_332C2_
	call _LABEL_31CF_
	call _LABEL_277C_
	jp _LABEL_3464_

_LABEL_277C_:
	ld hl, (_RAM_C29B_)
_LABEL_277F_:
	push bc
	ld e, l
	ld d, h
	inc hl
	ld a, $D7
	sub e
	and $1F
	jr z, +
	ld c, a
	ld b, $00
	ldir
+:
	ld hl, $C4C0
	ld a, (_RAM_C4E2_)
	dec a
	ld (_RAM_C4E2_), a
	add a, l
	ld l, a
	ld (hl), $00
	pop bc
	ret

_LABEL_279F_:
	ld a, (_RAM_C4E2_)
	cp $18
	jr nc, _LABEL_27BC_
	ld hl, $C4C0
	add a, l
	ld l, a
	ld a, (_RAM_C2C4_)
	ld (hl), a
	ld a, (_RAM_C4E2_)
	inc a
	ld (_RAM_C4E2_), a
	ld a, $B3
	ld (_RAM_C004_), a
	ret

_LABEL_27BC_:
	ld hl, _DATA_33671_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr z, _LABEL_27D8_
	ld hl, _DATA_336C1_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr nz, _LABEL_27D8_
	ld hl, _DATA_336D0_
	jp _LABEL_31CF_

_LABEL_27D8_:
	ld a, (_RAM_C2C4_)
	push af
	ld hl, _DATA_3368C_
	call _LABEL_31CF_
	call _LABEL_34D5_
	call _LABEL_3656_
	bit 4, c
	jr nz, ++
	ld hl, _RAM_FFFF_
	ld (hl), $02
	ld a, (_RAM_C2C4_)
	ld hl, _DATA_7FAB_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	and $04
	jr z, +
	ld hl, _DATA_336DE_
	call _LABEL_31CF_
	pop af
	ld (_RAM_C2C4_), a
	jp _LABEL_27D8_

+:
	ld hl, _DATA_3369E_
	call _LABEL_31CF_
	pop af
	ld (_RAM_C2C4_), a
	ld hl, (_RAM_C29B_)
	ld (hl), a
	ld a, $B3
	ld (_RAM_C004_), a
	ld hl, _DATA_336AD_
	jp _LABEL_31CF_

++:
	pop af
	ld (_RAM_C2C4_), a
	jp _LABEL_27BC_

_LABEL_282E_:
	ld hl, $C4C0
	ld b, $18
-:
	cp (hl)
	ret z
	inc hl
	djnz -
	ret

; 4th entry of Jump Table from 1C97 (indexed by _RAM_C26B_)
_LABEL_2839_:
	ld a, (_RAM_C800_)
	cp $0E
	jr nz, +
	call _LABEL_30B7_
	ld hl, _DATA_33569_
	call _LABEL_31CF_
	call _LABEL_28DB_
	jp _LABEL_2ED9_

+:
	ld hl, (_RAM_C305_)
	ld a, l
	add a, $60
	jr c, +
	cp $C0
	jr c, ++
+:
	add a, $40
	inc h
++:
	ld l, a
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, h
	ld hl, (_RAM_C301_)
	ld bc, $0080
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld l, a
	ld a, (_RAM_C309_)
	cp $07
	jr nz, +
	ld a, l
	cp $28
	jr nz, _LABEL_28C5_
	ld a, h
	cp $1E
	jr nz, _LABEL_28C5_
	ld a, (_RAM_C507_)
	or a
	jr z, _LABEL_28C5_
	cp $FF
	jr z, _LABEL_28C5_
	ld a, $FF
	ld (_RAM_C507_), a
	ld a, $26
	jr ++

+:
	cp $01
	jr nz, _LABEL_28C5_
	ld a, l
	cp $30
	jr nz, _LABEL_28C5_
	ld a, h
	cp $48
	jr nz, _LABEL_28C5_
	ld a, (_RAM_C509_)
	or a
	jr z, _LABEL_28C5_
	ld a, (_RAM_C42C_)
	ld b, a
	ld a, $1F
	cp b
	jr z, _LABEL_28C5_
++:
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	jr z, _LABEL_28C5_
	ld hl, _DATA_33592_
	call _LABEL_31CF_
	call _LABEL_279F_
	jp _LABEL_3464_

_LABEL_28C5_:
	ld a, (_RAM_C2DB_)
	cp $A2
	jp z, _LABEL_5566_
	cp $A3
	jp z, _LABEL_558C_
	ld hl, _DATA_33569_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_28DB_:
	ld hl, _DATA_33656_
	call _LABEL_31CF_
	call _LABEL_37A3_
	push af
	call _LABEL_37C3_
	call _LABEL_3464_
	pop af
	or a
	ret nz
_LABEL_28EE_:
	ld a, $B0
	ld (_RAM_C004_), a
	ld hl, (_RAM_C2E1_)
	ld (hl), $FF
	ld a, $01
	ld (_RAM_C80A_), a
	push bc
	call _LABEL_18B9_
	pop bc
	ld a, (_RAM_C80F_)
	cp $3D
	call nz, _LABEL_2950_
	ld hl, (_RAM_C2DD_)
	ld a, h
	or l
	jr nz, +
	ld a, (_RAM_C2DF_)
	or a
	jr nz, +
	ld hl, _DATA_33665_
	call _LABEL_31CF_
	ld a, $D0
	ld (_RAM_C900_), a
	jp _LABEL_3464_

+:
	ld hl, (_RAM_C2DD_)
	ld (_RAM_C2C5_), hl
	call _LABEL_297A_
	ld a, h
	or l
	ld hl, _DATA_33648_
	call nz, _LABEL_31CF_
	ld a, (_RAM_C2DF_)
	ld (_RAM_C2C4_), a
	or a
	jr z, +
	ld hl, _DATA_33592_
	call _LABEL_31CF_
	call _LABEL_279F_
+:
	ld a, $D0
	ld (_RAM_C900_), a
	jp _LABEL_3464_

_LABEL_2950_:
	ld a, (_RAM_C80F_)
	cp $3E
	jr nz, +
	ld b, $04
-:
	ld a, b
	dec a
	call ++
	djnz -
	ret

+:
	call _LABEL_5B1_
	and $03
++:
	call _LABEL_187D_
	ret z
	inc hl
	push hl
	ld h, (hl)
	ld l, $00
	ld e, $03
	call _LABEL_4FE_
	pop de
	ex de, hl
	ld a, (hl)
	sub d
	ld (hl), a
	ret

_LABEL_297A_:
	ex de, hl
	ld hl, (_RAM_C4E0_)
	add hl, de
	jr nc, +
	ld hl, $FFFF
+:
	ld (_RAM_C4E0_), hl
	ex de, hl
	ret

; Data from 2989 to 298C (4 bytes)
.db $CD $25 $2D $C9

; 3rd entry of Jump Table from 3C2A (indexed by _RAM_C29E_)
_LABEL_298D_:
	ld hl, _DATA_338C8_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jp nz, _LABEL_2A55_
_LABEL_2999_:
	ld a, (_RAM_C4F0_)
	or a
	ld hl, _DATA_33925_
	call nz, _LABEL_31CF_
	call _LABEL_3665_
	bit 4, c
	jp nz, _LABEL_2A52_
	ld (_RAM_C2C2_), a
	call _LABEL_187D_
	jr nz, +
	ld hl, _DATA_33730_
	call _LABEL_31CF_
	jp _LABEL_2A48_

+:
	push hl
	pop iy
	ld a, (iy+1)
	cp (iy+6)
	jr nz, +
	ld a, (iy+2)
	cp (iy+7)
	jr nz, +
	ld hl, _DATA_3396B_
	call _LABEL_31CF_
	ld a, (_RAM_C4F0_)
	or a
	jr nz, _LABEL_2A48_
	ld hl, _DATA_33964_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld a, (iy+6)
	sub (iy+1)
	ld b, a
	ld a, (iy+7)
	sub (iy+2)
	add a, b
	ld l, a
	ld h, $00
	ld (_RAM_C2C5_), hl
	ld hl, _DATA_338E0_
	call _LABEL_31CF_
	call _LABEL_39E9_
	call _LABEL_2D19_
	push af
	call nz, _LABEL_3A12_
	pop af
	jr nz, _LABEL_2A48_
	ld de, (_RAM_C2C5_)
	ld hl, (_RAM_C4E0_)
	or a
	sbc hl, de
	jr c, _LABEL_2A5E_
	ld (_RAM_C4E0_), hl
	call _LABEL_39F7_
	ld a, $C1
	ld (_RAM_C004_), a
	ld a, (iy+6)
	ld (iy+1), a
	ld a, (iy+7)
	ld (iy+2), a
	ld hl, _DATA_33938_
	call _LABEL_31CF_
	call _LABEL_3A12_
	ld a, (_RAM_C4F0_)
	or a
	jr z, +
	ld hl, _DATA_3390A_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr nz, _LABEL_2A52_
_LABEL_2A48_:
	call _LABEL_36BB_
	ld a, (_RAM_C4F0_)
	or a
	jp nz, _LABEL_2999_
_LABEL_2A52_:
	call _LABEL_36BB_
_LABEL_2A55_:
	ld hl, _DATA_33951_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_2A5E_:
	call _LABEL_3A12_
	call _LABEL_36BB_
	ld hl, _DATA_33D57_
	call _LABEL_31CF_
+:
	jp _LABEL_3464_

_LABEL_2A6D_:
	ld bc, $04FF
-:
	ld a, b
	dec a
	call _LABEL_187D_
	jr z, +
	ld a, $06
	add a, l
	ld e, a
	ld d, h
	ex de, hl
	inc de
	ldi
	ldi
+:
	djnz -
	ret

; 5th entry of Jump Table from 3C2A (indexed by _RAM_C29E_)
_LABEL_2A85_:
	ld a, (_RAM_C2DB_)
	ld (_RAM_C317_), a
	ld hl, _DATA_3397F_
	call _LABEL_31CF_
	call _LABEL_2D19_
	or a
	jp nz, _LABEL_2B46_
_LABEL_2A98_:
	ld a, (_RAM_C4F0_)
	or a
	jp z, _LABEL_2B31_
	ld hl, _DATA_339D3_
	call _LABEL_31CF_
	call _LABEL_3665_
	bit 4, c
	jp nz, _LABEL_2B43_
	call _LABEL_187D_
	jr nz, _LABEL_2B31_
	ld (_RAM_C2C2_), a
	push hl
	pop iy
	ld a, (iy+5)
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld e, l
	ld d, h
	add hl, hl
	add hl, hl
	add hl, de
	ld (_RAM_C2C5_), hl
	ld hl, _DATA_339EE_
	call _LABEL_31CF_
	call _LABEL_39E9_
	call _LABEL_2D19_
	push af
	call nz, _LABEL_3A12_
	pop af
	jr nz, _LABEL_2B15_
	ld hl, _DATA_339B0_
	call _LABEL_31CF_
	ld de, (_RAM_C2C5_)
	ld hl, (_RAM_C4E0_)
	or a
	sbc hl, de
	jp c, +
	ld (_RAM_C4E0_), hl
	call _LABEL_39F7_
	ld (iy+0), $01
	ld a, (iy+6)
	ld (iy+1), a
	ld a, (iy+7)
	ld (iy+2), a
	ld hl, _DATA_339C4_
	call _LABEL_31CF_
	ld a, $C5
	ld (_RAM_C004_), a
	call _LABEL_2D33_
	call _LABEL_3A12_
_LABEL_2B15_:
	ld hl, _DATA_339E5_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr nz, _LABEL_2B43_
	call _LABEL_36BB_
	jp _LABEL_2A98_

+:
	ld hl, _DATA_33D9F_
	call _LABEL_31CF_
	call _LABEL_3A12_
	jr _LABEL_2B15_

_LABEL_2B31_:
	ld (_RAM_C2C2_), a
	ld hl, _DATA_33A56_
	call _LABEL_31CF_
	ld a, (_RAM_C4F0_)
	or a
	jr nz, _LABEL_2B15_
	call _LABEL_2D25_
_LABEL_2B43_:
	call _LABEL_36BB_
_LABEL_2B46_:
	ld hl, _DATA_33A3C_
	call _LABEL_31CF_
	ld hl, _DATA_33A04_
	call _LABEL_31CF_
	call +
	jp _LABEL_3464_

+:
	ld iy, _RAM_C400_
	ld de, _DATA_F8AF_
	xor a
	call +
	ld iy, _RAM_C410_
	ld de, $B99F
	ld a, $01
	call +
	ld iy, _RAM_C420_
	ld de, $BA8F
	ld a, $02
	call +
	ld iy, _RAM_C430_
	ld de, $BB7F
	ld a, $03
+:
	ld (_RAM_C2C2_), a
	bit 0, (iy+0)
	ret z
	ld a, (iy+5)
	cp $1E
	jr c, +
	ld hl, _DATA_33DFF_
	jp _LABEL_31CF_

+:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, de
	push hl
	pop ix
	ld e, (iy+3)
	ld d, (iy+4)
	ld l, (ix+4)
	ld h, (ix+5)
	or a
	sbc hl, de
	ld (_RAM_C2C5_), hl
	ld hl, _DATA_33A1F_
	jp _LABEL_31CF_

; 7th entry of Jump Table from 3C2A (indexed by _RAM_C29E_)
_LABEL_2BC0_:
	ld hl, _DATA_337C7_
	call _LABEL_31CF_
_LABEL_2BC6_:
	call _LABEL_2D19_
	jr z, _LABEL_2BD4_
	ld hl, _DATA_337E3_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_2BD4_:
	push bc
	call _LABEL_38CD_
	call _LABEL_39E9_
	pop bc
_LABEL_2BDC_:
	ld hl, _DATA_337F5_
	call _LABEL_31CF_
	push bc
	call _LABEL_38D9_
	bit 4, c
	pop bc
	jr nz, _LABEL_2C2D_
	ld a, (_RAM_C4E2_)
	cp $18
	jr nc, _LABEL_2C3C_
	ld a, (hl)
	ld (_RAM_C2C4_), a
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld hl, (_RAM_C4E0_)
	or a
	sbc hl, de
	jr c, _LABEL_2C41_
	ld a, (_RAM_C2C4_)
	cp $40
	jr nc, _LABEL_2C46_
	ld (_RAM_C4E0_), hl
	call _LABEL_39F7_
	ld a, (_RAM_C2C4_)
	cp $21
	jr c, +
	cp $24
	jr nc, +
	call _LABEL_282E_
	jr z, ++
+:
	call _LABEL_279F_
++:
	ld hl, _DATA_33807_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr z, _LABEL_2BDC_
_LABEL_2C2D_:
	ld hl, _DATA_337E3_
-:
	call _LABEL_31CF_
	call _LABEL_3A12_
	call _LABEL_3999_
	jp _LABEL_3464_

_LABEL_2C3C_:
	ld hl, _DATA_33813_
	jr -

_LABEL_2C41_:
	ld hl, _DATA_33D57_
	jr -

_LABEL_2C46_:
	ld a, (_RAM_C2EC_)
	cp $02
	jr nc, ++
	cp $01
	ld hl, $0142
	jr c, +
	ld hl, $0144
+:
	inc a
	ld (_RAM_C2EC_), a
	call _LABEL_575A_
	call _LABEL_3A12_
	call _LABEL_3999_
	jp _LABEL_3464_

++:
	xor a
	ld (_RAM_C2EC_), a
	push hl
	ld a, $33
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	pop hl
	jr z, _LABEL_2C46_
	ld (_RAM_C4E0_), hl
	call _LABEL_39F7_
	call _LABEL_279F_
	ld hl, $0146
	call _LABEL_575A_
	call _LABEL_3A12_
	call _LABEL_3999_
	jp _LABEL_3464_

; 9th entry of Jump Table from 3C2A (indexed by _RAM_C29E_)
_LABEL_2C8F_:
	ld hl, _DATA_33832_
	call _LABEL_31CF_
	jp _LABEL_2BC6_

; 11th entry of Jump Table from 3C2A (indexed by _RAM_C29E_)
_LABEL_2C98_:
	ld hl, _DATA_3385D_
	call _LABEL_31CF_
	call _LABEL_3777_
	push af
	push bc
	call _LABEL_3797_
	pop bc
	pop af
	bit 4, c
	jp nz, _LABEL_2CEA_
	or a
	jp z, _LABEL_2BD4_
_LABEL_2CB1_:
	ld hl, _DATA_33882_
	call _LABEL_31CF_
	call _LABEL_34D5_
	bit 4, c
	push af
	call _LABEL_3656_
	pop af
	jp nz, _LABEL_2CEA_
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld a, (_RAM_C2C4_)
	and $3F
	add a, a
	ld hl, _DATA_F82F_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C2C5_), hl
	or h
	jr nz, +
	ld hl, _DATA_33D7E_
	call _LABEL_31CF_
	jp _LABEL_2CB1_

_LABEL_2CEA_:
	ld hl, _DATA_337E3_
	call _LABEL_31CF_
	jp _LABEL_3464_

+:
	ld hl, _DATA_3389A_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jr z, +
	jp _LABEL_2CB1_

+:
	call _LABEL_277C_
	ld hl, (_RAM_C2C5_)
	call _LABEL_297A_
	ld hl, _DATA_338BC_
	call _LABEL_31CF_
	call _LABEL_2D19_
	jp z, _LABEL_2CB1_
	jp _LABEL_2CEA_

_LABEL_2D19_:
	push bc
	call _LABEL_37A3_
	push af
	call _LABEL_37C3_
	pop af
	pop bc
	or a
	ret

_LABEL_2D25_:
	ld a, $08
	call _LABEL_52_
	ld a, (_RAM_C205_)
	and $30
	jp z, _LABEL_2D25_
	ret

_LABEL_2D33_:
	ld b, $1E
	jr _LABEL_2D39_

_LABEL_2D37_:
	ld b, $B4
_LABEL_2D39_:
	ld a, $08
	call _LABEL_52_
	ld a, (_RAM_C205_)
	and $30
	ret nz
	djnz _LABEL_2D39_
	ret

_LABEL_2D47_:
	ld b, $D0
_LABEL_2D49_:
	ld a, $08
	call _LABEL_52_
	djnz _LABEL_2D49_
	ret

_LABEL_2D51_:
	ld a, $FF
	ld (_RAM_C268_), a
	ld hl, $0000
	ld (_RAM_C26B_), hl
	xor a
	ld (_RAM_C26D_), a
-:
	ld a, $08
	call _LABEL_52_
	ld a, (_RAM_C205_)
	and $03
	jp z, ++
	ld c, a
	ld hl, _RAM_C26E_
	ld a, (_RAM_C26B_)
	bit 0, c
	jr z, +
	sub $01
	jr nc, +
	ld a, (hl)
+:
	bit 1, c
	jr z, +
	inc a
	cp (hl)
	jr c, +
	jr z, +
	xor a
+:
	ld (_RAM_C26B_), a
++:
	ld a, (_RAM_C205_)
	and $30
	jp z, -
	ld c, a
	xor a
	ld (_RAM_C26D_), a
	ld a, $08
	call _LABEL_52_
	xor a
	ld (_RAM_C268_), a
	ld a, (_RAM_C26B_)
	ret

_LABEL_2DA5_:
	ld a, $FF
	ld (_RAM_C268_), a
_LABEL_2DAA_:
	ld a, $08
	call _LABEL_52_
	ld a, (_RAM_C205_)
	ld c, a
	and $03
	jp z, ++
	ld c, a
	ld hl, _RAM_C26E_
	ld a, (_RAM_C26B_)
	bit 0, c
	jr z, +
	sub $01
	jr nc, +
	ld a, (hl)
+:
	bit 1, c
	jr z, +
	inc a
	cp (hl)
	jr c, +
	jr z, +
	xor a
+:
	ld (_RAM_C26B_), a
	jp +++

++:
	ld hl, (_RAM_C299_)
	ld a, h
	or a
	jr z, +++
	bit 2, c
	jr z, +
	ld a, l
	sub $08
	jr nc, ++
	ld a, h
	jr ++

+:
	bit 3, c
	jr z, +++
	ld a, l
	add a, $08
	cp h
	jr c, ++
	jr z, ++
	xor a
++:
	ld (_RAM_C299_), a
	jr ++++

+++:
	ld a, c
	and $30
	jr z, _LABEL_2DAA_
	xor a
	ld (_RAM_C26D_), a
	ld a, $08
	call _LABEL_52_
	xor a
	ld (_RAM_C268_), a
	bit 4, c
	ret nz
	ld a, (_RAM_C4E2_)
	cp $09
	ld a, (_RAM_C26B_)
	ret c
	or a
	jr z, +
	dec a
	ret

+:
	ld hl, (_RAM_C299_)
	ld a, l
	add a, $08
	cp h
	jr c, +
	jr z, +
	xor a
+:
	ld (_RAM_C299_), a
++++:
	xor a
	ld (_RAM_C268_), a
	call _LABEL_352D_
	ld a, (_RAM_C299_)
	ld l, a
	ld a, (_RAM_C4E2_)
	dec a
	cp $08
	ld h, $00
	jr c, +
	ld h, $01
+:
	sub l
	cp $08
	jr c, +
	ld a, $07
+:
	and $07
	add a, h
	ld (_RAM_C26E_), a
	ld hl, (_RAM_C26B_)
	cp l
	jr nc, +
	ld l, a
+:
	ld h, l
	ld (_RAM_C26B_), hl
	jp _LABEL_2DA5_

_LABEL_2E62_:
	ld a, (_RAM_C268_)
	or a
	ret z
	ld a, (_RAM_C202_)
	cp $03
	ld bc, $F0F3
	jr nz, +
	ld bc, $FF00
+:
	ld hl, (_RAM_C269_)
	ld a, (_RAM_C26C_)
	srl a
	ld e, $00
	rr e
	ld d, a
	add hl, de
	ex de, hl
	rst $08	; _LABEL_8_
	ld a, c
	out (Port_VDPData), a
	ld hl, (_RAM_C269_)
	ld a, (_RAM_C26B_)
	ld (_RAM_C26C_), a
	srl a
	ld e, $00
	rr e
	ld d, a
	add hl, de
	ex de, hl
	rst $08	; _LABEL_8_
	ld a, (_RAM_C26D_)
	dec a
	and $0F
	ld (_RAM_C26D_), a
	bit 3, a
	ld a, b
	jr nz, +
	ld a, c
+:
	out (Port_VDPData), a
	ret

_LABEL_2EAC_:
	ld hl, _RAM_D700_
	ld de, $7B02
	ld bc, $030C
	call _LABEL_3AA6_
	ld a, (_RAM_C267_)
	add a, a
	add a, a
	ld l, a
	add a, a
	add a, a
	add a, a
	add a, l
	ld hl, _DATA_6F40B_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	jp _LABEL_3A57_

_LABEL_2ECD_:
	ld hl, _RAM_D700_
	ld de, $7B02
	ld bc, $030C
	jp _LABEL_3A57_

_LABEL_2ED9_:
	ld hl, _RAM_D724_
	ld de, $7C80
	ld bc, $0640
	call _LABEL_3AA6_
	ld hl, _DATA_6F4AB_
	ld de, $7C80
	ld ix, _RAM_C400_
	call +
	ld hl, _DATA_6F4DB_
	ld de, $7C90
	ld ix, _RAM_C410_
	call +
	ld hl, _DATA_6F50B_
	ld de, $7CA0
	ld ix, _RAM_C420_
	call +
	ld hl, _DATA_6F53B_
	ld de, $7CB0
	ld ix, _RAM_C430_
+:
	bit 0, (ix+0)
	ret z
_LABEL_2F1B_:
	ld bc, $0310
	call _LABEL_3A57_
	ld hl, _DATA_30A7_
	ld a, (ix+1)
	call _LABEL_2FE1_
	ld hl, _DATA_30AF_
	ld a, (ix+2)
	call _LABEL_2FE1_
	ld hl, _DATA_6F49B_
	ld bc, $0110
	jp _LABEL_3A57_

_LABEL_2F3C_:
	ld hl, _DATA_6F4AB_
	ld de, $7C80
	ld ix, _RAM_C400_
	call +
	ld hl, _DATA_6F4DB_
	ld de, $7C90
	ld ix, _RAM_C410_
	call +
	ld hl, _DATA_6F50B_
	ld de, $7CA0
	ld ix, _RAM_C420_
	call +
	ld hl, _DATA_6F53B_
	ld de, $7CB0
	ld ix, _RAM_C430_
+:
	bit 0, (ix+0)
	ret z
	ld bc, $0310
	call _LABEL_3A83_
	ld hl, _DATA_30A7_
	ld a, (ix+1)
	call _LABEL_2FE1_
	ld hl, _DATA_30AF_
	ld a, (ix+2)
	call _LABEL_2FE1_
	ld hl, _DATA_6F49B_
	ld bc, $0110
	jp _LABEL_3A83_

_LABEL_2F93_:
	push af
	ld hl, _RAM_D724_
	ld de, $7C80
	ld bc, $0640
	call _LABEL_3AA6_
	pop af
_LABEL_2FA1_:
	ld hl, _DATA_6F4AB_
	ld de, $7C80
	ld ix, _RAM_C400_
	or a
	jp z, _LABEL_2F1B_
	ld hl, _DATA_6F4DB_
	ld de, $7C90
	ld ix, _RAM_C410_
	dec a
	jp z, _LABEL_2F1B_
	ld hl, _DATA_6F50B_
	ld de, $7CA0
	ld ix, _RAM_C420_
	dec a
	jp z, _LABEL_2F1B_
	ld hl, _DATA_6F53B_
	ld de, $7CB0
	ld ix, _RAM_C430_
	jp _LABEL_2F1B_

_LABEL_2FD8_:
	di
	push de
	push af
	rst $08	; _LABEL_8_
	ld b, $10
	jp _LABEL_2FE7_

_LABEL_2FE1_:
	di
	push de
	push af
	rst $08	; _LABEL_8_
	ld b, $08
_LABEL_2FE7_:
	ld a, (hl)
	out (Port_VDPData), a
	inc hl
	djnz _LABEL_2FE7_
	pop af
	ld bc, $C010
	ld d, $FF
-:
	sub $64
	inc d
	jr nc, -
	add a, $64
	ld l, a
	ld a, d
	call _LABEL_3645_
	ld d, $FF
	ld a, l
-:
	sub $0A
	inc d
	jr nc, -
	add a, $0A
	ld l, a
	ld a, d
	call _LABEL_3645_
	ld d, $FF
	ld a, l
-:
	sub $01
	inc d
	jr nc, -
	ld a, d
	ld bc, $C110
	call _LABEL_3645_
	push af
	pop af
	ld a, $F3
	out (Port_VDPData), a
	push af
	pop af
	ld a, $13
	out (Port_VDPData), a
	pop de
	ld hl, $0040
	add hl, de
	ex de, hl
	ei
	ld a, $0A
	call _LABEL_52_
	ret

_LABEL_3036_:
	di
	push de
	push bc
	rst $08	; _LABEL_8_
	ld b, $0C
-:
	ld a, (hl)
	out (Port_VDPData), a
	inc hl
	djnz -
	pop hl
	ld bc, $C010
	ld de, $2710
	xor a
	dec a
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	call _LABEL_3645_
	ld de, $03E8
	ld a, $FF
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	call _LABEL_3645_
	ld de, $0064
	ld a, $FF
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	call _LABEL_3645_
	ld d, $FF
	ld a, l
-:
	sub $0A
	inc d
	jr nc, -
	add a, $0A
	ld l, a
	ld a, d
	call _LABEL_3645_
	ld d, $FF
	ld a, l
-:
	sub $01
	inc d
	jr nc, -
	ld a, d
	ld bc, $C110
	call _LABEL_3645_
	push af
	pop af
	ld a, $F3
	out (Port_VDPData), a
	push af
	pop af
	ld a, $13
	out (Port_VDPData), a
	pop de
	ld hl, $0040
	add hl, de
	ex de, hl
	ei
	ld a, $0A
	call _LABEL_52_
	ret

; Data from 30A7 to 30AE (8 bytes)
_DATA_30A7_:
.db $F3 $11 $F4 $11 $F5 $11 $C0 $10

; Data from 30AF to 30B6 (8 bytes)
_DATA_30AF_:
.db $F3 $11 $F6 $11 $F5 $11 $C0 $10

_LABEL_30B7_:
	ld hl, _RAM_D724_
	ld de, $7C80
	ld bc, $0640
	jp _LABEL_3A57_

_LABEL_30C3_:
	ld hl, _RAM_D8A4_
	ld de, $7842
	ld bc, $0B0C
	call _LABEL_3AA6_
	ld hl, _DATA_6F56B_
	jp _LABEL_3A57_

_LABEL_30D5_:
	ld hl, _DATA_6F56B_
	ld de, $7842
	ld bc, $0B0C
	jp _LABEL_3A83_

_LABEL_30E1_:
	ld hl, _RAM_D8A4_
	ld de, $7842
	ld bc, $0B0C
	jp _LABEL_3A57_

_LABEL_30ED_:
	ld hl, _RAM_D928_
	ld de, $781C
	ld bc, $0414
	call _LABEL_3AA6_
	ld hl, _RAM_D978_
	ld de, $7830
	ld bc, $0A10
	call _LABEL_3AA6_
_LABEL_3105_:
	ld hl, _DATA_6FACF_
	ld de, $781C
	ld bc, $0114
	call _LABEL_3A83_
	ld hl, _RAM_C2C8_
	ld c, $00
	call _LABEL_315C_
	ld c, $01
	call _LABEL_315C_
	ld hl, _DATA_6FAE3_
	ld bc, $0114
	call _LABEL_3A83_
	ld a, (_RAM_C2E6_)
	cp $49
	ret z
	ld hl, _DATA_6F4AB_
	ld de, $7830
	ld bc, $0110
	call _LABEL_3A57_
	ld ix, _RAM_C440_
	ld a, (_RAM_C2C7_)
	ld b, a
-:
	push bc
	ld hl, _DATA_30A7_
	ld a, (ix+1)
	call _LABEL_2FE1_
	ld bc, $0010
	add ix, bc
	pop bc
	djnz -
	ld hl, _DATA_6F49B_
	ld bc, $0110
	jp _LABEL_3A57_

_LABEL_315C_:
	di
	push bc
	push hl
	push de
	rst $08	; _LABEL_8_
	push af
	pop af
	ld a, $F3
	out (Port_VDPData), a
	push af
	pop af
	ld a, $11
	out (Port_VDPData), a
	ld b, $08
-:
	ld a, (hl)
	sub $20
	add a, a
	add a, c
	ld de, $7D17
	add a, e
	ld e, a
	adc a, d
	sub e
	ld d, a
	ld a, (de)
	out (Port_VDPData), a
	push af
	pop af
	ld a, $10
	out (Port_VDPData), a
	inc hl
	djnz -
	push af
	pop af
	ld a, $F3
	out (Port_VDPData), a
	push af
	pop af
	ld a, $13
	out (Port_VDPData), a
	pop de
	ld hl, $0040
	add hl, de
	ex de, hl
	pop hl
	pop bc
	ei
	ret

_LABEL_319E_:
	ld hl, _RAM_D978_
	ld de, $7830
	ld bc, $0A10
	ld a, (_RAM_C2E6_)
	cp $49
	call nz, _LABEL_3A57_
	ld hl, _RAM_D928_
	ld de, $781C
	ld bc, $0414
	jp _LABEL_3A57_

; Data from 31BB to 31CA (16 bytes)
_DATA_31BB_:
.db $41 $4C $49 $53 $4D $59 $41 $55 $4F $44 $49 $4E $4E $4F $41 $48

-:
	dec hl
	jp _LABEL_3235_

_LABEL_31CF_:
	ld a, $0C
	ld (_RAM_FFFF_), a
_LABEL_31D4_:
	ld a, (_RAM_C2D3_)
	or a
	jp nz, -
	ld a, $FF
	ld (_RAM_C2D3_), a
	push hl
	ld hl, _RAM_DA18_
	ld de, $7C8C
	ld bc, $0628
	call _LABEL_3AA6_
	ld hl, _DATA_6F5EF_
	call _LABEL_3A57_
	pop hl
-:
	ld de, $7CCE
	ld bc, $1200
_LABEL_31FA_:
	ld a, (hl)
	or a
	jp m, _LABEL_3332_
	cp $65
	jp nc, _LABEL_2D25_
	cp $62
	ret z
	cp $63
	jp z, _LABEL_2D33_
	cp $64
	jp z, _LABEL_2D47_
	cp $61
	jr nz, +
	call _LABEL_2D25_
	jp _LABEL_3235_

+:
	cp $5F
	jr nz, +
	push hl
	ld hl, _DATA_6F5EF_
	ld de, $7C8C
	ld bc, $0628
	call _LABEL_3A83_
	pop hl
	inc hl
	jp -

+:
	cp $60
	jr nz, +
_LABEL_3235_:
	ld a, c
	or a
	call nz, _LABEL_342C_
	ld de, $7D4E
	ld bc, $1201
	inc hl
	jp _LABEL_31FA_

+:
	cp $5B
	jr nz, +
	push hl
	ld a, (_RAM_C2C2_)
	and $03
	add a, a
	add a, a
	ld hl, _DATA_31BB_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, $04
	call _LABEL_336C_
	pop hl
	inc hl
	jp _LABEL_31FA_

+:
	cp $5C
	jr nz, +
	push hl
	ld hl, _RAM_C2C8_
	ld a, $08
	call _LABEL_336C_
	pop hl
	inc hl
	jp _LABEL_31FA_

+:
	cp $5D
	jr nz, +
	push hl
	ld a, (_RAM_C2C4_)
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	push bc
	ld bc, _DATA_7DA3_
	add hl, bc
	pop bc
	ld a, $08
	call _LABEL_336C_
	pop hl
	inc hl
	jp _LABEL_31FA_

+:
	cp $5E
	jr nz, _LABEL_32F5_
	push hl
	push bc
	push de
	ld hl, (_RAM_C2C5_)
	ld de, $2710
	xor a
	ld c, a
	dec a
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	pop de
	call _LABEL_32FB_
	push de
	ld de, $03E8
	ld a, $FF
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	pop de
	call _LABEL_32FB_
	push de
	ld de, $0064
	ld a, $FF
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	pop de
	call _LABEL_32FB_
	push de
	ld d, $FF
	ld a, l
-:
	sub $0A
	inc d
	jr nc, -
	add a, $0A
	ld l, a
	ld a, d
	pop de
	call _LABEL_32FB_
	push de
	ld d, $FF
	ld a, l
-:
	sub $01
	inc d
	jr nc, -
	ld a, d
	ld c, $01
	pop de
	call _LABEL_32FB_
	ld a, b
	pop bc
	ld b, a
	pop hl
	inc hl
	jp _LABEL_31FA_

_LABEL_32F5_:
	call _LABEL_33D6_
	jp _LABEL_31FA_

_LABEL_32FB_:
	or a
	jp nz, +
	bit 0, c
	ret z
+:
	ld c, $01
	di
	push de
	push af
	rst $08	; _LABEL_8_
	push af
	pop af
	ld a, $C0
	out (Port_VDPData), a
	push af
	pop af
	ld a, $10
	out (Port_VDPData), a
	ld a, $40
	add a, e
	ld e, a
	adc a, d
	sub e
	ld d, a
	rst $08	; _LABEL_8_
	pop af
	add a, $C1
	out (Port_VDPData), a
	push af
	pop af
	ld a, $10
	out (Port_VDPData), a
	pop de
	inc de
	inc de
	ei
	ld a, $0A
	call _LABEL_52_
	dec b
	ret

_LABEL_3332_:
	call +
	jp _LABEL_31FA_

_LABEL_3338_:
	call +
	jp _LABEL_3389_

+:
	push hl
	and $7F
	add a, a
	ld hl, $BA81
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (_RAM_FFFF_)
	push af
	ld a, $02
	ld (_RAM_FFFF_), a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
-:
	call _LABEL_33D6_
	ld a, (hl)
	cp $65
	jr nz, -
	pop af
	ld (_RAM_FFFF_), a
	pop hl
	inc hl
	ld a, b
	or a
	ret nz
	ld a, (hl)
	jp _LABEL_3419_

_LABEL_336C_:
	push af
	call _LABEL_33D6_
	ld a, (hl)
	cp $65
	jr z, +
	pop af
	dec a
	jp nz, _LABEL_336C_
	ret

+:
	pop af
	ret

_LABEL_337D_:
	ld a, $02
	ld (_RAM_FFFF_), a
	ld de, $7C0C
	ld bc, $0000
-:
	push de
_LABEL_3389_:
	ld a, (hl)
	or a
	jp m, _LABEL_3338_
	cp $63
	jr z, _LABEL_33D1_
	cp $65
	jr z, +++
	cp $61
	jr z, ++
	cp $5F
	jr z, ++
	cp $60
	jr nz, +
	inc hl
	ex de, hl
	pop hl
	ld bc, $0080
	add hl, bc
	ex de, hl
	jp -

+:
	call _LABEL_33D6_
	jr _LABEL_3389_

++:
	pop de
	push hl
	cp $5F
	call nz, _LABEL_2D25_
	ld de, $7C00
	ld bc, $0100
	ld hl, $0800
	di
	call _LABEL_363_
	ei
	pop hl
	inc hl
	jp _LABEL_337D_

+++:
	call _LABEL_2D25_
	pop de
	ret

_LABEL_33D1_:
	call _LABEL_2D47_
	pop de
	ret

_LABEL_33D6_:
	di
	push bc
	push de
	rst $08	; _LABEL_8_
	ld a, (hl)
	sub $20
	add a, a
	ld bc, _DATA_7D17_
	add a, c
	ld c, a
	adc a, b
	sub c
	ld b, a
	ld a, (bc)
	out (Port_VDPData), a
	push af
	pop af
	ld a, $10
	out (Port_VDPData), a
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	rst $08	; _LABEL_8_
	ld a, (hl)
	sub $20
	add a, a
	ld bc, _DATA_7D18_
	add a, c
	ld c, a
	adc a, b
	sub c
	ld b, a
	ld a, (bc)
	out (Port_VDPData), a
	push af
	pop af
	ld a, $10
	out (Port_VDPData), a
	inc hl
	pop de
	inc de
	inc de
	pop bc
	ei
	ld a, $0A
	call _LABEL_52_
	dec b
	ret nz
	ld a, (hl)
_LABEL_3419_:
	or a
	jp m, +
	cp $5F
	ret nc
+:
	ld a, c
	or a
	call nz, _LABEL_342C_
	ld de, $7D4E
	ld bc, $1201
	ret

_LABEL_342C_:
	push bc
	push de
	push hl
	call +
	call +
	pop hl
	pop de
	pop bc
	ret

+:
	ld hl, _RAM_DB08_
	ld de, $7D0E
	ld bc, $0324
	call _LABEL_3AA6_
	ld hl, _RAM_DB08_
	ld de, $7CCE
	ld bc, $0324
	call _LABEL_3A83_
	ld hl, _DATA_6F619_
	ld bc, $0124
	call _LABEL_3A83_
	ld b, $04
-:
	ld a, $0A
	call _LABEL_52_
	djnz -
	ret

_LABEL_3464_:
	ld hl, _RAM_C2D3_
	ld a, (hl)
	or a
	ret z
	ld (hl), $00
	ld hl, _RAM_DA18_
	ld de, $7C8C
	ld bc, $0628
	jp _LABEL_3A57_

_LABEL_3478_:
	push af
	push bc
	ld hl, _RAM_DB74_
	ld de, $7A0C
	ld bc, $0C0C
	call _LABEL_3AA6_
	pop bc
	pop af
	add a, a
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld e, l
	ld d, h
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, de
	add hl, hl
	ld de, _DATA_6F6DF_
	add hl, de
	ld de, $7A0C
	ld a, b
	or a
	jp z, +
	add a, a
	inc a
	ld b, a
	ld c, $0C
	push bc
	call _LABEL_3A57_
	pop bc
	ld a, b
	add a, a
	ld l, a
	add a, a
	add a, l
	add a, a
	ld hl, _DATA_6FA3F_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, $0C
	sub b
	ld b, a
	jp _LABEL_3A57_

+:
	ld hl, _DATA_6FA3F_
	ld bc, $0C0C
	jp _LABEL_3A57_

_LABEL_34C9_:
	ld hl, _RAM_DB74_
	ld de, $7A0C
	ld bc, $0C0C
	jp _LABEL_3A57_

_LABEL_34D5_:
	ld a, (_RAM_C4E2_)
	dec a
	and $18
	ld h, a
	ld l, $00
	ld (_RAM_C299_), hl
	call _LABEL_3521_
	ld a, (_RAM_C4E2_)
	or a
	jp z, _LABEL_2D25_
	dec a
	cp $08
	ld l, $00
	jr c, +
	ld l, $01
	ld a, $07
+:
	and $07
	add a, l
	ld (_RAM_C26E_), a
	ld hl, $796C
	ld (_RAM_C269_), hl
	ld hl, $0000
	ld (_RAM_C26B_), hl
	xor a
	ld (_RAM_C26D_), a
	call _LABEL_2DA5_
	ld l, a
	ld a, (_RAM_C299_)
	add a, l
	ld hl, _RAM_C4C0_
	add a, l
	ld l, a
	ld (_RAM_C29B_), hl
	ld a, (hl)
	ld (_RAM_C2C4_), a
	ret

_LABEL_3521_:
	ld hl, _RAM_DC04_
	ld de, $78AC
	ld bc, $1514
	call _LABEL_3AA6_
_LABEL_352D_:
	ld hl, _DATA_6FACF_
	ld de, $78AC
	ld bc, $0114
	call _LABEL_3A57_
	call _LABEL_35C4_
	ld a, (_RAM_C4E2_)
	cp $09
	ld hl, _DATA_6FAF7_
	ld bc, $0214
	call nc, _LABEL_3A57_
	ld a, (_RAM_C299_)
	ld hl, _RAM_C4C0_
	add a, l
	ld l, a
	ld b, $08
-:
	ld c, $00
	call _LABEL_356B_
	ld c, $01
	call _LABEL_356B_
	inc hl
	djnz -
	ld hl, _DATA_6FAE3_
	ld bc, $0114
	call _LABEL_3A57_
	ret

_LABEL_356B_:
	di
	push bc
	push hl
	push de
	rst $08	; _LABEL_8_
	ld l, (hl)
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, _DATA_7DA3_
	add hl, de
	push af
	pop af
	ld a, $F3
	out (Port_VDPData), a
	push af
	pop af
	ld a, $11
	out (Port_VDPData), a
	ld b, $08
-:
	ld a, (hl)
	sub $20
	add a, a
	add a, c
	ld de, $7D17
	add a, e
	ld e, a
	adc a, d
	sub e
	ld d, a
	ld a, (de)
	out (Port_VDPData), a
	push af
	pop af
	ld a, $10
	out (Port_VDPData), a
	inc hl
	djnz -
	push af
	pop af
	ld a, $F3
	out (Port_VDPData), a
	push af
	pop af
	ld a, $13
	out (Port_VDPData), a
	pop de
	ld hl, $0040
	add hl, de
	ex de, hl
	pop hl
	pop bc
	ei
	ld a, $0A
	call _LABEL_52_
	ret

_LABEL_35BC_:
	di
	push de
	rst $08	; _LABEL_8_
	ld b, $0C
	jp +

_LABEL_35C4_:
	di
	push de
	rst $08	; _LABEL_8_
	ld b, $08
+:
	ld hl, _DATA_3639_
-:
	ld a, (hl)
	out (Port_VDPData), a
	inc hl
	djnz -
	ld hl, (_RAM_C4E0_)
_LABEL_35D5_:
	ld bc, $C010
	ld de, $2710
	xor a
	cpl
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	call _LABEL_3645_
	ld de, $03E8
	xor a
	cpl
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	call _LABEL_3645_
	ld de, $0064
	xor a
	cpl
-:
	sbc hl, de
	inc a
	jr nc, -
	add hl, de
	call _LABEL_3645_
	ld d, $FF
	ld a, l
-:
	sub $0A
	inc d
	jr nc, -
	add a, $0A
	ld l, a
	ld a, d
	call _LABEL_3645_
	ld d, $FF
	ld a, l
-:
	sub $01
	inc d
	jr nc, -
	ld a, d
	ld bc, $C110
	call _LABEL_3645_
_LABEL_3620_:
	push af
	pop af
	ld a, $F3
	out (Port_VDPData), a
	push af
	pop af
	ld a, $13
	out (Port_VDPData), a
	pop de
	ld hl, $0040
	add hl, de
	ex de, hl
	ei
	ld a, $0A
	call _LABEL_52_
	ret

; Data from 3639 to 3644 (12 bytes)
_DATA_3639_:
.db $F3 $11 $D7 $10 $DD $10 $DE $10 $C0 $10 $C0 $10

_LABEL_3645_:
	and $0F
	jp z, +
	ld bc, $C110
+:
	add a, b
	out (Port_VDPData), a
	push af
	pop af
	ld a, c
	out (Port_VDPData), a
	ret

_LABEL_3656_:
	push bc
	ld hl, _RAM_DC04_
	ld de, $78AC
	ld bc, $1514
	call _LABEL_3A57_
	pop bc
	ret

_LABEL_3665_:
	ld a, (_RAM_C4F0_)
	or a
	ret z
	ld hl, _RAM_DDA8_
	ld de, $7A44
	ld bc, $090C
	call _LABEL_3AA6_
	call +
	ld hl, $7A84
	ld (_RAM_C269_), hl
	jp _LABEL_2D51_

_LABEL_3682_:
	ld a, (_RAM_C4F0_)
	or a
	ret z
	ld hl, _RAM_DE14_
	ld de, $7A54
	ld bc, $090C
	call _LABEL_3AA6_
	call +
	ld hl, $7A94
	ld (_RAM_C269_), hl
	jp _LABEL_2D51_

+:
	ld a, (_RAM_C4F0_)
	or a
	ret z
	ld (_RAM_C26E_), a
	inc a
	add a, a
	ld b, a
	ld c, $0C
	ld hl, _DATA_6FB1F_
	call _LABEL_3A57_
	ld hl, _DATA_6FB7F_
	ld bc, $010C
	jp _LABEL_3A57_

_LABEL_36BB_:
	ld a, (_RAM_C4F0_)
	or a
	ret z
	ld hl, _RAM_DDA8_
	ld de, $7A44
	ld bc, $090C
	jp _LABEL_3A57_

_LABEL_36CC_:
	ld a, (_RAM_C4F0_)
	or a
	ret z
	ld hl, _RAM_DE14_
	ld de, $7A54
	ld bc, $090C
	jp _LABEL_3A57_

_LABEL_36DD_:
	ld hl, _RAM_D8A4_
	ld de, $7842
	ld bc, $0B0C
	call _LABEL_3AA6_
	ld hl, _DATA_6FB8B_
	jp _LABEL_3A57_

_LABEL_36EF_:
	ld hl, _DATA_6FB8B_
	ld de, $7842
	ld bc, $0B0C
	jp _LABEL_3A83_

_LABEL_36FB_:
	ld hl, _RAM_D8A4_
	ld de, $7842
	ld bc, $0B0C
	jp _LABEL_3A57_

_LABEL_3707_:
	push af
	ld hl, _RAM_D928_
	ld de, $7A8C
	ld bc, $0814
	call _LABEL_3AA6_
	ld hl, _DATA_6FACF_
	ld de, $7A8C
	ld bc, $0114
	call _LABEL_3A57_
	pop af
	push af
	add a, a
	add a, a
	add a, a
	add a, a
	ld hl, _RAM_FFFF_
	ld (hl), $02
	ld hl, _RAM_C40A_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld b, $03
-:
	ld c, $00
	call _LABEL_356B_
	ld c, $01
	call _LABEL_356B_
	inc hl
	djnz -
	ld hl, _DATA_6FAE3_
	ld bc, $0114
	call _LABEL_3A57_
	pop af
	ret

_LABEL_374D_:
	ld hl, _RAM_D928_
	ld de, $7A8C
	ld bc, $0814
	jp _LABEL_3A57_

_LABEL_3759_:
	ld hl, _RAM_DE14_
	ld de, $7A32
	ld bc, $070A
	call _LABEL_3AA6_
	ld hl, _DATA_6FC0F_
	jp _LABEL_3A57_

_LABEL_376B_:
	ld hl, _RAM_DE14_
	ld de, $7A32
	ld bc, $070A
	jp _LABEL_3A57_

_LABEL_3777_:
	ld hl, _RAM_DE14_
	ld de, $7B48
	ld bc, $050C
	call _LABEL_3AA6_
	ld hl, _DATA_6FC55_
	call _LABEL_3A57_
	ld hl, $7B88
	ld (_RAM_C269_), hl
	ld a, $01
	ld (_RAM_C26E_), a
	jp _LABEL_2D51_

_LABEL_3797_:
	ld hl, _RAM_DE14_
	ld de, $7B48
	ld bc, $050C
	jp _LABEL_3A57_

_LABEL_37A3_:
	ld hl, _RAM_DE64_
	ld de, $7B6A
	ld bc, $050A
	call _LABEL_3AA6_
	ld hl, _DATA_6FC91_
	call _LABEL_3A57_
	ld hl, $7BAA
	ld (_RAM_C269_), hl
	ld a, $01
	ld (_RAM_C26E_), a
	jp _LABEL_2D51_

_LABEL_37C3_:
	ld hl, _RAM_DE64_
	ld de, $7B6A
	ld bc, $050A
	jp _LABEL_3A57_

_LABEL_37CF_:
	add a, a
	add a, a
	add a, a
	add a, a
	ld hl, _RAM_C400_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	push hl
	pop ix
	ld hl, _RAM_DC04_
	ld de, $7920
	ld bc, $0E18
	call _LABEL_3AA6_
	ld hl, _DATA_6FCC3_
	ld bc, $0118
	call _LABEL_3A57_
	ld hl, _DATA_3865_
	ld a, (ix+5)
	call _LABEL_2FD8_
	ld hl, _DATA_3875_
	ld c, (ix+3)
	ld b, (ix+4)
	call _LABEL_3036_
	ld hl, _DATA_6FCDB_
	ld bc, $0118
	call _LABEL_3A57_
	ld hl, _DATA_3881_
	ld a, (ix+8)
	call _LABEL_2FD8_
	ld hl, _DATA_6FCDB_
	ld bc, $0118
	call _LABEL_3A57_
	ld hl, _DATA_3891_
	ld a, (ix+9)
	call _LABEL_2FD8_
	ld hl, _DATA_6FCDB_
	ld bc, $0118
	call _LABEL_3A57_
	ld hl, _DATA_38A1_
	ld a, (ix+6)
	call _LABEL_2FD8_
	ld hl, _DATA_6FCDB_
	ld bc, $0118
	call _LABEL_3A57_
	ld hl, _DATA_38B1_
	ld a, (ix+7)
	call _LABEL_2FD8_
	ld hl, _DATA_6FCF3_
	ld bc, $0118
	call _LABEL_3A57_
	call _LABEL_35BC_
	ld hl, _DATA_6FD0B_
	ld bc, $0118
	jp _LABEL_3A57_

; Data from 3865 to 3874 (16 bytes)
_DATA_3865_:
.db $F3 $11 $FA $11 $FB $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10

; Data from 3875 to 3880 (12 bytes)
_DATA_3875_:
.db $F3 $11 $F7 $11 $F5 $11 $C0 $10 $C0 $10 $C0 $10

; Data from 3881 to 3890 (16 bytes)
_DATA_3881_:
.db $F3 $11 $CB $10 $DE $10 $DE $10 $CB $10 $CD $10 $D5 $10 $C0 $10

; Data from 3891 to 38A0 (16 bytes)
_DATA_3891_:
.db $F3 $11 $CE $10 $CF $10 $D0 $10 $CF $10 $D8 $10 $DD $10 $CF $10

; Data from 38A1 to 38B0 (16 bytes)
_DATA_38A1_:
.db $F3 $11 $D7 $10 $CB $10 $E2 $10 $C0 $10 $D2 $10 $DA $10 $C0 $10

; Data from 38B1 to 38C0 (16 bytes)
_DATA_38B1_:
.db $F3 $11 $D7 $10 $CB $10 $E2 $10 $C0 $10 $D7 $10 $DA $10 $C0 $10

_LABEL_38C1_:
	ld hl, _RAM_DC04_
	ld de, $7920
	ld bc, $0E18
	jp _LABEL_3A57_

_LABEL_38CD_:
	ld hl, _RAM_D8A4_
	ld de, $780C
	ld bc, $0820
	jp _LABEL_3AA6_

_LABEL_38D9_:
	ld hl, _DATA_6FD23_
	ld de, $780C
	ld bc, $0120
	call _LABEL_3A57_
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld a, (_RAM_C2DB_)
	and $1F
	ld l, a
	ld h, $00
	add hl, hl
	ld c, l
	ld b, h
	add hl, hl
	add hl, hl
	add hl, bc
	ld bc, $B70D
	add hl, bc
	ld a, (hl)
	ld (_RAM_C26E_), a
	inc hl
	push hl
	ld b, $03
-:
	push bc
	ld c, $00
	push hl
	call +
	pop hl
	ld c, $01
	push hl
	call +
	pop hl
	inc hl
	inc hl
	inc hl
	pop bc
	djnz -
	ld hl, _DATA_6FD43_
	ld bc, $0120
	call _LABEL_3A57_
	ld hl, $788C
	ld (_RAM_C269_), hl
	call _LABEL_2D51_
	ld hl, _RAM_FFFF_
	ld (hl), $03
	pop hl
	ld b, a
	add a, a
	add a, b
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ret

+:
	di
	push de
	push hl
	rst $08	; _LABEL_8_
	ld a, (hl)
	or a
	jr nz, +
	ld c, $00
+:
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, _DATA_7DA3_
	add hl, de
	push af
	pop af
	ld a, $F3
	out (Port_VDPData), a
	push af
	pop af
	ld a, $11
	out (Port_VDPData), a
	ld b, $08
-:
	ld a, (hl)
	sub $20
	add a, a
	add a, c
	ld de, $7D17
	add a, e
	ld e, a
	adc a, d
	sub e
	ld d, a
	ld a, (de)
	out (Port_VDPData), a
	push af
	pop af
	ld a, $10
	out (Port_VDPData), a
	inc hl
	djnz -
	ld a, c
	or a
	ld b, $01
	jr nz, _LABEL_397D_
	ld b, $06
_LABEL_397D_:
	push af
	pop af
	ld a, $C0
	out (Port_VDPData), a
	push af
	pop af
	ld a, $10
	out (Port_VDPData), a
	djnz _LABEL_397D_
	pop hl
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, c
	or a
	jp nz, _LABEL_35D5_
	jp _LABEL_3620_

_LABEL_3999_:
	ld hl, _RAM_D8A4_
	ld de, $780C
	ld bc, $0820
	jp _LABEL_3A57_

_LABEL_39A5_:
	ld hl, _RAM_D928_
	ld de, $786E
	ld bc, $0C12
	call _LABEL_3AA6_
_LABEL_39B1_:
	ld a, $08
	ld (_RAM_FFFC_), a
	ld hl, $8100
	ld de, $786E
	ld bc, $0C12
	call _LABEL_3A68_
	ld a, $80
	ld (_RAM_FFFC_), a
	ld hl, $78EE
	ld (_RAM_C269_), hl
	ld a, $04
	ld (_RAM_C26E_), a
	call _LABEL_2D51_
	ld l, a
	inc l
	ld h, $00
	ld (_RAM_C2C5_), hl
	ret

_LABEL_39DD_:
	ld hl, _RAM_D928_
	ld de, $786E
	ld bc, $0C12
	jp _LABEL_3A57_

_LABEL_39E9_:
	push bc
	ld hl, _RAM_D700_
	ld de, $782C
	ld bc, $0314
	call _LABEL_3AA6_
	pop bc
_LABEL_39F7_:
	push bc
	ld hl, _DATA_6FACF_
	ld de, $782C
	ld bc, $0114
	call _LABEL_3A57_
	call _LABEL_35C4_
	ld hl, _DATA_6FAE3_
	ld bc, $0114
	call _LABEL_3A57_
	pop bc
	ret

_LABEL_3A12_:
	push bc
	ld hl, _RAM_D700_
	ld de, $782C
	ld bc, $0314
	call _LABEL_3A57_
	pop bc
	ret

_LABEL_3A21_:
	ld hl, _RAM_DE14_
	ld de, $7AE4
	ld bc, $0710
	call _LABEL_3AA6_
	ld a, $12
	ld (_RAM_FFFF_), a
	ld hl, _DATA_4BE84_
	call _LABEL_3A68_
	ld hl, $7B24
	ld (_RAM_C269_), hl
	ld a, $02
	ld (_RAM_C26E_), a
	call _LABEL_2D51_
	push af
	push bc
	ld hl, _RAM_DE14_
	ld de, $7AE4
	ld bc, $0710
	call _LABEL_3A57_
	pop bc
	pop af
	ret

_LABEL_3A57_:
	ld a, (_RAM_FFFF_)
	push af
	ld a, $1B
	ld (_RAM_FFFF_), a
	call _LABEL_3A68_
	pop af
	ld (_RAM_FFFF_), a
	ret

_LABEL_3A68_:
	push bc
	di
	rst $08	; _LABEL_8_
	ld b, c
	ld c, Port_VDPData
-:
	outi
	jp nz, -
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	ei
	ld a, $0A
	call _LABEL_52_
	pop bc
	djnz _LABEL_3A68_
	ret

_LABEL_3A83_:
	ld a, (_RAM_FFFF_)
	push af
	ld a, $1B
	ld (_RAM_FFFF_), a
	di
--:
	push bc
	rst $08	; _LABEL_8_
	ld b, c
	ld c, Port_VDPData
-:
	outi
	jp nz, -
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop bc
	djnz --
	ei
	pop af
	ld (_RAM_FFFF_), a
	ret

_LABEL_3AA6_:
	di
	push bc
	push de
	res 6, d
--:
	push bc
	rst $08	; _LABEL_8_
	ld b, c
	ld c, Port_VDPData
-:
	ini
	push af
	pop af
	jp nz, -
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop bc
	djnz --
	pop de
	pop bc
	ei
	ret

; Data from 3AC4 to 3B9B (216 bytes)
_DATA_3AC4_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11
.db $F1 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $C2 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C3 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C4 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $C5 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $C6 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F2 $15 $F2 $15 $F1 $17

; 14th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_3B9C_:
	ld a, (_RAM_C212_)
	or a
	call nz, _LABEL_F1_
	ld a, $08
	call _LABEL_52_
	ld a, (_RAM_C29D_)
	or a
	jp nz, _LABEL_3C1A_
	ld a, (_RAM_C2DC_)
	call _LABEL_617D_
	ld a, (_RAM_C29E_)
	sub $10
	jr nc, +
	xor a
+:
	and $0F
	ld hl, $3C2A
	call _LABEL_E6_
_LABEL_3BC5_:
	ld a, (_RAM_C29E_)
	sub $0F
	jr nc, +
	xor a
+:
	and $0F
	ld l, a
	ld h, $00
	ld de, _DATA_3D26_ - 1
	add hl, de
	ld a, (hl)
	or a
	jr z, +
	ld a, $D8
	ld (_RAM_C004_), a
+:
	xor a
	ld (_RAM_C29D_), a
	ld (_RAM_C29E_), a
	ld (_RAM_C2D5_), a
	ld hl, $0000
	ld (_RAM_C2DB_), hl
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	ld a, (_RAM_C202_)
	cp $0D
	ret nz
	ld a, (_RAM_C2E9_)
	bit 7, a
	jr z, +
	ld a, $04
	ld (_RAM_C202_), a
	ret

+:
	or a
	ld a, $08
	jr z, +
	ld a, $0E
+:
	ld (_RAM_C202_), a
	ret

_LABEL_3C1A_:
	call _LABEL_5FFE_
	call _LABEL_100F_
	ld a, (_RAM_C800_)
	or a
	call nz, _LABEL_1BE1_
	jp _LABEL_3BC5_

; Jump Table from 3C2A to 3C51 (20 entries, indexed by _RAM_C29E_)
.dw _LABEL_474B_ _LABEL_474B_ _LABEL_298D_ _LABEL_298D_ _LABEL_2A85_ _LABEL_2A85_ _LABEL_2BC0_ _LABEL_2BC0_
.dw _LABEL_2C8F_ _LABEL_2C8F_ _LABEL_2C98_ _LABEL_2C98_ _LABEL_474B_ _LABEL_474B_ _LABEL_474B_ _LABEL_474B_
.dw _LABEL_474B_ _LABEL_474B_ _LABEL_474B_ _LABEL_474B_

; 13th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_3C52_:
	ld a, $D6
	ld (_RAM_C004_), a
	call _LABEL_7B05_
	ld a, (_RAM_C308_)
	or a
	jr nz, +
	ld a, (_RAM_C29E_)
	cp $05
	jr nz, _LABEL_3CAD_
	ld a, $04
	ld (_RAM_C29E_), a
	jr _LABEL_3CAD_

+:
	cp $01
	jr nz, +
	ld a, (_RAM_C29E_)
	cp $01
	jr nz, _LABEL_3CAD_
	ld a, $05
	ld (_RAM_C29E_), a
	jr _LABEL_3CAD_

+:
	cp $07
	jr nz, +
	ld a, (_RAM_C29E_)
	cp $01
	jr nz, _LABEL_3CAD_
	ld a, $05
	ld (_RAM_C29E_), a
	jr _LABEL_3CAD_

+:
	cp $08
	jr nz, +
	ld a, $06
	ld (_RAM_C29E_), a
	jr _LABEL_3CAD_

+:
	cp $0A
	jr nz, _LABEL_3CAD_
	ld a, (_RAM_C29E_)
	cp $09
	jr nz, _LABEL_3CAD_
	ld a, $08
	ld (_RAM_C29E_), a
_LABEL_3CAD_:
	ld a, (_RAM_C29E_)
	or a
	jr nz, +
	inc a
	ld (_RAM_C29E_), a
+:
	call _LABEL_3D47_
	ld hl, _RAM_FFFF_
	ld (hl), $10
	ld hl, _DATA_43AD8_
	ld de, $5800
	call _LABEL_3FA_
	ld hl, _DATA_43D58_
	ld de, $7E00
	call _LABEL_3FA_
	xor a
	ld (_RAM_C304_), a
	ld (_RAM_C300_), a
	ld (_RAM_C800_), a
	ld (_RAM_C2E9_), a
	dec a
	ld (_RAM_C2D6_), a
	ld hl, $0000
	ld (_RAM_C213_), hl
	ld hl, $FF00
	ld (_RAM_C2BC_), hl
	di
	call _LABEL_63A5_
	ei
	ld a, (_RAM_C29E_)
	sub $0F
	jr nc, +
	xor a
+:
	and $0F
	ld l, a
	ld h, $00
	ld de, _DATA_3D26_ - 1
	add hl, de
	ld a, (hl)
	or a
	jr z, +
	ld (_RAM_C004_), a
+:
	ld hl, _RAM_C202_
	inc (hl)
	di
	ld de, $8006
	rst $08	; _LABEL_8_
	ei
	ld a, $0C
	call _LABEL_52_
	jp _LABEL_2FD_

; Data from 3D1D to 3D25 (9 bytes)
_DATA_3D1D_:
.db $00 $00 $3F $30 $38 $03 $0B $0F $00

; Data from 3D26 to 3D35 (16 bytes)
_DATA_3D26_:
.db $00 $00 $00 $00 $8D $8D $8E $8E $8E $8E $8E $8E $00 $00 $00 $00

_LABEL_3D36_:
	cp $20
	jr nc, +
	add a, a
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld de, _DATA_3DA6_ - 3
	add hl, de
	jp _LABEL_3D96_

_LABEL_3D47_:
	ld a, (_RAM_C29E_)
	cp $20
	jr c, ++
+:
	ld hl, _RAM_D000_
	ld de, $D002
	ld bc, $05FE
	ld (hl), $00
	inc hl
	ld (hl), $08
	dec hl
	ldir
	xor a
	ld (_RAM_C2D3_), a
	ret

++:
	add a, a
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld de, $3D9E
	add hl, de
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_C240_
	ld bc, $0010
	ldir
	ld hl, _DATA_3D1D_
	ld c, $08
	ldir
	pop hl
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	ld de, $4000
	call _LABEL_3FA_
	pop hl
	inc hl
_LABEL_3D96_:
	xor a
	ld (_RAM_C2D3_), a
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp _LABEL_6B62_

; Pointer Table from 3DA6 to 3DA7 (1 entries, indexed by _RAM_C29E_)
_DATA_3DA6_:
.dw $0010

; Data from 3DA8 to 3DAA (3 bytes)
.db $80 $20 $80

; Data from 3DAB to 3DF6 (76 bytes)
_DATA_3DAB_:
.db $0F $00 $80 $10 $16 $8F $36 $8F $0F $33 $83 $10 $72 $9C $82 $9C
.db $0F $E9 $86 $10 $72 $9C $82 $9C $0F $A0 $89 $10 $F6 $B3 $06 $B4
.db $0F $80 $8C $10 $10 $80 $20 $80 $0F $46 $8E $10 $00 $80 $20 $80
.db $0F $16 $91 $11 $40 $86 $50 $86 $0F $7B $94 $11 $C4 $97 $D4 $97
.db $0F $0A $97 $11 $B1 $A4 $C1 $A4 $0F $2C $9A $11

; Data from 3DF7 to 3EB8 (194 bytes)
_DATA_3DF7_:
.db $58 $AF $68 $AF $0F $11 $9C $10 $26 $8F $36 $8F $0F $33 $83 $16
.db $7D $AC $8D $AC $16 $32 $BC $0B $00 $80 $10 $80 $16 $2A $BE $16
.db $9E $3E $8D $AC $16 $32 $BC $17 $9F $AA $6F $AB $17 $00 $80 $17
.db $AF $AA $6F $AB $17 $1E $83 $17 $BF $AA $6F $AB $17 $54 $86 $17
.db $CF $AA $6F $AB $17 $DD $88 $17 $DF $AA $6F $AB $17 $A6 $8B $17
.db $EF $AA $6F $AB $17 $8E $8F $17 $FF $AA $6F $AB $17 $ED $92 $17
.db $0F $AB $6F $AB $17 $1B $96 $17 $1F $AB $6F $AB $17 $49 $99 $17
.db $2F $AB $6F $AB $17 $A3 $9C $17 $3F $AB $6F $AB $17 $E3 $9F $17
.db $4F $AB $6F $AB $17 $10 $A3 $17 $5F $AB $6F $AB $17 $4C $A6 $09
.db $14 $BB $24 $BB $09 $8B $B7 $14 $DA $A4 $EA $A4 $1B $63 $BD $13
.db $00 $80 $10 $80 $0D $B1 $BD $30 $00 $3F $0B $06 $1A $2F $2A $08
.db $15 $15 $0B $06 $1A $2F $28 $A6 $8B $17 $EF $AA $6F $AB $17 $8E
.db $8F $17

; 18th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_3EB9_:
	ld a, (_RAM_C212_)
	or a
	call nz, _LABEL_F1_
	ld ix, $C784
	ld a, $08
	call _LABEL_52_
	call _LABEL_40C5_
	ld a, (_RAM_C205_)
	and $30
	jp z, _LABEL_3F73_
	and $10
	jp nz, +++
	ld a, (_RAM_C788_)
	cp $5C
	jr z, +
	jr nc, ++
	ld de, (_RAM_C781_)
	ld d, $C7
	ld (de), a
	call _LABEL_4117_
	ld a, (de)
	di
	call _LABEL_414F_
	ei
+:
	ld hl, _RAM_C781_
	ld a, (hl)
	cp $25
	ret z
	inc (hl)
	ret

++:
	cp $5E
	jr z, ++++
-:
	ld a, (_RAM_C780_)
	ld c, $00
	rra
	jr c, +
	ld c, $21
+:
	ld hl, _RAM_C781_
	ld a, (hl)
	cp c
	ret z
	dec (hl)
	ret

+++:
	ld de, (_RAM_C781_)
	ld d, $C7
	ld a, $20
	ld (de), a
	call _LABEL_4117_
	ld a, (de)
	di
	call _LABEL_414F_
	ei
	jp -

++++:
	ld hl, _RAM_C721_
	ld de, _RAM_C778_
	ld bc, $0005
	ldir
	ld hl, (_RAM_C2C5_)
	add hl, hl
	ld de, $3F67
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld hl, _RAM_D19A_
	ld bc, $000A
	ld a, $08
	ld (_RAM_FFFC_), a
	ldir
	ld c, $08
	ex de, hl
	add hl, bc
	ex de, hl
	ld c, $36
	add hl, bc
	ld c, $0A
	ldir
	ld a, $80
	ld (_RAM_FFFC_), a
	ld a, (_RAM_C316_)
	cp $0B
	ld a, $0A
	jr z, +
	ld a, $0C
+:
	ld (_RAM_C202_), a
	ret

; Data from 3F69 to 3F72 (10 bytes)
.db $18 $81 $3C $81 $60 $81 $84 $81 $A8 $81

_LABEL_3F73_:
	ld a, (_RAM_C205_)
	rra
	jr c, _LABEL_3FB7_
	rra
	jr c, _LABEL_3FCE_
	rra
	jr c, _LABEL_3FEB_
	rra
	jr c, +
	ld a, (_RAM_C204_)
	rra
	jr c, ++
	rra
	jr c, +++
	rra
	jr c, _LABEL_3FD5_
	rra
	ret nc
	call _LABEL_402C_
	ret nz
-:
	ld bc, $C808
	ld de, $0002
	ld iy, _RAM_C784_
	jr _LABEL_3FF2_

+:
	ld a, $18
	ld (_RAM_C789_), a
	jr -

++:
	call _LABEL_402C_
	ret nz
-:
	ld bc, $60F0
	ld de, _RAM_FF80_
	ld iy, _RAM_C785_
	jr _LABEL_3FF2_

_LABEL_3FB7_:
	ld a, $18
	ld (_RAM_C789_), a
	jr -

+++:
	call _LABEL_402C_
	ret nz
-:
	ld bc, $9010
	ld de, $0080
	ld iy, _RAM_C785_
	jr _LABEL_3FF2_

_LABEL_3FCE_:
	ld a, $18
	ld (_RAM_C789_), a
	jr -

_LABEL_3FD5_:
	call _LABEL_402C_
	ret nz
-:
	ld bc, $28F8
	ld a, (_RAM_C788_)
	cp $5C
	ret z
	ld de, _RAM_FFFE_
	ld iy, _RAM_C784_
	jr _LABEL_3FF2_

_LABEL_3FEB_:
	ld a, $18
	ld (_RAM_C789_), a
	jr -

_LABEL_3FF2_:
	ld a, (iy+0)
	cp b
	ret z
	add a, c
	ld (iy+0), a
	ld hl, (_RAM_C786_)
	add hl, de
	ld (_RAM_C786_), hl
	ld a, (hl)
	or a
	jr z, _LABEL_3FF2_
	cp (ix+4)
	jr z, _LABEL_3FF2_
	ld (_RAM_C788_), a
	cp $5C
	ret c
	ld c, $88
	ld hl, $D4A2
	jr z, +
	cp $5D
	ld l, $AA
	ld c, $A8
	jr z, +
	ld c, $C8
	ld l, $B2
+:
	ld (_RAM_C786_), hl
	ld a, c
	ld (_RAM_C784_), a
	ret

_LABEL_402C_:
	ld hl, _RAM_C789_
	dec (hl)
	ret nz
	ld (hl), $05
	ret

; 17th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_4034_:
	call _LABEL_7B05_
	ld de, $7800
	ld bc, $0300
	ld hl, $0000
	di
	call _LABEL_363_
	ei
	ld hl, _RAM_C202_
	inc (hl)
	ld hl, _RAM_C781_
	ld (hl), $00
	ld de, _RAM_C781_ + 1
	ld bc, $007E
	ldir
	ld hl, _RAM_D000_
	ld de, _RAM_D000_ + 1
	ld bc, $0600
	ld (hl), $00
	ldir
	call _LABEL_4166_
	ld hl, _RAM_C700_
	ld de, _RAM_C700_ + 1
	ld bc, $0037
	ld (hl), $00
	ldir
	ld a, $21
	ld (_RAM_C781_), a
	ld de, $78C0
	ld hl, _RAM_D0C0_
	ld bc, $0540
	di
	call _LABEL_346_
	ei
	call _LABEL_41DB_
	ld hl, _DATA_41FC_
	ld de, _RAM_C240_
	ld bc, $0020
	ldir
	ld de, $6000
	ld hl, _DATA_421C_
	ld bc, $0020
	di
	call _LABEL_346_
	ei
	ld de, _RAM_C784_
	ld hl, _DATA_40C0_
	ld bc, $0005
	ldir
	xor a
	ld (_RAM_C304_), a
	ld (_RAM_C300_), a
	ld (_RAM_C2D3_), a
	ld de, $8006
	di
	rst $08	; _LABEL_8_
	ei
	jp _LABEL_2FD_

; Data from 40C0 to 40C4 (5 bytes)
_DATA_40C0_:
.db $28 $60 $0A $D3 $41

_LABEL_40C5_:
	call _LABEL_4117_
	ld de, $3040
	add hl, de
	add hl, hl
	add hl, hl
	ld de, _RAM_C900_
	ld a, h
	add a, a
	add a, a
	add a, a
	ld (de), a
	ld a, (_RAM_C788_)
	cp $5C
	ld a, (_RAM_C785_)
	inc de
	ld (de), a
	jr c, +
	inc e
	ld (de), a
	inc e
	ld (de), a
+:
	inc e
	ld a, $D0
	ld (de), a
	ld e, $80
	ex de, hl
	ld a, e
	ld bc, $0300
	ld (hl), a
	inc l
	ld (hl), c
	ld a, (_RAM_C784_)
-:
	inc l
	ld (hl), a
	inc l
	ld (hl), c
	sub $08
	djnz -
	ret

; Data from 4100 to 4116 (23 bytes)
.db $21 $81 $C7 $36 $38 $16 $C7 $35 $F8 $5E $E5 $CD $17 $41 $1A $D5
.db $CD $3A $41 $D1 $E1 $18 $F0

_LABEL_4117_:
	ld a, (_RAM_C781_)
	ld hl, $D146
	sub $18
	jr c, +
	ld l, $C6
	sub $18
	jr c, +
	ld hl, $D246
	sub $18
+:
	add a, $18
	ld c, a
	add a, a
	add a, l
	ld l, a
	ld a, c
	rra
	rra
	and $06
	add a, l
	ld l, a
	ret

-:
	push hl
	ex de, hl
	ld hl, $7CD7
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	ld c, (hl)
	inc hl
	ld a, (hl)
	ld (de), a
	ld hl, $FFC0
	add hl, de
	ld (hl), c
	pop hl
	ret

_LABEL_414F_:
	call -
	ld b, a
	ld a, h
	sub $58
	ld h, a
	ex de, hl
	rst $08	; _LABEL_8_
	ld a, b
	out (Port_VDPData), a
	ld hl, $FFC0
	add hl, de
	ex de, hl
	rst $08	; _LABEL_8_
	ld a, c
	out (Port_VDPData), a
	ret

_LABEL_4166_:
	ld hl, _DATA_423C_
	ld de, _RAM_D100_
--:
	ld a, (hl)
	inc hl
	or a
	jr z, +++
	jp p, ++
	bit 6, a
	jr nz, +
	and $3F
	ld b, a
	ld a, (hl)
-:
	ld (de), a
	inc de
	inc de
	ex de, hl
	ld (hl), $C0
	ex de, hl
	inc de
	inc de
	inc a
	djnz -
	inc hl
	jr --

+:
	and $3F
	ld c, a
	ld b, $00
-:
	ldi
	inc de
	jp pe, -
	jr --

++:
	ld b, a
	ld a, (hl)
-:
	ld (de), a
	inc de
	inc de
	djnz -
	inc hl
	jr --

+++:
	ld hl, _RAM_D146_
	ld de, $F301
	call +
	inc hl
	ld bc, $1805
	call _LABEL_41D5_
	ld (hl), $07
	ld hl, _RAM_D137_
	ld (hl), $03
	ld hl, _RAM_D107_
	ld bc, $1801
	call _LABEL_41D5_
	ld hl, _RAM_D176_
	ld de, $F303
+:
	ld a, $0D
	ld bc, $003F
-:
	ld (hl), d
	inc l
	ld (hl), e
	add hl, bc
	dec a
	jr nz, -
	ret

_LABEL_41D5_:
	ld (hl), c
	inc l
	inc l
	djnz _LABEL_41D5_
	ret

_LABEL_41DB_:
	ld hl, _DATA_4280_
	ld de, _RAM_D30A_
	ld a, $04
--:
	ld bc, $000B
-:
	ldi
	inc de
	ex de, hl
	ld (hl), $00
	ex de, hl
	inc de
	inc de
	jp pe, -
	ex de, hl
	ld bc, $0054
	add hl, bc
	ex de, hl
	dec a
	jr nz, --
	ret

; Data from 41FC to 421B (32 bytes)
_DATA_41FC_:
.db $00 $00 $3F $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $3C $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 421C to 423B (32 bytes)
_DATA_421C_:
.db $FF $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 423C to 427F (68 bytes)
_DATA_423C_:
.db $03 $C0 $01 $F1 $17 $F2 $01 $F1 $0C $C0 $D0 $D3 $D8 $DA $DF $DE
.db $C0 $E3 $D9 $DF $DC $C0 $D8 $CB $D7 $CF $E7 $58 $C0 $55 $C0 $8B
.db $CB $2A $C0 $8B $D6 $1E $C0 $01 $EB $0B $C0 $8A $E1 $36 $C0 $CB
.db $CB $CE $E0 $C0 $DC $DF $CC $C0 $CF $D8 $CE $09 $C0 $01 $F1 $17
.db $F2 $01 $F1 $00

; Data from 4280 to 42AB (44 bytes)
_DATA_4280_:
.db $41 $42 $43 $44 $45 $46 $47 $48 $49 $4A $4B $4C $4D $4E $4F $50
.db $51 $52 $53 $54 $55 $56 $57 $58 $59 $5A $2C $3B $2E $21 $3F $2D
.db $22 $5C $5C $5C $5C $5C $5C $5C $5D $5D $5E $5E

_LABEL_42AC_:
	ld a, $D7
	ld (_RAM_C004_), a
	call _LABEL_7B05_
	ld hl, _RAM_FFFF_
	ld (hl), $17
	ld hl, _DATA_5F767_
	ld de, _RAM_C240_
	ld bc, $0011
	ldir
	ld hl, _DATA_5F778_
	ld de, $4000
	call _LABEL_3FA_
	ld hl, _RAM_FFFF_
	ld (hl), $1C
	ld hl, _DATA_73E00_
	call _LABEL_6B62_
	ld hl, _RAM_D000_
	ld de, _RAM_D300_
	ld bc, $0300
	ldir
	ld hl, _RAM_D000_
	ld bc, $0100
	ldir
	xor a
	ld (_RAM_C300_), a
	ld a, $80
	ld (_RAM_C304_), a
	ld hl, _RAM_D000_
	ld de, $7800
	ld bc, $0700
	di
	call _LABEL_346_
	ei
	ld a, $8C
	ld (_RAM_C004_), a
	call _LABEL_7B20_
	ld a, $02
	ld (_RAM_C264_), a
	ld a, $02
	ld (_RAM_C307_), a
-:
	ld a, $0E
	call _LABEL_52_
	ld a, (_RAM_C205_)
	and $30
	jr nz, +
	call _LABEL_43AA_
	ld a, (_RAM_C307_)
	cp $01
	jr nz, -
	ld a, (_RAM_C304_)
	cp $80
	jr nz, -
	call _LABEL_2D37_
+:
	xor a
	ld (_RAM_C264_), a
	ld (_RAM_C307_), a
	call _LABEL_7B05_
	ld a, $08
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	ld hl, _RAM_FFFF_
	ld (hl), $10
	ld hl, _DATA_43AD8_
	ld de, $5800
	call _LABEL_3FA_
	ld hl, _DATA_43D58_
	ld de, $7E00
	call _LABEL_3FA_
	xor a
	ld (_RAM_C304_), a
	ld (_RAM_C300_), a
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
	ld hl, _RAM_FFFF_
	ld (hl), $12
	ld hl, _DATA_4BEF4_
	ld de, $7886
	ld bc, $0528
	call _LABEL_3A68_
	call _LABEL_2D37_
	call _LABEL_467C_
	ld a, $00
	call _LABEL_46D1_
	ld hl, _DATA_B49B_
	call _LABEL_337D_
	ld a, $01
	call _LABEL_46D1_
	ld hl, _DATA_B4FC_
	call _LABEL_337D_
	ld a, $02
	call _LABEL_46D1_
	ld hl, _DATA_B5D5_
	call _LABEL_337D_
	ld a, $D7
	ld (_RAM_C004_), a
	ret

_LABEL_43AA_:
	ld de, $0001
	ld a, (_RAM_C304_)
	add a, e
	cp $E0
	jr c, +
	ld d, $01
	add a, $20
+:
	ld (_RAM_C304_), a
	ld a, (_RAM_C307_)
	sub d
	ld (_RAM_C307_), a
	cp $01
	ret nz
	ld a, d
	or a
	ret z
	ld hl, _DATA_73E88_
	jp _LABEL_6B62_

_LABEL_43CF_:
	call _LABEL_467C_
	ld a, $8A
	ld (_RAM_C004_), a
	ld a, $03
	call _LABEL_46D1_
	ld hl, _DATA_B617_
	call _LABEL_337D_
	ld a, $04
	call _LABEL_46D1_
	ld hl, _DATA_B646_
	call _LABEL_337D_
	ld a, $03
	call _LABEL_46D1_
	ld hl, _DATA_B64D_
	call _LABEL_337D_
	ld a, $04
	call _LABEL_46D1_
	ld hl, _DATA_B66E_
	call _LABEL_337D_
	ld a, $03
	call _LABEL_46D1_
	ld hl, _DATA_B6C1_
	call _LABEL_337D_
	ld a, $D8
	ld (_RAM_C004_), a
	ret

_LABEL_4414_:
	call _LABEL_467C_
	ld a, $8A
	ld (_RAM_C004_), a
	ld a, $05
	call _LABEL_46D1_
	ld hl, _DATA_B6F3_
	call _LABEL_337D_
	ld a, $03
	call _LABEL_46D1_
	ld hl, _DATA_B746_
	call _LABEL_337D_
	ld a, $05
	call _LABEL_46D1_
	ld hl, _DATA_B786_
	call _LABEL_337D_
	ld a, $03
	call _LABEL_46D1_
	ld hl, _DATA_B7B9_
	call _LABEL_337D_
	ld a, $05
	call _LABEL_46D1_
	ld hl, _DATA_B7D1_
	call _LABEL_337D_
	call _LABEL_7B05_
	call _LABEL_FF3_
	ld a, $D8
	ld (_RAM_C004_), a
	jp _LABEL_7B20_

_LABEL_4461_:
	call _LABEL_467C_
	ld a, $8A
	ld (_RAM_C004_), a
	ld a, $03
	ld hl, _RAM_C400_
	bit 0, (hl)
	jr nz, +
	ld a, $05
	ld hl, _RAM_C420_
	bit 0, (hl)
	jr nz, +
	ld a, $04
+:
	call _LABEL_46D1_
	ld hl, _DATA_B85C_
	call _LABEL_337D_
	ld a, $06
	call _LABEL_46D1_
	ld hl, _DATA_B884_
	call _LABEL_337D_
	ld a, $D8
	ld (_RAM_C004_), a
	ret

_LABEL_4497_:
	ld a, (_RAM_C309_)
	cp $17
	jr nz, +
	call _LABEL_4517_
	ld hl, _DATA_4514_
	jp _LABEL_4509_

+:
	call _LABEL_467C_
	ld a, $8A
	ld (_RAM_C004_), a
	ld a, $07
	call _LABEL_46D1_
	ld hl, _DATA_B929_
	call _LABEL_337D_
	ld a, $08
	call _LABEL_46D1_
	ld hl, _DATA_B97C_
	call _LABEL_337D_
	call _LABEL_4517_
	ld a, $0E
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	ld a, $0C
	call _LABEL_52_
	ld hl, _RAM_C250_
	ld b, $10
-:
	ld (hl), $30
	inc hl
	djnz -
	call _LABEL_7B20_
	call _LABEL_2D33_
	ld hl, _RAM_FFFF_
	ld (hl), $0B
	ld hl, _DATA_2C000_
	ld de, _RAM_C250_
	ld bc, $0008
	ldir
	ld a, $46
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	call _LABEL_100F_
	ld a, (_RAM_C202_)
	cp $02
	ret z
	ld hl, _DATA_4511_
_LABEL_4509_:
	ld a, $08
	ld (_RAM_C202_), a
	jp _LABEL_787B_

; Data from 4511 to 4513 (3 bytes)
_DATA_4511_:
.db $17 $28 $1F

; Data from 4514 to 4516 (3 bytes)
_DATA_4514_:
.db $00 $40 $4C

_LABEL_4517_:
	call _LABEL_7B05_
	ld a, $0F
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	ld hl, _RAM_FFFF_
	ld (hl), $16
	ld hl, _DATA_5B9D8_
	ld de, _RAM_C251_
	ld bc, $000F
	ldir
	ld hl, _DATA_5B9E7_
	ld de, $6000
	call _LABEL_3FA_
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
	ld a, $15
	ld (_RAM_C800_), a
	call _LABEL_18B9_
	jp _LABEL_7B05_

_LABEL_454E_:
	call _LABEL_7B05_
	ld a, $D0
	ld (_RAM_C900_), a
	ld a, $8B
	ld (_RAM_C004_), a
	ld a, $0D
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
	ld b, $80
	call _LABEL_2D49_
	call _LABEL_7CE4_
	ld hl, _DATA_33EB6_
	call _LABEL_31CF_
	ld hl, _DATA_33ED0_
	call _LABEL_31CF_
	ld hl, _DATA_33EE8_
	call _LABEL_31CF_
	ld hl, _DATA_33EFD_
	call _LABEL_31CF_
	ld hl, _DATA_33F09_
	call _LABEL_31CF_
	ld hl, _DATA_33F21_
	call _LABEL_31CF_
	call _LABEL_3464_
	call _LABEL_467C_
	ld a, $03
	call _LABEL_46D1_
	ld hl, _DATA_B9E8_
	call _LABEL_337D_
	ld a, $05
	call _LABEL_46D1_
	ld hl, _DATA_B9F0_
	call _LABEL_337D_
	ld a, $06
	call _LABEL_46D1_
	ld hl, _DATA_B9FB_
	call _LABEL_337D_
	ld a, $04
	call _LABEL_46D1_
	ld hl, _DATA_BA06_
	call _LABEL_337D_
	ld a, $03
	call _LABEL_46D1_
	ld hl, _DATA_BA12_
	call _LABEL_337D_
	ld hl, _DATA_BA54_
	call _LABEL_337D_
	call _LABEL_7B05_
	ld hl, _RAM_FFFF_
	ld (hl), $1F
	ld hl, _DATA_7D676_
	ld de, _RAM_C240_
	ld bc, $0011
	ldir
	ld hl, _DATA_7D687_
	ld de, $4000
	call _LABEL_3FA_
	ld hl, _RAM_FFFF_
	ld (hl), $18
	ld hl, _RAM_D000_
	ld de, _RAM_D000_ + 1
	ld bc, $0600
	ld (hl), $00
	ldir
	ld hl, _DATA_625E0_
	ld de, _RAM_D0D4_
	ld bc, $1316
	call _LABEL_6E64_
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
	call _LABEL_2D47_
	ld hl, _DATA_3DF7_
	ld (_RAM_C30C_), hl
	xor a
	ld (_RAM_C30A_), a
	call _LABEL_661C_
	ld hl, _RAM_FFFF_
	ld (hl), $0F
	ld hl, _DATA_3FDEE_
	ld de, $5820
	call _LABEL_3FA_
	ld a, $01
	ld (_RAM_C2F5_), a
	ld a, $91
	ld (_RAM_C004_), a
	ld hl, _DATA_3FF80_
-:
	ld a, $0F
	ld (_RAM_FFFF_), a
	ld a, (hl)
	cp $FF
	jr z, ++
	cp $0F
	jr nz, +
	ld b, $B4
	call _LABEL_2D49_
	inc hl
	jr -

+:
	push hl
	ld (_RAM_C204_), a
	call _LABEL_65EE_
	pop hl
	inc hl
	jr -

++:
	ld a, $D7
	ld (_RAM_C004_), a
	xor a
	ld (_RAM_C2F5_), a
	ld b, $B4
	call _LABEL_2D49_
	ld a, $02
	ld (_RAM_C202_), a
	ret

; 19th entry of Jump Table from BE (indexed by _RAM_C202_)
_LABEL_467C_:
	call _LABEL_7B05_
	ld hl, _RAM_FFFF_
	ld (hl), $10
	ld hl, _DATA_43AD8_
	ld de, $5800
	call _LABEL_3FA_
	ld hl, _DATA_43D58_
	ld de, $7E00
	call _LABEL_3FA_
	ld hl, _RAM_FFFF_
	ld (hl), $18
	ld hl, _RAM_C240_
	ld de, _RAM_C240_ + 1
	ld (hl), $00
	ld bc, $000F
	ldir
	ld hl, _DATA_6257A_
	ld bc, $0010
	ldir
	ld hl, _DATA_6258A_
	ld de, $4000
	call _LABEL_3FA_
	ld hl, _DATA_62484_
	call _LABEL_6B62_
	xor a
	ld (_RAM_C304_), a
	ld (_RAM_C300_), a
	ld (_RAM_C2D3_), a
	ld a, $0C
	call _LABEL_52_
	jp _LABEL_2FD_

_LABEL_46D1_:
	push af
	call _LABEL_7AFD_
	pop af
	ld l, a
	add a, a
	add a, a
	add a, l
	ld l, a
	ld h, $00
	ld de, _DATA_471E_
	add hl, de
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	push hl
	ex de, hl
	ld de, _RAM_C240_
	ld bc, $0010
	ldir
	ld de, $6000
	call _LABEL_3FA_
	ld hl, _RAM_FFFF_
	ld (hl), $18
	pop hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, $78CC
	ld bc, $0C28
	di
	call _LABEL_390_
	ld de, $7C00
	ld bc, $0100
	ld hl, $0800
	call _LABEL_363_
	ei
	jp _LABEL_7B18_

; Data from 471E to 474A (45 bytes)
_DATA_471E_:
.db $1F $00 $80 $90 $A8 $1E $00 $80 $70 $AA $1E $62 $8F $50 $AC $1E
.db $2B $9C $30 $AE $1F $DB $8A $10 $B0 $1D $2A $B6 $F0 $B1 $12 $88
.db $B3 $D0 $B3 $1E $4E $AA $B0 $B5 $1E $0C $B3 $90 $B7

; 1st entry of Jump Table from 3C2A (indexed by _RAM_C29E_)
_LABEL_474B_:
	ld a, (_RAM_C2DB_)
	or a
	jp z, _LABEL_1BE1_
	ld de, _DATA_4773_ - 2
	call +
	ld a, (_RAM_C29E_)
	or a
	jp nz, _LABEL_3464_
	call _LABEL_3464_
	jp _LABEL_15DC_

_LABEL_4765_:
	pop hl
	jp _LABEL_2D25_

+:
	ld l, a
	ld h, $00
	add hl, hl
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

; Jump Table from 4773 to 48DE (182 entries, indexed by _RAM_C2DB_)
_DATA_4773_:
.dw _LABEL_48DF_ _LABEL_48FC_ _LABEL_4922_ _LABEL_4928_ _LABEL_492E_ _LABEL_4934_ _LABEL_493A_ _LABEL_4940_
.dw _LABEL_495A_ _LABEL_4960_ _LABEL_4966_ _LABEL_4973_ _LABEL_4991_ _LABEL_4997_ _LABEL_499D_ _LABEL_49A3_
.dw _LABEL_49A9_ _LABEL_49AF_ _LABEL_49B5_ _LABEL_49B5_ _LABEL_49E0_ _LABEL_49E6_ _LABEL_4A3E_ _LABEL_4A44_
.dw _LABEL_4A4A_ _LABEL_4A50_ _LABEL_4AA9_ _LABEL_4ABE_ _LABEL_4AD3_ _LABEL_4B43_ _LABEL_4B52_ _LABEL_4B61_
.dw _LABEL_4B67_ _LABEL_4B6D_ _LABEL_4B73_ _LABEL_4B79_ _LABEL_4B7F_ _LABEL_4B85_ _LABEL_4B8B_ _LABEL_4B91_
.dw _LABEL_4B97_ _LABEL_4B9D_ _LABEL_4BBD_ _LABEL_4BD1_ _LABEL_4BD7_ _LABEL_4BDD_ _LABEL_4BE3_ _LABEL_4BE9_
.dw _LABEL_4BEF_ _LABEL_4BF5_ _LABEL_4BFB_ _LABEL_4C01_ _LABEL_4C07_ _LABEL_4C0D_ _LABEL_4C70_ _LABEL_4D74_
.dw _LABEL_4D7A_ _LABEL_4D9F_ _LABEL_4DA5_ _LABEL_4DAB_ _LABEL_4DD4_ _LABEL_4DFB_ _LABEL_4E9C_ _LABEL_4EB3_
.dw _LABEL_4EB9_ _LABEL_4EBF_ _LABEL_4EC5_ _LABEL_4ED9_ _LABEL_4EDF_ _LABEL_4EE5_ _LABEL_4EEB_ _LABEL_4EF1_
.dw _LABEL_4EF7_ _LABEL_4EFD_ _LABEL_4F03_ _LABEL_4F09_ _LABEL_4F0F_ _LABEL_4F15_ _LABEL_4F34_ _LABEL_4F3A_
.dw _LABEL_4F40_ _LABEL_4F46_ _LABEL_4F4C_ _LABEL_4F52_ _LABEL_4F58_ _LABEL_4F71_ _LABEL_4F77_ _LABEL_4F7D_
.dw _LABEL_4F83_ _LABEL_4F89_ _LABEL_4F8F_ _LABEL_4F95_ _LABEL_4F9B_ _LABEL_4FD8_ _LABEL_4FDE_ _LABEL_4FE4_
.dw _LABEL_4FEA_ _LABEL_4FF0_ _LABEL_4FF6_ _LABEL_4FFC_ _LABEL_5002_ _LABEL_5008_ _LABEL_500E_ _LABEL_5014_
.dw _LABEL_501A_ _LABEL_5020_ _LABEL_5026_ _LABEL_502C_ _LABEL_5040_ _LABEL_5046_ _LABEL_504C_ _LABEL_5058_
.dw _LABEL_505E_ _LABEL_5064_ _LABEL_506A_ _LABEL_5070_ _LABEL_50A6_ _LABEL_50BA_ _LABEL_50C0_ _LABEL_50C6_
.dw _LABEL_50DA_ _LABEL_5101_ _LABEL_5107_ _LABEL_510D_ _LABEL_5157_ _LABEL_516F_ _LABEL_51B1_ _LABEL_51D6_
.dw _LABEL_51DC_ _LABEL_521D_ _LABEL_5249_ _LABEL_5270_ _LABEL_5284_ _LABEL_528A_ _LABEL_5290_ _LABEL_52A4_
.dw _LABEL_52B2_ _LABEL_52B8_ _LABEL_52BE_ _LABEL_52C4_ _LABEL_52CA_ _LABEL_52D0_ _LABEL_5337_ _LABEL_4F8F_
.dw _LABEL_4F95_ _LABEL_4F9B_ _LABEL_534B_ _LABEL_5395_ _LABEL_539B_ _LABEL_53A1_ _LABEL_53A7_ _LABEL_53AD_
.dw _LABEL_53B3_ _LABEL_53B9_ _LABEL_53BF_ _LABEL_5401_ _LABEL_5430_ _LABEL_54D0_ _LABEL_54FB_ _LABEL_552F_
.dw _LABEL_5535_ _LABEL_5535_ _LABEL_5538_ _LABEL_5595_ _LABEL_55A3_ _LABEL_55A9_ _LABEL_55BB_ _LABEL_55CD_
.dw _LABEL_55E1_ _LABEL_55EF_ _LABEL_5619_ _LABEL_5666_ _LABEL_569C_ _LABEL_56A2_ _LABEL_5535_ _LABEL_5535_
.dw _LABEL_56CD_ _LABEL_56D3_ _LABEL_56D9_ _LABEL_56E9_ _LABEL_56F9_ _LABEL_5535_

; 1st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_48DF_:
	ld hl, _RAM_C501_
	ld a, (hl)
	or a
	jr nz, +
	ld (hl), $01
	ld hl, $0002
	call _LABEL_575A_
+:
	ld hl, $0006
	call _LABEL_575A_
	ld a, $C1
	ld (_RAM_C004_), a
	jp _LABEL_2A6D_

; 2nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_48FC_:
	ld a, (_RAM_C502_)
	or a
	jr nz, +
	ld hl, $0008
	call _LABEL_575A_
	ld a, $38
	ld (_RAM_C2C4_), a
	call _LABEL_279F_
	ld a, $38
	call _LABEL_282E_
	jr nz, +
	ld a, $01
	ld (_RAM_C502_), a
+:
	ld hl, $0010
	jp _LABEL_575A_

; 3rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4922_:
	ld hl, $0012
	jp _LABEL_575A_

; 4th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4928_:
	ld hl, $0014
	jp _LABEL_575A_

; 5th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_492E_:
	ld hl, $0016
	jp _LABEL_575A_

; 6th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4934_:
	ld hl, $0018
	jp _LABEL_575A_

; 7th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_493A_:
	ld hl, $001A
	jp _LABEL_575A_

; 8th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4940_:
	ld hl, $0062
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $0060
	jr z, +
	ld hl, $0003
	ld (_RAM_C2C5_), hl
	ld hl, $0064
+:
	jp _LABEL_575A_

; 9th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_495A_:
	ld hl, $001C
	jp _LABEL_575A_

; 10th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4960_:
	ld hl, $001E
	jp _LABEL_575A_

; 11th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4966_:
	ld a, $33
	call _LABEL_282E_
	jr z, +
	ld hl, $0020
	jp _LABEL_575A_

; 12th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4973_:
	ld a, $33
	call _LABEL_282E_
	jr z, +
	ld hl, $0022
	jp _LABEL_575A_

+:
	ld hl, $0024
	call _LABEL_575A_
	ld a, (_RAM_C309_)
	rrca
	dec a
	and $03
	ld (_RAM_C2E9_), a
	ret

; 13th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4991_:
	ld hl, $0026
	jp _LABEL_575A_

; 14th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4997_:
	ld hl, $0028
	jp _LABEL_575A_

; 15th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_499D_:
	ld hl, $002A
	jp _LABEL_575A_

; 16th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_49A3_:
	ld hl, $002E
	jp _LABEL_575A_

; 17th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_49A9_:
	ld hl, $0030
	jp _LABEL_575A_

; 18th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_49AF_:
	ld hl, $0032
	jp _LABEL_575A_

; 19th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_49B5_:
	ld a, (_RAM_C504_)
	cp $07
	jp nc, _LABEL_4A8C_
	ld hl, $0070
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $0020
	jr nz, +
	ld a, $34
	call _LABEL_282E_
	ld hl, $00CE
	jr nz, +
	ld a, $06
	ld (_RAM_C2E9_), a
	ld hl, $0024
+:
	jp _LABEL_575A_

; 21st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_49E0_:
	ld hl, $0286
	jp _LABEL_575A_

; 22nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_49E6_:
	ld a, $47
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld a, (_RAM_C410_)
	or a
	jr z, +
	ld hl, $0296
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, +
	ld a, $AE
	ld (_RAM_C004_), a
	ld a, $01
	ld (_RAM_C2C2_), a
	ld hl, _DATA_33728_
	call _LABEL_31CF_
	ld hl, $0000
	ld (_RAM_C410_), hl
	ld hl, $0298
	jr ++

+:
	ld hl, $029A
++:
	call _LABEL_575A_
	call _LABEL_3464_
	ld a, (_RAM_C4F0_)
	or a
	jr z, +
	ld a, $38
	call _LABEL_282E_
	jr z, +
	ld hl, $C518
	ld (_RAM_C2E1_), hl
	ld a, $38
	ld (_RAM_C2DF_), a
+:
	jp _LABEL_5389_

; 23rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4A3E_:
	ld hl, $006A
	jp _LABEL_575A_

; 24th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4A44_:
	ld hl, $006C
	jp _LABEL_575A_

; 25th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4A4A_:
	ld hl, $006E
	jp _LABEL_575A_

; 26th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4A50_:
	ld a, (_RAM_C504_)
	cp $07
	jr nc, _LABEL_4A8C_
	ld hl, $0070
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $0020
	jp _LABEL_575A_

+:
	ld a, $34
	call _LABEL_282E_
	jr z, +
	ld hl, $00CE
	jp _LABEL_575A_

+:
	ld hl, $0024
	call _LABEL_575A_
	ld a, (_RAM_C305_)
	cp $60
	ld hl, _DATA_4AA3_
	jr nz, +
	ld hl, _DATA_4AA6_
+:
	call _LABEL_787B_
	ret

_LABEL_4A8C_:
	ld hl, $019E
	call _LABEL_575A_
	ld a, $34
	call _LABEL_282E_
	ret nz
	push bc
	call _LABEL_277F_
	pop bc
	ld hl, $01A0
	jp _LABEL_575A_

; Data from 4AA3 to 4AA5 (3 bytes)
_DATA_4AA3_:
.db $05 $20 $17

; Data from 4AA6 to 4AA8 (3 bytes)
_DATA_4AA6_:
.db $05 $21 $15

; 27th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4AA9_:
	ld a, $33
	call _LABEL_282E_
	ld hl, $0020
	jr nz, +
	ld a, $04
	ld (_RAM_C2E9_), a
	ld hl, $0024
+:
	jp _LABEL_575A_

; 28th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4ABE_:
	ld a, $33
	call _LABEL_282E_
	ld hl, $0022
	jr nz, +
	ld a, $05
	ld (_RAM_C2E9_), a
	ld hl, $0024
+:
	jp _LABEL_575A_

; 29th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4AD3_:
	ld hl, $0072
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $007C
	jp _LABEL_575A_

+:
	ld hl, $0074
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, +
	ld hl, $007E
	jp _LABEL_575A_

+:
	ld hl, $0076
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, +
	ld hl, $007E
	jp _LABEL_575A_

+:
	ld hl, _DATA_64_
	ld (_RAM_C2C5_), hl
	ld hl, $0078
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $007C
	jp _LABEL_575A_

+:
	ld de, $0064
	ld hl, (_RAM_C4E0_)
	or a
	sbc hl, de
	jr nc, +
	ld hl, _DATA_33D57_
	jp _LABEL_31CF_

+:
	ld (_RAM_C4E0_), hl
	ld hl, $007A
	call _LABEL_575A_
	ld a, $34
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	ret z
	jp _LABEL_279F_

; 30th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B43_:
	ld a, (_RAM_C4F0_)
	or a
	ld hl, $0034
	jr z, +
	ld hl, $003A
+:
	jp _LABEL_575A_

; 31st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B52_:
	ld a, (_RAM_C4F0_)
	or a
	ld hl, $003C
	jr z, +
	ld hl, $0040
+:
	jp _LABEL_575A_

; 32nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B61_:
	ld hl, $0042
	jp _LABEL_575A_

; 33rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B67_:
	ld hl, $0044
	jp _LABEL_575A_

; 34th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B6D_:
	ld hl, $0046
	jp _LABEL_575A_

; 35th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B73_:
	ld hl, $0048
	jp _LABEL_575A_

; 36th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B79_:
	ld hl, $004A
	jp _LABEL_575A_

; 37th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B7F_:
	ld hl, $004C
	jp _LABEL_575A_

; 38th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B85_:
	ld hl, $004E
	jp _LABEL_575A_

; 39th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B8B_:
	ld hl, $0050
	jp _LABEL_575A_

; 40th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B91_:
	ld hl, $0052
	jp _LABEL_575A_

; 41st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B97_:
	ld hl, $0054
	jp _LABEL_575A_

; 42nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4B9D_:
	ld hl, $0056
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $0060
	jr nz, ++
	ld a, $2D
	call _LABEL_282E_
	jr z, +
	ld hl, _RAM_C604_
	ld (hl), $00
+:
	ld hl, $0058
++:
	jp _LABEL_575A_

; 43rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BBD_:
	ld hl, $005C
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $0060
	jr z, +
	ld hl, $005E
+:
	jp _LABEL_575A_

; 44th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BD1_:
	ld hl, $0080
	jp _LABEL_575A_

; 45th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BD7_:
	ld hl, $0082
	jp _LABEL_575A_

; 46th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BDD_:
	ld hl, $0084
	jp _LABEL_575A_

; 47th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BE3_:
	ld hl, $0086
	jp _LABEL_575A_

; 48th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BE9_:
	ld hl, $0088
	jp _LABEL_575A_

; 49th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BEF_:
	ld hl, $008A
	jp _LABEL_575A_

; 50th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BF5_:
	ld hl, $008C
	jp _LABEL_575A_

; 51st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4BFB_:
	ld hl, $008E
	jp _LABEL_575A_

; 52nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4C01_:
	ld hl, $0090
	jp _LABEL_575A_

; 53rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4C07_:
	ld hl, $0288
	jp _LABEL_575A_

; 54th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4C0D_:
	ld a, (_RAM_C4F0_)
	or a
	jr z, +
	ld hl, $028A
	jp _LABEL_575A_

+:
	ld hl, $000A
	ld (_RAM_C2C5_), hl
	ld hl, $0092
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, +
	ld hl, $0094
	jp _LABEL_575A_

+:
	ld a, $38
	call _LABEL_282E_
	jr nz, +
	push hl
	ld hl, $0096
	call _LABEL_575A_
	call _LABEL_2D19_
	pop hl
	jr nz, +
	push bc
	call _LABEL_277F_
	pop bc
	ld hl, $009A
	call _LABEL_575A_
	call _LABEL_3464_
	pop hl
	ld iy, _RAM_C410_
	call _LABEL_16F1_
	ld a, $01
	ld (_RAM_C4F0_), a
	ld a, $2B
	ld (_RAM_C2C4_), a
	call _LABEL_279F_
	jp _LABEL_43CF_

+:
	ld hl, $007C
	jp _LABEL_575A_

; 55th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4C70_:
	ld a, (_RAM_C516_)
	or a
	jr z, +
	ld hl, $02A6
	call _LABEL_575A_
	call _LABEL_3464_
	pop hl
	ld hl, $22E6
	ld (_RAM_C30C_), hl
	xor a
	ld (_RAM_C30A_), a
	ld hl, _RAM_C202_
	ld (hl), $0B
	call _LABEL_661C_
	ld a, $85
	jp _LABEL_C97_

+:
	ld a, $35
	call _LABEL_617D_
	call _LABEL_576A_
	ld a, (_RAM_C4F0_)
	cp $03
	jr nc, +
	ld a, $37
	call _LABEL_282E_
	jr nz, ++
+:
	ld hl, $029E
	call _LABEL_575A_
	ld hl, $00AA
	jp _LABEL_575A_

++:
	ld hl, $00A4
	call _LABEL_575A_
	push bc
	ld a, $37
	ld (_RAM_C2C4_), a
	call _LABEL_279F_
	pop bc
	ld a, $37
	call _LABEL_282E_
	ret nz
	ld hl, $029C
	call _LABEL_575A_
	call _LABEL_7B05_
	call _LABEL_3464_
	ld a, $20
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	ld a, $D0
	ld (_RAM_C900_), a
	ld a, $0C
	call _LABEL_52_
	ld hl, _DATA_4D6C_
	ld de, _RAM_C240_
	ld bc, $0008
	ldir
	call _LABEL_7B20_
	ld hl, $02A0
	call _LABEL_575A_
	call _LABEL_3464_
	ld a, $A0
	ld (_RAM_C004_), a
	call _LABEL_2D47_
	ld a, $4A
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld a, (_RAM_C400_)
	push af
	ld a, (_RAM_C410_)
	push af
	ld a, (_RAM_C420_)
	push af
	call _LABEL_100F_
	pop af
	ld (_RAM_C420_), a
	pop af
	ld (_RAM_C410_), a
	pop af
	ld (_RAM_C400_), a
	call _LABEL_7B05_
	call _LABEL_3D47_
	ld a, $D0
	ld (_RAM_C900_), a
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
	ld hl, $02A2
	call _LABEL_575A_
	call _LABEL_7B05_
	ld a, $1D
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	call _LABEL_2A6D_
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
	ld a, $35
	call _LABEL_617D_
	call _LABEL_576A_
	ld hl, $00AA
	jp _LABEL_575A_

; Data from 4D6C to 4D73 (8 bytes)
_DATA_4D6C_:
.db $00 $00 $3F $00 $00 $00 $00 $00

; 56th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4D74_:
	ld hl, $00B4
	jp _LABEL_575A_

; 57th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4D7A_:
	ld hl, $00B6
	call _LABEL_575A_
	call _LABEL_7B05_
	call _LABEL_3464_
	ld a, $A0
	ld (_RAM_C004_), a
	call _LABEL_2D47_
	call _LABEL_2A6D_
	ld a, $C1
	ld (_RAM_C004_), a
	call _LABEL_7B20_
	ld hl, $00B8
	jp _LABEL_575A_

; 58th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4D9F_:
	ld hl, $0102
	jp _LABEL_575A_

; 59th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4DA5_:
	ld hl, $0106
	jp _LABEL_575A_

; 60th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4DAB_:
	ld hl, $00BA
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $00C2
	jp _LABEL_575A_

+:
	ld a, $24
	call _LABEL_282E_
	jr nz, +
	push bc
	call _LABEL_277F_
	pop bc
	ld hl, $00BC
	jp _LABEL_575A_

+:
	ld hl, $020E
	jp _LABEL_575A_

; 61st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4DD4_:
	ld hl, $00BA
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $00C2
	jp _LABEL_575A_

+:
	ld a, $24
	call _LABEL_282E_
	jr nz, +
	call _LABEL_277F_
	ld hl, $00C4
	jp _LABEL_575A_

+:
	ld hl, $020E
	jp _LABEL_575A_

; 62nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4DFB_:
	ld a, (_RAM_C504_)
	or a
	jp z, _LABEL_4765_
	ld a, $34
	call _LABEL_617D_
	call _LABEL_576A_
	ld a, (_RAM_C504_)
	cp $07
	jr c, +
	ld hl, $00D8
	jp _LABEL_575A_

+:
	cp $02
	jr nc, +
	ld hl, $00CA
	jp _LABEL_575A_

+:
	cp $03
	jr nc, ++
	ld hl, $04B0
	ld (_RAM_C2C5_), hl
	ld hl, $028C
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $00DA
	jp _LABEL_575A_

+:
	ld de, $04B0
	ld hl, (_RAM_C4E0_)
	or a
	sbc hl, de
	jr nc, +
	ld hl, $00D0
	jp _LABEL_575A_

+:
	ld (_RAM_C4E0_), hl
	ld a, $03
	ld (_RAM_C504_), a
	ld hl, $0290
	jp _LABEL_575A_

++:
	cp $05
	jr nc, +
	inc a
	ld (_RAM_C504_), a
	ld hl, $0292
	jp _LABEL_575A_

+:
	cp $06
	jr nc, +
	inc a
	ld (_RAM_C504_), a
	ld hl, $00D2
	call _LABEL_575A_
	ld a, $32
	call _LABEL_282E_
	jr z, ++
	ld hl, $00D6
	call _LABEL_575A_
+:
	ld a, $32
	call _LABEL_282E_
	jr z, ++
	ld hl, $0104
	jp _LABEL_575A_

++:
	ld a, $07
	ld (_RAM_C504_), a
	ld hl, $0294
	jp _LABEL_575A_

; 63rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4E9C_:
	ld hl, _RAM_C504_
	ld a, (hl)
	cp $02
	jp c, _LABEL_4765_
	ld a, $10
	call _LABEL_617D_
	call _LABEL_576A_
	ld hl, $00DC
	jp _LABEL_575A_

; 64th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EB3_:
	ld hl, $0118
	jp _LABEL_575A_

; 65th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EB9_:
	ld hl, $010E
	jp _LABEL_575A_

; 66th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EBF_:
	ld hl, $0112
	jp _LABEL_575A_

; 67th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EC5_:
	ld hl, $0114
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $0116
	jr nz, +
	ld hl, $013C
+:
	jp _LABEL_575A_

; 68th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4ED9_:
	ld hl, $010C
	jp _LABEL_575A_

; 69th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EDF_:
	ld hl, $011C
	jp _LABEL_575A_

; 70th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EE5_:
	ld hl, $011E
	jp _LABEL_575A_

; 71st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EEB_:
	ld hl, $0120
	jp _LABEL_575A_

; 72nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EF1_:
	ld hl, $0126
	jp _LABEL_575A_

; 73rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EF7_:
	ld hl, $0128
	jp _LABEL_575A_

; 74th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4EFD_:
	ld hl, $012E
	jp _LABEL_575A_

; 75th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F03_:
	ld hl, $0130
	jp _LABEL_575A_

; 76th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F09_:
	ld hl, $0132
	jp _LABEL_575A_

; 77th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F0F_:
	ld hl, $0134
	jp _LABEL_575A_

; 78th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F15_:
	ld hl, $013A
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $013C
	jr z, ++
	ld a, (_RAM_C507_)
	or a
	jr nz, +
	ld a, $01
	ld (_RAM_C507_), a
+:
	ld hl, $013E
++:
	jp _LABEL_575A_

; 79th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F34_:
	ld hl, $0136
	jp _LABEL_575A_

; 80th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F3A_:
	ld hl, $0166
	jp _LABEL_575A_

; 81st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F40_:
	ld hl, $0168
	jp _LABEL_575A_

; 82nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F46_:
	ld hl, $016A
	jp _LABEL_575A_

; 83rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F4C_:
	ld hl, $016C
	jp _LABEL_575A_

; 84th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F52_:
	ld hl, $0170
	jp _LABEL_575A_

; 85th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F58_:
	ld hl, $0172
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $017C
	jr nz, +
	ld a, $01
	ld (_RAM_C508_), a
	ld hl, $0174
+:
	jp _LABEL_575A_

; 86th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F71_:
	ld hl, $017E
	jp _LABEL_575A_

; 87th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F77_:
	ld hl, $0180
	jp _LABEL_575A_

; 88th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F7D_:
	ld hl, $0184
	jp _LABEL_575A_

; 89th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F83_:
	ld hl, $0186
	jp _LABEL_575A_

; 90th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F89_:
	ld hl, $0188
	jp _LABEL_575A_

; 91st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F8F_:
	ld hl, $018C
	jp _LABEL_575A_

; 92nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F95_:
	ld hl, $0190
	jp _LABEL_575A_

; 93rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4F9B_:
	ld hl, $03E8
	ld (_RAM_C2C5_), hl
	ld hl, $0194
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $019C
	jp _LABEL_575A_

+:
	ld de, $03E8
	ld hl, (_RAM_C4E0_)
	or a
	sbc hl, de
	jr nc, +
	ld hl, $019A
	jp _LABEL_575A_

+:
	ld (_RAM_C4E0_), hl
	ld hl, $0198
	call _LABEL_575A_
	ld a, $3B
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	ret z
	jp _LABEL_279F_

; 94th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4FD8_:
	ld hl, $01A2
	jp _LABEL_575A_

; 95th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4FDE_:
	ld hl, $01A4
	jp _LABEL_575A_

; 96th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4FE4_:
	ld hl, $01A6
	jp _LABEL_575A_

; 97th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4FEA_:
	ld hl, $01AA
	jp _LABEL_575A_

; 98th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4FF0_:
	ld hl, $01B2
	jp _LABEL_575A_

; 99th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4FF6_:
	ld hl, $01B8
	jp _LABEL_575A_

; 100th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_4FFC_:
	ld hl, $01BA
	jp _LABEL_575A_

; 101st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5002_:
	ld hl, $01BC
	jp _LABEL_575A_

; 102nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5008_:
	ld hl, $01BE
	jp _LABEL_575A_

; 103rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_500E_:
	ld hl, $01C4
	jp _LABEL_575A_

; 104th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5014_:
	ld hl, $01C8
	jp _LABEL_575A_

; 105th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_501A_:
	ld hl, $01CA
	jp _LABEL_575A_

; 106th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5020_:
	ld hl, $01CC
	jp _LABEL_575A_

; 107th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5026_:
	ld hl, $01D0
	jp _LABEL_575A_

; 108th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_502C_:
	ld hl, $01D6
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $01DA
	jr z, +
	ld hl, $01D8
+:
	jp _LABEL_575A_

; 109th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5040_:
	ld hl, $01DC
	jp _LABEL_575A_

; 110th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5046_:
	ld hl, $01DE
	jp _LABEL_575A_

; 111th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_504C_:
	ld hl, $000A
	ld (_RAM_C2C5_), hl
	ld hl, $01E0
	jp _LABEL_575A_

; 112th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5058_:
	ld hl, $01E2
	jp _LABEL_575A_

; 113th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_505E_:
	ld hl, $01E4
	jp _LABEL_575A_

; 114th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5064_:
	ld hl, $01E6
	jp _LABEL_575A_

; 115th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_506A_:
	ld hl, $01E8
	jp _LABEL_575A_

; 116th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5070_:
	ld hl, $0190
	ld (_RAM_C2C5_), hl
	ld hl, $01EA
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $01F0
	jp _LABEL_575A_

+:
	ld de, $0190
	ld hl, (_RAM_C4E0_)
	or a
	sbc hl, de
	jr nc, +
	ld hl, $01F2
	jp _LABEL_575A_

+:
	ld (_RAM_C4E0_), hl
	ld a, $01
	ld (_RAM_C509_), a
	ld hl, $01F4
	jp _LABEL_575A_

; 117th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_50A6_:
	ld hl, $01FA
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $01FC
	jr z, +
	ld hl, $01FE
+:
	jp _LABEL_575A_

; 118th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_50BA_:
	ld hl, $0200
	jp _LABEL_575A_

; 119th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_50C0_:
	ld hl, $0202
	jp _LABEL_575A_

; 120th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_50C6_:
	ld hl, $0204
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $0206
	jr z, +
	ld hl, $0208
+:
	jp _LABEL_575A_

; 121st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_50DA_:
	ld hl, $00BA
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $020C
	jp _LABEL_575A_

+:
	ld a, $24
	call _LABEL_282E_
	jr nz, +
	call _LABEL_277F_
	ld hl, $020A
	jp _LABEL_575A_

+:
	ld hl, $020E
	jp _LABEL_575A_

; 122nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5101_:
	ld hl, $0210
	jp _LABEL_575A_

; 123rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5107_:
	ld hl, $026A
	jp _LABEL_575A_

; 124th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_510D_:
	ld hl, $0118
	ld (_RAM_C2C5_), hl
	ld hl, $024A
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, _DATA_337E3_
	jp _LABEL_31CF_

+:
	ld de, $0118
	ld hl, (_RAM_C4E0_)
	or a
	sbc hl, de
	jr nc, +
	ld hl, _DATA_33D57_
	jp _LABEL_31CF_

+:
	ld a, (_RAM_C4E2_)
	cp $18
	jr c, +
	ld hl, _DATA_33813_
	jp _LABEL_31CF_

+:
	ld (_RAM_C4E0_), hl
	ld hl, $020A
	call _LABEL_575A_
	ld a, $36
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	ret z
	jp _LABEL_279F_

; 125th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5157_:
	ld a, $08
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld a, (_RAM_C4F0_)
	cp $03
	ld hl, $00AC
	jr nz, +
	ld hl, $00B2
+:
	jp _LABEL_575A_

; 126th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_516F_:
	ld a, (_RAM_C4F0_)
	cp $03
	jp nc, _LABEL_4765_
	ld a, $3B
	call _LABEL_617D_
	call _LABEL_576A_
	ld hl, $00AE
	call _LABEL_575A_
	ld a, $37
	call _LABEL_282E_
	ret nz
	call _LABEL_277F_
	pop hl
	call _LABEL_3464_
	call _LABEL_2D25_
	ld a, $01
	ld (_RAM_C506_), a
	ld iy, _RAM_C430_
	ld (iy+10), $01
	ld (iy+11), $11
	call _LABEL_16F1_
	ld a, $03
	ld (_RAM_C4F0_), a
	jp _LABEL_4461_

; 127th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_51B1_:
	ld hl, _RAM_C504_
	ld a, (hl)
	cp $02
	jp nc, _LABEL_4765_
	ld a, $10
	call _LABEL_617D_
	call _LABEL_576A_
	ld hl, _RAM_C504_
	ld a, (hl)
	cp $01
	ld de, $00DC
	jr nz, +
	ld (hl), $02
	ld de, $00F6
+:
	ex de, hl
	jp _LABEL_575A_

; 128th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_51D6_:
	ld hl, $00F8
	jp _LABEL_575A_

; 129th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_51DC_:
	ld a, (_RAM_C504_)
	or a
	jp nz, _LABEL_4765_
	ld a, $34
	call _LABEL_617D_
	call _LABEL_576A_
	ld hl, _RAM_C503_
	ld a, (hl)
	or a
	jr nz, +
	inc (hl)
	ld hl, $00DE
	jp _LABEL_575A_

+:
	cp $01
	jr nz, +
	inc (hl)
	ld hl, $00E0
	jp _LABEL_575A_

+:
	ld hl, $00E2
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $00D4
	jr nz, +
	ld hl, _RAM_C504_
	ld (hl), $01
	ld hl, $00E4
+:
	jp _LABEL_575A_

; 130th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_521D_:
	ld a, $2E
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld hl, $00E6
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, +
	ld a, $33
	call _LABEL_282E_
	jr nz, +
	ld hl, $0024
	jp _LABEL_575A_

+:
	ld hl, $00E8
	call _LABEL_575A_
	call _LABEL_3464_
	jp _LABEL_5389_

; 131st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5249_:
	ld hl, $00BA
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $00C2
	jp _LABEL_575A_

+:
	ld a, $24
	call _LABEL_282E_
	jr nz, +
	call _LABEL_277F_
	ld hl, $00EA
	jp _LABEL_575A_

+:
	ld hl, $00CE
	jp _LABEL_575A_

; 132nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5270_:
	ld hl, $00EC
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $013C
	jr z, +
	ld hl, $0124
+:
	jp _LABEL_575A_

; 133rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5284_:
	ld hl, $00EE
	jp _LABEL_575A_

; 134th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_528A_:
	ld hl, $00F0
	jp _LABEL_575A_

; 135th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5290_:
	ld hl, $00F2
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $014C
	jr z, +
	ld hl, $013C
+:
	jp _LABEL_575A_

; 136th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_52A4_:
	ld a, $16
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld hl, $00F4
	jp _LABEL_575A_

; 137th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_52B2_:
	ld hl, $00FC
	jp _LABEL_575A_

; 138th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_52B8_:
	ld hl, $00FE
	jp _LABEL_575A_

; 139th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_52BE_:
	ld hl, $0100
	jp _LABEL_575A_

; 140th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_52C4_:
	ld hl, $010A
	jp _LABEL_575A_

; 141st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_52CA_:
	ld hl, $021A
	jp _LABEL_575A_

; 142nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_52D0_:
	ld hl, $0148
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
_LABEL_52DB_:
	ld hl, $0152
	jp _LABEL_575A_

+:
	ld hl, $014E
	call _LABEL_575A_
	ld hl, $0150
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, _LABEL_52DB_
	ld hl, $014E
	call _LABEL_575A_
	ld hl, $0154
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, _LABEL_52DB_
	ld hl, $014E
	call _LABEL_575A_
	ld hl, $0156
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, +
	ld hl, $0158
	jp _LABEL_575A_

+:
	ld hl, $015A
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, _LABEL_52DB_
	ld hl, $015C
	call _LABEL_575A_
	ld a, $3C
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	ret z
	jp _LABEL_279F_

; 143rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5337_:
	ld hl, $0160
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $0162
	jr z, +
	ld hl, $0164
+:
	jp _LABEL_575A_

; 147th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_534B_:
	ld a, $2E
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld hl, $021C
	call _LABEL_575A_
	call _LABEL_2D19_
	jr nz, +
	ld a, $33
	call _LABEL_282E_
	jr nz, +
	ld hl, $021E
	call _LABEL_575A_
	call _LABEL_3464_
	pop hl
	ld hl, $159C
	ld (_RAM_C30C_), hl
	ld a, $01
	ld (_RAM_C30A_), a
	ld hl, _RAM_C202_
	ld (hl), $0A
	ret

+:
	ld hl, $00E8
	call _LABEL_575A_
	call _LABEL_3464_
_LABEL_5389_:
	call _LABEL_100F_
	ld a, (_RAM_C800_)
	or a
	call nz, _LABEL_1BE1_
	pop hl
	ret

; 148th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5395_:
	ld hl, $0222
	jp _LABEL_575A_

; 149th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_539B_:
	ld hl, $0224
	jp _LABEL_575A_

; 150th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_53A1_:
	ld hl, $0226
	jp _LABEL_575A_

; 151st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_53A7_:
	ld hl, $022E
	jp _LABEL_575A_

; 152nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_53AD_:
	ld hl, $0232
	jp _LABEL_575A_

; 153rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_53B3_:
	ld hl, $0218
	jp _LABEL_575A_

; 154th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_53B9_:
	ld hl, $0214
	jp _LABEL_575A_

; 155th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_53BF_:
	ld a, $2E
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld hl, $009C
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $00A2
	call _LABEL_575A_
	jr ++

+:
	ld a, $36
	call _LABEL_282E_
	jr nz, +
	push bc
	call _LABEL_277F_
	pop bc
	ld a, $FF
	ld (_RAM_C511_), a
	ld hl, $009E
	jp _LABEL_575A_

+:
	ld hl, $00A0
	call _LABEL_575A_
++:
	pop hl
	call _LABEL_3464_
	call _LABEL_15DC_
	jp _LABEL_688C_

; 156th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5401_:
	ld hl, $023E
	call _LABEL_575A_
	call _LABEL_2D19_
	jr z, +
	ld hl, $0246
	jp _LABEL_575A_

+:
	ld a, $3A
	call _LABEL_282E_
	jr nz, +
	call _LABEL_277F_
	ld a, $2F
	ld (_RAM_C2C4_), a
	call _LABEL_279F_
	ld hl, $0244
	jp _LABEL_575A_

+:
	ld hl, $0248
	jp _LABEL_575A_

; 157th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5430_:
	ld a, $31
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld a, (_RAM_C43B_)
	ld b, a
	ld a, $18
	cp b
	jr z, +
	call _LABEL_282E_
	jr nz, ++
+:
	ld hl, $0258
	jp _LABEL_575A_

++:
	ld a, (_RAM_C4F0_)
	cp $03
	jr nc, ++
	ld hl, $025A
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $025E
	jr z, +
	ld hl, $0260
+:
	jp _LABEL_575A_

++:
	ld hl, $024C
	call _LABEL_575A_
	ld a, (_RAM_C430_)
	or a
	jr nz, +
	ld hl, $02A8
	jp _LABEL_575A_

+:
	ld hl, $024E
	call _LABEL_575A_
	call _LABEL_3464_
	ld a, (_RAM_C431_)
	push af
	ld a, (_RAM_C400_)
	push af
	ld a, (_RAM_C410_)
	push af
	ld a, (_RAM_C420_)
	push af
	xor a
	ld (_RAM_C400_), a
	ld (_RAM_C410_), a
	ld (_RAM_C420_), a
	call _LABEL_100F_
	pop af
	ld (_RAM_C420_), a
	pop af
	ld (_RAM_C410_), a
	pop af
	ld (_RAM_C400_), a
	pop af
	ld b, a
	ld a, (_RAM_C431_)
	or a
	jr nz, +
	ld a, b
	ld (_RAM_C431_), a
	ld a, $01
	ld (_RAM_C430_), a
	ld hl, $0256
	jp _LABEL_575A_

+:
	ld hl, $0250
	call _LABEL_575A_
	ld a, $18
	ld (_RAM_C2C4_), a
	jp _LABEL_279F_

; 158th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_54D0_:
	ld a, $3E
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld hl, $0262
	call _LABEL_575A_
	call _LABEL_3464_
	call _LABEL_54EF_
	ld a, $FF
	ld (_RAM_C517_), a
	ld hl, $0266
	jp _LABEL_575A_

_LABEL_54EF_:
	call _LABEL_100F_
	ld a, (_RAM_C202_)
	cp $02
	ret nz
	pop hl
	pop hl
	ret

; 159th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_54FB_:
	ld a, (_RAM_C516_)
	or a
	jp nz, _LABEL_4765_
	ld a, $48
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld hl, $026C
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $026E
	jr z, +
	ld hl, $0270
+:
	call _LABEL_575A_
	call _LABEL_3464_
	call _LABEL_54EF_
	ld a, $01
	ld (_RAM_C516_), a
	ld hl, $02AA
	jp _LABEL_575A_

; 160th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_552F_:
	ld hl, _DATA_337AA_
	jp _LABEL_31CF_

; 161st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5535_:
	call _LABEL_2D25_
; 163rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5538_:
	call _LABEL_1BE1_
	pop hl
	ret

_LABEL_553D_:
	ld hl, _DATA_33569_
	call _LABEL_31CF_
	jp _LABEL_3464_

_LABEL_5546_:
	ld a, $32
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	jr z, _LABEL_553D_
	call _LABEL_3464_
	ld hl, _RAM_C801_
	inc (hl)
	call _LABEL_576A_
	call _LABEL_2D25_
	ld hl, $012C
	call _LABEL_575A_
	jp _LABEL_279F_

_LABEL_5566_:
	ld a, (_RAM_C508_)
	or a
	jr z, _LABEL_553D_
	ld a, $32
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	jr nz, _LABEL_553D_
	ld a, $22
	ld (_RAM_C2C4_), a
	call _LABEL_282E_
	jr z, _LABEL_553D_
	ld hl, $0178
	call _LABEL_575A_
	call _LABEL_3464_
	jp _LABEL_279F_

_LABEL_558C_:
	ld hl, $00FA
	call _LABEL_575A_
	jp _LABEL_3464_

; 164th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5595_:
	ld a, $2B
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld hl, $0234
	jp _LABEL_575A_

; 165th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_55A3_:
	ld hl, $0234
	jp _LABEL_575A_

; 166th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_55A9_:
	ld a, $1B
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	xor a
	ld (_RAM_CBC3_), a
	ld hl, $0238
	jp _LABEL_575A_

; 167th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_55BB_:
	ld a, $26
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	pop hl
	ld hl, $0000
	ld (_RAM_C2DD_), hl
	jp _LABEL_100F_

; 168th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_55CD_:
	ld hl, $0228
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $022C
	jr z, +
	ld hl, $022A
+:
	jp _LABEL_575A_

; 169th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_55E1_:
	ld a, $08
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	ld hl, $0212
	jp _LABEL_575A_

; 170th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_55EF_:
	ld a, (_RAM_C504_)
	cp $07
	jr nc, +
	ld hl, $0282
	jp _LABEL_575A_

+:
	ld hl, $0284
	call _LABEL_575A_
	ld a, (_RAM_C301_)
	cp $40
	ld hl, _DATA_5613_
	jr nc, +
	ld hl, _DATA_5616_
+:
	call _LABEL_787B_
	ret

; Data from 5613 to 5615 (3 bytes)
_DATA_5613_:
.db $07 $1B $1B

; Data from 5616 to 5618 (3 bytes)
_DATA_5616_:
.db $07 $1B $1D

; 171st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5619_:
	ld a, $93
	ld (_RAM_C004_), a
	call _LABEL_2D47_
	ld a, $1F
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	ld hl, _RAM_FFFF_
	ld (hl), $13
	ld hl, _DATA_4C000_
	ld de, _RAM_C250_
	ld bc, $0010
	ldir
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
	ld a, $49
	ld (_RAM_C2E6_), a
	call _LABEL_5FFE_
	call _LABEL_2D33_
	ld a, $20
	ld (_RAM_C29E_), a
	call _LABEL_54EF_
	call _LABEL_3464_
	ld a, (_RAM_C400_)
	or a
	jr nz, _LABEL_5666_
	ld hl, _DATA_33F64_
	call _LABEL_31CF_
	call _LABEL_3464_
; 172nd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_5666_:
	call _LABEL_7B05_
	ld a, $1D
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
	ld a, $35
	call _LABEL_617D_
	call _LABEL_576A_
	ld hl, $0272
	call _LABEL_575A_
	call _LABEL_2D19_
	ld hl, $0212
	jr z, +
	ld hl, $0230
+:
	call _LABEL_575A_
	call _LABEL_3464_
	pop hl
	jp _LABEL_454E_

; 173rd entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_569C_:
	ld hl, $02A4
	jp _LABEL_575A_

; 174th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_56A2_:
	ld a, (_RAM_C2F0_)
	ld d, a
	ld e, $00
-:
	ld a, e
	ld (_RAM_C2C2_), a
	rr d
	push de
	ld hl, _DATA_33728_
	call c, _LABEL_31CF_
	pop de
	inc e
	ld a, e
	cp $04
	jr nz, -
	ld b, $04
-:
	ld a, b
	dec a
	call _LABEL_187D_
	jr nz, +
	djnz -
	jp _LABEL_1602_

+:
	jp _LABEL_3464_

; 177th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_56CD_:
	ld hl, $023A
	jp _LABEL_575A_

; 178th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_56D3_:
	ld hl, $027A
	jp _LABEL_575A_

; 179th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_56D9_:
	ld hl, _DATA_33DCE_
	call _LABEL_31CF_
	call _LABEL_2D19_
	ret nz
	ld a, $81
	ld (_RAM_C2E9_), a
	ret

; 180th entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_56E9_:
	ld hl, _DATA_33DE6_
	call _LABEL_31CF_
	call _LABEL_2D19_
	ret nz
	ld a, $82
	ld (_RAM_C2E9_), a
	ret

; 181st entry of Jump Table from 4773 (indexed by _RAM_C2DB_)
_LABEL_56F9_:
	ld hl, _DATA_33754_
	call _LABEL_31CF_
	push bc
	call _LABEL_3A21_
	bit 4, c
	pop bc
	ret nz
	ld d, a
	ld a, (_RAM_C309_)
	rrca
	rrca
	rrca
	and $03
	ld e, a
	cp d
	jr nz, ++
	or a
	ld hl, _DATA_33799_
	jr z, +
	dec a
	ld hl, _DATA_33790_
	jr z, +
	ld hl, _DATA_33785_
+:
	call _LABEL_31CF_
	jr _LABEL_56F9_

++:
	ld a, d
	or a
	ld hl, _DATA_3377B_
	jr z, +
	dec a
	ld hl, _DATA_3376F_
	jr z, +
	ld hl, _DATA_33761_
+:
	push de
	call _LABEL_31CF_
	call _LABEL_2D19_
	pop de
	jr nz, _LABEL_56F9_
	ld a, e
	add a, a
	add a, e
	add a, d
	ld d, $00
	ld e, a
	ld hl, _DATA_5752_
	add hl, de
	ld a, (hl)
	ld (_RAM_C2E9_), a
	ret

; Data from 5752 to 5759 (8 bytes)
_DATA_5752_:
.db $81 $83 $84 $85 $82 $86 $87 $88

_LABEL_575A_:
	ld a, $02
	ld (_RAM_FFFF_), a
	ld de, $7FFE
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp _LABEL_31D4_

_LABEL_576A_:
	ld hl, _RAM_C289_
	ld (_RAM_C287_), hl
	ld de, $C28B
	ld bc, $000E
	ld (hl), $00
	inc hl
	ld (hl), $FF
	dec hl
	ldir
	ld hl, $C900
	ld (_RAM_C217_), hl
	ld hl, $C980
	ld (_RAM_C219_), hl
	ld iy, _RAM_C800_
	ld bc, $0800
-:
	ld a, (iy+0)
	and $7F
	jr z, +
	push bc
	ld hl, _DATA_5827_ - 2
	call _LABEL_E6_
	pop bc
	or a
	jp z, +
	ld hl, (_RAM_C287_)
	ld a, (iy+2)
	ld (hl), a
	inc hl
	ld (hl), c
	inc hl
	ld (_RAM_C287_), hl
+:
	ld de, $0020
	add iy, de
	inc c
	djnz -
	ld de, _RAM_C289_
	ld b, $03
--:
	push bc
	ld l, e
	ld h, d
	inc hl
	inc hl
-:
	ld a, (de)
	cp (hl)
	jr nc, +
	ld c, a
	ld a, (hl)
	ld (hl), c
	ld (de), a
	inc hl
	inc de
	ld a, (de)
	ld c, a
	ld a, (hl)
	ld (hl), c
	ld (de), a
	dec hl
	dec de
+:
	inc hl
	inc hl
	djnz -
	inc de
	inc de
	pop bc
	djnz --
	ld hl, _RAM_C28A_
	ld b, $08
-:
	ld a, (hl)
	cp $FF
	jr z, ++
	push bc
	push hl
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, _RAM_C800_
	add hl, de
	push hl
	pop iy
	cp $04
	ld a, $03
	ld bc, _DATA_D6F4_
	jr c, +
	ld a, $15
	ld bc, _DATA_54000_
+:
	ld (_RAM_FFFF_), a
	call _LABEL_5853_
	pop hl
	pop bc
++:
	inc hl
	inc hl
	djnz -
	ld hl, (_RAM_C217_)
	ld (hl), $D0
	ret

_LABEL_5818_:
	push iy
	pop hl
	inc hl
	ld e, l
	ld d, h
	inc de
	xor a
	ld (hl), a
	ld bc, $001E
	ldir
	ret

; Jump Table from 5827 to 5852 (22 entries, indexed by _RAM_C800_)
_DATA_5827_:
.dw _LABEL_599F_ _LABEL_59D4_ _LABEL_59E0_ _LABEL_59E5_ _LABEL_59F1_ _LABEL_59F6_ _LABEL_5A02_ _LABEL_5A07_
.dw _LABEL_5A4F_ _LABEL_5A70_ _LABEL_5B87_ _LABEL_5BCE_ _LABEL_5C63_ _LABEL_5C99_ _LABEL_5DA0_ _LABEL_5E2B_
.dw _LABEL_5E2E_ _LABEL_5E72_ _LABEL_5EAE_ _LABEL_5EEA_ _LABEL_5D30_ _LABEL_5D5B_

_LABEL_5853_:
	ld l, (iy+1)
	ld h, $00
	add hl, hl
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld b, (hl)
	push bc
	inc hl
	ld de, (_RAM_C217_)
	ld c, (iy+2)
-:
	ld a, (hl)
	add a, c
	ld (de), a
	inc de
	inc hl
	djnz -
	ld (_RAM_C217_), de
	pop bc
	ld de, (_RAM_C219_)
	ld c, (iy+4)
-:
	ld a, (hl)
	add a, c
	ld (de), a
	inc de
	inc hl
	ld a, (hl)
	ld (de), a
	inc hl
	inc de
	djnz -
	ld (_RAM_C219_), de
	ret

_LABEL_588B_:
	ld hl, _RAM_C900_
	ld de, $7F00
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	call _LABEL_591E_
	ld hl, _RAM_C980_
	ld de, $7F80
	rst $08	; _LABEL_8_
_LABEL_589E_:
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
_LABEL_591E_:
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
_LABEL_595E_:
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	ret

; 1st entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_599F_:
	ld b, $01
_LABEL_59A1_:
	push bc
	call _LABEL_5818_
	inc (iy+0)
	pop bc
	ld (iy+2), $60
	ld a, (_RAM_C2EA_)
	and $03
	ld a, $84
	jr nz, +
	ld a, $80
+:
	ld (iy+4), a
	ld (iy+18), $01
	ld (iy+1), b
	ld (iy+17), $01
	ld a, c
	or a
	ld a, $00
	jr nz, +
	ld a, $03
+:
	ld (iy+10), a
	ld a, $FF
	ret

; 2nd entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_59D4_:
	ld de, _DATA_5A13_
	ld hl, _DATA_5A17_
	call _LABEL_5A98_
	ld a, $FF
	ret

; 3rd entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_59E0_:
	ld b, $02
	jp _LABEL_59A1_

; 4th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_59E5_:
	ld de, $5A27
	ld hl, _DATA_5A2B_
	call _LABEL_5A98_
	ld a, $FF
	ret

; 5th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_59F1_:
	ld b, $03
	jp _LABEL_59A1_

; 6th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_59F6_:
	ld de, $5A13
	ld hl, _DATA_5A17_
	call _LABEL_5A98_
	ld a, $FF
	ret

; 7th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5A02_:
	ld b, $04
	jp _LABEL_59A1_

; 8th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5A07_:
	ld de, $5A3B
	ld hl, _DATA_5A3F_
	call _LABEL_5A98_
	ld a, $FF
	ret

; Data from 5A13 to 5A16 (4 bytes)
_DATA_5A13_:
.db $01 $00 $09 $0C

; Data from 5A17 to 5A2A (20 bytes)
_DATA_5A17_:
.db $05 $06 $07 $06 $02 $03 $04 $03 $08 $09 $0A $09 $0B $0C $0D $0C
.db $05 $00 $08 $0B

; Data from 5A2B to 5A3E (20 bytes)
_DATA_5A2B_:
.db $04 $05 $06 $05 $01 $02 $03 $02 $07 $08 $09 $08 $0A $0B $0C $0B
.db $01 $00 $0E $0F

; Data from 5A3F to 5A4E (16 bytes)
_DATA_5A3F_:
.db $05 $06 $07 $06 $02 $03 $04 $03 $08 $09 $0A $0A $0B $0C $0D $0D

; 9th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5A4F_:
	call _LABEL_5818_
	inc (iy+0)
	ld (iy+2), $60
	ld (iy+4), $80
	ld (iy+1), $05
	ld a, (_RAM_C30E_)
	sub $04
	ld (iy+16), a
	ld (iy+17), $01
	ld a, $FF
	ret

; 10th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5A70_:
	call +
	ld a, $FF
	ret

+:
	call _LABEL_7143_
	ld a, (_RAM_C264_)
	and $0F
	ret z
	ld c, $FF
-:
	rrca
	inc c
	jp nc, -
	ld hl, $5A94
	ld b, $00
	add hl, bc
	ld a, (_RAM_C30E_)
	add a, (hl)
	ld (iy+16), a
	ret

; Data from 5A94 to 5A97 (4 bytes)
.db $FC $FE $FF $FD

_LABEL_5A98_:
	ld a, c
	or a
	call z, _LABEL_7143_
	ld a, (_RAM_C265_)
	or a
	jp z, _LABEL_5AFC_
	cp $0F
	jp nz, _LABEL_5B30_
	ld a, c
	or a
	jp nz, +
	ld a, (iy+18)
	ld (iy+19), a
	ld a, (_RAM_C264_)
	and $0F
	jp z, _LABEL_5AFC_
	ld b, $FF
-:
	rrca
	inc b
	jp nc, -
	ld (iy+18), b
	jp _LABEL_5B30_

+:
	bit 0, (iy+10)
	jr z, +
	set 1, (iy+10)
+:
	ld a, (iy-28)
	cp (iy+4)
	jr nz, +
	ld a, (iy-30)
	cp (iy+2)
	jr z, ++
+:
	bit 1, (iy-22)
	jr z, ++
	set 0, (iy+10)
++:
	ld a, (iy+18)
	ld (iy+19), a
	ld a, (iy-13)
	ld (iy+18), a
	jp _LABEL_5B30_

_LABEL_5AFC_:
	ld a, (_RAM_C264_)
	and $0F
	jp nz, _LABEL_5B30_
--:
	ld a, (iy+18)
	ld (iy+19), a
	ld a, c
	or a
	jr nz, +
	ld a, (_RAM_C204_)
	and $0F
	jr z, +
	ld l, $FF
-:
	rrca
	inc l
	jp nc, -
	jr ++

+:
	ld a, c
	or a
	ld l, (iy+18)
	jr z, ++
	ld l, (iy-13)
++:
	ld h, $00
	add hl, de
	ld a, (hl)
	ld (iy+16), a
	ret

_LABEL_5B30_:
	ld a, c
	or a
	call nz, +
	ld a, (_RAM_C2E9_)
	or a
	jr nz, --
	dec (iy+14)
	ret p
	ld (iy+14), $07
	ld a, (iy+18)
	add a, a
	add a, a
	ld b, a
	ld a, (iy+13)
	inc a
	and $03
	ld (iy+13), a
	add a, b
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	ld (iy+16), a
	ret

+:
	bit 0, (iy+10)
	ld a, (iy+18)
	call nz, +
	ld a, (_RAM_C812_)
	xor $01
+:
	cp $02
	jp nc, ++
	or a
	jr nz, +
	dec a
+:
	add a, (iy+2)
	ld (iy+2), a
	ret

++:
	sub $02
	jr nz, +
	dec a
+:
	add a, (iy+4)
	ld (iy+4), a
	ret

; 11th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5B87_:
	ld a, (iy+10)
	push af
	call _LABEL_5818_
	pop af
	inc (iy+0)
	ld hl, _RAM_FFFF_
	ld (hl), $12
	add a, a
	ld e, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld hl, _DATA_5BF1_
	add hl, de
	ld a, (hl)
	ld (_RAM_C004_), a
	inc hl
	ld a, (hl)
	ld (iy+24), a
	inc hl
	ld a, (hl)
	ld (iy+1), a
	inc hl
	ld a, (hl)
	ld (iy+15), a
	inc hl
	ld a, (_RAM_C894_)
	ld (iy+2), a
	ld a, (_RAM_C895_)
	ld (iy+4), a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, $7400
	call _LABEL_3FA_
	xor a
	ret

; 12th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5BCE_:
	call +
	ld a, $FF
	ret

+:
	dec (iy+14)
	ret p
	ld a, (iy+24)
	ld (iy+14), a
	ld a, (iy+1)
	inc a
	cp (iy+15)
	jr nc, +
	ld (iy+1), a
	ret

+:
	xor a
	ld (iy+0), a
	pop hl
	ret

; Data from 5BF1 to 5C62 (114 bytes)
_DATA_5BF1_:
.db $A2 $03 $66 $6B $2A $AD $A2 $03 $05 $0A $00 $9C $A2 $03 $05 $0A
.db $00 $9C $A2 $03 $05 $0A $00 $9C $A2 $03 $05 $0A $00 $9C $A2 $03
.db $6A $72 $91 $AF $A2 $03 $71 $76 $77 $B1 $A2 $03 $05 $0A $00 $9C
.db $A2 $03 $05 $0A $00 $9C $A7 $03 $18 $21 $70 $A2 $A2 $03 $6A $72
.db $91 $AF $A6 $03 $11 $19 $36 $A0 $A3 $03 $5E $63 $C0 $AA $A5 $03
.db $09 $12 $D7 $9D $A4 $03 $62 $67 $9D $AB $A4 $03 $75 $7A $44 $B2
.db $A8 $03 $20 $29 $BC $A3 $A9 $03 $28 $32 $E0 $A5 $AA $03 $31 $3A
.db $FD $A7

; 13th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5C63_:
	call _LABEL_5818_
	inc (iy+0)
	ld (iy+2), $58
	ld (iy+4), $60
	ld (iy+1), $3A
	ld (iy+14), $07
	call _LABEL_5B1_
	ld b, a
	ld c, $3D
	ld a, (_RAM_C2E0_)
	or a
	jr z, ++
	cp $F0
	jr nc, +
	cp b
	jr c, ++
+:
	rrca
	ld c, $3E
	jr nc, ++
	ld c, $43
++:
	ld (iy+15), c
	ld a, $FF
	ret

; 14th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5C99_:
	call +
	ld a, $FF
	ret

+:
	bit 0, (iy+10)
	ret z
	bit 1, (iy+10)
	jr nz, +
	dec (iy+14)
	ret p
	ld (iy+14), $07
	ld a, (iy+1)
	inc a
	ld (iy+1), a
	cp $3D
	ret nz
	ld (iy+14), $17
	set 1, (iy+10)
	ret

+:
	bit 2, (iy+10)
	jr nz, ++
	dec (iy+14)
	ret p
	ld (iy+14), $03
	ld a, (iy+15)
	ld (iy+1), a
	set 2, (iy+10)
	cp $3D
	jr nz, +
	ld (iy+0), $00
	ret

+:
	cp $3E
	ld a, $B1
	jr z, +
	inc a
+:
	ld (_RAM_C004_), a
	ret

++:
	dec (iy+14)
	ret p
	ld (iy+14), $03
	ld a, (iy+15)
	cp $3E
	jr nz, +
	ld a, (iy+1)
	inc a
	ld (iy+1), a
	push af
	cp $42
	call z, _LABEL_7BC4_
	pop af
	cp $43
	ret c
	ld (iy+1), $3D
	ld (iy+0), $00
	ret

+:
	ld a, (iy+1)
	inc a
	ld (iy+1), a
	cp $47
	ret c
	call _LABEL_7BC4_
	ld (iy+1), $3D
	ld (iy+0), $00
	ret

; 21st entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5D30_:
	call _LABEL_5818_
	inc (iy+0)
	ld a, (_RAM_C309_)
	cp $17
	ld a, $84
	ld de, $88D0
	jr nz, +
	ld a, $88
	ld de, $3050
+:
	ld (iy+2), d
	ld (iy+4), e
	ld (iy+1), a
	ld (iy+15), a
	ld a, $B9
	ld (_RAM_C004_), a
	ld a, $FF
	ret

; 22nd entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5D5B_:
	call +
	ld a, $FF
	ret

+:
	dec (iy+14)
	ret p
	ld (iy+14), $07
	ld a, (iy+13)
	inc (iy+13)
	and $03
	add a, (iy+15)
	ld (iy+1), a
	ld a, (_RAM_C309_)
	cp $17
	jr z, +
	dec (iy+4)
	dec (iy+2)
	ld a, (iy+4)
	cp $90
	ret nz
-:
	ld (iy+0), $00
	ret

+:
	inc (iy+2)
	ld a, (iy+2)
	cp $78
	jr z, -
	and $07
	ret nz
	dec (iy+4)
	ret

; 15th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5DA0_:
	call +
	ld a, (iy+1)
	ret

+:
	ld a, (_RAM_C29F_)
	or a
	ret z
	ld a, (_RAM_C800_)
	or a
	ret nz
_LABEL_5DB1_:
	dec (iy+14)
	ret p
	ld a, (iy+24)
	ld (iy+14), a
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld c, (iy+13)
	ld l, c
	ld h, $00
	bit 7, (iy+10)
	ld e, (iy+27)
	ld d, (iy+28)
	jr nz, _LABEL_5DD8_
	ld e, (iy+25)
	ld d, (iy+26)
_LABEL_5DD8_:
	add hl, de
	ld a, (hl)
	or a
	jr nz, +
	bit 0, (iy+10)
	jr z, ++
	ld (_RAM_C29F_), a
	ld (iy+10), a
	ld (_RAM_C2ED_), a
	ld c, a
	ld a, (de)
+:
	inc c
	ld (iy+13), c
	ld (iy+1), a
	ret

++:
	set 0, (iy+10)
	inc c
	ld (iy+13), c
	bit 7, (iy+10)
	jr z, +
	ld a, (_RAM_C2E6_)
	cp $48
	jr z, _LABEL_5E1D_
	ld a, $11
	ld (_RAM_C800_), a
	ret

+:
	ld a, (_RAM_C2ED_)
	or a
	jr nz, _LABEL_5E1D_
	ld a, $BB
	ld (_RAM_C004_), a
	ret

_LABEL_5E1D_:
	ld a, $AE
	ld (_RAM_C004_), a
	call _LABEL_7BC4_
	ld a, (_RAM_C2EE_)
	jp _LABEL_2FA1_

; 16th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5E2B_:
	ld a, $FF
	ret

; 17th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5E2E_:
	call _LABEL_5818_
	inc (iy+0)
	ld hl, _RAM_FFFF_
	ld (hl), $0B
	ld a, (_RAM_C88A_)
	bit 6, a
	ld hl, _DATA_5EA2_
	jr z, +
	ld hl, _DATA_5EA8_
+:
	ld a, (hl)
	ld (_RAM_C004_), a
	inc hl
	ld a, (hl)
	ld (iy+24), a
	inc hl
	ld a, (hl)
	ld (iy+1), a
	inc hl
	ld a, (hl)
	ld (iy+15), a
	inc hl
	ld a, (_RAM_C896_)
	ld (iy+2), a
	ld a, (_RAM_C897_)
	ld (iy+4), a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, $7400
	call _LABEL_3FA_
	xor a
	ret

; 18th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5E72_:
	call +
	ld a, $FF
	ret

+:
	dec (iy+14)
	ret p
	ld a, (iy+24)
	ld (iy+14), a
	ld a, (iy+1)
	inc a
	cp (iy+15)
	jr nc, +
	ld (iy+1), a
	ret

+:
	xor a
	ld (iy+0), a
	pop hl
	ld a, (_RAM_C2EF_)
	and $80
	jp z, _LABEL_5E1D_
	ld a, $BB
	ld (_RAM_C004_), a
	ret

; Data from 5EA2 to 5EA7 (6 bytes)
_DATA_5EA2_:
.db $A8 $03 $46 $4F $01 $99

; Data from 5EA8 to 5EAD (6 bytes)
_DATA_5EA8_:
.db $A9 $03 $79 $82 $F0 $9A

; 19th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5EAE_:
	call +
	ld a, (iy+1)
	ret

+:
	ld a, (_RAM_C29F_)
	or a
	ret z
	dec (iy+14)
	ret p
	ld a, (iy+24)
	ld (iy+14), a
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld a, (_RAM_C2EE_)
	or a
	ld de, _DATA_D4F6_
	jr z, +
	dec a
	ld de, _DATA_D506_
	jr z, +
	dec a
	ld de, _DATA_D511_
	jr z, +
	ld de, _DATA_D51C_
+:
	ld c, (iy+13)
	ld l, c
	ld h, $00
	jp _LABEL_5DD8_

; 20th entry of Jump Table from 5827 (indexed by _RAM_C800_)
_LABEL_5EEA_:
	call +
	ld a, (iy+1)
	ret

+:
	ld a, (_RAM_C29F_)
	or a
	ret z
	ld a, (iy+12)
	cp $02
	jr nc, +
	dec (iy+11)
	ret p
	ld (iy+11), $07
	inc (iy+12)
	or a
	ld hl, _DATA_63F50_
	jr z, _LABEL_5F11_
	ld hl, _DATA_63F80_
_LABEL_5F11_:
	ld a, $18
	ld (_RAM_FFFF_), a
	ld de, $7A5C
	ld bc, $0608
	di
	call _LABEL_390_
	ei
	ret

+:
	cp $03
	jr nc, ++
	call _LABEL_5DB1_
	ld a, (iy+13)
	cp $13
	jr nz, +
	ld (iy+2), $47
+:
	ld a, (_RAM_C29F_)
	or a
	ret nz
	dec a
	ld (_RAM_C29F_), a
	inc (iy+12)
	ld (iy+2), $4F
	ret

++:
	dec (iy+11)
	ret p
	ld (iy+11), $07
	inc (iy+12)
	cp $04
	ld hl, _DATA_63F50_
	jr nz, _LABEL_5F11_
	xor a
	ld (iy+12), a
	ld (_RAM_C29F_), a
	ld hl, _DATA_63F20_
	jr _LABEL_5F11_

_LABEL_5F63_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld a, (_RAM_C308_)
	cp $03
	jp nc, _LABEL_5FF9_
	ld h, a
	ld l, $00
	srl h
	rr l
	ld de, _DATA_C000_
	add hl, de
	ld de, (_RAM_C305_)
	ld a, e
	add a, $60
	jr c, +
	cp $C0
	ccf
+:
	ld a, $00
	adc a, d
	and $07
	add a, a
	add a, a
	add a, a
	ld c, a
	ld de, (_RAM_C301_)
	ld a, e
	add a, $80
	ld a, $00
	adc a, d
	and $07
	add a, c
	add a, a
	ld d, $00
	ld e, a
	add hl, de
	ld b, (hl)
	ld a, (_RAM_C30E_)
	or a
	jr z, +
	srl b
	srl b
+:
	call _LABEL_5B1_
	cp b
	jp nc, _LABEL_5FF9_
	inc hl
	ld b, $00
	ld c, (hl)
	ld a, (_RAM_C2E5_)
	ld l, a
	ld h, $00
	ld de, _DATA_C5A0_
	add hl, de
	ld a, (_RAM_C308_)
	or a
	jr z, +
	ld a, $0A
+:
	add a, (hl)
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, _DATA_C470_
	add hl, de
	add hl, bc
	ld a, (hl)
_LABEL_5FD8_:
	or a
	ret z
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, _DATA_C178_
	add hl, de
	call _LABEL_5B1_
	and $07
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	ld (_RAM_C2E6_), a
	ld a, $FF
	ret

_LABEL_5FF9_:
	xor a
	ld (_RAM_C29D_), a
	ret

_LABEL_5FFE_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	ld hl, _RAM_C440_
	ld de, _RAM_C440_ + 1
	ld bc, $007F
	ld (hl), $00
	ldir
	ld a, (_RAM_C2E6_)
	ld a, a
	and $7F
	ret z
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, _DATA_C680_ - 1
	add hl, de
	ld de, _RAM_C2C8_
	ld bc, $0008
	ldir
	ld de, _RAM_C258_
	ld bc, $0008
	ldir
	ld b, (hl)
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	ld a, b
	ld (_RAM_FFFF_), a
	ld de, $6000
	call _LABEL_3FA_
	pop hl
	inc hl
	ld a, $03
	ld (_RAM_FFFF_), a
	ld a, (hl)
	push hl
	call _LABEL_60FD_
	pop hl
	inc hl
	ld a, $03
	ld (_RAM_FFFF_), a
	ld a, (hl)
	bit 7, a
	jr nz, +
	and $0F
	ld b, a
	ld a, (_RAM_C4F0_)
	inc a
	add a, a
	cp b
	jr nc, _LABEL_6075_
	ld b, a
_LABEL_6075_:
	call _LABEL_5B1_
	and $07
	cp b
	jp nc, _LABEL_6075_
	inc a
+:
	and $0F
	ld b, a
	ld (_RAM_C2C7_), a
	inc hl
	ld a, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld e, (hl)
	inc hl
	push hl
	ex de, hl
	ld ix, _RAM_C440_
	ld de, $0010
-:
	ld (ix+0), $01
	ld (ix+1), a
	ld (ix+6), a
	ld (ix+8), h
	ld (ix+9), l
	add ix, de
	djnz -
	pop hl
	ld a, (hl)
	ld (_RAM_C2DF_), a
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	push hl
	ld a, (_RAM_C2C7_)
	ld c, a
	ld b, $00
	call _LABEL_44C_
	ld (_RAM_C2DD_), hl
	pop hl
	inc hl
	ld a, (hl)
	ld (_RAM_C2E0_), a
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	push hl
	ld a, (_RAM_C2C7_)
	ld c, a
	ld b, $00
	call _LABEL_44C_
	ld (_RAM_C2D0_), hl
	pop hl
	inc hl
	ld a, (hl)
	ld (_RAM_C2E8_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C2E7_), a
	ld hl, $C500
	ld (_RAM_C2E1_), hl
	call _LABEL_576A_
	call _LABEL_576A_
	ld hl, _RAM_C240_
	ld de, _RAM_C220_
	ld bc, $0020
	ldir
	ld a, $10
	jp _LABEL_52_

_LABEL_60FD_:
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld e, l
	ld d, h
	add hl, hl
	add hl, de
	ld de, _DATA_CFC7_
	add hl, de
	ld de, _RAM_C880_
	ld bc, $0003
	ldir
	inc de
	ldi
	ld de, _RAM_C894_
	ld bc, $0009
	ldir
	ld a, (_RAM_C898_)
	ld (_RAM_C88E_), a
	ld a, $01
	ld (_RAM_C88D_), a
	ld c, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, c
	ld c, a
	ld a, h
	ld h, b
	ld b, a
	or c
	ld a, $18
	ld (_RAM_FFFF_), a
	call nz, _LABEL_615A_
	pop hl
	inc hl
	ld a, $03
	ld (_RAM_FFFF_), a
	ld de, _RAM_C8A0_
	ld bc, $0003
	ldir
	inc de
	ldi
	ld a, (hl)
	ld (_RAM_C2F1_), a
	ret

_LABEL_615A_:
	push bc
	push de
	ld c, $FF
-:
	ld a, (hl)
	or a
	jp z, +
	ldi
	ldi
-:
	djnz -
	pop de
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop bc
	dec c
	jp nz, _LABEL_615A_
	ret

+:
	inc hl
	inc de
	inc hl
	inc de
	jp -

_LABEL_617D_:
	or a
	ret z
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	ld hl, _RAM_C440_
	ld de, _RAM_C440_ + 1
	ld bc, $007F
	ld (hl), $00
	ldir
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_D540_
	add hl, de
	ld a, (hl)
	push hl
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, _DATA_D5BC_
	add hl, de
	push hl
	ld de, _RAM_C258_
	ld bc, $0008
	ldir
	pop hl
	ld de, _RAM_C238_
	ld bc, $0008
	ldir
	pop hl
	inc hl
	ld a, (hl)
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, _DATA_D66E_ - 2
	add hl, de
	ld de, _RAM_C800_
	ld bc, $0003
	ldir
	inc de
	ldi
	inc hl
	ld b, (hl)
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, b
	ld (_RAM_FFFF_), a
	ld de, $6000
	call _LABEL_3FA_
	call _LABEL_576A_
	ld a, $16
	jp _LABEL_52_

_LABEL_61F5_:
	ld hl, _RAM_FFFF_
	ld (hl), $1C
	ld ix, _RAM_C800_
	ld b, $04
-:
	ld a, (ix+16)
	cp (ix+17)
	jp z, +
	ld (ix+17), a
	ld d, a
	ld a, (ix+1)
	or a
	ld hl, _DATA_621F_ - 2
	jp nz, _LABEL_E6_
+:
	ld de, $0020
	add ix, de
	djnz -
	ret

; Jump Table from 621F to 6228 (5 entries, indexed by _RAM_C821_)
_DATA_621F_:
.dw _LABEL_6229_ _LABEL_6246_ _LABEL_6263_ _LABEL_6280_ _LABEL_6293_

; 1st entry of Jump Table from 621F (indexed by _RAM_C821_)
_LABEL_6229_:
	ld e, $00
	srl d
	rr e
	ld l, e
	ld h, d
	srl d
	rr e
	add hl, de
	ld de, _DATA_70000_
	add hl, de
	ld de, $7540
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	call _LABEL_589E_
	jp _LABEL_591E_

; 2nd entry of Jump Table from 621F (indexed by _RAM_C821_)
_LABEL_6246_:
	ld e, $00
	srl d
	rr e
	ld l, e
	ld h, d
	srl d
	rr e
	add hl, de
	ld de, _DATA_70A80_
	add hl, de
	ld de, $7600
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	call _LABEL_589E_
	jp _LABEL_591E_

; 3rd entry of Jump Table from 621F (indexed by _RAM_C821_)
_LABEL_6263_:
	ld e, $00
	srl d
	rr e
	ld l, e
	ld h, d
	srl d
	rr e
	add hl, de
	ld de, _DATA_71440_
	add hl, de
	ld de, $76C0
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	call _LABEL_589E_
	jp _LABEL_591E_

; 4th entry of Jump Table from 621F (indexed by _RAM_C821_)
_LABEL_6280_:
	ld e, $00
	srl d
	rr e
	ld hl, _DATA_71EC0_
	add hl, de
	ld de, $7780
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	jp _LABEL_589E_

; 5th entry of Jump Table from 621F (indexed by _RAM_C821_)
_LABEL_6293_:
	ld a, (_RAM_C202_)
	cp $05
	jr z, +
	cp $09
	ret nz
+:
	ld hl, _RAM_FFFF_
	ld (hl), $12
	ld l, $00
	ld h, d
	add hl, hl
	ld de, _DATA_48000_
	add hl, de
	ld de, $7540
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	call _LABEL_589E_
	call _LABEL_589E_
	call _LABEL_589E_
	jp _LABEL_589E_

_LABEL_62BC_:
	ld hl, _RAM_FFFF_
	ld (hl), $0E
	ld hl, _RAM_C26F_
	ld de, _DATA_6345_
	ld bc, $0C10
	call _LABEL_630A_
	ld hl, _RAM_C273_
	ld de, _DATA_6355_
	ld bc, $0340
	call _LABEL_630A_
	ld hl, _RAM_C277_
	ld de, _DATA_6365_
	ld bc, $044C
	call _LABEL_630A_
	ld hl, _RAM_C27B_
	ld de, _DATA_6375_
	ld bc, $065C
	call _LABEL_630A_
	ld hl, _RAM_C27F_
	ld de, _DATA_6385_
	ld bc, $0874
	call _LABEL_630A_
	ld hl, _RAM_C283_
	ld de, _DATA_6395_
	ld bc, $1094
	call _LABEL_630A_
	ret

_LABEL_630A_:
	ld a, (hl)
	or a
	ret z
	inc hl
	ld a, (hl)
	inc hl
	dec (hl)
	ret p
	ld (hl), a
	inc hl
	ld a, (_RAM_C2E9_)
	cp $04
	jr c, +
	dec (hl)
	jr ++

+:
	inc (hl)
++:
	ld a, (hl)
	and $07
	ld l, a
	ld h, $00
	add hl, hl
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ex de, hl
	ld l, c
	ld h, $08
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	ld a, b
--:
	ld b, $20
-:
	outi
	nop
	jp nz, -
	dec a
	jp nz, --
	pop hl
	ret

; Pointer Table from 6345 to 6354 (8 entries, indexed by _RAM_C272_)
_DATA_6345_:
.dw _DATA_3A3E8_ _DATA_3A3E8_ _DATA_3A568_ _DATA_3A6E8_ _DATA_3A6E8_ _DATA_3A568_ _DATA_3A868_ _DATA_3A9E8_

; Pointer Table from 6355 to 6364 (8 entries, indexed by _RAM_C276_)
_DATA_6355_:
.dw _DATA_3AB68_ _DATA_3AB68_ _DATA_3ABC8_ _DATA_3ABC8_ _DATA_3AC28_ _DATA_3AC28_ _DATA_3AC88_ _DATA_3AC88_

; Pointer Table from 6365 to 6374 (8 entries, indexed by _RAM_C27A_)
_DATA_6365_:
.dw _DATA_3BAE8_ _DATA_3BAE8_ _DATA_3BB68_ _DATA_3BB68_ _DATA_3BBE8_ _DATA_3BBE8_ _DATA_3BB68_ _DATA_3BB68_

; Pointer Table from 6375 to 6384 (8 entries, indexed by _RAM_C27E_)
_DATA_6375_:
.dw _DATA_3ACE8_ _DATA_3ACE8_ _DATA_3ADA8_ _DATA_3ADA8_ _DATA_3AE68_ _DATA_3AE68_ _DATA_3AF28_ _DATA_3AF28_

; Pointer Table from 6385 to 6394 (8 entries, indexed by _RAM_C282_)
_DATA_6385_:
.dw _DATA_3AFE8_ _DATA_3AFE8_ _DATA_3B0E8_ _DATA_3B0E8_ _DATA_3B1E8_ _DATA_3B1E8_ _DATA_3B0E8_ _DATA_3B0E8_

; Pointer Table from 6395 to 63A4 (8 entries, indexed by _RAM_C286_)
_DATA_6395_:
.dw _DATA_3B4E8_ _DATA_3B4E8_ _DATA_3B4E8_ _DATA_3B4E8_ _DATA_3B4E8_ _DATA_3B6E8_ _DATA_3B8E8_ _DATA_3B2E8_

_LABEL_63A5_:
	ld a, (_RAM_C2D6_)
	or a
	ret z
	ld a, (_RAM_C29E_)
	or a
	ret z
	cp $0C
	ret nc
	ld hl, _DATA_63B8_ - 2
	jp _LABEL_E6_

; Jump Table from 63B8 to 63CD (11 entries, indexed by _RAM_C29E_)
_DATA_63B8_:
.dw _LABEL_63CE_ _LABEL_63CE_ _LABEL_63CF_ _LABEL_63F6_ _LABEL_63CE_ _LABEL_63CE_ _LABEL_6442_ _LABEL_63CE_
.dw _LABEL_63CE_ _LABEL_63CE_ _LABEL_64CF_

; 1st entry of Jump Table from 63B8 (indexed by _RAM_C29E_)
_LABEL_63CE_:
	ret

; 3rd entry of Jump Table from 63B8 (indexed by _RAM_C29E_)
_LABEL_63CF_:
	call _LABEL_64A3_
	ld hl, _RAM_C2BC_
	dec (hl)
	ret p
	ld (hl), $0B
	inc hl
	ld a, (hl)
	inc a
	cp $09
	jr c, +
	xor a
+:
	ld (hl), a
	ld hl, _RAM_FFFF_
	ld (hl), $10
	ld hl, _DATA_6506_
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld b, $04
	jp _LABEL_641B_

; 4th entry of Jump Table from 63B8 (indexed by _RAM_C29E_)
_LABEL_63F6_:
	call _LABEL_64A3_
	ld hl, _RAM_C2BC_
	dec (hl)
	ret p
	ld (hl), $0F
	inc hl
	ld a, (hl)
	inc a
	cp $0E
	jr c, +
	xor a
+:
	ld (hl), a
	ld hl, _RAM_FFFF_
	ld (hl), $10
	ld hl, _DATA_654E_
	add a, a
	ld e, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	add hl, de
	ld b, $03
_LABEL_641B_:
	push bc
	ld e, (hl)
	ld d, $02
	ex de, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	rst $08	; _LABEL_8_
	inc hl
	ld d, (hl)
	inc hl
	push hl
	ld e, $00
	srl d
	rr e
	ld hl, _DATA_428F6_
	add hl, de
	ld bc,  $8000 | Port_VDPData
-:
	outi
	jp nz, -
	pop hl
	pop bc
	djnz _LABEL_641B_
	ret

; 7th entry of Jump Table from 63B8 (indexed by _RAM_C29E_)
_LABEL_6442_:
	ld hl, _RAM_C2BC_
	dec (hl)
	ret p
	ld (hl), $0F
	inc hl
	ld a, (hl)
	inc a
	cp $06
	jr c, +
	xor a
+:
	ld (hl), a
	ld hl, _RAM_FFFF_
	ld (hl), $11
	add a, a
	ld b, a
	add a, a
	add a, b
	ld e, a
	ld d, $00
	ld hl, _DATA_65A2_
	add hl, de
	ld de, $4020
	rst $08	; _LABEL_8_
	ld b, $04
--:
	push bc
	ld d, (hl)
	inc hl
	ld e, $00
	srl d
	rr e
	ld bc, _DATA_44000_
	ex de, hl
	add hl, bc
	ld bc,  $8000 | Port_VDPData
-:
	outi
	jp nz, -
	pop bc
	ex de, hl
	djnz --
	ld b, $02
--:
	push bc
	ld d, (hl)
	inc hl
	ld e, $00
	srl d
	rr e
	srl d
	rr e
	ld bc, _DATA_44000_
	ex de, hl
	add hl, bc
	ld bc,  $4000 | Port_VDPData
-:
	outi
	jp nz, -
	pop bc
	ex de, hl
	djnz --
	ret

_LABEL_64A3_:
	ld a, (_RAM_C21B_)
	or a
	ret nz
	ld a, (_RAM_C202_)
	cp $0D
	ret nz
	ld hl, _RAM_C213_
	dec (hl)
	ret p
	ld (hl), $1F
	ld de, $C00D
	rst $08	; _LABEL_8_
	inc hl
	ld a, (hl)
	inc a
	and $03
	ld (hl), a
	ld e, a
	ld d, $00
	ld hl, _DATA_65C6_
	add hl, de
	ld bc,  $0300 | Port_VDPData
-:
	outi
	jp nz, -
	ret

; 11th entry of Jump Table from 63B8 (indexed by _RAM_C29E_)
_LABEL_64CF_:
	ld a, (_RAM_C21B_)
	or a
	ret nz
	ld a, (_RAM_C202_)
	cp $0D
	ret nz
	ld hl, _RAM_C213_
	dec (hl)
	ret p
	ld (hl), $07
	ld de, $C008
	rst $08	; _LABEL_8_
	inc hl
	ld a, (hl)
	dec a
	and $0F
	ld (hl), a
	ld e, a
	ld d, $00
	ld hl, _DATA_65CE_
	add hl, de
	ld bc,  $0400 | Port_VDPData
-:
	outi
	jp nz, -
	ld hl, _DATA_65D6_
	add hl, de
	ld b, $04
-:
	outi
	jp nz, -
	ret

; Data from 6506 to 654D (72 bytes)
_DATA_6506_:
.db $01 $15 $25 $09 $29 $0A $29 $0A $01 $00 $05 $0B $01 $00 $05 $0B
.db $05 $01 $09 $0D $05 $01 $09 $0D $09 $02 $0D $0D $09 $02 $0D $0D
.db $0D $03 $11 $0E $0D $03 $11 $0E $11 $04 $15 $0E $11 $04 $15 $0E
.db $15 $05 $19 $0F $15 $05 $19 $0F $19 $06 $21 $0F $19 $06 $21 $0F
.db $21 $08 $01 $10 $25 $0C $29 $11

; Data from 654E to 65A1 (84 bytes)
_DATA_654E_:
.db $25 $09 $29 $0A $29 $0A $25 $09 $29 $0A $29 $0A $25 $09 $29 $0C
.db $29 $0C $21 $08 $25 $0F $29 $14 $21 $0F $25 $13 $29 $14 $19 $06
.db $1D $0F $21 $12 $15 $05 $19 $0E $1D $12 $15 $0E $19 $12 $19 $12
.db $15 $0E $19 $12 $19 $12 $15 $05 $19 $0E $1D $12 $19 $06 $1D $0F
.db $21 $12 $1D $07 $21 $0F $25 $13 $21 $08 $25 $0C $29 $11 $25 $09
.db $29 $0C $29 $0C

; Data from 65A2 to 65C5 (36 bytes)
_DATA_65A2_:
.db $00 $02 $05 $08 $15 $18 $00 $03 $06 $09 $16 $14 $01 $04 $07 $05
.db $17 $14 $02 $00 $08 $05 $18 $15 $03 $00 $09 $06 $14 $16 $04 $01
.db $05 $07 $14 $17

; Data from 65C6 to 65CD (8 bytes)
_DATA_65C6_:
.db $3F $3C $38 $38 $3F $3C $38 $38

; Data from 65CE to 65D5 (8 bytes)
_DATA_65CE_:
.db $06 $06 $06 $06 $06 $06 $06 $06

; Data from 65D6 to 65ED (24 bytes)
_DATA_65D6_:
.db $06 $06 $06 $06 $25 $2A $3E $3F $06 $06 $06 $06 $06 $06 $06 $06
.db $06 $06 $06 $06 $06 $06 $06 $06

_LABEL_65EE_:
	ld a, (_RAM_C30C_)
	ld l, a
	ld h, $CB
	ld a, (hl)
	cp $08
	jp nz, _LABEL_66E1_
	ld c, l
	ld a, (_RAM_C30D_)
	ld b, a
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_EF5C_
	ld de, $0006
-:
	ld a, (hl)
	cp $FF
	jr z, _LABEL_661C_
	inc hl
	cp b
	jr nz, +
	ld a, (hl)
	cp c
	jp z, _LABEL_66E1_
+:
	add hl, de
	jp -

_LABEL_661C_:
	ld de, $7E00
	ld hl, $00C0
	ld bc, $0080
	di
	call _LABEL_363_
	ei
	ld a, $C0
	ld (_RAM_C004_), a
	xor a
	ld (_RAM_C304_), a
	ld b, $0C
-:
	push bc
	ld a, (_RAM_C304_)
	add a, $10
	ld (_RAM_C304_), a
	ld a, $08
	call _LABEL_52_
	ld a, b
	sub $0C
	neg
	ld c, $00
	ld b, a
	srl b
	rr c
	ld hl, $7800
	add hl, bc
	ex de, hl
	ld hl, $00C0
	ld bc, $0040
	di
	call _LABEL_363_
	ei
	pop bc
	djnz -
	ld a, (_RAM_C30D_)
	sub $01
	jr nc, +
	xor a
+:
	ld (_RAM_C30D_), a
	call _LABEL_6D56_
	xor a
	call _LABEL_6AED_
	ld hl, _RAM_C240_
	ld de, _RAM_C220_
	ld bc, $0020
	ldir
	ld a, $16
	call _LABEL_52_
	ld a, $10
	ld (_RAM_C304_), a
	ld b, $0C
-:
	push bc
	ld a, (_RAM_C304_)
	add a, $10
	ld (_RAM_C304_), a
	ld a, $08
	call _LABEL_52_
	ld a, b
	sub $0C
	neg
	ld c, $00
	ld b, a
	srl b
	rr c
	ld hl, $7800
	add hl, bc
	ex de, hl
	ld hl, _RAM_D000_
	add hl, bc
	ld bc, $0080
	di
	call _LABEL_346_
	ei
	pop bc
	djnz -
	ld b, $05
-:
	ld a, (_RAM_C304_)
	or a
	ld a, $D8
	jr z, +
	xor a
+:
	ld (_RAM_C304_), a
	ld a, $08
	call _LABEL_52_
	djnz -
	ld hl, _RAM_FFFF_
	ld (hl), $10
	ld hl, _DATA_43D58_
	ld de, $7E00
	call _LABEL_3FA_
	ld b, $01
	jp _LABEL_6963_

_LABEL_66E1_:
	ld a, (_RAM_C204_)
	and $0F
	jp z, _LABEL_6802_
	ld c, a
	bit 0, c
	jp z, _LABEL_677A_
	ld b, $01
	call _LABEL_6BE9_
	ld b, a
	and $07
	jp z, _LABEL_6758_
	sub $02
	jp c, _LABEL_677A_
	cp $05
	jp z, _LABEL_6755_
	cp $02
	jp nc, ++
	ld c, a
	ld a, $C3
	ld (_RAM_C004_), a
	ld a, c
	bit 3, b
	jp nz, _LABEL_68BC_
	or a
	ld b, $01
	jr z, +
	ld b, $FF
+:
	ld a, (_RAM_C30D_)
	add a, b
	ld (_RAM_C30D_), a
	call _LABEL_6D56_
	jp +++

++:
	bit 7, (hl)
	ret z
	bit 3, b
	jp nz, _LABEL_68BC_
+++:
	call _LABEL_7B05_
	ld a, (_RAM_C30A_)
	and $03
	ld hl, _DATA_6AE1_ - 2
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (_RAM_C30C_)
	add a, (hl)
	add a, (hl)
	ld (_RAM_C30C_), a
	xor a
	call _LABEL_6AE5_
	call _LABEL_7B20_
	ld b, $01
	jp _LABEL_6963_

_LABEL_6755_:
	call _LABEL_6758_
_LABEL_6758_:
	ld a, $00
	call _LABEL_6A58_
	ld a, (_RAM_C30A_)
	and $03
	ld hl, _DATA_6AE1_ - 2
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (_RAM_C30C_)
	add a, (hl)
	ld (_RAM_C30C_), a
	xor a
	call _LABEL_6AE5_
	ld b, $01
	jp _LABEL_6963_

_LABEL_677A_:
	bit 1, c
	jr z, +
	ld b, $0B
	call _LABEL_6BCA_
	jr nz, +
	call _LABEL_6792_
	ld b, $01
	call _LABEL_6963_
	ld b, $0B
	jp _LABEL_6963_

_LABEL_6792_:
	ld a, (_RAM_C30A_)
	and $03
	ld hl, _DATA_6AE1_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (_RAM_C30C_)
	add a, (hl)
	ld (_RAM_C30C_), a
	ld a, $01
	jp _LABEL_6A58_

+:
	bit 2, c
	jr z, ++
	call _LABEL_67B7_
	ld b, $01
	jp _LABEL_6963_

_LABEL_67B7_:
	ld a, (_RAM_C30A_)
	dec a
	and $03
	ld (_RAM_C30A_), a
	ld h, $02
	ld b, $0D
	call _LABEL_6BCA_
	jr z, +
	inc h
	inc h
+:
	ld b, $01
	call _LABEL_6BCA_
	jr z, +
	inc h
+:
	ld a, h
	jp _LABEL_6A58_

++:
	bit 3, c
	ret z
	call _LABEL_67E2_
	ld b, $01
	jp _LABEL_6963_

_LABEL_67E2_:
	ld a, (_RAM_C30A_)
	inc a
	and $03
	ld (_RAM_C30A_), a
	ld h, $06
	ld b, $0C
	call _LABEL_6BCA_
	jr z, +
	inc h
	inc h
+:
	ld b, $01
	call _LABEL_6BCA_
	jr z, +
	inc h
+:
	ld a, h
	jp _LABEL_6A58_

_LABEL_6802_:
	ld a, (_RAM_C205_)
	and $30
	ret z
	ld b, $01
	call _LABEL_6BCA_
	cp $04
	jr nz, +
	ld c, $02
	call _LABEL_681B_
	ret z
+:
	call _LABEL_1BE1_
	ret

_LABEL_681B_:
	ld b, $01
	call _LABEL_6BE9_
	bit 7, (hl)
	ret nz
	set 7, (hl)
	ld a, $BD
	ld (_RAM_C004_), a
	ld h, c
	ld l, $00
	ld b, $03
--:
	push bc
-:
	push hl
	ld a, h
	call _LABEL_6E4C_
	ld a, $0C
	call _LABEL_52_
	pop hl
	ld a, h
	ld bc, $0040
	add hl, bc
	cp h
	jr z, -
	inc h
	inc h
	pop bc
	djnz --
	xor a
	ret

_LABEL_684A_:
	ld b, $01
	call _LABEL_6BE9_
	cp $08
	jr nz, ++
	ld c, l
	ld a, (_RAM_C30D_)
	ld b, a
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_EF5C_
	ld de, $0006
-:
	ld a, (hl)
	cp $FF
	jr z, +++
	inc hl
	cp b
	jr nz, +
	ld a, (hl)
	cp c
	jr z, ++
+:
	add hl, de
	jp -

++:
	xor a
	ret

+++:
	ld a, $FF
	or a
	ret

_LABEL_687A_:
	ld b, $0B
	call _LABEL_6BCA_
	ret z
	ld b, $0C
	call _LABEL_6BCA_
	ret z
	ld b, $0D
	call _LABEL_6BCA_
	ret

_LABEL_688C_:
	ld b, $0B
	call _LABEL_6BCA_
	jr z, +++
	ld b, $0C
	call _LABEL_6BCA_
	jr nz, ++
	ld b, $0D
	call _LABEL_6BCA_
	jr nz, +
	call _LABEL_5B1_
	rrca
	jr nc, ++
+:
	call _LABEL_67E2_
	jr +++

++:
	call _LABEL_67B7_
+++:
	call _LABEL_6792_
	ld b, $01
	call _LABEL_6963_
	ld b, $0B
	jp _LABEL_6963_

_LABEL_68BC_:
	ld b, $01
	call _LABEL_6BE9_
	and $08
	ret z
	ld c, l
	ld a, (_RAM_C30D_)
	ld b, a
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_F473_
	ld de, $0004
-:
	ld a, (hl)
	cp $FF
	jr z, ++
	inc hl
	cp b
	jr nz, +
	ld a, (hl)
	cp c
	jr z, +++
+:
	add hl, de
	jp -

; Data from 68E5 to 68E5 (1 bytes)
.db $C9

++:
	ld hl, _RAM_C202_
	ld (hl), $08
	ret

+++:
	inc hl
	ld a, (hl)
	ld d, a
	dec hl
	cp $80
	ld a, $08
	jp c, _LABEL_7877_
	ld a, d
	cp $FF
	jr nz, _LABEL_6947_
	push hl
	call _LABEL_7B05_
	ld hl, _RAM_FFFF_
	ld (hl), $09
	ld hl, _DATA_27471_
	ld de, $4000
	call _LABEL_3FA_
	ld hl, _DATA_27130_
	call _LABEL_6B62_
	ld a, $0F
	ld (_RAM_C29E_), a
	xor a
	ld (_RAM_C250_), a
_LABEL_691D_:
	ld a, $0C
	call _LABEL_52_
	call _LABEL_7B20_
-:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	pop hl
	inc hl
	inc hl
	call _LABEL_6A2F_
	ld a, (_RAM_C202_)
	cp $0B
	ret nz
	call _LABEL_7B05_
	xor a
	call _LABEL_6AE5_
	call _LABEL_6D7F_
	call _LABEL_6DE2_
	call _LABEL_7B20_
	ret

_LABEL_6947_:
	push hl
	push af
	call _LABEL_7B05_
	pop af
	ld c, $0D
	cp $FE
	jr z, +
	ld c, $1E
	cp $FD
	jr nz, -
+:
	ld a, c
	ld (_RAM_C29E_), a
	call _LABEL_3D47_
	jp _LABEL_691D_

_LABEL_6963_:
	call _LABEL_6BE9_
	cp $08
	ret nz
	ld c, l
	push bc
	ld a, (_RAM_C30D_)
	ld b, a
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_EF5C_
	ld de, $0006
-:
	ld a, (hl)
	cp $FF
	jp z, ++
	inc hl
	cp b
	jr nz, +
	ld a, (hl)
	cp c
	jr z, +++
+:
	add hl, de
	jp -

++:
	pop bc
	ret

+++:
	pop bc
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld a, (de)
	cp $FF
	ret z
	ld (_RAM_C2E1_), de
	ld a, $FF
	ld (_RAM_C2D2_), a
	inc hl
	ld a, (hl)
	inc hl
	or a
	jr nz, +
	ld a, (hl)
	ld (_RAM_C2DF_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C2E0_), a
	ld hl, $0000
	ld (_RAM_C2DD_), hl
	jp ++

+:
	cp $01
	jr nz, +++
	xor a
	ld (_RAM_C2DF_), a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C2DD_), hl
++:
	ld a, b
	cp $01
	ret nz
	ld hl, _DATA_33D97_
	call _LABEL_31CF_
	push bc
	call _LABEL_16B2_
	pop bc
	call _LABEL_28DB_
	ld a, (_RAM_C800_)
	or a
	ret z
	jp _LABEL_1BE1_

+++:
	cp $02
	jr nz, ++
	ld a, b
	cp $01
	jr z, +
	push hl
	call _LABEL_67B7_
	call _LABEL_67B7_
	ld hl, _RAM_FFFF_
	ld (hl), $03
	pop hl
+:
	ld a, (hl)
	ld (_RAM_C2E6_), a
	or a
	ret z
	inc hl
	ld a, (hl)
	push af
	ld hl, (_RAM_C2E1_)
	push hl
	call _LABEL_5FFE_
	pop hl
	ld (_RAM_C2E1_), hl
	pop af
	ld (_RAM_C2DF_), a
	call _LABEL_100F_
	ld a, (_RAM_C800_)
	or a
	ret z
	jp _LABEL_1BE1_

++:
	cp $03
	ret nz
	ld a, b
	cp $01
	jr z, _LABEL_6A2F_
	push hl
	call _LABEL_67E2_
	call _LABEL_67E2_
	ld hl, _RAM_FFFF_
	ld (hl), $03
	pop hl
_LABEL_6A2F_:
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C2DB_), hl
	ld a, (_RAM_C2DC_)
	call _LABEL_617D_
	call _LABEL_474B_
	ld a, $D0
	ld (_RAM_C900_), a
	xor a
	ld (_RAM_C800_), a
	ld (_RAM_C29D_), a
	ld (_RAM_C29E_), a
	ld (_RAM_C2D5_), a
	ld hl, $0000
	ld (_RAM_C2DB_), hl
	ret

_LABEL_6A58_:
	ld l, a
	ld h, $00
	add hl, hl
	ld de, _DATA_6A76_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, $FF
	ld (_RAM_C2D2_), a
-:
	ld a, (hl)
	cp $FF
	ret z
	push hl
	call _LABEL_6AE5_
	pop hl
	inc hl
	jp -

; Data from 6A76 to 6AE0 (107 bytes)
_DATA_6A76_:
.db $8A $6A $90 $6A $97 $6A $A0 $6A $A9 $6A $B2 $6A $BB $6A $C4 $6A
.db $CD $6A $D6 $6A $01 $02 $03 $04 $05 $FF $05 $04 $03 $02 $01 $00
.db $FF $07 $08 $09 $0A $0B $0C $0D $00 $FF $17 $18 $19 $1A $1B $1C
.db $1D $00 $FF $1F $20 $21 $22 $23 $24 $25 $00 $FF $0F $10 $11 $12
.db $13 $14 $15 $00 $FF $0D $0C $0B $0A $09 $08 $07 $00 $FF $25 $24
.db $23 $22 $21 $20 $1F $00 $FF $1D $1C $1B $1A $19 $18 $17 $00 $FF
.db $15 $14 $13 $12 $11 $10 $0F $00 $FF $F0 $01

; Data from 6AE1 to 6AE4 (4 bytes)
_DATA_6AE1_:
.db $10 $FF $F0 $01

_LABEL_6AE5_:
	call _LABEL_6AED_
	ld a, $0C
	jp _LABEL_52_

_LABEL_6AED_:
	and $3F
	jr nz, +
	ld b, $01
	call _LABEL_6BCA_
	ld a, $00
	jr z, +
	ld a, $06
+:
	ld c, a
	add a, a
	ld b, a
	add a, a
	add a, b
	ld hl, _DATA_7060_ - 1
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	push bc
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	rr c
	ld d, $40
	jr nc, +
	ld d, $60
+:
	di
	xor a
	out (Port_VDPAddress), a
	ld a, d
	out (Port_VDPAddress), a
	ei
	call _LABEL_6B8E_
	pop hl
	inc hl
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	call _LABEL_6B62_
	pop bc
	call _LABEL_6C46_
	ret

_LABEL_6B3A_:
	ld b, $01
	call _LABEL_6BCA_
	ld a, $00
	jr z, +
	ld a, $06
+:
	ld c, a
	add a, a
	ld e, a
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld hl, _DATA_7062_
	add hl, de
	push bc
	ld a, (hl)
	ld (_RAM_FFFF_), a
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	call _LABEL_6B62_
	pop bc
	jp _LABEL_6C46_

_LABEL_6B62_:
	ld b, $00
	ld de, _RAM_D000_
	call _LABEL_6B6E_
	inc hl
	ld de, _RAM_D001_
_LABEL_6B6E_:
	ld a, (hl)
	or a
	ret z
	jp m, +
	ld c, a
	inc hl
-:
	ldi
	dec hl
	inc de
	jp pe, -
	inc hl
	jp _LABEL_6B6E_

+:
	and $7F
	ld c, a
	inc hl
-:
	ldi
	inc de
	jp pe, -
	jp _LABEL_6B6E_

_LABEL_6B8E_:
	ld c, Port_VDPData
--:
	ld a, (hl)
	or a
	ret z
	jp m, +
	ld b, a
	inc hl
-:
	ld a, (hl)
	outi
	inc b
	or (hl)
	outi
	inc b
	or (hl)
	outi
	dec hl
	dec hl
	dec hl
	out (Port_VDPData), a
	jp nz, -
	inc hl
	inc hl
	inc hl
	jp --

+:
	and $7F
	ld b, a
	inc hl
-:
	ld a, (hl)
	outi
	inc b
	or (hl)
	outi
	inc b
	or (hl)
	outi
	push af
	pop af
	out (Port_VDPData), a
	jp nz, -
	jp --

_LABEL_6BCA_:
	push hl
	ld a, (_RAM_C30A_)
	and $03
	add a, a
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, $6C06
	add hl, de
	ld e, b
	add hl, de
	ld a, (_RAM_C30C_)
	add a, (hl)
	ld h, $CB
	ld l, a
	ld a, (hl)
	and $07
	pop hl
	ret

_LABEL_6BE9_:
	ld a, (_RAM_C30A_)
	and $03
	add a, a
	add a, a
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, $6C06
	add hl, de
	ld e, b
	add hl, de
	ld a, (_RAM_C30C_)
	add a, (hl)
	ld h, $CB
	ld l, a
	ld a, (hl)
	and $7F
	ret

; Data from 6C06 to 6C45 (64 bytes)
.db $00 $F0 $EF $F1 $E0 $DF $E1 $D0 $CF $D1 $C0 $10 $FF $01 $00 $00
.db $00 $01 $F1 $11 $02 $F2 $12 $03 $F3 $13 $04 $FF $F0 $10 $00 $00
.db $00 $10 $11 $0F $20 $21 $1F $30 $31 $2F $40 $F0 $01 $FF $00 $00
.db $00 $FF $0F $EF $FE $0E $EE $FD $0D $ED $FC $01 $10 $F0 $00 $00

_LABEL_6C46_:
	ld a, c
	cp $06
	jp z, _LABEL_6E38_
	ret nc
	ld hl, _RAM_FFFF_
	ld (hl), $06
	add a, a
	ld l, a
	add a, a
	add a, a
	ld h, a
	add a, a
	add a, h
	add a, l
	ld l, a
	ld h, $00
	ld e, l
	ld d, h
	add hl, hl
	add hl, de
	ld de, _DATA_6E8B_
	add hl, de
	ld b, $04
	call _LABEL_6BCA_
	jr z, +
	call _LABEL_6D13_
	ld b, $02
	call _LABEL_6BCA_
	ld b, (hl)
	inc hl
	ld c, (hl)
	inc hl
	push bc
	call _LABEL_6D34_
	ld b, $03
	call _LABEL_6BCA_
	pop bc
	jp _LABEL_6D34_

+:
	ld de, $000C
	add hl, de
	ld b, $02
	call _LABEL_6BCA_
	ld b, (hl)
	inc hl
	ld c, (hl)
	inc hl
	push bc
	call _LABEL_6D45_
	ld b, $03
	call _LABEL_6BCA_
	pop bc
	call _LABEL_6D45_
	ld b, $07
	call _LABEL_6BCA_
	jr z, +
	call _LABEL_6D13_
	ld b, $05
	call _LABEL_6BCA_
	ld b, (hl)
	inc hl
	ld c, (hl)
	inc hl
	push bc
	call _LABEL_6D34_
	ld b, $06
	call _LABEL_6BCA_
	pop bc
	jp _LABEL_6D34_

+:
	ld de, $000C
	add hl, de
	ld b, $05
	call _LABEL_6BCA_
	ld b, (hl)
	inc hl
	ld c, (hl)
	inc hl
	push bc
	call _LABEL_6D45_
	ld b, $06
	call _LABEL_6BCA_
	pop bc
	call _LABEL_6D45_
	ld b, $0A
	call _LABEL_6BCA_
	jr z, +
	call _LABEL_6D13_
	ld b, $08
	call _LABEL_6BCA_
	ld b, (hl)
	inc hl
	ld c, (hl)
	inc hl
	push bc
	call _LABEL_6D34_
	ld b, $09
	call _LABEL_6BCA_
	pop bc
	jp _LABEL_6D34_

+:
	ld de, $000C
	add hl, de
	ld b, $08
	call _LABEL_6BCA_
	ld b, (hl)
	inc hl
	ld c, (hl)
	inc hl
	push bc
	call _LABEL_6D45_
	ld b, $09
	call _LABEL_6BCA_
	pop bc
	jp _LABEL_6D45_

_LABEL_6D13_:
	push af
	call +
	pop af
	cp $07
	jr z, +
	cp $01
	jr nc, +
	xor a
+:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld c, (hl)
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	call nz, _LABEL_6E64_
	pop hl
	inc hl
	ret

_LABEL_6D34_:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	inc hl
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	call z, _LABEL_6E64_
	pop hl
	inc hl
	ret

_LABEL_6D45_:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	call z, _LABEL_6E64_
	pop hl
	inc hl
	inc hl
	inc hl
	ret

_LABEL_6D56_:
	ld hl, _RAM_FFFF_
	ld (hl), $0F
	ld a, (_RAM_C30D_)
	ld h, a
	ld l, $00
	srl h
	rr l
	ld de, _DATA_3DF6E_
	add hl, de
	ld de, _RAM_CB00_
	ld b, $80
-:
	ld a, (hl)
	rrca
	rrca
	rrca
	rrca
	and $0F
	ld (de), a
	inc de
	ld a, (hl)
	and $0F
	ld (de), a
	inc de
	inc hl
	djnz -
_LABEL_6D7F_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_6DF7_
	ld de, _RAM_C251_
	ld bc, $0007
	ldir
	ld a, (_RAM_C30D_)
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld de, _DATA_F619_
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_C2E3_), de
	inc hl
	ld a, (_RAM_C315_)
	or a
	ld a, (hl)
	jr nz, +
	ld e, a
	ld a, (_RAM_C30D_)
	ld hl, $6DFE
	ld bc, $0006
	cpir
	ld a, e
	jr z, +
	ld a, $FF
+:
	inc a
	ld (_RAM_C315_), a
	add a, a
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld de, _DATA_F5B9_
	add hl, de
	ld a, (hl)
	ld (_RAM_C240_), a
	ld de, _RAM_C248_
	ld bc, $0008
	ldir
	ld a, (_RAM_C249_)
	ld (_RAM_C248_), a
	ld a, (_RAM_C24D_)
	ld (_RAM_C250_), a
	ret

_LABEL_6DE2_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld a, (_RAM_C30D_)
	add a, a
	add a, a
	ld l, a
	ld h, $00
	ld de, _DATA_F61C_
	add hl, de
	ld a, (hl)
	jp _LABEL_C97_

; Data from 6DF7 to 6E03 (13 bytes)
_DATA_6DF7_:
.db $00 $3F $30 $38 $03 $0B $0F $01 $02 $14 $15 $16 $21

---:
	ld a, (_RAM_C2F5_)
	or a
	ret z
	inc a
	ld (_RAM_C2F5_), a
	ld hl, _RAM_FFFF_
	ld (hl), $14
	ld h, $00
	ld l, a
	add hl, hl
	ld de, _DATA_53DB8_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld b, (hl)
	inc hl
--:
	push bc
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld b, (hl)
	inc hl
-:
	ld a, (hl)
	add a, $80
	cp $C0
	jr c, +
	ld (de), a
+:
	inc de
	inc de
	inc hl
	djnz -
	pop bc
	djnz --
	ret

_LABEL_6E38_:
	ld b, $01
	call _LABEL_6BE9_
	and $07
	cp $07
	jr z, ---
	sub $02
	ret c
	bit 7, (hl)
	jr z, _LABEL_6E4C_
	add a, $06
_LABEL_6E4C_:
	ld hl, _RAM_FFFF_
	ld (hl), $06
	add a, a
	ld hl, _DATA_6E75_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_D114_
	ld bc, $1218
_LABEL_6E64_:
	push bc
	push de
	ld b, $00
	ldir
	ex de, hl
	pop hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop bc
	djnz _LABEL_6E64_
	ret

; Pointer Table from 6E75 to 6E8A (11 entries, indexed by unknown)
_DATA_6E75_:
.dw _DATA_1AC50_ _DATA_1AE00_ _DATA_1AFB0_ _DATA_1B160_ _DATA_1B670_ _DATA_1B310_ _DATA_1B310_ _DATA_1B820_
.dw _DATA_1B4C0_ _DATA_1B4C0_ _DATA_1B9D0_

; Data from 6E8B to 704E (452 bytes)
_DATA_6E8B_:
.db $D4 $D1 $08 $18 $90 $80 $1C $D2 $07 $08 $F4 $82 $0C $06 $50 $D1
.db $A0 $81 $30 $82 $6A $D1 $E8 $81 $78 $82 $18 $D2 $06 $10 $30 $80
.db $5C $D2 $05 $08 $CC $82 $06 $02 $18 $D2 $70 $81 $88 $81 $26 $D2
.db $7C $81 $94 $81 $5A $D2 $04 $0C $00 $80 $9E $D2 $03 $04 $C0 $82
.db $04 $02 $5A $D2 $50 $81 $60 $81 $64 $D2 $58 $81 $68 $81 $94 $D1
.db $0A $18 $BC $83 $1A $D2 $08 $0C $B0 $87 $0E $0A $0C $D1 $4C $85
.db $64 $86 $2A $D1 $D8 $85 $F0 $86 $18 $D2 $06 $10 $5C $83 $5C $D2
.db $05 $08 $88 $87 $08 $04 $D6 $D1 $CC $84 $0C $85 $E6 $D1 $EC $84
.db $2C $85 $5A $D2 $04 $0C $2C $83 $9E $D2 $03 $04 $7C $87 $04 $02
.db $5A $D2 $AC $84 $BC $84 $64 $D2 $B4 $84 $C4 $84 $92 $D1 $0A $1C
.db $A0 $88 $1A $D2 $08 $0C $EC $8D $12 $0C $88 $D0 $58 $8A $08 $8C
.db $AC $D0 $30 $8B $E0 $8C $18 $D2 $06 $10 $40 $88 $5C $D2 $05 $08
.db $C4 $8D $08 $04 $D6 $D1 $D8 $89 $18 $8A $E6 $D1 $F8 $89 $38 $8A
.db $5A $D2 $04 $0C $10 $88 $9E $D2 $03 $04 $B8 $8D $04 $02 $5A $D2
.db $B8 $89 $C8 $89 $64 $D2 $C0 $89 $D0 $89 $50 $D1 $0C $20 $DC $8E
.db $DA $D1 $0A $0C $E0 $97 $16 $12 $00 $D0 $7C $91 $20 $96 $2E $D0
.db $08 $93 $94 $94 $18 $D2 $06 $10 $7C $8E $5C $D2 $05 $08 $B8 $97
.db $08 $06 $D4 $D1 $BC $90 $1C $91 $E6 $D1 $EC $90 $4C $91 $5A $D2
.db $04 $0C $4C $8E $9E $D2 $03 $04 $AC $97 $06 $04 $18 $D2 $5C $90
.db $8C $90 $24 $D2 $74 $90 $A4 $90 $0C $D1 $0E $28 $00 $99 $D8 $D1
.db $0B $10 $28 $A1 $16 $0E $00 $D0 $10 $9C $78 $9E $32 $D0 $44 $9D
.db $AC $9F $16 $D2 $06 $14 $88 $98 $5C $D2 $05 $08 $00 $A1 $08 $04
.db $D4 $D1 $90 $9B $D0 $9B $E8 $D1 $B0 $9B $F0 $9B $5A $D2 $04 $0C
.db $58 $98 $5C $D2 $04 $08 $E0 $A0 $06 $04 $18 $D2 $30 $9B $60 $9B
.db $24 $D2 $48 $9B $78 $9B $88 $D0 $12 $30 $C0 $A2 $96 $D1 $0E $14
.db $38 $AB $16 $0A $00 $D0 $70 $A7 $28 $A9 $36 $D0 $4C $A8 $04 $AA
.db $D6 $D1 $08 $14 $20 $A2 $5C $D2 $06 $08 $08 $AB $0A $06 $92 $D1
.db $80 $A6 $F8 $A6 $A8 $D1 $BC $A6 $34 $A7 $1A $D2 $06 $0C $D8 $A1
.db $5C $D2 $05 $08

; 1st entry of Pointer Table from D66E (indexed by unknown)
; Data from 704F to 705E (16 bytes)
_DATA_704F_:
.db $E0 $AA $06 $04 $18 $D2 $20 $A6 $50 $A6 $24 $D2 $38 $A6 $68 $A6

; Data from 705F to 705F (1 bytes)
_DATA_705F_:
.db $07

; Data from 7060 to 7061 (2 bytes)
_DATA_7060_:
.db $00 $80

; Data from 7062 to 7142 (225 bytes)
_DATA_7062_:
.db $04 $0F $8B $07 $4B $8A $04 $D4 $8E $07 $1E $95 $04 $A4 $92 $07
.db $6B $9F $04 $73 $96 $07 $13 $AA $04 $34 $9A $08 $00 $80 $04 $02
.db $9E $08 $ED $89 $04 $06 $89 $08 $23 $A4 $04 $D3 $A1 $09 $D1 $83
.db $04 $35 $A5 $07 $22 $B4 $04 $80 $A8 $05 $AF $B1 $04 $A6 $AB $07
.db $22 $B4 $04 $5B $AF $09 $D1 $83 $04 $3D $B3 $08 $23 $A4 $04 $6C
.db $B7 $08 $ED $89 $04 $06 $89 $08 $3F $96 $1C $C0 $A6 $08 $06 $9D
.db $1C $35 $A9 $05 $27 $AA $1C $D0 $AB $09 $00 $80 $1C $C9 $AE $05
.db $27 $AA $1C $0C $B2 $08 $06 $9D $1C $C2 $B5 $08 $3F $96 $1C $5A
.db $B9 $08 $ED $89 $04 $06 $89 $09 $4A $8F $05 $00 $80 $09 $BD $9A
.db $05 $67 $83 $09 $0D $A6 $05 $95 $86 $08 $75 $AF $05 $7A $89 $04
.db $00 $80 $05 $62 $8C $05 $30 $B8 $05 $18 $8F $08 $26 $B9 $05 $8F
.db $91 $08 $ED $89 $04 $06 $89 $08 $26 $B9 $05 $C6 $93 $05 $30 $B8
.db $05 $2E $97 $04 $00 $80 $05 $AD $9A $08 $75 $AF $05 $7E $9E $09
.db $0D $A6 $05 $48 $A2 $09 $BD $9A $05 $12 $A6 $09 $4A $8F $04 $BE
.db $BB

_LABEL_7143_:
	push bc
	push de
	push hl
	call +
	pop hl
	pop de
	pop bc
	ret

+:
	ld hl, _RAM_C265_
	ld a, (hl)
	dec (hl)
	jp m, +
	ld a, (_RAM_C264_)
	ld c, a
	jp ++

+:
	ld (hl), $00
	ld a, (_RAM_C204_)
	and $0F
	or $80
	ld c, a
	ld a, (_RAM_C30E_)
	or a
	ld a, $0F
	jr z, +
	ld a, $07
+:
	ld (_RAM_C265_), a
++:
	ld de, $0001
	ld a, (_RAM_C30E_)
	or a
	jr z, +
	inc e
+:
	ld a, (_RAM_C304_)
	ld d, a
	ld hl, (_RAM_C305_)
	ld b, h
	bit 0, c
	jr z, ++
	ld a, $02
	bit 7, c
	call nz, _LABEL_74E4_
	jr nz, ++
	ld a, d
	sub e
	cp $E0
	jr c, +
	sub $20
+:
	ld d, a
	ld a, l
	sub e
	cp $C0
	jr c, +
	sub $40
	dec h
+:
	ld l, a
	ld a, $01
	jp +++

++:
	bit 1, c
	jr z, ++++
	ld a, $04
	bit 7, c
	call nz, _LABEL_74E4_
	jr nz, ++++
	ld a, d
	add a, e
	cp $E0
	jr c, +
	add a, $20
+:
	ld d, a
	ld a, l
	add a, e
	cp $C0
	jr c, +
	add a, $40
	inc h
+:
	ld l, a
	ld a, $02
+++:
	ld (_RAM_C264_), a
	ld a, $FF
	ld (_RAM_C2D2_), a
	ld a, d
	ld (_RAM_C304_), a
	ld a, h
	and $07
	ld h, a
	ld (_RAM_C305_), hl
	cp b
	call nz, _LABEL_723D_
	jp _LABEL_733A_

++++:
	ld d, $00
	ld hl, (_RAM_C301_)
	ld b, h
	bit 2, c
	jr z, +
	ld a, $06
	bit 7, c
	call nz, _LABEL_74E4_
	jr nz, +
	or a
	sbc hl, de
	ld a, $04
	jp ++

+:
	bit 3, c
	jr z, +++
	ld a, $08
	bit 7, c
	call nz, _LABEL_74E4_
	jr nz, +++
	add hl, de
	ld a, $08
++:
	ld (_RAM_C264_), a
	ld a, $FF
	ld (_RAM_C2D2_), a
	ld a, l
	neg
	ld (_RAM_C300_), a
	ld a, h
	and $07
	ld h, a
	ld (_RAM_C301_), hl
	cp b
	jp nz, _LABEL_723D_
	jp _LABEL_72A6_

+++:
	ld a, $D6
	ld (_RAM_C004_), a
	xor a
	ld (_RAM_C2D2_), a
	ld (_RAM_C264_), a
	ld (_RAM_C265_), a
	ret

_LABEL_723D_:
	ld a, (_RAM_C262_)
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C306_)
	add a, a
	ld e, a
	add a, a
	add a, a
	add a, a
	add a, e
	ld e, a
	ld a, (_RAM_C302_)
	add a, a
	add a, e
	ld e, a
	ld d, $00
	ld hl, (_RAM_C260_)
	add hl, de
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_CC00_
	call +
	pop hl
	push hl
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_CD00_
	call +
	pop hl
	ld de, _DATA_13_ - 2
	add hl, de
	ld a, (hl)
	inc hl
	push hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_CE00_
	call +
	pop hl
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_CF00_
+:
	ld b, $00
--:
	ld a, (hl)
	or a
	ret z
	jp m, +
	ld b, a
	inc hl
	ld a, (hl)
-:
	ld (de), a
	inc de
	djnz -
	inc hl
	jp --

+:
	and $7F
	ld c, a
	inc hl
	ldir
	jp --

_LABEL_72A6_:
	ld a, (_RAM_C264_)
	and $0C
	ret z
	ld b, a
	ld a, (_RAM_C263_)
	ld (_RAM_FFFF_), a
	ld c, $00
	ld a, (_RAM_C301_)
	and $07
	jr z, +
	ld a, b
	and $08
	jr nz, +
	ld c, $08
+:
	ld a, (_RAM_C304_)
	and $F0
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, (_RAM_C301_)
	add a, c
	rrca
	rrca
	and $3C
	add a, l
	ld e, a
	ld a, h
	add a, $D0
	ld d, a
	ld h, $CC
	ld a, (_RAM_C305_)
	and $F0
	ld l, a
	ld a, (_RAM_C301_)
	add a, c
	jr nc, +
	inc h
+:
	rrca
	rrca
	rrca
	rrca
	and $0F
	add a, l
	ld l, a
	ld a, b
	and $08
	jr z, +
	inc h
+:
	ld b, $0E
-:
	push bc
	push hl
	ld l, (hl)
	ld h, $10
	add hl, hl
	add hl, hl
	add hl, hl
	ldi
	ldi
	ldi
	ldi
	ld a, $3C
	add a, e
	ld e, a
	adc a, d
	sub e
	ld d, a
	ldi
	ldi
	ldi
	ldi
	pop hl
	ld a, $10
	add a, l
	cp $C0
	jr c, +
	sub $C0
	inc h
	inc h
+:
	ld l, a
	ld a, $3C
	add a, e
	ld e, a
	adc a, d
	sub e
	sub $D7
	jr nc, +
	add a, $07
+:
	add a, $D0
	ld d, a
	pop bc
	djnz -
	ret

_LABEL_733A_:
	ld a, (_RAM_C264_)
	and $03
	ret z
	ld b, a
	and $01
	ld a, (_RAM_C263_)
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C304_)
	ld b, $00
	jr nz, ++
	cp $20
	jr c, +
	add a, $20
+:
	ld b, $C0
	add a, b
++:
	and $F0
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, (_RAM_C301_)
	rrca
	rrca
	and $3C
	add a, l
	ld e, a
	ld a, h
	add a, $D0
	ld d, a
	ld a, (_RAM_C305_)
	and $F0
	add a, b
	ld l, a
	adc a, $00
	sub l
	ld h, a
	ld a, (_RAM_C301_)
	rrca
	rrca
	rrca
	rrca
	and $0F
	add a, l
	ld l, a
	ld bc, $00C0
	or a
	sbc hl, bc
	ld a, $CE
	jr nc, +
	add hl, bc
	ld a, $CC
+:
	ld h, a
	ld b, $10
-:
	push bc
	push hl
	ld l, (hl)
	ld h, $10
	add hl, hl
	add hl, hl
	add hl, hl
	ldi
	ldi
	ldi
	ldi
	push de
	ld a, $3C
	add a, e
	ld e, a
	adc a, d
	sub e
	ld d, a
	ldi
	ldi
	ldi
	ldi
	pop de
	ld a, e
	and $3F
	jr nz, +
	ld a, e
	sub $40
	ld e, a
+:
	pop hl
	ld a, l
	and $F0
	ld b, a
	inc l
	ld a, l
	and $F0
	cp b
	jr z, +
	inc h
	ld l, b
+:
	pop bc
	djnz -
	ret

_LABEL_73D0_:
	ld a, (_RAM_C264_)
	and $0F
	ret z
	ld b, a
	and $03
	ld a, (_RAM_C263_)
	ld (_RAM_FFFF_), a
	jp nz, ++
	ld c, $00
	ld a, (_RAM_C301_)
	and $07
	jr z, +
	ld a, b
	and $08
	jr nz, +
	ld c, $08
+:
	ld a, (_RAM_C301_)
	add a, c
	rrca
	rrca
	and $3E
	ld e, a
	ld l, a
	ld d, $78
	ld h, $D0
	ld bc,  $1C00 | Port_VDPData
-:
	push bc
	rst $08	; _LABEL_8_
	nop
	nop
	nop
	outi
	nop
	nop
	nop
	outi
	ld bc, $003E
	add hl, bc
	ex de, hl
	ld c, $40
	add hl, bc
	ex de, hl
	pop bc
	djnz -
	ret

++:
	ld a, b
	and $01
	ld a, (_RAM_C304_)
	ld b, $00
	jr nz, ++
	cp $20
	jr c, +
	add a, $20
+:
	ld b, $C0
	add a, b
++:
	and $F8
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, h
	add a, $78
	ld d, a
	ld e, l
	rst $08	; _LABEL_8_
	ld a, h
	add a, $D0
	ld h, a
	ld bc,  $4000 | Port_VDPData
-:
	outi
	nop
	jp nz, -
	ret

_LABEL_744B_:
	call _LABEL_7602_
	ld a, (_RAM_C263_)
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C304_)
	and $F0
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, (_RAM_C301_)
	rrca
	rrca
	and $3C
	add a, l
	ld e, a
	ld a, h
	add a, $D0
	ld d, a
	ld a, (_RAM_C305_)
	and $F0
	ld l, a
	ld a, (_RAM_C301_)
	rrca
	rrca
	rrca
	rrca
	and $0F
	add a, l
	ld l, a
	ld h, $CC
	ld b, $0C
_LABEL_7481_:
	push bc
	push hl
	ld b, $10
-:
	push bc
	push hl
	ld l, (hl)
	ld h, $10
	add hl, hl
	add hl, hl
	add hl, hl
	ldi
	ldi
	ldi
	ldi
	push de
	ld a, $3C
	add a, e
	ld e, a
	adc a, d
	sub e
	ld d, a
	ldi
	ldi
	ldi
	ldi
	pop de
	ld a, e
	and $3F
	jr nz, +
	ld a, e
	sub $40
	ld e, a
+:
	pop hl
	ld a, l
	and $F0
	ld b, a
	inc l
	ld a, l
	and $F0
	cp b
	jr z, +
	inc h
	ld l, b
+:
	pop bc
	djnz -
	ld a, $80
	add a, e
	ld e, a
	adc a, d
	sub e
	sub $D7
	jr nc, +
	add a, $07
+:
	add a, $D0
	ld d, a
	pop hl
	ld a, $10
	add a, l
	cp $C0
	jr c, +
	sub $C0
	inc h
	inc h
+:
	ld l, a
	pop bc
	djnz _LABEL_7481_
	ld a, $12
	jp _LABEL_52_

_LABEL_74E4_:
	push bc
	push hl
	ld c, a
	ld a, (_RAM_C2E9_)
	or a
	jr nz, +
	ld a, (_RAM_C30E_)
	or a
	jr nz, ++
	ld b, $00
	ld hl, $7A21
	add hl, bc
	ld a, (hl)
	call _LABEL_7764_
	and $01
	pop hl
	pop bc
	ret

+:
	xor a
	pop hl
	pop bc
	ret

++:
	cp $04
	jr nz, ++
	push de
	ld b, $00
	ld hl, $7A2B
	add hl, bc
	ex de, hl
	ld a, (de)
	call _LABEL_7764_
	and $01
	jr nz, +
	inc de
	ld a, (de)
	call _LABEL_7764_
	and $01
+:
	pop de
	pop hl
	pop bc
	ret

++:
	cp $08
	jr nz, ++
	push de
	ld b, $00
	ld hl, $7A2B
	add hl, bc
	ex de, hl
	ld a, (de)
	call _LABEL_7764_
	and $0A
	jr nz, +
	inc de
	ld a, (de)
	call _LABEL_7764_
	and $0A
+:
	pop de
	pop hl
	pop bc
	ret

++:
	push de
	ld b, $00
	ld hl, $7A2B
	add hl, bc
	ld e, b
	ld a, (hl)
	inc hl
	ld d, (hl)
	call ++
	and $01
	ld c, a
	ld a, d
	ld d, c
	call ++
	and $01
	or d
	push af
	ld a, e
	or a
	jr z, +
	ld a, $B7
	ld (_RAM_C004_), a
+:
	pop af
	pop de
	pop hl
	pop bc
	ret

++:
	ld hl, $7A8D
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld h, $CC
	ld a, (_RAM_C305_)
	add a, c
	jr c, +
	cp $C0
	jr c, ++
+:
	add a, $40
	inc h
	inc h
++:
	and $F0
	ld l, a
	ld a, (_RAM_C301_)
	add a, b
	jr nc, +
	inc h
+:
	rrca
	rrca
	rrca
	rrca
	and $0F
	add a, l
	ld l, a
	ld a, (hl)
	cp $D8
	jr c, _LABEL_75E8_
	cp $E0
	jr nc, _LABEL_75E8_
	ld (hl), $D7
	push de
	ld a, (_RAM_C304_)
	add a, c
	jr nc, +
	add a, $20
+:
	cp $E0
	jr c, +
	add a, $20
+:
	and $F0
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, (_RAM_C301_)
	add a, b
	rrca
	rrca
	and $3C
	add a, l
	ld e, a
	ld a, h
	add a, $78
	ld d, a
	ld hl, _DATA_7AB9_
	di
	ld bc,  $0200 | Port_VDPData
--:
	push bc
	rst $08	; _LABEL_8_
	ld b, $04
-:
	outi
	nop
	jp nz, -
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop bc
	djnz --
	ei
	pop de
	ld a, $D7
	ld e, a
_LABEL_75E8_:
	ld (_RAM_C2E5_), a
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_FC6F_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (_RAM_C308_)
	cp $04
	jr c, +
	inc h
+:
	ld a, (hl)
	ret

_LABEL_7602_:
	ld a, (_RAM_C308_)
	cp $02
	ret nz
	ld a, (_RAM_C30E_)
	cp $0C
	ret nz
	ld a, $0A
	call +
	ld a, $0C
	call +
	ld a, $12
	call +
	ld a, $14
+:
	ld hl, $7A8D
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld h, $CC
	ld a, (_RAM_C305_)
	add a, c
	jr c, +
	cp $C0
	jr c, ++
+:
	add a, $40
	inc h
	inc h
++:
	and $F0
	ld l, a
	ld a, (_RAM_C301_)
	add a, b
	jr nc, +
	inc h
+:
	rrca
	rrca
	rrca
	rrca
	and $0F
	add a, l
	ld l, a
	ld a, (hl)
	cp $D8
	ret c
	cp $E0
	ret nc
	ld (hl), $D7
	ret

_LABEL_7656_:
	ld bc, $0400
-:
	push bc
	ld b, $00
	ld hl, _DATA_7A35_
	add hl, bc
	ex de, hl
	ld a, (de)
	call _LABEL_7764_
	and $0D
	jr nz, +
	inc de
	ld a, (de)
	call _LABEL_7764_
	and $0D
	jr nz, +
	inc de
	ld a, (de)
	call _LABEL_7764_
	and $0D
	jr nz, +
	inc de
	ld a, (de)
	call _LABEL_7764_
	and $0D
	jr z, ++
+:
	pop bc
	ld a, c
	add a, $04
	ld c, a
	djnz -
	ld a, $FF
	or a
	ret

++:
	pop bc
	ld a, c
	or a
	ret z
	ld de, $0010
	cp $04
	jr z, ++
	cp $08
	jr nz, +
	ld de, $0000
+:
	ld hl, (_RAM_C305_)
	ld a, l
	add a, $10
	cp $C0
	jr c, +
	add a, $40
	inc h
+:
	ld l, a
	ld (_RAM_C305_), hl
	ld (_RAM_C311_), hl
++:
	ld hl, (_RAM_C301_)
	add hl, de
	ld (_RAM_C301_), hl
	ld (_RAM_C313_), hl
	xor a
	ret

_LABEL_76C1_:
	ld bc, $0800
-:
	push bc
	ld b, $00
	ld hl, _DATA_7A45_
	add hl, bc
	ex de, hl
	ld a, (de)
	call _LABEL_7764_
	and $0A
	jr nz, +
	inc de
	ld a, (de)
	call _LABEL_7764_
	and $0A
	jr nz, +
	inc de
	ld a, (de)
	call _LABEL_7764_
	and $0A
	jr nz, +
	inc de
	ld a, (de)
	call _LABEL_7764_
	and $0A
	jr z, ++
+:
	pop bc
	ld a, c
	add a, $06
	ld c, a
	djnz -
	ld a, $FF
	or a
	ret

++:
	ld hl, $7A49
_LABEL_76FD_:
	pop bc
	ld b, $00
	add hl, bc
	ld de, (_RAM_C305_)
	ld a, e
	add a, (hl)
	cp $C0
	jr c, ++
	bit 7, (hl)
	jr nz, +
	add a, $40
	inc d
	jr ++

+:
	sub $40
	dec d
++:
	ld e, a
	ld (_RAM_C305_), de
	ld (_RAM_C311_), de
	inc hl
	ld a, (hl)
	ld e, a
	rlca
	sbc a, a
	ld d, a
	ld hl, (_RAM_C301_)
	add hl, de
	ld (_RAM_C301_), hl
	ld (_RAM_C313_), hl
	xor a
	ret

_LABEL_7732_:
	ld a, (_RAM_C2D7_)
	and $03
	ld c, a
	add a, a
	add a, c
	add a, a
	ld c, a
	ld b, $08
-:
	push bc
	ld b, $00
	ld hl, _DATA_7A75_
	add hl, bc
	ld a, (hl)
	call _LABEL_7764_
	and $0D
	jr z, ++
	pop bc
	ld a, c
	add a, $03
	cp $18
	jr c, +
	sub $18
+:
	ld c, a
	djnz -
	ld a, $FF
	or a
	ret

++:
	ld hl, _DATA_7A76_
	jp _LABEL_76FD_

_LABEL_7764_:
	ld hl, _DATA_7A8D_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld h, $CC
	ld a, (_RAM_C305_)
	add a, c
	jr c, +
	cp $C0
	jr c, ++
+:
	add a, $40
	inc h
	inc h
++:
	and $F0
	ld l, a
	ld a, (_RAM_C301_)
	add a, b
	jr nc, +
	inc h
+:
	rrca
	rrca
	rrca
	rrca
	and $0F
	add a, l
	ld l, a
	ld a, (hl)
	ld (_RAM_C2E5_), a
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_FC6F_
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld a, (_RAM_C308_)
	cp $04
	jr c, +
	inc h
+:
	ld a, (hl)
	ret

_LABEL_77AC_:
	ld hl, _RAM_C2D5_
	ld a, (_RAM_C265_)
	or a
	jp z, +
	ld (hl), $00
	ret

+:
	ld a, (hl)
	or a
	ret nz
	ld (hl), $FF
	ld a, $14
	ld e, a
	call _LABEL_7764_
	ld b, a
	rrca
	rrca
	rrca
	rrca
	and $0F
	ld (_RAM_C29E_), a
	ld a, b
	and $08
	jr nz, ++
	ld a, b
	and $04
	jp nz, _LABEL_792A_
	ld a, (_RAM_C30E_)
	or a
	jr z, +
	ld a, $12
	ld e, a
	call _LABEL_7764_
	and $08
	jr nz, ++
	ld a, $0A
	ld e, a
	call _LABEL_7764_
	and $08
	jr nz, ++
	ld a, $0C
	ld e, a
	call _LABEL_7764_
	and $08
	jr nz, ++
	ld a, $14
	ld e, a
	call _LABEL_7764_
+:
	ld hl, (_RAM_C305_)
	ld (_RAM_C311_), hl
	ld hl, (_RAM_C301_)
	ld (_RAM_C313_), hl
	ret

++:
	ld a, e
	ld hl, $7A8D
	add a, l
	ld l, a
	adc a, h
	sub l
	ld h, a
	ld de, (_RAM_C305_)
	ld a, e
	add a, (hl)
	jr c, +
	cp $C0
	jr c, ++
+:
	add a, $40
	inc d
++:
	ld e, a
	ex de, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	inc hl
	ld c, (hl)
	ld b, $00
	ld hl, (_RAM_C301_)
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld e, h
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, (_RAM_C2D9_)
-:
	ld a, (hl)
	cp $FF
	ret z
	push hl
	ld a, (hl)
	cp d
	jr z, ++
	inc a
	ld b, a
	and $0F
	cp $0C
	ld a, b
	jr c, +
	add a, $10
	and $70
+:
	cp d
	jr nz, +++
++:
	inc hl
	ld a, (hl)
	cp e
	jr z, ++++
	inc a
	cp e
	jr z, ++++
+++:
	pop hl
	ld bc, $0006
	add hl, bc
	jp -

++++:
	pop hl
	inc hl
	inc hl
	ld a, (hl)
	cp $08
	jp nz, _LABEL_78BD_
_LABEL_7877_:
	ld (_RAM_C202_), a
	inc hl
_LABEL_787B_:
	ld a, (hl)
	ld (_RAM_C308_), a
	ld (_RAM_C309_), a
	inc hl
	ld e, (hl)
	ld d, $00
	ex de, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	sub $60
	jr c, +
	cp $C0
	jr c, ++
+:
	sub $40
	dec h
++:
	ld l, a
	ld a, h
	and $07
	ld h, a
	ld (_RAM_C305_), hl
	ld (_RAM_C311_), hl
	ex de, hl
	inc hl
	ld a, (hl)
	sub $08
	and $7F
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld (_RAM_C301_), hl
	ld (_RAM_C313_), hl
	xor a
	ld (_RAM_C30E_), a
	jp _LABEL_7908_

_LABEL_78BD_:
	cp $0A
	jp nz, +
	ld (_RAM_C202_), a
	inc hl
	ld d, (hl)
	inc hl
	ld e, (hl)
	ld (_RAM_C30C_), de
	inc hl
	ld a, (hl)
	ld (_RAM_C30A_), a
	ld hl, (_RAM_C311_)
	ld (_RAM_C305_), hl
	ld hl, (_RAM_C313_)
	ld (_RAM_C301_), hl
	xor a
	ld (_RAM_C30E_), a
	jp _LABEL_7908_

+:
	cp $0C
	ret nz
	ld (_RAM_C202_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C29E_), a
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C2DB_), hl
	xor a
	ld (_RAM_C29D_), a
	ld hl, (_RAM_C311_)
	ld (_RAM_C305_), hl
	ld hl, (_RAM_C313_)
	ld (_RAM_C301_), hl
_LABEL_7908_:
	ld a, (_RAM_C810_)
	ld (_RAM_C2D7_), a
	ld hl, _RAM_C26F_
	ld de, _RAM_C26F_ + 1
	ld bc, $0017
	ld (hl), $00
	ldir
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $00FF
	ld (hl), $00
	ldir
	pop hl
	ret

_LABEL_792A_:
	ld a, (_RAM_C2E5_)
	cp $4C
	jp nz, +
	ld a, (_RAM_C309_)
	cp $05
	ret nz
	ld a, (_RAM_C506_)
	or a
	ret z
	ld a, $0A
	ld (_RAM_C202_), a
	ld hl, $00DE
	ld (_RAM_C30C_), hl
	ld a, $00
	ld (_RAM_C30A_), a
	ld hl, (_RAM_C311_)
	ld (_RAM_C305_), hl
	ld hl, (_RAM_C313_)
	ld (_RAM_C301_), hl
	jp _LABEL_7908_

+:
	cp $5E
	jp nz, +
	ld a, (_RAM_C30E_)
	or a
	ret nz
	ld a, $35
	call _LABEL_282E_
	ret z
	ld hl, $00A0
	ld (_RAM_C2DB_), hl
_LABEL_7972_:
	ld a, $0C
	ld (_RAM_C202_), a
	ld hl, (_RAM_C311_)
	ld (_RAM_C305_), hl
	ld hl, (_RAM_C313_)
	ld (_RAM_C301_), hl
	jp _LABEL_7908_

+:
	cp $5F
	ret c
	cp $64
	jp nc, +
	ld a, (_RAM_C30E_)
	cp $08
	ret z
	call _LABEL_7BC4_
	ld c, $02
	jp _LABEL_79E2_

+:
	cp $AD
	jp nz, +
	ld a, (_RAM_C309_)
	sub $04
	ret c
	ld l, a
	ld h, $00
	ld e, l
	ld d, h
	add hl, hl
	add hl, de
	ld de, $7AC0
	add hl, de
	ld a, $08
	jp _LABEL_7877_

+:
	cp $C3
	ret c
	cp $C7
	jp nc, +
	ld a, (_RAM_C30E_)
	or a
	ret nz
	ld a, $FF
	ld (_RAM_C29D_), a
	ld a, $19
	ld (_RAM_C2E6_), a
	jp _LABEL_7972_

+:
	cp $C7
	ret c
	cp $D2
	ret nc
	ld a, $3B
	call _LABEL_282E_
	ret z
	call _LABEL_7BC4_
	ld c, $1E
_LABEL_79E2_:
	ld b, $00
	ld a, $03
	call +
	ld a, $02
	call +
	ld a, $01
	call +
	ld a, $00
	call +
	ld a, b
	or a
	ret z
	ld (_RAM_C2F0_), a
	ld hl, $00AE
	ld (_RAM_C2DB_), hl
	ld a, $0C
	ld (_RAM_C202_), a
	jp _LABEL_7908_

+:
	call _LABEL_187D_
	jr z, ++
	inc hl
	ld a, (hl)
	sub c
	jr nc, +
	xor a
+:
	ld (hl), a
	jr nz, ++
	dec hl
	ld (hl), a
	sub $01
++:
	rl b
	ret

; Data from 7A21 to 7A34 (20 bytes)
.db $14 $14 $0C $0C $1C $1C $12 $12 $16 $16 $0A $14 $02 $04 $1A $1C
.db $08 $10 $0E $16

; Data from 7A35 to 7A44 (16 bytes)
_DATA_7A35_:
.db $0A $0C $12 $14 $0C $0E $14 $16 $12 $14 $1A $1C $14 $16 $1C $1E

; Data from 7A45 to 7A74 (48 bytes)
_DATA_7A45_:
.db $02 $04 $0A $0C $F0 $00 $04 $06 $0C $0E $F0 $10 $0E $26 $16 $28
.db $00 $20 $16 $28 $1E $2A $10 $20 $1C $1E $22 $24 $20 $10 $1A $1C
.db $20 $22 $20 $00 $10 $12 $18 $1A $10 $F0 $08 $0A $10 $12 $00 $F0

; Data from 7A75 to 7A75 (1 bytes)
_DATA_7A75_:
.db $02

; Data from 7A76 to 7A8C (23 bytes)
_DATA_7A76_:
.db $E0 $F0 $04 $E0 $00 $0E $F0 $10 $16 $00 $10 $1C $10 $00 $1A $10
.db $F0 $10 $00 $E0 $08 $F0 $E0

; Data from 7A8D to 7AB8 (44 bytes)
_DATA_7A8D_:
.db $40 $60 $40 $70 $40 $80 $40 $90 $50 $60 $50 $70 $50 $80 $50 $90
.db $60 $60 $60 $70 $60 $80 $60 $90 $70 $60 $70 $70 $70 $80 $70 $90
.db $80 $70 $80 $80 $80 $90 $50 $A0 $60 $A0 $70 $A0

; Data from 7AB9 to 7AFC (68 bytes)
_DATA_7AB9_:
.db $91 $01 $92 $01 $93 $01 $94 $01 $00 $39 $55 $00 $39 $55 $00 $48
.db $49 $00 $47 $38 $00 $66 $55 $00 $25 $42 $00 $14 $0F $00 $41 $1A
.db $00 $66 $75 $00 $38 $66 $01 $27 $64 $01 $53 $73 $01 $27 $64 $01
.db $71 $5A $01 $26 $29 $02 $5B $2C $02 $38 $49 $02 $5B $2C $02 $38
.db $49 $00 $16 $6A

_LABEL_7AFD_:
	ld hl, $1009
	ld (_RAM_C21B_), hl
	jr _LABEL_7B0B_

_LABEL_7B05_:
	ld hl, $2009
	ld (_RAM_C21B_), hl
_LABEL_7B0B_:
	ld a, $16
	call _LABEL_52_
	ld a, (_RAM_C21B_)
	or a
	jp nz, _LABEL_7B0B_
	ret

_LABEL_7B18_:
	ld hl, $1089
	ld (_RAM_C21B_), hl
	jr _LABEL_7B33_

_LABEL_7B20_:
	ld hl, $2089
	ld (_RAM_C21B_), hl
	ld hl, _RAM_C220_
	ld de, _RAM_C220_ + 1
	ld bc, $001F
	ld (hl), $00
	ldir
_LABEL_7B33_:
	ld a, $16
	call _LABEL_52_
	ld a, (_RAM_C21B_)
	or a
	jp nz, _LABEL_7B33_
	ret

_LABEL_7B40_:
	ld hl, _RAM_C21D_
	dec (hl)
	ret p
	ld (hl), $03
	ld hl, _RAM_C21B_
	ld a, (hl)
	bit 7, a
	jp nz, ++
	or a
	ret z
	dec (hl)
	inc hl
	ld b, (hl)
	ld hl, _RAM_C220_
-:
	call +
	inc hl
	djnz -
	ret

+:
	ld a, (hl)
	or a
	ret z
	and $03
	jr z, +
	dec (hl)
	ret

+:
	ld a, (hl)
	and $0C
	jr z, +
	ld a, (hl)
	sub $04
	ld (hl), a
	ret

+:
	ld a, (hl)
	and $30
	ret z
	sub $10
	ld (hl), a
	ret

++:
	cp $80
	jr nz, +
	ld (hl), $00
	ret

+:
	dec (hl)
	inc hl
	ld b, (hl)
	ld hl, $C240
	ld de, _RAM_C220_
-:
	call +
	inc hl
	inc de
	djnz -
	ret

+:
	ld a, (de)
	cp (hl)
	ret z
	add a, $10
	cp (hl)
	jr z, +
	jr nc, ++
+:
	ld (de), a
	ret

++:
	ld a, (de)
	add a, $04
	cp (hl)
	jr z, +
	jr nc, ++
+:
	ld (de), a
	ret

++:
	ex de, hl
	inc (hl)
	ex de, hl
	ret

_LABEL_7BAC_:
	ld a, $0A
	ld (_RAM_C2BE_), a
	ld hl, $0D13
	ld (_RAM_C2C0_), hl
-:
	ld a, $16
	call _LABEL_52_
	ld a, (_RAM_C2BE_)
	or a
	jp nz, -
	ret

_LABEL_7BC4_:
	ld a, $0A
	ld (_RAM_C2BE_), a
	ld hl, $0E03
	ld a, (_RAM_C2E6_)
	cp $46
	jr z, +
	cp $49
	jr z, +
	cp $4A
	jr z, +
	ld hl, $0D03
+:
	ld (_RAM_C2C0_), hl
-:
	ld a, $16
	call _LABEL_52_
	ld a, (_RAM_C2BE_)
	or a
	jp nz, -
	ret

_LABEL_7BEE_:
	ld a, (_RAM_C2BE_)
	or a
	ret z
	dec a
	ld (_RAM_C2BE_), a
	rrca
	jp c, +
	ld hl, _RAM_C240_
	ld de, _RAM_C220_
	ld bc, $0020
	ldir
	ret

+:
	ld hl, (_RAM_C2C0_)
	ld b, h
	ld a, l
	ld hl, $C220
	add a, l
	ld l, a
	ld a, $3F
-:
	ld (hl), a
	inc hl
	djnz -
	ret

_LABEL_7C18_:
	ld a, (_RAM_C30E_)
	or a
	ret z
	cp $10
	jp z, _LABEL_7C79_
	cp $11
	jp z, _LABEL_7C79_
	cp $0E
	ret nc
	ld b, a
	ld c, $D1
	cp $08
	jp z, +
	ld c, $D0
	ld a, (_RAM_C265_)
	or a
	ret z
+:
	ld hl, _RAM_C310_
	dec (hl)
	ret p
	ld (hl), $03
	dec hl
	ld a, c
	ld (_RAM_C004_), a
	ld a, (hl)
	inc a
	cp $03
	jr c, +
	xor a
+:
	ld (hl), a
	ld c, a
	ld a, b
	cp $08
	ld hl, _DATA_7C6D_
	ld de, $C01D
	jp nz, +
	ld hl, _DATA_7C73_
	ld de, $C017
+:
	ld b, $00
	add hl, bc
	rst $08	; _LABEL_8_
	ld bc,  $0300 | Port_VDPData
-:
	outi
	jp nz, -
	ret

; Data from 7C6D to 7C72 (6 bytes)
_DATA_7C6D_:
.db $2F $2A $25 $2F $2A $25

; Data from 7C73 to 7C78 (6 bytes)
_DATA_7C73_:
.db $3C $2F $2A $3C $2F $2A

_LABEL_7C79_:
	ld hl, _RAM_C220_
	ld de, $C000
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
	jp _LABEL_595E_

_LABEL_7C85_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_FE1D_
	ld a, $6F
-:
	push af
	and $0F
	ld de, _RAM_C238_
	ld bc, $0008
	jr nz, +
	ldir
+:
	ld a, $16
	call _LABEL_52_
	pop af
	dec a
	jr nz, -
	ret

_LABEL_7CA6_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_FE4D_
	ld de, _RAM_C23B_
	ld bc, $0005
	ldir
	ld a, $16
	jp _LABEL_52_

_LABEL_7CBB_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	call +
	call +
	call +
	ld hl, _DATA_FE82_
	ld b, $0D
--:
	push bc
	ld de, _RAM_C22A_
	ld bc, $0006
	ldir
	ld b, $08
-:
	ld a, $16
	call _LABEL_52_
	djnz -
	pop bc
	djnz --
	ret

_LABEL_7CE4_:
	ld hl, _RAM_FFFF_
	ld (hl), $03
	ld hl, _DATA_FED0_
	ld bc, $0918
	jr _LABEL_7CF7_

+:
	ld hl, _DATA_FE52_
	ld bc, $1803
_LABEL_7CF7_:
	push bc
	ld a, (hl)
	ld (_RAM_C220_), a
	ld b, $06
	ld de, _RAM_C22A_
-:
	ld (de), a
	inc de
	djnz -
	inc hl
	ld a, (hl)
	ld (_RAM_C227_), a
	inc hl
	ld b, c
-:
	ld a, $16
	call _LABEL_52_
	djnz -
	pop bc
	djnz _LABEL_7CF7_
	ret

; Data from 7D17 to 7D17 (1 bytes)
_DATA_7D17_:
.db $C0

; Data from 7D18 to 7DA2 (139 bytes)
_DATA_7D18_:
.db $C0 $C0 $E8 $EB $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $E5 $C0 $C0
.db $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $E5 $C0 $EA $C0 $E7 $C0 $C0 $C0
.db $C1 $C0 $C2 $C0 $C3 $C0 $C4 $C0 $C5 $C0 $C6 $C0 $C7 $C0 $C8 $C0
.db $C9 $C0 $CA $C0 $C0 $C0 $E6 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $E9 $E5
.db $C0 $C0 $CB $C0 $CC $C0 $CD $C0 $CE $C0 $CF $C0 $D0 $C0 $D1 $C0
.db $D2 $C0 $D3 $C0 $D4 $C0 $D5 $C0 $D6 $C0 $D7 $C0 $D8 $C0 $D9 $C0
.db $DA $C0 $DB $C0 $DC $C0 $DD $C0 $DE $C0 $DF $C0 $E0 $C0 $E1 $C0
.db $E2 $C0 $E3 $C0 $E4 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0
.db $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0 $C0

; Data from 7DA3 to 7FAA (520 bytes)
_DATA_7DA3_:
.db $20 $20 $20 $20 $20 $20 $20 $20 $57 $4F $4F $44 $43 $41 $4E $45
.db $53 $48 $54 $2E $20 $53 $57 $44 $49 $52 $4E $2E $20 $53 $57 $44
.db $57 $41 $4E $44 $65 $20 $20 $20 $49 $52 $4E $2E $46 $41 $4E $47
.db $49 $52 $4E $2E $20 $41 $58 $45 $54 $49 $54 $2E $20 $53 $57 $44
.db $43 $52 $43 $2E $20 $53 $57 $44 $4E $45 $45 $44 $4C $47 $55 $4E
.db $53 $49 $4C $2E $46 $41 $4E $47 $48 $45 $41 $54 $2E $47 $55 $4E
.db $4C $47 $54 $2E $53 $41 $42 $52 $4C $41 $53 $52 $2E $47 $55 $4E
.db $4C $41 $43 $2E $20 $53 $57 $44 $4C $41 $43 $2E $20 $41 $58 $45
.db $4C $54 $48 $2E $41 $52 $4D $52 $57 $48 $54 $2E $4D $41 $4E $54
.db $4C $47 $54 $2E $53 $55 $49 $54 $49 $52 $4E $2E $41 $52 $4D $52
.db $54 $48 $43 $4B $2E $46 $55 $52 $5A $49 $52 $2E $41 $52 $4D $52
.db $44 $4D $44 $2E $41 $52 $4D $52 $4C $41 $43 $2E $41 $52 $4D $52
.db $46 $52 $44 $2E $4D $41 $4E $54 $4C $54 $48 $2E $20 $53 $4C $44
.db $42 $52 $4E $5A $2E $53 $4C $44 $49 $52 $4E $2E $20 $53 $4C $44
.db $43 $52 $43 $2E $20 $53 $4C $44 $47 $4C $4F $56 $45 $65 $20 $20
.db $4C $41 $53 $52 $2E $53 $4C $44 $4D $49 $52 $52 $2E $53 $4C $44
.db $4C $41 $43 $2E $20 $53 $4C $44 $4C $41 $4E $44 $52 $4F $56 $52
.db $48 $4F $56 $52 $43 $52 $46 $54 $49 $43 $45 $20 $44 $49 $47 $52
.db $43 $4F $4C $41 $65 $20 $20 $20 $42 $55 $52 $47 $45 $52 $65 $20
.db $46 $4C $55 $54 $45 $65 $20 $20 $46 $4C $41 $53 $48 $65 $20 $20
.db $45 $53 $43 $41 $50 $45 $52 $65 $54 $52 $41 $4E $53 $45 $52 $65
.db $4D $41 $47 $43 $20 $48 $41 $54 $41 $4C $53 $55 $4C $49 $4E $65
.db $50 $4F $4C $59 $4D $54 $52 $4C $44 $55 $47 $4E $20 $4B $45 $59
.db $53 $50 $48 $45 $52 $45 $65 $20 $54 $4F $52 $43 $48 $65 $20 $20
.db $50 $52 $49 $53 $4D $65 $20 $20 $4E $55 $54 $53 $65 $20 $20 $20
.db $48 $41 $50 $53 $42 $59 $65 $20 $52 $4F $41 $44 $50 $41 $53 $53
.db $50 $41 $53 $53 $50 $4F $52 $54 $43 $4F $4D $50 $41 $53 $53 $65
.db $43 $41 $4B $45 $65 $20 $20 $20 $4C $45 $54 $54 $45 $52 $65 $20
.db $4C $41 $43 $2E $20 $50 $4F $54 $4D $41 $47 $2E $4C $41 $4D $50
.db $41 $4D $42 $52 $20 $45 $59 $45 $47 $41 $53 $2E $20 $53 $4C $44
.db $43 $52 $59 $53 $54 $41 $4C $65 $4D $20 $53 $59 $53 $54 $45 $4D
.db $4D $52 $43 $4C $20 $4B $45 $59 $5A $49 $4C $4C $49 $4F $4E $65
.db $53 $45 $43 $52 $45 $54 $53 $65

; Data from 7FAB to 7FEF (69 bytes)
_DATA_7FAB_:
.db $00 $D0 $D0 $50 $D0 $20 $40 $50 $50 $40 $20 $40 $50 $40 $50 $40
.db $51 $81 $51 $41 $21 $51 $51 $41 $81 $52 $42 $52 $52 $22 $D2 $46
.db $52 $04 $04 $04 $00 $00 $00 $00 $00 $00 $00 $04 $00 $04 $00 $04
.db $04 $04 $04 $04 $00 $04 $00 $04 $04 $00 $04 $00 $00 $00 $04 $00
.db $FF $FF $FF $FF $FF

.BANK 1 SLOT 1
.ORG $0000

; Data from 7FF0 to 7FFF (16 bytes)
.db $54 $4D $52 $20 $53 $45 $47 $41 $FF $FF $D8 $EA $00 $95 $03 $40

.BANK 2
.ORG $0000

; Data from 8000 to B49A (13467 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_8000.inc"

; Data from B49B to B4FB (97 bytes)
_DATA_B49B_:
.db $53 $43 $55 $4D $21 $20 $44 $4F $20 $4E $4F $54 $20 $53 $4E $49
.db $46 $46 $60 $41 $52 $4F $55 $4E $44 $20 $49 $4E $20 $D4 $40 $53
.db $60 $41 $46 $46 $41 $49 $52 $53 $21 $20 $4C $45 $41 $52 $4E $60
.db $54 $48 $49 $53 $20 $4C $45 $53 $53 $4F $4E $20 $57 $45 $4C $4C
.db $21 $61 $B2 $21 $20 $57 $48 $41 $54 $20 $48 $41 $50 $50 $2D $60
.db $45 $4E $45 $44 $21 $20 $44 $4F $4E $40 $54 $20 $44 $49 $45 $21
.db $65

; Data from B4FC to B5D4 (217 bytes)
_DATA_B4FC_:
.db $80 $2C $4C $49 $53 $54 $45 $4E $21 $60 $D4 $20 $49 $53 $20 $4C
.db $45 $41 $44 $49 $4E $47 $60 $4F $55 $52 $20 $B5 $20 $54 $4F $60
.db $44 $45 $53 $54 $52 $55 $43 $54 $49 $4F $4E $2E $20 $49 $61 $54
.db $52 $49 $45 $44 $20 $54 $4F $20 $44 $49 $53 $43 $4F $56 $45 $52
.db $60 $48 $49 $53 $20 $50 $4C $41 $4E $53 $2C $20 $42 $55 $54 $20
.db $49 $60 $43 $FF $20 $4E $4F $54 $20 $44 $4F $20 $4D $55 $43 $48
.db $60 $42 $59 $20 $4D $59 $53 $45 $4C $46 $2E $61 $49 $20 $E3 $48
.db $45 $41 $52 $44 $20 $4F $46 $20 $41 $60 $4D $41 $4E $20 $57 $49
.db $54 $48 $20 $E6 $60 $53 $54 $52 $45 $4E $47 $54 $48 $20 $E7 $60
.db $22 $4F $44 $49 $4E $2E $22 $20 $4D $41 $59 $42 $45 $20 $54 $48
.db $45 $61 $54 $57 $4F $20 $4F $46 $20 $E1 $43 $41 $4E $60 $53 $54
.db $4F $50 $20 $D4 $2E $60 $80 $2C $49 $54 $40 $53 $20 $54 $4F $4F
.db $20 $4C $41 $54 $45 $60 $46 $4F $52 $20 $4D $45 $2E $20 $42 $45
.db $20 $53 $54 $52 $4F $4E $47 $2E $65

; Data from B5D5 to B616 (66 bytes)
_DATA_B5D5_:
.db $49 $20 $C7 $20 $4D $41 $4B $45 $20 $53 $55 $52 $45 $60 $DC $20
.db $92 $60 $44 $49 $45 $44 $20 $4E $4F $54 $20 $49 $4E $20 $56 $41
.db $49 $4E $21 $60 $57 $41 $54 $43 $48 $20 $4F $56 $45 $52 $20 $41
.db $4E $44 $61 $50 $52 $4F $54 $45 $43 $54 $20 $4D $45 $2C $20 $B2
.db $21 $65

; Data from B617 to B645 (47 bytes)
_DATA_B617_:
.db $57 $45 $20 $C7 $20 $42 $45 $20 $46 $45 $4C $4C $4F $57 $60 $54
.db $52 $41 $56 $45 $4C $45 $52 $53 $2E $60 $49 $40 $4D $20 $80 $3B
.db $20 $57 $48 $41 $54 $40 $53 $60 $E2 $4E $41 $4D $45 $3F $65

; Data from B646 to B64C (7 bytes)
_DATA_B646_:
.db $49 $40 $4D $20 $81 $2E $65

; Data from B64D to B66D (33 bytes)
_DATA_B64D_:
.db $81 $2C $20 $E3 $E1 $60 $45 $56 $45 $52 $20 $48 $45 $41 $52 $44
.db $20 $4F $46 $20 $41 $60 $4D $41 $4E $20 $E7 $4F $44 $49 $4E $3F
.db $65

; Data from B66E to B6C0 (83 bytes)
_DATA_B66E_:
.db $59 $45 $53 $2C $20 $42 $55 $54 $20 $48 $45 $20 $49 $53 $60 $91
.db $21 $60 $49 $46 $20 $48 $45 $20 $44 $52 $49 $4E $4B $53 $20 $54
.db $48 $49 $53 $60 $4D $45 $44 $49 $43 $49 $4E $45 $2C $20 $48 $45
.db $40 $4C $4C $20 $42 $45 $61 $4F $2E $4B $2E $2C $20 $42 $55 $54
.db $20 $49 $20 $88 $60 $4F $50 $45 $4E $20 $DE $42 $4F $54 $54 $4C
.db $45 $2E $65

; Data from B6C1 to B6F2 (50 bytes)
_DATA_B6C1_:
.db $57 $45 $4C $4C $2C $20 $54 $48 $45 $4E $2C $20 $57 $45 $40 $44
.db $60 $42 $45 $54 $54 $45 $52 $20 $47 $4F $20 $8F $60 $4F $44 $49
.db $4E $20 $54 $4F $47 $45 $54 $48 $45 $52 $2C $60 $4F $2E $4B $2E
.db $3F $65

; Data from B6F3 to B745 (83 bytes)
_DATA_B6F3_:
.db $B3 $20 $46 $4F $52 $20 $53 $41 $56 $49 $4E $47 $60 $4D $45 $2E
.db $20 $49 $20 $47 $55 $45 $53 $53 $20 $49 $46 $60 $EA $20 $43 $41
.db $4E $20 $53 $54 $4F $50 $60 $4D $45 $2C $20 $49 $20 $44 $4F $4E
.db $40 $54 $20 $E3 $61 $4D $55 $43 $48 $20 $48 $4F $50 $45 $20 $4F
.db $46 $60 $4B $49 $4C $4C $49 $4E $47 $20 $D4 $2C $60 $44 $4F $20
.db $49 $3F $65

; Data from B746 to B785 (64 bytes)
_DATA_B746_:
.db $92 $20 $44 $49 $45 $44 $60 $54 $52 $59 $49 $4E $47 $20 $54 $4F
.db $20 $4B $49 $4C $4C $60 $D4 $2E $20 $42 $45 $46 $4F $52 $45 $20
.db $48 $45 $60 $44 $49 $45 $44 $2C $20 $48 $45 $20 $54 $4F $4C $44
.db $20 $4D $45 $61 $54 $4F $20 $53 $45 $45 $4B $20 $E2 $CA $2E $65

; Data from B786 to B7B8 (51 bytes)
_DATA_B786_:
.db $49 $53 $20 $DC $20 $53 $4F $3F $20 $57 $45 $4C $4C $2C $60 $49
.db $20 $C8 $20 $4E $4F $54 $20 $4C $45 $54 $60 $E2 $42 $52 $4F $54
.db $48 $45 $52 $20 $44 $49 $45 $60 $55 $4E $41 $56 $45 $4E $47 $45
.db $44 $2E $65

; Data from B7B9 to B7D0 (24 bytes)
_DATA_B7B9_:
.db $57 $48 $59 $20 $44 $49 $44 $20 $E1 $54 $52 $59 $20 $54 $4F $60
.db $4B $49 $4C $4C $20 $EA $3F $65

; Data from B7D1 to B85B (139 bytes)
_DATA_B7D1_:
.db $42 $45 $43 $41 $55 $53 $45 $20 $EA $20 $48 $41 $53 $60 $41 $20
.db $4D $59 $53 $54 $49 $43 $20 $41 $58 $45 $2E $60 $55 $4E $46 $4F
.db $52 $54 $55 $4E $41 $54 $45 $4C $59 $2C $20 $53 $48 $45 $60 $47
.db $4F $54 $20 $41 $57 $41 $59 $20 $FE $4D $45 $2E $61 $41 $4E $59
.db $48 $4F $57 $2C $20 $49 $20 $E3 $60 $53 $54 $41 $53 $48 $45 $44
.db $20 $41 $20 $43 $4F $4D $50 $41 $53 $53 $60 $49 $4E $20 $4F $4E
.db $45 $20 $4F $46 $20 $54 $48 $45 $60 $BA $53 $20 $4F $46 $20 $E4
.db $61 $43 $41 $56 $45 $2E $20 $4C $45 $54 $40 $53 $20 $47 $4F $20
.db $41 $4E $44 $60 $47 $45 $54 $20 $49 $54 $65

; Data from B85C to B883 (40 bytes)
_DATA_B85C_:
.db $49 $40 $56 $45 $20 $52 $45 $43 $45 $49 $56 $45 $44 $20 $41 $60
.db $4C $45 $54 $54 $45 $52 $20 $FE $DE $60 $AA $2E $20 $C9 $60 $52
.db $45 $41 $44 $20 $49 $54 $2E $65

; Data from B884 to B928 (165 bytes)
_DATA_B884_:
.db $4C $45 $54 $20 $4D $45 $20 $53 $45 $45 $20 $49 $54 $2E $2E $2E
.db $2E $2E $60 $4F $55 $52 $20 $44 $55 $54 $59 $20 $49 $53 $20 $43
.db $4C $45 $41 $52 $3B $60 $57 $45 $20 $C8 $20 $50 $52 $4F $54 $45
.db $43 $54 $60 $DE $B8 $20 $4F $46 $20 $54 $48 $45 $61 $9B $20 $9C
.db $20 $FE $60 $45 $56 $49 $4C $2E $60 $57 $45 $20 $C8 $20 $46 $49
.db $52 $53 $54 $20 $47 $4F $60 $54 $4F $20 $DE $95 $61 $46 $4F $52
.db $45 $53 $54 $53 $20 $41 $4E $44 $20 $46 $49 $4E $44 $60 $44 $52
.db $2E $AD $2E $20 $57 $45 $20 $43 $41 $4E $60 $55 $53 $45 $20 $41
.db $4E $20 $55 $4E $44 $45 $52 $47 $52 $4F $55 $4E $44 $60 $BA $20
.db $FE $41 $61 $4D $41 $4E $48 $4F $4C $45 $20 $49 $4E $20 $54 $48
.db $45 $60 $98 $2E $65

; Data from B929 to B97B (83 bytes)
_DATA_B929_:
.db $57 $48 $45 $4E $20 $81 $20 $45 $41 $54 $53 $20 $54 $48 $45 $60
.db $4E $55 $54 $53 $20 $4F $46 $20 $D7 $2C $20 $48 $45 $60 $42 $45
.db $43 $4F $4D $45 $53 $20 $43 $4C $4F $54 $48 $45 $44 $20 $49 $4E
.db $60 $46 $4C $41 $4D $45 $20 $41 $4E $44 $20 $45 $4D $49 $54 $53
.db $20 $41 $61 $42 $4C $49 $4E $44 $49 $4E $47 $20 $4C $49 $47 $48
.db $54 $2E $65

; Data from B97C to B9E7 (108 bytes)
_DATA_B97C_:
.db $57 $48 $45 $4E $20 $48 $45 $20 $49 $53 $20 $56 $49 $53 $49 $42
.db $4C $45 $60 $41 $47 $41 $49 $4E $2C $20 $48 $45 $20 $48 $41 $53
.db $20 $42 $45 $45 $4E $60 $54 $52 $41 $4E $53 $46 $4F $52 $4D $45
.db $44 $20 $49 $4E $54 $4F $61 $41 $20 $42 $45 $41 $55 $54 $49 $46
.db $55 $4C $60 $57 $49 $4E $47 $45 $44 $20 $42 $45 $41 $53 $54 $2E
.db $60 $81 $20 $46 $4C $41 $50 $53 $20 $48 $49 $53 $60 $57 $49 $4E
.db $47 $53 $20 $50 $4C $4F $55 $44 $4C $59 $2E $65

; Data from B9E8 to B9EF (8 bytes)
_DATA_B9E8_:
.db $60 $20 $20 $20 $20 $20 $80 $63

; Data from B9F0 to B9FA (11 bytes)
_DATA_B9F0_:
.db $60 $20 $20 $20 $20 $20 $4F $44 $49 $4E $63

; Data from B9FB to BA05 (11 bytes)
_DATA_B9FB_:
.db $60 $20 $20 $20 $20 $20 $4E $4F $41 $48 $63

; Data from BA06 to BA11 (12 bytes)
_DATA_BA06_:
.db $60 $20 $20 $20 $20 $20 $41 $4E $44 $20 $81 $63

; Data from BA12 to BA53 (66 bytes)
_DATA_BA12_:
.db $45 $56 $45 $4E $20 $54 $48 $4F $55 $47 $48 $20 $54 $48 $45 $60
.db $4D $45 $4D $4F $52 $49 $45 $53 $20 $4F $46 $20 $45 $56 $49 $4C
.db $60 $46 $41 $44 $45 $20 $41 $57 $41 $59 $2C $20 $54 $48 $45 $49
.db $52 $60 $4E $41 $4D $45 $53 $20 $C7 $20 $42 $45 $20 $4B $45 $50
.db $54 $63

; Data from BA54 to BFFF (1452 bytes)
_DATA_BA54_:
.incbin "Phantasy Star (UE) (V1.2) [!]_ba54.inc"

.BANK 3
.ORG $0000

; Data from C000 to C177 (376 bytes)
_DATA_C000_:
.db $10 $0C $10 $0C $10 $0C $10 $0B $10 $0B $10 $05 $10 $05 $10 $0F
.db $10 $0C $10 $0C $10 $0B $10 $0B $10 $0B $10 $04 $10 $0F $10 $0E
.db $10 $0A $10 $0A $10 $0A $10 $0B $10 $0B $10 $01 $10 $01 $10 $0E
.db $10 $0D $10 $0A $10 $0A $10 $07 $10 $00 $10 $00 $10 $01 $10 $06
.db $10 $0A $10 $0A $10 $0A $10 $07 $10 $00 $10 $00 $10 $01 $10 $06
.db $10 $09 $10 $09 $10 $08 $10 $07 $10 $02 $10 $02 $10 $01 $10 $06
.db $10 $09 $10 $09 $10 $08 $10 $08 $10 $03 $10 $03 $10 $06 $10 $0B
.db $10 $0A $10 $09 $10 $08 $10 $08 $10 $03 $10 $03 $10 $0B $10 $0D
.db $10 $09 $10 $09 $10 $08 $10 $03 $10 $03 $10 $06 $10 $06 $10 $06
.db $10 $09 $10 $0E $10 $0E $10 $0E $10 $02 $10 $02 $10 $02 $10 $02
.db $10 $08 $10 $0E $10 $0F $10 $0E $10 $0D $10 $01 $10 $01 $10 $05
.db $10 $08 $10 $0C $10 $0C $10 $0D $10 $0D $10 $00 $10 $00 $10 $05
.db $10 $08 $10 $0A $10 $0B $10 $0B $10 $07 $10 $00 $10 $01 $10 $04
.db $10 $08 $10 $09 $10 $0B $10 $0A $10 $07 $10 $05 $10 $04 $10 $04
.db $10 $08 $10 $09 $10 $0A $10 $0A $10 $07 $10 $05 $10 $05 $10 $05
.db $10 $09 $10 $09 $10 $08 $10 $08 $10 $07 $10 $06 $10 $06 $10 $06
.db $10 $0F $10 $0F $10 $0D $10 $0C $10 $0E $10 $0E $10 $0F $10 $0F
.db $10 $0F $10 $0D $10 $0D $10 $0C $10 $0B $10 $0B $10 $0C $10 $0F
.db $10 $0D $10 $0D $10 $0D $10 $0C $10 $0B $10 $0A $10 $09 $10 $09
.db $10 $04 $10 $06 $10 $06 $10 $03 $10 $07 $10 $08 $10 $08 $10 $04
.db $10 $04 $10 $05 $10 $03 $10 $01 $10 $0D $10 $08 $10 $06 $10 $04
.db $10 $03 $10 $03 $10 $00 $10 $00 $10 $0D $10 $08 $10 $04 $10 $03
.db $10 $03 $10 $03 $10 $00 $10 $00 $10 $0D $10 $0D $10 $04 $10 $03
.db $10 $0F $10 $02 $10 $02 $10 $01

; Data from C178 to C46F (760 bytes)
_DATA_C178_:
.db $10 $0D $10 $0D $10 $0F $10 $0F $01 $01 $01 $01 $01 $05 $05 $05
.db $01 $01 $04 $04 $05 $05 $05 $05 $01 $01 $01 $04 $04 $04 $04 $15
.db $01 $01 $09 $09 $09 $09 $09 $15 $01 $06 $06 $06 $0A $0A $0A $0A
.db $04 $0A $0A $0A $0A $15 $15 $17 $01 $01 $06 $06 $0A $0A $0A $17
.db $0D $0D $15 $15 $15 $1E $1E $30 $05 $0B $0B $17 $17 $18 $18 $18
.db $09 $09 $09 $10 $10 $22 $22 $35 $36 $36 $40 $40 $40 $40 $40 $40
.db $03 $03 $03 $03 $03 $03 $03 $16 $16 $16 $16 $1D $1D $23 $23 $23
.db $03 $03 $25 $25 $25 $25 $25 $25 $16 $16 $1D $1D $1D $35 $35 $35
.db $01 $01 $01 $09 $09 $09 $09 $09 $01 $01 $05 $05 $05 $05 $0A $0A
.db $03 $03 $03 $12 $12 $12 $12 $12 $15 $15 $15 $15 $16 $16 $16 $16
.db $09 $09 $10 $10 $16 $16 $18 $1D $09 $09 $1F $1F $1F $1F $1F $1F
.db $15 $15 $1F $1F $23 $23 $25 $25 $26 $26 $26 $26 $26 $26 $26 $26
.db $1D $1D $1D $1D $25 $25 $25 $25 $03 $0A $0A $10 $10 $16 $18 $18
.db $1D $23 $26 $2D $32 $32 $32 $32 $09 $41 $41 $41 $41 $41 $41 $41
.db $0A $42 $42 $42 $42 $42 $42 $42 $01 $01 $01 $01 $01 $01 $01 $01
.db $14 $14 $14 $14 $14 $14 $14 $14 $15 $15 $15 $15 $15 $15 $15 $15
.db $29 $29 $29 $29 $29 $29 $29 $29 $26 $26 $26 $26 $26 $26 $26 $26
.db $24 $24 $24 $24 $24 $24 $24 $24 $36 $36 $36 $36 $36 $36 $36 $36
.db $14 $14 $14 $14 $14 $14 $14 $14 $13 $13 $13 $13 $13 $13 $13 $13
.db $20 $20 $20 $20 $20 $20 $20 $20 $29 $29 $29 $29 $29 $29 $29 $29
.db $30 $30 $30 $30 $30 $30 $30 $30 $0D $1A $1A $1A $1A $26 $26 $26
.db $34 $34 $36 $36 $36 $36 $36 $36 $13 $13 $20 $20 $22 $22 $22 $22
.db $22 $22 $24 $24 $24 $36 $36 $36 $17 $17 $22 $22 $2C $2C $2F $37
.db $19 $19 $19 $19 $19 $19 $19 $19 $05 $05 $05 $05 $06 $06 $08 $0C
.db $0E $0E $0E $0E $0E $0E $0F $0F $10 $10 $1C $1C $1C $1C $1C $1C
.db $0C $0C $16 $16 $17 $17 $23 $23 $20 $27 $27 $27 $27 $27 $27 $27
.db $20 $20 $20 $20 $20 $20 $20 $20 $27 $27 $2F $2F $2F $2F $30 $30
.db $0F $30 $32 $32 $32 $32 $32 $32 $08 $08 $10 $10 $39 $39 $39 $39
.db $05 $05 $1C $1C $1C $1C $3B $3B $30 $30 $39 $39 $3B $3B $3B $3B
.db $07 $07 $0B $0B $0D $0D $1B $1B $0B $0B $1B $1B $21 $21 $24 $24
.db $1B $1B $1B $1B $1D $1D $25 $25 $21 $21 $21 $25 $25 $28 $28 $2A
.db $0D $24 $24 $2A $2A $2A $2D $2D $1D $1D $1D $1D $28 $28 $28 $39
.db $2B $2B $2B $2B $2B $2B $36 $36 $25 $25 $25 $36 $36 $36 $38 $38
.db $07 $07 $3F $3F $3F $3F $3F $3F $2A $2A $3A $3A $3A $3A $3A $3A
.db $2B $2B $2D $2D $2D $41 $41 $41 $0D $0D $3A $3A $41 $41 $41 $41
.db $1D $1D $1D $1D $28 $28 $2A $2A $25 $25 $2D $2D $38 $38 $38 $38
.db $39 $39 $39 $41 $41 $41 $41 $41 $44 $44 $44 $44 $44 $44 $44 $44
.db $02 $02 $03 $03 $0B $0B $0D $0D $09 $09 $0C $0C $11 $11 $16 $16
.db $07 $07 $10 $10 $12 $12 $2B $2B $15 $15 $18 $18 $1D $1D $1F $1F
.db $17 $17 $28 $28 $2A $2A $2C $2C $22 $22 $25 $25 $26 $26 $2D $2D
.db $0B $0B $0B $0B $0D $0D $0D $1F $2C $2C $2C $2C $2C $2C $2C $2C
.db $18 $18 $1D $1D $3B $3B $3C $3C $25 $25 $2A $2A $3D $3D $41 $41
.db $38 $38 $3F $3F $40 $40 $42 $42 $11 $11 $37 $37 $37 $37 $37 $37
.db $2F $2F $2F $2F $40 $40 $42 $42 $33 $33 $36 $36 $38 $38 $39 $39
.db $33 $33 $35 $35 $3C $3C $3C $3C $2A $2A $3A $3A $3F $3F $44 $44
.db $44 $44 $44 $44 $44 $44 $44 $44 $02 $02 $02 $02 $03 $03 $03 $03
.db $10 $10 $10 $12 $12 $12 $15 $15 $25 $25 $25 $30 $30 $30 $33 $33
.db $09 $09 $12 $12 $41 $41 $41 $41

; Data from C470 to C59F (304 bytes)
_DATA_C470_:
.db $01 $02 $02 $03 $04 $05 $05 $06 $07 $07 $08 $09 $0A $0A $06 $0B
.db $01 $02 $02 $03 $04 $05 $05 $06 $07 $07 $08 $09 $0A $0A $06 $0B
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $0C $0C $0C $0D $0E $0E $0E $0E $0E $0E $0E $0F $0F $0F $0F $0F
.db $10 $10 $11 $12 $13 $13 $14 $14 $17 $15 $16 $18 $19 $1A $1B $1C
.db $10 $10 $11 $12 $13 $13 $14 $14 $17 $15 $16 $18 $19 $1A $1B $1C
.db $1D $1D $1D $1E $1E $1F $1F $20 $20 $21 $21 $20 $22 $22 $23 $23
.db $24 $24 $24 $24 $25 $25 $25 $26 $26 $26 $26 $27 $28 $28 $28 $28
.db $24 $24 $24 $24 $25 $25 $25 $26 $26 $26 $26 $27 $28 $28 $28 $28
.db $29 $29 $29 $29 $29 $2A $29 $29 $29 $29 $29 $29 $29 $29 $2A $2A
.db $2F $2F $30 $31 $32 $30 $32 $33 $32 $35 $36 $38 $37 $34 $39 $37
.db $2E $2E $2E $2E $2E $2E $2E $2E $2E $2E $2E $2E $2E $2E $2E $2E
.db $3A $3B $3C $3D $3E $3E $3F $40 $41 $42 $42 $41 $43 $42 $44 $45
.db $46 $46 $46 $46 $46 $46 $47 $47 $47 $47 $47 $48 $48 $48 $48 $49
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $2D $2D $2D $2D $2D $2D $2D $2D $2D $2D $2D $2D $2D $2D $2D $2D
.db $2C $2C $2C $2C $2B $2B $2B $2B $2C $2C $2C $2C $2C $2C $2C $2C
.db $2F $2F $30 $31 $32 $30 $32 $33 $32 $35 $36 $38 $37 $34 $39 $37
.db $25 $26 $24 $24 $27 $27 $28 $28 $27 $26 $28 $27 $27 $26 $27 $28

; Data from C5A0 to C67E (223 bytes)
_DATA_C5A0_:
.db $00 $00 $03 $03 $03 $03 $03 $04 $04 $00 $00 $00 $00 $00 $04 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $07 $07 $07 $07 $07 $07 $07 $07
.db $07 $00 $00 $00 $00 $05 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $08 $08 $08 $08 $06 $06 $06 $06 $06
.db $06 $06 $06 $06 $06 $07 $07 $07 $07 $06 $06 $06 $06 $06 $06 $06
.db $06 $06 $02 $02 $02 $02 $02 $02 $02 $02 $02 $01 $02 $05 $04 $09
.db $09 $09 $09 $09 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $02 $02
.db $02 $02 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $02 $01 $01 $01 $01 $05 $02 $02 $02 $02 $02 $02 $05 $05
.db $05 $05 $00 $00 $00 $00 $00 $02 $02 $02 $02 $02 $02 $02 $02

; Data from C67F to C67F (1 bytes)
_DATA_C67F_:
.db $02

; Data from C680 to C691 (18 bytes)
_DATA_C680_:
.db $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $02 $02
.db $03 $00

; Pointer Table from C692 to C695 (2 entries, indexed by _RAM_C2E6_)
_DATA_C692_:
.dw _DATA_808_ _DATA_808_

; Data from C696 to CFC6 (2353 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_c696.inc"

; Data from CFC7 to CFCE (8 bytes)
_DATA_CFC7_:
.db $20 $25 $2A $2F $3F $02 $03 $01

; Pointer Table from CFCF to CFD0 (1 entries, indexed by unknown)
_DATA_CFCF_:
.dw _DATA_60313_

; Data from CFD1 to D4F5 (1317 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_cfd1.inc"

; Data from D4F6 to D505 (16 bytes)
_DATA_D4F6_:
.db $00 $EC $ED $EE $ED $EE $EF $F0 $F1 $F2 $F3 $F4 $F5 $00 $F6 $00

; Data from D506 to D510 (11 bytes)
_DATA_D506_:
.db $00 $EF $F0 $F1 $F7 $F8 $F9 $FA $00 $FB $00

; Data from D511 to D51B (11 bytes)
_DATA_D511_:
.db $00 $EF $F0 $F1 $FC $FD $FE $FF $00 $10 $00

; Data from D51C to D53F (36 bytes)
_DATA_D51C_:
.db $00 $EF $F0 $F1 $11 $12 $B3 $46 $00 $8E $00 $00 $13 $13 $14 $3D
.db $3E $76 $3D $3E $76 $3D $3E $76 $3D $77 $77 $88 $89 $8A $8B $8C
.db $CC $00 $CD $00

; Data from D540 to D5BB (124 bytes)
_DATA_D540_:
.db $00 $00 $00 $00 $01 $00 $02 $00 $03 $00 $04 $00 $05 $00 $06 $00
.db $07 $00 $08 $00 $09 $00 $0A $00 $0B $00 $00 $01 $01 $01 $02 $01
.db $03 $01 $04 $01 $05 $01 $06 $01 $07 $01 $08 $01 $09 $01 $0A $01
.db $0B $01 $00 $02 $01 $02 $02 $02 $03 $02 $04 $02 $05 $02 $06 $02
.db $07 $02 $08 $02 $09 $02 $0A $02 $0B $02 $00 $03 $01 $03 $02 $03
.db $03 $03 $04 $03 $05 $03 $06 $03 $07 $03 $08 $03 $09 $03 $0A $03
.db $0B $03 $0C $04 $0D $05 $0C $06 $0E $07 $0F $08 $10 $09 $10 $0A
.db $11 $0B $12 $0C $13 $0D $14 $0E $15 $0F $15 $10

; Data from D5BC to D66B (176 bytes)
_DATA_D5BC_:
.db $2B $0B $06 $2A $25 $03 $02 $0F $2B $0B $06 $2A $25 $0C $08 $0F
.db $2B $0B $06 $2A $25 $3C $38 $0F $2B $0B $06 $2A $25 $3F $3C $0F
.db $2B $00 $06 $2A $25 $03 $02 $25 $2B $00 $06 $2A $25 $0C $08 $25
.db $2B $00 $06 $2A $25 $3C $38 $25 $2B $00 $06 $2A $25 $3F $3C $25
.db $2B $34 $06 $2A $25 $03 $02 $38 $2B $34 $06 $2A $25 $0C $08 $38
.db $2B $34 $06 $2A $25 $3C $38 $38 $2B $34 $06 $2A $25 $3F $3C $38
.db $2B $0B $06 $2A $25 $03 $02 $0F $2B $0B $06 $2A $25 $01 $02 $0F
.db $2B $0B $06 $2A $25 $0A $05 $0F $2B $0B $06 $2A $25 $3C $20 $02
.db $2B $0B $06 $2A $25 $3E $3C $02 $04 $01 $06 $3F $3E $3C $3E $3F
.db $2B $0B $06 $2A $3E $21 $02 $36 $2A $25 $2A $2A $3F $2A $25 $25
.db $2B $3E $06 $2A $25 $3C $00 $00 $02 $3C $0A $04 $2C $01 $08 $2F

; Data from D66C to D66D (2 bytes)
_DATA_D66C_:
.db $10 $50

; Pointer Table from D66E to D66F (1 entries, indexed by unknown)
_DATA_D66E_:
.dw _DATA_704F_

; Data from D670 to D6F3 (132 bytes)
.db $00 $1B $00 $80 $10 $51 $4F $70 $00 $1B $00 $80 $10 $52 $4F $70
.db $00 $1B $00 $80 $10 $53 $4F $70 $00 $1B $00 $80 $10 $54 $4F $68
.db $00 $1B $19 $8E $10 $55 $4F $70 $00 $1B $19 $8E $10 $56 $4F $70
.db $00 $1B $19 $8E $10 $57 $4F $70 $00 $06 $80 $BB $10 $58 $4F $68
.db $00 $1B $79 $99 $10 $59 $6F $64 $00 $1B $26 $9F $10 $5A $6F $6C
.db $00 $1B $26 $9F $10 $5B $4F $70 $00 $1B $5E $A7 $10 $5C $4F $70
.db $00 $1B $04 $AB $10 $5D $4F $6C $00 $1B $6C $AE $10 $5E $4F $68
.db $00 $15 $97 $BA $10 $82 $4F $74 $00 $13 $ED $96 $10 $83 $4F $74
.db $00 $13 $ED $96

; Pointer Table from D6F4 to D80B (140 entries, indexed by _RAM_C800_)
_DATA_D6F4_:
.dw _DATA_D80C_ _DATA_D80C_ _DATA_D81F_ _DATA_D832_ _DATA_D845_ _DATA_D852_ _DATA_D883_ _DATA_D890_
.dw _DATA_D89D_ _DATA_D8B3_ _DATA_D8C6_ _DATA_D8CD_ _DATA_D8DA_ _DATA_D8F3_ _DATA_D909_ _DATA_D910_
.dw _DATA_D917_ _DATA_D91B_ _DATA_D925_ _DATA_D92C_ _DATA_D939_ _DATA_D952_ _DATA_D965_ _DATA_D972_
.dw _DATA_D976_ _DATA_D97A_ _DATA_D981_ _DATA_D98E_ _DATA_D99B_ _DATA_D9A2_ _DATA_D9A6_ _DATA_D9AA_
.dw _DATA_D9AE_ _DATA_D9B2_ _DATA_D9B9_ _DATA_D9C6_ _DATA_D9DF_ _DATA_D9EC_ _DATA_D9F3_ _DATA_D9F7_
.dw _DATA_D9FE_ _DATA_DA05_ _DATA_DA0C_ _DATA_DA19_ _DATA_DA2F_ _DATA_DA3F_ _DATA_DA52_ _DATA_DA5C_
.dw _DATA_DA60_ _DATA_DA64_ _DATA_DA68_ _DATA_DA6F_ _DATA_DA7C_ _DATA_DA95_ _DATA_DAAE_ _DATA_DABB_
.dw _DATA_DABF_ _DATA_DAC6_ _DATA_DD5C_ _DATA_DDA2_ _DATA_DDE8_ _DATA_DE3D_ _DATA_DE80_ _DATA_DEC3_
.dw _DATA_DF06_ _DATA_DF55_ _DATA_DFC8_ _DATA_E011_ _DATA_E054_ _DATA_E097_ _DATA_E0E0_ _DATA_DC9B_
.dw _DATA_DCA2_ _DATA_DCA9_ _DATA_DCB0_ _DATA_DCBA_ _DATA_DCCD_ _DATA_DCDA_ _DATA_DCE1_ _DATA_DCE1_
.dw _DATA_E13B_ _DATA_E199_ _DATA_E1FD_ _DATA_E26D_ _DATA_E2D7_ _DATA_E34D_ _DATA_E3B7_ _DATA_E41E_
.dw _DATA_E49D_ _DATA_E58F_ _DATA_E53A_ _DATA_E60B_ _DATA_E681_ _DATA_E6F7_ _DATA_E788_ _DATA_DACA_
.dw _DATA_DAD7_ _DATA_DAEA_ _DATA_DB03_ _DATA_DB13_ _DATA_DB20_ _DATA_DB33_ _DATA_DB4C_ _DATA_DB62_
.dw _DATA_DB7B_ _DATA_DB8E_ _DATA_DBA7_ _DATA_DBB4_ _DATA_DBC1_ _DATA_DBC8_ _DATA_DBDB_ _DATA_DBF1_
.dw _DATA_DBF8_ _DATA_DC0B_ _DATA_DC15_ _DATA_DC22_ _DATA_DC2F_ _DATA_DC3F_ _DATA_DC4C_ _DATA_DC5F_
.dw _DATA_DC78_ _DATA_DC8E_ _DATA_DCEE_ _DATA_DCF5_ _DATA_DCFC_ _DATA_DD09_ _DATA_DD1C_ _DATA_DD3B_
.dw _DATA_DD48_ _DATA_DD4F_ _DATA_E816_ _DATA_E874_ _DATA_E8D2_ _DATA_E8E2_ _DATA_E8F2_ _DATA_E8E2_
.dw _DATA_E902_ _DATA_E912_ _DATA_E922_ _DATA_E912_

; 1st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D80C to D81E (19 bytes)
_DATA_D80C_:
.db $06 $F7 $F7 $FF $FF $07 $07 $00 $AA $08 $AB $00 $AC $08 $AD $00
.db $AE $08 $AF

; 3rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D81F to D831 (19 bytes)
_DATA_D81F_:
.db $06 $F7 $F7 $FF $FF $07 $07 $00 $B0 $08 $B1 $00 $B2 $08 $B3 $00
.db $B4 $08 $B5

; 4th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D832 to D844 (19 bytes)
_DATA_D832_:
.db $06 $F7 $F7 $FF $FF $07 $07 $00 $B6 $08 $B7 $00 $B8 $08 $B9 $00
.db $BA $08 $BB

; 5th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D845 to D851 (13 bytes)
_DATA_D845_:
.db $04 $FF $FF $07 $07 $00 $BC $08 $BD $00 $BE $08 $BF

; 6th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D852 to D882 (49 bytes)
_DATA_D852_:
.db $10 $EF $EF $EF $EF $F7 $F7 $F7 $F7 $FF $FF $FF $FF $07 $07 $07
.db $07 $F0 $AA $F8 $AB $00 $AC $08 $AD $F0 $AE $F8 $AF $00 $B0 $08
.db $B1 $F0 $B2 $F8 $B3 $00 $B4 $08 $B5 $F0 $B6 $F8 $B7 $00 $B8 $08
.db $B9

; 7th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D883 to D88F (13 bytes)
_DATA_D883_:
.db $04 $DC $E4 $EC $F4 $14 $A0 $0F $A1 $0B $A2 $07 $A3

; 8th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D890 to D89C (13 bytes)
_DATA_D890_:
.db $04 $FC $FC $04 $04 $00 $A4 $08 $A5 $FF $A6 $07 $A7

; 9th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D89D to D8B2 (22 bytes)
_DATA_D89D_:
.db $07 $FC $FC $04 $0C $14 $1C $24 $00 $A8 $08 $A9 $01 $AA $FB $AB
.db $F8 $AC $F4 $AD $F0 $A0

; 10th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D8B3 to D8C5 (19 bytes)
_DATA_D8B3_:
.db $06 $FC $FC $04 $14 $1C $24 $00 $AE $0D $AF $03 $B0 $F8 $B1 $F4
.db $B2 $F0 $B3

; 11th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D8C6 to D8CC (7 bytes)
_DATA_D8C6_:
.db $02 $60 $68 $2D $A0 $2D $A1

; 12th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D8CD to D8D9 (13 bytes)
_DATA_D8CD_:
.db $04 $60 $60 $68 $68 $28 $A2 $30 $A3 $28 $A4 $30 $A5

; 13th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D8DA to D8F2 (25 bytes)
_DATA_D8DA_:
.db $08 $48 $48 $50 $50 $58 $58 $60 $60 $23 $A6 $2B $A7 $24 $A8 $2C
.db $A9 $27 $AA $2F $AB $2A $AC $32 $AD

; 14th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D8F3 to D908 (22 bytes)
_DATA_D8F3_:
.db $07 $28 $30 $30 $38 $38 $40 $40 $15 $AE $17 $AF $1F $A7 $1A $B0
.db $22 $B1 $1D $B2 $25 $B3

; 15th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D909 to D90F (7 bytes)
_DATA_D909_:
.db $02 $18 $20 $0E $B4 $10 $B5

; 16th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D910 to D916 (7 bytes)
_DATA_D910_:
.db $02 $08 $10 $08 $B6 $0A $B7

; 17th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D917 to D91A (4 bytes)
_DATA_D917_:
.db $01 $08 $05 $B8

; 18th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D91B to D924 (10 bytes)
_DATA_D91B_:
.db $03 $00 $08 $08 $04 $B9 $02 $BA $0A $BB

; 19th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D925 to D92B (7 bytes)
_DATA_D925_:
.db $02 $60 $68 $2C $A0 $2C $A1

; 20th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D92C to D938 (13 bytes)
_DATA_D92C_:
.db $04 $60 $60 $68 $68 $28 $A2 $30 $A3 $28 $A4 $30 $A5

; 21st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D939 to D951 (25 bytes)
_DATA_D939_:
.db $08 $38 $40 $48 $50 $50 $58 $58 $60 $1A $A6 $1E $A7 $20 $A8 $23
.db $A9 $2B $AA $26 $AB $2E $AC $2C $AD

; 22nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D952 to D964 (19 bytes)
_DATA_D952_:
.db $06 $18 $20 $28 $28 $30 $38 $0D $AE $11 $AF $13 $B0 $1B $B1 $16
.db $B2 $1B $B3

; 23rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D965 to D971 (13 bytes)
_DATA_D965_:
.db $04 $00 $08 $10 $18 $06 $B4 $07 $B5 $0A $B6 $10 $B7

; 24th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D972 to D975 (4 bytes)
_DATA_D972_:
.db $01 $00 $02 $B8

; 25th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D976 to D979 (4 bytes)
_DATA_D976_:
.db $01 $00 $00 $B9

; 26th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D97A to D980 (7 bytes)
_DATA_D97A_:
.db $02 $60 $68 $2D $A0 $2E $A1

; 27th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D981 to D98D (13 bytes)
_DATA_D981_:
.db $04 $60 $60 $68 $68 $28 $A2 $30 $A3 $2A $A4 $32 $A5

; 28th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D98E to D99A (13 bytes)
_DATA_D98E_:
.db $04 $48 $48 $50 $50 $22 $A6 $2A $A7 $24 $A8 $2C $A9

; 29th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D99B to D9A1 (7 bytes)
_DATA_D99B_:
.db $02 $28 $28 $13 $AA $1B $AB

; 30th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9A2 to D9A5 (4 bytes)
_DATA_D9A2_:
.db $01 $10 $0A $AC

; 31st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9A6 to D9A9 (4 bytes)
_DATA_D9A6_:
.db $01 $00 $05 $AD

; 32nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9AA to D9AD (4 bytes)
_DATA_D9AA_:
.db $01 $00 $02 $AE

; 33rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9AE to D9B1 (4 bytes)
_DATA_D9AE_:
.db $01 $00 $00 $AF

; 34th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9B2 to D9B8 (7 bytes)
_DATA_D9B2_:
.db $02 $60 $68 $2C $A0 $2C $A1

; 35th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9B9 to D9C5 (13 bytes)
_DATA_D9B9_:
.db $04 $60 $60 $68 $68 $28 $A2 $30 $A3 $28 $A4 $30 $A5

; 36th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9C6 to D9DE (25 bytes)
_DATA_D9C6_:
.db $08 $38 $38 $40 $40 $48 $50 $50 $58 $18 $A6 $20 $A7 $19 $A8 $21
.db $A9 $20 $AA $23 $AB $2B $AC $29 $AD

; 37th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9DF to D9EB (13 bytes)
_DATA_D9DF_:
.db $04 $18 $18 $20 $28 $0D $AE $16 $AF $10 $B0 $13 $B1

; 38th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9EC to D9F2 (7 bytes)
_DATA_D9EC_:
.db $02 $08 $10 $07 $B2 $0C $B3

; 39th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9F3 to D9F6 (4 bytes)
_DATA_D9F3_:
.db $01 $00 $02 $B4

; 40th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9F7 to D9FD (7 bytes)
_DATA_D9F7_:
.db $02 $00 $00 $00 $B5 $08 $B6

; 41st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from D9FE to DA04 (7 bytes)
_DATA_D9FE_:
.db $02 $00 $08 $02 $B7 $00 $B8

; 42nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA05 to DA0B (7 bytes)
_DATA_DA05_:
.db $02 $60 $68 $2C $A0 $2C $A1

; 43rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA0C to DA18 (13 bytes)
_DATA_DA0C_:
.db $04 $60 $60 $68 $68 $28 $A2 $30 $A3 $28 $A4 $30 $A5

; 44th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA19 to DA2E (22 bytes)
_DATA_DA19_:
.db $07 $38 $40 $48 $50 $58 $60 $60 $22 $A6 $28 $A7 $29 $A8 $28 $A9
.db $28 $AA $29 $AB $31 $AC

; 45th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA2F to DA3E (16 bytes)
_DATA_DA2F_:
.db $05 $18 $20 $28 $30 $38 $20 $AD $20 $AE $20 $AF $21 $B0 $22 $B1

; 46th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA3F to DA51 (19 bytes)
_DATA_DA3F_:
.db $06 $00 $00 $08 $08 $10 $18 $10 $B2 $18 $B3 $10 $B4 $18 $B5 $1B
.db $B6 $20 $B7

; 47th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA52 to DA5B (10 bytes)
_DATA_DA52_:
.db $03 $00 $00 $08 $03 $B8 $0B $B9 $08 $BA

; 48th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA5C to DA5F (4 bytes)
_DATA_DA5C_:
.db $01 $00 $02 $BB

; 49th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA60 to DA63 (4 bytes)
_DATA_DA60_:
.db $01 $00 $00 $BC

; 50th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA64 to DA67 (4 bytes)
_DATA_DA64_:
.db $01 $00 $00 $BD

; 51st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA68 to DA6E (7 bytes)
_DATA_DA68_:
.db $02 $60 $68 $2C $A0 $2C $A1

; 52nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA6F to DA7B (13 bytes)
_DATA_DA6F_:
.db $04 $60 $60 $68 $68 $28 $A2 $30 $A3 $28 $A4 $30 $A5

; 53rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA7C to DA94 (25 bytes)
_DATA_DA7C_:
.db $08 $40 $40 $48 $48 $50 $50 $58 $58 $1D $A6 $25 $A7 $1D $A8 $25
.db $A9 $1F $AA $27 $AB $20 $AC $28 $AD

; 54th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DA95 to DAAD (25 bytes)
_DATA_DA95_:
.db $08 $20 $20 $28 $28 $30 $30 $38 $38 $11 $AE $19 $AF $13 $B0 $1B
.db $B1 $15 $B2 $1D $B3 $17 $B4 $1F $B5

; 55th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DAAE to DABA (13 bytes)
_DATA_DAAE_:
.db $04 $08 $10 $10 $18 $09 $B6 $09 $B7 $11 $B8 $0D $B9

; 56th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DABB to DABE (4 bytes)
_DATA_DABB_:
.db $01 $00 $06 $BA

; 57th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DABF to DAC5 (7 bytes)
_DATA_DABF_:
.db $02 $00 $00 $00 $BB $08 $BC

; 58th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DAC6 to DAC9 (4 bytes)
_DATA_DAC6_:
.db $01 $00 $04 $BD

; 96th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DACA to DAD6 (13 bytes)
_DATA_DACA_:
.db $04 $DC $E4 $EC $F4 $12 $A0 $0E $A1 $0A $A1 $06 $A1

; 97th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DAD7 to DAE9 (19 bytes)
_DATA_DAD7_:
.db $06 $EC $F4 $FC $FC $04 $04 $0C $A2 $07 $A3 $FC $A4 $04 $A5 $FE
.db $A6 $06 $A7

; 98th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DAEA to DB02 (25 bytes)
_DATA_DAEA_:
.db $08 $FC $FC $04 $04 $0C $14 $1C $24 $01 $A8 $09 $A9 $FB $AA $03
.db $AB $FA $A1 $F6 $A1 $F2 $A1 $F2 $AC

; 99th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DB03 to DB12 (16 bytes)
_DATA_DB03_:
.db $05 $FC $04 $14 $1C $24 $03 $AD $00 $AD $F8 $AE $F4 $AF $F0 $B0

; 100th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DB13 to DB1F (13 bytes)
_DATA_DB13_:
.db $04 $DC $E4 $EC $F4 $13 $A0 $0F $A1 $09 $A2 $06 $A3

; 101st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DB20 to DB32 (19 bytes)
_DATA_DB20_:
.db $06 $F4 $FC $FC $04 $04 $0C $05 $A4 $FF $A5 $07 $A6 $FC $A7 $04
.db $A8 $FB $A9

; 102nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DB33 to DB4B (25 bytes)
_DATA_DB33_:
.db $08 $FC $FC $04 $04 $0C $14 $1C $24 $FD $AA $05 $AB $00 $AC $08
.db $AD $FA $AE $F7 $AF $F3 $A1 $F1 $B0

; 103rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DB4C to DB61 (22 bytes)
_DATA_DB4C_:
.db $07 $F4 $FC $04 $0C $14 $1C $24 $03 $B1 $03 $B2 $FD $B3 $04 $B1
.db $F7 $B4 $F4 $B4 $F0 $B5

; 104th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DB62 to DB7A (25 bytes)
_DATA_DB62_:
.db $08 $D8 $E0 $E0 $E8 $E8 $F0 $F0 $F8 $10 $A0 $0C $A1 $14 $A2 $07
.db $A3 $0F $A4 $05 $A5 $0D $A6 $07 $A7

; 105th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DB7B to DB8D (19 bytes)
_DATA_DB7B_:
.db $06 $F0 $F8 $F8 $00 $00 $08 $03 $A8 $FF $A9 $07 $AA $FD $AB $05
.db $AC $01 $AD

; 106th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DB8E to DBA6 (25 bytes)
_DATA_DB8E_:
.db $08 $00 $00 $08 $08 $10 $10 $18 $18 $FB $AE $03 $AF $F8 $B0 $00
.db $B1 $F4 $B2 $FC $B3 $F2 $B4 $FA $B5

; 107th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DBA7 to DBB3 (13 bytes)
_DATA_DBA7_:
.db $04 $08 $18 $18 $20 $FA $B6 $F0 $B7 $F8 $B8 $F0 $B9

; 108th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DBB4 to DBC0 (13 bytes)
_DATA_DBB4_:
.db $04 $DC $E4 $EC $F4 $12 $A0 $0E $A1 $0A $A1 $08 $A2

; 109th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DBC1 to DBC7 (7 bytes)
_DATA_DBC1_:
.db $02 $FC $04 $02 $A3 $00 $A2

; 110th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DBC8 to DBDA (19 bytes)
_DATA_DBC8_:
.db $06 $FC $04 $0C $14 $1C $24 $00 $A4 $00 $A5 $FA $A3 $F6 $A1 $F2
.db $A1 $F0 $A6

; 111th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DBDB to DBF0 (22 bytes)
_DATA_DBDB_:
.db $07 $DC $E4 $EC $F4 $14 $1C $24 $F0 $A7 $F2 $A8 $F6 $A8 $FA $A9
.db $F9 $AA $F4 $AB $F0 $AC

; 112th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DBF1 to DBF7 (7 bytes)
_DATA_DBF1_:
.db $02 $FC $04 $00 $AD $02 $A9

; 113th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DBF8 to DC0A (19 bytes)
_DATA_DBF8_:
.db $06 $FC $04 $0C $14 $1C $24 $00 $AE $00 $AF $08 $AD $0A $A8 $0E
.db $A8 $12 $B0

; 114th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC0B to DC14 (10 bytes)
_DATA_DC0B_:
.db $03 $14 $1C $24 $0D $B1 $0F $B2 $12 $B3

; 115th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC15 to DC21 (13 bytes)
_DATA_DC15_:
.db $04 $DC $E4 $EC $F4 $F0 $A0 $F4 $A1 $F6 $A2 $FA $A2

; 116th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC22 to DC2E (13 bytes)
_DATA_DC22_:
.db $04 $F4 $FC $04 $0C $FC $A1 $FE $A2 $02 $A2 $06 $A3

; 117th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC2F to DC3E (16 bytes)
_DATA_DC2F_:
.db $05 $FC $04 $0C $14 $1C $00 $A4 $00 $A5 $06 $A2 $0A $A2 $0E $A3

; 118th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC3F to DC4B (13 bytes)
_DATA_DC3F_:
.db $04 $FC $04 $1C $24 $03 $A6 $FD $A6 $10 $A7 $14 $A8

; 119th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC4C to DC5E (19 bytes)
_DATA_DC4C_:
.db $06 $DC $E4 $EC $EC $F4 $F4 $F0 $A0 $F4 $A1 $F6 $A2 $FE $A3 $F8
.db $A4 $00 $A5

; 120th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC5F to DC77 (25 bytes)
_DATA_DC5F_:
.db $08 $F4 $F4 $FC $FC $04 $04 $0C $0C $F8 $A4 $00 $A5 $FD $A6 $05
.db $A7 $00 $A8 $08 $A7 $04 $A9 $0C $AA

; 121st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC78 to DC8D (22 bytes)
_DATA_DC78_:
.db $07 $FC $04 $0C $0C $14 $14 $1C $00 $AB $00 $AC $04 $A9 $0C $AA
.db $08 $AD $10 $A3 $0E $AE

; 122nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC8E to DC9A (13 bytes)
_DATA_DC8E_:
.db $04 $FC $04 $1C $24 $04 $AF $FC $AF $0E $B0 $14 $B1

; 72nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DC9B to DCA1 (7 bytes)
_DATA_DC9B_:
.db $02 $FC $04 $02 $A0 $02 $A1

; 73rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCA2 to DCA8 (7 bytes)
_DATA_DCA2_:
.db $02 $FC $04 $00 $A2 $00 $A3

; 74th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCA9 to DCAF (7 bytes)
_DATA_DCA9_:
.db $02 $04 $0C $04 $A4 $03 $A5

; 75th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCB0 to DCB9 (10 bytes)
_DATA_DCB0_:
.db $03 $0C $14 $1C $01 $A6 $FF $A7 $FD $A8

; 76th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCBA to DCCC (19 bytes)
_DATA_DCBA_:
.db $06 $2C $34 $3C $3C $44 $44 $02 $A9 $01 $AA $FD $AB $05 $AC $FD
.db $AD $05 $AE

; 77th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCCD to DCD9 (13 bytes)
_DATA_DCCD_:
.db $04 $44 $44 $4C $4C $FD $AF $05 $B0 $FC $B1 $04 $B2

; 78th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCDA to DCE0 (7 bytes)
_DATA_DCDA_:
.db $02 $44 $4C $00 $A2 $00 $A3

; 79th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCE1 to DCED (13 bytes)
_DATA_DCE1_:
.db $04 $44 $44 $4C $4C $FC $B3 $04 $B4 $FC $B5 $04 $B6

; 123rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCEE to DCF4 (7 bytes)
_DATA_DCEE_:
.db $02 $FC $04 $02 $A0 $02 $A1

; 124th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCF5 to DCFB (7 bytes)
_DATA_DCF5_:
.db $02 $FC $04 $00 $A2 $00 $A3

; 125th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DCFC to DD08 (13 bytes)
_DATA_DCFC_:
.db $04 $FC $04 $04 $0C $02 $A0 $02 $A4 $0A $A5 $03 $A6

; 126th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DD09 to DD1B (19 bytes)
_DATA_DD09_:
.db $06 $04 $0C $14 $1C $1C $24 $FC $A7 $FC $A8 $FC $A9 $FD $AA $05
.db $AB $02 $AC

; 127th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DD1C to DD3A (31 bytes)
_DATA_DD1C_:
.db $0A $0C $14 $14 $1C $24 $2C $2C $34 $3C $44 $03 $AD $FF $AE $07
.db $AF $FE $B0 $03 $B0 $FE $B1 $06 $B2 $FD $B3 $00 $B4 $00 $A3

; 128th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DD3B to DD47 (13 bytes)
_DATA_DD3B_:
.db $04 $44 $44 $4C $4C $FD $B5 $05 $B6 $FC $B7 $04 $B8

; 129th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DD48 to DD4E (7 bytes)
_DATA_DD48_:
.db $02 $44 $4C $00 $A2 $00 $A3

; 130th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DD4F to DD5B (13 bytes)
_DATA_DD4F_:
.db $04 $44 $44 $4C $4C $FC $B9 $04 $BA $FC $BB $04 $BC

; 59th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DD5C to DDA1 (70 bytes)
_DATA_DD5C_:
.db $17 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20
.db $20 $20 $28 $28 $28 $28 $28 $28 $0C $00 $14 $01 $1C $02 $24 $03
.db $2C $04 $0A $05 $12 $06 $1A $07 $22 $08 $2A $09 $32 $0A $0B $0B
.db $13 $0C $1B $0D $23 $0E $2B $0F $33 $10 $08 $11 $10 $12 $18 $13
.db $20 $13 $28 $14 $30 $15

; 60th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DDA2 to DDE7 (70 bytes)
_DATA_DDA2_:
.db $17 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20
.db $20 $20 $28 $28 $28 $28 $28 $28 $0C $16 $14 $17 $1C $18 $24 $19
.db $2C $1A $0B $1B $13 $1C $1B $1D $23 $1E $2B $1F $33 $20 $0B $0B
.db $13 $0C $1B $0D $23 $0E $2B $0F $33 $10 $08 $11 $10 $12 $18 $13
.db $20 $13 $28 $14 $30 $15

; 61st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DDE8 to DE3C (85 bytes)
_DATA_DDE8_:
.db $1C $08 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18
.db $18 $20 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $0F $21 $17
.db $22 $1F $22 $27 $23 $2F $24 $0F $25 $17 $26 $1F $26 $27 $27 $2F
.db $28 $0B $29 $13 $2A $1B $1D $23 $1E $2B $2B $33 $20 $0B $0B $13
.db $0C $1B $0D $23 $0E $2B $0F $33 $10 $08 $11 $10 $12 $18 $13 $20
.db $13 $28 $14 $30 $15

; 62nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DE3D to DE7F (67 bytes)
_DATA_DE3D_:
.db $16 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $28 $10 $2C $18 $2D $20 $2D $28 $2E $0B
.db $29 $13 $2A $1B $1D $23 $1E $2B $2B $33 $20 $0B $0B $13 $0C $1B
.db $0D $23 $0E $2B $0F $33 $10 $08 $11 $10 $12 $18 $13 $20 $13 $28
.db $14 $30 $15

; 63rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DE80 to DEC2 (67 bytes)
_DATA_DE80_:
.db $16 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $28 $10 $2C $18 $2D $20 $2D $28 $2E $0B
.db $29 $13 $2A $1B $2F $23 $30 $2B $2B $33 $20 $0B $0B $13 $0C $1B
.db $0D $23 $0E $2B $0F $33 $10 $08 $11 $10 $12 $18 $13 $20 $13 $28
.db $14 $30 $15

; 64th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DEC3 to DF05 (67 bytes)
_DATA_DEC3_:
.db $16 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $28 $10 $31 $18 $32 $20 $33 $28 $34 $0B
.db $35 $13 $36 $1B $37 $23 $38 $2B $39 $33 $3A $0B $3B $13 $3C $1B
.db $3D $23 $3E $2B $3F $33 $40 $08 $41 $10 $42 $18 $43 $20 $43 $28
.db $44 $30 $45

; 65th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DF06 to DF54 (79 bytes)
_DATA_DF06_:
.db $1A $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $18 $46 $20 $47 $28
.db $48 $10 $49 $18 $4A $20 $4B $28 $4C $30 $4D $0B $4E $13 $4F $1B
.db $50 $23 $51 $2B $52 $33 $53 $08 $54 $10 $55 $18 $56 $20 $57 $28
.db $58 $30 $59 $08 $5A $10 $5B $18 $5C $20 $5D $28 $5E $30 $5F

; 66th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DF55 to DFC7 (115 bytes)
_DATA_DF55_:
.db $26 $00 $00 $00 $00 $08 $08 $08 $08 $08 $08 $10 $10 $10 $10 $10
.db $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20 $20 $20 $20 $28
.db $28 $28 $28 $28 $28 $28 $28 $0D $60 $15 $61 $23 $62 $2B $63 $09
.db $64 $11 $65 $19 $66 $21 $67 $29 $68 $31 $69 $08 $6A $10 $6B $18
.db $6C $20 $6D $28 $6E $30 $6F $08 $70 $10 $71 $18 $72 $20 $73 $28
.db $74 $30 $75 $01 $76 $09 $77 $11 $78 $19 $79 $21 $7A $29 $7B $31
.db $7C $39 $7D $00 $7E $08 $7F $10 $80 $18 $81 $20 $82 $28 $83 $30
.db $84 $38 $85

; 67th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from DFC8 to E010 (73 bytes)
_DATA_DFC8_:
.db $18 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $18 $20 $20 $20
.db $20 $20 $20 $28 $28 $28 $28 $28 $28 $08 $86 $10 $2C $18 $2D $20
.db $2D $28 $2E $0B $29 $13 $87 $1B $88 $23 $1E $2B $2B $33 $89 $3B
.db $8A $0B $0B $13 $0C $1B $0D $23 $0E $2B $0F $33 $10 $08 $11 $10
.db $12 $18 $13 $20 $13 $28 $14 $30 $15

; 68th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E011 to E053 (67 bytes)
_DATA_E011_:
.db $16 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $28 $10 $2C $18 $2D $20 $2D $28 $2E $0B
.db $29 $13 $2A $1B $8B $23 $8C $2B $2B $33 $20 $0B $0B $13 $0C $1B
.db $0D $23 $0E $2B $0F $33 $10 $08 $11 $10 $12 $18 $13 $20 $13 $28
.db $14 $30 $15

; 69th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E054 to E096 (67 bytes)
_DATA_E054_:
.db $16 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $28 $10 $2C $18 $2D $20 $2D $28 $2E $0B
.db $29 $13 $2A $1B $8D $23 $1E $2B $2B $33 $20 $0B $0B $13 $0C $1B
.db $8E $23 $8F $2B $0F $33 $10 $08 $11 $10 $12 $18 $90 $20 $91 $28
.db $14 $30 $15

; 70th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E097 to E0DF (73 bytes)
_DATA_E097_:
.db $18 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $28 $30 $30 $10 $2C $18 $2D $20 $2D $28
.db $2E $0B $29 $13 $2A $1B $1D $23 $1E $2B $2B $33 $20 $0B $0B $13
.db $0C $1B $0D $23 $0E $2B $0F $33 $10 $08 $11 $10 $12 $18 $92 $20
.db $93 $28 $14 $30 $15 $18 $94 $20 $95

; 71st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E0E0 to E13A (91 bytes)
_DATA_E0E0_:
.db $1E $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $28 $30 $30 $38 $38 $38 $38 $40 $40 $10
.db $2C $18 $2D $20 $2D $28 $2E $0B $29 $13 $2A $1B $1D $23 $1E $2B
.db $2B $33 $20 $0B $0B $13 $0C $1B $0D $23 $0E $2B $0F $33 $10 $08
.db $11 $10 $12 $18 $96 $20 $97 $28 $14 $30 $15 $1A $98 $22 $99 $13
.db $9A $1B $9B $23 $9C $2B $9D $18 $9E $20 $9F

; 81st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E13B to E198 (94 bytes)
_DATA_E13B_:
.db $1F $00 $00 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20
.db $28 $28 $28 $28 $30 $30 $30 $38 $38 $40 $40 $48 $48 $50 $50 $50
.db $0A $00 $12 $01 $08 $02 $10 $03 $06 $04 $0E $05 $16 $06 $04 $07
.db $0C $08 $14 $09 $1C $0A $02 $0B $0A $0C $12 $0D $1A $0E $00 $0F
.db $08 $10 $10 $11 $18 $12 $00 $13 $08 $14 $10 $15 $09 $16 $11 $17
.db $0A $18 $12 $19 $0A $1A $12 $1B $04 $1C $0C $1D $14 $1E

; 82nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E199 to E1FC (100 bytes)
_DATA_E199_:
.db $21 $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $28 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40 $48 $48 $48 $50 $50
.db $50 $50 $09 $1F $11 $20 $09 $21 $11 $22 $03 $23 $0B $24 $13 $25
.db $1B $26 $03 $27 $0B $28 $13 $29 $1B $2A $05 $2B $0D $2C $15 $2D
.db $06 $2E $0E $2F $16 $30 $06 $31 $0E $32 $16 $33 $06 $34 $11 $35
.db $19 $36 $06 $37 $12 $38 $06 $39 $13 $3A $1B $3B $00 $3C $08 $3D
.db $10 $3E $18 $3F

; 83rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E1FD to E26C (112 bytes)
_DATA_E1FD_:
.db $25 $00 $00 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20
.db $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $40 $40 $40 $40 $48 $48
.db $48 $48 $50 $50 $50 $50 $0A $40 $12 $01 $08 $41 $10 $42 $06 $43
.db $0E $44 $16 $45 $03 $46 $0B $47 $13 $48 $1B $49 $02 $4A $0A $4B
.db $12 $4C $1A $4D $00 $4E $08 $4F $10 $50 $00 $51 $08 $52 $10 $53
.db $18 $54 $04 $55 $0C $56 $14 $57 $01 $58 $09 $59 $11 $5A $19 $5B
.db $02 $5C $0A $5D $12 $5E $1A $5F $03 $60 $0B $61 $13 $62 $1B $63

; 84th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E26D to E2D6 (106 bytes)
_DATA_E26D_:
.db $23 $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40 $40 $48 $48
.db $50 $50 $50 $50 $09 $64 $11 $65 $09 $66 $11 $67 $02 $68 $0A $69
.db $12 $6A $1A $6B $00 $6C $08 $6D $10 $6E $18 $6F $00 $70 $08 $71
.db $10 $72 $18 $73 $03 $74 $0B $75 $13 $76 $1B $77 $06 $78 $0E $79
.db $16 $7A $05 $7B $0D $7C $15 $7D $04 $7E $0C $7F $14 $80 $03 $81
.db $14 $82 $00 $83 $08 $84 $10 $85 $18 $86

; 85th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E2D7 to E34C (118 bytes)
_DATA_E2D7_:
.db $27 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18
.db $20 $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38
.db $40 $40 $48 $48 $50 $50 $50 $50 $0B $00 $13 $01 $1B $02 $0A $03
.db $12 $04 $1A $05 $22 $06 $08 $07 $10 $08 $18 $09 $20 $0A $08 $0B
.db $10 $0C $18 $0D $20 $0E $06 $0F $0E $10 $16 $11 $1E $12 $26 $13
.db $06 $14 $0E $15 $16 $16 $1E $17 $08 $18 $10 $19 $18 $1A $20 $1B
.db $0C $1C $14 $1D $1C $1E $0C $1F $1B $20 $0B $21 $1C $22 $08 $23
.db $10 $24 $18 $25 $20 $26

; 86th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E34D to E3B6 (106 bytes)
_DATA_E34D_:
.db $23 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20 $28
.db $28 $28 $30 $30 $30 $38 $38 $38 $38 $40 $40 $40 $40 $48 $48 $48
.db $50 $50 $50 $50 $0A $27 $12 $28 $03 $29 $0B $2A $13 $2B $1B $2C
.db $02 $2D $0A $2E $12 $2F $1A $30 $02 $31 $0A $32 $12 $33 $1A $34
.db $05 $35 $0D $36 $15 $37 $03 $38 $0B $39 $13 $3A $02 $3B $0A $3C
.db $12 $3D $1A $3E $02 $3F $0A $40 $12 $41 $1A $42 $04 $43 $0C $44
.db $14 $45 $00 $46 $08 $47 $10 $48 $18 $49

; 87th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E3B7 to E41D (103 bytes)
_DATA_E3B7_:
.db $22 $00 $00 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20
.db $28 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40 $40 $48 $48 $48 $50
.db $50 $50 $50 $0B $4A $13 $4B $08 $4C $10 $4D $04 $4E $0C $4F $14
.db $50 $02 $51 $0A $52 $12 $53 $1A $54 $02 $55 $0A $56 $12 $57 $1A
.db $58 $04 $59 $0C $5A $14 $5B $04 $5C $0C $5D $14 $5E $05 $5F $0D
.db $60 $15 $61 $06 $62 $0E $63 $16 $64 $05 $65 $0D $66 $15 $67 $04
.db $68 $0C $69 $14 $6A $1C $6B

; 88th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E41E to E49C (127 bytes)
_DATA_E41E_:
.db $2A $00 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40
.db $40 $40 $40 $48 $48 $48 $48 $50 $50 $50 $50 $05 $00 $0D $01 $15
.db $02 $06 $03 $0E $04 $16 $05 $01 $06 $09 $07 $11 $08 $19 $09 $00
.db $0A $08 $0B $10 $0C $18 $0D $00 $0E $08 $0F $10 $10 $18 $11 $02
.db $12 $0A $13 $12 $14 $1A $15 $02 $16 $0A $17 $12 $18 $1A $19 $01
.db $1A $09 $1B $11 $1C $19 $1D $01 $1E $09 $1F $11 $20 $19 $21 $03
.db $22 $0B $23 $13 $24 $1B $25 $00 $26 $08 $27 $10 $28 $18 $29

; 89th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E49D to E539 (157 bytes)
_DATA_E49D_:
.db $34 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30 $30 $30 $30
.db $30 $38 $38 $38 $38 $38 $40 $40 $40 $40 $40 $48 $48 $48 $48 $48
.db $50 $50 $50 $50 $50 $0B $00 $13 $01 $1B $02 $23 $03 $0B $04 $13
.db $05 $1B $06 $23 $07 $0B $08 $13 $09 $1B $0A $23 $07 $0A $0B $12
.db $0C $1A $0D $22 $0E $0A $0F $12 $10 $1A $11 $22 $12 $03 $13 $0B
.db $14 $13 $15 $1B $16 $23 $17 $2B $18 $02 $19 $0A $1A $12 $1B $1A
.db $1C $22 $1D $2A $1E $05 $1F $0D $20 $15 $21 $1D $22 $25 $23 $04
.db $24 $0C $25 $14 $26 $1C $27 $24 $28 $04 $29 $0C $2A $14 $2B $1C
.db $2C $24 $2D $04 $2E $0C $2F $14 $30 $1C $31 $24 $32

; 91st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E53A to E58E (85 bytes)
_DATA_E53A_:
.db $1C $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18
.db $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $30 $09 $00 $11
.db $01 $19 $02 $04 $03 $0C $04 $14 $05 $1C $06 $04 $07 $0C $08 $14
.db $09 $1C $0A $05 $0B $0D $0C $15 $0D $1D $0E $04 $0F $0C $10 $14
.db $11 $1C $12 $04 $13 $0C $14 $14 $15 $1C $16 $02 $17 $0A $18 $12
.db $19 $1A $1A $22 $1B

; 90th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E58F to E60A (124 bytes)
_DATA_E58F_:
.db $29 $00 $00 $00 $00 $08 $08 $08 $08 $08 $08 $10 $10 $10 $10 $10
.db $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20 $28 $28 $28 $28
.db $28 $28 $28 $30 $30 $30 $30 $30 $30 $30 $10 $1C $18 $1D $20 $1E
.db $28 $1F $08 $20 $10 $21 $18 $22 $20 $23 $28 $24 $30 $25 $08 $26
.db $10 $27 $18 $28 $20 $29 $28 $2A $30 $2B $01 $2C $09 $2D $11 $2E
.db $19 $2F $21 $30 $29 $31 $08 $32 $10 $33 $18 $34 $20 $35 $28 $36
.db $00 $37 $08 $38 $10 $39 $18 $3A $20 $3B $28 $3C $30 $3D $00 $3E
.db $08 $3F $10 $40 $18 $41 $20 $42 $28 $43 $30 $44

; 92nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E60B to E680 (118 bytes)
_DATA_E60B_:
.db $27 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40 $40
.db $40 $40 $48 $48 $50 $50 $50 $50 $08 $00 $10 $01 $05 $02 $0D $03
.db $15 $04 $04 $05 $0C $06 $14 $07 $1C $08 $01 $09 $09 $0A $11 $0B
.db $19 $0C $00 $0D $08 $0E $10 $0F $18 $10 $01 $11 $09 $12 $11 $13
.db $19 $14 $00 $0D $08 $0E $10 $0F $18 $10 $01 $11 $09 $12 $11 $13
.db $19 $14 $01 $15 $09 $16 $11 $17 $19 $18 $08 $19 $10 $1A $00 $1B
.db $08 $1C $10 $1D $18 $1E

; 93rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E681 to E6F6 (118 bytes)
_DATA_E681_:
.db $27 $00 $00 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20
.db $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40 $40 $40 $40
.db $48 $48 $48 $48 $50 $50 $50 $50 $0A $00 $12 $01 $0A $02 $12 $03
.db $05 $04 $0D $05 $15 $06 $00 $07 $08 $08 $10 $09 $18 $0A $00 $0B
.db $08 $0C $10 $0D $18 $0E $00 $0F $08 $10 $10 $11 $18 $12 $00 $13
.db $08 $14 $10 $15 $18 $16 $00 $17 $08 $18 $10 $19 $18 $1A $00 $1B
.db $08 $18 $10 $1C $18 $1D $00 $1E $08 $18 $10 $19 $18 $1F $00 $20
.db $08 $21 $10 $22 $18 $23

; 94th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E6F7 to E787 (145 bytes)
_DATA_E6F7_:
.db $30 $00 $00 $00 $08 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18
.db $18 $18 $18 $20 $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $30
.db $38 $38 $38 $38 $40 $40 $40 $40 $48 $48 $48 $48 $50 $50 $50 $50
.db $50 $0E $00 $16 $01 $1E $02 $01 $03 $09 $04 $11 $05 $19 $06 $21
.db $07 $01 $08 $09 $09 $11 $0A $19 $0B $21 $0C $00 $0D $08 $0E $10
.db $0F $18 $10 $20 $11 $00 $12 $0A $13 $12 $14 $1A $15 $22 $16 $01
.db $17 $09 $18 $11 $19 $19 $1A $06 $1B $0E $1C $16 $1D $1E $1E $04
.db $1F $0C $20 $17 $21 $1F $22 $02 $23 $0A $24 $17 $25 $1F $26 $02
.db $27 $0A $28 $18 $29 $20 $2A $00 $2B $08 $2C $10 $2D $18 $2E $20
.db $2F

; 95th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E788 to E815 (142 bytes)
_DATA_E788_:
.db $2F $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $38 $40
.db $40 $40 $40 $40 $48 $48 $48 $48 $48 $48 $50 $50 $50 $50 $50 $50
.db $12 $00 $1A $01 $0F $02 $17 $03 $1F $04 $0C $05 $14 $06 $1C $07
.db $24 $08 $0A $09 $12 $0A $1A $0B $22 $0C $0A $0D $12 $0E $1A $0F
.db $22 $10 $0A $11 $12 $12 $1A $13 $22 $14 $0A $15 $12 $16 $1A $17
.db $22 $18 $07 $19 $0F $1A $17 $1B $1F $1C $27 $1D $04 $1E $0C $1F
.db $14 $20 $1C $21 $24 $22 $02 $23 $0A $24 $12 $25 $1A $26 $22 $27
.db $2A $28 $02 $29 $0A $2A $12 $2B $1A $2C $22 $2D $2A $2E

; 131st entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E816 to E873 (94 bytes)
_DATA_E816_:
.db $1F $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $28 $28 $28 $30 $30
.db $30 $38 $38 $38 $40 $40 $48 $48 $50 $50 $50 $08 $10 $18 $20 $28
.db $08 $00 $10 $01 $06 $02 $0E $03 $08 $04 $10 $05 $08 $06 $10 $07
.db $08 $08 $10 $09 $05 $0A $0D $0B $15 $0C $04 $0D $0C $0E $14 $0F
.db $05 $10 $0D $11 $15 $12 $05 $13 $0D $14 $06 $15 $0E $16 $00 $17
.db $08 $18 $10 $19 $01 $1A $00 $1B $00 $1C $00 $1D $02 $1E

; 132nd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E874 to E8D1 (94 bytes)
_DATA_E874_:
.db $1F $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $28 $28 $28 $30 $30
.db $30 $38 $38 $38 $40 $40 $48 $48 $50 $50 $50 $08 $10 $18 $20 $28
.db $08 $00 $10 $01 $06 $02 $0E $03 $08 $04 $10 $05 $08 $06 $10 $07
.db $08 $08 $10 $09 $05 $0A $0D $0B $15 $0C $04 $0D $0C $0E $14 $0F
.db $05 $10 $0D $11 $15 $12 $05 $13 $0D $14 $06 $15 $0E $16 $00 $17
.db $08 $18 $10 $19 $02 $2E $02 $2F $01 $30 $00 $29 $02 $1E

; 133rd entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E8D2 to E8E1 (16 bytes)
_DATA_E8D2_:
.db $05 $00 $00 $00 $08 $08 $00 $00 $08 $01 $10 $02 $08 $03 $10 $04

; 134th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E8E2 to E8F1 (16 bytes)
_DATA_E8E2_:
.db $05 $00 $00 $08 $08 $08 $04 $05 $0C $06 $00 $07 $08 $08 $10 $09

; 135th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E8F2 to E901 (16 bytes)
_DATA_E8F2_:
.db $05 $00 $00 $08 $08 $08 $06 $0A $0E $0B $02 $0C $0A $0D $12 $0E

; 137th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E902 to E911 (16 bytes)
_DATA_E902_:
.db $05 $00 $08 $08 $08 $10 $0B $0F $01 $10 $09 $11 $11 $12 $08 $13

; 138th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E912 to E921 (16 bytes)
_DATA_E912_:
.db $05 $00 $08 $08 $08 $10 $0B $0F $01 $14 $09 $15 $11 $16 $08 $13

; 139th entry of Pointer Table from D6F4 (indexed by _RAM_C800_)
; Data from E922 to EF5B (1594 bytes)
_DATA_E922_:
.incbin "Phantasy Star (UE) (V1.2) [!]_e922.inc"

; Data from EF5C to F472 (1303 bytes)
_DATA_EF5C_:
.incbin "Phantasy Star (UE) (V1.2) [!]_ef5c.inc"

; Data from F473 to F5B8 (326 bytes)
_DATA_F473_:
.db $00 $EE $05 $27 $12 $00 $5C $FF $7F $00 $00 $1E $07 $14 $2D $00
.db $EC $00 $54 $4E $00 $6A $00 $12 $79 $00 $14 $00 $07 $74 $01 $34
.db $FF $84 $33 $01 $75 $FF $85 $33 $01 $79 $FF $81 $00 $01 $87 $FF
.db $86 $33 $01 $8C $FF $87 $33 $01 $C5 $FF $83 $33 $02 $11 $0A $51
.db $13 $02 $EE $0A $51 $21 $04 $E8 $00 $65 $22 $04 $DA $FF $89 $32
.db $06 $43 $FF $8A $32 $07 $A8 $FF $8B $32 $08 $81 $FF $8F $32 $08
.db $8C $FF $01 $00 $0B $C9 $00 $19 $69 $0F $C5 $FF $8E $32 $0F $1D
.db $FE $B0 $00 $10 $65 $FF $7C $2F $13 $3C $FF $80 $33 $14 $11 $00
.db $26 $68 $14 $DB $00 $29 $69 $14 $49 $FF $94 $33 $14 $4D $FF $95
.db $33 $14 $63 $FF $99 $17 $14 $79 $FF $A8 $3C $14 $7D $FF $97 $33
.db $14 $83 $FF $98 $33 $14 $A4 $FF $96 $1B $15 $3E $FF $92 $0F $15
.db $CC $FF $9A $32 $16 $11 $00 $30 $18 $16 $1D $FF $8C $33 $16 $EE
.db $00 $3A $1B $19 $2E $FF $8D $32 $1D $78 $FF $7E $00 $1F $CE $FC
.db $AB $00 $21 $51 $0E $18 $1D $21 $E4 $0E $23 $22 $27 $E3 $01 $79
.db $5D $27 $EC $11 $44 $54 $28 $13 $13 $15 $13 $28 $5B $15 $14 $60
.db $28 $97 $16 $24 $20 $28 $ED $14 $17 $39 $2B $76 $FF $A5 $3C $2B
.db $98 $FF $B1 $3C $2E $3D $FF $9C $3D $2F $D1 $02 $75 $23 $2F $DE
.db $02 $75 $35 $30 $1E $02 $2B $5F $30 $77 $02 $63 $17 $30 $89 $02
.db $38 $5F $30 $EE $02 $70 $20 $31 $1D $02 $38 $43 $31 $E1 $02 $3B
.db $2B $32 $49 $02 $49 $10 $32 $EB $02 $58 $11 $39 $CB $FD $9F $00
.db $3A $98 $FF $B2 $1D $FF

; Data from F5B9 to F618 (96 bytes)
_DATA_F5B9_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $07 $0B $00 $02 $1F $03 $07 $0B
.db $18 $1C $00 $14 $2E $19 $1D $2E $34 $38 $00 $20 $3C $30 $34 $38
.db $30 $34 $00 $10 $38 $10 $20 $30 $25 $2A $00 $10 $3F $20 $25 $2A
.db $0B $0F $00 $06 $3F $0B $0F $3F $1B $1F $00 $06 $3F $17 $1B $1F
.db $02 $03 $00 $01 $07 $01 $02 $03 $38 $3C $00 $00 $3F $00 $00 $00
.db $38 $3C $00 $30 $3F $34 $38 $3C $08 $0C $00 $04 $3F $04 $08 $0C

; Data from F619 to F61B (3 bytes)
_DATA_F619_:
.db $19 $5B $03

; Data from F61C to F716 (251 bytes)
_DATA_F61C_:
.db $86 $00 $00 $04 $86 $00 $00 $01 $86 $19 $56 $00 $91 $19 $53 $00
.db $91 $19 $5E $00 $91 $19 $53 $00 $91 $19 $55 $00 $91 $19 $57 $00
.db $91 $19 $57 $00 $91 $19 $53 $00 $91 $19 $56 $00 $91 $19 $56 $00
.db $91 $19 $55 $00 $91 $19 $57 $00 $91 $00 $00 $00 $91 $19 $5C $03
.db $86 $19 $5C $03 $86 $19 $5C $03 $86 $19 $5C $03 $86 $00 $00 $02
.db $86 $00 $00 $02 $86 $19 $4D $03 $86 $19 $4D $01 $91 $19 $5D $01
.db $91 $19 $5D $01 $91 $19 $5E $01 $91 $19 $53 $01 $91 $19 $4B $06
.db $86 $19 $4B $06 $86 $19 $4B $06 $86 $19 $54 $05 $85 $19 $58 $05
.db $85 $00 $00 $05 $85 $19 $52 $06 $86 $19 $4F $06 $86 $19 $4B $06
.db $86 $19 $50 $06 $86 $19 $50 $06 $86 $19 $4B $06 $86 $19 $4C $09
.db $86 $19 $51 $09 $86 $19 $51 $09 $86 $19 $52 $07 $91 $19 $4F $07
.db $91 $19 $4F $07 $91 $19 $56 $07 $91 $19 $50 $08 $86 $19 $51 $08
.db $86 $19 $4F $08 $86 $19 $5A $08 $86 $19 $59 $08 $86 $19 $59 $08
.db $86 $19 $55 $05 $91 $19 $53 $05 $91 $19 $57 $05 $91 $19 $57 $05
.db $91 $19 $58 $05 $91 $19 $59 $09 $86 $19 $01 $0A $91 $19 $01 $02
.db $91 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from F717 to F82E (280 bytes)
_DATA_F717_:
.db $02 $19 $1E $00 $1B $08 $02 $1C $78 $05 $02 $27 $14 $00 $28 $0A
.db $00 $29 $30 $00 $01 $24 $0A $00 $25 $28 $00 $00 $00 $00 $02 $03
.db $4B $00 $07 $40 $01 $08 $60 $04 $02 $27 $14 $00 $28 $0A $00 $39
.db $78 $05 $01 $24 $0A $00 $25 $28 $00 $00 $00 $00 $02 $10 $1C $00
.db $12 $22 $01 $15 $E8 $03 $02 $27 $14 $00 $29 $30 $00 $40 $C8 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $01 $24 $0A $00 $25 $28
.db $00 $00 $00 $00 $02 $27 $14 $00 $28 $0A $00 $34 $64 $00 $02 $02
.db $1E $00 $14 $76 $02 $16 $98 $3A $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $02 $06 $40 $00 $09 $90 $01 $1A $36 $01 $02 $27 $14 $00
.db $29 $30 $00 $39 $78 $05 $02 $11 $4E $00 $0B $04 $06 $0A $54 $06
.db $02 $01 $19 $00 $13 $54 $00 $1E $C0 $12 $02 $27 $14 $00 $2A $14
.db $00 $39 $78 $05 $02 $24 $0A $00 $25 $28 $00 $2C $40 $06 $01 $24
.db $0A $00 $25 $28 $00 $00 $00 $00 $02 $0B $04 $06 $0C $A4 $0B $1C
.db $78 $05 $02 $27 $14 $00 $29 $30 $00 $2E $1E $00 $00 $21 $50 $14
.db $00 $00 $00 $00 $00 $00 $02 $04 $B0 $04 $0D $18 $10 $1D $E4 $0C
.db $02 $27 $14 $00 $2A $14 $00 $2E $1E $00 $01 $24 $0A $00 $25 $28
.db $00 $00 $00 $00 $00 $23 $E0 $2E $00 $00 $00 $00 $00 $00 $02 $27
.db $14 $00 $28 $0A $00 $29 $30 $00

; Data from F82F to F8A6 (120 bytes)
_DATA_F82F_:
.db $00 $00 $0C $00 $0F $00 $25 $00 $58 $02 $5E $01 $20 $00 $A0 $00
.db $30 $02 $C8 $00 $2A $03 $02 $03 $D2 $05 $0C $08 $F4 $01 $86 $01
.db $0E $00 $27 $00 $91 $00 $2A $00 $3B $01 $F4 $01 $4C $1D $EA $01
.db $A4 $01 $0F $00 $9B $00 $04 $01 $BC $02 $72 $06 $60 $09 $00 $00
.db $9A $01 $00 $00 $00 $00 $70 $17 $05 $00 $14 $00 $A0 $00 $0A $00
.db $05 $00 $18 $00 $0A $00 $00 $00 $20 $03 $00 $00 $0F $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $32 $00 $00 $00 $8C $00 $00 $00
.db $00 $00 $BC $02 $00 $00 $F4 $01

; Data from F8A7 to F8AE (8 bytes)
_DATA_F8A7_:
.db $00 $00 $00 $00 $00 $00 $00 $00

; Data from F8AF to F996 (232 bytes)
_DATA_F8AF_:
.db $10 $08 $08 $00 $00 $00 $00 $00 $14 $0A $0B $00 $14 $00 $00 $00
.db $19 $0C $0F $00 $32 $00 $00 $00 $22 $0E $14 $04 $64 $00 $01 $01
.db $2D $0F $18 $06 $E6 $00 $02 $01 $36 $12 $1B $08 $4A $01 $03 $01
.db $42 $15 $1E $0A $C2 $01 $03 $01 $4C $17 $21 $0C $58 $02 $03 $01
.db $51 $18 $28 $0D $20 $03 $03 $01 $5D $19 $33 $0E $1A $04 $03 $01
.db $63 $1B $3C $0F $14 $05 $03 $01 $6F $1E $40 $10 $A4 $06 $04 $01
.db $7B $1F $44 $12 $98 $08 $04 $01 $84 $22 $4B $14 $F0 $0A $05 $01
.db $8C $24 $50 $16 $AC $0D $05 $01 $99 $26 $55 $16 $04 $10 $05 $02
.db $9F $28 $5A $18 $88 $13 $05 $02 $A6 $29 $60 $18 $70 $17 $05 $02
.db $AD $2B $64 $19 $20 $1C $05 $02 $B6 $2C $6B $19 $34 $21 $05 $02
.db $BB $2E $6E $1A $10 $27 $05 $02 $C0 $30 $70 $1A $E0 $2E $05 $02
.db $C8 $31 $71 $1B $A4 $38 $05 $02 $CC $32 $72 $1C $5C $44 $05 $02
.db $D0 $33 $73 $1D $D8 $59 $05 $02 $D2 $34 $77 $1D $30 $75 $05 $02
.db $D4 $35 $75 $1E $70 $94 $05 $02 $D6 $36 $76 $1E $C8 $AF $05 $02
.db $D8 $37 $77 $20 $20 $CB $05 $02

; Data from F997 to F99E (8 bytes)
_DATA_F997_:
.db $DA $38 $78 $20 $18 $F6 $05 $02

; Data from F99F to FA86 (232 bytes)
_DATA_F99F_:
.db $16 $12 $16 $00 $00 $00 $00 $00 $1E $15 $1A $00 $32 $00 $00 $00
.db $26 $19 $1F $00 $78 $00 $00 $00 $2A $1C $22 $00 $DC $00 $00 $00
.db $2C $1F $26 $00 $5E $01 $00 $00 $36 $23 $29 $0C $A8 $02 $01 $01
.db $3C $27 $2D $0F $B6 $03 $01 $01 $40 $2A $35 $11 $7E $04 $01 $01
.db $46 $2D $37 $13 $78 $05 $02 $01 $4E $30 $3C $15 $A4 $06 $02 $01
.db $54 $32 $3F $16 $34 $08 $02 $01 $5A $33 $44 $17 $28 $0A $03 $01
.db $74 $34 $47 $19 $80 $0C $03 $01 $76 $38 $4A $1B $3C $0F $03 $01
.db $79 $3B $50 $1E $94 $11 $03 $02 $84 $3D $55 $22 $50 $14 $03 $02
.db $8E $3F $59 $24 $D4 $17 $03 $03 $96 $43 $5F $26 $58 $1B $03 $03
.db $9B $46 $64 $28 $08 $20 $03 $03 $A2 $49 $66 $2C $1C $25 $04 $03
.db $AF $4C $68 $2E $04 $29 $04 $03 $B7 $4D $6A $2F $C8 $32 $04 $03
.db $C1 $4F $6C $30 $98 $3A $04 $03 $CA $50 $70 $31 $50 $46 $04 $03
.db $D0 $51 $71 $32 $F0 $55 $04 $03 $D2 $52 $72 $33 $30 $75 $04 $03
.db $D3 $53 $73 $34 $A0 $8C $04 $03 $D4 $54 $74 $35 $10 $A4 $04 $03
.db $D5 $55 $75 $36 $50 $C3 $04 $03

; Data from FA87 to FA8E (8 bytes)
_DATA_FA87_:
.db $D6 $56 $76 $37 $60 $EA $04 $03

; Data from FA8F to FB76 (232 bytes)
_DATA_FA8F_:
.db $2A $0D $0D $00 $00 $00 $00 $00 $2F $0F $0F $00 $50 $00 $00 $00
.db $34 $11 $11 $00 $A0 $00 $00 $00 $39 $12 $13 $00 $FA $00 $00 $00
.db $3C $13 $15 $00 $5E $01 $00 $00 $3F $14 $17 $00 $E0 $01 $00 $00
.db $43 $15 $19 $00 $76 $02 $00 $00 $4B $17 $1B $00 $52 $03 $00 $00
.db $52 $18 $1D $00 $4C $04 $00 $00 $5E $19 $1F $00 $78 $05 $00 $00
.db $64 $1A $22 $00 $08 $07 $00 $00 $6B $1B $25 $00 $FC $08 $00 $00
.db $74 $1C $28 $00 $B8 $0B $00 $00 $81 $1E $2B $00 $D8 $0E $00 $00
.db $83 $1F $2D $00 $04 $10 $00 $00 $87 $20 $2F $00 $88 $13 $00 $00
.db $8C $21 $31 $00 $70 $17 $00 $00 $93 $23 $35 $00 $E8 $1C $00 $00
.db $96 $24 $38 $00 $28 $23 $00 $00 $9C $25 $3D $00 $04 $29 $00 $00
.db $A2 $26 $41 $00 $E0 $2E $00 $00 $A9 $27 $42 $00 $BC $34 $00 $00
.db $AF $28 $43 $00 $8C $3C $00 $00 $B3 $29 $44 $00 $5C $44 $00 $00
.db $BB $2A $45 $00 $20 $4E $00 $00 $BC $2B $46 $00 $60 $6D $00 $00
.db $BD $2C $47 $00 $B8 $88 $00 $00 $BE $2D $48 $00 $28 $A0 $00 $00
.db $BF $2E $49 $00 $50 $C3 $00 $00

; Data from FB77 to FB7E (8 bytes)
_DATA_FB77_:
.db $C0 $2F $4A $00 $60 $EA $00 $00

; Data from FB7F to FC6E (240 bytes)
_DATA_FB7F_:
.db $2D $12 $1E $0C $00 $00 $01 $01 $31 $16 $24 $12 $46 $00 $01 $01
.db $36 $17 $29 $16 $96 $00 $01 $01 $39 $1A $2F $19 $FA $00 $01 $01
.db $3D $1D $35 $1C $7C $01 $01 $01 $41 $1E $3C $20 $08 $02 $01 $02
.db $47 $20 $41 $24 $BC $02 $01 $02 $4F $22 $47 $24 $20 $03 $02 $03
.db $53 $24 $4B $29 $84 $03 $02 $03 $59 $26 $52 $2B $4C $04 $02 $03
.db $5F $28 $55 $2E $78 $05 $02 $03 $65 $29 $58 $30 $6C $07 $03 $03
.db $6B $2B $5C $31 $C4 $09 $03 $03 $70 $2D $60 $32 $E4 $0C $04 $03
.db $76 $2F $63 $34 $68 $10 $04 $03 $7C $30 $64 $36 $B4 $14 $04 $03
.db $83 $32 $67 $3A $64 $19 $04 $04 $89 $35 $6A $3E $60 $22 $05 $04
.db $8F $39 $6C $42 $10 $27 $05 $04 $9B $3C $6E $46 $E0 $2E $05 $05
.db $A1 $3E $70 $48 $B0 $36 $05 $05 $A8 $40 $73 $4B $B8 $3D $05 $05
.db $AC $42 $74 $4C $50 $46 $05 $05 $BA $44 $75 $4D $2C $4C $05 $05
.db $BE $46 $76 $4E $08 $52 $05 $05 $BF $47 $77 $4F $A8 $61 $05 $05
.db $C0 $48 $78 $50 $30 $75 $05 $05 $C1 $49 $79 $51 $70 $94 $05 $05
.db $C2 $4A $7A $52 $C8 $AF $05 $05 $C3 $4B $7B $53 $50 $C3 $05 $05

; Data from FC6F to FE1C (430 bytes)
_DATA_FC6F_:
.db $12 $12 $12 $12 $12 $12 $12 $22 $22 $12 $8A $8A $8A $8A $22 $13
.db $13 $13 $13 $13 $13 $13 $13 $52 $52 $52 $52 $52 $52 $52 $52 $52
.db $52 $12 $12 $12 $12 $B2 $52 $9A $9A $9A $9A $13 $13 $13 $13 $13
.db $13 $13 $13 $13 $13 $1A $13 $40 $40 $40 $40 $41 $41 $41 $41 $41
.db $41 $41 $41 $31 $31 $52 $52 $52 $52 $32 $32 $32 $32 $32 $32 $32
.db $32 $32 $1A $1A $1A $1A $1A $1A $1A $1A $1A $12 $12 $22 $26 $74
.db $74 $74 $74 $74 $13 $13 $13 $13 $13 $13 $53 $53 $5A $5A $63 $63
.db $6A $6A $13 $13 $13 $13 $9A $9A $9A $9A $1A $1A $1A $1A $1A $1A
.db $1A $1A $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12
.db $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12
.db $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $12
.db $12 $12 $12 $12 $12 $12 $12 $12 $12 $12 $13 $13 $13 $13 $13 $13
.db $13 $13 $62 $56 $56 $56 $56 $B6 $12 $12 $12 $12 $12 $12 $B6 $B6
.db $B6 $B6 $43 $12 $12 $12 $12 $66 $63 $63 $63 $63 $63 $63 $63 $63
.db $12 $12 $12 $12 $12 $12 $12 $12 $1A $1A $1A $1A $12 $12 $12 $62
.db $C2 $12 $43 $43 $43 $43 $6A $10 $10 $10 $10 $10 $10 $10 $10 $10
.db $82 $82 $83 $83 $83 $83 $83 $83 $83 $83 $83 $83 $8A $8A $83 $83
.db $8A $8A $83 $83 $8A $8A $83 $83 $8A $8A $83 $83 $8A $8A $83 $83
.db $8A $8A $83 $83 $83 $83 $83 $83 $83 $83 $83 $82 $82 $83 $83 $83
.db $83 $83 $83 $83 $83 $83 $83 $83 $83 $83 $83 $83 $83 $83 $83 $83
.db $83 $83 $83 $83 $83 $83 $8A $83 $8A $82 $82 $82 $A4 $A3 $A3 $A3
.db $A3 $A3 $A3 $AA $AA $AA $AA $A2 $A2 $A2 $A2 $12 $A3 $A2 $AA $A2
.db $83 $83 $8A $8A $83 $8A $83 $93 $93 $93 $93 $93 $93 $93 $93 $93
.db $93 $93 $93 $93 $93 $93 $93 $92 $93 $93 $9A $9A $93 $93 $9A $9A
.db $93 $93 $9A $9A $93 $93 $9A $9A $93 $93 $9A $9A $93 $9A $93 $9A
.db $93 $9A $A2 $A3 $A2 $AA $83 $83 $83 $83 $1A $1A $1A $1A $83 $83
.db $83 $83 $83 $8A $8A $83 $83 $A2 $A2 $A2 $92 $92 $92 $16

; Data from FE1D to FE4C (48 bytes)
_DATA_FE1D_:
.db $3C $38 $3C $3C $3F $3C $38 $38 $3E $3C $3E $3E $3F $3E $3C $3C
.db $3F $3E $3F $3F $3F $3F $3E $3E $3F $2B $0F $2F $2F $3E $3C $0F
.db $2F $06 $0B $1F $0F $3C $38 $0B $2B $01 $06 $0F $0B $2A $25 $06

; Data from FE4D to FE51 (5 bytes)
_DATA_FE4D_:
.db $0C $08 $04 $03 $0B

; Data from FE52 to FE81 (48 bytes)
_DATA_FE52_:
.db $34 $38 $35 $3C $38 $3E $3C $3E $3D $3E $2C $3E $1E $3E $0C $3E
.db $0E $3E $0F $3E $1B $3E $0B $3E $07 $3E $27 $3E $37 $3E $3B $3E
.db $3A $3E $36 $3E $35 $3E $34 $3E $38 $3E $35 $3C $34 $38 $30 $2A

; Data from FE82 to FECF (78 bytes)
_DATA_FE82_:
.db $34 $34 $34 $34 $34 $34 $35 $35 $35 $35 $35 $35 $38 $38 $38 $38
.db $38 $38 $38 $38 $38 $38 $3C $38 $38 $3C $38 $3C $3E $38 $38 $3E
.db $3C $3E $3F $38 $3C $3F $3E $3F $3F $3C $3E $3F $3F $3F $3F $3E
.db $3F $3F $3F $3F $3F $3F $2F $3F $2F $3F $3F $3D $1F $2F $0F $2F
.db $3F $2C $1A $0F $0B $1F $2F $2C $15 $0B $06 $1A $2F $28

; Data from FED0 to FFFF (304 bytes)
_DATA_FED0_:
.db $30 $2A $34 $38 $38 $3E $3C $3E $3E $3F $3F $3F $3E $3F $3C $3E
.db $38 $3E $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 4
.ORG $0000

; Data from 10000 to 13FFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_10000.inc"

.BANK 5
.ORG $0000

; Data from 14000 to 17FFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_14000.inc"

.BANK 6
.ORG $0000

; Data from 18000 to 1AC4F (11344 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_18000.inc"

; 1st entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1AC50 to 1ADFF (432 bytes)
_DATA_1AC50_:
.db $2F $00 $30 $00 $30 $00 $30 $00 $30 $00 $30 $00 $30 $00 $30 $00
.db $30 $00 $30 $00 $30 $00 $2F $02 $31 $00 $32 $00 $33 $00 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $33 $02 $32 $02 $31 $02
.db $31 $00 $32 $00 $33 $00 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $33 $02 $32 $02 $31 $02 $31 $00 $32 $00 $33 $00 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $33 $02 $32 $02 $31 $02
.db $35 $00 $36 $00 $33 $00 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $33 $02 $36 $02 $35 $02 $31 $00 $37 $00 $38 $00 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $38 $02 $37 $02 $31 $02
.db $31 $00 $32 $00 $33 $00 $34 $00 $39 $00 $3A $00 $3A $00 $39 $02
.db $34 $00 $33 $02 $32 $02 $31 $02 $31 $04 $32 $04 $33 $04 $3B $00
.db $3C $00 $3C $00 $3C $00 $3C $00 $3B $02 $33 $06 $32 $06 $31 $06
.db $31 $04 $37 $04 $38 $04 $3D $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $3D $02 $38 $06 $37 $06 $31 $06 $35 $04 $36 $04 $3E $00 $3F $00
.db $40 $00 $40 $00 $40 $00 $40 $00 $3F $02 $3E $02 $36 $06 $35 $06
.db $31 $04 $32 $04 $41 $00 $42 $00 $42 $00 $42 $00 $42 $00 $42 $00
.db $42 $00 $41 $02 $32 $06 $31 $06 $31 $04 $43 $00 $44 $00 $45 $00
.db $45 $00 $45 $00 $45 $00 $45 $00 $45 $00 $44 $02 $43 $02 $31 $06
.db $31 $04 $46 $00 $47 $00 $48 $00 $48 $00 $48 $00 $48 $00 $48 $00
.db $48 $00 $47 $02 $46 $02 $31 $06 $49 $00 $32 $04 $4A $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $4A $02 $32 $06 $49 $02
.db $31 $04 $32 $04 $4B $00 $4C $00 $4C $00 $4C $00 $4C $00 $4C $00
.db $4C $00 $4B $02 $32 $06 $31 $06 $31 $04 $4D $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $4D $02 $31 $06
.db $31 $04 $4E $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $4E $02 $31 $06 $4F $00 $42 $04 $42 $04 $42 $04
.db $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $4F $02

; 2nd entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1AE00 to 1AFAF (432 bytes)
_DATA_1AE00_:
.db $2F $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00
.db $50 $00 $50 $00 $50 $00 $2F $02 $31 $00 $51 $00 $52 $00 $52 $00
.db $52 $00 $52 $00 $52 $02 $52 $02 $52 $02 $52 $02 $51 $02 $31 $02
.db $31 $00 $43 $04 $53 $00 $54 $00 $54 $00 $54 $00 $54 $00 $54 $00
.db $54 $00 $53 $02 $43 $06 $31 $02 $31 $00 $32 $00 $55 $00 $56 $00
.db $57 $00 $57 $00 $57 $02 $57 $02 $56 $02 $55 $02 $32 $02 $31 $02
.db $58 $00 $36 $00 $33 $00 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $33 $02 $36 $02 $58 $02 $31 $00 $37 $00 $38 $00 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $38 $02 $37 $02 $31 $02
.db $31 $00 $32 $00 $33 $00 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $33 $02 $32 $02 $31 $02 $31 $04 $32 $04 $33 $04 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $33 $06 $32 $06 $31 $06
.db $31 $04 $37 $04 $38 $04 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $38 $06 $37 $06 $31 $06 $58 $04 $36 $04 $33 $04 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $33 $06 $36 $06 $58 $06
.db $31 $04 $32 $04 $59 $00 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $59 $02 $32 $06 $31 $06 $31 $04 $43 $00 $5A $00 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $5A $02 $43 $02 $31 $06
.db $31 $04 $46 $00 $33 $04 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $33 $06 $46 $02 $31 $06 $49 $00 $32 $04 $5B $00 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $5B $02 $32 $06 $49 $02
.db $31 $04 $32 $04 $5C $00 $5D $00 $5E $00 $5F $00 $5F $00 $5E $02
.db $5D $02 $5C $02 $32 $06 $31 $06 $31 $04 $4D $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $4D $02 $31 $06
.db $31 $04 $4E $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $4E $02 $31 $06 $4F $00 $42 $04 $42 $04 $42 $04
.db $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $4F $02

; 3rd entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1AFB0 to 1B15F (432 bytes)
_DATA_1AFB0_:
.db $60 $00 $61 $00 $61 $00 $61 $00 $61 $00 $62 $00 $62 $02 $61 $00
.db $61 $00 $61 $00 $61 $00 $60 $02 $63 $00 $64 $00 $65 $00 $65 $00
.db $65 $00 $66 $00 $66 $02 $65 $00 $65 $00 $65 $00 $64 $02 $63 $02
.db $63 $00 $67 $00 $10 $00 $10 $00 $10 $00 $68 $00 $68 $02 $10 $00
.db $10 $00 $10 $00 $67 $02 $63 $02 $63 $00 $67 $00 $10 $00 $10 $00
.db $10 $00 $68 $00 $68 $02 $10 $00 $10 $00 $10 $00 $67 $02 $63 $02
.db $69 $00 $6A $00 $6B $00 $6B $00 $6C $00 $68 $00 $68 $02 $6C $02
.db $6B $00 $6B $00 $6A $02 $69 $02 $63 $00 $6D $00 $6E $00 $6E $00
.db $6F $00 $68 $00 $68 $02 $6F $02 $6E $02 $6E $02 $6D $02 $63 $02
.db $63 $00 $70 $00 $10 $00 $10 $00 $10 $00 $68 $00 $68 $02 $10 $00
.db $10 $00 $10 $00 $70 $02 $63 $02 $63 $00 $67 $00 $10 $00 $10 $00
.db $10 $00 $68 $00 $68 $02 $10 $00 $10 $00 $10 $00 $67 $02 $63 $02
.db $63 $00 $67 $00 $10 $00 $10 $00 $71 $00 $68 $00 $68 $02 $71 $02
.db $10 $00 $10 $00 $67 $02 $63 $02 $69 $04 $67 $00 $10 $00 $10 $00
.db $71 $04 $68 $00 $68 $02 $71 $06 $10 $00 $10 $00 $67 $02 $69 $06
.db $63 $00 $67 $00 $10 $00 $10 $00 $10 $00 $68 $00 $68 $02 $10 $00
.db $10 $00 $10 $00 $67 $02 $63 $02 $63 $00 $6A $00 $6B $00 $6B $00
.db $6C $00 $68 $00 $68 $02 $6C $02 $6B $00 $6B $00 $6A $02 $63 $02
.db $63 $00 $6D $00 $6E $00 $6E $00 $6F $00 $68 $00 $68 $02 $6F $02
.db $6E $02 $6E $02 $6D $02 $63 $02 $75 $00 $70 $00 $10 $00 $10 $00
.db $10 $00 $68 $00 $68 $02 $10 $00 $10 $00 $10 $00 $70 $02 $75 $02
.db $63 $00 $67 $00 $10 $00 $10 $00 $10 $00 $68 $00 $68 $02 $10 $00
.db $10 $00 $10 $00 $67 $02 $63 $02 $63 $00 $67 $00 $10 $00 $10 $00
.db $10 $00 $68 $00 $68 $02 $10 $00 $10 $00 $10 $00 $67 $02 $63 $02
.db $63 $00 $64 $04 $65 $04 $65 $04 $65 $04 $66 $04 $66 $06 $65 $04
.db $65 $04 $65 $04 $64 $06 $63 $02 $76 $00 $77 $00 $77 $00 $77 $00
.db $77 $00 $78 $00 $78 $02 $77 $00 $77 $00 $77 $00 $77 $00 $76 $02

; 4th entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1B160 to 1B30F (432 bytes)
_DATA_1B160_:
.db $60 $00 $61 $00 $61 $00 $61 $00 $61 $00 $62 $00 $62 $02 $61 $00
.db $61 $00 $61 $00 $61 $00 $60 $02 $63 $00 $64 $00 $65 $00 $65 $00
.db $65 $00 $66 $00 $66 $02 $65 $00 $65 $00 $65 $00 $64 $02 $63 $02
.db $63 $00 $67 $00 $10 $00 $10 $00 $10 $00 $68 $00 $68 $02 $10 $00
.db $10 $00 $10 $00 $67 $02 $63 $02 $63 $00 $67 $00 $10 $00 $10 $00
.db $10 $00 $68 $00 $68 $02 $10 $00 $10 $00 $10 $00 $67 $02 $63 $02
.db $69 $00 $6A $00 $6B $00 $6B $00 $6C $00 $68 $00 $68 $02 $6C $02
.db $6B $00 $6B $00 $6A $02 $69 $02 $63 $00 $6D $00 $6E $00 $6E $00
.db $6F $00 $68 $00 $68 $02 $6F $02 $6E $02 $6E $02 $6D $02 $63 $02
.db $63 $00 $70 $00 $10 $00 $10 $00 $10 $00 $68 $00 $68 $02 $10 $00
.db $10 $00 $10 $00 $70 $02 $63 $02 $63 $00 $67 $00 $10 $00 $10 $00
.db $10 $00 $68 $00 $68 $02 $10 $00 $10 $00 $10 $00 $67 $02 $63 $02
.db $63 $00 $67 $00 $10 $00 $10 $00 $71 $00 $68 $00 $68 $02 $71 $02
.db $10 $00 $10 $00 $67 $02 $63 $02 $69 $04 $67 $00 $10 $00 $10 $00
.db $71 $04 $72 $00 $72 $02 $71 $06 $10 $00 $10 $00 $67 $02 $69 $06
.db $63 $00 $67 $00 $10 $00 $10 $00 $10 $00 $73 $00 $73 $02 $10 $00
.db $10 $00 $10 $00 $67 $02 $63 $02 $63 $00 $6A $00 $6B $00 $6B $00
.db $6C $00 $74 $00 $74 $02 $6C $02 $6B $00 $6B $00 $6A $02 $63 $02
.db $63 $00 $6D $00 $6E $00 $6E $00 $6F $00 $68 $00 $68 $02 $6F $02
.db $6E $02 $6E $02 $6D $02 $63 $02 $75 $00 $70 $00 $10 $00 $10 $00
.db $10 $00 $68 $00 $68 $02 $10 $00 $10 $00 $10 $00 $70 $02 $75 $02
.db $63 $00 $67 $00 $10 $00 $10 $00 $10 $00 $68 $00 $68 $02 $10 $00
.db $10 $00 $10 $00 $67 $02 $63 $02 $63 $00 $67 $00 $10 $00 $10 $00
.db $10 $00 $68 $00 $68 $02 $10 $00 $10 $00 $10 $00 $67 $02 $63 $02
.db $63 $00 $64 $04 $65 $04 $65 $04 $65 $04 $66 $04 $66 $06 $65 $04
.db $65 $04 $65 $04 $64 $06 $63 $02 $76 $00 $77 $00 $77 $00 $77 $00
.db $77 $00 $78 $00 $78 $02 $77 $00 $77 $00 $77 $00 $77 $00 $76 $02

; 6th entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1B310 to 1B4BF (432 bytes)
_DATA_1B310_:
.db $60 $00 $79 $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00
.db $50 $00 $50 $00 $79 $02 $60 $02 $63 $00 $7A $00 $7B $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $7B $02 $7A $02 $63 $02
.db $63 $00 $7C $00 $7D $00 $7E $00 $7F $00 $52 $00 $52 $02 $7F $02
.db $7E $02 $7D $02 $7C $02 $63 $02 $63 $00 $7C $00 $00 $00 $80 $00
.db $81 $00 $54 $00 $54 $00 $81 $02 $80 $02 $00 $00 $7C $02 $63 $02
.db $69 $00 $82 $00 $00 $00 $80 $00 $83 $00 $57 $00 $57 $02 $83 $02
.db $80 $02 $00 $00 $82 $02 $69 $02 $63 $00 $84 $00 $85 $00 $80 $00
.db $86 $00 $34 $00 $34 $00 $86 $02 $80 $02 $85 $02 $84 $02 $63 $02
.db $63 $00 $87 $00 $88 $00 $80 $00 $86 $00 $34 $00 $34 $00 $86 $02
.db $80 $02 $88 $02 $87 $02 $63 $02 $63 $00 $7C $00 $00 $00 $80 $00
.db $86 $00 $34 $00 $34 $00 $86 $02 $80 $02 $00 $00 $7C $02 $63 $02
.db $63 $00 $7C $00 $00 $00 $89 $00 $86 $00 $34 $00 $34 $00 $86 $02
.db $89 $02 $00 $00 $7C $02 $63 $02 $69 $04 $7C $00 $00 $00 $89 $04
.db $86 $00 $34 $00 $34 $00 $86 $02 $89 $06 $00 $00 $7C $02 $69 $06
.db $63 $00 $7C $00 $00 $00 $80 $00 $86 $00 $34 $00 $34 $00 $86 $02
.db $80 $02 $00 $00 $7C $02 $63 $02 $63 $00 $87 $04 $88 $04 $80 $00
.db $86 $00 $34 $00 $34 $00 $86 $02 $80 $02 $88 $06 $87 $06 $63 $02
.db $63 $00 $84 $04 $85 $04 $80 $00 $86 $00 $34 $00 $34 $00 $86 $02
.db $80 $02 $85 $06 $84 $06 $63 $02 $75 $00 $82 $04 $00 $00 $80 $00
.db $83 $04 $57 $04 $57 $06 $83 $06 $80 $02 $00 $00 $82 $06 $75 $02
.db $63 $00 $7C $00 $00 $00 $80 $00 $81 $00 $54 $00 $54 $00 $81 $02
.db $80 $02 $00 $00 $7C $02 $63 $02 $63 $00 $7C $00 $7D $04 $7E $04
.db $7F $04 $52 $04 $52 $06 $7F $06 $7E $06 $7D $06 $7C $02 $63 $02
.db $63 $00 $7A $04 $7B $04 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $7B $06 $7A $06 $63 $02 $76 $00 $8A $00 $42 $04 $42 $04
.db $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $8A $02 $76 $02

; 9th entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1B4C0 to 1B66F (432 bytes)
_DATA_1B4C0_:
.db $60 $00 $8B $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00
.db $50 $00 $50 $00 $8B $02 $60 $02 $63 $00 $8C $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $8C $02 $63 $02
.db $63 $00 $8D $00 $8E $00 $52 $00 $52 $00 $52 $00 $52 $02 $52 $02
.db $52 $02 $8E $02 $8D $02 $63 $02 $63 $00 $8F $00 $90 $00 $54 $00
.db $54 $00 $54 $00 $54 $00 $54 $00 $54 $00 $90 $02 $8F $02 $63 $02
.db $69 $00 $91 $00 $92 $00 $57 $00 $57 $00 $57 $00 $57 $02 $57 $02
.db $57 $02 $92 $02 $91 $02 $69 $02 $63 $00 $93 $00 $94 $00 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $94 $02 $93 $02 $63 $02
.db $63 $00 $95 $00 $94 $00 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $94 $02 $95 $02 $63 $02 $63 $00 $8F $00 $94 $00 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $94 $02 $8F $02 $63 $02
.db $63 $00 $8F $00 $94 $00 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $94 $02 $8F $02 $63 $02 $69 $04 $8F $00 $94 $04 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $94 $06 $8F $02 $69 $06
.db $63 $00 $8F $00 $94 $04 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $94 $06 $8F $02 $63 $02 $63 $00 $95 $04 $94 $04 $34 $00
.db $34 $00 $34 $00 $34 $00 $34 $00 $34 $00 $94 $06 $95 $06 $63 $02
.db $63 $00 $93 $04 $94 $04 $34 $00 $34 $00 $34 $00 $34 $00 $34 $00
.db $34 $00 $94 $06 $93 $06 $63 $02 $75 $00 $91 $04 $92 $04 $57 $04
.db $57 $04 $57 $04 $57 $06 $57 $06 $57 $06 $92 $06 $91 $06 $75 $02
.db $63 $00 $8F $00 $90 $04 $54 $00 $54 $00 $54 $00 $54 $00 $54 $00
.db $54 $00 $90 $06 $8F $02 $63 $02 $63 $00 $8D $04 $8E $04 $52 $04
.db $52 $04 $52 $04 $52 $06 $52 $06 $52 $06 $8E $06 $8D $06 $63 $02
.db $63 $00 $8C $04 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $8C $06 $63 $02 $76 $00 $96 $00 $42 $04 $42 $04
.db $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $96 $02 $76 $02

; 5th entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1B670 to 1B81F (432 bytes)
_DATA_1B670_:
.db $60 $00 $61 $00 $61 $00 $61 $00 $61 $00 $62 $00 $62 $02 $61 $00
.db $61 $00 $61 $00 $61 $00 $60 $02 $63 $00 $97 $00 $98 $00 $99 $00
.db $98 $02 $9A $00 $9A $02 $98 $00 $99 $00 $98 $02 $97 $02 $63 $02
.db $63 $00 $9B $00 $10 $00 $10 $00 $10 $00 $9C $00 $9C $02 $10 $00
.db $10 $00 $10 $00 $9B $02 $63 $02 $63 $00 $9D $00 $10 $00 $10 $00
.db $10 $00 $9E $00 $9E $02 $10 $00 $10 $00 $10 $00 $9D $02 $63 $02
.db $69 $00 $9D $00 $10 $00 $10 $00 $10 $00 $9E $00 $9E $02 $10 $00
.db $10 $00 $10 $00 $9D $02 $69 $02 $63 $00 $9D $00 $9F $00 $A0 $00
.db $A1 $00 $9E $00 $9E $02 $A1 $02 $A0 $02 $9F $02 $9D $02 $63 $02
.db $63 $00 $9D $00 $A2 $00 $A3 $00 $A4 $00 $9E $00 $9E $02 $A4 $02
.db $A3 $02 $A2 $02 $9D $02 $63 $02 $63 $00 $9D $00 $A5 $00 $A6 $00
.db $A7 $00 $9E $00 $9E $02 $A7 $02 $A6 $02 $A5 $02 $9D $02 $63 $02
.db $63 $00 $9D $00 $10 $00 $10 $00 $A8 $00 $A9 $00 $A9 $02 $A8 $02
.db $10 $00 $10 $00 $9D $02 $63 $02 $69 $04 $9D $00 $10 $00 $10 $00
.db $A8 $04 $A9 $04 $A9 $06 $A8 $06 $10 $00 $10 $00 $9D $02 $69 $06
.db $63 $00 $9D $00 $10 $00 $10 $00 $10 $00 $9E $00 $9E $02 $10 $00
.db $10 $00 $10 $00 $9D $02 $63 $02 $63 $00 $9D $00 $10 $00 $10 $00
.db $10 $00 $9E $00 $9E $02 $10 $00 $10 $00 $10 $00 $9D $02 $63 $02
.db $63 $00 $9D $00 $10 $00 $10 $00 $10 $00 $9E $00 $9E $02 $10 $00
.db $10 $00 $10 $00 $9D $02 $63 $02 $75 $00 $9D $00 $10 $00 $10 $00
.db $10 $00 $9E $00 $9E $02 $10 $00 $10 $00 $10 $00 $9D $02 $75 $02
.db $63 $00 $9D $00 $10 $00 $10 $00 $10 $00 $9E $00 $9E $02 $10 $00
.db $10 $00 $10 $00 $9D $02 $63 $02 $63 $00 $9B $04 $10 $00 $10 $00
.db $10 $00 $9C $04 $9C $06 $10 $00 $10 $00 $10 $00 $9B $06 $63 $02
.db $63 $00 $97 $04 $98 $04 $99 $04 $98 $06 $9A $04 $9A $06 $98 $04
.db $99 $04 $98 $06 $97 $06 $63 $02 $76 $00 $77 $00 $77 $00 $77 $00
.db $77 $00 $78 $00 $78 $02 $77 $00 $77 $00 $77 $00 $77 $00 $76 $02

; 8th entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1B820 to 1B9CF (432 bytes)
_DATA_1B820_:
.db $60 $00 $79 $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00 $50 $00
.db $50 $00 $50 $00 $79 $02 $60 $02 $63 $00 $AA $00 $AB $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $AB $02 $AA $02 $63 $02
.db $63 $00 $AC $00 $AD $00 $AE $00 $7F $00 $52 $00 $52 $02 $7F $02
.db $AE $02 $AD $02 $AC $02 $63 $02 $63 $00 $AF $00 $00 $00 $B0 $00
.db $81 $00 $54 $00 $54 $00 $81 $02 $B0 $02 $00 $00 $AF $02 $63 $02
.db $69 $00 $AF $00 $00 $00 $B1 $00 $83 $00 $57 $00 $57 $02 $83 $02
.db $B1 $02 $00 $00 $AF $02 $69 $02 $63 $00 $AF $00 $B2 $00 $B3 $00
.db $86 $00 $34 $00 $34 $00 $86 $02 $B3 $02 $B2 $02 $AF $02 $63 $02
.db $63 $00 $AF $00 $B4 $00 $B5 $00 $86 $00 $34 $00 $34 $00 $86 $02
.db $B5 $02 $B4 $02 $AF $02 $63 $02 $63 $00 $AF $00 $B6 $00 $B7 $00
.db $86 $00 $34 $00 $34 $00 $86 $02 $B7 $02 $B6 $02 $AF $02 $63 $02
.db $63 $00 $AF $00 $00 $00 $B8 $00 $86 $00 $34 $00 $34 $00 $86 $02
.db $B8 $02 $00 $00 $AF $02 $63 $02 $69 $04 $AF $00 $00 $00 $B8 $04
.db $86 $00 $34 $00 $34 $00 $86 $02 $B8 $06 $00 $00 $AF $02 $69 $06
.db $63 $00 $AF $00 $00 $00 $B1 $00 $86 $00 $34 $00 $34 $00 $86 $02
.db $B1 $02 $00 $00 $AF $02 $63 $02 $63 $00 $AF $00 $00 $00 $B1 $00
.db $86 $00 $34 $00 $34 $00 $86 $02 $B1 $02 $00 $00 $AF $02 $63 $02
.db $63 $00 $AF $00 $00 $00 $B1 $00 $86 $00 $34 $00 $34 $00 $86 $02
.db $B1 $02 $00 $00 $AF $02 $63 $02 $75 $00 $AF $00 $00 $00 $B1 $00
.db $83 $04 $57 $04 $57 $06 $83 $06 $B1 $02 $00 $00 $AF $02 $75 $02
.db $63 $00 $AF $00 $00 $00 $B0 $04 $81 $00 $54 $00 $54 $00 $81 $02
.db $B0 $06 $00 $00 $AF $02 $63 $02 $63 $00 $AC $04 $AD $04 $AE $04
.db $7F $04 $52 $04 $52 $06 $7F $06 $AE $06 $AD $06 $AC $06 $63 $02
.db $63 $00 $AA $04 $AB $04 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $AB $06 $AA $06 $63 $02 $76 $00 $8A $00 $42 $04 $42 $04
.db $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $42 $04 $8A $02 $76 $02

; 11th entry of Pointer Table from 6E75 (indexed by unknown)
; Data from 1B9D0 to 1BFFF (1584 bytes)
_DATA_1B9D0_:
.incbin "Phantasy Star (UE) (V1.2) [!]_1b9d0.inc"

.BANK 7
.ORG $0000

; Data from 1C000 to 1FFFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_1c000.inc"

.BANK 8
.ORG $0000

; Data from 20000 to 23FFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_20000.inc"

.BANK 9
.ORG $0000

; Data from 24000 to 2712F (12592 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_24000.inc"

; Data from 27130 to 27470 (833 bytes)
_DATA_27130_:
.db $9F $01 $02 $03 $04 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07
.db $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $04 $03 $02
.db $03 $01 $9C $09 $04 $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C
.db $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $04 $09 $04
.db $01 $9C $0E $0F $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06
.db $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $04 $0E $04 $01
.db $9C $10 $04 $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C
.db $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $04 $10 $05 $01 $9A
.db $04 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07
.db $08 $05 $06 $07 $08 $05 $06 $07 $08 $04 $06 $01 $9A $04 $0A $0B
.db $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B
.db $0C $0D $0A $0B $0C $0D $04 $06 $01 $9A $04 $07 $08 $05 $06 $07
.db $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07
.db $08 $05 $06 $04 $06 $01 $9A $04 $0C $0D $0A $0B $0C $0D $0A $0B
.db $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B
.db $04 $06 $01 $9A $04 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07
.db $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $04 $06 $01
.db $9A $04 $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B
.db $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $04 $06 $01 $9A $04 $07
.db $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07
.db $08 $05 $06 $07 $08 $05 $06 $04 $06 $01 $9A $04 $0C $0D $0A $0B
.db $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B
.db $0C $0D $0A $0B $04 $06 $01 $9A $04 $05 $06 $07 $08 $05 $06 $07
.db $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07
.db $08 $04 $05 $01 $9C $10 $04 $0A $0B $0C $0D $0A $0B $0C $0D $0A
.db $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $04
.db $10 $04 $01 $9C $0E $04 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08
.db $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $04 $0E
.db $04 $01 $9C $09 $04 $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A
.db $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $04 $09 $03
.db $01 $E7 $02 $03 $04 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07
.db $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $04 $03 $02
.db $01 $01 $11 $12 $04 $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C
.db $0D $0A $0B $0C $0D $0A $0B $0C $0D $0A $0B $0C $0D $04 $12 $11
.db $01 $13 $14 $00 $04 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05
.db $06 $07 $08 $05 $06 $07 $08 $05 $06 $07 $08 $05 $06 $04 $00 $14
.db $13 $15 $16 $17 $18 $19 $19 $1A $1B $05 $19 $81 $1C $04 $19 $81
.db $1C $05 $19 $8A $1B $1A $19 $19 $2D $17 $16 $15 $1D $1E $04 $1F
.db $81 $20 $05 $1F $82 $21 $22 $04 $1F $82 $22 $21 $05 $1F $81 $20
.db $04 $1F $82 $1E $1D $04 $23 $82 $24 $25 $06 $23 $81 $26 $06 $23
.db $81 $26 $06 $23 $82 $25 $24 $04 $23 $03 $27 $82 $28 $29 $07 $27
.db $81 $2A $06 $27 $81 $2A $07 $27 $82 $29 $28 $05 $27 $82 $28 $29
.db $07 $27 $82 $2B $2C $06 $27 $82 $2C $2B $07 $27 $82 $29 $28 $02
.db $27 $00 $1C $00 $03 $02 $1D $00 $02 $02 $1E $00 $02 $02 $1E $00
.db $02 $02 $1E $00 $81 $02 $1F $00 $81 $02 $1F $00 $81 $02 $1F $00
.db $81 $02 $1F $00 $81 $02 $1F $00 $81 $02 $1F $00 $81 $02 $1F $00
.db $81 $02 $1F $00 $81 $02 $05 $00 $81 $04 $19 $00 $82 $02 $06 $04
.db $00 $81 $04 $19 $00 $82 $02 $06 $04 $00 $81 $04 $19 $00 $82 $02
.db $06 $03 $00 $02 $04 $19 $00 $81 $02 $02 $06 $1D $00 $03 $02 $1D
.db $00 $82 $02 $00 $02 $02 $12 $00 $81 $02 $05 $00 $02 $02 $03 $00
.db $03 $02 $10 $00 $10 $02 $13 $00 $81 $02 $06 $00 $02 $02 $17 $00
.db $81 $02 $07 $00 $02 $02 $16 $00 $02 $02 $07 $00 $02 $02 $02 $00
.db $00

; Data from 27471 to 27FFF (2959 bytes)
_DATA_27471_:
.incbin "Phantasy Star (UE) (V1.2) [!]_27471.inc"

.BANK 10
.ORG $0000

; Data from 28000 to 2BFFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_28000.inc"

.BANK 11
.ORG $0000

; Data from 2C000 to 2FFFF (16384 bytes)
_DATA_2C000_:
.incbin "Phantasy Star (UE) (V1.2) [!]_2c000.inc"

.BANK 12
.ORG $0000

_LABEL_30000_:
	push hl
	push de
	push bc
	call _LABEL_3002D_
	ld b, $0F
	ld hl, _RAM_C00E_
	xor a
-:
	ld (hl), a
	ld de, $0018
	add hl, de
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	ld de, $0006
	add hl, de
	djnz -
	pop bc
	pop de
	pop hl
_LABEL_3001F_:
	push hl
	push bc
	ld hl, _DATA_3003B_
	ld c, Port_PSG
	ld b, $08
	otir
	pop bc
	pop hl
	ret

_LABEL_3002D_:
	xor a
	ld hl, _RAM_C003_
	ld (hl), a
	ld de, _RAM_C003_ + 1
	ld bc, $000A
	ldir
	ret

; Data from 3003B to 30042 (8 bytes)
_DATA_3003B_:
.db $80 $00 $A0 $00 $C0 $00 $E5 $FF

_LABEL_30043_:
	ld hl, _RAM_C00C_
	exx
	call _LABEL_300C9_
	call _LABEL_300F0_
	call _LABEL_302EF_
	call _LABEL_300A4_
	ld a, (_RAM_C002_)
	or a
	jp m, ++
	ld ix, _RAM_C06E_
	ld b, $07
--:
	push bc
	ld a, $04
	cp b
	jr z, +
	bit 7, (ix+0)
	call nz, _LABEL_30772_
-:
	ld de, $0020
	add ix, de
	pop bc
	djnz --
	ret

+:
	bit 7, (ix+0)
	call nz, _LABEL_306D0_
	jr -

++:
	ld ix, _RAM_C0EE_
	ld b, $08
--:
	push bc
	ld a, $01
	cp b
	jr z, +
	bit 7, (ix+0)
	call nz, _LABEL_30772_
-:
	ld de, $0020
	add ix, de
	pop bc
	djnz --
	ret

+:
	bit 7, (ix+0)
	call nz, _LABEL_306D0_
	jr -

_LABEL_300A4_:
	ld hl, _RAM_C12E_
	bit 7, (hl)
	ret z
	ld a, (_RAM_C10E_)
	or a
	jp m, ++
	bit 6, (hl)
	jr z, +
	inc hl
	ld a, (hl)
	cp $E0
	jr nz, +
	ld hl, _RAM_C06E_
	set 2, (hl)
+:
	ld hl, _RAM_C0AE_
	set 2, (hl)
	ret

++:
	set 2, (hl)
	ret

_LABEL_300C9_:
	ld hl, _RAM_C001_
	ld a, (hl)
	or a
	ret z
	dec (hl)
	ret nz
	ld a, (_RAM_C002_)
	or a
	res 7, a
	ld (hl), a
	ld hl, _RAM_C018_
	ld de, $0020
	ld b, $07
	jp m, _LABEL_300EB_
	ld hl, _RAM_C158_
	ld de, $0020
	ld b, $05
_LABEL_300EB_:
	inc (hl)
	add hl, de
	djnz _LABEL_300EB_
	ret

_LABEL_300F0_:
	ld a, (_RAM_C00A_)
	or a
	ret z
	jp m, _LABEL_30155_
	ld a, (_RAM_C00B_)
	dec a
	jr z, +
	ld (_RAM_C00B_), a
	ret

+:
	ld a, (_RAM_C009_)
	ld (_RAM_C00B_), a
	ld a, (_RAM_C00A_)
	inc a
	cp $0C
	ld (_RAM_C00A_), a
	jr nz, ++
	xor a
	ld (_RAM_C00A_), a
	ld a, (_RAM_C002_)
	cp $7F
	jr nz, +
	ld a, $85
	jp _LABEL_3032F_

+:
	or a
	jp p, _LABEL_30000_
	ld a, (_RAM_C006_)
	or a
	ret z
	jp _LABEL_30196_

++:
	ld ix, _RAM_C00E_
	ld de, $0020
	ld b, $06
	ld a, (_RAM_C002_)
	or a
	jp p, _LABEL_30145_
	ld ix, _RAM_C14E_
	ld b, $04
_LABEL_30145_:
	ld a, (ix+8)
	inc a
	cp $10
	jr z, +
	ld (ix+8), a
+:
	add ix, de
	djnz _LABEL_30145_
	ret

_LABEL_30155_:
	ld a, (_RAM_C00B_)
	dec a
	jr z, +
	ld (_RAM_C00B_), a
	ret

+:
	ld a, $0A
	ld (_RAM_C00B_), a
	ld a, (_RAM_C00A_)
	inc a
	cp $8B
	ld (_RAM_C00A_), a
	jr nz, +
	xor a
	ld (_RAM_C00A_), a
	ld hl, _RAM_C0CE_
	res 2, (hl)
	ret

+:
	ld ix, _RAM_C00E_
	ld de, $0020
	ld b, $06
-:
	ld a, (ix+8)
	dec a
	jp m, +
	cp (ix+23)
	jr c, +
	ld (ix+8), a
+:
	add ix, de
	djnz -
	ret

; 5th entry of Jump Table from 302E5 (indexed by _RAM_C004_)
_LABEL_30196_:
	call _LABEL_3001F_
	ld a, (_RAM_C005_)
	ld (_RAM_C002_), a
	ld a, $80
	ld (_RAM_C00A_), a
	ld a, $0A
	ld (_RAM_C00B_), a
	ld hl, _RAM_C0CE_
	set 2, (hl)
	push ix
	ld ix, _RAM_C00E_
	ld b, $06
	ld de, $0020
-:
	ld a, (ix+8)
	ld (ix+23), a
	ld a, $09
	ld (ix+8), a
	add ix, de
	djnz -
	pop ix
	jp _LABEL_30420_

; 3rd entry of Jump Table from 302E5 (indexed by _RAM_C004_)
_LABEL_301CD_:
	ld a, $0A
	ld (_RAM_C00B_), a
	ld (_RAM_C009_), a
_LABEL_301D5_:
	ld a, $03
	ld (_RAM_C00A_), a
	ld a, (_RAM_C002_)
	or a
	jp m, +
	xor a
	ld (_RAM_C0CE_), a
+:
	ld a, $FF
	out (Port_PSG), a
	xor a
	ld (_RAM_C1CE_), a
	jp _LABEL_30420_

; 2nd entry of Jump Table from 302E5 (indexed by _RAM_C004_)
_LABEL_301F0_:
	ld hl, _RAM_C12E_
	bit 7, (hl)
	jp z, _LABEL_30420_
	xor a
	ld (hl), a
	ld a, $DF
	out (Port_PSG), a
	ld a, $FF
	out (Port_PSG), a
	jp _LABEL_30420_

; 4th entry of Jump Table from 302E5 (indexed by _RAM_C004_)
_LABEL_30205_:
	ld a, (_RAM_C002_)
	cp $7F
	jp z, _LABEL_301CD_
	ld a, $80
	ld (_RAM_C006_), a
	jp _LABEL_301CD_

; 1st entry of Jump Table from 302E5 (indexed by _RAM_C004_)
_LABEL_30215_:
	xor a
	ld (_RAM_C10E_), a
	ld (_RAM_C0EE_), a
	ld hl, _RAM_C08E_
	call +
	ld hl, _RAM_C1AE_
	call +
	ld hl, _DATA_3003B_
	ld c, Port_PSG
	ld b, $08
	otir
	jp _LABEL_30420_

+:
	ld de, $0020
	ld b, $03
-:
	res 2, (hl)
	add hl, de
	djnz -
	ret

; Data from 3023F to 30252 (20 bytes)
_DATA_3023F_:
.db $00 $00 $00 $00 $00 $00 $03 $00 $80 $80 $00 $00 $80 $80 $00 $00
.db $00 $7F $7F $00

; Pointer Table from 30253 to 3027A (20 entries, indexed by _RAM_C004_)
_DATA_30253_:
.dw _DATA_31E6C_ _DATA_31E91_ _DATA_31EB6_ _DATA_31EDB_ _DATA_31F00_ _DATA_31F25_ _DATA_31F4A_ _DATA_31F66_
.dw _DATA_31F8B_ _DATA_31FB9_ _DATA_31FE7_ _DATA_3200C_ _DATA_32031_ _DATA_3205F_ _DATA_3208D_ _DATA_320B2_
.dw _DATA_320B2_ _DATA_320D7_ _DATA_320FC_ _DATA_32121_

; Pointer Table from 3027B to 302DA (48 entries, indexed by _RAM_C004_)
_DATA_3027B_:
.dw _DATA_3213E_ _DATA_32156_ _DATA_3217E_ _DATA_3219E_ _DATA_321D2_ _DATA_321FF_ _DATA_3222C_ _DATA_32265_
.dw _DATA_3222C_ _DATA_32281_ _DATA_322C7_ _DATA_322F1_ _DATA_3230D_ _DATA_32328_ _DATA_32357_ _DATA_32380_
.dw _DATA_323C4_ _DATA_323E7_ _DATA_32423_ _DATA_3243A_ _DATA_32455_ _DATA_32468_ _DATA_3247D_ _DATA_3247D_
.dw _DATA_32494_ _DATA_324F6_ _DATA_32526_ _DATA_32543_ _DATA_32556_ _DATA_3257B_ _DATA_3259E_ _DATA_325AC_
.dw _DATA_325CD_ _DATA_325F3_ _DATA_32611_ _DATA_3263E_ _DATA_3263E_ _DATA_32651_ _DATA_32670_ _DATA_3269F_
.dw _DATA_326DD_ _DATA_32722_ _DATA_3276F_ _DATA_32794_ _DATA_327C1_ _DATA_327EE_ _DATA_32812_ _DATA_32840_

; Pointer Table from 302DB to 302E4 (5 entries, indexed by _RAM_C004_)
_DATA_302DB_:
.dw _DATA_32455_ _DATA_32468_ _DATA_3247D_ _DATA_3247D_ _DATA_3247D_

; Jump Table from 302E5 to 302EE (5 entries, indexed by _RAM_C004_)
_DATA_302E5_:
.dw _LABEL_30215_ _LABEL_301F0_ _LABEL_301CD_ _LABEL_30205_ _LABEL_30196_

_LABEL_302EF_:
	ld a, (_RAM_C004_)
	bit 7, a
	jp z, _LABEL_30000_
	cp $A0
	jr c, _LABEL_3032F_
	cp $D0
	jp c, _LABEL_30389_
	cp $D5
	jp c, +
	cp $DA
	jp nc, _LABEL_30000_
	sub $D5
	add a, a
	ld c, a
	ld b, $00
	ld hl, _DATA_302E5_
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

+:
	sub $D0
	ld hl, _DATA_302DB_
	call _LABEL_30426_
	ld de, _RAM_C12E_
	ld a, $FF
	out (Port_PSG), a
	ld a, $DF
	out (Port_PSG), a
	jp _LABEL_303F4_

_LABEL_3032F_:
	cp $95
	jp nc, _LABEL_30420_
	sub $81
	ret m
	ld b, $00
	ld c, a
	ld hl, _DATA_3023F_
	add hl, bc
	push af
	ld a, (_RAM_C002_)
	and $7F
	ld (_RAM_C005_), a
	ld a, (hl)
	ld (_RAM_C001_), a
	ld (_RAM_C002_), a
	push af
	ld a, (_RAM_C00A_)
	or a
	jp p, +
	ld ix, _RAM_C00E_
	ld de, $0020
	ld b, $06
-:
	ld a, (ix+23)
	ld (ix+8), a
	add ix, de
	djnz -
+:
	call _LABEL_3002D_
	call _LABEL_3001F_
	pop af
	ld de, _RAM_C14E_
	or a
	jp m, +
	call _LABEL_30000_
	ld de, _RAM_C06E_
+:
	ld hl, _DATA_30253_
	jr +

+:
	pop af
	call _LABEL_30426_
	jp _LABEL_303F4_

_LABEL_30389_:
	sub $A0
	ld hl, _DATA_3027B_
	call _LABEL_30426_
	ld h, b
	ld l, c
	inc hl
	inc hl
	ld a, (hl)
	cp $C0
	jr z, ++
	cp $E0
	jr z, +
	cp $A0
	jr z, +++
	push bc
	call _LABEL_30000_
	pop bc
	ld de, _RAM_C06E_
	jr _LABEL_303F4_

+:
	ld a, $DF
	out (Port_PSG), a
	ld hl, _RAM_C0CE_
	set 2, (hl)
	ld a, $E7
	out (Port_PSG), a
++:
	ld de, _RAM_C10E_
	jr ++++

+++:
	ld de, $0009
	add hl, de
	ld a, (hl)
	cp $E0
	jr nz, +
	ld a, $E7
	out (Port_PSG), a
	ld hl, _RAM_C0CE_
	set 2, (hl)
	ld hl, _RAM_C1CE_
	set 2, (hl)
	ld a, $DF
	out (Port_PSG), a
+:
	ld de, _RAM_C0EE_
	ld hl, _RAM_C08E_
	set 2, (hl)
	ld hl, _RAM_C18E_
	set 2, (hl)
++++:
	ld a, $FF
	out (Port_PSG), a
	ld hl, _RAM_C0AE_
	set 2, (hl)
	ld hl, _RAM_C1AE_
	set 2, (hl)
_LABEL_303F4_:
	ld h, b
	ld l, c
	ld b, (hl)
	inc hl
-:
	push bc
	push hl
	pop ix
	ld bc, $0009
	ldir
	ld a, $20
	ld (de), a
	inc de
	ld a, $01
	ld (de), a
	inc de
	xor a
	ld (de), a
	inc de
	ld (de), a
	inc de
	ld (de), a
	push hl
	ld hl, $0013
	add hl, de
	ex de, hl
	pop hl
	ld bc, +	; Overriding return address
	push bc
	jp _LABEL_30867_

+:
	pop bc
	djnz -
_LABEL_30420_:
	ld a, $80
	ld (_RAM_C004_), a
	ret

_LABEL_30426_:
	add a, a
	ld b, $00
	ld c, a
	add hl, bc
	ld c, (hl)
	inc hl
	ld b, (hl)
	ret

_LABEL_3042F_:
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ret

-:
	ld (ix+13), a
_LABEL_3043C_:
	push hl
	ld c, (ix+13)
	ld b, $00
	add hl, bc
	ld c, l
	ld b, h
	pop hl
	ld a, (bc)
	bit 7, a
	jp z, +++
	cp $83
	jr z, +
	cp $80
	jr z, ++
	ld a, $FF
	ld (ix+20), a
	pop hl
	ret

+:
	inc bc
	ld a, (bc)
	jr -

++:
	xor a
	jr -

+++:
	inc (ix+13)
	ld l, a
	ld h, $00
	add hl, de
	ld (ix+16), a
	ret

_LABEL_3046D_:
	ld e, (ix+3)
	ld d, (ix+4)
_LABEL_30473_:
	ld a, (de)
	inc de
	cp $E0
	jp nc, _LABEL_30519_
	bit 3, (ix+0)
	jp nz, _LABEL_304E8_
	cp $80
	jp c, _LABEL_304BF_
	jr nz, +
+:
	call _LABEL_30509_
	ld a, (hl)
	ld (ix+14), a
	inc hl
	ld a, (hl)
	ld (ix+15), a
_LABEL_30494_:
	bit 5, (ix+0)
	jp z, +
	ld a, (de)
	inc de
	ld (ix+18), a
	ld (ix+17), a
	bit 3, (ix+0)
	ld a, (de)
	jr nz, ++
	ld (ix+17), a
	inc de
	ld a, (de)
	jr ++

+:
	ld a, (de)
	or a
	jp p, ++
	ld a, (ix+21)
	ld (ix+10), a
	jr _LABEL_304CF_

++:
	inc de
_LABEL_304BF_:
	ld b, (ix+2)
	dec b
	jr z, +
	ld c, a
-:
	add a, c
	djnz -
+:
	ld (ix+10), a
	ld (ix+21), a
_LABEL_304CF_:
	xor a
	ld (ix+12), a
	ld (ix+13), a
	ld (ix+11), a
	ld (ix+19), a
	ld (ix+20), a
	ld (ix+3), e
	ld (ix+4), d
	ld a, $80
	ret

_LABEL_304E8_:
	ld h, a
	ld a, (de)
	inc de
	ld l, a
	ld a, (ix+5)
	or a
	jr z, +++
	jp p, +
	add a, l
	jr c, ++
	dec h
	jr ++

+:
	add a, l
	jr nc, ++
	inc h
++:
	ld l, a
+++:
	ld (ix+14), l
	ld (ix+15), h
	jp _LABEL_30494_

_LABEL_30509_:
	sub $80
	jr z, +
	add a, (ix+5)
+:
	ld hl, _DATA_30874_
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	ret

_LABEL_30519_:
	ld hl, +	; Overriding return address
_LABEL_3051C_:
	push hl
	sub $EE
	ld hl, _DATA_30530_
	add a, a
	ld c, a
	ld b, $00
	add hl, bc
	ld c, (hl)
	inc hl
	ld h, (hl)
	ld l, c
	jp (hl)

+:
	inc de
	jp _LABEL_30473_

; Jump Table from 30530 to 30553 (18 entries, indexed by unknown)
_DATA_30530_:
.dw _LABEL_3055E_ _LABEL_30566_ _LABEL_3057E_ _LABEL_30554_ _LABEL_30627_ _LABEL_305AD_ _LABEL_305CA_ _LABEL_305C1_
.dw _LABEL_305E7_ _LABEL_306B5_ _LABEL_30687_ _LABEL_306A2_ _LABEL_305A0_ _LABEL_30595_ _LABEL_305ED_ _LABEL_30618_
.dw _LABEL_30566_ _LABEL_30566_

; 4th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_30554_:
	ld a, (de)
	ld (_RAM_C009_), a
	ld (_RAM_C00B_), a
	jp _LABEL_301D5_

; 1st entry of Jump Table from 30530 (indexed by unknown)
_LABEL_3055E_:
	ld a, (de)
	add a, (ix+2)
	ld (ix+2), a
	ret

; 2nd entry of Jump Table from 30530 (indexed by unknown)
_LABEL_30566_:
	ld a, (_RAM_C00A_)
	or a
	jp m, +
	ld a, (de)
	add a, (ix+8)
	jp ++

+:
	ld a, (de)
	add a, (ix+23)
	and $0F
	ld (ix+23), a
	ret

; 3rd entry of Jump Table from 30530 (indexed by unknown)
_LABEL_3057E_:
	ld a, (de)
	cp $01
	jr z, +
	res 0, (ix+7)
	res 1, (ix+7)
	ret

+:
	set 0, (ix+7)
	set 1, (ix+7)
	ret

; 14th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_30595_:
	ld a, (de)
	inc de
	jr +

+:
	add a, (ix+5)
	ld (ix+5), a
	ret

; 13th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_305A0_:
	ld a, (de)
	ld (ix+2), a
	ret

++:
	and $0F
	ld (ix+8), a
	jp _LABEL_30867_

; 6th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_305AD_:
	ld a, (de)
	or $E0
	out (Port_PSG), a
	or $FC
	inc a
	jr nz, +
	res 6, (ix+0)
	ret

+:
	set 6, (ix+0)
	ret

; 8th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_305C1_:
	ld a, (de)
	inc de
	cp $80
	ret z
	ld (ix+7), a
	ret

; 7th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_305CA_:
	ld a, (de)
	ld (ix+6), a
	ret

; Data from 305CF to 305E6 (24 bytes)
.db $06 $00 $0E $1C $DD $E5 $E1 $09 $7E $B7 $20 $06 $1A $3D $77 $13
.db $13 $C9 $13 $35 $28 $02 $13 $C9

; 9th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_305E7_:
	ex de, hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	dec de
	ret

; 15th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_305ED_:
	ld a, (de)
	cp $01
	jr nz, +
	set 5, (ix+0)
	ld a, (ix+1)
	ld a, (ix+8)
	or a
	ret z
	dec (ix+8)
	dec (ix+8)
	ret

+:
	res 5, (ix+0)
	ld a, (ix+1)
	ld a, (ix+8)
	or a
	ret z
	inc (ix+8)
	inc (ix+8)
	ret

; 16th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_30618_:
	ld a, (de)
	cp $01
	jr nz, +
	set 3, (ix+0)
	ret

+:
	res 3, (ix+0)
	ret

; 5th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_30627_:
	ld hl, _RAM_C12E_
	res 2, (hl)
	xor a
	ld (_RAM_C008_), a
	ld (ix+0), a
	ld a, (ix+1)
	add a, $1F
	out (Port_PSG), a
	ld a, $E5
	out (Port_PSG), a
	ld a, (_RAM_C08E_)
	and $80
	jr z, +
	ld hl, _RAM_C09C_
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (_RAM_C08F_)
	call _LABEL_30812_
	ld hl, _RAM_C08E_
	res 2, (hl)
+:
	ld hl, _RAM_C18E_
	res 2, (hl)
	ld hl, _RAM_C1CE_
	res 2, (hl)
	ld hl, _RAM_C0CE_
	res 2, (hl)
	ld a, (_RAM_C0AE_)
	and $80
	jr z, +
	ld hl, _RAM_C0BC_
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (_RAM_C0AF_)
	call _LABEL_30812_
	ld hl, _RAM_C0AE_
	res 2, (hl)
+:
	ld hl, _RAM_C1AE_
	res 2, (hl)
	pop hl
	pop hl
	ret

; 11th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_30687_:
	ld a, (de)
	ld c, a
	inc de
	ld a, (de)
	ld b, a
	push bc
	push ix
	pop hl
	dec (ix+9)
	ld c, (ix+9)
	dec (ix+9)
	ld b, $00
	add hl, bc
	ld (hl), d
	dec hl
	ld (hl), e
	pop de
	dec de
	ret

; 12th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_306A2_:
	push ix
	pop hl
	ld c, (ix+9)
	ld b, $00
	add hl, bc
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc (ix+9)
	inc (ix+9)
	ret

; 10th entry of Jump Table from 30530 (indexed by unknown)
_LABEL_306B5_:
	ld a, (de)
	inc de
	add a, $18
	ld c, a
	ld b, $00
	push ix
	pop hl
	add hl, bc
	ld a, (hl)
	or a
	jr nz, +
	ld a, (de)
	ld (hl), a
+:
	inc de
	dec (hl)
	jp nz, _LABEL_305E7_
	inc de
	ret

; Data from 306CD to 306CF (3 bytes)
.db $E5 $E1 $C9

_LABEL_306D0_:
	inc (ix+11)
	ld a, (ix+10)
	sub (ix+11)
	call z, +
	bit 2, (ix+0)
	ret nz
	bit 4, (ix+19)
	ret nz
	ld a, (ix+7)
	dec a
	ret m
	ld hl, _DATA_32877_
	call _LABEL_3042F_
	call _LABEL_30827_
	or $F0
	out (Port_PSG), a
	ret

+:
	ld e, (ix+3)
	ld d, (ix+4)
-:
	ld a, (de)
	inc de
	cp $E0
	jp nc, +
	cp $80
	jp c, _LABEL_304BF_
	call ++
	ld a, (de)
	inc de
	cp $80
	jp c, _LABEL_304BF_
	dec de
	ld a, (ix+21)
	ld (ix+10), a
	jp _LABEL_304CF_

; Data from 3071F to 30722 (4 bytes)
.db $1B $C3 $CF $84

+:
	ld hl, +	; Overriding return address
	jp _LABEL_3051C_

+:
	inc de
	jp -

++:
	bit 3, a
	jr nz, +
	bit 5, a
	jr nz, ++
	bit 1, a
	jr nz, ++
	bit 0, a
	jr nz, +++
	bit 2, a
	jr nz, +++
	ld (ix+7), $00
	ld a, $FF
	out (Port_PSG), a
	ret

+:
	ex af, af'
	ld a, $02
	ld b, $04
	jr ++++

++:
	ld c, $04
	bit 0, a
	jr nz, +
	ld c, $03
+:
	ex af, af'
	ld a, c
	ld b, $05
	jr ++++

+++:
	ex af, af'
	ld a, $01
	ld b, $06
++++:
	ld (ix+7), a
	ex af, af'
	bit 2, a
	jr z, +
	dec b
	dec b
+:
	ld (ix+8), b
	ret

_LABEL_30772_:
	inc (ix+11)
	ld a, (ix+10)
	sub (ix+11)
	call z, _LABEL_3046D_
	ld (_RAM_C00C_), a
	cp $80
	jp z, +++
	bit 5, (ix+0)
	jp z, +++
	exx
	ld (hl), $80
	exx
	ld a, (ix+18)
	bit 7, a
	jr z, +
	add a, (ix+14)
	jr c, ++
	dec (ix+15)
	jr ++

+:
	add a, (ix+14)
	jr nc, ++
	inc (ix+15)
++:
	ld (ix+14), a
+++:
	bit 2, (ix+0)
	ret nz
	ld a, (ix+19)
	cp $1F
	ret z
	jr nz, +
+:
	ld a, (ix+19)
	cp $FF
	jp z, +
	ld a, (ix+7)
	dec a
	jp m, +
	ld hl, _DATA_32877_
	call _LABEL_3042F_
	call _LABEL_30827_
	or (ix+1)
	add a, $10
	out (Port_PSG), a
+:
	ld a, (_RAM_C00C_)
	or a
	jp m, +
	bit 7, (ix+20)
	ret nz
	ld a, (ix+6)
	dec a
	jp p, ++
	ret

+:
	ld a, (ix+6)
	dec a
++:
	ld l, (ix+14)
	ld h, (ix+15)
	jp m, +
	ex de, hl
	ld hl, _DATA_32916_
	call _LABEL_3042F_
	call _LABEL_3043C_
+:
	bit 6, (ix+0)
	ret nz
	ld a, (ix+1)
	cp $E0
	jr nz, _LABEL_30812_
	ld a, $C0
_LABEL_30812_:
	ld c, a
	ld a, l
	and $0F
	or c
	out (Port_PSG), a
	ld a, l
	and $F0
	or h
	rrca
	rrca
	rrca
	rrca
	out (Port_PSG), a
	ret

-:
	ld (ix+12), a
_LABEL_30827_:
	push hl
	ld c, (ix+12)
	ld b, $00
	add hl, bc
	ld c, l
	ld b, h
	pop hl
	ld a, (bc)
	bit 7, a
	jr z, ++++
	cp $82
	jr z, +
	cp $81
	jr z, +++
	cp $80
	jr z, ++
	inc bc
	ld a, (bc)
	jr -

+:
	pop hl
	ld a, $1F
	ld (ix+19), a
	add a, (ix+1)
	out (Port_PSG), a
	ret

++:
	xor a
	jr -

+++:
	ld (ix+19), $FF
	pop hl
	ret

++++:
	inc (ix+12)
	add a, (ix+8)
	bit 4, a
	ret z
	ld a, $0F
	ret

_LABEL_30867_:
	ld a, (ix+8)
	and $0F
	or (ix+1)
	add a, $10
	out (Port_PSG), a
	ret

; Data from 30874 to 31E6B (5624 bytes)
_DATA_30874_:
.incbin "Phantasy Star (UE) (V1.2) [!]_30874.inc"

; 1st entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31E6C to 31E90 (37 bytes)
_DATA_31E6C_:
.db $04 $80 $80 $02 $08 $89 $F8 $01 $05 $01 $80 $A0 $02 $72 $89 $F8
.db $00 $05 $04 $80 $C0 $02 $D1 $89 $F8 $00 $09 $05 $C0 $E0 $02 $6F
.db $A9 $00 $00 $00 $00

; 2nd entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31E91 to 31EB5 (37 bytes)
_DATA_31E91_:
.db $04 $80 $80 $02 $24 $8A $E8 $01 $06 $01 $80 $A0 $02 $92 $8A $F4
.db $00 $06 $04 $80 $C0 $02 $13 $8B $E8 $00 $09 $05 $C0 $E0 $02 $F4
.db $A9 $00 $00 $00 $00

; 3rd entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31EB6 to 31EDA (37 bytes)
_DATA_31EB6_:
.db $04 $80 $80 $02 $E7 $8B $EA $01 $05 $02 $80 $A0 $02 $70 $8C $F6
.db $00 $04 $04 $80 $C0 $02 $13 $8D $EA $00 $06 $05 $C0 $E0 $02 $60
.db $AA $00 $00 $00 $00

; 4th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31EDB to 31EFF (37 bytes)
_DATA_31EDB_:
.db $04 $80 $80 $02 $71 $8E $E4 $01 $07 $02 $80 $A0 $02 $C6 $8E $F0
.db $00 $04 $04 $80 $C0 $02 $07 $8F $E4 $00 $06 $05 $C0 $E0 $02 $09
.db $AB $00 $00 $00 $00

; 5th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31F00 to 31F24 (37 bytes)
_DATA_31F00_:
.db $04 $80 $80 $02 $39 $8F $EC $01 $05 $02 $80 $A0 $02 $97 $8F $F8
.db $00 $05 $04 $80 $C0 $02 $E6 $8F $EC $00 $09 $04 $C0 $E0 $02 $84
.db $AB $00 $00 $00 $00

; 6th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31F25 to 31F49 (37 bytes)
_DATA_31F25_:
.db $04 $80 $80 $02 $1F $90 $E8 $01 $05 $02 $80 $A0 $02 $B7 $90 $F4
.db $00 $05 $04 $80 $C0 $02 $F9 $90 $E8 $00 $09 $05 $C0 $E0 $02 $DC
.db $AB $00 $00 $00 $00

; 7th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31F4A to 31F65 (28 bytes)
_DATA_31F4A_:
.db $03 $80 $80 $03 $AB $91 $E0 $01 $05 $01 $80 $A0 $03 $0A $92 $F8
.db $00 $04 $04 $80 $C0 $03 $AA $91 $EC $00 $09 $05

; 8th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31F66 to 31F8A (37 bytes)
_DATA_31F66_:
.db $04 $80 $80 $02 $5A $92 $F0 $01 $06 $02 $80 $A0 $02 $8B $92 $FC
.db $00 $05 $04 $80 $C0 $02 $C1 $92 $F0 $00 $09 $05 $C0 $E0 $02 $96
.db $AC $00 $00 $00 $00

; 9th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31F8B to 31FB8 (46 bytes)
_DATA_31F8B_:
.db $05 $00 $80 $02 $DE $92 $EC $01 $06 $FF $80 $80 $02 $DE $92 $EC
.db $01 $06 $02 $80 $A0 $02 $F1 $93 $F8 $00 $05 $04 $80 $C0 $02 $54
.db $94 $EC $00 $06 $05 $C0 $E0 $02 $B7 $AC $00 $00 $00 $00

; 10th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31FB9 to 31FE6 (46 bytes)
_DATA_31FB9_:
.db $05 $00 $80 $02 $6B $97 $F0 $00 $09 $FF $80 $80 $02 $A5 $94 $F4
.db $01 $09 $02 $80 $A0 $02 $C9 $94 $F4 $00 $05 $04 $80 $C0 $02 $EB
.db $94 $F4 $00 $06 $05 $C0 $E0 $02 $33 $AD $00 $00 $00 $00

; 11th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 31FE7 to 3200B (37 bytes)
_DATA_31FE7_:
.db $04 $80 $80 $03 $0C $95 $EE $01 $05 $01 $80 $A0 $03 $8B $95 $FA
.db $00 $05 $04 $80 $C0 $03 $1A $96 $EE $00 $09 $05 $C0 $E0 $03 $74
.db $AD $00 $00 $00 $00

; 12th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 3200C to 32030 (37 bytes)
_DATA_3200C_:
.db $04 $80 $80 $02 $88 $96 $EE $01 $05 $01 $80 $A0 $02 $E5 $96 $FA
.db $00 $05 $04 $80 $C0 $02 $1C $97 $EE $00 $09 $05 $C0 $E0 $02 $17
.db $AE $00 $00 $00 $00

; 13th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 32031 to 3205E (46 bytes)
_DATA_32031_:
.db $05 $00 $80 $02 $6B $97 $F0 $00 $09 $01 $80 $80 $02 $6B $97 $F0
.db $00 $09 $01 $80 $A0 $02 $AC $97 $F0 $00 $05 $04 $80 $C0 $02 $CD
.db $97 $F0 $00 $06 $05 $C0 $E0 $02 $69 $AE $00 $00 $00 $00

; 14th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 3205F to 3208C (46 bytes)
_DATA_3205F_:
.db $05 $00 $80 $02 $FB $97 $F4 $01 $06 $FF $80 $80 $02 $FB $97 $F4
.db $01 $06 $01 $80 $A0 $02 $2D $98 $F4 $00 $05 $04 $80 $C0 $02 $6A
.db $98 $F4 $00 $06 $03 $C0 $E0 $02 $9E $AE $00 $00 $00 $00

; 15th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 3208D to 320B1 (37 bytes)
_DATA_3208D_:
.db $04 $80 $80 $02 $90 $98 $E6 $01 $05 $02 $80 $A0 $02 $F1 $98 $F2
.db $00 $05 $04 $80 $C0 $02 $79 $99 $E6 $00 $05 $02 $C0 $E0 $02 $DE
.db $AE $00 $00 $00 $00

; 16th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 320B2 to 320D6 (37 bytes)
_DATA_320B2_:
.db $04 $80 $80 $02 $2A $9A $EE $00 $06 $01 $80 $A0 $02 $D9 $9A $FA
.db $00 $04 $04 $80 $C0 $02 $41 $9B $EE $00 $06 $05 $C0 $E0 $02 $57
.db $AF $00 $00 $00 $00

; 18th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 320D7 to 320FB (37 bytes)
_DATA_320D7_:
.db $04 $80 $80 $02 $D5 $9B $E8 $01 $06 $01 $80 $A0 $02 $5C $9C $F4
.db $00 $05 $04 $80 $C0 $02 $CE $9C $E8 $00 $06 $05 $C0 $E0 $02 $F1
.db $AF $00 $00 $00 $0F

; 19th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 320FC to 32120 (37 bytes)
_DATA_320FC_:
.db $04 $80 $80 $02 $1E $9D $E8 $01 $09 $01 $80 $A0 $02 $6F $9D $F4
.db $00 $06 $04 $80 $C0 $02 $D1 $9D $E8 $00 $06 $05 $C0 $E0 $02 $5A
.db $B0 $00 $00 $00 $00

; 20th entry of Pointer Table from 30253 (indexed by _RAM_C004_)
; Data from 32121 to 3213D (29 bytes)
_DATA_32121_:
.db $03 $80 $80 $02 $37 $9E $EC $00 $05 $01 $80 $A0 $02 $49 $9E $EC
.db $00 $05 $04 $80 $C0 $02 $5B $9E $EC $00 $06 $05 $FF

; 1st entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3213E to 32155 (24 bytes)
_DATA_3213E_:
.db $01 $88 $E0 $01 $48 $A1 $00 $00 $01 $00 $F3 $07 $00 $20 $01 $00
.db $00 $20 $F7 $00 $04 $4A $A1 $F2

; 2nd entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32156 to 3217D (40 bytes)
_DATA_32156_:
.db $02 $A8 $A0 $01 $69 $A1 $00 $00 $00 $00 $A8 $C0 $01 $69 $A1 $08
.db $02 $05 $00 $02 $00 $15 $04 $02 $40 $E0 $06 $FB $F2 $04 $F7 $00
.db $04 $69 $A1 $01 $50 $F8 $14 $F2

; 3rd entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3217E to 3219D (32 bytes)
_DATA_3217E_:
.db $02 $A8 $A0 $01 $91 $A1 $00 $01 $04 $00 $A8 $C0 $01 $91 $A1 $F0
.db $01 $04 $00 $03 $FF $F0 $02 $00 $60 $0A $01 $02 $00 $E0 $18 $F2

; 4th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3219E to 321D1 (52 bytes)
_DATA_3219E_:
.db $02 $A8 $A0 $01 $B1 $A1 $00 $00 $04 $00 $A8 $E0 $01 $C6 $A1 $00
.db $00 $04 $00 $03 $F0 $A0 $06 $03 $D0 $E7 $06 $03 $00 $8F $05 $FB
.db $14 $14 $F7 $00 $05 $B9 $A1 $F2 $00 $20 $13 $06 $F5 $04 $04 $00
.db $20 $05 $14 $F2

; 5th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 321D2 to 321FE (45 bytes)
_DATA_321D2_:
.db $02 $A8 $A0 $01 $E5 $A1 $00 $00 $00 $00 $A8 $E0 $01 $F2 $A1 $00
.db $00 $00 $00 $03 $F0 $90 $04 $03 $FF $DC $08 $03 $20 $E9 $14 $F2
.db $00 $10 $25 $04 $00 $40 $15 $04 $00 $80 $FB $14 $F2

; 6th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 321FF to 3222B (45 bytes)
_DATA_321FF_:
.db $02 $88 $A0 $01 $12 $A2 $00 $00 $00 $00 $88 $C0 $01 $12 $A2 $F6
.db $00 $00 $00 $01 $60 $01 $FB $F2 $04 $F7 $00 $02 $12 $A2 $00 $60
.db $01 $FB $F6 $FC $F7 $00 $04 $1D $A2 $00 $60 $14 $F2

; 7th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3222C to 32264 (57 bytes)
_DATA_3222C_:
.db $02 $A8 $A0 $01 $3F $A2 $03 $01 $00 $00 $A8 $E0 $01 $58 $A2 $03
.db $01 $00 $00 $03 $80 $09 $06 $03 $FF $FC $08 $F5 $01 $04 $FC $00
.db $03 $FF $03 $FB $F4 $FC $F7 $00 $0A $4C $A2 $F2 $00 $30 $20 $03
.db $00 $F0 $FE $08 $00 $78 $FE $14 $F2

; 8th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32265 to 32280 (28 bytes)
_DATA_32265_:
.db $01 $A8 $E0 $01 $6F $A2 $00 $00 $00 $00 $F3 $03 $00 $10 $10 $04
.db $00 $80 $FD $0A $F5 $04 $04 $00 $60 $F8 $0A $F2

; 10th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32281 to 322C6 (70 bytes)
_DATA_32281_:
.db $02 $88 $A0 $01 $94 $A2 $00 $00 $02 $00 $88 $E0 $01 $B2 $A2 $00
.db $00 $02 $00 $03 $F0 $02 $00 $10 $02 $F7 $00 $0C $94 $A2 $F2 $03
.db $00 $04 $04 $10 $04 $F7 $00 $04 $A0 $A2 $FC $01 $05 $00 $EF $10
.db $F2 $00 $20 $02 $00 $10 $04 $F7 $00 $05 $B2 $A2 $F5 $00 $04 $FC
.db $01 $00 $A3 $F7 $12 $F2

; 11th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 322C7 to 322F0 (42 bytes)
_DATA_322C7_:
.db $02 $A8 $A0 $01 $DA $A2 $10 $00 $00 $04 $A8 $C0 $01 $DA $A2 $00
.db $00 $00 $04 $01 $40 $15 $04 $01 $80 $EE $08 $EF $FF $FB $0A $14
.db $F7 $00 $04 $DA $A2 $01 $80 $FA $14 $F2

; 12th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 322F1 to 3230C (28 bytes)
_DATA_322F1_:
.db $02 $80 $A0 $01 $04 $A3 $03 $01 $09 $00 $80 $C0 $01 $04 $A3 $03
.db $00 $09 $00 $A2 $02 $A5 $A9 $AB $AC $AE $18 $F2

; 13th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3230D to 32327 (27 bytes)
_DATA_3230D_:
.db $02 $80 $A0 $01 $20 $A3 $03 $01 $09 $00 $80 $C0 $01 $20 $A3 $03
.db $00 $09 $00 $B1 $0C $99 $AA $A7 $F6 $20 $A3

; 14th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32328 to 32356 (47 bytes)
_DATA_32328_:
.db $02 $A8 $A0 $01 $3B $A3 $03 $01 $00 $00 $A8 $E0 $01 $49 $A3 $03
.db $01 $00 $00 $03 $FF $C1 $03 $F7 $00 $03 $3B $A3 $03 $80 $12 $08
.db $F2 $00 $10 $38 $03 $F7 $00 $03 $49 $A3 $00 $40 $FA $08 $F2

; 15th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32357 to 3237F (41 bytes)
_DATA_32357_:
.db $02 $88 $A0 $01 $6A $A3 $00 $00 $00 $00 $88 $E0 $01 $74 $A3 $00
.db $00 $00 $00 $02 $80 $03 $01 $20 $04 $03 $80 $08 $F2 $F3 $03 $00
.db $10 $03 $00 $80 $04 $00 $20 $08 $F2

; 16th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32380 to 323C3 (68 bytes)
_DATA_32380_:
.db $02 $88 $A0 $01 $AD $A3 $00 $01 $00 $00 $88 $C0 $01 $AD $A3 $30
.db $01 $00 $00 $05 $20 $40 $1F $FC $00 $05 $A0 $04 $08 $20 $04 $05
.db $00 $02 $FB $10 $10 $EF $01 $F7 $02 $03 $99 $A3 $F2 $01 $80 $01
.db $00 $A0 $01 $02 $20 $01 $01 $00 $01 $FB $10 $10 $EF $01 $F7 $02
.db $08 $AD $A3 $F2

; 17th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 323C4 to 323E6 (35 bytes)
_DATA_323C4_:
.db $02 $A8 $A0 $01 $D7 $A3 $00 $04 $01 $00 $A8 $C0 $01 $D7 $A3 $F6
.db $04 $01 $00 $01 $70 $05 $04 $01 $80 $FB $03 $F5 $02 $04 $01 $10
.db $DD $0A $F2

; 18th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 323E7 to 32422 (60 bytes)
_DATA_323E7_:
.db $02 $A8 $A0 $01 $FA $A3 $00 $00 $05 $00 $A8 $E0 $01 $10 $A4 $00
.db $00 $00 $00 $00 $80 $73 $06 $F5 $09 $04 $00 $40 $76 $06 $FB $1A
.db $0A $EF $01 $F7 $00 $08 $01 $A4 $F2 $00 $30 $0C $06 $00 $40 $26
.db $06 $FB $02 $02 $EF $01 $F7 $00 $08 $14 $A4 $F2

; 19th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32423 to 32439 (23 bytes)
_DATA_32423_:
.db $01 $A8 $C0 $01 $2D $A4 $00 $00 $00 $00 $01 $00 $33 $03 $01 $A0
.db $F6 $02 $00 $60 $10 $0A $F2

; 20th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3243A to 32454 (27 bytes)
_DATA_3243A_:
.db $02 $80 $A0 $01 $4D $A4 $03 $01 $04 $00 $80 $C0 $01 $4E $A4 $03
.db $00 $04 $00 $04 $A5 $06 $9E $A7 $A5 $18 $F2

; 1st entry of Pointer Table from 302DB (indexed by _RAM_C004_)
; Data from 32455 to 32467 (19 bytes)
_DATA_32455_:
.db $01 $88 $C0 $01 $5F $A4 $00 $00 $01 $00 $03 $00 $03 $03 $F0 $03
.db $F6 $5F $A4

; 2nd entry of Pointer Table from 302DB (indexed by _RAM_C004_)
; Data from 32468 to 3247C (21 bytes)
_DATA_32468_:
.db $01 $A8 $C0 $01 $72 $A4 $00 $00 $00 $03 $02 $00 $E7 $06 $01 $80
.db $0E $0A $F6 $72 $A4

; 3rd entry of Pointer Table from 302DB (indexed by _RAM_C004_)
; Data from 3247D to 32493 (23 bytes)
_DATA_3247D_:
.db $01 $88 $E0 $01 $87 $A4 $FA $03 $04 $00 $00 $A0 $01 $00 $10 $01
.db $00 $80 $02 $00 $28 $03 $F2

; 25th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32494 to 324F5 (98 bytes)
_DATA_32494_:
.db $03 $88 $80 $01 $B0 $A4 $FF $01 $00 $05 $88 $A0 $01 $B0 $A4 $00
.db $01 $00 $05 $88 $E0 $01 $D3 $A4 $FF $01 $00 $00 $02 $00 $04 $FB
.db $FF $02 $F7 $00 $14 $B0 $A4 $02 $00 $08 $FB $FE $02 $F7 $00 $08
.db $BB $A4 $F5 $00 $04 $02 $00 $50 $FC $01 $02 $00 $FF $50 $F2 $00
.db $80 $04 $FB $FF $FE $F7 $00 $14 $D3 $A4 $00 $80 $08 $FB $FF $FE
.db $F7 $00 $08 $DE $A4 $F5 $05 $04 $00 $80 $50 $FC $01 $00 $80 $FF
.db $50 $F2

; 26th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 324F6 to 32525 (48 bytes)
_DATA_324F6_:
.db $02 $A8 $A0 $01 $09 $A5 $00 $00 $00 $00 $A8 $C0 $01 $09 $A5 $00
.db $00 $00 $00 $02 $00 $F6 $0A $FB $F8 $F6 $F7 $00 $08 $09 $A5 $02
.db $00 $A0 $02 $EE $01 $EF $01 $FB $0C $12 $F7 $00 $0A $15 $A5 $F2

; 27th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32526 to 32542 (29 bytes)
_DATA_32526_:
.db $02 $80 $A0 $01 $39 $A5 $00 $01 $04 $00 $80 $C0 $01 $3A $A5 $04
.db $00 $04 $00 $02 $A5 $03 $A9 $AB $AC $AE $B0 $30 $F2

; 28th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32543 to 32555 (19 bytes)
_DATA_32543_:
.db $01 $A8 $C0 $01 $4D $A5 $03 $01 $09 $00 $01 $00 $DA $04 $00 $10
.db $0B $0E $F2

; 29th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32556 to 3257A (37 bytes)
_DATA_32556_:
.db $02 $88 $A0 $01 $69 $A5 $00 $00 $01 $04 $88 $E0 $01 $72 $A5 $00
.db $00 $01 $00 $04 $50 $06 $F7 $00 $09 $69 $A5 $F2 $00 $40 $08 $F7
.db $00 $09 $72 $A5 $F2

; 30th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3257B to 3259D (35 bytes)
_DATA_3257B_:
.db $02 $88 $A0 $02 $8E $A5 $00 $00 $02 $00 $88 $E0 $02 $95 $A5 $00
.db $00 $02 $00 $03 $40 $06 $03 $00 $08 $F2 $F3 $03 $00 $80 $06 $00
.db $60 $08 $F2

; 31st entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3259E to 325AB (14 bytes)
_DATA_3259E_:
.db $01 $88 $C0 $02 $A8 $A5 $03 $00 $02 $00 $01 $00 $03 $F2

; 32nd entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 325AC to 325CC (33 bytes)
_DATA_325AC_:
.db $02 $80 $A0 $01 $C0 $A5 $03 $01 $00 $00 $80 $C0 $01 $BF $A5 $03
.db $00 $04 $00 $02 $99 $02 $FB $01 $02 $F7 $00 $10 $C0 $A5 $99 $30
.db $F2

; 33rd entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 325CD to 325F2 (38 bytes)
_DATA_325CD_:
.db $02 $A8 $A0 $01 $E0 $A5 $17 $04 $00 $00 $A8 $C0 $01 $E0 $A5 $00
.db $01 $00 $00 $02 $80 $1D $06 $02 $80 $29 $06 $FB $0A $0A $EF $01
.db $F7 $00 $04 $E4 $A5 $F2

; 34th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 325F3 to 32610 (30 bytes)
_DATA_325F3_:
.db $02 $80 $A0 $01 $06 $A6 $04 $01 $02 $00 $80 $C0 $01 $06 $A6 $0A
.db $00 $03 $00 $99 $04 $FB $01 $01 $F7 $00 $12 $06 $A6 $F2

; 35th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32611 to 3263D (45 bytes)
_DATA_32611_:
.db $02 $80 $A0 $03 $25 $A6 $00 $01 $0A $00 $80 $C0 $03 $24 $A6 $00
.db $00 $0A $00 $02 $B5 $12 $B1 $06 $30 $B8 $06 $B6 $0C $B5 $06 $B3
.db $09 $B5 $B1 $06 $B1 $B5 $0C $B3 $AC $06 $AC $24 $F2

; 36th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3263E to 32650 (19 bytes)
_DATA_3263E_:
.db $01 $88 $E0 $01 $48 $A6 $00 $00 $01 $00 $00 $40 $0E $F7 $00 $03
.db $48 $A6 $F2

; 38th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32651 to 3266F (31 bytes)
_DATA_32651_:
.db $02 $80 $A0 $01 $65 $A6 $00 $01 $05 $00 $80 $C0 $01 $64 $A6 $00
.db $01 $05 $00 $02 $A9 $0C $B0 $B1 $B0 $B1 $B3 $B0 $B5 $20 $F2

; 39th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32670 to 3269E (47 bytes)
_DATA_32670_:
.db $02 $A8 $A0 $01 $83 $A6 $03 $00 $04 $00 $A8 $E0 $01 $91 $A6 $03
.db $00 $04 $00 $03 $00 $33 $06 $F7 $00 $03 $83 $A6 $03 $FF $F3 $14
.db $F2 $00 $20 $06 $06 $F7 $00 $03 $91 $A6 $00 $FF $F4 $14 $F2

; 40th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3269F to 326DC (62 bytes)
_DATA_3269F_:
.db $02 $A8 $A0 $01 $B2 $A6 $30 $00 $00 $04 $A8 $E0 $01 $C6 $A6 $00
.db $00 $00 $00 $02 $00 $F8 $03 $01 $F0 $1C $0A $FC $00 $04 $00 $06
.db $03 $00 $06 $02 $00 $08 $F2 $00 $40 $E8 $03 $00 $10 $18 $0A $FC
.db $00 $F5 $02 $04 $00 $40 $06 $00 $10 $06 $00 $30 $08 $F2

; 41st entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 326DD to 32721 (69 bytes)
_DATA_326DD_:
.db $02 $A8 $A0 $01 $F0 $A6 $00 $00 $07 $00 $A8 $E0 $01 $07 $A7 $00
.db $00 $07 $00 $03 $40 $0C $06 $F5 $00 $04 $00 $10 $07 $10 $FC $00
.db $03 $40 $04 $03 $20 $06 $03 $60 $06 $F2 $F3 $03 $00 $40 $F7 $06
.db $F5 $00 $04 $00 $10 $07 $10 $F3 $07 $FC $00 $00 $40 $05 $00 $20
.db $06 $00 $60 $06 $F2

; 42nd entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32722 to 3276E (77 bytes)
_DATA_32722_:
.db $02 $88 $A0 $01 $35 $A7 $0E $09 $00 $00 $88 $E0 $01 $52 $A7 $0F
.db $0A $00 $02 $03 $00 $06 $02 $40 $05 $F7 $00 $03 $35 $A7 $01 $00
.db $0A $FC $01 $03 $00 $12 $08 $FB $0A $0A $F7 $00 $04 $45 $A7 $F2
.db $03 $00 $06 $02 $40 $05 $F7 $00 $03 $35 $A7 $01 $00 $0A $FC $01
.db $03 $00 $12 $08 $FB $0A $0A $F7 $00 $04 $62 $A7 $F2

; 43rd entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 3276F to 32793 (37 bytes)
_DATA_3276F_:
.db $02 $A8 $A0 $01 $82 $A7 $00 $00 $00 $00 $A8 $E0 $01 $8B $A7 $00
.db $00 $00 $00 $03 $10 $F8 $08 $00 $FF $41 $0A $F2 $00 $20 $F8 $05
.db $00 $20 $0C $0A $F2

; 44th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32794 to 327C0 (45 bytes)
_DATA_32794_:
.db $02 $A8 $A0 $01 $A7 $A7 $00 $04 $09 $00 $A8 $E0 $01 $B4 $A7 $00
.db $00 $09 $00 $01 $00 $7A $08 $03 $80 $B3 $04 $00 $20 $00 $0E $F2
.db $00 $30 $04 $08 $00 $30 $04 $04 $00 $40 $F8 $0E $F2

; 45th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 327C1 to 327ED (45 bytes)
_DATA_327C1_:
.db $02 $88 $A0 $01 $D4 $A7 $00 $00 $00 $00 $88 $E0 $01 $E1 $A7 $00
.db $00 $00 $00 $00 $80 $01 $03 $FF $04 $03 $80 $04 $03 $FF $06 $F2
.db $00 $20 $01 $00 $2F $04 $00 $10 $04 $00 $80 $06 $F2

; 46th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 327EE to 32811 (36 bytes)
_DATA_327EE_:
.db $02 $A8 $A0 $01 $01 $A8 $00 $00 $00 $00 $A8 $C0 $01 $01 $A8 $03
.db $01 $00 $00 $04 $80 $08 $06 $04 $FF $FC $04 $04 $80 $FC $0A $04
.db $80 $F6 $0A $F2

; 47th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32812 to 3283F (46 bytes)
_DATA_32812_:
.db $02 $A8 $A0 $01 $25 $A8 $00 $00 $00 $00 $A8 $E0 $01 $2E $A8 $00
.db $00 $00 $00 $00 $70 $2E $08 $03 $B0 $92 $06 $F2 $F3 $03 $00 $01
.db $03 $04 $00 $01 $2A $06 $F5 $04 $04 $00 $40 $06 $06 $F2

; 48th entry of Pointer Table from 3027B (indexed by _RAM_C004_)
; Data from 32840 to 32876 (55 bytes)
_DATA_32840_:
.db $02 $A8 $A0 $01 $53 $A8 $00 $00 $00 $00 $A8 $E0 $01 $64 $A8 $00
.db $00 $00 $00 $00 $10 $4A $04 $03 $40 $06 $05 $03 $00 $FC $06 $03
.db $F0 $BA $05 $F2 $F3 $03 $00 $01 $0A $04 $00 $02 $06 $05 $00 $01
.db $0C $03 $00 $01 $0A $06 $F2

; Pointer Table from 32877 to 3288C (11 entries, indexed by _RAM_C0F5_)
_DATA_32877_:
.dw _DATA_3288D_ _DATA_32890_ _DATA_3289D_ _DATA_328A6_ _DATA_328AF_ _DATA_328BA_ _DATA_328D9_ _DATA_328E4_
.dw _DATA_328F5_ _DATA_32901_ _DATA_3290B_

; 1st entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 3288D to 3288F (3 bytes)
_DATA_3288D_:
.db $00 $00 $82

; 2nd entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 32890 to 3289C (13 bytes)
_DATA_32890_:
.db $00 $00 $01 $02 $02 $03 $03 $04 $04 $05 $05 $06 $82

; 3rd entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 3289D to 328A5 (9 bytes)
_DATA_3289D_:
.db $01 $00 $01 $01 $03 $04 $07 $0A $82

; 4th entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 328A6 to 328AE (9 bytes)
_DATA_328A6_:
.db $01 $00 $00 $00 $00 $00 $01 $01 $82

; 5th entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 328AF to 328B9 (11 bytes)
_DATA_328AF_:
.db $02 $01 $00 $01 $02 $02 $03 $03 $04 $04 $81

; 6th entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 328BA to 328D8 (31 bytes)
_DATA_328BA_:
.db $00 $00 $01 $01 $01 $01 $02 $02 $02 $02 $03 $03 $03 $03 $04 $04
.db $04 $04 $05 $05 $05 $05 $06 $06 $06 $06 $07 $07 $07 $08 $81

; 7th entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 328D9 to 328E3 (11 bytes)
_DATA_328D9_:
.db $04 $04 $03 $03 $02 $02 $01 $01 $02 $02 $81

; 8th entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 328E4 to 328F4 (17 bytes)
_DATA_328E4_:
.db $00 $00 $00 $00 $00 $00 $04 $05 $06 $07 $08 $09 $0A $0B $0E $0F
.db $82

; 9th entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 328F5 to 32900 (12 bytes)
_DATA_328F5_:
.db $00 $00 $01 $01 $03 $03 $04 $05 $05 $05 $83 $04

; 10th entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 32901 to 3290A (10 bytes)
_DATA_32901_:
.db $02 $02 $03 $03 $02 $02 $01 $01 $00 $00

; 11th entry of Pointer Table from 32877 (indexed by _RAM_C0F5_)
; Data from 3290B to 32915 (11 bytes)
_DATA_3290B_:
.db $02 $01 $00 $00 $01 $01 $02 $03 $04 $05 $81

; Pointer Table from 32916 to 3291F (5 entries, indexed by _RAM_C10E_)
_DATA_32916_:
.dw _DATA_32920_ _DATA_32936_ _DATA_32952_ _DATA_32969_ _DATA_32969_

; 1st entry of Pointer Table from 32916 (indexed by _RAM_C10E_)
; Data from 32920 to 32935 (22 bytes)
_DATA_32920_:
.db $01 $01 $01 $01 $01 $01 $01 $01 $01 $01 $00 $00 $01 $01 $02 $02
.db $01 $00 $01 $01 $02 $02

; 2nd entry of Pointer Table from 32916 (indexed by _RAM_C10E_)
; Data from 32936 to 32951 (28 bytes)
_DATA_32936_:
.db $01 $00 $00 $01 $02 $03 $03 $02 $01 $00 $00 $01 $02 $03 $03 $02
.db $02 $01 $00 $00 $00 $01 $02 $03 $04 $03 $02 $01

; 3rd entry of Pointer Table from 32916 (indexed by _RAM_C10E_)
; Data from 32952 to 32968 (23 bytes)
_DATA_32952_:
.db $00 $01 $02 $04 $05 $04 $03 $02 $01 $00 $01 $02 $03 $04 $05 $04
.db $03 $02 $01 $00 $01 $01 $81

; 4th entry of Pointer Table from 32916 (indexed by _RAM_C10E_)
; Data from 32969 to 33107 (1951 bytes)
_DATA_32969_:
.incbin "Phantasy Star (UE) (V1.2) [!]_32969.inc"

; Data from 33108 to 33117 (16 bytes)
_DATA_33108_:
.db $5C $20 $44 $4F $44 $47 $45 $53 $60 $5B $40 $53 $20 $82 $2E $63

; Data from 33118 to 33127 (16 bytes)
_DATA_33118_:
.db $5B $20 $44 $4F $44 $47 $45 $53 $60 $5C $40 $53 $20 $82 $2E $63

; Data from 33128 to 33131 (10 bytes)
_DATA_33128_:
.db $5B $20 $53 $50 $45 $41 $4B $53 $2E $62

; Data from 33132 to 3313C (11 bytes)
_DATA_33132_:
.db $5C $20 $41 $4E $53 $57 $45 $52 $53 $2E $63

; Data from 3313D to 3315D (33 bytes)
_DATA_3313D_:
.db $5B $20 $41 $4E $44 $20 $5C $60 $88 $20 $55 $4E $44 $45 $52 $53
.db $54 $41 $4E $44 $61 $45 $41 $43 $48 $20 $4F $54 $48 $45 $52 $2E
.db $63

; Data from 3315E to 33171 (20 bytes)
_DATA_3315E_:
.db $5C $20 $42 $4C $4F $43 $4B $53 $60 $F6 $20 $52 $45 $54 $52 $45
.db $41 $54 $2E $63

; Data from 33172 to 3318A (25 bytes)
_DATA_33172_:
.db $5B $40 $53 $20 $84 $49 $53 $60 $F8 $83 $2E $63 $5C $40 $53 $20
.db $EF $60 $49 $53 $20 $F8 $83 $2E $63

; Data from 3318B to 331A2 (24 bytes)
_DATA_3318B_:
.db $41 $4E $20 $49 $4E $56 $49 $53 $49 $42 $4C $45 $20 $EF $85 $20
.db $41 $52 $49 $53 $45 $53 $2E $63

; Data from 331A3 to 331B1 (15 bytes)
_DATA_331A3_:
.db $DE $84 $85 $60 $87 $20 $DE $61 $5C $40 $53 $20 $82 $2E $63

; Data from 331B2 to 331C0 (15 bytes)
_DATA_331B2_:
.db $DE $84 $85 $60 $87 $20 $DE $61 $5C $40 $53 $20 $EF $2E $63

; Data from 331C1 to 331CF (15 bytes)
_DATA_331C1_:
.db $DE $84 $85 $60 $44 $49 $53 $41 $50 $50 $45 $41 $52 $2E $63

; Data from 331D0 to 331D7 (8 bytes)
_DATA_331D0_:
.db $5B $20 $49 $53 $20 $86 $2E $63

; Data from 331D8 to 331DF (8 bytes)
_DATA_331D8_:
.db $5C $20 $49 $53 $60 $86 $2E $63

; Data from 331E0 to 331ED (14 bytes)
_DATA_331E0_:
.db $5C $20 $49 $53 $20 $54 $49 $45 $44 $60 $55 $50 $2E $63

; Data from 331EE to 331FB (14 bytes)
_DATA_331EE_:
.db $5B $20 $49 $53 $20 $54 $49 $45 $44 $20 $55 $50 $2E $63

; Data from 331FC to 33202 (7 bytes)
_DATA_331FC_:
.db $5B $20 $88 $20 $F3 $2E $63

; Data from 33203 to 33209 (7 bytes)
_DATA_33203_:
.db $5C $20 $88 $60 $F3 $2E $63

; Data from 3320A to 3321C (19 bytes)
_DATA_3320A_:
.db $5B $20 $52 $45 $F3 $53 $20 $DE $60 $42 $49 $4E $44 $49 $4E $47
.db $53 $2E $63

; Data from 3321D to 3322E (18 bytes)
_DATA_3321D_:
.db $5C $20 $52 $45 $F3 $53 $60 $DE $42 $49 $4E $44 $49 $4E $47 $53
.db $2E $63

; Data from 3322F to 3324B (29 bytes)
_DATA_3322F_:
.db $5B $20 $49 $53 $20 $42 $55 $52 $53 $54 $49 $4E $47 $60 $57 $49
.db $54 $48 $20 $53 $54 $52 $45 $4E $47 $54 $48 $2E $63

; Data from 3324C to 3325E (19 bytes)
_DATA_3324C_:
.db $5C $20 $52 $45 $43 $4F $49 $4C $53 $60 $49 $4E $20 $46 $45 $41
.db $52 $2E $63

; Data from 3325F to 3327E (32 bytes)
_DATA_3325F_:
.db $80 $20 $41 $4E $44 $20 $48 $45 $52 $60 $43 $4F $4D $50 $F6 $20
.db $45 $53 $43 $41 $50 $45 $61 $51 $55 $49 $43 $4B $4C $59 $2E $63

; Data from 3327F to 3328D (15 bytes)
_DATA_3327F_:
.db $D1 $20 $57 $41 $53 $20 $4E $4F $20 $54 $52 $41 $50 $2E $65

; Data from 3328E to 332AB (30 bytes)
_DATA_3328E_:
.db $5B $20 $53 $50 $4F $54 $54 $45 $44 $20 $41 $4E $44 $60 $44 $49
.db $53 $41 $52 $4D $45 $44 $20 $DE $54 $52 $41 $50 $2E $65

; Data from 332AC to 332B5 (10 bytes)
_DATA_332AC_:
.db $5B $20 $55 $53 $45 $53 $60 $5D $2E $63

; Data from 332B6 to 332C1 (12 bytes)
_DATA_332B6_:
.db $5B $20 $45 $51 $55 $49 $50 $53 $60 $5D $2E $62

; Data from 332C2 to 332CC (11 bytes)
_DATA_332C2_:
.db $5B $20 $44 $52 $4F $50 $53 $60 $5D $2E $65

; Data from 332CD to 332E2 (22 bytes)
_DATA_332CD_:
.db $42 $55 $54 $20 $49 $54 $20 $48 $41 $53 $20 $4E $4F $60 $45 $46
.db $46 $45 $43 $54 $2E $63

; Data from 332E3 to 332FA (24 bytes)
_DATA_332E3_:
.db $55 $53 $49 $4E $47 $20 $5D $60 $C7 $20 $44 $4F $20 $4E $4F $20
.db $47 $4F $4F $44 $61 $D2 $2E $65

; Data from 332FB to 33304 (10 bytes)
_DATA_332FB_:
.db $88 $20 $44 $49 $53 $F5 $60 $D2 $21 $65

; Data from 33305 to 33309 (5 bytes)
_DATA_33305_:
.db $F5 $45 $44 $2E $63

; Data from 3330A to 33311 (8 bytes)
_DATA_3330A_:
.db $44 $49 $53 $F5 $45 $44 $2E $63

; Data from 33312 to 33321 (16 bytes)
_DATA_33312_:
.db $4E $4F $F7 $20 $48 $41 $50 $50 $45 $4E $53 $2C $60 $AE $2E $63

; Data from 33322 to 3335B (58 bytes)
_DATA_33322_:
.db $5C $20 $48 $45 $41 $52 $53 $20 $54 $48 $45 $60 $46 $4C $55 $54
.db $45 $20 $41 $4E $44 $20 $46 $41 $4C $4C $53 $61 $41 $53 $4C $45
.db $45 $50 $2E $63 $5C $40 $53 $20 $45 $59 $45 $53 $60 $4C $4F $4F
.db $4B $20 $56 $41 $43 $41 $4E $54 $2E $63

; Data from 3335C to 33365 (10 bytes)
_DATA_3335C_:
.db $88 $20 $44 $4F $20 $DC $60 $D2 $2E $63

; Data from 33366 to 33374 (15 bytes)
_DATA_33366_:
.db $5B $20 $54 $41 $4B $45 $53 $20 $4F $55 $54 $60 $5D $2E $63

; Data from 33375 to 33391 (29 bytes)
_DATA_33375_:
.db $49 $54 $20 $44 $4F $45 $53 $4E $40 $54 $20 $53 $45 $45 $4D $20
.db $54 $4F $42 $45 $20 $42 $52 $4F $4B $45 $4E $2E $65

; Data from 33392 to 333B0 (31 bytes)
_DATA_33392_:
.db $88 $20 $47 $4F $20 $46 $4F $52 $57 $41 $52 $44 $2C $49 $54 $40
.db $53 $20 $50 $49 $54 $43 $48 $20 $42 $4C $41 $43 $4B $2E $65

; Data from 333B1 to 333E2 (50 bytes)
_DATA_333B1_:
.db $DE $42 $4F $54 $54 $4C $45 $43 $41 $50 $60 $4F $50 $45 $4E $53
.db $20 $41 $4E $44 $20 $DE $61 $43 $4F $4E $54 $45 $4E $54 $53 $20
.db $51 $55 $49 $45 $54 $4C $59 $60 $4C $45 $41 $4B $20 $4F $55 $54
.db $2E $63

; Data from 333E3 to 333F8 (22 bytes)
_DATA_333E3_:
.db $42 $55 $54 $20 $81 $20 $88 $60 $4F $50 $45 $4E $20 $DE $42 $4F
.db $54 $54 $4C $45 $2E $65

; Data from 333F9 to 33403 (11 bytes)
_DATA_333F9_:
.db $49 $54 $20 $53 $54 $49 $4E $4B $53 $21 $65

; Data from 33404 to 33423 (32 bytes)
_DATA_33404_:
.db $5B $20 $48 $41 $53 $20 $41 $20 $54 $45 $52 $52 $49 $2D $60 $42
.db $4C $45 $20 $50 $52 $45 $4D $4F $4E $49 $54 $49 $4F $4E $2E $65

; Data from 33424 to 33430 (13 bytes)
_DATA_33424_:
.db $5B $20 $46 $45 $45 $4C $53 $60 $4E $4F $F7 $2E $65

; Data from 33431 to 33457 (39 bytes)
_DATA_33431_:
.db $5C $20 $53 $45 $45 $53 $20 $DE $60 $52 $45 $44 $20 $46 $4C $41
.db $4D $45 $20 $41 $4E $44 $61 $42 $45 $43 $4F $4D $45 $53 $20 $41
.db $46 $52 $41 $49 $44 $2E $63

; Data from 33458 to 33470 (25 bytes)
_DATA_33458_:
.db $5B $20 $52 $41 $49 $53 $45 $53 $60 $5D $20 $54 $4F $57 $41 $52
.db $44 $53 $61 $DE $53 $4B $59 $2E $63

; Data from 33471 to 33499 (41 bytes)
_DATA_33471_:
.db $5B $20 $54 $41 $4B $45 $53 $20 $DE $4E $55 $54 $60 $4F $46 $20
.db $D7 $20 $41 $4E $44 $20 $50 $55 $54 $53 $61 $49 $54 $20 $49 $4E
.db $20 $DE $BC $4E $50 $4F $54 $2E $65

; Data from 3349A to 334D4 (59 bytes)
_DATA_3349A_:
.db $5B $20 $54 $41 $4B $45 $53 $20 $DE $4E $55 $54 $60 $4F $46 $20
.db $D7 $2C $20 $42 $55 $54 $20 $49 $54 $61 $53 $48 $52 $49 $56 $45
.db $4C $53 $20 $55 $50 $20 $41 $46 $54 $45 $52 $60 $41 $20 $46 $45
.db $57 $20 $4D $4F $4D $45 $4E $54 $53 $2E $65

; Data from 334D5 to 334FF (43 bytes)
_DATA_334D5_:
.db $41 $20 $56 $49 $53 $49 $4F $4E $20 $4F $46 $20 $41 $60 $43 $45
.db $4C $45 $53 $54 $49 $41 $4C $20 $89 $61 $41 $50 $50 $45 $41 $52
.db $20 $49 $4E $20 $DE $60 $53 $4B $59 $2E $65

; Data from 33500 to 3352B (44 bytes)
_DATA_33500_:
.db $4D $59 $41 $55 $20 $49 $53 $4E $40 $54 $20 $48 $55 $4E $47 $52
.db $59 $2C $60 $53 $4F $20 $53 $48 $45 $20 $50 $55 $54 $53 $20 $DE
.db $61 $46 $4F $4F $44 $20 $42 $41 $43 $4B $2E $65

; Data from 3352C to 33543 (24 bytes)
_DATA_3352C_:
.db $8A $20 $53 $48 $41 $4B $45 $53 $20 $48 $49 $53 $60 $48 $45 $41
.db $44 $20 $22 $4E $4F $22 $2E $65

; Data from 33544 to 33554 (17 bytes)
_DATA_33544_:
.db $8A $20 $49 $53 $60 $48 $41 $52 $44 $48 $45 $41 $44 $45 $44 $2E
.db $65

; Data from 33555 to 33568 (20 bytes)
_DATA_33555_:
.db $DA $20 $4E $4F $20 $4E $45 $45 $44 $60 $54 $4F $20 $55 $53 $45
.db $20 $DC $2E $65

; Data from 33569 to 33591 (41 bytes)
_DATA_33569_:
.db $D1 $20 $44 $4F $45 $53 $4E $40 $54 $20 $53 $45 $45 $4D $54 $4F
.db $20 $42 $45 $20 $F6 $F7 $61 $53 $50 $45 $43 $49 $41 $4C $20 $41
.db $42 $4F $55 $54 $20 $49 $54 $2E $65

; Data from 33592 to 3359B (10 bytes)
_DATA_33592_:
.db $E1 $46 $4F $55 $4E $44 $60 $5D $2E $65

; Data from 3359C to 335AF (20 bytes)
_DATA_3359C_:
.db $5B $20 $46 $45 $45 $4C $53 $20 $56 $45 $52 $59 $60 $4C $49 $47
.db $48 $54 $2E $63

; Data from 335B0 to 335B9 (10 bytes)
_DATA_335B0_:
.db $5B $20 $49 $53 $60 $8E $45 $44 $2E $65

; Data from 335BA to 335C7 (14 bytes)
_DATA_335BA_:
.db $4F $44 $49 $4E $20 $88 $20 $55 $53 $45 $60 $EF $2E $63

; Data from 335C8 to 335DD (22 bytes)
_DATA_335C8_:
.db $5B $20 $48 $41 $53 $20 $F8 $60 $4C $45 $41 $52 $4E $45 $44 $20
.db $EF $20 $59 $45 $54 $63

; Data from 335DE to 335EF (18 bytes)
_DATA_335DE_:
.db $5B $20 $88 $20 $45 $51 $55 $49 $50 $60 $DC $20 $49 $54 $45 $4D
.db $2E $65

; Data from 335F0 to 33603 (20 bytes)
_DATA_335F0_:
.db $E1 $4E $45 $45 $44 $20 $F8 $45 $51 $55 $49 $50 $DC $20 $49 $54
.db $45 $4D $2E $65

; Data from 33604 to 33620 (29 bytes)
_DATA_33604_:
.db $E1 $47 $41 $49 $4E $45 $44 $20 $5E $60 $45 $58 $50 $45 $52 $49
.db $45 $4E $43 $45 $20 $50 $4F $49 $4E $54 $53 $2E $65

; Data from 33621 to 33634 (20 bytes)
_DATA_33621_:
.db $5B $20 $41 $44 $56 $41 $4E $43 $45 $44 $60 $41 $20 $4C $45 $56
.db $45 $4C $2E $65

; Data from 33635 to 33647 (19 bytes)
_DATA_33635_:
.db $5B $20 $4C $45 $41 $52 $4E $45 $44 $60 $41 $20 $53 $50 $45 $4C
.db $4C $2E $65

; Data from 33648 to 33655 (14 bytes)
_DATA_33648_:
.db $DB $20 $5E $60 $A1 $20 $49 $4E $53 $49 $44 $45 $2E $65

; Data from 33656 to 33664 (15 bytes)
_DATA_33656_:
.db $C6 $20 $F9 $54 $4F $60 $4F $50 $45 $4E $20 $49 $54 $3F $62

; Data from 33665 to 33670 (12 bytes)
_DATA_33665_:
.db $49 $54 $40 $53 $20 $45 $4D $50 $54 $59 $2E $65

; Data from 33671 to 3368B (27 bytes)
_DATA_33671_:
.db $E1 $88 $20 $8D $60 $F6 $4D $4F $52 $45 $2E $61 $C6 $20 $F9 $54
.db $4F $60 $44 $52 $4F $50 $20 $D5 $F7 $3F $62

; Data from 3368C to 3369D (18 bytes)
_DATA_3368C_:
.db $57 $48 $41 $54 $20 $C6 $20 $F9 $60 $54 $4F $20 $44 $52 $4F $50
.db $3F $62

; Data from 3369E to 336AC (15 bytes)
_DATA_3369E_:
.db $5D $20 $49 $53 $20 $60 $44 $52 $4F $50 $50 $45 $44 $2C $65

; Data from 336AD to 336C0 (20 bytes)
_DATA_336AD_:
.db $41 $4E $44 $20 $5D $20 $49 $53 $60 $50 $49 $43 $4B $45 $44 $20
.db $55 $50 $2E $65

; Data from 336C1 to 336CF (15 bytes)
_DATA_336C1_:
.db $5D $20 $49 $53 $20 $F8 $60 $4E $45 $45 $44 $45 $44 $3F $62

; Data from 336D0 to 336DD (14 bytes)
_DATA_336D0_:
.db $5D $20 $49 $53 $60 $41 $42 $41 $4E $44 $FD $44 $2E $65

; Data from 336DE to 336F6 (25 bytes)
_DATA_336DE_:
.db $5D $20 $53 $48 $FF $4E $40 $54 $60 $42 $45 $20 $54 $48 $52 $4F
.db $57 $4E $20 $41 $57 $41 $59 $2E $65

; Data from 336F7 to 33708 (18 bytes)
_DATA_336F7_:
.db $F8 $45 $4E $4F $55 $47 $48 $20 $EF $60 $50 $4F $49 $4E $54 $53
.db $2E $63

; Data from 33709 to 3371A (18 bytes)
_DATA_33709_:
.db $5B $20 $49 $53 $20 $53 $54 $49 $4C $4C $60 $41 $4C $49 $56 $45
.db $2E $63

; Data from 3371B to 33727 (13 bytes)
_DATA_3371B_:
.db $5C $60 $49 $53 $20 $4B $49 $4C $4C $45 $44 $2E $65

; Data from 33728 to 3372F (8 bytes)
_DATA_33728_:
.db $5B $20 $44 $49 $45 $44 $2E $63

; Data from 33730 to 33742 (19 bytes)
_DATA_33730_:
.db $5B $20 $49 $53 $20 $41 $4C $52 $45 $41 $44 $59 $60 $44 $45 $41
.db $44 $2E $63

; Data from 33743 to 33753 (17 bytes)
_DATA_33743_:
.db $81 $20 $41 $54 $45 $20 $DE $4E $55 $54 $60 $4F $46 $20 $D7 $2E
.db $65

; Data from 33754 to 33760 (13 bytes)
_DATA_33754_:
.db $D0 $20 $EC $57 $45 $60 $47 $4F $49 $4E $47 $3F $62

; Data from 33761 to 3376E (14 bytes)
_DATA_33761_:
.db $8B $8C $53 $4B $55 $52 $45 $20 $4F $4E $20 $93 $3F $62

; Data from 3376F to 3377A (12 bytes)
_DATA_3376F_:
.db $8B $8C $55 $5A $4F $20 $4F $4E $20 $94 $3F $62

; Data from 3377B to 33784 (10 bytes)
_DATA_3377B_:
.db $8B $8C $95 $20 $4F $4E $20 $CF $3F $62

; Data from 33785 to 3378F (11 bytes)
_DATA_33785_:
.db $8B $41 $54 $20 $53 $4B $55 $52 $45 $2E $62

; Data from 33790 to 33798 (9 bytes)
_DATA_33790_:
.db $8B $41 $54 $20 $55 $5A $4F $2E $62

; Data from 33799 to 337A9 (17 bytes)
_DATA_33799_:
.db $8B $41 $54 $20 $95 $2E $62 $4C $45 $54 $40 $53 $20 $47 $4F $21
.db $63

; Data from 337AA to 337C6 (29 bytes)
_DATA_337AA_:
.db $DE $50 $41 $54 $48 $20 $49 $4E $20 $DE $60 $57 $4F $4F $44 $53
.db $20 $49 $53 $20 $55 $4E $43 $4C $45 $41 $52 $2E $65

; Data from 337C7 to 337E2 (28 bytes)
_DATA_337C7_:
.db $E4 $49 $53 $20 $41 $4E $20 $41 $52 $4D $4F $52 $59 $2E $C6 $20
.db $F9 $54 $4F $20 $42 $55 $59 $61 $D5 $F7 $3F $62

; Data from 337E3 to 337F4 (18 bytes)
_DATA_337E3_:
.db $57 $45 $4C $4C $2C $20 $43 $4F $4D $45 $20 $41 $47 $41 $49 $4E
.db $2E $65

; Data from 337F5 to 33806 (18 bytes)
_DATA_337F5_:
.db $57 $48 $49 $43 $48 $20 $C6 $20 $F9 $60 $54 $4F $20 $42 $55 $59
.db $3F $62

; Data from 33807 to 33812 (12 bytes)
_DATA_33807_:
.db $B4 $2E $60 $F6 $F7 $20 $45 $4C $53 $45 $3F $62

; Data from 33813 to 33831 (31 bytes)
_DATA_33813_:
.db $E1 $88 $20 $8D $60 $F6 $20 $4D $4F $52 $45 $2E $61 $B4 $20 $41
.db $4E $44 $60 $43 $4F $4D $45 $20 $41 $47 $41 $49 $4E $2E $65

; Data from 33832 to 3385C (43 bytes)
_DATA_33832_:
.db $E4 $49 $53 $20 $41 $60 $46 $49 $52 $53 $54 $20 $46 $4F $4F $44
.db $20 $53 $48 $4F $50 $2E $61 $57 $FF $20 $E1 $4C $49 $4B $45 $20
.db $54 $4F $60 $42 $55 $59 $20 $D5 $F7 $3F $62

; Data from 3385D to 33881 (37 bytes)
_DATA_3385D_:
.db $E4 $49 $53 $20 $41 $60 $53 $45 $43 $4F $4E $44 $2D $48 $41 $4E
.db $44 $20 $53 $48 $4F $50 $2E $61 $43 $41 $4E $20 $49 $20 $CA $20
.db $59 $4F $55 $3F $62

; Data from 33882 to 33899 (24 bytes)
_DATA_33882_:
.db $57 $48 $41 $54 $20 $57 $FF $20 $E1 $60 $4C $49 $4B $45 $20 $54
.db $4F $20 $53 $45 $4C $4C $3F $62

; Data from 3389A to 338BB (34 bytes)
_DATA_3389A_:
.db $5D $3F $20 $4C $45 $54 $20 $4D $45 $60 $53 $45 $45 $2E $2E $2E
.db $2E $2E $61 $48 $4F $57 $20 $41 $42 $4F $55 $54 $20 $5E $60 $A1
.db $3F $62

; Data from 338BC to 338C7 (12 bytes)
_DATA_338BC_:
.db $B4 $2E $60 $F6 $F7 $20 $45 $4C $53 $45 $3F $62

; Data from 338C8 to 338DF (24 bytes)
_DATA_338C8_:
.db $E4 $49 $53 $20 $41 $20 $48 $4F $53 $50 $49 $54 $41 $4C $C6 $20
.db $4E $45 $45 $44 $20 $CA $3F $62

; Data from 338E0 to 33909 (42 bytes)
_DATA_338E0_:
.db $DE $46 $45 $45 $20 $46 $4F $52 $60 $48 $45 $41 $4C $49 $4E $47
.db $20 $49 $53 $20 $5E $61 $A1 $2E $20 $49 $53 $20 $DC $60 $41 $43
.db $43 $45 $50 $54 $41 $42 $4C $45 $3F $62

; Data from 3390A to 33924 (27 bytes)
_DATA_3390A_:
.db $44 $4F $45 $53 $20 $F6 $FD $20 $45 $4C $53 $45 $60 $4E $45 $45
.db $44 $20 $54 $4F $20 $42 $45 $20 $86 $3F $62

; Data from 33925 to 33937 (19 bytes)
_DATA_33925_:
.db $57 $48 $4F $20 $4E $45 $45 $44 $53 $20 $54 $4F $20 $42 $45 $60
.db $86 $3F $62

; Data from 33938 to 33950 (25 bytes)
_DATA_33938_:
.db $B4 $20 $46 $4F $52 $60 $57 $41 $49 $54 $49 $4E $47 $2E $54 $41
.db $4B $45 $20 $43 $41 $52 $45 $2E $65

; Data from 33951 to 33963 (19 bytes)
_DATA_33951_:
.db $49 $40 $4D $20 $53 $4F $52 $52 $59 $20 $49 $20 $43 $FF $60 $F8
.db $CA $2E $61

; Data from 33964 to 3396A (7 bytes)
_DATA_33964_:
.db $C9 $42 $45 $20 $ED $2E $65

; Data from 3396B to 3397E (20 bytes)
_DATA_3396B_:
.db $5B $20 $49 $53 $20 $F8 $4E $45 $45 $44 $60 $54 $4F $20 $42 $45
.db $20 $86 $2E $65

; Data from 3397F to 339AF (49 bytes)
_DATA_3397F_:
.db $E4 $49 $53 $20 $41 $20 $43 $48 $55 $52 $43 $48 $2E $60 $C6 $20
.db $97 $20 $54 $4F $61 $8E $20 $D5 $FD $3F $62 $49 $20 $53 $48 $41
.db $4C $4C $20 $50 $52 $41 $59 $20 $46 $4F $52 $60 $59 $4F $55 $2E
.db $65

; Data from 339B0 to 339C3 (20 bytes)
_DATA_339B0_:
.db $CC $20 $4E $4F $57 $20 $43 $41 $53 $54 $60 $41 $20 $53 $50 $45
.db $4C $4C $2E $63

; Data from 339C4 to 339D2 (15 bytes)
_DATA_339C4_:
.db $F0 $60 $53 $45 $42 $52 $55 $53 $20 $42 $41 $53 $53 $21 $63

; Data from 339D3 to 339E4 (18 bytes)
_DATA_339D3_:
.db $57 $48 $4F $20 $49 $53 $20 $54 $4F $20 $42 $45 $60 $8E $45 $44
.db $3F $62

; Data from 339E5 to 339ED (9 bytes)
_DATA_339E5_:
.db $F6 $FD $20 $45 $4C $53 $45 $3F $62

; Data from 339EE to 33A03 (22 bytes)
_DATA_339EE_:
.db $DC $20 $52 $45 $51 $55 $49 $52 $45 $53 $60 $5E $20 $A1 $2E $20
.db $4F $2E $4B $2E $3F $62

; Data from 33A04 to 33A1E (27 bytes)
_DATA_33A04_:
.db $54 $4F $20 $41 $44 $56 $41 $4E $43 $45 $20 $54 $4F $60 $DE $4E
.db $45 $58 $54 $20 $4C $45 $56 $45 $4C $2C $65

; Data from 33A1F to 33A3B (29 bytes)
_DATA_33A1F_:
.db $5B $20 $4E $45 $45 $44 $53 $20 $5E $60 $45 $58 $50 $45 $52 $49
.db $45 $4E $43 $45 $20 $50 $4F $49 $4E $54 $53 $2E $65

; Data from 33A3C to 33A55 (26 bytes)
_DATA_33A3C_:
.db $4D $41 $59 $20 $DE $47 $4F $44 $53 $60 $57 $41 $54 $43 $48 $20
.db $4F $56 $45 $52 $20 $59 $4F $55 $21 $65

; Data from 33A56 to 33A61 (12 bytes)
_DATA_33A56_:
.db $5B $20 $49 $53 $20 $41 $4C $49 $56 $45 $2E $62

; Data from 33A62 to 33A81 (32 bytes)
_DATA_33A62_:
.db $C7 $20 $8F $20 $DE $FA $49 $4E $20 $50 $52 $4F $47 $52 $45 $53
.db $53 $2E $61 $C9 $FC $60 $41 $20 $4E $55 $4D $42 $45 $52 $2E $62

; Data from 33A82 to 33A92 (17 bytes)
_DATA_33A82_:
.db $E1 $FC $45 $44 $20 $5E $60 $49 $53 $20 $DC $20 $4F $2E $4B $2E
.db $62

; Data from 33A93 to 33AA2 (16 bytes)
_DATA_33A93_:
.db $57 $45 $4C $4C $2C $20 $53 $41 $56 $49 $4E $47 $20 $5E $2E $63

; Data from 33AA3 to 33AAD (11 bytes)
_DATA_33AA3_:
.db $43 $4F $4D $50 $4C $45 $54 $45 $44 $2E $65

; 1st entry of Pointer Table from 198A (indexed by unknown)
; Data from 33AAE to 33ACF (34 bytes)
_DATA_33AAE_:
.db $57 $45 $20 $F9 $54 $4F $20 $42 $45 $60 $46 $52 $49 $45 $4E $44
.db $53 $20 $57 $49 $54 $48 $61 $50 $45 $4F $50 $4C $45 $20 $FE $CF
.db $2E $65

; 2nd entry of Pointer Table from 198A (indexed by unknown)
; Data from 33AD0 to 33AE5 (22 bytes)
_DATA_33AD0_:
.db $49 $20 $F9 $54 $4F $20 $45 $41 $54 $20 $41 $60 $4E $55 $54 $20
.db $4F $46 $20 $D7 $2E $65

; 3rd entry of Pointer Table from 198A (indexed by unknown)
; Data from 33AE6 to 33AF3 (14 bytes)
_DATA_33AE6_:
.db $44 $4F $20 $F8 $4F $46 $46 $45 $4E $44 $60 $D4 $2E $65

; 4th entry of Pointer Table from 198A (indexed by unknown)
; Data from 33AF4 to 33B05 (18 bytes)
_DATA_33AF4_:
.db $E1 $55 $4E $44 $45 $52 $53 $54 $41 $4E $44 $20 $4F $55 $52 $D9
.db $3F $65

; 5th entry of Pointer Table from 198A (indexed by unknown)
; Data from 33B06 to 33B0C (7 bytes)
_DATA_33B06_:
.db $48 $45 $4C $4C $4F $21 $65

; 6th entry of Pointer Table from 198A (indexed by unknown)
; Data from 33B0D to 33B1F (19 bytes)
_DATA_33B0D_:
.db $42 $45 $20 $ED $20 $4F $46 $20 $50 $49 $54 $53 $49 $4E $20 $DE
.db $D8 $2E $65

; 7th entry of Pointer Table from 198A (indexed by unknown)
; Data from 33B20 to 33B3C (29 bytes)
_DATA_33B20_:
.db $4D $F6 $20 $4F $46 $20 $DE $60 $F1 $F2 $53 $20 $49 $4E $61 $DE
.db $D8 $20 $EC $60 $54 $52 $41 $50 $50 $45 $44 $2E $65

; 8th entry of Pointer Table from 198A (indexed by unknown)
; Data from 33B3D to 33B44 (8 bytes)
_DATA_33B3D_:
.db $E1 $54 $48 $49 $45 $46 $21 $65

; 9th entry of Pointer Table from 198A (indexed by unknown)
; Data from 33B45 to 33B5B (23 bytes)
_DATA_33B45_:
.db $8B $4F $55 $54 $43 $41 $53 $54 $53 $2E $60 $46 $4F $52 $47 $49
.db $56 $45 $20 $55 $53 $2E $65

; 1st entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33B5C to 33B8C (49 bytes)
_DATA_33B5C_:
.db $DE $53 $4F $55 $4E $44 $20 $4F $46 $20 $DE $60 $A4 $20 $49 $53
.db $61 $41 $20 $4A $4F $59 $20 $54 $4F $20 $42 $4F $54 $48 $20 $DE
.db $60 $45 $41 $52 $20 $41 $4E $44 $20 $DE $48 $45 $41 $52 $54 $2E
.db $65

; 2nd entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33B8D to 33BBE (50 bytes)
_DATA_33B8D_:
.db $DE $56 $45 $48 $49 $43 $4C $45 $20 $BE $4E $60 $41 $53 $20 $22
.db $49 $43 $45 $20 $44 $49 $47 $47 $45 $52 $22 $61 $4C $49 $56 $45
.db $53 $20 $55 $50 $20 $54 $4F $20 $49 $54 $53 $60 $4E $41 $4D $45
.db $2E $65

; 3rd entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33BBF to 33BD1 (19 bytes)
_DATA_33BBF_:
.db $D4 $20 $4C $49 $56 $45 $53 $20 $41 $42 $4F $56 $45 $DE $53 $4B
.db $59 $2E $65

; 4th entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33BD2 to 33BEF (30 bytes)
_DATA_33BD2_:
.db $DE $4D $41 $44 $20 $44 $4F $43 $54 $4F $52 $60 $49 $4E $20 $41
.db $42 $49 $4F $4E $20 $48 $41 $53 $20 $41 $61 $A6 $2E $65

; 5th entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33BF0 to 33C19 (42 bytes)
_DATA_33BF0_:
.db $DB $20 $50 $4C $41 $43 $45 $53 $60 $49 $4E $20 $DE $53 $4B $59
.db $61 $D0 $20 $45 $56 $45 $4E $20 $53 $50 $41 $43 $45 $2D $60 $53
.db $48 $49 $50 $20 $88 $20 $47 $4F $2E $65

; 6th entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33C1A to 33C41 (40 bytes)
_DATA_33C1A_:
.db $41 $20 $4E $55 $54 $20 $4F $46 $20 $D7 $60 $4E $45 $45 $44 $53
.db $20 $53 $50 $45 $43 $49 $41 $4C $61 $4C $49 $47 $48 $54 $20 $54
.db $4F $20 $47 $4C $4F $57 $2E $65

; 7th entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33C42 to 33C5A (25 bytes)
_DATA_33C42_:
.db $DB $20 $A5 $60 $44 $4F $4F $52 $53 $20 $49 $4E $20 $54 $48 $45
.db $61 $D8 $20 $4D $41 $5A $45 $2E $65

; 8th entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33C5B to 33C88 (46 bytes)
_DATA_33C5B_:
.db $DE $4D $49 $52 $41 $43 $4C $45 $20 $4B $45 $59 $60 $43 $41 $4E
.db $20 $4F $50 $45 $4E $20 $44 $4F $4F $52 $53 $61 $57 $48 $49 $43
.db $48 $20 $EC $53 $48 $55 $54 $60 $42 $59 $20 $EF $2E $65

; 9th entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33C89 to 33CA9 (33 bytes)
_DATA_33C89_:
.db $D5 $20 $F4 $53 $60 $4C $49 $4B $45 $20 $54 $4F $20 $54 $45 $4C
.db $4C $20 $4C $49 $45 $53 $2C $61 $53 $4F $20 $42 $45 $20 $ED $2E
.db $65

; 10th entry of Pointer Table from 1B73 (indexed by unknown)
; Data from 33CAA to 33CC1 (24 bytes)
_DATA_33CAA_:
.db $E1 $EC $42 $52 $41 $56 $45 $20 $54 $4F $60 $41 $50 $50 $52 $4F
.db $41 $43 $48 $20 $4D $45 $21 $65

; Data from 33CC2 to 33CE0 (31 bytes)
_DATA_33CC2_:
.db $5C $20 $49 $53 $20 $42 $55 $52 $53 $54 $2D $60 $49 $4E $47 $20
.db $57 $49 $54 $48 $20 $53 $54 $52 $45 $4E $47 $54 $48 $2E $63

; Data from 33CE1 to 33CEC (12 bytes)
_DATA_33CE1_:
.db $5C $20 $48 $41 $44 $20 $41 $60 $F1 $F2 $2E $62

; Data from 33CED to 33CF6 (10 bytes)
_DATA_33CED_:
.db $8B $90 $60 $FB $45 $41 $53 $54 $2E $65

; Data from 33CF7 to 33D00 (10 bytes)
_DATA_33CF7_:
.db $8B $90 $60 $FB $57 $45 $53 $54 $2E $65

; Data from 33D01 to 33D0B (11 bytes)
_DATA_33D01_:
.db $8B $90 $60 $FB $4E $4F $52 $54 $48 $2E $65

; Data from 33D0C to 33D16 (11 bytes)
_DATA_33D0C_:
.db $8B $90 $60 $FB $53 $4F $55 $54 $48 $2E $65

; Data from 33D17 to 33D22 (12 bytes)
_DATA_33D17_:
.db $E1 $EC $41 $4C $4C $20 $44 $45 $41 $44 $2E $65

; Data from 33D23 to 33D56 (52 bytes)
_DATA_33D23_:
.db $80 $40 $53 $20 $48 $4F $50 $45 $20 $88 $4F $56 $45 $52 $43 $4F
.db $4D $45 $20 $DE $50 $4F $57 $45 $52 $61 $4F $46 $20 $D4 $2E $60
.db $DE $41 $44 $56 $45 $4E $54 $55 $52 $45 $20 $49 $53 $61 $4F $56
.db $45 $52 $2E $65

; Data from 33D57 to 33D7D (39 bytes)
_DATA_33D57_:
.db $E1 $44 $4F $4E $40 $54 $20 $E3 $60 $45 $4E $4F $55 $47 $48 $20
.db $4D $FD $59 $2E $61 $43 $4F $4D $45 $20 $41 $47 $41 $49 $4E $20
.db $4C $41 $54 $45 $52 $2E $65

; Data from 33D7E to 33D96 (25 bytes)
_DATA_33D7E_:
.db $DC $20 $C7 $20 $43 $4F $4D $45 $20 $49 $4E $60 $48 $41 $4E $44
.db $59 $20 $4C $41 $54 $45 $52 $2E $65

; Data from 33D97 to 33D9E (8 bytes)
_DATA_33D97_:
.db $DA $20 $41 $60 $F1 $F2 $2E $62

; Data from 33D9F to 33DCD (47 bytes)
_DATA_33D9F_:
.db $F0 $60 $53 $45 $42 $2E $2E $42 $2E $2E $2E $48 $41 $43 $4B $2C
.db $48 $41 $43 $4B $61 $53 $4F $52 $52 $59 $2C $20 $49 $20 $53 $45
.db $45 $4D $20 $54 $4F $60 $E3 $46 $41 $49 $4C $45 $44 $2E $65

; Data from 33DCE to 33DE5 (24 bytes)
_DATA_33DCE_:
.db $42 $4F $55 $4E $44 $20 $46 $4F $52 $20 $94 $2E $47 $45 $54 $54
.db $49 $4E $47 $20 $4F $4E $3F $62

; Data from 33DE6 to 33DFE (25 bytes)
_DATA_33DE6_:
.db $42 $4F $55 $4E $44 $20 $46 $4F $52 $20 $CF $2E $60 $47 $45 $54
.db $54 $49 $4E $47 $20 $4F $4E $3F $62

; Data from 33DFF to 33E1A (28 bytes)
_DATA_33DFF_:
.db $5B $20 $49 $53 $20 $53 $54 $52 $4F $4E $47 $60 $45 $4E $4F $55
.db $47 $48 $20 $41 $4C $52 $45 $41 $44 $59 $2E $65

; Data from 33E1B to 33E34 (26 bytes)
_DATA_33E1B_:
.db $43 $4F $4E $54 $49 $4E $55 $45 $20 $41 $20 $FA $2E $60 $FC $20
.db $41 $20 $4E $55 $4D $42 $45 $52 $2E $62

; Data from 33E35 to 33E44 (16 bytes)
_DATA_33E35_:
.db $43 $4F $4E $54 $49 $4E $55 $49 $4E $47 $20 $FA $20 $5E $2E $63

; Data from 33E45 to 33E5D (25 bytes)
_DATA_33E45_:
.db $43 $4F $4E $54 $49 $4E $55 $45 $20 $FA $2D $20 $59 $45 $53 $EE
.db $20 $20 $20 $FA $2D $20 $4E $4F $62

; Data from 33E5E to 33E6E (17 bytes)
_DATA_33E5E_:
.db $C7 $20 $EE $20 $41 $60 $8F $44 $20 $FA $20 $4F $2E $4B $2E $3F
.db $62

; Data from 33E6F to 33E81 (19 bytes)
_DATA_33E6F_:
.db $EE $20 $41 $20 $FA $2E $60 $FC $20 $41 $20 $4E $55 $4D $42 $45
.db $52 $2E $62

; Data from 33E82 to 33E92 (17 bytes)
_DATA_33E82_:
.db $FA $20 $5E $20 $48 $41 $53 $20 $42 $45 $45 $4E $60 $EE $44 $2E
.db $65

; Data from 33E93 to 33EA0 (14 bytes)
_DATA_33E93_:
.db $5B $20 $48 $41 $53 $20 $42 $45 $45 $4E $60 $91 $2E $65

; Data from 33EA1 to 33EB5 (21 bytes)
_DATA_33EA1_:
.db $5D $20 $49 $53 $20 $55 $53 $45 $44 $60 $42 $59 $20 $D5 $FD $20
.db $4E $4F $57 $2E $65

; Data from 33EB6 to 33ECF (26 bytes)
_DATA_33EB6_:
.db $DE $53 $4B $59 $20 $47 $52 $41 $44 $55 $41 $4C $4C $59 $60 $43
.db $4C $45 $41 $52 $53 $20 $41 $4E $44 $64

; Data from 33ED0 to 33EE7 (24 bytes)
_DATA_33ED0_:
.db $DE $50 $45 $41 $43 $45 $20 $49 $53 $60 $52 $45 $54 $55 $52 $4E
.db $45 $44 $20 $54 $4F $20 $DE $64

; Data from 33EE8 to 33EFC (21 bytes)
_DATA_33EE8_:
.db $9B $20 $9C $2E $60 $41 $20 $47 $45 $4E $54 $4C $45 $20 $42 $52
.db $45 $45 $5A $45 $64

; Data from 33EFD to 33F08 (12 bytes)
_DATA_33EFD_:
.db $43 $41 $52 $45 $53 $53 $45 $53 $60 $C2 $2E $64

; Data from 33F09 to 33F20 (24 bytes)
_DATA_33F09_:
.db $42 $55 $54 $20 $44 $4F $45 $53 $20 $DE $60 $42 $52 $45 $45 $5A
.db $45 $20 $BE $53 $20 $4F $46 $64

; Data from 33F21 to 33F3A (26 bytes)
_DATA_33F21_:
.db $DE $48 $41 $52 $44 $53 $48 $49 $50 $53 $20 $DC $54 $48 $45 $59
.db $20 $45 $4E $44 $55 $52 $45 $44 $3F $64

; Data from 33F3B to 33F63 (41 bytes)
_DATA_33F3B_:
.db $80 $20 $41 $4E $44 $20 $48 $45 $52 $60 $43 $4F $4D $50 $F6 $20
.db $4F $4E $20 $81 $2C $61 $EC $54 $4F $53 $53 $45 $44 $20 $49 $4E
.db $54 $4F $60 $DE $53 $4B $59 $2E $65

; Data from 33F64 to 33FC3 (96 bytes)
_DATA_33F64_:
.db $80 $20 $48 $45 $41 $52 $53 $20 $B2 $40 $53 $60 $56 $4F $49 $43
.db $45 $20 $49 $4E $20 $DE $44 $45 $50 $54 $48 $61 $4F $46 $20 $48
.db $45 $52 $20 $53 $4F $55 $4C $3B $60 $22 $59 $4F $55 $40 $4C $4C
.db $20 $42 $45 $20 $52 $45 $42 $4F $52 $4E $61 $54 $4F $20 $46 $49
.db $47 $48 $54 $20 $46 $4F $52 $60 $50 $45 $41 $43 $45 $20 $41 $47
.db $41 $49 $4E $2E $22 $61 $80 $20 $49 $53 $60 $8E $45 $44 $2E $65

; Data from 33FC4 to 33FFF (60 bytes)
_DATA_33FC4_:
.db $DE $53 $4F $55 $4E $44 $20 $49 $53 $60 $48 $45 $41 $52 $54 $57
.db $41 $52 $4D $49 $4E $47 $2E $65 $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 13
.ORG $0000

; Data from 34000 to 37FFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_34000.inc"

.BANK 14
.ORG $0000

; Data from 38000 to 3A3E7 (9192 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_38000.inc"

; 1st entry of Pointer Table from 6345 (indexed by _RAM_C272_)
; Data from 3A3E8 to 3A567 (384 bytes)
_DATA_3A3E8_:
.db $FF $7F $FF $00 $FF $7F $FF $00 $FF $1F $FF $00 $7F $9F $7F $00
.db $3F $C7 $3F $80 $3F $CB $3F $40 $1F $E1 $9F $80 $1F $E3 $1F $00
.db $9F $60 $1F $80 $0F $F0 $0F $A0 $07 $F8 $87 $C0 $41 $BE $81 $E0
.db $20 $DF $80 $F4 $10 $EF $C0 $D0 $19 $E6 $E0 $FD $04 $FB $F8 $FE
.db $FF $BF $FF $00 $FF $7F $FF $00 $FF $1F $FF $00 $FF $3F $FF $00
.db $FF $07 $FF $00 $7F $87 $7F $00 $1F $E3 $1F $00 $07 $F8 $07 $A0
.db $07 $F8 $07 $80 $83 $7C $03 $E0 $61 $9E $81 $E8 $C0 $3F $00 $D4
.db $10 $EF $A0 $FA $24 $DB $D0 $FC $16 $E9 $E8 $FE $00 $FF $FE $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $40 $BF $BF $FF $10 $EF $EF $FF
.db $89 $76 $76 $FF $6A $95 $95 $FF $15 $EA $C0 $FF $85 $7A $00 $FF
.db $00 $FF $FF $FF $02 $FD $FD $FF $80 $7F $7F $FF $12 $ED $ED $FF
.db $40 $BF $BF $FF $EA $15 $11 $FF $BD $42 $02 $FF $22 $DD $11 $FF
.db $00 $FF $00 $DC $00 $FF $00 $02 $00 $FF $00 $00 $25 $DA $25 $00
.db $FF $00 $FF $00 $FF $00 $FF $00 $FF $49 $FF $00 $FF $ED $FF $00
.db $00 $FF $00 $57 $00 $FF $00 $04 $00 $FF $00 $00 $52 $AD $52 $00
.db $FF $00 $FF $00 $FF $00 $FF $00 $FF $21 $FF $00 $FF $7B $FF $00
.db $09 $F6 $F6 $FF $24 $DB $DA $FF $04 $FB $F8 $FF $12 $ED $EC $FF
.db $0C $F3 $F0 $FF $03 $FC $FC $FF $04 $FB $F8 $FF $0B $F4 $F4 $FF
.db $0F $F1 $0F $80 $0F $F3 $0F $80 $1F $E1 $1F $00 $0F $F0 $0F $80
.db $0F $F3 $0F $80 $1F $E1 $1F $80 $0F $F0 $0F $40 $1F $E3 $1F $00
.db $26 $D9 $D8 $FF $0C $F3 $F0 $FF $07 $F8 $F8 $FF $12 $ED $ED $FF
.db $06 $F9 $F8 $FF $02 $FD $F8 $FF $55 $AA $AA $FF $02 $FD $FD $FF
.db $0F $F0 $0F $00 $1F $E1 $1F $80 $0F $F3 $0F $00 $1F $E1 $1F $80
.db $0F $F1 $0F $00 $0F $F0 $0F $C0 $1F $E1 $1F $80 $0F $F3 $0F $80

; 3rd entry of Pointer Table from 6345 (indexed by _RAM_C272_)
; Data from 3A568 to 3A6E7 (384 bytes)
_DATA_3A568_:
.db $FF $7F $FF $00 $7F $FF $7F $00 $1F $FF $1F $00 $0F $FF $0F $40
.db $87 $7F $07 $C0 $03 $FF $83 $90 $03 $FD $83 $C8 $01 $FF $C1 $E0
.db $60 $9F $80 $F4 $50 $AF $80 $F8 $20 $DF $D0 $F4 $40 $BF $B0 $F4
.db $12 $ED $E8 $FE $09 $F6 $F4 $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $FF $BF $FF $00 $FF $7F $FF $00 $7F $9F $7F $00 $1F $FF $1F $00
.db $87 $7F $07 $80 $07 $FF $07 $E0 $43 $BF $03 $50 $03 $FC $E3 $E8
.db $01 $FE $C1 $F0 $11 $EE $E1 $F8 $30 $CF $C0 $FC $08 $F7 $F4 $FE
.db $10 $EF $EA $FF $02 $FD $FD $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $44 $BB $BB $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $40 $BF $BF $FF
.db $AE $51 $51 $FF $35 $CA $00 $FF $00 $FF $00 $2A $00 $FF $00 $01
.db $00 $FF $00 $00 $51 $AE $51 $00 $FB $4D $FB $00 $FF $ED $FF $00
.db $EA $15 $14 $FF $14 $EB $80 $FF $00 $FF $00 $BA $00 $FF $00 $44
.db $00 $FF $00 $00 $10 $EF $10 $00 $FF $21 $FF $00 $FF $7B $FF $00
.db $00 $FF $FF $FF $01 $FE $FE $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $01 $FE $FE $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $83 $7D $03 $C0 $07 $FB $87 $C0 $C3 $3D $03 $E0 $47 $B8 $87 $C0
.db $83 $7F $03 $E0 $C1 $3F $01 $C0 $83 $7C $03 $E0 $47 $BB $87 $D0
.db $00 $FF $FF $FF $01 $FE $FE $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $83 $7C $43 $E0 $83 $7D $03 $D0 $83 $7F $03 $E0 $47 $B9 $87 $E0
.db $83 $7D $03 $E0 $43 $BC $83 $D0 $83 $7D $03 $E0 $03 $FF $03 $C0

; 4th entry of Pointer Table from 6345 (indexed by _RAM_C272_)
; Data from 3A6E8 to 3A867 (384 bytes)
_DATA_3A6E8_:
.db $3F $FF $3F $80 $0F $FF $0F $00 $07 $FF $87 $C0 $03 $FF $03 $A0
.db $01 $FF $81 $E8 $01 $FF $E1 $F0 $30 $CF $C0 $F8 $00 $FF $F0 $F2
.db $00 $FF $A8 $FC $00 $FF $F8 $FA $00 $FF $EC $FF $02 $FD $FC $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $17 $FF $17 $00 $0B $FF $0B $80 $07 $FF $07 $A0 $83 $7F $03 $C0
.db $83 $7F $43 $F8 $20 $DF $80 $E8 $09 $F7 $E1 $F8 $08 $F7 $F0 $FD
.db $08 $F7 $F0 $FC $14 $EB $E8 $FE $00 $FF $F4 $FF $01 $FE $FE $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $02 $FD $FD $FF $51 $AE $AE $FF $4D $B2 $90 $FF
.db $8A $75 $00 $DF $00 $FF $00 $AE $00 $FF $00 $80 $00 $FF $00 $00
.db $00 $FF $FF $FF $21 $DE $DE $FF $4B $B4 $B4 $FF $6C $93 $12 $FF
.db $8A $75 $00 $FE $00 $FF $00 $99 $00 $FF $00 $02 $00 $FF $00 $00
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $08 $F7 $F0 $FE $30 $CF $C0 $F8 $00 $FF $E0 $F4 $20 $DF $D0 $F8
.db $18 $E7 $E0 $FC $10 $EF $E0 $FC $48 $B7 $A0 $FC $30 $CF $C0 $F8
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $08 $F7 $E0 $FC $30 $CF $C0 $F8 $50 $AF $A0 $F8 $00 $FF $F0 $FC
.db $38 $C7 $C0 $FC $10 $EF $E0 $F8 $28 $D7 $D0 $FA $60 $9F $80 $F4

; 7th entry of Pointer Table from 6345 (indexed by _RAM_C272_)
; Data from 3A868 to 3A9E7 (384 bytes)
_DATA_3A868_:
.db $FF $7F $FF $00 $FF $7F $FF $00 $7F $9F $7F $00 $3F $DF $3F $00
.db $9F $67 $1F $80 $1F $E3 $1F $80 $0F $F1 $0F $40 $87 $7B $07 $90
.db $03 $FC $83 $80 $53 $AC $03 $D0 $00 $FF $C0 $D0 $40 $BF $A0 $F8
.db $12 $ED $C0 $F6 $08 $F7 $F0 $FC $00 $FF $F4 $FF $00 $FF $FF $FF
.db $FF $BF $FF $00 $FF $7F $FF $00 $FF $1F $FF $00 $7F $BF $7F $00
.db $3F $C7 $3F $00 $1F $E7 $1F $80 $07 $FB $07 $00 $03 $FC $23 $E0
.db $03 $FC $C3 $D0 $61 $9E $81 $F0 $10 $EF $E0 $F8 $30 $CF $C8 $FE
.db $1A $E5 $E4 $FE $02 $FD $FD $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $04 $FB $FB $FF $11 $EE $EE $FF $B2 $4D $4D $FF $44 $BB $22 $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $4A $B5 $B5 $FF $90 $6F $6F $FF $46 $B9 $A9 $FF
.db $9A $65 $40 $FF $10 $EF $00 $52 $00 $FF $00 $28 $00 $FF $00 $01
.db $11 $EE $11 $00 $4C $B3 $4C $00 $FF $49 $FF $00 $FF $ED $FF $00
.db $BA $45 $04 $FF $14 $EB $00 $5C $00 $FF $00 $A2 $00 $FF $00 $44
.db $10 $EF $10 $00 $B6 $49 $B6 $00 $FF $21 $FF $00 $FF $7B $FF $00
.db $02 $FD $FC $FF $01 $FE $FE $FF $02 $FD $FD $FF $06 $F9 $F8 $FF
.db $00 $FF $FE $FF $09 $F6 $F6 $FF $02 $FD $FD $FF $04 $FB $FA $FF
.db $83 $7D $03 $80 $07 $FB $87 $C0 $03 $FD $03 $A0 $CB $34 $0B $C0
.db $87 $7B $07 $A0 $07 $F9 $07 $80 $83 $7C $03 $C0 $0B $F7 $0B $90
.db $02 $FD $FD $FF $05 $FA $FA $FF $00 $FF $FF $FF $02 $FD $FC $FF
.db $04 $FB $FB $FF $01 $FE $FE $FF $05 $FA $FA $FF $00 $FF $FF $FF
.db $87 $78 $07 $A0 $03 $FD $03 $D0 $87 $7B $07 $A0 $CF $31 $0F $C0
.db $83 $7D $03 $C0 $47 $B8 $87 $D0 $87 $79 $07 $A0 $03 $FF $03 $80

; 8th entry of Pointer Table from 6345 (indexed by _RAM_C272_)
; Data from 3A9E8 to 3AB67 (384 bytes)
_DATA_3A9E8_:
.db $FF $7F $FF $00 $FF $7F $FF $00 $7F $9F $7F $00 $7F $9F $7F $00
.db $BF $47 $3F $80 $3F $C3 $3F $80 $1F $E1 $1F $40 $8F $73 $0F $80
.db $07 $F8 $87 $90 $47 $B8 $07 $C0 $03 $FC $43 $D0 $40 $BF $A0 $F8
.db $10 $EF $C0 $F6 $08 $F7 $D0 $FC $00 $FF $F4 $FF $00 $FF $FD $FF
.db $FF $BF $FF $00 $FF $7F $FF $00 $FF $1F $FF $00 $FF $3F $FF $00
.db $FF $07 $FF $00 $3F $C7 $3F $00 $0F $F3 $0F $00 $03 $FC $03 $C0
.db $07 $F8 $C7 $C0 $21 $DE $81 $F0 $01 $FE $C1 $E0 $40 $BF $90 $F8
.db $08 $F7 $E0 $FE $08 $F7 $F4 $FD $04 $FB $FB $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $08 $F7 $F7 $FF
.db $20 $DF $DF $FF $15 $EA $EA $FF $66 $99 $99 $FF $D1 $2E $20 $FB
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $88 $77 $77 $FF
.db $20 $DF $DF $FF $52 $AD $AD $FF $AC $53 $53 $FF $1A $E5 $A5 $FF
.db $00 $FF $50 $DB $00 $FF $00 $95 $00 $FF $00 $00 $00 $FF $00 $00
.db $59 $A6 $59 $00 $FF $00 $FF $00 $FF $49 $FF $00 $FF $ED $FF $00
.db $04 $FB $00 $2F $00 $FF $00 $49 $00 $FF $00 $00 $10 $EF $10 $00
.db $75 $8A $75 $00 $FF $00 $FF $00 $FF $21 $FF $00 $FF $7B $FF $00
.db $01 $FE $FE $FF $03 $FC $FC $FF $0A $F5 $F5 $FF $05 $FA $FA $FF
.db $10 $EF $EE $FF $06 $F9 $F8 $FE $02 $FD $FC $FF $05 $FA $FA $FF
.db $07 $F9 $07 $C0 $0F $F3 $8F $80 $07 $F9 $07 $00 $0F $F0 $8F $C0
.db $0F $F3 $0F $80 $07 $F9 $07 $40 $07 $F8 $07 $80 $0F $F3 $0F $C0
.db $12 $ED $ED $FF $04 $FB $FA $FF $0A $F5 $F5 $FF $05 $FA $FA $FF
.db $13 $EC $EC $FF $02 $FD $FD $FF $05 $FA $FA $FF $00 $FF $FF $FF
.db $07 $F8 $07 $00 $0F $F1 $0F $40 $0F $F3 $0F $80 $1F $E1 $1F $00
.db $07 $F9 $07 $C0 $8F $70 $0F $80 $07 $F9 $07 $80 $0F $F3 $0F $C0

; 1st entry of Pointer Table from 6355 (indexed by _RAM_C276_)
; Data from 3AB68 to 3ABC7 (96 bytes)
_DATA_3AB68_:
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $20 $DF $C7 $EF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $08 $F7 $C7 $DF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $C0 $3F $1F $DF $00 $FF $FF $FF $00 $FF $FF $FF

; 3rd entry of Pointer Table from 6355 (indexed by _RAM_C276_)
; Data from 3ABC8 to 3AC27 (96 bytes)
_DATA_3ABC8_:
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $08 $F7 $C7 $DF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $18 $E7 $C7 $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $80 $7F $1F $BF $00 $FF $FF $FF $00 $FF $FF $FF

; 5th entry of Pointer Table from 6355 (indexed by _RAM_C276_)
; Data from 3AC28 to 3AC87 (96 bytes)
_DATA_3AC28_:
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $18 $E7 $C7 $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $30 $CF $C7 $F7
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $20 $DF $1F $7F $00 $FF $FF $FF $00 $FF $FF $FF

; 7th entry of Pointer Table from 6355 (indexed by _RAM_C276_)
; Data from 3AC88 to 3ACE7 (96 bytes)
_DATA_3AC88_:
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $30 $CF $C7 $F7
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $20 $DF $C7 $EF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF
.db $00 $FF $FF $FF $60 $9F $1F $FF $00 $FF $FF $FF $00 $FF $FF $FF

; 1st entry of Pointer Table from 6375 (indexed by _RAM_C27E_)
; Data from 3ACE8 to 3ADA7 (192 bytes)
_DATA_3ACE8_:
.db $1F $E3 $00 $B3 $0C $F4 $13 $B7 $0C $F4 $13 $B7 $0C $F4 $13 $B7
.db $10 $E3 $0C $BC $08 $F8 $17 $BB $0C $FC $13 $BF $08 $F8 $17 $BB
.db $FF $FF $00 $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $00 $FF $00 $00 $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $F1 $FE $00 $FB $10 $1F $E1 $FB $10 $1F $E1 $FB $10 $1F $E1 $FB
.db $01 $FE $00 $0B $00 $0F $F1 $DB $00 $0F $F1 $FB $00 $0F $F1 $DB
.db $00 $FF $00 $FF $00 $FF $00 $00 $00 $FF $00 $FF $88 $77 $77 $FF
.db $DF $1C $20 $3C $CB $C9 $34 $E9 $02 $22 $DD $DF $02 $22 $DD $DF
.db $02 $22 $DD $DF $02 $22 $DD $DF $02 $22 $DD $DF $02 $22 $DD $DF
.db $02 $22 $DD $DF $02 $22 $DD $DF $02 $22 $DD $DF $02 $22 $DD $DF
.db $02 $22 $DD $DF $02 $22 $DD $DF $02 $22 $DD $CB $C3 $E3 $1C $DF
.db $00 $FF $00 $FF $00 $FF $00 $00 $00 $FF $00 $FF $88 $77 $77 $FF

; 3rd entry of Pointer Table from 6375 (indexed by _RAM_C27E_)
; Data from 3ADA8 to 3AE67 (192 bytes)
_DATA_3ADA8_:
.db $1C $E4 $03 $B7 $0C $F4 $13 $B7 $00 $F3 $1C $BC $08 $F8 $17 $BB
.db $1C $EC $03 $BF $08 $F8 $17 $BB $0F $F3 $10 $B3 $0C $F4 $13 $B7
.db $00 $00 $FF $FF $00 $00 $FF $FF $00 $FF $00 $00 $00 $00 $FF $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $FF $FF $00 $FF $00 $00 $FF $FF
.db $11 $1E $E0 $FB $10 $1F $E1 $FB $00 $FF $01 $0B $00 $0F $F1 $DB
.db $01 $0E $F0 $FB $00 $0F $F1 $DB $F0 $FF $01 $FB $10 $1F $E1 $FB
.db $00 $FF $00 $FF $00 $FF $00 $00 $00 $FF $00 $FF $88 $77 $77 $FF
.db $7F $70 $80 $F0 $2F $27 $D0 $A7 $08 $88 $77 $7F $08 $88 $77 $7F
.db $08 $88 $77 $7F $08 $88 $77 $7F $08 $88 $77 $7F $08 $88 $77 $7F
.db $08 $88 $77 $7F $08 $88 $77 $7F $08 $88 $77 $7F $08 $88 $77 $7F
.db $08 $88 $77 $7F $08 $88 $77 $7F $08 $88 $77 $2F $0F $8F $70 $7F
.db $00 $FF $00 $FF $00 $FF $00 $00 $00 $FF $00 $FF $88 $77 $77 $FF

; 5th entry of Pointer Table from 6375 (indexed by _RAM_C27E_)
; Data from 3AE68 to 3AF27 (192 bytes)
_DATA_3AE68_:
.db $10 $E3 $0C $BC $08 $F8 $17 $BB $0C $FC $13 $BF $08 $F8 $17 $BB
.db $1F $E3 $00 $B3 $0C $F4 $13 $B7 $0C $F4 $13 $B7 $0C $F4 $13 $B7
.db $00 $FF $00 $00 $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $FF $FF $00 $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $01 $FE $00 $0B $00 $0F $F1 $DB $00 $0F $F1 $FB $00 $0F $F1 $DB
.db $F1 $FE $00 $FB $10 $1F $E1 $FB $10 $1F $E1 $FB $10 $1F $E1 $FB
.db $00 $FF $00 $FF $00 $FF $00 $00 $00 $FF $00 $FF $88 $77 $77 $FF
.db $FD $C1 $02 $C3 $BC $9C $43 $9E $20 $22 $DD $FD $20 $22 $DD $FD
.db $20 $22 $DD $FD $20 $22 $DD $FD $20 $22 $DD $FD $20 $22 $DD $FD
.db $20 $22 $DD $FD $20 $22 $DD $FD $20 $22 $DD $FD $20 $22 $DD $FD
.db $20 $22 $DD $FD $20 $22 $DD $FD $20 $22 $DD $BC $3C $3E $C1 $FD
.db $00 $FF $00 $FF $00 $FF $00 $00 $00 $FF $00 $FF $88 $77 $77 $FF

; 7th entry of Pointer Table from 6375 (indexed by _RAM_C27E_)
; Data from 3AF28 to 3AFE7 (192 bytes)
_DATA_3AF28_:
.db $1C $EC $03 $BF $08 $F8 $17 $BB $0F $F3 $10 $B3 $0C $F4 $13 $B7
.db $1C $E4 $03 $B7 $0C $F4 $13 $B7 $00 $F3 $1C $BC $08 $F8 $17 $BB
.db $00 $00 $FF $FF $00 $00 $FF $FF $FF $FF $00 $FF $00 $00 $FF $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $00 $FF $00 $00 $00 $00 $FF $FF
.db $01 $0E $F0 $FB $00 $0F $F1 $DB $F0 $FF $01 $FB $10 $1F $E1 $FB
.db $11 $1E $E0 $FB $10 $1F $E1 $FB $00 $FF $01 $0B $00 $0F $F1 $DB
.db $00 $FF $00 $FF $00 $FF $00 $00 $00 $FF $00 $FF $88 $77 $77 $FF
.db $F7 $07 $08 $0F $F2 $72 $0D $7A $80 $88 $77 $F7 $80 $88 $77 $F7
.db $80 $88 $77 $F7 $80 $88 $77 $F7 $80 $88 $77 $F7 $80 $88 $77 $F7
.db $80 $88 $77 $F7 $80 $88 $77 $F7 $80 $88 $77 $F7 $80 $88 $77 $F7
.db $80 $88 $77 $F7 $80 $88 $77 $F7 $80 $88 $77 $F2 $F0 $F8 $07 $F7
.db $00 $FF $00 $FF $00 $FF $00 $00 $00 $FF $00 $FF $88 $77 $77 $FF

; 1st entry of Pointer Table from 6385 (indexed by _RAM_C282_)
; Data from 3AFE8 to 3B0E7 (256 bytes)
_DATA_3AFE8_:
.db $75 $34 $41 $CB $7D $55 $28 $AA $DF $D9 $06 $26 $63 $43 $20 $BC
.db $FF $D9 $26 $26 $FF $AE $51 $51 $6D $44 $29 $BB $FD $59 $A4 $A6
.db $7C $78 $04 $87 $EE $6C $82 $93 $BF $06 $B9 $F9 $F7 $F7 $00 $08
.db $5D $10 $4D $EF $FF $FB $04 $04 $FD $9D $60 $62 $BF $BB $04 $44
.db $FF $FE $01 $01 $E5 $60 $85 $9F $BB $A2 $19 $5D $F7 $96 $61 $69
.db $9A $9A $00 $65 $7F $4F $30 $B0 $FD $49 $B4 $B6 $66 $62 $04 $9D
.db $F6 $16 $E0 $E9 $FA $DA $20 $25 $3D $31 $0C $CE $F6 $92 $64 $6D
.db $DF $57 $88 $A8 $DA $9A $40 $65 $BF $B1 $0E $4E $74 $74 $00 $8B
.db $00 $00 $00 $00 $01 $01 $00 $02 $07 $01 $06 $06 $03 $03 $00 $0C
.db $3F $19 $26 $26 $3F $2E $11 $11 $6D $44 $29 $3B $7D $59 $24 $26
.db $00 $00 $00 $00 $E0 $60 $80 $80 $B8 $00 $B8 $F8 $F0 $F0 $00 $08
.db $5C $10 $4C $EC $FE $FA $04 $04 $FC $9C $60 $62 $BE $BA $04 $44
.db $7F $7E $01 $01 $65 $60 $05 $1F $3B $22 $19 $1D $37 $16 $21 $29
.db $1A $1A $00 $05 $0F $0F $00 $00 $01 $01 $00 $02 $00 $00 $00 $00
.db $F6 $16 $E0 $E8 $FA $DA $20 $24 $3C $30 $0C $CC $F4 $90 $64 $6C
.db $D8 $50 $88 $A8 $D0 $90 $40 $60 $80 $80 $00 $40 $00 $00 $00 $00

; 3rd entry of Pointer Table from 6385 (indexed by _RAM_C282_)
; Data from 3B0E8 to 3B1E7 (256 bytes)
_DATA_3B0E8_:
.db $FA $DA $20 $25 $BE $AA $14 $55 $EF $ED $02 $12 $B3 $83 $30 $7C
.db $FF $6C $93 $93 $FF $D7 $28 $28 $B5 $B1 $04 $4E $F6 $B6 $40 $49
.db $BE $3E $80 $C1 $FD $FC $01 $03 $BF $A3 $1C $5C $DB $5B $80 $A4
.db $DE $D8 $06 $27 $7F $7D $02 $82 $FE $4E $B0 $B1 $DF $DD $02 $22
.db $6F $6F $00 $90 $F2 $B2 $40 $4D $DD $D1 $0C $2E $7B $4B $30 $B4
.db $DD $DD $00 $22 $7F $77 $08 $88 $F6 $A4 $52 $5B $BB $BB $00 $44
.db $BB $0B $B0 $F4 $7E $6E $10 $91 $D7 $51 $86 $AE $59 $49 $10 $B6
.db $FB $BB $40 $44 $ED $ED $00 $12 $DF $D9 $06 $26 $BA $BA $00 $45
.db $00 $00 $00 $00 $02 $02 $00 $01 $07 $05 $02 $02 $03 $03 $00 $0C
.db $3F $2C $13 $13 $3F $17 $28 $28 $35 $31 $04 $4E $76 $36 $40 $49
.db $00 $00 $00 $00 $E0 $E0 $00 $00 $B8 $A0 $18 $58 $D8 $58 $80 $A0
.db $DC $D8 $04 $24 $7E $7C $02 $82 $FE $4E $B0 $B0 $DE $DC $02 $22
.db $6F $6F $00 $10 $72 $32 $40 $4D $1D $11 $0C $2E $3B $0B $30 $34
.db $1D $1D $00 $02 $0F $07 $08 $08 $02 $00 $02 $03 $00 $00 $00 $00
.db $BA $0A $B0 $F4 $7E $6E $10 $90 $D4 $50 $84 $AC $58 $48 $10 $B4
.db $F8 $B8 $40 $40 $E0 $E0 $00 $10 $C0 $C0 $00 $00 $00 $00 $00 $00

; 5th entry of Pointer Table from 6385 (indexed by _RAM_C282_)
; Data from 3B1E8 to 3B2E7 (256 bytes)
_DATA_3B1E8_:
.db $7D $6D $10 $92 $DF $54 $8B $AB $EA $EA $00 $15 $FD $E5 $18 $1A
.db $77 $36 $41 $C9 $DB $CB $10 $34 $BE $BC $02 $43 $FB $DB $20 $24
.db $5F $1F $40 $E0 $5E $5E $00 $A1 $EB $E1 $0A $1E $ED $AD $40 $52
.db $F3 $72 $81 $8D $BF $BE $01 $41 $FE $FE $00 $01 $66 $66 $00 $99
.db $D6 $D6 $00 $29 $BD $99 $24 $66 $D8 $D8 $00 $27 $B7 $B5 $02 $4A
.db $EE $EE $00 $11 $B7 $B7 $00 $48 $7B $5A $21 $A5 $BD $BD $00 $42
.db $FD $BD $40 $42 $3E $36 $08 $C9 $EB $A9 $42 $56 $AF $A7 $08 $58
.db $FD $DD $20 $22 $BF $BF $00 $40 $6F $6C $03 $93 $DC $DC $00 $23
.db $00 $00 $00 $00 $03 $00 $03 $03 $02 $02 $00 $05 $0D $05 $08 $0A
.db $37 $36 $01 $09 $1B $0B $10 $34 $3E $3C $02 $43 $7B $5B $20 $24
.db $00 $00 $00 $00 $40 $40 $00 $A0 $E8 $E0 $08 $18 $E8 $A8 $40 $50
.db $F0 $70 $80 $8C $BE $BE $00 $40 $FE $FE $00 $00 $66 $66 $00 $98
.db $56 $56 $00 $29 $3D $19 $24 $66 $18 $18 $00 $27 $37 $35 $02 $0A
.db $0E $0E $00 $11 $07 $07 $00 $08 $03 $02 $01 $01 $00 $00 $00 $00
.db $FC $BC $40 $42 $3E $36 $08 $C8 $E8 $A8 $40 $54 $AC $A4 $08 $58
.db $F8 $D8 $20 $20 $B0 $B0 $00 $40 $40 $40 $00 $80 $00 $00 $00 $00

; 8th entry of Pointer Table from 6395 (indexed by _RAM_C286_)
; Data from 3B2E8 to 3B4E7 (512 bytes)
_DATA_3B2E8_:
.db $FF $FF $FF $00 $FF $FF $FF $00 $FE $FF $FE $00 $FF $FD $FE $00
.db $FA $FE $F8 $01 $FD $F5 $F8 $02 $EF $FF $E0 $00 $D7 $F7 $C0 $08
.db $F5 $EA $F5 $00 $A0 $D0 $A0 $0F $82 $02 $80 $7D $78 $78 $00 $87
.db $E2 $E2 $00 $1D $DC $DC $00 $23 $B2 $B2 $00 $4D $68 $68 $00 $97
.db $FD $DD $E0 $02 $FF $BB $C0 $00 $FF $BF $C0 $00 $FF $BF $C0 $00
.db $7F $F6 $00 $00 $7F $FF $00 $00 $FF $7F $80 $00 $7F $FD $00 $00
.db $66 $66 $00 $99 $E8 $E8 $00 $17 $DC $DC $00 $23 $F8 $F8 $00 $07
.db $5B $5B $00 $A4 $FC $AC $03 $00 $F2 $C0 $0D $01 $EB $E4 $10 $00
.db $BF $4F $BF $00 $5F $01 $5F $A0 $05 $00 $05 $FA $23 $00 $23 $DC
.db $01 $00 $01 $FE $00 $00 $00 $FF $81 $80 $01 $7E $10 $10 $00 $EF
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $7F $FF $00 $7F $3F $7F $80
.db $FF $9F $FF $00 $BF $0F $BF $40 $FF $37 $FF $00 $5F $0B $5F $A0
.db $00 $00 $00 $FF $02 $00 $02 $FD $01 $00 $01 $FE $10 $00 $10 $EF
.db $CA $C0 $0A $35 $32 $30 $C2 $0D $8D $48 $35 $02 $D1 $00 $29 $26
.db $FF $0B $FF $00 $FF $15 $FF $00 $DF $09 $DF $20 $7F $0D $7F $80
.db $3F $02 $3F $C0 $6F $05 $6F $90 $3F $02 $3F $C0 $7B $01 $7B $84
.db $FF $6F $80 $00 $FF $7F $80 $00 $7F $FF $00 $00 $7F $FF $00 $00
.db $FF $BF $C0 $00 $FF $BF $C0 $00 $BD $FD $80 $02 $FF $DF $E0 $00
.db $EF $C0 $11 $00 $E6 $C8 $12 $09 $F5 $E2 $0D $00 $F8 $E0 $07 $00
.db $FF $FF $00 $00 $FC $FC $00 $03 $FC $FC $00 $03 $DF $DF $00 $20
.db $DD $FD $C0 $02 $EF $FF $E0 $00 $FB $F3 $F8 $04 $FA $FE $F8 $01
.db $FF $FD $FE $00 $FF $FE $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $AF $AF $00 $50 $56 $56 $00 $A9 $E8 $E8 $00 $17 $7A $7A $00 $85
.db $AF $AF $00 $50 $1A $9A $00 $65 $E9 $99 $E0 $06 $FB $F4 $FB $00
.db $F2 $00 $8A $05 $63 $10 $4B $94 $48 $28 $D0 $87 $10 $10 $E0 $0F
.db $F7 $F4 $03 $08 $45 $44 $01 $BA $2D $0C $01 $D2 $52 $50 $02 $AD
.db $6F $02 $6F $90 $FF $05 $FF $00 $BF $02 $BF $40 $DF $04 $DF $20
.db $DF $01 $DF $20 $DF $01 $DF $20 $AF $05 $AF $50 $3F $0B $3F $C0
.db $D0 $D0 $00 $2F $A0 $A0 $00 $5F $03 $00 $03 $FC $A4 $A0 $04 $5B
.db $00 $00 $00 $FF $D1 $D0 $01 $2E $0F $01 $0F $F0 $6F $9F $6F $00
.db $7F $23 $7F $80 $AF $07 $AF $50 $DF $07 $DF $20 $3F $1F $3F $C0
.db $7F $1F $7F $80 $FF $7F $FF $00 $FF $FF $FF $00 $FF $FF $FF $00

; 1st entry of Pointer Table from 6395 (indexed by _RAM_C286_)
; Data from 3B4E8 to 3B6E7 (512 bytes)
_DATA_3B4E8_:
.db $FF $FF $FF $00 $FF $FF $FF $00 $FE $FF $FE $00 $FF $FD $FE $00
.db $FA $FF $F9 $00 $FC $F4 $F8 $03 $ED $FD $E0 $02 $DF $FF $D0 $00
.db $F5 $EA $F5 $00 $A4 $D0 $A4 $0B $80 $00 $80 $7F $02 $02 $00 $FD
.db $70 $70 $00 $8F $EA $EA $00 $15 $DC $DC $00 $23 $B2 $B2 $00 $4D
.db $F7 $D7 $E0 $08 $FE $BA $C0 $01 $EF $BF $D0 $00 $FF $BF $C0 $00
.db $3F $F6 $40 $00 $7F $9F $60 $00 $FF $7F $80 $00 $7F $FD $00 $00
.db $B4 $B4 $00 $4B $F6 $F6 $00 $09 $E8 $E8 $00 $17 $FC $FC $00 $03
.db $5A $5A $00 $A5 $FF $AD $00 $00 $FF $C9 $00 $00 $FC $E0 $03 $00
.db $BF $4F $BF $00 $1F $01 $1F $E0 $4F $00 $4F $B0 $03 $00 $03 $FC
.db $2B $00 $2B $D4 $00 $00 $00 $FF $01 $00 $01 $FE $80 $80 $00 $7F
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $7F $FF $00 $7F $3F $7F $80
.db $FF $9F $FF $00 $BF $0F $BF $40 $FF $3F $FF $00 $5F $0B $5F $A0
.db $10 $10 $00 $EF $06 $00 $06 $F9 $01 $00 $01 $FE $10 $00 $10 $EF
.db $8A $80 $0A $75 $62 $60 $02 $9D $F5 $F0 $05 $0A $31 $30 $C1 $0E
.db $FF $0B $FF $00 $FF $15 $FF $00 $BF $09 $BF $40 $FF $0D $FF $00
.db $7F $02 $7F $80 $EF $05 $EF $10 $3F $02 $3F $C0 $7B $01 $7B $84
.db $FF $6F $80 $00 $FF $2F $D0 $00 $7F $FF $00 $00 $3F $D7 $68 $00
.db $FF $BF $C0 $00 $FE $BE $C0 $01 $BF $FF $80 $00 $FE $DE $E0 $01
.db $FA $90 $05 $01 $F8 $D0 $07 $00 $FF $E1 $00 $00 $FE $E2 $00 $01
.db $FF $FF $00 $00 $FC $FC $00 $03 $FF $FF $00 $00 $EF $EF $00 $10
.db $DF $FF $C0 $00 $EF $FF $E0 $00 $FB $F3 $F8 $04 $FA $FE $F8 $01
.db $FF $FD $FE $00 $FF $FE $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $D6 $D6 $00 $29 $68 $68 $00 $97 $F2 $F2 $00 $0D $7F $7F $00 $80
.db $AF $AF $00 $50 $12 $9A $08 $65 $E9 $99 $E0 $06 $FB $F4 $FB $00
.db $52 $90 $22 $8D $13 $10 $E3 $0C $F0 $F0 $00 $0F $C0 $C0 $00 $3F
.db $97 $94 $03 $68 $45 $44 $01 $BA $2D $0C $01 $D2 $52 $50 $02 $AD
.db $6F $02 $6F $90 $FF $05 $FF $00 $7F $02 $7F $80 $BF $04 $BF $40
.db $BF $01 $BF $40 $BF $01 $BF $40 $3F $09 $3F $C0 $7F $53 $7F $80
.db $10 $10 $00 $EF $A1 $A0 $01 $5E $07 $00 $07 $F8 $E0 $E0 $00 $1F
.db $00 $00 $00 $FF $D1 $D0 $01 $2E $0F $01 $0F $F0 $6F $9F $6F $00
.db $EF $03 $EF $10 $9F $0F $9F $60 $3F $07 $3F $C0 $7F $3F $7F $80
.db $FF $1F $FF $00 $FF $7F $FF $00 $FF $FF $FF $00 $FF $FF $FF $00

; 6th entry of Pointer Table from 6395 (indexed by _RAM_C286_)
; Data from 3B6E8 to 3B8E7 (512 bytes)
_DATA_3B6E8_:
.db $FF $FF $FF $00 $FF $FF $FF $00 $FE $FF $FE $00 $FE $FC $FE $01
.db $F9 $FD $F8 $02 $FA $F2 $F8 $05 $EC $FD $E1 $02 $DD $FD $D0 $02
.db $F5 $EA $F5 $00 $A4 $D4 $A4 $0B $80 $00 $80 $7F $C2 $C2 $00 $3D
.db $10 $10 $00 $EF $78 $78 $00 $87 $EE $EE $00 $11 $DC $DC $00 $23
.db $F7 $D7 $E0 $08 $FE $BA $C0 $01 $FF $AF $D0 $00 $FB $BF $C4 $00
.db $3F $F6 $40 $00 $7F $EF $10 $00 $FF $7F $80 $00 $7F $FD $00 $00
.db $B3 $B3 $00 $4C $F4 $F4 $00 $0B $EC $EC $00 $13 $FC $FC $00 $03
.db $5B $5B $00 $A4 $FC $A4 $03 $00 $F2 $C0 $0D $01 $EB $C4 $10 $00
.db $BF $4F $BF $00 $BF $01 $BF $40 $0F $00 $0F $F0 $47 $00 $47 $B8
.db $07 $00 $07 $F8 $53 $00 $53 $AC $05 $00 $05 $FA $80 $80 $00 $7F
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $7F $FF $00 $FF $3F $FF $00
.db $7F $1F $7F $80 $BF $8F $BF $40 $FF $3F $FF $00 $DF $0B $DF $20
.db $11 $10 $01 $EE $85 $80 $05 $7A $0B $00 $0B $F4 $10 $00 $10 $EF
.db $FA $F0 $0A $05 $3A $38 $C2 $05 $8D $48 $35 $02 $D1 $00 $29 $26
.db $FF $0B $FF $00 $FF $15 $FF $00 $BF $09 $BF $40 $FF $0D $FF $00
.db $7F $02 $7F $80 $DF $05 $DF $20 $7F $02 $7F $80 $77 $01 $77 $88
.db $FF $6F $80 $00 $FF $77 $88 $00 $7F $FF $00 $00 $2F $FD $52 $00
.db $FF $BF $C0 $00 $FF $BF $C0 $00 $BF $FF $80 $00 $FF $DF $E0 $00
.db $EF $80 $11 $00 $E6 $C8 $12 $09 $F5 $E2 $8D $00 $F8 $E0 $07 $00
.db $BF $BF $00 $40 $FD $FD $00 $02 $EF $EF $00 $10 $57 $57 $00 $A8
.db $DF $FF $C0 $00 $EF $FF $E0 $00 $FA $F2 $F8 $05 $FB $FF $F9 $00
.db $FF $FD $FE $00 $FF $FE $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $E8 $E8 $00 $17 $F4 $F4 $00 $0B $72 $7A $08 $85 $BF $BF $00 $40
.db $EF $EF $00 $10 $1A $9A $00 $65 $E9 $99 $E0 $06 $FB $F4 $FB $00
.db $F0 $00 $88 $07 $63 $10 $4B $94 $48 $28 $D0 $87 $18 $18 $E0 $07
.db $F7 $F4 $03 $08 $C5 $C4 $01 $3A $2C $0C $00 $D3 $52 $50 $02 $AD
.db $DF $02 $DF $20 $FF $05 $FF $00 $7F $02 $7F $80 $7F $04 $7F $80
.db $7F $01 $7F $80 $5F $01 $5F $A0 $5F $15 $5F $A0 $DF $03 $DF $20
.db $11 $10 $01 $EE $A3 $A0 $03 $5C $06 $00 $06 $F9 $E0 $E0 $00 $1F
.db $01 $00 $01 $FE $D3 $D0 $03 $2C $0F $01 $0F $F0 $6F $9F $6F $00
.db $BF $03 $BF $40 $3F $0F $3F $C0 $7F $07 $7F $80 $FF $3F $FF $00
.db $FF $1F $FF $00 $FF $7F $FF $00 $FF $FF $FF $00 $FF $FF $FF $00

; 7th entry of Pointer Table from 6395 (indexed by _RAM_C286_)
; Data from 3B8E8 to 3BAE7 (512 bytes)
_DATA_3B8E8_:
.db $FF $FF $FF $00 $FF $FF $FF $00 $FE $FF $FE $00 $FE $FC $FE $01
.db $F9 $FD $F8 $02 $FB $F3 $F8 $04 $E7 $F7 $E0 $08 $D6 $F6 $D0 $09
.db $F5 $EA $F5 $00 $A4 $D4 $A4 $0B $81 $01 $81 $7E $00 $00 $00 $FF
.db $C2 $C2 $00 $3D $10 $10 $00 $EF $78 $78 $00 $87 $EE $EE $00 $11
.db $F5 $D5 $E0 $0A $FE $BA $C0 $01 $FF $BF $C0 $00 $FF $BB $C4 $00
.db $3E $F7 $41 $00 $7F $FF $00 $00 $FF $7F $80 $00 $7F $FD $00 $00
.db $BC $BC $00 $43 $B3 $B3 $00 $4C $AC $EC $40 $13 $FF $FF $00 $00
.db $5C $5C $03 $A0 $FA $A1 $04 $00 $F2 $C5 $08 $00 $EB $44 $90 $00
.db $BF $4F $BF $00 $7F $01 $7F $80 $1F $00 $1F $E0 $0F $00 $0F $F0
.db $06 $00 $06 $F9 $42 $00 $42 $BD $03 $00 $03 $FC $51 $00 $51 $AE
.db $FF $FF $FF $00 $FF $FF $FF $00 $FF $7F $FF $00 $FF $3F $FF $00
.db $FF $9F $FF $00 $FF $2F $FF $00 $7F $3F $7F $80 $DF $0B $DF $20
.db $01 $00 $01 $FE $91 $90 $01 $6E $4E $40 $0E $B1 $C1 $C0 $01 $3E
.db $34 $30 $C4 $0B $99 $18 $61 $46 $8A $28 $52 $45 $D4 $24 $08 $03
.db $FF $0B $FF $00 $FF $15 $FF $00 $BF $09 $BF $40 $FF $0D $FF $00
.db $EF $12 $FF $00 $BF $05 $BF $40 $FF $02 $FF $00 $EF $01 $EF $10
.db $FF $6F $82 $00 $FF $7F $80 $00 $77 $FE $09 $00 $7F $BF $40 $00
.db $FF $BF $C0 $00 $FF $BF $C0 $00 $BF $FF $80 $00 $FF $DF $E0 $00
.db $EE $80 $10 $01 $E6 $88 $52 $09 $E5 $EA $15 $08 $F5 $E2 $0D $00
.db $B8 $98 $27 $40 $EF $EF $00 $10 $D3 $D7 $04 $28 $68 $68 $00 $97
.db $DF $FF $C0 $00 $EF $FF $E0 $00 $FA $F2 $F8 $05 $FB $FF $F9 $00
.db $FF $FD $FE $00 $FF $FE $FF $00 $FF $FF $FF $00 $FF $FF $FF $00
.db $F4 $F4 $00 $0B $F8 $F8 $00 $07 $7E $7E $00 $81 $BF $BF $00 $40
.db $EF $EF $00 $10 $1A $9A $00 $65 $E9 $99 $E0 $06 $FB $F4 $FB $00
.db $F5 $04 $89 $02 $67 $14 $4B $90 $45 $34 $C9 $92 $C8 $A8 $50 $87
.db $16 $14 $E2 $09 $E6 $E4 $02 $19 $2C $0C $00 $D3 $51 $50 $01 $AE
.db $BF $04 $BF $40 $FF $09 $FF $00 $FF $02 $FF $00 $FF $04 $FF $00
.db $FF $01 $FF $00 $BF $01 $BF $40 $BF $15 $BF $40 $BF $03 $BF $40
.db $13 $10 $03 $EC $A6 $A0 $06 $59 $0C $00 $0C $F3 $E1 $E0 $01 $1E
.db $01 $00 $01 $FE $D7 $D0 $07 $28 $0F $01 $0F $F0 $6F $9F $6F $00
.db $2F $03 $2F $D0 $5F $17 $5F $A0 $BF $07 $BF $40 $FF $3F $FF $00
.db $FF $1F $FF $00 $FF $7F $FF $00 $FF $FF $FF $00 $FF $FF $FF $00

; 1st entry of Pointer Table from 6365 (indexed by _RAM_C27A_)
; Data from 3BAE8 to 3BB67 (128 bytes)
_DATA_3BAE8_:
.db $00 $00 $00 $00 $00 $02 $00 $00 $00 $10 $00 $00 $00 $08 $20 $20
.db $00 $11 $44 $44 $00 $00 $08 $08 $00 $41 $00 $00 $00 $0A $20 $20
.db $00 $00 $00 $00 $00 $20 $00 $00 $00 $00 $10 $10 $00 $80 $22 $22
.db $00 $40 $11 $11 $00 $22 $00 $00 $00 $40 $04 $04 $00 $08 $00 $00
.db $00 $05 $00 $00 $00 $08 $02 $02 $00 $04 $40 $40 $00 $08 $00 $00
.db $00 $01 $10 $10 $00 $02 $00 $00 $00 $01 $10 $10 $00 $00 $02 $02
.db $00 $40 $00 $00 $00 $A8 $00 $00 $00 $04 $10 $10 $00 $0A $80 $80
.db $00 $44 $10 $10 $00 $00 $00 $00 $00 $40 $04 $04 $00 $00 $80 $80

; 3rd entry of Pointer Table from 6365 (indexed by _RAM_C27A_)
; Data from 3BB68 to 3BBE7 (128 bytes)
_DATA_3BB68_:
.db $00 $00 $00 $00 $00 $04 $01 $01 $00 $00 $28 $28 $00 $11 $40 $40
.db $00 $20 $02 $02 $00 $00 $10 $10 $00 $02 $00 $00 $00 $04 $10 $10
.db $00 $00 $20 $20 $00 $40 $00 $00 $00 $00 $28 $28 $00 $00 $00 $00
.db $00 $80 $20 $20 $00 $04 $40 $40 $00 $80 $08 $08 $00 $10 $00 $00
.db $00 $02 $88 $88 $00 $11 $04 $04 $00 $08 $00 $00 $00 $00 $11 $11
.db $00 $02 $20 $20 $00 $00 $04 $04 $00 $02 $00 $00 $00 $00 $05 $05
.db $00 $80 $00 $00 $00 $10 $40 $40 $00 $00 $2A $2A $00 $14 $00 $00
.db $00 $00 $8A $8A $00 $00 $00 $00 $00 $80 $10 $10 $00 $00 $00 $00

; 5th entry of Pointer Table from 6365 (indexed by _RAM_C27A_)
; Data from 3BBE8 to 3BC67 (128 bytes)
_DATA_3BBE8_:
.db $00 $00 $00 $00 $00 $00 $0A $0A $00 $00 $00 $00 $00 $02 $20 $20
.db $00 $40 $05 $05 $00 $00 $00 $00 $00 $01 $04 $04 $00 $28 $00 $00
.db $00 $00 $00 $00 $00 $80 $08 $08 $00 $00 $40 $40 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $0A $0A $00 $00 $10 $10 $00 $00 $22 $22
.db $00 $04 $11 $11 $00 $00 $22 $22 $00 $00 $10 $10 $00 $00 $00 $00
.db $00 $00 $05 $05 $00 $00 $08 $08 $00 $04 $01 $01 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $20 $00 $00 $00 $00 $10 $10 $00 $20 $08 $08
.db $00 $00 $10 $10 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 3BC68 to 3BFFF (920 bytes)
_DATA_3BC68_:
.db $86 $01 $02 $01 $02 $00 $01 $06 $00 $88 $01 $00 $00 $01 $00 $00
.db $01 $02 $03 $00 $8D $01 $00 $00 $49 $00 $01 $03 $00 $00 $03 $00
.db $03 $01 $04 $00 $84 $01 $02 $00 $01 $03 $00 $93 $02 $01 $00 $03
.db $01 $00 $4A $4B $4C $4D $4E $4F $50 $00 $00 $02 $00 $00 $02 $03
.db $00 $81 $04 $07 $00 $84 $02 $01 $01 $03 $04 $00 $89 $51 $52 $53
.db $54 $55 $56 $57 $00 $03 $03 $00 $87 $01 $03 $00 $00 $05 $06 $07
.db $05 $00 $85 $01 $03 $00 $00 $01 $03 $00 $8A $58 $59 $5A $5B $5C
.db $5D $5E $01 $00 $01 $06 $00 $88 $08 $09 $0A $0B $00 $00 $0C $0D
.db $05 $00 $8C $5F $60 $61 $62 $63 $64 $65 $66 $67 $00 $00 $02 $05
.db $00 $9F $01 $00 $0E $0F $10 $11 $12 $13 $14 $15 $16 $17 $18 $68
.db $69 $6A $6B $6C $6D $6E $6F $70 $71 $72 $73 $03 $02 $00 $00 $01
.db $02 $03 $00 $B7 $19 $1A $1B $1C $1D $1E $1F $20 $21 $22 $23 $74
.db $75 $76 $77 $78 $79 $7A $7B $7C $7D $7E $7F $00 $01 $03 $00 $03
.db $02 $01 $00 $00 $24 $00 $25 $26 $27 $28 $29 $2A $2B $2C $2D $80
.db $81 $82 $83 $84 $85 $86 $87 $88 $89 $8A $8B $05 $00 $9E $01 $03
.db $01 $2E $2F $00 $30 $31 $32 $33 $34 $35 $36 $37 $38 $8C $8D $8E
.db $8F $00 $90 $91 $92 $93 $94 $95 $96 $97 $00 $01 $04 $00 $82 $03
.db $39 $03 $00 $89 $3A $3B $3C $16 $17 $18 $3D $3E $98 $04 $00 $8A
.db $99 $9A $9B $9C $9D $9E $00 $9F $A0 $A1 $03 $00 $81 $01 $03 $00
.db $8E $03 $00 $3F $40 $41 $21 $22 $23 $42 $43 $A2 $00 $00 $01 $03
.db $00 $8A $A3 $A4 $A5 $A6 $A7 $A8 $A9 $AA $00 $03 $05 $00 $99 $01
.db $00 $44 $45 $46 $2B $2C $2D $47 $48 $AB $00 $AC $00 $00 $02 $AD
.db $AE $AF $B0 $B1 $B2 $00 $00 $02 $03 $00 $9C $01 $02 $00 $03 $00
.db $B3 $B4 $B5 $B6 $36 $37 $38 $B7 $B8 $CF $D0 $D1 $00 $03 $01 $D2
.db $D3 $D4 $D5 $D6 $D7 $00 $01 $03 $00 $82 $01 $02 $04 $00 $84 $B9
.db $BA $BB $BC $04 $00 $81 $03 $06 $00 $8E $D8 $D9 $DA $DB $DC $DD
.db $DE $03 $01 $00 $00 $03 $00 $01 $03 $00 $87 $BD $BE $BF $C0 $00
.db $00 $01 $06 $00 $89 $01 $00 $DF $E0 $E1 $E2 $E3 $E3 $E4 $06 $00
.db $85 $03 $00 $00 $01 $02 $0A $00 $8B $01 $02 $00 $00 $E5 $E6 $E7
.db $E8 $E9 $E3 $EA $09 $00 $8E $03 $01 $00 $00 $C1 $C2 $C3 $C4 $C2
.db $00 $01 $00 $03 $01 $04 $00 $85 $EB $EC $ED $EE $03 $18 $00 $81
.db $02 $03 $00 $86 $EF $F0 $F1 $00 $01 $02 $03 $00 $84 $02 $00 $01
.db $02 $04 $00 $92 $C5 $C6 $C7 $C2 $C8 $C7 $F2 $CC $00 $00 $02 $01
.db $00 $00 $02 $00 $F3 $F4 $04 $00 $88 $02 $01 $01 $00 $03 $00 $00
.db $01 $0C $00 $8E $01 $03 $01 $03 $01 $00 $F5 $F6 $00 $03 $00 $00
.db $01 $03 $04 $00 $81 $02 $03 $00 $81 $01 $03 $00 $84 $03 $00 $00
.db $02 $04 $00 $81 $03 $03 $00 $82 $F8 $F9 $09 $00 $83 $01 $00 $03
.db $0D $00 $81 $02 $03 $00 $89 $01 $FA $FB $00 $00 $01 $00 $00 $01
.db $03 $00 $92 $03 $00 $00 $CB $00 $C1 $CC $CD $C3 $00 $CE $FC $FD
.db $FD $00 $00 $01 $03 $07 $00 $81 $02 $03 $00 $81 $03 $03 $00 $82
.db $03 $01 $09 $00 $82 $03 $01 $05 $00 $87 $01 $00 $03 $00 $00 $03
.db $01 $81 $00 $00 $1C $00 $02 $02 $11 $00 $02 $02 $10 $00 $81 $02
.db $0B $00 $04 $02 $10 $00 $02 $02 $0A $00 $02 $02 $0F $00 $81 $04
.db $3E $00 $81 $02 $1F $00 $02 $02 $02 $00 $02 $02 $1E $00 $02 $02
.db $7B $00 $81 $02 $7F $00 $40 $00 $81 $02 $15 $00 $02 $02 $0A $00
.db $02 $02 $12 $00 $02 $02 $0A $00 $02 $02 $04 $00 $81 $02 $20 $00
.db $81 $02 $0D $00 $81 $02 $12 $00 $82 $08 $00 $04 $08 $81 $00 $04
.db $08 $02 $00 $02 $02 $29 $00 $00 $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 15
.ORG $0000

; Data from 3C000 to 3DF6D (8046 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_3c000.inc"

; Data from 3DF6E to 3FDED (7808 bytes)
_DATA_3DF6E_:
.incbin "Phantasy Star (UE) (V1.2) [!]_3df6e.inc"

; Data from 3FDEE to 3FF7F (402 bytes)
_DATA_3FDEE_:
.db $7F $00 $51 $00 $00 $8B $0E $06 $0A $12 $3E $22 $42 $00 $78 $44
.db $7C $03 $42 $84 $7C $00 $1E $22 $03 $40 $85 $22 $1E $00 $78 $44
.db $03 $42 $8F $44 $78 $00 $1E $20 $40 $7E $40 $20 $1E $00 $1E $20
.db $40 $7E $03 $40 $8D $00 $1E $22 $40 $4E $42 $22 $1E $00 $62 $22
.db $22 $7E $03 $42 $82 $00 $1C $05 $08 $83 $1C $00 $3E $05 $04 $8A
.db $18 $00 $42 $44 $78 $48 $44 $42 $42 $00 $06 $40 $83 $7E $00 $36
.db $06 $49 $83 $00 $58 $64 $02 $42 $02 $44 $83 $46 $00 $7E $04 $42
.db $87 $24 $18 $00 $7C $42 $4C $70 $03 $40 $82 $00 $7E $03 $42 $96
.db $4A $24 $1A $00 $7C $42 $4C $78 $44 $42 $42 $00 $3C $40 $78 $04
.db $02 $44 $38 $00 $7E $08 $04 $10 $84 $08 $00 $62 $22 $03 $42 $83
.db $26 $1A $00 $03 $42 $03 $24 $82 $18 $00 $06 $49 $9A $36 $00 $42
.db $42 $24 $18 $24 $42 $42 $00 $42 $22 $14 $08 $08 $10 $20 $00 $3C
.db $04 $28 $10 $28 $40 $7E $00 $00 $9A $10 $08 $14 $2C $40 $5C $A4
.db $46 $80 $B8 $80 $BC $84 $84 $80 $FC $20 $5C $A2 $80 $80 $44 $20
.db $1E $80 $B8 $03 $84 $A5 $8A $84 $78 $00 $1E $A0 $80 $BE $40 $20
.db $1E $20 $5E $A0 $80 $BE $80 $80 $40 $20 $5C $A2 $90 $8C $44 $20
.db $1E $84 $44 $44 $80 $BC $84 $84 $42 $20 $14 $04 $10 $84 $20 $1C
.db $40 $3A $04 $08 $8A $24 $18 $80 $82 $84 $B0 $88 $84 $84 $42 $07
.db $80 $83 $7E $48 $B6 $05 $92 $85 $4B $A0 $98 $A4 $84 $03 $88 $83
.db $46 $80 $BC $03 $84 $A5 $48 $20 $18 $80 $BC $92 $8C $B0 $80 $80
.db $40 $80 $BC $84 $84 $94 $48 $24 $1A $80 $BC $92 $84 $B8 $84 $84
.db $42 $40 $BC $80 $78 $04 $8A $44 $38 $80 $76 $04 $20 $8A $10 $08
.db $84 $44 $A4 $84 $84 $48 $24 $1A $03 $84 $03 $48 $82 $24 $18 $06
.db $92 $9A $49 $36 $84 $84 $4A $24 $58 $A4 $84 $42 $84 $44 $2A $14
.db $10 $28 $50 $20 $40 $38 $54 $28 $50 $A8 $80 $7E $00 $7F $FF $51
.db $FF $00

; Data from 3FF80 to 3FFFF (128 bytes)
_DATA_3FF80_:
.db $01 $01 $01 $0F $08 $01 $01 $01 $0F $04 $01 $01 $08 $01 $0F $04
.db $04 $01 $08 $01 $01 $0F $04 $01 $01 $08 $01 $0F $02 $02 $00 $08
.db $01 $01 $0F $04 $01 $01 $01 $01 $02 $04 $0F $02 $02 $02 $08 $01
.db $01 $01 $01 $04 $0F $08 $08 $0F $08 $01 $01 $08 $01 $01 $01 $01
.db $01 $01 $01 $08 $02 $02 $04 $0F $04 $01 $01 $00 $0F $04 $04 $01
.db $01 $08 $01 $0F $02 $02 $02 $02 $08 $0F $02 $04 $04 $01 $01 $01
.db $08 $01 $01 $01 $01 $0F $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 16
.ORG $0000

; Data from 40000 to 428F5 (10486 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_40000.inc"

; Data from 428F6 to 43AD7 (4578 bytes)
_DATA_428F6_:
.incbin "Phantasy Star (UE) (V1.2) [!]_428f6.inc"

; Data from 43AD8 to 43D57 (640 bytes)
_DATA_43AD8_:
.db $08 $FF $8A $83 $79 $75 $6D $5D $3D $83 $FF $CF $AF $04 $EF $AD
.db $83 $FF $83 $7D $7D $F3 $CF $BF $01 $FF $83 $7D $FD $C3 $FD $7D
.db $83 $FF $F3 $EB $DB $BB $7B $01 $FB $FF $01 $7F $7F $03 $FD $7D
.db $83 $FF $83 $7D $7F $03 $7D $7D $83 $FF $01 $7D $7B $02 $F7 $02
.db $EF $92 $FF $83 $7D $7D $83 $7D $7D $83 $FF $83 $7D $7D $81 $FD
.db $FD $83 $FF $EF $02 $C7 $02 $9B $87 $01 $3D $3D $83 $9D $9D $83
.db $03 $9D $83 $83 $C3 $9D $04 $9F $84 $9D $C3 $87 $9B $04 $9D $86
.db $9B $87 $81 $9F $9F $81 $03 $9F $02 $81 $02 $9F $81 $81 $04 $9F
.db $88 $C3 $9D $9F $9F $91 $9D $9D $C3 $03 $9D $81 $81 $04 $9D $81
.db $C3 $06 $E7 $82 $C3 $C1 $04 $F3 $02 $B3 $89 $C7 $9D $9B $97 $8F
.db $8F $97 $9B $9D $07 $9F $8A $81 $3D $19 $19 $29 $25 $35 $3D $3D
.db $9D $02 $8D $02 $95 $02 $99 $82 $9D $C3 $06 $9D $82 $C3 $83 $03
.db $9D $81 $83 $03 $9F $81 $C3 $03 $9D $85 $85 $99 $9D $C2 $83 $03
.db $9D $81 $83 $03 $9D $89 $C3 $9D $9F $C3 $FD $FD $9D $C3 $81 $07
.db $E7 $07 $9D $81 $C3 $02 $3D $02 $9B $02 $C7 $02 $EF $02 $3E $81
.db $36 $03 $95 $02 $CB $8B $FF $3C $99 $C3 $E7 $C3 $99 $3C $3E $9D
.db $CB $05 $E7 $88 $81 $F9 $D3 $E7 $E7 $CB $9F $81 $04 $FF $02 $9F
.db $8A $DF $BF $FF $9F $9F $FF $9F $9F $DF $BF $06 $FF $02 $9F $05
.db $E7 $8B $FF $E7 $E7 $C3 $99 $99 $F3 $E7 $E7 $FF $E7 $03 $FF $02
.db $81 $07 $FF $02 $27 $82 $B7 $6F $00 $08 $00 $8A $7C $86 $8A $92
.db $A2 $C2 $7C $00 $30 $50 $04 $10 $AD $7C $00 $7C $82 $82 $0C $30
.db $40 $FE $00 $7C $82 $02 $3C $02 $82 $7C $00 $0C $14 $24 $44 $84
.db $FE $04 $00 $FE $80 $80 $FC $02 $82 $7C $00 $7C $82 $80 $FC $82
.db $82 $7C $00 $FE $82 $84 $02 $08 $02 $10 $92 $00 $7C $82 $82 $7C
.db $82 $82 $7C $00 $7C $82 $82 $7E $02 $02 $7C $00 $10 $02 $38 $02
.db $64 $87 $FE $C2 $C2 $7C $62 $62 $7C $03 $62 $83 $7C $3C $62 $04
.db $60 $84 $62 $3C $78 $64 $04 $62 $86 $64 $78 $7E $60 $60 $7E $03
.db $60 $02 $7E $02 $60 $81 $7E $04 $60 $88 $3C $62 $60 $60 $6E $62
.db $62 $3C $03 $62 $81 $7E $04 $62 $81 $3C $06 $18 $82 $3C $3E $04
.db $0C $02 $4C $89 $38 $62 $64 $68 $70 $70 $68 $64 $62 $07 $60 $8A
.db $7E $C2 $E6 $E6 $D6 $DA $CA $C2 $C2 $62 $02 $72 $02 $6A $02 $66
.db $82 $62 $3C $06 $62 $82 $3C $7C $03 $62 $81 $7C $03 $60 $81 $3C
.db $03 $62 $85 $7A $66 $62 $3D $7C $03 $62 $81 $7C $03 $62 $89 $3C
.db $62 $60 $3C $02 $02 $62 $3C $7E $07 $18 $07 $62 $81 $3C $02 $C2
.db $02 $64 $02 $38 $02 $10 $02 $C1 $81 $C9 $03 $6A $02 $34 $8B $00
.db $C3 $66 $3C $18 $3C $66 $C3 $C1 $62 $34 $05 $18 $88 $7E $06 $2C
.db $18 $18 $34 $60 $7E $04 $00 $02 $60 $8A $20 $40 $00 $60 $60 $00
.db $60 $60 $20 $40 $06 $00 $02 $60 $05 $18 $8B $00 $18 $18 $3C $66
.db $66 $0C $18 $18 $00 $18 $03 $00 $02 $7E $07 $00 $02 $D8 $82 $48
.db $90 $00 $7F $00 $7F $00 $62 $00 $00 $7F $00 $7F $00 $62 $00 $00

; Data from 43D58 to 43FFF (680 bytes)
_DATA_43D58_:
.db $8C $9F $97 $93 $91 $93 $97 $9F $9F $FF $E0 $C0 $8F $04 $9F $81
.db $FF $02 $00 $05 $FF $08 $9F $03 $7D $81 $01 $03 $7D $85 $FF $03
.db $7D $7D $03 $03 $7F $85 $FF $7D $39 $55 $6D $03 $7D $8A $FF $01
.db $7F $7F $01 $7F $7F $01 $FF $D0 $0F $F0 $06 $7F $82 $01 $FF $02
.db $7D $02 $BB $02 $D7 $82 $EF $FF $00 $8C $60 $68 $6C $6E $6C $68
.db $60 $60 $00 $1F $3F $70 $04 $60 $81 $00 $02 $FF $05 $00 $08 $60
.db $03 $82 $81 $FE $03 $82 $85 $00 $FC $82 $82 $FC $03 $80 $85 $00
.db $82 $C6 $AA $92 $03 $82 $89 $00 $FE $80 $80 $FE $80 $80 $FE $00
.db $10 $F0 $06 $80 $82 $FE $00 $02 $82 $02 $44 $02 $28 $81 $10 $81
.db $00 $00 $40 $00 $10 $F0 $10 $00 $00 $40 $00 $10 $F0 $10 $00 $00
.db $3E $22 $42 $00 $78 $44 $7C $03 $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 17
.ORG $0000

; Data from 44000 to 47FFF (16384 bytes)
_DATA_44000_:
.incbin "Phantasy Star (UE) (V1.2) [!]_44000.inc"

.BANK 18
.ORG $0000

; Data from 48000 to 4BE83 (16004 bytes)
_DATA_48000_:
.incbin "Phantasy Star (UE) (V1.2) [!]_48000.inc"

; Data from 4BE84 to 4BEF3 (112 bytes)
_DATA_4BE84_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13
.db $F3 $11 $D1 $10 $D9 $10 $DE $10 $D2 $10 $D3 $10 $CD $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $DF $10 $E4 $10 $D9 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $DD $10 $D5 $10 $DF $10 $DC $10 $CF $10 $C0 $10 $F3 $13
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17

; Data from 4BEF4 to 4BFFF (268 bytes)
_DATA_4BEF4_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11
.db $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11
.db $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $DD $10 $DA $10 $CB $10
.db $CD $10 $CF $10 $C0 $10 $CD $10 $CF $10 $D8 $10 $DE $10 $DF $10
.db $DC $10 $E3 $10 $C0 $10 $C4 $10 $C5 $10 $C3 $10 $E5 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $CD $10 $CB $10 $D7 $10
.db $D3 $10 $D8 $10 $CF $10 $CF $10 $DE $10 $C0 $10 $D9 $10 $D8 $10
.db $C0 $10 $DA $10 $CB $10 $D6 $10 $D7 $10 $CB $10 $C0 $10 $F3 $13
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F2 $15 $F2 $15 $F1 $17 $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 19
.ORG $0000

; Data from 4C000 to 4FFFF (16384 bytes)
_DATA_4C000_:
.incbin "Phantasy Star (UE) (V1.2) [!]_4c000.inc"

.BANK 20
.ORG $0000

; Data from 50000 to 50007 (8 bytes)
_DATA_50000_:
.db $12 $06 $1A $01 $25 $2F $2A $02

; Data from 50008 to 53DB7 (15792 bytes)
_DATA_50008_:
.incbin "Phantasy Star (UE) (V1.2) [!]_50008.inc"

; Data from 53DB8 to 53DBB (4 bytes)
_DATA_53DB8_:
.db $80 $05 $00 $00

; Pointer Table from 53DBC to 53DD7 (14 entries, indexed by _RAM_C2F5_)
_DATA_53DBC_:
.dw _DATA_53DD8_ _DATA_53DE1_ _DATA_53E04_ _DATA_53E1D_ _DATA_53E41_ _DATA_53E86_ _DATA_53EA4_ _DATA_53EC6_
.dw _DATA_53EEA_ _DATA_53F14_ _DATA_53F22_ _DATA_53F3E_ _DATA_53F73_ _DATA_53F90_

; 1st entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53DD8 to 53DE0 (9 bytes)
_DATA_53DD8_:
.db $01 $9A $D2 $05 $53 $54 $41 $46 $46

; 2nd entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53DE1 to 53E03 (35 bytes)
_DATA_53DE1_:
.db $03 $4A $D1 $05 $54 $4F $54 $41 $4C $CC $D1 $08 $50 $4C $41 $4E
.db $4E $49 $4E $47 $A2 $D1 $0C $4F $53 $53 $41 $4C $45 $20 $4B $4F
.db $48 $54 $41

; 3rd entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53E04 to 53E1C (25 bytes)
_DATA_53E04_:
.db $02 $CC $D3 $08 $53 $54 $4F $52 $59 $20 $42 $59 $E2 $D3 $0A $41
.db $50 $52 $49 $4C $20 $46 $4F $4F $4C

; 4th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53E1D to 53E40 (36 bytes)
_DATA_53E1D_:
.db $03 $4C $D1 $08 $53 $43 $45 $4E $41 $52 $49 $4F $CE $D1 $06 $57
.db $52 $49 $54 $45 $52 $A2 $D1 $0C $4F $53 $53 $41 $4C $45 $20 $4B
.db $4F $48 $54 $41

; 5th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53E41 to 53E85 (69 bytes)
_DATA_53E41_:
.db $05 $8A $D1 $09 $41 $53 $53 $49 $53 $54 $41 $4E $54 $A2 $D1 $0C
.db $43 $4F $4F $52 $44 $49 $4E $41 $54 $4F $52 $53 $D6 $D2 $0A $46
.db $49 $4E $4F $53 $20 $50 $41 $54 $41 $C4 $D3 $0C $4F $54 $45 $47
.db $41 $4D $49 $20 $43 $48 $49 $45 $E4 $D3 $0A $47 $41 $4D $45 $52
.db $20 $4D $49 $4B $49

; 6th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53E86 to 53EA3 (30 bytes)
_DATA_53E86_:
.db $02 $86 $D1 $0C $54 $4F $54 $41 $4C $20 $44 $45 $53 $49 $47 $4E
.db $A4 $D1 $0B $50 $48 $4F $45 $48 $49 $58 $20 $52 $49 $45

; 7th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53EA4 to 53EC5 (34 bytes)
_DATA_53EA4_:
.db $03 $8A $D3 $07 $4D $4F $4E $53 $54 $45 $52 $0A $D4 $06 $44 $45
.db $53 $49 $47 $4E $E2 $D3 $0B $43 $48 $41 $4F $54 $49 $43 $20 $4B
.db $41 $5A

; 8th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53EC6 to 53EE9 (36 bytes)
_DATA_53EC6_:
.db $03 $90 $D1 $06 $44 $45 $53 $49 $47 $4E $92 $D2 $0A $52 $4F $43
.db $4B $48 $59 $20 $4E $41 $4F $E2 $D3 $0A $53 $41 $44 $41 $4D $4F
.db $52 $49 $41 $4E

; 9th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53EEA to 53F13 (42 bytes)
_DATA_53EEA_:
.db $04 $90 $D1 $06 $44 $45 $53 $49 $47 $4E $92 $D2 $0A $4D $59 $41
.db $55 $20 $43 $48 $4F $4B $4F $E2 $D3 $06 $47 $20 $43 $48 $49 $45
.db $D2 $D4 $07 $59 $4F $4E $45 $53 $41 $4E

; 10th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53F14 to 53F21 (14 bytes)
_DATA_53F14_:
.db $02 $92 $D1 $05 $53 $4F $55 $4E $44 $A4 $D1 $02 $42 $4F

; 11th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53F22 to 53F3D (28 bytes)
_DATA_53F22_:
.db $02 $C6 $D3 $0A $53 $4F $46 $54 $20 $43 $48 $45 $43 $4B $E4 $D3
.db $0B $57 $4F $52 $4B $53 $20 $4E $49 $53 $48 $49

; 12th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53F3E to 53F72 (53 bytes)
_DATA_53F3E_:
.db $05 $46 $D1 $09 $41 $53 $53 $49 $53 $54 $41 $4E $54 $C8 $D1 $0B
.db $50 $52 $4F $47 $52 $41 $4D $4D $45 $52 $53 $92 $D2 $08 $43 $4F
.db $4D $20 $42 $4C $55 $45 $C8 $D3 $06 $4D $20 $57 $41 $4B $41 $E6
.db $D3 $03 $41 $53 $49

; 13th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53F73 to 53F8F (29 bytes)
_DATA_53F73_:
.db $02 $84 $D1 $0C $4D $41 $49 $4E $20 $50 $52 $4F $47 $52 $41 $4D
.db $A2 $D1 $0A $4D $55 $55 $55 $55 $20 $59 $55 $4A $49

; 14th entry of Pointer Table from 53DBC (indexed by _RAM_C2F5_)
; Data from 53F90 to 53FFF (112 bytes)
_DATA_53F90_:
.db $02 $C6 $D3 $0C $50 $52 $45 $53 $45 $4E $54 $45 $44 $20 $42 $59
.db $E4 $D3 $04 $53 $45 $47 $41 $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 21
.ORG $0000

; Pointer Table from 54000 to 541FF (256 entries, indexed by _RAM_C800_)
_DATA_54000_:
.dw _DATA_54200_ _DATA_54204_ _DATA_5429E_ _DATA_542AE_ _DATA_542BE_ _DATA_542D4_ _DATA_542FC_ _DATA_54321_
.dw _DATA_54349_ _DATA_5436B_ _DATA_54384_ _DATA_5439D_ _DATA_543BC_ _DATA_543EA_ _DATA_5441E_ _DATA_54452_
.dw _DATA_576C9_ _DATA_576D6_ _DATA_576EF_ _DATA_577A2_ _DATA_577AF_ _DATA_54486_ _DATA_544F3_ _DATA_5450C_
.dw _DATA_5452B_ _DATA_54544_ _DATA_54569_ _DATA_5458B_ _DATA_545BF_ _DATA_5463B_ _DATA_546C9_ _DATA_54745_
.dw _DATA_547B8_ _DATA_54834_ _DATA_548AD_ _DATA_54923_ _DATA_54999_ _DATA_549CD_ _DATA_54A19_ _DATA_54A65_
.dw _DATA_54AB1_ _DATA_54B27_ _DATA_54B9D_ _DATA_54C13_ _DATA_54C89_ _DATA_54CD2_ _DATA_54CEB_ _DATA_54D07_
.dw _DATA_54D1D_ _DATA_54D3C_ _DATA_54D52_ _DATA_54D65_ _DATA_54D9F_ _DATA_54DD0_ _DATA_54DF2_ _DATA_54E14_
.dw _DATA_54E36_ _DATA_54E58_ _DATA_54E7A_ _DATA_54E9F_ _DATA_54ED0_ _DATA_577BC_ _DATA_577C9_ _DATA_54F72_
.dw _DATA_54FC1_ _DATA_54FD1_ _DATA_54FDE_ _DATA_54FEE_ _DATA_54FFB_ _DATA_5500E_ _DATA_5772A_ _DATA_5501E_
.dw _DATA_55085_ _DATA_550EC_ _DATA_55153_ _DATA_5516C_ _DATA_5518E_ _DATA_551A7_ _DATA_551B4_ _DATA_551D0_
.dw _DATA_551EC_ _DATA_5523B_ _DATA_55287_ _DATA_552D0_ _DATA_5533D_ _DATA_5535C_ _DATA_5537B_ _DATA_5539A_
.dw _DATA_553B9_ _DATA_553DE_ _DATA_5541E_ _DATA_5545E_ _DATA_5549E_ _DATA_554CF_ _DATA_554FA_ _DATA_55522_
.dw _DATA_5554A_ _DATA_55575_ _DATA_555A0_ _DATA_555CE_ _DATA_55605_ _DATA_5563F_ _DATA_556A0_ _DATA_556DA_
.dw _DATA_5571A_ _DATA_5574E_ _DATA_557C4_ _DATA_5583A_ _DATA_558B0_ _DATA_55926_ _DATA_5599C_ _DATA_55A12_
.dw _DATA_55A88_ _DATA_55B10_ _DATA_55B98_ _DATA_55C1D_ _DATA_55CA2_ _DATA_55D2A_ _DATA_577D6_ _DATA_577E3_
.dw _DATA_55DB5_ _DATA_55E28_ _DATA_55E4A_ _DATA_55E66_ _DATA_55E7F_ _DATA_55E98_ _DATA_55EB1_ _DATA_55ED0_
.dw _DATA_55EF2_ _DATA_55F11_ _DATA_55F4E_ _DATA_55F67_ _DATA_55F80_ _DATA_55F99_ _DATA_55FB2_ _DATA_55FCB_
.dw _DATA_577EA_ _DATA_5780F_ _DATA_578A6_ _DATA_5792B_ _DATA_5798F_ _DATA_55FE4_ _DATA_57737_ _DATA_56039_
.dw _DATA_56046_ _DATA_56053_ _DATA_56060_ _DATA_56070_ _DATA_56083_ _DATA_560A5_ _DATA_560E8_ _DATA_56143_
.dw _DATA_5619B_ _DATA_561F6_ _DATA_56203_ _DATA_56210_ _DATA_56226_ _DATA_56233_ _DATA_56240_ _DATA_5624D_
.dw _DATA_5625A_ _DATA_5626A_ _DATA_56280_ _DATA_56299_ _DATA_562D9_ _DATA_56328_ _DATA_56389_ _DATA_563CF_
.dw _DATA_56418_ _DATA_56461_ _DATA_564AD_ _DATA_564F0_ _DATA_56536_ _DATA_565AF_ _DATA_565E0_ _DATA_56617_
.dw _DATA_56648_ _DATA_5667C_ _DATA_566B3_ _DATA_57723_ _DATA_566DB_ _DATA_56721_ _DATA_5677C_ _DATA_567D4_
.dw _DATA_56823_ _DATA_56860_ _DATA_568AF_ _DATA_5692B_ _DATA_56944_ _DATA_56954_ _DATA_56964_ _DATA_5699E_
.dw _DATA_56A02_ _DATA_56A09_ _DATA_56A16_ _DATA_56A29_ _DATA_56A87_ _DATA_56AA0_ _DATA_56ADD_ _DATA_56B1A_
.dw _DATA_56B39_ _DATA_56B5E_ _DATA_56B80_ _DATA_57744_ _DATA_57A1A_ _DATA_57A81_ _DATA_56B90_ _DATA_56BB8_
.dw _DATA_56BF5_ _DATA_56C56_ _DATA_56CDB_ _DATA_56D63_ _DATA_56DA3_ _DATA_56DE0_ _DATA_56E17_ _DATA_56E54_
.dw _DATA_56EBB_ _DATA_56F64_ _DATA_56FC5_ _DATA_5702C_ _DATA_57069_ _DATA_570A6_ _DATA_570E3_ _DATA_5714A_
.dw _DATA_57151_ _DATA_57158_ _DATA_5715F_ _DATA_5716F_ _DATA_571BB_ _DATA_57207_ _DATA_57253_ _DATA_5729F_
.dw _DATA_572F1_ _DATA_57352_ _DATA_573C2_ _DATA_5747A_ _DATA_57532_ _DATA_57542_ _DATA_5756A_ _DATA_5758F_
.dw _DATA_5759F_ _DATA_575AF_ _DATA_575BF_ _DATA_575D8_ _DATA_57603_ _DATA_5760A_ _DATA_57617_ _DATA_57624_
.dw _DATA_57646_ _DATA_5765F_ _DATA_57666_ _DATA_57673_ _DATA_57680_ _DATA_57690_ _DATA_576B5_ _DATA_576BC_

; 1st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54200 to 54203 (4 bytes)
_DATA_54200_:
.db $01 $FF $00 $F0

; 2nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54204 to 5429D (154 bytes)
_DATA_54204_:
.db $33 $00 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $18 $18 $20 $20
.db $20 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40 $40 $40 $40
.db $40 $48 $48 $48 $50 $50 $50 $50 $50 $58 $58 $60 $60 $60 $60 $68
.db $68 $68 $68 $68 $15 $38 $1D $39 $25 $3A $33 $3B $3B $3C $13 $3D
.db $28 $3E $30 $3F $40 $40 $11 $41 $40 $42 $0B $43 $40 $44 $02 $45
.db $0A $46 $48 $47 $00 $48 $08 $49 $48 $4A $0B $4B $28 $4C $30 $4D
.db $48 $4E $0B $4F $28 $50 $38 $51 $48 $52 $0B $53 $13 $54 $30 $55
.db $40 $56 $48 $57 $0B $58 $30 $59 $48 $5A $09 $5B $30 $5C $38 $5D
.db $40 $5E $4B $5F $09 $60 $18 $61 $0C $62 $14 $63 $1C $64 $40 $65
.db $08 $66 $10 $67 $18 $68 $20 $69 $38 $6A

; 3rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5429E to 542AD (16 bytes)
_DATA_5429E_:
.db $05 $20 $28 $28 $30 $30 $18 $6B $10 $6C $18 $6D $10 $6E $18 $6F

; 4th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 542AE to 542BD (16 bytes)
_DATA_542AE_:
.db $05 $20 $28 $28 $30 $30 $18 $70 $10 $71 $18 $72 $10 $73 $18 $74

; 5th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 542BE to 542D3 (22 bytes)
_DATA_542BE_:
.db $07 $20 $28 $28 $30 $30 $38 $38 $18 $70 $10 $75 $18 $76 $10 $77
.db $18 $78 $0C $79 $14 $7A

; 6th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 542D4 to 542FB (40 bytes)
_DATA_542D4_:
.db $0D $20 $28 $28 $30 $30 $38 $40 $40 $48 $48 $50 $50 $50 $18 $70
.db $10 $75 $18 $76 $10 $7B $18 $7C $10 $7D $08 $7E $10 $7F $08 $80
.db $10 $81 $02 $82 $0A $83 $12 $84

; 7th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 542FC to 54320 (37 bytes)
_DATA_542FC_:
.db $0C $20 $28 $28 $30 $30 $50 $58 $58 $60 $60 $68 $68 $18 $70 $10
.db $71 $18 $72 $10 $73 $18 $74 $07 $85 $02 $86 $0A $87 $FD $88 $05
.db $89 $FC $8A $04 $8B

; 8th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54321 to 54348 (40 bytes)
_DATA_54321_:
.db $0D $20 $28 $28 $30 $30 $68 $70 $70 $70 $78 $78 $78 $78 $18 $70
.db $10 $71 $18 $72 $10 $73 $18 $74 $FF $8C $F6 $8D $FE $8E $06 $8F
.db $F0 $90 $F8 $91 $00 $92 $08 $93

; 9th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54349 to 5436A (34 bytes)
_DATA_54349_:
.db $0B $20 $28 $28 $30 $30 $70 $70 $78 $78 $78 $78 $18 $70 $10 $71
.db $18 $72 $10 $73 $18 $74 $E8 $94 $10 $95 $E8 $96 $F0 $97 $09 $98
.db $11 $99

; 10th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5436B to 54383 (25 bytes)
_DATA_5436B_:
.db $08 $14 $14 $14 $14 $1C $1C $1C $1C $09 $00 $11 $01 $19 $02 $21
.db $03 $08 $04 $10 $05 $18 $06 $20 $07

; 11th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54384 to 5439C (25 bytes)
_DATA_54384_:
.db $08 $14 $14 $14 $14 $1C $1C $1C $1C $08 $08 $10 $09 $18 $0A $20
.db $0B $08 $0C $10 $0D $18 $0E $20 $0F

; 12th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5439D to 543BB (31 bytes)
_DATA_5439D_:
.db $0A $00 $00 $00 $08 $08 $08 $10 $10 $28 $28 $0F $10 $17 $11 $1F
.db $12 $0E $13 $16 $14 $1E $15 $11 $16 $19 $17 $10 $18 $18 $19

; 13th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 543BC to 543E9 (46 bytes)
_DATA_543BC_:
.db $0F $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $30 $30 $30
.db $10 $1A $18 $1B $0C $1C $14 $1D $1C $1E $0B $1F $13 $20 $1B $21
.db $23 $22 $0D $23 $15 $24 $1D $25 $0C $26 $14 $27 $1C $28

; 14th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 543EA to 5441D (52 bytes)
_DATA_543EA_:
.db $11 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30 $30 $30
.db $30 $30 $06 $29 $0E $2A $16 $2B $1E $2C $26 $2D $02 $2E $0A $2F
.db $12 $30 $1A $31 $22 $32 $2A $33 $01 $34 $09 $35 $11 $36 $19 $37
.db $21 $38 $29 $39

; 15th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5441E to 54451 (52 bytes)
_DATA_5441E_:
.db $11 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30 $30 $30
.db $30 $30 $03 $3A $0B $3B $13 $3C $1B $3D $23 $3E $01 $3F $09 $40
.db $11 $41 $19 $42 $21 $43 $29 $44 $01 $45 $09 $46 $11 $47 $19 $48
.db $21 $49 $29 $4A

; 16th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54452 to 54485 (52 bytes)
_DATA_54452_:
.db $11 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30 $30 $30
.db $30 $30 $08 $4B $10 $4C $18 $4D $20 $4E $28 $4F $02 $50 $0A $51
.db $12 $30 $1A $52 $22 $53 $2A $54 $01 $55 $09 $56 $11 $36 $19 $57
.db $21 $58 $29 $59

; 22nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54486 to 544F2 (109 bytes)
_DATA_54486_:
.db $24 $00 $00 $00 $08 $08 $08 $10 $10 $10 $10 $10 $10 $18 $18 $20
.db $20 $28 $28 $28 $30 $38 $38 $38 $40 $40 $40 $48 $48 $50 $50 $50
.db $50 $50 $58 $58 $58 $21 $33 $29 $34 $31 $35 $1A $36 $30 $37 $38
.db $38 $01 $39 $09 $3A $11 $3B $38 $3C $40 $3D $48 $3E $09 $3F $40
.db $40 $09 $41 $40 $42 $08 $43 $10 $44 $40 $45 $08 $46 $0B $47 $20
.db $48 $48 $49 $0A $4A $20 $4B $40 $4C $09 $4D $40 $4E $06 $4F $28
.db $50 $30 $51 $38 $52 $40 $53 $09 $54 $11 $55 $19 $56

; 23rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 544F3 to 5450B (25 bytes)
_DATA_544F3_:
.db $08 $28 $28 $30 $30 $38 $38 $40 $40 $08 $57 $10 $58 $08 $59 $10
.db $5A $09 $5B $11 $5C $0A $5D $12 $5E

; 24th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5450C to 5452A (31 bytes)
_DATA_5450C_:
.db $0A $20 $20 $28 $28 $28 $30 $30 $30 $38 $38 $08 $5F $10 $60 $06
.db $61 $0E $62 $16 $63 $06 $64 $0E $65 $16 $66 $09 $67 $11 $68

; 25th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5452B to 54543 (25 bytes)
_DATA_5452B_:
.db $08 $10 $10 $18 $18 $20 $20 $28 $28 $0A $69 $12 $6A $09 $6B $11
.db $6C $08 $6D $10 $6E $08 $6F $10 $70

; 26th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54544 to 54568 (37 bytes)
_DATA_54544_:
.db $0C $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $28 $28 $0B $71 $13
.db $72 $0A $73 $12 $74 $0A $75 $12 $76 $09 $77 $11 $78 $08 $79 $10
.db $7A $09 $7B $11 $7C

; 27th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54569 to 5458A (34 bytes)
_DATA_54569_:
.db $0B $20 $20 $28 $28 $28 $30 $30 $30 $38 $38 $38 $08 $7D $10 $7E
.db $07 $7F $0F $80 $17 $81 $05 $82 $0D $83 $15 $84 $05 $85 $0D $86
.db $15 $87

; 28th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5458B to 545BE (52 bytes)
_DATA_5458B_:
.db $11 $20 $20 $28 $28 $30 $30 $30 $38 $38 $38 $38 $40 $40 $40 $40
.db $48 $48 $08 $88 $10 $89 $08 $8A $10 $8B $05 $8C $0D $8D $15 $8E
.db $01 $8F $09 $90 $11 $91 $19 $92 $01 $93 $09 $94 $11 $95 $19 $96
.db $01 $97 $1B $98

; 29th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 545BF to 5463A (124 bytes)
_DATA_545BF_:
.db $29 $00 $00 $08 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18
.db $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $30 $30 $30 $38 $38 $38
.db $40 $40 $40 $48 $48 $48 $50 $50 $50 $50 $16 $11 $1E $12 $05 $13
.db $0F $14 $17 $15 $20 $16 $28 $17 $06 $18 $0E $19 $28 $1A $30 $1B
.db $09 $1C $11 $1D $28 $1E $30 $1F $0C $20 $14 $21 $20 $22 $28 $23
.db $30 $24 $0D $25 $15 $26 $20 $27 $28 $28 $30 $29 $10 $2A $28 $2B
.db $30 $2C $10 $2D $28 $2E $30 $2F $10 $30 $28 $31 $30 $32 $0A $33
.db $12 $34 $28 $35 $19 $36 $21 $37 $29 $38 $31 $39

; 30th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5463B to 546C8 (142 bytes)
_DATA_5463B_:
.db $2F $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18
.db $18 $20 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30 $30
.db $30 $38 $38 $38 $38 $40 $40 $40 $40 $48 $48 $48 $50 $50 $50 $50
.db $07 $3A $0F $3B $17 $3C $1F $3D $09 $3E $11 $3F $20 $16 $28 $17
.db $08 $40 $28 $1A $30 $1B $06 $41 $0E $42 $16 $43 $28 $1E $30 $1F
.db $06 $44 $0E $45 $16 $46 $20 $22 $28 $23 $30 $24 $07 $47 $0F $48
.db $17 $49 $20 $27 $28 $28 $30 $29 $0A $4A $12 $4B $28 $2B $30 $2C
.db $0A $4C $12 $4D $28 $2E $30 $2F $0A $4E $12 $4F $28 $31 $30 $32
.db $0A $33 $12 $34 $28 $35 $19 $36 $21 $37 $29 $38 $31 $39

; 31st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 546C9 to 54744 (124 bytes)
_DATA_546C9_:
.db $29 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $20 $28 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38
.db $40 $40 $40 $48 $48 $48 $50 $50 $50 $50 $16 $11 $1E $12 $0F $14
.db $17 $15 $20 $16 $28 $17 $08 $50 $28 $1A $30 $1B $08 $51 $10 $52
.db $28 $1E $30 $1F $08 $53 $10 $54 $20 $22 $28 $23 $30 $24 $09 $55
.db $11 $56 $20 $27 $28 $28 $30 $29 $0A $57 $12 $58 $28 $2B $30 $2C
.db $0C $59 $14 $5A $28 $2E $30 $2F $10 $30 $28 $31 $30 $32 $0A $33
.db $12 $34 $28 $35 $19 $36 $21 $37 $29 $38 $31 $39

; 32nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54745 to 547B7 (115 bytes)
_DATA_54745_:
.db $26 $00 $00 $08 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18
.db $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $30 $30 $38 $38 $40 $40
.db $48 $48 $48 $50 $50 $50 $50 $16 $11 $1E $12 $05 $13 $0F $14 $17
.db $15 $20 $16 $28 $17 $06 $18 $0E $19 $28 $5B $30 $1B $09 $1C $11
.db $1D $28 $5C $30 $5D $0C $20 $14 $21 $20 $5E $28 $5F $30 $60 $0D
.db $25 $15 $26 $20 $61 $28 $62 $30 $63 $10 $2A $28 $64 $10 $2D $28
.db $65 $10 $30 $28 $31 $0A $33 $12 $34 $28 $35 $19 $36 $21 $37 $29
.db $38 $31 $39

; 33rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 547B8 to 54833 (124 bytes)
_DATA_547B8_:
.db $29 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $20 $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $38 $38
.db $40 $40 $40 $40 $40 $48 $48 $48 $48 $48 $0C $11 $14 $12 $1C $13
.db $24 $14 $0B $15 $13 $16 $1B $17 $23 $18 $0A $19 $12 $1A $1A $1B
.db $22 $1C $0B $1D $13 $1E $1B $1F $23 $20 $2F $21 $10 $22 $18 $23
.db $20 $24 $28 $25 $30 $26 $09 $27 $11 $28 $19 $29 $30 $2A $04 $2B
.db $30 $2C $38 $2D $01 $2E $38 $2F $02 $30 $18 $31 $28 $32 $30 $33
.db $38 $34 $05 $35 $0D $36 $15 $37 $20 $38 $28 $39

; 34th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54834 to 548AC (121 bytes)
_DATA_54834_:
.db $28 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18
.db $18 $20 $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $40
.db $40 $40 $40 $40 $48 $48 $48 $48 $48 $0D $3A $15 $3B $1D $3C $0D
.db $3D $15 $3E $1D $3F $25 $40 $0D $41 $15 $42 $1D $43 $25 $44 $0E
.db $45 $16 $46 $1E $47 $26 $48 $2E $49 $10 $4A $18 $4B $20 $4C $28
.db $4D $30 $14 $09 $27 $11 $4E $19 $4F $30 $2A $02 $50 $30 $2C $38
.db $2D $00 $51 $38 $52 $02 $53 $18 $54 $28 $55 $30 $56 $38 $57 $05
.db $58 $0D $59 $15 $5A $20 $5B $28 $39

; 35th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 548AD to 54922 (118 bytes)
_DATA_548AD_:
.db $27 $00 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18
.db $20 $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $40 $40
.db $40 $40 $40 $48 $48 $48 $48 $48 $10 $5C $18 $5D $20 $5E $0F $5F
.db $17 $60 $1F $61 $0D $62 $15 $63 $1D $64 $25 $65 $0E $66 $16 $67
.db $1E $68 $26 $69 $2F $21 $10 $6A $18 $6B $20 $6C $28 $6D $30 $26
.db $09 $27 $11 $4E $19 $4F $30 $2A $04 $2B $30 $2C $38 $2D $01 $2E
.db $38 $2F $02 $30 $18 $31 $28 $32 $30 $33 $38 $34 $05 $35 $0D $36
.db $15 $37 $20 $38 $28 $39

; 36th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54923 to 54998 (118 bytes)
_DATA_54923_:
.db $27 $00 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18
.db $20 $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $40 $40
.db $40 $40 $40 $48 $48 $48 $48 $48 $10 $6E $18 $6F $20 $70 $0F $71
.db $17 $72 $1F $73 $0D $74 $15 $75 $1D $76 $25 $77 $0E $78 $16 $79
.db $1E $7A $26 $7B $31 $7C $10 $7D $18 $7E $20 $7F $28 $80 $30 $81
.db $09 $27 $11 $82 $19 $83 $30 $2A $02 $50 $30 $2C $38 $2D $00 $51
.db $38 $52 $02 $53 $18 $54 $28 $55 $30 $56 $38 $57 $05 $58 $0D $59
.db $15 $5A $20 $5B $28 $39

; 37th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54999 to 549CC (52 bytes)
_DATA_54999_:
.db $11 $00 $08 $08 $08 $10 $10 $18 $18 $18 $20 $20 $28 $28 $30 $30
.db $38 $38 $16 $0D $10 $0E $18 $0F $20 $10 $0E $11 $20 $12 $09 $13
.db $11 $14 $20 $15 $09 $16 $20 $17 $0A $18 $20 $19 $0B $1A $20 $1B
.db $0A $1C $20 $1D

; 38th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 549CD to 54A18 (76 bytes)
_DATA_549CD_:
.db $19 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20
.db $28 $28 $28 $28 $30 $30 $30 $38 $38 $38 $16 $0D $10 $0E $18 $0F
.db $20 $10 $04 $1E $0E $11 $20 $12 $04 $1F $0C $20 $20 $21 $28 $22
.db $06 $23 $0E $24 $20 $25 $28 $26 $07 $27 $0F $28 $20 $29 $28 $2A
.db $07 $2B $0F $2C $20 $1B $07 $2D $0F $2E $20 $2F

; 39th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54A19 to 54A64 (76 bytes)
_DATA_54A19_:
.db $19 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $16 $0D $10 $0E $18 $0F
.db $20 $10 $01 $30 $09 $31 $20 $12 $29 $32 $01 $33 $09 $34 $20 $35
.db $28 $36 $04 $37 $0C $38 $20 $39 $28 $3A $04 $3B $0C $3C $20 $3D
.db $28 $3E $04 $3F $0C $40 $20 $1B $0A $41 $20 $2F

; 40th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54A65 to 54AB0 (76 bytes)
_DATA_54A65_:
.db $19 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $16 $0D $10 $0E $18 $0F
.db $20 $10 $01 $42 $09 $31 $20 $12 $29 $32 $01 $43 $09 $34 $20 $35
.db $28 $36 $04 $44 $0C $38 $20 $39 $28 $3A $04 $45 $0C $3C $20 $3D
.db $28 $3E $04 $46 $0C $40 $20 $1B $0A $41 $20 $2F

; 41st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54AB1 to 54B26 (118 bytes)
_DATA_54AB1_:
.db $27 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $20 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30
.db $30 $30 $30 $38 $38 $38 $38 $38 $09 $09 $11 $0A $21 $0B $08 $0C
.db $18 $0D $20 $0E $28 $0F $01 $10 $09 $11 $11 $12 $19 $13 $28 $14
.db $02 $15 $0A $16 $18 $17 $28 $18 $30 $19 $03 $1A $0B $1B $13 $1C
.db $20 $1D $28 $1E $30 $1F $02 $20 $0A $21 $12 $22 $20 $23 $28 $24
.db $30 $25 $00 $26 $08 $27 $20 $28 $28 $29 $30 $2A $00 $2B $08 $2C
.db $10 $2D $18 $2E $20 $2F

; 42nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54B27 to 54B9C (118 bytes)
_DATA_54B27_:
.db $27 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $20 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30
.db $30 $30 $30 $38 $38 $38 $38 $38 $09 $09 $11 $0A $21 $0B $08 $0C
.db $18 $0D $20 $0E $28 $0F $01 $10 $09 $30 $11 $31 $19 $13 $28 $14
.db $02 $15 $0A $32 $18 $17 $28 $18 $30 $19 $03 $1A $0B $1B $13 $1C
.db $20 $1D $28 $33 $30 $34 $02 $20 $0A $21 $12 $22 $20 $23 $28 $35
.db $30 $36 $00 $37 $08 $38 $20 $39 $29 $3A $31 $3B $00 $3C $08 $3D
.db $10 $3E $18 $3F $20 $40

; 43rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54B9D to 54C12 (118 bytes)
_DATA_54B9D_:
.db $27 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $20 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30
.db $30 $30 $30 $38 $38 $38 $38 $38 $09 $09 $11 $0A $21 $0B $08 $0C
.db $18 $0D $20 $0E $28 $0F $01 $10 $09 $41 $11 $42 $19 $43 $28 $14
.db $02 $15 $0A $16 $18 $44 $28 $18 $30 $19 $03 $1A $0B $1B $13 $1C
.db $20 $1D $28 $1E $30 $1F $02 $20 $0A $21 $12 $22 $20 $23 $28 $45
.db $30 $25 $00 $26 $08 $27 $20 $28 $29 $46 $31 $47 $00 $48 $08 $2C
.db $10 $2D $18 $2E $20 $2F

; 44th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54C13 to 54C88 (118 bytes)
_DATA_54C13_:
.db $27 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $20 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $30 $30
.db $30 $30 $30 $38 $38 $38 $38 $38 $09 $09 $11 $0A $21 $0B $08 $0C
.db $18 $0D $20 $0E $28 $0F $01 $10 $09 $49 $11 $31 $19 $13 $28 $14
.db $02 $4A $0A $4B $18 $17 $28 $18 $30 $19 $03 $4C $0B $4D $13 $4E
.db $20 $1D $28 $1E $30 $1F $02 $4F $0A $50 $12 $51 $20 $52 $28 $53
.db $30 $54 $00 $37 $08 $38 $20 $55 $28 $56 $30 $57 $00 $3C $08 $3D
.db $10 $3E $18 $3F $20 $40

; 45th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54C89 to 54CD1 (73 bytes)
_DATA_54C89_:
.db $18 $00 $00 $00 $00 $08 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18
.db $18 $18 $18 $20 $20 $20 $20 $28 $28 $06 $00 $0E $01 $16 $02 $1E
.db $03 $02 $04 $0A $05 $12 $06 $1A $07 $22 $08 $02 $09 $0A $0A $12
.db $0B $1A $0C $22 $0D $04 $0E $0C $0F $14 $10 $1C $11 $05 $12 $0D
.db $13 $15 $14 $1D $15 $0C $16 $14 $17

; 46th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54CD2 to 54CEA (25 bytes)
_DATA_54CD2_:
.db $08 $00 $08 $10 $10 $18 $18 $20 $20 $11 $18 $13 $19 $0F $1A $17
.db $1B $0C $1C $14 $1D $0C $1E $15 $1F

; 47th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54CEB to 54D06 (28 bytes)
_DATA_54CEB_:
.db $09 $00 $08 $10 $10 $18 $18 $18 $20 $20 $11 $18 $13 $19 $0D $20
.db $15 $21 $09 $22 $11 $23 $19 $24 $0A $25 $1A $26

; 48th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54D07 to 54D1C (22 bytes)
_DATA_54D07_:
.db $07 $00 $08 $10 $18 $18 $20 $20 $11 $18 $13 $19 $11 $27 $0C $28
.db $14 $29 $0D $2A $15 $2B

; 49th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54D1D to 54D3B (31 bytes)
_DATA_54D1D_:
.db $0A $00 $08 $10 $18 $18 $20 $20 $20 $28 $28 $11 $18 $13 $19 $13
.db $19 $0D $20 $15 $21 $09 $22 $11 $23 $19 $24 $0A $25 $1A $26

; 50th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54D3C to 54D51 (22 bytes)
_DATA_54D3C_:
.db $07 $00 $08 $10 $10 $18 $18 $20 $11 $18 $13 $2C $0D $2D $15 $2E
.db $0C $2F $14 $30 $0C $31

; 51st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54D52 to 54D64 (19 bytes)
_DATA_54D52_:
.db $06 $00 $08 $08 $10 $10 $18 $11 $32 $11 $33 $19 $34 $10 $35 $18
.db $36 $18 $37

; 52nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54D65 to 54D9E (58 bytes)
_DATA_54D65_:
.db $13 $00 $08 $08 $10 $10 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28
.db $28 $30 $30 $30 $11 $18 $11 $38 $19 $39 $11 $3A $19 $3B $07 $3C
.db $0F $3D $17 $3E $01 $3F $09 $40 $11 $41 $19 $42 $02 $43 $0A $44
.db $12 $45 $1A $46 $09 $47 $11 $48 $19 $49

; 53rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54D9F to 54DCF (49 bytes)
_DATA_54D9F_:
.db $10 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $20 $28
.db $28 $05 $00 $0D $01 $15 $02 $05 $03 $0D $04 $15 $05 $1D $06 $02
.db $07 $0A $08 $12 $09 $1A $0A $22 $0B $20 $0C $20 $0D $18 $0E $20
.db $0F

; 54th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54DD0 to 54DF1 (34 bytes)
_DATA_54DD0_:
.db $0B $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $02 $10 $0A $11
.db $12 $12 $1A $13 $03 $14 $0B $15 $13 $16 $1B $17 $06 $18 $0E $19
.db $16 $1A

; 55th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54DF2 to 54E13 (34 bytes)
_DATA_54DF2_:
.db $0B $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $02 $1B $0A $1C
.db $12 $1D $1A $1E $02 $1F $0A $20 $12 $21 $1A $22 $06 $18 $0E $19
.db $16 $1A

; 56th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54E14 to 54E35 (34 bytes)
_DATA_54E14_:
.db $0B $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $02 $23 $0A $24
.db $12 $25 $1A $1E $00 $26 $08 $27 $10 $28 $18 $29 $04 $2A $0C $2B
.db $14 $2C

; 57th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54E36 to 54E57 (34 bytes)
_DATA_54E36_:
.db $0B $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $02 $23 $0A $2D
.db $12 $25 $1A $1E $00 $26 $08 $2E $10 $2F $18 $29 $04 $2A $0C $2B
.db $14 $2C

; 58th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54E58 to 54E79 (34 bytes)
_DATA_54E58_:
.db $0B $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $02 $23 $0A $24
.db $12 $25 $1A $1E $00 $30 $08 $31 $10 $28 $18 $29 $04 $32 $0C $33
.db $14 $2C

; 59th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54E7A to 54E9E (37 bytes)
_DATA_54E7A_:
.db $0C $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $02 $23 $0A
.db $24 $12 $25 $1A $1E $00 $30 $08 $34 $10 $28 $18 $29 $04 $35 $0C
.db $36 $14 $2C $08 $37

; 60th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54E9F to 54ECF (49 bytes)
_DATA_54E9F_:
.db $10 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $20 $28 $28 $30
.db $30 $02 $23 $0A $24 $12 $25 $1A $38 $00 $30 $08 $39 $10 $28 $18
.db $3A $04 $2A $0C $3B $14 $2C $08 $3C $06 $3D $0E $3E $06 $3F $0E
.db $40

; 61st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54ED0 to 54F71 (162 bytes)
_DATA_54ED0_:
.db $15 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $40 $40 $48 $48
.db $48 $50 $50 $50 $58 $58 $02 $23 $0A $24 $12 $25 $1A $1E $00 $30
.db $08 $39 $10 $28 $18 $29 $04 $2A $0C $3B $14 $2C $05 $41 $0D $42
.db $03 $43 $0B $44 $13 $45 $03 $46 $0B $47 $13 $48 $04 $49 $0C $4A
.db $10 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $20 $28
.db $28 $05 $00 $0D $01 $15 $02 $05 $03 $0D $04 $15 $05 $1D $06 $02
.db $07 $0A $08 $12 $09 $1A $0A $22 $0B $20 $0C $20 $0D $18 $0E $20
.db $0F $10 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $20
.db $28 $28 $05 $00 $0D $01 $15 $02 $05 $03 $0D $04 $15 $05 $1D $06
.db $02 $07 $0A $08 $12 $09 $1A $0A $22 $0B $20 $0C $20 $0D $18 $0E
.db $20 $0F

; 64th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54F72 to 54FC0 (79 bytes)
_DATA_54F72_:
.db $1A $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $28 $28 $28 $30 $30
.db $30 $38 $38 $38 $40 $40 $48 $48 $50 $50 $50 $08 $00 $10 $01 $06
.db $02 $0E $03 $08 $04 $10 $05 $08 $06 $10 $07 $08 $08 $10 $09 $05
.db $0A $0D $0B $15 $0C $04 $0D $0C $0E $14 $0F $05 $10 $0D $11 $15
.db $12 $05 $13 $0D $14 $06 $15 $0E $16 $00 $17 $08 $18 $10 $19

; 65th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54FC1 to 54FD0 (16 bytes)
_DATA_54FC1_:
.db $05 $08 $10 $18 $20 $28 $01 $1A $00 $1B $00 $1C $00 $1D $02 $1E

; 66th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54FD1 to 54FDD (13 bytes)
_DATA_54FD1_:
.db $04 $08 $10 $18 $20 $01 $1F $00 $20 $00 $21 $02 $22

; 67th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54FDE to 54FED (16 bytes)
_DATA_54FDE_:
.db $05 $08 $10 $18 $20 $28 $01 $23 $00 $24 $00 $25 $00 $26 $02 $1E

; 68th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54FEE to 54FFA (13 bytes)
_DATA_54FEE_:
.db $04 $10 $18 $20 $28 $02 $27 $01 $28 $00 $29 $02 $1E

; 69th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 54FFB to 5500D (19 bytes)
_DATA_54FFB_:
.db $06 $10 $10 $18 $18 $20 $28 $00 $2A $08 $2B $00 $2C $08 $2D $00
.db $29 $02 $1E

; 70th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5500E to 5501D (16 bytes)
_DATA_5500E_:
.db $05 $08 $10 $18 $20 $28 $02 $2E $02 $2F $01 $30 $00 $29 $02 $1E

; 72nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5501E to 55084 (103 bytes)
_DATA_5501E_:
.db $22 $08 $08 $10 $10 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28 $28
.db $30 $30 $30 $30 $38 $38 $38 $40 $40 $48 $48 $50 $50 $58 $58 $58
.db $58 $58 $58 $13 $00 $1B $01 $12 $02 $1A $03 $10 $04 $18 $05 $20
.db $06 $10 $07 $18 $08 $20 $09 $28 $0A $10 $0B $18 $0C $20 $0D $28
.db $0E $10 $0F $18 $10 $20 $11 $28 $12 $0D $13 $1C $14 $24 $15 $0C
.db $16 $1F $17 $0B $18 $20 $19 $08 $1A $22 $1B $01 $1C $09 $1D $11
.db $1E $19 $1F $21 $20 $29 $21

; 73rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55085 to 550EB (103 bytes)
_DATA_55085_:
.db $22 $08 $08 $10 $10 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28 $28
.db $30 $30 $30 $30 $38 $38 $38 $40 $40 $48 $48 $50 $50 $58 $58 $58
.db $58 $58 $58 $13 $00 $1B $01 $12 $02 $1A $03 $10 $04 $18 $05 $20
.db $06 $10 $07 $18 $22 $20 $23 $28 $0A $10 $0B $18 $24 $20 $25 $28
.db $0E $10 $0F $18 $26 $20 $27 $28 $12 $0D $13 $1C $14 $24 $15 $0C
.db $16 $1F $17 $0B $18 $20 $19 $08 $1A $22 $1B $01 $1C $09 $1D $11
.db $1E $19 $1F $21 $20 $29 $21

; 74th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 550EC to 55152 (103 bytes)
_DATA_550EC_:
.db $22 $08 $08 $10 $10 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28 $28
.db $30 $30 $30 $30 $38 $38 $38 $40 $40 $48 $48 $50 $50 $58 $58 $58
.db $58 $58 $58 $13 $00 $1B $01 $12 $02 $1A $03 $10 $04 $18 $05 $20
.db $06 $10 $07 $18 $28 $20 $29 $28 $0A $10 $0B $18 $2A $20 $2B $28
.db $0E $10 $0F $18 $2C $20 $2D $28 $12 $0D $13 $1C $14 $24 $15 $0C
.db $16 $1F $17 $0B $18 $20 $19 $08 $1A $22 $1B $01 $1C $09 $1D $11
.db $1E $19 $1F $21 $20 $29 $21

; 75th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55153 to 5516B (25 bytes)
_DATA_55153_:
.db $08 $18 $20 $28 $30 $38 $40 $48 $50 $0D $2E $0B $2F $0A $30 $08
.db $31 $06 $32 $06 $33 $04 $34 $01 $35

; 76th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5516C to 5518D (34 bytes)
_DATA_5516C_:
.db $0B $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $0E $36 $16 $37
.db $08 $38 $10 $39 $1E $0A $06 $3A $0E $3B $1E $3C $26 $0A $0B $3D
.db $23 $3E

; 77th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5518E to 551A6 (25 bytes)
_DATA_5518E_:
.db $08 $00 $08 $08 $10 $10 $10 $18 $18 $0E $3F $08 $40 $10 $41 $04
.db $42 $0C $3B $1D $43 $08 $44 $20 $45

; 78th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 551A7 to 551B3 (13 bytes)
_DATA_551A7_:
.db $04 $00 $08 $10 $18 $0B $46 $08 $47 $08 $48 $08 $49

; 79th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 551B4 to 551CF (28 bytes)
_DATA_551B4_:
.db $09 $18 $18 $20 $20 $28 $28 $30 $30 $38 $0D $4A $15 $0A $12 $4B
.db $1A $4C $19 $4D $21 $4E $1E $4F $26 $50 $29 $51

; 80th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 551D0 to 551EB (28 bytes)
_DATA_551D0_:
.db $09 $18 $20 $28 $28 $30 $30 $30 $38 $38 $0D $52 $0E $53 $0F $54
.db $17 $55 $17 $56 $1F $57 $27 $0A $22 $58 $2A $59

; 81st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 551EC to 5523A (79 bytes)
_DATA_551EC_:
.db $1A $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18
.db $18 $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $11 $00 $19 $01 $10
.db $02 $18 $03 $20 $04 $28 $05 $0F $06 $17 $07 $1F $08 $27 $09 $00
.db $0A $08 $0B $10 $0C $18 $0D $20 $0E $28 $0F $00 $10 $08 $11 $10
.db $12 $18 $13 $20 $14 $03 $15 $0B $16 $13 $17 $1B $18 $23 $19

; 82nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5523B to 55286 (76 bytes)
_DATA_5523B_:
.db $19 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18
.db $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $00 $1A $18 $1B $20 $1C
.db $28 $1D $01 $1E $09 $1F $16 $20 $1E $21 $26 $22 $00 $0A $08 $23
.db $10 $24 $18 $25 $20 $0E $28 $0F $00 $26 $08 $27 $10 $28 $18 $13
.db $20 $14 $03 $29 $0B $2A $13 $17 $1B $18 $23 $19

; 83rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55287 to 552CF (73 bytes)
_DATA_55287_:
.db $18 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $28 $28 $28 $18 $1B $20 $04 $28 $05 $00
.db $2B $08 $2C $19 $2D $21 $2E $29 $2F $00 $30 $08 $31 $10 $32 $18
.db $33 $20 $34 $28 $0F $00 $10 $08 $11 $10 $12 $18 $13 $20 $14 $03
.db $15 $0B $16 $13 $17 $1B $18 $23 $19

; 84th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 552D0 to 5533C (109 bytes)
_DATA_552D0_:
.db $24 $00 $00 $08 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18
.db $20 $20 $28 $28 $30 $30 $30 $38 $38 $40 $40 $40 $48 $48 $48 $48
.db $50 $50 $50 $50 $50 $32 $11 $3A $12 $03 $13 $0B $14 $22 $15 $2A
.db $16 $38 $17 $08 $18 $10 $19 $18 $1A $21 $1B $30 $1C $0A $1D $20
.db $1E $30 $1F $28 $20 $30 $21 $20 $22 $28 $23 $01 $24 $20 $25 $28
.db $26 $00 $27 $28 $28 $02 $29 $28 $2A $30 $2B $04 $2C $20 $2D $28
.db $2E $30 $2F $08 $30 $10 $31 $18 $32 $20 $33 $30 $34

; 85th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5533D to 5535B (31 bytes)
_DATA_5533D_:
.db $0A $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $09 $35 $11 $36 $08
.db $37 $10 $38 $08 $39 $10 $3A $08 $3B $10 $3C $08 $3D $10 $3E

; 86th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5535C to 5537A (31 bytes)
_DATA_5535C_:
.db $0A $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $09 $3F $11 $40 $08
.db $41 $10 $42 $08 $43 $10 $44 $08 $45 $10 $46 $08 $47 $10 $48

; 87th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5537B to 55399 (31 bytes)
_DATA_5537B_:
.db $0A $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $09 $49 $11 $4A $08
.db $4B $10 $4C $08 $4D $10 $4E $08 $4F $10 $50 $08 $51 $10 $52

; 88th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5539A to 553B8 (31 bytes)
_DATA_5539A_:
.db $0A $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $09 $49 $11 $4A $08
.db $4B $10 $4C $08 $53 $10 $54 $08 $55 $10 $56 $08 $51 $10 $52

; 89th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 553B9 to 553DD (37 bytes)
_DATA_553B9_:
.db $0C $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $28 $28 $09 $49 $11
.db $4A $08 $4B $10 $4C $08 $53 $10 $54 $08 $57 $10 $58 $08 $59 $10
.db $5A $08 $5B $10 $5C

; 90th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 553DE to 5541D (64 bytes)
_DATA_553DE_:
.db $15 $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $28 $30 $30 $38 $38
.db $38 $38 $40 $40 $40 $40 $09 $49 $11 $4A $08 $4B $10 $4C $08 $5D
.db $10 $5E $08 $5F $10 $60 $08 $61 $10 $62 $0D $63 $08 $64 $10 $65
.db $00 $66 $09 $67 $11 $68 $19 $69 $00 $6A $08 $6B $10 $6C $1B $6D

; 91st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5541E to 5545D (64 bytes)
_DATA_5541E_:
.db $15 $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $28 $30 $30 $38 $38
.db $38 $38 $40 $40 $40 $40 $09 $49 $11 $4A $08 $4B $10 $4C $08 $6E
.db $10 $5E $08 $6F $10 $70 $08 $71 $10 $72 $0D $73 $0B $74 $13 $75
.db $01 $76 $09 $77 $11 $78 $19 $79 $02 $7A $0A $7B $12 $7C $1A $7D

; 92nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5545E to 5549D (64 bytes)
_DATA_5545E_:
.db $15 $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $28 $30 $30 $38 $38
.db $38 $38 $40 $40 $40 $40 $09 $49 $11 $4A $08 $4B $10 $4C $08 $6E
.db $10 $5E $08 $7E $10 $7F $08 $80 $10 $81 $0D $82 $08 $83 $10 $84
.db $00 $85 $08 $86 $10 $87 $18 $88 $01 $89 $09 $8A $11 $8B $19 $8C

; 93rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5549E to 554CE (49 bytes)
_DATA_5549E_:
.db $10 $00 $00 $00 $00 $08 $08 $08 $08 $08 $08 $18 $18 $28 $28 $30
.db $30 $04 $17 $0C $18 $30 $19 $38 $1A $01 $1B $10 $1C $18 $1D $20
.db $1E $28 $1F $38 $20 $08 $21 $30 $22 $00 $23 $38 $24 $02 $25 $38
.db $26

; 94th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 554CF to 554F9 (43 bytes)
_DATA_554CF_:
.db $0E $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $18 $18 $18 $18 $0B
.db $27 $13 $28 $1B $29 $23 $2A $09 $2B $11 $2C $19 $2D $22 $2E $0A
.db $2F $23 $30 $00 $31 $08 $32 $20 $32 $28 $33

; 95th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 554FA to 55521 (40 bytes)
_DATA_554FA_:
.db $0D $00 $00 $00 $00 $08 $08 $08 $08 $10 $18 $18 $18 $18 $09 $34
.db $11 $35 $19 $36 $22 $37 $09 $38 $11 $2C $19 $39 $21 $3A $1E $3B
.db $00 $31 $08 $32 $20 $32 $28 $33

; 96th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55522 to 55549 (40 bytes)
_DATA_55522_:
.db $0D $00 $00 $00 $00 $08 $08 $08 $08 $10 $18 $18 $18 $18 $0D $3C
.db $15 $3D $1D $3E $25 $3F $0A $40 $12 $41 $1A $42 $22 $43 $0B $44
.db $00 $31 $08 $32 $20 $32 $28 $33

; 97th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5554A to 55574 (43 bytes)
_DATA_5554A_:
.db $0E $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $18 $18 $18 $18 $0B
.db $45 $13 $46 $1B $47 $23 $2A $09 $48 $11 $49 $19 $4A $22 $2E $0A
.db $2F $23 $30 $00 $31 $08 $32 $20 $32 $28 $33

; 98th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55575 to 5559F (43 bytes)
_DATA_55575_:
.db $0E $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $18 $18 $18 $18 $0B
.db $45 $13 $46 $1B $47 $23 $2A $09 $48 $11 $4B $19 $4C $22 $2E $0A
.db $2F $23 $30 $00 $31 $08 $32 $20 $32 $28 $33

; 99th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 555A0 to 555CD (46 bytes)
_DATA_555A0_:
.db $0F $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18
.db $0B $45 $13 $46 $1B $47 $23 $2A $09 $48 $11 $4D $19 $4A $22 $2E
.db $0A $2F $16 $4E $23 $30 $00 $31 $08 $32 $20 $32 $28 $33

; 100th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 555CE to 55604 (55 bytes)
_DATA_555CE_:
.db $12 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $18 $0B $45 $13 $46 $1B $47 $23 $2A $09 $48 $11 $4F $19
.db $50 $22 $2E $0A $2F $12 $51 $1A $52 $23 $30 $00 $31 $08 $32 $12
.db $53 $1D $54 $25 $55 $2D $56

; 101st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55605 to 5563E (58 bytes)
_DATA_55605_:
.db $13 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $18 $20 $0B $45 $13 $57 $1B $47 $23 $2A $09 $58 $11 $59
.db $19 $5A $21 $5B $0A $5C $12 $5D $1A $5E $22 $5F $00 $31 $08 $60
.db $10 $61 $18 $62 $20 $63 $28 $33 $15 $64

; 102nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5563F to 5569F (97 bytes)
_DATA_5563F_:
.db $20 $00 $00 $00 $00 $00 $08 $08 $08 $08 $08 $10 $10 $10 $10 $10
.db $10 $18 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20 $28 $28 $28 $28
.db $28 $07 $65 $0F $66 $17 $67 $1F $68 $28 $69 $06 $6A $0E $6B $16
.db $6C $1E $6D $26 $6E $01 $6F $09 $70 $11 $71 $19 $72 $21 $73 $29
.db $74 $00 $75 $08 $76 $10 $77 $18 $78 $20 $79 $28 $7A $06 $7B $0E
.db $7C $16 $7D $1E $7E $26 $7F $04 $80 $0D $81 $15 $82 $1D $83 $29
.db $84

; 103rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 556A0 to 556D9 (58 bytes)
_DATA_556A0_:
.db $13 $08 $08 $08 $08 $10 $10 $10 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $00 $00 $08 $01 $21 $02 $29 $03 $03 $04 $0B $05
.db $13 $06 $1B $07 $23 $08 $2B $09 $09 $0A $11 $0B $19 $0C $21 $0D
.db $0A $0E $12 $0F $1A $10 $22 $11 $14 $12

; 104th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 556DA to 55719 (64 bytes)
_DATA_556DA_:
.db $15 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $08 $13 $22 $14 $07 $15 $0F $16 $1E $17
.db $26 $18 $0A $19 $12 $1A $1A $1B $22 $1C $09 $1D $11 $1E $19 $1F
.db $21 $20 $0A $21 $12 $22 $1A $23 $22 $24 $0C $25 $14 $26 $1E $25

; 105th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5571A to 5574D (52 bytes)
_DATA_5571A_:
.db $11 $10 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $00 $27 $08 $28 $10 $29 $18 $2A $20 $2B $28 $2C $00 $2D
.db $08 $2E $10 $2F $18 $30 $20 $31 $28 $32 $0A $33 $12 $34 $1A $35
.db $22 $36 $14 $37

; 106th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5574E to 557C3 (118 bytes)
_DATA_5574E_:
.db $27 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $40 $40 $40
.db $48 $48 $48 $48 $50 $50 $50 $50 $0B $00 $13 $01 $02 $02 $0A $03
.db $12 $04 $02 $05 $0A $06 $12 $07 $1A $08 $01 $09 $09 $0A $11 $0B
.db $19 $0C $01 $0D $0A $0E $12 $0F $1A $10 $01 $11 $09 $12 $11 $13
.db $19 $14 $05 $15 $0D $16 $15 $17 $1D $18 $05 $19 $0D $1A $15 $1B
.db $06 $1C $0E $1D $16 $1E $04 $1F $0C $20 $14 $21 $1C $22 $02 $23
.db $0A $24 $12 $25 $1A $26

; 107th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 557C4 to 55839 (118 bytes)
_DATA_557C4_:
.db $27 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $40 $40 $40
.db $48 $48 $48 $48 $50 $50 $50 $50 $0C $27 $14 $01 $0B $28 $13 $29
.db $1B $2A $03 $2B $0B $2C $13 $2D $1B $2E $04 $2F $0C $30 $14 $31
.db $1C $32 $03 $33 $0B $34 $13 $35 $1B $36 $03 $37 $0B $38 $13 $39
.db $1B $3A $03 $3B $0B $3C $13 $3D $1B $3E $09 $3F $11 $40 $19 $41
.db $06 $1C $0E $1D $16 $1E $04 $1F $0C $20 $14 $21 $1C $22 $02 $23
.db $0A $24 $12 $25 $1A $26

; 108th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5583A to 558AF (118 bytes)
_DATA_5583A_:
.db $27 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $40 $40 $40
.db $48 $48 $48 $48 $50 $50 $50 $50 $0B $42 $13 $43 $02 $44 $0A $45
.db $12 $46 $02 $05 $0A $47 $12 $48 $1A $08 $01 $09 $09 $0A $11 $0B
.db $19 $0C $01 $0D $0A $0E $12 $0F $1A $10 $01 $11 $09 $12 $11 $13
.db $19 $14 $05 $15 $0D $16 $15 $17 $1D $18 $05 $19 $0D $1A $15 $1B
.db $06 $1C $0E $1D $16 $1E $04 $1F $0C $20 $14 $21 $1C $22 $02 $23
.db $0A $24 $12 $25 $1A $26

; 109th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 558B0 to 55925 (118 bytes)
_DATA_558B0_:
.db $27 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $40 $40 $40
.db $48 $48 $48 $48 $50 $50 $50 $50 $0B $49 $13 $4A $02 $02 $0A $4B
.db $12 $4C $02 $05 $0A $4D $12 $4E $1A $08 $01 $09 $09 $4F $11 $50
.db $19 $0C $01 $0D $0A $0E $12 $51 $1A $10 $01 $11 $09 $12 $11 $13
.db $19 $14 $05 $15 $0D $16 $15 $17 $1D $18 $05 $19 $0D $1A $15 $1B
.db $06 $1C $0E $1D $16 $1E $04 $1F $0C $20 $14 $21 $1C $22 $02 $23
.db $0A $24 $12 $25 $1A $26

; 110th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55926 to 5599B (118 bytes)
_DATA_55926_:
.db $27 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $40 $40 $40
.db $48 $48 $48 $48 $50 $50 $50 $50 $0B $52 $13 $53 $02 $02 $0A $54
.db $12 $55 $02 $05 $0A $56 $12 $57 $1A $08 $01 $09 $09 $58 $11 $59
.db $19 $0C $01 $0D $0A $5A $12 $5B $1A $10 $01 $11 $09 $12 $11 $13
.db $19 $14 $05 $15 $0D $16 $15 $17 $1D $18 $05 $19 $0D $1A $15 $1B
.db $06 $1C $0E $1D $16 $1E $04 $1F $0C $20 $14 $21 $1C $22 $02 $23
.db $0A $24 $12 $25 $1A $26

; 111th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5599C to 55A11 (118 bytes)
_DATA_5599C_:
.db $27 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $40 $40 $40
.db $48 $48 $48 $48 $50 $50 $50 $50 $0C $5C $14 $5D $02 $02 $0A $5E
.db $12 $5F $02 $05 $0A $60 $12 $61 $1A $08 $01 $09 $09 $62 $11 $63
.db $19 $0C $01 $0D $0A $64 $12 $65 $1A $10 $01 $11 $09 $66 $11 $67
.db $19 $14 $05 $15 $0D $68 $15 $17 $1D $18 $05 $19 $0D $69 $15 $1B
.db $06 $1C $0E $6A $16 $1E $04 $1F $0C $20 $14 $21 $1C $22 $02 $23
.db $0A $24 $12 $25 $1A $26

; 112th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55A12 to 55A87 (118 bytes)
_DATA_55A12_:
.db $27 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $40 $40 $40
.db $48 $48 $48 $48 $50 $50 $50 $50 $0C $5C $14 $5D $02 $02 $0A $5E
.db $12 $5F $02 $05 $0A $60 $12 $61 $1A $08 $01 $09 $09 $62 $11 $6B
.db $19 $0C $01 $0D $0A $6C $12 $6D $1A $10 $01 $11 $09 $66 $11 $6E
.db $19 $14 $05 $15 $0D $6F $15 $17 $1D $18 $05 $19 $0D $70 $15 $1B
.db $06 $1C $0E $71 $16 $1E $04 $1F $0C $72 $14 $21 $1C $22 $02 $23
.db $0A $73 $12 $25 $1A $26

; 113th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55A88 to 55B0F (136 bytes)
_DATA_55A88_:
.db $2D $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $28 $30 $30 $30 $38 $38 $38 $38 $40 $40
.db $40 $40 $40 $40 $48 $48 $48 $48 $48 $50 $50 $50 $50 $50 $01 $0B
.db $26 $0C $2E $0D $05 $0E $0D $0F $1F $10 $27 $11 $0A $12 $1B $13
.db $23 $14 $0A $15 $12 $16 $1A $17 $22 $18 $03 $19 $0B $1A $13 $1B
.db $1B $1C $23 $1D $00 $1E $20 $1F $28 $20 $00 $21 $08 $22 $28 $23
.db $01 $24 $09 $25 $28 $26 $31 $27 $04 $28 $0C $29 $14 $2A $20 $2B
.db $28 $2C $30 $2D $09 $2E $11 $2F $19 $30 $21 $31 $29 $32 $06 $33
.db $0E $34 $16 $35 $1E $36 $26 $37

; 114th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55B10 to 55B97 (136 bytes)
_DATA_55B10_:
.db $2D $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $28 $30 $30 $30 $38 $38 $38 $38 $40 $40
.db $40 $40 $40 $40 $48 $48 $48 $48 $48 $50 $50 $50 $50 $50 $01 $0B
.db $26 $0C $2E $0D $05 $0E $0D $0F $1F $10 $27 $11 $0A $12 $1B $13
.db $23 $14 $0A $15 $12 $16 $1A $17 $22 $18 $03 $19 $0B $1A $13 $1B
.db $1B $1C $23 $1D $00 $1E $20 $38 $28 $39 $00 $3A $08 $3B $28 $3C
.db $01 $3D $09 $3E $28 $3F $30 $40 $04 $28 $0C $29 $14 $2A $20 $2B
.db $28 $41 $30 $42 $09 $2E $11 $2F $19 $30 $21 $31 $29 $32 $06 $33
.db $0E $34 $16 $35 $1E $36 $26 $37

; 115th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55B98 to 55C1C (133 bytes)
_DATA_55B98_:
.db $2C $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $20 $28 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40
.db $40 $40 $40 $48 $48 $48 $48 $48 $50 $50 $50 $50 $50 $01 $0B $26
.db $0C $2E $0D $05 $0E $0D $0F $1F $10 $27 $11 $0A $12 $1B $13 $23
.db $14 $0A $15 $12 $16 $1A $17 $22 $18 $03 $19 $0B $1A $13 $1B $1B
.db $1C $23 $43 $2B $44 $00 $1E $20 $45 $28 $46 $00 $47 $08 $48 $28
.db $49 $01 $4A $09 $4B $28 $4C $04 $28 $0C $29 $14 $2A $20 $2B $28
.db $4D $09 $2E $11 $2F $19 $30 $21 $31 $29 $32 $06 $33 $0E $34 $16
.db $35 $1E $36 $26 $37

; 116th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55C1D to 55CA1 (133 bytes)
_DATA_55C1D_:
.db $2C $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $18
.db $20 $20 $20 $20 $20 $28 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40
.db $40 $40 $40 $48 $48 $48 $48 $48 $50 $50 $50 $50 $50 $01 $0B $26
.db $0C $2E $0D $05 $0E $0D $0F $1F $10 $27 $11 $0A $12 $1B $13 $23
.db $14 $0A $15 $12 $16 $1A $17 $22 $4E $2A $4F $03 $19 $0B $1A $13
.db $1B $1B $1C $23 $50 $00 $1E $20 $51 $28 $52 $00 $53 $08 $54 $28
.db $55 $01 $56 $09 $57 $28 $4C $04 $28 $0C $29 $14 $2A $20 $2B $28
.db $4D $09 $2E $11 $2F $19 $30 $21 $31 $29 $32 $06 $33 $0E $34 $16
.db $35 $1E $36 $26 $37

; 117th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55CA2 to 55D29 (136 bytes)
_DATA_55CA2_:
.db $2D $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40
.db $40 $40 $40 $40 $48 $48 $48 $48 $48 $50 $50 $50 $50 $50 $01 $0B
.db $26 $0C $2E $0D $05 $0E $0D $0F $1F $10 $27 $11 $0A $12 $1B $13
.db $23 $14 $0A $15 $12 $16 $1A $17 $22 $18 $03 $19 $0B $1A $13 $1B
.db $1B $58 $23 $59 $00 $1E $1C $5A $24 $5B $00 $5C $08 $5D $1B $5E
.db $28 $49 $01 $5F $09 $60 $1C $61 $28 $4C $04 $62 $0C $29 $14 $2A
.db $20 $2B $28 $4D $09 $2E $11 $2F $19 $30 $21 $31 $29 $32 $06 $33
.db $0E $34 $16 $35 $1E $36 $26 $37

; 118th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55D2A to 55DB4 (139 bytes)
_DATA_55D2A_:
.db $2E $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $38
.db $40 $40 $40 $40 $40 $48 $48 $48 $48 $48 $50 $50 $50 $50 $50 $01
.db $0B $26 $0C $2E $0D $05 $0E $0D $0F $1F $10 $27 $11 $0A $12 $1B
.db $13 $23 $14 $0A $15 $12 $16 $1A $17 $22 $18 $03 $19 $0B $1A $13
.db $1B $1B $63 $23 $64 $00 $1E $1C $65 $24 $66 $00 $5C $08 $5D $1A
.db $67 $28 $68 $01 $5F $09 $60 $19 $69 $21 $6A $29 $6B $04 $62 $0C
.db $29 $14 $6C $1C $6D $24 $6E $09 $2E $11 $2F $19 $30 $21 $31 $29
.db $32 $06 $33 $0E $34 $16 $35 $1E $36 $26 $37

; 121st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55DB5 to 55E27 (115 bytes)
_DATA_55DB5_:
.db $26 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40
.db $40 $40 $48 $48 $48 $48 $48 $0D $00 $15 $01 $04 $02 $0C $03 $14
.db $04 $1C $05 $03 $06 $0B $07 $13 $08 $1B $09 $03 $0A $0B $0B $13
.db $0C $1B $0D $03 $0E $0B $0F $13 $10 $1B $11 $03 $12 $0B $13 $13
.db $14 $1B $15 $03 $16 $0B $17 $15 $18 $1D $19 $04 $1A $0C $1B $15
.db $1C $1D $1D $08 $1E $10 $1F $18 $20 $02 $21 $0A $22 $12 $23 $1A
.db $24 $22 $25

; 122nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55E28 to 55E49 (34 bytes)
_DATA_55E28_:
.db $0B $00 $08 $08 $10 $10 $18 $18 $20 $28 $30 $38 $08 $26 $03 $27
.db $0B $28 $04 $29 $0C $2A $04 $2B $0C $2C $06 $2D $06 $2E $06 $2F
.db $07 $30

; 123rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55E4A to 55E65 (28 bytes)
_DATA_55E4A_:
.db $09 $08 $08 $10 $10 $18 $18 $20 $20 $28 $03 $31 $0B $32 $04 $33
.db $0C $34 $04 $35 $0C $36 $06 $37 $0E $38 $06 $39

; 124th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55E66 to 55E7E (25 bytes)
_DATA_55E66_:
.db $08 $08 $08 $10 $10 $18 $18 $20 $20 $03 $3A $0B $3B $04 $3C $0C
.db $3D $04 $3E $0C $3F $05 $40 $0D $41

; 125th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55E7F to 55E97 (25 bytes)
_DATA_55E7F_:
.db $08 $08 $08 $10 $10 $18 $18 $20 $20 $03 $3A $0B $3B $04 $3C $0C
.db $3D $04 $42 $0C $3F $05 $40 $0D $41

; 126th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55E98 to 55EB0 (25 bytes)
_DATA_55E98_:
.db $08 $08 $08 $10 $10 $18 $18 $20 $20 $03 $3A $0B $3B $04 $3C $0C
.db $3D $04 $43 $0C $44 $05 $45 $0D $41

; 127th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55EB1 to 55ECF (31 bytes)
_DATA_55EB1_:
.db $0A $08 $08 $10 $10 $10 $18 $18 $20 $20 $20 $03 $3A $0B $3B $01
.db $46 $09 $47 $11 $48 $02 $49 $0A $4A $01 $4B $09 $4C $11 $4D

; 128th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55ED0 to 55EF1 (34 bytes)
_DATA_55ED0_:
.db $0B $08 $08 $10 $10 $10 $18 $18 $18 $20 $20 $20 $03 $3A $0B $3B
.db $01 $4E $09 $4F $11 $48 $00 $50 $08 $51 $10 $52 $00 $53 $08 $54
.db $10 $55

; 129th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55EF2 to 55F10 (31 bytes)
_DATA_55EF2_:
.db $0A $08 $08 $10 $10 $18 $18 $18 $20 $20 $20 $03 $3A $0B $3B $03
.db $56 $0B $57 $00 $58 $08 $59 $10 $5A $00 $5B $08 $5C $10 $5D

; 130th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55F11 to 55F4D (61 bytes)
_DATA_55F11_:
.db $14 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $20 $20 $28 $28 $01 $00 $09 $01 $21 $02 $29 $03 $0A $04 $12
.db $05 $1A $06 $22 $07 $00 $08 $08 $09 $20 $0A $28 $0B $01 $0C $09
.db $0D $20 $0E $28 $0F $0C $10 $20 $11 $09 $12 $20 $13

; 131st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55F4E to 55F66 (25 bytes)
_DATA_55F4E_:
.db $08 $00 $00 $08 $08 $10 $10 $18 $18 $00 $14 $08 $15 $00 $16 $08
.db $17 $00 $18 $08 $19 $00 $1A $08 $1B

; 132nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55F67 to 55F7F (25 bytes)
_DATA_55F67_:
.db $08 $00 $00 $08 $08 $10 $10 $18 $18 $00 $1C $08 $1D $00 $1E $08
.db $1F $00 $18 $08 $19 $00 $1A $08 $1B

; 133rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55F80 to 55F98 (25 bytes)
_DATA_55F80_:
.db $08 $00 $00 $08 $08 $10 $10 $18 $18 $00 $20 $08 $21 $00 $22 $08
.db $23 $00 $18 $08 $19 $00 $1A $08 $1B

; 134th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55F99 to 55FB1 (25 bytes)
_DATA_55F99_:
.db $08 $00 $00 $08 $08 $10 $10 $18 $18 $00 $20 $08 $21 $00 $24 $08
.db $25 $00 $26 $08 $27 $00 $1A $08 $1B

; 135th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55FB2 to 55FCA (25 bytes)
_DATA_55FB2_:
.db $08 $00 $00 $08 $08 $10 $10 $18 $18 $00 $20 $08 $21 $00 $28 $08
.db $29 $00 $2A $08 $2B $00 $2C $08 $2D

; 136th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55FCB to 55FE3 (25 bytes)
_DATA_55FCB_:
.db $08 $00 $00 $08 $08 $10 $10 $18 $18 $00 $20 $08 $21 $00 $2E $08
.db $2F $00 $30 $08 $31 $00 $32 $08 $33

; 142nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 55FE4 to 56038 (85 bytes)
_DATA_55FE4_:
.db $1C $00 $00 $08 $08 $10 $10 $18 $18 $20 $20 $20 $20 $28 $28 $28
.db $28 $30 $30 $30 $30 $38 $38 $40 $40 $40 $40 $48 $48 $11 $0E $19
.db $0F $08 $10 $20 $11 $07 $12 $28 $12 $07 $13 $28 $13 $07 $14 $0F
.db $15 $20 $16 $28 $17 $05 $18 $0D $19 $20 $1A $28 $1B $05 $1C $0D
.db $1D $20 $1E $28 $1F $0B $20 $20 $21 $0B $22 $13 $23 $1B $24 $23
.db $25 $08 $26 $20 $27

; 144th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56039 to 56045 (13 bytes)
_DATA_56039_:
.db $04 $08 $08 $10 $10 $10 $28 $18 $29 $10 $2A $18 $2B

; 145th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56046 to 56052 (13 bytes)
_DATA_56046_:
.db $04 $08 $08 $10 $10 $10 $2C $18 $2D $10 $2E $18 $2F

; 146th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56053 to 5605F (13 bytes)
_DATA_56053_:
.db $04 $08 $08 $10 $10 $10 $30 $18 $31 $10 $32 $18 $33

; 147th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56060 to 5606F (16 bytes)
_DATA_56060_:
.db $05 $08 $08 $10 $10 $18 $10 $34 $18 $35 $10 $36 $18 $37 $17 $38

; 148th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56070 to 56082 (19 bytes)
_DATA_56070_:
.db $06 $08 $08 $10 $10 $18 $18 $10 $39 $18 $3A $10 $3B $18 $3C $12
.db $3D $1A $3E

; 149th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56083 to 560A4 (34 bytes)
_DATA_56083_:
.db $0B $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18 $0E $3F $16 $40
.db $1E $41 $06 $42 $0E $43 $16 $44 $1E $45 $26 $46 $0E $47 $16 $48
.db $1E $49

; 150th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 560A5 to 560E7 (67 bytes)
_DATA_560A5_:
.db $16 $00 $00 $00 $00 $08 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18
.db $18 $18 $18 $20 $20 $20 $20 $0F $4A $17 $4B $1F $4C $2C $4D $09
.db $4E $11 $4F $19 $50 $21 $51 $29 $52 $08 $53 $10 $54 $18 $55 $20
.db $56 $00 $57 $08 $58 $10 $59 $18 $5A $20 $5B $00 $5C $0F $5D $17
.db $5E $1F $5F

; 151st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 560E8 to 56142 (91 bytes)
_DATA_560E8_:
.db $1E $00 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $38 $38 $38 $0E
.db $00 $16 $01 $1E $02 $0D $03 $15 $04 $1D $05 $0A $06 $12 $07 $1A
.db $08 $22 $09 $0C $0A $14 $0B $1C $0C $24 $0D $0D $0E $15 $0F $1D
.db $10 $25 $11 $0B $12 $13 $13 $1B $14 $23 $15 $0D $16 $15 $17 $1D
.db $18 $07 $19 $0F $1A $17 $1B $1F $1C $27 $1D

; 152nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56143 to 5619A (88 bytes)
_DATA_56143_:
.db $1D $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $20 $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $38 $38 $38 $0E $1E
.db $1A $1F $0D $20 $15 $21 $1D $22 $0A $23 $12 $24 $1A $25 $22 $26
.db $0C $0A $14 $0B $1C $0C $24 $0D $0D $0E $15 $0F $1D $10 $25 $11
.db $0B $12 $13 $13 $1B $14 $23 $15 $0D $16 $15 $17 $1D $18 $07 $19
.db $0F $1A $17 $1B $1F $1C $27 $1D

; 153rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5619B to 561F5 (91 bytes)
_DATA_5619B_:
.db $1E $00 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $38 $38 $38 $38 $38 $0E
.db $00 $16 $01 $1E $02 $0D $03 $15 $27 $1D $05 $0A $06 $12 $28 $1A
.db $29 $22 $2A $0C $0A $14 $0B $1C $0C $24 $0D $0D $0E $15 $0F $1D
.db $10 $25 $11 $0B $12 $13 $13 $1B $14 $23 $15 $0D $16 $15 $17 $1D
.db $18 $07 $19 $0F $1A $17 $1B $1F $1C $27 $1D

; 154th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 561F6 to 56202 (13 bytes)
_DATA_561F6_:
.db $04 $18 $20 $28 $30 $09 $2B $08 $2C $07 $2D $06 $2E

; 155th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56203 to 5620F (13 bytes)
_DATA_56203_:
.db $04 $18 $20 $20 $28 $08 $2F $02 $30 $0A $31 $06 $32

; 156th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56210 to 56225 (22 bytes)
_DATA_56210_:
.db $07 $00 $08 $08 $10 $10 $18 $18 $07 $33 $03 $34 $0B $35 $02 $36
.db $0A $37 $04 $38 $0C $39

; 157th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56226 to 56232 (13 bytes)
_DATA_56226_:
.db $04 $10 $18 $20 $28 $06 $3A $02 $3B $02 $3C $07 $3D

; 158th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56233 to 5623F (13 bytes)
_DATA_56233_:
.db $04 $18 $20 $28 $30 $09 $3E $08 $3F $07 $40 $07 $41

; 159th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56240 to 5624C (13 bytes)
_DATA_56240_:
.db $04 $18 $20 $20 $28 $08 $42 $07 $43 $0F $44 $06 $45

; 160th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5624D to 56259 (13 bytes)
_DATA_5624D_:
.db $04 $18 $20 $20 $28 $08 $46 $06 $47 $0E $48 $06 $49

; 161st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5625A to 56269 (16 bytes)
_DATA_5625A_:
.db $05 $18 $18 $20 $20 $28 $06 $4A $0E $4B $04 $4C $0C $4D $06 $4E

; 162nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5626A to 5627F (22 bytes)
_DATA_5626A_:
.db $07 $18 $18 $20 $20 $20 $28 $28 $02 $4F $0A $50 $01 $51 $09 $52
.db $11 $53 $02 $54 $0A $55

; 163rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56280 to 56298 (25 bytes)
_DATA_56280_:
.db $08 $18 $18 $18 $20 $20 $28 $28 $28 $00 $56 $08 $46 $10 $57 $06
.db $47 $0E $48 $00 $58 $08 $59 $10 $5A

; 164th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56299 to 562D8 (64 bytes)
_DATA_56299_:
.db $15 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $28 $28 $28 $28 $30 $30 $18 $0D $20 $0E $15 $0F $1D $10 $25 $11
.db $0C $12 $14 $13 $28 $14 $30 $15 $0D $16 $15 $17 $28 $18 $30 $19
.db $11 $1A $28 $1B $10 $1C $18 $1D $20 $1E $28 $1F $15 $20 $28 $21

; 165th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 562D9 to 56327 (79 bytes)
_DATA_562D9_:
.db $1A $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $28 $28 $28 $30 $30 $18 $0D $20 $0E $15
.db $0F $1D $10 $25 $11 $0C $12 $14 $13 $28 $14 $30 $15 $0D $22 $15
.db $23 $1D $24 $25 $25 $2D $26 $0B $27 $13 $28 $1B $29 $23 $2A $2B
.db $2B $0D $2C $15 $2D $1D $2E $25 $2F $2D $30 $15 $20 $28 $21

; 166th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56328 to 56388 (97 bytes)
_DATA_56328_:
.db $20 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $28 $28 $30 $30 $30
.db $30 $18 $0D $20 $0E $15 $0F $1D $10 $25 $11 $0C $12 $14 $13 $28
.db $14 $30 $15 $0D $31 $15 $32 $1D $24 $25 $33 $2D $34 $09 $35 $11
.db $36 $19 $37 $21 $38 $29 $39 $31 $3A $02 $3B $0A $3C $12 $3D $1A
.db $3E $22 $3F $2C $40 $34 $41 $3C $42 $00 $43 $15 $20 $28 $21 $37
.db $44

; 167th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56389 to 563CE (70 bytes)
_DATA_56389_:
.db $17 $00 $00 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18 $18 $18
.db $20 $20 $28 $28 $28 $28 $30 $30 $18 $0D $20 $0E $15 $0F $1D $10
.db $25 $11 $0C $12 $14 $13 $1F $45 $28 $14 $30 $15 $0D $16 $15 $46
.db $1D $47 $25 $48 $2D $49 $11 $1A $28 $1B $10 $1C $18 $1D $20 $1E
.db $28 $1F $15 $20 $28 $21

; 168th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 563CF to 56417 (73 bytes)
_DATA_563CF_:
.db $18 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $28 $30 $30 $18 $0D $20 $0E $15 $0F $1D
.db $10 $25 $11 $0C $12 $14 $13 $28 $14 $30 $15 $0D $16 $15 $4A $1D
.db $4B $28 $18 $30 $19 $11 $1A $19 $4C $21 $4D $29 $4E $10 $1C $18
.db $1D $20 $1E $28 $1F $15 $20 $28 $21

; 169th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56418 to 56460 (73 bytes)
_DATA_56418_:
.db $18 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $28 $30 $30 $18 $0D $20 $0E $15 $0F $1D
.db $10 $25 $11 $0C $12 $14 $13 $28 $14 $30 $15 $0D $16 $15 $4F $1E
.db $50 $28 $18 $30 $19 $11 $1A $1A $51 $22 $52 $2A $53 $10 $54 $18
.db $55 $20 $56 $28 $57 $15 $20 $28 $21

; 170th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56461 to 564AC (76 bytes)
_DATA_56461_:
.db $19 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $18 $0D $20 $0E $15 $0F
.db $1D $10 $25 $11 $0C $12 $14 $13 $28 $14 $30 $15 $0D $16 $15 $17
.db $1D $58 $28 $18 $30 $19 $11 $1A $1B $59 $23 $5A $2B $5B $10 $5C
.db $18 $5D $20 $5E $28 $5F $14 $60 $1C $61 $24 $62

; 171st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 564AD to 564EF (67 bytes)
_DATA_564AD_:
.db $16 $00 $00 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20
.db $28 $28 $28 $28 $30 $30 $30 $18 $0D $20 $0E $15 $0F $1D $10 $25
.db $11 $0C $12 $14 $13 $28 $14 $30 $15 $0D $16 $15 $17 $28 $18 $30
.db $19 $11 $1A $28 $1B $10 $63 $18 $64 $20 $65 $28 $66 $14 $67 $1C
.db $68 $24 $69

; 172nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 564F0 to 56535 (70 bytes)
_DATA_564F0_:
.db $17 $00 $00 $08 $08 $08 $08 $10 $10 $10 $18 $18 $18 $20 $20 $20
.db $28 $28 $28 $28 $30 $30 $30 $30 $11 $6A $28 $6B $12 $6C $1A $6D
.db $22 $6E $2A $6F $15 $70 $1D $71 $25 $72 $15 $73 $1D $74 $25 $75
.db $14 $76 $1C $77 $24 $78 $12 $79 $1A $7A $22 $7B $2A $7C $0D $7D
.db $15 $7E $28 $7F $30 $80

; 173rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56536 to 565AE (121 bytes)
_DATA_56536_:
.db $28 $00 $00 $08 $08 $10 $10 $10 $18 $18 $20 $20 $28 $28 $28 $30
.db $30 $38 $38 $40 $40 $40 $40 $48 $48 $48 $48 $50 $50 $50 $50 $58
.db $58 $58 $58 $58 $60 $60 $60 $60 $60 $17 $0E $22 $0F $17 $10 $1F
.db $11 $15 $12 $20 $13 $28 $14 $15 $15 $28 $16 $14 $17 $20 $18 $16
.db $19 $20 $1A $28 $1B $13 $1C $30 $1D $12 $1E $30 $1F $11 $20 $19
.db $21 $28 $22 $30 $23 $11 $24 $20 $25 $28 $26 $30 $27 $10 $28 $1E
.db $29 $26 $2A $30 $2B $0C $2C $16 $2D $1E $2E $28 $2F $30 $30 $0A
.db $31 $12 $32 $1A $33 $22 $34 $2A $35

; 174th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 565AF to 565DF (49 bytes)
_DATA_565AF_:
.db $10 $10 $18 $18 $18 $20 $20 $28 $28 $30 $30 $38 $38 $40 $48 $50
.db $58 $0F $36 $0D $37 $15 $38 $28 $39 $0E $3A $27 $3B $0C $3C $29
.db $3D $0B $3E $2A $3F $0C $40 $2A $41 $0A $42 $09 $43 $07 $44 $07
.db $45

; 175th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 565E0 to 56616 (55 bytes)
_DATA_565E0_:
.db $12 $10 $18 $18 $18 $20 $20 $20 $28 $28 $28 $30 $30 $30 $38 $40
.db $48 $50 $58 $0F $36 $0D $37 $15 $38 $28 $46 $0E $3A $26 $47 $2E
.db $48 $0C $3C $26 $49 $2E $4A $0B $3E $26 $4B $2E $4C $0C $40 $0A
.db $42 $09 $43 $07 $44 $07 $45

; 176th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56617 to 56647 (49 bytes)
_DATA_56617_:
.db $10 $10 $18 $18 $18 $20 $20 $20 $28 $28 $28 $30 $38 $40 $48 $50
.db $58 $0F $36 $0D $37 $15 $38 $28 $4D $0E $3A $25 $4E $2D $4F $0C
.db $3C $25 $50 $2D $51 $0B $3E $0C $40 $0A $42 $09 $43 $07 $44 $07
.db $45

; 177th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56648 to 5667B (52 bytes)
_DATA_56648_:
.db $11 $10 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28 $28 $28 $30 $30
.db $30 $38 $0F $36 $0D $52 $15 $53 $28 $39 $10 $54 $18 $55 $26 $56
.db $2E $57 $14 $58 $1C $59 $24 $5A $2C $5B $34 $5C $1C $5D $24 $5E
.db $2C $5F $2A $41

; 178th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5667C to 566B2 (55 bytes)
_DATA_5667C_:
.db $12 $00 $08 $10 $10 $10 $18 $18 $18 $18 $18 $20 $20 $20 $20 $28
.db $28 $30 $38 $2A $60 $28 $61 $0F $36 $23 $62 $2B $63 $0D $64 $15
.db $65 $1D $66 $25 $67 $2D $68 $10 $69 $18 $6A $20 $6B $28 $6C $1A
.db $6D $29 $3D $2A $3F $2A $41

; 179th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 566B3 to 566DA (40 bytes)
_DATA_566B3_:
.db $0D $10 $10 $18 $18 $18 $18 $20 $20 $28 $28 $30 $30 $38 $0E $6E
.db $25 $6F $0E $70 $16 $71 $22 $72 $2A $73 $20 $74 $28 $6C $1E $75
.db $29 $3D $1A $76 $2A $3F $2A $41

; 181st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 566DB to 56720 (70 bytes)
_DATA_566DB_:
.db $17 $28 $28 $30 $30 $30 $38 $38 $40 $40 $48 $48 $48 $50 $50 $58
.db $58 $58 $58 $58 $60 $60 $60 $60 $14 $1C $30 $1D $0D $1E $15 $1F
.db $30 $20 $08 $21 $30 $22 $00 $23 $30 $24 $08 $25 $10 $26 $30 $27
.db $15 $28 $30 $29 $13 $2A $1B $2B $23 $2C $2B $2D $33 $2E $0D $2F
.db $15 $30 $30 $31 $38 $32

; 182nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56721 to 5677B (91 bytes)
_DATA_56721_:
.db $1E $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18 $18 $20 $20
.db $20 $20 $20 $28 $28 $28 $28 $28 $30 $30 $30 $30 $30 $38 $38 $1C
.db $33 $24 $34 $2C $35 $00 $36 $08 $37 $19 $38 $28 $39 $01 $3A $09
.db $3B $12 $3C $1A $3D $28 $3E $30 $3F $02 $40 $0A $41 $12 $42 $1A
.db $43 $30 $44 $10 $45 $18 $46 $20 $47 $28 $48 $30 $49 $11 $4A $19
.db $4B $21 $4C $29 $4D $31 $4E $2A $4F $32 $50

; 183rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5677C to 567D3 (88 bytes)
_DATA_5677C_:
.db $1D $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20 $28 $00
.db $08 $10 $18 $18 $20 $20 $20 $20 $28 $28 $28 $30 $30 $38 $1B $51
.db $23 $52 $19 $53 $21 $54 $29 $55 $17 $56 $1F $57 $27 $58 $2F $59
.db $16 $5A $1E $5B $26 $5C $2E $5D $20 $5E $15 $5F $13 $60 $15 $61
.db $10 $62 $18 $63 $11 $64 $19 $65 $21 $66 $29 $67 $14 $68 $1C $69
.db $24 $6A $15 $6B $1F $6C $15 $6D

; 184th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 567D4 to 56822 (79 bytes)
_DATA_567D4_:
.db $1A $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20 $28 $08
.db $10 $18 $20 $20 $28 $28 $28 $28 $30 $30 $30 $1B $51 $23 $52 $19
.db $53 $21 $54 $29 $55 $17 $56 $1F $57 $27 $58 $2F $59 $16 $5A $1E
.db $5B $26 $5C $2E $5D $20 $5E $0C $6E $08 $6F $06 $70 $06 $71 $10
.db $72 $07 $73 $11 $74 $19 $75 $21 $76 $08 $77 $14 $78 $1C $79

; 185th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56823 to 5685F (61 bytes)
_DATA_56823_:
.db $14 $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20 $28 $28
.db $28 $30 $38 $40 $40 $1E $7A $26 $7B $19 $7C $21 $7D $29 $7E $16
.db $7F $1E $80 $26 $81 $2E $82 $16 $83 $1E $84 $26 $85 $2E $86 $20
.db $87 $18 $88 $25 $89 $16 $8A $0B $8B $12 $8C $1A $8D

; 186th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56860 to 568AE (79 bytes)
_DATA_56860_:
.db $1A $08 $08 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20 $28 $20
.db $20 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $1E $7A $26 $7B $19
.db $7C $21 $7D $29 $7E $16 $7F $1E $80 $26 $81 $2E $82 $16 $83 $1E
.db $84 $26 $85 $2E $86 $20 $87 $19 $8E $21 $8F $1C $90 $24 $91 $2C
.db $92 $25 $93 $2D $94 $35 $95 $3D $35 $2B $96 $33 $97 $3B $98

; 187th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 568AF to 5692A (124 bytes)
_DATA_568AF_:
.db $29 $00 $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $20 $20 $28 $30
.db $38 $38 $40 $40 $48 $48 $48 $50 $50 $50 $50 $50 $58 $58 $58 $58
.db $58 $60 $60 $60 $60 $68 $68 $68 $68 $68 $16 $31 $1E $32 $26 $33
.db $10 $34 $28 $35 $06 $36 $0E $37 $30 $38 $38 $39 $04 $3A $38 $3B
.db $04 $3C $38 $3D $05 $3E $05 $3F $04 $40 $30 $41 $04 $42 $30 $43
.db $07 $44 $0F $45 $38 $46 $08 $47 $18 $48 $22 $49 $2A $4A $38 $4B
.db $07 $4C $18 $4D $28 $4E $30 $4F $38 $50 $06 $51 $0E $52 $18 $53
.db $30 $54 $05 $55 $18 $56 $20 $57 $28 $58 $30 $59

; 188th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5692B to 56943 (25 bytes)
_DATA_5692B_:
.db $08 $28 $28 $30 $30 $30 $38 $38 $38 $30 $5A $38 $5B $2E $5C $36
.db $5D $3E $5E $2E $5F $36 $60 $3E $61

; 189th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56944 to 56953 (16 bytes)
_DATA_56944_:
.db $05 $28 $28 $30 $30 $38 $30 $62 $38 $63 $2E $64 $36 $65 $37 $66

; 190th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56954 to 56963 (16 bytes)
_DATA_56954_:
.db $05 $20 $28 $28 $30 $30 $33 $67 $30 $68 $38 $69 $30 $6A $38 $6B

; 191st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56964 to 5699D (58 bytes)
_DATA_56964_:
.db $13 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40 $40 $40 $40
.db $48 $48 $48 $48 $2D $6C $35 $6D $3D $6E $26 $6F $2E $70 $36 $71
.db $3E $72 $22 $73 $2A $74 $32 $75 $3A $76 $21 $77 $29 $78 $31 $79
.db $39 $7A $22 $7B $2A $7C $32 $7D $3A $7E

; 192nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5699E to 56A01 (100 bytes)
_DATA_5699E_:
.db $21 $00 $00 $00 $08 $08 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20
.db $28 $28 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40 $48 $48 $50 $50
.db $58 $58 $13 $19 $1B $1A $23 $1B $10 $1C $20 $1D $0E $1E $28 $1F
.db $0E $20 $16 $21 $20 $22 $28 $23 $09 $24 $11 $25 $20 $26 $28 $27
.db $09 $28 $11 $29 $20 $2A $28 $2B $0A $2C $12 $2D $28 $2E $0B $2F
.db $28 $30 $34 $31 $0B $32 $30 $33 $0D $34 $30 $35 $12 $36 $28 $37
.db $13 $38 $28 $39

; 193rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56A02 to 56A08 (7 bytes)
_DATA_56A02_:
.db $02 $08 $10 $19 $3A $19 $3B

; 194th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56A09 to 56A15 (13 bytes)
_DATA_56A09_:
.db $04 $08 $08 $10 $10 $18 $3C $20 $3D $17 $3E $1F $3F

; 195th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56A16 to 56A28 (19 bytes)
_DATA_56A16_:
.db $06 $08 $08 $08 $10 $10 $10 $14 $40 $1C $41 $24 $42 $14 $43 $1C
.db $44 $24 $45

; 196th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56A29 to 56A86 (94 bytes)
_DATA_56A29_:
.db $1F $08 $08 $10 $10 $18 $18 $20 $20 $28 $28 $30 $30 $38 $38 $38
.db $40 $40 $40 $40 $48 $48 $48 $48 $50 $50 $50 $50 $58 $58 $58 $58
.db $18 $3C $20 $3D $17 $46 $1F $47 $16 $48 $1E $49 $13 $4A $1F $4B
.db $11 $4C $21 $4D $0F $4E $23 $4F $0C $50 $25 $51 $2D $3D $09 $52
.db $11 $53 $25 $54 $2D $55 $06 $56 $0E $57 $27 $58 $2F $59 $03 $5A
.db $0B $5B $29 $5C $31 $5D $01 $5E $09 $5F $2A $60 $32 $61

; 197th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56A87 to 56A9F (25 bytes)
_DATA_56A87_:
.db $08 $58 $58 $58 $58 $60 $60 $60 $60 $00 $62 $08 $63 $2A $62 $32
.db $63 $00 $64 $08 $65 $2A $64 $32 $65

; 198th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56AA0 to 56ADC (61 bytes)
_DATA_56AA0_:
.db $14 $50 $50 $50 $50 $58 $58 $58 $58 $58 $58 $60 $60 $60 $60 $60
.db $60 $68 $68 $68 $68 $00 $66 $08 $67 $29 $66 $31 $67 $FC $68 $04
.db $69 $0C $6A $25 $68 $2D $69 $35 $6A $FC $6B $04 $69 $0C $6C $25
.db $6B $2D $69 $35 $6C $00 $6D $08 $6E $29 $6D $31 $6E

; 199th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56ADD to 56B19 (61 bytes)
_DATA_56ADD_:
.db $14 $08 $08 $10 $10 $10 $18 $18 $20 $20 $28 $30 $30 $38 $38 $38
.db $40 $40 $48 $50 $58 $1A $0A $22 $0B $10 $0C $18 $0D $20 $0E $10
.db $0F $28 $10 $11 $11 $28 $12 $11 $13 $12 $14 $28 $15 $18 $16 $20
.db $17 $28 $18 $1A $19 $22 $1A $1A $1B $1A $1C $18 $1D

; 200th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56B1A to 56B38 (31 bytes)
_DATA_56B1A_:
.db $0A $00 $00 $00 $08 $08 $08 $10 $18 $28 $30 $00 $1E $08 $1F $28
.db $20 $01 $21 $09 $22 $27 $23 $27 $24 $16 $25 $13 $26 $15 $27

; 201st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56B39 to 56B5D (37 bytes)
_DATA_56B39_:
.db $0C $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $20 $28 $03 $28 $0D
.db $29 $22 $2A $03 $2B $0B $2C $1C $2D $24 $2E $0C $2F $14 $30 $1C
.db $31 $14 $32 $17 $33

; 202nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56B5E to 56B7F (34 bytes)
_DATA_56B5E_:
.db $0B $08 $08 $10 $10 $10 $18 $18 $18 $20 $20 $28 $08 $34 $1B $35
.db $0B $36 $13 $37 $1B $38 $0D $39 $15 $3A $1D $3B $10 $3C $18 $3D
.db $10 $3E

; 203rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56B80 to 56B8F (16 bytes)
_DATA_56B80_:
.db $05 $10 $10 $18 $18 $20 $11 $3F $1D $40 $13 $41 $1B $42 $15 $43

; 207th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56B90 to 56BB7 (40 bytes)
_DATA_56B90_:
.db $0D $38 $38 $40 $40 $40 $48 $48 $48 $48 $50 $50 $50 $50 $08 $00
.db $10 $01 $04 $02 $0C $03 $14 $04 $00 $05 $08 $06 $10 $07 $18 $08
.db $01 $09 $09 $0A $11 $0B $19 $0C

; 208th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56BB8 to 56BF4 (61 bytes)
_DATA_56BB8_:
.db $14 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40 $40 $40 $48 $48 $48
.db $48 $50 $50 $50 $50 $04 $0D $0C $0E $03 $0F $0B $10 $13 $11 $04
.db $12 $0C $13 $14 $14 $01 $15 $09 $16 $11 $17 $19 $18 $00 $19 $08
.db $1A $10 $1B $18 $1C $01 $1D $09 $1E $11 $1F $19 $20

; 209th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56BF5 to 56C55 (97 bytes)
_DATA_56BF5_:
.db $20 $10 $10 $18 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28 $28 $30
.db $30 $30 $38 $38 $38 $40 $40 $40 $40 $48 $48 $48 $48 $50 $50 $50
.db $50 $09 $21 $11 $22 $03 $23 $0B $24 $13 $25 $1B $26 $01 $27 $09
.db $28 $11 $29 $19 $2A $01 $2B $09 $2C $11 $2D $19 $2E $01 $2F $09
.db $30 $11 $31 $02 $32 $0A $33 $12 $34 $01 $35 $09 $36 $11 $37 $19
.db $38 $00 $39 $08 $3A $10 $3B $18 $3C $02 $3D $0A $3E $12 $3F $1A
.db $40

; 210th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56C56 to 56CDA (133 bytes)
_DATA_56C56_:
.db $2C $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $20 $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $38 $38
.db $38 $40 $40 $40 $40 $48 $48 $48 $48 $50 $50 $50 $50 $0C $41 $14
.db $42 $1C $43 $06 $44 $0E $45 $16 $46 $1E $47 $04 $48 $0C $49 $14
.db $4A $1C $4B $24 $4C $02 $4D $0A $4E $12 $4F $1A $50 $22 $51 $01
.db $52 $09 $53 $11 $54 $19 $55 $21 $56 $01 $57 $09 $58 $11 $59 $19
.db $5A $01 $5B $09 $5C $11 $5D $02 $5E $0A $5F $12 $60 $02 $61 $0A
.db $62 $12 $63 $1B $64 $00 $65 $08 $66 $10 $67 $18 $68 $00 $69 $08
.db $6A $10 $6B $18 $6C

; 211th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56CDB to 56D62 (136 bytes)
_DATA_56CDB_:
.db $2D $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $20 $20 $20 $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38
.db $38 $38 $40 $40 $40 $40 $48 $48 $48 $48 $50 $50 $50 $50 $0C $6D
.db $14 $6E $1C $6F $06 $70 $0E $71 $16 $72 $1E $73 $04 $74 $0C $49
.db $14 $75 $1C $76 $24 $4C $02 $77 $0A $78 $12 $79 $1A $46 $22 $7A
.db $01 $7B $09 $7C $11 $7D $19 $7E $21 $7F $01 $80 $09 $81 $11 $82
.db $19 $83 $01 $84 $09 $85 $11 $86 $19 $87 $02 $88 $0A $89 $12 $8A
.db $03 $8B $0B $8C $13 $8D $1D $8E $00 $8F $08 $90 $10 $91 $18 $92
.db $00 $93 $08 $94 $10 $95 $18 $96

; 212th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56D63 to 56DA2 (64 bytes)
_DATA_56D63_:
.db $15 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $18
.db $20 $20 $20 $28 $28 $28 $0E $00 $25 $01 $0C $02 $14 $03 $22 $04
.db $2A $05 $0A $06 $12 $07 $1F $08 $27 $09 $0B $0A $13 $0B $1B $0C
.db $23 $0D $2B $0E $10 $0F $18 $10 $20 $11 $13 $12 $1B $13 $23 $14

; 213th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56DA3 to 56DDF (61 bytes)
_DATA_56DA3_:
.db $14 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $10 $10 $18 $18 $18
.db $18 $18 $20 $20 $20 $00 $15 $30 $16 $02 $17 $0A $18 $27 $19 $2F
.db $1A $04 $1B $0C $1C $16 $1D $1E $1E $26 $1F $2E $20 $0B $21 $13
.db $22 $1B $23 $23 $24 $2B $25 $13 $26 $1B $27 $23 $28

; 214th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56DE0 to 56E16 (55 bytes)
_DATA_56DE0_:
.db $12 $18 $18 $18 $18 $18 $20 $20 $20 $20 $20 $20 $28 $28 $28 $28
.db $28 $30 $30 $0B $29 $13 $2A $1B $2B $23 $2C $2B $2D $04 $2E $0C
.db $2F $14 $30 $1C $31 $24 $32 $2C $33 $02 $34 $0A $35 $18 $36 $27
.db $37 $2F $38 $00 $39 $30 $3A

; 215th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56E17 to 56E53 (61 bytes)
_DATA_56E17_:
.db $14 $08 $08 $10 $10 $10 $18 $18 $18 $18 $18 $20 $20 $20 $20 $28
.db $28 $28 $28 $30 $30 $16 $1D $1E $3B $10 $3C $18 $3D $20 $3E $0B
.db $3F $13 $40 $1B $41 $23 $42 $2B $43 $0A $44 $12 $45 $1F $46 $27
.db $47 $0C $48 $14 $49 $22 $4A $2A $4B $0E $4C $25 $4D

; 216th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56E54 to 56EBA (103 bytes)
_DATA_56E54_:
.db $22 $20 $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40
.db $40 $40 $40 $48 $48 $48 $50 $50 $50 $58 $58 $58 $58 $60 $60 $68
.db $68 $68 $68 $18 $00 $20 $01 $12 $02 $1A $03 $22 $04 $2A $05 $10
.db $06 $18 $07 $20 $08 $28 $09 $10 $0A $18 $0B $20 $0C $28 $0D $13
.db $0E $1B $0F $23 $10 $2B $11 $14 $12 $1C $13 $24 $14 $14 $15 $1C
.db $16 $24 $17 $13 $18 $1B $19 $23 $1A $2B $1B $13 $1C $26 $1D $11
.db $1E $19 $1F $24 $20 $2C $21

; 217th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56EBB to 56F63 (169 bytes)
_DATA_56EBB_:
.db $38 $20 $20 $20 $20 $28 $28 $28 $28 $28 $28 $28 $28 $30 $30 $30
.db $30 $30 $30 $30 $30 $38 $38 $38 $38 $38 $38 $38 $38 $40 $40 $40
.db $40 $40 $40 $40 $40 $48 $48 $48 $48 $48 $48 $50 $50 $50 $50 $58
.db $58 $58 $58 $60 $60 $68 $68 $68 $68 $00 $22 $18 $00 $20 $01 $39
.db $22 $00 $23 $08 $24 $10 $25 $18 $26 $20 $27 $28 $28 $30 $29 $38
.db $2A $00 $2B $08 $2C $10 $2D $18 $2E $20 $2F $28 $30 $30 $31 $38
.db $32 $03 $33 $0B $34 $13 $35 $1B $36 $23 $37 $2B $38 $33 $39 $3B
.db $3A $02 $3B $0A $3C $12 $3D $1A $3E $22 $3F $2A $40 $32 $41 $3A
.db $42 $08 $43 $10 $44 $18 $45 $20 $46 $28 $47 $30 $48 $10 $49 $18
.db $4A $21 $4B $29 $4C $12 $4D $1A $4E $23 $4F $2B $50 $13 $1C $26
.db $1D $11 $1E $19 $1F $24 $20 $2C $21

; 218th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56F64 to 56FC4 (97 bytes)
_DATA_56F64_:
.db $20 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40 $40 $40 $40 $48
.db $48 $48 $48 $50 $50 $50 $58 $58 $58 $60 $60 $60 $60 $68 $68 $68
.db $68 $18 $00 $20 $01 $12 $02 $1A $03 $22 $04 $2A $05 $10 $06 $18
.db $07 $20 $08 $28 $09 $10 $0A $18 $51 $20 $0C $28 $0D $13 $0E $1B
.db $0F $23 $10 $2B $11 $14 $12 $1C $13 $24 $14 $14 $15 $1C $16 $24
.db $17 $13 $52 $1B $19 $23 $53 $2B $54 $11 $1E $19 $1F $24 $20 $2C
.db $21

; 219th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 56FC5 to 5702B (103 bytes)
_DATA_56FC5_:
.db $22 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $20 $20 $20 $28 $28 $28 $30 $30 $30 $30 $38 $38 $40 $40 $48
.db $48 $48 $48 $12 $55 $1A $56 $22 $57 $2A $05 $10 $06 $18 $58 $20
.db $59 $28 $09 $10 $0A $18 $5A $20 $5B $28 $0D $13 $0E $1B $0F $23
.db $10 $2B $11 $14 $12 $1C $13 $24 $14 $14 $15 $1C $16 $24 $17 $13
.db $18 $1B $19 $23 $1A $2B $1B $13 $1C $26 $1D $12 $5C $26 $5D $11
.db $5E $19 $5F $24 $60 $2C $61

; 220th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5702C to 57068 (61 bytes)
_DATA_5702C_:
.db $14 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $20 $20 $20 $20 $11 $62 $19 $63 $21 $64 $29 $65 $11 $66 $19
.db $67 $21 $68 $29 $69 $11 $6A $19 $6B $21 $6C $29 $6D $11 $6E $19
.db $6F $21 $70 $29 $71 $11 $72 $19 $73 $21 $74 $29 $75

; 221st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57069 to 570A5 (61 bytes)
_DATA_57069_:
.db $14 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $20 $20 $20 $20 $11 $76 $19 $77 $21 $78 $29 $79 $11 $7A $19
.db $7B $21 $7C $29 $7D $11 $7E $19 $7F $21 $80 $29 $81 $11 $82 $19
.db $83 $21 $84 $29 $85 $11 $86 $19 $87 $21 $88 $29 $89

; 222nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 570A6 to 570E2 (61 bytes)
_DATA_570A6_:
.db $14 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $20 $20 $20 $20 $11 $8A $19 $8B $21 $8C $29 $8D $11 $8E $19
.db $8F $21 $8F $29 $90 $11 $91 $19 $92 $21 $93 $29 $94 $11 $95 $19
.db $96 $21 $97 $29 $98 $11 $99 $19 $9A $21 $9B $29 $9C

; 223rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 570E3 to 57149 (103 bytes)
_DATA_570E3_:
.db $22 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $30 $30 $30 $38 $38 $38 $38 $40 $40 $48 $48 $50
.db $50 $50 $50 $12 $55 $1A $56 $22 $57 $2A $05 $10 $06 $18 $58 $20
.db $59 $28 $09 $10 $0A $18 $5A $20 $5B $28 $0D $13 $0E $1B $0F $23
.db $10 $2B $11 $14 $12 $1C $13 $24 $14 $14 $15 $1C $16 $24 $17 $13
.db $18 $1B $19 $23 $1A $2B $1B $13 $1C $26 $1D $12 $5C $26 $5D $11
.db $5E $19 $5F $24 $60 $2C $61

; 224th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5714A to 57150 (7 bytes)
_DATA_5714A_:
.db $02 $0B $0B $07 $0D $14 $0D

; 225th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57151 to 57157 (7 bytes)
_DATA_57151_:
.db $02 $0B $0B $07 $0E $14 $0E

; 226th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57158 to 5715E (7 bytes)
_DATA_57158_:
.db $02 $0B $0B $06 $0F $13 $0F

; 227th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5715F to 5716E (16 bytes)
_DATA_5715F_:
.db $05 $08 $08 $08 $10 $10 $04 $10 $0C $11 $14 $12 $06 $13 $13 $13

; 228th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5716F to 571BA (76 bytes)
_DATA_5716F_:
.db $19 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20
.db $20 $20 $20 $28 $28 $28 $30 $30 $38 $38 $12 $00 $29 $01 $12 $02
.db $1A $03 $23 $04 $2B $05 $12 $06 $1A $07 $22 $08 $2A $09 $12 $0A
.db $1A $0B $22 $0C $2A $0D $13 $0E $1B $0F $23 $10 $2B $11 $14 $12
.db $1C $13 $24 $14 $18 $15 $20 $16 $1B $17 $23 $18

; 229th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 571BB to 57206 (76 bytes)
_DATA_571BB_:
.db $19 $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $30 $30 $38 $38 $40 $40 $12 $19 $2A $19 $12 $1A
.db $25 $1B $12 $1C $1A $1D $22 $1E $2A $1F $12 $20 $1A $21 $22 $22
.db $2A $23 $13 $24 $1B $25 $23 $26 $2B $18 $14 $27 $1C $28 $24 $29
.db $18 $2A $20 $2B $1A $2C $22 $2D $1B $2E $23 $11

; 230th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57207 to 57252 (76 bytes)
_DATA_57207_:
.db $19 $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $30 $30 $38 $38 $40 $40 $12 $19 $2A $19 $12 $1A
.db $25 $1B $12 $1C $1A $1D $22 $1E $2A $1F $12 $20 $1A $21 $22 $22
.db $2A $23 $13 $24 $1B $25 $23 $26 $2B $18 $14 $27 $1C $2F $24 $29
.db $18 $30 $20 $31 $1A $2C $22 $2D $1B $2E $23 $11

; 231st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57253 to 5729E (76 bytes)
_DATA_57253_:
.db $19 $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $30 $30 $38 $38 $40 $40 $12 $19 $2A $19 $12 $1A
.db $25 $1B $12 $1C $1A $1D $22 $1E $2A $1F $12 $20 $1A $21 $22 $22
.db $2A $23 $13 $24 $1B $25 $23 $26 $2B $18 $14 $32 $1C $33 $24 $34
.db $18 $35 $20 $36 $19 $37 $21 $38 $1B $2E $23 $11

; 232nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5729F to 572F0 (82 bytes)
_DATA_5729F_:
.db $1B $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40 $12 $19 $2A $19
.db $12 $1A $25 $1B $12 $1C $1A $1D $22 $1E $2A $1F $12 $20 $1A $21
.db $22 $22 $2A $23 $13 $24 $1B $25 $23 $26 $2B $18 $14 $39 $1C $3A
.db $24 $3B $14 $3C $1C $3D $24 $3E $14 $3F $1C $40 $24 $41 $1B $2E
.db $23 $11

; 233rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 572F1 to 57351 (97 bytes)
_DATA_572F1_:
.db $20 $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $28 $30 $30 $30 $30 $38 $38 $38 $38 $40 $40 $40
.db $40 $12 $19 $2A $19 $12 $1A $25 $1B $12 $1C $1A $1D $22 $1E $2A
.db $1F $12 $20 $1A $21 $22 $22 $2A $23 $13 $24 $1B $25 $23 $26 $2B
.db $18 $10 $42 $18 $43 $20 $44 $28 $45 $10 $46 $18 $47 $20 $48 $28
.db $49 $10 $4A $18 $4B $20 $4C $28 $3E $10 $4D $18 $4E $20 $4F $28
.db $41

; 234th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57352 to 573C1 (112 bytes)
_DATA_57352_:
.db $25 $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $30 $30 $30 $30 $30 $38 $38 $38 $38 $38 $40 $40
.db $40 $40 $40 $48 $48 $48 $12 $19 $2A $19 $12 $1A $25 $1B $12 $1C
.db $1A $1D $22 $1E $2A $1F $12 $20 $1A $21 $22 $22 $2A $23 $13 $24
.db $1B $25 $23 $26 $2B $18 $14 $50 $1C $51 $24 $3B $0C $52 $14 $53
.db $1C $54 $24 $55 $2C $56 $0C $4A $14 $57 $1C $58 $24 $59 $2C $49
.db $0D $5A $15 $5B $1D $5C $25 $5D $2D $5E $14 $4D $1C $4F $24 $5F

; 235th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 573C2 to 57479 (184 bytes)
_DATA_573C2_:
.db $3D $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $30 $30 $30 $30 $30 $30 $30 $38 $38 $38
.db $38 $38 $38 $38 $40 $40 $40 $40 $40 $40 $40 $48 $48 $48 $48 $48
.db $48 $48 $50 $50 $50 $50 $50 $50 $50 $58 $58 $58 $58 $58 $12 $19
.db $2A $19 $12 $1A $25 $1B $12 $1C $1A $1D $22 $1E $2A $1F $12 $20
.db $1A $21 $22 $22 $2A $23 $13 $24 $1B $25 $23 $26 $2B $18 $0C $60
.db $14 $61 $1C $3A $24 $62 $2C $63 $04 $52 $0C $64 $14 $65 $1C $3D
.db $24 $66 $2C $67 $34 $56 $04 $4A $0C $68 $14 $47 $1C $54 $24 $48
.db $2C $69 $34 $6A $04 $46 $0C $6B $14 $57 $1C $6C $24 $59 $2C $6D
.db $34 $3E $05 $6E $0D $6F $15 $70 $1D $71 $25 $72 $2D $73 $35 $74
.db $05 $75 $0D $76 $15 $77 $1D $78 $25 $79 $2D $7A $35 $7B $0C $7C
.db $14 $4F $1C $4E $24 $7D $2C $5F

; 236th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5747A to 57531 (184 bytes)
_DATA_5747A_:
.db $3D $00 $00 $08 $08 $10 $10 $10 $10 $18 $18 $18 $18 $20 $20 $20
.db $20 $28 $28 $28 $28 $28 $30 $30 $30 $30 $30 $30 $30 $38 $38 $38
.db $38 $38 $38 $38 $40 $40 $40 $40 $40 $40 $40 $48 $48 $48 $48 $48
.db $48 $48 $50 $50 $50 $50 $50 $50 $50 $58 $58 $58 $58 $58 $12 $19
.db $2A $19 $12 $1A $25 $1B $12 $1C $1A $1D $22 $1E $2A $1F $12 $20
.db $1A $21 $22 $22 $2A $23 $13 $24 $1B $25 $23 $26 $2B $18 $0C $52
.db $14 $7E $1C $7F $24 $80 $2C $60 $05 $81 $0D $82 $15 $83 $1D $84
.db $25 $85 $2D $86 $35 $87 $04 $46 $0C $6B $14 $54 $1C $48 $24 $59
.db $2C $88 $34 $49 $05 $89 $0D $8A $15 $8B $1D $8C $25 $72 $2D $8D
.db $35 $8E $04 $4A $0C $8F $14 $57 $1C $4B $24 $90 $2C $6D $34 $3E
.db $04 $4D $0C $4B $14 $91 $1C $92 $24 $93 $2C $4C $34 $56 $0C $5F
.db $14 $4E $1C $7D $24 $4F $2C $41

; 237th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57532 to 57541 (16 bytes)
_DATA_57532_:
.db $05 $00 $08 $10 $18 $20 $09 $1F $09 $20 $08 $21 $0A $22 $08 $23

; 238th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57542 to 57569 (40 bytes)
_DATA_57542_:
.db $0D $00 $00 $08 $10 $18 $20 $28 $30 $38 $38 $40 $40 $40 $00 $24
.db $08 $25 $03 $26 $04 $27 $03 $28 $03 $29 $03 $2A $03 $2B $02 $2C
.db $0A $2D $00 $2E $08 $2F $10 $30

; 239th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5756A to 5758E (37 bytes)
_DATA_5756A_:
.db $0C $00 $08 $10 $18 $20 $28 $30 $38 $38 $40 $40 $40 $05 $31 $03
.db $32 $03 $33 $03 $34 $04 $35 $06 $36 $06 $37 $02 $38 $0A $39 $00
.db $3A $08 $3B $10 $3C

; 240th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5758F to 5759E (16 bytes)
_DATA_5758F_:
.db $05 $38 $38 $40 $40 $40 $02 $3D $0A $3E $00 $3F $08 $40 $10 $41

; 241st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5759F to 575AE (16 bytes)
_DATA_5759F_:
.db $05 $38 $38 $40 $40 $40 $02 $42 $0A $43 $00 $44 $08 $45 $10 $41

; 242nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 575AF to 575BE (16 bytes)
_DATA_575AF_:
.db $05 $38 $38 $40 $40 $40 $02 $46 $0A $47 $00 $48 $08 $49 $10 $4A

; 243rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 575BF to 575D7 (25 bytes)
_DATA_575BF_:
.db $08 $48 $48 $50 $50 $50 $58 $58 $58 $F8 $4B $00 $4C $EC $4D $F4
.db $4E $FC $4F $E6 $50 $EE $51 $F6 $52

; 244th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 575D8 to 57602 (43 bytes)
_DATA_575D8_:
.db $0E $58 $60 $60 $68 $70 $70 $70 $70 $78 $78 $80 $80 $88 $88 $E6
.db $53 $D8 $54 $E0 $55 $D5 $56 $BC $57 $C4 $58 $CC $59 $D4 $5A $B0
.db $5B $B8 $5C $A5 $5D $AD $5E $98 $5F $A0 $60

; 245th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57603 to 57609 (7 bytes)
_DATA_57603_:
.db $02 $88 $88 $99 $61 $A1 $62

; 246th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5760A to 57616 (13 bytes)
_DATA_5760A_:
.db $04 $80 $88 $88 $88 $9C $63 $96 $64 $9E $65 $A6 $66

; 247th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57617 to 57623 (13 bytes)
_DATA_57617_:
.db $04 $80 $88 $88 $88 $9D $67 $95 $68 $9E $69 $A6 $6A

; 248th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57624 to 57645 (34 bytes)
_DATA_57624_:
.db $0B $38 $38 $40 $48 $48 $50 $50 $50 $58 $58 $58 $F6 $6B $FE $6C
.db $F3 $56 $F1 $6D $F9 $6E $E8 $6F $F0 $70 $F8 $71 $E2 $50 $EA $51
.db $F2 $52

; 249th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57646 to 5765E (25 bytes)
_DATA_57646_:
.db $08 $60 $68 $70 $70 $78 $80 $88 $88 $E1 $72 $E3 $73 $D8 $74 $E0
.db $75 $D6 $76 $D8 $77 $D2 $78 $DA $79

; 250th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5765F to 57665 (7 bytes)
_DATA_5765F_:
.db $02 $88 $88 $D2 $61 $DA $62

; 251st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57666 to 57672 (13 bytes)
_DATA_57666_:
.db $04 $80 $88 $88 $88 $D5 $63 $CF $64 $D7 $65 $DF $66

; 252nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57673 to 5767F (13 bytes)
_DATA_57673_:
.db $04 $80 $88 $88 $88 $D5 $67 $CD $68 $D6 $69 $DE $6A

; 253rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57680 to 5768F (16 bytes)
_DATA_57680_:
.db $05 $48 $50 $50 $58 $58 $0B $7B $0B $6D $13 $6E $0B $7C $13 $7D

; 254th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57690 to 576B4 (37 bytes)
_DATA_57690_:
.db $0C $58 $60 $60 $68 $70 $70 $78 $78 $80 $80 $88 $88 $11 $7E $0A
.db $7F $12 $80 $0A $73 $09 $81 $11 $82 $08 $83 $10 $84 $05 $85 $0D
.db $86 $0A $87 $12 $88

; 255th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 576B5 to 576BB (7 bytes)
_DATA_576B5_:
.db $02 $88 $88 $0B $61 $13 $62

; 256th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 576BC to 576C8 (13 bytes)
_DATA_576BC_:
.db $04 $80 $88 $88 $88 $0E $63 $08 $64 $10 $65 $18 $66

; 17th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 576C9 to 576D5 (13 bytes)
_DATA_576C9_:
.db $04 $80 $88 $88 $88 $0F $67 $07 $68 $10 $69 $18 $6A

; 18th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 576D6 to 576EE (25 bytes)
_DATA_576D6_:
.db $08 $38 $38 $40 $48 $48 $50 $50 $50 $13 $89 $1B $8A $19 $8B $1A
.db $8C $22 $8D $1F $8E $27 $8F $2F $90

; 19th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 576EF to 57722 (52 bytes)
_DATA_576EF_:
.db $11 $50 $58 $58 $58 $60 $60 $60 $68 $70 $70 $78 $78 $80 $80 $80
.db $88 $88 $2C $91 $25 $4D $2D $4E $35 $4F $25 $92 $2D $93 $35 $94
.db $2C $95 $2C $96 $34 $97 $30 $98 $38 $99 $31 $9A $39 $9B $41 $9C
.db $36 $9D $3E $9E

; 180th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57723 to 57729 (7 bytes)
_DATA_57723_:
.db $02 $88 $88 $3C $61 $44 $62

; 71st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5772A to 57736 (13 bytes)
_DATA_5772A_:
.db $04 $80 $88 $88 $88 $3F $63 $39 $64 $41 $65 $49 $66

; 143rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57737 to 57743 (13 bytes)
_DATA_57737_:
.db $04 $80 $88 $88 $88 $40 $67 $38 $68 $41 $69 $49 $6A

; 204th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57744 to 577A1 (94 bytes)
_DATA_57744_:
.db $1F $38 $38 $40 $40 $40 $40 $40 $40 $48 $48 $48 $48 $48 $50 $58
.db $60 $68 $70 $78 $80 $88 $88 $90 $90 $90 $98 $98 $A0 $A0 $A0 $A0
.db $28 $00 $30 $01 $0A $02 $12 $03 $1A $04 $22 $05 $2A $06 $32 $07
.db $0B $08 $13 $09 $1B $0A $23 $0B $2B $0C $03 $0D $06 $0E $05 $0F
.db $04 $10 $04 $11 $05 $12 $04 $13 $04 $14 $28 $15 $04 $16 $28 $17
.db $30 $18 $04 $19 $20 $1A $02 $1B $0A $1C $20 $1D $28 $1E

; 20th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 577A2 to 577AE (13 bytes)
_DATA_577A2_:
.db $04 $08 $08 $10 $10 $09 $00 $11 $01 $08 $02 $10 $03

; 21st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 577AF to 577BB (13 bytes)
_DATA_577AF_:
.db $04 $08 $08 $10 $10 $0A $04 $12 $05 $0A $06 $12 $07

; 62nd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 577BC to 577C8 (13 bytes)
_DATA_577BC_:
.db $04 $08 $08 $10 $10 $0B $08 $13 $09 $0B $0A $13 $0B

; 63rd entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 577C9 to 577D5 (13 bytes)
_DATA_577C9_:
.db $04 $08 $08 $10 $10 $0A $0C $12 $0D $08 $0E $10 $0F

; 119th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 577D6 to 577E2 (13 bytes)
_DATA_577D6_:
.db $04 $08 $08 $10 $10 $0A $10 $12 $11 $0A $12 $12 $13

; 120th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 577E3 to 577E9 (7 bytes)
_DATA_577E3_:
.db $02 $08 $10 $0D $14 $0D $15

; 137th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 577EA to 5780E (37 bytes)
_DATA_577EA_:
.db $0C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $06 $16 $0E
.db $17 $16 $18 $04 $19 $0C $1A $14 $1B $05 $1C $0D $1D $15 $1E $08
.db $1F $10 $20 $18 $21

; 138th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5780F to 578A5 (151 bytes)
_DATA_5780F_:
.db $32 $D8 $D8 $D8 $E0 $E0 $E0 $E8 $E8 $E8 $E8 $E8 $E8 $F0 $F0 $F0
.db $F0 $F8 $F8 $F8 $F8 $F8 $00 $00 $08 $08 $08 $08 $08 $08 $10 $10
.db $10 $10 $10 $10 $18 $18 $18 $18 $18 $20 $28 $28 $28 $30 $30 $30
.db $38 $38 $38 $F3 $22 $FB $23 $03 $24 $F2 $25 $FA $26 $02 $27 $F0
.db $28 $F8 $29 $00 $2A $22 $2B $2A $2C $32 $2D $00 $2E $20 $2F $28
.db $30 $30 $31 $05 $32 $1C $33 $24 $34 $2C $35 $34 $36 $05 $37 $18
.db $38 $EA $2B $F2 $2C $FA $39 $02 $3A $0A $3B $12 $3C $E8 $2F $F0
.db $30 $F8 $31 $02 $3D $0A $3E $12 $3F $EA $40 $F2 $41 $FA $42 $03
.db $43 $18 $44 $1C $45 $1B $22 $23 $23 $2B $24 $1A $25 $22 $26 $2A
.db $27 $18 $28 $20 $29 $28 $2A

; 139th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 578A6 to 5792A (133 bytes)
_DATA_578A6_:
.db $2C $D0 $D0 $D0 $D8 $D8 $D8 $E0 $E0 $E0 $E8 $F0 $00 $00 $00 $00
.db $00 $00 $00 $08 $08 $08 $08 $08 $10 $10 $10 $10 $10 $10 $10 $18
.db $18 $18 $28 $30 $38 $38 $38 $40 $40 $40 $48 $48 $48 $02 $2B $0A
.db $2C $12 $2D $00 $2F $08 $30 $10 $31 $02 $40 $0A $41 $12 $42 $04
.db $46 $00 $47 $DB $22 $E3 $23 $EB $24 $20 $48 $28 $49 $36 $4A $3E
.db $4B $DA $25 $E2 $26 $EA $27 $34 $4C $3C $4D $D8 $28 $E0 $29 $E8
.db $2A $F0 $4E $0D $14 $36 $4F $3E $50 $F4 $51 $FD $52 $0D $15 $19
.db $53 $15 $54 $0A $2B $12 $2C $1A $2D $08 $2F $10 $30 $18 $31 $0A
.db $40 $12 $41 $1A $42

; 140th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5792B to 5798E (100 bytes)
_DATA_5792B_:
.db $21 $D8 $D8 $D8 $E0 $E0 $E0 $E8 $E8 $E8 $F0 $F0 $F8 $F8 $00 $00
.db $28 $28 $28 $30 $30 $30 $38 $38 $38 $40 $40 $40 $48 $48 $48 $50
.db $50 $50 $23 $22 $2B $23 $33 $24 $22 $25 $2A $26 $32 $27 $20 $28
.db $28 $29 $30 $2A $D5 $4A $DD $4B $D3 $4C $DB $4D $D5 $4F $DD $50
.db $3B $22 $43 $23 $4B $24 $3A $25 $42 $26 $4A $27 $38 $28 $40 $29
.db $48 $2A $EB $22 $F3 $23 $FB $24 $EA $25 $F2 $26 $FA $27 $E8 $28
.db $F0 $29 $F8 $2A

; 141st entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 5798F to 57A19 (139 bytes)
_DATA_5798F_:
.db $2E $B8 $B8 $B8 $B8 $C0 $C0 $C0 $C8 $C8 $D0 $D8 $D8 $D8 $E0 $E0
.db $E0 $E8 $E8 $E8 $20 $20 $20 $28 $28 $28 $30 $30 $30 $40 $48 $50
.db $50 $50 $58 $58 $60 $60 $68 $68 $68 $68 $70 $70 $70 $70 $70 $48
.db $55 $50 $56 $58 $57 $60 $58 $40 $59 $48 $5A $50 $5B $38 $5C $40
.db $5D $31 $5E $CB $22 $D3 $23 $DB $24 $CA $25 $D2 $26 $DA $27 $C8
.db $28 $D0 $29 $D8 $2A $3A $2B $42 $2C $4A $2D $38 $2F $40 $30 $48
.db $31 $3A $40 $42 $41 $4A $42 $E8 $5F $E3 $60 $D8 $61 $E0 $62 $60
.db $63 $D0 $64 $D8 $65 $CE $66 $D6 $67 $C5 $68 $CD $69 $D5 $6A $48
.db $6B $B8 $6C $C0 $6D $C8 $6E $D0 $6F $50 $70

; 205th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57A1A to 57A80 (103 bytes)
_DATA_57A1A_:
.db $22 $B8 $B8 $B8 $B8 $B8 $C0 $C0 $C0 $C8 $C8 $C8 $D0 $D0 $D8 $30
.db $38 $40 $48 $48 $50 $58 $58 $60 $60 $60 $68 $68 $68 $68 $70 $70
.db $70 $70 $70 $96 $71 $9E $72 $A6 $73 $50 $74 $58 $75 $A4 $76 $AC
.db $77 $49 $78 $AC $79 $B4 $7A $BC $7B $BE $7C $C6 $7D $C8 $7E $43
.db $7F $48 $80 $49 $81 $4A $82 $52 $83 $51 $84 $50 $85 $58 $86 $D4
.db $87 $56 $88 $5E $89 $CE $8A $58 $8B $60 $8C $68 $8D $C1 $8E $C9
.db $8F $5D $90 $65 $91 $6D $92

; 206th entry of Pointer Table from 54000 (indexed by _RAM_C800_)
; Data from 57A81 to 57FFF (1407 bytes)
_DATA_57A81_:
.incbin "Phantasy Star (UE) (V1.2) [!]_57a81.inc"

.BANK 22
.ORG $0000

; Data from 58000 to 5856F (1392 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_58000.inc"

; Data from 58570 to 5B9D7 (13416 bytes)
_DATA_58570_:
.incbin "Phantasy Star (UE) (V1.2) [!]_58570.inc"

; Data from 5B9D8 to 5B9E6 (15 bytes)
_DATA_5B9D8_:
.db $3F $00 $38 $1F $0B $06 $3E $00 $00 $00 $00 $00 $00 $00 $00

; Data from 5B9E7 to 5BFFF (1561 bytes)
_DATA_5B9E7_:
.incbin "Phantasy Star (UE) (V1.2) [!]_5b9e7.inc"

.BANK 23
.ORG $0000

; Data from 5C000 to 5F766 (14183 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_5c000.inc"

; Data from 5F767 to 5F777 (17 bytes)
_DATA_5F767_:
.db $10 $3F $3E $38 $34 $30 $20 $04 $3C $20 $00 $00 $00 $00 $00 $00
.db $10

; Data from 5F778 to 5FFFF (2184 bytes)
_DATA_5F778_:
.incbin "Phantasy Star (UE) (V1.2) [!]_5f778.inc"

.BANK 24
.ORG $0000

; Data from 60000 to 60312 (787 bytes)
.db $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80
.db $A2 $80 $A2 $80 $A7 $80 $0D $81 $A2 $80 $A2 $80 $6E $81 $0B $82
.db $A2 $80 $A2 $80 $A2 $80 $9C $82 $1C $83 $7C $83 $85 $83 $8E $83
.db $2A $84 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $CB $84 $A2 $80 $A2 $80
.db $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $08 $85 $A2 $80
.db $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $45 $85 $D4 $85
.db $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $73 $86
.db $E8 $86 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80
.db $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80
.db $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80 $A2 $80
.db $A2 $80 $7F $AD $41 $AD $00 $81 $02 $0F $07 $81 $06 $0F $A7 $81
.db $06 $0F $A7 $81 $06 $0F $A7 $81 $06 $0F $A7 $81 $06 $0F $A7 $81
.db $06 $04 $A7 $82 $53 $54 $05 $A7 $85 $4D $4E $A7 $A7 $06 $04 $A7
.db $82 $55 $56 $03 $A7 $87 $4D $4E $4F $50 $A7 $A7 $06 $09 $A7 $87
.db $51 $52 $51 $52 $A7 $A7 $06 $06 $28 $81 $A8 $08 $28 $81 $06 $04
.db $28 $03 $A8 $03 $28 $81 $29 $02 $28 $02 $A7 $83 $06 $28 $29 $02
.db $28 $02 $45 $82 $A8 $28 $02 $29 $03 $28 $02 $A7 $00 $0E $07 $82
.db $03 $AD $0E $A7 $82 $08 $AD $0E $A7 $82 $08 $AD $0E $A7 $82 $08
.db $AD $0E $A7 $82 $08 $AD $0E $A7 $84 $08 $AD $53 $54 $04 $A7 $82
.db $53 $54 $06 $A7 $84 $08 $AD $55 $56 $04 $A7 $82 $55 $56 $06 $A7
.db $82 $08 $AD $0E $A7 $82 $08 $AD $0E $28 $8B $08 $AD $A7 $28 $1E
.db $1F $28 $28 $1E $1F $28 $03 $A7 $02 $A8 $8B $08 $AD $A7 $28 $20
.db $21 $28 $28 $20 $21 $28 $03 $A7 $84 $A8 $45 $08 $AD $00 $82 $AD
.db $02 $0E $07 $83 $AD $06 $22 $04 $29 $06 $23 $03 $29 $84 $AD $06
.db $25 $2A $04 $26 $81 $2A $03 $24 $02 $2A $8A $47 $2C $AD $06 $25
.db $24 $28 $0E $0F $28 $05 $24 $8A $2A $48 $2C $AD $06 $25 $2A $28
.db $10 $11 $02 $28 $02 $2A $02 $24 $03 $2A $84 $AD $06 $25 $24 $05
.db $2C $81 $28 $06 $26 $88 $AD $06 $25 $2A $2C $27 $27 $28 $08 $2C
.db $85 $AD $06 $25 $2A $2C $03 $24 $03 $27 $8A $28 $2C $2C $28 $27
.db $AD $06 $25 $2A $2C $02 $2A $03 $24 $8B $2A $24 $47 $2C $2A $24
.db $AD $06 $2B $2A $2C $03 $2A $03 $24 $87 $2A $48 $2C $24 $24 $AD
.db $06 $03 $2B $02 $24 $02 $2A $8A $24 $2A $24 $2C $2C $2A $24 $AD
.db $06 $45 $02 $2B $07 $24 $02 $2C $02 $24 $00 $0F $07 $81 $03 $07
.db $29 $04 $23 $04 $29 $81 $08 $06 $2C $81 $2A $03 $24 $02 $2A $84
.db $12 $13 $2A $08 $06 $2C $82 $2A $24 $04 $2A $84 $14 $15 $2A $08
.db $05 $2A $8B $2C $2A $24 $2A $0A $0B $24 $2C $2C $2A $08 $04 $26
.db $82 $24 $2C $03 $24 $87 $0C $0D $24 $2C $2A $2A $08 $0D $2C $83
.db $2A $24 $08 $04 $27 $92 $2A $2C $2A $27 $2A $27 $2A $27 $2A $24
.db $2A $08 $24 $2A $24 $2A $2A $2C $03 $28 $03 $24 $03 $26 $83 $08
.db $2A $24 $03 $2A $9B $2C $0A $0B $28 $24 $24 $2A $45 $2B $2B $08
.db $24 $2A $2A $24 $2A $2C $0C $0D $28 $26 $26 $2A $46 $16 $17 $08
.db $03 $24 $02 $2A $07 $2C $84 $2B $18 $19 $08 $00 $8B $06 $28 $28
.db $29 $28 $46 $46 $A8 $28 $28 $29 $03 $28 $02 $A7 $81 $06 $04 $28
.db $81 $A8 $08 $28 $02 $A7 $82 $06 $28 $0C $A8 $02 $A7 $82 $06 $28
.db $0C $A8 $02 $A7 $83 $06 $28 $A8 $0B $28 $02 $A7 $8C $06 $28 $A8
.db $28 $A7 $4D $4E $A7 $A7 $4D $4E $A7 $02 $28 $02 $A7 $8C $06 $28
.db $A8 $28 $A7 $4F $50 $4D $4E $4F $50 $A7 $02 $28 $02 $A7 $8C $06
.db $28 $A8 $28 $A7 $51 $52 $4F $50 $51 $52 $A7 $02 $28 $02 $A7 $84
.db $06 $28 $4C $28 $03 $A7 $82 $51 $52 $03 $A7 $02 $28 $83 $A7 $A8
.db $06 $0D $28

; 1st entry of Pointer Table from CFCF (indexed by unknown)
; Data from 60313 to 62483 (8561 bytes)
_DATA_60313_:
.incbin "Phantasy Star (UE) (V1.2) [!]_60313.inc"

; Data from 62484 to 62579 (246 bytes)
_DATA_62484_:
.db $45 $00 $81 $01 $14 $02 $81 $01 $0A $00 $81 $03 $14 $00 $81 $03
.db $0A $00 $81 $03 $14 $00 $81 $03 $0A $00 $81 $03 $14 $00 $81 $03
.db $0A $00 $81 $03 $14 $00 $81 $03 $0A $00 $81 $03 $14 $00 $81 $03
.db $0A $00 $81 $03 $14 $00 $81 $03 $0A $00 $81 $03 $14 $00 $81 $03
.db $0A $00 $81 $03 $14 $00 $81 $03 $0A $00 $81 $03 $14 $00 $81 $03
.db $0A $00 $81 $03 $14 $00 $81 $03 $0A $00 $81 $03 $14 $00 $81 $03
.db $0A $00 $81 $03 $14 $00 $81 $03 $0A $00 $81 $01 $14 $02 $81 $01
.db $7F $00 $7F $00 $07 $00 $00 $47 $08 $92 $0A $08 $0A $08 $0A $08
.db $0A $08 $0A $08 $0A $08 $0A $08 $0A $08 $0A $08 $02 $0A $1F $08
.db $81 $0A $0A $08 $81 $0C $14 $08 $81 $0E $1F $08 $81 $0A $0A $08
.db $81 $0C $14 $08 $81 $0E $1F $08 $81 $0A $0A $08 $81 $0C $14 $08
.db $81 $0E $1F $08 $81 $0A $0A $08 $81 $0C $14 $08 $81 $0E $1F $08
.db $81 $0A $0A $08 $81 $0C $14 $08 $81 $0E $1F $08 $81 $0A $0A $08
.db $81 $0C $14 $08 $81 $0E $0A $08 $96 $0C $08 $0A $08 $0A $08 $0A
.db $08 $0A $08 $0A $08 $0A $08 $0A $08 $0A $08 $0A $08 $0A $0E $7F
.db $08 $7F $08 $07 $08 $00

; Data from 6257A to 62589 (16 bytes)
_DATA_6257A_:
.db $00 $00 $3F $0F $0B $06 $01 $00 $00 $00 $00 $00 $00 $00 $00 $00

; Data from 6258A to 625DF (86 bytes)
_DATA_6258A_:
.db $08 $00 $98 $0F $35 $4E $54 $A6 $F9 $A9 $C7 $FF $88 $25 $12 $26
.db $49 $94 $FF $C3 $85 $A9 $93 $C5 $AB $99 $A5 $00 $08 $00 $98 $0F
.db $3F $5A $6D $F2 $D5 $EA $D5 $FF $DD $AE $53 $AE $7A $B9 $FF $EB
.db $D5 $AF $D7 $EF $E9 $BD $D3 $00 $09 $00 $97 $0A $35 $33 $4D $2A
.db $57 $3A $00 $36 $DB $EC $D9 $97 $6E $00 $3C $3A $52 $6C $3A $56
.db $66 $2C $00 $20 $00 $00

; Data from 625E0 to 63F1F (6464 bytes)
_DATA_625E0_:
.incbin "Phantasy Star (UE) (V1.2) [!]_625e0.inc"

; Data from 63F20 to 63F4F (48 bytes)
_DATA_63F20_:
.db $2F $08 $30 $08 $30 $0A $2F $0A $39 $08 $3A $08 $3A $0A $39 $0A
.db $43 $08 $44 $08 $44 $0A $43 $0A $4C $08 $4D $08 $4D $0A $4C $0A
.db $55 $08 $56 $08 $56 $0A $55 $0A $5D $08 $5E $08 $5E $0A $5D $0A

; Data from 63F50 to 63F7F (48 bytes)
_DATA_63F50_:
.db $92 $08 $93 $08 $93 $0A $92 $0A $94 $08 $95 $08 $95 $0A $94 $0A
.db $96 $08 $97 $08 $97 $0A $96 $0A $98 $08 $99 $08 $99 $0A $98 $0A
.db $55 $08 $9A $08 $9A $0A $55 $0A $5D $08 $5E $08 $5E $0A $5D $0A

; Data from 63F80 to 63FFF (128 bytes)
_DATA_63F80_:
.db $9B $08 $9C $08 $9C $0A $9B $0A $9D $08 $9E $08 $9E $0A $9D $0A
.db $96 $08 $9F $08 $9F $0A $96 $0A $A0 $08 $A1 $08 $A1 $0A $A0 $0A
.db $55 $08 $A2 $08 $A2 $0A $55 $0A $5D $08 $A3 $08 $A3 $0A $5D $0A
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 25
.ORG $0000

; Data from 64000 to 67FFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_64000.inc"

.BANK 26
.ORG $0000

; Data from 68000 to 6BFFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_68000.inc"

.BANK 27
.ORG $0000

; Data from 6C000 to 6F40A (13323 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_6c000.inc"

; Data from 6F40B to 6F49A (144 bytes)
_DATA_6F40B_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $CB $10
.db $D6 $10 $D3 $10 $DD $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F1 $17 $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13
.db $F3 $11 $D7 $10 $E3 $10 $CB $10 $DF $10 $F3 $13 $F1 $15 $F2 $15
.db $F2 $15 $F2 $15 $F2 $15 $F1 $17 $F1 $11 $F2 $11 $F2 $11 $F2 $11
.db $F2 $11 $F1 $13 $F3 $11 $D9 $10 $CE $10 $D3 $10 $D8 $10 $F3 $13
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17 $F1 $11 $F2 $11
.db $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $D8 $10 $D9 $10 $CB $10
.db $D2 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17

; Data from 6F49B to 6F4AA (16 bytes)
_DATA_6F49B_:
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17

; Data from 6F4AB to 6F4DA (48 bytes)
_DATA_6F4AB_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13
.db $F3 $11 $C0 $10 $CB $10 $D6 $10 $D3 $10 $DD $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13

; Data from 6F4DB to 6F50A (48 bytes)
_DATA_6F4DB_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13
.db $F3 $11 $C0 $10 $D7 $10 $E3 $10 $CB $10 $DF $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13

; Data from 6F50B to 6F53A (48 bytes)
_DATA_6F50B_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13
.db $F3 $11 $C0 $10 $D9 $10 $CE $10 $D3 $10 $D8 $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13

; Data from 6F53B to 6F56A (48 bytes)
_DATA_6F53B_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13
.db $F3 $11 $C0 $10 $D8 $10 $D9 $10 $CB $10 $D2 $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13

; Data from 6F56B to 6F5EE (132 bytes)
_DATA_6F56B_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $CB $10
.db $DE $10 $DE $10 $D5 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $D7 $10 $CB $10 $D1 $10 $CD $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $D3 $10
.db $DE $10 $CF $10 $D7 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $DE $10 $CB $10 $D6 $10 $D5 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $DC $10
.db $DF $10 $D8 $10 $C0 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F1 $17

; Data from 6F5EF to 6F618 (42 bytes)
_DATA_6F5EF_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11
.db $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11
.db $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11

; Data from 6F619 to 6F6DE (198 bytes)
_DATA_6F619_:
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F1 $15
.db $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F2 $15 $F1 $17

; Data from 6F6DF to 6FA3E (864 bytes)
_DATA_6F6DF_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $D2 $10 $CF $10 $CB $10
.db $D6 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $CC $10 $E3 $10 $CF $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $CD $10 $D2 $10 $CB $10
.db $DE $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $D0 $10 $D3 $10 $DC $10 $CF $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $DC $10 $D9 $10 $DA $10
.db $CF $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $CD $10 $DF $10 $DC $10
.db $CF $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $DE $10 $CF $10 $DC $10 $DC $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $E1 $10 $CB $10 $D6 $10
.db $D6 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $D2 $10 $CF $10 $D6 $10 $DA $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $D0 $10 $D3 $10 $DC $10
.db $CF $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $DE $10 $CF $10 $D6 $10 $CF $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $E1 $10 $D3 $10 $D8 $10
.db $CE $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $DA $10 $DC $10 $D9 $10 $DE $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $DE $10 $D2 $10 $DF $10
.db $D8 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $D2 $10 $CF $10 $CB $10
.db $D6 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $D0 $10 $D6 $10 $E3 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $CD $10 $DF $10 $DC $10
.db $CF $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $DE $10 $DC $10 $CB $10 $DA $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $CF $10 $E2 $10 $D3 $10
.db $DE $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $CD $10 $DF $10 $DC $10
.db $CF $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $CF $10 $E2 $10 $D3 $10 $DE $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $DE $10 $CF $10 $D6 $10
.db $CF $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $D9 $10 $DA $10 $CF $10 $D8 $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $DC $10 $D3 $10 $DD $10
.db $CF $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17

; Data from 6FA3F to 6FACE (144 bytes)
_DATA_6FA3F_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17

; Data from 6FACF to 6FAE2 (20 bytes)
_DATA_6FACF_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11
.db $F2 $11 $F1 $13

; Data from 6FAE3 to 6FAF6 (20 bytes)
_DATA_6FAE3_:
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F1 $17

; Data from 6FAF7 to 6FB1E (40 bytes)
_DATA_6FAF7_:
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $D8 $10 $CF $10 $E2 $10 $DE $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13

; Data from 6FB1F to 6FB7E (96 bytes)
_DATA_6FB1F_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $CB $10
.db $D6 $10 $D3 $10 $DD $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $D7 $10 $E3 $10 $CB $10 $DF $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $D9 $10
.db $CE $10 $D3 $10 $D8 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $D8 $10 $D9 $10 $CB $10 $D2 $10 $F3 $13

; Data from 6FB7F to 6FB8A (12 bytes)
_DATA_6FB7F_:
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17

; Data from 6FB8B to 6FC0E (132 bytes)
_DATA_6FB8B_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $DD $10
.db $DE $10 $CB $10 $DD $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $D7 $10 $CB $10 $D1 $10 $CD $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $D3 $10
.db $DE $10 $CF $10 $D7 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $DD $10 $DC $10 $CD $10 $D2 $10 $F3 $13
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11 $DD $10
.db $CB $10 $E0 $10 $CF $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F1 $17

; Data from 6FC0F to 6FC54 (70 bytes)
_DATA_6FC0F_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $DF $10 $DD $10
.db $CF $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11
.db $CF $10 $DB $10 $DA $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $F3 $13 $F3 $11 $CE $10 $DC $10 $DA $10 $F3 $13 $F1 $15 $F2 $15
.db $F2 $15 $F2 $15 $F1 $17

; Data from 6FC55 to 6FC90 (60 bytes)
_DATA_6FC55_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $CC $10
.db $DF $10 $E3 $10 $C0 $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $F3 $13 $F3 $11 $DD $10 $CF $10 $D6 $10 $D6 $10 $F3 $13
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17

; Data from 6FC91 to 6FCC2 (50 bytes)
_DATA_6FC91_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13 $F3 $11 $E3 $10 $CF $10
.db $DD $10 $F3 $13 $F3 $11 $C0 $10 $C0 $10 $C0 $10 $F3 $13 $F3 $11
.db $D8 $10 $D9 $10 $C0 $10 $F3 $13 $F1 $15 $F2 $15 $F2 $15 $F2 $15
.db $F1 $17

; Data from 6FCC3 to 6FCDA (24 bytes)
_DATA_6FCC3_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11
.db $F2 $11 $F2 $11 $F2 $11 $F1 $13

; Data from 6FCDB to 6FCF2 (24 bytes)
_DATA_6FCDB_:
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13

; Data from 6FCF3 to 6FD0A (24 bytes)
_DATA_6FCF3_:
.db $F3 $11 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10 $C0 $10
.db $C0 $10 $C0 $10 $C0 $10 $F3 $13

; Data from 6FD0B to 6FD22 (24 bytes)
_DATA_6FD0B_:
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F2 $15 $F2 $15 $F1 $17

; Data from 6FD23 to 6FD42 (32 bytes)
_DATA_6FD23_:
.db $F1 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11
.db $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F2 $11 $F1 $13

; Data from 6FD43 to 6FFFF (701 bytes)
_DATA_6FD43_:
.db $F1 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15
.db $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F2 $15 $F1 $17
.db $02 $00 $83 $01 $02 $03 $16 $00 $83 $03 $02 $01 $04 $00 $83 $01
.db $02 $03 $16 $00 $83 $03 $02 $01 $04 $00 $83 $01 $02 $03 $16 $00
.db $83 $03 $02 $01 $04 $00 $83 $01 $02 $03 $16 $00 $83 $03 $02 $01
.db $04 $00 $83 $01 $02 $03 $16 $00 $83 $03 $02 $01 $04 $00 $83 $01
.db $02 $03 $16 $00 $83 $03 $02 $01 $04 $00 $83 $01 $02 $03 $16 $00
.db $83 $03 $02 $01 $04 $00 $83 $01 $02 $03 $16 $00 $83 $03 $02 $01
.db $04 $00 $83 $01 $02 $03 $16 $00 $83 $03 $02 $01 $04 $00 $83 $01
.db $02 $03 $16 $00 $83 $03 $02 $01 $04 $00 $83 $01 $02 $03 $16 $00
.db $83 $03 $02 $01 $04 $00 $83 $01 $02 $03 $16 $00 $83 $03 $02 $01
.db $04 $00 $83 $01 $02 $03 $16 $00 $83 $03 $02 $01 $04 $00 $83 $01
.db $02 $03 $04 $00 $83 $04 $05 $06 $08 $00 $83 $06 $05 $04 $04 $00
.db $83 $03 $02 $01 $04 $00 $83 $01 $02 $03 $04 $00 $83 $07 $08 $09
.db $08 $00 $83 $09 $08 $07 $04 $00 $83 $03 $02 $01 $04 $00 $83 $01
.db $02 $03 $03 $00 $90 $0A $0B $0C $0D $0E $0F $0E $0F $0F $0E $0F
.db $0E $0D $0C $0B $0A $03 $00 $83 $03 $02 $01 $04 $00 $83 $01 $02
.db $03 $03 $00 $85 $10 $11 $12 $13 $14 $06 $15 $85 $14 $13 $12 $11
.db $10 $03 $00 $83 $03 $02 $01 $02 $00 $02 $16 $9C $01 $02 $03 $17
.db $18 $18 $19 $1A $1B $1C $1D $1E $1D $1E $1E $1D $1E $1D $1C $1B
.db $1A $19 $18 $18 $17 $03 $02 $01 $02 $16 $02 $1F $83 $01 $02 $03
.db $03 $20 $90 $21 $22 $23 $24 $25 $26 $25 $26 $26 $25 $26 $25 $24
.db $23 $22 $21 $03 $20 $8D $03 $02 $01 $1F $1F $20 $27 $28 $29 $2A
.db $2B $2C $2D $05 $20 $81 $2E $04 $2B $81 $2E $05 $20 $8A $2D $2C
.db $2B $2A $29 $28 $27 $20 $2F $30 $04 $31 $81 $32 $06 $20 $81 $33
.db $04 $31 $81 $33 $06 $20 $81 $32 $04 $31 $82 $30 $2F $04 $20 $82
.db $34 $35 $06 $36 $81 $37 $06 $20 $81 $37 $06 $36 $82 $35 $34 $07
.db $20 $82 $34 $35 $07 $38 $81 $39 $06 $20 $81 $39 $07 $38 $82 $35
.db $34 $05 $20 $82 $34 $35 $07 $38 $81 $3A $08 $20 $81 $3A $07 $38
.db $B4 $35 $34 $20 $20 $3B $3C $3D $3E $3F $40 $41 $42 $43 $44 $45
.db $46 $47 $48 $49 $4A $4B $4C $4D $49 $4E $4F $50 $51 $49 $52 $53
.db $20 $54 $49 $55 $53 $20 $56 $49 $57 $53 $20 $58 $00 $59 $53 $20
.db $5A $00 $5B $5C $5D $03 $00 $82 $5E $5F $02 $00 $00 $1B $00 $03
.db $02 $1D $00 $03 $02 $1D $00 $03 $02 $1D $00 $03 $02 $1D $00 $03
.db $02 $1D $00 $03 $02 $1D $00 $03 $02 $1D $00 $03 $02 $1D $00 $03
.db $02 $1D $00 $03 $02 $1D $00 $03 $02 $1D $00 $03 $02 $1D $00 $03
.db $02 $16 $00 $03 $02 $04 $00 $03 $02 $16 $00 $03 $02 $04 $00 $03
.db $02 $12 $00 $08 $02 $03 $00 $03 $02 $12 $00 $08 $02 $03 $00 $03
.db $02 $12 $00 $08 $02 $02 $00 $04 $02 $12 $00 $08 $02 $03 $00 $03
.db $02 $14 $00 $81 $02 $05 $00 $02 $02 $81 $00 $04 $02 $11 $00 $03
.db $02 $06 $00 $07 $02 $13 $00 $81 $02 $06 $00 $02 $02 $17 $00 $81
.db $02 $07 $00 $02 $02 $17 $00 $81 $02 $07 $00 $02 $02 $39 $00 $00
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 28
.ORG $0000

; 1st entry of Pointer Table from DF1 (indexed by unknown)
; Data from 70000 to 70A7F (2688 bytes)
_DATA_70000_:
.incbin "Phantasy Star (UE) (V1.2) [!]_70000.inc"

; Data from 70A80 to 7143F (2496 bytes)
_DATA_70A80_:
.incbin "Phantasy Star (UE) (V1.2) [!]_70a80.inc"

; Data from 71440 to 71EBF (2688 bytes)
_DATA_71440_:
.incbin "Phantasy Star (UE) (V1.2) [!]_71440.inc"

; Data from 71EC0 to 72275 (950 bytes)
_DATA_71EC0_:
.db $08 $00 $00 $00 $15 $08 $00 $00 $1D $08 $08 $00 $1D $08 $08 $00
.db $1A $08 $0D $00 $1D $0D $0F $00 $2F $0A $1A $05 $2F $0A $1A $05
.db $80 $00 $00 $00 $40 $80 $00 $00 $C0 $80 $80 $00 $C0 $80 $80 $00
.db $C0 $80 $80 $00 $D0 $80 $80 $00 $A8 $80 $D0 $00 $B4 $90 $D8 $00
.db $17 $07 $0F $00 $08 $05 $02 $05 $17 $07 $0F $00 $17 $07 $0F $00
.db $2F $0F $1F $00 $2D $0D $1F $00 $16 $0B $04 $02 $0D $00 $00 $00
.db $74 $10 $98 $00 $D4 $10 $38 $00 $04 $48 $B0 $48 $08 $70 $80 $70
.db $B0 $80 $C0 $00 $A0 $80 $C0 $00 $C0 $00 $80 $00 $80 $00 $00 $00
.db $02 $00 $00 $00 $05 $02 $00 $00 $07 $02 $02 $00 $07 $02 $02 $00
.db $06 $02 $03 $00 $0F $03 $03 $00 $0B $03 $07 $00 $1B $03 $07 $00
.db $20 $00 $00 $00 $50 $20 $00 $00 $70 $20 $20 $00 $70 $20 $20 $00
.db $B0 $20 $60 $00 $70 $60 $E0 $00 $E8 $E0 $F0 $00 $E8 $E0 $F0 $00
.db $1D $09 $0B $00 $3E $1D $1C $01 $3A $18 $1D $00 $2B $09 $1D $00
.db $11 $00 $0E $00 $08 $06 $01 $06 $0F $00 $00 $00 $07 $00 $00 $00
.db $D0 $C0 $E0 $00 $20 $C0 $00 $C0 $90 $A0 $C0 $20 $D0 $C0 $E0 $00
.db $E8 $60 $70 $00 $28 $60 $B0 $40 $C8 $C0 $70 $80 $F0 $00 $00 $00
.db $08 $00 $00 $00 $15 $08 $00 $00 $1D $08 $08 $00 $1D $08 $08 $00
.db $1A $08 $0D $00 $1D $0D $0F $00 $2F $0A $1A $05 $2F $0A $1A $05
.db $80 $00 $00 $00 $40 $80 $00 $00 $C0 $80 $80 $00 $E0 $80 $80 $00
.db $F0 $A0 $A0 $00 $D8 $90 $B0 $00 $B8 $90 $D0 $00 $B8 $90 $D0 $00
.db $17 $07 $0F $00 $08 $07 $00 $07 $12 $0A $07 $08 $17 $07 $0F $00
.db $1D $0D $0F $00 $15 $05 $0F $00 $16 $0B $04 $02 $0D $00 $00 $00
.db $48 $20 $90 $20 $D0 $00 $20 $00 $50 $80 $20 $80 $60 $00 $80 $00
.db $C0 $80 $80 $00 $40 $00 $80 $00 $C0 $00 $80 $00 $80 $00 $00 $00
.db $08 $00 $00 $00 $15 $08 $00 $00 $1D $08 $08 $00 $1D $08 $08 $00
.db $1A $08 $0D $00 $1D $0D $0F $00 $2F $0A $1A $05 $2F $0A $1A $05
.db $80 $00 $00 $00 $40 $80 $00 $00 $C0 $80 $80 $00 $C0 $80 $80 $00
.db $E0 $80 $80 $00 $F0 $A0 $A0 $00 $B8 $90 $D0 $00 $B8 $90 $D0 $00
.db $17 $07 $0F $00 $08 $07 $00 $07 $10 $0D $02 $0D $15 $05 $0F $00
.db $18 $05 $0A $00 $1D $00 $02 $00 $18 $0F $00 $0F $0D $00 $00 $00
.db $58 $10 $B0 $00 $C8 $00 $30 $00 $50 $80 $20 $80 $50 $20 $80 $20
.db $E0 $00 $80 $00 $C0 $00 $00 $00 $C0 $80 $00 $80 $80 $00 $00 $00
.db $08 $00 $00 $00 $15 $08 $00 $00 $1D $08 $08 $00 $1D $08 $08 $00
.db $1A $08 $0D $00 $1D $0D $0F $00 $2F $0A $1A $05 $2F $0A $1A $05
.db $80 $00 $00 $00 $40 $80 $00 $00 $C0 $80 $80 $00 $C0 $80 $80 $00
.db $C0 $80 $80 $00 $D0 $80 $80 $00 $B8 $90 $D0 $00 $B4 $90 $D8 $00
.db $17 $07 $0F $00 $08 $07 $00 $07 $18 $05 $0A $00 $1D $00 $02 $00
.db $08 $00 $07 $00 $08 $07 $00 $07 $0A $05 $00 $05 $05 $00 $00 $00
.db $5C $38 $98 $20 $F4 $30 $38 $00 $CC $00 $B0 $00 $D8 $20 $00 $20
.db $B0 $40 $00 $40 $E0 $00 $00 $00 $80 $00 $00 $00 $00 $00 $00 $00
.db $02 $00 $00 $00 $05 $02 $00 $00 $07 $02 $02 $00 $0F $02 $02 $00
.db $1E $0A $0B $00 $3F $1B $1B $00 $3F $1B $1B $00 $2F $0D $1D $00
.db $20 $00 $00 $00 $50 $20 $00 $00 $70 $20 $20 $00 $70 $20 $20 $00
.db $B0 $20 $60 $00 $F0 $E0 $E0 $00 $E8 $E0 $F0 $00 $E8 $E0 $F0 $00
.db $2F $0D $1D $00 $16 $05 $0C $01 $11 $08 $06 $08 $0C $00 $03 $00
.db $07 $00 $00 $00 $05 $00 $02 $00 $06 $01 $00 $01 $03 $00 $00 $00
.db $D0 $C0 $E0 $00 $20 $C0 $00 $C0 $30 $00 $C0 $00 $F0 $20 $20 $00
.db $70 $20 $A0 $00 $50 $80 $20 $80 $B0 $40 $00 $40 $60 $00 $00 $00
.db $02 $00 $00 $00 $05 $02 $00 $00 $07 $02 $02 $00 $07 $02 $02 $00
.db $0E $02 $03 $00 $1F $0B $0B $00 $3F $1B $1B $00 $2D $09 $1B $00
.db $20 $00 $00 $00 $50 $20 $00 $00 $70 $20 $20 $00 $70 $20 $20 $00
.db $B0 $20 $60 $00 $70 $60 $E0 $00 $E8 $E0 $F0 $00 $E8 $E0 $F0 $00
.db $2E $0C $1D $00 $1B $08 $0C $00 $12 $00 $0D $00 $09 $00 $06 $00
.db $06 $00 $01 $00 $04 $03 $00 $03 $03 $00 $00 $00 $00 $00 $00 $00
.db $D0 $C0 $E0 $00 $20 $C0 $00 $C0 $A0 $80 $C0 $00 $D0 $C0 $E0 $00
.db $10 $00 $E0 $00 $10 $E0 $00 $E0 $E0 $00 $00 $00 $00 $00 $00 $00
.db $02 $00 $00 $00 $05 $02 $00 $00 $07 $02 $02 $00 $07 $02 $02 $00
.db $06 $02 $03 $00 $0F $03 $03 $00 $0B $03 $07 $00 $1B $03 $07 $00
.db $20 $00 $00 $00 $50 $20 $00 $00 $70 $20 $20 $00 $70 $20 $20 $00
.db $B0 $20 $60 $00 $70 $60

; 2nd entry of Pointer Table from DFD (indexed by unknown)
; Data from 72276 to 72934 (1727 bytes)
_DATA_72276_:
.incbin "Phantasy Star (UE) (V1.2) [!]_72276.inc"

; 1st entry of Pointer Table from DFD (indexed by unknown)
; Data from 72935 to 73CFF (5067 bytes)
_DATA_72935_:
.incbin "Phantasy Star (UE) (V1.2) [!]_72935.inc"

; Data from 73D00 to 73DFF (256 bytes)
_DATA_73D00_:
.db $82 $00 $01 $03 $00 $97 $01 $02 $03 $04 $05 $06 $07 $08 $09 $0A
.db $0B $40 $41 $42 $43 $44 $45 $46 $47 $48 $49 $00 $01 $03 $00 $84
.db $01 $00 $00 $0C $04 $00 $92 $0D $0E $0F $10 $11 $12 $13 $14 $15
.db $4A $4B $4C $4D $4E $10 $0F $0E $0D $0B $00 $95 $01 $00 $00 $16
.db $17 $18 $19 $1A $1B $1C $1D $1E $4F $50 $51 $52 $1A $19 $18 $17
.db $16 $04 $00 $81 $01 $07 $00 $93 $0C $00 $00 $1F $20 $21 $22 $23
.db $24 $25 $26 $53 $54 $55 $56 $22 $21 $20 $1F $09 $00 $81 $01 $06
.db $00 $90 $27 $28 $29 $2A $2B $2C $2D $2E $57 $58 $2C $2B $2A $29
.db $28 $27 $06 $00 $81 $01 $03 $00 $81 $0C $06 $00 $91 $2F $30 $31
.db $32 $33 $34 $35 $59 $5A $33 $32 $31 $30 $2F $00 $00 $01 $10 $00
.db $8C $36 $37 $38 $39 $3A $3B $5B $5C $5D $5E $37 $36 $05 $00 $81
.db $0C $08 $00 $81 $01 $07 $00 $88 $3C $3D $3E $3F $5F $60 $61 $3C
.db $0D $00 $81 $01 $05 $00 $81 $01 $10 $00 $81 $01 $24 $00 $81 $01
.db $17 $00 $81 $01 $0F $00 $81 $0C $05 $00 $81 $0C $14 $00 $00 $35
.db $00 $04 $02 $1B $00 $05 $02 $1B $00 $04 $02 $1A $00 $06 $02 $1A
.db $00 $05 $02 $1D $00 $02 $02 $1D $00 $81 $02 $7F $00 $0D $00 $00

; Data from 73E00 to 73E87 (136 bytes)
_DATA_73E00_:
.db $10 $00 $81 $01 $04 $00 $81 $01 $16 $00 $81 $01 $06 $00 $81 $0C
.db $04 $00 $81 $01 $03 $00 $81 $0C $03 $00 $81 $01 $07 $00 $81 $01
.db $0D $00 $81 $0C $0D $00 $81 $01 $04 $00 $81 $0C $08 $00 $81 $01
.db $06 $00 $81 $01 $27 $00 $81 $0C $0A $00 $81 $01 $06 $00 $81 $01
.db $07 $00 $81 $01 $13 $00 $81 $0C $07 $00 $81 $0C $26 $00 $81 $0C
.db $04 $00 $81 $0C $14 $00 $81 $01 $0D $00 $81 $01 $0B $00 $81 $01
.db $06 $00 $81 $0C $06 $00 $81 $01 $0B $00 $81 $0C $0F $00 $81 $01
.db $07 $00 $81 $01 $04 $00 $81 $01 $0B $00 $81 $01 $0A $00 $00 $7F
.db $00 $7F $00 $7F $00 $03 $00 $00

; Data from 73E88 to 73FFF (376 bytes)
_DATA_73E88_:
.db $10 $00 $81 $01 $1B $00 $81 $01 $06 $00 $81 $0C $04 $00 $81 $01
.db $03 $00 $81 $0C $03 $00 $81 $01 $15 $00 $81 $0C $0D $00 $81 $0C
.db $04 $00 $81 $0C $22 $00 $88 $3C $3D $3E $3F $5F $60 $61 $3C $03
.db $00 $81 $01 $03 $00 $81 $01 $0A $00 $81 $01 $03 $00 $8C $36 $37
.db $38 $39 $3A $3B $5B $5C $5D $5E $37 $36 $11 $00 $90 $01 $00 $2F
.db $30 $31 $32 $33 $34 $35 $59 $5A $33 $32 $31 $30 $2F $0A $00 $81
.db $01 $06 $00 $90 $27 $28 $29 $2A $2B $2C $2D $2E $57 $58 $2C $2B
.db $2A $29 $28 $27 $06 $00 $81 $01 $09 $00 $90 $1F $20 $21 $22 $23
.db $24 $25 $26 $53 $54 $55 $56 $22 $21 $20 $1F $0C $00 $97 $01 $00
.db $00 $16 $17 $18 $19 $1A $1B $1C $1D $1E $4F $50 $51 $52 $1A $19
.db $18 $17 $16 $00 $01 $0C $00 $92 $0D $0E $0F $10 $11 $12 $13 $14
.db $15 $4A $4B $4C $4D $4E $10 $0F $0E $0D $09 $00 $81 $0C $03 $00
.db $97 $02 $03 $04 $05 $06 $07 $08 $09 $0A $0B $40 $41 $42 $43 $44
.db $45 $46 $47 $48 $49 $00 $00 $0C $03 $00 $00 $7F $00 $0D $00 $07
.db $04 $81 $06 $16 $00 $0A $04 $02 $06 $13 $00 $09 $04 $05 $06 $11
.db $00 $0A $04 $06 $06 $10 $00 $0C $04 $04 $06 $0F $00 $0D $04 $05
.db $06 $0E $00 $0E $04 $04 $06 $0D $00 $14 $04 $06 $00 $00 $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF

.BANK 29
.ORG $0000

; Data from 74000 to 747B7 (1976 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_74000.inc"

; Data from 747B8 to 77FFF (14408 bytes)
_DATA_747B8_:
.incbin "Phantasy Star (UE) (V1.2) [!]_747b8.inc"

.BANK 30
.ORG $0000

; Data from 78000 to 7BFFF (16384 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_78000.inc"

.BANK 31
.ORG $0000

; Data from 7C000 to 7D675 (5750 bytes)
.incbin "Phantasy Star (UE) (V1.2) [!]_7c000.inc"

; Data from 7D676 to 7D686 (17 bytes)
_DATA_7D676_:
.db $30 $00 $3F $38 $3E $27 $01 $0F $2B $0B $06 $2A $25 $2F $3B $3C
.db $30

; Data from 7D687 to 7E8BC (4662 bytes)
_DATA_7D687_:
.incbin "Phantasy Star (UE) (V1.2) [!]_7d687.inc"

; Data from 7E8BD to 7FFFF (5955 bytes)
_DATA_7E8BD_:
.incbin "Phantasy Star (UE) (V1.2) [!]_7e8bd.inc"

