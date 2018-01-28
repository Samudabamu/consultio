Rails.application.routes.draw do

  # get '/hunches/:id' => 'hunches#show', as: :hunch

  # get '/categories/:id' => 'categories#show'
  # get '/categories' => 'categories#index'

  resources :hunches do
    resources :line_items
  end

  resources :categories

  get '/users/portfolio' => 'users#portfolio'

  resources :users

  get '/cart' => 'carts#show', as: 'cart'

  # post '/line_item/:hunch_id/add' => 'line_items#create'


  root to: 'pages#homepage'

  # get '/hunches/:hunch_id/add' => 'users#add_cart' as: :cart

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # Define your own paths?




end
