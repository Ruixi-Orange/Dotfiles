# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#source ~/.zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(starship init zsh)"

#alias sudo='sudo env PATH=$PATH'
alias sudo='sudo '
alias vim='nvim'
alias fetch='fastfetch'

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.


proxyon () {
  export https_proxy=http://127.0.0.1:7897
  export http_proxy=http://127.0.0.1:7897
  export all_proxy=socks5://127.0.0.1:7897
  echo "Proxy on"
}

# 关闭代理
proxyoff () {
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "Proxy off"
}


export EDITOR=nvim


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ruixi/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ruixi/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ruixi/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ruixi/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

