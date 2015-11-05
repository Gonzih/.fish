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
	bind --erase \n
	bind --erase l
	bind --erase k

	bind --erase j

	bind --erase \cc

  bind -M default \cc 'commandline ""'
  bind -M insert -m default \cc force-repaint

	bind t up-or-search
	bind h down-or-search
	bind d backward-char
	bind n forward-char

	bind jj kill-whole-line
	bind J end-of-line delete-char
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
	bind j- kill-line
	bind j_ backward-kill-line
	bind -m insert c- kill-line force-repaint
	bind -m insert c_ backward-kill-line force-repaint
	bind y- kill-line yank
	bind y_ backward-kill-line yank

	bind -M visual d backward-char
	bind -M visual n forward-char

	bind ZZ exit
	bind ZQ exit

	bind l 'clear' force-repaint
	bind -M visual l end-selection 'clear' force-repaint
	bind -M insert \cl 'clear' force-repaint

	bind -M visual -m insert c kill-selection end-selection force-repaint

	bind -m insert c- kill-line force-repaint
	bind -m insert c_ backward-kill-line force-repaint

	bind -M normal D prevd
	bind -M normal N nextd

	bind \n execute

	bind k forward-jump and backward-char
	bind k backward-jump and forward-char
end
