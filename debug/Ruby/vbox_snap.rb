#!/bin/ruby
require 'date'
# VirtualBoxのスナップショットを自動取得する
#
# @param
# v_snap: スナップショットのリスト
#

def snap_list(vm_name)
 s_list = `VBoxManage snapshot "#{vm_name}" list`
 #ここをUUIDだけを抽出するように変更する。
 #s_list.match(^[A-Za-z0-9]+$)

end
