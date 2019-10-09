Rails.application.routes.draw do
  resources :test_models
  resources :product_types
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'book/list'
  get 'book/new'
  get 'book/show'
  post 'book/create'
  delete 'book/delete'
  root to: 'welcome#show'
end
