require_relative 'recipe'
require_relative 'cookbook'

recipe = Recipe.new("Cevapcici", "Delicious")
cookbook = Cookbook.new
cookbook.create(recipe)

cookbook.destroy(0)
p cookbook.all
