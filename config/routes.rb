Rails.application.routes.draw do
  

  # get 'comments/new'

  # get 'comments/create'

  # get 'comments/destroy'

  resources :posts, :comments
  devise_for :users
  root "statics#index"
  get 'about', to: 'statics#about'
  get '/users/:id', to: 'users#show', as: "user" 
end
