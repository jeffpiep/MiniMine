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
	.importzp	TOK_PUSH_VAR_LOAD
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_PUSH_0
	.importzp	TOK_PUSH_1
	.importzp	TOK_ADD
	.importzp	TOK_BIT_EXOR
	.importzp	TOK_PEEK
	.importzp	TOK_DPEEK
	.importzp	TOK_L_NOT
	.importzp	TOK_COMP_0
	.importzp	TOK_POKE
	.importzp	TOK_DPOKE
	.importzp	TOK_VAR_STORE
	.importzp	TOK_SADDR
	.importzp	TOK_GRAPHICS
	.importzp	TOK_PMGRAPHICS
	.importzp	TOK_CLOSE
	.importzp	TOK_CJUMP
	.importzp	TOK_FOR
	.importzp	TOK_FOR_NEXT
	.importzp	TOK_FOR_EXIT
;-----------------------------
; Variables
NUM_VARS = 3
	.import heap_start
	.export fb_var_I
	.export fb_var_P
	.export fb_var_W
fb_var_I	= heap_start + 4	; Word variable
fb_var_P	= heap_start + 2	; Word variable
fb_var_W	= heap_start + 0	; Word variable
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
	.byte	40
	.byte	TOK_VAR_STORE
	.byte	0
@FastBasic_LINE_3:  ; LINE 3
	.byte	TOK_BYTE
	.byte	88
	.byte	TOK_DPEEK
	.byte	TOK_VAR_STORE
	.byte	1
@FastBasic_LINE_4:  ; LINE 4
	.byte	TOK_VAR_SADDR
	.byte	2
	.byte	TOK_PUSH_0
	.byte	TOK_DPOKE
	.byte	TOK_BYTE
	.byte	255
	.byte	TOK_PUSH_1
	.byte	TOK_FOR
	.byte	TOK_L_NOT
	.byte	TOK_CJUMP
	.word	jump_lbl_1
jump_lbl_2:
@FastBasic_LINE_5:  ; LINE 5
	.byte	TOK_VAR_LOAD
	.byte	1
	.byte	TOK_PUSH_VAR_LOAD
	.byte	2
	.byte	TOK_ADD
	.byte	TOK_SADDR
	.byte	TOK_VAR_LOAD
	.byte	2
	.byte	TOK_POKE
@FastBasic_LINE_6:  ; LINE 6
	.byte	TOK_FOR_NEXT
	.byte	TOK_CJUMP
	.word	jump_lbl_2
jump_lbl_1:
	.byte	TOK_FOR_EXIT
@FastBasic_LINE_7:  ; LINE 7
jump_lbl_3:
@FastBasic_LINE_8:  ; LINE 8
	.byte	TOK_NUM
	.word	764
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_BIT_EXOR
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_3
@FastBasic_LINE_9:  ; LINE 9
	.byte	TOK_END
