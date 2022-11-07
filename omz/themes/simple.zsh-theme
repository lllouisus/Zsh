# 启用彩色提示符
autoload -U colors && colors

# 每次刷新提示符
setopt prompt_subst

# 设置提示符
PROMPT='%F{120} %f%B%F{240}%2~%f%b %{$fg[blue]%}$(git branch --show-current 2&> /dev/null | xargs -I branch echo "(branch)")%{$reset_color%} '

#右侧
RPROMPT='%*'

ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="~"
