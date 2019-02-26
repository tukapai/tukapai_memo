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

   def get_base_money

          puts <<-EOT
 ----------------------------
 基準とする時給を入力してください
 入力例：）1250
     EOT
     　get.chomp
    end

end


confirm = ConfirmExecutionClass.new()
confirm.get_keyboard_input_yes_no
