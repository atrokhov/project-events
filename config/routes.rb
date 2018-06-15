Rails.application.routes.draw do

  devise_for :users
	namespace :admin do
		resources :items do
      resources :comments
    end
    resources :users, only: [:index, :show, :destroy]
		resources :primecategories
		resources :categories
	end

  namespace :moderator do
    resources :items, only: [:index, :show, :new, :create] do
      resources :comments
    end
    resources :categories, only: [:show]
  end
	
  resources :items, only: [:index, :show] do
  	resources :comments, only: [:create]
  end
  root :to => 'items#index'
  resources :categories, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
