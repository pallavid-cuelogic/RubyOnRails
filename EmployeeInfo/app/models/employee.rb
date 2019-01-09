class Employee < ActiveRecord::Base

	validates :name, presence: true
	validates :age, presence: true
	validates :dept, presence: true
	validates :date, presence: true
	               
	def update_employee
		put "abc"
	end


end
