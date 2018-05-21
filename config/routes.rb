Rails.application.routes.draw do
  resources :items
  root :to => 'items#index'
  resources :primecategories
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
