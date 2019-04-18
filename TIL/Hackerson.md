## 環境構築に関して（Mac編）

目次
1. Homebrewの状態を最新化する。
2. rbenvの状態を更新する
3. リポジトリを再度クローンして動くかを確認する。

1. Brewの状態を最新化する

homebrewの状態を確認する。

```
Masashi-no-MacBook-Pro:bin pcuser$ brew doctor
Your system is ready to brew. これが出ていればOK
```

バージョンを確認する。
```
Masashi-no-MacBook-Pro:bin pcuser$ brew update
Already up-to-date.　これであれば最新版が入っている
Masashi-no-MacBook-Pro:bin pcuser$ brew -v
Homebrew 2.1.0 現時点での最新版
Homebrew/homebrew-core (git revision 192ff4; last commit 2019-04-13)
Homebrew/homebrew-cask (git revision 3dabc; last commit 2019-04-13)
```
もし、なにか問題が発生したら？

現時点で見つけたのは廃止されたバージョンが入っていること

```
Masashi-no-MacBook-Pro:bin pcuser$ brew doctor
Please note that these warnings are just used to help the Homebrew maintainers
with debugging if you file an issue. If everything you use Homebrew for is
working fine: please don't worry or file an issue; just ignore this. Thanks!

Warning: You have the following deprecated, official taps tapped:
  Homebrew/homebrew-php
Untap them with `brew untap`.
```

こういった場合は以下のようにUntapして最新の状態にしておきましょう

```
Masashi-no-MacBook-Pro:bin pcuser$ brew untap Homebrew/homebrew-php
Untapping homebrew/php...
Untapped (40 files, 485.1KB).
```

2. Rubyのバージョンを設定する。

今回使用するRubyのバージョンの固定に関して

Rbenvをしっかりと反映させる方法

rbenvを一旦確認する。

```
Masashi-no-MacBook-Pro:MarimoKing pcuser$ rbenv versions
  system
* 2.6.0 (set by RBENV_VERSION environment variable)　ここが2.6.0 になっていればOK
  2.6.0-dev
```

この時点で2.6.0がない場合はをインストールする

```
rbenv install 2.6.0
rbenv global 2.6.0 (とりあえずどこでも2.6.0で動くようにする。)

# ちゃんと動くように以下呪文を唱える
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile'
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bashrc


```

またすでに2.6.0なんだけどGemfileの更新ができないよ-って人は以下の手順も一緒に実行する。

```
Masashi-no-MacBook-Pro:MarimoKing pcuser$ rbenv rehash
rbenv: cannot rehash: /Users/pcuser/.rbenv/shims/.rbenv-shim exists
```
これが出た場合は変な状態の.rbenv-shimが生成されているのでrmでこれを消してrehashする。

```
$ rm /Users/pcuser/.rbenv/shims/.rbenv-shim
```

改めてRubyがこの状態になっていればOK
```
Masashi-no-MacBook-Pro:MarimoKing pcuser$ ruby --version
ruby 2.6.0p0 (2018-12-25 revision 66547) [x86_64-darwin18]　ここが、2.6.0
```

Todo:issueで書いた手順をこっちにも転記する。
