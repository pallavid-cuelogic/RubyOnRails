require 'csv'    

#CSV.foreach('/file.csv', :headers => true) do |row|
#  Moulding.create!(row.to_hash)
#end

##########################################################

#require 'csv'
#puts CSV.read("file2.csv")
#puts "Another way \n"
#puts CSV.parse("\n1,chocolate\n2,bacon\n3,apple")

##########################################################

table = CSV.read("file2.csv", headers: true)

#puts table

puts table[0]["id"]
# "1"
puts table[0]["name"]
# "chocolate"

#puts table.by_col[0]
# ["1", "2", "3", "4", "5"]

#puts table.by_col[1]
# ["chocolate", "bacon", "apple", "banana", "almonds"]

