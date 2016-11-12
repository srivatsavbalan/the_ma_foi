Rails.application.routes.draw do
  resources :users
  # mount_devise_token_auth_for 'User', at: 'auth'
  resources :ratings
  resources :skills
  resources :teachers
  resources :students
  resources :colleges
  post '/users/login', to: 'users#login'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
