Rails.application.routes.draw do

resources :users

root to: 'pages#homepage'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  # get '/profile' => 'users#create'
  # post '/profile' => 'users#destroy'






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
