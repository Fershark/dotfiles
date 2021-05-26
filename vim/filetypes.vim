" File for loading specific commands depending the file type

" Java
function JavaSettings() 
  setlocal shiftwidth=4 tabstop=4
  let g:java_highlight_functions="indent"
endfunction
autocmd FileType java call JavaSettings()

" Groovy
function GroovySettings()
  setlocal shiftwidth=4 tabstop=4
endfunction
autocmd FileType groovy call GroovySettings()

" TEX
function TexSettings() 
  LLPStartPreview
endfunction
autocmd FileType tex call TexSettings()

" Blade
function BladeSettings() 
  setlocal shiftwidth=4 tabstop=4
endfunction
autocmd FileType blade call BladeSettings()

" PHP
function PhpSettings() 
  setlocal shiftwidth=4 tabstop=4
endfunction
autocmd FileType php call PhpSettings()
