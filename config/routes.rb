Rails.application.routes.draw do

	get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
	root'pages#index'
	resources :songs do
		resources :likes
	end	
end
