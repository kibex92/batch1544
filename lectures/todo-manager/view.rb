class View
  # Behavior
  # - Ask user for task description
  # - Ask the user for index
  # - Display all tasks

  def display(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "X" : " "
      puts "#{index + 1} - [#{done}] #{task.description}"
    end
  end

  def ask_user_for_description
    puts "What's the description of your task?"
    gets.chomp
  end

  def ask_user_for_index
    puts "What's the number of the task?"
    gets.chomp.to_i - 1
  end
end
