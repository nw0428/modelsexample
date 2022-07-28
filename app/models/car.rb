class Car < ApplicationRecord
  # The ActiveModel Model methods give us the big advantage of being able to skip writing our own intialize method.
  # Instead it builds in an initializer that takes a Hash and auto-magically™ turns the key value pairs into data in the model
  # ActiveModel models, like normal ruby classes, have to declare their attributes
  attr_accessor :price, :make, :model, :year, :number_of_wheels, :mpg
  validates :number_of_wheels, numericality: { only_integer: true, even: true, greater_than_or_equal_to: 4 }


  # run `rails c`
  # Create a car object `car = Car.new(number_of_wheels: 5, make: "Toyota", model: "Yaris", year: 2014)`
  # run `car.valid?`
  # `valid?` does two things. One it will return true if a model has valid values and false if not. Two it fills up a variable
  # called errors.
  # run `car.errors` and `car.errors.messages` to see what it fills it with.

  # Create a car object `car = Car.new(number_of_wheels: "four", make: "Toyota", model: "Yaris", year: 2014)`
  # run `car.valid?` and `car.errors.messages` notice the difference

  # As a class add a validation step to make sure that the mpg of a car is > 15
  # On your own or in small teams add validations for the presence of a make, model and year
  # Then add validations to make sure that the make and model both start with capital letters
end
