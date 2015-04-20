## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    # this would call the base class initialize method
    super(name)
    ## Employee has-a salary
    @salary = salary
  end

end

## Fish class
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## Creates a satan object from the Cat class
satan = Cat.new("Satan")

## Creates a mary object from the Person class
mary = Person.new("Mary")

## Assign satan as mary's pet
mary.pet = satan

## Creates a frank object from the Employee class
frank = Employee.new("Frank", 120000)

## Assign rover as frank's pet
frank.pet = rover

## Creates a flipper object from the Fish class
flipper = Fish.new()

## Creates a crouse object from the Salmon class
crouse  = Salmon.new()

## Creates a harry object from the Halibut class
harry = Halibut.new()