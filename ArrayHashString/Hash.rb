# Different ways to declare an hash(Associative array)

# This way
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }

# This way
options = { :font_size => 5000, :font_family => "Arial" }

puts grades["Jane Doe"]

puts options[:font_size]

# This way
hash1 = Hash.new
hash1["Dorothy Doe"] = 7

puts hash1["Dorothy Doe"]

# This way
books         = {}
books["matz"]  = "The Language"
books[:black] = "The Well-Grounded to Earth"

#puts books["matz"]
#puts books[:black]

# This way
Person.create(name: "John Doe", age: 27)

def self.create(params)
  @name = params[:name]
  @age  = params[:age]
end

puts Person
