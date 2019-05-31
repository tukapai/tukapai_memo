#!/bin/ruby
require 'date'
# VirtualBoxのスナップショットを自動取得する
#
# @param
# v_snap: スナップショットのリスト
# 

def snap_add(vm_name)
 `VBoxManage snapshot "#{vm_name}" take  --live`
end
