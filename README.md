# talos_developer_kit
A development kit which will create a workspace for you, download all the packages, compile them, and have you ready to go for development on the most recent build. 

####### Usage ########

# if you want to install a hydro workspace on Ubuntu 12.04, use this command. It will install all of the talos sourcecode ROS packages developed by UBC Open Robotics.
./make_talos_hydro.sh 

# if you want to install the indigo workspace on Ubuntu 14.04
./make_talos_indigo.sh

#Careful
Do not run these commands as root, otherwise the directories will be created with root and the catkin_make and catkin_init_workspace commands will be unable to do their job. If you see "command not found" this is likely the case and you will have to

rm -rf ~/talos_hydro_workspace

and redo the above command without sudo
