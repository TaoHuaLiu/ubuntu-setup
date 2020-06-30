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
'xbacklight'
'powertight'
'aria2'
'tree'
'tasksel'
'suckless-tools'
'rofi'
# 'snapd'
'grep'
'curl'
'wget'
'aptitude'
'caffeine'
'transmission'
'exfat-fuse'
'vifm'
'ranger'
'locate'
'gufw'
'fzf'
'nmap'

# ZSH 
'zsh'
'zsh-syntax-highlighting'
'zsh-autosuggestions'
'autojump'

# VIM
'vim'
'nvim'

# EDITORS
'nano'

# CJK
'fonts-noto'
'fonts-noto-cjk-extra'
'xfonts-intl-chinese-big'
'fcitx5'

# FONTS
'fonts-firacode'
'fonts-powerline'
'fonts-noto-extra'
'fonts-roboto'
'fonts-mononoki'

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
'redshift'
'imagemagick'
'ghostscript'
'detox'
'pdfgrep'
'pdftk'

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

# CLI TOOLS 
'alacritty'
'xclip'
'scrot'
'screen'
'yank'
'gawk'
'at'

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

# Gotta reboot now:
sudo apt update && sudo apt upgrade # -y

groupadd video
usermod -a -G video hugo
# sudo snap install code bitwarden
echo "*** All done! Please reboot now. ***"
# snaps
