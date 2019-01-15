class SearchesController < ApplicationController

	def create
		render plain: params[:search].inspect

		@search = Search.new(search_params)
	 
		results = GoogleCustomSearchApi.search(@search)

		puts "===========================> from new to create"



	end

	def new
		@search = Search.new
	end


	def show
 		@search = Search.find(search_params)
	end

	def index
		@search = Search.all
		puts "==========================> Info#{search}"
	end

	private
		def search_params
	    	params.require(:search).permit(:search)
	  	end

end





create: 


