
write-host "Installing tools inside the WSL distro..."
Ubuntu run apt install python2.7 python-pip -y
Ubuntu run apt install python-numpy python-scipy -y
Ubuntu run pip install pandas
write-host "Finished installing tools inside the WSL distro"

