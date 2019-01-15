class FirstController < ApplicationController

	def new
	  	puts "====================> new"
	  	@first = First.new

	end

	def create 
	  	puts "==============================> create"
	   
	    @first = First.create(first_params)  
	end


	def index
	  	puts "=======================================> index"
		@first = First.find(params[:id])
	    
	end

	def show 
		puts "=======================================> show"
		@first = First.find(params[:id])
	   
	end

	def my_data(word)

	  	puts "=========================================> in my_data"
	 	
	 	respond_to do |format|
    		format.js
  		end

	end

	private
		def first_params
	    	params.require(:cr).permit(:word)
	  	end

end


# <%   %>