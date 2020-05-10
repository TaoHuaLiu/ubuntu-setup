mkdir $HOME/dotfiles
echo 'alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'' >> $HOME/.bashrc
git clone --bare 'https://github.com/TaoHuaLiu/dotfiles' $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config checkout
