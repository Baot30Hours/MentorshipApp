Rails.application.routes.draw do
  get 'welcome/index'

  get '/users/login', to: 'users#login'
  post '/users/login', to: 'users#do_login'
  get '/users/logout', to: 'users#logout'
  
  resources :mentors
  resources :mentees
  resources :connections
  resources :events
  resources :users
  resources :sessions

  root 'welcome#index'
end
