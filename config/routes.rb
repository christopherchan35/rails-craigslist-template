Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'categories#index'

  get 'categories/dashboard', :to => 'categories#dashboard'

  resources :categories do
    resources :articles
  end

  resources :articles, only: [:edit, :update]

  get '/dashboard', :to => 'categories#dashboard'
end
