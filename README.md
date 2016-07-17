# vim-config

I'm learning vim :)

## Setup

* Clone this repository
    - Windows: `git pull --recurse-submodules git@github.com:chrschorn/vim-config.git %USERPROFILE%\vimfiles\`
    - Linux: `git pull --recurse-submodules git@github.com:chrschorn/vim-config.git ~/.vim`
* Link the `.vimrc`
    - Windows: `mklink %USERPROFILE%\_vimrc %USERPROFILE%\vimfiles\vimrc`
    - Linux: `ln ~/.vim/vimrc ~/.vimrc`
* Start (g)vim and run `:PluginInstall`
