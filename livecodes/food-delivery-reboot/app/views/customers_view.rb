class CustomersView
  def display(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1}. #{customer.name} : #{customer.address}"
    end
  end

  def ask_user_for(stuff)
    puts "#{stuff.capitalize}?"
    print "> "
    return gets.chomp
  end
end
