# Using the following code, create a module named Walkable that contains a method named #walk. This method should print Let's go for a walk! when invoked. Include Walkable in Cat and invoke #walk on kitty.

module Walkable
  def walk
    p "Let's go for a walk!"
  end
end

class Cat
  include Walkable
  
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    p "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')

puts kitty.greet == "Hello! My name is Sophie!"
puts kitty.walk == "Let's go for a walk!"