Rails.application.routes.draw do

	post "/login", to: "auth#login"
	get "/auto_login", to: "auth#auto_login"
			resources :users
			resources :pets

      # get "/", to: "pets#index"

			patch "/pets/:id/toggle_adopt", to: "pets#toggle_adopt"
			post "/pets/:id/adopt", to: "pets#adopt"
      post "/users/:id/get_pet", to: "users#get_pet"

		end
