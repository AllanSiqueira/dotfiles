sudo apt install -y python-software-properties software-properties-common dconf-cli
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt update
sudo apt install -y vim git curl gnupg build-essential software-properties-common tmux fish silversearcher-ag
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt install rvm
sudo usermod -a -G rvm `whoami`
curl -L https://get.oh-my.fish | fish
omf install bira
mkdir -p ~/.vim/colors
curl https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -o ~/.vim/colors/solarized.vim
mkdir -p ~/.config
mkdir -p ~/.fonts && cp fonts/* ~/.fonts && fc-cache -vf ~/.fonts
ln ./fish ~/.config/fish
ln ./vim ~/.vim
ln tmux.conf ~/.tmux.conf
ln vimrc ~/.vimrc
vim -N \"+set hidden\" \"+syntax on\" +PlugInstall +qall
chsh -s $(which fish)
