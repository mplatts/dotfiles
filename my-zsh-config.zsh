source ./my-zsh-theme.zsh

# Boxdice:
alias depl='cd ~/Sites/Deploy-Scripts'
alias pro='cd ~/Sites/boom_all/pro'
alias crm='cd ~/Sites/boom_crm/'

api-start(){
  nginx-start
  api
  bundle exec unicorn -p 8090
}

pro-start(){
  pro
  bundle exec unicorn -p 8091
}

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
alias mysql-start='sudo mysqld_safe --innodb_file_per_table=1 &'
alias mysql-stop='ps -ef | grep mysqld | grep -v grep | awk '{print "sudo kill "$2}' | sh'
alias memcached='/usr/local/bin/memcached'


# Common:
alias hosts='sudo vim /private/etc/hosts'
alias ea='subl ~/.zsh.after/after.zsh'
alias reload='source ~/.zshrc'
alias sublime='cd /Users/mplatts/Library/Application\ Support/Sublime\ Text\ 2/Packages/'
alias snippets='subl /Users/mplatts/Library/Application\ Support/Sublime\ Text\ 2/Packages/'
alias gemo='bundle open'
alias vimplugins='cd /Users/mplatts/.yadr/vim/bundle'
alias learn='cat ~/Dropbox/dotfiles/to-learn.txt'
alias elearn='subl ~/Dropbox/dotfiles/to-learn.txt'
alias cheats='subl ~/Dropbox/cheats'
alias ve='vi ~/.vimrc'
alias ze='vi ~/.zshrc'
alias zr='source ~/.zshrc'

# Servers
alias quicktimesheets='ssh -i ~/.ssh/quicktimesheets.pem insight4@lb1.ovm.qiktimes.com'
alias malz='ssh deploy@50.116.45.193' # Personal Linode

# Text Editor
alias subl-keymap='subl ~/Dropbox/sublime_settings/Matts-keymap.sublime-keymap'
alias subl-snippets='subl ~/Dropbox/sublime_settings/Matts-snippets.sublime-snippet'

# Extra lazy
gqp(){
  git add -A
  git commit -m $1
  git push
}

alias psa="ps aux"
alias psg="ps aux | grep "

# Bindings
bindkey "^R" history-incremental-search-backward
bindkey "^H" beginning-of-line
bindkey "^L" end-of-line
bindkey '^[[1;5C' forward-word # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word # [Ctrl-LeftArrow] - move backward one word

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

alias install_dotfiles='cd Dropbox/dotfiles && thor dotfiles:install'

# Show human friendly numbers and colors
alias df='df -h'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias du='du -h -d 2'

# show me files matching "ls grep"
alias llg='ll | grep'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vi .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias c='pry -r ./config/environment' # Rails 3
alias co='script/console --irb=pry' # Rails 2

# Vim/ctags "mctags = make ctags", using the ruby specific version
# to save some time
alias mctags=~/.bin/run_tags.rb #'/opt/local/bin/ctags -Rf ./tags *'


