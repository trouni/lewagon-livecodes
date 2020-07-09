# TODO - Create the Hotel model, with the following attributes:
# id (integer)
# name (string)
# location (string)
# stars (integer)
# beach (boolean)

class Hotel
	attr_accessor :id
	attr_reader :name, :location, :stars

	def initialize(attributes = {})
		@id = attributes[:id]
		@name = attributes[:name]
		@location = attributes[:location]
		@stars = attributes[:stars] # integer
		@beach = attributes[:beach] # boolean
	end

	def beach?
		@beach
	end
end