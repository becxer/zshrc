
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lr='ls -lR'
alias lt='ls -ltr'

# some other aliases
alias rm='rm -i'
alias du='du -h'
alias df='df -kh'
alias h='history'
alias vi='vim'
alias vm='vim'
alias emacs='emacs -nw'
alias em='emacsclient -t'

# color of directory

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# simple http server
alias serve="python -mSimpleHTTPServer"

# Swap name between files
function swap()
{
    local TMPFILE=tmp.$$
    mv $1 $TMPFILE
    mv $2 $1
    mv $TMPFILE $2
}

# Show host information
function ii()
{
    echo -e "You are logged on $HOST"
    echo -e "Additionnal information: " ; uname -a
    echo -e "Users logged on: " ; w -h
    echo -e "Current date : " ; date
    echo -e "Machine stats : " ; uptime
    echo -e "Memory stats : " ; free
}

# show login avartar
jp2a --background=light --width=50 --colors ~/.bavatar.jpg
toilet -f mono9 -F gay $(whoami)_

# Set display name
echo -e '\033[1;36m'Concurrent users are............................'\033[0m'
w
echo -e '\033[1;36m'................................................'\033[0m'

# Using CUDA

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
export CUDA_HOME=/usr/local/cuda
