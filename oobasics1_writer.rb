

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    p "Hello! My name is #{self.name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty.greet == "Hello! My name is Sophie!"
kitty.name = "Luna"
puts kitty.greet == "Hello! My name is Luna!"