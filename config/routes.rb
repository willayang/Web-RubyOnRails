Rails.application.routes.draw do
  
  
  get 'customer_service/question'

  get 'customer_service/contact'

  get 'customer_service/about'

  get 'login', to: 'access#new'
  post 'login', to: 'access#create'
  get 'admin', to: 'admin#index'
  delete 'logout', to: 'access#destroy'

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'
  

  resources :products
  root to: 'store#index', as: 'store'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
