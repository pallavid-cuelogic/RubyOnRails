# last 6 months ago date 
    # for each emp covert joing date str into Date obj
    # Compare 2 dates with 6.months
    # change loop style



    require 'csv'    
require 'date'


$table = CSV.read("CSVFile.csv", headers: true)

# Read line by line loop
#    each line represents 1 emp in {}
#   array << {}

array = Array.new

for i in 0..$table.length-1

    emp_info = {"code" => $table[i]["code"],
                "name" => $table[i]["name"],
                "age" => $table[i]["age"],
                "dept" => $table[i]["dept"],
                "joining_date" => $table[i]["joining_date"]
            }  

    array.push(emp_info)
   
end

def AllEmployeeInfo(array)
    puts "\n===============================> ALL employee's Information"
    puts array

end


#array.each do |employee|
 #   Date.new(employee["joining_date"])
#end




def MaxAgeEmployee(array)
    puts "\n\n===============================> MAX age Employee"

    max = array.group_by{|ele| ele["age"] }
#    puts max.keys

    max = array.max_by {|element| element["age"]}
    puts max

    #array.each do |emp|
     #   puts emp["age"]
    #end

=begin

    max = array.fetch(0)["age"]

    for i in 0..array.length-1
        if max < array.fetch(i)["age"]    
            max = array.fetch(i)["age"]
        end
    end

    puts max
=end

end

def DeptWiseEmployee(array)
    puts "\n\n===============================> Employees According to Department"
    a1 = array.group_by{|ele| ele["dept"] }

    puts "a1=====================>>> #{a1}=== #{a1.class}"
    


=begin
    puts "\nEmployees of Department Finance"
    for i in 0..array.length-1
        if array.fetch(i)["dept"] === "Finance"
            puts array.fetch(i)
        end
    end
    
    puts "\nEmployees of Department Technical"
    for i in 0..array.length-1
        if array.fetch(i)["dept"] === "Technical"
            puts array.fetch(i)
        end
    end

    puts "\nEmployees of Department HR"
    for i in 0..array.length-1
        if array.fetch(i)["dept"] === "HR"
            puts array.fetch(i)
        end
    end

=end

end


def LastSixthMonthEmp(array)
    puts "\n\n===============================> Employees Joined last 6 month ago"

# Date of joining 

# Compare today with date of joining
# time1 = Time.now  it will also works

    currentDate = Time.new    # YYYY-MM-DD
    currentDate.inspect

#    puts Date.today - 1.day

    todayTime = Date.today

    month = todayTime.prev_month(6)
    
    joining_date = array.fetch(1)["joining_date"]
 
    date = Date.parse(joining_date)

    date = todayTime.prev_year(2)

    month = todayTime.prev_year(1)

    # YYYY-MM-DD

    a = date.month - todayTime.month

    difference = (month - date).to_i

    puts difference


    #puts a

#array.each do |emp|
     #   puts emp["age"]
    #end


=begin
    array.each do |emp|
        joining_date = Date.parse(emp["joining_date"])
        year = todayTime.year - joining_date.year
        puts year
        if year == 0 
            if joining_date.month >= (todayTime.month - 6)
                puts emp
            end
        end

        if year == 1
            if joining_date.month >= (todayTime.month + 6)
                puts emp
            end
        end
    end
=end


    todayTime = Date.today

    prevMonth = todayTime.prev_month(6)
    
    #puts prevMonth

    joining_date = array.fetch(7)["joining_date"]
 
    date = Date.parse(joining_date)

    if month < date
     #   puts "u r in 6 months coverage"
    end

    prevYear = todayTime.prev_year(2)

    
    #puts prevYear

=begin
    array.each do |emp|
        joining_date = Date.parse(emp["joining_date"])
        if joining_date > prevMonth
            puts emp
        end
    end
=end


    #puts " 1 month ago ==============> #{PrevMonth}"

    # last 6 months ago date 
    # for each emp covert joing date str into Date obj
    # Compare 2 dates with 6.months
=begin
    str = array.fetch(0)["joining_date"]
    date = str.split('-')
    for i in 0..array.length-1
        str = array.fetch(i)["joining_date"]
        date = str.split('-')    
        diffYear = currentDate.year - date[0].to_i 
        if diffYear == 0
            monthDiff = currentDate.month - date[1].to_i 
            if monthDiff <= 6
                puts array.fetch(i)
            end
        end
        if diffYear == 1
            if currentDate.month < 6
                monthDiff = 6 + currentDate.month
                if date[1].to_i == monthDiff || date[1].to_i > monthDiff
                    puts array.fetch(i)
                end
            end
        end
    end
=end
end


