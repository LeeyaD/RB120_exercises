# Using the code from the previous exercise, add a getter method named #name and invoke it in place of @name in #greet.

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    p "Hello! My name is #{self.name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty.greet == "Hello! My name is Sophie!"