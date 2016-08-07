Rails.application.routes.draw do
  

  resources :posts
  devise_for :users
  root "statics#index"
  get 'about', to: 'statics#about'
  get '/users/:id', to: 'users#show', as: "user" 
end
