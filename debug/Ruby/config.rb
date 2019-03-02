# base_monoey config
# TODO:実行する月で平日の日数を取得する
#Debug中
require 'date'
t = Time.new
month =  t.month
#月によって日にちが変わるので今月の勤務日数を入れる
#TODO：2月の場合は後でうるう年の計算も考える。
if month == 2
 day = 28
end
d = Date.today
#SUN,MON,TUE,WED,THU,FRU,SAT = (0..6).to_a
puts %w(日 月 火 水 木 金 土)[d.wday] + '曜日'
