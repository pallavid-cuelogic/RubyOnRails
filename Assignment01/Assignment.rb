require 'csv'    

table = CSV.read("CSVFile.csv", headers: true)

#puts table

puts table[0]["code"]

puts table[0]["name"]

puts table.by_col[0]

printf table.by_col[1]
