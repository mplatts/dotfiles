# Boxdice:
alias depl='cd ~/Sites/Deploy-Scripts'
alias pro='cd ~/Sites/boom_all/pro'
alias crm='cd ~/Sites/boom_crm/'

ser(){
  depl
  thor term serenity
}

app(){
  depl
  ssh-add
  thor term app$1
}

alias keeper='ssh keeper'

api(){
  cd ~/Sites/boom_all/api
  rvm use system
}
alias tail_error="tail -f /var/log/php/php_errors.log"
alias tail_access="tail -f /usr/local/Cellar/nginx/1.2.2/logs/access.log"
alias bdip="cat /Users/mplatts/Dropbox/BoxDice/servers.txt"

alias nginx-stop="/usr/local/Cellar/nginx/1.2.2/sbin/nginx -s stop"
alias nginx-start="/usr/local/Cellar/nginx/1.2.2/sbin/nginx"

php-reload(){
	launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php53.plist
	launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php53.plist
}

# Home
alias sky="cd ~/Sites/sky_writer/"

# Common:
alias hosts='sudo vim /private/etc/hosts'
alias ea='subl ~/.yadr/custom'
alias reload='source ~/.zshrc'
alias sublime='cd /Users/mplatts/Library/Application\ Support/Sublime\ Text\ 2/Packages/'
alias snippets='subl /Users/mplatts/Library/Application\ Support/Sublime\ Text\ 2/Packages/'
alias gemo='bundle open'
alias malz='ssh deploy@50.116.45.193'
alias vimplugins='cd /Users/mplatts/.yadr/vim/bundle'

alias cheats='subl ~/Dropbox/cheats'

# Extra lazy
gqp(){
  git add -A
  git commit -m $1
  git push
}

# autocomplete search your history of commands
bindkey "^R" history-incremental-search-backward

# add some readline keys back
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# handy keybindings
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

# Automatically cd to frequently used directories http://robots.thoughtbot.com/post/10849086566/cding-to-frequently-used-directories-in-zsh
setopt auto_cd
cdpath=($HOME/Sites/ $HOME/.rvm/gems/ruby-1.9.3-p125/gems/)

# Fancy globbing http://linuxshellaccount.blogspot.com/2008/07/fancy-globbing-with-zsh-on-linux-and.html
setopt extendedglob

export EDITOR='subl'
