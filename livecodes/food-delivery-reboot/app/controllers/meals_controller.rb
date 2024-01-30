require_relative "../views/meals_view"
require_relative "../models/meal"

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end

  def add
    name = @meals_view.ask_user_for(:name)
    price = @meals_view.ask_user_for(:price).to_i
    meal = Meal.new(name: name, price: price)
    @meal_repository.create(meal)
    display_meals
  end

  def list
    display_meals
  end

  private

  def display_meals
    meals = @meal_repository.all
    @meals_view.display(meals)
  end
end
