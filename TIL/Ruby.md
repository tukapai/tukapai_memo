## Rubyに関して

Matzが開発したオブジェクト指向の言語

最近Ruby4なるものを作成中らしい

最初はRailsをなんの知識もないままチュートリアルを触ってよくわからなかったけど、いまちょっと触ってみるといい感じだなーって思いました。

楽チンに書けるし、Pythonみたいに学校の先生っぽく怒られない感じがいいなーって思いました。

簡単はHelloworldはこれ

```
puts helloworld!
```

TryRubyというものができるみたいなので貼ってみる
http://ruby.github.io/TryRuby/

## Rubyのif文
```
if ##ここに条件分岐させたい条件を入れる
 puts "条件に合致すれば処理を実行する"
end
```

## 繰り返したい

例えばこんな感じに

```
loop { puts "I Love Ruby♥" }
```


## 配列の中身を一つにまとめたい

joinを使えば配列の文字も結合で切る。

```
['foo', 'bar', 'buz'].join #=> "foobarbuz"
```
##　標準入力で受け取った文字列を配列のようにしたい場合はどうするべきか？

変数で一旦受け取ってsplitする
irb(main):010:0> int = "283940"　#適当な数字を変数に代入する。
=> "283940"
irb(main):011:0> int.split(",")　#カンマで区切るのかと思ったらそうでなかった
=> ["283940"]
irb(main):012:0> int.split("")　#文字が区切られておらず連続している場合は区切り文字に何も指定しない形にする。
=> ["2", "8", "3", "9", "4", "0"]

## Rubyの正規表現でUUIDを見つける

UUIDの正規表現パターンは以下のような形になる
`"fb364d88-7847-40eb-98ce-906bdac0d973"`

[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}
但しこのままこのように検索をするとnilが返ってくる

```
pry(main)> p "fb364d88-7847-40eb-98ce-906bdac0d973".match("[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}")
=> nil
```

原因はアルファベットが大文字だったので条件として適当出なかったよう
大文字部分を小文字に変更して実行

```
[31] pry(main)> p "fb364d88-7847-40eb-98ce-906bdac0d973".match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
#<MatchData "fb364d88-7847-40eb-98ce-906bdac0d973">
=> #<MatchData "fb364d88-7847-40eb-98ce-906bdac0d973">
```
### 使ってみたメソッド集

Luhnアルゴリズムで使いそうなメソッド

reverse_each (Array)
ex)  
`array.reverse_each {|item| block }`
https://ref.xaio.jp/ruby/classes/array/reverse_each

each_slice (Enumerable)  
`enum.each_slice(n) {|arr| block }`
https://ref.xaio.jp/ruby/classes/enumerable/each_slice



# エラーの処理に関して

こんな感じに書く

```
begin
  # 例外が起こりそうな処理
rescue => error
  # 例外が起こった際の処理(ココで上手いことエラーから復帰するようにする)
ensure
  # 例外の有無にかかわらずその後実行したい処理を書く
end
```

## Twitterに関するgem
https://sites.google.com/site/gyakuhikiruby/home/twitter-gem

## Rubyの環境構築に関するTips

テスト環境編

Rubyの環境変数をセットする
