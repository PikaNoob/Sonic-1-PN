music98_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     music98_Voices
	smpsHeaderChan      $06, $00
	smpsHeaderTempo     $02, $05

	smpsHeaderDAC       music98_DAC
	smpsHeaderFM        music98_FM1,	$00, $09
	smpsHeaderFM        music98_FM2,	$00, $08
	smpsHeaderFM        music98_FM3,	$00, $0F
	smpsHeaderFM        music98_FM4,	$00, $0F
	smpsHeaderFM        music98_FM5,	$00, $11

; DAC Data
music98_DAC:
	dc.b	dSnare, $03, $03, $03, $03, $01, $02, dKick, $09

music98_Loop00:
	smpsNoteFill        $03
	dc.b	dKick, $06
	smpsNoteFill        $0C
	dc.b	dSnare
	smpsLoop            $00, $02, music98_Loop00
	smpsJump            music98_Loop00

; FM1 Data
music98_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $18

music98_Jump01:
	dc.b	nRst, $06, nD5, $0B, nRst, $01, nD5, $03, nRst, nEb5, $08, nRst
	dc.b	$01, nC5, $0C, nRst, $03, nD5, nRst, nD5, nRst, nD5, nRst, nBb4
	dc.b	nRst, nAb4, $08, nRst, $01, nC5, $0C, nRst, $09, nD5, $0B, nRst
	dc.b	$01, nD5, $03, nRst, nEb5, $08, nRst, $01, nC5, $0C, nRst, $03
	dc.b	nD5, nRst, nD5, nRst, nD5, nRst, nBb4, nRst, nAb4, $08, nRst, $01
	dc.b	nC5, $0C, nRst, $33
	smpsAlterVol        $FD
	dc.b	nBb4, $02, nC5, nD5, nEb5, nF5, nG5, nC5, nD5, nE5, nF5, nG5
	dc.b	nA5, nD5, nE5, nFs5, nG5, nA5, nB5, nFs5, nG5, nA5, nB5, nCs6
	dc.b	nD6
	smpsAlterVol        $03
	smpsJump            music98_Jump01

; FM2 Data
music98_FM2:
	smpsSetvoice        $01
	dc.b	nRst, $18

music98_Loop05:
	dc.b	nBb2, $03, nRst, nBb2, nRst, nF2, nRst, nF2, nRst, nAb2, $09, nG2
	dc.b	$06, nAb2, $03, nG2, $06, nBb2, $03, nRst, nBb2, nRst, nF2, nRst
	dc.b	nF2, nRst, nEb3, $09, nD3, $06, nEb3, $03, nD3, $06
	smpsLoop            $00, $02, music98_Loop05

music98_Loop06:
	dc.b	nC2, $03, nAb1, $09, nBb1, $03, nRst, nC2, nRst
	smpsLoop            $00, $02, music98_Loop06
	dc.b	nBb1, $06, nC2, nD2, nE2, nC2, $03, nD2, nE2, nFs2, nD2, nE2
	dc.b	nFs2, nG2
	smpsJump            music98_Loop05

; FM3 Data
music98_FM3:
	smpsSetvoice        $00
	dc.b	nRst, $18

music98_Loop03:
	dc.b	nF4, $03, nRst, nF4, nRst, nD4, nRst, nD4, nRst, nEb4, $09, $0F
	dc.b	nF4, $03, nRst, nF4, nRst, nD4, nRst, nD4, nRst, nAb4, $09, $0F
	smpsLoop            $00, $02, music98_Loop03
	dc.b	nRst, $03

music98_Loop04:
	dc.b	nAb3, $09, nBb3, $03, nRst, $0C
	smpsLoop            $00, $03, music98_Loop04
	dc.b	nAb3, $09, nBb3, $03, nRst, $09
	smpsJump            music98_Loop03

; FM4 Data
music98_FM4:
	smpsSetvoice        $00
	dc.b	nRst, $18

music98_Loop01:
	dc.b	nD4, $03, nRst, nD4, nRst, nBb3, nRst, nBb3, nRst, nC4, $09, $0F
	dc.b	nD4, $03, nRst, nD4, nRst, nBb3, nRst, nBb3, nRst, nEb4, $09, $0F
	smpsLoop            $00, $02, music98_Loop01
	dc.b	nRst, $03

music98_Loop02:
	dc.b	nC4, $09, nD4, $03, nRst, $0C
	smpsLoop            $00, $03, music98_Loop02
	dc.b	nC4, $09, nD4, $03, nRst, $09
	smpsJump            music98_Loop01

; FM5 Data
music98_FM5:
	smpsSetvoice        $00
	smpsAlterNote       $03
	dc.b	nRst, $18

music98_Jump00:
	dc.b	nRst, $06, nD5, $0B, nRst, $01, nD5, $03, nRst, nEb5, $08, nRst
	dc.b	$01, nC5, $0C, nRst, $03, nD5, nRst, nD5, nRst, nD5, nRst, nBb4
	dc.b	nRst, nAb4, $08, nRst, $01, nC5, $0C, nRst, $09, nD5, $0B, nRst
	dc.b	$01, nD5, $03, nRst, nEb5, $08, nRst, $01, nC5, $0C, nRst, $03
	dc.b	nD5, nRst, nD5, nRst, nD5, nRst, nBb4, nRst, nAb4, $08, nRst, $01
	dc.b	nC5, $0C, nRst, $33
	smpsAlterVol        $FD
	dc.b	nBb4, $02, nC5, nD5, nEb5, nF5, nG5, nC5, nD5, nE5, nF5, nG5
	dc.b	nA5, nD5, nE5, nFs5, nG5, nA5, nB5, nFs5, nG5, nA5, nB5, nCs6
	dc.b	nD6
	smpsAlterVol        $03
	smpsJump            music98_Jump00

music98_Voices:
;	Voice $00
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $01
;	$3A
;	$61, $3C, $14, $31, 	$9C, $DB, $9C, $DA, 	$04, $09, $04, $03
;	$03, $01, $03, $00, 	$1F, $0F, $0F, $AF, 	$21, $47, $31, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $03, $06
	smpsVcCoarseFreq    $01, $04, $0C, $01
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $1A, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $04, $09, $04
	smpsVcDecayRate2    $00, $03, $01, $03
	smpsVcDecayLevel    $0A, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $31, $47, $21

