Rails.application.routes.draw do


	root 'home#index'

	devise_for :users, :controllers => { registrations: 'registrations' }
	resources :projects
	resources :jobs
	resources :accommodations
	resources :transports
  	resources :grupos
	
	get '/biblioteca' => 'pages#biblioteca'
	get '/grupos' => 'pages#grupos'

end
