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
yum install zsh
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
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```
