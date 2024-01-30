class Router
  def initialize(meals_controller, 
                customers_controller,
                sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    while @running
      # SIGN IN
      @employee = @sessions_controller.sign_in
      while @employee
        print_menu
        choice = gets.chomp.to_i
        print `clear`
        route_action(choice)
      end
    end
  end

  private

  def print_menu
    if @employee.manager?
      print_manager_menu
    else
      print_rider_menu
    end
  end

  def print_manager_menu
    puts "--------------------"
    puts "------- MENU -------"
    puts "--------------------"
    puts "1. Add new meal"
    puts "2. List all meals"
    puts "3. Add new customer"
    puts "4. List all customers"
    puts "8. Exit"
    puts "9. Sign out"
    print "> "
  end

  def print_rider_menu
    puts "--------------------"
    puts "------- MENU -------"
    puts "--------------------"
    puts "1. List undelivered orders"
    puts "8. Exit"
    puts "9. Sign out"
    print "> "
  end

  def route_action(choice)
    if @employee.manager?
      route_manager_action(choice)
    else
      route_rider_action(choice)
    end
  end

  def route_manager_action(choice)
    case choice
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    when 8 then stop!
    when 9 then sign_out!
    else puts "Try again..."
    end
  end

  def route_rider_action(choice)
    case choice
    when 1 then puts "TODO:"
    when 8 then stop!
    when 9 then sign_out!
    else puts "Try again..."
    end
  end
  
  
  def sign_out!
    @employee = nil
  end
  
  def stop!
    sign_out!
    @running = false
  end
end
