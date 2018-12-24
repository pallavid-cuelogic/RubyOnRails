class Polygon
    @@sides = 10
    def self.sides
      @@sides = @@sides + 10
    end
end

# The Class variable should get defined in class with self keyword and then can be accessed

class Triangle < Polygon
    @@sides = 10
end

puts Polygon.sides
puts Polygon.sides 
puts Triangle.sides 
