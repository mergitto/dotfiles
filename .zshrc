# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Zsh completion
fpath=(path/to/zsh-completions/src /Users/riki/.zprezto/modules/prompt/functions /Users/riki/.zprezto/modules/completion/external/src /Users/riki/.zprezto/modules/helper/functions /Users/riki/.zprezto/modules/utility/functions /usr/local/share/zsh/site-functions /usr/local/Cellar/zsh/5.8/share/zsh/functions)

# Peco
function peco-history-selection() {
    BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER")
    CURSOR=${#BUFFER}
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection

# pyenvのパスを通す
export PYENV_ROOT="$HOME/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi
alias brew="env PATH=${PATH/\/Users\/riki\/\.pyenv\/shims:/} brew"

# rbenvのパスを通す
export RBENV_ROOT="$HOME/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
# some code copy

# The next line enables shell command completion for gcloud.
# some code copy

# 環境変数系
export VUE_APP_MICRO_API_KEY=
export VUE_APP_MICRO_API_URL=
export GOPATH=/your-path/go
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$HOME/.goenv/bin:$PATH"
export GOENV_DISABLE_GOPATH=1
eval "$(goenv init -)"

