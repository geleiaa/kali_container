#!/bin/bash

echo "Bug Bounty kali machine..."
echo "Build image ou Run container??"
echo "1 - Build"
echo -e "2 - Run\n"

read OPT

if [[ $OPT == 1 ]]
	then echo -e "\nBuilding bbkali image...\n"
	sudo docker build -t bbkali .

elif [[ $OPT == 2 ]]
	then echo -e "\nRunning kali container...\n"
	sudo docker run --rm -it --network=host --mount source=bbkali_vol,target=/home/docker_vol --name=bb_kali --privileged bbkali
fi

