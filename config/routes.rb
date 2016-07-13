Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/products',            to: 'products#index'
  # get '/products/Industrial', to: 'products#index_industrial'
  # get '/products/Shoes',      to: 'products#index_shoes'
  # get '/products/Beauty',     to: 'products#index_beauty'
  # get '/products/Clothing',   to: 'products#index_clothing'
  # get '/products/Tools',      to: 'products#index_tools'
  get '/products/:id',        to: 'products#show'

  get '/categories',          to: 'categories#index'
  get '/categories/:id',      to: 'categories#show'

  root 'dashboard#index'
end
