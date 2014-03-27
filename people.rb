class Person
	def initialize(name)
	 	@name = name
	 end

	attr_accessor :name
end

class Student < Person
	def learn
		"I get it"
		puts "Hi, my name is #{name}"
	end
end


class Instructor < Person
	def teach
		"Everything in Ruby is an Object"
		puts "Hi, my name is #{name}"
	end
end

def greeting
	puts  "Hi, my name is #{name}"

end


person1 = Instructor.new("chris")
person1.teach

person2 = Student.new("Cristina")
person2.learn
