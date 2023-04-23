# Parametrage DNF
echo "fastestmirror=True" >> /etc/dnf/dnf.conf
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
echo "countme=False" >> /etc/dnf/dnf.conf
# Clean Cache DNF
dnf clean all
dnf upgrade -y
# Install RPM Fusion
dnf install -y --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install -y rpmfusion-free-appstream-data rpmfusion-nonfree-appstream-data 
dnf install -y rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted
# Install Codecs
dnf install -y gstreamer1-plugins-{base,good,bad-free,good-extras,bad-free-extras,ugly-free} gstreamer1-libav
dnf install -y gstreamer1-plugins-{bad-freeworld,ugly}
dnf install -y libdvdcss
# Install acceleration video
dnf -y swap mesa-va-drivers mesa-va-drivers-freeworld
dnf -y swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld
# Install Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# Paramtrage GNOME
dnf install -y gnome-packagekit gnome-tweaks gnome-extensions-app gnome-shell-extension-dash-to-dock gnome-shell-extension-appindicator
