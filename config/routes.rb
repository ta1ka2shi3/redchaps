Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "games#index"
  resources :games do
    get "/games/:id", to: "games#show"
  end
  #resources :users,  only: [:index, :new, :create, :destroy]
end
