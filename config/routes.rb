Virginspaceprogram::Application.routes.draw do
  root :to => 'home#index'
  get '/login' => 'session#new'
resources :flights, :planes, :seats, :seatbooking, :users

end