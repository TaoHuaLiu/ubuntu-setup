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
'tree'
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
'ranger'
'locate'
'gufw'
'fzf'

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
'r-cran-rmarkdown'
# 'r-cran-reticulate'

# OFFICE
'thunderbird'
'calibre'
'zathura'
'zathura-ps'
'zathura-djvu'
'anki'
'mpv'
'newsboat'
'cmus'
'speedcrunch'
'redshift-gtk'
'imagemagick'
'ghostscript'
'detox'

# Other libreoffice lang
'libreoffice'
'libreoffice-l10n-es'
'libreoffice-l10n-fr'
'libreoffice-l10n-zh-cn'

# Pageantry
'papirus-icon-theme'
'materia-gtk-theme'

# VIRTUALIZATION
'qemu'
'virt-manager'
'gnome-boxes'

# CLI TOOLS 
'xclip'
'scrot'
'screen'
'yank'
'gawk'
'at'
'fzf'

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
