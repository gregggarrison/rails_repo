Rails.application.routes.draw do
  resources :dogs, only: [:index, :create, :show, :update, :destroy]
  
end
