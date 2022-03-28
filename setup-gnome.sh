touch ~/Templates/Empty\ Document

# gnome tweaks
dconf write /org/gnome/desktop/wm/preferences/button-layout "':minimize,maximize,close'"
dconf write /org/gnome/mutter/center-new-windows true

# gnome settings
dconf write /org/gnome/system/location/enabled false
dconf write /org/gnome/desktop/session/idle-delay "uint32 900"
dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled true
dconf write /org/gnome/settings-daemon/plugins/color/night-light-schedule-automatic false
dconf write /org/gnome/settings-daemon/plugins/color/night-light-schedule-from "19.0"

# fonts
dconf write /org/gnome/desktop/interface/font-name "'Ubuntu 11'"
dconf write /org/gnome/desktop/interface/document-font-name "'Ubuntu 11'"
dconf write /org/gnome/desktop/interface/monospace-font-name "'Monospace 11'"
dconf write /org/gnome/desktop/wm/preferences/titlebar-font "'Ubuntu Bold 11'"
# dconf reset /org/gnome/desktop/interface/monospace-font-name

# nautilus
dconf write /org/gnome/nautilus/preferences/executable-text-activation "'ask'"
dconf write /org/gnome/nautilus/icon-view/default-zoom-level "'small'"

# hotkeys
# dconf write /org/gnome/settings-daemon/plugins/media-keys/terminal ['<Primary><Alt>t']
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/
dconf reset -f /org/gnome/desktop/wm/keybindings/
dconf reset -f /org/gnome/shell/keybindings/
dconf write /org/gnome/desktop/wm/keybindings/switch-applications "@as []"
dconf write /org/gnome/desktop/wm/keybindings/switch-applications-backward "@as []"
dconf write /org/gnome/shell/keybindings/toggle-message-tray "@as []"

dconf write /org/gnome/settings-daemon/plugins/media-keys/home "['<Super>e']"
dconf write /org/gnome/desktop/wm/keybindings/show-desktop "['<Super>d']"
dconf write /org/gnome/desktop/wm/keybindings/switch-windows "['<Alt>Tab']"
dconf write /org/gnome/desktop/wm/keybindings/switch-windows-backward "['<Shift><Alt>Tab']"


dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Primary><Alt>t'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'gnome-terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Launch terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"

dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/binding "'<Super>v'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/command "'/usr/bin/diodon'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/name "'Launch clipboard'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"

# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/binding "'<Primary>Escape'"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/command "'xkill'"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/name "'Launch xkill'"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/']"



#
#
# Setup Gnome extensions
#
#

# sudo apt autoremove --purge -y gnome-shell-extension*
# sudo apt install -y gnome-shell-extension-prefs gnome-shell-extensions gnome-tweaks

# xdg-open https://extensions.gnome.org/extension/19/user-themes/
# xdg-open https://extensions.gnome.org/extension/307/dash-to-dock/
# xdg-open https://extensions.gnome.org/extension/1160/dash-to-panel/
# xdg-open https://extensions.gnome.org/extension/3628/arcmenu/
# xdg-open https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/
# xdg-open https://extensions.gnome.org/extension/615/appindicator-support/
# xdg-open https://extensions.gnome.org/extension/906/sound-output-device-chooser/
# xdg-open https://extensions.gnome.org/extension/7/removable-drive-menu/
# xdg-open https://extensions.gnome.org/extension/779/clipboard-indicator/
# xdg-open https://extensions.gnome.org/extension/1112/screenshot-tool/
# xdg-open https://extensions.gnome.org/extension/277/impatience/
# xdg-open https://extensions.gnome.org/extension/3733/tiling-assistant/


dconf reset /org/gnome/shell/enabled-extensions
dconf reset /org/gnome/shell/disabled-extensions

#
# desktop icons
#
dconf reset -f /org/gnome/shell/extensions/ding/
dconf write /org/gnome/shell/extensions/ding/icon-size "'small'"
dconf write /org/gnome/shell/extensions/ding/keep-arranged true
dconf write /org/gnome/shell/extensions/ding/arrangeorder "'KIND'"


