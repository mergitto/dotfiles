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

### zshのインストール
```
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff reattach-to-user-namespace tmux zplug
```
cat /etc/shells でzshが利用できるか確認する
おそらく/bin/zshのようなものがあるはず
### デフォルトのシェルにzshを設定する
```
chsh -s /bin/zsh # zshの場所は各々上記のコマンドにて確認
```

### .zshrcとのコピーと.oh-my-zshのインストール
```
cp .zshrc ~/
cp .zprofile ~/
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

### zshell の直前のコマンドの自動補完
```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
```


### コマンドのパスを設定する場合
例：Goのパスを設定する場合
```
export GOPATH=~/Path/mygo >> ~/.zshrc
```
pathの設定を反映させる
```
source ~/.zshrc
```
