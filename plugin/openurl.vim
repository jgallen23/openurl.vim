
function! s:OpenUrl()
  let line = matchstr(getline("."), '[a-z]*:\/\/[^ ,;\)]*')
  let line = escape (line, "#?&;|%")
  if line != ""
    silent exec "!open '".line."'"
    redraw!
  else
    echo "No URI found in line."
  endif
endfunction
command! OpenUrl call s:OpenUrl()
