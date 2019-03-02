# base_monoey config
# TODO:実行する月で平日の日数を取得する
#Debug中
require 'date'
d = Date.today
puts %w(日 月 火 水 木 金 土)[d.wday] + '曜日'
