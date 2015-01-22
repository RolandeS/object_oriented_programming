class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end
# number 5: The best place to put this method is in the class Person:
	def greet
		puts "Hi, my name is #{@name}"
	end
end


#CLASS STUDENT
class Student < Person

	def initialize(name)
		super(name)
	end

	def learn
		puts "I get it!"
	end
end

#CLASS INSTRUCTOR
class Instructor < Person
	def initialize(name)
		super(name)
	end

	def teach
		puts "Everything in Ruby is an Object"
	end
end

chris = Instructor.new("Chris")
chris.greet

cristina = Student.new("Cristina")
cristina.greet

#Below responds to step 8
chris.teach
cristina.learn
#cristina.teach #This code does not work because cristina is a Student object and teach is an Instructor method


# Testing purposes
# puts "\n--Testing purposes"
# test = Student.new("Jhon").learn
# test2 = Instructor.new("CLo").teach
# test3 = Student.new("Ro").greet
