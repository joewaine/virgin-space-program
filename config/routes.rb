Virginspaceprogram::Application.routes.draw do
  root :to => 'home#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

resources :planes, :seats, :seatbookings, :users
resources :flights
resources :search

end
