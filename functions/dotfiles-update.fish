function dotfiles-update
	cd ~; and git pull; and ansible-playbook provision.yml

	echo "done!"
end
