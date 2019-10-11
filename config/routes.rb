Rails.application.routes.draw do
  resources :vote_options
  resources :votes
  resources :polls
  resources :users

  resources :tokens, only: [:create]

  root to: 'polls#index'

  namespace :api do
    resources :users
    post 'user_token' => 'user_token#create'
    post 'find_user' => 'users#find'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
