Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'tests#index'
  resources :templates
  resources :tests
  resources :maps
  resources :directions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
