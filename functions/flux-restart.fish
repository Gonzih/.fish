function flux-restart
	kill (ps aux | grep fluxgui.py | awk '{print $2}')
	rm -f /tmp/fluxgui_$USER.pid
	nohup fluxgui &
end
