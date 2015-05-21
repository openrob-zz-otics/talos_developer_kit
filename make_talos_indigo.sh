#!/bin/sh
# Author: Devon Ash
# License: BSD, 
# Organization: UBC Open Robotics.

BLACK='\033[0;31m'
RED='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLACK}Initializing developer workspace...${NC}\n"
# Setup file structure
mkdir -p ~/talos_hydro_workspace/src
catkin_init_workspace ~/talos_hydro_workspace/src
echo -e "\n${RED}Initializing developer workspace [Complete]${NC}\n"

echo -e "\n${BLACK}Downloading packages...${NC}\n"
# Download packages
rosinstall indigo .
mv hydro/talos_* ~/talos_hydro_workspace/src
echo -e "\n${RED}Downloading packages [Complete]${NC}\n"

echo -e "\n${BLACK}Building packages...${NC}\n"
# Build packages
cd ~/talos_hydro_workspace/
catkin_make
echo -e "\n${RED}Building packages [Complete]${NC}\n"

rm -rf indigo/talos_*
echo -e "\n${YELLOW}You're ready to start developing!${NC}\n"
