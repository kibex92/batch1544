require_relative "../views/meals_view"
require_relative "../views/orders_view"
require_relative "../views/customers_view"

class OrdersController
  def initialize(meal_repository, customer_repository, employee_repository, order_repository)
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @order_repository = order_repository
    @orders_view = OrdersView.new
  end

  def add
    # Order needs a Meal, Customer and Employee object!
    # MEALS
    # 1. Get all meals -> MealRepository
    p meal = display_meals
    p customer = display_customers
    p employee = display_employees
    # CUSTOMERS
    # 1. Get all customers -> CustomerRepository
    # 2. Display all customers -> CustomersView
    # 3. Ask user for index
    # 4. Find the customer
    # ...

    # Create an order with all the info
    order = Order.new(
      meal: meal,
      customer: customer,
      employee: employee
    )
    # Send it to the order repo
    @order_repository.create(order)
  end

  private

  def display_meals
     meals = @meal_repository.all
    # 2. Display all meals -> MealsView
    MealsView.new.display(meals)
    # 3. Ask user for the index
    index = @orders_view.ask_user_for_index
    # 4. Find the meal at the index
    meals[index]
  end

  def display_customers
     customers = @customer_repository.all
    # 2. Display all meals -> MealsView
    CustomersView.new.display(customers)
    # 3. Ask user for the index
    index = @orders_view.ask_user_for_index
    # 4. Find the meal at the index
    customers[index]
  end

  def display_employees
    employees = @employee_repository.all_riders
    # 2. Display all meals -> MealsView
    @orders_view.display(employees)
    # 3. Ask user for the index
    index = @orders_view.ask_user_for_index
    # 4. Find the meal at the index
    employees[index]
  end
end