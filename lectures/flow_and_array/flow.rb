
# UNLESS
# unless age.odd?
#   puts "Your age is even!"
# end

# NOT OPERATOR
# if !age.odd?
#   puts "Your age is even!"
# end

# IF
# if age.even?
#   puts "Your age is even!"
# end

# puts "What's your age?"
# age = gets.chomp.to_i

# if age >= 18
#   puts "You can vote!"
# else
#   puts "You can't vote!"
# end

# puts "Heads or tails?"
# choice = gets.chomp
# coin = ["heads", "tails"].sample

# if choice == coin
#   puts "You win!"
# else
#   puts "You lose!"
# end

# TERNARY OPERATOR
# <condition> ? <true_case> : <false_case>
# message = choice == coin ? "You win!" : "You lose"
# puts message

# hour = Time.now.hour

# if hour < 12
#   puts "Good morning!"
# elsif hour >= 20
#   puts "Good night!"
# elsif hour > 12
#   puts "Good afternoon!"
# else
#   puts "Lunch time!"
# end

# CASE
# puts "What do you want to do?"
# action = gets.chomp

# case action
# when "read"
#   puts "You are in READ mode"
# when "write"
#   puts "You are in WRITE mode"
# when "exit"
#   puts "Bye Bye"
# else
#   puts "Wrong action"
# end

# if action == "read"

# elsif action == "write"

# end

# puts "what's your age?"
# age = gets.chomp.to_i

# INLINE CONDITIONS
# <what should happen> if <condition>
# puts "Your age is even!" if age.even?


# elegant_dress = false
# on_list = false

# FANCY CLUB

# if elegant_dress && on_list 
#   puts "Welcome to the fancy club!"
# end

# # CHILL CLUB
# if elegant_dress || on_list
#   puts "Welcome to the chill club!"
# end

# OPENING HOURS

# hour = 15

# if (hour >= 9 && hour < 12) || (hour >= 14 && hour < 19)
#   puts "Open!"
# elsif hour >= 12 && hour < 14
#   puts "Lunch break!"
# else
#   puts "Closed!"
# end

# PRICE IS RIGHT

# price = rand(1..5)

# puts "Guess the price!"
# guess = gets.chomp.to_i

# until price == guess
#   puts "Try again!"
#   guess = gets.chomp.to_i
# end
# while price != guess
#   puts "Try again!"
#   guess = gets.chomp.to_i
# end

# loop do
#   puts "Hello"
#   choice = gets.chomp
#   break if choice == "yo"
# end
# puts "You win!"

# FOR LOOP
# for num in ["1", "hello", 5]
#   puts num
# end