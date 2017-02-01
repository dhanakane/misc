#######################
#OSX .bash_profile
#Needs brew install bash-completion run to work
#######################

#Add ~/.bashrc to avoid errors on reload
if [ -f ~/.bashrc ]; then
            source ~/.bashrc
    fi
#Change alias for ls to include colours
alias ls='ls -Gh'

#Enable git branch completion
source ~/git-completion.bash

#Allows git information to be visible in prompt
source ~/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1

# ANSI colors: http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;36m\]"
LIGHT_GREY="\[\033[0;37m\]"
DARK_GREY="\[\033[1;30m\]"
NO_COLOUR="\[\033[0m\]"

##################################
#Configure multiline prompt
# Prompt appearance should be:
#[RED]user@host[\RED] [CYAN]working_directory[\CYAN] git_branch [COLOUR_FROM_GIT]asterix_indicator[COLOUR_FROM_GIT] ==>
#==>
##################################
#working PROMPT_COMMAND setting
PROMPT_COMMAND='__git_ps1 "\[\033[0;31m\]\u@\h\[\033[0m\]:\[\033[0;36m\]\w\[\033[0m\]" "\\\$ \n$ "'

