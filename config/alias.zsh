# --------------------------------------------------------------------------

alias proxy="export http_proxy=http://127.0.0.1:7890;export https_proxy=http://127.0.0.1:7890"
alias unproxy="unset http_proxy;unset https_proxy;"
alias sgsocks="git config --global http.proxy 'socks5://127.0.0.1:1089';git config --global https.proxy 'socks5://127.0.0.1:1089'"
alias sghttps="git config --global http.proxy http://127.0.0.1:7890;git config --global https.proxy https://127.0.0.1:7890"

alias we="curl wttr.in/Guangxi"
alias ra='ranger'
alias fa='fzf --preview "bat -p --color=always {} | head -100" --height 30%'
alias ma='btop'
alias ca='cd $(find ~/ -type d | fzf --height 40%)'
alias va='nvim $(find ~/ -type f | fzf --preview "bat -p --color=always {} | head -100" --height 30%)'

alias vi='nvim'

MK() { mkdir -p "$1"; cd "$1";} 



# ---- ---- ---- Void ---- ---- ----
alias xp='doas xbps-install'
alias xpR='doas xbps-remove -R'
xps() { xbps-query -l | awk '{ print $2 }' | xargs -n1 xbps-uhelper getpkgname | fzf; }
xpss() { xbps-query -Rs "" | fzf; }

alias xrc='bash ~/.config/void-packages/xbps-src pkg'
alias xr='doas xbps-install --repository=hostdir/binpkgs'

# alias xs='xbps-query -l | $(awk '{ print $2 }') | xargs -n1 xbps-uhelper getpkgname | fzf'
# alias xss="xbps-query_fzf() { xbps-query -l | $(awk '{ print $2 }') | xargs -n1 xbps-uhelper getpkgname | fzf; }; xbps-query_fzf "
# alias xs='bash ~/xs.sh'
alias debc='xdeb -Sde'
alias debi='doas xbps-install -R'
# alias va='nvim $(find ~/ -type f | fzf --preview "bat -p --color=always {} | head -100" --height 30%)'

# ls
alias l='exa -ag -s name'
alias ll='exa -llag -s name --icons'
alias ld='exa -lgd -s name --icons'
alias lt='exa -la --no-user --no-time --no-filesize --no-permissions  -T'

# ---- ---- ---- GENTOO ---- ---- ----
# emerge 
alias em='doas emerge -av'
alias ems='emerge -s'
alias emw='doas emerge -avuDN @world'
alias emD='doas emerge -D'
alias emN='doas emerge -N'
alias emp='emerge -p'

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

# speedtest
alias sp='/opt/./speedtest'


# net
alias cg='curl -i google.com'
