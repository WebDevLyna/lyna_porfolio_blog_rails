Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'wecome/index'

  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]

  # 2) Automatically redirect to homepage if typing in random paths
    # if want to make new user logins, comment get '*path' line out
    # and # add "registerable" to enable visitors/public to users/sign_up
  get '*path' => redirect('/')
end
