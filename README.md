# vimの環境構築
vimにはrubyのパスを指定しないとsnippetsできないので、vimを入れる環境には前もってrbenvとかで良いからrubyを入れておく
vimをgitからビルドする時にrubyのパスを指定する必要があるが、`which ruby`とかで使われているパスを調べておくと良い

# dotfiles
.vimrc
### .vimrcのコピー
```
cd dotfiles
cp .vimrc ~/
```

### .gitconfigの追加
```
cp .gitconfig ~/
```

### NeoBundleのインストール
```
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```
### NeoBundleInstall
~/.vimを開き以下のコマンドを入力する
```
:NeoBundleInstall
```
### backupfileを作るようにしているので
```
mkdir ~/.vimbackup
```
にてバックアップ用のファイルを作成してあげる

### Shell の環境設定
```sh
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff reattach-to-user-namespace tmux zplug peco
```

#### zprezto導入

```sh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

shell上で以下のコマンド実行

```sh
$ setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```


#### デフォルトのシェルにzshを設定する

/etc/shellsのなかに `/usr/local/bin/zsh` を追加し、以下のコマンドでデフォルトShellを変更する

```
chsh -s /usr/local/bin/zsh
```

#### .zshrcとのコピー & 反映
```
cp .zshrc ~/
source ~/.zshrc
```


### その他

- itermの色設定
  - Iterm2 → Preferences → Profiles → Colors → 「Color Presets」のタブから Import... を選択, dotfiles内に保存している `meru-hybrid.itermcolors` を選択する
- itermで開いたvimをスクロールできるようにする
  - http://lilpacy.info/uncategorized/iterm2-zsh-vim-move-cursor-by-scroll/
