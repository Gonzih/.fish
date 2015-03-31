function flux-restart
	set -l IDS (ps aux | grep fluxgui.py | awk '{print $2}')
	echo "Killing gui processes"
	kill $IDS
	echo "Killing flux processes"
	pkill xflux
	echo "Removing pid files"
	rm -f /tmp/fluxgui_gnzh.pid
	echo "Stating new flux instance"
	nohup fluxgui &
	sleep 5
end
