# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export TERM=xterm-256color

source ~/.git-completion.sh 
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

chruby ruby-2.3
. /home/retro/src/erlang/19.1/activate

alias such=git
alias very=git
alias so=git
alias wut='git diff'
alias wow='git status'
alias fakin-trů='git push'
alias html5init='cp -R ~/src/html5-init/*'
alias pmruby='ruby --disable=gems,did_you_mean,rubyopt'

# GIT
PS1='[\u@\h $RAILS_ENV \W$(__git_ps1 " (%s)")]❤ ';
GIT_PS1_SHOWDIRTYSTATE=show;
GIT_PS1_SHOWSTASHSTATE=show;
GIT_PS1_SHOWUNTRACKEDFILES=show;
GIT_PS1_SHOWUPSTREAM="auto";


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export NVM_DIR="/home/retro/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=$PATH:/opt/android-sdk/platform-tools
export ANDROID_HOME=/opt/android-sdk/

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
