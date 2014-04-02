function fish_user_key_bindings
	fish_vi_key_bindings

	bind --erase dd
	bind --erase D
	bind --erase d\x24
	bind --erase d\x5e
	bind --erase dw
	bind --erase dW
	bind --erase diw
	bind --erase diW
	bind --erase daw
	bind --erase daW
	bind --erase de
	bind --erase dE
	bind --erase db
	bind --erase dB
	bind --erase dgE
	bind --erase dgE

	bind --erase j

	bind t up-or-search
	bind h down-or-search
	bind d backward-char
	bind n forward-char

	bind jj kill-whole-line
	bind J kill-line
	bind j\x24 kill-line
	bind j\x5e backward-kill-line
	bind jw kill-word
	bind jW kill-word
	bind jiw forward-char forward-char backward-word kill-word
	bind jiW forward-char forward-char backward-word kill-word
	bind jaw forward-char forward-char backward-word kill-word
	bind jaW forward-char forward-char backward-word kill-word
	bind je kill-word
	bind jE kill-word
	bind jb backward-kill-word
	bind jB backward-kill-word
	bind jgE backward-kill-word
	bind jgE backward-kill-word

	bind - end-of-line
	bind _ beginning-of-line

	bind -M visual d backward-char
	bind -M visual n forward-char

	bind ZZ exit
end
