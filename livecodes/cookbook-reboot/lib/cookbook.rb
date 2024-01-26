require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    load_csv
  end

  # Create a new recipe entry
  # Get all recipes
  # Destroy a recipe

  def all
    @recipes
  end

  def create(recipe)
    @recipes << recipe
    save_csv
  end
  
  def destroy(index)
    @recipes.delete_at(index)
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      name = row[0]
      description = row[1]
      recipe = Recipe.new(name, description)
      @recipes << recipe
    end
  end
  
  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each do |recipe|
        # recipe -> Recipe object, instance of class Recipe
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
