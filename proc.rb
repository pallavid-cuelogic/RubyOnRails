def gen_times(factor)
    return Proc.new {|n| n * factor }
  end
  
  times3 = gen_times(3)
  times5 = gen_times(5)
  
  puts times3.call(12)               #=> 36
  puts times5.call(5)                #=> 25
  puts times3.call(times5.call(4))   #=> 60
  
  # times5.call(4) #=> 20 then it will become times3.call(20) #=> 60

  # "proc" is a object of Proc class which is used with new method to 
  #  call a block to be executed
