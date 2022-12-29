let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/workspace/myapp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/.config/nvim/lua/core/default_config.lua
badd +1 ~/.config/nvim/lua
badd +35 ~/.config/nvim/lua/core/lazy_load.lua
badd +1 src/main/java/com/example/myapp/controller/HomeController.java
badd +1 ~/workspace/myapp
badd +1 src/main/java/com/example/myapp/model/Invoice.java
badd +1 src/main/java/com/example/myapp/DemoApplication.java
badd +121 ~/workspace/springbootstudy/memo.md
badd +101 src/main/resources/templates/index.html
badd +23 build.gradle
badd +1 src/main/resources/application.properties
badd +1 src/main/resources/i18n/messages_ja.properties
badd +1 src/main/resources/i18n/messages.properties
badd +1 src/main/resources/i18n/ValidationMessages_ja.properties
badd +1 src/main/resources/i18n/ValidationMessages.properties
badd +1 src/main/resources/templates/confirm.html
argglobal
%argdel
set lines=38 columns=174
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit src/main/resources/templates/confirm.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 39 - ((16 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 39
normal! 017|
wincmd w
argglobal
if bufexists(fnamemodify("src/main/java/com/example/myapp/controller/HomeController.java", ":p")) | buffer src/main/java/com/example/myapp/controller/HomeController.java | else | edit src/main/java/com/example/myapp/controller/HomeController.java | endif
if &buftype ==# 'terminal'
  silent file src/main/java/com/example/myapp/controller/HomeController.java
endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 86 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 87 + 87) / 174)
tabnext
edit ~/workspace/springbootstudy/memo.md
argglobal
balt src/main/java/com/example/myapp/model/Invoice.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 124 - ((33 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 124
normal! 039|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
