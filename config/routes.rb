Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :pets





  # patch '/toggle_hunger/:id', to: 'pets#pet_hungry', as: 'pet_hungry'


  post '/login', to: 'sessions#create'
  get '/get_current_user', to: 'sessions#get_current_user'
  delete '/logout', to: 'sessions#destroy'
  post '/signup', to: 'users#create'


 #  post '/login', to: 'sessions#create'
 # delete '/logout', to: 'sessions#destroy'
 get '/logged_in', to: 'sessions#is_logged_in?'
end
