function docker-rm-all
  docker rm (docker ps -a -q)
end
