Rails.application.routes.draw do

	resources :products

	resources :tombs do
		resources :customers
		resources :pictures
	end
	resources :customers  do
		resources :comments
		
	end

	resources :tasks

	resources :sales

	resources :searches, only: [:index]

	resources :entities

	devise_for :users

	resources :users, only: [:show, :edit, :update, :index]
  	
	root to: 'tombs#index'

end
