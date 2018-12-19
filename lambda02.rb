def call_proc
    puts "Before proc"
    my_proc = -> { return puts "Hii" }
    my_proc.call
    puts "After proc"
end

call_proc
