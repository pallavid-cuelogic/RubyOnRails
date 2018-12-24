require 'csv'    
require 'pp'

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

puts "===============================> ALL employee"

def AllEmployeeInfo(array)

    puts array

end

AllEmployeeInfo(array)

puts "===============================> MAX age"

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

puts "===============================> Employees According to Department"

def DeptWiseEmployee(array)

    puts "Employees of Department Finance"
    for i in 0..array.length-1
        if array.fetch(i)["dept"] === "Finance"
            puts array.fetch(i)
        end
    end
    
    puts "Employees of Department Technical"
    for i in 0..array.length-1
        if array.fetch(i)["dept"] === "Technical"
            puts array.fetch(i)
        end
    end

    puts "Employees of Department HR"
    for i in 0..array.length-1
        if array.fetch(i)["dept"] === "HR"
            puts array.fetch(i)
        end
    end
end

DeptWiseEmployee(array)

puts "===============================> Employees Joined last 6 month ago"

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

puts "===============================> Experience Verdict"

def EmpVerdict(array)

    puts "===============================>Fresher Employees "
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

    puts "===============================>Beginner Employees "
    for i in 0..array.length-1
        str = array.fetch(i)["experience"]

        experience = str.split(':')
        year = experience[0].split('-')
        month = experience[1].split('-')

        if year[0] === "0" 
            if month[0] >= "6"
                puts array.fetch(i)   
            end
        end
    end


end

EmpVerdict(array)







=begin



#puts "===============================> ALL employee"

#arr = array.fetch(0)["code"]

#puts arr["code"]

#puts array.fetch(0)["code"]
#puts array.length



emp_info = {"code" => table[1]["code"],
            "name" => table[1]["name"],
            "age" => table[1]["age"],
            "dept" => table[1]["dept"],
            "experience" => table[1]["experience"],
            "joining_date" => table[1]["joining_date"]
        }  


#puts array

array.push(emp_info)

puts "new############################3333333333333"
puts array.fetch(1)



#puts emp_info

#puts array[10][0]["code"]

#array.push

#puts table

#puts table[0]["code"]

#puts table[0]["name"]

#puts table.by_col[0]

#puts table.by_col[1]

=end