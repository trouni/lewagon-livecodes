class Order
	attr_accessor :id, :employee
	attr_reader :meal, :customer, :delivered

	def initialize(attributes = {})
		@id = attributes[:id] # integer
		@meal = attributes[:meal] # meal instance
		@customer = attributes[:customer] # customer instance
		@employee = attributes[:employee] # employee instance
		@delivered = attributes[:delivered] || false # boolean
	end

	def delivered?
		@delivered
	end

	def deliver!
		@delivered = true
	end
end