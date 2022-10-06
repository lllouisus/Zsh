# export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border --layout=reverse'
# export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}"'
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
# export FZF_DEFAULT_OPTS="--height 50% --layout=reverse"

# export FZF_COMPLETION_TRIGGER='\'
# alias fzf='fzf --preview "bat -p --color=always {} | head -100" --height 40%'


export FZF_DEFAULT_OPTS="--height 50% --layout=reverse --history=$HOME/.config/zsh/cache/fzfhistory"
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,dist,vendor} --type f"
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat -n --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -10000'



#  ╭──────────────────────────────────────────────────╮
#  │ _fzf_compgen_path() {                            │
#  │     fd --hidden --follow --exclude ".git" . "$1" │
#  │ }                                                │
#  ╰──────────────────────────────────────────────────╯

# Use fd to generate the list for directory completion
#  ╭───────────────────────────────────────────────────────────╮
#  │ _fzf_compgen_dir() {                                      │
#  │     fd --type d --hidden --follow --exclude ".git" . "$1" │
#  │ }                                                         │
#  ╰───────────────────────────────────────────────────────────╯


#  ╭──────────────────────────────────────────────────────────────────────╮
#  │ _fzf_comprun() {                                                     │
#  │     local command=$1                                                 │
#  │     shift                                                            │
#  │                                                                      │
#  │     case "$command" in                                               │
#  │         cd)           fzf "$@" --preview 'tree -C {} | head -200' ;; │
#  │         export|unset) fzf "$@" --preview "eval 'echo \$'{}" ;;       │
#  │         ssh)          fzf "$@" --preview 'dig {}' ;;                 │
#  │         *)            fzf "$@" ;;                                    │
#  │     esac                                                             │
#  │ }                                                                    │
#  ╰──────────────────────────────────────────────────────────────────────╯
