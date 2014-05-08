" ~/Dropbox/dotfiles/vim/sessions/restart.vim:
" Vim session script.
" Created by session.vim 2.4.9 on 14 January 2014 at 11:30:13.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egm
silent! set guifont=Monaco:h12,Ubuntu\ Mono:h18,Inconsolata:h17
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 0 | filetype indent off | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'gruvbox' | colorscheme gruvbox | endif
call setqflist([{'lnum': 2171, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary.active,'}, {'lnum': 2179, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary {'}, {'lnum': 2197, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary:hover,'}, {'lnum': 2198, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary:focus,'}, {'lnum': 2199, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary:active,'}, {'lnum': 2200, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary.active,'}, {'lnum': 2201, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary.disabled,'}, {'lnum': 2202, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary[disabled] {'}, {'lnum': 2207, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary:active,'}, {'lnum': 2208, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary.active {'}, {'lnum': 3011, 'col': 18, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-group.open .btn-primary.dropdown-toggle {'}, {'lnum': 3048, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/libs/css/bootstrap.css', 'text': '.btn-primary .caret,'}, {'lnum': 5, 'col': 2, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/sass/common/buttons.scss', 'text': '.btn-primary {'}, {'lnum': 66, 'col': 6, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/sass/pages/topic.scss', 'text': '    .btn-primary {'}, {'lnum': 20, 'col': 28, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/class.hbs', 'text': '        <button class="btn btn-primary search"><div class="sprite-magnifying-glass-white"></div></button>'}, {'lnum': 6, 'col': 28, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/errors/not_found.hbs', 'text': '	<p><a href="/" class="btn btn-primary">Head back to start</a></p>'}, {'lnum': 12, 'col': 41, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/join_class.hbs', 'text': '            <input type="submit" class="btn-primary btn pull-right" value="{{ t ''authentication.authorize'' }}" />'}, {'lnum': 23, 'col': 35, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/login.hbs', 'text': '      <input type="submit" class="btn-primary" value="{{ t "login.signin" }}" />'}, {'lnum': 10, 'col': 28, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/messages.hbs', 'text': '        <button class="btn btn-primary refresh">{{ t "shared.refresh" }}</button>'}, {'lnum': 16, 'col': 28, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/messages.hbs', 'text': '        <button class="btn btn-primary new-message">{{ t "messages.new" }}</button>'}, {'lnum': 45, 'col': 32, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/messages.hbs', 'text': '        <a href="#" class="btn btn-primary submit">{{ t "messages.send" }}</a>'}, {'lnum': 15, 'col': 27, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/messaging/container.hbs', 'text': '            <a class="btn btn-primary new-message">{{ t "messages.new" }}</a>'}, {'lnum': 11, 'col': 24, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/messaging/conversation_details.hbs', 'text': '    <button class="btn btn-primary">Send</button>'}, {'lnum': 15, 'col': 29, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/messaging/conversation_form.hbs', 'text': '     <a href="#" class="btn btn-primary submit">{{ t "messages.send" }}</a>'}, {'lnum': 30, 'col': 40, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/profile.hbs', 'text': '                <a href="#" class="btn btn-primary" id="save-profile-picture">Save</a>'}, {'lnum': 28, 'col': 68, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/settings.hbs', 'text': '              <button id="update_profile" type="submit" class="btn btn-primary wide">{{ t "settings.submit" }}</button>'}, {'lnum': 38, 'col': 34, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/settings.hbs', 'text': '          <a href="#" class="btn btn-primary wide clear-cache">{{ t "settings.clear_cache" }}</a>'}, {'lnum': 55, 'col': 39, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/signup.hbs', 'text': '          <input type="submit" class="btn-primary btn-block" value="{{ t "signup.signup" }}" />'}, {'lnum': 75, 'col': 39, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/signup.hbs', 'text': '          <input type="submit" class="btn-primary btn-block" value="{{ t "login.signin" }}" />'}, {'lnum': 27, 'col': 25, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/topic.hbs', 'text': '          <a class="btn btn-primary" href="#topic/{{id}}/quiz_sandbox">Play again</a>'}, {'lnum': 48, 'col': 28, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/topic.hbs', 'text': '        <button class="btn btn-primary">{{ t "shared.back" }}</button>'}, {'lnum': 44, 'col': 51, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/ui-elements/topic_quiz_question.hbs', 'text': '          <button id="submit-question" class="btn btn-primary" type="submit">{{ t "topics.send_message" }}</button>'}, {'lnum': 73, 'col': 22, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'src/templates/ui-elements/topic_quiz_question.hbs', 'text': '  <button class="btn btn-primary next-question-trigger">'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Sites/quipper/q-learn-play
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 config.ru
badd +78 src/sass/pages/profile.scss
badd +0 src/templates/profile.hbs
badd +60 src/coffee/views/profile.coffee
badd +60 src/coffee/views/app.coffee
badd +22 src/sass/common/buttons.scss
badd +2171 src/libs/css/bootstrap.css
badd +19 src/templates/class.hbs
badd +0 test/views/profile_test.coffee
badd +29 test/src/setup.coffee
badd +106 src/coffee/core/api.coffee
badd +0 src/coffee/core/user.coffee
badd +0 test/src/fake_server.coffee
badd +0 src/coffee/views/sidebar.coffee
silent! argdel *
edit src/templates/profile.hbs
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 90 + 91) / 182)
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 090|
wincmd w
" argglobal
edit src/sass/pages/profile.scss
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 33 - ((32 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 023|
wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 90 + 91) / 182)
tabedit test/views/profile_test.coffee
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 90 + 91) / 182)
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
" argglobal
edit src/coffee/views/profile.coffee
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 72 - ((30 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
72
normal! 025|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 90 + 91) / 182)
tabedit src/coffee/views/sidebar.coffee
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 90 + 91) / 182)
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 27 - ((26 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 055|
wincmd w
" argglobal
edit src/coffee/core/user.coffee
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 028|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 90 + 91) / 182)
tabedit test/src/setup.coffee
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 90 + 91) / 182)
" argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 013|
wincmd w
" argglobal
edit test/src/fake_server.coffee
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 016|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 91) / 182)
exe 'vert 2resize ' . ((&columns * 90 + 91) / 182)
tabnext 2
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=atI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

tabnext 2
2wincmd w
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
