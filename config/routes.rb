Rails.application.routes.draw do

  resources :categories, only: [] do
    resources :transactions
  end
  resources :users, only: [] do
    resources :categories
  end
  root 'dashboard#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
