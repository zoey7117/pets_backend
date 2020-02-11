Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
      resources :users
      resources :pets

      # patch '/toggle_hunger/:id', to: 'pets#pet_hungry', as: 'pet_hungry'


      post "/login", to: "auth#login"
    	get "/auto_login", to: "auth#auto_login"
		end
  end
end
