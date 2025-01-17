let s:lcd = fnameescape(getcwd())
silent! exec "lcd" expand('%:p:h')
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let s:flow_path = system('PATH=$(npm bin):$PATH && which flow')
exec "lcd" s:lcd
let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
let b:syntastic_javascript_flow_exec = substitute(s:flow_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
