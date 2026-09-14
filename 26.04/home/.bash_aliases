#!/bin/bash
alias lsl='ls -ahgo'
alias lst="tree -a -C -L 4 --dirsfirst --prune -I '.git' | less -R"
alias lsdir="ls -lhagoa --color=always | grep '^d'"
alias aliasls='tail -n +2 "~/.bash_aliases" | cut -c 7- | column -s "=" -t | fzf'
alias envls='env | column -s "=" -t | fzf'
alias histls='fc -l -10000 | fzf'
alias fontls='fc-list : family | sort | uniq'                                                                    
alias pathls="echo \$PATH | tr ':' '\n' | fzf"
alias cdbin='cd ~/bin && ls -lhgoa'
alias cdevel='cd ~/devel && ls -lhgoa'
alias cdown='cd ~/Downloads && ls -lhgoa'
alias cdesk='cd ~/Desktop && ls -lhgoa'
alias cdhelp='cd ~/bin/help && ls -lhgoa'
alias cdlinux='cd ~/devel/Linux && ls -lhgoa'
alias cdprojects='cd ~/devel/Projects && ls -lhgoa'
alias cdrepos='cd ~/devel/Repos && ls -lhgoa'
alias cdsw='cd ~/Softwares && ls -lhgoa'
alias cdtemp='cd ~/Temp && ls -lhgoa'
alias hist_clear='history -c && rm ~/.bash_history'
alias hist_unset='unset HISTFILE && export LESSHISTFILE="-"'
