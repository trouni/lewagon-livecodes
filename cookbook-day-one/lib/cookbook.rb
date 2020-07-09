require_relative 'recipe'
require 'csv'

class Cookbook
	def initialize(csv_file_path = nil)
		@recipes = []
		@csv_file_path = csv_file_path
		load_csv if @csv_file_path
	end

	def add_recipe(recipe) # Instance of Recipe
		@recipes << recipe
		save_csv
	end

	def remove_recipe(recipe_index)
		@recipes.delete_at(recipe_index)
		save_csv
	end

	def all
		@recipes
	end

	private

	def load_csv
		CSV.foreach(@csv_file_path) do |row|
			@recipes << Recipe.new(row[0], row[1])
		end
	end

	def save_csv
		return unless @csv_file_path

		csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

		CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
			@recipes.each do |recipe|
				csv << [recipe.name, recipe.description]
			end
		end
	end
end




