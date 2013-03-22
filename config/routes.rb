Virginspaceprogram::Application.routes.draw do
  root :to => 'home#index'

get '/login' => 'session#new'

resources :planes, :seats, :seatbookings, :users
resources :flights do
  collection do
    get :search
  end
end

end


