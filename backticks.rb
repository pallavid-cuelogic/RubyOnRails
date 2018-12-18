puts "Using backticks: "
res = %x(time )
puts res

puts "Using system: "
res = system "time "
puts res