function dotfiles-update
	cd ~; and git pull; and ansible-playbook provision.yml; and p
end
