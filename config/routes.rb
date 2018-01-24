Rails.application.routes.draw do

  get 'carts/index'

  get 'carts/show'

  get 'carts/edit'

  get 'carts/new'

resources :users

root to: 'pages#homepage'




  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # Define your own paths?
  get 'users/:id/delete' => 'users#destroy', as: 'delete'




end
