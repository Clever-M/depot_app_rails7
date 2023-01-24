Rails.application.routes.draw do
  root 'store#index', as: :store_index
  resources :line_items
  resources :carts
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
