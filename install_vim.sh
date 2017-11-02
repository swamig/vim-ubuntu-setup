sh ~/.profile


sudo apt-get update
sudo apt-get install -y cmake
sudo apt-get install -y build-essential cmake3
sudo apt-get install -y python-dev python3-dev
sudo apt-get install -y exuberant-ctags
sudo apt-get install -y mono-complete
sudo apt-get install -y build-essential libssl-dev
sudo apt-get install -y vim-nox-py2
sudo apt-get install -y golang

cd
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
sh install_nvm.sh

sh ~/.profile

~/.nvm/nvm.sh install 8.9.0
~/.nvm/nvm.sh use 8.9.0
sh ~/.profile


mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

i#curl -sSf https://static.rust-lang.org/rustup.sh | sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript


git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin

git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

git clone https://github.com/flowtype/vim-flow.git ~/.vim/bundle/vim-flow
git clone https://github.com/tpope/vim-rails.git ~/.vim/bundle/vim-rails
vim -u NONE -c "helptags vim-rails/doc" -c q

git clone https://github.com/StanAngeloff/php.vim.git ~/.vim/bundle/php.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
./install.py --all
cd

vim +PluginInstall +qall
