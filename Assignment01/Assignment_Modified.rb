# rails s == to run the server
# rails c == to run the rails console

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

    array.each do |emp|
        joining_date = Date.parse(emp["joining_date"])
        difff = (todayTime - joining_date).to_i
        case difff
            when 1..180
                puts " #{emp} is Fresher who joined in 6 month" 

            when 181..720
                puts " #{emp} is Beginner Employee"
                
            when 720..1140
                puts " #{emp} is Implementor Employee"
            else
                puts " #{emp} is Expert Employee"
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
