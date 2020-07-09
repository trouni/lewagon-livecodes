# TODO - Implement the HotelRepository class, it should:
# 1) have an #all method to return all hotels
# 2) have a #find method to return a specific hotel based on the id
# 3) load hotels from a csv file upon creation
require_relative '../models/hotel'
require 'csv'

class HotelRepository
	def initialize(csv_file_path)
		@csv_file_path = csv_file_path
		@hotels = []
		load_csv if File.exists?(@csv_file_path)
	end

	def all
		return @hotels
	end

	def find(id)
		# returns an instance of hotel
		@hotels.find do |hotel|
			hotel.id == id
		end
	end

	def load_csv
		csv_options = { headers: :first_row, header_converters: :symbol }

		CSV.foreach(@csv_file_path, csv_options) do |attributes|
			# Convert all the attributes that are not strings before creating a hotel
			attributes[:id] = attributes[:id].to_i # string => integer
			attributes[:stars] = attributes[:stars].to_i # string => integer
			attributes[:beach] = attributes[:beach] == 'true' # string => integer
			@hotels << Hotel.new(attributes)
		end
	end
end
