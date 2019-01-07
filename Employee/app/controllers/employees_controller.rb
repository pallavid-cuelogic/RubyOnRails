class EmployeesController < ApplicationController

	def new

  	end

  	def create
		render plain: params[:employees].inspect
		@employees = employee_model2.new(params[:employees])
 
		@employees.save
		redirect_to @employees

		@employees = employee_model2.new(params.require(:employees).permit(:name, :age, :dept, :date))
  	end
	  	
	def index
	    @employees = employee_model2.all
	end

  	def show
    	@employees = employee_model2.find(params[:id])
  	end


	def new
		
  	end
end

# rails console
