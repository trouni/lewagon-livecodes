class Animal
  attr_reader :name

  def initialize(name)
    @name = name
    @sound = ""
  end

  def talk
    "#{@name} #{@sound}"
  end

  def eat(food)
    "#{@name} eats #{food}."
  end

  def self.phyla
    [ 'the wormy ones', 'the mollusc stuff', 'more worms', 'the symmetrical with a butt' ]
  end
end