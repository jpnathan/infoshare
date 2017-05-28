Rails.application.routes.draw do
<<<<<<< HEAD

  root 'home#index'

  devise_for :users
  resources :projects
  resources :jobs
  resources :accommodations
  resources :transports
  
=======

	root 'home#index'
	devise_for :users
	resources :projects
	resources :jobs
	resources :accommodations
	get '/biblioteca' => 'pages#biblioteca'
	get '/grupos' => 'pages#grupos'

>>>>>>> 5b418457b834377884c60ed83da34cbe1d108cc6
end
