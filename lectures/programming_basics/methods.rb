# puts "Hello Simon!"
# puts "Hello Caspar!"
# puts "Hello Pauline!"
require 'date'
def greet(name)
  return "Hello #{name}"
end

# greet("Ghadeer")
greeting = greet("Ghadeer")

def max(x, y)
  if x > y
    return x
  else
    return y
  end
end

first_number = 10
second_number = 2
biggest = max(first_number, second_number)
# puts biggest

def tomorrow
  tomorrow_date = Date.today + 1
  return tomorrow_date.strftime("%B %d")
end

puts tomorrow