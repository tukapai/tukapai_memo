#!/bin/ruby
require 'date'
# VirtualBoxのスナップショットを自動取得する
#
# @param
# v_snap: スナップショットのリスト
# t_vm: 対象とするVM名
def snap_add(vm_name)
 `VBoxManage snapshot "$vm_name" take  --live`
end
snapshot_list =　`VBoxManage snapshot  "CentOS" list`
snapshot
