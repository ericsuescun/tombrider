Rails.application.routes.draw do

	resources :tombs do
		resources :customers
		resources :pictures
	end

	resources :tasks

	resources :searches, only: [:index]

	resources :entities

	devise_for :users
  	
	root to: 'tombs#index'

end
