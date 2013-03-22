Virginspaceprogram::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
resources :flights, :planes, :seats, :seatbooking, :users

end