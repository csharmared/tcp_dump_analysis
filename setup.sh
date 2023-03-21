#!/bin/bash

echo "Enter the sudo user's username "
read usname
echo "Enter the sudo password "
read creds
echo "Enter the Source node IP/Fqdn : "
read sauce
echo "Enter the Destination IP/Fqdn : "
read dts
echo "Enter the Source Port: "
read sport
echo "Enter the Destination Port: "
read dport
echo "Enter the Source interface: "
read sin



git pull

echo $creds | sudo -S

echo "########################  Requirements For analysis ############################"
sudo yum install -y tcpdump wireshark
test=`echo $?`
sudo adduser wireshark
demon=`echo $?`
sudo usermod -a -G wireshark $usname
gadd=`echo $?`

echo "################# Simple Checks ####################"

if [ $test -gt 0 ]
then
   echo "package installed."
elif [ $demon -gt 0 ]
then
   echo "wireshark user exists"
elif [ $gadd -gt 0 ]
then
   echo "user is added to the wireshark group"
pwd
fi

echo "Enter the sudo password "
read creds
echo "Enter the sudo password "
read creds
echo "####################################################"


