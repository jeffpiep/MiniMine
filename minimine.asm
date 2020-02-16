; Imported symbols

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_END
	.importzp	TOK_NUM
	.importzp	TOK_BYTE
	.importzp	TOK_VAR_SADDR
	.importzp	TOK_VAR_LOAD
	.importzp	TOK_0
	.importzp	TOK_1
	.importzp	TOK_PUSH_VAR_LOAD
	.importzp	TOK_PUSH_NUM
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_PUSH_1
	.importzp	TOK_ADD
	.importzp	TOK_SUB
	.importzp	TOK_MUL
	.importzp	TOK_BIT_EXOR
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_L_NOT
	.importzp	TOK_L_OR
	.importzp	TOK_L_AND
	.importzp	TOK_NEQ
	.importzp	TOK_EQ
	.importzp	TOK_COMP_0
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_VAR_STORE
	.importzp	TOK_SADDR
	.importzp	TOK_INCVAR
	.importzp	TOK_GRAPHICS
	.importzp	TOK_PMGRAPHICS
	.importzp	TOK_CLOSE
	.importzp	TOK_JUMP
	.importzp	TOK_CJUMP
	.importzp	TOK_FOR
	.importzp	TOK_FOR_NEXT
	.importzp	TOK_FOR_EXIT
	.importzp	TOK_PAUSE
;-----------------------------
; Variables
NUM_VARS = 14
	.import heap_start
	.export fb_var_BREAK
	.export fb_var_BUILD
	.export fb_var_DX
	.export fb_var_DY
	.export fb_var_FIGHT
	.export fb_var_I
	.export fb_var_L
	.export fb_var_MOVE
	.export fb_var_N
	.export fb_var_P
	.export fb_var_Q
	.export fb_var_S
	.export fb_var_STATE
	.export fb_var_W
fb_var_BREAK	= heap_start + 12	; Word variable
fb_var_BUILD	= heap_start + 14	; Word variable
fb_var_DX	= heap_start + 22	; Word variable
fb_var_DY	= heap_start + 24	; Word variable
fb_var_FIGHT	= heap_start + 16	; Word variable
fb_var_I	= heap_start + 6	; Word variable
fb_var_L	= heap_start + 4	; Word variable
fb_var_MOVE	= heap_start + 10	; Word variable
fb_var_N	= heap_start + 26	; Word variable
fb_var_P	= heap_start + 0	; Word variable
fb_var_Q	= heap_start + 8	; Word variable
fb_var_S	= heap_start + 20	; Word variable
fb_var_STATE	= heap_start + 18	; Word variable
fb_var_W	= heap_start + 2	; Word variable
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_1:  ; LINE 1
	.byte	TOK_0
	.byte	TOK_PMGRAPHICS
	.byte	TOK_BYTE
	.byte	6
	.byte	TOK_CLOSE
	.byte	TOK_0
	.byte	TOK_GRAPHICS
@FastBasic_LINE_2:  ; LINE 2
	.byte	TOK_BYTE
	.byte	88
	.byte	TOK_DPEEK
	.byte	TOK_VAR_STORE
	.byte	0
@FastBasic_LINE_3:  ; LINE 3
	.byte	TOK_BYTE
	.byte	40
	.byte	TOK_VAR_STORE
	.byte	1
	.byte	TOK_BYTE
	.byte	24
	.byte	TOK_VAR_STORE
	.byte	2
@FastBasic_LINE_4:  ; LINE 4
	.byte	TOK_VAR_SADDR
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_1
jump_lbl_2:
@FastBasic_LINE_5:  ; LINE 5
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_BYTE
	.byte	23
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_POKE
@FastBasic_LINE_6:  ; LINE 6
	.byte	TOK_INCVAR
	.byte	0
@FastBasic_LINE_7:  ; LINE 7
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_2
jump_lbl_1:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_8:  ; LINE 8
	.byte	TOK_VAR_SADDR
	.byte	3
	.byte	TOK_PUSH_1
	.byte	TOK_DPOKE
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_3
jump_lbl_4:
@FastBasic_LINE_9:  ; LINE 9
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_POKE
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_ADD
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	128
	.byte	TOK_POKE
@FastBasic_LINE_10:  ; LINE 10
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	0
@FastBasic_LINE_11:  ; LINE 11
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_4
jump_lbl_3:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_12:  ; LINE 12
	.byte	TOK_BYTE
	.byte	88
	.byte	TOK_DPEEK
	.byte	TOK_PUSH_NUM
	.word	440
	.byte	TOK_ADD
	.byte	TOK_PUSH_BYTE
	.byte	19
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	0
@FastBasic_LINE_13:  ; LINE 13
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_14:  ; LINE 14
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_SUB
	.byte	TOK_SADDR
	.byte	TOK_BYTE
	.byte	10
	.byte	TOK_POKE
