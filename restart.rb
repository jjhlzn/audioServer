def main
  #在unicorn.pid文件中找到之前运行的进程号
  pid = get_pid()
  

  #杀死这个进程
  kill(pid)
  
  #运行unicorn_rails -C unicorn.rb -D这条命令
  start_server()
end



def get_pid 
  filename = "./unicorn.pid"
  if File.file?(filename)
    file = File.open(filename, "rb")
    contents = file.read
    return contents
  end
  return ''
end


def kill(pid)
  if pid != '' 
    `kill -9 #{pid}`
    print "kill old process, pid = #{pid}"
  end
end


def start_server
  
  `unicorn_rails -c unicorn.rb -D`
  pid = get_pid()
  print "start server success, new_pid = #{pid}"
end

main()