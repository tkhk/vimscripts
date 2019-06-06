function! s:myExCommand(...)
	if a:0 >= 1
		echo 'Hello, ' . a:1
	else
		echo 'Hello, world'
	endif
endfunction

command! -nargs=* Hello call s:myExCommand(<args>)
