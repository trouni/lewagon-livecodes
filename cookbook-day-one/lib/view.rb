class View
	def display_recipes(recipes)
		puts
		puts "Your recipes:"
		recipes.each_with_index do |recipe, index|
			puts "#{index + 1}. #{recipe.name} | #{recipe.description}"
		end
	end

	def ask_user_for_recipe_name
		puts
		puts "What is your recipe name?"
		print '> '
		gets.chomp
	end

	def ask_user_for_recipe_description
		puts
		puts "What is your recipe description?"
		print '> '
		gets.chomp
	end

	def ask_user_for_index_to_delete
		puts
		puts "Which recipe?"
		print '> '
		gets.chomp.to_i - 1
	end
end