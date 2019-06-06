let s:words = { 'fizz': 1, 'buzz': 1, 'fizzbuzz': 1 }

function! CompleteFizzBuzz(findstart, base)
	if a:findstart != 0
		let prev_pos = col('.') -1
		let before_str = getline('.')[0:prev_pos]
		let last_word = matchstr(before_str, '\m\(\k\+\)$')
		let prefix_len = len(last_word)
		let start_pos = prev_pos - prefix_len
		return prefix_len <= 0 ? -1 : start_pos
	else
		let items = filter(keys(s:words), 'stridx(v:val, a:base) == 0')
		return items
	endif
endfunction

set completefunc=CompleteFizzBuzz

