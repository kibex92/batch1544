class Controller
  # STATE
  # - view -> ViewClass
  # - repository -> TaskRepositoryClass

  # BEHAVIOR
  # User action
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def list
    display_tasks
  end
  
  def add_task
    # 1. Ask user for description -> View
    description = @view.ask_user_for_description
    # 2. Create task object
    task = Task.new(description)
    # 3. Store it -> Repository
    @repository.create(task)
  end
  
  def remove_task
    # 1. Display all tasks
    display_tasks
    # 2. Ask the user for the index of the task to remove
    index = @view.ask_user_for_index
    # 3. Call destroy method in the repository
    @repository.destroy(index)
    display_tasks
  end
  
  def mark_as_done
    # 1. Display all tasks -> View
    display_tasks
    # 2. Ask the user which task to mark
    index = @view.ask_user_for_index
    # 3. Find the task -> Repository
    task = @repository.find(index)
    # 4. Mark the task as done
    task.done!
    # 5. Display
    display_tasks
  end

  private

  def display_tasks
    # 1. Get all -> Repository
    tasks = @repository.all
    # 2. Display -> View
    @view.display(tasks)
  end
end
