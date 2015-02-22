function tor-browser
	docker run -it \
				-e DISPLAY=unix$DISPLAY \
				-v /dev/snd:/dev/snd --privileged \
				--name tor-browser \
				jess/tor-browser
end
