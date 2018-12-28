def func1
    i = 0
    while i<=5
       puts "\nfunc1 at: #{Time.now}\n"
       sleep(2)
       i = i+1
    end
 end
 
 def func2
    j = 0
    while j<=5
       puts "\nfunc2 at: #{Time.now}\n"
       sleep(1) # 1 sec
       j = j+1
    end
 end
 
 puts "Started At #{Time.now}"
 t1 = Thread.new{func1()}
 t2 = Thread.new{func2()}
 t1.join
 t2.join
 puts "End at #{Time.now}\n"