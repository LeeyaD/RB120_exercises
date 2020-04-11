# Consider the following code:
class Pet
  attr_reader :name, :type

  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "=> a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.size
  end

  def print_pets
    pets.each do |pet|
      puts pet
    end
  end
end

class Shelter
  attr_reader :owners, :not_yet_adopted_pets
  def initialize
    @owners = []
    @not_yet_adopted_pets = []
  end

  def adopt(owner, pet)
    owners << owner unless owners.include?(owner)
    owner.pets << pet
  end

  def print_adoptions
    owners.each do |owner|
      if owner.name == 'The Animal Shelter'
        puts "#{owner.name} has the following unadopted pets:"
      else
        puts "#{owner.name} has adopted the following pets:"
      end
      owner.print_pets
      puts "\n"
    end
  end


end
butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
lucky = Pet.new('dog', 'Lucky')
goldie = Pet.new('fish', "Goldie")
asta =  Pet.new("dog", "Asta")
laddie =  Pet.new("dog", "Laddie")
fluffy =  Pet.new("cat", "Fluffy")
kat =  Pet.new("cat", "Kat")
ben =  Pet.new("cat", "Ben")
chatterbox =  Pet.new("parakeet", "Chatterbox")
bluebell =  Pet.new("parakeet", "Bluebell")

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')
ldavis = Owner.new('L Davis')
animal_shelter = Owner.new('The Animal Shelter')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.adopt(ldavis, lucky)
shelter.adopt(ldavis, goldie)
shelter.adopt(animal_shelter, asta)
shelter.adopt(animal_shelter, laddie)
shelter.adopt(animal_shelter, fluffy)
shelter.adopt(animal_shelter, kat)
shelter.adopt(animal_shelter, ben)
shelter.adopt(animal_shelter, chatterbox)
shelter.adopt(animal_shelter, bluebell)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "#{ldavis.name} has #{ldavis.number_of_pets} adopted pets."
puts "#{animal_shelter.name} has #{animal_shelter.number_of_pets} unadopted pets."

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.