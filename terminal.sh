#!/bin/bash

if ! command -v zsh &> /dev/null; then
    sudo apt install -y zsh
fi

chsh -s $(which zsh)

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/installer/master/tools/install.sh)"
fi

echo 'ZSH_THEME="agnoster"' >> ~/.zshrc

echo -e "\n# Personalizar el prompt\nPS1='\[\e[32m\]\u@\h:\[\e[36m\]\w\[\e[0m\]$ '" >> ~/.bashrc

if ! command -v tilix &> /dev/null; then
    sudo apt install -y tilix
fi

echo "Configuraciones de terminal aplicadas. Por favor, reinicia tu terminal."
