# PATH
export PATH=$HOME/bin:$PATH

# Completions — only rebuild cache if dump is older than 24 hours
fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# Prompt (robbyrussell style using vcs_info)
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' on %F{blue}%b%f%u%c'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red} ✗%f'
precmd_functions+=( vcs_info )
setopt PROMPT_SUBST
PROMPT='%(?.%F{green}.%F{red})➜%f %F{cyan}%1~%f${vcs_info_msg_0_} '

bindkey -e
eval "$(mise activate zsh)"
