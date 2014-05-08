autoload -U colors
colors
setopt prompt_subst
setopt menucomplete
autoload compinit
compinit

local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='%{$fg[black]%}______________________%{$reset_color%}
%~
${smiley}  %{$reset_color%}'

source /Users/mplatts/Dropbox/dotfiles/git-prompt/gitstatus.sh
RPROMPT='$(git_super_status)'

# RPROMPT='%{$fg[red]%} $(~/.rvm/bin/rvm-prompt)$(~/bin/git-cwd-info.rb)%{$reset_color%}'
# RPROMPT='%{$reset_color%}'
