function pacman-remove-orphans
	sudo pacman -Rns (pacman -Qtdq)
end
