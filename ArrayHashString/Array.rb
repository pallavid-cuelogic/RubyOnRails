ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
puts Array.new(3, true) #=> [true, true, true]

arr = [1, 2, 3, 4, 5, 6]
puts arr[2]    #=> 3
puts arr[100]  #=> nil
puts arr[-3]   #=> 4
puts arr[2, 3] #=> [3, 4, 5]
puts arr[1..4] #=> [2, 3, 4, 5]

arr.at(0) #=> 1

