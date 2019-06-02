Rails.application.routes.draw do

	resources :tombs do
		resources :customers
	end

	resources :searches, only: [:index]

	resources :entities

	devise_for :users
  	
	root to: 'tombs#index'

end
