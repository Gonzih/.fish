function pacman-remove-orphans
	pacman -Rns (pacman -Qtdq)
end
