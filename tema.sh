#!/bin/bash

THEME_NAME="tema"

mkdir -p ~/.themes/$THEME_NAME/gtk-3.0
mkdir -p ~/.themes/$THEME_NAME/gtk-2.0

cat <<EOL > ~/.themes/$THEME_NAME/gtk-3.0/gtk.css
headerbar {
    background-color: #3B4252;
    color: #ECEFF4;
}

.button {
    background-color: #4C566A;
    color: #ECEFF4;
    border-radius: 5px;
    padding: 5px 10px;
}

.button:hover {
    background-color: #5E81AC;
}

.entry {
    background-color: #2E3440;
    color: #D8DEE9;
    border: 1px solid #4C566A;
    border-radius: 5px;
}

.entry:focus {
    border-color: #88C0D0;
}

label {
    color: #D8DEE9;
}
EOL

cat <<EOL > ~/.themes/$THEME_NAME/gtk-2.0/gtkrc
style "my-style"
{
    bg[NORMAL] = "#3B4252"
    fg[NORMAL] = "#ECEFF4"
    bg[PRELIGHT] = "#4C566A"
}

widget_class "*" style "my-style"
EOL

gsettings set org.cinnamon.desktop.interface gtk-theme "$THEME_NAME" || {
    echo "Error al aplicar el tema."
    exit 1
}

echo "Tema GTK '$THEME_NAME' creado y aplicado."
