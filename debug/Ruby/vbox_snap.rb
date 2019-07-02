# Language: Ruby, Level: Level 3
#!/bin/ruby
# Get Snapshot of virtualBox automatically
#
# @param
# s_list: a list of virtualBox snapshot
# uuid:   Snapshot UUID list in target VM
# num :   max list of snapshot
class SnapManage
  # get snapshot list
  def snap_list(vm_name)
    s_list = `VBoxManage snapshot "#{vm_name}" list`.split("\n")
    uuid = []
    s_list.each do | data |
      #Store only UUID in array。
      uuid << data.match("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
    end
    # puts uuid
    return uuid
  end

  # auto remove old snapshot
  def snap_remove(vm_name)
    uuid = @uuid #snap_list(vm_name)
    # Defalt snapshot count is 4
    # TODO: num can change variable
    num = 4
    if uuid.length &gt; num
      while uuid.length &gt; num do
        s_name =  uuid.shift
        # デバッグ用メッセージ
        puts "dalete #{vm_name}!!"
        `VBoxManage snapshot "#{vm_name}" delete "#{s_name}" `
      end
    else
      print "No Dalete images"
    end

  end
end
