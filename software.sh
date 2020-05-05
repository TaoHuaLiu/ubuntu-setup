#!/bin/bash

# Ubuntu (GTK) 20.04 setup script.

# Initial Software
echo "Updating"
sudo apt update
sudo apt upgrade
echo
echo "INSTALLING SOFTWARE"
echo
PKGS=(

# SYSTEM
'net-tools'
'htop'
'git'
'tlp'
'aria2'
# 'snapd'
'grep'
'curl'
'wget'
'aptitude'
'caffeine'
'transmission'
'transmission-daemon'
'exfat-fuse'
'vifm'
'locate'
'gufw'

# ZSH 
'zsh'
'zsh-syntax-highlighting'
'zsh-autosuggestions'
'autojump'

# VIM
'vim'
'vim-gtk3'
'vim-ultisnips'
'vim-snippets'
'vim-airline'
'vim-airline-themes'

# EDITORS
'nano'
'emacs'
'idle'

# CJK
'fonts-noto-cjk-extra'
'xfonts-intl-chinese-big'
'fcitx5'

# FONTS
'fonts-firacode'
'fonts-powerline'
'fonts-noto-extra'
'fonts-roboto'

# TYPESETTING
'texlive-full'
'pandoc'
'pandoc-citeproc'
'gnuplot'
'groff'

# OFFICE
'thunderbird'
'calibre'
'zathura'
'anki'
'mpv'
'speedcrunch'
'vlc'
'redshift-gtk'
'imagemagick'

# Other libreoffice lang
'libreoffice'
'libreoffice-l10n-es'
'libreoffice-l10n-fr'
'libreoffice-l10n-zh-cn'

# Pageantry
'papirus-icon-theme'
'yaru-theme-gtk'
'yaru-theme-icon'
'materia-gtk-theme'

# VIRTUALIZATION
'qemu'
'virt-manager'
'gnome-boxes'

# CLI TOOLS 
'terminator'
'xclip'
'scrot'
'screen'
'yank'
'gawk'
'bat'

# NET
'rclone'
'qutebrowser')

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install -y "$PKG"
done

echo
echo "Done!"
echo


# Add me to any groups I might need to be a part of:

# sudo adduser $USER vboxusers

# Gotta reboot now:
sudo apt update && sudo apt upgrade # -y

sudo snap install code bitwarden
echo $'n'$"*** All done! Please reboot now. ***"
# snaps
