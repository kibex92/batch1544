class TaskRepository
  # STATE
  # - tasks -> Array

  # BEHAVIOR
  # - Get all tasks
  # - Create a new task entry
  # - Destroy a task
  # - Find one task

  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end
  
  def create(task)
    @tasks << task
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end