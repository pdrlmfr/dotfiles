#!/bin/sh
#==============================================================================
#title           :Dotfiles Auto Installer WIP
#author          :PDR
#date            :23/01/2022
#==============================================================================

echo -e "==============================================================================
                            Dotfiles auto installer
                                    by: PDR
==============================================================================\n"

read -p "Press any key to continue..."

if [[ $OSTYPE == 'darwin'* ]]; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    echo -e "\nHomebrew Installed!\n"
    
    # Install Terminal tools
    brew install --cask iterm2
    echo -e "\nITERM2 Installed!\n"
    
    brew install fish
    echo -e "\nFish shell Installed!\n"
    
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    echo -e "\nFisher Installed!\n"
    
    fisher install ilancosman/tide@v5
    echo -e "\nTide V5 Installed!\n"
    
    fisher install jethrokuan/z
    echo -e "\nZ Installed!\n"
    
    fisher install jorgebucaran/nvm.fish
    echo -e "\nNVM for Fish Installed!\n"
    
    brew install peco
    echo -e "\nPeco Installed!\n"
    
    brew install exa
    echo -e "\nEXA Installed!\n"
    
    brew install ghq
    echo -e "\nGHQ Installed!\n"
    
    
    # Install Tools
    brew install --cask visual-studio-code
    echo -e "\nVSCODE Installed!\n"
    
    brew install --cask min
    echo -e "\nMin Browser Installed!\n"
    
    brew install --cask numi
    echo -e "\nNumi Installed!\n"
    
    brew install --cask mark-text
    echo -e "\nMarkText installed Installed!\n"
    
    # Copy configs to root
    cp .config ~/.config
    echo -e "\n.config folder copied!\n"
    
    bash .mac-settings.sh
    echo -e "\nSettings Installed!\n"
    
    echo -e "All DONE! "
    echo -e "\nBYE!"
    timeout 2 sleep 1
fi
