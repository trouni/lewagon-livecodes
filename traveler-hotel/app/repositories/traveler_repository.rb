require_relative '../models/traveler'
require 'csv'

class TravelerRepository
	def initialize(csv_file_path, hotel_repository)
		@csv_file_path = csv_file_path
		@hotel_repository = hotel_repository
		@travelers = []
		load_csv if File.exists?(@csv_file_path)
	end

	def all
		return @travelers
	end

	# def find(id)
	# 	# returns an array of instances of hotel
	# 	@travelers.find do |traveler|
	# 		traveler.id == id
	# 	end
	# end

	def load_csv
		csv_options = { headers: :first_row, header_converters: :symbol }

		CSV.foreach(@csv_file_path, csv_options) do |attributes|
			attributes[:id] = attributes[:id].to_i
			hotel_id = attributes[:hotel_id].to_i
			attributes[:hotel] = @hotel_repository.find(hotel_id) # instance of hotel
			@travelers << Traveler.new(attributes)
		end
	end
end
