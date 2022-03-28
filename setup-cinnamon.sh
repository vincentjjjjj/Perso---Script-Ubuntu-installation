# dconf reset -f /
gsettings list-schemas | grep org.cinnamon | xargs -n 1 gsettings reset-recursively

# panel
dconf write /org/cinnamon/panels-enabled "['1:0:top']"
dconf write /org/cinnamon/panels-height "['1:40']"
dconf write /org/cinnamon/enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:2:grouped-window-list@cinnamon.org:2', 'panel1:right:0:systray@cinnamon.org:3', 'panel1:right:1:xapp-status@cinnamon.org:4', 'panel1:right:2:notifications@cinnamon.org:5', 'panel1:right:3:printers@cinnamon.org:6', 'panel1:right:4:removable-drives@cinnamon.org:7', 'panel1:right:5:keyboard@cinnamon.org:8', 'panel1:right:6:favorites@cinnamon.org:9', 'panel1:right:7:network@cinnamon.org:10', 'panel1:right:8:sound@cinnamon.org:11', 'panel1:right:9:power@cinnamon.org:12', 'panel1:right:10:calendar@cinnamon.org:13']"

# fonts
dconf write /org/cinnamon/desktop/interface/font-name "'Cantarell 10'"
dconf write /org/nemo/desktop/font "'Cantarell 10'"
dconf write /org/gnome/desktop/interface/document-font-name "'Sans 10'"
dconf write /org/gnome/desktop/interface/monospace-font-name "'Monospace 10'"
dconf write /org/cinnamon/desktop/wm/preferences/titlebar-font "'Cantarell 10'"

# sounds
dconf reset -f /org/cinnamon/sounds/
dconf write /org/cinnamon/sounds/login-enabled false
dconf write /org/cinnamon/sounds/map-enabled false
dconf write /org/cinnamon/sounds/close-enabled false
dconf write /org/cinnamon/sounds/minimize-enabled false
dconf write /org/cinnamon/sounds/maximize-enabled false
dconf write /org/cinnamon/sounds/unmaximize-enabled false
dconf write /org/cinnamon/sounds/notification-enabled false

# hotkeys
dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/binding "['<Super>v']"
dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/command "'/usr/bin/diodon'"
dconf write /org/cinnamon/desktop/keybindings/custom-keybindings/custom0/name "'clipboard'"
dconf write /org/cinnamon/desktop/keybindings/custom-list "['__dummy__', 'custom0']"

# theme
dconf write /org/cinnamon/desktop/wm/preferences/theme "'Mint-Y'"
dconf write /org/cinnamon/desktop/interface/icon-theme "'Yaru-MATE'"
dconf write /org/cinnamon/desktop/interface/gtk-theme "'Yaru-MATE'"
dconf write /org/cinnamon/desktop/interface/cursor-theme "'Yaru-MATE'"
dconf write /org/cinnamon/theme/name "'Mint-Y-Dark'"

# background image
dconf write /org/cinnamon/desktop/background/slideshow/slideshow-enabled true
dconf write /org/cinnamon/desktop/background/slideshow/random-order true
dconf write /org/cinnamon/desktop/background/slideshow/image-source "'xml:///usr/share/cinnamon-background-properties/linuxmint-ulyssa.xml'"
# dconf write /org/cinnamon/desktop/background/picture-uri "'file:///usr/share/backgrounds/linuxmint-ulyssa/sberger_swing_of_life.jpg'"
# dconf write /org/cinnamon/desktop/background/picture-options "'zoom'"

