function rbenv-update
    cd ~/.rbenv/plugins/ruby-build
    git pull &
    cd ~/.rbenv/
    git pull &
end
