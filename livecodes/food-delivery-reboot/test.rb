require_relative 'app/repositories/employee_repository'
require_relative 'app/repositories/order_repository'
require_relative 'app/repositories/meal_repository'
require_relative 'app/repositories/customer_repository'
require_relative 'app/repositories/employee_repository'
require_relative 'app/controllers/meals_controller'

# employees_csv = "data/employees.csv"
# employee_repository = EmployeeRepository.new(employees_csv)
MEALS_CSV_FILE = File.join(__dir__, "data/meals.csv")
meal_repository = MealRepository.new(MEALS_CSV_FILE)
meals_controller = MealsController.new(meal_repository)

CUSTOMERS_CSV_FILE = File.join(__dir__, "data/customers.csv")
customer_repository = CustomerRepository.new(CUSTOMERS_CSV_FILE)

EMPLOYEES_CSV_FILE = File.join(__dir__, "data/employees.csv")
employee_repository = EmployeeRepository.new(EMPLOYEES_CSV_FILE)


orders_csv = "data/orders.csv"
order_repository = OrderRepository.new(orders_csv, meal_repository, customer_repository, employee_repository)
