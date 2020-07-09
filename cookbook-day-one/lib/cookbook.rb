require 'csv'
require_relative 'recipe'

class Cookbook
	def initialize(csv_file = nil)
		@csv_file = csv_file
		@recipes = []
		load_csv if @csv_file
	end

	def all
		@recipes
	end

	def add_recipe(recipe)
		@recipes << recipe
		save_csv if @csv_file
	end

	def remove_recipe(recipe_index)
		@recipes.delete_at(recipe_index)
		save_csv if @csv_file
	end

	private

	def load_csv
		CSV.foreach(@csv_file) do |row|
			@recipes << Recipe.new(row[0], row[1])
		end
	end

	def save_csv
		csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
		CSV.open(@csv_file, 'wb', csv_options) do |csv|
			@recipes.each do |recipe|
				csv << [recipe.name, recipe.description]
			end
		end
	end
end