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

let b:current_syntax = "archc"
