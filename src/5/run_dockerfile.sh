#!/bin/bash

#sudo docker build . -t myserver5:felisasi5
#sudo docker images
#sudo docker run -d -p 80:81 --rm --name server myserver5:felisasi5
## sudo docker ps -a
## curl localhost:80
## curl localhost:80/status
#sudo docker stop server


#!/bin/bash

export DOCKER_CONTENT_TRUST=1
sudo docker build . -t myserver5:felisasi5
sudo docker images
sudo dockle -ak NGINX_GPGKEY -ak NGINX_GPGKEY_PATH myserver5:felisasi5
export DOCKER_CONTENT_TRUST=0