# TODO - Create the Traveler model, with the following attributes:
# id (integer), name (string), hotel (hotel instance)

class Traveler
	attr_accessor :id
	attr_reader :name, :hotel

	def initialize(attributes = {})
		@id = attributes[:id]
		@name = attributes[:name]
		@hotel = attributes[:hotel] # instance of hotel
	end
end