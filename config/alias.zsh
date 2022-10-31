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
alias ma='btop'
alias ca='cd $(find ~/ -type d | fzf)'
alias va='nvim $(find ~/ -type f | fzf --preview "bat -p --color=always {} | head -100" --height 40%)'

alias vi='nvim'

# ---- ---- ---- ---- KISS ---- ---- ---- ----
# alias slg='slackpkg update gpg'
# alias slu='slackpkg update'
# alias slnew='slackpkg install-new'
# alias sla='slackpkg upgrade-all'
# alias sls='slackpkg search'

# deb/rpm Conversion
# alias debc='deb2tgz'
# alias rpmc='rmp2tgz'


# ---- ---- ---- ---- ---- ---- ---- ----

# ---- ---- ---- GENTOO ---- ---- ----
# ls
alias l='lsd -a'
alias ll='lsd -lah'
alias ld='lsd -ld'

# emerge 
alias em='doas emerge -av'
alias ems='emerge -s'
alias emw='doas emerge -avuDN @world'
alias emD='doas emerge -D'
alias emN='doas emerge -N'

alias emd='doas emerge --deselect'
alias emc='doas emerge -avc'

alias emC='doas emerge -C'  # 会删除依赖包，慎用

alias emup='doas etc-update --automode -3'

# eix search

# equery
alias eq='equery'

# sync
alias emsync='doas emerge --sync'

# ---- ---- ---- ---- ---- ---- ----
# reflash
alias fz='source ~/.zshrc'

# tty-clock
alias cl='tty-clock -s -c -b -C 4'

# Git
alias gg="git clone"
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


# net
alias cg='curl -i google.com'
