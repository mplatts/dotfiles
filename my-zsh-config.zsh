source /Users/mplatts/Dropbox/dotfiles/my-zsh-theme.zsh

# Web Dev
alias browserstack='java -jar ~/Downloads/BrowserStackTunnel.jar h5sjZnQq62YoSWtZKoUW 0.0.0.0,8080,0'
alias putJSON="curl -X PUT -H 'Content-Type: application/json'"
alias postJSON="curl -X POST -H 'Content-Type: application/json'"
alias grt="grunt build && grunt watch"

# Quipper
alias qlearn='cd ~/Sites/quipper/q-learn-play'
alias edge='heroku run console --app quipper-api-edge'
alias schema='cd ~/Sites/quipper/schema'
alias qall='cd ~/Sites/quipper/qall'
alias ql='cd ~/Sites/quipper/qall/apps/qlearn-web'
alias qc='cd ~/Sites/quipper/qall/apps/qcreate'
alias qa='cd ~/Sites/quipper/qall/apps/api'
alias lp='cd ~/Sites/quipper/quipperschool-www'

# Boxdice:
alias depl='cd ~/Sites/Deploy-Scripts'
alias pro='cd ~/Sites/boom-test/boom_all/pro'
alias crm='cd ~/Sites/boom-test/boom_crm/'
alias web='cd ~/Sites/webtempest/'

# Personal
alias notes='vim ~/Dropbox/Notes'
alias goals='mvim ~/Dropbox/goals.yml'

wtigo(){
  git pull origin dev
  wti push
  wti pull
  git add -A
  git commit -m 'update translations'
  git push origin dev
}

api-start(){
  api
  echo "Executing: bundle exec unicorn -p 8090"
  bundle exec unicorn -p 8090
}

pro-start(){
  pro
  echo "Executing: bundle exec unicorn -p 8091"
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
}
alias tail-error="tail -f /var/log/php/php_errors.log"
alias tail-access="tail -f /usr/local/Cellar/nginx/1.2.2/logs/access.log"
alias tail-mysql="tail -f /var/log/mysql.log"
alias bdip="cat /Users/mplatts/Dropbox/BoxDice/servers.txt"

alias nginx-stop="/usr/local/Cellar/nginx/1.2.7/sbin/nginx -s stop"
alias nginx-start="/usr/local/Cellar/nginx/1.2.7/sbin/nginx"
alias fpm-stop="launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php53.plist"
alias fpm-start="launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php53.plist"
alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias memcached='/usr/local/opt/memcached/bin/memcached'
alias mysql-start='mysql.server start'
alias mysql-stop='mysql.server stop'
alias mysql-restart='mysql.server restart'
alias redis-start='redis-server /usr/local/etc/redis.conf'
alias assets='RAILS_ENV=production bundle exec rake assets:precompile'

fpm-restart(){
	launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php53.plist
	launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php53.plist
}


# Home
alias sky="cd ~/Sites/sky_writer/"
alias memcached='/usr/local/bin/memcached'


# Common:
alias st='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias be='bundle exec'
alias hosts='sudo vim /private/etc/hosts'
alias reload='source ~/.zshrc'
alias sublime='cd /Users/mplatts/Library/Application\ Support/Sublime\ Text\ 3/Packages/'
alias snippets='subl /Users/mplatts/Library/Application\ Support/Sublime\ Text\ 2/Packages/'
alias gemo='bundle open'
alias vimplugins='cd /Users/mplatts/.yadr/vim/bundle'
alias snip='mvim ~/Dropbox/dotfiles/vim/after/snippets'
alias learn='cat ~/Dropbox/dotfiles/to-learn.txt'
alias elearn='subl ~/Dropbox/dotfiles/to-learn.txt'
alias cheats='subl ~/Dropbox/cheats'
alias ve='vi ~/.vimrc'
alias ze='vi ~/.zshrc'
alias zr='source ~/.zshrc'

# Servers
alias quicktimesheets='ssh -i ~/.ssh/quicktimesheets.pem insight4@lb1.ovm.qiktimes.com'
alias malz='ssh deploy@50.116.45.193' # Personal Linode

# PATH
# Postgres app
export PATH="/Applications/Postgres.app/Contents/MacOS/:$PATH"
export PGHOST=localhost
# Homebrew
PATH="/usr/local/bin:$PATH"
# NPM
PATH="/usr/local/share/npm/bin:$PATH"

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
cdpath=($HOME/Sites/ $HOME/.rvm/gems/ruby-2.0.0-p0/gems/)

# Fancy globbing http://linuxshellaccount.blogspot.com/2008/07/fancy-globbing-with-zsh-on-linux-and.html
setopt extendedglob

export EDITOR='st'

alias install_dotfiles='cd ~/Dropbox/dotfiles && thor dotfiles:install'
alias dot='cd ~/Dropbox/dotfiles'
alias dotv='vim ~/Dropbox/dotfiles'
alias dots='st ~/Dropbox/dotfiles'

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

# Options

# automatically enter directories without cd
setopt auto_cd

# ignore duplicate history entries
setopt histignoredups

# keep TONS of history
export HISTSIZE=4096

