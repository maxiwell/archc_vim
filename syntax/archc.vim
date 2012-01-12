" Syntax file for ArchC, based in the cpp syntax

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if version < 600
  so <sfile>:p:h/cpp.vim
else
  runtime! syntax/cpp.vim
  unlet b:current_syntax
endif

" Keywords
syn keyword acArchDecl AC_ARCH
syn keyword acArch     ac_wordsize ac_fetchsize ac_format ac_mem ac_tlm_port
syn keyword acArch     ac_tml_intr_port ac_regbank ac_regbank ac_reg ac_pipe
syn keyword acArch     ARCH_CTOR ac_isa set_endian

syn keyword acISA      AC_ISA ac_intr ISA_CTOR ac_instr ac_asm_map set_asm set_decoder set_cycles pseudo_instr
syn keyword acUtil     ac_stall ac_flush delay get_name get_size get_cycles ac_annul
syn keyword acUtil     ac_pc ac_cylcle ac_instr_counter

" Highlighting
hi def link acArchDecl Macro
hi def link acArch     Statement
hi def link acISA      Operator
hi def link acUtil     Function

let b:current_syntax = "archc"
