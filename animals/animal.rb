class Animal
	attr_reader :name

	def initialize(name)
		@name = name
	end

	def self.phyla
		['the round worm', 'the stuff with bones', 'shellfish', 'something else']
	end

	def eat(food)
		"#{@name} eats #{food}."
	end
end