#
# dash to panel
#
dconf reset -f /org/gnome/shell/extensions/dash-to-panel/
dconf write /org/gnome/shell/extensions/dash-to-panel/appicon-margin 1
dconf write /org/gnome/shell/extensions/dash-to-panel/appicon-padding 6
dconf write /org/gnome/shell/extensions/dash-to-panel/hot-keys true
dconf write /org/gnome/shell/extensions/dash-to-panel/panel-positions "'{\"0\":\"TOP\"}'"
dconf write /org/gnome/shell/extensions/dash-to-panel/panel-sizes "'{\"0\":40}'"
dconf write /org/gnome/shell/extensions/dash-to-panel/panel-element-positions "'{\"0\":[{\"element\":\"showAppsButton\",\"visible\":false,\"position\":\"stackedTL\"},{\"element\":\"activitiesButton\",\"visible\":false,\"position\":\"stackedTL\"},{\"element\":\"leftBox\",\"visible\":true,\"position\":\"stackedTL\"},{\"element\":\"taskbar\",\"visible\":true,\"position\":\"stackedTL\"},{\"element\":\"centerBox\",\"visible\":true,\"position\":\"stackedBR\"},{\"element\":\"rightBox\",\"visible\":true,\"position\":\"stackedBR\"},{\"element\":\"dateMenu\",\"visible\":true,\"position\":\"stackedBR\"},{\"element\":\"systemMenu\",\"visible\":true,\"position\":\"stackedBR\"},{\"element\":\"desktopButton\",\"visible\":true,\"position\":\"stackedBR\"}]}'"
dconf write /org/gnome/shell/extensions/dash-to-panel/dot-style-unfocused "'DOTS'"
dconf write /org/gnome/shell/extensions/dash-to-panel/dot-position "'TOP'"
dconf write /org/gnome/shell/extensions/dash-to-panel/tray-padding 4
dconf write /org/gnome/shell/extensions/dash-to-panel/status-icon-padding 8
dconf write /org/gnome/shell/extensions/dash-to-panel/show-favorites false
dconf write /org/gnome/shell/extensions/dash-to-panel/isolate-workspaces true
dconf write /org/gnome/shell/extensions/dash-to-panel/isolate-monitors true

dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-1 "['<Ctrl><Super>1']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-10 "['<Ctrl><Super>0']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-2 "['<Ctrl><Super>2']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-3 "['<Ctrl><Super>3']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-4 "['<Ctrl><Super>4']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-5 "['<Ctrl><Super>5']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-6 "['<Ctrl><Super>6']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-7 "['<Ctrl><Super>7']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-8 "['<Ctrl><Super>8']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-9 "['<Ctrl><Super>9']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-1 "['<Ctrl><Super>KP_1']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-10 "['<Ctrl><Super>KP_0']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-2 "['<Ctrl><Super>KP_2']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-3 "['<Ctrl><Super>KP_3']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-4 "['<Ctrl><Super>KP_4']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-5 "['<Ctrl><Super>KP_5']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-6 "['<Ctrl><Super>KP_6']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-7 "['<Ctrl><Super>KP_7']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-8 "['<Ctrl><Super>KP_8']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-ctrl-hotkey-kp-9 "['<Ctrl><Super>KP_9']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-1 "['<Super>1']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-10 "['<Super>0']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-2 "['<Super>2']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-3 "['<Super>3']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-4 "['<Super>4']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-5 "['<Super>5']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-6 "['<Super>6']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-7 "['<Super>7']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-8 "['<Super>8']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-9 "['<Super>9']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-1 "['<Super>KP_1']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-10 "['<Super>KP_0']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-2 "['<Super>KP_2']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-3 "['<Super>KP_3']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-4 "['<Super>KP_4']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-5 "['<Super>KP_5']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-6 "['<Super>KP_6']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-7 "['<Super>KP_7']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-8 "['<Super>KP_8']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-hotkey-kp-9 "['<Super>KP_9']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-1 "['<Shift><Super>1']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-10 "['<Shift><Super>0']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-2 "['<Shift><Super>2']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-3 "['<Shift><Super>3']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-4 "['<Shift><Super>4']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-5 "['<Shift><Super>5']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-6 "['<Shift><Super>6']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-7 "['<Shift><Super>7']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-8 "['<Shift><Super>8']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-9 "['<Shift><Super>9']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-1 "['<Shift><Super>KP_1']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-10 "['<Shift><Super>KP_0']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-2 "['<Shift><Super>KP_2']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-3 "['<Shift><Super>KP_3']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-4 "['<Shift><Super>KP_4']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-5 "['<Shift><Super>KP_5']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-6 "['<Shift><Super>KP_6']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-7 "['<Shift><Super>KP_7']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-8 "['<Shift><Super>KP_8']"
dconf write /org/gnome/shell/extensions/dash-to-panel/app-shift-hotkey-kp-9 "['<Shift><Super>KP_9']"


