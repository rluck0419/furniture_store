Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'products',       to: 'products#index'
  get 'products/:id',   to: 'products#show'
  post 'products',      to: 'products#create'
  put 'products/:id',   to: 'products#update'

  get 'categories',     to: 'categories#index'
  get 'categories/:id', to: 'categories#show'

  root 'dashboard#index'
end
