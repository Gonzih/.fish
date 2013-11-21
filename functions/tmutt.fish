function tmutt
	set -l CMD mutt
	tmux -2 -u has -t $CMD; and tmux -2 -u attach -t $CMD; or tmux -2 -u new -s $CMD $CMD
end
