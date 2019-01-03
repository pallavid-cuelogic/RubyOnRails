require 'csv'    
require 'date'

$table = CSV.read("CSVFile.csv", headers: true)

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
    puts "\n===============================> ALL Employee's Information"
    puts array
end

def MaxAgeEmployee(array)
    puts "\n\n===============================> MAX age Employee"    
    maxAge = array.max_by {|element| element["age"]}
    puts maxAge
end

def DeptWiseEmployee(array)
    puts "\n\n===============================> Employees According to Department"
    emp = array.group_by{|ele| ele["dept"] }
    puts emp
end    

def LastSixthMonthEmp(array)
    todayTime = Date.today

    prevMonth = todayTime.prev_month(6)
    
    array.each do |emp|
        joining_date = Date.parse(emp["joining_date"])
        if joining_date > prevMonth
            puts emp
        end
    end

end

def EmpVerdict(array)
    todayTime = Date.today
    prev6Month = todayTime.prev_month(6)
    prev24Month = todayTime.prev_month(24)
    prev2Year = todayTime.prev_year(2)
    prev3Year = todayTime.prev_year(3)
    prev4Year = todayTime.prev_year(4)

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

end

puts "\n\n===============================>Employee's Information\n"
puts "1: All Employee's Information\n"
puts "2: MAX age Employee\n"
puts "3: Employee who have joined in last 6 months \n"
puts "4: Experience Verdict \n"
puts "5: Department wise Employees\n\n"

print "Enter Your Choice="
choice = gets.to_i

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


