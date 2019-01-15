class LogsController < ApplicationController
	
	def create
 		render plain: params[:cr].inspect
	end

	def new

	end

	def my_data


	end

end
