Rails.application.routes.draw do

	root 'home#index'
	
	devise_for :users
	resources :projects
	resources :jobs
	resources :accommodations
	resources :transports
	
	get '/biblioteca' => 'pages#biblioteca'
	get '/grupos' => 'pages#grupos'

end
