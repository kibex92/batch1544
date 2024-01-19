students =     [ "Peter", "Mary", "Boris", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

# Peter is 24 years old, Mary is 25 years old ...

students.each_with_index do |student, index|
  age = student_ages[index]
  puts "#{student} is #{age} years old"
end

# CRUD Arrays
#READ
students[1] # -> Mary

# UPDATE
students[-1] = "Daisy"

# CREATE
students << "Simon"

# DELETE
students.delete("Boris")
students.delete_at(1)