
## そもそもGitって何？

Gitはソースコードの変更した記録を管理するツールです。

例えばたくさんの人が同じアプリケーションのコードを編集するときなどに自分がどの箇所を追加した、変更をしたなどを記録したい場合に使います。

簡単に言えば、ソースコードのセーブデータを取り扱うデータベースのようなものです。

##　必要なもの

- PC（なんでもいいけどMacかLinux系がおすすめ）
- git （Windowｓの人は[これ](https://gitforwindows.org/)をダウンロード）
- 折れない心（何事も最後まで地道にやることが肝心です。）

基本的に以下の操作はMacで確認しています。
基本的にはUNIX系マシンであればBashを使っているので同じはず

## 基本的な使い方

### リポジトリをダウンロードしてみる

Gitの基本な考え方として分散バージョン管理という概念があります。

それば親となるデータの塊(リポジトリ)をローカル環境（自分のパソコンなど）に、全ての変更履歴を含む完全な複製を作ることが出来ます。

ダウンロードするためにはコンソールを開いて以下のコマンドを唱えましょう

```
git clone [ダウンロードしたいURL]
```

例えばこんな感じ(自分のリポジトリをダウンロードしてみました。)

```
git clone https://github.com/tukapai/learning_git.git

$ git clone https://github.com/tukapai/learning_git.git
Cloning into 'learning_git'...
remote: Counting objects: 4, done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (4/4), done.
Checking connectivity... done.
```


## ローカルの変更をコミットする。

ダウンロードが出来たところで、実際にソースを編集して変更した情報をGitに登録しましょう。

Gitに情報を登録するためには以下のコマンドが必要です。


### 今のGitの状態を知る status コマンド

まずGitに登録出来る情報を確認します。

登録出来る変更は以下のコマンドで確認できます。

```
$ git status
```

例えばsample.txtというテキストファイルを変更した場合以下のように表示されます。


```
$ git status

On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   sample.txt

no changes added to commit (use "git add" and/or "git commit -a")

```

このように変更した情報が表示されれば正常です。

### Gitに登録する情報をえらぶ add コマンド

先程のstatusコマンドで表示された情報を登録するためにはaddコマンドを使います。

これはローカルにダウンロードしてきたgitのデータベースに対してどのような変更を登録するかを決めるコマンドです。

先程のsample.txtの情報をコミットする情報として追加する場合は以下のようにコマンドを打ちます。

```
git add sample.txt
```

もし変更する情報として認識されれば以下のように表示されていると思います。

```
add コマンドでsampmle.txtの変更を追加する

$ git add sample.txt

statusコマンドで変化を確認

$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   sample.txt

```

### 変更した情報を登録する commit コマンド

addコマンドで追加した変更情報をgitデータベースに登録するためにはcommitコマンドを使います。

コミットとはデータベースの用語で変更した情報を確定するという意味です。

よく結果にコミットしてるライ○ップとかのコミットも多分同じような意味だと思います。

変更を確定したい場合はcommitコマンドを以下のように打ちましょう

```
git commit -m “どんな変更をしたのか一言添える”
```

```
$ git commit -m "first commit"
[master bb3281f] first commit
1 file changed, 8 insertions(+)
create mode 100644 sample.txt
```

### 変更した情報を親のリポジトリに反映させたい Pushコマンド

今までのコミットまでの操作は自分のPC上のみの変更でしたが、これを親のリポジトリに反映させたい場合はPushコマンドを使用します。

自分の権限がないリポジトリでは出来ませんがPushするとこのような感じに出来ます。

```
$ git push
Username for 'https://github.com':
Password for 'https://tukapai@github.com':
Counting objects: 3, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 423 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To https://github.com/tukapai/learning_git.git
   f6196de..bb3281f  master -> master
```

とりあえずこのくらいできれば大丈夫なんじゃないかなとおもいます。

## ちょっとなれてきた人用

### ローカルでオリジナルのリポジトリを作ってみたい。

GitHubなどリポジトリを管理できるサイトなどがあれば以下の呪文を唱えてみる。

```
$ git init #gitを作る際に使う呪文
$ git add . #全部追加するよ
$ git commit -m "Initial commit" #一般的なおまじないコミット
$ git remote add origin https://github.com/XXXX/XXXXXX.git #ここは自分のリポジトリ名を入力
$ git push -u origin master #基本はmasterにPushをする。(後にブランチを切ったりすればここを変更したりする。)
```

### コミット内容を修正をしたい場合

--amend　オプションで内容を修正できるよ

```
$ git commit --amend

```

## 参考URL

定番なやつ
[猿でもわかるGit入門](https://backlog.com/ja/git-tutorial/)

本家Gitのページ(英語のページ)
[git --distributed-is-the-new-centralized](https://git-scm.com/)

他にも色々後で追加します。
