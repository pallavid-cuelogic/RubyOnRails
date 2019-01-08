class EmployeesController < ApplicationController

	def new

  	end

  	def create
		render plain: params[:employees].inspect
		@employees = EmployeeModel2.new(params[:employees])
 
		@employees.save
		redirect_to @employees

		@employees = EmployeeModel2.new(params.require(:employees).permit(:name, :age, :dept, :date))
  	end
	  	
	def index
	    @employees = EmployeeModel2.all
	end

  	def show
  		puts "params=== #{params}"
    	@employees = EmployeeModel2.find(params[:id])
  	end

  	def update

  	end
end

# rails console
