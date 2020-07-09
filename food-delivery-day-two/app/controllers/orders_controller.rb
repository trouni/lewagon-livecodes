require_relative '../views/orders_view'
require_relative '../views/meals_view'
require_relative '../views/customers_view'
require_relative '../views/sessions_view'

class OrdersController
	def initialize(meal_repository, customer_repository, employee_repository, order_repository)
		@order_repository = order_repository
		@orders_view = OrdersView.new
		@meal_repository = meal_repository
		@meals_view = MealsView.new
		@customer_repository = customer_repository
		@customers_view = CustomersView.new
		@employee_repository = employee_repository
		@employees_view = SessionsView.new
	end

	def add
		meal = pick_meal
		customer = pick_customer
		employee = pick_employee
		order = Order.new(meal: meal, customer: customer, employee: employee)
		@order_repository.add(order)
	end

	def list_undelivered_orders
		orders = @order_repository.undelivered_orders
		@orders_view.display(orders)
	end

	def list_my_orders(current_user)
		orders = @order_repository.my_undelivered_orders(current_user)
		@orders_view.display(orders)
	end

	def mark_as_delivered(current_user)
		list_my_orders(current_user)
		index = @orders_view.ask_for_index('order')
		orders = @order_repository.my_undelivered_orders(current_user)
		order_to_mark = orders[index]
		@order_repository.mark_as_delivered(order_to_mark)
	end

	private

	def pick_meal
		# display all the meals to the user
		meals = @meal_repository.all
		@meals_view.display(meals)

		# ask the user for a meal index
		index = @orders_view.ask_for_index('meal')
		return meals[index]
	end

	def pick_customer
		# display all the customers to the user
		customers = @customer_repository.all
		@customers_view.display(customers)

		# ask the user for a customer index
		index = @orders_view.ask_for_index('customer')
		return customers[index]
	end

	def pick_employee
		# display all the delivery people to the user
		delivery_people = @employee_repository.all_delivery_guys
		@employees_view.display(delivery_people)

		# ask the user for a delivery people index
		index = @orders_view.ask_for_index('delivery guy')
		return delivery_people[index]
	end
end







