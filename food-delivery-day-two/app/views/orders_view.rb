class OrdersView
	def ask_for_index(something)
		puts "#{something} index?"
		print "> "
		return gets.chomp.to_i - 1
	end

	def display(orders)
		orders.each_with_index do |order, index|
			puts "#{index + 1}. #{order.employee.username} should deliver #{order.meal.name} to #{order.customer.name}."
		end
	end
end