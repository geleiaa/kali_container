#!/bin/bash

echo "Principal kali machine..."
echo "Build image ou Run container??"
echo "1 - Build"
echo -e "2 - Run\n"

read OPT

if [[ $OPT == 1 ]]
	then echo -e "\nBuilding kali image...\n"
	sudo docker build -t kaliprincipal .

elif [[ $OPT == 2 ]]
	then echo -e "\nRunning kali container...\n"
	sudo docker run --rm -it --network=host --mount source=kali_vol,target=/home/docker_vol --name=kali_princ --privileged kaliprincipal
fi


