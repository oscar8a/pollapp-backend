Rails.application.routes.draw do
  resources :vote_options
  resources :votes
  resources :polls
  resources :users

  resources :tokens, only: [:create]

  root to: 'polls#index'

  post '/polls/:id', to: 'polls#update'
  
  post 'find_user' => 'users#find'

  namespace :api do
    resources :users
    post 'user_token' => 'user_token#create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# get '/api/users/:user', :to => 'api/users#show'