Rails.application.routes.draw do
  devise_for :users
  resources :customer_details
  resources :invoice_histories
  get 'home/index'
  root to: "home#index"
end
