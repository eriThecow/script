#!/bin/bash

gsettings set org.cinnamon.desktop.effect-windows theme "none"
gsettings set org.cinnamon.desktop.effect-windows use-blur false
gsettings set org.cinnamon.desktop.background show-desktop-icons false
gsettings set org.cinnamon.desktop.interface enable-animations false
gsettings set org.cinnamon.desktop.interface gtk-enable-fallback false


if command -v compiz &> /dev/null; then
    gsettings set org.compiz.core:/org/compiz/profiles/unity/plugins/core/ active-plugins "['move', 'resize', 'place', 'wall', 'scale', 'switcher', 'expo']"
else
    echo "Compiz no está instalado. Saltando configuración de plugins."
fi


if ! grep -q "vm.swappiness" /etc/sysctl.conf; then
    echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf
    sudo sysctl -p
fi

echo "Optimización del sistema completada."
