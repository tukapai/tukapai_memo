#!/bin/ruby
require 'date'
# VirtualBoxのスナップショットを自動取得する
#
# @param
# s_list: スナップショットのリスト
#

def snap_list(vm_name)
 s_list = `VBoxManage snapshot "#{vm_name}" list`.split("\n")
 #ここをUUIDだけを抽出するように変更する。
 #UUIDを抽出後配列に格納する。
 s_list.match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
 return s_list
end
