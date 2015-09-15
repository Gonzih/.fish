function spacemacs-update
	echo "Updating spacemacs"
  cd ~/.emacs.d/
  git pull --rebase
  git submodule sync; git submodule update
end
