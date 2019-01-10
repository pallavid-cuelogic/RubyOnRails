class Employee < ActiveRecord::Base

	validates :name, presence: true
	validates :age, presence: true
	validates :dept, presence: true
	validates :date, presence: true
	               
	def update_employee
		put "abc"
	end
	
	# when we want to write code that is very much specific to database 
	# then it should not be written in Controller's class it will go in 
	# model's class

end
