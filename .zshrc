# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/個人で設定する/.oh-my-zsh

# auto suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="risto"
ZSH_THEME="muse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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

# javaのパスを通す
export JAVA_HOME=`/usr/libexec/java_home`
if [ -d "${JAVA_HOME}" ]; then
  export PATH=`$JAVA_HOME -v 1.8`
fi

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# openssl
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# aliases
alias tree="pwd;find . | sort | sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'"
alias s="swiftc -F/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -Xlinker -rpath -Xlinker /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks"
alias bes="bundle exec rspec"
alias bundle install="bundle install --path vendor/bundle"
alias df="df -H"

# peco
alias cdp='cd "$(find . -type d | grep -v "\/\." | peco)"'

# zplugの設定
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# syntax
zplug "chrissicool/zsh-256color"
zplug "Tarrasch/zsh-colors"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "ascii-soup/zsh-url-highlighter"

# 未インストール項目をインストールする
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
zplug load --verbose

autoload -U promptinit; promptinit
prompt pure
