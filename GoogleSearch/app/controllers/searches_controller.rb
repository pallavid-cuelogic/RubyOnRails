class SearchesController < ApplicationController
	
	def new
		#render plain: params.inspect
		@keyword = Keyword.new
	end

	def index
	    if params[:q]
	      page = params[:page] || 1
	      results = GoogleCustomSearchApi.search(params[:q],
	                                              page: page)
		end
	end

	def create
		puts search_params
		@search = Keyword.new(search_params)
		puts "data ------------------->#{@search}"
		#render plain: search_params["search"].inspect
		if @search.save
			redirect_to @search
		else
			render 'new'
		end
	end

	def show 	
 		@search = Keywords.find(params[:id])
	end

	private
		def search_params
	    	params.require(:search).permit(:search)
	  	end

end



Adapter 

secret
access

search

GoogleAPIAdapter
search
