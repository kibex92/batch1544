puts "Welcome to our calculator!"
user_answer = nil
# while user_answer == "Y"
require_relative "calculate"

until user_answer == "N"
# loop do
  puts "Enter your first number"
  first_number = gets.chomp.to_i
  puts "Enter your second number"
  second_number = gets.chomp.to_i
  puts "Choose your operator [+][-][*][/]"

  operator = gets.chomp
  result = calculate(first_number, second_number, operator)

  if result.nil?
    puts "Wrong input, try again!"
  end

  puts result
  puts "Do you want to calculate again?"
  user_answer = gets.chomp.upcase
  # break if user_answer == "N" -> With loop do
end
puts "Goodbye, thank you for using our service!"
