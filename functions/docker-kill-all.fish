function docker-kill-all
  docker kill (docker ps -q)
end
