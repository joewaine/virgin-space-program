Virginspaceprogram::Application.routes.draw do
  root :to => 'home#index'

resources :flights, :planes, :seats, :seatbooking

end