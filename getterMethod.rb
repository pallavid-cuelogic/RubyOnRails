class Person
    def initialize(name)
      @name = name
    end
  
    def name # this is a getter method without this we can not access "name" because it is private
      @name
    end
  end
  
  john = Person.new("ABC")
  puts john.name # => ABC

  # instead of getter method we can use attr_reader method to access the "name"

#  class Person
#  attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end
# end
  
# john = Person.new("John")
# puts john.name