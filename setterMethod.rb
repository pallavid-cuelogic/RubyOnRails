class Person
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def name=(name)
      @name = name
    end
  end
  
  john = Person.new("ABC")
  john.name = "PQR"
  puts john.name # => PQR