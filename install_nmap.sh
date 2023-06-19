#!/bin/bash

echo This script assumes you have alien and gdebi installed
echo
echo If you are missing alien, run:
echo sudo apt-get install alien
echo
echo If you are missing gdebi, run:
echo sudo apt-get install gdebi-core
echo

# Define the URLs of the RPM packages
nmap_rpm="https://nmap.org/dist/nmap-7.94-1.x86_64.rpm"
zenmap_rpm="https://nmap.org/dist/zenmap-7.94-1.noarch.rpm"
ncat_rpm="https://nmap.org/dist/ncat-7.94-1.x86_64.rpm"
nping_rpm="https://nmap.org/dist/nping-0.7.94-1.x86_64.rpm"

# Download the RPM packages
wget $nmap_rpm
wget $zenmap_rpm
wget $ncat_rpm
wget $nping_rpm

# Convert the RPM packages to DEB format
sudo alien --to-deb nmap-7.94-1.x86_64.rpm
sudo alien --to-deb zenmap-7.94-1.noarch.rpm
sudo alien --to-deb ncat-7.94-1.x86_64.rpm
sudo alien --to-deb nping-0.7.94-1.x86_64.rpm

# Install the DEB packages
sudo gdebi -n nmap_7.94-2_amd64.deb
sudo gdebi -n zenmap_7.94-2_all.deb
sudo gdebi -n ncat_7.94-2_amd64.deb
sudo gdebi -n nping_0.7.94-2_amd64.deb

