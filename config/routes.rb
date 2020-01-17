Rails.application.routes.draw do
  resources :user_games
  resources :users, only: [:index, :create, :show, :update]
  resources :games, only: [:index, :create, :show]

  post 'user/login', to: 'users#login'
  # resource :basket, only: [:show, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # post '/login', to: 'users#login'
end
