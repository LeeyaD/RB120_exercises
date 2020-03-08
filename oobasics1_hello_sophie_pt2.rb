=begin
  Using the code from the previous exercise, move the greeting from the #initialize method to an instance method named #greet that prints a greeting when invoked.
=end

class Cat
  def initialize(name)
    @name = name
  end

  def greet
    p "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
puts kitty.greet == "Hello! My name is Sophie!"