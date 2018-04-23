Rails.application.routes.draw do
  get 'welcome/index'

  resources :mentors
  resources :mentees
  resources :connections
  resources :users

  root 'welcome#index'
end
