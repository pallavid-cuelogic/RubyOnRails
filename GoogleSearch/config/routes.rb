Rails.application.routes.draw do

    resources :searches
 	
 	get '/searches' => 'searches#index'

 	resources :keywords
end

