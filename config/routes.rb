Rails.application.routes.draw do
 
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

  resources  :landlords
  resources :properties
<<<<<<< HEAD
  resources :tenants
=======
  resources :issues
  resources :todos
>>>>>>> issue_controller
end
