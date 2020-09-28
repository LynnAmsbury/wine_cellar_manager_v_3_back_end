Rails.application.routes.draw do
  resources :update_collections
  resources :users
  resources :wines, only: [:index, :show, :create, :update, :destroy]
end
