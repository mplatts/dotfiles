ln -s /Users/mplatts/Dropbox/dotfiles/zsh/ /Users/mplatts/.yadr/custom/zsh

# ZSH

There are five startup files that zsh will read commands from:

$ZDOTDIR/.zshenv # Sets env variables and editor etc. - is sourced on all invocations of the shell
$ZDOTDIR/.zprofile
$ZDOTDIR/.zshrc # This should just point to pretzo - is sourced in interactive shells
$ZDOTDIR/.zlogin # is sourced in login shells
$ZDOTDIR/.zlogout # is sourced when login shells exit


# Prezto
git submodule add https://github.com/sorin-ionescu/prezto.git
cd prezto
git pull
cd ..
git submodule update

.zprezto
.zpreztorc

.vimrc # Vim settings such as show line numbers


.vim #


Old
.vim -> /Users/mplatts/.yadr/vim