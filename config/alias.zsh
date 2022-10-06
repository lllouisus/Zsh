# 启用彩色提示符
autoload -U colors && colors

# 每次刷新提示符
setopt prompt_subst

# 设置提示符

PROMPT='%F{120} %f%B%F{240}%2~%f%b %{$fg[blue]%}$(git branch --show-current 2&> /dev/null | xargs -I branch echo "(branch)")%{$reset_color%} '
#右侧
RPROMPT='%*'
# --------------------------------------------------------------------------

alias proxy="export http_proxy=http://127.0.0.1:8889;export https_proxy=http://127.0.0.1:8889"
alias unproxy="unset http_proxy;unset https_proxy;"
alias sgsocks="git config --global http.proxy 'socks5://127.0.0.1:1089';git config --global https.proxy 'socks5://127.0.0.1:1089'"
alias sghttps="git config --global http.proxy http://127.0.0.1:7890;git config --global https.proxy https://127.0.0.1:7890"

alias we="curl wttr.in/Guangxi"
alias ra='ranger'
alias fa='fzf --preview "bat -p --color=always {} | head -100" --height 40%'
alias gg="git clone"
alias ma='htop'
alias maa='bashtop'
alias ca='cd $(find ~/ -type d | fzf)'
alias va='nvim $(find ~/ -type f | fzf --preview "bat -p --color=always {} | head -100" --height 40%)'

# ls
alias l='lsd -a'
alias ll='lsd -lah'
alias ld='lsd -ld'

# emerge 
alias em='doas emerge -av'
alias ems='emerge -s'
alias emw='doas emerge -avuDN @world'
alias emc='doas emerge -avc'
alias emC='doas emerge -C'
alias eup='doas etc-update --automode -3'

# equery
alias eq='equery'

# sync
alias emsy='doas emerge --sync'

# reflash
alias fz='source ~/.zshrc'

# tty-clock
alias cl='tty-clock -s -c -b -C 4'

# Git
alias gad='git add .'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias grg='git reflog'
alias gbr='git branch'
alias gst='git status'
alias gp='git push'

# speedtest
alias sp='/opt/./speedtest'

# Dict
alias wd='bash ~/.config/Wudao-dict/wudao-dict/wd'

# -------------EXPORT______________________________________________________________
# rofi
export LC_ALL="en_US.UTF-8"

# fcitx
# export LC_CTYPE="zh_CN.UTF-8"
# export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"

export XIM_PROGRAM=fcitx
export XIM=fcitx
export QT_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

# qt5ct
export QT_QPA_PLATFORMTHEME=qt5ct

# _________________________________________________________________________________

# net
alias cg='curl -i google.com'

# Screenshot
# alias sc="import"
# alias scc="import -window root"

# provisional
#alias n="doas ifconfig enp4s0f1 192.168.1.33 broadcast 192.168.1.255 netmask 255.255.255.0 up"
#alias nn="doas route add default gw 192.168.1.1"

#export PATH=$PATH:/home/louis/.spicetify
