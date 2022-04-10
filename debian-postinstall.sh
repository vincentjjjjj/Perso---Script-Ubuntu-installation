#
# Install
#
sudo apt install -y bash-completion



#
# GRUB
#
sudo sed "s/GRUB_TIMEOUT=.*/GRUB_TIMEOUT=0/" -i /etc/default/grub
sudo update-grub



#
# Uninstall
#

# accessories
sudo apt autoremove --purge -y fcitx* gnome-maps gnome-weather hdate-applet mlterm* xiterm+thai yelp

# games
sudo apt autoremove --purge -y aisleriot atomix five-or-more four-in-a-row gnome-2048 gnome-chess gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-robots gnome-sudoku gnome-taquin gnome-tetravex hitori iagno lightsoff quadrapassel swell-foop tali

# graphics
sudo apt autoremove --purge -y simple-scan shotwell

# internet
sudo apt autoremove --purge -y evolution thunderbird* transmission-*

# office
sudo apt autoremove --purge -y evince gnome-contacts goldendict libreoffice*

# sound & video
sudo apt autoremove --purge -y cheese gnome-sound-recorder gnome-music rhythmbox* totem*

# system tools
sudo apt autoremove --purge -y anthy* im-config mozc* xterm*



#
# Install
#

sudo apt install -y intel-microcode
# sudo apt install -y amd-microcode
sudo apt install -y build-essential dkms linux-headers-$(uname -r)

# drivers
sudo echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
sudo apt install -y ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi

# flatpak
# sudo apt install -y flatpak gnome-software-plugin-flatpak
# sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt install -y fonts-crosextra-carlito fonts-crosextra-caladea

