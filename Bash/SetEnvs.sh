
export  LANG='ja_JP.UTF-8'

export  HISTCONTROL=ignoreboth
export  HISTIGNORE='bg*:history :history:cd:ls'
export  HISTTIMEFORMAT='%Y%m%d %T '

test  -t 0  &&  stty    eof  ^P
export  IGNOREEOF=2

GPG_TTY=$(tty)
export  GPG_TTY

