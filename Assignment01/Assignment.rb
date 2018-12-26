require 'csv'    

$table = CSV.read("CSVFile.csv", headers: true)

array = Array.new

for i in 0..$table.length-1

    emp_info = {"code" => $table[i]["code"],
                "name" => $table[i]["name"],
                "age" => $table[i]["age"],
                "dept" => $table[i]["dept"],
                "experience" => $table[i]["experience"],
                "joining_date" => $table[i]["joining_date"]
            }  

    array.push(emp_info)
   
end

def AllEmployeeInfo(array)
    puts "\n===============================> ALL employee's Information"
    puts array

end

def MaxAgeEmployee(array)
    puts "\n\n===============================> MAX age Employee"
    max = array.fetch(0)["age"]

    for i in 0..array.length-1
        if max < array.fetch(i)["age"]    
            max = array.fetch(i)["age"]
        end
    end

    puts max

end


def DeptWiseEmployee(array)
    puts "\n\n===============================> Employees According to Department"

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
end

def LastSixthMonthEmp(array)
    puts "\n\n===============================> Employees Joined last 6 month ago"

    for i in 0..array.length-1
        str = array.fetch(i)["experience"]

        experience = str.split(':')
        year = experience[0].split('-')
        month = experience[1].split('-')

        if year[0] === "0" 
            if month[0] <= "6"
                puts array.fetch(i)   
            end
        end
    end

end

def EmpVerdict(array)
    puts "===============================> Experience Verdict\n\n"

    puts "\n\n===============================>Fresher Employees "
    for i in 0..array.length-1
        str = array.fetch(i)["experience"]

        experience = str.split(':')
        year = experience[0].split('-')
        month = experience[1].split('-')

        if year[0] === "0" 
            if month[0] <= "6"
                puts array.fetch(i)   
            end
        end
    end

    puts "\n\n===============================>Beginner Employees "
    for i in 0..array.length-1
        str = array.fetch(i)["experience"]

        experience = str.split(':')
        year = experience[0].split('-')
        month = experience[1].split('-')

        if year[0] <= "2" and year[0] != "0" 
            puts array.fetch(i)   
        end
    end

    puts "\n\n===============================>Implementer Employees "
    for i in 0..array.length-1
        str = array.fetch(i)["experience"]

        experience = str.split(':')
        year = experience[0].split('-')
        month = experience[1].split('-')

        if year[0] > "2" and year[0] <= "4" 
            puts array.fetch(i)   
        end
    end

    puts "\n\n===============================>Expert Employees "
    for i in 0..array.length-1
        str = array.fetch(i)["experience"]

        experience = str.split(':')
        year = experience[0].split('-')
        month = experience[1].split('-')

        if year[0] > "3"  
            puts array.fetch(i)   
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
choice = gets

puts choice

case choice
when 1 
    puts "something in 1"
    AllEmployeeInfo(array)

when 2
    puts "something in 2"

    MaxAgeEmployee(array)

when 3
    puts "something in 3"

    LastSixthMonthEmp(array)

when 4 
    puts "something in 4"

    EmpVerdict(array)

when 5
    puts "something in 5"

    DeptWiseEmployee(array)

else
    "Error : You have Entered wrong choice"
end
