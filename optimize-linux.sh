#
# Execute sudo without password. [Be careful]
#
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER

#
# Reduce swap to force your Linux system to use your RAM, instead of your hard drive
#
isswap=$(grep -c vm.swappiness /etc/sysctl.conf)
if [[ "$isswap" -eq "0" ]]
then
	echo "vm.swappiness=10
	" | sudo tee -a /etc/sysctl.conf
fi

#
# The noatime option fully disables writing file access times to the drive every time you read a file
#
isnoatime=$(grep -c noatime /etc/fstab)
if [[ "$isnoatime" -eq "0" ]]
then
	sudo sed -i "s/errors=/noatime,errors=/g" /etc/fstab
fi

#
# Enable firewall
#
sudo apt install -y ufw gufw
sudo ufw enable