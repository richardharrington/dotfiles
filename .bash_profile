VISUAL=emacs; export VISUAL
EDITOR=emacs; export EDITOR

export ARCHIVA\_USERNAME=
export ARCHIVA\_PASSWORD=

export STARDOG_HOME=/data/stardog
export PATH=~/Workspace/stardog-3.1.4/bin:$PATH

export PATH=/usr/local/git/bin:usr/local/sbin:$PATH
alias emacs="open /Applications/Emacs.app"
[[ -r ~/.bashrc ]] && . ~/.bashrc

alias chrome="open /Applications/Google\ Chrome.app/ --args --allow-file-access-from-files"

alias showdotfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidedotfiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'

alias mvim='mvim -v'

alias ll='ls -loaF'

alias gs='git status'
alias gc='git commit'
alias gb='git branch'
alias gco='git checkout'
alias gm='git merge'

PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n\$ "

PATH=/usr/local/share/python:/usr/local/bin:~/bin:$PATH:$HOME/local/bin



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

alias wget="curl -O"
