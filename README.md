# vim-config

My Vim configuration.

## Setup

* Run the command below, depending on the OS. It clones this repository, links the vimrc to its corresponding location and installs the plugins.

```
// Windows
git clone https://github.com/chrschorn/vim-config.git %USERPROFILE%\vimfiles && mklink /H %USERPROFILE%\_vimrc %USERPROFILE%\vimfiles\vimrc && vim -c ":PlugInstall"

// Linux
git clone https://github.com/chrschorn/vim-config.git ~/.vim && ln ~/.vim/vimrc ~/.vimrc && vim -c ":PlugInstall"
```

## Font

Install **Hack** from  [github.com/source-foundry/Hack](https://github.com/source-foundry/Hack/releases). It comes with Powerline characters that can be used in the airline plugin.


## Notes

Download a Vim with Python 3.x (and other languages) support: [https://bintray.com/micbou/generic/vim](https://bintray.com/micbou/generic/vim)

### Plugin YouCompleteMe
* Run `python install.py` inside `.vim/<pluginfolder>/YouCompleteMe/` after plugin installation if automatic install fails
* Make sure vim platform matches python2/3 platform! 32/64bit
* Python 2 build *has* to be >=2.7.12
