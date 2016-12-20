# vim-config

I'm learning vim :)

## Setup

* Clone this repository and link the vimrc (see below)
* Start (g)vim and run `:PlugInstall`

```
// Windows
git clone https://github.com/chrschorn/vim-config.git %USERPROFILE%\vimfiles && mklink /H %USERPROFILE%\_vimrc %USERPROFILE%\vimfiles\vimrc

// Linux
git clone https://github.com/chrschorn/vim-config.git ~/.vim && ln ~/.vim/vimrc ~/.vimrc
```

### Font

Install `Hack` from [https://github.com/chrissimpkins/Hack](https://github.com/chrissimpkins/Hack). It comes with Powerline characters!


## Notes

Download a Vim with Python 3.5 support (and other languages): [https://bintray.com/micbou/generic/vim](https://bintray.com/micbou/generic/vim)

### Plugin YouCompleteMe
* Run `python install.py` inside `.vim/<pluginfolder>/YouCompleteMe/` after plugin installation if automatic install fails
* Make sure vim platform matches python2/3 platform! 32/64bit
* Python 2 build *has* to be >=2.7.12
