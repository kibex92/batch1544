require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def add
    # 1. Ask user for name
    name = @view.ask_user_for("name")
    # 2. Ask user for description
    description = @view.ask_user_for("description")
    # 3. Create recipe object
    recipe = Recipe.new(name, description)
    # 4. Store in the cookbook
    @cookbook.create(recipe)
  end

  def list
    display_recipes
  end

  def remove
    # 1. Display all recipes
    display_recipes
    # 2. Ask the user for the index
    index = @view.ask_user_for_index
    # 3. Call destroy method from cookbook
    @cookbook.destroy(index)
    # 4. Display again
    display_recipes
  end

  private

  def display_recipes
     # 1. Get all recipes from the cookbook
    recipes = @cookbook.all
    # 2. Display through the view
    @view.display(recipes)
  end
end
