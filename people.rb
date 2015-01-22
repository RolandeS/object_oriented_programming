class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

class Student
	def initialize
	end

	def learn
		puts "I get it!"
	end
end

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
