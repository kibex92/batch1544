class SessionsView
  def ask_user_for(input)
    puts "What's the #{input}"
    gets.chomp
  end

  def wrong_credentials
    puts "Oops! Wrong credentials, please try again!"
  end
  
end
