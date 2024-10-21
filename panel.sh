#!/bin/bash

declare -A settings=(
    ["show-apps-menu"]="false"
    ["panel-size"]="28"
    ["show-desktop-icons"]="false"
    ["systray-enabled"]="true"
    ["show-launchers"]="true"
    ["gtk-theme"]="tema"
    ["panel-opacity"]="0.8"
)


for key in "${!settings[@]}"; do
    gsettings set org.cinnamon.desktop.panel "$key" "${settings[$key]}" || {
        echo "Error al configurar $key"
        exit 1
    }
done

echo "Configuraciones de la barra de tareas aplicadas."
