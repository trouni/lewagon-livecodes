require_relative "animal"

class Lion < Animal
  def initialize(name)
    super
    @sound = "meows!!"
  end

  def eat(food)
    "#{@name} eats #{food}. Law of the Jungle!"
  end

  # def talk
  #   "#{@name} meows!!"
  # end
end