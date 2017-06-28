# code here!


class School
attr_accessor :school_name, :roster 

	def initialize(school_name)
		@school_name = school_name 
		@roster = {}
	end 

 
 	def add_student(student_name, grade)
 		if self.roster.keys.include? grade 
 		  self.roster[grade] << student_name 
 		else 
 		  self.roster[grade] = []
 		  self.roster[grade] << student_name
 		 end 
    self.roster 
 	end 

 	def grade(grade)
 		self.roster[grade]
 	end 

 	def sort
		self.roster.each do  |grade, students| 
  			self.roster[grade] = students.sort 
		end 
		self.roster
	end 

end 