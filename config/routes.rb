Rails.application.routes.draw do
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :pets





  patch '/toggle_hunger/:id', to: 'pets#pet_hungry', as: 'pet_hungry'


  post '/login', to: 'sessions#create'
  get '/get_current_user', to: 'sessions#get_current_user'
  delete '/logout', to: 'sessions#destroy'
  post '/signup', to: 'users#create'
end
