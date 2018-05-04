Rails.application.routes.draw do
	root 'items#index'
  resources :primecategories
  resources :subcategories
  resources :categories
  resources :items
  get '/categories/:category_id', to: 'categories#index_category', as: 'index_category'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
