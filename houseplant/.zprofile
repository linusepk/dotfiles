export GTK_THEME="Adwaita:dark"
export QT_STYLE_OVERRIDE="Adwaita-Dark"
export GTK2_RC_FILES="/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    Hyprland
fi
