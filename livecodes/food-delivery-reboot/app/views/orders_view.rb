class OrdersView
  def ask_user_for(stuff)
   puts "#{stuff.capitalize}?"
   print "> "
   return gets.chomp
 end

  def ask_user_for_index
    ask_user_for("number").to_i - 1
  end

  def display(employees)
    employees.each_with_index do |employee, index|
      puts "#{index + 1} - #{employee.username}"
    end
  end
end