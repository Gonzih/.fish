function tm
    tmux -2 -u has -t $argv[1]; and tmux -2 -u attach -t $argv[1]; or tmux -2 -u new -s $argv[1]
end
