Rails.application.routes.draw do
  
  resources :users
  
  get 'welcome/index'

  resources :employees

  root 'welcome#index'

end
