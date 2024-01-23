puts "Welcome to the horse race!"
horses = ["Ruby", "Roach", "Gustaf", "Rosie"]
balance = 100
choice = "Y"
while choice == "Y" && balance >= 10
  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end
  puts "Which horse do you want to choose?"
  user_horse_index = gets.chomp.to_i - 1
  # Approach with .sample
  # winner_horse = horses.sample
  # user_horse = horses[user_horse_index]
  # if winner_horse == user_horse
  #   puts "Winner horse was #{winner_horse}: You win!"
  # else
  #   puts "Winner horse was #{winner_horse}: You lose!"
  # end

  # Approach with rand
  winner_horse_index = rand(0...horses.length)
  winner_horse = horses[winner_horse_index]
  if winner_horse_index == user_horse_index
    puts "Winner horse was #{winner_horse}: You win!"
    # balance = balance + 50
    balance += 50
  else
    puts "Winner horse was #{winner_horse}: You lose!"
    balance -= 10
  end
  puts "You currently have #{balance}€"
  if balance >= 10
    puts "Do you want to bet again?"
    choice = gets.chomp
  else
    puts "You're out of money, sorry!"
  end
end
puts "Thanks! Goodbye"