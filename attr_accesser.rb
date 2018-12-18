class Person
    attr_accessor :name, :age, :sex, :email
  
    def initialize(name)
      @name = name
    end
  end

  john = Person.new("ABC")
  john.name = "Jim"
  puts john.name # => Jim

# attr_accessor is used for both reading and writing purpose of attributes
