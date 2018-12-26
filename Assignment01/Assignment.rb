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

puts "\n===============================> ALL employee's Information"

def AllEmployeeInfo(array)

    puts array

end

AllEmployeeInfo(array)


puts "\n\n===============================> MAX age Employee"

def MaxAgeEmployee(array)

    max = array.fetch(0)["age"]

    for i in 0..array.length-1
        if max < array.fetch(i)["age"]    
            max = array.fetch(i)["age"]
        end
    end

    puts max

end

MaxAgeEmployee(array)

puts "\n\n===============================> Employees According to Department"

def DeptWiseEmployee(array)

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

DeptWiseEmployee(array)

puts "\n\n===============================> Employees Joined last 6 month ago"

def LastSixthMonthEmp(array)

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

LastSixthMonthEmp(array)

# "===============================> Experience Verdict"

def EmpVerdict(array)

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

EmpVerdict(array)