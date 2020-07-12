Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "games#index"
  resource :games, only:[:new, :create]
  #resources :users,  only: [:index, :new, :create, :destroy]
end
