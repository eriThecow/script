#!/bin/bash

WALLPAPER="./wallpaper.png"

if [ -f "$WALLPAPER" ]; then
    gsettings set org.cinnamon.desktop.background picture-uri "file://$WALLPAPER"
    echo "Fondo de pantalla cambiado a: $WALLPAPER"
else
    echo "El archivo $WALLPAPER no existe."
    exit 1 
fi
