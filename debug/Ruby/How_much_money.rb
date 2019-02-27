#!/bin/env ruby

## ----------------------------
# ユーザからのキーボードの入力を受け取り、
# yes と入力されたらスクリプトを実行する、no と入力されたらスクリプトを終了します.
## ----------------------------

class ConfirmExecutionClass

  def initialize

    puts <<-EOT
----------------------------
自分の残業代を計算しますか?
計算する場合は yes、キャンセルする場合は no と入力して下さい.
    EOT

  end

  def get_keyboard_input_yes_no

     case gets.chomp
       when "yes", "YES", "y"
         puts "  計算を実行します."
       when "no", "NO", "n"
         puts "  スクリプトを終了します."
         exit 1
       else
         puts "  yes または no を入力して下さい."
         confirm = ConfirmExecutionClass.new
         confirm.get_keyboard_input_yes_no
     end
   end

   def calc_money
        # 計算する場所
        puts <<-EOT
----------------------------
基準とする時給を入力してください
入力例：）1250
   EOT
        base_monoey = gets.to_i
        puts <<-EOT
----------------------------
仕事をした時間を入力してください。
入力例：）80
   EOT
        money_time = gets.to_i
       #計算結果を返す
       result = base_monoey * money_time
       puts "あなたの残業代は #{result} 円です"
   end
end


confirm = ConfirmExecutionClass.new()
confirm.get_keyboard_input_yes_no
confirm.calc_money
