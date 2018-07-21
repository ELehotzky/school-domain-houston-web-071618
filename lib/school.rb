# code here!

class School

	attr_accessor :school_name, :name, :roster, :grade


	def initialize(school_name, roster = {})
		@school_name = school_name
		@roster = roster
	end

	def add_student(name, grade)
		@name = name
		@grade = grade
		if roster.include?(grade)
			roster[grade] << name
		else
			roster[grade] = []
			roster[grade] << name
		end
	end

	def grade(grade)
		roster[grade]
	end

	def sort
		sorted = {}
		roster.each do |grade, names|
			sorted[grade] = names.sort
		end
		sorted
	end


end