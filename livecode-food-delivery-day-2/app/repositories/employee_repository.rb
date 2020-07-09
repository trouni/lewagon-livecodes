require 'csv'
require_relative '../models/employee'

class EmployeeRepository
	def initialize(csv_file)
		@csv_file = csv_file
		@elements = []
		load_csv if File.exist?(@csv_file)
	end

	def all_delivery_guys
		@elements.select { |element| element.delivery_guy? } # returns an array
	end

	def find(id)
		@elements.find { |element| element.id == id } # returns an instance of employee
	end

	def find_by_username(username)
		@elements.find { |element| element.username == username } # returns an instance of employee
	end

	private

	def load_csv
		csv_options = { headers: :first_row, header_converters: :symbol }
		CSV.foreach(@csv_file, csv_options) do |row|
			row[:id] = row[:id].to_i
			@elements << Employee.new(row)
		end
	end
end