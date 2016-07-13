Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/products',              to: 'products#index'
  get '/products/Automotive',   to: 'products#index_automotive'
  get '/products/Electronics',  to: 'products#index_electronics'
  get '/products/Industrial',   to: 'products#index_industrial'
  get '/products/Tools',        to: 'products#index_tools'
  get '/products/Music',        to: 'products#index_music'
  get '/products/:id',          to: 'products#show'

  root 'dashboard#index'
end
