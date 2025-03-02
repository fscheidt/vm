#!/bin/bash
alias lsl='ls -ahgo'
alias lst="tree -a -L 3 --dirsfirst --prune -I '.git'"
alias lsdir="ls -lhagoa --color=always | grep '^d'"
alias cdbin='cd ~/bin && ls -lhgoa'
alias cdown='cd ~/Downloads && ls -lhgoa'
alias cdsw='cd ~/Softwares && ls -lhgoa'
alias cdtemp='cd ~/Temp && ls -lhgoa'
alias aliasls='tail -n +2 "~/.bash_aliases" | cut -c 7- | column -s "=" -t | fzf'
alias envls='env | column -s "=" -t | fzf'
alias histls='fc -l -10000 | fzf'
alias fontls='fc-list : family | sort | uniq'                                                                    
alias pathls="echo \$PATH | tr ':' '\n' | fzf"
alias hist_clear='history -c && rm ~/.bash_history'
alias hist_unset='unset HISTFILE && export LESSHISTFILE="-"'
alias ..='cd ..'
alias ~='cd ~'
alias x_hashall='find . -type f -print0 | xargs -0 sha256sum'
alias x_reloadfonts='fc-cache -fv' 
