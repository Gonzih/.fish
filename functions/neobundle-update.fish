function neobundle-update
  vim -c "execute \"NeoBundleInstall!\""
  cd ~/.vim/bundle/vimproc.vim; and rm -f autoload/*.so; and make
  cd
end