@FastBasic_LINE_15:  ; LINE 15
	.byte	TOK_0
	.byte	TOK_VAR_STORE
	.byte	5
	.byte	TOK_1
	.byte	TOK_VAR_STORE
	.byte	6
	.byte	TOK_BYTE
	.byte	2
	.byte	TOK_VAR_STORE
	.byte	7
	.byte	TOK_BYTE
	.byte	3
	.byte	TOK_VAR_STORE
	.byte	8
@FastBasic_LINE_16:  ; LINE 16
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_17:  ; LINE 17
jump_lbl_5:
@FastBasic_LINE_18:  ; LINE 18
	.byte	TOK_NUM
	.word	632
	.byte	TOK_PEEK
	.byte	TOK_VAR_STORE
	.byte	10
@FastBasic_LINE_19:  ; LINE 19
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	7
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	11
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	11
@FastBasic_LINE_20:  ; LINE 20
	.byte	TOK_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	9
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	13
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	10
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	14
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_SUB
	.byte	TOK_VAR_STORE
	.byte	12
@FastBasic_LINE_21:  ; LINE 21
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_PUSH_VAR_LOAD
	.byte	5
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_6
@FastBasic_LINE_24:  ; LINE 24
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_ADD
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_7
@FastBasic_LINE_26:  ; LINE 26
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_27:  ; LINE 27
	.byte	TOK_JUMP
	.word	jump_lbl_14
jump_lbl_7:
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_COMP_0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	12
	.byte	TOK_COMP_0
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_14
@FastBasic_LINE_28:  ; LINE 28
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	11
	.byte	TOK_ADD
	.byte	TOK_PUSH_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	12
	.byte	TOK_MUL
	.byte	TOK_ADD
	.byte	TOK_VAR_STORE
	.byte	13
@FastBasic_LINE_30:  ; LINE 30
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_PUSH_VAR_LOAD
	.byte	13
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	128
	.byte	TOK_NEQ
	.byte	TOK_L_AND
	.byte	TOK_CJUMP
	.word	jump_lbl_10
@FastBasic_LINE_31:  ; LINE 31
	.byte	TOK_VAR_LOAD
	.byte	6
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_32:  ; LINE 32
	.byte	TOK_JUMP
	.word	jump_lbl_14
jump_lbl_10:
	.byte	TOK_VAR_LOAD
	.byte	11
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_14
@FastBasic_LINE_34:  ; LINE 34
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_14
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_VAR_STORE
	.byte	4
@FastBasic_LINE_37:  ; LINE 37
	.byte	TOK_JUMP
	.word	jump_lbl_14
jump_lbl_6:
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_PUSH_VAR_LOAD
	.byte	6
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_15
@FastBasic_LINE_38:  ; LINE 38
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PEEK
	.byte	TOK_PUSH_1
	.byte	TOK_SUB
	.byte	TOK_POKE
@FastBasic_LINE_39:  ; LINE 39
	.byte	TOK_VAR_LOAD
	.byte	13
	.byte	TOK_PEEK
	.byte	TOK_COMP_0
	.byte	TOK_L_NOT
	.byte	TOK_PUSH_VAR_LOAD
	.byte	10
	.byte	TOK_PUSH_BYTE
	.byte	15
	.byte	TOK_EQ
	.byte	TOK_L_OR
	.byte	TOK_CJUMP
	.word	jump_lbl_14
	.byte	TOK_VAR_LOAD
	.byte	5
	.byte	TOK_VAR_STORE
	.byte	9
@FastBasic_LINE_40:  ; LINE 40
	.byte	TOK_JUMP
	.word	jump_lbl_14
jump_lbl_15:
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_PUSH_VAR_LOAD
	.byte	7
	.byte	TOK_NEQ
@FastBasic_LINE_41:  ; LINE 41
	.byte	TOK_CJUMP
	.word	jump_lbl_14
	.byte	TOK_VAR_LOAD
	.byte	9
	.byte	TOK_PUSH_VAR_LOAD
	.byte	8
	.byte	TOK_EQ
	.byte	TOK_CJUMP
	.word	jump_lbl_14
@FastBasic_LINE_42:  ; LINE 42
jump_lbl_14:
@FastBasic_LINE_43:  ; LINE 43
	.byte	TOK_1
	.byte	TOK_PAUSE
@FastBasic_LINE_44:  ; LINE 44
	.byte	TOK_VAR_LOAD
	.byte	0
	.byte	TOK_SADDR
	.byte	TOK_0
	.byte	TOK_POKE
@FastBasic_LINE_45:  ; LINE 45
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_SADDR
	.byte	TOK_1
	.byte	TOK_POKE
@FastBasic_LINE_46:  ; LINE 46
	.byte	TOK_VAR_LOAD
	.byte	4
	.byte	TOK_VAR_STORE
	.byte	0
@FastBasic_LINE_47:  ; LINE 47
	.byte	TOK_NUM
	.word	764
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_BIT_EXOR
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_5
@FastBasic_LINE_48:  ; LINE 48
	.byte	TOK_END
