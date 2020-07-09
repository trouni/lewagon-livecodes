require 'csv'
require_relative '../models/order'

class OrderRepository
	def initialize(csv_file, meal_repository, customer_repository, employee_repository)
		@csv_file = csv_file
		@orders = [] # instances of order
		@meal_repository = meal_repository
		@customer_repository = customer_repository
		@employee_repository = employee_repository
		@next_id = 1
		load_csv if File.exist?(@csv_file)
	end

	def add(order)
		order.id = @next_id
		@orders << order
		@next_id += 1
		save_to_csv
	end

	def undelivered_orders
		@orders.reject { |order| order.delivered? }
	end

	def mark_as_delivered(order)
		order.deliver!
		save_to_csv
	end

	def my_undelivered_orders(employee)
		undelivered_orders.select { |order| order.employee == employee }
	end

	private

	def load_csv
		csv_options = { headers: :first_row, header_converters: :symbol }
		CSV.foreach(@csv_file, csv_options) do |attributes|
			attributes[:id] = attributes[:id].to_i
			customer_id = attributes[:customer_id].to_i
			attributes[:customer] = @customer_repository.find(customer_id)
			attributes[:employee] = @employee_repository.find(attributes[:employee_id].to_i)
			attributes[:meal] = @meal_repository.find(attributes[:meal_id].to_i)
			attributes[:delivered] = attributes[:delivered] == 'true'
			order = Order.new(attributes)
			@orders << order
		end
		@next_id = @orders.last.id + 1 unless @orders.empty?
	end

	def save_to_csv
		CSV.open(@csv_file, 'wb') do |csv|
			csv << %w[id meal_id customer_id employee_id delivered]
			@orders.each do |order|
				csv << [order.id, order.meal.id, order.customer.id, order.employee.id, order.delivered?]
			end
		end
	end
end





