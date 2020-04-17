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
>>>>>>> e84fba8e9a211e22487c9dad8833ff27932d5f0f
end
