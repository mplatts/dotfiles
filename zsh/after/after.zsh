#
# Samples of what you can do in *.after.zsh files.
# You can create as many files as you like, or put everything in one.
#

# define your own aliases or override those provided by YADR.
alias hosts='sudo vim /private/etc/hosts'
alias ea='subl ~/.yadr/custom'
alias reload='source ~/.zshrc'


# set or override options. two of my favorite are below.


# Automatically cd to frequently used directories http://robots.thoughtbot.com/post/10849086566/cding-to-frequently-used-directories-in-zsh
setopt auto_cd
cdpath=($HOME/Sites/)

# Fancy globbing http://linuxshellaccount.blogspot.com/2008/07/fancy-globbing-with-zsh-on-linux-and.html
setopt extendedglob

