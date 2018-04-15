Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles
  resources :mentors
  resources :mentees
  resources :connections

  root 'welcome#index'
end
