class Router
  def initialize(controller)
    @controller = controller
  end
  
  def run
    loop do
      # 1. Display the menu
      show_menu
      # 2. Get the input
      action = gets.chomp.to_i
      # 3. Dispatch the action
      dispatch(action)  
    end
  end
  
  def show_menu
    puts "What do you want to do?"
    puts "1 - List all tasks"
    puts "2 - Add a new task"
    puts "3 - Remove a task"
    puts "4 - Mark as done"
  end
  
  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add_task
    when 3 then @controller.remove_task
    when 4 then @controller.mark_as_done
    else
      puts "Wrong input!"
    end
  end
end