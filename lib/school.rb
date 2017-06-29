
class School
	attr_accessor :name 
	attr_reader :student_name, :grade
  	
  	
  	@@students = []
  	@@grades = []

  	def initialize(name)
  		@name = name  
  		@@roster = Hash.new(0)		
  	end


  	def roster
  		@@roster
  	end

  	def student_name=(student_name) 
  		@student_name = student_name
  	end


  	def grade=(grade)
  		@grade = grade
  		@@grades << @grade
  	end


  	def add_student(student_name, grade)
  		if @@roster[grade] == 0
  			@@roster[grade] = [student_name]
  		else
  			@@roster[grade] << student_name
  		end
  		@@roster
  	end

  	def grade(grade)
  		@@roster[grade]
  	end

  	def sort
  	  sorted = {}
  		@@roster.each do |grade, array_of_students|
  			sorted[grade] = array_of_students.sort
  		end 
  		sorted
  	end

  
end





