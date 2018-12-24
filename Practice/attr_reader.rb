class Person
    attr_reader :name
  
    def initialize(name) # initialize is one type of constructor
      @name = name
    end
end
  
john = Person.new("ABC")
puts john.name