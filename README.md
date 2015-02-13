![tmux+eclim](https://farm4.staticflickr.com/3913/14701040171_fef78debe0_c.jpg)

##Setup Vim plugin via [Vundle](https://github.com/gmarik/Vundle.vim)
```sh
$> git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
$> git clone https://github.com/ifgh/mvimrc.git
$> mv mvimrc/vimrc ~/.vimrc
$> mkdir -p ~/.vim/colors && cp mvimrc/*.vim ~/.vim/colors
$> vim +BundleInstall +qall
```

##Setup [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
```sh
$> cd ~/.vim/bundle/YouCompleteMe && ./install.sh --clang-completer
```

to be continue ...

