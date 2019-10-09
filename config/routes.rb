Rails.application.routes.draw do
  resources :vote_options
  resources :votes
  resources :polls
  resources :users

  root to: 'polls#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
