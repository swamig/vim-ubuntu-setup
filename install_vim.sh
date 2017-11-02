source ~/.profile


sudo apt-get update
sudo apt-get install build-essential cmake3
sudo apt-get install python-dev python3-dev
sudo apt-get install exuberant-ctags
sudo apt-get install mono-complete
sudo apt-get install build-essential libssl-dev

cd
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
bash install_nvm.sh

source ~/.profile

nvm install 8.9.0
nvm use 8.9.0

curl -sSf https://static.rust-lang.org/rustup.sh | sh


mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim



git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript


git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git ~/.vim/bundle/nerdtree-git-plugin

git clone https://github.com/tpope/vim-sensible.git
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

git clone https://github.com/flowtype/vim-flow.git ~/.vim/bundle/vim-flow
git clone https://github.com/tpope/vim-rails.git ~/.vim/bundle/vim-rails
vim -u NONE -c "helptags vim-rails/doc" -c q

git clone https://github.com/StanAngeloff/php.vim.git ~/.vim/bundle/php.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone git://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter


cd ~/.vim/bundle/YouCompleteMe
./install.py --all
cd

vim +PluginInstall +qall
