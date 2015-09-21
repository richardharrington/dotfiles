export PATH=/usr/local/git/bin:usr/local/sbin:$PATH
alias emacs="open /Applications/Emacs.app"

[[ -r ~/.bashrc ]] && . ~/.bashrc

alias chrome="open /Applications/Google\ Chrome.app/ --args --allow-file-access-from-files"

alias showdotfiles='defaults write com.apple.Finder AppleShowAllFiles TRUE;killall Finder'
alias hidedotfiles='defaults write com.apple.Finder AppleShowAllFiles FALSE;killall Finder'

alias mvim='mvim -v'
alias ws='cd ~/Workspace'

alias ll='ls -loaF'

alias gs='git status'
alias gc='git commit'
alias gb='git branch'
alias gco='git checkout'

PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n\$ "

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$PATH:/usr/local/smlnj-110.75/bin"

PATH=/usr/local/share/python:/usr/local/bin:~/bin:$PATH:$HOME/local/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# mongoid env variables

export MONGODB_IP=127.0.0.1
export MONGODB_PORT=27017

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### To get rid of that annoying DYLD message

# set DYLD_* for my normal programs
DYLD_LIBRARY_PATH='..'

# set an alternative sudo
thesudo()
{
    # back up the DYLD_* variables
    local BACK=$DYLD_LIBRARY_PATH
    # unset DYLD_*
    unset DYLD_LIBRARY_PATH
    # calling sudo
    /usr/bin/sudo "$@"
    # restore DYLD_* after sudo finished
    export DYLD_LIBRARY_PATH=$BACK
}

# redirect sudo
alias sudo=thesudo
