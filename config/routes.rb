Rails.application.routes.draw do
  get 'welcome/index'

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :mentors
  resources :mentees
  resources :connections
  resources :events
  resources :users
  resources :sessions

  root 'welcome#index'
end
