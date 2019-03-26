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

### 使ってみたメソッド集

Luhnアルゴリズムで使いそうなメソッド

reverse_each (Array)
ex)  
`array.reverse_each {|item| block }`
https://ref.xaio.jp/ruby/classes/array/reverse_each

each_slice (Enumerable)  
`enum.each_slice(n) {|arr| block }`
https://ref.xaio.jp/ruby/classes/enumerable/each_slice
