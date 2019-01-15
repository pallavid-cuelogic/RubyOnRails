Rails.application.routes.draw do
  
   resources :searches
   	root :to => 'searches#new'
 	# post 'searches/new', :to => 'searches#create', :as => "create"
 	# get 'searches/new' => 'searches#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	get 'new_search'
  	get 'fetch_search_results'
end
