# This will not work 
# But this will surely work with lambda in lambda02.rb file

def call_proc
    puts "Before proc"
    my_proc = Proc.new { return 2 }
    my_proc.call
    puts "After proc"
end
call_proc