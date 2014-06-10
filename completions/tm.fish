function __fish_tmux_sessions --description 'available sessions'
	tmux list-sessions -F "#S	#{session_windows} windows created: #{session_created_string} [#{session_width}x#{session_height}]#{session_attached}" | sed 's/0$//;s/1$/ (attached)/' ^/dev/null
end

complete -c tm -x # don't complete tm with files
complete -c tm -a '(__fish_tmux_sessions)' -d 'target-session'
