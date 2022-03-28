sudo apt install imwheel -y

# add to startup program
echo "[Desktop Entry]
Type=Application
Exec=imwheel
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=imwheel
Name=imwheel
Comment[en_US]=Adjust scroll wheel speed
Comment=Adjust scroll wheel speed" > ~/.config/autostart/imwheel.desktop

# create imwheel file
cat >~/.imwheelrc<<EOF
".*"
None,      Up,   Button4, 2
None,      Down, Button5, 2
Control_L, Up,   Control_L|Button4
Control_L, Down, Control_L|Button5
Shift_L,   Up,   Shift_L|Button4
Shift_L,   Down, Shift_L|Button5
EOF

# download imwheel gui script
