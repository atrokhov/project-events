Rails.application.routes.draw do
  resources :primecategories
  resources :subcategories
  resources :categories
  resources :prime_categories
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
