echo "Sourcing ~/.bashrc"

. ~/.config/shellrc

# PS1
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
red=$(tput setaf 9)
bold=$(tput bold)
reset=$(tput sgr0)

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTAE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto verbose"

COLOR_USER=$red
COLOR_HOST=$blue
COLOR_WDIR=$yellow$bold
COLOR_GIT=$red
PROMPT_SYM=" \\$ "

if [[ $UID == 0 ]]; then
        COLOR_USER=$yellow$bold
        COLOR_HOST=$yellow$bold
        COLOR_GIT=$yellow
        PROMPT_SYM=' # '
fi

PS1="\[$COLOR_USER\]\u\[$reset\]" # username
PS1+="@\[$COLOR_HOST\]\`find-closest-hostname\`\[$reset\]" # hostname
PS1+="\[$COLOR_WDIR\] \W\[$reset\]" # work dir
PS1+="\[$COLOR_GIT\]"
PS1+='$(__git_ps1 " (%s)")' #git
PS1+="\[$reset\]"
PS1+=$PROMPT_SYM

[ -f /usr/share/nvm/init-nvm.sh ] && source /usr/share/nvm/init-nvm.sh
[ -f /usr/share/bash-completion/bash_completion ] && source /usr/share/bash-completion/bash_completion
[ -f /usr/share/git/completion/git-prompt.sh ] && source /usr/share/git/completion/git-prompt.sh
[ -f ~/.cache/wal/sequences ] && cat ~/.cache/wal/sequences
