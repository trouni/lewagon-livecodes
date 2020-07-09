class SessionsView
	def ask_for(something)
		puts "#{something}?"
		print "> "
		return gets.chomp
	end

	def successful_signin(employee)
		puts "Welcome #{employee.username}!"
	end

	def print_wrong_credentials
		puts "Sorry, wrong credentials."
	end

	def display(employees)
		employees.each_with_index do |employee, index|
			puts "#{index + 1}. #{employee.username}"
		end
	end
end
