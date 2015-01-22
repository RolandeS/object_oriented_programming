class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end
# number 5: The best place to put this method is in the class Person:
	def greet(name)
		puts "Hi, my name is #{name}"
	end
end


#CLASS STUDENT
class Student < Person

	def initialize
		super(name)
	end

	def learn
		puts "I get it!"
	end
end

#CLASS INSTRUCTOR
class Instructor
	def initialize
	end

	def teach
		puts "Everything in Ruby is an Object"
	end
end



# Testing purposes
test = Student.new.learn
test2 = Instructor.new.teach
test3 = Student.new.greet("Ro")
