Rails.application.routes.draw do

  # get '/hunches/:id' => 'hunches#show', as: :hunch

  # get '/categories/:id' => 'categories#show'
  # get '/categories' => 'categories#index'

  resources :line_items
  resources :hunches
  resources :categories

  resources :users


  root to: 'pages#homepage'

  # get '/hunches/:hunch_id/add' => 'users#add_cart' as: :cart

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # Define your own paths?




end
