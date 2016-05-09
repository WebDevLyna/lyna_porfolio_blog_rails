Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'wecome/index'
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
end
