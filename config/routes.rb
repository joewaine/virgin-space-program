Virginspaceprogram::Application.routes.draw do
  root :to => 'home#index'

resources :planes, :seats, :seatbooking
resources :flights do
  collection do
    get :search
  end
end

end

