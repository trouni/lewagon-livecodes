require_relative 'view'

class Controller
	def initialize(cookbook)
		@cookbook = cookbook
		@view = View.new
	end

	def list
		recipes = @cookbook.all
		@view.display_recipes(recipes)
	end

	def create
		name = @view.ask_user_for_recipe_name
		description = @view.ask_user_for_recipe_description
		recipe = Recipe.new(name, description)
		@cookbook.add_recipe(recipe)
	end

	def destroy
		list
		index = @view.ask_user_for_index_to_delete
		@cookbook.remove_recipe(index)
	end
end