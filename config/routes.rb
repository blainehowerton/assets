Rails.application.routes.draw do
  resources :deductions
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :customers
  resources :equipment
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 # You can have the root of your site routed with "root"
  root to: 'home#index'

end