#
# arc menu
#
dconf reset -f /org/gnome/shell/extensions/arcmenu/
dconf write /org/gnome/shell/extensions/arcmenu/menu-hotkey "'Super_L'"
dconf write /org/gnome/shell/extensions/arcmenu/activate-on-hover true
dconf write /org/gnome/shell/extensions/arcmenu/menu-layout "'Brisk'"
dconf write /org/gnome/shell/extensions/arcmenu/menu-button-icon "'Distro_Icon'"
dconf write /org/gnome/shell/extensions/arcmenu/distro-icon 0
dconf write /org/gnome/shell/extensions/arcmenu/enable-custom-arc-menu true

# simply dark theme
dconf write /org/gnome/shell/extensions/arcmenu/separator-color "'rgb(63,62,64)'"
dconf write /org/gnome/shell/extensions/arcmenu/border-color "'rgb(63,62,64)'"
dconf write /org/gnome/shell/extensions/arcmenu/highlight-color "'rgba(238, 238, 236, 0.1)'"
dconf write /org/gnome/shell/extensions/arcmenu/menu-arrow-size 0
dconf write /org/gnome/shell/extensions/arcmenu/menu-border-size 0
dconf write /org/gnome/shell/extensions/arcmenu/menu-color "'rgba(28, 28, 28, 0.98)'"
dconf write /org/gnome/shell/extensions/arcmenu/menu-corner-radius 0
dconf write /org/gnome/shell/extensions/arcmenu/menu-foreground-color "'rgba(211, 218, 227, 1)'"
dconf write /org/gnome/shell/extensions/arcmenu/menu-margin 0


#
# dash to dock
#
dconf reset -f /org/gnome/shell/extensions/dash-to-dock/
dconf write /org/gnome/shell/extensions/dash-to-dock/multi-monitor true
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'LEFT'"
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed true
dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height true
dconf write /org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size 32
dconf write /org/gnome/shell/extensions/dash-to-dock/isolate-workspaces true
dconf write /org/gnome/shell/extensions/dash-to-dock/isolate-monitors true
dconf write /org/gnome/shell/extensions/dash-to-dock/show-trash false
dconf write /org/gnome/shell/extensions/dash-to-dock/show-mounts false
dconf write /org/gnome/shell/extensions/dash-to-dock/click-action "'minimize'"
dconf write /org/gnome/shell/extensions/dash-to-dock/scroll-action "'cycle-windows'"
dconf write /org/gnome/shell/extensions/dash-to-dock/custom-theme-shrink true
dconf write /org/gnome/shell/extensions/dash-to-dock/running-indicator-style "'DOTS'"
dconf write /org/gnome/shell/extensions/dash-to-dock/running-indicator-dominant-color true
dconf write /org/gnome/shell/extensions/dash-to-dock/transparency-mode "'DYNAMIC'"

