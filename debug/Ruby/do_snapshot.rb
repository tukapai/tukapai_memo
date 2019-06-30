#!/bin/ruby
require './vbox_snap'


def do_snapshot(vm_name)
    begin
        do_ruby = SnapManage.new
        do_ruby.snap_remove(vm_name)
    rescue = error
        p error.backtrace
    end
end

do_snapshot(vm_name)