LastSixthMonthEmp(array)



def EmpVerdict(array)
    puts "=======================================> Experience Verdict\n"

    
    # last 6 months ago date 
    # for each emp covert joing date str into Date obj
    # Compare 2 dates & pass that diff to case stmt

    currentDate = Time.new    # YYYY-MM-DD
    currentDate.inspect

    str = array.fetch(0)["joining_date"]
    date = str.split('-')

    puts "\n\n===============================>Fresher Employees who joined in 6 months"
    for i in 0..array.length-1
        str = array.fetch(i)["joining_date"]
        date = str.split('-')    
        diffYear = currentDate.year - date[0].to_i 
        if diffYear == 0
            monthDiff = currentDate.month - date[1].to_i 
            if monthDiff <= 6
                puts array.fetch(i)
            end
        end
        if diffYear == 1
            if currentDate.month < 6
                monthDiff = 6 + currentDate.month
                if date[1].to_i == monthDiff || date[1].to_i > monthDiff
                    puts array.fetch(i)
                end
            end
        end
    end

    puts "\n\n===============================>Beginner Employees who joined in 6 to 24 months"
    for i in 0..array.length-1
        str = array.fetch(i)["joining_date"]
        date = str.split('-')
        diffYear = currentDate.year -  date[0].to_i
        if diffYear <= 2 && diffYear >=0
            if diffYear == 1
                if currentDate.month > 6
                    puts array.fetch(i)
                else
                    monthDiff = 6 + currentDate.month
                    if date[1].to_i < monthDiff
                        puts array.fetch(i)
                    end
                end
            end
        end
    end

    puts "\n\n===============================>Implementer Employees "
    for i in 0..array.length-1
        str = array.fetch(i)["joining_date"]
        date = str.split('-')
        diffYear = currentDate.year - date[0].to_i

        if diffYear >= 2 && diffYear <= 4
            puts array.fetch(i)
        end
    end

    puts "\n\n===============================>Expert Employees "
    for i in 0..array.length-1
        str = array.fetch(i)["joining_date"]
        date = str.split('-')
        diffYear = currentDate.year - date[0].to_i

        if diffYear > 4 
            puts array.fetch(i)
        end

    end

    array.each do |employee|
        Date.new(employee["joining_date"])
    end
end


#   array.fetch(1).group_by{|element| puts element }

#   puts array.group_by{|element| element["dept"] == "HR" }

#   array.group_by{|element| element.map {|a| puts a[:dept]}  }

#   puts array.group_by { |e| e.group_by{|element| element } }   

# actual work array group by method
#a1 = array.group_by{|ele| ele["dept"] }
#puts "a1=====================>>> #{a1}=== #{a1.class}"

# DeptWiseEmployee(array)


#MaxAgeEmployee(array)


=begin

puts "\n\n===============================>Employee's Information\n"
puts "1: All Employee's Information\n"
puts "2: MAX age Employee\n"
puts "3: Employee who have joined in last 6 months \n"
puts "4: Experience Verdict \n"
puts "5: Department wise Employees\n\n"

print "Enter Your Choice="
choice = gets.to_i

#puts array.group_by{ |d| d[:dept] }

#puts choice
#puts "choice === #{choice.class}"

for i in 0..array.length-1
    temp = array.group_by { |age| age[array.fetch(i)["dept"]] }
end

# puts temp

# puts array.group_by{ |d| d[&:dept] }

case choice
when 1
    AllEmployeeInfo(array)

when 2
    MaxAgeEmployee(array)

when 3
    LastSixthMonthEmp(array)

when 4 
    EmpVerdict(array)

when 5
    DeptWiseEmployee(array)

else
   puts "Error : You have Entered wrong choice"
end
=end










=begin
    # single loop => 1) calculate expi & decide the verdict
    puts "\n\n===============================>Fresher Employees who joined in 6 months"
    array.each do |emp|
        joining_date = Date.parse(emp["joining_date"])
        if joining_date > prev6Month
            puts emp
        end
    end

    puts "\n\n===============================>Beginner Employees who joined in 6 to 24 months"
    array.each do |emp|
        joining_date = Date.parse(emp["joining_date"])
        if joining_date < prev6Month && joining_date > prev24Month
            puts emp
        end
    end

    puts "\n\n===============================>Implementer Employees "
    array.each do |emp|
        joining_date = Date.parse(emp["joining_date"])
        if joining_date < prev2Year && joining_date > prev4Year
            puts emp
        end
    end

    puts "\n\n===============================>Expert Employees "
    array.each do |emp|
        joining_date = Date.parse(emp["joining_date"])
        if joining_date < prev3Year
            puts emp
        end
    end
=end


