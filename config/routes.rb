Rails.application.routes.draw do
  resources :update_collections, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :wines, only: [:index, :show, :create, :update, :destroy]
end
