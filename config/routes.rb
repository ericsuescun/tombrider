Rails.application.routes.draw do

  resources :tombs
  	devise_for :users
  	
	root to: 'tombs#index'

end
