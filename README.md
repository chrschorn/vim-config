# vim-config

I'm learning vim :)

## Setup

* Clone this repository
    - Windows: `git clone https://github.com/chrschorn/vim-config.git %USERPROFILE%\vimfiles`
    - Linux: `git clone https://github.com/chrschorn/vim-config.git ~/.vim`
* Link the `.vimrc`
    - Windows: `mklink %USERPROFILE%\_vimrc %USERPROFILE%\vimfiles\vimrc`
    - Linux: `ln ~/.vim/vimrc ~/.vimrc`
* Start (g)vim and run `:PlugInstall`

## Notes

Use a Vim with Python 3.5 support (and other languages): [bintray.com](https://bintray.com/micbou/generic/vim)

### YouCompleteMe
* Run `python install.py` after plugin installation
* Make sure vim platform matches python2/3 platform! 32/64bit
* Python 2 build *has* to be >=2.7.12
