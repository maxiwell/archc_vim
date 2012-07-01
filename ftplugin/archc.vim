" ArchC filetype plugin, based in Vim's c.vim

if exists("b:did_ftplugin")
    finish
endif

let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo-=C

setlocal fo-=t fo+=croql

if exists('&ofu')
  setlocal ofu=ccomplete#Complete
endif

setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/

let &cpo = s:cpo_save
unlet s:cpo_save
