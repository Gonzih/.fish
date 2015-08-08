function docker-rmi-all
  docker rmi -f (docker images -q)
end
