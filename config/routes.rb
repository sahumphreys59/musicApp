Rails.application.routes.draw do
	get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  devise_for :users
	root'pages#index'
end
