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

### .zshrcとのコピーと.oh-my-zshのインストール
```
cp .zshrc ~/
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```
