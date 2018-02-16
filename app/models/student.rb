class Student < ApplicationRecord
  # Student functions as a completely empty class because it uses the table called
  # students to inform it as to what it should hold

  # In rails c run `Student.new`. Notice that students contain 3 instance variables two that we explicitly asked for
  # and id which rails adds by default to all models unless you tell it not to.
  # run `student = Student.new(name: 'Jorge Vasquez', birthdate: '2000-06-24')`
  # Notice that rails understands `YYYY-MM-DD` for dates by default.
  # Also notice that our new student does not have an id!
  # Run `student.save!` take note and discuss the output of this method

  # Try running `Student.new(name: 'George Prentice').save!` why did this not work?
  # Save a few more students in the rails console.
  # Then try `Student.first`, `Student.last` and `Student.all` what are these methods doing?

  # Now try `Student.find_by_name("Jorge Vasquez")` and `Student.find_by_name("David Zabner")`
  # Also try `Student.find_by(name: "Jorge Vasquez")`
  # How would you find a student by their birthdate?
  validates_presence_of :name, :birthdate

  # Add validations to make sure that every student has a first name, a last name and a valid birthdate in the last 20 years
  # Alone or in small groups add methods to student to give the age of a student and their grade
  # Assume that students who are five on september 1 start kindergarten on that date.
end
