Rails.application.routes.draw do

	root 'static_pages#home'

	get 'static_pages/home'
	get 'static_pages/services'
	get 'static_pages/whoweare'
	get 'static_pages/contact'
	get 'static_pages/help'
	get 'static_pages/faq'
	get 'home/services'
	get 'home/whoweare'
	get 'home/contact'
	get 'home/help'
	get 'home/faq'
	
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
  	
	

end
