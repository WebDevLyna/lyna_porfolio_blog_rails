Rails.application.routes.draw do
  root 'welcome#index'
  get 'wecome/index'
  resources :posts
  resources :projects
end
