sonis_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     sonis_Voices
	smpsHeaderChan      $06, $02
	smpsHeaderTempo     $02, $05

	smpsHeaderDAC       sonis_DAC
	smpsHeaderFM        sonis_FM1,	$00, $0C
	smpsHeaderFM        sonis_FM2,	$00, $09
	smpsHeaderFM        sonis_FM3,	$00, $0D
	smpsHeaderFM        sonis_FM4,	$00, $0C
	smpsHeaderFM        sonis_FM5,	$00, $0E
	smpsHeaderPSG       sonis_PSG1,	$00, $00, $00, fTone_03
	smpsHeaderPSG       sonis_PSG2,	$00, $02, $00, fTone_03

; DAC Data
sonis_DAC:
	smpsPan             panCenter, $00
	dc.b	dKick, $06, dSnare, dSnare, dSnare, $04, $02

sonis_Loop00:
	dc.b	dKick, $06, dSnare
	smpsLoop            $00, $07, sonis_Loop00
	dc.b	dKick, $04, dSnare, $01, $01, $05, $1C, $09, $06, $85, $4E
	smpsPan             panCenter, $00
	smpsStop

; FM1 Data
sonis_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $1E, nCs5, $0B, nRst, $01, nCs5, $03, nRst, nD5, $08, nRst
	dc.b	$01, nB4, $0C, nRst, $03, nCs5, nRst, nCs5, nRst, nCs5, nRst, nA4
	dc.b	nRst, nG4, $08, nRst, $01, nB4, $06, nRst, $09, nA4, $03, nA5
	dc.b	$02, nG5, $03, nE5, nEb5, nD5, $02, nRst, $01, nC5, $02, nRst
	dc.b	$01, nA4, $07, nAb5, $09, nA5, $03, nRst, $51
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM2 Data
sonis_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $18, nA2, $03, nRst, nA2, nRst, nE2, nRst, nE2, nRst, nG2
	dc.b	$09, nB2, nD3, $06, nA2, $03, nRst, nA2, nRst, nE2, nRst, nE2
	dc.b	nRst, nD3, $09, nCs3, nB2, $06, nA2, $03, nA3, $02, nG3, $03
	dc.b	nE3, nEb3, nD3, $02, nRst, $01, nC3, $02, nRst, $01, nA2, $09
	dc.b	nAb2, $05, nA2, $02, nRst, $06, nA1, $36, nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; FM3 Data
sonis_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nRst, $18, nE5, $03, nRst, nE5, nRst, nCs5, nRst, nCs5, nRst, nD5
	dc.b	$08, nRst, $01, nD5, $0C, nRst, $03, nE5, nRst, nE5, nRst, nCs5
	dc.b	nRst, nCs5, nRst, nG5, $08, nRst, $01, nG5, $0C, nRst, $1E, nEb5
	dc.b	$09, nE5, $06
	smpsSetvoice        $01
	smpsAlterVol        $FD
        smpsAlterNote       $03
	dc.b	nA1, $36, nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; FM4 Data
sonis_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsModSet          $00, $01, $02, $04
	smpsModOn
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $18, nCs5, $03, nRst, nCs5, nRst, nA4, nRst, nA4, nRst, nB4
	dc.b	$08, nRst, $01, nB4, $0C, nRst, $03, nCs5, nRst, nCs5, nRst, nA4
	dc.b	nRst, nA4, nRst, nD5, $08, nRst, $01, nD5, $0C, nRst, $1E, nC5
	dc.b	$09, nCs5, $06
	smpsSetvoice        $01
	smpsAlterVol        $FD
	dc.b	nA1, $36, nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsStop

; FM5 Data
sonis_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
        smpsAlterNote       $03
	dc.b	nRst, $1E, nCs5, $0B, nRst, $01, nCs5, $03, nRst, nD5, $08, nRst
	dc.b	$01, nB4, $0C, nRst, $03, nCs5, nRst, nCs5, nRst, nCs5, nRst, nA4
	dc.b	nRst, nG4, $08, nRst, $01, nB4, $06, nRst, $09, nA4, $03, nA5
	dc.b	$02, nG5, $03, nE5, nEb5, nD5, $02, nRst, $01, nC5, $02, nRst
	dc.b	$01, nA4, $07, nAb5, $09, nA5, $03, nRst, $51
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

sonis_PSG1:
           smpsStop
sonis_PSG2:
           smpsStop
sonis_Voices:
;	Voice $00
;	$3A
;	$51, $08, $51, $02, 	$1E, $1E, $1E, $10, 	$1F, $1F, $1F, $0F
;	$00, $00, $00, $02, 	$0F, $0F, $0F, $1F, 	$18, $24, $22, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $05
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $1F, $1F, $1F
	smpsVcDecayRate2    $02, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $22, $24, $18

;	Voice $01
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $02
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


;	Voice $03
;	$39
;	$06, $60, $30, $01, 	$3F, $3F, $5F, $5F, 	$11, $0F, $13, $09
;	$05, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$27, $2C, $97, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $06, $00
	smpsVcCoarseFreq    $01, $00, $00, $06
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $3F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $13, $0F, $11
	smpsVcDecayRate2    $03, $04, $04, $05
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $97, $2C, $27

