echo "Installing"
if [ ! -d "~/.vim/bundle/" ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
fi
cp .vimrc ~/.vimrc;
