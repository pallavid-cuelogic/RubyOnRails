Rails.application.routes.draw do
  
  resources :users
  get 'welcome/index'

  resources :employees

  root 'welcome#index'

  #get '/button', to: 'EmployeesController#button`, as: 'button`
  
  #<td><%= button_to 'Press me', button_path, method: :get %></td>

end
