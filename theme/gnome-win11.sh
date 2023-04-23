cd ~/Downloads/

# theme
git clone https://github.com/vinceliuice/Fluent-gtk-theme.git
cd Fluent-gtk-theme/
install.sh
install.sh --tweaks round
install.sh --tweaks blur
install.sh --tweaks square
cd ~/Downloads/

# cursors
git clone https://github.com/vinceliuice/Fluent-icon-theme.git
# Fluent-icon-theme/install.sh -r
cd Fluent-icon-theme/cursors/
./install.sh
cd ~/Downloads/

git clone https://github.com/refi64/stylepak.git
cd stylepak
./stylepak install-user
# ./stylepak clear-cache
cd ~/Downloads/

# icons
git clone https://github.com/yeyushengfan258/Win11-icon-theme.git
cd Win11-icon-theme/
./install.sh
cd ~/Downloads/


# Segoe UI font
git clone https://github.com/mrbvrz/segoe-ui-linux.git
cd segoe-ui-linux/
./install.sh
cd ~/Downloads/



dconf write /org/gnome/desktop/interface/cursor-theme "'Fluent-dark-cursors'"
dconf write /org/gnome/shell/extensions/user-theme/name "'Fluent-Dark-compact'"
dconf write /org/gnome/desktop/interface/gtk-theme "'Fluent-Light-compact'"

dconf write /org/gnome/desktop/interface/font-name "'Segoe UI 10'"
dconf write /org/gnome/desktop/interface/document-font-name "'Segoe UI 10'"
dconf write /org/gnome/desktop/wm/preferences/titlebar-font "'Segoe UI 10'"
