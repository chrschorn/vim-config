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

### Font

Install `Hack` from [https://github.com/chrissimpkins/Hack](https://github.com/chrissimpkins/Hack). It comes with Powerline characters!


## Notes

Download a Vim with Python 3.5 support (and other languages): [https://bintray.com/micbou/generic/vim](https://bintray.com/micbou/generic/vim)

### Plugin YouCompleteMe
* Run `python install.py` inside `.vim/<pluginfolder>/YouCompleteMe/` after plugin installation if automatic install fails
* Make sure vim platform matches python2/3 platform! 32/64bit
* Python 2 build *has* to be >=2.7.12
