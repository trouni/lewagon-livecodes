require_relative "animal"

class Meerkat < Animal
  def initialize(name)
    super
    @sound = "yaps."
  end
end