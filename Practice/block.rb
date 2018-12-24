def my_method
    puts "In Method"
    yield
    yield
    puts "In Method again"
end

my_method { puts 'In Block' }