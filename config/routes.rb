Rails.application.routes.draw do

  root to: "products#index"

  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'

  resources :products
  resources :order_items
  resources :users
  resource :cart, only: [:show]
  resource :admin

  get 'finalize' => 'carts#finalize'

end
