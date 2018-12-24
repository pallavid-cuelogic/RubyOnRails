class Person
    attr_reader :name
    attr_writer :name
  
    def initialize(name)
      @name = name
    end
  end
  
  john = Person.new("ABC")
  john.name = "Jim"
  puts john.name # => Jim
  