function tm
  if test $argv[1] = "."
    set __TM_SESSION_NAME (pwd | sed "s#^$HOME/##")
  else
	  set __TM_SESSION_NAME $argv[1]
  end

  set -l name $__TM_SESSION_NAME

  tmux -2 -u has -t $name; and tmux -2 -u attach -d -t $name; or tmux -2 -u new -s $name
end
