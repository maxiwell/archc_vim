" Syntax file for ArchC, based in the cpp syntax

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword acArchDecl AC_ARCH ARCH_CTOR
syn keyword acArch     ac_wordsize ac_fetchsize ac_format ac_mem ac_tlm_port
syn keyword acArch     ac_tml_intr_port ac_regbank ac_regbank ac_reg ac_pipe
syn keyword acArch     ac_isa set_endian ac_tlm2_port ac_tlm2_intr_port

syn keyword acISADecl  AC_ISA ISA_CTOR
syn keyword acISAkey   ac_intr ac_instr ac_asm_map set_asm set_decoder set_cycles
syn keyword acISAkey   pseudo_instr
syn keyword acUtilFunc ac_stall ac_flush delay get_name get_size get_cycles
syn keyword acUtilVar  ac_pc ac_cylcle ac_instr_counter ac_annul

" Comments
syn keyword acTodo          contained TODO FIXME XXX
syn region  acCommentL      start="//" skip="\\$" end="$" keepend
syn region  acComment       matchgroup=acCommentStart start="/\*" end="\*/" extend

" Strings
syn region  acString   start=+L\="+ skip=+\\\\\|\\"+ end=+"+

" Blocks, allow folding of blocks
syn region  acBlock          start="{" end="}" transparent fold

" Highlighting
hi def link acArchDecl      Function
hi def link acISADecl       Function
hi def link acArch          Keyword
hi def link acISAkey        Keyword
hi def link acUtilFunc      Function
hi def link acUtilVar       Constant
hi def link acString        String
hi def link acTodo          Todo
hi def link acComment       Comment
hi def link acCommentL      Comment
hi def link acCommentStart  Comment

let b:current_syntax = "archc"
