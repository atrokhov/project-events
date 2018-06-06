Rails.application.routes.draw do

  devise_for :users
	namespace :admin do
		resources :items
		resources :primecategories
		resources :categories
	end
	
  resources :items, only: [:index, :show] do
  	resources :comments
  end
  root :to => 'items#index'
  resources :categories, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
