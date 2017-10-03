Rails.application.routes.draw do

	root 'static_pages#home'

	resources :users, only: [:new, :create, :show]
	post '/users/new', to: 'users#create'
	resources :sessions, only: [:new, :create, :destroy]
  	get '/signin', to: 'sessions#new'
  	post '/sessions/new', to: 'sessions#create'
  	get '/signout', to: 'sessions#destroy'
  	delete '/signout', to: 'sessions#destroy'
  	post '/events/new', to: 'events#create'
  	resources :events, only: [:new, :create, :show, :index]

end
