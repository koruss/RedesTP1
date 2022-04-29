RedesTP1

Algunos commands

Arrancar docker:
sudo systemctl start docker


volarse todos los containers 
> docker rm -f $(docker ps -a -q)

volarse todas las imagenes
> docker rmi $(docker images -q)

volarse todas las redes 
> docker network prune

comandos de alpine 
https://platformengineer.com/install-vi-bash-curl-on-alpine-linux/