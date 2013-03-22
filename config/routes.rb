Virginspaceprogram::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
resources :flights, :planes, :seats, :seatbooking, :users

end