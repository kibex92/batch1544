require_relative 'task'
require_relative 'task_repository'
require_relative 'view'
require_relative 'controller'
require_relative 'router'

repository = TaskRepository.new
view = View.new
controller = Controller.new(view, repository)

router = Router.new(controller)
router.run