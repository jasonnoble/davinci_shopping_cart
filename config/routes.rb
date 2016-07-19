Rails.application.routes.draw do
  resources :carts
  get 'store/index'

  # For details on the DSL available within this
  # file, see http://guides.rubyonrails.org/routing.html

  resources :products

  resources :line_items, only: [:create]

  root 'store#index'
end
