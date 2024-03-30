# dotfilesを作成してみる

- CheckOS

## インストールするもの
- Rosetta2
- Homebrew
    - fish(shell)
    - wezterm(terminal)
    - mise(runtime manager)

## セットアップ後に下記のコマンドを実行する
```shell
$ sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells
$ chsh -s /opt/homebrew/bin/fish
$ fish_add_path /opt/homebrew/bin
```
