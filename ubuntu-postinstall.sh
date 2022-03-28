#
# Enable firewall
#
sudo ufw enable

#
# Remove snap
#
sudo snap remove gtk-common-themes
sudo snap remove $(snap list | awk '!/^Name|core$/ {print $1}')
sudo apt autoremove --purge -y snapd gnome-software-plugin-snap
sudo echo "Package: snapd
Pin: release *
Pin-Priority: -1" > /etc/apt/preferences.d/nosnap.pref
rm -rf ~/snap/


#
# Remove trackers
# Remove useless apps
#
sudo apt autoremove --purge -y apport ubuntu-report whoopsie
sudo apt autoremove --purge -y aisleriot gnome-{mahjongg,mines,sudoku}
sudo apt autoremove --purge -y gnome-{calendar,contacts,maps,music,photos,weather}
sudo apt autoremove --purge -y cheese evince hplip remmina rhythmbox seahorse shotwell simple-scan thunderbird totem transmission* usb-creator* yelp
rm -rf /etc/xml/ /usr/share/apport/


#
# Install drivers
# Install apps
#
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
sudo apt update && apt upgrade -y
sudo apt install -y ubuntu-restricted-extras rar
sudo # apt install ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi

sudo apt install -y gnome-tweaks gnome-shell-extension-prefs
sudo apt install -y firefox firefox-locale-en synaptic gdebi gufw tlp fonts-crosextra-carlito fonts-crosextra-caladea
sudo apt install -y libreoffice-writer libreoffice-calc libreoffice-gnome
sudo apt install -y bijiben gnome-documents gnome-usage





#
# Vanilla Gnome
#
# sudo apt install -y gdm3 gnome-session 
# sudo apt autoremove --purge -y ubuntu-{session,settings}

# sudo apt install -y vanilla-gnome-default-settings
# sudo sed -i "s/gdm3-theme/gdm-theme/g" /var/lib/dpkg/info/vanilla-gnome-default-settings.postinst /var/lib/dpkg/info/vanilla-gnome-default-settings.prerm && apt install -f
# sudo apt install -y vanilla-gnome-desktop


