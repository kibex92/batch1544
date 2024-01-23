grades = [19, 8, 11, 15, 13]

sum = 0
grades.each do |grade|
  sum += grade
end

p sum / grades.size.to_f

def capitalized_name(first_name, last_name)
  "#{first_name.capitalize} #{last_name.capitalize}"
end

p capitalized_name("AdoNIS", "smlaTIC")

fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
fruits[1]
# Add an "apple" to the fruits array
fruits << "apple" 
# Replace "watermelon" by "pear"
fruits[2] = "Pear"
# Delete "orange"
fruits.delete("orange")

city = { name: "Paris", population: 2000000 }

# Print out the name of the city
city[:name]
# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = "Eiffel Tower"
# Update the population to 2000001
city[:population] = 2000001
city[:population] += 1
# What will the following code return?
city[:mayor] # nil

students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

# students_hash = students.map do |student|
#   # student -> Array
#   name = student[0]
#   age = student[1]
#   {
#     name: name,
#     age: age
#   }
# end

students_hash = students.map do |name, age|
  # student -> Array
  {
    name: name,
    age: age
  }
end

p students_hash