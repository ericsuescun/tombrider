Rails.application.routes.draw do

  resources :entities
  resources :tombs
  	devise_for :users
  	
	root to: 'tombs#index'

end
