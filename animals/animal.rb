class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    ['the wormy ones', 'the shellfish stuff', 'symmetrical ones with a butt', 'the other ones']
  end

  def eat(food)
    "#{@name} eats #{food}."
  end
end