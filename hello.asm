; Imported symbols

; Exported symbols
	.export bytecode_start
	.exportzp NUM_VARS

	.include "atari.inc"

; TOKENS:
	.importzp	TOK_END
	.importzp	TOK_NUM
	.importzp	TOK_CSTRING
	.importzp	TOK_PUSH_BYTE
	.importzp	TOK_BIT_EXOR
	.importzp	TOK_PEEK
	.importzp	TOK_COMP_0
	.importzp	TOK_PRINT_STR
	.importzp	TOK_PRINT_EOL
	.importzp	TOK_CJUMP
;-----------------------------
; Variables
NUM_VARS = 0
	.import heap_start
;-----------------------------
; Bytecode
bytecode_start:
@FastBasic_LINE_1:  ; LINE 1
	.byte	TOK_CSTRING
	.byte	11, "hello world"
	.byte	TOK_PRINT_STR
	.byte	TOK_PRINT_EOL
@FastBasic_LINE_2:  ; LINE 2
jump_lbl_1:
@FastBasic_LINE_3:  ; LINE 3
	.byte	TOK_NUM
	.word	764
	.byte	TOK_PEEK
	.byte	TOK_PUSH_BYTE
	.byte	255
	.byte	TOK_BIT_EXOR
	.byte	TOK_COMP_0
	.byte	TOK_CJUMP
	.word	jump_lbl_1
@FastBasic_LINE_4:  ; LINE 4
	.byte	TOK_END
