class EmployeesController < ApplicationController
	def new
  	end

  	def create
		render plain: params[:employees].inspect
  	end

end

# rails console
